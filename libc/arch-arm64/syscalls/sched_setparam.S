/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(sched_setparam)
    stp     x29, x30, [sp, #-16]!
    .cfi_def_cfa_offset 16
    .cfi_rel_offset x29, 0
    .cfi_rel_offset x30, 8
    mov     x29,  sp

    mov     x8, __NR_sched_setparam
    svc     #0

    ldp     x29, x30, [sp], #16
    .cfi_def_cfa_offset 0
    .cfi_restore x29
    .cfi_restore x30

    cmn     x0, #(MAX_ERRNO + 1)
    cneg    x0, x0, hi
    b.hi    __set_errno

    ret
END(sched_setparam)
