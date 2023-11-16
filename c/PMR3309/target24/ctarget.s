
ctarget:     formato de ficheiro elf64-x86-64


Desmontagem da secção .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Desmontagem da secção .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 5f 00 00    	jmp    *0x5fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <__errno_location@plt>:
  401030:	ff 25 e2 5f 00 00    	jmp    *0x5fe2(%rip)        # 407018 <__errno_location@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <srandom@plt>:
  401040:	ff 25 da 5f 00 00    	jmp    *0x5fda(%rip)        # 407020 <srandom@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <strncmp@plt>:
  401050:	ff 25 d2 5f 00 00    	jmp    *0x5fd2(%rip)        # 407028 <strncmp@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <strcpy@plt>:
  401060:	ff 25 ca 5f 00 00    	jmp    *0x5fca(%rip)        # 407030 <strcpy@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

0000000000401070 <puts@plt>:
  401070:	ff 25 c2 5f 00 00    	jmp    *0x5fc2(%rip)        # 407038 <puts@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <.plt>

0000000000401080 <write@plt>:
  401080:	ff 25 ba 5f 00 00    	jmp    *0x5fba(%rip)        # 407040 <write@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <.plt>

0000000000401090 <__stack_chk_fail@plt>:
  401090:	ff 25 b2 5f 00 00    	jmp    *0x5fb2(%rip)        # 407048 <__stack_chk_fail@GLIBC_2.4>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 5f 00 00    	jmp    *0x5faa(%rip)        # 407050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <.plt>

00000000004010b0 <memset@plt>:
  4010b0:	ff 25 a2 5f 00 00    	jmp    *0x5fa2(%rip)        # 407058 <memset@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <.plt>

00000000004010c0 <alarm@plt>:
  4010c0:	ff 25 9a 5f 00 00    	jmp    *0x5f9a(%rip)        # 407060 <alarm@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <.plt>

00000000004010d0 <close@plt>:
  4010d0:	ff 25 92 5f 00 00    	jmp    *0x5f92(%rip)        # 407068 <close@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <.plt>

00000000004010e0 <read@plt>:
  4010e0:	ff 25 8a 5f 00 00    	jmp    *0x5f8a(%rip)        # 407070 <read@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <.plt>

00000000004010f0 <signal@plt>:
  4010f0:	ff 25 82 5f 00 00    	jmp    *0x5f82(%rip)        # 407078 <signal@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <.plt>

0000000000401100 <gethostbyname@plt>:
  401100:	ff 25 7a 5f 00 00    	jmp    *0x5f7a(%rip)        # 407080 <gethostbyname@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <.plt>

0000000000401110 <__memmove_chk@plt>:
  401110:	ff 25 72 5f 00 00    	jmp    *0x5f72(%rip)        # 407088 <__memmove_chk@GLIBC_2.3.4>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <.plt>

0000000000401120 <strtol@plt>:
  401120:	ff 25 6a 5f 00 00    	jmp    *0x5f6a(%rip)        # 407090 <strtol@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <.plt>

0000000000401130 <memcpy@plt>:
  401130:	ff 25 62 5f 00 00    	jmp    *0x5f62(%rip)        # 407098 <memcpy@GLIBC_2.14>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <.plt>

0000000000401140 <time@plt>:
  401140:	ff 25 5a 5f 00 00    	jmp    *0x5f5a(%rip)        # 4070a0 <time@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <.plt>

0000000000401150 <random@plt>:
  401150:	ff 25 52 5f 00 00    	jmp    *0x5f52(%rip)        # 4070a8 <random@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <.plt>

0000000000401160 <__isoc99_sscanf@plt>:
  401160:	ff 25 4a 5f 00 00    	jmp    *0x5f4a(%rip)        # 4070b0 <__isoc99_sscanf@GLIBC_2.7>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <.plt>

0000000000401170 <munmap@plt>:
  401170:	ff 25 42 5f 00 00    	jmp    *0x5f42(%rip)        # 4070b8 <munmap@GLIBC_2.2.5>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <.plt>

0000000000401180 <__printf_chk@plt>:
  401180:	ff 25 3a 5f 00 00    	jmp    *0x5f3a(%rip)        # 4070c0 <__printf_chk@GLIBC_2.3.4>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <.plt>

0000000000401190 <fopen@plt>:
  401190:	ff 25 32 5f 00 00    	jmp    *0x5f32(%rip)        # 4070c8 <fopen@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	push   $0x16
  40119b:	e9 80 fe ff ff       	jmp    401020 <.plt>

00000000004011a0 <getopt@plt>:
  4011a0:	ff 25 2a 5f 00 00    	jmp    *0x5f2a(%rip)        # 4070d0 <getopt@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	push   $0x17
  4011ab:	e9 70 fe ff ff       	jmp    401020 <.plt>

00000000004011b0 <strtoul@plt>:
  4011b0:	ff 25 22 5f 00 00    	jmp    *0x5f22(%rip)        # 4070d8 <strtoul@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	push   $0x18
  4011bb:	e9 60 fe ff ff       	jmp    401020 <.plt>

00000000004011c0 <exit@plt>:
  4011c0:	ff 25 1a 5f 00 00    	jmp    *0x5f1a(%rip)        # 4070e0 <exit@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	push   $0x19
  4011cb:	e9 50 fe ff ff       	jmp    401020 <.plt>

00000000004011d0 <connect@plt>:
  4011d0:	ff 25 12 5f 00 00    	jmp    *0x5f12(%rip)        # 4070e8 <connect@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	push   $0x1a
  4011db:	e9 40 fe ff ff       	jmp    401020 <.plt>

00000000004011e0 <__fprintf_chk@plt>:
  4011e0:	ff 25 0a 5f 00 00    	jmp    *0x5f0a(%rip)        # 4070f0 <__fprintf_chk@GLIBC_2.3.4>
  4011e6:	68 1b 00 00 00       	push   $0x1b
  4011eb:	e9 30 fe ff ff       	jmp    401020 <.plt>

00000000004011f0 <getc@plt>:
  4011f0:	ff 25 02 5f 00 00    	jmp    *0x5f02(%rip)        # 4070f8 <getc@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	push   $0x1c
  4011fb:	e9 20 fe ff ff       	jmp    401020 <.plt>

0000000000401200 <__sprintf_chk@plt>:
  401200:	ff 25 fa 5e 00 00    	jmp    *0x5efa(%rip)        # 407100 <__sprintf_chk@GLIBC_2.3.4>
  401206:	68 1d 00 00 00       	push   $0x1d
  40120b:	e9 10 fe ff ff       	jmp    401020 <.plt>

0000000000401210 <socket@plt>:
  401210:	ff 25 f2 5e 00 00    	jmp    *0x5ef2(%rip)        # 407108 <socket@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	push   $0x1e
  40121b:	e9 00 fe ff ff       	jmp    401020 <.plt>

Desmontagem da secção .text:

