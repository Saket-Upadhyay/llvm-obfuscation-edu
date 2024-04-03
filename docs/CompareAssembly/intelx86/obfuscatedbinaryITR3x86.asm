
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
    1108:	48 8d 3d 61 05 00 00 	lea    rdi,[rip+0x561]        # 1670 <main>
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
    11ea:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11ed:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
    11f0:	89 ca                	mov    edx,ecx
    11f2:	83 f2 ff             	xor    edx,0xffffffff
    11f5:	81 e2 ff ff ff ff    	and    edx,0xffffffff
    11fb:	be ff ff ff ff       	mov    esi,0xffffffff
    1200:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1206:	89 cf                	mov    edi,ecx
    1208:	21 f7                	and    edi,esi
    120a:	09 fa                	or     edx,edi
    120c:	89 c6                	mov    esi,eax
    120e:	83 f6 ff             	xor    esi,0xffffffff
    1211:	89 d7                	mov    edi,edx
    1213:	21 f7                	and    edi,esi
    1215:	83 f2 ff             	xor    edx,0xffffffff
    1218:	89 c6                	mov    esi,eax
    121a:	21 d6                	and    esi,edx
    121c:	09 f7                	or     edi,esi
    121e:	89 c6                	mov    esi,eax
    1220:	83 f6 ff             	xor    esi,0xffffffff
    1223:	89 fa                	mov    edx,edi
    1225:	31 f2                	xor    edx,esi
    1227:	21 fa                	and    edx,edi
    1229:	89 ce                	mov    esi,ecx
    122b:	83 f6 ff             	xor    esi,0xffffffff
    122e:	89 c7                	mov    edi,eax
    1230:	31 f7                	xor    edi,esi
    1232:	21 c7                	and    edi,eax
    1234:	89 c6                	mov    esi,eax
    1236:	83 f6 ff             	xor    esi,0xffffffff
    1239:	41 89 c8             	mov    r8d,ecx
    123c:	41 21 f0             	and    r8d,esi
    123f:	83 f1 ff             	xor    ecx,0xffffffff
    1242:	21 c8                	and    eax,ecx
    1244:	41 09 c0             	or     r8d,eax
    1247:	89 f8                	mov    eax,edi
    1249:	44 21 c0             	and    eax,r8d
    124c:	44 31 c7             	xor    edi,r8d
    124f:	09 f8                	or     eax,edi
    1251:	89 c1                	mov    ecx,eax
    1253:	83 f1 ff             	xor    ecx,0xffffffff
    1256:	89 d6                	mov    esi,edx
    1258:	31 ce                	xor    esi,ecx
    125a:	21 d6                	and    esi,edx
    125c:	89 d1                	mov    ecx,edx
    125e:	21 c1                	and    ecx,eax
    1260:	31 c2                	xor    edx,eax
    1262:	09 d1                	or     ecx,edx
    1264:	89 f0                	mov    eax,esi
    1266:	21 c8                	and    eax,ecx
    1268:	09 ce                	or     esi,ecx
    126a:	01 f0                	add    eax,esi
    126c:	5d                   	pop    rbp
    126d:	c3                   	ret    
    126e:	66 90                	xchg   ax,ax

