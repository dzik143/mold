MAX_KEYWORD_LENGTH EQU 13

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

; Handlers for common complex tokens
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

INR EQU ERR       ; '!' (unassigned token yet - map to ERR)
HSH EQU CMT       ; '#' (one line comment)
USD EQU ERR       ; '$' (unassigned token yet - map to ERR)
PER EQU ERR       ; '%' (unassigned token yet - map to ERR)
AMP EQU ERR       ; '&' (unassigned token yet - map to ERR)
LBR EQU 0x80 + 62 ; '(' (one char operator)
RBR EQU 0x80 + 61 ; ')' (one char operator)
STA EQU 0x80 + 68 ; '*' (one char operator)
PLS EQU 0x80 + 70 ; '+' (one char operator)
COM EQU 0x80 + 60 ; ',' (one char operator)
MNS EQU OP2       ; '-' (potentially 2-char operator handler)
DOT EQU OP2       ; '.' (potentially 2-char operator handler)
DV  EQU OP2       ; '/' (potentially 2-char operator handler)
COL EQU 0x80 + 59 ; ':' (one char operator)
SEM EQU ERR       ; ';' (unassigned token yet - map to ERR)
LT  EQU OP2       ; '<' (potentially 2-char operator handler)
EQ  EQU 0x80 + 71 ; '=' (one char operator)
GT  EQU OP2       ; '>' (potentially 2-char operator handler)
QMK EQU ERR       ; '?' (unassigned token yet - map to ERR)
MNK EQU ERR       ; '@' (unassigned token yet - map to ERR)
LBS EQU 0x80 + 64 ; '[' (one char operator)
BSH EQU ERR       ; '\' (unassigned token yet - map to ERR)
RBS EQU 0x80 + 63 ; ']' (one char operator)
POW EQU ERR       ; '^' (unassigned token yet - map to ERR)
LBC EQU 0x80 + 56 ; '{' (one char operator)
ABS EQU ERR       ; '|' (unassigned token yet - map to ERR)
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
      cinvoke putchar, 10

      pop  r10
      pop  rcx
      ret

__MOLD_LexerInternal:

      ; rcx - source (char*)
      mov   eax, 0                         ; rax = 0
      mov   edx, 0                         ; rdx = 0
      mov   r8, rcx                        ; r8  = keep original pointer
                                           ; we use it calculate token length

      or    al, byte [rcx]                 ; rax = the first character
      jle  .eof_or_above127                ; accept 7-bit ascii only

    ; --------------------------------------------------------------------------
    ;                  Dispatch type of the first character
    ; --------------------------------------------------------------------------

      or    dl, byte [.charTypeLUT + rax]    ; rdx = type of first character
      js    .operator1                       ; is it one character operator?
      jmp   qword [.jmpTableOnBegin + 8*rdx] ; jmp to type handler

    ; --------------------------------------------------------------------------
    ;                          Identifier or keyword
    ; --------------------------------------------------------------------------

.begin_from_letter:
      mov   eax, 0                         ; rax = 0

.next_ident_character:
      inc   rcx                            ; rcx = pointer to next character
      or    al, byte [rcx]                 ; rax = next character
      js    .above127                      ; accept 7-bit ascii only

      and   al, byte [.isOkAsNextIdentCharacterLUT + rax]
      jz    .next_ident_character          ; rax is 0 if OK

.dispatch_ident_length:
      mov   rax, rcx                       ; rax = pointer to current character
                                           ; r8  = pointer to the first character
      sub   rax, r8                        ; rax = token length
      cmp   eax, MAX_KEYWORD_LENGTH        ; is longest keyword fits into token?
      jbe   .match_keyword                 ; search for keywords if possible

.done_identifier:
      mov   al, TOKEN_IDENT
      ret

    ; --------------------------------------------------------------------------
    ;                          Match keyword dispatcher
    ; --------------------------------------------------------------------------

.match_keyword:
      mov   rdx, qword [r8]                     ; rdx = fetch 8-byte keyword

      mov   r9,  [.keywordListIndexLUT + 8*rax] ; r9  = pointer to keyword list
      and   rdx, [.keywordMaskLUT + 8*rax]      ; rdx = mask unused characters

      ; Go to one of match_keyword_xxx routine
      jmp   qword [.jmpTableMatchKeyword + rax*8]

    ; --------------------------------------------------------------------------
    ;                 Match 64-bit keyword (up to 8 characters)
    ; --------------------------------------------------------------------------

