use64

macro DEBUG_MSG msg
{
  push rax rcx rdx r8  r9  r10

  cinvoke printf, '%s', msg
  cinvoke putchar, 13
  cinvoke putchar, 10

  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_PRINT1 msg
{
  push rax rcx rdx r8  r9  r10

  cinvoke printf, msg
  cinvoke putchar, 13
  cinvoke putchar, 10

  pop  r10 r9  r8  rdx rcx rax
}

macro DEBUG_PRINT2 fmt, x
{
  push rax rcx rdx r8  r9  r10

  push 0
  mov  [rsp], x
  pop  rdx

  cinvoke printf, fmt
  cinvoke putchar, 13
  cinvoke putchar, 10

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

  cinvoke printf, fmt
  cinvoke putchar, 13
  cinvoke putchar, 10

  pop  r10 r9  r8  rdx rcx rax
}
