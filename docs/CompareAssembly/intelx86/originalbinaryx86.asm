
originalbinary:     file format elf64-x86-64


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
    1108:	48 8d 3d 91 01 00 00 	lea    rdi,[rip+0x191]        # 12a0 <main>
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
    11ed:	03 45 fc             	add    eax,DWORD PTR [rbp-0x4]
    11f0:	5d                   	pop    rbp
    11f1:	c3                   	ret    
    11f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    11f9:	1f 84 00 00 00 00 00 

0000000000001200 <_Z8Subtractii>:
    1200:	55                   	push   rbp
    1201:	48 89 e5             	mov    rbp,rsp
    1204:	53                   	push   rbx
    1205:	50                   	push   rax
    1206:	89 7d f0             	mov    DWORD PTR [rbp-0x10],edi
    1209:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
    120c:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    1210:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1214:	e8 f7 01 00 00       	call   1410 <_ZSt3maxIiERKT_S2_S2_>
    1219:	8b 18                	mov    ebx,DWORD PTR [rax]
    121b:	48 8d 7d f0          	lea    rdi,[rbp-0x10]
    121f:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    1223:	e8 28 02 00 00       	call   1450 <_ZSt3minIiERKT_S2_S2_>
    1228:	2b 18                	sub    ebx,DWORD PTR [rax]
    122a:	89 d8                	mov    eax,ebx
    122c:	48 83 c4 08          	add    rsp,0x8
    1230:	5b                   	pop    rbx
    1231:	5d                   	pop    rbp
    1232:	c3                   	ret    
    1233:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    123a:	84 00 00 00 00 00 

0000000000001240 <_Z9binaryANDii>:
    1240:	55                   	push   rbp
    1241:	48 89 e5             	mov    rbp,rsp
    1244:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1247:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    124a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    124d:	23 45 fc             	and    eax,DWORD PTR [rbp-0x4]
    1250:	5d                   	pop    rbp
    1251:	c3                   	ret    
    1252:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    1259:	1f 84 00 00 00 00 00 

0000000000001260 <_Z8binaryORii>:
    1260:	55                   	push   rbp
    1261:	48 89 e5             	mov    rbp,rsp
    1264:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1267:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    126a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    126d:	0b 45 fc             	or     eax,DWORD PTR [rbp-0x4]
    1270:	5d                   	pop    rbp
    1271:	c3                   	ret    
    1272:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    1279:	1f 84 00 00 00 00 00 

0000000000001280 <_Z9binaryXORii>:
    1280:	55                   	push   rbp
    1281:	48 89 e5             	mov    rbp,rsp
    1284:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1287:	89 75 fc             	mov    DWORD PTR [rbp-0x4],esi
    128a:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    128d:	33 45 fc             	xor    eax,DWORD PTR [rbp-0x4]
    1290:	5d                   	pop    rbp
    1291:	c3                   	ret    
    1292:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
    1299:	1f 84 00 00 00 00 00 