0000000000401220 <_start>:
  401220:	f3 0f 1e fa          	endbr64
  401224:	31 ed                	xor    %ebp,%ebp
  401226:	49 89 d1             	mov    %rdx,%r9
  401229:	5e                   	pop    %rsi
  40122a:	48 89 e2             	mov    %rsp,%rdx
  40122d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401231:	50                   	push   %rax
  401232:	54                   	push   %rsp
  401233:	49 c7 c0 f0 31 40 00 	mov    $0x4031f0,%r8
  40123a:	48 c7 c1 80 31 40 00 	mov    $0x403180,%rcx
  401241:	48 c7 c7 a1 14 40 00 	mov    $0x4014a1,%rdi
  401248:	ff 15 a2 5d 00 00    	call   *0x5da2(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40124e:	f4                   	hlt
  40124f:	90                   	nop

0000000000401250 <_dl_relocate_static_pie>:
  401250:	f3 0f 1e fa          	endbr64
  401254:	c3                   	ret
  401255:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40125c:	00 00 00 
  40125f:	90                   	nop

0000000000401260 <deregister_tm_clones>:
  401260:	55                   	push   %rbp
  401261:	b8 90 74 40 00       	mov    $0x407490,%eax
  401266:	48 3d 90 74 40 00    	cmp    $0x407490,%rax
  40126c:	48 89 e5             	mov    %rsp,%rbp
  40126f:	74 17                	je     401288 <deregister_tm_clones+0x28>
  401271:	b8 00 00 00 00       	mov    $0x0,%eax
  401276:	48 85 c0             	test   %rax,%rax
  401279:	74 0d                	je     401288 <deregister_tm_clones+0x28>
  40127b:	5d                   	pop    %rbp
  40127c:	bf 90 74 40 00       	mov    $0x407490,%edi
  401281:	ff e0                	jmp    *%rax
  401283:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401288:	5d                   	pop    %rbp
  401289:	c3                   	ret
  40128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401290 <register_tm_clones>:
  401290:	be 90 74 40 00       	mov    $0x407490,%esi
  401295:	55                   	push   %rbp
  401296:	48 81 ee 90 74 40 00 	sub    $0x407490,%rsi
  40129d:	48 89 e5             	mov    %rsp,%rbp
  4012a0:	48 c1 fe 03          	sar    $0x3,%rsi
  4012a4:	48 89 f0             	mov    %rsi,%rax
  4012a7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012ab:	48 01 c6             	add    %rax,%rsi
  4012ae:	48 d1 fe             	sar    %rsi
  4012b1:	74 15                	je     4012c8 <register_tm_clones+0x38>
  4012b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b8:	48 85 c0             	test   %rax,%rax
  4012bb:	74 0b                	je     4012c8 <register_tm_clones+0x38>
  4012bd:	5d                   	pop    %rbp
  4012be:	bf 90 74 40 00       	mov    $0x407490,%edi
  4012c3:	ff e0                	jmp    *%rax
  4012c5:	0f 1f 00             	nopl   (%rax)
  4012c8:	5d                   	pop    %rbp
  4012c9:	c3                   	ret
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004012d0 <__do_global_dtors_aux>:
  4012d0:	80 3d f1 61 00 00 00 	cmpb   $0x0,0x61f1(%rip)        # 4074c8 <completed.7658>
  4012d7:	75 17                	jne    4012f0 <__do_global_dtors_aux+0x20>
  4012d9:	55                   	push   %rbp
  4012da:	48 89 e5             	mov    %rsp,%rbp
  4012dd:	e8 7e ff ff ff       	call   401260 <deregister_tm_clones>
  4012e2:	c6 05 df 61 00 00 01 	movb   $0x1,0x61df(%rip)        # 4074c8 <completed.7658>
  4012e9:	5d                   	pop    %rbp
  4012ea:	c3                   	ret
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012f0:	f3 c3                	repz ret
  4012f2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012f9:	00 00 00 00 
  4012fd:	0f 1f 00             	nopl   (%rax)

0000000000401300 <frame_dummy>:
  401300:	55                   	push   %rbp
  401301:	48 89 e5             	mov    %rsp,%rbp
  401304:	5d                   	pop    %rbp
  401305:	eb 89                	jmp    401290 <register_tm_clones>

0000000000401307 <usage>:
  401307:	48 83 ec 08          	sub    $0x8,%rsp
  40130b:	48 89 fa             	mov    %rdi,%rdx
  40130e:	83 3d f3 61 00 00 00 	cmpl   $0x0,0x61f3(%rip)        # 407508 <is_checker>
  401315:	74 50                	je     401367 <usage+0x60>
  401317:	48 8d 35 ea 2c 00 00 	lea    0x2cea(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40131e:	bf 01 00 00 00       	mov    $0x1,%edi
  401323:	b8 00 00 00 00       	mov    $0x0,%eax
  401328:	e8 53 fe ff ff       	call   401180 <__printf_chk@plt>
  40132d:	48 8d 3d 0c 2d 00 00 	lea    0x2d0c(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401334:	e8 37 fd ff ff       	call   401070 <puts@plt>
  401339:	48 8d 3d 00 2e 00 00 	lea    0x2e00(%rip),%rdi        # 404140 <_IO_stdin_used+0x140>
  401340:	e8 2b fd ff ff       	call   401070 <puts@plt>
  401345:	48 8d 3d 1c 2d 00 00 	lea    0x2d1c(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40134c:	e8 1f fd ff ff       	call   401070 <puts@plt>
  401351:	48 8d 3d 02 2e 00 00 	lea    0x2e02(%rip),%rdi        # 40415a <_IO_stdin_used+0x15a>
  401358:	e8 13 fd ff ff       	call   401070 <puts@plt>
  40135d:	bf 00 00 00 00       	mov    $0x0,%edi
  401362:	e8 59 fe ff ff       	call   4011c0 <exit@plt>
  401367:	48 8d 35 08 2e 00 00 	lea    0x2e08(%rip),%rsi        # 404176 <_IO_stdin_used+0x176>
  40136e:	bf 01 00 00 00       	mov    $0x1,%edi
  401373:	b8 00 00 00 00       	mov    $0x0,%eax
  401378:	e8 03 fe ff ff       	call   401180 <__printf_chk@plt>
  40137d:	48 8d 3d 0c 2d 00 00 	lea    0x2d0c(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  401384:	e8 e7 fc ff ff       	call   401070 <puts@plt>
  401389:	48 8d 3d 28 2d 00 00 	lea    0x2d28(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  401390:	e8 db fc ff ff       	call   401070 <puts@plt>
  401395:	48 8d 3d f8 2d 00 00 	lea    0x2df8(%rip),%rdi        # 404194 <_IO_stdin_used+0x194>
  40139c:	e8 cf fc ff ff       	call   401070 <puts@plt>
  4013a1:	eb ba                	jmp    40135d <usage+0x56>

00000000004013a3 <initialize_target>:
  4013a3:	55                   	push   %rbp
  4013a4:	53                   	push   %rbx
  4013a5:	48 81 ec 18 20 00 00 	sub    $0x2018,%rsp
  4013ac:	89 f5                	mov    %esi,%ebp
  4013ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013b5:	00 00 
  4013b7:	48 89 84 24 08 20 00 	mov    %rax,0x2008(%rsp)
  4013be:	00 
  4013bf:	31 c0                	xor    %eax,%eax
  4013c1:	89 3d 31 61 00 00    	mov    %edi,0x6131(%rip)        # 4074f8 <check_level>
  4013c7:	8b 3d 63 5d 00 00    	mov    0x5d63(%rip),%edi        # 407130 <target_id>
  4013cd:	e8 85 1d 00 00       	call   403157 <gencookie>
  4013d2:	89 05 2c 61 00 00    	mov    %eax,0x612c(%rip)        # 407504 <cookie>
  4013d8:	89 c7                	mov    %eax,%edi
  4013da:	e8 78 1d 00 00       	call   403157 <gencookie>
  4013df:	89 05 1b 61 00 00    	mov    %eax,0x611b(%rip)        # 407500 <authkey>
  4013e5:	8b 05 45 5d 00 00    	mov    0x5d45(%rip),%eax        # 407130 <target_id>
  4013eb:	8d 78 01             	lea    0x1(%rax),%edi
  4013ee:	e8 4d fc ff ff       	call   401040 <srandom@plt>
  4013f3:	e8 58 fd ff ff       	call   401150 <random@plt>
  4013f8:	89 c7                	mov    %eax,%edi
  4013fa:	e8 8d 02 00 00       	call   40168c <scramble>
  4013ff:	89 c3                	mov    %eax,%ebx
  401401:	85 ed                	test   %ebp,%ebp
  401403:	75 50                	jne    401455 <initialize_target+0xb2>
  401405:	b8 00 00 00 00       	mov    $0x0,%eax
  40140a:	01 d8                	add    %ebx,%eax
  40140c:	0f b7 c0             	movzwl %ax,%eax
  40140f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401416:	89 c0                	mov    %eax,%eax
  401418:	48 89 05 61 60 00 00 	mov    %rax,0x6061(%rip)        # 407480 <buf_offset>
  40141f:	c6 05 02 6d 00 00 63 	movb   $0x63,0x6d02(%rip)        # 408128 <target_prefix>
  401426:	83 3d 5b 60 00 00 00 	cmpl   $0x0,0x605b(%rip)        # 407488 <notify>
  40142d:	74 09                	je     401438 <initialize_target+0x95>
  40142f:	83 3d d2 60 00 00 00 	cmpl   $0x0,0x60d2(%rip)        # 407508 <is_checker>
  401436:	74 35                	je     40146d <initialize_target+0xca>
  401438:	48 8b 84 24 08 20 00 	mov    0x2008(%rsp),%rax
  40143f:	00 
  401440:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401447:	00 00 
  401449:	75 51                	jne    40149c <initialize_target+0xf9>
  40144b:	48 81 c4 18 20 00 00 	add    $0x2018,%rsp
  401452:	5b                   	pop    %rbx
  401453:	5d                   	pop    %rbp
  401454:	c3                   	ret
  401455:	bf 00 00 00 00       	mov    $0x0,%edi
  40145a:	e8 e1 fc ff ff       	call   401140 <time@plt>
  40145f:	89 c7                	mov    %eax,%edi
  401461:	e8 da fb ff ff       	call   401040 <srandom@plt>
  401466:	e8 e5 fc ff ff       	call   401150 <random@plt>
  40146b:	eb 9d                	jmp    40140a <initialize_target+0x67>
  40146d:	48 89 e7             	mov    %rsp,%rdi
  401470:	e8 56 1a 00 00       	call   402ecb <init_driver>
  401475:	85 c0                	test   %eax,%eax
  401477:	79 bf                	jns    401438 <initialize_target+0x95>
  401479:	48 89 e2             	mov    %rsp,%rdx
  40147c:	48 8d 35 65 2c 00 00 	lea    0x2c65(%rip),%rsi        # 4040e8 <_IO_stdin_used+0xe8>
  401483:	bf 01 00 00 00       	mov    $0x1,%edi
  401488:	b8 00 00 00 00       	mov    $0x0,%eax
  40148d:	e8 ee fc ff ff       	call   401180 <__printf_chk@plt>
  401492:	bf 08 00 00 00       	mov    $0x8,%edi
  401497:	e8 24 fd ff ff       	call   4011c0 <exit@plt>
  40149c:	e8 ef fb ff ff       	call   401090 <__stack_chk_fail@plt>

00000000004014a1 <main>:
  4014a1:	41 56                	push   %r14
  4014a3:	41 55                	push   %r13
  4014a5:	41 54                	push   %r12
  4014a7:	55                   	push   %rbp
  4014a8:	53                   	push   %rbx
  4014a9:	41 89 fc             	mov    %edi,%r12d
  4014ac:	48 89 f3             	mov    %rsi,%rbx
  4014af:	48 c7 c6 bc 21 40 00 	mov    $0x4021bc,%rsi
  4014b6:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014bb:	e8 30 fc ff ff       	call   4010f0 <signal@plt>
  4014c0:	48 c7 c6 68 21 40 00 	mov    $0x402168,%rsi
  4014c7:	bf 07 00 00 00       	mov    $0x7,%edi
  4014cc:	e8 1f fc ff ff       	call   4010f0 <signal@plt>
  4014d1:	48 c7 c6 10 22 40 00 	mov    $0x402210,%rsi
  4014d8:	bf 04 00 00 00       	mov    $0x4,%edi
  4014dd:	e8 0e fc ff ff       	call   4010f0 <signal@plt>
  4014e2:	83 3d 1f 60 00 00 00 	cmpl   $0x0,0x601f(%rip)        # 407508 <is_checker>
  4014e9:	75 26                	jne    401511 <main+0x70>
  4014eb:	48 8d 2d bb 2c 00 00 	lea    0x2cbb(%rip),%rbp        # 4041ad <_IO_stdin_used+0x1ad>
  4014f2:	48 8b 05 a7 5f 00 00 	mov    0x5fa7(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4014f9:	48 89 05 f0 5f 00 00 	mov    %rax,0x5ff0(%rip)        # 4074f0 <infile>
  401500:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401506:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40150c:	e9 8d 00 00 00       	jmp    40159e <main+0xfd>
  401511:	48 c7 c6 64 22 40 00 	mov    $0x402264,%rsi
  401518:	bf 0e 00 00 00       	mov    $0xe,%edi
  40151d:	e8 ce fb ff ff       	call   4010f0 <signal@plt>
  401522:	bf 05 00 00 00       	mov    $0x5,%edi
  401527:	e8 94 fb ff ff       	call   4010c0 <alarm@plt>
  40152c:	48 8d 2d 7f 2c 00 00 	lea    0x2c7f(%rip),%rbp        # 4041b2 <_IO_stdin_used+0x1b2>
  401533:	eb bd                	jmp    4014f2 <main+0x51>
  401535:	48 8b 3b             	mov    (%rbx),%rdi
  401538:	e8 ca fd ff ff       	call   401307 <usage>
  40153d:	48 8d 35 f1 2e 00 00 	lea    0x2ef1(%rip),%rsi        # 404435 <_IO_stdin_used+0x435>
  401544:	48 8b 3d 5d 5f 00 00 	mov    0x5f5d(%rip),%rdi        # 4074a8 <optarg@GLIBC_2.2.5>
  40154b:	e8 40 fc ff ff       	call   401190 <fopen@plt>
  401550:	48 89 05 99 5f 00 00 	mov    %rax,0x5f99(%rip)        # 4074f0 <infile>
  401557:	48 85 c0             	test   %rax,%rax
  40155a:	75 42                	jne    40159e <main+0xfd>
  40155c:	48 8b 0d 45 5f 00 00 	mov    0x5f45(%rip),%rcx        # 4074a8 <optarg@GLIBC_2.2.5>
  401563:	48 8d 15 50 2c 00 00 	lea    0x2c50(%rip),%rdx        # 4041ba <_IO_stdin_used+0x1ba>
  40156a:	be 01 00 00 00       	mov    $0x1,%esi
  40156f:	48 8b 3d 4a 5f 00 00 	mov    0x5f4a(%rip),%rdi        # 4074c0 <stderr@GLIBC_2.2.5>
  401576:	e8 65 fc ff ff       	call   4011e0 <__fprintf_chk@plt>
  40157b:	b8 01 00 00 00       	mov    $0x1,%eax
  401580:	e9 d9 00 00 00       	jmp    40165e <main+0x1bd>
  401585:	ba 10 00 00 00       	mov    $0x10,%edx
  40158a:	be 00 00 00 00       	mov    $0x0,%esi
  40158f:	48 8b 3d 12 5f 00 00 	mov    0x5f12(%rip),%rdi        # 4074a8 <optarg@GLIBC_2.2.5>
  401596:	e8 15 fc ff ff       	call   4011b0 <strtoul@plt>
  40159b:	41 89 c6             	mov    %eax,%r14d
  40159e:	48 89 ea             	mov    %rbp,%rdx
  4015a1:	48 89 de             	mov    %rbx,%rsi
  4015a4:	44 89 e7             	mov    %r12d,%edi
  4015a7:	e8 f4 fb ff ff       	call   4011a0 <getopt@plt>
  4015ac:	3c ff                	cmp    $0xff,%al
  4015ae:	74 62                	je     401612 <main+0x171>
  4015b0:	0f be d0             	movsbl %al,%edx
  4015b3:	83 e8 61             	sub    $0x61,%eax
  4015b6:	3c 10                	cmp    $0x10,%al
  4015b8:	77 3a                	ja     4015f4 <main+0x153>
  4015ba:	0f b6 c0             	movzbl %al,%eax
  4015bd:	48 8d 0d 34 2c 00 00 	lea    0x2c34(%rip),%rcx        # 4041f8 <_IO_stdin_used+0x1f8>
  4015c4:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  4015c8:	48 01 c8             	add    %rcx,%rax
  4015cb:	ff e0                	jmp    *%rax
  4015cd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015d2:	be 00 00 00 00       	mov    $0x0,%esi
  4015d7:	48 8b 3d ca 5e 00 00 	mov    0x5eca(%rip),%rdi        # 4074a8 <optarg@GLIBC_2.2.5>
  4015de:	e8 3d fb ff ff       	call   401120 <strtol@plt>
  4015e3:	41 89 c5             	mov    %eax,%r13d
  4015e6:	eb b6                	jmp    40159e <main+0xfd>
  4015e8:	c7 05 96 5e 00 00 00 	movl   $0x0,0x5e96(%rip)        # 407488 <notify>
  4015ef:	00 00 00 
  4015f2:	eb aa                	jmp    40159e <main+0xfd>
  4015f4:	48 8d 35 dc 2b 00 00 	lea    0x2bdc(%rip),%rsi        # 4041d7 <_IO_stdin_used+0x1d7>
  4015fb:	bf 01 00 00 00       	mov    $0x1,%edi
  401600:	b8 00 00 00 00       	mov    $0x0,%eax
  401605:	e8 76 fb ff ff       	call   401180 <__printf_chk@plt>
  40160a:	48 8b 3b             	mov    (%rbx),%rdi
  40160d:	e8 f5 fc ff ff       	call   401307 <usage>
  401612:	be 00 00 00 00       	mov    $0x0,%esi
  401617:	44 89 ef             	mov    %r13d,%edi
  40161a:	e8 84 fd ff ff       	call   4013a3 <initialize_target>
  40161f:	83 3d e2 5e 00 00 00 	cmpl   $0x0,0x5ee2(%rip)        # 407508 <is_checker>
  401626:	74 09                	je     401631 <main+0x190>
  401628:	44 39 35 d1 5e 00 00 	cmp    %r14d,0x5ed1(%rip)        # 407500 <authkey>
  40162f:	75 36                	jne    401667 <main+0x1c6>
  401631:	8b 15 cd 5e 00 00    	mov    0x5ecd(%rip),%edx        # 407504 <cookie>
  401637:	48 8d 35 ac 2b 00 00 	lea    0x2bac(%rip),%rsi        # 4041ea <_IO_stdin_used+0x1ea>
  40163e:	bf 01 00 00 00       	mov    $0x1,%edi
  401643:	b8 00 00 00 00       	mov    $0x0,%eax
  401648:	e8 33 fb ff ff       	call   401180 <__printf_chk@plt>
  40164d:	48 8b 3d 2c 5e 00 00 	mov    0x5e2c(%rip),%rdi        # 407480 <buf_offset>
  401654:	e8 17 0d 00 00       	call   402370 <stable_launch>
  401659:	b8 00 00 00 00       	mov    $0x0,%eax
  40165e:	5b                   	pop    %rbx
  40165f:	5d                   	pop    %rbp
  401660:	41 5c                	pop    %r12
  401662:	41 5d                	pop    %r13
  401664:	41 5e                	pop    %r14
  401666:	c3                   	ret
  401667:	44 89 f2             	mov    %r14d,%edx
  40166a:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404110 <_IO_stdin_used+0x110>
  401671:	bf 01 00 00 00       	mov    $0x1,%edi
  401676:	b8 00 00 00 00       	mov    $0x0,%eax
  40167b:	e8 00 fb ff ff       	call   401180 <__printf_chk@plt>
  401680:	b8 00 00 00 00       	mov    $0x0,%eax
  401685:	e8 3e 07 00 00       	call   401dc8 <check_fail>
  40168a:	eb a5                	jmp    401631 <main+0x190>

000000000040168c <scramble>:
  40168c:	48 83 ec 38          	sub    $0x38,%rsp
  401690:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401697:	00 00 
  401699:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40169e:	31 c0                	xor    %eax,%eax
  4016a0:	eb 10                	jmp    4016b2 <scramble+0x26>
  4016a2:	69 d0 6c 76 00 00    	imul   $0x766c,%eax,%edx
  4016a8:	01 fa                	add    %edi,%edx
  4016aa:	89 c1                	mov    %eax,%ecx
  4016ac:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4016af:	83 c0 01             	add    $0x1,%eax
  4016b2:	83 f8 09             	cmp    $0x9,%eax
  4016b5:	76 eb                	jbe    4016a2 <scramble+0x16>
  4016b7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016bb:	69 c0 0c 24 00 00    	imul   $0x240c,%eax,%eax
  4016c1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016c5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016c9:	69 c0 b0 51 00 00    	imul   $0x51b0,%eax,%eax
  4016cf:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016d3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016d7:	69 c0 03 c5 00 00    	imul   $0xc503,%eax,%eax
  4016dd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016e1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016e5:	69 c0 02 fa 00 00    	imul   $0xfa02,%eax,%eax
  4016eb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016ef:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016f3:	69 c0 73 42 00 00    	imul   $0x4273,%eax,%eax
  4016f9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016fd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401701:	69 c0 69 c0 00 00    	imul   $0xc069,%eax,%eax
  401707:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40170b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40170f:	69 c0 50 7c 00 00    	imul   $0x7c50,%eax,%eax
  401715:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401719:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40171d:	69 c0 b3 bf 00 00    	imul   $0xbfb3,%eax,%eax
  401723:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401727:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40172b:	69 c0 a4 e5 00 00    	imul   $0xe5a4,%eax,%eax
  401731:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401735:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401739:	69 c0 e8 94 00 00    	imul   $0x94e8,%eax,%eax
  40173f:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401743:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401747:	69 c0 c2 bb 00 00    	imul   $0xbbc2,%eax,%eax
  40174d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401751:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401755:	69 c0 ea 7f 00 00    	imul   $0x7fea,%eax,%eax
  40175b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40175f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401763:	69 c0 63 50 00 00    	imul   $0x5063,%eax,%eax
  401769:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40176d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401771:	69 c0 bd 70 00 00    	imul   $0x70bd,%eax,%eax
  401777:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40177b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40177f:	69 c0 69 9d 00 00    	imul   $0x9d69,%eax,%eax
  401785:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401789:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40178d:	69 c0 4d d7 00 00    	imul   $0xd74d,%eax,%eax
  401793:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401797:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40179b:	69 c0 13 ba 00 00    	imul   $0xba13,%eax,%eax
  4017a1:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017a5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017a9:	69 c0 0f 51 00 00    	imul   $0x510f,%eax,%eax
  4017af:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017b3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017b7:	69 c0 15 bc 00 00    	imul   $0xbc15,%eax,%eax
  4017bd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017c1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017c5:	69 c0 0f 8d 00 00    	imul   $0x8d0f,%eax,%eax
  4017cb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017cf:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017d3:	69 c0 6f aa 00 00    	imul   $0xaa6f,%eax,%eax
  4017d9:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017dd:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017e1:	69 c0 25 d2 00 00    	imul   $0xd225,%eax,%eax
  4017e7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017eb:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017ef:	69 c0 b2 c1 00 00    	imul   $0xc1b2,%eax,%eax
  4017f5:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017f9:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017fd:	69 c0 ce c7 00 00    	imul   $0xc7ce,%eax,%eax
  401803:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401807:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40180b:	69 c0 e2 c0 00 00    	imul   $0xc0e2,%eax,%eax
  401811:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401815:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401819:	69 c0 4a a3 00 00    	imul   $0xa34a,%eax,%eax
  40181f:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401823:	8b 04 24             	mov    (%rsp),%eax
  401826:	69 c0 f8 71 00 00    	imul   $0x71f8,%eax,%eax
  40182c:	89 04 24             	mov    %eax,(%rsp)
  40182f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401833:	69 c0 a0 5d 00 00    	imul   $0x5da0,%eax,%eax
  401839:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40183d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401841:	69 c0 b9 42 00 00    	imul   $0x42b9,%eax,%eax
  401847:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40184b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40184f:	69 c0 3d 23 00 00    	imul   $0x233d,%eax,%eax
  401855:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401859:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40185d:	69 c0 f8 11 00 00    	imul   $0x11f8,%eax,%eax
  401863:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401867:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40186b:	69 c0 98 a1 00 00    	imul   $0xa198,%eax,%eax
  401871:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401875:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401879:	69 c0 87 23 00 00    	imul   $0x2387,%eax,%eax
  40187f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401883:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401887:	69 c0 22 4b 00 00    	imul   $0x4b22,%eax,%eax
  40188d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401891:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401895:	69 c0 b9 3d 00 00    	imul   $0x3db9,%eax,%eax
  40189b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40189f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018a3:	69 c0 24 de 00 00    	imul   $0xde24,%eax,%eax
  4018a9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018ad:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018b1:	69 c0 a9 25 00 00    	imul   $0x25a9,%eax,%eax
  4018b7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018bb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018bf:	69 c0 e8 0e 00 00    	imul   $0xee8,%eax,%eax
  4018c5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4018c9:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018cd:	69 c0 22 42 00 00    	imul   $0x4222,%eax,%eax
  4018d3:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018d7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4018db:	69 c0 b2 8e 00 00    	imul   $0x8eb2,%eax,%eax
  4018e1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4018e5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018e9:	69 c0 6d 33 00 00    	imul   $0x336d,%eax,%eax
  4018ef:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018f3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4018f7:	69 c0 a8 7f 00 00    	imul   $0x7fa8,%eax,%eax
  4018fd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401901:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401905:	69 c0 31 55 00 00    	imul   $0x5531,%eax,%eax
  40190b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40190f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401913:	69 c0 c2 67 00 00    	imul   $0x67c2,%eax,%eax
  401919:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40191d:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401921:	69 c0 a6 ab 00 00    	imul   $0xaba6,%eax,%eax
  401927:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40192b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40192f:	69 c0 0e 78 00 00    	imul   $0x780e,%eax,%eax
  401935:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401939:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40193d:	69 c0 89 85 00 00    	imul   $0x8589,%eax,%eax
  401943:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401947:	8b 04 24             	mov    (%rsp),%eax
  40194a:	69 c0 aa 89 00 00    	imul   $0x89aa,%eax,%eax
  401950:	89 04 24             	mov    %eax,(%rsp)
  401953:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401957:	69 c0 4e 0c 00 00    	imul   $0xc4e,%eax,%eax
  40195d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401961:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401965:	69 c0 ac 88 00 00    	imul   $0x88ac,%eax,%eax
  40196b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40196f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401973:	69 c0 fd ac 00 00    	imul   $0xacfd,%eax,%eax
  401979:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40197d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401981:	69 c0 2f 32 00 00    	imul   $0x322f,%eax,%eax
  401987:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40198b:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40198f:	69 c0 19 17 00 00    	imul   $0x1719,%eax,%eax
  401995:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401999:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40199d:	69 c0 02 ba 00 00    	imul   $0xba02,%eax,%eax
  4019a3:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4019a7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019ab:	69 c0 cf 17 00 00    	imul   $0x17cf,%eax,%eax
  4019b1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019b5:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019b9:	69 c0 3f 5c 00 00    	imul   $0x5c3f,%eax,%eax
  4019bf:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4019c3:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4019c7:	69 c0 b1 7a 00 00    	imul   $0x7ab1,%eax,%eax
  4019cd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4019d1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4019d5:	69 c0 a2 f0 00 00    	imul   $0xf0a2,%eax,%eax
  4019db:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4019df:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4019e3:	69 c0 30 b9 00 00    	imul   $0xb930,%eax,%eax
  4019e9:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4019ed:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4019f1:	69 c0 ce 67 00 00    	imul   $0x67ce,%eax,%eax
  4019f7:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4019fb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4019ff:	69 c0 63 e3 00 00    	imul   $0xe363,%eax,%eax
  401a05:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a09:	8b 04 24             	mov    (%rsp),%eax
  401a0c:	69 c0 75 22 00 00    	imul   $0x2275,%eax,%eax
  401a12:	89 04 24             	mov    %eax,(%rsp)
  401a15:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a19:	69 c0 82 f9 00 00    	imul   $0xf982,%eax,%eax
  401a1f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a23:	8b 04 24             	mov    (%rsp),%eax
  401a26:	69 c0 fc 11 00 00    	imul   $0x11fc,%eax,%eax
  401a2c:	89 04 24             	mov    %eax,(%rsp)
  401a2f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a33:	69 c0 ec 80 00 00    	imul   $0x80ec,%eax,%eax
  401a39:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a3d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a41:	69 c0 d7 4f 00 00    	imul   $0x4fd7,%eax,%eax
  401a47:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a4b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a4f:	69 c0 78 01 00 00    	imul   $0x178,%eax,%eax
  401a55:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a59:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a5d:	8d 14 c0             	lea    (%rax,%rax,8),%edx
  401a60:	89 d0                	mov    %edx,%eax
  401a62:	c1 e0 04             	shl    $0x4,%eax
  401a65:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a69:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a6d:	69 c0 1f c3 00 00    	imul   $0xc31f,%eax,%eax
  401a73:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a77:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a7b:	69 c0 cd 71 00 00    	imul   $0x71cd,%eax,%eax
  401a81:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a85:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401a89:	69 c0 47 03 00 00    	imul   $0x347,%eax,%eax
  401a8f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401a93:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a97:	69 c0 2a 26 00 00    	imul   $0x262a,%eax,%eax
  401a9d:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401aa1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401aa5:	69 c0 f4 a9 00 00    	imul   $0xa9f4,%eax,%eax
  401aab:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401aaf:	8b 04 24             	mov    (%rsp),%eax
  401ab2:	69 c0 db 4d 00 00    	imul   $0x4ddb,%eax,%eax
  401ab8:	89 04 24             	mov    %eax,(%rsp)
  401abb:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401abf:	69 c0 31 6f 00 00    	imul   $0x6f31,%eax,%eax
  401ac5:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ac9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401acd:	69 c0 fb c7 00 00    	imul   $0xc7fb,%eax,%eax
  401ad3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ad7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401adb:	69 c0 85 95 00 00    	imul   $0x9585,%eax,%eax
  401ae1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ae5:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ae9:	69 c0 81 bb 00 00    	imul   $0xbb81,%eax,%eax
  401aef:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401af3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401af7:	69 c0 90 96 00 00    	imul   $0x9690,%eax,%eax
  401afd:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b01:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b05:	69 c0 d8 94 00 00    	imul   $0x94d8,%eax,%eax
  401b0b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b0f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b13:	69 c0 26 68 00 00    	imul   $0x6826,%eax,%eax
  401b19:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b1d:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b21:	69 c0 67 45 00 00    	imul   $0x4567,%eax,%eax
  401b27:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b2b:	ba 00 00 00 00       	mov    $0x0,%edx
  401b30:	b8 00 00 00 00       	mov    $0x0,%eax
  401b35:	eb 0a                	jmp    401b41 <scramble+0x4b5>
  401b37:	89 d1                	mov    %edx,%ecx
  401b39:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401b3c:	01 c8                	add    %ecx,%eax
  401b3e:	83 c2 01             	add    $0x1,%edx
  401b41:	83 fa 09             	cmp    $0x9,%edx
  401b44:	76 f1                	jbe    401b37 <scramble+0x4ab>
  401b46:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401b4b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401b52:	00 00 
  401b54:	75 05                	jne    401b5b <scramble+0x4cf>
  401b56:	48 83 c4 38          	add    $0x38,%rsp
  401b5a:	c3                   	ret
  401b5b:	e8 30 f5 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000401b60 <getbuf>:
  401b60:	48 83 ec 18          	sub    $0x18,%rsp
  401b64:	48 89 e7             	mov    %rsp,%rdi
  401b67:	e8 94 02 00 00       	call   401e00 <Gets>
  401b6c:	b8 01 00 00 00       	mov    $0x1,%eax
  401b71:	48 83 c4 18          	add    $0x18,%rsp
  401b75:	c3                   	ret

0000000000401b76 <touch1>:
  401b76:	48 83 ec 08          	sub    $0x8,%rsp
  401b7a:	c7 05 78 59 00 00 01 	movl   $0x1,0x5978(%rip)        # 4074fc <vlevel>
  401b81:	00 00 00 
  401b84:	48 8d 3d 01 27 00 00 	lea    0x2701(%rip),%rdi        # 40428c <_IO_stdin_used+0x28c>
  401b8b:	e8 e0 f4 ff ff       	call   401070 <puts@plt>
  401b90:	bf 01 00 00 00       	mov    $0x1,%edi
  401b95:	e8 8e 08 00 00       	call   402428 <validate>
  401b9a:	bf 00 00 00 00       	mov    $0x0,%edi
  401b9f:	e8 1c f6 ff ff       	call   4011c0 <exit@plt>

0000000000401ba4 <touch2>:
  401ba4:	48 83 ec 08          	sub    $0x8,%rsp
  401ba8:	89 fa                	mov    %edi,%edx
  401baa:	c7 05 48 59 00 00 02 	movl   $0x2,0x5948(%rip)        # 4074fc <vlevel>
  401bb1:	00 00 00 
  401bb4:	39 3d 4a 59 00 00    	cmp    %edi,0x594a(%rip)        # 407504 <cookie>
  401bba:	74 2a                	je     401be6 <touch2+0x42>
  401bbc:	48 8d 35 15 27 00 00 	lea    0x2715(%rip),%rsi        # 4042d8 <_IO_stdin_used+0x2d8>
  401bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcd:	e8 ae f5 ff ff       	call   401180 <__printf_chk@plt>
  401bd2:	bf 02 00 00 00       	mov    $0x2,%edi
  401bd7:	e8 64 05 00 00       	call   402140 <fail>
  401bdc:	bf 00 00 00 00       	mov    $0x0,%edi
  401be1:	e8 da f5 ff ff       	call   4011c0 <exit@plt>
  401be6:	48 8d 35 c3 26 00 00 	lea    0x26c3(%rip),%rsi        # 4042b0 <_IO_stdin_used+0x2b0>
  401bed:	bf 01 00 00 00       	mov    $0x1,%edi
  401bf2:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf7:	e8 84 f5 ff ff       	call   401180 <__printf_chk@plt>
  401bfc:	bf 02 00 00 00       	mov    $0x2,%edi
  401c01:	e8 22 08 00 00       	call   402428 <validate>
  401c06:	eb d4                	jmp    401bdc <touch2+0x38>

0000000000401c08 <hexmatch>:
  401c08:	41 54                	push   %r12
  401c0a:	55                   	push   %rbp
  401c0b:	53                   	push   %rbx
  401c0c:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401c10:	89 fd                	mov    %edi,%ebp
  401c12:	48 89 f3             	mov    %rsi,%rbx
  401c15:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c1c:	00 00 
  401c1e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401c23:	31 c0                	xor    %eax,%eax
  401c25:	e8 26 f5 ff ff       	call   401150 <random@plt>
  401c2a:	48 89 c1             	mov    %rax,%rcx
  401c2d:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401c34:	0a d7 a3 
  401c37:	48 f7 ea             	imul   %rdx
  401c3a:	48 01 ca             	add    %rcx,%rdx
  401c3d:	48 c1 fa 06          	sar    $0x6,%rdx
  401c41:	48 89 c8             	mov    %rcx,%rax
  401c44:	48 c1 f8 3f          	sar    $0x3f,%rax
  401c48:	48 29 c2             	sub    %rax,%rdx
  401c4b:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401c4f:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401c53:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401c5a:	00 
  401c5b:	48 29 c1             	sub    %rax,%rcx
  401c5e:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401c62:	41 89 e8             	mov    %ebp,%r8d
  401c65:	48 8d 0d 3d 26 00 00 	lea    0x263d(%rip),%rcx        # 4042a9 <_IO_stdin_used+0x2a9>
  401c6c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401c73:	be 01 00 00 00       	mov    $0x1,%esi
  401c78:	4c 89 e7             	mov    %r12,%rdi
  401c7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401c80:	e8 7b f5 ff ff       	call   401200 <__sprintf_chk@plt>
  401c85:	ba 09 00 00 00       	mov    $0x9,%edx
  401c8a:	4c 89 e6             	mov    %r12,%rsi
  401c8d:	48 89 df             	mov    %rbx,%rdi
  401c90:	e8 bb f3 ff ff       	call   401050 <strncmp@plt>
  401c95:	85 c0                	test   %eax,%eax
  401c97:	0f 94 c0             	sete   %al
  401c9a:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401c9f:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401ca6:	00 00 
  401ca8:	75 0c                	jne    401cb6 <hexmatch+0xae>
  401caa:	0f b6 c0             	movzbl %al,%eax
  401cad:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401cb1:	5b                   	pop    %rbx
  401cb2:	5d                   	pop    %rbp
  401cb3:	41 5c                	pop    %r12
  401cb5:	c3                   	ret
  401cb6:	e8 d5 f3 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000401cbb <touch3>:
  401cbb:	53                   	push   %rbx
  401cbc:	48 89 fb             	mov    %rdi,%rbx
  401cbf:	c7 05 33 58 00 00 03 	movl   $0x3,0x5833(%rip)        # 4074fc <vlevel>
  401cc6:	00 00 00 
  401cc9:	48 89 fe             	mov    %rdi,%rsi
  401ccc:	8b 3d 32 58 00 00    	mov    0x5832(%rip),%edi        # 407504 <cookie>
  401cd2:	e8 31 ff ff ff       	call   401c08 <hexmatch>
  401cd7:	85 c0                	test   %eax,%eax
  401cd9:	74 2d                	je     401d08 <touch3+0x4d>
  401cdb:	48 89 da             	mov    %rbx,%rdx
  401cde:	48 8d 35 1b 26 00 00 	lea    0x261b(%rip),%rsi        # 404300 <_IO_stdin_used+0x300>
  401ce5:	bf 01 00 00 00       	mov    $0x1,%edi
  401cea:	b8 00 00 00 00       	mov    $0x0,%eax
  401cef:	e8 8c f4 ff ff       	call   401180 <__printf_chk@plt>
  401cf4:	bf 03 00 00 00       	mov    $0x3,%edi
  401cf9:	e8 2a 07 00 00       	call   402428 <validate>
  401cfe:	bf 00 00 00 00       	mov    $0x0,%edi
  401d03:	e8 b8 f4 ff ff       	call   4011c0 <exit@plt>
  401d08:	48 89 da             	mov    %rbx,%rdx
  401d0b:	48 8d 35 16 26 00 00 	lea    0x2616(%rip),%rsi        # 404328 <_IO_stdin_used+0x328>
  401d12:	bf 01 00 00 00       	mov    $0x1,%edi
  401d17:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1c:	e8 5f f4 ff ff       	call   401180 <__printf_chk@plt>
  401d21:	bf 03 00 00 00       	mov    $0x3,%edi
  401d26:	e8 15 04 00 00       	call   402140 <fail>
  401d2b:	eb d1                	jmp    401cfe <touch3+0x43>

0000000000401d2d <test>:
  401d2d:	48 83 ec 08          	sub    $0x8,%rsp
  401d31:	b8 00 00 00 00       	mov    $0x0,%eax
  401d36:	e8 25 fe ff ff       	call   401b60 <getbuf>
  401d3b:	89 c2                	mov    %eax,%edx
  401d3d:	48 8d 35 0c 26 00 00 	lea    0x260c(%rip),%rsi        # 404350 <_IO_stdin_used+0x350>
  401d44:	bf 01 00 00 00       	mov    $0x1,%edi
  401d49:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4e:	e8 2d f4 ff ff       	call   401180 <__printf_chk@plt>
  401d53:	48 83 c4 08          	add    $0x8,%rsp
  401d57:	c3                   	ret

0000000000401d58 <save_char>:
  401d58:	8b 05 c6 63 00 00    	mov    0x63c6(%rip),%eax        # 408124 <gets_cnt>
  401d5e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401d63:	7f 4a                	jg     401daf <save_char+0x57>
  401d65:	89 f9                	mov    %edi,%ecx
  401d67:	c0 e9 04             	shr    $0x4,%cl
  401d6a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401d6d:	4c 8d 05 fc 28 00 00 	lea    0x28fc(%rip),%r8        # 404670 <trans_char>
  401d74:	83 e1 0f             	and    $0xf,%ecx
  401d77:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401d7c:	48 8d 0d 9d 57 00 00 	lea    0x579d(%rip),%rcx        # 407520 <gets_buf>
  401d83:	48 63 f2             	movslq %edx,%rsi
  401d86:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401d8a:	8d 72 01             	lea    0x1(%rdx),%esi
  401d8d:	83 e7 0f             	and    $0xf,%edi
  401d90:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401d95:	48 63 f6             	movslq %esi,%rsi
  401d98:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401d9c:	83 c2 02             	add    $0x2,%edx
  401d9f:	48 63 d2             	movslq %edx,%rdx
  401da2:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401da6:	83 c0 01             	add    $0x1,%eax
  401da9:	89 05 75 63 00 00    	mov    %eax,0x6375(%rip)        # 408124 <gets_cnt>
  401daf:	f3 c3                	repz ret

0000000000401db1 <save_term>:
  401db1:	8b 05 6d 63 00 00    	mov    0x636d(%rip),%eax        # 408124 <gets_cnt>
  401db7:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401dba:	48 98                	cltq
  401dbc:	48 8d 15 5d 57 00 00 	lea    0x575d(%rip),%rdx        # 407520 <gets_buf>
  401dc3:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401dc7:	c3                   	ret

0000000000401dc8 <check_fail>:
  401dc8:	48 83 ec 08          	sub    $0x8,%rsp
  401dcc:	0f be 15 55 63 00 00 	movsbl 0x6355(%rip),%edx        # 408128 <target_prefix>
  401dd3:	4c 8d 05 46 57 00 00 	lea    0x5746(%rip),%r8        # 407520 <gets_buf>
  401dda:	8b 0d 18 57 00 00    	mov    0x5718(%rip),%ecx        # 4074f8 <check_level>
  401de0:	48 8d 35 8c 25 00 00 	lea    0x258c(%rip),%rsi        # 404373 <_IO_stdin_used+0x373>
  401de7:	bf 01 00 00 00       	mov    $0x1,%edi
  401dec:	b8 00 00 00 00       	mov    $0x0,%eax
  401df1:	e8 8a f3 ff ff       	call   401180 <__printf_chk@plt>
  401df6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dfb:	e8 c0 f3 ff ff       	call   4011c0 <exit@plt>

0000000000401e00 <Gets>:
  401e00:	41 54                	push   %r12
  401e02:	55                   	push   %rbp
  401e03:	53                   	push   %rbx
  401e04:	49 89 fc             	mov    %rdi,%r12
  401e07:	c7 05 13 63 00 00 00 	movl   $0x0,0x6313(%rip)        # 408124 <gets_cnt>
  401e0e:	00 00 00 
  401e11:	48 89 fb             	mov    %rdi,%rbx
  401e14:	eb 11                	jmp    401e27 <Gets+0x27>
  401e16:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401e1a:	88 03                	mov    %al,(%rbx)
  401e1c:	0f b6 f8             	movzbl %al,%edi
  401e1f:	e8 34 ff ff ff       	call   401d58 <save_char>
  401e24:	48 89 eb             	mov    %rbp,%rbx
  401e27:	48 8b 3d c2 56 00 00 	mov    0x56c2(%rip),%rdi        # 4074f0 <infile>
  401e2e:	e8 bd f3 ff ff       	call   4011f0 <getc@plt>
  401e33:	83 f8 ff             	cmp    $0xffffffff,%eax
  401e36:	74 05                	je     401e3d <Gets+0x3d>
  401e38:	83 f8 0a             	cmp    $0xa,%eax
  401e3b:	75 d9                	jne    401e16 <Gets+0x16>
  401e3d:	c6 03 00             	movb   $0x0,(%rbx)
  401e40:	b8 00 00 00 00       	mov    $0x0,%eax
  401e45:	e8 67 ff ff ff       	call   401db1 <save_term>
  401e4a:	4c 89 e0             	mov    %r12,%rax
  401e4d:	5b                   	pop    %rbx
  401e4e:	5d                   	pop    %rbp
  401e4f:	41 5c                	pop    %r12
  401e51:	c3                   	ret

0000000000401e52 <notify_server>:
  401e52:	55                   	push   %rbp
  401e53:	53                   	push   %rbx
  401e54:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401e5b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e62:	00 00 
  401e64:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401e6b:	00 
  401e6c:	31 c0                	xor    %eax,%eax
  401e6e:	83 3d 93 56 00 00 00 	cmpl   $0x0,0x5693(%rip)        # 407508 <is_checker>
  401e75:	0f 85 d2 00 00 00    	jne    401f4d <notify_server+0xfb>
  401e7b:	89 fb                	mov    %edi,%ebx
  401e7d:	8b 05 a1 62 00 00    	mov    0x62a1(%rip),%eax        # 408124 <gets_cnt>
  401e83:	83 c0 64             	add    $0x64,%eax
  401e86:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401e8b:	0f 8f dd 00 00 00    	jg     401f6e <notify_server+0x11c>
  401e91:	0f be 05 90 62 00 00 	movsbl 0x6290(%rip),%eax        # 408128 <target_prefix>
  401e98:	83 3d e9 55 00 00 00 	cmpl   $0x0,0x55e9(%rip)        # 407488 <notify>
  401e9f:	0f 84 e9 00 00 00    	je     401f8e <notify_server+0x13c>
  401ea5:	8b 15 55 56 00 00    	mov    0x5655(%rip),%edx        # 407500 <authkey>
  401eab:	85 db                	test   %ebx,%ebx
  401ead:	0f 84 e5 00 00 00    	je     401f98 <notify_server+0x146>
  401eb3:	48 8d 2d cf 24 00 00 	lea    0x24cf(%rip),%rbp        # 404389 <_IO_stdin_used+0x389>
  401eba:	48 89 e7             	mov    %rsp,%rdi
  401ebd:	48 8d 0d 5c 56 00 00 	lea    0x565c(%rip),%rcx        # 407520 <gets_buf>
  401ec4:	51                   	push   %rcx
  401ec5:	56                   	push   %rsi
  401ec6:	50                   	push   %rax
  401ec7:	52                   	push   %rdx
  401ec8:	49 89 e9             	mov    %rbp,%r9
  401ecb:	44 8b 05 5e 52 00 00 	mov    0x525e(%rip),%r8d        # 407130 <target_id>
  401ed2:	48 8d 0d ba 24 00 00 	lea    0x24ba(%rip),%rcx        # 404393 <_IO_stdin_used+0x393>
  401ed9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ede:	be 01 00 00 00       	mov    $0x1,%esi
  401ee3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee8:	e8 13 f3 ff ff       	call   401200 <__sprintf_chk@plt>
  401eed:	48 83 c4 20          	add    $0x20,%rsp
  401ef1:	83 3d 90 55 00 00 00 	cmpl   $0x0,0x5590(%rip)        # 407488 <notify>
  401ef8:	0f 84 df 00 00 00    	je     401fdd <notify_server+0x18b>
  401efe:	85 db                	test   %ebx,%ebx
  401f00:	0f 84 c6 00 00 00    	je     401fcc <notify_server+0x17a>
  401f06:	48 89 e1             	mov    %rsp,%rcx
  401f09:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401f10:	00 
  401f11:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f17:	48 8b 15 2a 52 00 00 	mov    0x522a(%rip),%rdx        # 407148 <lab>
  401f1e:	48 8b 35 2b 52 00 00 	mov    0x522b(%rip),%rsi        # 407150 <course>
  401f25:	48 8b 3d 14 52 00 00 	mov    0x5214(%rip),%rdi        # 407140 <user_id>
  401f2c:	e8 81 11 00 00       	call   4030b2 <driver_post>
  401f31:	85 c0                	test   %eax,%eax
  401f33:	78 6f                	js     401fa4 <notify_server+0x152>
  401f35:	48 8d 3d 9c 25 00 00 	lea    0x259c(%rip),%rdi        # 4044d8 <_IO_stdin_used+0x4d8>
  401f3c:	e8 2f f1 ff ff       	call   401070 <puts@plt>
  401f41:	48 8d 3d 73 24 00 00 	lea    0x2473(%rip),%rdi        # 4043bb <_IO_stdin_used+0x3bb>
  401f48:	e8 23 f1 ff ff       	call   401070 <puts@plt>
  401f4d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f54:	00 
  401f55:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f5c:	00 00 
  401f5e:	0f 85 07 01 00 00    	jne    40206b <notify_server+0x219>
  401f64:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401f6b:	5b                   	pop    %rbx
  401f6c:	5d                   	pop    %rbp
  401f6d:	c3                   	ret
  401f6e:	48 8d 35 33 25 00 00 	lea    0x2533(%rip),%rsi        # 4044a8 <_IO_stdin_used+0x4a8>
  401f75:	bf 01 00 00 00       	mov    $0x1,%edi
  401f7a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7f:	e8 fc f1 ff ff       	call   401180 <__printf_chk@plt>
  401f84:	bf 01 00 00 00       	mov    $0x1,%edi
  401f89:	e8 32 f2 ff ff       	call   4011c0 <exit@plt>
  401f8e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401f93:	e9 13 ff ff ff       	jmp    401eab <notify_server+0x59>
  401f98:	48 8d 2d ef 23 00 00 	lea    0x23ef(%rip),%rbp        # 40438e <_IO_stdin_used+0x38e>
  401f9f:	e9 16 ff ff ff       	jmp    401eba <notify_server+0x68>
  401fa4:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401fab:	00 
  401fac:	48 8d 35 fc 23 00 00 	lea    0x23fc(%rip),%rsi        # 4043af <_IO_stdin_used+0x3af>
  401fb3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fbd:	e8 be f1 ff ff       	call   401180 <__printf_chk@plt>
  401fc2:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc7:	e8 f4 f1 ff ff       	call   4011c0 <exit@plt>
  401fcc:	48 8d 3d f2 23 00 00 	lea    0x23f2(%rip),%rdi        # 4043c5 <_IO_stdin_used+0x3c5>
  401fd3:	e8 98 f0 ff ff       	call   401070 <puts@plt>
  401fd8:	e9 70 ff ff ff       	jmp    401f4d <notify_server+0xfb>
  401fdd:	48 89 ea             	mov    %rbp,%rdx
  401fe0:	48 8d 35 29 25 00 00 	lea    0x2529(%rip),%rsi        # 404510 <_IO_stdin_used+0x510>
  401fe7:	bf 01 00 00 00       	mov    $0x1,%edi
  401fec:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff1:	e8 8a f1 ff ff       	call   401180 <__printf_chk@plt>
  401ff6:	48 8b 15 43 51 00 00 	mov    0x5143(%rip),%rdx        # 407140 <user_id>
  401ffd:	48 8d 35 c8 23 00 00 	lea    0x23c8(%rip),%rsi        # 4043cc <_IO_stdin_used+0x3cc>
  402004:	bf 01 00 00 00       	mov    $0x1,%edi
  402009:	b8 00 00 00 00       	mov    $0x0,%eax
  40200e:	e8 6d f1 ff ff       	call   401180 <__printf_chk@plt>
  402013:	48 8b 15 36 51 00 00 	mov    0x5136(%rip),%rdx        # 407150 <course>
  40201a:	48 8d 35 b8 23 00 00 	lea    0x23b8(%rip),%rsi        # 4043d9 <_IO_stdin_used+0x3d9>
  402021:	bf 01 00 00 00       	mov    $0x1,%edi
  402026:	b8 00 00 00 00       	mov    $0x0,%eax
  40202b:	e8 50 f1 ff ff       	call   401180 <__printf_chk@plt>
  402030:	48 8b 15 11 51 00 00 	mov    0x5111(%rip),%rdx        # 407148 <lab>
  402037:	48 8d 35 a7 23 00 00 	lea    0x23a7(%rip),%rsi        # 4043e5 <_IO_stdin_used+0x3e5>
  40203e:	bf 01 00 00 00       	mov    $0x1,%edi
  402043:	b8 00 00 00 00       	mov    $0x0,%eax
  402048:	e8 33 f1 ff ff       	call   401180 <__printf_chk@plt>
  40204d:	48 89 e2             	mov    %rsp,%rdx
  402050:	48 8d 35 97 23 00 00 	lea    0x2397(%rip),%rsi        # 4043ee <_IO_stdin_used+0x3ee>
  402057:	bf 01 00 00 00       	mov    $0x1,%edi
  40205c:	b8 00 00 00 00       	mov    $0x0,%eax
  402061:	e8 1a f1 ff ff       	call   401180 <__printf_chk@plt>
  402066:	e9 e2 fe ff ff       	jmp    401f4d <notify_server+0xfb>
  40206b:	e8 20 f0 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402070 <_validate>:
  402070:	53                   	push   %rbx
  402071:	89 fb                	mov    %edi,%ebx
  402073:	83 3d 8e 54 00 00 00 	cmpl   $0x0,0x548e(%rip)        # 407508 <is_checker>
  40207a:	74 72                	je     4020ee <_validate+0x7e>
  40207c:	39 3d 7a 54 00 00    	cmp    %edi,0x547a(%rip)        # 4074fc <vlevel>
  402082:	75 32                	jne    4020b6 <_validate+0x46>
  402084:	8b 15 6e 54 00 00    	mov    0x546e(%rip),%edx        # 4074f8 <check_level>
  40208a:	39 fa                	cmp    %edi,%edx
  40208c:	75 3e                	jne    4020cc <_validate+0x5c>
  40208e:	0f be 15 93 60 00 00 	movsbl 0x6093(%rip),%edx        # 408128 <target_prefix>
  402095:	4c 8d 05 84 54 00 00 	lea    0x5484(%rip),%r8        # 407520 <gets_buf>
  40209c:	89 f9                	mov    %edi,%ecx
  40209e:	48 8d 35 73 23 00 00 	lea    0x2373(%rip),%rsi        # 404418 <_IO_stdin_used+0x418>
  4020a5:	bf 01 00 00 00       	mov    $0x1,%edi
  4020aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4020af:	e8 cc f0 ff ff       	call   401180 <__printf_chk@plt>
  4020b4:	5b                   	pop    %rbx
  4020b5:	c3                   	ret
  4020b6:	48 8d 3d 3d 23 00 00 	lea    0x233d(%rip),%rdi        # 4043fa <_IO_stdin_used+0x3fa>
  4020bd:	e8 ae ef ff ff       	call   401070 <puts@plt>
  4020c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c7:	e8 fc fc ff ff       	call   401dc8 <check_fail>
  4020cc:	89 f9                	mov    %edi,%ecx
  4020ce:	48 8d 35 63 24 00 00 	lea    0x2463(%rip),%rsi        # 404538 <_IO_stdin_used+0x538>
  4020d5:	bf 01 00 00 00       	mov    $0x1,%edi
  4020da:	b8 00 00 00 00       	mov    $0x0,%eax
  4020df:	e8 9c f0 ff ff       	call   401180 <__printf_chk@plt>
  4020e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e9:	e8 da fc ff ff       	call   401dc8 <check_fail>
  4020ee:	39 3d 08 54 00 00    	cmp    %edi,0x5408(%rip)        # 4074fc <vlevel>
  4020f4:	74 1a                	je     402110 <_validate+0xa0>
  4020f6:	48 8d 3d fd 22 00 00 	lea    0x22fd(%rip),%rdi        # 4043fa <_IO_stdin_used+0x3fa>
  4020fd:	e8 6e ef ff ff       	call   401070 <puts@plt>
  402102:	89 de                	mov    %ebx,%esi
  402104:	bf 00 00 00 00       	mov    $0x0,%edi
  402109:	e8 44 fd ff ff       	call   401e52 <notify_server>
  40210e:	eb a4                	jmp    4020b4 <_validate+0x44>
  402110:	0f be 0d 11 60 00 00 	movsbl 0x6011(%rip),%ecx        # 408128 <target_prefix>
  402117:	89 fa                	mov    %edi,%edx
  402119:	48 8d 35 40 24 00 00 	lea    0x2440(%rip),%rsi        # 404560 <_IO_stdin_used+0x560>
  402120:	bf 01 00 00 00       	mov    $0x1,%edi
  402125:	b8 00 00 00 00       	mov    $0x0,%eax
  40212a:	e8 51 f0 ff ff       	call   401180 <__printf_chk@plt>
  40212f:	89 de                	mov    %ebx,%esi
  402131:	bf 01 00 00 00       	mov    $0x1,%edi
  402136:	e8 17 fd ff ff       	call   401e52 <notify_server>
  40213b:	e9 74 ff ff ff       	jmp    4020b4 <_validate+0x44>

0000000000402140 <fail>:
  402140:	48 83 ec 08          	sub    $0x8,%rsp
  402144:	83 3d bd 53 00 00 00 	cmpl   $0x0,0x53bd(%rip)        # 407508 <is_checker>
  40214b:	75 11                	jne    40215e <fail+0x1e>
  40214d:	89 fe                	mov    %edi,%esi
  40214f:	bf 00 00 00 00       	mov    $0x0,%edi
  402154:	e8 f9 fc ff ff       	call   401e52 <notify_server>
  402159:	48 83 c4 08          	add    $0x8,%rsp
  40215d:	c3                   	ret
  40215e:	b8 00 00 00 00       	mov    $0x0,%eax
  402163:	e8 60 fc ff ff       	call   401dc8 <check_fail>

0000000000402168 <bushandler>:
  402168:	48 83 ec 08          	sub    $0x8,%rsp
  40216c:	83 3d 95 53 00 00 00 	cmpl   $0x0,0x5395(%rip)        # 407508 <is_checker>
  402173:	74 16                	je     40218b <bushandler+0x23>
  402175:	48 8d 3d b1 22 00 00 	lea    0x22b1(%rip),%rdi        # 40442d <_IO_stdin_used+0x42d>
  40217c:	e8 ef ee ff ff       	call   401070 <puts@plt>
  402181:	b8 00 00 00 00       	mov    $0x0,%eax
  402186:	e8 3d fc ff ff       	call   401dc8 <check_fail>
  40218b:	48 8d 3d 06 24 00 00 	lea    0x2406(%rip),%rdi        # 404598 <_IO_stdin_used+0x598>
  402192:	e8 d9 ee ff ff       	call   401070 <puts@plt>
  402197:	48 8d 3d 99 22 00 00 	lea    0x2299(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  40219e:	e8 cd ee ff ff       	call   401070 <puts@plt>
  4021a3:	be 00 00 00 00       	mov    $0x0,%esi
  4021a8:	bf 00 00 00 00       	mov    $0x0,%edi
  4021ad:	e8 a0 fc ff ff       	call   401e52 <notify_server>
  4021b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b7:	e8 04 f0 ff ff       	call   4011c0 <exit@plt>

00000000004021bc <seghandler>:
  4021bc:	48 83 ec 08          	sub    $0x8,%rsp
  4021c0:	83 3d 41 53 00 00 00 	cmpl   $0x0,0x5341(%rip)        # 407508 <is_checker>
  4021c7:	74 16                	je     4021df <seghandler+0x23>
  4021c9:	48 8d 3d 7d 22 00 00 	lea    0x227d(%rip),%rdi        # 40444d <_IO_stdin_used+0x44d>
  4021d0:	e8 9b ee ff ff       	call   401070 <puts@plt>
  4021d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021da:	e8 e9 fb ff ff       	call   401dc8 <check_fail>
  4021df:	48 8d 3d d2 23 00 00 	lea    0x23d2(%rip),%rdi        # 4045b8 <_IO_stdin_used+0x5b8>
  4021e6:	e8 85 ee ff ff       	call   401070 <puts@plt>
  4021eb:	48 8d 3d 45 22 00 00 	lea    0x2245(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  4021f2:	e8 79 ee ff ff       	call   401070 <puts@plt>
  4021f7:	be 00 00 00 00       	mov    $0x0,%esi
  4021fc:	bf 00 00 00 00       	mov    $0x0,%edi
  402201:	e8 4c fc ff ff       	call   401e52 <notify_server>
  402206:	bf 01 00 00 00       	mov    $0x1,%edi
  40220b:	e8 b0 ef ff ff       	call   4011c0 <exit@plt>

0000000000402210 <illegalhandler>:
  402210:	48 83 ec 08          	sub    $0x8,%rsp
  402214:	83 3d ed 52 00 00 00 	cmpl   $0x0,0x52ed(%rip)        # 407508 <is_checker>
  40221b:	74 16                	je     402233 <illegalhandler+0x23>
  40221d:	48 8d 3d 3c 22 00 00 	lea    0x223c(%rip),%rdi        # 404460 <_IO_stdin_used+0x460>
  402224:	e8 47 ee ff ff       	call   401070 <puts@plt>
  402229:	b8 00 00 00 00       	mov    $0x0,%eax
  40222e:	e8 95 fb ff ff       	call   401dc8 <check_fail>
  402233:	48 8d 3d a6 23 00 00 	lea    0x23a6(%rip),%rdi        # 4045e0 <_IO_stdin_used+0x5e0>
  40223a:	e8 31 ee ff ff       	call   401070 <puts@plt>
  40223f:	48 8d 3d f1 21 00 00 	lea    0x21f1(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  402246:	e8 25 ee ff ff       	call   401070 <puts@plt>
  40224b:	be 00 00 00 00       	mov    $0x0,%esi
  402250:	bf 00 00 00 00       	mov    $0x0,%edi
  402255:	e8 f8 fb ff ff       	call   401e52 <notify_server>
  40225a:	bf 01 00 00 00       	mov    $0x1,%edi
  40225f:	e8 5c ef ff ff       	call   4011c0 <exit@plt>

0000000000402264 <sigalrmhandler>:
  402264:	48 83 ec 08          	sub    $0x8,%rsp
  402268:	83 3d 99 52 00 00 00 	cmpl   $0x0,0x5299(%rip)        # 407508 <is_checker>
  40226f:	74 16                	je     402287 <sigalrmhandler+0x23>
  402271:	48 8d 3d fc 21 00 00 	lea    0x21fc(%rip),%rdi        # 404474 <_IO_stdin_used+0x474>
  402278:	e8 f3 ed ff ff       	call   401070 <puts@plt>
  40227d:	b8 00 00 00 00       	mov    $0x0,%eax
  402282:	e8 41 fb ff ff       	call   401dc8 <check_fail>
  402287:	ba 05 00 00 00       	mov    $0x5,%edx
  40228c:	48 8d 35 7d 23 00 00 	lea    0x237d(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402293:	bf 01 00 00 00       	mov    $0x1,%edi
  402298:	b8 00 00 00 00       	mov    $0x0,%eax
  40229d:	e8 de ee ff ff       	call   401180 <__printf_chk@plt>
  4022a2:	be 00 00 00 00       	mov    $0x0,%esi
  4022a7:	bf 00 00 00 00       	mov    $0x0,%edi
  4022ac:	e8 a1 fb ff ff       	call   401e52 <notify_server>
  4022b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4022b6:	e8 05 ef ff ff       	call   4011c0 <exit@plt>

00000000004022bb <launch>:
  4022bb:	55                   	push   %rbp
  4022bc:	48 89 e5             	mov    %rsp,%rbp
  4022bf:	48 83 ec 10          	sub    $0x10,%rsp
  4022c3:	48 89 fa             	mov    %rdi,%rdx
  4022c6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022cd:	00 00 
  4022cf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4022d3:	31 c0                	xor    %eax,%eax
  4022d5:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4022d9:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4022dd:	48 29 c4             	sub    %rax,%rsp
  4022e0:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4022e5:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4022e9:	be f4 00 00 00       	mov    $0xf4,%esi
  4022ee:	e8 bd ed ff ff       	call   4010b0 <memset@plt>
  4022f3:	48 8b 05 a6 51 00 00 	mov    0x51a6(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  4022fa:	48 39 05 ef 51 00 00 	cmp    %rax,0x51ef(%rip)        # 4074f0 <infile>
  402301:	74 3a                	je     40233d <launch+0x82>
  402303:	c7 05 ef 51 00 00 00 	movl   $0x0,0x51ef(%rip)        # 4074fc <vlevel>
  40230a:	00 00 00 
  40230d:	b8 00 00 00 00       	mov    $0x0,%eax
  402312:	e8 16 fa ff ff       	call   401d2d <test>
  402317:	83 3d ea 51 00 00 00 	cmpl   $0x0,0x51ea(%rip)        # 407508 <is_checker>
  40231e:	75 35                	jne    402355 <launch+0x9a>
  402320:	48 8d 3d 6d 21 00 00 	lea    0x216d(%rip),%rdi        # 404494 <_IO_stdin_used+0x494>
  402327:	e8 44 ed ff ff       	call   401070 <puts@plt>
  40232c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402330:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402337:	00 00 
  402339:	75 30                	jne    40236b <launch+0xb0>
  40233b:	c9                   	leave
  40233c:	c3                   	ret
  40233d:	48 8d 35 38 21 00 00 	lea    0x2138(%rip),%rsi        # 40447c <_IO_stdin_used+0x47c>
  402344:	bf 01 00 00 00       	mov    $0x1,%edi
  402349:	b8 00 00 00 00       	mov    $0x0,%eax
  40234e:	e8 2d ee ff ff       	call   401180 <__printf_chk@plt>
  402353:	eb ae                	jmp    402303 <launch+0x48>
  402355:	48 8d 3d 2d 21 00 00 	lea    0x212d(%rip),%rdi        # 404489 <_IO_stdin_used+0x489>
  40235c:	e8 0f ed ff ff       	call   401070 <puts@plt>
  402361:	b8 00 00 00 00       	mov    $0x0,%eax
  402366:	e8 5d fa ff ff       	call   401dc8 <check_fail>
  40236b:	e8 20 ed ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402370 <stable_launch>:
  402370:	53                   	push   %rbx
  402371:	48 89 3d 70 51 00 00 	mov    %rdi,0x5170(%rip)        # 4074e8 <global_offset>
  402378:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40237e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402384:	b9 32 01 00 00       	mov    $0x132,%ecx
  402389:	ba 07 00 00 00       	mov    $0x7,%edx
  40238e:	be 00 00 10 00       	mov    $0x100000,%esi
  402393:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402398:	e8 03 ed ff ff       	call   4010a0 <mmap@plt>
  40239d:	48 89 c3             	mov    %rax,%rbx
  4023a0:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4023a6:	75 47                	jne    4023ef <stable_launch+0x7f>
  4023a8:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4023af:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4023b3:	48 89 15 76 5d 00 00 	mov    %rdx,0x5d76(%rip)        # 408130 <stack_top>
  4023ba:	48 89 e0             	mov    %rsp,%rax
  4023bd:	48 89 d4             	mov    %rdx,%rsp
  4023c0:	48 89 c2             	mov    %rax,%rdx
  4023c3:	48 89 15 16 51 00 00 	mov    %rdx,0x5116(%rip)        # 4074e0 <global_save_stack>
  4023ca:	48 8b 3d 17 51 00 00 	mov    0x5117(%rip),%rdi        # 4074e8 <global_offset>
  4023d1:	e8 e5 fe ff ff       	call   4022bb <launch>
  4023d6:	48 8b 05 03 51 00 00 	mov    0x5103(%rip),%rax        # 4074e0 <global_save_stack>
  4023dd:	48 89 c4             	mov    %rax,%rsp
  4023e0:	be 00 00 10 00       	mov    $0x100000,%esi
  4023e5:	48 89 df             	mov    %rbx,%rdi
  4023e8:	e8 83 ed ff ff       	call   401170 <munmap@plt>
  4023ed:	5b                   	pop    %rbx
  4023ee:	c3                   	ret
  4023ef:	be 00 00 10 00       	mov    $0x100000,%esi
  4023f4:	48 89 c7             	mov    %rax,%rdi
  4023f7:	e8 74 ed ff ff       	call   401170 <munmap@plt>
  4023fc:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402401:	48 8d 15 40 22 00 00 	lea    0x2240(%rip),%rdx        # 404648 <_IO_stdin_used+0x648>
  402408:	be 01 00 00 00       	mov    $0x1,%esi
  40240d:	48 8b 3d ac 50 00 00 	mov    0x50ac(%rip),%rdi        # 4074c0 <stderr@GLIBC_2.2.5>
  402414:	b8 00 00 00 00       	mov    $0x0,%eax
  402419:	e8 c2 ed ff ff       	call   4011e0 <__fprintf_chk@plt>
  40241e:	bf 01 00 00 00       	mov    $0x1,%edi
  402423:	e8 98 ed ff ff       	call   4011c0 <exit@plt>

0000000000402428 <validate>:
  402428:	53                   	push   %rbx
  402429:	48 89 e3             	mov    %rsp,%rbx
  40242c:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402430:	e8 3b fc ff ff       	call   402070 <_validate>
  402435:	48 89 dc             	mov    %rbx,%rsp
  402438:	5b                   	pop    %rbx
  402439:	c3                   	ret

000000000040243a <rio_readinitb>:
  40243a:	89 37                	mov    %esi,(%rdi)
  40243c:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402443:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402447:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40244b:	c3                   	ret

000000000040244c <sigalrm_handler>:
  40244c:	48 83 ec 08          	sub    $0x8,%rsp
  402450:	b9 00 00 00 00       	mov    $0x0,%ecx
  402455:	48 8d 15 24 22 00 00 	lea    0x2224(%rip),%rdx        # 404680 <trans_char+0x10>
  40245c:	be 01 00 00 00       	mov    $0x1,%esi
  402461:	48 8b 3d 58 50 00 00 	mov    0x5058(%rip),%rdi        # 4074c0 <stderr@GLIBC_2.2.5>
  402468:	b8 00 00 00 00       	mov    $0x0,%eax
  40246d:	e8 6e ed ff ff       	call   4011e0 <__fprintf_chk@plt>
  402472:	bf 01 00 00 00       	mov    $0x1,%edi
  402477:	e8 44 ed ff ff       	call   4011c0 <exit@plt>

000000000040247c <rio_writen>:
  40247c:	41 55                	push   %r13
  40247e:	41 54                	push   %r12
  402480:	55                   	push   %rbp
  402481:	53                   	push   %rbx
  402482:	48 83 ec 08          	sub    $0x8,%rsp
  402486:	41 89 fc             	mov    %edi,%r12d
  402489:	48 89 f5             	mov    %rsi,%rbp
  40248c:	49 89 d5             	mov    %rdx,%r13
  40248f:	48 89 d3             	mov    %rdx,%rbx
  402492:	eb 06                	jmp    40249a <rio_writen+0x1e>
  402494:	48 29 c3             	sub    %rax,%rbx
  402497:	48 01 c5             	add    %rax,%rbp
  40249a:	48 85 db             	test   %rbx,%rbx
  40249d:	74 24                	je     4024c3 <rio_writen+0x47>
  40249f:	48 89 da             	mov    %rbx,%rdx
  4024a2:	48 89 ee             	mov    %rbp,%rsi
  4024a5:	44 89 e7             	mov    %r12d,%edi
  4024a8:	e8 d3 eb ff ff       	call   401080 <write@plt>
  4024ad:	48 85 c0             	test   %rax,%rax
  4024b0:	7f e2                	jg     402494 <rio_writen+0x18>
  4024b2:	e8 79 eb ff ff       	call   401030 <__errno_location@plt>
  4024b7:	83 38 04             	cmpl   $0x4,(%rax)
  4024ba:	75 15                	jne    4024d1 <rio_writen+0x55>
  4024bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4024c1:	eb d1                	jmp    402494 <rio_writen+0x18>
  4024c3:	4c 89 e8             	mov    %r13,%rax
  4024c6:	48 83 c4 08          	add    $0x8,%rsp
  4024ca:	5b                   	pop    %rbx
  4024cb:	5d                   	pop    %rbp
  4024cc:	41 5c                	pop    %r12
  4024ce:	41 5d                	pop    %r13
  4024d0:	c3                   	ret
  4024d1:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024d8:	eb ec                	jmp    4024c6 <rio_writen+0x4a>

00000000004024da <rio_read>:
  4024da:	41 55                	push   %r13
  4024dc:	41 54                	push   %r12
  4024de:	55                   	push   %rbp
  4024df:	53                   	push   %rbx
  4024e0:	48 83 ec 08          	sub    $0x8,%rsp
  4024e4:	48 89 fb             	mov    %rdi,%rbx
  4024e7:	49 89 f5             	mov    %rsi,%r13
  4024ea:	49 89 d4             	mov    %rdx,%r12
  4024ed:	eb 0a                	jmp    4024f9 <rio_read+0x1f>
  4024ef:	e8 3c eb ff ff       	call   401030 <__errno_location@plt>
  4024f4:	83 38 04             	cmpl   $0x4,(%rax)
  4024f7:	75 5c                	jne    402555 <rio_read+0x7b>
  4024f9:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4024fc:	85 ed                	test   %ebp,%ebp
  4024fe:	7f 24                	jg     402524 <rio_read+0x4a>
  402500:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402504:	8b 3b                	mov    (%rbx),%edi
  402506:	ba 00 20 00 00       	mov    $0x2000,%edx
  40250b:	48 89 ee             	mov    %rbp,%rsi
  40250e:	e8 cd eb ff ff       	call   4010e0 <read@plt>
  402513:	89 43 04             	mov    %eax,0x4(%rbx)
  402516:	85 c0                	test   %eax,%eax
  402518:	78 d5                	js     4024ef <rio_read+0x15>
  40251a:	85 c0                	test   %eax,%eax
  40251c:	74 40                	je     40255e <rio_read+0x84>
  40251e:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402522:	eb d5                	jmp    4024f9 <rio_read+0x1f>
  402524:	89 e8                	mov    %ebp,%eax
  402526:	4c 39 e0             	cmp    %r12,%rax
  402529:	72 03                	jb     40252e <rio_read+0x54>
  40252b:	44 89 e5             	mov    %r12d,%ebp
  40252e:	4c 63 e5             	movslq %ebp,%r12
  402531:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402535:	4c 89 e2             	mov    %r12,%rdx
  402538:	4c 89 ef             	mov    %r13,%rdi
  40253b:	e8 f0 eb ff ff       	call   401130 <memcpy@plt>
  402540:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402544:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402547:	4c 89 e0             	mov    %r12,%rax
  40254a:	48 83 c4 08          	add    $0x8,%rsp
  40254e:	5b                   	pop    %rbx
  40254f:	5d                   	pop    %rbp
  402550:	41 5c                	pop    %r12
  402552:	41 5d                	pop    %r13
  402554:	c3                   	ret
  402555:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40255c:	eb ec                	jmp    40254a <rio_read+0x70>
  40255e:	b8 00 00 00 00       	mov    $0x0,%eax
  402563:	eb e5                	jmp    40254a <rio_read+0x70>

0000000000402565 <rio_readlineb>:
  402565:	41 55                	push   %r13
  402567:	41 54                	push   %r12
  402569:	55                   	push   %rbp
  40256a:	53                   	push   %rbx
  40256b:	48 83 ec 18          	sub    $0x18,%rsp
  40256f:	49 89 fd             	mov    %rdi,%r13
  402572:	48 89 f5             	mov    %rsi,%rbp
  402575:	49 89 d4             	mov    %rdx,%r12
  402578:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40257f:	00 00 
  402581:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402586:	31 c0                	xor    %eax,%eax
  402588:	bb 01 00 00 00       	mov    $0x1,%ebx
  40258d:	4c 39 e3             	cmp    %r12,%rbx
  402590:	73 47                	jae    4025d9 <rio_readlineb+0x74>
  402592:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402597:	ba 01 00 00 00       	mov    $0x1,%edx
  40259c:	4c 89 ef             	mov    %r13,%rdi
  40259f:	e8 36 ff ff ff       	call   4024da <rio_read>
  4025a4:	83 f8 01             	cmp    $0x1,%eax
  4025a7:	75 1c                	jne    4025c5 <rio_readlineb+0x60>
  4025a9:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4025ad:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4025b2:	88 55 00             	mov    %dl,0x0(%rbp)
  4025b5:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4025ba:	74 1a                	je     4025d6 <rio_readlineb+0x71>
  4025bc:	48 83 c3 01          	add    $0x1,%rbx
  4025c0:	48 89 c5             	mov    %rax,%rbp
  4025c3:	eb c8                	jmp    40258d <rio_readlineb+0x28>
  4025c5:	85 c0                	test   %eax,%eax
  4025c7:	75 32                	jne    4025fb <rio_readlineb+0x96>
  4025c9:	48 83 fb 01          	cmp    $0x1,%rbx
  4025cd:	75 0a                	jne    4025d9 <rio_readlineb+0x74>
  4025cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d4:	eb 0a                	jmp    4025e0 <rio_readlineb+0x7b>
  4025d6:	48 89 c5             	mov    %rax,%rbp
  4025d9:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4025dd:	48 89 d8             	mov    %rbx,%rax
  4025e0:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  4025e5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4025ec:	00 00 
  4025ee:	75 14                	jne    402604 <rio_readlineb+0x9f>
  4025f0:	48 83 c4 18          	add    $0x18,%rsp
  4025f4:	5b                   	pop    %rbx
  4025f5:	5d                   	pop    %rbp
  4025f6:	41 5c                	pop    %r12
  4025f8:	41 5d                	pop    %r13
  4025fa:	c3                   	ret
  4025fb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402602:	eb dc                	jmp    4025e0 <rio_readlineb+0x7b>
  402604:	e8 87 ea ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402609 <urlencode>:
  402609:	41 54                	push   %r12
  40260b:	55                   	push   %rbp
  40260c:	53                   	push   %rbx
  40260d:	48 83 ec 10          	sub    $0x10,%rsp
  402611:	48 89 fb             	mov    %rdi,%rbx
  402614:	48 89 f5             	mov    %rsi,%rbp
  402617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40261e:	00 00 
  402620:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402625:	31 c0                	xor    %eax,%eax
  402627:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40262e:	f2 ae                	repnz scas %es:(%rdi),%al
  402630:	48 89 ce             	mov    %rcx,%rsi
  402633:	48 f7 d6             	not    %rsi
  402636:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402639:	eb 0f                	jmp    40264a <urlencode+0x41>
  40263b:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40263f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402643:	48 83 c3 01          	add    $0x1,%rbx
  402647:	44 89 e0             	mov    %r12d,%eax
  40264a:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40264e:	85 c0                	test   %eax,%eax
  402650:	0f 84 a8 00 00 00    	je     4026fe <urlencode+0xf5>
  402656:	44 0f b6 03          	movzbl (%rbx),%r8d
  40265a:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40265e:	0f 94 c2             	sete   %dl
  402661:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402665:	0f 94 c0             	sete   %al
  402668:	08 c2                	or     %al,%dl
  40266a:	75 cf                	jne    40263b <urlencode+0x32>
  40266c:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402670:	74 c9                	je     40263b <urlencode+0x32>
  402672:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402676:	74 c3                	je     40263b <urlencode+0x32>
  402678:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40267c:	3c 09                	cmp    $0x9,%al
  40267e:	76 bb                	jbe    40263b <urlencode+0x32>
  402680:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402684:	3c 19                	cmp    $0x19,%al
  402686:	76 b3                	jbe    40263b <urlencode+0x32>
  402688:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40268c:	3c 19                	cmp    $0x19,%al
  40268e:	76 ab                	jbe    40263b <urlencode+0x32>
  402690:	41 80 f8 20          	cmp    $0x20,%r8b
  402694:	74 56                	je     4026ec <urlencode+0xe3>
  402696:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40269a:	3c 5f                	cmp    $0x5f,%al
  40269c:	0f 96 c2             	setbe  %dl
  40269f:	41 80 f8 09          	cmp    $0x9,%r8b
  4026a3:	0f 94 c0             	sete   %al
  4026a6:	08 c2                	or     %al,%dl
  4026a8:	74 4f                	je     4026f9 <urlencode+0xf0>
  4026aa:	48 89 e7             	mov    %rsp,%rdi
  4026ad:	45 0f b6 c0          	movzbl %r8b,%r8d
  4026b1:	48 8d 0d 5d 20 00 00 	lea    0x205d(%rip),%rcx        # 404715 <trans_char+0xa5>
  4026b8:	ba 08 00 00 00       	mov    $0x8,%edx
  4026bd:	be 01 00 00 00       	mov    $0x1,%esi
  4026c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c7:	e8 34 eb ff ff       	call   401200 <__sprintf_chk@plt>
  4026cc:	0f b6 04 24          	movzbl (%rsp),%eax
  4026d0:	88 45 00             	mov    %al,0x0(%rbp)
  4026d3:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4026d8:	88 45 01             	mov    %al,0x1(%rbp)
  4026db:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4026e0:	88 45 02             	mov    %al,0x2(%rbp)
  4026e3:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4026e7:	e9 57 ff ff ff       	jmp    402643 <urlencode+0x3a>
  4026ec:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4026f0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4026f4:	e9 4a ff ff ff       	jmp    402643 <urlencode+0x3a>
  4026f9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026fe:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402703:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40270a:	00 00 
  40270c:	75 09                	jne    402717 <urlencode+0x10e>
  40270e:	48 83 c4 10          	add    $0x10,%rsp
  402712:	5b                   	pop    %rbx
  402713:	5d                   	pop    %rbp
  402714:	41 5c                	pop    %r12
  402716:	c3                   	ret
  402717:	e8 74 e9 ff ff       	call   401090 <__stack_chk_fail@plt>

000000000040271c <submitr>:
  40271c:	41 57                	push   %r15
  40271e:	41 56                	push   %r14
  402720:	41 55                	push   %r13
  402722:	41 54                	push   %r12
  402724:	55                   	push   %rbp
  402725:	53                   	push   %rbx
  402726:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  40272d:	49 89 fd             	mov    %rdi,%r13
  402730:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402734:	49 89 d7             	mov    %rdx,%r15
  402737:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40273c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402741:	4d 89 ce             	mov    %r9,%r14
  402744:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  40274b:	00 
  40274c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402753:	00 00 
  402755:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  40275c:	00 
  40275d:	31 c0                	xor    %eax,%eax
  40275f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402766:	00 
  402767:	ba 00 00 00 00       	mov    $0x0,%edx
  40276c:	be 01 00 00 00       	mov    $0x1,%esi
  402771:	bf 02 00 00 00       	mov    $0x2,%edi
  402776:	e8 95 ea ff ff       	call   401210 <socket@plt>
  40277b:	85 c0                	test   %eax,%eax
  40277d:	0f 88 a9 02 00 00    	js     402a2c <submitr+0x310>
  402783:	89 c3                	mov    %eax,%ebx
  402785:	4c 89 ef             	mov    %r13,%rdi
  402788:	e8 73 e9 ff ff       	call   401100 <gethostbyname@plt>
  40278d:	48 85 c0             	test   %rax,%rax
  402790:	0f 84 e2 02 00 00    	je     402a78 <submitr+0x35c>
  402796:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  40279b:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4027a2:	00 00 
  4027a4:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4027ab:	00 
  4027ac:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4027b3:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4027ba:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4027be:	48 8b 40 18          	mov    0x18(%rax),%rax
  4027c2:	48 8b 30             	mov    (%rax),%rsi
  4027c5:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4027ca:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4027cf:	e8 3c e9 ff ff       	call   401110 <__memmove_chk@plt>
  4027d4:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4027d9:	66 c1 c0 08          	rol    $0x8,%ax
  4027dd:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  4027e2:	ba 10 00 00 00       	mov    $0x10,%edx
  4027e7:	4c 89 e6             	mov    %r12,%rsi
  4027ea:	89 df                	mov    %ebx,%edi
  4027ec:	e8 df e9 ff ff       	call   4011d0 <connect@plt>
  4027f1:	85 c0                	test   %eax,%eax
  4027f3:	0f 88 e7 02 00 00    	js     402ae0 <submitr+0x3c4>
  4027f9:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402800:	b8 00 00 00 00       	mov    $0x0,%eax
  402805:	48 89 f1             	mov    %rsi,%rcx
  402808:	4c 89 f7             	mov    %r14,%rdi
  40280b:	f2 ae                	repnz scas %es:(%rdi),%al
  40280d:	48 89 ca             	mov    %rcx,%rdx
  402810:	48 f7 d2             	not    %rdx
  402813:	48 89 f1             	mov    %rsi,%rcx
  402816:	4c 89 ff             	mov    %r15,%rdi
  402819:	f2 ae                	repnz scas %es:(%rdi),%al
  40281b:	48 f7 d1             	not    %rcx
  40281e:	49 89 c8             	mov    %rcx,%r8
  402821:	48 89 f1             	mov    %rsi,%rcx
  402824:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402829:	f2 ae                	repnz scas %es:(%rdi),%al
  40282b:	48 f7 d1             	not    %rcx
  40282e:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402833:	48 89 f1             	mov    %rsi,%rcx
  402836:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40283b:	f2 ae                	repnz scas %es:(%rdi),%al
  40283d:	48 89 c8             	mov    %rcx,%rax
  402840:	48 f7 d0             	not    %rax
  402843:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402848:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40284d:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402854:	00 
  402855:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40285b:	0f 87 d9 02 00 00    	ja     402b3a <submitr+0x41e>
  402861:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402868:	00 
  402869:	b9 00 04 00 00       	mov    $0x400,%ecx
  40286e:	b8 00 00 00 00       	mov    $0x0,%eax
  402873:	48 89 f7             	mov    %rsi,%rdi
  402876:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402879:	4c 89 f7             	mov    %r14,%rdi
  40287c:	e8 88 fd ff ff       	call   402609 <urlencode>
  402881:	85 c0                	test   %eax,%eax
  402883:	0f 88 24 03 00 00    	js     402bad <submitr+0x491>
  402889:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  402890:	00 
  402891:	41 55                	push   %r13
  402893:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  40289a:	00 
  40289b:	50                   	push   %rax
  40289c:	4d 89 f9             	mov    %r15,%r9
  40289f:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  4028a4:	48 8d 0d fd 1d 00 00 	lea    0x1dfd(%rip),%rcx        # 4046a8 <trans_char+0x38>
  4028ab:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028b0:	be 01 00 00 00       	mov    $0x1,%esi
  4028b5:	4c 89 e7             	mov    %r12,%rdi
  4028b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4028bd:	e8 3e e9 ff ff       	call   401200 <__sprintf_chk@plt>
  4028c2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4028c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4028ce:	4c 89 e7             	mov    %r12,%rdi
  4028d1:	f2 ae                	repnz scas %es:(%rdi),%al
  4028d3:	48 89 ca             	mov    %rcx,%rdx
  4028d6:	48 f7 d2             	not    %rdx
  4028d9:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4028dd:	4c 89 e6             	mov    %r12,%rsi
  4028e0:	89 df                	mov    %ebx,%edi
  4028e2:	e8 95 fb ff ff       	call   40247c <rio_writen>
  4028e7:	48 83 c4 10          	add    $0x10,%rsp
  4028eb:	48 85 c0             	test   %rax,%rax
  4028ee:	0f 88 44 03 00 00    	js     402c38 <submitr+0x51c>
  4028f4:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  4028f9:	89 de                	mov    %ebx,%esi
  4028fb:	4c 89 e7             	mov    %r12,%rdi
  4028fe:	e8 37 fb ff ff       	call   40243a <rio_readinitb>
  402903:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40290a:	00 
  40290b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402910:	4c 89 e7             	mov    %r12,%rdi
  402913:	e8 4d fc ff ff       	call   402565 <rio_readlineb>
  402918:	48 85 c0             	test   %rax,%rax
  40291b:	0f 8e 86 03 00 00    	jle    402ca7 <submitr+0x58b>
  402921:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402926:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  40292d:	00 
  40292e:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402935:	00 
  402936:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40293d:	00 
  40293e:	48 8d 35 d7 1d 00 00 	lea    0x1dd7(%rip),%rsi        # 40471c <trans_char+0xac>
  402945:	b8 00 00 00 00       	mov    $0x0,%eax
  40294a:	e8 11 e8 ff ff       	call   401160 <__isoc99_sscanf@plt>
  40294f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402956:	00 
  402957:	b9 03 00 00 00       	mov    $0x3,%ecx
  40295c:	48 8d 3d d0 1d 00 00 	lea    0x1dd0(%rip),%rdi        # 404733 <trans_char+0xc3>
  402963:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402965:	0f 97 c0             	seta   %al
  402968:	1c 00                	sbb    $0x0,%al
  40296a:	84 c0                	test   %al,%al
  40296c:	0f 84 b3 03 00 00    	je     402d25 <submitr+0x609>
  402972:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402979:	00 
  40297a:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40297f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402984:	e8 dc fb ff ff       	call   402565 <rio_readlineb>
  402989:	48 85 c0             	test   %rax,%rax
  40298c:	7f c1                	jg     40294f <submitr+0x233>
  40298e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402995:	3a 20 43 
  402998:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40299f:	20 75 6e 
  4029a2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029a6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029b1:	74 6f 20 
  4029b4:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4029bb:	68 65 61 
  4029be:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029c2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029c6:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029cd:	66 72 6f 
  4029d0:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  4029d7:	20 72 65 
  4029da:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029de:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029e2:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4029e9:	73 65 72 
  4029ec:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029f0:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  4029f7:	89 df                	mov    %ebx,%edi
  4029f9:	e8 d2 e6 ff ff       	call   4010d0 <close@plt>
  4029fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a03:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402a0a:	00 
  402a0b:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402a12:	00 00 
  402a14:	0f 85 7e 04 00 00    	jne    402e98 <submitr+0x77c>
  402a1a:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402a21:	5b                   	pop    %rbx
  402a22:	5d                   	pop    %rbp
  402a23:	41 5c                	pop    %r12
  402a25:	41 5d                	pop    %r13
  402a27:	41 5e                	pop    %r14
  402a29:	41 5f                	pop    %r15
  402a2b:	c3                   	ret
  402a2c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a33:	3a 20 43 
  402a36:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a3d:	20 75 6e 
  402a40:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a44:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a48:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a4f:	74 6f 20 
  402a52:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402a59:	65 20 73 
  402a5c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a60:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a64:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402a6b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402a71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a76:	eb 8b                	jmp    402a03 <submitr+0x2e7>
  402a78:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a7f:	3a 20 44 
  402a82:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402a89:	20 75 6e 
  402a8c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a90:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a94:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a9b:	74 6f 20 
  402a9e:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402aa5:	76 65 20 
  402aa8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aac:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ab0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402ab7:	72 20 61 
  402aba:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402abe:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402ac5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402acb:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402acf:	89 df                	mov    %ebx,%edi
  402ad1:	e8 fa e5 ff ff       	call   4010d0 <close@plt>
  402ad6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402adb:	e9 23 ff ff ff       	jmp    402a03 <submitr+0x2e7>
  402ae0:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ae7:	3a 20 55 
  402aea:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402af1:	20 74 6f 
  402af4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402af8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402afc:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b03:	65 63 74 
  402b06:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402b0d:	68 65 20 
  402b10:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b14:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b18:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402b1f:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402b25:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402b29:	89 df                	mov    %ebx,%edi
  402b2b:	e8 a0 e5 ff ff       	call   4010d0 <close@plt>
  402b30:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b35:	e9 c9 fe ff ff       	jmp    402a03 <submitr+0x2e7>
  402b3a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402b41:	3a 20 52 
  402b44:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402b4b:	20 73 74 
  402b4e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b52:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b56:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402b5d:	74 6f 6f 
  402b60:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402b67:	65 2e 20 
  402b6a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b6e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b72:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402b79:	61 73 65 
  402b7c:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402b83:	49 54 52 
  402b86:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b8a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b8e:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402b95:	55 46 00 
  402b98:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b9c:	89 df                	mov    %ebx,%edi
  402b9e:	e8 2d e5 ff ff       	call   4010d0 <close@plt>
  402ba3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ba8:	e9 56 fe ff ff       	jmp    402a03 <submitr+0x2e7>
  402bad:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402bb4:	3a 20 52 
  402bb7:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402bbe:	20 73 74 
  402bc1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bc5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bc9:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402bd0:	63 6f 6e 
  402bd3:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402bda:	20 61 6e 
  402bdd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402be1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402be5:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402bec:	67 61 6c 
  402bef:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402bf6:	6e 70 72 
  402bf9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bfd:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c01:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402c08:	6c 65 20 
  402c0b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402c12:	63 74 65 
  402c15:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c19:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402c1d:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402c23:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402c27:	89 df                	mov    %ebx,%edi
  402c29:	e8 a2 e4 ff ff       	call   4010d0 <close@plt>
  402c2e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c33:	e9 cb fd ff ff       	jmp    402a03 <submitr+0x2e7>
  402c38:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c3f:	3a 20 43 
  402c42:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c49:	20 75 6e 
  402c4c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c50:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c54:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c5b:	74 6f 20 
  402c5e:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402c65:	20 74 6f 
  402c68:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c6c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c70:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402c77:	72 65 73 
  402c7a:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402c81:	65 72 76 
  402c84:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c88:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c8c:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402c92:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402c96:	89 df                	mov    %ebx,%edi
  402c98:	e8 33 e4 ff ff       	call   4010d0 <close@plt>
  402c9d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ca2:	e9 5c fd ff ff       	jmp    402a03 <submitr+0x2e7>
  402ca7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cae:	3a 20 43 
  402cb1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cb8:	20 75 6e 
  402cbb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cbf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402cc3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cca:	74 6f 20 
  402ccd:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402cd4:	66 69 72 
  402cd7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cdb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402cdf:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402ce6:	61 64 65 
  402ce9:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402cf0:	6d 20 72 
  402cf3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402cf7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402cfb:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402d02:	20 73 65 
  402d05:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d09:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402d10:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402d14:	89 df                	mov    %ebx,%edi
  402d16:	e8 b5 e3 ff ff       	call   4010d0 <close@plt>
  402d1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d20:	e9 de fc ff ff       	jmp    402a03 <submitr+0x2e7>
  402d25:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d2c:	00 
  402d2d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402d32:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d37:	e8 29 f8 ff ff       	call   402565 <rio_readlineb>
  402d3c:	48 85 c0             	test   %rax,%rax
  402d3f:	0f 8e 96 00 00 00    	jle    402ddb <submitr+0x6bf>
  402d45:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402d4a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402d51:	0f 85 08 01 00 00    	jne    402e5f <submitr+0x743>
  402d57:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402d5e:	00 
  402d5f:	48 89 ef             	mov    %rbp,%rdi
  402d62:	e8 f9 e2 ff ff       	call   401060 <strcpy@plt>
  402d67:	89 df                	mov    %ebx,%edi
  402d69:	e8 62 e3 ff ff       	call   4010d0 <close@plt>
  402d6e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402d73:	48 8d 3d b3 19 00 00 	lea    0x19b3(%rip),%rdi        # 40472d <trans_char+0xbd>
  402d7a:	48 89 ee             	mov    %rbp,%rsi
  402d7d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d7f:	0f 97 c0             	seta   %al
  402d82:	1c 00                	sbb    $0x0,%al
  402d84:	0f be c0             	movsbl %al,%eax
  402d87:	85 c0                	test   %eax,%eax
  402d89:	0f 84 74 fc ff ff    	je     402a03 <submitr+0x2e7>
  402d8f:	b9 05 00 00 00       	mov    $0x5,%ecx
  402d94:	48 8d 3d 96 19 00 00 	lea    0x1996(%rip),%rdi        # 404731 <trans_char+0xc1>
  402d9b:	48 89 ee             	mov    %rbp,%rsi
  402d9e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402da0:	0f 97 c0             	seta   %al
  402da3:	1c 00                	sbb    $0x0,%al
  402da5:	0f be c0             	movsbl %al,%eax
  402da8:	85 c0                	test   %eax,%eax
  402daa:	0f 84 53 fc ff ff    	je     402a03 <submitr+0x2e7>
  402db0:	b9 03 00 00 00       	mov    $0x3,%ecx
  402db5:	48 8d 3d 7a 19 00 00 	lea    0x197a(%rip),%rdi        # 404736 <trans_char+0xc6>
  402dbc:	48 89 ee             	mov    %rbp,%rsi
  402dbf:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402dc1:	0f 97 c0             	seta   %al
  402dc4:	1c 00                	sbb    $0x0,%al
  402dc6:	0f be c0             	movsbl %al,%eax
  402dc9:	85 c0                	test   %eax,%eax
  402dcb:	0f 84 32 fc ff ff    	je     402a03 <submitr+0x2e7>
  402dd1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dd6:	e9 28 fc ff ff       	jmp    402a03 <submitr+0x2e7>
  402ddb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402de2:	3a 20 43 
  402de5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402dec:	20 75 6e 
  402def:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402df3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402df7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dfe:	74 6f 20 
  402e01:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402e08:	73 74 61 
  402e0b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e0f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402e13:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402e1a:	65 73 73 
  402e1d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402e24:	72 6f 6d 
  402e27:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e2b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402e2f:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402e36:	6c 74 20 
  402e39:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402e3d:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402e44:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402e4a:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402e4e:	89 df                	mov    %ebx,%edi
  402e50:	e8 7b e2 ff ff       	call   4010d0 <close@plt>
  402e55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e5a:	e9 a4 fb ff ff       	jmp    402a03 <submitr+0x2e7>
  402e5f:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402e66:	00 
  402e67:	48 8d 0d 7a 18 00 00 	lea    0x187a(%rip),%rcx        # 4046e8 <trans_char+0x78>
  402e6e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402e75:	be 01 00 00 00       	mov    $0x1,%esi
  402e7a:	48 89 ef             	mov    %rbp,%rdi
  402e7d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e82:	e8 79 e3 ff ff       	call   401200 <__sprintf_chk@plt>
  402e87:	89 df                	mov    %ebx,%edi
  402e89:	e8 42 e2 ff ff       	call   4010d0 <close@plt>
  402e8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e93:	e9 6b fb ff ff       	jmp    402a03 <submitr+0x2e7>
  402e98:	e8 f3 e1 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402e9d <init_timeout>:
  402e9d:	85 ff                	test   %edi,%edi
  402e9f:	74 28                	je     402ec9 <init_timeout+0x2c>
  402ea1:	53                   	push   %rbx
  402ea2:	89 fb                	mov    %edi,%ebx
  402ea4:	85 ff                	test   %edi,%edi
  402ea6:	78 1a                	js     402ec2 <init_timeout+0x25>
  402ea8:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 40244c <sigalrm_handler>
  402eaf:	bf 0e 00 00 00       	mov    $0xe,%edi
  402eb4:	e8 37 e2 ff ff       	call   4010f0 <signal@plt>
  402eb9:	89 df                	mov    %ebx,%edi
  402ebb:	e8 00 e2 ff ff       	call   4010c0 <alarm@plt>
  402ec0:	5b                   	pop    %rbx
  402ec1:	c3                   	ret
  402ec2:	bb 00 00 00 00       	mov    $0x0,%ebx
  402ec7:	eb df                	jmp    402ea8 <init_timeout+0xb>
  402ec9:	f3 c3                	repz ret

0000000000402ecb <init_driver>:
  402ecb:	41 54                	push   %r12
  402ecd:	55                   	push   %rbp
  402ece:	53                   	push   %rbx
  402ecf:	48 83 ec 20          	sub    $0x20,%rsp
  402ed3:	49 89 fc             	mov    %rdi,%r12
  402ed6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402edd:	00 00 
  402edf:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402ee4:	31 c0                	xor    %eax,%eax
  402ee6:	be 01 00 00 00       	mov    $0x1,%esi
  402eeb:	bf 0d 00 00 00       	mov    $0xd,%edi
  402ef0:	e8 fb e1 ff ff       	call   4010f0 <signal@plt>
  402ef5:	be 01 00 00 00       	mov    $0x1,%esi
  402efa:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402eff:	e8 ec e1 ff ff       	call   4010f0 <signal@plt>
  402f04:	be 01 00 00 00       	mov    $0x1,%esi
  402f09:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402f0e:	e8 dd e1 ff ff       	call   4010f0 <signal@plt>
  402f13:	ba 00 00 00 00       	mov    $0x0,%edx
  402f18:	be 01 00 00 00       	mov    $0x1,%esi
  402f1d:	bf 02 00 00 00       	mov    $0x2,%edi
  402f22:	e8 e9 e2 ff ff       	call   401210 <socket@plt>
  402f27:	85 c0                	test   %eax,%eax
  402f29:	0f 88 a3 00 00 00    	js     402fd2 <init_driver+0x107>
  402f2f:	89 c3                	mov    %eax,%ebx
  402f31:	48 8d 3d 01 18 00 00 	lea    0x1801(%rip),%rdi        # 404739 <trans_char+0xc9>
  402f38:	e8 c3 e1 ff ff       	call   401100 <gethostbyname@plt>
  402f3d:	48 85 c0             	test   %rax,%rax
  402f40:	0f 84 df 00 00 00    	je     403025 <init_driver+0x15a>
  402f46:	48 89 e5             	mov    %rsp,%rbp
  402f49:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402f50:	00 00 
  402f52:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402f59:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402f5f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402f65:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402f69:	48 8b 40 18          	mov    0x18(%rax),%rax
  402f6d:	48 8b 30             	mov    (%rax),%rsi
  402f70:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402f74:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402f79:	e8 92 e1 ff ff       	call   401110 <__memmove_chk@plt>
  402f7e:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402f85:	ba 10 00 00 00       	mov    $0x10,%edx
  402f8a:	48 89 ee             	mov    %rbp,%rsi
  402f8d:	89 df                	mov    %ebx,%edi
  402f8f:	e8 3c e2 ff ff       	call   4011d0 <connect@plt>
  402f94:	85 c0                	test   %eax,%eax
  402f96:	0f 88 b7 00 00 00    	js     403053 <init_driver+0x188>
  402f9c:	89 df                	mov    %ebx,%edi
  402f9e:	e8 2d e1 ff ff       	call   4010d0 <close@plt>
  402fa3:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402faa:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  402fb5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402fba:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402fc1:	00 00 
  402fc3:	0f 85 e4 00 00 00    	jne    4030ad <init_driver+0x1e2>
  402fc9:	48 83 c4 20          	add    $0x20,%rsp
  402fcd:	5b                   	pop    %rbx
  402fce:	5d                   	pop    %rbp
  402fcf:	41 5c                	pop    %r12
  402fd1:	c3                   	ret
  402fd2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fd9:	3a 20 43 
  402fdc:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402fe3:	20 75 6e 
  402fe6:	49 89 04 24          	mov    %rax,(%r12)
  402fea:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402fef:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ff6:	74 6f 20 
  402ff9:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403000:	65 20 73 
  403003:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403008:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40300d:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  403014:	6b 65 
  403016:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  40301d:	00 
  40301e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403023:	eb 90                	jmp    402fb5 <init_driver+0xea>
  403025:	48 b8 32 30 30 2e 31 	movabs $0x2e3434312e303032,%rax
  40302c:	34 34 2e 
  40302f:	48 ba 32 35 34 2e 31 	movabs $0x3139312e343532,%rdx
  403036:	39 31 00 
  403039:	49 89 04 24          	mov    %rax,(%r12)
  40303d:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403042:	89 df                	mov    %ebx,%edi
  403044:	e8 87 e0 ff ff       	call   4010d0 <close@plt>
  403049:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40304e:	e9 62 ff ff ff       	jmp    402fb5 <init_driver+0xea>
  403053:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40305a:	3a 20 55 
  40305d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403064:	20 74 6f 
  403067:	49 89 04 24          	mov    %rax,(%r12)
  40306b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403070:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403077:	65 63 74 
  40307a:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403081:	65 72 76 
  403084:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403089:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40308e:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  403095:	72 
  403096:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  40309c:	89 df                	mov    %ebx,%edi
  40309e:	e8 2d e0 ff ff       	call   4010d0 <close@plt>
  4030a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030a8:	e9 08 ff ff ff       	jmp    402fb5 <init_driver+0xea>
  4030ad:	e8 de df ff ff       	call   401090 <__stack_chk_fail@plt>

00000000004030b2 <driver_post>:
  4030b2:	53                   	push   %rbx
  4030b3:	4c 89 cb             	mov    %r9,%rbx
  4030b6:	45 85 c0             	test   %r8d,%r8d
  4030b9:	75 18                	jne    4030d3 <driver_post+0x21>
  4030bb:	48 85 ff             	test   %rdi,%rdi
  4030be:	74 05                	je     4030c5 <driver_post+0x13>
  4030c0:	80 3f 00             	cmpb   $0x0,(%rdi)
  4030c3:	75 37                	jne    4030fc <driver_post+0x4a>
  4030c5:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4030ca:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4030ce:	44 89 c0             	mov    %r8d,%eax
  4030d1:	5b                   	pop    %rbx
  4030d2:	c3                   	ret
  4030d3:	48 89 ca             	mov    %rcx,%rdx
  4030d6:	48 8d 35 6c 16 00 00 	lea    0x166c(%rip),%rsi        # 404749 <trans_char+0xd9>
  4030dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4030e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4030e7:	e8 94 e0 ff ff       	call   401180 <__printf_chk@plt>
  4030ec:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4030f1:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4030f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4030fa:	eb d5                	jmp    4030d1 <driver_post+0x1f>
  4030fc:	48 83 ec 08          	sub    $0x8,%rsp
  403100:	41 51                	push   %r9
  403102:	49 89 c9             	mov    %rcx,%r9
  403105:	49 89 d0             	mov    %rdx,%r8
  403108:	48 89 f9             	mov    %rdi,%rcx
  40310b:	48 89 f2             	mov    %rsi,%rdx
  40310e:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  403113:	48 8d 3d 1f 16 00 00 	lea    0x161f(%rip),%rdi        # 404739 <trans_char+0xc9>
  40311a:	e8 fd f5 ff ff       	call   40271c <submitr>
  40311f:	48 83 c4 10          	add    $0x10,%rsp
  403123:	eb ac                	jmp    4030d1 <driver_post+0x1f>

0000000000403125 <check>:
  403125:	89 f8                	mov    %edi,%eax
  403127:	c1 e8 1c             	shr    $0x1c,%eax
  40312a:	85 c0                	test   %eax,%eax
  40312c:	74 1d                	je     40314b <check+0x26>
  40312e:	b9 00 00 00 00       	mov    $0x0,%ecx
  403133:	83 f9 1f             	cmp    $0x1f,%ecx
  403136:	7f 0d                	jg     403145 <check+0x20>
  403138:	89 f8                	mov    %edi,%eax
  40313a:	d3 e8                	shr    %cl,%eax
  40313c:	3c 0a                	cmp    $0xa,%al
  40313e:	74 11                	je     403151 <check+0x2c>
  403140:	83 c1 08             	add    $0x8,%ecx
  403143:	eb ee                	jmp    403133 <check+0xe>
  403145:	b8 01 00 00 00       	mov    $0x1,%eax
  40314a:	c3                   	ret
  40314b:	b8 00 00 00 00       	mov    $0x0,%eax
  403150:	c3                   	ret
  403151:	b8 00 00 00 00       	mov    $0x0,%eax
  403156:	c3                   	ret

0000000000403157 <gencookie>:
  403157:	53                   	push   %rbx
  403158:	83 c7 01             	add    $0x1,%edi
  40315b:	e8 e0 de ff ff       	call   401040 <srandom@plt>
  403160:	e8 eb df ff ff       	call   401150 <random@plt>
  403165:	89 c3                	mov    %eax,%ebx
  403167:	89 c7                	mov    %eax,%edi
  403169:	e8 b7 ff ff ff       	call   403125 <check>
  40316e:	85 c0                	test   %eax,%eax
  403170:	74 ee                	je     403160 <gencookie+0x9>
  403172:	89 d8                	mov    %ebx,%eax
  403174:	5b                   	pop    %rbx
  403175:	c3                   	ret
  403176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40317d:	00 00 00 

0000000000403180 <__libc_csu_init>:
  403180:	f3 0f 1e fa          	endbr64
  403184:	41 57                	push   %r15
  403186:	4c 8d 3d 83 3c 00 00 	lea    0x3c83(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40318d:	41 56                	push   %r14
  40318f:	49 89 d6             	mov    %rdx,%r14
  403192:	41 55                	push   %r13
  403194:	49 89 f5             	mov    %rsi,%r13
  403197:	41 54                	push   %r12
  403199:	41 89 fc             	mov    %edi,%r12d
  40319c:	55                   	push   %rbp
  40319d:	48 8d 2d 74 3c 00 00 	lea    0x3c74(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4031a4:	53                   	push   %rbx
  4031a5:	4c 29 fd             	sub    %r15,%rbp
  4031a8:	48 83 ec 08          	sub    $0x8,%rsp
  4031ac:	e8 4f de ff ff       	call   401000 <_init>
  4031b1:	48 c1 fd 03          	sar    $0x3,%rbp
  4031b5:	74 1f                	je     4031d6 <__libc_csu_init+0x56>
  4031b7:	31 db                	xor    %ebx,%ebx
  4031b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4031c0:	4c 89 f2             	mov    %r14,%rdx
  4031c3:	4c 89 ee             	mov    %r13,%rsi
  4031c6:	44 89 e7             	mov    %r12d,%edi
  4031c9:	41 ff 14 df          	call   *(%r15,%rbx,8)
  4031cd:	48 83 c3 01          	add    $0x1,%rbx
  4031d1:	48 39 dd             	cmp    %rbx,%rbp
  4031d4:	75 ea                	jne    4031c0 <__libc_csu_init+0x40>
  4031d6:	48 83 c4 08          	add    $0x8,%rsp
  4031da:	5b                   	pop    %rbx
  4031db:	5d                   	pop    %rbp
  4031dc:	41 5c                	pop    %r12
  4031de:	41 5d                	pop    %r13
  4031e0:	41 5e                	pop    %r14
  4031e2:	41 5f                	pop    %r15
  4031e4:	c3                   	ret
  4031e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4031ec:	00 00 00 00 

00000000004031f0 <__libc_csu_fini>:
  4031f0:	f3 0f 1e fa          	endbr64
  4031f4:	c3                   	ret

Desmontagem da secção .fini:

00000000004031f8 <_fini>:
  4031f8:	f3 0f 1e fa          	endbr64
  4031fc:	48 83 ec 08          	sub    $0x8,%rsp
  403200:	48 83 c4 08          	add    $0x8,%rsp
  403204:	c3                   	ret
