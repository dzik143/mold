#ifndef _MIR1_H
#define _MIR1_H

void mir1_move_i32_i32();
void mir1_conv_i32_i32();

void mir1_neg_i32_i32();
void mir1_add_i32_i32();
void mir1_sub_i32_i32();
void mir1_mul_i32_i32();
void mir1_div_i32_i32();
void mir1_idiv_i32_i32();

void mir1_cmpEQ_i32_i32();
void mir1_cmpNE_i32_i32();
void mir1_cmpLT_i32_i32();
void mir1_cmpLE_i32_i32();
void mir1_cmpGT_i32_i32();
void mir1_cmpGE_i32_i32();

void mir1_cmpIsTypeof_b32_v_i32();
void mir1_cmpIsNotTypeof_b32_v_i32();

#define mir1_jmpIfTypeof_l_v_imm32(dst, x, y) if (

  elif opcode is MIR1_OPCODE_JMP_IF_TYPEOF
    rv = 'jmp.if.typeof'

  elif opcode is MIR1_OPCODE_JMP_IF_NOT_TYPEOF
    rv = 'jmp.if.not.typeof'

  elif opcode is MIR1_OPCODE_JMP
    rv = 'jmp'

  elif opcode is MIR1_OPCODE_JMP_BY_TABLE
    rv = 'jmp.by.table'

  elif opcode is MIR1_OPCODE_JMP_IF_TRUE
    rv = 'jmp.if.true'

  elif opcode is MIR1_OPCODE_JMP_IF_FALSE
    rv = 'jmp.if.false'

  elif opcode is MIR1_OPCODE_CREATE_OBJECT
    rv = 'create.object'

  elif opcode is MIR1_OPCODE_CREATE_ARRAY
    rv = 'create.array'

  elif opcode is MIR1_OPCODE_CREATE_MAP
    rv = 'create.map'

  elif opcode is MIR1_OPCODE_STORE_INDEX
    rv = 'store.index'

  elif opcode is MIR1_OPCODE_LOAD_INDEX
    rv = 'load.index'

  elif opcode is MIR1_OPCODE_STORE_KEY
    rv = 'store.key'

  elif opcode is MIR1_OPCODE_LOAD_KEY
    rv = 'load.key'

  elif opcode is MIR1_OPCODE_CREATE_VARIANT_FROM
    rv = 'variant.from'

  elif opcode is MIR1_OPCODE_CAST_VARIANT_TO
    rv = 'variant.to'

  elif opcode is MIR1_OPCODE_INIT_FRAME
    rv = 'init.frame'

  elif opcode is MIR1_OPCODE_CALL
    rv = 'call'

  elif opcode is MIR1_OPCODE_VCALL
    rv = 'vcall'

  elif opcode is MIR1_OPCODE_SYSCALL
    rv = 'syscall'

  elif opcode is MIR1_OPCODE_RET
    rv = 'ret'

  elif opcode is MIR1_OPCODE_INNER_RET
    rv = 'inner.ret'

  elif opcode is MIR1_OPCODE_NOP
    rv = 'nop'

  elif opcode is MIR1_OPCODE_STRING_JOIN
    rv = 'string.join'

  elif opcode is MIR1_OPCODE_LOAD_NULL
    rv = 'load.null'

  elif opcode is MIR1_OPCODE_PRINT
    rv = 'print'

  elif opcode is MIR1_OPCODE_CLEAR_VAR
    rv = 'clear.var'


#endif /* _MIR1_H */
