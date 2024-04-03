
obfuscatedbinary:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <_ZNSirsERi@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <_ZNSirsERi@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <_ZNSirsERi@GLIBCXX_3.4>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__cxa_atexit@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <__cxa_atexit@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <_ZNSolsEPFRSoS_E@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <_ZNSt8ios_base4InitC1Ev@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4038 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <_ZNSolsEi@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4040 <_ZNSolsEi@GLIBCXX_3.4>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	ff 25 22 2f 00 00    	jmp    QWORD PTR [rip+0x2f22]        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    1096:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000010a0 <__cxx_global_var_init>:
    10a0:	55                   	push   rbp
    10a1:	48 89 e5             	mov    rbp,rsp
    10a4:	53                   	push   rbx
    10a5:	50                   	push   rax
    10a6:	48 8d 1d ac 2f 00 00 	lea    rbx,[rip+0x2fac]        # 4059 <_ZStL8__ioinit>
    10ad:	48 89 df             	mov    rdi,rbx
    10b0:	e8 bb ff ff ff       	call   1070 <_ZNSt8ios_base4InitC1Ev@plt>
    10b5:	48 8b 3d 3c 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f3c]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    10bc:	48 8d 15 8d 2f 00 00 	lea    rdx,[rip+0x2f8d]        # 4050 <__dso_handle>
    10c3:	48 89 de             	mov    rsi,rbx
    10c6:	e8 75 ff ff ff       	call   1040 <__cxa_atexit@plt>
    10cb:	48 83 c4 08          	add    rsp,0x8
    10cf:	5b                   	pop    rbx
    10d0:	5d                   	pop    rbp
    10d1:	c3                   	ret    
    10d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    10d9:	1f 84 00 00 00 00 00 

00000000000010e0 <_GLOBAL__sub_I_ObfuscationTest.cpp>:
    10e0:	55                   	push   rbp
    10e1:	48 89 e5             	mov    rbp,rsp
    10e4:	e8 b7 ff ff ff       	call   10a0 <__cxx_global_var_init>
    10e9:	5d                   	pop    rbp
    10ea:	c3                   	ret    
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <_start>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	31 ed                	xor    ebp,ebp
    10f6:	49 89 d1             	mov    r9,rdx
    10f9:	5e                   	pop    rsi
    10fa:	48 89 e2             	mov    rdx,rsp
    10fd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1101:	50                   	push   rax
    1102:	54                   	push   rsp
    1103:	45 31 c0             	xor    r8d,r8d
    1106:	31 c9                	xor    ecx,ecx
    1108:	48 8d 3d b1 01 00 00 	lea    rdi,[rip+0x1b1]        # 12c0 <main>
    110f:	ff 15 b3 2e 00 00    	call   QWORD PTR [rip+0x2eb3]        # 3fc8 <__libc_start_main@GLIBC_2.34>
    1115:	f4                   	hlt    
    1116:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    111d:	00 00 00 

