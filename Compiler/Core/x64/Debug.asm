use64

macro DEBUG_MSG_INTERNAL msg
{
  push rax rcx rdx r8  r9  r10

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

  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_MSG msg
{
  push rax rcx rdx r8 r9 r10
  DEBUG_MSG_INTERNAL msg
  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_PRINT1 msg
{
  push rax rcx rdx r8 r9 r10
  DEBUG_MSG_INTERNAL msg
  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_PRINT2 fmt, x
{
  push rax rcx rdx r8  r9  r10

  push 0
  mov  [rsp], x
  pop  rdx

  DEBUG_MSG_INTERNAL fmt

  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_PRINT3 fmt, x, y
{
  push rax rcx rdx r8  r9  r10

  push 0
  mov  [rsp], x

  push 0
  mov  [rsp], y

  pop  r8
  pop  rdx

  DEBUG_MSG_INTERNAL fmt

  pop  r10 r9  r8  rdx rcx rax
}
