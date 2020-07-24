use64

include '_Tables.asm'
include 'Lexer.asm'

UNICC_ERROR  EQU 0
UNICC_REDUCE EQU 1
UNICC_SHIFT  EQU 2

GOAL_PRODUCTION EQU 0
GOAL_LHS        EQU 142

__MOLD_Parse:
      ; rcx = pointer to source code (char *)

      mov    rsi, rcx           ; rsi = source code (char *)

      mov    ebx, 0             ; ebx = current LALR stack = 0
      mov    eax, 0             ; rax = current token id = 0
      push   rbx                ; push state 0 to the LALR stack

      mov    r15, 100000

      ; ------------------------------------------------------------------------
      ;            1. LEXER: Get next symbol from input stream.
      ; ------------------------------------------------------------------------

.fetch_next_symbol:

      DEBUG_MSG '-------------------------------'

      or     al, al
      jnz    .fetch_action

      DEBUG_MSG '( ? ) lexer'

      call   __MOLD_Lexer       ; rax = token id    (int32)
                                ; r8  = token value (char *)
                                ; rsi = first char after token (char *)

      ; ------------------------------------------------------------------------
      ;             2. LALR: Find action for current symbol.
      ; ------------------------------------------------------------------------

.fetch_action:

      ;DEBUG_MSG '[ PARSER ] Fetch action'

      DEBUG_PRINT2 '( ? ) token %d', al

      mov    rbx, [rsp]
      and    ebx, 0xff
      mov    edx, UNICC_REDUCE * 65536

      mov    rcx, qword [ParserActionsLUT.index + 8 * rbx] ; rcx = actions row
      mov    dh , byte [ParserActionsDefaultLUT + rbx]     ; edx = default state
                                                           ; = [-1|-1|state|-1]
.try_next_action:

      mov    ebx, dword [rcx]   ; ebx = fetch action entry
                                ;     = [ 0 | action | state | symbol ]

      add    rcx, 3             ; go to next action slot
      cmp    bl, al             ; is symbol matched?

      jb     .try_next_action   ; go on if symol not matched
                                ; and we still have hope

      cmovnz ebx, edx           ; ebx = revert to default action if not found
      shr    ebx, 8             ; ebx = [ 0 | 0 | action | state ]

      cmp    bl, -1
      jz     .syntax_error      ; fail if -1 symbol touched

.fetch_action_done:

      ; ------------------------------------------------------------------------
      ;                             3. LALR: Shift.
      ; ------------------------------------------------------------------------

.try_shift:

      test   bh, UNICC_SHIFT
      jz     .shift_done

      DEBUG_PRINT1 '( ? ) shift'

      ; Eat value from input stream.
      mov    eax, 0

      ; Push current state to LALR stack.
      push   rbx

.shift_done:

      ; ------------------------------------------------------------------------
      ;                            4. LALR: Reduce.
      ; ------------------------------------------------------------------------

.try_reduce:
      test   bh, UNICC_REDUCE
      jz     .reduce_done

.fetch_production:

      and    rbx, 0xff
      lea    rcx, [GrammarProductionsLUT + rbx*2 + rbx]

      ; 4.1 AST: Pop nodes from the stack.
      movzx  rdx, byte [rcx + 1]
      lea    rsp, [rsp + rdx*8]

      DEBUG_PRINT2 '( ? ) reduce [ production: %d ]', rbx

      ; 4.2 AST: Emit new node if needed.
      ; TODO

      ; 4.3 Is goal symbol reduced, and stack is empty?
      mov    dl, byte [rcx + 2]
      mov    rbx, [rsp]
      and    rbx, 0xff

      cmp    dl, GOAL_LHS
      jz     .reduce_done

      DEBUG_PRINT3 '( ? ) goto from state %d [ lhs = %d ]', rbx, rdx

      mov    rcx, qword [ParserGotoLUT.index + 8 * rbx] ; rcx = actions row

.try_next_goto:

      mov    ebx, dword [rcx]   ; ebx = fetch action entry
                                ;     = [ 0 | action | newState | oldState ]
      add    rcx, 3             ; go to next action slot
      cmp    bl, dl             ; is symbol matched?

      jb     .try_next_goto     ; go on if symol not matched
                                ; and we still have hope
      jnz    .error

      shr    rbx, 8
      push   rbx

;     mov    r8, rdx
;     shr    r8, 8
;     and    r8, 0xff
;     and    rdx, 0xff

      DEBUG_PRINT3 '( ? ) goto to state %d %d', rdx, r8

      dec    r15
      jz     .too_many_iterations

      jmp    .try_reduce

.reduce_done:

      ; ------------------------------------------------------------------------
      ;                  5. LALR: Check for final condition.
      ; ------------------------------------------------------------------------

      cmp    bl, GOAL_PRODUCTION
      jnz    .fetch_next_symbol

      pop    rbx

      DEBUG_MSG '[ PARSER ] Done'

      ret

.syntax_error:
      cinvoke printf, 'syntax error chuj ci w dupe'
      cinvoke putchar, 13
      cinvoke ExitProcess, -1

.too_many_iterations:
      cinvoke printf, 'too many iterations'
      int 3

.error:
      cinvoke printf, 'generic error'
      int 3