0000000000001270 <_Z8Subtractii>:
    1270:	55                   	push   rbp
    1271:	48 89 e5             	mov    rbp,rsp
    1274:	53                   	push   rbx
    1275:	50                   	push   rax
    1276:	89 7d f0             	mov    DWORD PTR [rbp-0x10],edi
    1279:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
    127c:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    1280:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1284:	e8 57 05 00 00       	call   17e0 <_ZSt3maxIiERKT_S2_S2_>
    1289:	8b 18                	mov    ebx,DWORD PTR [rax]
    128b:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    128f:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1293:	e8 88 05 00 00       	call   1820 <_ZSt3minIiERKT_S2_S2_>
    1298:	8b 00                	mov    eax,DWORD PTR [rax]
    129a:	b9 ff ff ff ff       	mov    ecx,0xffffffff
    129f:	81 f1 8f 65 0f 8c    	xor    ecx,0x8c0f658f
    12a5:	89 da                	mov    edx,ebx
    12a7:	31 ca                	xor    edx,ecx
    12a9:	21 da                	and    edx,ebx
    12ab:	89 d9                	mov    ecx,ebx
    12ad:	81 e1 8f 65 0f 8c    	and    ecx,0x8c0f658f
    12b3:	81 f3 8f 65 0f 8c    	xor    ebx,0x8c0f658f
    12b9:	09 d9                	or     ecx,ebx
    12bb:	89 d6                	mov    esi,edx
    12bd:	21 ce                	and    esi,ecx
    12bf:	09 ca                	or     edx,ecx
    12c1:	01 d6                	add    esi,edx
    12c3:	89 f1                	mov    ecx,esi
    12c5:	81 e1 a8 0d a6 f1    	and    ecx,0xf1a60da8
    12cb:	81 ce a8 0d a6 f1    	or     esi,0xf1a60da8
    12d1:	01 f1                	add    ecx,esi
    12d3:	81 c1 c6 b6 59 f4    	add    ecx,0xf459b6c6
    12d9:	29 c1                	sub    ecx,eax
    12db:	81 e9 c6 b6 59 f4    	sub    ecx,0xf459b6c6
    12e1:	81 c1 77 3e 1b c6    	add    ecx,0xc61b3e77
    12e7:	81 e9 a8 0d a6 f1    	sub    ecx,0xf1a60da8
    12ed:	81 e9 77 3e 1b c6    	sub    ecx,0xc61b3e77
    12f3:	89 c8                	mov    eax,ecx
    12f5:	25 23 38 61 98       	and    eax,0x98613823
    12fa:	81 c9 23 38 61 98    	or     ecx,0x98613823
    1300:	01 c8                	add    eax,ecx
    1302:	05 84 a9 a3 ef       	add    eax,0xefa3a984
    1307:	2d 8f 65 0f 8c       	sub    eax,0x8c0f658f
    130c:	2d 84 a9 a3 ef       	sub    eax,0xefa3a984
    1311:	05 35 02 73 4b       	add    eax,0x4b730235
    1316:	2d 23 38 61 98       	sub    eax,0x98613823
    131b:	2d 35 02 73 4b       	sub    eax,0x4b730235
    1320:	48 83 c4 08          	add    rsp,0x8
    1324:	5b                   	pop    rbx
    1325:	5d                   	pop    rbp
    1326:	c3                   	ret    
    1327:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    132e:	00 00 

