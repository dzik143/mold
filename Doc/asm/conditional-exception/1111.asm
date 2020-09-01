use64

__MOLD_ExceptionIfTouched:
__MOLD_Exception:

macro CONDITIONAL_EXCEPTION flag, major_code
{
  xor eax, eax
  set#flag al
  test dword [__MOLD_ExceptionIfTouched - 4 + rax], major_code
;  mov eax, major_code + minor_code * 65536
;  j#flag 34323
}

;cmp, r8d, eax

CONDITIONAL_EXCEPTION a, 1
