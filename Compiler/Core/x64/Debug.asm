use64

macro DEBUG_PUSH_ALL
{
  push rax rcx rdx r8 r9 r10
}

macro DEBUG_POP_ALL
{
  pop  r10 r9 r8 rdx rcx rax
}

macro DEBUG_MSG_INTERNAL msg
{
  local .fmt
  local .afterFmt

  jmp   .afterFmt

.fmt:
  db msg, 0

.afterFmt:

  sub   rsp, 32

  lea   rcx, [.fmt]
  call  [printf]

  mov   cl, 13
  call  [putchar]

  mov   cl, 10
  call  [putchar]

  add   rsp, 32
}

macro DEBUG_MSG msg
{
  DEBUG_PUSH_ALL
  DEBUG_MSG_INTERNAL msg
  DEBUG_POP_ALL
}

macro DEBUG_PRINT1 msg
{
  DEBUG_PUSH_ALL
  DEBUG_MSG_INTERNAL msg
  DEBUG_POP_ALL
}

macro DEBUG_PRINT2 fmt, x
{
  DEBUG_PUSH_ALL

  push x
  pop  rdx

  DEBUG_MSG_INTERNAL fmt
  DEBUG_POP_ALL
}

macro DEBUG_PRINT3 fmt, x, y
{
  DEBUG_PUSH_ALL

  push x
  push y

  pop  r8
  pop  rdx

  DEBUG_MSG_INTERNAL fmt
  DEBUG_POP_ALL
}

macro DEBUG_PRINT4 fmt, x, y, z
{
  DEBUG_PUSH_ALL

  push x
  push y
  push z

  pop  r9
  pop  r8
  pop  rdx

  DEBUG_MSG_INTERNAL fmt
  DEBUG_POP_ALL
}

macro DEBUG_PRINT5 fmt, a, b, c, d
{
  DEBUG_PUSH_ALL

  push a
  push b
  push c
  push d

  pop  r10
  pop  r9
  pop  r8
  pop  rdx

  DEBUG_MSG_INTERNAL fmt
  DEBUG_POP_ALL
}

macro DEBUG_ENSURE_STACK_UNALIGNED_16 {
  local .stackIsUnaligned16
  test rsp, 0xf
  jnz  .stackIsUnaligned16
  sub  rsp, 8
  DEBUG_PRINT1  'PANIC! Stack is aligned to 16-bytes, but should *NOT* be'
  int  3
.stackIsUnaligned16:
}

macro DEBUG_ENSURE_STACK_ALIGNED_16 {
  local .stackIsAligned16
  test rsp, 0xf
  jz   .stackIsAligned16
  DEBUG_PRINT1  'PANIC! Stack is *NOT* aligned to 16-bytes, but should be'
  int  3
.stackIsAligned16:
}

macro W64CALL dst {
  DEBUG_ENSURE_STACK_ALIGNED_16
  call dst
}