.match_keyword_64bit:
      mov   al, TOKEN_IDENT                     ; fallback to IDENT if not matched

      ; Match first 4-keywords chunk
      cmp   rdx, qword [r9 + 16*0 + 0]
      cmovz rax, qword [r9 + 16*0 + 8]

      cmp   rdx, qword [r9 + 16*1 + 0]
      cmovz rax, qword [r9 + 16*1 + 8]

      cmp   rdx, qword [r9 + 16*2 + 0]
      cmovz rax, qword [r9 + 16*2 + 8]

      cmp   rdx, qword [r9 + 16*3 + 0]
      cmovz rax, qword [r9 + 16*3 + 8]

      ; Skip second chunk if possible
      ja    .not_a_keyword_64bit

      ; Match next 4-keywords chunk
      cmp   rdx, qword [r9 + 16*4 + 0]
      cmovz rax, qword [r9 + 16*4 + 8]

      cmp   rdx, qword [r9 + 16*5 + 0]
      cmovz rax, qword [r9 + 16*5 + 8]

      cmp   rdx, qword [r9 + 16*6 + 0]
      cmovz rax, qword [r9 + 16*6 + 8]

      cmp   rdx, qword [r9 + 16*7 + 0]
      cmovz rax, qword [r9 + 16*7 + 8]

.not_a_keyword_64bit:
.done_keyword_64bit:

      ret

    ; --------------------------------------------------------------------------
    ;                Match 128-bit keyword (up to 16 characters)
    ; --------------------------------------------------------------------------

.match_keyword_128bit:
      ; TODO: We temporary match only first 8 bytes of keyword
      jmp .match_keyword_64bit
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
    ;                           Single line comment
    ; --------------------------------------------------------------------------

.one_line_comment:
      ; Go on until end of line.
      ; TODO: Optimize it.
      inc   rcx
      inc   r8

      cmp   byte [rcx], 13
      jz    .eol

      cmp   byte [rcx], 10
      jz    .eol

      jmp   .one_line_comment

    ; --------------------------------------------------------------------------
    ;                                 String
    ; --------------------------------------------------------------------------

.begin_from_string:
      ; String - go on until end quote matched: "text" or 'text'
      ; TODO: Handle unterminated strings.
      ; TODO: Handle escaped chars.

.next_string_character:
      inc   rcx                            ; rcx = pointer to next char
      cmp   al, byte [rcx]                 ; is quote matched or EOF?
      jnz   .next_string_character

      inc   rcx                            ; eat ending quote

      mov   al, TOKEN_STRING
      ret

    ; --------------------------------------------------------------------------
    ;                                 Numbers
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

.operator1:
      inc   rcx                            ; eat character
      and   al, 0x7f                       ; remove 0x80 mask
      ret

    ; --------------------------------------------------------------------------
    ;                   Potentially two characters operator
    ; --------------------------------------------------------------------------

.operator2:
      inc   rcx                            ; eat first character
      sub   eax, 0x20                      ; rax = index in operator 2 LUT
      lea   r9, [.operator2LUT + rax * 4]  ; r9  = pointer to LUT row

      mov   al, byte [rcx]                 ; rax = second character
      cmp   al, byte [r9]                  ; match second parameter
      setz  dl                             ; rdx = 1 if matched, 0 otherwise

      add   rcx, rdx                       ; eat second character if matched
      mov   al, byte [r9 + rdx]            ; rax = token id

      ret

    ; --------------------------------------------------------------------------
    ;                               End of line
    ; --------------------------------------------------------------------------

.eol:
      inc   rcx                            ; eat character

      cmp   byte [rcx], 13                 ; check for extra CR char.
      setz  al                             ; rax = 1 if double <EOL>

      cmp   byte [rcx], 10                 ; check for extra LF sequence
      setz  dl                             ; rdx = 1 if LF matched

      add   rcx, rax                       ; skip extra CR if found
      add   rcx, rdx                       ; skip extra LF if found

      mov   al, TOKEN_EOL
      ret

    ; --------------------------------------------------------------------------
    ;                      End of file or non 7-bit ASCII
    ; --------------------------------------------------------------------------

.eof_or_above127:
      or    al, al
      js    .above127
      mov   al, TOKEN_EOF
      ret

    ; --------------------------------------------------------------------------
    ;                          Generic error handler
    ; --------------------------------------------------------------------------

.above127:
.error:
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
  dq .eol               ; EOL (CR or LF)
  dq .begin_from_space  ; SPC
  dq .begin_from_digit  ; DIG 0-9
  dq .begin_from_letter ; LET a-z A-Z
  dq .begin_from_string ; STRING "'
  dq .operator2         ; OP2 (two character operators e.g. x >= y)
  dq .one_line_comment  ; CMT (single line comment)
  dq .error             ; ERR

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

