use64

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
EOL EQU 0  ; EOL
SPC EQU 1  ; WHITE
DIG EQU 2  ; DIGIT     0-9
LET EQU 3  ; LETTER    a-z A-Z
STR EQU 4  ; STRING    '"
OP2 EQU 5  ; OPERATOR2 -> etc.
CMT EQU 6  ; COMMENT   single line comment
ERR EQU 7  ; ERROR

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
MNK EQU LET       ; '@' (treat first underscore as letter)
LBS EQU 0x80 + 64 ; '[' (one char operator)
BSH EQU ERR       ; '\' (unassigned token yet - map to ERR)
RBS EQU 0x80 + 63 ; ']' (one char operator)
POW EQU ERR       ; '^' (unassigned token yet - map to ERR)
UND EQU LET       ; '_' (treat first underscore as letter)
LBC EQU 0x80 + 56 ; '{' (one char operator)
ABS EQU ERR       ; '|' (unassigned token yet - map to ERR)
RBC EQU 0x80 + 55 ; '}' (one char operator)
TLD EQU 0x80 + 57 ; '~' (one char operator)

__MOLD_Lexer:
      call __MOLD_LexerInternal

      push rax
      push rsi
      push r10

      mov     r9, r8
      mov     edx, eax
      sub     r8, rsi
      neg     r8

      ;cinvoke printf, '[ LEXER ] <token #%d> %.*s'
      ;cinvoke putchar, 10
      ;int 3

      pop  r10
      pop  rsi
      pop  rax
      ret

__MOLD_LexerInternal:

      ; rsi - source (char*)
      mov   eax, 0                         ; rax = 0
      mov   edx, 0                         ; rdx = 0
      mov   r8, rsi                        ; r8  = keep original pointer
                                           ; we use it calculate token length

      or    al, byte [rsi]                 ; rax = the first character
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
      inc   rsi                            ; rsi = pointer to next character
      or    al, byte [rsi]                 ; rax = next character
      js    .above127                      ; accept 7-bit ascii only

      and   al, byte [.isOkAsNextIdentCharacterLUT + rax]
      jz    .next_ident_character          ; rax is 0 if OK

.dispatch_ident_length:
      mov   rax, rsi                       ; rax = pointer to current character
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
      cmp   rdx, qword [r9 + 16*0]
      cmovz rax, qword [r9 + 16*0 + 8]

      cmp   rdx, qword [r9 + 16*1]
      cmovz rax, qword [r9 + 16*1 + 8]

      cmp   rdx, qword [r9 + 16*2]
      cmovz rax, qword [r9 + 16*2 + 8]

      cmp   rdx, qword [r9 + 16*3]
      cmovz rax, qword [r9 + 16*3 + 8]

      ; Skip second chunk if possible
      ; TODO: Review it.
      ; ja    .not_a_keyword_64bit

      ; Match next 4-keywords chunk
      cmp   rdx, qword [r9 + 16*4]
      cmovz rax, qword [r9 + 16*4 + 8]

      cmp   rdx, qword [r9 + 16*5]
      cmovz rax, qword [r9 + 16*5 + 8]

      cmp   rdx, qword [r9 + 16*6]
      cmovz rax, qword [r9 + 16*6 + 8]

      cmp   rdx, qword [r9 + 16*7]
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
      inc   rsi                            ; rsi = pointer to next character
      cmp   al, byte [rsi]                 ; is it still space?
      jz    .next_space                    ; go on if another space found
      jmp   __MOLD_LexerInternal           ; and try once again from beginning

      ;mov   al, TOKEN_WHITE
      ;ret

    ; --------------------------------------------------------------------------
    ;                           Single line comment
    ; --------------------------------------------------------------------------

.one_line_comment:
      ; Go on until end of line.
      ; TODO: Optimize it.
      inc   rsi
      inc   r8

      cmp   byte [rsi], 13
      jz    .eol

      cmp   byte [rsi], 10
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
      inc   rsi                            ; rsi = pointer to next char
      cmp   al, byte [rsi]                 ; is quote matched or EOF?
      jnz   .next_string_character

      inc   rsi                            ; eat ending quote

      mov   al, TOKEN_STRING
      ret

    ; --------------------------------------------------------------------------
    ;                                 Numbers
    ; --------------------------------------------------------------------------

.begin_from_digit:
      ; Skip two byte '0x' prefix if found.
      cmp   word [rsi], '0x'               ; search for 0x prefix
      setz  al                             ; rax = 1 if prefix found
      add   rsi, rax                       ; rsi = rsi + 1 if prefix found
      add   rsi, rax                       ; rsi = rsi + 1 if prefix found

      mov   r9d, '.'