0000000000001120 <deregister_tm_clones>:
    1120:	48 8d 3d 31 2f 00 00 	lea    rdi,[rip+0x2f31]        # 4058 <__TMC_END__>
    1127:	48 8d 05 2a 2f 00 00 	lea    rax,[rip+0x2f2a]        # 4058 <__TMC_END__>
    112e:	48 39 f8             	cmp    rax,rdi
    1131:	74 15                	je     1148 <deregister_tm_clones+0x28>
    1133:	48 8b 05 9e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e9e]        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    113a:	48 85 c0             	test   rax,rax
    113d:	74 09                	je     1148 <deregister_tm_clones+0x28>
    113f:	ff e0                	jmp    rax
    1141:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1148:	c3                   	ret    
    1149:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001150 <register_tm_clones>:
    1150:	48 8d 3d 01 2f 00 00 	lea    rdi,[rip+0x2f01]        # 4058 <__TMC_END__>
    1157:	48 8d 35 fa 2e 00 00 	lea    rsi,[rip+0x2efa]        # 4058 <__TMC_END__>
    115e:	48 29 fe             	sub    rsi,rdi
    1161:	48 89 f0             	mov    rax,rsi
    1164:	48 c1 ee 3f          	shr    rsi,0x3f
    1168:	48 c1 f8 03          	sar    rax,0x3
    116c:	48 01 c6             	add    rsi,rax
    116f:	48 d1 fe             	sar    rsi,1
    1172:	74 14                	je     1188 <register_tm_clones+0x38>
    1174:	48 8b 05 75 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e75]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    117b:	48 85 c0             	test   rax,rax
    117e:	74 08                	je     1188 <register_tm_clones+0x38>
    1180:	ff e0                	jmp    rax
    1182:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1188:	c3                   	ret    
    1189:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001190 <__do_global_dtors_aux>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	80 3d bd 2e 00 00 00 	cmp    BYTE PTR [rip+0x2ebd],0x0        # 4058 <__TMC_END__>
    119b:	75 2b                	jne    11c8 <__do_global_dtors_aux+0x38>
    119d:	55                   	push   rbp
    119e:	48 83 3d 12 2e 00 00 	cmp    QWORD PTR [rip+0x2e12],0x0        # 3fb8 <__cxa_finalize@GLIBC_2.2.5>
    11a5:	00 
    11a6:	48 89 e5             	mov    rbp,rsp
    11a9:	74 0c                	je     11b7 <__do_global_dtors_aux+0x27>
    11ab:	48 8b 3d 9e 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2e9e]        # 4050 <__dso_handle>
    11b2:	e8 d9 fe ff ff       	call   1090 <__cxa_finalize@plt>
    11b7:	e8 64 ff ff ff       	call   1120 <deregister_tm_clones>
    11bc:	c6 05 95 2e 00 00 01 	mov    BYTE PTR [rip+0x2e95],0x1        # 4058 <__TMC_END__>
    11c3:	5d                   	pop    rbp
    11c4:	c3                   	ret    
    11c5:	0f 1f 00             	nop    DWORD PTR [rax]
    11c8:	c3                   	ret    
    11c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011d0 <frame_dummy>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	e9 77 ff ff ff       	jmp    1150 <register_tm_clones>
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <_Z3Addii>:
    11e0:	55                   	push   rbp
    11e1:	48 89 e5             	mov    rbp,rsp
    11e4:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    11e7:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    11ea:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
    11ed:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    11f0:	89 c8                	mov    eax,ecx
    11f2:	21 d0                	and    eax,edx
    11f4:	09 d1                	or     ecx,edx
    11f6:	01 c8                	add    eax,ecx
    11f8:	5d                   	pop    rbp
    11f9:	c3                   	ret    
    11fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001200 <_Z8Subtractii>:
    1200:	55                   	push   rbp
    1201:	48 89 e5             	mov    rbp,rsp
    1204:	53                   	push   rbx
    1205:	50                   	push   rax
    1206:	89 7d f0             	mov    DWORD PTR [rbp-0x10],edi
    1209:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
    120c:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    1210:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1214:	e8 17 02 00 00       	call   1430 <_ZSt3maxIiERKT_S2_S2_>
    1219:	8b 18                	mov    ebx,DWORD PTR [rax]
    121b:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    121f:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1223:	e8 48 02 00 00       	call   1470 <_ZSt3minIiERKT_S2_S2_>
    1228:	8b 00                	mov    eax,DWORD PTR [rax]
    122a:	81 c3 13 d3 7d a1    	add    ebx,0xa17dd313
    1230:	29 c3                	sub    ebx,eax
    1232:	81 eb 13 d3 7d a1    	sub    ebx,0xa17dd313
    1238:	89 d8                	mov    eax,ebx
    123a:	48 83 c4 08          	add    rsp,0x8
    123e:	5b                   	pop    rbx
    123f:	5d                   	pop    rbp
    1240:	c3                   	ret    
    1241:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    1248:	0f 1f 84 00 00 00 00 
    124f:	00 