.keywordMaskLUT:
  dq 0x0000000000000000 ; 0 characters keyword (unused)
  dq 0xff00000000000000 ; 1 characters keyword
  dq 0xffff000000000000 ; 2 characters keyword
  dq 0xffffff0000000000 ; 3 characters keyword
  dq 0xffffffff00000000 ; 4 characters keyword
  dq 0xffffffffff000000 ; 5 characters keyword
  dq 0xffffffffffff0000 ; 6 characters keyword
  dq 0xffffffffffffff00 ; 7 characters keyword

  dq 0xffffffffffffffff ; 8  characters keyword
  dq 0xffffffffffffffff ; 9  characters keyword
  dq 0xffffffffffffffff ; 10 characters keyword
  dq 0xffffffffffffffff ; 11 characters keyword
  dq 0xffffffffffffffff ; 12 characters keyword
  dq 0xffffffffffffffff ; 13 characters keyword
  dq 0xffffffffffffffff ; 14 characters keyword
  dq 0xffffffffffffffff ; 15 characters keyword

.keywordListIndexLUT:
  dq 0                  ; 0  characters keyword (unused)
  dq .keywordsList1     ; 1  characters keyword
  dq .keywordsList2     ; 2  characters keyword
  dq .keywordsList3     ; 3  characters keyword
  dq .keywordsList4     ; 4  characters keyword
  dq .keywordsList5     ; 5  characters keyword
  dq .keywordsList6     ; 6  characters keyword
  dq .keywordsList7     ; 7  characters keyword
  dq .keywordsList8     ; 8  characters keyword
  dq .keywordsList9     ; 9  characters keyword
  dq .keywordsList10    ; 10 characters keyword
  dq .keywordsList11    ; 11 characters keyword
  dq .keywordsList12    ; 12 characters keyword
  dq .keywordsList13    ; 13 characters keyword
  dq .keywordsList14    ; 14 characters keyword
  dq .keywordsList15    ; 15 characters keyword
  dq .keywordsList16    ; 16 characters keyword

.jmpTableMatchKeyword:
  dq 0                     ; 0  characters keyword (unused)
  dq .match_keyword_64bit  ; 1  characters keyword
  dq .match_keyword_64bit  ; 2  characters keyword
  dq .match_keyword_64bit  ; 3  characters keyword
  dq .match_keyword_64bit  ; 4  characters keyword
  dq .match_keyword_64bit  ; 5  characters keyword
  dq .match_keyword_64bit  ; 6  characters keyword
  dq .match_keyword_64bit  ; 7  characters keyword
  dq .match_keyword_64bit  ; 8  characters keyword
  dq .match_keyword_128bit ; 9  characters keyword
  dq .match_keyword_128bit ; 10 characters keyword
  dq .match_keyword_128bit ; 11 characters keyword
  dq .match_keyword_128bit ; 12 characters keyword
  dq .match_keyword_128bit ; 13 characters keyword
  dq .match_keyword_128bit ; 14 characters keyword
  dq .match_keyword_128bit ; 15 characters keyword
  dq .match_keyword_128bit ; 16 characters keyword

; -----------------
; 128-bit keywords
; -----------------

.keywordsList16:
  dq 0, 0

.keywordsList15:
  dq 0, 0

.keywordsList14:
  dq 0, 0

.keywordsList13:
  ;   0123456789abc   d  e  f
  db 'unimplemented', 0, 0, 0
  dq 0, 0

.keywordsList12:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList11:
  dq 'endfunct', 123
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList10:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList9:
  ;   012345678   9  a  b  c  d  e  f
  db 'endmethod', 0, 0, 0, 0, 0, 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

; ----------------
; 64-bit keywords
; ----------------

.keywordsList8:
  dq 'endclass', 100
  dq 'endwhile', 101
  dq 'function', 102
  dq 0, 0

.keywordsList7:
  dq 'extends', 103
  dq 'indexes', 104
  dq 0, 0
  dq 0, 0

.keywordsList6:
  dq 'endfor', 105
  dq 'global', 106
  dq 'import', 107
  dq 'method', 108

  dq 'values', 109
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList5:
  dq 'class', 110
  dq 'const', 110
  dq 'endif', 110
  dq 'false', 110

  dq 'print', 110
  dq 'while', 110
  dq 'write', 110
  dq 0, 0

; ----------------
; 32-bit keywords
; ----------------

.keywordsList4:
  dd 'true', 110
  dd 'null', 110
  dd 'keys', 110
  dd 'step', 110

  dd 'else', 110
  dd 'elif', 110
  dd 'from', 110
  dd 'read', 110

  dd 'isnt', 110
  dd 0, 0
  dd 0, 0
  dd 0, 0

.keywordsList3:
  dd 'and', 110
  dd 'not', 110
  dd 'for', 110
  dd 'new', 110

  dd 0, 0
  dd 0, 0
  dd 0, 0
  dd 0, 0

.keywordsList2:
  dd 'if', 110
  dd 'in', 110
  dd 'is', 110
  dd 'or', 110

  dd 'to', 110
  dd 0, 0
  dd 0, 0
  dd 0, 0

.keywordsList1:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0
