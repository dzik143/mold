; Final complex tokens.
TOKEN_EOF                 EQU 0
TOKEN_INTEGER             EQU 47
TOKEN_FLOAT               EQU 48
TOKEN_UNTERMINATED_STRING EQU 49
TOKEN_STRING              EQU 50
TOKEN_SELECTOR            EQU 51
TOKEN_IDENT               EQU 52
TOKEN_EOL                 EQU 53
TOKEN_WHITE               EQU 54

EOL EQU 0  ; <EOL>
SPC EQU 1  ; <WHITE>
DIG EQU 2  ; <DIGIT>     0-9
LET EQU 3  ; <LETTER>    a-z A-Z
STR EQU 4  ; <STRING>    '"
OP2 EQU 5  ; <OPERATOR2> -> etc.
CMT EQU 6  ; <COMMENT>   single line comment
ERR EQU 7  ; <ERROR>

; One character operators.
; Just return assigned token and don't go on anymore.
; Example: x + y

; Operators map
; There are three cases handled:
;
; 1. One character operators.
;    Just return assigned token and don't go on anymore.
;    Example: x + y
;
; 2. Potentially two character operators.
;    We can't assign token immediately.
;    We need extra code basing on the second character.
;    Example (second character is needed to determine which token to use):
;      - x < y
;      - x <= y
;
; 3. Custom handler depending on the first character.
;    Example: number parser if we start from any digit (0-9).

INR EQU 0x80      ; '!' (unassigned token yet - map to EOF)
HSH EQU 0x80      ; '#' (unassigned token yet - map to EOF)
USD EQU 0x80      ; '$' (unassigned token yet - map to EOF)
PER EQU 0x80      ; '%' (unassigned token yet - map to EOF)
AMP EQU 0x80      ; '&' (unassigned token yet - map to EOF)
LBR EQU 0x80 + 62 ; '(' (one char operator)
RBR EQU 0x80 + 61 ; ')' (one char operator)
STA EQU 0x80 + 68 ; '*' (one char operator)
PLS EQU 0x80 + 70 ; '+' (one char operator)
COM EQU 0x80 + 60 ; ',' (one char operator)
MNS EQU OP2       ; '-' (potentially 2-char operator handler)
DOT EQU OP2       ; '.' (potentially 2-char operator handler)
DV  EQU OP2       ; '/' (potentially 2-char operator handler)
COL EQU 0x80 + 59 ; ':' (one char operator)
SEM EQU 0x80      ; ';' (unassigned token yet - map to EOF)
LT  EQU OP2       ; '<' (potentially 2-char operator handler)
EQ  EQU 0x80 + 71 ; '=' (one char operator)
GT  EQU OP2       ; '>' (potentially 2-char operator handler)
QMK EQU 0x80      ; '?' (unassigned token yet - map to EOF)
MNK EQU 0x80      ; '@' (unassigned token yet - map to EOF)
LBS EQU 0x80 + 64 ; '[' (one char operator)
BSH EQU 0x80      ; '\' (unassigned token yet - map to EOF)
RBS EQU 0x80 + 63 ; ']' (one char operator)
POW EQU 0x80      ; '^' (unassigned token yet - map to EOF)
LBC EQU 0x80 + 56 ; '{' (one char operator)
ABS EQU 0x80      ; '|' (unassigned token yet - map to EOF)
RBC EQU 0x80 + 55 ; '}' (one char operator)
TLD EQU 0x80 + 57 ; '~' (one char operator)

__MOLD_Lexer:
      call __MOLD_LexerInternal

      push rcx
      push r10

      mov     r9, r8
      mov     edx, eax
      sub     r8, rcx
      neg     r8

      cinvoke printf, '<token #%d> %.*s'
;      cinvoke putchar, 13
      cinvoke putchar, 10

      pop  r10
      pop  rcx
      ret

