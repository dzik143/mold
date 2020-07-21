EOL EQU 0 * 8 ;
SPC EQU 1 * 8 ;
DIG EQU 2 * 8 ;
LET EQU 3 * 8 ;
STR EQU 4 * 8 ;
OP2 EQU 5 * 8 ;
ERR EQU 6 * 8 ;

TOKEN_WHITE EQU 54

EQ  EQU 0x80 ;+ '='
LBR EQU 0x80 + '('
LBS EQU 0x80 + '['
LBC EQU 0x80 + '{'

RBR EQU 0x80 + ')'
RBS EQU 0x80 + ']'
RBC EQU 0x80 + '}'

TLD EQU 0x80 + '~'
PLS EQU 0x80 + '+'
INR EQU 0x80 + '!'
HSH EQU 0x80 + '#'
USD EQU 0x80 + '$'
PER EQU 0x80 + '%'
AMP EQU 0x80 + '&'
STA EQU 0x80 + '*'
COM EQU 0x80 + ','
SEM EQU 0x80 + ';'
QMK EQU 0x80 + '?'
MNK EQU 0x80 + '@'
ABS EQU 0x80 + '|'

LT  EQU 0x80 + '<'
GT  EQU 0x80 + '>'
COL EQU 0x80 + ':'
MNS EQU 0x80 + '-'
DOT EQU 0x80 + '.'
DV  EQU 0x80 + '/'

__MOLD_Lexer:

      ; rcx - source (char*)
      push  rcx
      cinvoke putchar, 13
      cinvoke putchar, 10
      pop   rcx

      mov   eax, 0                         ; rax = 0
      mov   edx, 0                         ; rdx = 0

      or    al, byte [rcx]                 ; rax = the first character
      jle  .done_eof_or_above127           ; accept 7-bit ascii only

    ; --------------------------------------------------------------------------
    ;                  Dispatch type of the first character
    ; --------------------------------------------------------------------------

      or    dl, byte [.charTypeLUT + rax]  ; rdx = type of first character
      js    .done_operator1                ; is it one character operator?
      jmp   qword [.jmpTableOnBegin + rdx] ; jmp to type handler

    ; --------------------------------------------------------------------------
    ;                        Identifier or keyword
    ; --------------------------------------------------------------------------

.begin_from_letter:
      mov     eax, 0                       ; rax = 0

.next_ident_character:
      inc     rcx                          ; rcx = pointer to next character
      or      al, byte [rcx]               ; rax = next character
      js      .done_above127               ; accept 7-bit ascii only

      and     al, byte [.isOkAsNextIdentCharacterLUT + rax]
      jz      .next_ident_character        ; rax is 0 if OK

.done_identifier:

      push    rcx
      cinvoke printf, "<ident>"
      pop     rcx

      ret

    ; --------------------------------------------------------------------------
    ;                               Whitespaces
    ; --------------------------------------------------------------------------

.begin_from_space:
.next_space:
      ; Space - go on until first non-white character.
      inc     rcx
      cmp     al, byte [rcx]
      jz      .next_space

      push    rcx
      cinvoke printf, '<white>'
      pop     rcx

      ret

    ; --------------------------------------------------------------------------
    ;                               String
    ; --------------------------------------------------------------------------

.begin_from_string:
      ; String - go on until end quote matched: "text" or 'text'
      ; TODO: Handle unterminated strings.
.next_string_character:
      inc     rcx                          ; rcx = pointer to next char
      cmp     al, byte [rcx]               ; is quote matched or EOF?
      jnz     .next_string_character

      inc     rcx                          ; eat ending quote

      push    rcx
      cinvoke printf, '<string>'
      pop     rcx

      ret

    ; --------------------------------------------------------------------------
    ;                               Numbers
    ; --------------------------------------------------------------------------

.begin_from_digit:
      ; Skip two byte '0x' prefix if found.
      cmp   word [rcx], '0x'               ; search for 0x prefix
      setz  al                             ; rax = 1 if prefix found
      add   rcx, rax                       ; rcx = rcx + 1 if prefix found
      add   rcx, rax                       ; rcx = rcx + 1 if prefix found

      mov   r9d, '.'                       ; we're going to search for '.'
                                           ; separator, but only one time

.parse_next_integer:
.next_digit:
      ; Go on until first non-digit character found.
      inc   rcx                            ; rcx = pointer to next char
      mov   al, [rcx]                      ; rax = next character
      sub   al, '0'                        ; is char between '0' and '9' ?
      cmp   al, '9' - '0'                  ;
      jbe   .next_digit                    ; Go on if another digit found

