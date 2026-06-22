#include "text.isa"


uart_put r6
outdio r6


add r1, r1, [0x01]
cmp r1, [0xfff0]
jlei 0x2
mov r1,0x00

jmpi 0x00