0000000000001330 <_Z9binaryANDii>:
    1330:	55                   	push   rbp
    1331:	48 89 e5             	mov    rbp,rsp
    1334:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1337:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    133a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    133d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    1340:	89 d1                	mov    ecx,edx
    1342:	83 f1 ff             	xor    ecx,0xffffffff
    1345:	81 e1 ff ff ff ff    	and    ecx,0xffffffff
    134b:	be ff ff ff ff       	mov    esi,0xffffffff
    1350:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1356:	89 d7                	mov    edi,edx
    1358:	21 f7                	and    edi,esi
    135a:	09 f9                	or     ecx,edi
    135c:	83 f1 ff             	xor    ecx,0xffffffff
    135f:	81 f1 ff ff ff ff    	xor    ecx,0xffffffff
    1365:	83 e1 ff             	and    ecx,0xffffffff
    1368:	be ff ff ff ff       	mov    esi,0xffffffff
    136d:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1373:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    1379:	bf ff ff ff ff       	mov    edi,0xffffffff
    137e:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    1384:	81 e7 ff ff ff ff    	and    edi,0xffffffff
    138a:	09 fe                	or     esi,edi
    138c:	83 f6 ff             	xor    esi,0xffffffff
    138f:	89 d7                	mov    edi,edx
    1391:	31 f7                	xor    edi,esi
    1393:	21 d7                	and    edi,edx
    1395:	89 ca                	mov    edx,ecx
    1397:	21 fa                	and    edx,edi
    1399:	31 f9                	xor    ecx,edi
    139b:	09 ca                	or     edx,ecx
    139d:	89 c1                	mov    ecx,eax
    139f:	83 f1 ff             	xor    ecx,0xffffffff
    13a2:	81 e1 ff ff ff ff    	and    ecx,0xffffffff
    13a8:	be ff ff ff ff       	mov    esi,0xffffffff
    13ad:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    13b3:	89 c7                	mov    edi,eax
    13b5:	21 f7                	and    edi,esi
    13b7:	09 f9                	or     ecx,edi
    13b9:	83 f1 ff             	xor    ecx,0xffffffff
    13bc:	89 d6                	mov    esi,edx
    13be:	31 ce                	xor    esi,ecx
    13c0:	21 d6                	and    esi,edx
    13c2:	89 d1                	mov    ecx,edx
    13c4:	83 f1 ff             	xor    ecx,0xffffffff
    13c7:	81 e1 ff ff ff ff    	and    ecx,0xffffffff
    13cd:	bf ff ff ff ff       	mov    edi,0xffffffff
    13d2:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    13d8:	21 fa                	and    edx,edi
    13da:	09 d1                	or     ecx,edx
    13dc:	83 f1 ff             	xor    ecx,0xffffffff
    13df:	89 c2                	mov    edx,eax
    13e1:	31 ca                	xor    edx,ecx
    13e3:	21 c2                	and    edx,eax
    13e5:	89 f1                	mov    ecx,esi
    13e7:	21 d1                	and    ecx,edx
    13e9:	31 d6                	xor    esi,edx
    13eb:	09 f1                	or     ecx,esi
    13ed:	89 c2                	mov    edx,eax
    13ef:	83 f2 ff             	xor    edx,0xffffffff
    13f2:	81 e2 ff ff ff ff    	and    edx,0xffffffff
    13f8:	be ff ff ff ff       	mov    esi,0xffffffff
    13fd:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1403:	21 f0                	and    eax,esi
    1405:	09 c2                	or     edx,eax
    1407:	89 c8                	mov    eax,ecx
    1409:	83 f0 ff             	xor    eax,0xffffffff
    140c:	89 d6                	mov    esi,edx
    140e:	21 c6                	and    esi,eax
    1410:	83 f2 ff             	xor    edx,0xffffffff
    1413:	89 c8                	mov    eax,ecx
    1415:	21 d0                	and    eax,edx
    1417:	09 c6                	or     esi,eax
    1419:	83 f1 ff             	xor    ecx,0xffffffff
    141c:	89 f0                	mov    eax,esi
    141e:	31 c8                	xor    eax,ecx
    1420:	21 f0                	and    eax,esi
    1422:	5d                   	pop    rbp
    1423:	c3                   	ret    
    1424:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    142b:	00 00 00 00 00 