__MOLD_LexerInternal:

      ; rcx - source (char*)
      mov   eax, 0                         ; rax = 0
      mov   edx, 0                         ; rdx = 0
      mov   r8, rcx                        ; r8  = keep original string pointer

      or    al, byte [rcx]                 ; rax = the first character
      jle  .done_eof_or_above127           ; accept 7-bit ascii only

    ; --------------------------------------------------------------------------
    ;                  Dispatch type of the first character
    ; --------------------------------------------------------------------------

      or    dl, byte [.charTypeLUT + rax]    ; rdx = type of first character
      js    .done_operator1                  ; is it one character operator?
      jmp   qword [.jmpTableOnBegin + 8*rdx] ; jmp to type handler

    ; --------------------------------------------------------------------------
    ;                          Identifier or keyword
    ; --------------------------------------------------------------------------

.begin_from_letter:
      mov   eax, 0                         ; rax = 0

.next_ident_character:
      inc   rcx                            ; rcx = pointer to next character
      or    al, byte [rcx]                 ; rax = next character
      js    .done_above127                 ; accept 7-bit ascii only

      and   al, byte [.isOkAsNextIdentCharacterLUT + rax]
      jz    .next_ident_character          ; rax is 0 if OK

.done_identifier:
      mov   al, TOKEN_IDENT
      ret

    ; --------------------------------------------------------------------------
    ;                               Whitespaces
    ; --------------------------------------------------------------------------

.begin_from_space:
.next_space:
      ; Space - go on until first non-white character.
      inc   rcx                            ; rcx = pointer to next character
      cmp   al, byte [rcx]                 ; is it still space?
      jz    .next_space                    ; go on if another space found

      mov   al, TOKEN_WHITE
      ret

    ; --------------------------------------------------------------------------
    ;                                 String
    ; --------------------------------------------------------------------------

.begin_from_string:
      ; String - go on until end quote matched: "text" or 'text'
      ; TODO: Handle unterminated strings.
.next_string_character:
      inc   rcx                            ; rcx = pointer to next char
      cmp   al, byte [rcx]                 ; is quote matched or EOF?
      jnz   .next_string_character

      inc   rcx                            ; eat ending quote

      mov   al, TOKEN_STRING
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

      mov   r9d, '.'

.next_integer:
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
      jz    .next_integer                  ; consume one more integer after dot

.done_integer:
      mov   al, TOKEN_INTEGER
      ret

.done_float:
      mov   al, TOKEN_FLOAT
      ret

    ; --------------------------------------------------------------------------
    ;                          One character operator
    ; --------------------------------------------------------------------------

.done_operator1:
      inc   rcx
      and   al, 0x7f
      ret

    ; --------------------------------------------------------------------------
    ;                   Potentially two characters operator
    ; --------------------------------------------------------------------------

.begin_from_operator2:
      inc   rcx                            ; eat first character
      sub   eax, 0x20                      ; rax = index in operator 2 LUT
      lea   r9, [.operator2LUT + rax * 4]  ; r9  = pointer to LUT row

      mov   al, byte [rcx]                 ; rax = second character
      cmp   al, byte [r9]                  ; match second parameter
      setz  dl                             ; rdx = 1 if matched, 0 otherwise

      add   rcx, rdx                       ; eat second character if matched
      mov   al, byte [r9 + rdx]            ; rax = token id

      ret

.begin_from_eol:
      inc   rcx
      mov   al, TOKEN_EOL
      ret

.done_eof_or_above127:
      or    al, al
      js    .done_above127
      mov   al, TOKEN_EOF
      ret

.done_above127:
.done_error:
      push    rcx
      cinvoke printf, 'ERROR'
      pop     rcx
      int 3
      ret

