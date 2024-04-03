
originalbinary:     file format mach-o-arm64


Disassembly of section .text:

0000000100002e6c <__Z3Addii>:
   100002e6c:	d10043ff 	sub	sp, sp, #0x10
   100002e70:	b9000fe0 	str	w0, [sp, #12]
   100002e74:	b9000be1 	str	w1, [sp, #8]
   100002e78:	b9400fe8 	ldr	w8, [sp, #12]
   100002e7c:	b9400be9 	ldr	w9, [sp, #8]
   100002e80:	0b090100 	add	w0, w8, w9
   100002e84:	910043ff 	add	sp, sp, #0x10
   100002e88:	d65f03c0 	ret

0000000100002e8c <__Z8Subtractii>:
   100002e8c:	d100c3ff 	sub	sp, sp, #0x30
   100002e90:	a9014ff4 	stp	x20, x19, [sp, #16]
   100002e94:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002e98:	910083fd 	add	x29, sp, #0x20
   100002e9c:	b9000fe0 	str	w0, [sp, #12]
   100002ea0:	b9000be1 	str	w1, [sp, #8]
   100002ea4:	910033e0 	add	x0, sp, #0xc
   100002ea8:	910023e1 	add	x1, sp, #0x8
   100002eac:	9400000b 	bl	100002ed8 <__ZNSt3__13maxB8ue170006IiEERKT_S3_S3_>
   100002eb0:	b9400013 	ldr	w19, [x0]
   100002eb4:	910033e0 	add	x0, sp, #0xc
   100002eb8:	910023e1 	add	x1, sp, #0x8
   100002ebc:	94000012 	bl	100002f04 <__ZNSt3__13minB8ue170006IiEERKT_S3_S3_>
   100002ec0:	b9400008 	ldr	w8, [x0]
   100002ec4:	4b080260 	sub	w0, w19, w8
   100002ec8:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002ecc:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100002ed0:	9100c3ff 	add	sp, sp, #0x30
   100002ed4:	d65f03c0 	ret

0000000100002ed8 <__ZNSt3__13maxB8ue170006IiEERKT_S3_S3_>:
   100002ed8:	d100c3ff 	sub	sp, sp, #0x30
   100002edc:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002ee0:	910083fd 	add	x29, sp, #0x20
   100002ee4:	f81f83a0 	stur	x0, [x29, #-8]
   100002ee8:	f9000be1 	str	x1, [sp, #16]
   100002eec:	f85f83a0 	ldur	x0, [x29, #-8]
   100002ef0:	f9400be1 	ldr	x1, [sp, #16]
   100002ef4:	940000bc 	bl	1000031e4 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>
   100002ef8:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002efc:	9100c3ff 	add	sp, sp, #0x30
   100002f00:	d65f03c0 	ret

0000000100002f04 <__ZNSt3__13minB8ue170006IiEERKT_S3_S3_>:
   100002f04:	d100c3ff 	sub	sp, sp, #0x30
   100002f08:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002f0c:	910083fd 	add	x29, sp, #0x20
   100002f10:	f81f83a0 	stur	x0, [x29, #-8]
   100002f14:	f9000be1 	str	x1, [sp, #16]
   100002f18:	f85f83a0 	ldur	x0, [x29, #-8]
   100002f1c:	f9400be1 	ldr	x1, [sp, #16]
   100002f20:	940000ce 	bl	100003258 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>
   100002f24:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002f28:	9100c3ff 	add	sp, sp, #0x30
   100002f2c:	d65f03c0 	ret

0000000100002f30 <__Z9binaryANDii>:
   100002f30:	d10043ff 	sub	sp, sp, #0x10
   100002f34:	b9000fe0 	str	w0, [sp, #12]
   100002f38:	b9000be1 	str	w1, [sp, #8]
   100002f3c:	b9400fe8 	ldr	w8, [sp, #12]
   100002f40:	b9400be9 	ldr	w9, [sp, #8]
   100002f44:	0a090100 	and	w0, w8, w9
   100002f48:	910043ff 	add	sp, sp, #0x10
   100002f4c:	d65f03c0 	ret

0000000100002f50 <__Z8binaryORii>:
   100002f50:	d10043ff 	sub	sp, sp, #0x10
   100002f54:	b9000fe0 	str	w0, [sp, #12]
   100002f58:	b9000be1 	str	w1, [sp, #8]
   100002f5c:	b9400fe8 	ldr	w8, [sp, #12]
   100002f60:	b9400be9 	ldr	w9, [sp, #8]
   100002f64:	2a090100 	orr	w0, w8, w9
   100002f68:	910043ff 	add	sp, sp, #0x10
   100002f6c:	d65f03c0 	ret

0000000100002f70 <__Z9binaryXORii>:
   100002f70:	d10043ff 	sub	sp, sp, #0x10
   100002f74:	b9000fe0 	str	w0, [sp, #12]
   100002f78:	b9000be1 	str	w1, [sp, #8]
   100002f7c:	b9400fe8 	ldr	w8, [sp, #12]
   100002f80:	b9400be9 	ldr	w9, [sp, #8]
   100002f84:	4a090100 	eor	w0, w8, w9
   100002f88:	910043ff 	add	sp, sp, #0x10
   100002f8c:	d65f03c0 	ret

0000000100002f90 <_main>:
   100002f90:	d100c3ff 	sub	sp, sp, #0x30
   100002f94:	a9014ff4 	stp	x20, x19, [sp, #16]
   100002f98:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002f9c:	910083fd 	add	x29, sp, #0x20
   100002fa0:	b9000fff 	str	wzr, [sp, #12]
   100002fa4:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002fa8:	f9403100 	ldr	x0, [x8, #96]
   100002fac:	b0000008 	adrp	x8, 100003000 <_main+0x70>
   100002fb0:	9139b101 	add	x1, x8, #0xe6c
   100002fb4:	94000057 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002fb8:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002fbc:	f9402d00 	ldr	x0, [x8, #88]
   100002fc0:	910023e1 	add	x1, sp, #0x8
   100002fc4:	94000364 	bl	100003d54 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x60>
   100002fc8:	910013e1 	add	x1, sp, #0x4
   100002fcc:	94000362 	bl	100003d54 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x60>
   100002fd0:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002fd4:	f9403100 	ldr	x0, [x8, #96]
   100002fd8:	b0000008 	adrp	x8, 100003000 <_main+0x70>
   100002fdc:	913a1d01 	add	x1, x8, #0xe87
   100002fe0:	9400004c 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002fe4:	aa0003f3 	mov	x19, x0
   100002fe8:	b9400be0 	ldr	w0, [sp, #8]
   100002fec:	b94007e1 	ldr	w1, [sp, #4]
   100002ff0:	97ffff9f 	bl	100002e6c <__Z3Addii>
   100002ff4:	aa0003e1 	mov	x1, x0
   100002ff8:	aa1303e0 	mov	x0, x19
   100002ffc:	94000365 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100003000:	90000008 	adrp	x8, 100003000 <_main+0x70>
   100003004:	91061101 	add	x1, x8, #0x184
   100003008:	94000054 	bl	100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   10000300c:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100003010:	f9403100 	ldr	x0, [x8, #96]
   100003014:	90000008 	adrp	x8, 100003000 <_main+0x70>
   100003018:	913a4901 	add	x1, x8, #0xe92
   10000301c:	9400003d 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100003020:	aa0003f3 	mov	x19, x0
   100003024:	b9400be0 	ldr	w0, [sp, #8]
   100003028:	b94007e1 	ldr	w1, [sp, #4]
   10000302c:	97ffff98 	bl	100002e8c <__Z8Subtractii>
   100003030:	aa0003e1 	mov	x1, x0
   100003034:	aa1303e0 	mov	x0, x19
   100003038:	94000356 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   10000303c:	90000008 	adrp	x8, 100003000 <_main+0x70>
   100003040:	91061101 	add	x1, x8, #0x184
   100003044:	94000045 	bl	100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100003048:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   10000304c:	f9403100 	ldr	x0, [x8, #96]
   100003050:	90000008 	adrp	x8, 100003000 <_main+0x70>
   100003054:	913a8101 	add	x1, x8, #0xea0
   100003058:	9400002e 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   10000305c:	aa0003f3 	mov	x19, x0
   100003060:	b9400be0 	ldr	w0, [sp, #8]
   100003064:	b94007e1 	ldr	w1, [sp, #4]
   100003068:	97ffffb2 	bl	100002f30 <__Z9binaryANDii>
   10000306c:	aa0003e1 	mov	x1, x0
   100003070:	aa1303e0 	mov	x0, x19
   100003074:	94000347 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100003078:	90000008 	adrp	x8, 100003000 <_main+0x70>
   10000307c:	91061101 	add	x1, x8, #0x184
   100003080:	94000036 	bl	100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100003084:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100003088:	f9403100 	ldr	x0, [x8, #96]
   10000308c:	90000008 	adrp	x8, 100003000 <_main+0x70>
   100003090:	913ab501 	add	x1, x8, #0xead
   100003094:	9400001f 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100003098:	aa0003f3 	mov	x19, x0
   10000309c:	b9400be0 	ldr	w0, [sp, #8]
   1000030a0:	b94007e1 	ldr	w1, [sp, #4]
   1000030a4:	97ffffab 	bl	100002f50 <__Z8binaryORii>
   1000030a8:	aa0003e1 	mov	x1, x0
   1000030ac:	aa1303e0 	mov	x0, x19
   1000030b0:	94000338 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   1000030b4:	90000008 	adrp	x8, 100003000 <_main+0x70>
   1000030b8:	91061101 	add	x1, x8, #0x184
   1000030bc:	94000027 	bl	100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   1000030c0:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   1000030c4:	f9403100 	ldr	x0, [x8, #96]
   1000030c8:	90000008 	adrp	x8, 100003000 <_main+0x70>
   1000030cc:	913ae501 	add	x1, x8, #0xeb9
   1000030d0:	94000010 	bl	100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   1000030d4:	aa0003f3 	mov	x19, x0
   1000030d8:	b9400be0 	ldr	w0, [sp, #8]
   1000030dc:	b94007e1 	ldr	w1, [sp, #4]
   1000030e0:	97ffffa4 	bl	100002f70 <__Z9binaryXORii>
   1000030e4:	aa0003e1 	mov	x1, x0
   1000030e8:	aa1303e0 	mov	x0, x19
   1000030ec:	94000329 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   1000030f0:	90000008 	adrp	x8, 100003000 <_main+0x70>
   1000030f4:	91061101 	add	x1, x8, #0x184
   1000030f8:	94000018 	bl	100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   1000030fc:	52800000 	mov	w0, #0x0                   	// #0
   100003100:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003104:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003108:	9100c3ff 	add	sp, sp, #0x30
   10000310c:	d65f03c0 	ret

0000000100003110 <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
   100003110:	d100c3ff 	sub	sp, sp, #0x30
   100003114:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003118:	a9027bfd 	stp	x29, x30, [sp, #32]
   10000311c:	910083fd 	add	x29, sp, #0x20
   100003120:	f90007e0 	str	x0, [sp, #8]
   100003124:	f90003e1 	str	x1, [sp]
   100003128:	f94007f3 	ldr	x19, [sp, #8]
   10000312c:	f94003f4 	ldr	x20, [sp]
   100003130:	f94003e0 	ldr	x0, [sp]
   100003134:	940000be 	bl	10000342c <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc>
   100003138:	aa0003e2 	mov	x2, x0
   10000313c:	aa1303e0 	mov	x0, x19
   100003140:	aa1403e1 	mov	x1, x20
   100003144:	94000055 	bl	100003298 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
   100003148:	a9427bfd 	ldp	x29, x30, [sp, #32]
   10000314c:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003150:	9100c3ff 	add	sp, sp, #0x30
   100003154:	d65f03c0 	ret

0000000100003158 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>:
   100003158:	d10083ff 	sub	sp, sp, #0x20
   10000315c:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003160:	910043fd 	add	x29, sp, #0x10
   100003164:	f90007e0 	str	x0, [sp, #8]
   100003168:	f90003e1 	str	x1, [sp]
   10000316c:	f94007e0 	ldr	x0, [sp, #8]
   100003170:	f94003e8 	ldr	x8, [sp]
   100003174:	d63f0100 	blr	x8
   100003178:	a9417bfd 	ldp	x29, x30, [sp, #16]
   10000317c:	910083ff 	add	sp, sp, #0x20
   100003180:	d65f03c0 	ret

0000000100003184 <__ZNSt3__14endlB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_>:
   100003184:	d100c3ff 	sub	sp, sp, #0x30
   100003188:	a9014ff4 	stp	x20, x19, [sp, #16]
   10000318c:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003190:	910083fd 	add	x29, sp, #0x20
   100003194:	f90007e0 	str	x0, [sp, #8]
   100003198:	f94007f3 	ldr	x19, [sp, #8]
   10000319c:	f94007e8 	ldr	x8, [sp, #8]
   1000031a0:	f9400109 	ldr	x9, [x8]
   1000031a4:	f85e8129 	ldur	x9, [x9, #-24]
   1000031a8:	8b090100 	add	x0, x8, x9
   1000031ac:	52800148 	mov	w8, #0xa                   	// #10
   1000031b0:	13001d01 	sxtb	w1, w8
   1000031b4:	9400028c 	bl	100003be4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>
   1000031b8:	aa0003e8 	mov	x8, x0
   1000031bc:	aa1303e0 	mov	x0, x19
   1000031c0:	13001d01 	sxtb	w1, w8
   1000031c4:	940002e7 	bl	100003d60 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x6c>
   1000031c8:	f94007e0 	ldr	x0, [sp, #8]
   1000031cc:	940002e8 	bl	100003d6c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x78>
   1000031d0:	f94007e0 	ldr	x0, [sp, #8]
   1000031d4:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000031d8:	a9414ff4 	ldp	x20, x19, [sp, #16]
   1000031dc:	9100c3ff 	add	sp, sp, #0x30
   1000031e0:	d65f03c0 	ret

00000001000031e4 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>:
   1000031e4:	d100c3ff 	sub	sp, sp, #0x30
   1000031e8:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000031ec:	910083fd 	add	x29, sp, #0x20
   1000031f0:	f9000be0 	str	x0, [sp, #16]
   1000031f4:	f90007e1 	str	x1, [sp, #8]
   1000031f8:	f9400be1 	ldr	x1, [sp, #16]
   1000031fc:	f94007e2 	ldr	x2, [sp, #8]
   100003200:	d10007a0 	sub	x0, x29, #0x1
   100003204:	94000008 	bl	100003224 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>
   100003208:	36000060 	tbz	w0, #0, 100003214 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x30>
   10000320c:	f94007e0 	ldr	x0, [sp, #8]
   100003210:	14000002 	b	100003218 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x34>
   100003214:	f9400be0 	ldr	x0, [sp, #16]
   100003218:	a9427bfd 	ldp	x29, x30, [sp, #32]
   10000321c:	9100c3ff 	add	sp, sp, #0x30
   100003220:	d65f03c0 	ret

0000000100003224 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>:
   100003224:	d10083ff 	sub	sp, sp, #0x20
   100003228:	f9000fe0 	str	x0, [sp, #24]
   10000322c:	f9000be1 	str	x1, [sp, #16]
   100003230:	f90007e2 	str	x2, [sp, #8]
   100003234:	f9400be8 	ldr	x8, [sp, #16]
   100003238:	b9400108 	ldr	w8, [x8]
   10000323c:	f94007e9 	ldr	x9, [sp, #8]
   100003240:	b9400129 	ldr	w9, [x9]
   100003244:	6b09011f 	cmp	w8, w9
   100003248:	1a9fa7e8 	cset	w8, lt  // lt = tstop
   10000324c:	12000100 	and	w0, w8, #0x1
   100003250:	910083ff 	add	sp, sp, #0x20
   100003254:	d65f03c0 	ret

0000000100003258 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>:
   100003258:	d100c3ff 	sub	sp, sp, #0x30
   10000325c:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003260:	910083fd 	add	x29, sp, #0x20
   100003264:	f9000be0 	str	x0, [sp, #16]
   100003268:	f90007e1 	str	x1, [sp, #8]
   10000326c:	f94007e1 	ldr	x1, [sp, #8]
   100003270:	f9400be2 	ldr	x2, [sp, #16]
   100003274:	d10007a0 	sub	x0, x29, #0x1
   100003278:	97ffffeb 	bl	100003224 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>
   10000327c:	36000060 	tbz	w0, #0, 100003288 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x30>
   100003280:	f94007e0 	ldr	x0, [sp, #8]
   100003284:	14000002 	b	10000328c <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x34>
   100003288:	f9400be0 	ldr	x0, [sp, #16]
   10000328c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003290:	9100c3ff 	add	sp, sp, #0x30
   100003294:	d65f03c0 	ret

0000000100003298 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
   100003298:	d10203ff 	sub	sp, sp, #0x80
   10000329c:	a90557f6 	stp	x22, x21, [sp, #80]
   1000032a0:	a9064ff4 	stp	x20, x19, [sp, #96]
   1000032a4:	a9077bfd 	stp	x29, x30, [sp, #112]
   1000032a8:	9101c3fd 	add	x29, sp, #0x70
   1000032ac:	f81d83a0 	stur	x0, [x29, #-40]
   1000032b0:	f81d03a1 	stur	x1, [x29, #-48]
   1000032b4:	f9001fe2 	str	x2, [sp, #56]
   1000032b8:	f85d83a1 	ldur	x1, [x29, #-40]
   1000032bc:	9100a3e0 	add	x0, sp, #0x28
   1000032c0:	940002ae 	bl	100003d78 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x84>
   1000032c4:	14000001 	b	1000032c8 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x30>
   1000032c8:	9100a3e0 	add	x0, sp, #0x28
   1000032cc:	94000063 	bl	100003458 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ue170006Ev>
   1000032d0:	14000001 	b	1000032d4 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x3c>
   1000032d4:	36000960 	tbz	w0, #0, 100003400 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x168>
   1000032d8:	14000001 	b	1000032dc <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
   1000032dc:	f85d83a1 	ldur	x1, [x29, #-40]
   1000032e0:	910023e0 	add	x0, sp, #0x8
   1000032e4:	940000db 	bl	100003650 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ue170006ERNS_13basic_ostreamIcS2_EE>
   1000032e8:	f85d03b3 	ldur	x19, [x29, #-48]
   1000032ec:	f85d83a8 	ldur	x8, [x29, #-40]
   1000032f0:	f9400109 	ldr	x9, [x8]
   1000032f4:	f85e8129 	ldur	x9, [x9, #-24]
   1000032f8:	8b090100 	add	x0, x8, x9
   1000032fc:	940000e4 	bl	10000368c <__ZNKSt3__18ios_base5flagsB8ue170006Ev>
   100003300:	14000001 	b	100003304 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x6c>
   100003304:	52801608 	mov	w8, #0xb0                  	// #176
   100003308:	0a080008 	and	w8, w0, w8
   10000330c:	7100811f 	cmp	w8, #0x20
   100003310:	540000a1 	b.ne	100003324 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>  // b.any
   100003314:	f85d03a8 	ldur	x8, [x29, #-48]
   100003318:	f9401fe9 	ldr	x9, [sp, #56]
   10000331c:	8b090114 	add	x20, x8, x9
   100003320:	14000002 	b	100003328 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x90>
   100003324:	f85d03b4 	ldur	x20, [x29, #-48]
   100003328:	f85d03a8 	ldur	x8, [x29, #-48]
   10000332c:	f9401fe9 	ldr	x9, [sp, #56]
   100003330:	8b090115 	add	x21, x8, x9
   100003334:	f85d83a8 	ldur	x8, [x29, #-40]
   100003338:	f9400109 	ldr	x9, [x8]
   10000333c:	f85e8129 	ldur	x9, [x9, #-24]
   100003340:	8b090116 	add	x22, x8, x9
   100003344:	aa1603e0 	mov	x0, x22
   100003348:	940000d7 	bl	1000036a4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev>
   10000334c:	14000001 	b	100003350 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xb8>
   100003350:	f94007e8 	ldr	x8, [sp, #8]
   100003354:	13001c05 	sxtb	w5, w0
   100003358:	aa0803e0 	mov	x0, x8
   10000335c:	aa1303e1 	mov	x1, x19
   100003360:	aa1403e2 	mov	x2, x20
   100003364:	aa1503e3 	mov	x3, x21
   100003368:	aa1603e4 	mov	x4, x22
   10000336c:	94000042 	bl	100003474 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
   100003370:	14000001 	b	100003374 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xdc>
   100003374:	f9000be0 	str	x0, [sp, #16]
   100003378:	910043e0 	add	x0, sp, #0x10
   10000337c:	940000e0 	bl	1000036fc <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ue170006Ev>
   100003380:	360003e0 	tbz	w0, #0, 1000033fc <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x164>
   100003384:	f85d83a8 	ldur	x8, [x29, #-40]
   100003388:	f9400109 	ldr	x9, [x8]
   10000338c:	f85e8129 	ldur	x9, [x9, #-24]
   100003390:	8b090100 	add	x0, x8, x9
   100003394:	528000a1 	mov	w1, #0x5                   	// #5
   100003398:	940000e2 	bl	100003720 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ue170006Ej>
   10000339c:	14000001 	b	1000033a0 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x108>
   1000033a0:	14000017 	b	1000033fc <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x164>
   1000033a4:	f90013e0 	str	x0, [sp, #32]
   1000033a8:	b9001fe1 	str	w1, [sp, #28]
   1000033ac:	14000005 	b	1000033c0 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x128>
   1000033b0:	f90013e0 	str	x0, [sp, #32]
   1000033b4:	b9001fe1 	str	w1, [sp, #28]
   1000033b8:	9100a3e0 	add	x0, sp, #0x28
   1000033bc:	94000272 	bl	100003d84 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x90>
   1000033c0:	f94013e0 	ldr	x0, [sp, #32]
   1000033c4:	94000282 	bl	100003dcc <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xd8>
   1000033c8:	f85d83a8 	ldur	x8, [x29, #-40]
   1000033cc:	f9400109 	ldr	x9, [x8]
   1000033d0:	f85e8129 	ldur	x9, [x9, #-24]
   1000033d4:	8b090100 	add	x0, x8, x9
   1000033d8:	94000274 	bl	100003da8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xb4>
   1000033dc:	14000001 	b	1000033e0 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x148>
   1000033e0:	9400027e 	bl	100003dd8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xe4>
   1000033e4:	f85d83a0 	ldur	x0, [x29, #-40]
   1000033e8:	a9477bfd 	ldp	x29, x30, [sp, #112]
   1000033ec:	a9464ff4 	ldp	x20, x19, [sp, #96]
   1000033f0:	a94557f6 	ldp	x22, x21, [sp, #80]
   1000033f4:	910203ff 	add	sp, sp, #0x80
   1000033f8:	d65f03c0 	ret
   1000033fc:	14000001 	b	100003400 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x168>
   100003400:	9100a3e0 	add	x0, sp, #0x28
   100003404:	94000260 	bl	100003d84 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x90>
   100003408:	17fffff7 	b	1000033e4 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x14c>
   10000340c:	f90013e0 	str	x0, [sp, #32]
   100003410:	b9001fe1 	str	w1, [sp, #28]
   100003414:	94000271 	bl	100003dd8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xe4>
   100003418:	14000001 	b	10000341c <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x184>
   10000341c:	14000001 	b	100003420 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x188>
   100003420:	f94013e0 	ldr	x0, [sp, #32]
   100003424:	9400023d 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>
   100003428:	940000c9 	bl	10000374c <___clang_call_terminate>

000000010000342c <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc>:
   10000342c:	d10083ff 	sub	sp, sp, #0x20
   100003430:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003434:	910043fd 	add	x29, sp, #0x10
   100003438:	f90007e0 	str	x0, [sp, #8]
   10000343c:	f94007e0 	ldr	x0, [sp, #8]
   100003440:	9400022d 	bl	100003cf4 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc>
   100003444:	14000001 	b	100003448 <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc+0x1c>
   100003448:	a9417bfd 	ldp	x29, x30, [sp, #16]
   10000344c:	910083ff 	add	sp, sp, #0x20
   100003450:	d65f03c0 	ret
   100003454:	940000be 	bl	10000374c <___clang_call_terminate>

0000000100003458 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ue170006Ev>:
   100003458:	d10043ff 	sub	sp, sp, #0x10
   10000345c:	f90007e0 	str	x0, [sp, #8]
   100003460:	f94007e8 	ldr	x8, [sp, #8]
   100003464:	39400108 	ldrb	w8, [x8]
   100003468:	12000100 	and	w0, w8, #0x1
   10000346c:	910043ff 	add	sp, sp, #0x10
   100003470:	d65f03c0 	ret

0000000100003474 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
   100003474:	d10283ff 	sub	sp, sp, #0xa0
   100003478:	a9084ff4 	stp	x20, x19, [sp, #128]
   10000347c:	a9097bfd 	stp	x29, x30, [sp, #144]
   100003480:	910243fd 	add	x29, sp, #0x90
   100003484:	f81e03a0 	stur	x0, [x29, #-32]
   100003488:	f81d83a1 	stur	x1, [x29, #-40]
   10000348c:	f81d03a2 	stur	x2, [x29, #-48]
   100003490:	f81c83a3 	stur	x3, [x29, #-56]
   100003494:	f81c03a4 	stur	x4, [x29, #-64]
   100003498:	381bf3a5 	sturb	w5, [x29, #-65]
   10000349c:	f85e03a8 	ldur	x8, [x29, #-32]
   1000034a0:	b5000088 	cbnz	x8, 1000034b0 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
   1000034a4:	f85e03a8 	ldur	x8, [x29, #-32]
   1000034a8:	f81e83a8 	stur	x8, [x29, #-24]
   1000034ac:	14000062 	b	100003634 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1c0>
   1000034b0:	f85c83a8 	ldur	x8, [x29, #-56]
   1000034b4:	f85d83a9 	ldur	x9, [x29, #-40]
   1000034b8:	cb090108 	sub	x8, x8, x9
   1000034bc:	f90023e8 	str	x8, [sp, #64]
   1000034c0:	f85c03a0 	ldur	x0, [x29, #-64]
   1000034c4:	940000a6 	bl	10000375c <__ZNKSt3__18ios_base5widthB8ue170006Ev>
   1000034c8:	f9001fe0 	str	x0, [sp, #56]
   1000034cc:	f9401fe8 	ldr	x8, [sp, #56]
   1000034d0:	f94023e9 	ldr	x9, [sp, #64]
   1000034d4:	eb09011f 	cmp	x8, x9
   1000034d8:	540000cd 	b.le	1000034f0 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x7c>
   1000034dc:	f94023e8 	ldr	x8, [sp, #64]
   1000034e0:	f9401fe9 	ldr	x9, [sp, #56]
   1000034e4:	cb080128 	sub	x8, x9, x8
   1000034e8:	f9001fe8 	str	x8, [sp, #56]
   1000034ec:	14000002 	b	1000034f4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
   1000034f0:	f9001fff 	str	xzr, [sp, #56]
   1000034f4:	f85d03a8 	ldur	x8, [x29, #-48]
   1000034f8:	f85d83a9 	ldur	x9, [x29, #-40]
   1000034fc:	cb090108 	sub	x8, x8, x9
   100003500:	f9001be8 	str	x8, [sp, #48]
   100003504:	f9401be8 	ldr	x8, [sp, #48]
   100003508:	f100011f 	cmp	x8, #0x0
   10000350c:	540001ad 	b.le	100003540 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcc>
   100003510:	f85e03a0 	ldur	x0, [x29, #-32]
   100003514:	f85d83a1 	ldur	x1, [x29, #-40]
   100003518:	f9401be2 	ldr	x2, [sp, #48]
   10000351c:	94000096 	bl	100003774 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   100003520:	f9401be8 	ldr	x8, [sp, #48]
   100003524:	eb08001f 	cmp	x0, x8
   100003528:	540000a0 	b.eq	10000353c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>  // b.none
   10000352c:	f81e03bf 	stur	xzr, [x29, #-32]
   100003530:	f85e03a8 	ldur	x8, [x29, #-32]
   100003534:	f81e83a8 	stur	x8, [x29, #-24]
   100003538:	1400003f 	b	100003634 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1c0>
   10000353c:	14000001 	b	100003540 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcc>
   100003540:	f9401fe8 	ldr	x8, [sp, #56]
   100003544:	f100011f 	cmp	x8, #0x0
   100003548:	5400046d 	b.le	1000035d4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x160>
   10000354c:	f9401fe1 	ldr	x1, [sp, #56]
   100003550:	38dbf3a2 	ldursb	w2, [x29, #-65]
   100003554:	910063e0 	add	x0, sp, #0x18
   100003558:	94000096 	bl	1000037b0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006Emc>
   10000355c:	f85e03b3 	ldur	x19, [x29, #-32]
   100003560:	910063e0 	add	x0, sp, #0x18
   100003564:	940000a5 	bl	1000037f8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ue170006Ev>
   100003568:	aa0003e1 	mov	x1, x0
   10000356c:	f9401fe2 	ldr	x2, [sp, #56]
   100003570:	aa1303e0 	mov	x0, x19
   100003574:	94000080 	bl	100003774 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   100003578:	14000001 	b	10000357c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x108>
   10000357c:	f9401fe8 	ldr	x8, [sp, #56]
   100003580:	eb08001f 	cmp	x0, x8
   100003584:	54000180 	b.eq	1000035b4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x140>  // b.none
   100003588:	f81e03bf 	stur	xzr, [x29, #-32]
   10000358c:	f85e03a8 	ldur	x8, [x29, #-32]
   100003590:	f81e83a8 	stur	x8, [x29, #-24]
   100003594:	52800028 	mov	w8, #0x1                   	// #1
   100003598:	b9000be8 	str	w8, [sp, #8]
   10000359c:	14000007 	b	1000035b8 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x144>
   1000035a0:	f9000be0 	str	x0, [sp, #16]
   1000035a4:	b9000fe1 	str	w1, [sp, #12]
   1000035a8:	910063e0 	add	x0, sp, #0x18
   1000035ac:	940001e7 	bl	100003d48 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x54>
   1000035b0:	14000026 	b	100003648 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d4>
   1000035b4:	b9000bff 	str	wzr, [sp, #8]
   1000035b8:	910063e0 	add	x0, sp, #0x18
   1000035bc:	940001e3 	bl	100003d48 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x54>
   1000035c0:	b9400be8 	ldr	w8, [sp, #8]
   1000035c4:	34000068 	cbz	w8, 1000035d0 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x15c>
   1000035c8:	14000001 	b	1000035cc <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
   1000035cc:	1400001a 	b	100003634 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1c0>
   1000035d0:	14000001 	b	1000035d4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x160>
   1000035d4:	f85c83a8 	ldur	x8, [x29, #-56]
   1000035d8:	f85d03a9 	ldur	x9, [x29, #-48]
   1000035dc:	cb090108 	sub	x8, x8, x9
   1000035e0:	f9001be8 	str	x8, [sp, #48]
   1000035e4:	f9401be8 	ldr	x8, [sp, #48]
   1000035e8:	f100011f 	cmp	x8, #0x0
   1000035ec:	540001ad 	b.le	100003620 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1ac>
   1000035f0:	f85e03a0 	ldur	x0, [x29, #-32]
   1000035f4:	f85d03a1 	ldur	x1, [x29, #-48]
   1000035f8:	f9401be2 	ldr	x2, [sp, #48]
   1000035fc:	9400005e 	bl	100003774 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   100003600:	f9401be8 	ldr	x8, [sp, #48]
   100003604:	eb08001f 	cmp	x0, x8
   100003608:	540000a0 	b.eq	10000361c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1a8>  // b.none
   10000360c:	f81e03bf 	stur	xzr, [x29, #-32]
   100003610:	f85e03a8 	ldur	x8, [x29, #-32]
   100003614:	f81e83a8 	stur	x8, [x29, #-24]
   100003618:	14000007 	b	100003634 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1c0>
   10000361c:	14000001 	b	100003620 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1ac>
   100003620:	f85c03a0 	ldur	x0, [x29, #-64]
   100003624:	d2800001 	mov	x1, #0x0                   	// #0
   100003628:	9400007e 	bl	100003820 <__ZNSt3__18ios_base5widthB8ue170006El>
   10000362c:	f85e03a8 	ldur	x8, [x29, #-32]
   100003630:	f81e83a8 	stur	x8, [x29, #-24]
   100003634:	f85e83a0 	ldur	x0, [x29, #-24]
   100003638:	a9497bfd 	ldp	x29, x30, [sp, #144]
   10000363c:	a9484ff4 	ldp	x20, x19, [sp, #128]
   100003640:	910283ff 	add	sp, sp, #0xa0
   100003644:	d65f03c0 	ret
   100003648:	f9400be0 	ldr	x0, [sp, #16]
   10000364c:	940001b3 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>

0000000100003650 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ue170006ERNS_13basic_ostreamIcS2_EE>:
   100003650:	d100c3ff 	sub	sp, sp, #0x30
   100003654:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003658:	a9027bfd 	stp	x29, x30, [sp, #32]
   10000365c:	910083fd 	add	x29, sp, #0x20
   100003660:	f90007e0 	str	x0, [sp, #8]
   100003664:	f90003e1 	str	x1, [sp]
   100003668:	f94007f3 	ldr	x19, [sp, #8]
   10000366c:	f94003e1 	ldr	x1, [sp]
   100003670:	aa1303e0 	mov	x0, x19
   100003674:	9400012d 	bl	100003b28 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE>
   100003678:	aa1303e0 	mov	x0, x19
   10000367c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003680:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003684:	9100c3ff 	add	sp, sp, #0x30
   100003688:	d65f03c0 	ret

000000010000368c <__ZNKSt3__18ios_base5flagsB8ue170006Ev>:
   10000368c:	d10043ff 	sub	sp, sp, #0x10
   100003690:	f90007e0 	str	x0, [sp, #8]
   100003694:	f94007e8 	ldr	x8, [sp, #8]
   100003698:	b9400900 	ldr	w0, [x8, #8]
   10000369c:	910043ff 	add	sp, sp, #0x10
   1000036a0:	d65f03c0 	ret

00000001000036a4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev>:
   1000036a4:	d100c3ff 	sub	sp, sp, #0x30
   1000036a8:	a9014ff4 	stp	x20, x19, [sp, #16]
   1000036ac:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000036b0:	910083fd 	add	x29, sp, #0x20
   1000036b4:	f90007e0 	str	x0, [sp, #8]
   1000036b8:	f94007f3 	ldr	x19, [sp, #8]
   1000036bc:	94000148 	bl	100003bdc <__ZNSt3__111char_traitsIcE3eofB8ue170006Ev>
   1000036c0:	b9409261 	ldr	w1, [x19, #144]
   1000036c4:	9400013c 	bl	100003bb4 <__ZNSt3__111char_traitsIcE11eq_int_typeB8ue170006Eii>
   1000036c8:	360000e0 	tbz	w0, #0, 1000036e4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev+0x40>
   1000036cc:	52800408 	mov	w8, #0x20                  	// #32
   1000036d0:	aa1303e0 	mov	x0, x19
   1000036d4:	13001d01 	sxtb	w1, w8
   1000036d8:	94000143 	bl	100003be4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>
   1000036dc:	13001c08 	sxtb	w8, w0
   1000036e0:	b9009268 	str	w8, [x19, #144]
   1000036e4:	b9409268 	ldr	w8, [x19, #144]
   1000036e8:	13001d00 	sxtb	w0, w8
   1000036ec:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000036f0:	a9414ff4 	ldp	x20, x19, [sp, #16]
   1000036f4:	9100c3ff 	add	sp, sp, #0x30
   1000036f8:	d65f03c0 	ret

00000001000036fc <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ue170006Ev>:
   1000036fc:	d10043ff 	sub	sp, sp, #0x10
   100003700:	f90007e0 	str	x0, [sp, #8]
   100003704:	f94007e8 	ldr	x8, [sp, #8]
   100003708:	f9400108 	ldr	x8, [x8]
   10000370c:	f100011f 	cmp	x8, #0x0
   100003710:	1a9f17e8 	cset	w8, eq  // eq = none
   100003714:	12000100 	and	w0, w8, #0x1
   100003718:	910043ff 	add	sp, sp, #0x10
   10000371c:	d65f03c0 	ret

0000000100003720 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ue170006Ej>:
   100003720:	d10083ff 	sub	sp, sp, #0x20
   100003724:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003728:	910043fd 	add	x29, sp, #0x10
   10000372c:	f90007e0 	str	x0, [sp, #8]
   100003730:	b90007e1 	str	w1, [sp, #4]
   100003734:	f94007e0 	ldr	x0, [sp, #8]
   100003738:	b94007e1 	ldr	w1, [sp, #4]
   10000373c:	94000161 	bl	100003cc0 <__ZNSt3__18ios_base8setstateB8ue170006Ej>
   100003740:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003744:	910083ff 	add	sp, sp, #0x20
   100003748:	d65f03c0 	ret

000000010000374c <___clang_call_terminate>:
   10000374c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   100003750:	910003fd 	mov	x29, sp
   100003754:	9400019e 	bl	100003dcc <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xd8>
   100003758:	9400019a 	bl	100003dc0 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xcc>

000000010000375c <__ZNKSt3__18ios_base5widthB8ue170006Ev>:
   10000375c:	d10043ff 	sub	sp, sp, #0x10
   100003760:	f90007e0 	str	x0, [sp, #8]
   100003764:	f94007e8 	ldr	x8, [sp, #8]
   100003768:	f9400d00 	ldr	x0, [x8, #24]
   10000376c:	910043ff 	add	sp, sp, #0x10
   100003770:	d65f03c0 	ret

0000000100003774 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>:
   100003774:	d100c3ff 	sub	sp, sp, #0x30
   100003778:	a9027bfd 	stp	x29, x30, [sp, #32]
   10000377c:	910083fd 	add	x29, sp, #0x20
   100003780:	f81f83a0 	stur	x0, [x29, #-8]
   100003784:	f9000be1 	str	x1, [sp, #16]
   100003788:	f90007e2 	str	x2, [sp, #8]
   10000378c:	f85f83a0 	ldur	x0, [x29, #-8]
   100003790:	f9400be1 	ldr	x1, [sp, #16]
   100003794:	f94007e2 	ldr	x2, [sp, #8]
   100003798:	f9400008 	ldr	x8, [x0]
   10000379c:	f9403108 	ldr	x8, [x8, #96]
   1000037a0:	d63f0100 	blr	x8
   1000037a4:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000037a8:	9100c3ff 	add	sp, sp, #0x30
   1000037ac:	d65f03c0 	ret

00000001000037b0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006Emc>:
   1000037b0:	d10103ff 	sub	sp, sp, #0x40
   1000037b4:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000037b8:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000037bc:	9100c3fd 	add	x29, sp, #0x30
   1000037c0:	f9000fe0 	str	x0, [sp, #24]
   1000037c4:	f9000be1 	str	x1, [sp, #16]
   1000037c8:	39003fe2 	strb	w2, [sp, #15]
   1000037cc:	f9400ff3 	ldr	x19, [sp, #24]
   1000037d0:	f9400be1 	ldr	x1, [sp, #16]
   1000037d4:	39403fe8 	ldrb	w8, [sp, #15]
   1000037d8:	aa1303e0 	mov	x0, x19
   1000037dc:	13001d02 	sxtb	w2, w8
   1000037e0:	9400001b 	bl	10000384c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006Emc>
   1000037e4:	aa1303e0 	mov	x0, x19
   1000037e8:	a9437bfd 	ldp	x29, x30, [sp, #48]
   1000037ec:	a9424ff4 	ldp	x20, x19, [sp, #32]
   1000037f0:	910103ff 	add	sp, sp, #0x40
   1000037f4:	d65f03c0 	ret

00000001000037f8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ue170006Ev>:
   1000037f8:	d10083ff 	sub	sp, sp, #0x20
   1000037fc:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003800:	910043fd 	add	x29, sp, #0x10
   100003804:	f90007e0 	str	x0, [sp, #8]
   100003808:	f94007e0 	ldr	x0, [sp, #8]
   10000380c:	94000071 	bl	1000039d0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev>
   100003810:	9400006b 	bl	1000039bc <__ZNSt3__112__to_addressB8ue170006IcEEPT_S2_>
   100003814:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003818:	910083ff 	add	sp, sp, #0x20
   10000381c:	d65f03c0 	ret

0000000100003820 <__ZNSt3__18ios_base5widthB8ue170006El>:
   100003820:	d10083ff 	sub	sp, sp, #0x20
   100003824:	f9000fe0 	str	x0, [sp, #24]
   100003828:	f9000be1 	str	x1, [sp, #16]
   10000382c:	f9400fe8 	ldr	x8, [sp, #24]
   100003830:	f9400d09 	ldr	x9, [x8, #24]
   100003834:	f90007e9 	str	x9, [sp, #8]
   100003838:	f9400be9 	ldr	x9, [sp, #16]
   10000383c:	f9000d09 	str	x9, [x8, #24]
   100003840:	f94007e0 	ldr	x0, [sp, #8]
   100003844:	910083ff 	add	sp, sp, #0x20
   100003848:	d65f03c0 	ret

000000010000384c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006Emc>:
   10000384c:	d10103ff 	sub	sp, sp, #0x40
   100003850:	a9024ff4 	stp	x20, x19, [sp, #32]
   100003854:	a9037bfd 	stp	x29, x30, [sp, #48]
   100003858:	9100c3fd 	add	x29, sp, #0x30
   10000385c:	f9000fe0 	str	x0, [sp, #24]
   100003860:	f9000be1 	str	x1, [sp, #16]
   100003864:	39003fe2 	strb	w2, [sp, #15]
   100003868:	f9400ff3 	ldr	x19, [sp, #24]
   10000386c:	aa1303e0 	mov	x0, x19
   100003870:	91003be1 	add	x1, sp, #0xe
   100003874:	910037e2 	add	x2, sp, #0xd
   100003878:	9400000b 	bl	1000038a4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>
   10000387c:	f9400be1 	ldr	x1, [sp, #16]
   100003880:	39403fe8 	ldrb	w8, [sp, #15]
   100003884:	aa1303e0 	mov	x0, x19
   100003888:	13001d02 	sxtb	w2, w8
   10000388c:	9400012c 	bl	100003d3c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x48>
   100003890:	aa1303e0 	mov	x0, x19
   100003894:	a9437bfd 	ldp	x29, x30, [sp, #48]
   100003898:	a9424ff4 	ldp	x20, x19, [sp, #32]
   10000389c:	910103ff 	add	sp, sp, #0x40
   1000038a0:	d65f03c0 	ret

00000001000038a4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>:
   1000038a4:	d10103ff 	sub	sp, sp, #0x40
   1000038a8:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000038ac:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000038b0:	9100c3fd 	add	x29, sp, #0x30
   1000038b4:	f9000fe0 	str	x0, [sp, #24]
   1000038b8:	f9000be1 	str	x1, [sp, #16]
   1000038bc:	f90007e2 	str	x2, [sp, #8]
   1000038c0:	f9400ff3 	ldr	x19, [sp, #24]
   1000038c4:	f9400be1 	ldr	x1, [sp, #16]
   1000038c8:	f94007e2 	ldr	x2, [sp, #8]
   1000038cc:	aa1303e0 	mov	x0, x19
   1000038d0:	94000006 	bl	1000038e8 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>
   1000038d4:	aa1303e0 	mov	x0, x19
   1000038d8:	a9437bfd 	ldp	x29, x30, [sp, #48]
   1000038dc:	a9424ff4 	ldp	x20, x19, [sp, #32]
   1000038e0:	910103ff 	add	sp, sp, #0x40
   1000038e4:	d65f03c0 	ret

00000001000038e8 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>:
   1000038e8:	d10103ff 	sub	sp, sp, #0x40
   1000038ec:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000038f0:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000038f4:	9100c3fd 	add	x29, sp, #0x30
   1000038f8:	f9000fe0 	str	x0, [sp, #24]
   1000038fc:	f9000be1 	str	x1, [sp, #16]
   100003900:	f90007e2 	str	x2, [sp, #8]
   100003904:	f9400ff3 	ldr	x19, [sp, #24]
   100003908:	aa1303e0 	mov	x0, x19
   10000390c:	94000008 	bl	10000392c <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE>
   100003910:	aa1303e0 	mov	x0, x19
   100003914:	9400000b 	bl	100003940 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE>
   100003918:	aa1303e0 	mov	x0, x19
   10000391c:	a9437bfd 	ldp	x29, x30, [sp, #48]
   100003920:	a9424ff4 	ldp	x20, x19, [sp, #32]
   100003924:	910103ff 	add	sp, sp, #0x40
   100003928:	d65f03c0 	ret

000000010000392c <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE>:
   10000392c:	d10043ff 	sub	sp, sp, #0x10
   100003930:	f90003e0 	str	x0, [sp]
   100003934:	f94003e0 	ldr	x0, [sp]
   100003938:	910043ff 	add	sp, sp, #0x10
   10000393c:	d65f03c0 	ret

0000000100003940 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE>:
   100003940:	d100c3ff 	sub	sp, sp, #0x30
   100003944:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003948:	a9027bfd 	stp	x29, x30, [sp, #32]
   10000394c:	910083fd 	add	x29, sp, #0x20
   100003950:	f90003e0 	str	x0, [sp]
   100003954:	f94003f3 	ldr	x19, [sp]
   100003958:	aa1303e0 	mov	x0, x19
   10000395c:	94000006 	bl	100003974 <__ZNSt3__19allocatorIcEC2B8ue170006Ev>
   100003960:	aa1303e0 	mov	x0, x19
   100003964:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003968:	a9414ff4 	ldp	x20, x19, [sp, #16]
   10000396c:	9100c3ff 	add	sp, sp, #0x30
   100003970:	d65f03c0 	ret

0000000100003974 <__ZNSt3__19allocatorIcEC2B8ue170006Ev>:
   100003974:	d100c3ff 	sub	sp, sp, #0x30
   100003978:	a9014ff4 	stp	x20, x19, [sp, #16]
   10000397c:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003980:	910083fd 	add	x29, sp, #0x20
   100003984:	f90007e0 	str	x0, [sp, #8]
   100003988:	f94007f3 	ldr	x19, [sp, #8]
   10000398c:	aa1303e0 	mov	x0, x19
   100003990:	94000006 	bl	1000039a8 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev>
   100003994:	aa1303e0 	mov	x0, x19
   100003998:	a9427bfd 	ldp	x29, x30, [sp, #32]
   10000399c:	a9414ff4 	ldp	x20, x19, [sp, #16]
   1000039a0:	9100c3ff 	add	sp, sp, #0x30
   1000039a4:	d65f03c0 	ret

00000001000039a8 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev>:
   1000039a8:	d10043ff 	sub	sp, sp, #0x10
   1000039ac:	f90007e0 	str	x0, [sp, #8]
   1000039b0:	f94007e0 	ldr	x0, [sp, #8]
   1000039b4:	910043ff 	add	sp, sp, #0x10
   1000039b8:	d65f03c0 	ret

00000001000039bc <__ZNSt3__112__to_addressB8ue170006IcEEPT_S2_>:
   1000039bc:	d10043ff 	sub	sp, sp, #0x10
   1000039c0:	f90007e0 	str	x0, [sp, #8]
   1000039c4:	f94007e0 	ldr	x0, [sp, #8]
   1000039c8:	910043ff 	add	sp, sp, #0x10
   1000039cc:	d65f03c0 	ret

00000001000039d0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev>:
   1000039d0:	d100c3ff 	sub	sp, sp, #0x30
   1000039d4:	a9014ff4 	stp	x20, x19, [sp, #16]
   1000039d8:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000039dc:	910083fd 	add	x29, sp, #0x20
   1000039e0:	f90007e0 	str	x0, [sp, #8]
   1000039e4:	f94007f3 	ldr	x19, [sp, #8]
   1000039e8:	aa1303e0 	mov	x0, x19
   1000039ec:	9400000b 	bl	100003a18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ue170006Ev>
   1000039f0:	36000080 	tbz	w0, #0, 100003a00 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev+0x30>
   1000039f4:	aa1303e0 	mov	x0, x19
   1000039f8:	94000017 	bl	100003a54 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ue170006Ev>
   1000039fc:	14000003 	b	100003a08 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev+0x38>
   100003a00:	aa1303e0 	mov	x0, x19
   100003a04:	9400001e 	bl	100003a7c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ue170006Ev>
   100003a08:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003a0c:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003a10:	9100c3ff 	add	sp, sp, #0x30
   100003a14:	d65f03c0 	ret

0000000100003a18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ue170006Ev>:
   100003a18:	d10083ff 	sub	sp, sp, #0x20
   100003a1c:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a20:	910043fd 	add	x29, sp, #0x10
   100003a24:	f90007e0 	str	x0, [sp, #8]
   100003a28:	f94007e0 	ldr	x0, [sp, #8]
   100003a2c:	9400001e 	bl	100003aa4 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a30:	39405c08 	ldrb	w8, [x0, #23]
   100003a34:	53071d08 	ubfx	w8, w8, #7, #1
   100003a38:	13001d08 	sxtb	w8, w8
   100003a3c:	7100011f 	cmp	w8, #0x0
   100003a40:	1a9f07e8 	cset	w8, ne  // ne = any
   100003a44:	12000100 	and	w0, w8, #0x1
   100003a48:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a4c:	910083ff 	add	sp, sp, #0x20
   100003a50:	d65f03c0 	ret

0000000100003a54 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ue170006Ev>:
   100003a54:	d10083ff 	sub	sp, sp, #0x20
   100003a58:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a5c:	910043fd 	add	x29, sp, #0x10
   100003a60:	f90007e0 	str	x0, [sp, #8]
   100003a64:	f94007e0 	ldr	x0, [sp, #8]
   100003a68:	9400001d 	bl	100003adc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a6c:	f9400000 	ldr	x0, [x0]
   100003a70:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a74:	910083ff 	add	sp, sp, #0x20
   100003a78:	d65f03c0 	ret

0000000100003a7c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ue170006Ev>:
   100003a7c:	d10083ff 	sub	sp, sp, #0x20
   100003a80:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a84:	910043fd 	add	x29, sp, #0x10
   100003a88:	f90007e0 	str	x0, [sp, #8]
   100003a8c:	f94007e0 	ldr	x0, [sp, #8]
   100003a90:	94000013 	bl	100003adc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a94:	94000020 	bl	100003b14 <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ue170006ERc>
   100003a98:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a9c:	910083ff 	add	sp, sp, #0x20
   100003aa0:	d65f03c0 	ret

0000000100003aa4 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>:
   100003aa4:	d10083ff 	sub	sp, sp, #0x20
   100003aa8:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003aac:	910043fd 	add	x29, sp, #0x10
   100003ab0:	f90007e0 	str	x0, [sp, #8]
   100003ab4:	f94007e0 	ldr	x0, [sp, #8]
   100003ab8:	94000004 	bl	100003ac8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>
   100003abc:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003ac0:	910083ff 	add	sp, sp, #0x20
   100003ac4:	d65f03c0 	ret

0000000100003ac8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>:
   100003ac8:	d10043ff 	sub	sp, sp, #0x10
   100003acc:	f90007e0 	str	x0, [sp, #8]
   100003ad0:	f94007e0 	ldr	x0, [sp, #8]
   100003ad4:	910043ff 	add	sp, sp, #0x10
   100003ad8:	d65f03c0 	ret

0000000100003adc <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>:
   100003adc:	d10083ff 	sub	sp, sp, #0x20
   100003ae0:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003ae4:	910043fd 	add	x29, sp, #0x10
   100003ae8:	f90007e0 	str	x0, [sp, #8]
   100003aec:	f94007e0 	ldr	x0, [sp, #8]
   100003af0:	94000004 	bl	100003b00 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>
   100003af4:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003af8:	910083ff 	add	sp, sp, #0x20
   100003afc:	d65f03c0 	ret

0000000100003b00 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>:
   100003b00:	d10043ff 	sub	sp, sp, #0x10
   100003b04:	f90007e0 	str	x0, [sp, #8]
   100003b08:	f94007e0 	ldr	x0, [sp, #8]
   100003b0c:	910043ff 	add	sp, sp, #0x10
   100003b10:	d65f03c0 	ret

0000000100003b14 <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ue170006ERc>:
   100003b14:	d10043ff 	sub	sp, sp, #0x10
   100003b18:	f90007e0 	str	x0, [sp, #8]
   100003b1c:	f94007e0 	ldr	x0, [sp, #8]
   100003b20:	910043ff 	add	sp, sp, #0x10
   100003b24:	d65f03c0 	ret

0000000100003b28 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE>:
   100003b28:	d100c3ff 	sub	sp, sp, #0x30
   100003b2c:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003b30:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003b34:	910083fd 	add	x29, sp, #0x20
   100003b38:	f90007e0 	str	x0, [sp, #8]
   100003b3c:	f90003e1 	str	x1, [sp]
   100003b40:	f94007f3 	ldr	x19, [sp, #8]
   100003b44:	f94003e8 	ldr	x8, [sp]
   100003b48:	f9400109 	ldr	x9, [x8]
   100003b4c:	f85e8129 	ldur	x9, [x9, #-24]
   100003b50:	8b090100 	add	x0, x8, x9
   100003b54:	94000009 	bl	100003b78 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ue170006Ev>
   100003b58:	14000001 	b	100003b5c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE+0x34>
   100003b5c:	f9000260 	str	x0, [x19]
   100003b60:	aa1303e0 	mov	x0, x19
   100003b64:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003b68:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003b6c:	9100c3ff 	add	sp, sp, #0x30
   100003b70:	d65f03c0 	ret
   100003b74:	97fffef6 	bl	10000374c <___clang_call_terminate>

0000000100003b78 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ue170006Ev>:
   100003b78:	d10083ff 	sub	sp, sp, #0x20
   100003b7c:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003b80:	910043fd 	add	x29, sp, #0x10
   100003b84:	f90007e0 	str	x0, [sp, #8]
   100003b88:	f94007e0 	ldr	x0, [sp, #8]
   100003b8c:	94000004 	bl	100003b9c <__ZNKSt3__18ios_base5rdbufB8ue170006Ev>
   100003b90:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003b94:	910083ff 	add	sp, sp, #0x20
   100003b98:	d65f03c0 	ret

0000000100003b9c <__ZNKSt3__18ios_base5rdbufB8ue170006Ev>:
   100003b9c:	d10043ff 	sub	sp, sp, #0x10
   100003ba0:	f90007e0 	str	x0, [sp, #8]
   100003ba4:	f94007e8 	ldr	x8, [sp, #8]
   100003ba8:	f9401500 	ldr	x0, [x8, #40]
   100003bac:	910043ff 	add	sp, sp, #0x10
   100003bb0:	d65f03c0 	ret

0000000100003bb4 <__ZNSt3__111char_traitsIcE11eq_int_typeB8ue170006Eii>:
   100003bb4:	d10043ff 	sub	sp, sp, #0x10
   100003bb8:	b9000fe0 	str	w0, [sp, #12]
   100003bbc:	b9000be1 	str	w1, [sp, #8]
   100003bc0:	b9400fe8 	ldr	w8, [sp, #12]
   100003bc4:	b9400be9 	ldr	w9, [sp, #8]
   100003bc8:	6b09011f 	cmp	w8, w9
   100003bcc:	1a9f17e8 	cset	w8, eq  // eq = none
   100003bd0:	12000100 	and	w0, w8, #0x1
   100003bd4:	910043ff 	add	sp, sp, #0x10
   100003bd8:	d65f03c0 	ret

0000000100003bdc <__ZNSt3__111char_traitsIcE3eofB8ue170006Ev>:
   100003bdc:	12800000 	mov	w0, #0xffffffff            	// #-1
   100003be0:	d65f03c0 	ret

0000000100003be4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>:
   100003be4:	d10143ff 	sub	sp, sp, #0x50
   100003be8:	a9034ff4 	stp	x20, x19, [sp, #48]
   100003bec:	a9047bfd 	stp	x29, x30, [sp, #64]
   100003bf0:	910103fd 	add	x29, sp, #0x40
   100003bf4:	f81e83a0 	stur	x0, [x29, #-24]
   100003bf8:	381e73a1 	sturb	w1, [x29, #-25]
   100003bfc:	f85e83a0 	ldur	x0, [x29, #-24]
   100003c00:	910063e8 	add	x8, sp, #0x18
   100003c04:	9400004b 	bl	100003d30 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x3c>
   100003c08:	910063e0 	add	x0, sp, #0x18
   100003c0c:	94000013 	bl	100003c58 <__ZNSt3__19use_facetB8ue170006INS_5ctypeIcEEEERKT_RKNS_6localeE>
   100003c10:	14000001 	b	100003c14 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec+0x30>
   100003c14:	38de73a1 	ldursb	w1, [x29, #-25]
   100003c18:	9400001b 	bl	100003c84 <__ZNKSt3__15ctypeIcE5widenB8ue170006Ec>
   100003c1c:	aa0003f3 	mov	x19, x0
   100003c20:	14000001 	b	100003c24 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec+0x40>
   100003c24:	910063e0 	add	x0, sp, #0x18
   100003c28:	9400005d 	bl	100003d9c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xa8>
   100003c2c:	13001e60 	sxtb	w0, w19
   100003c30:	a9447bfd 	ldp	x29, x30, [sp, #64]
   100003c34:	a9434ff4 	ldp	x20, x19, [sp, #48]
   100003c38:	910143ff 	add	sp, sp, #0x50
   100003c3c:	d65f03c0 	ret
   100003c40:	f9000be0 	str	x0, [sp, #16]
   100003c44:	b9000fe1 	str	w1, [sp, #12]
   100003c48:	910063e0 	add	x0, sp, #0x18
   100003c4c:	94000054 	bl	100003d9c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xa8>
   100003c50:	f9400be0 	ldr	x0, [sp, #16]
   100003c54:	94000031 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>

0000000100003c58 <__ZNSt3__19use_facetB8ue170006INS_5ctypeIcEEEERKT_RKNS_6localeE>:
   100003c58:	d10083ff 	sub	sp, sp, #0x20
   100003c5c:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003c60:	910043fd 	add	x29, sp, #0x10
   100003c64:	f90007e0 	str	x0, [sp, #8]
   100003c68:	f94007e0 	ldr	x0, [sp, #8]
   100003c6c:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100003c70:	f9403501 	ldr	x1, [x8, #104]
   100003c74:	9400002c 	bl	100003d24 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x30>
   100003c78:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003c7c:	910083ff 	add	sp, sp, #0x20
   100003c80:	d65f03c0 	ret

0000000100003c84 <__ZNKSt3__15ctypeIcE5widenB8ue170006Ec>:
   100003c84:	d10083ff 	sub	sp, sp, #0x20
   100003c88:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003c8c:	910043fd 	add	x29, sp, #0x10
   100003c90:	f90007e0 	str	x0, [sp, #8]
   100003c94:	39001fe1 	strb	w1, [sp, #7]
   100003c98:	f94007e0 	ldr	x0, [sp, #8]
   100003c9c:	39401fe8 	ldrb	w8, [sp, #7]
   100003ca0:	f9400009 	ldr	x9, [x0]
   100003ca4:	f9401d29 	ldr	x9, [x9, #56]
   100003ca8:	13001d01 	sxtb	w1, w8
   100003cac:	d63f0120 	blr	x9
   100003cb0:	13001c00 	sxtb	w0, w0
   100003cb4:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003cb8:	910083ff 	add	sp, sp, #0x20
   100003cbc:	d65f03c0 	ret

0000000100003cc0 <__ZNSt3__18ios_base8setstateB8ue170006Ej>:
   100003cc0:	d10083ff 	sub	sp, sp, #0x20
   100003cc4:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003cc8:	910043fd 	add	x29, sp, #0x10
   100003ccc:	f90007e0 	str	x0, [sp, #8]
   100003cd0:	b90007e1 	str	w1, [sp, #4]
   100003cd4:	f94007e0 	ldr	x0, [sp, #8]
   100003cd8:	b9402008 	ldr	w8, [x0, #32]
   100003cdc:	b94007e9 	ldr	w9, [sp, #4]
   100003ce0:	2a090101 	orr	w1, w8, w9
   100003ce4:	94000034 	bl	100003db4 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xc0>
   100003ce8:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003cec:	910083ff 	add	sp, sp, #0x20
   100003cf0:	d65f03c0 	ret

0000000100003cf4 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc>:
   100003cf4:	d10083ff 	sub	sp, sp, #0x20
   100003cf8:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003cfc:	910043fd 	add	x29, sp, #0x10
   100003d00:	f90007e0 	str	x0, [sp, #8]
   100003d04:	f94007e0 	ldr	x0, [sp, #8]
   100003d08:	94000037 	bl	100003de4 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xf0>
   100003d0c:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003d10:	910083ff 	add	sp, sp, #0x20
   100003d14:	d65f03c0 	ret

Disassembly of section __TEXT.__stubs:

0000000100003d18 <__TEXT.__stubs>:
   100003d18:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d1c:	f9400210 	ldr	x16, [x16]
   100003d20:	d61f0200 	br	x16
   100003d24:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d28:	f9400610 	ldr	x16, [x16, #8]
   100003d2c:	d61f0200 	br	x16
   100003d30:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d34:	f9400a10 	ldr	x16, [x16, #16]
   100003d38:	d61f0200 	br	x16
   100003d3c:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d40:	f9400e10 	ldr	x16, [x16, #24]
   100003d44:	d61f0200 	br	x16
   100003d48:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d4c:	f9401210 	ldr	x16, [x16, #32]
   100003d50:	d61f0200 	br	x16
   100003d54:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d58:	f9401610 	ldr	x16, [x16, #40]
   100003d5c:	d61f0200 	br	x16
   100003d60:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d64:	f9401a10 	ldr	x16, [x16, #48]
   100003d68:	d61f0200 	br	x16
   100003d6c:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d70:	f9401e10 	ldr	x16, [x16, #56]
   100003d74:	d61f0200 	br	x16
   100003d78:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d7c:	f9402210 	ldr	x16, [x16, #64]
   100003d80:	d61f0200 	br	x16
   100003d84:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d88:	f9402610 	ldr	x16, [x16, #72]
   100003d8c:	d61f0200 	br	x16
   100003d90:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003d94:	f9402a10 	ldr	x16, [x16, #80]
   100003d98:	d61f0200 	br	x16
   100003d9c:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003da0:	f9403a10 	ldr	x16, [x16, #112]
   100003da4:	d61f0200 	br	x16
   100003da8:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003dac:	f9403e10 	ldr	x16, [x16, #120]
   100003db0:	d61f0200 	br	x16
   100003db4:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003db8:	f9404210 	ldr	x16, [x16, #128]
   100003dbc:	d61f0200 	br	x16
   100003dc0:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003dc4:	f9404610 	ldr	x16, [x16, #136]
   100003dc8:	d61f0200 	br	x16
   100003dcc:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003dd0:	f9404a10 	ldr	x16, [x16, #144]
   100003dd4:	d61f0200 	br	x16
   100003dd8:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003ddc:	f9404e10 	ldr	x16, [x16, #152]
   100003de0:	d61f0200 	br	x16
   100003de4:	b0000010 	adrp	x16, 100004000 <GCC_except_table51+0x1a4>
   100003de8:	f9405610 	ldr	x16, [x16, #168]
   100003dec:	d61f0200 	br	x16

Disassembly of section __TEXT.__gcc_except_tab:

0000000100003df0 <GCC_except_table14>:
   100003df0:	01319bff 	.inst	0x01319bff ; undefined
   100003df4:	8c082426 	.inst	0x8c082426 ; undefined
   100003df8:	d4300102 	.inst	0xd4300102 ; undefined
   100003dfc:	01029801 	.inst	0x01029801 ; undefined
   100003e00:	003c0284 	.inst	0x003c0284 ; NYI
   100003e04:	0402c000 	mad	z0.b, p0/m, z2.b, z0.b
   100003e08:	c40002f4 	ld1sb	{z20.d}, p0/z, [x23, z0.d, uxtw]
   100003e0c:	00003802 	udf	#14338
   100003e10:	900402fc 	adrp	x28, 10805f000 <GCC_except_table51+0x805b1a4>
   100003e14:	03800103 	.inst	0x03800103 ; undefined
   100003e18:	01000014 	.inst	0x01000014 ; undefined
	...

0000000100003e24 <GCC_except_table15>:
   100003e24:	010d9bff 	.inst	0x010d9bff ; undefined
   100003e28:	28041404 	stnp	w4, w5, [x0, #32]
   100003e2c:	00000101 	udf	#257
   100003e30:	00000000 	udf	#0

0000000100003e34 <GCC_except_table17>:
   100003e34:	1101ffff 	add	wsp, wsp, #0x7f
   100003e38:	0001fc00 	.inst	0x0001fc00 ; undefined
   100003e3c:	0801fc00 	stlxrb	w1, w0, [x0]
   100003e40:	840002ac 	ld1sb	{z12.s}, p0/z, [x21, z0.s, uxtw]
   100003e44:	0001d802 	.inst	0x0001d802 ; undefined
   100003e48:	00000000 	udf	#0

0000000100003e4c <GCC_except_table46>:
   100003e4c:	010d9bff 	.inst	0x010d9bff ; undefined
   100003e50:	4c042c04 	.inst	0x4c042c04 ; undefined
   100003e54:	00000101 	udf	#257
   100003e58:	00000000 	udf	#0

0000000100003e5c <GCC_except_table51>:
   100003e5c:	0c01ffff 	.inst	0x0c01ffff ; undefined
   100003e60:	00002400 	udf	#9216
   100003e64:	005c1824 	.inst	0x005c1824 ; undefined
   100003e68:	0000383c 	udf	#14396

Disassembly of section __TEXT.__unwind_info:

0000000100003ec8 <__TEXT.__unwind_info>:
   100003ec8:	00000001 	udf	#1
   100003ecc:	0000001c 	udf	#28
   100003ed0:	00000005 	udf	#5
   100003ed4:	00000030 	udf	#48
   100003ed8:	00000001 	udf	#1
   100003edc:	00000034 	udf	#52
   100003ee0:	00000002 	udf	#2
   100003ee4:	02001000 	.inst	0x02001000 ; undefined
   100003ee8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
   100003eec:	04000001 	add	z1.b, p0/m, z1.b, z0.b
   100003ef0:	54000001 	b.ne	100003ef0 <GCC_except_table51+0x94>  // b.any
   100003ef4:	02002000 	.inst	0x02002000 ; undefined
   100003ef8:	000040a0 	udf	#16544
   100003efc:	00002e6c 	udf	#11884
   100003f00:	00000080 	udf	#128
   100003f04:	00000058 	udf	#88
   100003f08:	00003d18 	udf	#15640
   100003f0c:	00000000 	udf	#0
   100003f10:	00000080 	udf	#128
	...
   100003f20:	00003298 	udf	#12952
   100003f24:	00003df0 	udf	#15856
   100003f28:	0000342c 	udf	#13356
   100003f2c:	00003e24 	udf	#15908
   100003f30:	00003474 	udf	#13428
   100003f34:	00003e34 	udf	#15924
   100003f38:	00003b28 	udf	#15144
   100003f3c:	00003e4c 	udf	#15948
   100003f40:	00003be4 	udf	#15332
   100003f44:	00003e5c 	udf	#15964
   100003f48:	00000003 	udf	#3
   100003f4c:	0027000c 	.inst	0x0027000c ; NYI
   100003f50:	000300a8 	.inst	0x000300a8 ; undefined
   100003f54:	00000000 	udf	#0
   100003f58:	02000020 	.inst	0x02000020 ; undefined
   100003f5c:	0100006c 	.inst	0x0100006c ; undefined
   100003f60:	000000c4 	udf	#196
   100003f64:	02000124 	.inst	0x02000124 ; undefined
   100003f68:	010002ec 	.inst	0x010002ec ; undefined
   100003f6c:	02000318 	.inst	0x02000318 ; undefined
   100003f70:	01000378 	.inst	0x01000378 ; undefined
   100003f74:	040003b8 	add	z24.b, p0/m, z24.b, z29.b
   100003f78:	010003ec 	.inst	0x010003ec ; undefined
   100003f7c:	0500042c 	orr	z12.h, z12.h, #0x3
   100003f80:	060005c0 	.inst	0x060005c0 ; undefined
   100003f84:	000005ec 	udf	#1516
   100003f88:	03000608 	.inst	0x03000608 ; undefined
   100003f8c:	020007e4 	.inst	0x020007e4 ; undefined
   100003f90:	00000820 	udf	#2080
   100003f94:	02000838 	.inst	0x02000838 ; undefined
   100003f98:	00000890 	udf	#2192
   100003f9c:	010008b4 	.inst	0x010008b4 ; undefined
   100003fa0:	000008f0 	udf	#2288
   100003fa4:	01000908 	.inst	0x01000908 ; undefined
   100003fa8:	02000944 	.inst	0x02000944 ; undefined
   100003fac:	0100098c 	.inst	0x0100098c ; undefined
   100003fb0:	040009b4 	add	z20.b, p2/m, z20.b, z13.b
   100003fb4:	020009e0 	.inst	0x020009e0 ; undefined
   100003fb8:	00000ac0 	udf	#2752
   100003fbc:	02000ad4 	.inst	0x02000ad4 ; undefined
   100003fc0:	00000b3c 	udf	#2876
   100003fc4:	02000b64 	.inst	0x02000b64 ; undefined
   100003fc8:	01000bac 	.inst	0x01000bac ; undefined
   100003fcc:	00000c5c 	udf	#3164
   100003fd0:	01000c70 	.inst	0x01000c70 ; undefined
   100003fd4:	00000c94 	udf	#3220
   100003fd8:	03000cbc 	.inst	0x03000cbc ; undefined
   100003fdc:	01000d0c 	.inst	0x01000d0c ; undefined
   100003fe0:	00000d30 	udf	#3376
   100003fe4:	07000d70 	.inst	0x07000d70 ; undefined
   100003fe8:	03000d78 	.inst	0x03000d78 ; undefined
   100003fec:	01000dec 	.inst	0x01000dec ; undefined
   100003ff0:	54000003 	b.cc	100003ff0 <GCC_except_table51+0x194>  // b.lo, b.ul, b.last
   100003ff4:	54000000 	b.eq	100003ff4 <GCC_except_table51+0x198>  // b.none
   100003ff8:	02000000 	.inst	0x02000000 ; undefined
   100003ffc:	00000000 	udf	#0
