
; Win64 programming headers (ASCII)

; -----------------------------------------------------------------------------

; include 'macro/struct.asm'
; Macroinstructions for defining data structures

macro struct name
 { virtual at 0
   define @struct
   field@struct equ name
   match child parent, name \{ restore field@struct
                               field@struct equ child,fields@\#parent \}
   sub@struct equ
   struc db [val] \{ \common define field@struct .,db,<val> \}
   struc dw [val] \{ \common define field@struct .,dw,<val> \}
   struc du [val] \{ \common define field@struct .,du,<val> \}
   struc dd [val] \{ \common define field@struct .,dd,<val> \}
   struc dp [val] \{ \common define field@struct .,dp,<val> \}
   struc dq [val] \{ \common define field@struct .,dq,<val> \}
   struc dt [val] \{ \common define field@struct .,dt,<val> \}
   struc rb count \{ define field@struct .,db,count dup (?) \}
   struc rw count \{ define field@struct .,dw,count dup (?) \}
   struc rd count \{ define field@struct .,dd,count dup (?) \}
   struc rp count \{ define field@struct .,dp,count dup (?) \}
   struc rq count \{ define field@struct .,dq,count dup (?) \}
   struc rt count \{ define field@struct .,dt,count dup (?) \}

   macro struct \{ field@struct equ ,substruct,<
                  sub@struct equ substruct \} }

macro ends

 { match , sub@struct \{ restruc db,dw,du,dd,dp,dq,dt
                         restruc rb,rw,rd,rp,rq,rt
                         purge db,dw,du,dd,dp,dq,dt
                         purge rb,rw,rd,rp,rq,rt
                         purge union,struct
                         irpv fields,field@struct \\{ restore field@struct
                                                      \\common define fields@struct fields \\}
                         match name tail,fields@struct, \\{ if $
                                                            display 'Error: definition of ',\\`name,' contains illegal instructions.',0Dh,0Ah
                                                            err
                                                            end if \\}
                         match name=,fields,fields@struct \\{ restore @struct
                                                              make@struct name,fields
                                                              define fields@\\#name fields \\}
                         end virtual \}
   match any, sub@struct \{ tmp@struct equ field@struct
                            restore field@struct
                            field@struct equ tmp@struct> \}
   restore sub@struct }

macro make@struct name,[field,type,def]
 { common
    local define
    define equ name
   forward
    local sub
    match , field \{ make@substruct type,name,sub def
                     define equ define,.,sub, \}
    match any, field \{ define equ define,.#field,type,<def> \}
   common
    match fields, define \{ define@struct fields \} }

macro define@struct name,[field,type,def]
 { common
    virtual
    db `name
    load initial@struct byte from 0
    if initial@struct = '.'
    display 'Error: name of structure should not begin with a dot.',0Dh,0Ah
    err
    end if
    end virtual
    local list
    list equ
   forward
    if ~ field eq .
     name#field type def
     sizeof.#name#field = $ - name#field
    else
     label name#.#type
     rb sizeof.#type
    end if
    local value
    match any, list \{ list equ list, \}
    list equ list <value>
   common
    sizeof.#name = $
    restruc name
    match values, list \{
    struc name value \\{ \\local \\..base
    match , @struct \\\{ define field@struct .,name,<values> \\\}
    match no, @struct \\\{ label \\..base
   forward
     match , value \\\\{ field type def \\\\}
     match any, value \\\\{ field type value
                            if ~ field eq .
                             rb sizeof.#name#field - ($-field)
                            end if \\\\}
   common label . at \\..base \\\}
   \\}
    macro name value \\{
    match , @struct \\\{ \\\local anonymous
                                  define field@struct anonymous,name,<values> \\\}
    match no, @struct \\\{
   forward
     match , value \\\\{ type def \\\\}
     match any, value \\\\{ \\\\local ..field
                           ..field = $
                           type value
                           if ~ field eq .
                            rb sizeof.#name#field - ($-..field)
                           end if \\\\}
   common \\\} \\} \} }


; -----------------------------------------------------------------------------

;struc TCHAR [val] { common match any, val \{ . db val \}
;                           match , val \{ . db ? \} }
;sizeof.TCHAR = 1

GENERIC_READ      = 80000000h
GENERIC_WRITE     = 40000000h
GENERIC_EXECUTE   = 20000000h
GENERIC_ALL       = 10000000h

FILE_SHARE_READ   = 00000001h
FILE_SHARE_WRITE  = 00000002h
FILE_SHARE_DELETE = 00000004h

CREATE_NEW        = 1
CREATE_ALWAYS     = 2
OPEN_EXISTING     = 3
OPEN_ALWAYS       = 4
TRUNCATE_EXISTING = 5