00000000000012a0 <main>:
    12a0:	55                   	push   rbp
    12a1:	48 89 e5             	mov    rbp,rsp
    12a4:	53                   	push   rbx
    12a5:	48 83 ec 18          	sub    rsp,0x18
    12a9:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
    12b0:	48 8b 3d 19 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d19]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    12b7:	48 8d 35 46 0d 00 00 	lea    rsi,[rip+0xd46]        # 2004 <_IO_stdin_used+0x4>
    12be:	e8 8d fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    12c3:	48 8b 3d 16 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d16]        # 3fe0 <_ZSt3cin@GLIBCXX_3.4>
    12ca:	48 8d 75 f0          	lea    rsi,[rbp-0x10]
    12ce:	e8 5d fd ff ff       	call   1030 <_ZNSirsERi@plt>
    12d3:	48 8d 75 f4          	lea    rsi,[rbp-0xc]
    12d7:	48 89 c7             	mov    rdi,rax
    12da:	e8 51 fd ff ff       	call   1030 <_ZNSirsERi@plt>
    12df:	48 8b 3d ea 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cea]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    12e6:	48 8d 35 32 0d 00 00 	lea    rsi,[rip+0xd32]        # 201f <_IO_stdin_used+0x1f>
    12ed:	e8 5e fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    12f2:	48 89 c3             	mov    rbx,rax
    12f5:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    12f8:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    12fb:	e8 e0 fe ff ff       	call   11e0 <_Z3Addii>
    1300:	48 89 df             	mov    rdi,rbx
    1303:	89 c6                	mov    esi,eax
    1305:	e8 76 fd ff ff       	call   1080 <_ZNSolsEi@plt>
    130a:	48 8b 35 af 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2caf]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1311:	48 89 c7             	mov    rdi,rax
    1314:	e8 47 fd ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1319:	48 8b 3d b0 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2cb0]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1320:	48 8d 35 03 0d 00 00 	lea    rsi,[rip+0xd03]        # 202a <_IO_stdin_used+0x2a>
    1327:	e8 24 fd ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    132c:	48 89 c3             	mov    rbx,rax
    132f:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    1332:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    1335:	e8 c6 fe ff ff       	call   1200 <_Z8Subtractii>
    133a:	48 89 df             	mov    rdi,rbx
    133d:	89 c6                	mov    esi,eax
    133f:	e8 3c fd ff ff       	call   1080 <_ZNSolsEi@plt>
    1344:	48 8b 35 75 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c75]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    134b:	48 89 c7             	mov    rdi,rax
    134e:	e8 0d fd ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1353:	48 8b 3d 76 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c76]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    135a:	48 8d 35 d7 0c 00 00 	lea    rsi,[rip+0xcd7]        # 2038 <_IO_stdin_used+0x38>
    1361:	e8 ea fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1366:	48 89 c3             	mov    rbx,rax
    1369:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    136c:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    136f:	e8 cc fe ff ff       	call   1240 <_Z9binaryANDii>
    1374:	48 89 df             	mov    rdi,rbx
    1377:	89 c6                	mov    esi,eax
    1379:	e8 02 fd ff ff       	call   1080 <_ZNSolsEi@plt>
    137e:	48 8b 35 3b 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c3b]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1385:	48 89 c7             	mov    rdi,rax
    1388:	e8 d3 fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    138d:	48 8b 3d 3c 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c3c]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    1394:	48 8d 35 aa 0c 00 00 	lea    rsi,[rip+0xcaa]        # 2045 <_IO_stdin_used+0x45>
    139b:	e8 b0 fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    13a0:	48 89 c3             	mov    rbx,rax
    13a3:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    13a6:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    13a9:	e8 b2 fe ff ff       	call   1260 <_Z8binaryORii>
    13ae:	48 89 df             	mov    rdi,rbx
    13b1:	89 c6                	mov    esi,eax
    13b3:	e8 c8 fc ff ff       	call   1080 <_ZNSolsEi@plt>
    13b8:	48 8b 35 01 2c 00 00 	mov    rsi,QWORD PTR [rip+0x2c01]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    13bf:	48 89 c7             	mov    rdi,rax
    13c2:	e8 99 fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    13c7:	48 8b 3d 02 2c 00 00 	mov    rdi,QWORD PTR [rip+0x2c02]        # 3fd0 <_ZSt4cout@GLIBCXX_3.4>
    13ce:	48 8d 35 7c 0c 00 00 	lea    rsi,[rip+0xc7c]        # 2051 <_IO_stdin_used+0x51>
    13d5:	e8 76 fc ff ff       	call   1050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    13da:	48 89 c3             	mov    rbx,rax
    13dd:	8b 7d f0             	mov    edi,DWORD PTR [rbp-0x10]
    13e0:	8b 75 f4             	mov    esi,DWORD PTR [rbp-0xc]
    13e3:	e8 98 fe ff ff       	call   1280 <_Z9binaryXORii>
    13e8:	48 89 df             	mov    rdi,rbx
    13eb:	89 c6                	mov    esi,eax
    13ed:	e8 8e fc ff ff       	call   1080 <_ZNSolsEi@plt>
    13f2:	48 8b 35 c7 2b 00 00 	mov    rsi,QWORD PTR [rip+0x2bc7]        # 3fc0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    13f9:	48 89 c7             	mov    rdi,rax
    13fc:	e8 5f fc ff ff       	call   1060 <_ZNSolsEPFRSoS_E@plt>
    1401:	31 c0                	xor    eax,eax
    1403:	48 83 c4 18          	add    rsp,0x18
    1407:	5b                   	pop    rbx
    1408:	5d                   	pop    rbp
    1409:	c3                   	ret    
    140a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001410 <_ZSt3maxIiERKT_S2_S2_>:
    1410:	55                   	push   rbp
    1411:	48 89 e5             	mov    rbp,rsp
    1414:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    1418:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    141c:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1420:	8b 00                	mov    eax,DWORD PTR [rax]
    1422:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
    1426:	3b 01                	cmp    eax,DWORD PTR [rcx]
    1428:	7d 0a                	jge    1434 <_ZSt3maxIiERKT_S2_S2_+0x24>
    142a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    142e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1432:	eb 08                	jmp    143c <_ZSt3maxIiERKT_S2_S2_+0x2c>
    1434:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1438:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    143c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1440:	5d                   	pop    rbp
    1441:	c3                   	ret    
    1442:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1449:	00 00 00 
    144c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001450 <_ZSt3minIiERKT_S2_S2_>:
    1450:	55                   	push   rbp
    1451:	48 89 e5             	mov    rbp,rsp
    1454:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
    1458:	48 89 75 f8          	mov    QWORD PTR [rbp-0x8],rsi
    145c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1460:	8b 00                	mov    eax,DWORD PTR [rax]
    1462:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
    1466:	3b 01                	cmp    eax,DWORD PTR [rcx]
    1468:	7d 0a                	jge    1474 <_ZSt3minIiERKT_S2_S2_+0x24>
    146a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    146e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1472:	eb 08                	jmp    147c <_ZSt3minIiERKT_S2_S2_+0x2c>
    1474:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    1478:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    147c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1480:	5d                   	pop    rbp
    1481:	c3                   	ret    

Disassembly of section .fini:

0000000000001484 <_fini>:
    1484:	f3 0f 1e fa          	endbr64 
    1488:	48 83 ec 08          	sub    rsp,0x8
    148c:	48 83 c4 08          	add    rsp,0x8
    1490:	c3                   	ret    
