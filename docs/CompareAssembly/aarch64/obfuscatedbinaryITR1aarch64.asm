
obfuscatedbinary:     file format mach-o-arm64


Disassembly of section .text:

0000000100002d6c <__Z3Addii>:
   100002d6c:	d10043ff 	sub	sp, sp, #0x10
   100002d70:	b9000fe0 	str	w0, [sp, #12]
   100002d74:	b9000be1 	str	w1, [sp, #8]
   100002d78:	b9400fe8 	ldr	w8, [sp, #12]
   100002d7c:	b9400be9 	ldr	w9, [sp, #8]
   100002d80:	0a09010a 	and	w10, w8, w9
   100002d84:	2a090108 	orr	w8, w8, w9
   100002d88:	0b080140 	add	w0, w10, w8
   100002d8c:	910043ff 	add	sp, sp, #0x10
   100002d90:	d65f03c0 	ret

0000000100002d94 <__Z8Subtractii>:
   100002d94:	d100c3ff 	sub	sp, sp, #0x30
   100002d98:	a9014ff4 	stp	x20, x19, [sp, #16]
   100002d9c:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002da0:	910083fd 	add	x29, sp, #0x20
   100002da4:	b9000fe0 	str	w0, [sp, #12]
   100002da8:	b9000be1 	str	w1, [sp, #8]
   100002dac:	910033e0 	add	x0, sp, #0xc
   100002db0:	910023e1 	add	x1, sp, #0x8
   100002db4:	94000011 	bl	100002df8 <__ZNSt3__13maxB8ue170006IiEERKT_S3_S3_>
   100002db8:	b9400013 	ldr	w19, [x0]
   100002dbc:	910033e0 	add	x0, sp, #0xc
   100002dc0:	910023e1 	add	x1, sp, #0x8
   100002dc4:	94000018 	bl	100002e24 <__ZNSt3__13minB8ue170006IiEERKT_S3_S3_>
   100002dc8:	b9400008 	ldr	w8, [x0]
   100002dcc:	5281e409 	mov	w9, #0xf20                 	// #3872
   100002dd0:	72a749a9 	movk	w9, #0x3a4d, lsl #16
   100002dd4:	0b090269 	add	w9, w19, w9
   100002dd8:	4b080128 	sub	w8, w9, w8
   100002ddc:	5281e409 	mov	w9, #0xf20                 	// #3872
   100002de0:	72a749a9 	movk	w9, #0x3a4d, lsl #16
   100002de4:	4b090100 	sub	w0, w8, w9
   100002de8:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002dec:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100002df0:	9100c3ff 	add	sp, sp, #0x30
   100002df4:	d65f03c0 	ret

0000000100002df8 <__ZNSt3__13maxB8ue170006IiEERKT_S3_S3_>:
   100002df8:	d100c3ff 	sub	sp, sp, #0x30
   100002dfc:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002e00:	910083fd 	add	x29, sp, #0x20
   100002e04:	f81f83a0 	stur	x0, [x29, #-8]
   100002e08:	f9000be1 	str	x1, [sp, #16]
   100002e0c:	f85f83a0 	ldur	x0, [x29, #-8]
   100002e10:	f9400be1 	ldr	x1, [sp, #16]
   100002e14:	940000c7 	bl	100003130 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>
   100002e18:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002e1c:	9100c3ff 	add	sp, sp, #0x30
   100002e20:	d65f03c0 	ret

0000000100002e24 <__ZNSt3__13minB8ue170006IiEERKT_S3_S3_>:
   100002e24:	d100c3ff 	sub	sp, sp, #0x30
   100002e28:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002e2c:	910083fd 	add	x29, sp, #0x20
   100002e30:	f81f83a0 	stur	x0, [x29, #-8]
   100002e34:	f9000be1 	str	x1, [sp, #16]
   100002e38:	f85f83a0 	ldur	x0, [x29, #-8]
   100002e3c:	f9400be1 	ldr	x1, [sp, #16]
   100002e40:	940000d9 	bl	1000031a4 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>
   100002e44:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100002e48:	9100c3ff 	add	sp, sp, #0x30
   100002e4c:	d65f03c0 	ret

0000000100002e50 <__Z9binaryANDii>:
   100002e50:	d10043ff 	sub	sp, sp, #0x10
   100002e54:	b9000fe0 	str	w0, [sp, #12]
   100002e58:	b9000be1 	str	w1, [sp, #8]
   100002e5c:	b9400fe8 	ldr	w8, [sp, #12]
   100002e60:	b9400be9 	ldr	w9, [sp, #8]
   100002e64:	1280000a 	mov	w10, #0xffffffff            	// #-1
   100002e68:	4a0a0129 	eor	w9, w9, w10
   100002e6c:	4a090109 	eor	w9, w8, w9
   100002e70:	0a080120 	and	w0, w9, w8
   100002e74:	910043ff 	add	sp, sp, #0x10
   100002e78:	d65f03c0 	ret

0000000100002e7c <__Z8binaryORii>:
   100002e7c:	d10043ff 	sub	sp, sp, #0x10
   100002e80:	b9000fe0 	str	w0, [sp, #12]
   100002e84:	b9000be1 	str	w1, [sp, #8]
   100002e88:	b9400fe8 	ldr	w8, [sp, #12]
   100002e8c:	b9400be9 	ldr	w9, [sp, #8]
   100002e90:	0a09010a 	and	w10, w8, w9
   100002e94:	4a090108 	eor	w8, w8, w9
   100002e98:	2a080140 	orr	w0, w10, w8
   100002e9c:	910043ff 	add	sp, sp, #0x10
   100002ea0:	d65f03c0 	ret

0000000100002ea4 <__Z9binaryXORii>:
   100002ea4:	d10043ff 	sub	sp, sp, #0x10
   100002ea8:	b9000fe0 	str	w0, [sp, #12]
   100002eac:	b9000be1 	str	w1, [sp, #8]
   100002eb0:	b9400fe8 	ldr	w8, [sp, #12]
   100002eb4:	b9400be9 	ldr	w9, [sp, #8]
   100002eb8:	1280000a 	mov	w10, #0xffffffff            	// #-1
   100002ebc:	4a0a010a 	eor	w10, w8, w10
   100002ec0:	0a0a012a 	and	w10, w9, w10
   100002ec4:	1280000b 	mov	w11, #0xffffffff            	// #-1
   100002ec8:	4a0b0129 	eor	w9, w9, w11
   100002ecc:	0a090108 	and	w8, w8, w9
   100002ed0:	2a080140 	orr	w0, w10, w8
   100002ed4:	910043ff 	add	sp, sp, #0x10
   100002ed8:	d65f03c0 	ret

0000000100002edc <_main>:
   100002edc:	d100c3ff 	sub	sp, sp, #0x30
   100002ee0:	a9014ff4 	stp	x20, x19, [sp, #16]
   100002ee4:	a9027bfd 	stp	x29, x30, [sp, #32]
   100002ee8:	910083fd 	add	x29, sp, #0x20
   100002eec:	b9000fff 	str	wzr, [sp, #12]
   100002ef0:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002ef4:	f9403100 	ldr	x0, [x8, #96]
   100002ef8:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002efc:	9139b101 	add	x1, x8, #0xe6c
   100002f00:	94000057 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002f04:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002f08:	f9402d00 	ldr	x0, [x8, #88]
   100002f0c:	910023e1 	add	x1, sp, #0x8
   100002f10:	94000391 	bl	100003d54 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x60>
   100002f14:	910013e1 	add	x1, sp, #0x4
   100002f18:	9400038f 	bl	100003d54 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x60>
   100002f1c:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002f20:	f9403100 	ldr	x0, [x8, #96]
   100002f24:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002f28:	913a1d01 	add	x1, x8, #0xe87
   100002f2c:	9400004c 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002f30:	aa0003f3 	mov	x19, x0
   100002f34:	b9400be0 	ldr	w0, [sp, #8]
   100002f38:	b94007e1 	ldr	w1, [sp, #4]
   100002f3c:	97ffff8c 	bl	100002d6c <__Z3Addii>
   100002f40:	aa0003e1 	mov	x1, x0
   100002f44:	aa1303e0 	mov	x0, x19
   100002f48:	94000392 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100002f4c:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002f50:	91034101 	add	x1, x8, #0xd0
   100002f54:	94000054 	bl	1000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100002f58:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002f5c:	f9403100 	ldr	x0, [x8, #96]
   100002f60:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002f64:	913a4901 	add	x1, x8, #0xe92
   100002f68:	9400003d 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002f6c:	aa0003f3 	mov	x19, x0
   100002f70:	b9400be0 	ldr	w0, [sp, #8]
   100002f74:	b94007e1 	ldr	w1, [sp, #4]
   100002f78:	97ffff87 	bl	100002d94 <__Z8Subtractii>
   100002f7c:	aa0003e1 	mov	x1, x0
   100002f80:	aa1303e0 	mov	x0, x19
   100002f84:	94000383 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100002f88:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002f8c:	91034101 	add	x1, x8, #0xd0
   100002f90:	94000045 	bl	1000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100002f94:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002f98:	f9403100 	ldr	x0, [x8, #96]
   100002f9c:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002fa0:	913a8101 	add	x1, x8, #0xea0
   100002fa4:	9400002e 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002fa8:	aa0003f3 	mov	x19, x0
   100002fac:	b9400be0 	ldr	w0, [sp, #8]
   100002fb0:	b94007e1 	ldr	w1, [sp, #4]
   100002fb4:	97ffffa7 	bl	100002e50 <__Z9binaryANDii>
   100002fb8:	aa0003e1 	mov	x1, x0
   100002fbc:	aa1303e0 	mov	x0, x19
   100002fc0:	94000374 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100002fc4:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002fc8:	91034101 	add	x1, x8, #0xd0
   100002fcc:	94000036 	bl	1000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100002fd0:	d0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100002fd4:	f9403100 	ldr	x0, [x8, #96]
   100002fd8:	b0000008 	adrp	x8, 100003000 <_main+0x124>
   100002fdc:	913ab501 	add	x1, x8, #0xead
   100002fe0:	9400001f 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100002fe4:	aa0003f3 	mov	x19, x0
   100002fe8:	b9400be0 	ldr	w0, [sp, #8]
   100002fec:	b94007e1 	ldr	w1, [sp, #4]
   100002ff0:	97ffffa3 	bl	100002e7c <__Z8binaryORii>
   100002ff4:	aa0003e1 	mov	x1, x0
   100002ff8:	aa1303e0 	mov	x0, x19
   100002ffc:	94000365 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   100003000:	90000008 	adrp	x8, 100003000 <_main+0x124>
   100003004:	91034101 	add	x1, x8, #0xd0
   100003008:	94000027 	bl	1000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   10000300c:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100003010:	f9403100 	ldr	x0, [x8, #96]
   100003014:	90000008 	adrp	x8, 100003000 <_main+0x124>
   100003018:	913ae501 	add	x1, x8, #0xeb9
   10000301c:	94000010 	bl	10000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
   100003020:	aa0003f3 	mov	x19, x0
   100003024:	b9400be0 	ldr	w0, [sp, #8]
   100003028:	b94007e1 	ldr	w1, [sp, #4]
   10000302c:	97ffff9e 	bl	100002ea4 <__Z9binaryXORii>
   100003030:	aa0003e1 	mov	x1, x0
   100003034:	aa1303e0 	mov	x0, x19
   100003038:	94000356 	bl	100003d90 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x9c>
   10000303c:	90000008 	adrp	x8, 100003000 <_main+0x124>
   100003040:	91034101 	add	x1, x8, #0xd0
   100003044:	94000018 	bl	1000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>
   100003048:	52800000 	mov	w0, #0x0                   	// #0
   10000304c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003050:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003054:	9100c3ff 	add	sp, sp, #0x30
   100003058:	d65f03c0 	ret

000000010000305c <__ZNSt3__1lsB8ue170006INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
   10000305c:	d100c3ff 	sub	sp, sp, #0x30
   100003060:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003064:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003068:	910083fd 	add	x29, sp, #0x20
   10000306c:	f90007e0 	str	x0, [sp, #8]
   100003070:	f90003e1 	str	x1, [sp]
   100003074:	f94007f3 	ldr	x19, [sp, #8]
   100003078:	f94003f4 	ldr	x20, [sp]
   10000307c:	f94003e0 	ldr	x0, [sp]
   100003080:	940000c1 	bl	100003384 <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc>
   100003084:	aa0003e2 	mov	x2, x0
   100003088:	aa1303e0 	mov	x0, x19
   10000308c:	aa1403e1 	mov	x1, x20
   100003090:	94000055 	bl	1000031e4 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
   100003094:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003098:	a9414ff4 	ldp	x20, x19, [sp, #16]
   10000309c:	9100c3ff 	add	sp, sp, #0x30
   1000030a0:	d65f03c0 	ret

00000001000030a4 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ue170006EPFRS3_S4_E>:
   1000030a4:	d10083ff 	sub	sp, sp, #0x20
   1000030a8:	a9017bfd 	stp	x29, x30, [sp, #16]
   1000030ac:	910043fd 	add	x29, sp, #0x10
   1000030b0:	f90007e0 	str	x0, [sp, #8]
   1000030b4:	f90003e1 	str	x1, [sp]
   1000030b8:	f94007e0 	ldr	x0, [sp, #8]
   1000030bc:	f94003e8 	ldr	x8, [sp]
   1000030c0:	d63f0100 	blr	x8
   1000030c4:	a9417bfd 	ldp	x29, x30, [sp, #16]
   1000030c8:	910083ff 	add	sp, sp, #0x20
   1000030cc:	d65f03c0 	ret

00000001000030d0 <__ZNSt3__14endlB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_>:
   1000030d0:	d100c3ff 	sub	sp, sp, #0x30
   1000030d4:	a9014ff4 	stp	x20, x19, [sp, #16]
   1000030d8:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000030dc:	910083fd 	add	x29, sp, #0x20
   1000030e0:	f90007e0 	str	x0, [sp, #8]
   1000030e4:	f94007f3 	ldr	x19, [sp, #8]
   1000030e8:	f94007e8 	ldr	x8, [sp, #8]
   1000030ec:	f9400109 	ldr	x9, [x8]
   1000030f0:	f85e8129 	ldur	x9, [x9, #-24]
   1000030f4:	8b090100 	add	x0, x8, x9
   1000030f8:	52800148 	mov	w8, #0xa                   	// #10
   1000030fc:	13001d01 	sxtb	w1, w8
   100003100:	940002b7 	bl	100003bdc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>
   100003104:	aa0003e8 	mov	x8, x0
   100003108:	aa1303e0 	mov	x0, x19
   10000310c:	13001d01 	sxtb	w1, w8
   100003110:	94000314 	bl	100003d60 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x6c>
   100003114:	f94007e0 	ldr	x0, [sp, #8]
   100003118:	94000315 	bl	100003d6c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x78>
   10000311c:	f94007e0 	ldr	x0, [sp, #8]
   100003120:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003124:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003128:	9100c3ff 	add	sp, sp, #0x30
   10000312c:	d65f03c0 	ret

0000000100003130 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>:
   100003130:	d100c3ff 	sub	sp, sp, #0x30
   100003134:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003138:	910083fd 	add	x29, sp, #0x20
   10000313c:	f9000be0 	str	x0, [sp, #16]
   100003140:	f90007e1 	str	x1, [sp, #8]
   100003144:	f9400be1 	ldr	x1, [sp, #16]
   100003148:	f94007e2 	ldr	x2, [sp, #8]
   10000314c:	d10007a0 	sub	x0, x29, #0x1
   100003150:	94000008 	bl	100003170 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>
   100003154:	36000060 	tbz	w0, #0, 100003160 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x30>
   100003158:	f94007e0 	ldr	x0, [sp, #8]
   10000315c:	14000002 	b	100003164 <__ZNSt3__13maxB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x34>
   100003160:	f9400be0 	ldr	x0, [sp, #16]
   100003164:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003168:	9100c3ff 	add	sp, sp, #0x30
   10000316c:	d65f03c0 	ret

0000000100003170 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>:
   100003170:	d10083ff 	sub	sp, sp, #0x20
   100003174:	f9000fe0 	str	x0, [sp, #24]
   100003178:	f9000be1 	str	x1, [sp, #16]
   10000317c:	f90007e2 	str	x2, [sp, #8]
   100003180:	f9400be8 	ldr	x8, [sp, #16]
   100003184:	b9400108 	ldr	w8, [x8]
   100003188:	f94007e9 	ldr	x9, [sp, #8]
   10000318c:	b9400129 	ldr	w9, [x9]
   100003190:	6b09011f 	cmp	w8, w9
   100003194:	1a9fa7e8 	cset	w8, lt  // lt = tstop
   100003198:	12000100 	and	w0, w8, #0x1
   10000319c:	910083ff 	add	sp, sp, #0x20
   1000031a0:	d65f03c0 	ret

00000001000031a4 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_>:
   1000031a4:	d100c3ff 	sub	sp, sp, #0x30
   1000031a8:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000031ac:	910083fd 	add	x29, sp, #0x20
   1000031b0:	f9000be0 	str	x0, [sp, #16]
   1000031b4:	f90007e1 	str	x1, [sp, #8]
   1000031b8:	f94007e1 	ldr	x1, [sp, #8]
   1000031bc:	f9400be2 	ldr	x2, [sp, #16]
   1000031c0:	d10007a0 	sub	x0, x29, #0x1
   1000031c4:	97ffffeb 	bl	100003170 <__ZNKSt3__16__lessIvvEclB8ue170006IiiEEbRKT_RKT0_>
   1000031c8:	36000060 	tbz	w0, #0, 1000031d4 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x30>
   1000031cc:	f94007e0 	ldr	x0, [sp, #8]
   1000031d0:	14000002 	b	1000031d8 <__ZNSt3__13minB8ue170006IiNS_6__lessIvvEEEERKT_S5_S5_T0_+0x34>
   1000031d4:	f9400be0 	ldr	x0, [sp, #16]
   1000031d8:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000031dc:	9100c3ff 	add	sp, sp, #0x30
   1000031e0:	d65f03c0 	ret

00000001000031e4 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
   1000031e4:	d10203ff 	sub	sp, sp, #0x80
   1000031e8:	a90557f6 	stp	x22, x21, [sp, #80]
   1000031ec:	a9064ff4 	stp	x20, x19, [sp, #96]
   1000031f0:	a9077bfd 	stp	x29, x30, [sp, #112]
   1000031f4:	9101c3fd 	add	x29, sp, #0x70
   1000031f8:	f81d83a0 	stur	x0, [x29, #-40]
   1000031fc:	f81d03a1 	stur	x1, [x29, #-48]
   100003200:	f9001fe2 	str	x2, [sp, #56]
   100003204:	f85d83a1 	ldur	x1, [x29, #-40]
   100003208:	9100a3e0 	add	x0, sp, #0x28
   10000320c:	940002db 	bl	100003d78 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x84>
   100003210:	14000001 	b	100003214 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x30>
   100003214:	9100a3e0 	add	x0, sp, #0x28
   100003218:	94000066 	bl	1000033b0 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ue170006Ev>
   10000321c:	14000001 	b	100003220 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x3c>
   100003220:	360009c0 	tbz	w0, #0, 100003358 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x174>
   100003224:	14000001 	b	100003228 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
   100003228:	f85d83a1 	ldur	x1, [x29, #-40]
   10000322c:	910023e0 	add	x0, sp, #0x8
   100003230:	94000106 	bl	100003648 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ue170006ERNS_13basic_ostreamIcS2_EE>
   100003234:	f85d03b3 	ldur	x19, [x29, #-48]
   100003238:	f85d83a8 	ldur	x8, [x29, #-40]
   10000323c:	f9400109 	ldr	x9, [x8]
   100003240:	f85e8129 	ldur	x9, [x9, #-24]
   100003244:	8b090100 	add	x0, x8, x9
   100003248:	9400010f 	bl	100003684 <__ZNKSt3__18ios_base5flagsB8ue170006Ev>
   10000324c:	14000001 	b	100003250 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x6c>
   100003250:	52801608 	mov	w8, #0xb0                  	// #176
   100003254:	12800009 	mov	w9, #0xffffffff            	// #-1
   100003258:	4a090108 	eor	w8, w8, w9
   10000325c:	4a080008 	eor	w8, w0, w8
   100003260:	0a000108 	and	w8, w8, w0
   100003264:	7100811f 	cmp	w8, #0x20
   100003268:	540000a1 	b.ne	10000327c <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x98>  // b.any
   10000326c:	f85d03a8 	ldur	x8, [x29, #-48]
   100003270:	f9401fe9 	ldr	x9, [sp, #56]
   100003274:	8b090114 	add	x20, x8, x9
   100003278:	14000002 	b	100003280 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9c>
   10000327c:	f85d03b4 	ldur	x20, [x29, #-48]
   100003280:	f85d03a8 	ldur	x8, [x29, #-48]
   100003284:	f9401fe9 	ldr	x9, [sp, #56]
   100003288:	8b090115 	add	x21, x8, x9
   10000328c:	f85d83a8 	ldur	x8, [x29, #-40]
   100003290:	f9400109 	ldr	x9, [x8]
   100003294:	f85e8129 	ldur	x9, [x9, #-24]
   100003298:	8b090116 	add	x22, x8, x9
   10000329c:	aa1603e0 	mov	x0, x22
   1000032a0:	940000ff 	bl	10000369c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev>
   1000032a4:	14000001 	b	1000032a8 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xc4>
   1000032a8:	f94007e8 	ldr	x8, [sp, #8]
   1000032ac:	13001c05 	sxtb	w5, w0
   1000032b0:	aa0803e0 	mov	x0, x8
   1000032b4:	aa1303e1 	mov	x1, x19
   1000032b8:	aa1403e2 	mov	x2, x20
   1000032bc:	aa1503e3 	mov	x3, x21
   1000032c0:	aa1603e4 	mov	x4, x22
   1000032c4:	94000042 	bl	1000033cc <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
   1000032c8:	14000001 	b	1000032cc <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe8>
   1000032cc:	f9000be0 	str	x0, [sp, #16]
   1000032d0:	910043e0 	add	x0, sp, #0x10
   1000032d4:	94000108 	bl	1000036f4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ue170006Ev>
   1000032d8:	360003e0 	tbz	w0, #0, 100003354 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x170>
   1000032dc:	f85d83a8 	ldur	x8, [x29, #-40]
   1000032e0:	f9400109 	ldr	x9, [x8]
   1000032e4:	f85e8129 	ldur	x9, [x9, #-24]
   1000032e8:	8b090100 	add	x0, x8, x9
   1000032ec:	528000a1 	mov	w1, #0x5                   	// #5
   1000032f0:	9400010a 	bl	100003718 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ue170006Ej>
   1000032f4:	14000001 	b	1000032f8 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x114>
   1000032f8:	14000017 	b	100003354 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x170>
   1000032fc:	f90013e0 	str	x0, [sp, #32]
   100003300:	b9001fe1 	str	w1, [sp, #28]
   100003304:	14000005 	b	100003318 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
   100003308:	f90013e0 	str	x0, [sp, #32]
   10000330c:	b9001fe1 	str	w1, [sp, #28]
   100003310:	9100a3e0 	add	x0, sp, #0x28
   100003314:	9400029c 	bl	100003d84 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x90>
   100003318:	f94013e0 	ldr	x0, [sp, #32]
   10000331c:	940002ac 	bl	100003dcc <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xd8>
   100003320:	f85d83a8 	ldur	x8, [x29, #-40]
   100003324:	f9400109 	ldr	x9, [x8]
   100003328:	f85e8129 	ldur	x9, [x9, #-24]
   10000332c:	8b090100 	add	x0, x8, x9
   100003330:	9400029e 	bl	100003da8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xb4>
   100003334:	14000001 	b	100003338 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x154>
   100003338:	940002a8 	bl	100003dd8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xe4>
   10000333c:	f85d83a0 	ldur	x0, [x29, #-40]
   100003340:	a9477bfd 	ldp	x29, x30, [sp, #112]
   100003344:	a9464ff4 	ldp	x20, x19, [sp, #96]
   100003348:	a94557f6 	ldp	x22, x21, [sp, #80]
   10000334c:	910203ff 	add	sp, sp, #0x80
   100003350:	d65f03c0 	ret
   100003354:	14000001 	b	100003358 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x174>
   100003358:	9100a3e0 	add	x0, sp, #0x28
   10000335c:	9400028a 	bl	100003d84 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x90>
   100003360:	17fffff7 	b	10000333c <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x158>
   100003364:	f90013e0 	str	x0, [sp, #32]
   100003368:	b9001fe1 	str	w1, [sp, #28]
   10000336c:	9400029b 	bl	100003dd8 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xe4>
   100003370:	14000001 	b	100003374 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x190>
   100003374:	14000001 	b	100003378 <__ZNSt3__124__put_character_sequenceB8ue170006IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x194>
   100003378:	f94013e0 	ldr	x0, [sp, #32]
   10000337c:	94000267 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>
   100003380:	940000f1 	bl	100003744 <___clang_call_terminate>

0000000100003384 <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc>:
   100003384:	d10083ff 	sub	sp, sp, #0x20
   100003388:	a9017bfd 	stp	x29, x30, [sp, #16]
   10000338c:	910043fd 	add	x29, sp, #0x10
   100003390:	f90007e0 	str	x0, [sp, #8]
   100003394:	f94007e0 	ldr	x0, [sp, #8]
   100003398:	94000257 	bl	100003cf4 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc>
   10000339c:	14000001 	b	1000033a0 <__ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc+0x1c>
   1000033a0:	a9417bfd 	ldp	x29, x30, [sp, #16]
   1000033a4:	910083ff 	add	sp, sp, #0x20
   1000033a8:	d65f03c0 	ret
   1000033ac:	940000e6 	bl	100003744 <___clang_call_terminate>

00000001000033b0 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ue170006Ev>:
   1000033b0:	d10043ff 	sub	sp, sp, #0x10
   1000033b4:	f90007e0 	str	x0, [sp, #8]
   1000033b8:	f94007e8 	ldr	x8, [sp, #8]
   1000033bc:	39400108 	ldrb	w8, [x8]
   1000033c0:	12000100 	and	w0, w8, #0x1
   1000033c4:	910043ff 	add	sp, sp, #0x10
   1000033c8:	d65f03c0 	ret

00000001000033cc <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
   1000033cc:	d10283ff 	sub	sp, sp, #0xa0
   1000033d0:	a9084ff4 	stp	x20, x19, [sp, #128]
   1000033d4:	a9097bfd 	stp	x29, x30, [sp, #144]
   1000033d8:	910243fd 	add	x29, sp, #0x90
   1000033dc:	f81e03a0 	stur	x0, [x29, #-32]
   1000033e0:	f81d83a1 	stur	x1, [x29, #-40]
   1000033e4:	f81d03a2 	stur	x2, [x29, #-48]
   1000033e8:	f81c83a3 	stur	x3, [x29, #-56]
   1000033ec:	f81c03a4 	stur	x4, [x29, #-64]
   1000033f0:	381bf3a5 	sturb	w5, [x29, #-65]
   1000033f4:	f85e03a8 	ldur	x8, [x29, #-32]
   1000033f8:	b5000088 	cbnz	x8, 100003408 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
   1000033fc:	f85e03a8 	ldur	x8, [x29, #-32]
   100003400:	f81e83a8 	stur	x8, [x29, #-24]
   100003404:	1400008a 	b	10000362c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x260>
   100003408:	f85c83a8 	ldur	x8, [x29, #-56]
   10000340c:	f85d83a9 	ldur	x9, [x29, #-40]
   100003410:	d28a5d8a 	mov	x10, #0x52ec                	// #21228
   100003414:	f2af1f8a 	movk	x10, #0x78fc, lsl #16
   100003418:	f2cb7caa 	movk	x10, #0x5be5, lsl #32
   10000341c:	f2f7820a 	movk	x10, #0xbc10, lsl #48
   100003420:	8b0a0108 	add	x8, x8, x10
   100003424:	cb090108 	sub	x8, x8, x9
   100003428:	d28a5d89 	mov	x9, #0x52ec                	// #21228
   10000342c:	f2af1f89 	movk	x9, #0x78fc, lsl #16
   100003430:	f2cb7ca9 	movk	x9, #0x5be5, lsl #32
   100003434:	f2f78209 	movk	x9, #0xbc10, lsl #48
   100003438:	cb090108 	sub	x8, x8, x9
   10000343c:	f90023e8 	str	x8, [sp, #64]
   100003440:	f85c03a0 	ldur	x0, [x29, #-64]
   100003444:	940000c4 	bl	100003754 <__ZNKSt3__18ios_base5widthB8ue170006Ev>
   100003448:	f9001fe0 	str	x0, [sp, #56]
   10000344c:	f9401fe8 	ldr	x8, [sp, #56]
   100003450:	f94023e9 	ldr	x9, [sp, #64]
   100003454:	eb09011f 	cmp	x8, x9
   100003458:	5400020d 	b.le	100003498 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcc>
   10000345c:	f94023e8 	ldr	x8, [sp, #64]
   100003460:	f9401fe9 	ldr	x9, [sp, #56]
   100003464:	d28790aa 	mov	x10, #0x3c85                	// #15493
   100003468:	f2bbec0a 	movk	x10, #0xdf60, lsl #16
   10000346c:	f2c6a2ca 	movk	x10, #0x3516, lsl #32
   100003470:	f2f23cea 	movk	x10, #0x91e7, lsl #48
   100003474:	8b0a0129 	add	x9, x9, x10
   100003478:	cb080128 	sub	x8, x9, x8
   10000347c:	d28790a9 	mov	x9, #0x3c85                	// #15493
   100003480:	f2bbec09 	movk	x9, #0xdf60, lsl #16
   100003484:	f2c6a2c9 	movk	x9, #0x3516, lsl #32
   100003488:	f2f23ce9 	movk	x9, #0x91e7, lsl #48
   10000348c:	cb090108 	sub	x8, x8, x9
   100003490:	f9001fe8 	str	x8, [sp, #56]
   100003494:	14000002 	b	10000349c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd0>
   100003498:	f9001fff 	str	xzr, [sp, #56]
   10000349c:	f85d03a8 	ldur	x8, [x29, #-48]
   1000034a0:	f85d83a9 	ldur	x9, [x29, #-40]
   1000034a4:	d294c9aa 	mov	x10, #0xa64d                	// #42573
   1000034a8:	f2ba71ea 	movk	x10, #0xd38f, lsl #16
   1000034ac:	f2d24f4a 	movk	x10, #0x927a, lsl #32
   1000034b0:	f2e705aa 	movk	x10, #0x382d, lsl #48
   1000034b4:	8b0a0108 	add	x8, x8, x10
   1000034b8:	cb090108 	sub	x8, x8, x9
   1000034bc:	d294c9a9 	mov	x9, #0xa64d                	// #42573
   1000034c0:	f2ba71e9 	movk	x9, #0xd38f, lsl #16
   1000034c4:	f2d24f49 	movk	x9, #0x927a, lsl #32
   1000034c8:	f2e705a9 	movk	x9, #0x382d, lsl #48
   1000034cc:	cb090108 	sub	x8, x8, x9
   1000034d0:	f9001be8 	str	x8, [sp, #48]
   1000034d4:	f9401be8 	ldr	x8, [sp, #48]
   1000034d8:	f100011f 	cmp	x8, #0x0
   1000034dc:	540001ad 	b.le	100003510 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x144>
   1000034e0:	f85e03a0 	ldur	x0, [x29, #-32]
   1000034e4:	f85d83a1 	ldur	x1, [x29, #-40]
   1000034e8:	f9401be2 	ldr	x2, [sp, #48]
   1000034ec:	940000a0 	bl	10000376c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   1000034f0:	f9401be8 	ldr	x8, [sp, #48]
   1000034f4:	eb08001f 	cmp	x0, x8
   1000034f8:	540000a0 	b.eq	10000350c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x140>  // b.none
   1000034fc:	f81e03bf 	stur	xzr, [x29, #-32]
   100003500:	f85e03a8 	ldur	x8, [x29, #-32]
   100003504:	f81e83a8 	stur	x8, [x29, #-24]
   100003508:	14000049 	b	10000362c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x260>
   10000350c:	14000001 	b	100003510 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x144>
   100003510:	f9401fe8 	ldr	x8, [sp, #56]
   100003514:	f100011f 	cmp	x8, #0x0
   100003518:	5400046d 	b.le	1000035a4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d8>
   10000351c:	f9401fe1 	ldr	x1, [sp, #56]
   100003520:	38dbf3a2 	ldursb	w2, [x29, #-65]
   100003524:	910063e0 	add	x0, sp, #0x18
   100003528:	940000a0 	bl	1000037a8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006Emc>
   10000352c:	f85e03b3 	ldur	x19, [x29, #-32]
   100003530:	910063e0 	add	x0, sp, #0x18
   100003534:	940000af 	bl	1000037f0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ue170006Ev>
   100003538:	aa0003e1 	mov	x1, x0
   10000353c:	f9401fe2 	ldr	x2, [sp, #56]
   100003540:	aa1303e0 	mov	x0, x19
   100003544:	9400008a 	bl	10000376c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   100003548:	14000001 	b	10000354c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x180>
   10000354c:	f9401fe8 	ldr	x8, [sp, #56]
   100003550:	eb08001f 	cmp	x0, x8
   100003554:	54000180 	b.eq	100003584 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b8>  // b.none
   100003558:	f81e03bf 	stur	xzr, [x29, #-32]
   10000355c:	f85e03a8 	ldur	x8, [x29, #-32]
   100003560:	f81e83a8 	stur	x8, [x29, #-24]
   100003564:	52800028 	mov	w8, #0x1                   	// #1
   100003568:	b9000be8 	str	w8, [sp, #8]
   10000356c:	14000007 	b	100003588 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1bc>
   100003570:	f9000be0 	str	x0, [sp, #16]
   100003574:	b9000fe1 	str	w1, [sp, #12]
   100003578:	910063e0 	add	x0, sp, #0x18
   10000357c:	940001f3 	bl	100003d48 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x54>
   100003580:	14000030 	b	100003640 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x274>
   100003584:	b9000bff 	str	wzr, [sp, #8]
   100003588:	910063e0 	add	x0, sp, #0x18
   10000358c:	940001ef 	bl	100003d48 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x54>
   100003590:	b9400be8 	ldr	w8, [sp, #8]
   100003594:	34000068 	cbz	w8, 1000035a0 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d4>
   100003598:	14000001 	b	10000359c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
   10000359c:	14000024 	b	10000362c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x260>
   1000035a0:	14000001 	b	1000035a4 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d8>
   1000035a4:	f85c83a8 	ldur	x8, [x29, #-56]
   1000035a8:	f85d03a9 	ldur	x9, [x29, #-48]
   1000035ac:	d283ec0a 	mov	x10, #0x1f60                	// #8032
   1000035b0:	f2b45a8a 	movk	x10, #0xa2d4, lsl #16
   1000035b4:	f2cae90a 	movk	x10, #0x5748, lsl #32
   1000035b8:	f2e7a9ea 	movk	x10, #0x3d4f, lsl #48
   1000035bc:	8b0a0108 	add	x8, x8, x10
   1000035c0:	cb090108 	sub	x8, x8, x9
   1000035c4:	d283ec09 	mov	x9, #0x1f60                	// #8032
   1000035c8:	f2b45a89 	movk	x9, #0xa2d4, lsl #16
   1000035cc:	f2cae909 	movk	x9, #0x5748, lsl #32
   1000035d0:	f2e7a9e9 	movk	x9, #0x3d4f, lsl #48
   1000035d4:	cb090108 	sub	x8, x8, x9
   1000035d8:	f9001be8 	str	x8, [sp, #48]
   1000035dc:	f9401be8 	ldr	x8, [sp, #48]
   1000035e0:	f100011f 	cmp	x8, #0x0
   1000035e4:	540001ad 	b.le	100003618 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x24c>
   1000035e8:	f85e03a0 	ldur	x0, [x29, #-32]
   1000035ec:	f85d03a1 	ldur	x1, [x29, #-48]
   1000035f0:	f9401be2 	ldr	x2, [sp, #48]
   1000035f4:	9400005e 	bl	10000376c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>
   1000035f8:	f9401be8 	ldr	x8, [sp, #48]
   1000035fc:	eb08001f 	cmp	x0, x8
   100003600:	540000a0 	b.eq	100003614 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x248>  // b.none
   100003604:	f81e03bf 	stur	xzr, [x29, #-32]
   100003608:	f85e03a8 	ldur	x8, [x29, #-32]
   10000360c:	f81e83a8 	stur	x8, [x29, #-24]
   100003610:	14000007 	b	10000362c <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x260>
   100003614:	14000001 	b	100003618 <__ZNSt3__116__pad_and_outputB8ue170006IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x24c>
   100003618:	f85c03a0 	ldur	x0, [x29, #-64]
   10000361c:	d2800001 	mov	x1, #0x0                   	// #0
   100003620:	9400007e 	bl	100003818 <__ZNSt3__18ios_base5widthB8ue170006El>
   100003624:	f85e03a8 	ldur	x8, [x29, #-32]
   100003628:	f81e83a8 	stur	x8, [x29, #-24]
   10000362c:	f85e83a0 	ldur	x0, [x29, #-24]
   100003630:	a9497bfd 	ldp	x29, x30, [sp, #144]
   100003634:	a9484ff4 	ldp	x20, x19, [sp, #128]
   100003638:	910283ff 	add	sp, sp, #0xa0
   10000363c:	d65f03c0 	ret
   100003640:	f9400be0 	ldr	x0, [sp, #16]
   100003644:	940001b5 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>

0000000100003648 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ue170006ERNS_13basic_ostreamIcS2_EE>:
   100003648:	d100c3ff 	sub	sp, sp, #0x30
   10000364c:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003650:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003654:	910083fd 	add	x29, sp, #0x20
   100003658:	f90007e0 	str	x0, [sp, #8]
   10000365c:	f90003e1 	str	x1, [sp]
   100003660:	f94007f3 	ldr	x19, [sp, #8]
   100003664:	f94003e1 	ldr	x1, [sp]
   100003668:	aa1303e0 	mov	x0, x19
   10000366c:	9400012d 	bl	100003b20 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE>
   100003670:	aa1303e0 	mov	x0, x19
   100003674:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003678:	a9414ff4 	ldp	x20, x19, [sp, #16]
   10000367c:	9100c3ff 	add	sp, sp, #0x30
   100003680:	d65f03c0 	ret

0000000100003684 <__ZNKSt3__18ios_base5flagsB8ue170006Ev>:
   100003684:	d10043ff 	sub	sp, sp, #0x10
   100003688:	f90007e0 	str	x0, [sp, #8]
   10000368c:	f94007e8 	ldr	x8, [sp, #8]
   100003690:	b9400900 	ldr	w0, [x8, #8]
   100003694:	910043ff 	add	sp, sp, #0x10
   100003698:	d65f03c0 	ret

000000010000369c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev>:
   10000369c:	d100c3ff 	sub	sp, sp, #0x30
   1000036a0:	a9014ff4 	stp	x20, x19, [sp, #16]
   1000036a4:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000036a8:	910083fd 	add	x29, sp, #0x20
   1000036ac:	f90007e0 	str	x0, [sp, #8]
   1000036b0:	f94007f3 	ldr	x19, [sp, #8]
   1000036b4:	94000148 	bl	100003bd4 <__ZNSt3__111char_traitsIcE3eofB8ue170006Ev>
   1000036b8:	b9409261 	ldr	w1, [x19, #144]
   1000036bc:	9400013c 	bl	100003bac <__ZNSt3__111char_traitsIcE11eq_int_typeB8ue170006Eii>
   1000036c0:	360000e0 	tbz	w0, #0, 1000036dc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ue170006Ev+0x40>
   1000036c4:	52800408 	mov	w8, #0x20                  	// #32
   1000036c8:	aa1303e0 	mov	x0, x19
   1000036cc:	13001d01 	sxtb	w1, w8
   1000036d0:	94000143 	bl	100003bdc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>
   1000036d4:	13001c08 	sxtb	w8, w0
   1000036d8:	b9009268 	str	w8, [x19, #144]
   1000036dc:	b9409268 	ldr	w8, [x19, #144]
   1000036e0:	13001d00 	sxtb	w0, w8
   1000036e4:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000036e8:	a9414ff4 	ldp	x20, x19, [sp, #16]
   1000036ec:	9100c3ff 	add	sp, sp, #0x30
   1000036f0:	d65f03c0 	ret

00000001000036f4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ue170006Ev>:
   1000036f4:	d10043ff 	sub	sp, sp, #0x10
   1000036f8:	f90007e0 	str	x0, [sp, #8]
   1000036fc:	f94007e8 	ldr	x8, [sp, #8]
   100003700:	f9400108 	ldr	x8, [x8]
   100003704:	f100011f 	cmp	x8, #0x0
   100003708:	1a9f17e8 	cset	w8, eq  // eq = none
   10000370c:	12000100 	and	w0, w8, #0x1
   100003710:	910043ff 	add	sp, sp, #0x10
   100003714:	d65f03c0 	ret

0000000100003718 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ue170006Ej>:
   100003718:	d10083ff 	sub	sp, sp, #0x20
   10000371c:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003720:	910043fd 	add	x29, sp, #0x10
   100003724:	f90007e0 	str	x0, [sp, #8]
   100003728:	b90007e1 	str	w1, [sp, #4]
   10000372c:	f94007e0 	ldr	x0, [sp, #8]
   100003730:	b94007e1 	ldr	w1, [sp, #4]
   100003734:	94000161 	bl	100003cb8 <__ZNSt3__18ios_base8setstateB8ue170006Ej>
   100003738:	a9417bfd 	ldp	x29, x30, [sp, #16]
   10000373c:	910083ff 	add	sp, sp, #0x20
   100003740:	d65f03c0 	ret

0000000100003744 <___clang_call_terminate>:
   100003744:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
   100003748:	910003fd 	mov	x29, sp
   10000374c:	940001a0 	bl	100003dcc <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xd8>
   100003750:	9400019c 	bl	100003dc0 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xcc>

0000000100003754 <__ZNKSt3__18ios_base5widthB8ue170006Ev>:
   100003754:	d10043ff 	sub	sp, sp, #0x10
   100003758:	f90007e0 	str	x0, [sp, #8]
   10000375c:	f94007e8 	ldr	x8, [sp, #8]
   100003760:	f9400d00 	ldr	x0, [x8, #24]
   100003764:	910043ff 	add	sp, sp, #0x10
   100003768:	d65f03c0 	ret

000000010000376c <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ue170006EPKcl>:
   10000376c:	d100c3ff 	sub	sp, sp, #0x30
   100003770:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003774:	910083fd 	add	x29, sp, #0x20
   100003778:	f81f83a0 	stur	x0, [x29, #-8]
   10000377c:	f9000be1 	str	x1, [sp, #16]
   100003780:	f90007e2 	str	x2, [sp, #8]
   100003784:	f85f83a0 	ldur	x0, [x29, #-8]
   100003788:	f9400be1 	ldr	x1, [sp, #16]
   10000378c:	f94007e2 	ldr	x2, [sp, #8]
   100003790:	f9400008 	ldr	x8, [x0]
   100003794:	f9403108 	ldr	x8, [x8, #96]
   100003798:	d63f0100 	blr	x8
   10000379c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   1000037a0:	9100c3ff 	add	sp, sp, #0x30
   1000037a4:	d65f03c0 	ret

00000001000037a8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006Emc>:
   1000037a8:	d10103ff 	sub	sp, sp, #0x40
   1000037ac:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000037b0:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000037b4:	9100c3fd 	add	x29, sp, #0x30
   1000037b8:	f9000fe0 	str	x0, [sp, #24]
   1000037bc:	f9000be1 	str	x1, [sp, #16]
   1000037c0:	39003fe2 	strb	w2, [sp, #15]
   1000037c4:	f9400ff3 	ldr	x19, [sp, #24]
   1000037c8:	f9400be1 	ldr	x1, [sp, #16]
   1000037cc:	39403fe8 	ldrb	w8, [sp, #15]
   1000037d0:	aa1303e0 	mov	x0, x19
   1000037d4:	13001d02 	sxtb	w2, w8
   1000037d8:	9400001b 	bl	100003844 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006Emc>
   1000037dc:	aa1303e0 	mov	x0, x19
   1000037e0:	a9437bfd 	ldp	x29, x30, [sp, #48]
   1000037e4:	a9424ff4 	ldp	x20, x19, [sp, #32]
   1000037e8:	910103ff 	add	sp, sp, #0x40
   1000037ec:	d65f03c0 	ret

00000001000037f0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ue170006Ev>:
   1000037f0:	d10083ff 	sub	sp, sp, #0x20
   1000037f4:	a9017bfd 	stp	x29, x30, [sp, #16]
   1000037f8:	910043fd 	add	x29, sp, #0x10
   1000037fc:	f90007e0 	str	x0, [sp, #8]
   100003800:	f94007e0 	ldr	x0, [sp, #8]
   100003804:	94000071 	bl	1000039c8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev>
   100003808:	9400006b 	bl	1000039b4 <__ZNSt3__112__to_addressB8ue170006IcEEPT_S2_>
   10000380c:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003810:	910083ff 	add	sp, sp, #0x20
   100003814:	d65f03c0 	ret

0000000100003818 <__ZNSt3__18ios_base5widthB8ue170006El>:
   100003818:	d10083ff 	sub	sp, sp, #0x20
   10000381c:	f9000fe0 	str	x0, [sp, #24]
   100003820:	f9000be1 	str	x1, [sp, #16]
   100003824:	f9400fe8 	ldr	x8, [sp, #24]
   100003828:	f9400d09 	ldr	x9, [x8, #24]
   10000382c:	f90007e9 	str	x9, [sp, #8]
   100003830:	f9400be9 	ldr	x9, [sp, #16]
   100003834:	f9000d09 	str	x9, [x8, #24]
   100003838:	f94007e0 	ldr	x0, [sp, #8]
   10000383c:	910083ff 	add	sp, sp, #0x20
   100003840:	d65f03c0 	ret

0000000100003844 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006Emc>:
   100003844:	d10103ff 	sub	sp, sp, #0x40
   100003848:	a9024ff4 	stp	x20, x19, [sp, #32]
   10000384c:	a9037bfd 	stp	x29, x30, [sp, #48]
   100003850:	9100c3fd 	add	x29, sp, #0x30
   100003854:	f9000fe0 	str	x0, [sp, #24]
   100003858:	f9000be1 	str	x1, [sp, #16]
   10000385c:	39003fe2 	strb	w2, [sp, #15]
   100003860:	f9400ff3 	ldr	x19, [sp, #24]
   100003864:	aa1303e0 	mov	x0, x19
   100003868:	91003be1 	add	x1, sp, #0xe
   10000386c:	910037e2 	add	x2, sp, #0xd
   100003870:	9400000b 	bl	10000389c <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>
   100003874:	f9400be1 	ldr	x1, [sp, #16]
   100003878:	39403fe8 	ldrb	w8, [sp, #15]
   10000387c:	aa1303e0 	mov	x0, x19
   100003880:	13001d02 	sxtb	w2, w8
   100003884:	9400012e 	bl	100003d3c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x48>
   100003888:	aa1303e0 	mov	x0, x19
   10000388c:	a9437bfd 	ldp	x29, x30, [sp, #48]
   100003890:	a9424ff4 	ldp	x20, x19, [sp, #32]
   100003894:	910103ff 	add	sp, sp, #0x40
   100003898:	d65f03c0 	ret

000000010000389c <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>:
   10000389c:	d10103ff 	sub	sp, sp, #0x40
   1000038a0:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000038a4:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000038a8:	9100c3fd 	add	x29, sp, #0x30
   1000038ac:	f9000fe0 	str	x0, [sp, #24]
   1000038b0:	f9000be1 	str	x1, [sp, #16]
   1000038b4:	f90007e2 	str	x2, [sp, #8]
   1000038b8:	f9400ff3 	ldr	x19, [sp, #24]
   1000038bc:	f9400be1 	ldr	x1, [sp, #16]
   1000038c0:	f94007e2 	ldr	x2, [sp, #8]
   1000038c4:	aa1303e0 	mov	x0, x19
   1000038c8:	94000006 	bl	1000038e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>
   1000038cc:	aa1303e0 	mov	x0, x19
   1000038d0:	a9437bfd 	ldp	x29, x30, [sp, #48]
   1000038d4:	a9424ff4 	ldp	x20, x19, [sp, #32]
   1000038d8:	910103ff 	add	sp, sp, #0x40
   1000038dc:	d65f03c0 	ret

00000001000038e0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_>:
   1000038e0:	d10103ff 	sub	sp, sp, #0x40
   1000038e4:	a9024ff4 	stp	x20, x19, [sp, #32]
   1000038e8:	a9037bfd 	stp	x29, x30, [sp, #48]
   1000038ec:	9100c3fd 	add	x29, sp, #0x30
   1000038f0:	f9000fe0 	str	x0, [sp, #24]
   1000038f4:	f9000be1 	str	x1, [sp, #16]
   1000038f8:	f90007e2 	str	x2, [sp, #8]
   1000038fc:	f9400ff3 	ldr	x19, [sp, #24]
   100003900:	aa1303e0 	mov	x0, x19
   100003904:	94000008 	bl	100003924 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE>
   100003908:	aa1303e0 	mov	x0, x19
   10000390c:	9400000b 	bl	100003938 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE>
   100003910:	aa1303e0 	mov	x0, x19
   100003914:	a9437bfd 	ldp	x29, x30, [sp, #48]
   100003918:	a9424ff4 	ldp	x20, x19, [sp, #32]
   10000391c:	910103ff 	add	sp, sp, #0x40
   100003920:	d65f03c0 	ret

0000000100003924 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE>:
   100003924:	d10043ff 	sub	sp, sp, #0x10
   100003928:	f90003e0 	str	x0, [sp]
   10000392c:	f94003e0 	ldr	x0, [sp]
   100003930:	910043ff 	add	sp, sp, #0x10
   100003934:	d65f03c0 	ret

0000000100003938 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE>:
   100003938:	d100c3ff 	sub	sp, sp, #0x30
   10000393c:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003940:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003944:	910083fd 	add	x29, sp, #0x20
   100003948:	f90003e0 	str	x0, [sp]
   10000394c:	f94003f3 	ldr	x19, [sp]
   100003950:	aa1303e0 	mov	x0, x19
   100003954:	94000006 	bl	10000396c <__ZNSt3__19allocatorIcEC2B8ue170006Ev>
   100003958:	aa1303e0 	mov	x0, x19
   10000395c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003960:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003964:	9100c3ff 	add	sp, sp, #0x30
   100003968:	d65f03c0 	ret

000000010000396c <__ZNSt3__19allocatorIcEC2B8ue170006Ev>:
   10000396c:	d100c3ff 	sub	sp, sp, #0x30
   100003970:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003974:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003978:	910083fd 	add	x29, sp, #0x20
   10000397c:	f90007e0 	str	x0, [sp, #8]
   100003980:	f94007f3 	ldr	x19, [sp, #8]
   100003984:	aa1303e0 	mov	x0, x19
   100003988:	94000006 	bl	1000039a0 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev>
   10000398c:	aa1303e0 	mov	x0, x19
   100003990:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003994:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003998:	9100c3ff 	add	sp, sp, #0x30
   10000399c:	d65f03c0 	ret

00000001000039a0 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev>:
   1000039a0:	d10043ff 	sub	sp, sp, #0x10
   1000039a4:	f90007e0 	str	x0, [sp, #8]
   1000039a8:	f94007e0 	ldr	x0, [sp, #8]
   1000039ac:	910043ff 	add	sp, sp, #0x10
   1000039b0:	d65f03c0 	ret

00000001000039b4 <__ZNSt3__112__to_addressB8ue170006IcEEPT_S2_>:
   1000039b4:	d10043ff 	sub	sp, sp, #0x10
   1000039b8:	f90007e0 	str	x0, [sp, #8]
   1000039bc:	f94007e0 	ldr	x0, [sp, #8]
   1000039c0:	910043ff 	add	sp, sp, #0x10
   1000039c4:	d65f03c0 	ret

00000001000039c8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev>:
   1000039c8:	d100c3ff 	sub	sp, sp, #0x30
   1000039cc:	a9014ff4 	stp	x20, x19, [sp, #16]
   1000039d0:	a9027bfd 	stp	x29, x30, [sp, #32]
   1000039d4:	910083fd 	add	x29, sp, #0x20
   1000039d8:	f90007e0 	str	x0, [sp, #8]
   1000039dc:	f94007f3 	ldr	x19, [sp, #8]
   1000039e0:	aa1303e0 	mov	x0, x19
   1000039e4:	9400000b 	bl	100003a10 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ue170006Ev>
   1000039e8:	36000080 	tbz	w0, #0, 1000039f8 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev+0x30>
   1000039ec:	aa1303e0 	mov	x0, x19
   1000039f0:	94000017 	bl	100003a4c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ue170006Ev>
   1000039f4:	14000003 	b	100003a00 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ue170006Ev+0x38>
   1000039f8:	aa1303e0 	mov	x0, x19
   1000039fc:	9400001e 	bl	100003a74 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ue170006Ev>
   100003a00:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003a04:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003a08:	9100c3ff 	add	sp, sp, #0x30
   100003a0c:	d65f03c0 	ret

0000000100003a10 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ue170006Ev>:
   100003a10:	d10083ff 	sub	sp, sp, #0x20
   100003a14:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a18:	910043fd 	add	x29, sp, #0x10
   100003a1c:	f90007e0 	str	x0, [sp, #8]
   100003a20:	f94007e0 	ldr	x0, [sp, #8]
   100003a24:	9400001e 	bl	100003a9c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a28:	39405c08 	ldrb	w8, [x0, #23]
   100003a2c:	53071d08 	ubfx	w8, w8, #7, #1
   100003a30:	13001d08 	sxtb	w8, w8
   100003a34:	7100011f 	cmp	w8, #0x0
   100003a38:	1a9f07e8 	cset	w8, ne  // ne = any
   100003a3c:	12000100 	and	w0, w8, #0x1
   100003a40:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a44:	910083ff 	add	sp, sp, #0x20
   100003a48:	d65f03c0 	ret

0000000100003a4c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ue170006Ev>:
   100003a4c:	d10083ff 	sub	sp, sp, #0x20
   100003a50:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a54:	910043fd 	add	x29, sp, #0x10
   100003a58:	f90007e0 	str	x0, [sp, #8]
   100003a5c:	f94007e0 	ldr	x0, [sp, #8]
   100003a60:	9400001d 	bl	100003ad4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a64:	f9400000 	ldr	x0, [x0]
   100003a68:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a6c:	910083ff 	add	sp, sp, #0x20
   100003a70:	d65f03c0 	ret

0000000100003a74 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ue170006Ev>:
   100003a74:	d10083ff 	sub	sp, sp, #0x20
   100003a78:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003a7c:	910043fd 	add	x29, sp, #0x10
   100003a80:	f90007e0 	str	x0, [sp, #8]
   100003a84:	f94007e0 	ldr	x0, [sp, #8]
   100003a88:	94000013 	bl	100003ad4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>
   100003a8c:	94000020 	bl	100003b0c <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ue170006ERc>
   100003a90:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003a94:	910083ff 	add	sp, sp, #0x20
   100003a98:	d65f03c0 	ret

0000000100003a9c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>:
   100003a9c:	d10083ff 	sub	sp, sp, #0x20
   100003aa0:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003aa4:	910043fd 	add	x29, sp, #0x10
   100003aa8:	f90007e0 	str	x0, [sp, #8]
   100003aac:	f94007e0 	ldr	x0, [sp, #8]
   100003ab0:	94000004 	bl	100003ac0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>
   100003ab4:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003ab8:	910083ff 	add	sp, sp, #0x20
   100003abc:	d65f03c0 	ret

0000000100003ac0 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>:
   100003ac0:	d10043ff 	sub	sp, sp, #0x10
   100003ac4:	f90007e0 	str	x0, [sp, #8]
   100003ac8:	f94007e0 	ldr	x0, [sp, #8]
   100003acc:	910043ff 	add	sp, sp, #0x10
   100003ad0:	d65f03c0 	ret

0000000100003ad4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ue170006Ev>:
   100003ad4:	d10083ff 	sub	sp, sp, #0x20
   100003ad8:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003adc:	910043fd 	add	x29, sp, #0x10
   100003ae0:	f90007e0 	str	x0, [sp, #8]
   100003ae4:	f94007e0 	ldr	x0, [sp, #8]
   100003ae8:	94000004 	bl	100003af8 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>
   100003aec:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003af0:	910083ff 	add	sp, sp, #0x20
   100003af4:	d65f03c0 	ret

0000000100003af8 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ue170006Ev>:
   100003af8:	d10043ff 	sub	sp, sp, #0x10
   100003afc:	f90007e0 	str	x0, [sp, #8]
   100003b00:	f94007e0 	ldr	x0, [sp, #8]
   100003b04:	910043ff 	add	sp, sp, #0x10
   100003b08:	d65f03c0 	ret

0000000100003b0c <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ue170006ERc>:
   100003b0c:	d10043ff 	sub	sp, sp, #0x10
   100003b10:	f90007e0 	str	x0, [sp, #8]
   100003b14:	f94007e0 	ldr	x0, [sp, #8]
   100003b18:	910043ff 	add	sp, sp, #0x10
   100003b1c:	d65f03c0 	ret

0000000100003b20 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE>:
   100003b20:	d100c3ff 	sub	sp, sp, #0x30
   100003b24:	a9014ff4 	stp	x20, x19, [sp, #16]
   100003b28:	a9027bfd 	stp	x29, x30, [sp, #32]
   100003b2c:	910083fd 	add	x29, sp, #0x20
   100003b30:	f90007e0 	str	x0, [sp, #8]
   100003b34:	f90003e1 	str	x1, [sp]
   100003b38:	f94007f3 	ldr	x19, [sp, #8]
   100003b3c:	f94003e8 	ldr	x8, [sp]
   100003b40:	f9400109 	ldr	x9, [x8]
   100003b44:	f85e8129 	ldur	x9, [x9, #-24]
   100003b48:	8b090100 	add	x0, x8, x9
   100003b4c:	94000009 	bl	100003b70 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ue170006Ev>
   100003b50:	14000001 	b	100003b54 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ue170006ERNS_13basic_ostreamIcS2_EE+0x34>
   100003b54:	f9000260 	str	x0, [x19]
   100003b58:	aa1303e0 	mov	x0, x19
   100003b5c:	a9427bfd 	ldp	x29, x30, [sp, #32]
   100003b60:	a9414ff4 	ldp	x20, x19, [sp, #16]
   100003b64:	9100c3ff 	add	sp, sp, #0x30
   100003b68:	d65f03c0 	ret
   100003b6c:	97fffef6 	bl	100003744 <___clang_call_terminate>

0000000100003b70 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ue170006Ev>:
   100003b70:	d10083ff 	sub	sp, sp, #0x20
   100003b74:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003b78:	910043fd 	add	x29, sp, #0x10
   100003b7c:	f90007e0 	str	x0, [sp, #8]
   100003b80:	f94007e0 	ldr	x0, [sp, #8]
   100003b84:	94000004 	bl	100003b94 <__ZNKSt3__18ios_base5rdbufB8ue170006Ev>
   100003b88:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003b8c:	910083ff 	add	sp, sp, #0x20
   100003b90:	d65f03c0 	ret

0000000100003b94 <__ZNKSt3__18ios_base5rdbufB8ue170006Ev>:
   100003b94:	d10043ff 	sub	sp, sp, #0x10
   100003b98:	f90007e0 	str	x0, [sp, #8]
   100003b9c:	f94007e8 	ldr	x8, [sp, #8]
   100003ba0:	f9401500 	ldr	x0, [x8, #40]
   100003ba4:	910043ff 	add	sp, sp, #0x10
   100003ba8:	d65f03c0 	ret

0000000100003bac <__ZNSt3__111char_traitsIcE11eq_int_typeB8ue170006Eii>:
   100003bac:	d10043ff 	sub	sp, sp, #0x10
   100003bb0:	b9000fe0 	str	w0, [sp, #12]
   100003bb4:	b9000be1 	str	w1, [sp, #8]
   100003bb8:	b9400fe8 	ldr	w8, [sp, #12]
   100003bbc:	b9400be9 	ldr	w9, [sp, #8]
   100003bc0:	6b09011f 	cmp	w8, w9
   100003bc4:	1a9f17e8 	cset	w8, eq  // eq = none
   100003bc8:	12000100 	and	w0, w8, #0x1
   100003bcc:	910043ff 	add	sp, sp, #0x10
   100003bd0:	d65f03c0 	ret

0000000100003bd4 <__ZNSt3__111char_traitsIcE3eofB8ue170006Ev>:
   100003bd4:	12800000 	mov	w0, #0xffffffff            	// #-1
   100003bd8:	d65f03c0 	ret

0000000100003bdc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec>:
   100003bdc:	d10143ff 	sub	sp, sp, #0x50
   100003be0:	a9034ff4 	stp	x20, x19, [sp, #48]
   100003be4:	a9047bfd 	stp	x29, x30, [sp, #64]
   100003be8:	910103fd 	add	x29, sp, #0x40
   100003bec:	f81e83a0 	stur	x0, [x29, #-24]
   100003bf0:	381e73a1 	sturb	w1, [x29, #-25]
   100003bf4:	f85e83a0 	ldur	x0, [x29, #-24]
   100003bf8:	910063e8 	add	x8, sp, #0x18
   100003bfc:	9400004d 	bl	100003d30 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x3c>
   100003c00:	910063e0 	add	x0, sp, #0x18
   100003c04:	94000013 	bl	100003c50 <__ZNSt3__19use_facetB8ue170006INS_5ctypeIcEEEERKT_RKNS_6localeE>
   100003c08:	14000001 	b	100003c0c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec+0x30>
   100003c0c:	38de73a1 	ldursb	w1, [x29, #-25]
   100003c10:	9400001b 	bl	100003c7c <__ZNKSt3__15ctypeIcE5widenB8ue170006Ec>
   100003c14:	aa0003f3 	mov	x19, x0
   100003c18:	14000001 	b	100003c1c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ue170006Ec+0x40>
   100003c1c:	910063e0 	add	x0, sp, #0x18
   100003c20:	9400005f 	bl	100003d9c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xa8>
   100003c24:	13001e60 	sxtb	w0, w19
   100003c28:	a9447bfd 	ldp	x29, x30, [sp, #64]
   100003c2c:	a9434ff4 	ldp	x20, x19, [sp, #48]
   100003c30:	910143ff 	add	sp, sp, #0x50
   100003c34:	d65f03c0 	ret
   100003c38:	f9000be0 	str	x0, [sp, #16]
   100003c3c:	b9000fe1 	str	w1, [sp, #12]
   100003c40:	910063e0 	add	x0, sp, #0x18
   100003c44:	94000056 	bl	100003d9c <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0xa8>
   100003c48:	f9400be0 	ldr	x0, [sp, #16]
   100003c4c:	94000033 	bl	100003d18 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x24>

0000000100003c50 <__ZNSt3__19use_facetB8ue170006INS_5ctypeIcEEEERKT_RKNS_6localeE>:
   100003c50:	d10083ff 	sub	sp, sp, #0x20
   100003c54:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003c58:	910043fd 	add	x29, sp, #0x10
   100003c5c:	f90007e0 	str	x0, [sp, #8]
   100003c60:	f94007e0 	ldr	x0, [sp, #8]
   100003c64:	b0000008 	adrp	x8, 100004000 <GCC_except_table51+0x1a4>
   100003c68:	f9403501 	ldr	x1, [x8, #104]
   100003c6c:	9400002e 	bl	100003d24 <__ZNSt3__118__constexpr_strlenB8ue170006EPKc+0x30>
   100003c70:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003c74:	910083ff 	add	sp, sp, #0x20
   100003c78:	d65f03c0 	ret

0000000100003c7c <__ZNKSt3__15ctypeIcE5widenB8ue170006Ec>:
   100003c7c:	d10083ff 	sub	sp, sp, #0x20
   100003c80:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003c84:	910043fd 	add	x29, sp, #0x10
   100003c88:	f90007e0 	str	x0, [sp, #8]
   100003c8c:	39001fe1 	strb	w1, [sp, #7]
   100003c90:	f94007e0 	ldr	x0, [sp, #8]
   100003c94:	39401fe8 	ldrb	w8, [sp, #7]
   100003c98:	f9400009 	ldr	x9, [x0]
   100003c9c:	f9401d29 	ldr	x9, [x9, #56]
   100003ca0:	13001d01 	sxtb	w1, w8
   100003ca4:	d63f0120 	blr	x9
   100003ca8:	13001c00 	sxtb	w0, w0
   100003cac:	a9417bfd 	ldp	x29, x30, [sp, #16]
   100003cb0:	910083ff 	add	sp, sp, #0x20
   100003cb4:	d65f03c0 	ret

0000000100003cb8 <__ZNSt3__18ios_base8setstateB8ue170006Ej>:
   100003cb8:	d10083ff 	sub	sp, sp, #0x20
   100003cbc:	a9017bfd 	stp	x29, x30, [sp, #16]
   100003cc0:	910043fd 	add	x29, sp, #0x10
   100003cc4:	f90007e0 	str	x0, [sp, #8]
   100003cc8:	b90007e1 	str	w1, [sp, #4]
   100003ccc:	f94007e0 	ldr	x0, [sp, #8]
   100003cd0:	b9402008 	ldr	w8, [x0, #32]
   100003cd4:	b94007e9 	ldr	w9, [sp, #4]
   100003cd8:	0a09010a 	and	w10, w8, w9
   100003cdc:	4a090108 	eor	w8, w8, w9
   100003ce0:	2a080141 	orr	w1, w10, w8
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
   100003df4:	98082426 	ldrsw	x6, 100014278 <GCC_except_table51+0x1041c>
   100003df8:	e0300102 	st1b	{za0h.b[w12, 2]}, p0, [x8, x16]
   100003dfc:	0102a401 	.inst	0x0102a401 ; undefined
   100003e00:	003c0290 	.inst	0x003c0290 ; NYI
   100003e04:	0402cc00 	mad	z0.b, p3/m, z2.b, z0.b
   100003e08:	d0000380 	adrp	x0, 100075000 <GCC_except_table51+0x711a4>
   100003e0c:	00003802 	udf	#14338
   100003e10:	9c040388 	ldr	q8, 10000be80 <GCC_except_table51+0x8024>
   100003e14:	038c0103 	.inst	0x038c0103 ; undefined
   100003e18:	01000014 	.inst	0x01000014 ; undefined
	...

0000000100003e24 <GCC_except_table15>:
   100003e24:	010d9bff 	.inst	0x010d9bff ; undefined
   100003e28:	28041404 	stnp	w4, w5, [x0, #32]
   100003e2c:	00000101 	udf	#257
   100003e30:	00000000 	udf	#0

0000000100003e34 <GCC_except_table17>:
   100003e34:	1101ffff 	add	wsp, wsp, #0x7f
   100003e38:	0002f400 	.inst	0x0002f400 ; undefined
   100003e3c:	0802f400 	stlxrb	w2, w0, [x0]
   100003e40:	fc0003a4 	stur	d4, [x29]
   100003e44:	00028002 	.inst	0x00028002 ; undefined
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
   100003efc:	00002d6c 	udf	#11628
   100003f00:	00000080 	udf	#128
   100003f04:	00000058 	udf	#88
   100003f08:	00003d18 	udf	#15640
   100003f0c:	00000000 	udf	#0
   100003f10:	00000080 	udf	#128
	...
   100003f20:	000031e4 	udf	#12772
   100003f24:	00003df0 	udf	#15856
   100003f28:	00003384 	udf	#13188
   100003f2c:	00003e24 	udf	#15908
   100003f30:	000033cc 	udf	#13260
   100003f34:	00003e34 	udf	#15924
   100003f38:	00003b20 	udf	#15136
   100003f3c:	00003e4c 	udf	#15948
   100003f40:	00003bdc 	udf	#15324
   100003f44:	00003e5c 	udf	#15964
   100003f48:	00000003 	udf	#3
   100003f4c:	0027000c 	.inst	0x0027000c ; NYI
   100003f50:	000300a8 	.inst	0x000300a8 ; undefined
   100003f54:	00000000 	udf	#0
   100003f58:	02000028 	.inst	0x02000028 ; undefined
   100003f5c:	0100008c 	.inst	0x0100008c ; undefined
   100003f60:	000000e4 	udf	#228
   100003f64:	02000170 	.inst	0x02000170 ; undefined
   100003f68:	01000338 	.inst	0x01000338 ; undefined
   100003f6c:	02000364 	.inst	0x02000364 ; undefined
   100003f70:	010003c4 	.inst	0x010003c4 ; undefined
   100003f74:	04000404 	add	z4.b, p1/m, z4.b, z0.b
   100003f78:	01000438 	.inst	0x01000438 ; undefined
   100003f7c:	05000478 	orr	z24.h, z24.h, #0xf
   100003f80:	06000618 	.inst	0x06000618 ; undefined
   100003f84:	00000644 	udf	#1604
   100003f88:	03000660 	.inst	0x03000660 ; undefined
   100003f8c:	020008dc 	.inst	0x020008dc ; undefined
   100003f90:	00000918 	udf	#2328
   100003f94:	02000930 	.inst	0x02000930 ; undefined
   100003f98:	00000988 	udf	#2440
   100003f9c:	010009ac 	.inst	0x010009ac ; undefined
   100003fa0:	000009e8 	udf	#2536
   100003fa4:	01000a00 	.inst	0x01000a00 ; undefined
   100003fa8:	02000a3c 	.inst	0x02000a3c ; undefined
   100003fac:	01000a84 	.inst	0x01000a84 ; undefined
   100003fb0:	04000aac 	add	z12.b, p2/m, z12.b, z21.b
   100003fb4:	02000ad8 	.inst	0x02000ad8 ; undefined
   100003fb8:	00000bb8 	udf	#3000
   100003fbc:	02000bcc 	.inst	0x02000bcc ; undefined
   100003fc0:	00000c34 	udf	#3124
   100003fc4:	02000c5c 	.inst	0x02000c5c ; undefined
   100003fc8:	01000ca4 	.inst	0x01000ca4 ; undefined
   100003fcc:	00000d54 	udf	#3412
   100003fd0:	01000d68 	.inst	0x01000d68 ; undefined
   100003fd4:	00000d8c 	udf	#3468
   100003fd8:	03000db4 	.inst	0x03000db4 ; undefined
   100003fdc:	01000e04 	.inst	0x01000e04 ; undefined
   100003fe0:	00000e28 	udf	#3624
   100003fe4:	07000e68 	.inst	0x07000e68 ; undefined
   100003fe8:	03000e70 	.inst	0x03000e70 ; undefined
   100003fec:	01000ee4 	.inst	0x01000ee4 ; undefined
   100003ff0:	54000003 	b.cc	100003ff0 <GCC_except_table51+0x194>  // b.lo, b.ul, b.last
   100003ff4:	54000000 	b.eq	100003ff4 <GCC_except_table51+0x198>  // b.none
   100003ff8:	02000000 	.inst	0x02000000 ; undefined
   100003ffc:	00000000 	udf	#0