.charTypeLUT:
;       0    1    2    3    4    5    6    7    8    9    a    b    c    d    e    f
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, EOL, ERR, ERR, EOL, ERR, ERR ; 0x
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR ; 1x
  db  SPC, INR, STR, HSH, USD, PER, AMP, STR, LBR, RBR, STA, PLS, COM, MNS, DOT,  DV ; 2x
  db  DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, COL, SEM,  LT,  EQ,  GT, QMK ; 3x
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
  dq .begin_from_operator2 ; OP2 (two character operators e.g. x >= y)
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

; Look up table for potentially two byte operators.
; ASCII codes from 20 to 3f.
; Columns:
; - second character to test,
; - token id if second character not matched,
; - token id if second character matched.
;
; Example:
; - First character is '-',
; - we want TOKEN_MINUS for single '-' (second character unmatched),
; - or TOKEN_RARROW for -> (second character matched).

.operator2LUT:
  db 0   , 0  , 0  , 0 ; 20 space (unused)
  db 0   , 0  , 0  , 0 ; 21 ! (unused)
  db 0   , 0  , 0  , 0 ; 22 " (unused)
  db 0   , 0  , 0  , 0 ; 23 # (unused)
  db 0   , 0  , 0  , 0 ; 24 $ (unused)
  db 0   , 0  , 0  , 0 ; 25 % (unused)
  db 0   , 0  , 0  , 0 ; 26 & (unused)
  db 0   , 0  , 0  , 0 ; 27 ' (unused)
  db 0   , 0  , 0  , 0 ; 28 ( (unused)
  db 0   , 0  , 0  , 0 ; 29 ) (unused)
  db 0   , 0  , 0  , 0 ; 2a * (unused)
  db 0   , 0  , 0  , 0 ; 2b + (unused)
  db 0   , 0  , 0  , 0 ; 2c , (unused)
  db '>' , 32 , 69 , 0 ; 2d - or ->
  db '.' , 10 , 58 , 0 ; 2e . or ..
  db '/' , 67 , 46 , 0 ; 2f / or //

  db 0   , 0  , 0  , 0 ; 30 0 (unused)
  db 0   , 0  , 0  , 0 ; 31 1 (unused)
  db 0   , 0  , 0  , 0 ; 32 2 (unused)
  db 0   , 0  , 0  , 0 ; 33 3 (unused)
  db 0   , 0  , 0  , 0 ; 34 4 (unused)
  db 0   , 0  , 0  , 0 ; 35 5 (unused)
  db 0   , 0  , 0  , 0 ; 36 6 (unused)
  db 0   , 0  , 0  , 0 ; 37 7 (unused)
  db 0   , 0  , 0  , 0 ; 38 8 (unused)
  db 0   , 0  , 0  , 0 ; 39 9 (unused)
  db 0   , 0  , 0  , 0 ; 3a : (unused)
  db 0   , 0  , 0  , 0 ; 3b ; (unused)
  db '=' , 32 , 69 , 0 ; 3c < or <=
  db 0   , 10 , 58 , 0 ; 3d = (unused)
  db '=' , 67 , 46 , 0 ; 3e > or >=
  db 0   , 0  , 0  , 0 ; 3f ? (unused)

; -----------------
; 128-bit keywords
; -----------------

.keywords16:
  dq 0, 0

.keywords15:
  dq 0, 0

.keywords14:
  dq 0, 0

.keywords13:
  ;   0123456789abc   d  e  f
  db 'unimplemented', 0, 0, 0
  dq 0, 0

.keywords12:
  dq 0, 0

.keywords11:
  ;   0123456789a   b  c  d  e  f
  db 'endfunction', 0, 0, 0, 0, 0
  dq 0, 0

.keywords10:
  dq 0, 0

.keywords9:
  ;   012345678   9  a  b  c  d  e  f
  db 'endmethod', 0, 0, 0, 0, 0, 0, 0
  dq 0, 0

; ----------------
; 64-bit keywords
; ----------------

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

; ----------------
; 32-bit keywords
; ----------------

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

.keywords1:
  dd 0
