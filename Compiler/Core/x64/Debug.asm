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
  jmp   .next
  .fmt db msg, 0

.next:

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
  pop  r8

  push y
  pop  r9

  DEBUG_MSG_INTERNAL fmt
  DEBUG_POP_ALL
}
