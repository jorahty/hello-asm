.global _main
.align 2

_main:
  // write(1, "Hello, World!\n", 13)
  mov X0, #1 // fd
  adr X1, msg // buf
  mov X2, #13 // count
  mov X16, #4 // write
  svc 0

  // exit(0)
  mov X0, #0 // rval
  mov X16, #1 // exit
  svc 0

msg: .ascii "Hello World!\n"