0000000000001250 <_Z9binaryANDii>:
    1250:	55                   	push   rbp
    1251:	48 89 e5             	mov    rbp,rsp
    1254:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1257:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    125a:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
    125d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    1260:	83 f2 ff             	xor    edx,0xffffffff
    1263:	89 c8                	mov    eax,ecx
    1265:	31 d0                	xor    eax,edx
    1267:	21 c8                	and    eax,ecx
    1269:	5d                   	pop    rbp
    126a:	c3                   	ret    
    126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001270 <_Z8binaryORii>:
    1270:	55                   	push   rbp
    1271:	48 89 e5             	mov    rbp,rsp
    1274:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1277:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    127a:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
    127d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    1280:	89 c8                	mov    eax,ecx
    1282:	21 d0                	and    eax,edx
    1284:	31 d1                	xor    ecx,edx
    1286:	09 c8                	or     eax,ecx
    1288:	5d                   	pop    rbp
    1289:	c3                   	ret    
    128a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001290 <_Z9binaryXORii>:
    1290:	55                   	push   rbp
    1291:	48 89 e5             	mov    rbp,rsp
    1294:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1297:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    129a:	8b 4d f8             	mov    ecx,DWORD PTR [rbp-0x8]
    129d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    12a0:	89 ce                	mov    esi,ecx
    12a2:	83 f6 ff             	xor    esi,0xffffffff
    12a5:	89 d0                	mov    eax,edx
    12a7:	21 f0                	and    eax,esi
    12a9:	83 f2 ff             	xor    edx,0xffffffff
    12ac:	21 d1                	and    ecx,edx
    12ae:	09 c8                	or     eax,ecx
    12b0:	5d                   	pop    rbp
    12b1:	c3                   	ret    
    12b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    12b9:	1f 84 00 00 00 00 00 