.optional_float_dot:
      cmp   r9d, 0xff                      ; don't search for dot twice
      je    .done_float                    ; 123.456.789 is not correct number

      cmp   byte [rcx], r9l                ; is current char is '.' ?
      mov   r9d, 0xff                      ; mark dot already checked
      jz    .parse_next_integer            ; consume one more integer after dot

.done_integer:
      push  rcx
      cinvoke printf, '<integer>'
      pop   rcx
      ret

.done_float:
      push  rcx
      cinvoke printf, '<float>'
      pop   rcx
      ret

    ; --------------------------------------------------------------------------
    ;                              Operators
    ; --------------------------------------------------------------------------

.done_operator1:
      inc     rcx                          ;

      push    rcx                          ;
      and     al, 0x7f
      cinvoke putchar, al                  ;
      pop     rcx

      ret

.begin_from_operator2:
      ; x <= y
      ; x >= y
      ; x::y
      ; x -> rv
      ; TODO: Optimize it.
      inc     rcx
      push    rcx
      cinvoke printf, '<operator2>'
      pop     rcx

      ret

.begin_from_eol:
      inc     rcx
      push    rcx
      cinvoke printf, '<EOL>'
      pop     rcx
      ret

.done_eof_or_above127:
      js      .done_above127
      push    rcx
      cinvoke printf, '<EOF>'
      pop     rcx
      ret

.done_above127:
.done_error:
      push    rcx
      cinvoke printf, 'ERROR'
      pop     rcx
      ret

.charTypeLUT:
;       0    1    2    3    4    5    6    7    8    9    a    b    c    d    e    f
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, EOL, ERR, ERR, EOL, ERR, ERR ; 0x
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR ; 1x
  db  SPC, INR, STR, HSH, USD, PER, AMP, STR, LBR, RBR, STA, PLS, COM, MNS, DOT,  DV ; 2x
  db  DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, OP2, SEM,  LT,  EQ,  GT, QMK ; 3x
  db  MNK, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET ; 4x
  db  LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LBS, ERR, RBS, ERR, ERR ; 5x
  db  ERR, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET ; 6x
  db  LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LBC, ABS, RBC, TLD, ERR ; 7x

.jmpTableOnBegin:
  dq .begin_from_eol       ; EOL (CR or LF)
  dq .begin_from_space     ; SPC
  dq .begin_from_digit     ; DIG
  dq .begin_from_letter    ; LET
  dq .begin_from_string    ; STRING
  dq .begin_from_operator2 ; OP2 (two characters e.g. x->y)
  dq .done_error           ; ERR

; Identifier:
; - First character: ('_' | letter)
; - Next characters: ('_' | letter | digit)

.isOkAsNextIdentCharacterLUT:
;       0    1    2    3    4    5    6    7    8    9    a    b    c    d    e    f
  db  255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 ; 0x
  db  255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 ; 1x
  db  255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 ; 2x
  db    0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255, 255, 255, 255, 255, 255 ; 3x
  db  255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0 ; 4x
  db    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255, 255, 255, 255,   0 ; 5x
  db  255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0 ; 6x
  db    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 255, 255, 255, 255, 255 ; 7x

.keywords13:
  ;   0123456789abc   d  e  f
  db 'unimplemented', 0, 0, 0
  dq 0, 0

.keywords11:
  ;   0123456789a   b  c  d  e  f
  db 'endfunction', 0, 0, 0, 0, 0
  dq 0, 0

.keywords9:
  ;   012345678   9  a  b  c  d  e  f
  db 'endmethod', 0, 0, 0, 0, 0, 0, 0
  dq 0, 0

.keywords8:
  dq 'endclass'
  dq 'endwhile'
  dq 'function'
  dq 0

.keywords7:
  dq 'extends'
  dq 'indexes'
  dq 0

.keywords6:
  dq 'endfor'
  dq 'global'
  dq 'import'
  dq 'method'
  dq 'values'
  dq 0

.keywords5:
  dq 'class'
  dq 'const'
  dq 'endif'
  dq 'false'
  dq 'print'
  dq 'while'
  dq 'write'
  dq 0

.keywords4:
  dd 'true'
  dd 'null'
  dd 'keys'
  dd 'step'
  dd 'else'
  dd 'elif'
  dd 'from'
  dd 'read'
  dd 'isnt'
  dd 0

.keywords3:
  dd 'and'
  dd 'not'
  dd 'for'
  dd 'new'
  dd 0

.keywords2:
  dd 'if'
  dd 'in'
  dd 'is'
  dd 'or'
  dd 'to'
  dd 0