0000000000001430 <_Z8binaryORii>:
    1430:	55                   	push   rbp
    1431:	48 89 e5             	mov    rbp,rsp
    1434:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1437:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    143a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    143d:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    1440:	89 d1                	mov    ecx,edx
    1442:	83 f1 ff             	xor    ecx,0xffffffff
    1445:	81 e1 ff ff ff ff    	and    ecx,0xffffffff
    144b:	be ff ff ff ff       	mov    esi,0xffffffff
    1450:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1456:	89 d7                	mov    edi,edx
    1458:	21 f7                	and    edi,esi
    145a:	09 f9                	or     ecx,edi
    145c:	89 c6                	mov    esi,eax
    145e:	83 f6 ff             	xor    esi,0xffffffff
    1461:	89 cf                	mov    edi,ecx
    1463:	21 f7                	and    edi,esi
    1465:	83 f1 ff             	xor    ecx,0xffffffff
    1468:	89 c6                	mov    esi,eax
    146a:	21 ce                	and    esi,ecx
    146c:	09 f7                	or     edi,esi
    146e:	89 c6                	mov    esi,eax
    1470:	83 f6 ff             	xor    esi,0xffffffff
    1473:	89 f9                	mov    ecx,edi
    1475:	31 f1                	xor    ecx,esi
    1477:	21 f9                	and    ecx,edi
    1479:	89 c6                	mov    esi,eax
    147b:	83 f6 ff             	xor    esi,0xffffffff
    147e:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    1484:	bf ff ff ff ff       	mov    edi,0xffffffff
    1489:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    148f:	41 89 c0             	mov    r8d,eax
    1492:	41 21 f8             	and    r8d,edi
    1495:	44 09 c6             	or     esi,r8d
    1498:	83 f6 ff             	xor    esi,0xffffffff
    149b:	89 d7                	mov    edi,edx
    149d:	31 f7                	xor    edi,esi
    149f:	21 d7                	and    edi,edx
    14a1:	89 d6                	mov    esi,edx
    14a3:	83 f6 ff             	xor    esi,0xffffffff
    14a6:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    14ac:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    14b2:	41 81 f0 ff ff ff ff 	xor    r8d,0xffffffff
    14b9:	44 21 c2             	and    edx,r8d
    14bc:	09 d6                	or     esi,edx
    14be:	83 f6 ff             	xor    esi,0xffffffff
    14c1:	89 c2                	mov    edx,eax
    14c3:	31 f2                	xor    edx,esi
    14c5:	21 c2                	and    edx,eax
    14c7:	89 f8                	mov    eax,edi
    14c9:	21 d0                	and    eax,edx
    14cb:	31 d7                	xor    edi,edx
    14cd:	09 f8                	or     eax,edi
    14cf:	89 c2                	mov    edx,eax
    14d1:	83 f2 ff             	xor    edx,0xffffffff
    14d4:	89 ce                	mov    esi,ecx
    14d6:	31 d6                	xor    esi,edx
    14d8:	21 ce                	and    esi,ecx
    14da:	89 ca                	mov    edx,ecx
    14dc:	83 f2 ff             	xor    edx,0xffffffff
    14df:	89 c7                	mov    edi,eax
    14e1:	21 d7                	and    edi,edx
    14e3:	83 f0 ff             	xor    eax,0xffffffff
    14e6:	21 c1                	and    ecx,eax
    14e8:	09 cf                	or     edi,ecx
    14ea:	89 f0                	mov    eax,esi
    14ec:	21 f8                	and    eax,edi
    14ee:	31 fe                	xor    esi,edi
    14f0:	09 f0                	or     eax,esi
    14f2:	5d                   	pop    rbp
    14f3:	c3                   	ret    
    14f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    14fb:	00 00 00 00 00 