.next_integer:
.next_digit:
      ; Go on until first non-digit character found.
      inc   rsi                            ; rsi = pointer to next char
      mov   al, [rsi]                      ; rax = next character
      sub   al, '0'                        ; is char between '0' and '9' ?
      cmp   al, '9' - '0'                  ;
      jbe   .next_digit                    ; Go on if another digit found

.optional_float_dot:
      cmp   r9d, 0xff                      ; don't search for dot twice
      je    .done_float                    ; 123.456.789 is not correct number

      cmp   byte [rsi], r9l                ; is current char is '.' ?
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
      mov   eax, edx                       ; rax = token id with 0x80 mask
      inc   rsi                            ; eat character
      and   al, 0x7f                       ; remove 0x80 mask
      ret

    ; --------------------------------------------------------------------------
    ;                   Potentially two characters operator
    ; --------------------------------------------------------------------------

.operator2:
      inc   rsi                            ; eat first character
      sub   eax, 0x20                      ; rax = index in operator 2 LUT
      lea   r9, [.operator2LUT + rax * 4]  ; r9  = pointer to LUT row

      mov   al, byte [rsi]                 ; rax = second character
      cmp   al, byte [r9]                  ; match second parameter
      setz  dl                             ; rdx = 1 if matched, 0 otherwise

      add   rsi, rdx                       ; eat second character if matched
      mov   al, byte [r9 + rdx]            ; rax = token id

      ret

    ; --------------------------------------------------------------------------
    ;                               End of line
    ; --------------------------------------------------------------------------

.eol:
      inc   rsi                            ; eat character

      cmp   byte [rsi], 13                 ; check for extra CR char.
      setz  al                             ; rax = 1 if double <EOL>

      cmp   byte [rsi], 10                 ; check for extra LF sequence
      setz  dl                             ; rdx = 1 if LF matched

      add   rsi, rax                       ; skip extra CR if found
      add   rsi, rdx                       ; skip extra LF if found

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
      ;push    rsi
      ;cinvoke printf, 'ERROR'
      ;pop     rsi
      int 3
      ret

.charTypeLUT:
;       0    1    2    3    4    5    6    7    8    9    a    b    c    d    e    f
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, EOL, ERR, ERR, EOL, ERR, ERR ; 0x
  db  ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR, ERR ; 1x
  db  SPC, INR, STR, HSH, USD, PER, AMP, STR, LBR, RBR, STA, PLS, COM, MNS, DOT,  DV ; 2x
  db  DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, DIG, COL, SEM,  LT,  EQ,  GT, QMK ; 3x
  db  MNK, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET ; 4x
  db  LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LET, LBS, ERR, RBS, ERR, UND ; 5x
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
  dq 0x00000000000000ff ; 1 characters keyword
  dq 0x000000000000ffff ; 2 characters keyword
  dq 0x0000000000ffffff ; 3 characters keyword
  dq 0x00000000ffffffff ; 4 characters keyword
  dq 0x000000ffffffffff ; 5 characters keyword
  dq 0x0000ffffffffffff ; 6 characters keyword
  dq 0x00ffffffffffffff ; 7 characters keyword

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
  dq 0, 0
  dq 0, 0
  dq 0, 0

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList15:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList14:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList13:
  ;   01234567         89abc   d  e  f
  dq 'unimplem', 19  ;'ented', 0, 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList12:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList11:
  dq 'endfunct', 30
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList10:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList9:
  ;   01234567'         8   9  a  b  c  d  e  f
  dq 'endmetho', 86   ;'d', 0, 0, 0, 0, 0, 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

; ----------------
; 64-bit keywords
; ----------------

.keywordsList8:
  dq 'endclass', 22
  dq 'endwhile', 95
  dq 'function', 31
  dq 0, 0

.keywordsList7:
  dq 'extends', 23
  dq 'indexes', 6
  dq 0, 0
  dq 0, 0

.keywordsList6:
  dq 'endfor', 9
  dq 'global', 37
  dq 'import', 36
  dq 'method', 21

  dq 'values', 27
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList5:
  dq 'class', 24
  dq 'const', 33
  dq 'endif', 14
  dq 'false', 1

  dq 'print', 38
  dq 'while', 5
  dq 'write', 26
  dq 0, 0

; ----------------
; 32-bit keywords
; ----------------

.keywordsList4:
  dq 'elif', 15
  dq 'else', 13
  dq 'from', 28
  dq 'isnt', 44

  dq 'keys', 7
  dq 'null', 3
  dq 'read', 29
  dq 'step', 8

  dq 'true', 2
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList3:
  dq 'and', 41
  dq 'not', 39
  dq 'for', 12
  dq 'new', 18

  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList2:
  dq 'if', 16
  dq 'in', 11
  dq 'is', 45
  dq 'or', 40

  dq 'to', 25
  dq 0, 0
  dq 0, 0
  dq 0, 0

.keywordsList1:
  dq 0, 0
  dq 0, 0
  dq 0, 0
  dq 0, 0