00000000000012c0 <main>:
    12c0:	55                   	push   rbp
    12c1:	48 89 e5             	mov    rbp,rsp
    12c4:	53                   	push   rbx
    12c5:	48 83 ec 18          	sub    rsp,0x18
    12c9:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    12d0:	48 8b 3d f9 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cf9]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    12d7:	48 8d 35 26 0d 00 00 	lea    rsi,[rip+0xd26]        # 2004 <_IO_stdin_used+0x4>
    12de:	e8 6d fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    12e3:	48 8b 3d f6 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cf6]        # 3fe0 <_ZSt3cin@GLIBCXX_3.4>
    12ea:	48 8d 75 f0          	lea    rsi,[rbp-0x10]
    12ee:	e8 3d fd ff ff       	call   1030 <_ZNSirsERi@plt>
    12f3:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    12f7:	48 89 c7             	mov    rdi,rax
    12fa:	e8 31 fd ff ff       	call   1030 <_ZNSirsERi@plt>
    12ff:	48 8b 3d ca 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cca]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1306:	48 8d 35 12 0d 00 00 	lea    rsi,[rip+0xd12]        # 201f <_IO_stdin_used+0x1f>
    130d:	e8 3e fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1312:	48 89 c3             	mov    rbx,rax
    1315:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1318:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    131b:	e8 c0 fe ff ff       	call   11e0 <_Z3Addii>
    1320:	48 89 df             	mov    rdi,rbx
    1323:	89 c6                	mov    esi,eax
    1325:	e8 56 fd ff ff       	call   1080 <_ZNSolsEi@plt>
    132a:	48 8b 35 8f 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c8f]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1331:	48 89 c7             	mov    rdi,rax
    1334:	e8 27 fd ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1339:	48 8b 3d 90 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c90]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1340:	48 8d 35 e3 0c 00 00 	lea    rsi,[rip+0xce3]        # 202a <_IO_stdin_used+0x2a>
    1347:	e8 04 fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    134c:	48 89 c3             	mov    rbx,rax
    134f:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1352:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    1355:	e8 a6 fe ff ff       	call   1200 <_Z8Subtractii>
    135a:	48 89 df             	mov    rdi,rbx
    135d:	89 c6                	mov    esi,eax
    135f:	e8 1c fd ff ff       	call   1080 <_ZNSolsEi@plt>
    1364:	48 8b 35 55 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c55]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    136b:	48 89 c7             	mov    rdi,rax
    136e:	e8 ed fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1373:	48 8b 3d 56 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c56]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    137a:	48 8d 35 b7 0c 00 00 	lea    rsi,[rip+0xcb7]        # 2038 <_IO_stdin_used+0x38>
    1381:	e8 ca fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1386:	48 89 c3             	mov    rbx,rax
    1389:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    138c:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    138f:	e8 bc fe ff ff       	call   1250 <_Z9binaryANDii>
    1394:	48 89 df             	mov    rdi,rbx
    1397:	89 c6                	mov    esi,eax
    1399:	e8 e2 fc ff ff       	call   1080 <_ZNSolsEi@plt>
    139e:	48 8b 35 1b 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c1b]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    13a5:	48 89 c7             	mov    rdi,rax
    13a8:	e8 b3 fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    13ad:	48 8b 3d 1c 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c1c]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    13b4:	48 8d 35 8a 0c 00 00 	lea    rsi,[rip+0xc8a]        # 2045 <_IO_stdin_used+0x45>
    13bb:	e8 90 fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    13c0:	48 89 c3             	mov    rbx,rax
    13c3:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    13c6:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    13c9:	e8 a2 fe ff ff       	call   1270 <_Z8binaryORii>
    13ce:	48 89 df             	mov    rdi,rbx
    13d1:	89 c6                	mov    esi,eax
    13d3:	e8 a8 fc ff ff       	call   1080 <_ZNSolsEi@plt>
    13d8:	48 8b 35 e1 2b 00 00 	mov    rsi,QWORD PTR [rip+0x2be1]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    13df:	48 89 c7             	mov    rdi,rax
    13e2:	e8 79 fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    13e7:	48 8b 3d e2 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2be2]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    13ee:	48 8d 35 5c 0c 00 00 	lea    rsi,[rip+0xc5c]        # 2051 <_IO_stdin_used+0x51>
    13f5:	e8 56 fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    13fa:	48 89 c3             	mov    rbx,rax
    13fd:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1400:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    1403:	e8 88 fe ff ff       	call   1290 <_Z9binaryXORii>
    1408:	48 89 df             	mov    rdi,rbx
    140b:	89 c6                	mov    esi,eax
    140d:	e8 6e fc ff ff       	call   1080 <_ZNSolsEi@plt>
    1412:	48 8b 35 a7 2b 00 00 	mov    rsi,QWORD PTR [rip+0x2ba7]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1419:	48 89 c7             	mov    rdi,rax
    141c:	e8 3f fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1421:	31 c0                	xor    eax,eax
    1423:	48 83 c4 18          	add    rsp,0x18
    1427:	5b                   	pop    rbx
    1428:	5d                   	pop    rbp
    1429:	c3                   	ret    
    142a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001430 <_ZSt3maxIiERKT_S2_S2_>:
    1430:	55                   	push   rbp
    1431:	48 89 e5             	mov    rbp,rsp
    1434:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    1438:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    143c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1440:	8b 00                	mov    eax,DWORD PTR [rax]
    1442:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    1446:	3b 01                	cmp    eax,DWORD PTR [rcx]
    1448:	7d 0a                	jge    1454 <_ZSt3maxIiERKT_S2_S2_+0x24>
    144a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    144e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1452:	eb 08                	jmp    145c <_ZSt3maxIiERKT_S2_S2_+0x2c>
    1454:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1458:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    145c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1460:	5d                   	pop    rbp
    1461:	c3                   	ret    
    1462:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1469:	00 00 00 
    146c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001470 <_ZSt3minIiERKT_S2_S2_>:
    1470:	55                   	push   rbp
    1471:	48 89 e5             	mov    rbp,rsp
    1474:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    1478:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    147c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1480:	8b 00                	mov    eax,DWORD PTR [rax]
    1482:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
    1486:	3b 01                	cmp    eax,DWORD PTR [rcx]
    1488:	7d 0a                	jge    1494 <_ZSt3minIiERKT_S2_S2_+0x24>
    148a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    148e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1492:	eb 08                	jmp    149c <_ZSt3minIiERKT_S2_S2_+0x2c>
    1494:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1498:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    149c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    14a0:	5d                   	pop    rbp
    14a1:	c3                   	ret    

Disassembly of section .fini:

00000000000014a4 <_fini>:
    14a4:	f3 0f 1e fa          	endbr64 
    14a8:	48 83 ec 08          	sub    rsp,0x8
    14ac:	48 83 c4 08          	add    rsp,0x8
    14b0:	c3                   	ret    