0000000000001500 <_Z9binaryXORii>:
    1500:	55                   	push   rbp
    1501:	48 89 e5             	mov    rbp,rsp
    1504:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1507:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    150a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    150d:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
    1510:	89 c2                	mov    edx,eax
    1512:	83 f2 ff             	xor    edx,0xffffffff
    1515:	81 e2 ff ff ff ff    	and    edx,0xffffffff
    151b:	be ff ff ff ff       	mov    esi,0xffffffff
    1520:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1526:	89 c7                	mov    edi,eax
    1528:	21 f7                	and    edi,esi
    152a:	09 fa                	or     edx,edi
    152c:	83 f2 ff             	xor    edx,0xffffffff
    152f:	81 f2 ff ff ff ff    	xor    edx,0xffffffff
    1535:	83 e2 ff             	and    edx,0xffffffff
    1538:	be ff ff ff ff       	mov    esi,0xffffffff
    153d:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    1543:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    1549:	bf ff ff ff ff       	mov    edi,0xffffffff
    154e:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    1554:	81 e7 ff ff ff ff    	and    edi,0xffffffff
    155a:	09 fe                	or     esi,edi
    155c:	83 f6 ff             	xor    esi,0xffffffff
    155f:	89 c7                	mov    edi,eax
    1561:	31 f7                	xor    edi,esi
    1563:	21 c7                	and    edi,eax
    1565:	89 d6                	mov    esi,edx
    1567:	21 fe                	and    esi,edi
    1569:	31 fa                	xor    edx,edi
    156b:	09 d6                	or     esi,edx
    156d:	89 f2                	mov    edx,esi
    156f:	83 f2 ff             	xor    edx,0xffffffff
    1572:	81 e2 ff ff ff ff    	and    edx,0xffffffff
    1578:	bf ff ff ff ff       	mov    edi,0xffffffff
    157d:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    1583:	21 fe                	and    esi,edi
    1585:	09 f2                	or     edx,esi
    1587:	89 ce                	mov    esi,ecx
    1589:	83 f6 ff             	xor    esi,0xffffffff
    158c:	89 d7                	mov    edi,edx
    158e:	21 f7                	and    edi,esi
    1590:	83 f2 ff             	xor    edx,0xffffffff
    1593:	89 ce                	mov    esi,ecx
    1595:	21 d6                	and    esi,edx
    1597:	09 f7                	or     edi,esi
    1599:	89 ce                	mov    esi,ecx
    159b:	83 f6 ff             	xor    esi,0xffffffff
    159e:	89 fa                	mov    edx,edi
    15a0:	31 f2                	xor    edx,esi
    15a2:	21 fa                	and    edx,edi
    15a4:	89 ce                	mov    esi,ecx
    15a6:	83 f6 ff             	xor    esi,0xffffffff
    15a9:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    15af:	bf ff ff ff ff       	mov    edi,0xffffffff
    15b4:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    15ba:	41 89 c8             	mov    r8d,ecx
    15bd:	41 21 f8             	and    r8d,edi
    15c0:	44 09 c6             	or     esi,r8d
    15c3:	83 f6 ff             	xor    esi,0xffffffff
    15c6:	81 f6 ff ff ff ff    	xor    esi,0xffffffff
    15cc:	83 e6 ff             	and    esi,0xffffffff
    15cf:	bf ff ff ff ff       	mov    edi,0xffffffff
    15d4:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    15da:	81 e7 ff ff ff ff    	and    edi,0xffffffff
    15e0:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    15e6:	41 81 f0 ff ff ff ff 	xor    r8d,0xffffffff
    15ed:	41 81 e0 ff ff ff ff 	and    r8d,0xffffffff
    15f4:	44 09 c7             	or     edi,r8d
    15f7:	83 f7 ff             	xor    edi,0xffffffff
    15fa:	41 89 c8             	mov    r8d,ecx
    15fd:	41 31 f8             	xor    r8d,edi
    1600:	41 21 c8             	and    r8d,ecx
    1603:	89 f1                	mov    ecx,esi
    1605:	44 21 c1             	and    ecx,r8d
    1608:	44 31 c6             	xor    esi,r8d
    160b:	09 f1                	or     ecx,esi
    160d:	89 ce                	mov    esi,ecx
    160f:	83 f6 ff             	xor    esi,0xffffffff
    1612:	81 e6 ff ff ff ff    	and    esi,0xffffffff
    1618:	bf ff ff ff ff       	mov    edi,0xffffffff
    161d:	81 f7 ff ff ff ff    	xor    edi,0xffffffff
    1623:	21 f9                	and    ecx,edi
    1625:	09 ce                	or     esi,ecx
    1627:	89 c1                	mov    ecx,eax
    1629:	83 f1 ff             	xor    ecx,0xffffffff
    162c:	89 f7                	mov    edi,esi
    162e:	21 cf                	and    edi,ecx
    1630:	83 f6 ff             	xor    esi,0xffffffff
    1633:	89 c1                	mov    ecx,eax
    1635:	21 f1                	and    ecx,esi
    1637:	09 cf                	or     edi,ecx
    1639:	83 f0 ff             	xor    eax,0xffffffff
    163c:	89 f9                	mov    ecx,edi
    163e:	31 c1                	xor    ecx,eax
    1640:	21 f9                	and    ecx,edi
    1642:	89 c8                	mov    eax,ecx
    1644:	83 f0 ff             	xor    eax,0xffffffff
    1647:	89 d6                	mov    esi,edx
    1649:	31 c6                	xor    esi,eax
    164b:	21 d6                	and    esi,edx
    164d:	89 d0                	mov    eax,edx
    164f:	83 f0 ff             	xor    eax,0xffffffff
    1652:	89 cf                	mov    edi,ecx
    1654:	21 c7                	and    edi,eax
    1656:	83 f1 ff             	xor    ecx,0xffffffff
    1659:	21 ca                	and    edx,ecx
    165b:	09 d7                	or     edi,edx
    165d:	89 f0                	mov    eax,esi
    165f:	21 f8                	and    eax,edi
    1661:	31 fe                	xor    esi,edi
    1663:	09 f0                	or     eax,esi
    1665:	5d                   	pop    rbp
    1666:	c3                   	ret    
    1667:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    166e:	00 00 

