#include "text.isa"

mov r2, 0x04
mov r3, 0x05
add r2, r3, r2

store_32 [0x256], r2
load_32 r5, [0x256]
outdio [0x32]
nop
outdio [0x31]
nop
outdio [0x33]
nop
outdio [0x0A]
nop
outdio [0x0D]


jmpi 0x0;
