
teste:     formato de ficheiro elf64-x86-64


Desmontagem da secção .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Desmontagem da secção .plt:

0000000000001020 <.plt>:
    1020:	ff 35 da 3e 00 00    	push   0x3eda(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 dc 3e 00 00    	jmp    *0x3edc(%rip)        # 4f08 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 da 3e 00 00    	jmp    *0x3eda(%rip)        # 4f10 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <__errno_location@plt>:
    1040:	ff 25 d2 3e 00 00    	jmp    *0x3ed2(%rip)        # 4f18 <__errno_location@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <strcpy@plt>:
    1050:	ff 25 ca 3e 00 00    	jmp    *0x3eca(%rip)        # 4f20 <strcpy@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <puts@plt>:
    1060:	ff 25 c2 3e 00 00    	jmp    *0x3ec2(%rip)        # 4f28 <puts@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <write@plt>:
    1070:	ff 25 ba 3e 00 00    	jmp    *0x3eba(%rip)        # 4f30 <write@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <__stack_chk_fail@plt>:
    1080:	ff 25 b2 3e 00 00    	jmp    *0x3eb2(%rip)        # 4f38 <__stack_chk_fail@GLIBC_2.4>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

0000000000001090 <alarm@plt>:
    1090:	ff 25 aa 3e 00 00    	jmp    *0x3eaa(%rip)        # 4f40 <alarm@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <.plt>

00000000000010a0 <close@plt>:
    10a0:	ff 25 a2 3e 00 00    	jmp    *0x3ea2(%rip)        # 4f48 <close@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <.plt>

00000000000010b0 <read@plt>:
    10b0:	ff 25 9a 3e 00 00    	jmp    *0x3e9a(%rip)        # 4f50 <read@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <.plt>

00000000000010c0 <fgets@plt>:
    10c0:	ff 25 92 3e 00 00    	jmp    *0x3e92(%rip)        # 4f58 <fgets@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <.plt>

00000000000010d0 <signal@plt>:
    10d0:	ff 25 8a 3e 00 00    	jmp    *0x3e8a(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <.plt>

00000000000010e0 <gethostbyname@plt>:
    10e0:	ff 25 82 3e 00 00    	jmp    *0x3e82(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <.plt>

00000000000010f0 <__memmove_chk@plt>:
    10f0:	ff 25 7a 3e 00 00    	jmp    *0x3e7a(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <.plt>

0000000000001100 <strtol@plt>:
    1100:	ff 25 72 3e 00 00    	jmp    *0x3e72(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <.plt>

0000000000001110 <fflush@plt>:
    1110:	ff 25 6a 3e 00 00    	jmp    *0x3e6a(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <.plt>

0000000000001120 <__isoc99_sscanf@plt>:
    1120:	ff 25 62 3e 00 00    	jmp    *0x3e62(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <.plt>

0000000000001130 <__printf_chk@plt>:
    1130:	ff 25 5a 3e 00 00    	jmp    *0x3e5a(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <.plt>

0000000000001140 <fopen@plt>:
    1140:	ff 25 52 3e 00 00    	jmp    *0x3e52(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <.plt>

0000000000001150 <exit@plt>:
    1150:	ff 25 4a 3e 00 00    	jmp    *0x3e4a(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <.plt>

0000000000001160 <connect@plt>:
    1160:	ff 25 42 3e 00 00    	jmp    *0x3e42(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <.plt>

0000000000001170 <__fprintf_chk@plt>:
    1170:	ff 25 3a 3e 00 00    	jmp    *0x3e3a(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <.plt>

0000000000001180 <sleep@plt>:
    1180:	ff 25 32 3e 00 00    	jmp    *0x3e32(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <.plt>

0000000000001190 <__ctype_b_loc@plt>:
    1190:	ff 25 2a 3e 00 00    	jmp    *0x3e2a(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <.plt>

00000000000011a0 <__sprintf_chk@plt>:
    11a0:	ff 25 22 3e 00 00    	jmp    *0x3e22(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <.plt>

00000000000011b0 <socket@plt>:
    11b0:	ff 25 1a 3e 00 00    	jmp    *0x3e1a(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <.plt>

Desmontagem da secção .plt.got:

00000000000011c0 <__cxa_finalize@plt>:
    11c0:	ff 25 32 3e 00 00    	jmp    *0x3e32(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11c6:	66 90                	xchg   %ax,%ax

Desmontagem da secção .text:

00000000000011d0 <_start>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	31 ed                	xor    %ebp,%ebp
    11d6:	49 89 d1             	mov    %rdx,%r9
    11d9:	5e                   	pop    %rsi
    11da:	48 89 e2             	mov    %rsp,%rdx
    11dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11e1:	50                   	push   %rax
    11e2:	54                   	push   %rsp
    11e3:	4c 8d 05 b6 19 00 00 	lea    0x19b6(%rip),%r8        # 2ba0 <__libc_csu_fini>
    11ea:	48 8d 0d 3f 19 00 00 	lea    0x193f(%rip),%rcx        # 2b30 <__libc_csu_init>
    11f1:	48 8d 3d e2 00 00 00 	lea    0xe2(%rip),%rdi        # 12da <main>
    11f8:	ff 15 e2 3d 00 00    	call   *0x3de2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    11fe:	f4                   	hlt
    11ff:	90                   	nop

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 79 44 00 00 	lea    0x4479(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    1207:	55                   	push   %rbp
    1208:	48 8d 05 71 44 00 00 	lea    0x4471(%rip),%rax        # 5680 <stdout@GLIBC_2.2.5>
    120f:	48 39 f8             	cmp    %rdi,%rax
    1212:	48 89 e5             	mov    %rsp,%rbp
    1215:	74 19                	je     1230 <deregister_tm_clones+0x30>
    1217:	48 8b 05 ba 3d 00 00 	mov    0x3dba(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    121e:	48 85 c0             	test   %rax,%rax
    1221:	74 0d                	je     1230 <deregister_tm_clones+0x30>
    1223:	5d                   	pop    %rbp
    1224:	ff e0                	jmp    *%rax
    1226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    122d:	00 00 00 
    1230:	5d                   	pop    %rbp
    1231:	c3                   	ret
    1232:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1239:	00 00 00 00 
    123d:	0f 1f 00             	nopl   (%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d 39 44 00 00 	lea    0x4439(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    1247:	48 8d 35 32 44 00 00 	lea    0x4432(%rip),%rsi        # 5680 <stdout@GLIBC_2.2.5>
    124e:	55                   	push   %rbp
    124f:	48 29 fe             	sub    %rdi,%rsi
    1252:	48 89 e5             	mov    %rsp,%rbp
    1255:	48 c1 fe 03          	sar    $0x3,%rsi
    1259:	48 89 f0             	mov    %rsi,%rax
    125c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1260:	48 01 c6             	add    %rax,%rsi
    1263:	48 d1 fe             	sar    %rsi
    1266:	74 18                	je     1280 <register_tm_clones+0x40>
    1268:	48 8b 05 81 3d 00 00 	mov    0x3d81(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    126f:	48 85 c0             	test   %rax,%rax
    1272:	74 0c                	je     1280 <register_tm_clones+0x40>
    1274:	5d                   	pop    %rbp
    1275:	ff e0                	jmp    *%rax
    1277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    127e:	00 00 
    1280:	5d                   	pop    %rbp
    1281:	c3                   	ret
    1282:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1289:	00 00 00 00 
    128d:	0f 1f 00             	nopl   (%rax)

0000000000001290 <__do_global_dtors_aux>:
    1290:	80 3d 11 44 00 00 00 	cmpb   $0x0,0x4411(%rip)        # 56a8 <completed.7658>
    1297:	75 2f                	jne    12c8 <__do_global_dtors_aux+0x38>
    1299:	48 83 3d 57 3d 00 00 	cmpq   $0x0,0x3d57(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    12a0:	00 
    12a1:	55                   	push   %rbp
    12a2:	48 89 e5             	mov    %rsp,%rbp
    12a5:	74 0c                	je     12b3 <__do_global_dtors_aux+0x23>
    12a7:	48 8b 3d 5a 3d 00 00 	mov    0x3d5a(%rip),%rdi        # 5008 <__dso_handle>
    12ae:	e8 0d ff ff ff       	call   11c0 <__cxa_finalize@plt>
    12b3:	e8 48 ff ff ff       	call   1200 <deregister_tm_clones>
    12b8:	c6 05 e9 43 00 00 01 	movb   $0x1,0x43e9(%rip)        # 56a8 <completed.7658>
    12bf:	5d                   	pop    %rbp
    12c0:	c3                   	ret
    12c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c8:	f3 c3                	repz ret
    12ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012d0 <frame_dummy>:
    12d0:	55                   	push   %rbp
    12d1:	48 89 e5             	mov    %rsp,%rbp
    12d4:	5d                   	pop    %rbp
    12d5:	e9 66 ff ff ff       	jmp    1240 <register_tm_clones>

00000000000012da <main>:
    12da:	53                   	push   %rbx
    12db:	83 ff 01             	cmp    $0x1,%edi
    12de:	0f 84 f8 00 00 00    	je     13dc <main+0x102>
    12e4:	48 89 f3             	mov    %rsi,%rbx
    12e7:	83 ff 02             	cmp    $0x2,%edi
    12ea:	0f 85 21 01 00 00    	jne    1411 <main+0x137>
    12f0:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12f4:	48 8d 35 09 1d 00 00 	lea    0x1d09(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    12fb:	e8 40 fe ff ff       	call   1140 <fopen@plt>
    1300:	48 89 05 a9 43 00 00 	mov    %rax,0x43a9(%rip)        # 56b0 <infile>
    1307:	48 85 c0             	test   %rax,%rax
    130a:	0f 84 df 00 00 00    	je     13ef <main+0x115>
    1310:	e8 6b 06 00 00       	call   1980 <initialize_bomb>
    1315:	48 8d 3d 6c 1d 00 00 	lea    0x1d6c(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    131c:	e8 3f fd ff ff       	call   1060 <puts@plt>
    1321:	48 8d 3d a0 1d 00 00 	lea    0x1da0(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    1328:	e8 33 fd ff ff       	call   1060 <puts@plt>
    132d:	e8 21 09 00 00       	call   1c53 <read_line>
    1332:	48 89 c7             	mov    %rax,%rdi
    1335:	e8 fa 00 00 00       	call   1434 <phase_1>
    133a:	e8 71 0a 00 00       	call   1db0 <phase_defused>
    133f:	48 8d 3d b2 1d 00 00 	lea    0x1db2(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1346:	e8 15 fd ff ff       	call   1060 <puts@plt>
    134b:	e8 03 09 00 00       	call   1c53 <read_line>
    1350:	48 89 c7             	mov    %rax,%rdi
    1353:	e8 fc 00 00 00       	call   1454 <phase_2>
    1358:	e8 53 0a 00 00       	call   1db0 <phase_defused>
    135d:	48 8d 3d d9 1c 00 00 	lea    0x1cd9(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1364:	e8 f7 fc ff ff       	call   1060 <puts@plt>
    1369:	e8 e5 08 00 00       	call   1c53 <read_line>
    136e:	48 89 c7             	mov    %rax,%rdi
    1371:	e8 4d 01 00 00       	call   14c3 <phase_3>
    1376:	e8 35 0a 00 00       	call   1db0 <phase_defused>
    137b:	48 8d 3d d9 1c 00 00 	lea    0x1cd9(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1382:	e8 d9 fc ff ff       	call   1060 <puts@plt>
    1387:	e8 c7 08 00 00       	call   1c53 <read_line>
    138c:	48 89 c7             	mov    %rax,%rdi
    138f:	e8 4d 02 00 00       	call   15e1 <phase_4>
    1394:	e8 17 0a 00 00       	call   1db0 <phase_defused>
    1399:	48 8d 3d 88 1d 00 00 	lea    0x1d88(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    13a0:	e8 bb fc ff ff       	call   1060 <puts@plt>
    13a5:	e8 a9 08 00 00       	call   1c53 <read_line>
    13aa:	48 89 c7             	mov    %rax,%rdi
    13ad:	e8 a4 02 00 00       	call   1656 <phase_5>
    13b2:	e8 f9 09 00 00       	call   1db0 <phase_defused>
    13b7:	48 8d 3d ac 1c 00 00 	lea    0x1cac(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    13be:	e8 9d fc ff ff       	call   1060 <puts@plt>
    13c3:	e8 8b 08 00 00       	call   1c53 <read_line>
    13c8:	48 89 c7             	mov    %rax,%rdi
    13cb:	e8 cc 02 00 00       	call   169c <phase_6>
    13d0:	e8 db 09 00 00       	call   1db0 <phase_defused>
    13d5:	b8 00 00 00 00       	mov    $0x0,%eax
    13da:	5b                   	pop    %rbx
    13db:	c3                   	ret
    13dc:	48 8b 05 ad 42 00 00 	mov    0x42ad(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    13e3:	48 89 05 c6 42 00 00 	mov    %rax,0x42c6(%rip)        # 56b0 <infile>
    13ea:	e9 21 ff ff ff       	jmp    1310 <main+0x36>
    13ef:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    13f3:	48 8b 13             	mov    (%rbx),%rdx
    13f6:	48 8d 35 09 1c 00 00 	lea    0x1c09(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    13fd:	bf 01 00 00 00       	mov    $0x1,%edi
    1402:	e8 29 fd ff ff       	call   1130 <__printf_chk@plt>
    1407:	bf 08 00 00 00       	mov    $0x8,%edi
    140c:	e8 3f fd ff ff       	call   1150 <exit@plt>
    1411:	48 8b 16             	mov    (%rsi),%rdx
    1414:	48 8d 35 08 1c 00 00 	lea    0x1c08(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    141b:	bf 01 00 00 00       	mov    $0x1,%edi
    1420:	b8 00 00 00 00       	mov    $0x0,%eax
    1425:	e8 06 fd ff ff       	call   1130 <__printf_chk@plt>
    142a:	bf 08 00 00 00       	mov    $0x8,%edi
    142f:	e8 1c fd ff ff       	call   1150 <exit@plt>

0000000000001434 <phase_1>:
    1434:	48 83 ec 08          	sub    $0x8,%rsp
    1438:	48 8d 35 11 1d 00 00 	lea    0x1d11(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    143f:	e8 d5 04 00 00       	call   1919 <strings_not_equal>
    1444:	85 c0                	test   %eax,%eax
    1446:	75 05                	jne    144d <phase_1+0x19>
    1448:	48 83 c4 08          	add    $0x8,%rsp
    144c:	c3                   	ret
    144d:	e8 84 07 00 00       	call   1bd6 <explode_bomb>
    1452:	eb f4                	jmp    1448 <phase_1+0x14>

0000000000001454 <phase_2>:
    1454:	55                   	push   %rbp
    1455:	53                   	push   %rbx
    1456:	48 83 ec 28          	sub    $0x28,%rsp
    145a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1461:	00 00 
    1463:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1468:	31 c0                	xor    %eax,%eax
    146a:	48 89 e6             	mov    %rsp,%rsi
    146d:	e8 a0 07 00 00       	call   1c12 <read_six_numbers>
    1472:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1476:	75 07                	jne    147f <phase_2+0x2b>
    1478:	83 7c 24 04 01       	cmpl   $0x1,0x4(%rsp)
    147d:	74 05                	je     1484 <phase_2+0x30>
    147f:	e8 52 07 00 00       	call   1bd6 <explode_bomb>
    1484:	48 89 e3             	mov    %rsp,%rbx
    1487:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
    148b:	eb 09                	jmp    1496 <phase_2+0x42>
    148d:	48 83 c3 04          	add    $0x4,%rbx
    1491:	48 39 eb             	cmp    %rbp,%rbx
    1494:	74 11                	je     14a7 <phase_2+0x53>
    1496:	8b 43 04             	mov    0x4(%rbx),%eax
    1499:	03 03                	add    (%rbx),%eax
    149b:	39 43 08             	cmp    %eax,0x8(%rbx)
    149e:	74 ed                	je     148d <phase_2+0x39>
    14a0:	e8 31 07 00 00       	call   1bd6 <explode_bomb>
    14a5:	eb e6                	jmp    148d <phase_2+0x39>
    14a7:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    14ac:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    14b3:	00 00 
    14b5:	75 07                	jne    14be <phase_2+0x6a>
    14b7:	48 83 c4 28          	add    $0x28,%rsp
    14bb:	5b                   	pop    %rbx
    14bc:	5d                   	pop    %rbp
    14bd:	c3                   	ret
    14be:	e8 bd fb ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000014c3 <phase_3>:
    14c3:	48 83 ec 18          	sub    $0x18,%rsp
    14c7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14ce:	00 00 
    14d0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14d5:	31 c0                	xor    %eax,%eax
    14d7:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    14dc:	48 89 e2             	mov    %rsp,%rdx
    14df:	48 8d 35 17 1f 00 00 	lea    0x1f17(%rip),%rsi        # 33fd <array.3342+0x23d>
    14e6:	e8 35 fc ff ff       	call   1120 <__isoc99_sscanf@plt>
    14eb:	83 f8 01             	cmp    $0x1,%eax
    14ee:	7e 1d                	jle    150d <phase_3+0x4a>
    14f0:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    14f4:	0f 87 97 00 00 00    	ja     1591 <phase_3+0xce>
    14fa:	8b 04 24             	mov    (%rsp),%eax
    14fd:	48 8d 15 9c 1c 00 00 	lea    0x1c9c(%rip),%rdx        # 31a0 <_IO_stdin_used+0x1a0>
    1504:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1508:	48 01 d0             	add    %rdx,%rax
    150b:	ff e0                	jmp    *%rax
    150d:	e8 c4 06 00 00       	call   1bd6 <explode_bomb>
    1512:	eb dc                	jmp    14f0 <phase_3+0x2d>
    1514:	b8 3c 03 00 00       	mov    $0x33c,%eax
    1519:	eb 05                	jmp    1520 <phase_3+0x5d>
    151b:	b8 00 00 00 00       	mov    $0x0,%eax
    1520:	2d db 01 00 00       	sub    $0x1db,%eax
    1525:	83 c0 43             	add    $0x43,%eax
    1528:	2d 2a 02 00 00       	sub    $0x22a,%eax
    152d:	05 2a 02 00 00       	add    $0x22a,%eax
    1532:	2d 2a 02 00 00       	sub    $0x22a,%eax
    1537:	05 2a 02 00 00       	add    $0x22a,%eax
    153c:	2d 2a 02 00 00       	sub    $0x22a,%eax
    1541:	83 3c 24 05          	cmpl   $0x5,(%rsp)
    1545:	7f 06                	jg     154d <phase_3+0x8a>
    1547:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    154b:	74 05                	je     1552 <phase_3+0x8f>
    154d:	e8 84 06 00 00       	call   1bd6 <explode_bomb>
    1552:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1557:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    155e:	00 00 
    1560:	75 3b                	jne    159d <phase_3+0xda>
    1562:	48 83 c4 18          	add    $0x18,%rsp
    1566:	c3                   	ret
    1567:	b8 00 00 00 00       	mov    $0x0,%eax
    156c:	eb b7                	jmp    1525 <phase_3+0x62>
    156e:	b8 00 00 00 00       	mov    $0x0,%eax
    1573:	eb b3                	jmp    1528 <phase_3+0x65>
    1575:	b8 00 00 00 00       	mov    $0x0,%eax
    157a:	eb b1                	jmp    152d <phase_3+0x6a>
    157c:	b8 00 00 00 00       	mov    $0x0,%eax
    1581:	eb af                	jmp    1532 <phase_3+0x6f>
    1583:	b8 00 00 00 00       	mov    $0x0,%eax
    1588:	eb ad                	jmp    1537 <phase_3+0x74>
    158a:	b8 00 00 00 00       	mov    $0x0,%eax
    158f:	eb ab                	jmp    153c <phase_3+0x79>
    1591:	e8 40 06 00 00       	call   1bd6 <explode_bomb>
    1596:	b8 00 00 00 00       	mov    $0x0,%eax
    159b:	eb a4                	jmp    1541 <phase_3+0x7e>
    159d:	e8 de fa ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000015a2 <func4>:
    15a2:	48 83 ec 08          	sub    $0x8,%rsp
    15a6:	89 d0                	mov    %edx,%eax
    15a8:	29 f0                	sub    %esi,%eax
    15aa:	89 c1                	mov    %eax,%ecx
    15ac:	c1 e9 1f             	shr    $0x1f,%ecx
    15af:	01 c1                	add    %eax,%ecx
    15b1:	d1 f9                	sar    %ecx
    15b3:	01 f1                	add    %esi,%ecx
    15b5:	39 f9                	cmp    %edi,%ecx
    15b7:	7f 0e                	jg     15c7 <func4+0x25>
    15b9:	b8 00 00 00 00       	mov    $0x0,%eax
    15be:	39 f9                	cmp    %edi,%ecx
    15c0:	7c 11                	jl     15d3 <func4+0x31>
    15c2:	48 83 c4 08          	add    $0x8,%rsp
    15c6:	c3                   	ret
    15c7:	8d 51 ff             	lea    -0x1(%rcx),%edx
    15ca:	e8 d3 ff ff ff       	call   15a2 <func4>
    15cf:	01 c0                	add    %eax,%eax
    15d1:	eb ef                	jmp    15c2 <func4+0x20>
    15d3:	8d 71 01             	lea    0x1(%rcx),%esi
    15d6:	e8 c7 ff ff ff       	call   15a2 <func4>
    15db:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    15df:	eb e1                	jmp    15c2 <func4+0x20>

00000000000015e1 <phase_4>:
    15e1:	48 83 ec 18          	sub    $0x18,%rsp
    15e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15ec:	00 00 
    15ee:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    15f3:	31 c0                	xor    %eax,%eax
    15f5:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    15fa:	48 89 e2             	mov    %rsp,%rdx
    15fd:	48 8d 35 f9 1d 00 00 	lea    0x1df9(%rip),%rsi        # 33fd <array.3342+0x23d>
    1604:	e8 17 fb ff ff       	call   1120 <__isoc99_sscanf@plt>
    1609:	83 f8 02             	cmp    $0x2,%eax
    160c:	75 06                	jne    1614 <phase_4+0x33>
    160e:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    1612:	76 05                	jbe    1619 <phase_4+0x38>
    1614:	e8 bd 05 00 00       	call   1bd6 <explode_bomb>
    1619:	ba 0e 00 00 00       	mov    $0xe,%edx
    161e:	be 00 00 00 00       	mov    $0x0,%esi
    1623:	8b 3c 24             	mov    (%rsp),%edi
    1626:	e8 77 ff ff ff       	call   15a2 <func4>
    162b:	83 f8 07             	cmp    $0x7,%eax
    162e:	75 07                	jne    1637 <phase_4+0x56>
    1630:	83 7c 24 04 07       	cmpl   $0x7,0x4(%rsp)
    1635:	74 05                	je     163c <phase_4+0x5b>
    1637:	e8 9a 05 00 00       	call   1bd6 <explode_bomb>
    163c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1641:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1648:	00 00 
    164a:	75 05                	jne    1651 <phase_4+0x70>
    164c:	48 83 c4 18          	add    $0x18,%rsp
    1650:	c3                   	ret
    1651:	e8 2a fa ff ff       	call   1080 <__stack_chk_fail@plt>

0000000000001656 <phase_5>:
    1656:	53                   	push   %rbx
    1657:	48 89 fb             	mov    %rdi,%rbx
    165a:	e8 9d 02 00 00       	call   18fc <string_length>
    165f:	83 f8 06             	cmp    $0x6,%eax
    1662:	75 31                	jne    1695 <phase_5+0x3f>
    1664:	48 89 d8             	mov    %rbx,%rax
    1667:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    166b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1670:	48 8d 35 49 1b 00 00 	lea    0x1b49(%rip),%rsi        # 31c0 <array.3342>
    1677:	0f b6 10             	movzbl (%rax),%edx
    167a:	83 e2 0f             	and    $0xf,%edx
    167d:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    1680:	48 83 c0 01          	add    $0x1,%rax
    1684:	48 39 f8             	cmp    %rdi,%rax
    1687:	75 ee                	jne    1677 <phase_5+0x21>
    1689:	83 f9 3f             	cmp    $0x3f,%ecx
    168c:	74 05                	je     1693 <phase_5+0x3d>
    168e:	e8 43 05 00 00       	call   1bd6 <explode_bomb>
    1693:	5b                   	pop    %rbx
    1694:	c3                   	ret
    1695:	e8 3c 05 00 00       	call   1bd6 <explode_bomb>
    169a:	eb c8                	jmp    1664 <phase_5+0xe>

000000000000169c <phase_6>:
    169c:	41 56                	push   %r14
    169e:	41 55                	push   %r13
    16a0:	41 54                	push   %r12
    16a2:	55                   	push   %rbp
    16a3:	53                   	push   %rbx
    16a4:	48 83 ec 60          	sub    $0x60,%rsp
    16a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16af:	00 00 
    16b1:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    16b6:	31 c0                	xor    %eax,%eax
    16b8:	49 89 e5             	mov    %rsp,%r13
    16bb:	4c 89 ee             	mov    %r13,%rsi
    16be:	e8 4f 05 00 00       	call   1c12 <read_six_numbers>
    16c3:	4d 89 ec             	mov    %r13,%r12
    16c6:	41 be 00 00 00 00    	mov    $0x0,%r14d
    16cc:	eb 25                	jmp    16f3 <phase_6+0x57>
    16ce:	e8 03 05 00 00       	call   1bd6 <explode_bomb>
    16d3:	eb 2d                	jmp    1702 <phase_6+0x66>
    16d5:	83 c3 01             	add    $0x1,%ebx
    16d8:	83 fb 05             	cmp    $0x5,%ebx
    16db:	7f 12                	jg     16ef <phase_6+0x53>
    16dd:	48 63 c3             	movslq %ebx,%rax
    16e0:	8b 04 84             	mov    (%rsp,%rax,4),%eax
    16e3:	39 45 00             	cmp    %eax,0x0(%rbp)
    16e6:	75 ed                	jne    16d5 <phase_6+0x39>
    16e8:	e8 e9 04 00 00       	call   1bd6 <explode_bomb>
    16ed:	eb e6                	jmp    16d5 <phase_6+0x39>
    16ef:	49 83 c5 04          	add    $0x4,%r13
    16f3:	4c 89 ed             	mov    %r13,%rbp
    16f6:	41 8b 45 00          	mov    0x0(%r13),%eax
    16fa:	83 e8 01             	sub    $0x1,%eax
    16fd:	83 f8 05             	cmp    $0x5,%eax
    1700:	77 cc                	ja     16ce <phase_6+0x32>
    1702:	41 83 c6 01          	add    $0x1,%r14d
    1706:	41 83 fe 06          	cmp    $0x6,%r14d
    170a:	74 05                	je     1711 <phase_6+0x75>
    170c:	44 89 f3             	mov    %r14d,%ebx
    170f:	eb cc                	jmp    16dd <phase_6+0x41>
    1711:	49 8d 4c 24 18       	lea    0x18(%r12),%rcx
    1716:	ba 07 00 00 00       	mov    $0x7,%edx
    171b:	89 d0                	mov    %edx,%eax
    171d:	41 2b 04 24          	sub    (%r12),%eax
    1721:	41 89 04 24          	mov    %eax,(%r12)
    1725:	49 83 c4 04          	add    $0x4,%r12
    1729:	4c 39 e1             	cmp    %r12,%rcx
    172c:	75 ed                	jne    171b <phase_6+0x7f>
    172e:	be 00 00 00 00       	mov    $0x0,%esi
    1733:	eb 1a                	jmp    174f <phase_6+0xb3>
    1735:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1739:	83 c0 01             	add    $0x1,%eax
    173c:	39 c8                	cmp    %ecx,%eax
    173e:	75 f5                	jne    1735 <phase_6+0x99>
    1740:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    1745:	48 83 c6 01          	add    $0x1,%rsi
    1749:	48 83 fe 06          	cmp    $0x6,%rsi
    174d:	74 16                	je     1765 <phase_6+0xc9>
    174f:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    1752:	b8 01 00 00 00       	mov    $0x1,%eax
    1757:	48 8d 15 d2 3a 00 00 	lea    0x3ad2(%rip),%rdx        # 5230 <node1>
    175e:	83 f9 01             	cmp    $0x1,%ecx
    1761:	7f d2                	jg     1735 <phase_6+0x99>
    1763:	eb db                	jmp    1740 <phase_6+0xa4>
    1765:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    176a:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    176f:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1773:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1778:	48 89 50 08          	mov    %rdx,0x8(%rax)
    177c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1781:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1785:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    178a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    178e:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1793:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1797:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    179e:	00 
    179f:	bd 05 00 00 00       	mov    $0x5,%ebp
    17a4:	eb 09                	jmp    17af <phase_6+0x113>
    17a6:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    17aa:	83 ed 01             	sub    $0x1,%ebp
    17ad:	74 11                	je     17c0 <phase_6+0x124>
    17af:	48 8b 43 08          	mov    0x8(%rbx),%rax
    17b3:	8b 00                	mov    (%rax),%eax
    17b5:	39 03                	cmp    %eax,(%rbx)
    17b7:	7d ed                	jge    17a6 <phase_6+0x10a>
    17b9:	e8 18 04 00 00       	call   1bd6 <explode_bomb>
    17be:	eb e6                	jmp    17a6 <phase_6+0x10a>
    17c0:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    17c5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    17cc:	00 00 
    17ce:	75 0d                	jne    17dd <phase_6+0x141>
    17d0:	48 83 c4 60          	add    $0x60,%rsp
    17d4:	5b                   	pop    %rbx
    17d5:	5d                   	pop    %rbp
    17d6:	41 5c                	pop    %r12
    17d8:	41 5d                	pop    %r13
    17da:	41 5e                	pop    %r14
    17dc:	c3                   	ret
    17dd:	e8 9e f8 ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000017e2 <fun7>:
    17e2:	48 85 ff             	test   %rdi,%rdi
    17e5:	74 34                	je     181b <fun7+0x39>
    17e7:	48 83 ec 08          	sub    $0x8,%rsp
    17eb:	8b 17                	mov    (%rdi),%edx
    17ed:	39 f2                	cmp    %esi,%edx
    17ef:	7f 0e                	jg     17ff <fun7+0x1d>
    17f1:	b8 00 00 00 00       	mov    $0x0,%eax
    17f6:	39 f2                	cmp    %esi,%edx
    17f8:	75 12                	jne    180c <fun7+0x2a>
    17fa:	48 83 c4 08          	add    $0x8,%rsp
    17fe:	c3                   	ret
    17ff:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1803:	e8 da ff ff ff       	call   17e2 <fun7>
    1808:	01 c0                	add    %eax,%eax
    180a:	eb ee                	jmp    17fa <fun7+0x18>
    180c:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1810:	e8 cd ff ff ff       	call   17e2 <fun7>
    1815:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1819:	eb df                	jmp    17fa <fun7+0x18>
    181b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1820:	c3                   	ret

0000000000001821 <secret_phase>:
    1821:	53                   	push   %rbx
    1822:	e8 2c 04 00 00       	call   1c53 <read_line>
    1827:	ba 0a 00 00 00       	mov    $0xa,%edx
    182c:	be 00 00 00 00       	mov    $0x0,%esi
    1831:	48 89 c7             	mov    %rax,%rdi
    1834:	e8 c7 f8 ff ff       	call   1100 <strtol@plt>
    1839:	48 89 c3             	mov    %rax,%rbx
    183c:	8d 40 ff             	lea    -0x1(%rax),%eax
    183f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1844:	77 25                	ja     186b <secret_phase+0x4a>
    1846:	89 de                	mov    %ebx,%esi
    1848:	48 8d 3d 01 39 00 00 	lea    0x3901(%rip),%rdi        # 5150 <n1>
    184f:	e8 8e ff ff ff       	call   17e2 <fun7>
    1854:	85 c0                	test   %eax,%eax
    1856:	75 1a                	jne    1872 <secret_phase+0x51>
    1858:	48 8d 3d 19 19 00 00 	lea    0x1919(%rip),%rdi        # 3178 <_IO_stdin_used+0x178>
    185f:	e8 fc f7 ff ff       	call   1060 <puts@plt>
    1864:	e8 47 05 00 00       	call   1db0 <phase_defused>
    1869:	5b                   	pop    %rbx
    186a:	c3                   	ret
    186b:	e8 66 03 00 00       	call   1bd6 <explode_bomb>
    1870:	eb d4                	jmp    1846 <secret_phase+0x25>
    1872:	e8 5f 03 00 00       	call   1bd6 <explode_bomb>
    1877:	eb df                	jmp    1858 <secret_phase+0x37>

0000000000001879 <sig_handler>:
    1879:	48 83 ec 08          	sub    $0x8,%rsp
    187d:	48 8d 3d 7c 19 00 00 	lea    0x197c(%rip),%rdi        # 3200 <array.3342+0x40>
    1884:	e8 d7 f7 ff ff       	call   1060 <puts@plt>
    1889:	bf 03 00 00 00       	mov    $0x3,%edi
    188e:	e8 ed f8 ff ff       	call   1180 <sleep@plt>
    1893:	48 8d 35 df 1a 00 00 	lea    0x1adf(%rip),%rsi        # 3379 <array.3342+0x1b9>
    189a:	bf 01 00 00 00       	mov    $0x1,%edi
    189f:	b8 00 00 00 00       	mov    $0x0,%eax
    18a4:	e8 87 f8 ff ff       	call   1130 <__printf_chk@plt>
    18a9:	48 8b 3d d0 3d 00 00 	mov    0x3dd0(%rip),%rdi        # 5680 <stdout@GLIBC_2.2.5>
    18b0:	e8 5b f8 ff ff       	call   1110 <fflush@plt>
    18b5:	bf 01 00 00 00       	mov    $0x1,%edi
    18ba:	e8 c1 f8 ff ff       	call   1180 <sleep@plt>
    18bf:	48 8d 3d bb 1a 00 00 	lea    0x1abb(%rip),%rdi        # 3381 <array.3342+0x1c1>
    18c6:	e8 95 f7 ff ff       	call   1060 <puts@plt>
    18cb:	bf 10 00 00 00       	mov    $0x10,%edi
    18d0:	e8 7b f8 ff ff       	call   1150 <exit@plt>

00000000000018d5 <invalid_phase>:
    18d5:	48 83 ec 08          	sub    $0x8,%rsp
    18d9:	48 89 fa             	mov    %rdi,%rdx
    18dc:	48 8d 35 a6 1a 00 00 	lea    0x1aa6(%rip),%rsi        # 3389 <array.3342+0x1c9>
    18e3:	bf 01 00 00 00       	mov    $0x1,%edi
    18e8:	b8 00 00 00 00       	mov    $0x0,%eax
    18ed:	e8 3e f8 ff ff       	call   1130 <__printf_chk@plt>
    18f2:	bf 08 00 00 00       	mov    $0x8,%edi
    18f7:	e8 54 f8 ff ff       	call   1150 <exit@plt>

00000000000018fc <string_length>:
    18fc:	80 3f 00             	cmpb   $0x0,(%rdi)
    18ff:	74 12                	je     1913 <string_length+0x17>
    1901:	48 89 fa             	mov    %rdi,%rdx
    1904:	48 83 c2 01          	add    $0x1,%rdx
    1908:	89 d0                	mov    %edx,%eax
    190a:	29 f8                	sub    %edi,%eax
    190c:	80 3a 00             	cmpb   $0x0,(%rdx)
    190f:	75 f3                	jne    1904 <string_length+0x8>
    1911:	f3 c3                	repz ret
    1913:	b8 00 00 00 00       	mov    $0x0,%eax
    1918:	c3                   	ret

0000000000001919 <strings_not_equal>:
    1919:	41 54                	push   %r12
    191b:	55                   	push   %rbp
    191c:	53                   	push   %rbx
    191d:	48 89 fb             	mov    %rdi,%rbx
    1920:	48 89 f5             	mov    %rsi,%rbp
    1923:	e8 d4 ff ff ff       	call   18fc <string_length>
    1928:	41 89 c4             	mov    %eax,%r12d
    192b:	48 89 ef             	mov    %rbp,%rdi
    192e:	e8 c9 ff ff ff       	call   18fc <string_length>
    1933:	ba 01 00 00 00       	mov    $0x1,%edx
    1938:	41 39 c4             	cmp    %eax,%r12d
    193b:	74 07                	je     1944 <strings_not_equal+0x2b>
    193d:	89 d0                	mov    %edx,%eax
    193f:	5b                   	pop    %rbx
    1940:	5d                   	pop    %rbp
    1941:	41 5c                	pop    %r12
    1943:	c3                   	ret
    1944:	0f b6 03             	movzbl (%rbx),%eax
    1947:	84 c0                	test   %al,%al
    1949:	74 27                	je     1972 <strings_not_equal+0x59>
    194b:	3a 45 00             	cmp    0x0(%rbp),%al
    194e:	75 29                	jne    1979 <strings_not_equal+0x60>
    1950:	48 83 c3 01          	add    $0x1,%rbx
    1954:	48 83 c5 01          	add    $0x1,%rbp
    1958:	0f b6 03             	movzbl (%rbx),%eax
    195b:	84 c0                	test   %al,%al
    195d:	74 0c                	je     196b <strings_not_equal+0x52>
    195f:	38 45 00             	cmp    %al,0x0(%rbp)
    1962:	74 ec                	je     1950 <strings_not_equal+0x37>
    1964:	ba 01 00 00 00       	mov    $0x1,%edx
    1969:	eb d2                	jmp    193d <strings_not_equal+0x24>
    196b:	ba 00 00 00 00       	mov    $0x0,%edx
    1970:	eb cb                	jmp    193d <strings_not_equal+0x24>
    1972:	ba 00 00 00 00       	mov    $0x0,%edx
    1977:	eb c4                	jmp    193d <strings_not_equal+0x24>
    1979:	ba 01 00 00 00       	mov    $0x1,%edx
    197e:	eb bd                	jmp    193d <strings_not_equal+0x24>

0000000000001980 <initialize_bomb>:
    1980:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
    1987:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    198e:	00 00 
    1990:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
    1997:	00 
    1998:	31 c0                	xor    %eax,%eax
    199a:	48 8d 35 d8 fe ff ff 	lea    -0x128(%rip),%rsi        # 1879 <sig_handler>
    19a1:	bf 02 00 00 00       	mov    $0x2,%edi
    19a6:	e8 25 f7 ff ff       	call   10d0 <signal@plt>
    19ab:	48 89 e7             	mov    %rsp,%rdi
    19ae:	e8 19 0e 00 00       	call   27cc <init_driver>
    19b3:	85 c0                	test   %eax,%eax
    19b5:	78 1b                	js     19d2 <initialize_bomb+0x52>
    19b7:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
    19be:	00 
    19bf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    19c6:	00 00 
    19c8:	75 2b                	jne    19f5 <initialize_bomb+0x75>
    19ca:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
    19d1:	c3                   	ret
    19d2:	48 89 e2             	mov    %rsp,%rdx
    19d5:	48 8d 35 be 19 00 00 	lea    0x19be(%rip),%rsi        # 339a <array.3342+0x1da>
    19dc:	bf 01 00 00 00       	mov    $0x1,%edi
    19e1:	b8 00 00 00 00       	mov    $0x0,%eax
    19e6:	e8 45 f7 ff ff       	call   1130 <__printf_chk@plt>
    19eb:	bf 08 00 00 00       	mov    $0x8,%edi
    19f0:	e8 5b f7 ff ff       	call   1150 <exit@plt>
    19f5:	e8 86 f6 ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000019fa <initialize_bomb_solve>:
    19fa:	f3 c3                	repz ret

00000000000019fc <blank_line>:
    19fc:	55                   	push   %rbp
    19fd:	53                   	push   %rbx
    19fe:	48 83 ec 08          	sub    $0x8,%rsp
    1a02:	48 89 fd             	mov    %rdi,%rbp
    1a05:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1a09:	84 db                	test   %bl,%bl
    1a0b:	74 1e                	je     1a2b <blank_line+0x2f>
    1a0d:	e8 7e f7 ff ff       	call   1190 <__ctype_b_loc@plt>
    1a12:	48 83 c5 01          	add    $0x1,%rbp
    1a16:	48 0f be db          	movsbq %bl,%rbx
    1a1a:	48 8b 00             	mov    (%rax),%rax
    1a1d:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1a22:	75 e1                	jne    1a05 <blank_line+0x9>
    1a24:	b8 00 00 00 00       	mov    $0x0,%eax
    1a29:	eb 05                	jmp    1a30 <blank_line+0x34>
    1a2b:	b8 01 00 00 00       	mov    $0x1,%eax
    1a30:	48 83 c4 08          	add    $0x8,%rsp
    1a34:	5b                   	pop    %rbx
    1a35:	5d                   	pop    %rbp
    1a36:	c3                   	ret

0000000000001a37 <skip>:
    1a37:	55                   	push   %rbp
    1a38:	53                   	push   %rbx
    1a39:	48 83 ec 08          	sub    $0x8,%rsp
    1a3d:	48 8d 2d 7c 3c 00 00 	lea    0x3c7c(%rip),%rbp        # 56c0 <input_strings>
    1a44:	48 63 05 61 3c 00 00 	movslq 0x3c61(%rip),%rax        # 56ac <num_input_strings>
    1a4b:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1a4f:	48 c1 e7 04          	shl    $0x4,%rdi
    1a53:	48 01 ef             	add    %rbp,%rdi
    1a56:	48 8b 15 53 3c 00 00 	mov    0x3c53(%rip),%rdx        # 56b0 <infile>
    1a5d:	be 50 00 00 00       	mov    $0x50,%esi
    1a62:	e8 59 f6 ff ff       	call   10c0 <fgets@plt>
    1a67:	48 89 c3             	mov    %rax,%rbx
    1a6a:	48 85 c0             	test   %rax,%rax
    1a6d:	74 0c                	je     1a7b <skip+0x44>
    1a6f:	48 89 c7             	mov    %rax,%rdi
    1a72:	e8 85 ff ff ff       	call   19fc <blank_line>
    1a77:	85 c0                	test   %eax,%eax
    1a79:	75 c9                	jne    1a44 <skip+0xd>
    1a7b:	48 89 d8             	mov    %rbx,%rax
    1a7e:	48 83 c4 08          	add    $0x8,%rsp
    1a82:	5b                   	pop    %rbx
    1a83:	5d                   	pop    %rbp
    1a84:	c3                   	ret

0000000000001a85 <test_connection>:
    1a85:	48 83 ec 08          	sub    $0x8,%rsp
    1a89:	b8 00 00 00 00       	mov    $0x0,%eax
    1a8e:	e8 42 0f 00 00       	call   29d5 <driver_ping>
    1a93:	85 c0                	test   %eax,%eax
    1a95:	75 05                	jne    1a9c <test_connection+0x17>
    1a97:	48 83 c4 08          	add    $0x8,%rsp
    1a9b:	c3                   	ret
    1a9c:	48 8d 3d 95 17 00 00 	lea    0x1795(%rip),%rdi        # 3238 <array.3342+0x78>
    1aa3:	e8 b8 f5 ff ff       	call   1060 <puts@plt>
    1aa8:	bf 0a 00 00 00       	mov    $0xa,%edi
    1aad:	e8 9e f6 ff ff       	call   1150 <exit@plt>

0000000000001ab2 <send_msg>:
    1ab2:	53                   	push   %rbx
    1ab3:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1aba:	41 89 f8             	mov    %edi,%r8d
    1abd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ac4:	00 00 
    1ac6:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1acd:	00 
    1ace:	31 c0                	xor    %eax,%eax
    1ad0:	8b 35 d6 3b 00 00    	mov    0x3bd6(%rip),%esi        # 56ac <num_input_strings>
    1ad6:	8d 46 ff             	lea    -0x1(%rsi),%eax
    1ad9:	48 98                	cltq
    1adb:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1adf:	48 c1 e2 04          	shl    $0x4,%rdx
    1ae3:	48 8d 05 d6 3b 00 00 	lea    0x3bd6(%rip),%rax        # 56c0 <input_strings>
    1aea:	48 01 c2             	add    %rax,%rdx
    1aed:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1af4:	b8 00 00 00 00       	mov    $0x0,%eax
    1af9:	48 89 d7             	mov    %rdx,%rdi
    1afc:	f2 ae                	repnz scas %es:(%rdi),%al
    1afe:	48 89 c8             	mov    %rcx,%rax
    1b01:	48 f7 d0             	not    %rax
    1b04:	48 83 c0 63          	add    $0x63,%rax
    1b08:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1b0e:	0f 87 86 00 00 00    	ja     1b9a <send_msg+0xe8>
    1b14:	45 85 c0             	test   %r8d,%r8d
    1b17:	4c 8d 0d 96 18 00 00 	lea    0x1896(%rip),%r9        # 33b4 <array.3342+0x1f4>
    1b1e:	48 8d 05 97 18 00 00 	lea    0x1897(%rip),%rax        # 33bc <array.3342+0x1fc>
    1b25:	4c 0f 44 c8          	cmove  %rax,%r9
    1b29:	48 89 e3             	mov    %rsp,%rbx
    1b2c:	52                   	push   %rdx
    1b2d:	56                   	push   %rsi
    1b2e:	44 8b 05 0f 36 00 00 	mov    0x360f(%rip),%r8d        # 5144 <bomb_id>
    1b35:	48 8d 0d 89 18 00 00 	lea    0x1889(%rip),%rcx        # 33c5 <array.3342+0x205>
    1b3c:	ba 00 20 00 00       	mov    $0x2000,%edx
    1b41:	be 01 00 00 00       	mov    $0x1,%esi
    1b46:	48 89 df             	mov    %rbx,%rdi
    1b49:	b8 00 00 00 00       	mov    $0x0,%eax
    1b4e:	e8 4d f6 ff ff       	call   11a0 <__sprintf_chk@plt>
    1b53:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    1b5a:	00 
    1b5b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1b60:	48 89 da             	mov    %rbx,%rdx
    1b63:	48 8d 35 b6 35 00 00 	lea    0x35b6(%rip),%rsi        # 5120 <user_password>
    1b6a:	48 8d 3d c7 35 00 00 	lea    0x35c7(%rip),%rdi        # 5138 <userid>
    1b71:	e8 41 0f 00 00       	call   2ab7 <driver_post>
    1b76:	48 83 c4 10          	add    $0x10,%rsp
    1b7a:	85 c0                	test   %eax,%eax
    1b7c:	78 3c                	js     1bba <send_msg+0x108>
    1b7e:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1b85:	00 
    1b86:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1b8d:	00 00 
    1b8f:	75 40                	jne    1bd1 <send_msg+0x11f>
    1b91:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1b98:	5b                   	pop    %rbx
    1b99:	c3                   	ret
    1b9a:	48 8d 35 b7 16 00 00 	lea    0x16b7(%rip),%rsi        # 3258 <array.3342+0x98>
    1ba1:	bf 01 00 00 00       	mov    $0x1,%edi
    1ba6:	b8 00 00 00 00       	mov    $0x0,%eax
    1bab:	e8 80 f5 ff ff       	call   1130 <__printf_chk@plt>
    1bb0:	bf 08 00 00 00       	mov    $0x8,%edi
    1bb5:	e8 96 f5 ff ff       	call   1150 <exit@plt>
    1bba:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1bc1:	00 
    1bc2:	e8 99 f4 ff ff       	call   1060 <puts@plt>
    1bc7:	bf 00 00 00 00       	mov    $0x0,%edi
    1bcc:	e8 7f f5 ff ff       	call   1150 <exit@plt>
    1bd1:	e8 aa f4 ff ff       	call   1080 <__stack_chk_fail@plt>

0000000000001bd6 <explode_bomb>:
    1bd6:	48 83 ec 08          	sub    $0x8,%rsp
    1bda:	48 8d 3d f0 17 00 00 	lea    0x17f0(%rip),%rdi        # 33d1 <array.3342+0x211>
    1be1:	e8 7a f4 ff ff       	call   1060 <puts@plt>
    1be6:	48 8d 3d ed 17 00 00 	lea    0x17ed(%rip),%rdi        # 33da <array.3342+0x21a>
    1bed:	e8 6e f4 ff ff       	call   1060 <puts@plt>
    1bf2:	bf 00 00 00 00       	mov    $0x0,%edi
    1bf7:	e8 b6 fe ff ff       	call   1ab2 <send_msg>
    1bfc:	48 8d 3d 7d 16 00 00 	lea    0x167d(%rip),%rdi        # 3280 <array.3342+0xc0>
    1c03:	e8 58 f4 ff ff       	call   1060 <puts@plt>
    1c08:	bf 08 00 00 00       	mov    $0x8,%edi
    1c0d:	e8 3e f5 ff ff       	call   1150 <exit@plt>

0000000000001c12 <read_six_numbers>:
    1c12:	48 83 ec 08          	sub    $0x8,%rsp
    1c16:	48 89 f2             	mov    %rsi,%rdx
    1c19:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c1d:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c21:	50                   	push   %rax
    1c22:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c26:	50                   	push   %rax
    1c27:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c2b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c2f:	48 8d 35 bb 17 00 00 	lea    0x17bb(%rip),%rsi        # 33f1 <array.3342+0x231>
    1c36:	b8 00 00 00 00       	mov    $0x0,%eax
    1c3b:	e8 e0 f4 ff ff       	call   1120 <__isoc99_sscanf@plt>
    1c40:	48 83 c4 10          	add    $0x10,%rsp
    1c44:	83 f8 05             	cmp    $0x5,%eax
    1c47:	7e 05                	jle    1c4e <read_six_numbers+0x3c>
    1c49:	48 83 c4 08          	add    $0x8,%rsp
    1c4d:	c3                   	ret
    1c4e:	e8 83 ff ff ff       	call   1bd6 <explode_bomb>

0000000000001c53 <read_line>:
    1c53:	53                   	push   %rbx
    1c54:	b8 00 00 00 00       	mov    $0x0,%eax
    1c59:	e8 d9 fd ff ff       	call   1a37 <skip>
    1c5e:	48 85 c0             	test   %rax,%rax
    1c61:	0f 84 87 00 00 00    	je     1cee <read_line+0x9b>
    1c67:	8b 15 3f 3a 00 00    	mov    0x3a3f(%rip),%edx        # 56ac <num_input_strings>
    1c6d:	48 63 c2             	movslq %edx,%rax
    1c70:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c74:	48 c1 e0 04          	shl    $0x4,%rax
    1c78:	48 8d 0d 41 3a 00 00 	lea    0x3a41(%rip),%rcx        # 56c0 <input_strings>
    1c7f:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
    1c83:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1c8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1c8f:	f2 ae                	repnz scas %es:(%rdi),%al
    1c91:	48 89 ce             	mov    %rcx,%rsi
    1c94:	48 f7 d6             	not    %rsi
    1c97:	48 89 f1             	mov    %rsi,%rcx
    1c9a:	48 83 e9 01          	sub    $0x1,%rcx
    1c9e:	83 f9 4e             	cmp    $0x4e,%ecx
    1ca1:	0f 8f bf 00 00 00    	jg     1d66 <read_line+0x113>
    1ca7:	48 8d 1d 12 3a 00 00 	lea    0x3a12(%rip),%rbx        # 56c0 <input_strings>
    1cae:	83 e9 01             	sub    $0x1,%ecx
    1cb1:	48 63 c9             	movslq %ecx,%rcx
    1cb4:	48 63 d2             	movslq %edx,%rdx
    1cb7:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
    1cbb:	48 c1 e0 04          	shl    $0x4,%rax
    1cbf:	48 01 d8             	add    %rbx,%rax
    1cc2:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    1cc6:	b8 00 00 00 00       	mov    $0x0,%eax
    1ccb:	e8 b5 fd ff ff       	call   1a85 <test_connection>
    1cd0:	8b 05 d6 39 00 00    	mov    0x39d6(%rip),%eax        # 56ac <num_input_strings>
    1cd6:	8d 50 01             	lea    0x1(%rax),%edx
    1cd9:	89 15 cd 39 00 00    	mov    %edx,0x39cd(%rip)        # 56ac <num_input_strings>
    1cdf:	48 98                	cltq
    1ce1:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1ce5:	48 c1 e0 04          	shl    $0x4,%rax
    1ce9:	48 01 d8             	add    %rbx,%rax
    1cec:	5b                   	pop    %rbx
    1ced:	c3                   	ret
    1cee:	48 8b 05 9b 39 00 00 	mov    0x399b(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    1cf5:	48 39 05 b4 39 00 00 	cmp    %rax,0x39b4(%rip)        # 56b0 <infile>
    1cfc:	74 1b                	je     1d19 <read_line+0xc6>
    1cfe:	48 8d 3d 1c 17 00 00 	lea    0x171c(%rip),%rdi        # 3421 <array.3342+0x261>
    1d05:	e8 26 f3 ff ff       	call   1030 <getenv@plt>
    1d0a:	48 85 c0             	test   %rax,%rax
    1d0d:	74 20                	je     1d2f <read_line+0xdc>
    1d0f:	bf 00 00 00 00       	mov    $0x0,%edi
    1d14:	e8 37 f4 ff ff       	call   1150 <exit@plt>
    1d19:	48 8d 3d e3 16 00 00 	lea    0x16e3(%rip),%rdi        # 3403 <array.3342+0x243>
    1d20:	e8 3b f3 ff ff       	call   1060 <puts@plt>
    1d25:	bf 08 00 00 00       	mov    $0x8,%edi
    1d2a:	e8 21 f4 ff ff       	call   1150 <exit@plt>
    1d2f:	48 8b 05 5a 39 00 00 	mov    0x395a(%rip),%rax        # 5690 <stdin@GLIBC_2.2.5>
    1d36:	48 89 05 73 39 00 00 	mov    %rax,0x3973(%rip)        # 56b0 <infile>
    1d3d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d42:	e8 f0 fc ff ff       	call   1a37 <skip>
    1d47:	48 85 c0             	test   %rax,%rax
    1d4a:	0f 85 17 ff ff ff    	jne    1c67 <read_line+0x14>
    1d50:	48 8d 3d ac 16 00 00 	lea    0x16ac(%rip),%rdi        # 3403 <array.3342+0x243>
    1d57:	e8 04 f3 ff ff       	call   1060 <puts@plt>
    1d5c:	bf 00 00 00 00       	mov    $0x0,%edi
    1d61:	e8 ea f3 ff ff       	call   1150 <exit@plt>
    1d66:	48 8d 3d bf 16 00 00 	lea    0x16bf(%rip),%rdi        # 342c <array.3342+0x26c>
    1d6d:	e8 ee f2 ff ff       	call   1060 <puts@plt>
    1d72:	8b 05 34 39 00 00    	mov    0x3934(%rip),%eax        # 56ac <num_input_strings>
    1d78:	8d 50 01             	lea    0x1(%rax),%edx
    1d7b:	89 15 2b 39 00 00    	mov    %edx,0x392b(%rip)        # 56ac <num_input_strings>
    1d81:	48 98                	cltq
    1d83:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1d87:	48 8d 15 32 39 00 00 	lea    0x3932(%rip),%rdx        # 56c0 <input_strings>
    1d8e:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1d95:	75 6e 63 
    1d98:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1d9f:	2a 2a 00 
    1da2:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1da6:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1dab:	e8 26 fe ff ff       	call   1bd6 <explode_bomb>

0000000000001db0 <phase_defused>:
    1db0:	48 83 ec 78          	sub    $0x78,%rsp
    1db4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1dbb:	00 00 
    1dbd:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1dc2:	31 c0                	xor    %eax,%eax
    1dc4:	bf 01 00 00 00       	mov    $0x1,%edi
    1dc9:	e8 e4 fc ff ff       	call   1ab2 <send_msg>
    1dce:	83 3d d7 38 00 00 06 	cmpl   $0x6,0x38d7(%rip)        # 56ac <num_input_strings>
    1dd5:	74 19                	je     1df0 <phase_defused+0x40>
    1dd7:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1ddc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1de3:	00 00 
    1de5:	0f 85 84 00 00 00    	jne    1e6f <phase_defused+0xbf>
    1deb:	48 83 c4 78          	add    $0x78,%rsp
    1def:	c3                   	ret
    1df0:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1df5:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1dfa:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1dff:	48 8d 35 41 16 00 00 	lea    0x1641(%rip),%rsi        # 3447 <array.3342+0x287>
    1e06:	48 8d 3d a3 39 00 00 	lea    0x39a3(%rip),%rdi        # 57b0 <input_strings+0xf0>
    1e0d:	b8 00 00 00 00       	mov    $0x0,%eax
    1e12:	e8 09 f3 ff ff       	call   1120 <__isoc99_sscanf@plt>
    1e17:	83 f8 03             	cmp    $0x3,%eax
    1e1a:	74 1a                	je     1e36 <phase_defused+0x86>
    1e1c:	48 8d 3d e5 14 00 00 	lea    0x14e5(%rip),%rdi        # 3308 <array.3342+0x148>
    1e23:	e8 38 f2 ff ff       	call   1060 <puts@plt>
    1e28:	48 8d 3d 09 15 00 00 	lea    0x1509(%rip),%rdi        # 3338 <array.3342+0x178>
    1e2f:	e8 2c f2 ff ff       	call   1060 <puts@plt>
    1e34:	eb a1                	jmp    1dd7 <phase_defused+0x27>
    1e36:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e3b:	48 8d 35 0e 16 00 00 	lea    0x160e(%rip),%rsi        # 3450 <array.3342+0x290>
    1e42:	e8 d2 fa ff ff       	call   1919 <strings_not_equal>
    1e47:	85 c0                	test   %eax,%eax
    1e49:	75 d1                	jne    1e1c <phase_defused+0x6c>
    1e4b:	48 8d 3d 56 14 00 00 	lea    0x1456(%rip),%rdi        # 32a8 <array.3342+0xe8>
    1e52:	e8 09 f2 ff ff       	call   1060 <puts@plt>
    1e57:	48 8d 3d 72 14 00 00 	lea    0x1472(%rip),%rdi        # 32d0 <array.3342+0x110>
    1e5e:	e8 fd f1 ff ff       	call   1060 <puts@plt>
    1e63:	b8 00 00 00 00       	mov    $0x0,%eax
    1e68:	e8 b4 f9 ff ff       	call   1821 <secret_phase>
    1e6d:	eb ad                	jmp    1e1c <phase_defused+0x6c>
    1e6f:	e8 0c f2 ff ff       	call   1080 <__stack_chk_fail@plt>

0000000000001e74 <sigalrm_handler>:
    1e74:	48 83 ec 08          	sub    $0x8,%rsp
    1e78:	b9 00 00 00 00       	mov    $0x0,%ecx
    1e7d:	48 8d 15 0c 16 00 00 	lea    0x160c(%rip),%rdx        # 3490 <array.3342+0x2d0>
    1e84:	be 01 00 00 00       	mov    $0x1,%esi
    1e89:	48 8b 3d 10 38 00 00 	mov    0x3810(%rip),%rdi        # 56a0 <stderr@GLIBC_2.2.5>
    1e90:	b8 00 00 00 00       	mov    $0x0,%eax
    1e95:	e8 d6 f2 ff ff       	call   1170 <__fprintf_chk@plt>
    1e9a:	bf 01 00 00 00       	mov    $0x1,%edi
    1e9f:	e8 ac f2 ff ff       	call   1150 <exit@plt>

0000000000001ea4 <rio_readlineb>:
    1ea4:	41 56                	push   %r14
    1ea6:	41 55                	push   %r13
    1ea8:	41 54                	push   %r12
    1eaa:	55                   	push   %rbp
    1eab:	53                   	push   %rbx
    1eac:	48 89 fb             	mov    %rdi,%rbx
    1eaf:	49 89 f4             	mov    %rsi,%r12
    1eb2:	49 89 d6             	mov    %rdx,%r14
    1eb5:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ebb:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1ebf:	48 83 fa 01          	cmp    $0x1,%rdx
    1ec3:	77 0c                	ja     1ed1 <rio_readlineb+0x2d>
    1ec5:	eb 60                	jmp    1f27 <rio_readlineb+0x83>
    1ec7:	e8 74 f1 ff ff       	call   1040 <__errno_location@plt>
    1ecc:	83 38 04             	cmpl   $0x4,(%rax)
    1ecf:	75 67                	jne    1f38 <rio_readlineb+0x94>
    1ed1:	8b 43 04             	mov    0x4(%rbx),%eax
    1ed4:	85 c0                	test   %eax,%eax
    1ed6:	7f 20                	jg     1ef8 <rio_readlineb+0x54>
    1ed8:	ba 00 20 00 00       	mov    $0x2000,%edx
    1edd:	48 89 ee             	mov    %rbp,%rsi
    1ee0:	8b 3b                	mov    (%rbx),%edi
    1ee2:	e8 c9 f1 ff ff       	call   10b0 <read@plt>
    1ee7:	89 43 04             	mov    %eax,0x4(%rbx)
    1eea:	85 c0                	test   %eax,%eax
    1eec:	78 d9                	js     1ec7 <rio_readlineb+0x23>
    1eee:	85 c0                	test   %eax,%eax
    1ef0:	74 4f                	je     1f41 <rio_readlineb+0x9d>
    1ef2:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1ef6:	eb d9                	jmp    1ed1 <rio_readlineb+0x2d>
    1ef8:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1efc:	0f b6 0a             	movzbl (%rdx),%ecx
    1eff:	48 83 c2 01          	add    $0x1,%rdx
    1f03:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    1f07:	83 e8 01             	sub    $0x1,%eax
    1f0a:	89 43 04             	mov    %eax,0x4(%rbx)
    1f0d:	49 83 c4 01          	add    $0x1,%r12
    1f11:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1f16:	80 f9 0a             	cmp    $0xa,%cl
    1f19:	74 0c                	je     1f27 <rio_readlineb+0x83>
    1f1b:	41 83 c5 01          	add    $0x1,%r13d
    1f1f:	49 63 c5             	movslq %r13d,%rax
    1f22:	4c 39 f0             	cmp    %r14,%rax
    1f25:	72 aa                	jb     1ed1 <rio_readlineb+0x2d>
    1f27:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1f2c:	49 63 c5             	movslq %r13d,%rax
    1f2f:	5b                   	pop    %rbx
    1f30:	5d                   	pop    %rbp
    1f31:	41 5c                	pop    %r12
    1f33:	41 5d                	pop    %r13
    1f35:	41 5e                	pop    %r14
    1f37:	c3                   	ret
    1f38:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f3f:	eb 05                	jmp    1f46 <rio_readlineb+0xa2>
    1f41:	b8 00 00 00 00       	mov    $0x0,%eax
    1f46:	85 c0                	test   %eax,%eax
    1f48:	75 0d                	jne    1f57 <rio_readlineb+0xb3>
    1f4a:	b8 00 00 00 00       	mov    $0x0,%eax
    1f4f:	41 83 fd 01          	cmp    $0x1,%r13d
    1f53:	75 d2                	jne    1f27 <rio_readlineb+0x83>
    1f55:	eb d8                	jmp    1f2f <rio_readlineb+0x8b>
    1f57:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f5e:	eb cf                	jmp    1f2f <rio_readlineb+0x8b>

0000000000001f60 <submitr>:
    1f60:	41 57                	push   %r15
    1f62:	41 56                	push   %r14
    1f64:	41 55                	push   %r13
    1f66:	41 54                	push   %r12
    1f68:	55                   	push   %rbp
    1f69:	53                   	push   %rbx
    1f6a:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    1f71:	49 89 fd             	mov    %rdi,%r13
    1f74:	89 f5                	mov    %esi,%ebp
    1f76:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    1f7b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1f80:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    1f85:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    1f8a:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    1f91:	00 
    1f92:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    1f99:	00 
    1f9a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1fa1:	00 00 
    1fa3:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    1faa:	00 
    1fab:	31 c0                	xor    %eax,%eax
    1fad:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    1fb4:	00 
    1fb5:	ba 00 00 00 00       	mov    $0x0,%edx
    1fba:	be 01 00 00 00       	mov    $0x1,%esi
    1fbf:	bf 02 00 00 00       	mov    $0x2,%edi
    1fc4:	e8 e7 f1 ff ff       	call   11b0 <socket@plt>
    1fc9:	85 c0                	test   %eax,%eax
    1fcb:	0f 88 35 01 00 00    	js     2106 <submitr+0x1a6>
    1fd1:	41 89 c4             	mov    %eax,%r12d
    1fd4:	4c 89 ef             	mov    %r13,%rdi
    1fd7:	e8 04 f1 ff ff       	call   10e0 <gethostbyname@plt>
    1fdc:	48 85 c0             	test   %rax,%rax
    1fdf:	0f 84 71 01 00 00    	je     2156 <submitr+0x1f6>
    1fe5:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    1fea:	48 c7 44 24 42 00 00 	movq   $0x0,0x42(%rsp)
    1ff1:	00 00 
    1ff3:	c7 44 24 4a 00 00 00 	movl   $0x0,0x4a(%rsp)
    1ffa:	00 
    1ffb:	66 c7 44 24 4e 00 00 	movw   $0x0,0x4e(%rsp)
    2002:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2009:	48 63 50 14          	movslq 0x14(%rax),%rdx
    200d:	48 8b 40 18          	mov    0x18(%rax),%rax
    2011:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2016:	b9 0c 00 00 00       	mov    $0xc,%ecx
    201b:	48 8b 30             	mov    (%rax),%rsi
    201e:	e8 cd f0 ff ff       	call   10f0 <__memmove_chk@plt>
    2023:	66 c1 c5 08          	rol    $0x8,%bp
    2027:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    202c:	ba 10 00 00 00       	mov    $0x10,%edx
    2031:	4c 89 ee             	mov    %r13,%rsi
    2034:	44 89 e7             	mov    %r12d,%edi
    2037:	e8 24 f1 ff ff       	call   1160 <connect@plt>
    203c:	85 c0                	test   %eax,%eax
    203e:	0f 88 7d 01 00 00    	js     21c1 <submitr+0x261>
    2044:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    204b:	b8 00 00 00 00       	mov    $0x0,%eax
    2050:	4c 89 c9             	mov    %r9,%rcx
    2053:	48 89 df             	mov    %rbx,%rdi
    2056:	f2 ae                	repnz scas %es:(%rdi),%al
    2058:	48 89 ce             	mov    %rcx,%rsi
    205b:	48 f7 d6             	not    %rsi
    205e:	4c 89 c9             	mov    %r9,%rcx
    2061:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2066:	f2 ae                	repnz scas %es:(%rdi),%al
    2068:	49 89 c8             	mov    %rcx,%r8
    206b:	4c 89 c9             	mov    %r9,%rcx
    206e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    2073:	f2 ae                	repnz scas %es:(%rdi),%al
    2075:	48 89 ca             	mov    %rcx,%rdx
    2078:	48 f7 d2             	not    %rdx
    207b:	4c 89 c9             	mov    %r9,%rcx
    207e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2083:	f2 ae                	repnz scas %es:(%rdi),%al
    2085:	4c 29 c2             	sub    %r8,%rdx
    2088:	48 29 ca             	sub    %rcx,%rdx
    208b:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    2090:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    2095:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    209b:	0f 87 7d 01 00 00    	ja     221e <submitr+0x2be>
    20a1:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    20a8:	00 
    20a9:	b9 00 04 00 00       	mov    $0x400,%ecx
    20ae:	b8 00 00 00 00       	mov    $0x0,%eax
    20b3:	48 89 d7             	mov    %rdx,%rdi
    20b6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    20b9:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    20c0:	48 89 df             	mov    %rbx,%rdi
    20c3:	f2 ae                	repnz scas %es:(%rdi),%al
    20c5:	48 89 ca             	mov    %rcx,%rdx
    20c8:	48 f7 d2             	not    %rdx
    20cb:	48 89 d1             	mov    %rdx,%rcx
    20ce:	48 83 e9 01          	sub    $0x1,%rcx
    20d2:	85 c9                	test   %ecx,%ecx
    20d4:	0f 84 3f 06 00 00    	je     2719 <submitr+0x7b9>
    20da:	8d 41 ff             	lea    -0x1(%rcx),%eax
    20dd:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    20e2:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    20e9:	00 
    20ea:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    20f1:	00 
    20f2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    20f7:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    20fe:	00 20 00 
    2101:	e9 a6 01 00 00       	jmp    22ac <submitr+0x34c>
    2106:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    210d:	3a 20 43 
    2110:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2117:	20 75 6e 
    211a:	49 89 07             	mov    %rax,(%r15)
    211d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2121:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2128:	74 6f 20 
    212b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2132:	65 20 73 
    2135:	49 89 47 10          	mov    %rax,0x10(%r15)
    2139:	49 89 57 18          	mov    %rdx,0x18(%r15)
    213d:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2144:	65 
    2145:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    214c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2151:	e9 9a 04 00 00       	jmp    25f0 <submitr+0x690>
    2156:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    215d:	3a 20 44 
    2160:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2167:	20 75 6e 
    216a:	49 89 07             	mov    %rax,(%r15)
    216d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2171:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2178:	74 6f 20 
    217b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2182:	76 65 20 
    2185:	49 89 47 10          	mov    %rax,0x10(%r15)
    2189:	49 89 57 18          	mov    %rdx,0x18(%r15)
    218d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2194:	72 20 61 
    2197:	49 89 47 20          	mov    %rax,0x20(%r15)
    219b:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    21a2:	65 
    21a3:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    21aa:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    21af:	44 89 e7             	mov    %r12d,%edi
    21b2:	e8 e9 ee ff ff       	call   10a0 <close@plt>
    21b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21bc:	e9 2f 04 00 00       	jmp    25f0 <submitr+0x690>
    21c1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    21c8:	3a 20 55 
    21cb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    21d2:	20 74 6f 
    21d5:	49 89 07             	mov    %rax,(%r15)
    21d8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21dc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    21e3:	65 63 74 
    21e6:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    21ed:	68 65 20 
    21f0:	49 89 47 10          	mov    %rax,0x10(%r15)
    21f4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21f8:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    21ff:	76 
    2200:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2207:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    220c:	44 89 e7             	mov    %r12d,%edi
    220f:	e8 8c ee ff ff       	call   10a0 <close@plt>
    2214:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2219:	e9 d2 03 00 00       	jmp    25f0 <submitr+0x690>
    221e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2225:	3a 20 52 
    2228:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    222f:	20 73 74 
    2232:	49 89 07             	mov    %rax,(%r15)
    2235:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2239:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    2240:	74 6f 6f 
    2243:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    224a:	65 2e 20 
    224d:	49 89 47 10          	mov    %rax,0x10(%r15)
    2251:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2255:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    225c:	61 73 65 
    225f:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2266:	49 54 52 
    2269:	49 89 47 20          	mov    %rax,0x20(%r15)
    226d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2271:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2278:	55 46 00 
    227b:	49 89 47 30          	mov    %rax,0x30(%r15)
    227f:	44 89 e7             	mov    %r12d,%edi
    2282:	e8 19 ee ff ff       	call   10a0 <close@plt>
    2287:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    228c:	e9 5f 03 00 00       	jmp    25f0 <submitr+0x690>
    2291:	49 0f a3 c5          	bt     %rax,%r13
    2295:	73 21                	jae    22b8 <submitr+0x358>
    2297:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    229b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    229f:	48 83 c3 01          	add    $0x1,%rbx
    22a3:	4c 39 f3             	cmp    %r14,%rbx
    22a6:	0f 84 6d 04 00 00    	je     2719 <submitr+0x7b9>
    22ac:	44 0f b6 03          	movzbl (%rbx),%r8d
    22b0:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    22b4:	3c 35                	cmp    $0x35,%al
    22b6:	76 d9                	jbe    2291 <submitr+0x331>
    22b8:	44 89 c0             	mov    %r8d,%eax
    22bb:	83 e0 df             	and    $0xffffffdf,%eax
    22be:	83 e8 41             	sub    $0x41,%eax
    22c1:	3c 19                	cmp    $0x19,%al
    22c3:	76 d2                	jbe    2297 <submitr+0x337>
    22c5:	41 80 f8 20          	cmp    $0x20,%r8b
    22c9:	74 60                	je     232b <submitr+0x3cb>
    22cb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    22cf:	3c 5f                	cmp    $0x5f,%al
    22d1:	76 0a                	jbe    22dd <submitr+0x37d>
    22d3:	41 80 f8 09          	cmp    $0x9,%r8b
    22d7:	0f 85 af 03 00 00    	jne    268c <submitr+0x72c>
    22dd:	45 0f b6 c0          	movzbl %r8b,%r8d
    22e1:	48 8d 0d 7e 12 00 00 	lea    0x127e(%rip),%rcx        # 3566 <array.3342+0x3a6>
    22e8:	ba 08 00 00 00       	mov    $0x8,%edx
    22ed:	be 01 00 00 00       	mov    $0x1,%esi
    22f2:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    22f7:	b8 00 00 00 00       	mov    $0x0,%eax
    22fc:	e8 9f ee ff ff       	call   11a0 <__sprintf_chk@plt>
    2301:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2308:	00 
    2309:	88 45 00             	mov    %al,0x0(%rbp)
    230c:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2313:	00 
    2314:	88 45 01             	mov    %al,0x1(%rbp)
    2317:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    231e:	00 
    231f:	88 45 02             	mov    %al,0x2(%rbp)
    2322:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2326:	e9 74 ff ff ff       	jmp    229f <submitr+0x33f>
    232b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    232f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2333:	e9 67 ff ff ff       	jmp    229f <submitr+0x33f>
    2338:	49 01 c5             	add    %rax,%r13
    233b:	48 29 c5             	sub    %rax,%rbp
    233e:	74 26                	je     2366 <submitr+0x406>
    2340:	48 89 ea             	mov    %rbp,%rdx
    2343:	4c 89 ee             	mov    %r13,%rsi
    2346:	44 89 e7             	mov    %r12d,%edi
    2349:	e8 22 ed ff ff       	call   1070 <write@plt>
    234e:	48 85 c0             	test   %rax,%rax
    2351:	7f e5                	jg     2338 <submitr+0x3d8>
    2353:	e8 e8 ec ff ff       	call   1040 <__errno_location@plt>
    2358:	83 38 04             	cmpl   $0x4,(%rax)
    235b:	0f 85 31 01 00 00    	jne    2492 <submitr+0x532>
    2361:	4c 89 f0             	mov    %r14,%rax
    2364:	eb d2                	jmp    2338 <submitr+0x3d8>
    2366:	48 85 db             	test   %rbx,%rbx
    2369:	0f 88 23 01 00 00    	js     2492 <submitr+0x532>
    236f:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    2374:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    237b:	00 
    237c:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2381:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2385:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    238a:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2391:	00 
    2392:	ba 00 20 00 00       	mov    $0x2000,%edx
    2397:	e8 08 fb ff ff       	call   1ea4 <rio_readlineb>
    239c:	48 85 c0             	test   %rax,%rax
    239f:	0f 8e 4c 01 00 00    	jle    24f1 <submitr+0x591>
    23a5:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    23aa:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    23b1:	00 
    23b2:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    23b9:	00 
    23ba:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    23c1:	00 
    23c2:	48 8d 35 a4 11 00 00 	lea    0x11a4(%rip),%rsi        # 356d <array.3342+0x3ad>
    23c9:	b8 00 00 00 00       	mov    $0x0,%eax
    23ce:	e8 4d ed ff ff       	call   1120 <__isoc99_sscanf@plt>
    23d3:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    23d8:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    23df:	0f 85 80 01 00 00    	jne    2565 <submitr+0x605>
    23e5:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    23ec:	00 
    23ed:	48 8d 2d 8a 11 00 00 	lea    0x118a(%rip),%rbp        # 357e <array.3342+0x3be>
    23f4:	4c 8d 6c 24 50       	lea    0x50(%rsp),%r13
    23f9:	b9 03 00 00 00       	mov    $0x3,%ecx
    23fe:	48 89 de             	mov    %rbx,%rsi
    2401:	48 89 ef             	mov    %rbp,%rdi
    2404:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    2406:	0f 97 c0             	seta   %al
    2409:	1c 00                	sbb    $0x0,%al
    240b:	84 c0                	test   %al,%al
    240d:	0f 84 89 01 00 00    	je     259c <submitr+0x63c>
    2413:	ba 00 20 00 00       	mov    $0x2000,%edx
    2418:	48 89 de             	mov    %rbx,%rsi
    241b:	4c 89 ef             	mov    %r13,%rdi
    241e:	e8 81 fa ff ff       	call   1ea4 <rio_readlineb>
    2423:	48 85 c0             	test   %rax,%rax
    2426:	7f d1                	jg     23f9 <submitr+0x499>
    2428:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    242f:	3a 20 43 
    2432:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2439:	20 75 6e 
    243c:	49 89 07             	mov    %rax,(%r15)
    243f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2443:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    244a:	74 6f 20 
    244d:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2454:	68 65 61 
    2457:	49 89 47 10          	mov    %rax,0x10(%r15)
    245b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    245f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2466:	66 72 6f 
    2469:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2470:	76 65 72 
    2473:	49 89 47 20          	mov    %rax,0x20(%r15)
    2477:	49 89 57 28          	mov    %rdx,0x28(%r15)
    247b:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2480:	44 89 e7             	mov    %r12d,%edi
    2483:	e8 18 ec ff ff       	call   10a0 <close@plt>
    2488:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    248d:	e9 5e 01 00 00       	jmp    25f0 <submitr+0x690>
    2492:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2499:	3a 20 43 
    249c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24a3:	20 75 6e 
    24a6:	49 89 07             	mov    %rax,(%r15)
    24a9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24ad:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24b4:	74 6f 20 
    24b7:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    24be:	20 74 6f 
    24c1:	49 89 47 10          	mov    %rax,0x10(%r15)
    24c5:	49 89 57 18          	mov    %rdx,0x18(%r15)
    24c9:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    24d0:	73 65 72 
    24d3:	49 89 47 20          	mov    %rax,0x20(%r15)
    24d7:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    24de:	00 
    24df:	44 89 e7             	mov    %r12d,%edi
    24e2:	e8 b9 eb ff ff       	call   10a0 <close@plt>
    24e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24ec:	e9 ff 00 00 00       	jmp    25f0 <submitr+0x690>
    24f1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24f8:	3a 20 43 
    24fb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2502:	20 75 6e 
    2505:	49 89 07             	mov    %rax,(%r15)
    2508:	49 89 57 08          	mov    %rdx,0x8(%r15)
    250c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2513:	74 6f 20 
    2516:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    251d:	66 69 72 
    2520:	49 89 47 10          	mov    %rax,0x10(%r15)
    2524:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2528:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    252f:	61 64 65 
    2532:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2539:	6d 20 73 
    253c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2540:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2544:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    254b:	65 
    254c:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2553:	44 89 e7             	mov    %r12d,%edi
    2556:	e8 45 eb ff ff       	call   10a0 <close@plt>
    255b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2560:	e9 8b 00 00 00       	jmp    25f0 <submitr+0x690>
    2565:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    256c:	00 
    256d:	48 8d 0d 44 0f 00 00 	lea    0xf44(%rip),%rcx        # 34b8 <array.3342+0x2f8>
    2574:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    257b:	be 01 00 00 00       	mov    $0x1,%esi
    2580:	4c 89 ff             	mov    %r15,%rdi
    2583:	b8 00 00 00 00       	mov    $0x0,%eax
    2588:	e8 13 ec ff ff       	call   11a0 <__sprintf_chk@plt>
    258d:	44 89 e7             	mov    %r12d,%edi
    2590:	e8 0b eb ff ff       	call   10a0 <close@plt>
    2595:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    259a:	eb 54                	jmp    25f0 <submitr+0x690>
    259c:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    25a3:	00 
    25a4:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    25a9:	ba 00 20 00 00       	mov    $0x2000,%edx
    25ae:	e8 f1 f8 ff ff       	call   1ea4 <rio_readlineb>
    25b3:	48 85 c0             	test   %rax,%rax
    25b6:	7e 61                	jle    2619 <submitr+0x6b9>
    25b8:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    25bf:	00 
    25c0:	4c 89 ff             	mov    %r15,%rdi
    25c3:	e8 88 ea ff ff       	call   1050 <strcpy@plt>
    25c8:	44 89 e7             	mov    %r12d,%edi
    25cb:	e8 d0 ea ff ff       	call   10a0 <close@plt>
    25d0:	b9 03 00 00 00       	mov    $0x3,%ecx
    25d5:	48 8d 3d a5 0f 00 00 	lea    0xfa5(%rip),%rdi        # 3581 <array.3342+0x3c1>
    25dc:	4c 89 fe             	mov    %r15,%rsi
    25df:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    25e1:	0f 97 c0             	seta   %al
    25e4:	1c 00                	sbb    $0x0,%al
    25e6:	84 c0                	test   %al,%al
    25e8:	0f 95 c0             	setne  %al
    25eb:	0f b6 c0             	movzbl %al,%eax
    25ee:	f7 d8                	neg    %eax
    25f0:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    25f7:	00 
    25f8:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    25ff:	00 00 
    2601:	0f 85 95 01 00 00    	jne    279c <submitr+0x83c>
    2607:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    260e:	5b                   	pop    %rbx
    260f:	5d                   	pop    %rbp
    2610:	41 5c                	pop    %r12
    2612:	41 5d                	pop    %r13
    2614:	41 5e                	pop    %r14
    2616:	41 5f                	pop    %r15
    2618:	c3                   	ret
    2619:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2620:	3a 20 43 
    2623:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    262a:	20 75 6e 
    262d:	49 89 07             	mov    %rax,(%r15)
    2630:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2634:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    263b:	74 6f 20 
    263e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2645:	73 74 61 
    2648:	49 89 47 10          	mov    %rax,0x10(%r15)
    264c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2650:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2657:	65 73 73 
    265a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2661:	72 6f 6d 
    2664:	49 89 47 20          	mov    %rax,0x20(%r15)
    2668:	49 89 57 28          	mov    %rdx,0x28(%r15)
    266c:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2673:	65 72 00 
    2676:	49 89 47 30          	mov    %rax,0x30(%r15)
    267a:	44 89 e7             	mov    %r12d,%edi
    267d:	e8 1e ea ff ff       	call   10a0 <close@plt>
    2682:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2687:	e9 64 ff ff ff       	jmp    25f0 <submitr+0x690>
    268c:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2693:	3a 20 52 
    2696:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    269d:	20 73 74 
    26a0:	49 89 07             	mov    %rax,(%r15)
    26a3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26a7:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26ae:	63 6f 6e 
    26b1:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26b8:	20 61 6e 
    26bb:	49 89 47 10          	mov    %rax,0x10(%r15)
    26bf:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26c3:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    26ca:	67 61 6c 
    26cd:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    26d4:	6e 70 72 
    26d7:	49 89 47 20          	mov    %rax,0x20(%r15)
    26db:	49 89 57 28          	mov    %rdx,0x28(%r15)
    26df:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    26e6:	6c 65 20 
    26e9:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    26f0:	63 74 65 
    26f3:	49 89 47 30          	mov    %rax,0x30(%r15)
    26f7:	49 89 57 38          	mov    %rdx,0x38(%r15)
    26fb:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2702:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2707:	44 89 e7             	mov    %r12d,%edi
    270a:	e8 91 e9 ff ff       	call   10a0 <close@plt>
    270f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2714:	e9 d7 fe ff ff       	jmp    25f0 <submitr+0x690>
    2719:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    2720:	00 
    2721:	48 83 ec 08          	sub    $0x8,%rsp
    2725:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    272c:	00 
    272d:	50                   	push   %rax
    272e:	ff 74 24 28          	push   0x28(%rsp)
    2732:	ff 74 24 38          	push   0x38(%rsp)
    2736:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    273b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2740:	48 8d 0d a1 0d 00 00 	lea    0xda1(%rip),%rcx        # 34e8 <array.3342+0x328>
    2747:	ba 00 20 00 00       	mov    $0x2000,%edx
    274c:	be 01 00 00 00       	mov    $0x1,%esi
    2751:	48 89 df             	mov    %rbx,%rdi
    2754:	b8 00 00 00 00       	mov    $0x0,%eax
    2759:	e8 42 ea ff ff       	call   11a0 <__sprintf_chk@plt>
    275e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    2765:	b8 00 00 00 00       	mov    $0x0,%eax
    276a:	48 89 df             	mov    %rbx,%rdi
    276d:	f2 ae                	repnz scas %es:(%rdi),%al
    276f:	48 f7 d1             	not    %rcx
    2772:	48 89 cb             	mov    %rcx,%rbx
    2775:	48 83 eb 01          	sub    $0x1,%rbx
    2779:	48 83 c4 20          	add    $0x20,%rsp
    277d:	48 89 dd             	mov    %rbx,%rbp
    2780:	4c 8d ac 24 60 20 00 	lea    0x2060(%rsp),%r13
    2787:	00 
    2788:	41 be 00 00 00 00    	mov    $0x0,%r14d
    278e:	48 85 db             	test   %rbx,%rbx
    2791:	0f 85 a9 fb ff ff    	jne    2340 <submitr+0x3e0>
    2797:	e9 d3 fb ff ff       	jmp    236f <submitr+0x40f>
    279c:	e8 df e8 ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000027a1 <init_timeout>:
    27a1:	85 ff                	test   %edi,%edi
    27a3:	74 25                	je     27ca <init_timeout+0x29>
    27a5:	53                   	push   %rbx
    27a6:	89 fb                	mov    %edi,%ebx
    27a8:	48 8d 35 c5 f6 ff ff 	lea    -0x93b(%rip),%rsi        # 1e74 <sigalrm_handler>
    27af:	bf 0e 00 00 00       	mov    $0xe,%edi
    27b4:	e8 17 e9 ff ff       	call   10d0 <signal@plt>
    27b9:	85 db                	test   %ebx,%ebx
    27bb:	bf 00 00 00 00       	mov    $0x0,%edi
    27c0:	0f 49 fb             	cmovns %ebx,%edi
    27c3:	e8 c8 e8 ff ff       	call   1090 <alarm@plt>
    27c8:	5b                   	pop    %rbx
    27c9:	c3                   	ret
    27ca:	f3 c3                	repz ret

00000000000027cc <init_driver>:
    27cc:	41 54                	push   %r12
    27ce:	55                   	push   %rbp
    27cf:	53                   	push   %rbx
    27d0:	48 83 ec 20          	sub    $0x20,%rsp
    27d4:	49 89 fc             	mov    %rdi,%r12
    27d7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    27de:	00 00 
    27e0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    27e5:	31 c0                	xor    %eax,%eax
    27e7:	be 01 00 00 00       	mov    $0x1,%esi
    27ec:	bf 0d 00 00 00       	mov    $0xd,%edi
    27f1:	e8 da e8 ff ff       	call   10d0 <signal@plt>
    27f6:	be 01 00 00 00       	mov    $0x1,%esi
    27fb:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2800:	e8 cb e8 ff ff       	call   10d0 <signal@plt>
    2805:	be 01 00 00 00       	mov    $0x1,%esi
    280a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    280f:	e8 bc e8 ff ff       	call   10d0 <signal@plt>
    2814:	ba 00 00 00 00       	mov    $0x0,%edx
    2819:	be 01 00 00 00       	mov    $0x1,%esi
    281e:	bf 02 00 00 00       	mov    $0x2,%edi
    2823:	e8 88 e9 ff ff       	call   11b0 <socket@plt>
    2828:	85 c0                	test   %eax,%eax
    282a:	0f 88 a3 00 00 00    	js     28d3 <init_driver+0x107>
    2830:	89 c3                	mov    %eax,%ebx
    2832:	48 8d 3d 4b 0d 00 00 	lea    0xd4b(%rip),%rdi        # 3584 <array.3342+0x3c4>
    2839:	e8 a2 e8 ff ff       	call   10e0 <gethostbyname@plt>
    283e:	48 85 c0             	test   %rax,%rax
    2841:	0f 84 df 00 00 00    	je     2926 <init_driver+0x15a>
    2847:	48 89 e5             	mov    %rsp,%rbp
    284a:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2851:	00 00 
    2853:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    285a:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2860:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2866:	48 63 50 14          	movslq 0x14(%rax),%rdx
    286a:	48 8b 40 18          	mov    0x18(%rax),%rax
    286e:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2872:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2877:	48 8b 30             	mov    (%rax),%rsi
    287a:	e8 71 e8 ff ff       	call   10f0 <__memmove_chk@plt>
    287f:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2886:	ba 10 00 00 00       	mov    $0x10,%edx
    288b:	48 89 ee             	mov    %rbp,%rsi
    288e:	89 df                	mov    %ebx,%edi
    2890:	e8 cb e8 ff ff       	call   1160 <connect@plt>
    2895:	85 c0                	test   %eax,%eax
    2897:	0f 88 fb 00 00 00    	js     2998 <init_driver+0x1cc>
    289d:	89 df                	mov    %ebx,%edi
    289f:	e8 fc e7 ff ff       	call   10a0 <close@plt>
    28a4:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
    28ab:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
    28b1:	b8 00 00 00 00       	mov    $0x0,%eax
    28b6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    28bb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    28c2:	00 00 
    28c4:	0f 85 06 01 00 00    	jne    29d0 <init_driver+0x204>
    28ca:	48 83 c4 20          	add    $0x20,%rsp
    28ce:	5b                   	pop    %rbx
    28cf:	5d                   	pop    %rbp
    28d0:	41 5c                	pop    %r12
    28d2:	c3                   	ret
    28d3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    28da:	3a 20 43 
    28dd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    28e4:	20 75 6e 
    28e7:	49 89 04 24          	mov    %rax,(%r12)
    28eb:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    28f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    28f7:	74 6f 20 
    28fa:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2901:	65 20 73 
    2904:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    2909:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    290e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
    2915:	6b 65 
    2917:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
    291e:	00 
    291f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2924:	eb 90                	jmp    28b6 <init_driver+0xea>
    2926:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    292d:	3a 20 44 
    2930:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2937:	20 75 6e 
    293a:	49 89 04 24          	mov    %rax,(%r12)
    293e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    2943:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    294a:	74 6f 20 
    294d:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2954:	76 65 20 
    2957:	49 89 44 24 10       	mov    %rax,0x10(%r12)
    295c:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
    2961:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2968:	72 20 61 
    296b:	49 89 44 24 20       	mov    %rax,0x20(%r12)
    2970:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
    2977:	72 65 
    2979:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
    2980:	73 
    2981:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
    2987:	89 df                	mov    %ebx,%edi
    2989:	e8 12 e7 ff ff       	call   10a0 <close@plt>
    298e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2993:	e9 1e ff ff ff       	jmp    28b6 <init_driver+0xea>
    2998:	4c 8d 05 e5 0b 00 00 	lea    0xbe5(%rip),%r8        # 3584 <array.3342+0x3c4>
    299f:	48 8d 0d 9a 0b 00 00 	lea    0xb9a(%rip),%rcx        # 3540 <array.3342+0x380>
    29a6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29ad:	be 01 00 00 00       	mov    $0x1,%esi
    29b2:	4c 89 e7             	mov    %r12,%rdi
    29b5:	b8 00 00 00 00       	mov    $0x0,%eax
    29ba:	e8 e1 e7 ff ff       	call   11a0 <__sprintf_chk@plt>
    29bf:	89 df                	mov    %ebx,%edi
    29c1:	e8 da e6 ff ff       	call   10a0 <close@plt>
    29c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29cb:	e9 e6 fe ff ff       	jmp    28b6 <init_driver+0xea>
    29d0:	e8 ab e6 ff ff       	call   1080 <__stack_chk_fail@plt>

00000000000029d5 <driver_ping>:
    29d5:	55                   	push   %rbp
    29d6:	53                   	push   %rbx
    29d7:	48 83 ec 28          	sub    $0x28,%rsp
    29db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29e2:	00 00 
    29e4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    29e9:	31 c0                	xor    %eax,%eax
    29eb:	ba 00 00 00 00       	mov    $0x0,%edx
    29f0:	be 01 00 00 00       	mov    $0x1,%esi
    29f5:	bf 02 00 00 00       	mov    $0x2,%edi
    29fa:	e8 b1 e7 ff ff       	call   11b0 <socket@plt>
    29ff:	85 c0                	test   %eax,%eax
    2a01:	0f 88 a4 00 00 00    	js     2aab <driver_ping+0xd6>
    2a07:	89 c3                	mov    %eax,%ebx
    2a09:	48 8d 3d 74 0b 00 00 	lea    0xb74(%rip),%rdi        # 3584 <array.3342+0x3c4>
    2a10:	e8 cb e6 ff ff       	call   10e0 <gethostbyname@plt>
    2a15:	48 85 c0             	test   %rax,%rax
    2a18:	74 75                	je     2a8f <driver_ping+0xba>
    2a1a:	48 89 e5             	mov    %rsp,%rbp
    2a1d:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2a24:	00 00 
    2a26:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
    2a2d:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
    2a33:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2a39:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2a3d:	48 8b 40 18          	mov    0x18(%rax),%rax
    2a41:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
    2a45:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2a4a:	48 8b 30             	mov    (%rax),%rsi
    2a4d:	e8 9e e6 ff ff       	call   10f0 <__memmove_chk@plt>
    2a52:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2a59:	ba 10 00 00 00       	mov    $0x10,%edx
    2a5e:	48 89 ee             	mov    %rbp,%rsi
    2a61:	89 df                	mov    %ebx,%edi
    2a63:	e8 f8 e6 ff ff       	call   1160 <connect@plt>
    2a68:	85 c0                	test   %eax,%eax
    2a6a:	78 31                	js     2a9d <driver_ping+0xc8>
    2a6c:	89 df                	mov    %ebx,%edi
    2a6e:	e8 2d e6 ff ff       	call   10a0 <close@plt>
    2a73:	b8 00 00 00 00       	mov    $0x0,%eax
    2a78:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2a7d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    2a84:	00 00 
    2a86:	75 2a                	jne    2ab2 <driver_ping+0xdd>
    2a88:	48 83 c4 28          	add    $0x28,%rsp
    2a8c:	5b                   	pop    %rbx
    2a8d:	5d                   	pop    %rbp
    2a8e:	c3                   	ret
    2a8f:	89 df                	mov    %ebx,%edi
    2a91:	e8 0a e6 ff ff       	call   10a0 <close@plt>
    2a96:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a9b:	eb db                	jmp    2a78 <driver_ping+0xa3>
    2a9d:	89 df                	mov    %ebx,%edi
    2a9f:	e8 fc e5 ff ff       	call   10a0 <close@plt>
    2aa4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2aa9:	eb cd                	jmp    2a78 <driver_ping+0xa3>
    2aab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ab0:	eb c6                	jmp    2a78 <driver_ping+0xa3>
    2ab2:	e8 c9 e5 ff ff       	call   1080 <__stack_chk_fail@plt>

0000000000002ab7 <driver_post>:
    2ab7:	53                   	push   %rbx
    2ab8:	4c 89 c3             	mov    %r8,%rbx
    2abb:	85 c9                	test   %ecx,%ecx
    2abd:	75 17                	jne    2ad6 <driver_post+0x1f>
    2abf:	48 85 ff             	test   %rdi,%rdi
    2ac2:	74 05                	je     2ac9 <driver_post+0x12>
    2ac4:	80 3f 00             	cmpb   $0x0,(%rdi)
    2ac7:	75 33                	jne    2afc <driver_post+0x45>
    2ac9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2ace:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ad2:	89 c8                	mov    %ecx,%eax
    2ad4:	5b                   	pop    %rbx
    2ad5:	c3                   	ret
    2ad6:	48 8d 35 b7 0a 00 00 	lea    0xab7(%rip),%rsi        # 3594 <array.3342+0x3d4>
    2add:	bf 01 00 00 00       	mov    $0x1,%edi
    2ae2:	b8 00 00 00 00       	mov    $0x0,%eax
    2ae7:	e8 44 e6 ff ff       	call   1130 <__printf_chk@plt>
    2aec:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2af1:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2af5:	b8 00 00 00 00       	mov    $0x0,%eax
    2afa:	eb d8                	jmp    2ad4 <driver_post+0x1d>
    2afc:	41 50                	push   %r8
    2afe:	52                   	push   %rdx
    2aff:	4c 8d 0d a5 0a 00 00 	lea    0xaa5(%rip),%r9        # 35ab <array.3342+0x3eb>
    2b06:	49 89 f0             	mov    %rsi,%r8
    2b09:	48 89 f9             	mov    %rdi,%rcx
    2b0c:	48 8d 15 a5 0a 00 00 	lea    0xaa5(%rip),%rdx        # 35b8 <array.3342+0x3f8>
    2b13:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2b18:	48 8d 3d 65 0a 00 00 	lea    0xa65(%rip),%rdi        # 3584 <array.3342+0x3c4>
    2b1f:	e8 3c f4 ff ff       	call   1f60 <submitr>
    2b24:	48 83 c4 10          	add    $0x10,%rsp
    2b28:	eb aa                	jmp    2ad4 <driver_post+0x1d>
    2b2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002b30 <__libc_csu_init>:
    2b30:	f3 0f 1e fa          	endbr64
    2b34:	41 57                	push   %r15
    2b36:	4c 8d 3d bb 21 00 00 	lea    0x21bb(%rip),%r15        # 4cf8 <__frame_dummy_init_array_entry>
    2b3d:	41 56                	push   %r14
    2b3f:	49 89 d6             	mov    %rdx,%r14
    2b42:	41 55                	push   %r13
    2b44:	49 89 f5             	mov    %rsi,%r13
    2b47:	41 54                	push   %r12
    2b49:	41 89 fc             	mov    %edi,%r12d
    2b4c:	55                   	push   %rbp
    2b4d:	48 8d 2d ac 21 00 00 	lea    0x21ac(%rip),%rbp        # 4d00 <__do_global_dtors_aux_fini_array_entry>
    2b54:	53                   	push   %rbx
    2b55:	4c 29 fd             	sub    %r15,%rbp
    2b58:	48 83 ec 08          	sub    $0x8,%rsp
    2b5c:	e8 9f e4 ff ff       	call   1000 <_init>
    2b61:	48 c1 fd 03          	sar    $0x3,%rbp
    2b65:	74 1f                	je     2b86 <__libc_csu_init+0x56>
    2b67:	31 db                	xor    %ebx,%ebx
    2b69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2b70:	4c 89 f2             	mov    %r14,%rdx
    2b73:	4c 89 ee             	mov    %r13,%rsi
    2b76:	44 89 e7             	mov    %r12d,%edi
    2b79:	41 ff 14 df          	call   *(%r15,%rbx,8)
    2b7d:	48 83 c3 01          	add    $0x1,%rbx
    2b81:	48 39 dd             	cmp    %rbx,%rbp
    2b84:	75 ea                	jne    2b70 <__libc_csu_init+0x40>
    2b86:	48 83 c4 08          	add    $0x8,%rsp
    2b8a:	5b                   	pop    %rbx
    2b8b:	5d                   	pop    %rbp
    2b8c:	41 5c                	pop    %r12
    2b8e:	41 5d                	pop    %r13
    2b90:	41 5e                	pop    %r14
    2b92:	41 5f                	pop    %r15
    2b94:	c3                   	ret
    2b95:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2b9c:	00 00 00 00 

0000000000002ba0 <__libc_csu_fini>:
    2ba0:	f3 0f 1e fa          	endbr64
    2ba4:	c3                   	ret

Desmontagem da secção .fini:

0000000000002ba8 <_fini>:
    2ba8:	f3 0f 1e fa          	endbr64
    2bac:	48 83 ec 08          	sub    $0x8,%rsp
    2bb0:	48 83 c4 08          	add    $0x8,%rsp
    2bb4:	c3                   	ret