0000000000001670 <main>:
    1670:	55                   	push   rbp
    1671:	48 89 e5             	mov    rbp,rsp
    1674:	53                   	push   rbx
    1675:	48 83 ec 18          	sub    rsp,0x18
    1679:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    1680:	48 8b 3d 49 29 00 00 	mov    rdi,QWORD PTR [rip+0x2949]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1687:	48 8d 35 76 09 00 00 	lea    rsi,[rip+0x976]        # 2004 <_IO_stdin_used+0x4>
    168e:	e8 bd f9 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1693:	48 8b 3d 46 29 00 00 	mov    rdi,QWORD PTR [rip+0x2946]        # 3fe0 <_ZSt3cin@GLIBCXX_3.4>
    169a:	48 8d 75 f0          	lea    rsi,[rbp-0x10]
    169e:	e8 8d f9 ff ff       	call   1030 <_ZNSirsERi@plt>
    16a3:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    16a7:	48 89 c7             	mov    rdi,rax
    16aa:	e8 81 f9 ff ff       	call   1030 <_ZNSirsERi@plt>
    16af:	48 8b 3d 1a 29 00 00 	mov    rdi,QWORD PTR [rip+0x291a]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    16b6:	48 8d 35 62 09 00 00 	lea    rsi,[rip+0x962]        # 201f <_IO_stdin_used+0x1f>
    16bd:	e8 8e f9 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    16c2:	48 89 c3             	mov    rbx,rax
    16c5:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    16c8:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    16cb:	e8 10 fb ff ff       	call   11e0 <_Z3Addii>
    16d0:	48 89 df             	mov    rdi,rbx
    16d3:	89 c6                	mov    esi,eax
    16d5:	e8 a6 f9 ff ff       	call   1080 <_ZNSolsEi@plt>
    16da:	48 8b 35 df 28 00 00 	mov    rsi,QWORD PTR [rip+0x28df]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    16e1:	48 89 c7             	mov    rdi,rax
    16e4:	e8 77 f9 ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    16e9:	48 8b 3d e0 28 00 00 	mov    rdi,QWORD PTR [rip+0x28e0]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    16f0:	48 8d 35 33 09 00 00 	lea    rsi,[rip+0x933]        # 202a <_IO_stdin_used+0x2a>
    16f7:	e8 54 f9 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    16fc:	48 89 c3             	mov    rbx,rax
    16ff:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1702:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    1705:	e8 66 fb ff ff       	call   1270 <_Z8Subtractii>
    170a:	48 89 df             	mov    rdi,rbx
    170d:	89 c6                	mov    esi,eax
    170f:	e8 6c f9 ff ff       	call   1080 <_ZNSolsEi@plt>
    1714:	48 8b 35 a5 28 00 00 	mov    rsi,QWORD PTR [rip+0x28a5]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    171b:	48 89 c7             	mov    rdi,rax
    171e:	e8 3d f9 ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1723:	48 8b 3d a6 28 00 00 	mov    rdi,QWORD PTR [rip+0x28a6]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    172a:	48 8d 35 07 09 00 00 	lea    rsi,[rip+0x907]        # 2038 <_IO_stdin_used+0x38>
    1731:	e8 1a f9 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1736:	48 89 c3             	mov    rbx,rax
    1739:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    173c:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    173f:	e8 ec fb ff ff       	call   1330 <_Z9binaryANDii>
    1744:	48 89 df             	mov    rdi,rbx
    1747:	89 c6                	mov    esi,eax
    1749:	e8 32 f9 ff ff       	call   1080 <_ZNSolsEi@plt>
    174e:	48 8b 35 6b 28 00 00 	mov    rsi,QWORD PTR [rip+0x286b]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1755:	48 89 c7             	mov    rdi,rax
    1758:	e8 03 f9 ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    175d:	48 8b 3d 6c 28 00 00 	mov    rdi,QWORD PTR [rip+0x286c]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1764:	48 8d 35 da 08 00 00 	lea    rsi,[rip+0x8da]        # 2045 <_IO_stdin_used+0x45>
    176b:	e8 e0 f8 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1770:	48 89 c3             	mov    rbx,rax
    1773:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1776:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    1779:	e8 b2 fc ff ff       	call   1430 <_Z8binaryORii>
    177e:	48 89 df             	mov    rdi,rbx
    1781:	89 c6                	mov    esi,eax
    1783:	e8 f8 f8 ff ff       	call   1080 <_ZNSolsEi@plt>
    1788:	48 8b 35 31 28 00 00 	mov    rsi,QWORD PTR [rip+0x2831]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    178f:	48 89 c7             	mov    rdi,rax
    1792:	e8 c9 f8 ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1797:	48 8b 3d 32 28 00 00 	mov    rdi,QWORD PTR [rip+0x2832]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    179e:	48 8d 35 ac 08 00 00 	lea    rsi,[rip+0x8ac]        # 2051 <_IO_stdin_used+0x51>
    17a5:	e8 a6 f8 ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    17aa:	48 89 c3             	mov    rbx,rax
    17ad:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    17b0:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    17b3:	e8 48 fd ff ff       	call   1500 <_Z9binaryXORii>
    17b8:	48 89 df             	mov    rdi,rbx
    17bb:	89 c6                	mov    esi,eax
    17bd:	e8 be f8 ff ff       	call   1080 <_ZNSolsEi@plt>
    17c2:	48 8b 35 f7 27 00 00 	mov    rsi,QWORD PTR [rip+0x27f7]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    17c9:	48 89 c7             	mov    rdi,rax
    17cc:	e8 8f f8 ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    17d1:	31 c0                	xor    eax,eax
    17d3:	48 83 c4 18          	add    rsp,0x18
    17d7:	5b                   	pop    rbx
    17d8:	5d                   	pop    rbp
    17d9:	c3                   	ret    
    17da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000017e0 <_ZSt3maxIiERKT_S2_S2_>:
    17e0:	55                   	push   rbp
    17e1:	48 89 e5             	mov    rbp,rsp
    17e4:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    17e8:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    17ec:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    17f0:	8b 00                	mov    eax,DWORD PTR [rax]
    17f2:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    17f6:	3b 01                	cmp    eax,DWORD PTR [rcx]
    17f8:	7d 0a                	jge    1804 <_ZSt3maxIiERKT_S2_S2_+0x24>
    17fa:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    17fe:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1802:	eb 08                	jmp    180c <_ZSt3maxIiERKT_S2_S2_+0x2c>
    1804:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1808:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    180c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1810:	5d                   	pop    rbp
    1811:	c3                   	ret    
    1812:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1819:	00 00 00 
    181c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001820 <_ZSt3minIiERKT_S2_S2_>:
    1820:	55                   	push   rbp
    1821:	48 89 e5             	mov    rbp,rsp
    1824:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    1828:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    182c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1830:	8b 00                	mov    eax,DWORD PTR [rax]
    1832:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
    1836:	3b 01                	cmp    eax,DWORD PTR [rcx]
    1838:	7d 0a                	jge    1844 <_ZSt3minIiERKT_S2_S2_+0x24>
    183a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    183e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1842:	eb 08                	jmp    184c <_ZSt3minIiERKT_S2_S2_+0x2c>
    1844:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1848:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    184c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1850:	5d                   	pop    rbp
    1851:	c3                   	ret    

Disassembly of section .fini:

0000000000001854 <_fini>:
    1854:	f3 0f 1e fa          	endbr64 
    1858:	48 83 ec 08          	sub    rsp,0x8
    185c:	48 83 c4 08          	add    rsp,0x8
    1860:	c3                   	ret    
