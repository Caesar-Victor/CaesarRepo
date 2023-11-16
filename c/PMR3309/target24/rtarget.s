
rtarget:     formato de ficheiro elf64-x86-64


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
  401233:	49 c7 c0 10 33 40 00 	mov    $0x403310,%r8
  40123a:	48 c7 c1 a0 32 40 00 	mov    $0x4032a0,%rcx
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
  4013cd:	e8 a4 1e 00 00       	call   403276 <gencookie>
  4013d2:	89 05 2c 61 00 00    	mov    %eax,0x612c(%rip)        # 407504 <cookie>
  4013d8:	89 c7                	mov    %eax,%edi
  4013da:	e8 97 1e 00 00       	call   403276 <gencookie>
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
  40141f:	c6 05 02 6d 00 00 72 	movb   $0x72,0x6d02(%rip)        # 408128 <target_prefix>
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
  401470:	e8 75 1b 00 00       	call   402fea <init_driver>
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
  4014af:	48 c7 c6 db 22 40 00 	mov    $0x4022db,%rsi
  4014b6:	bf 0b 00 00 00       	mov    $0xb,%edi
  4014bb:	e8 30 fc ff ff       	call   4010f0 <signal@plt>
  4014c0:	48 c7 c6 87 22 40 00 	mov    $0x402287,%rsi
  4014c7:	bf 07 00 00 00       	mov    $0x7,%edi
  4014cc:	e8 1f fc ff ff       	call   4010f0 <signal@plt>
  4014d1:	48 c7 c6 2f 23 40 00 	mov    $0x40232f,%rsi
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
  401511:	48 c7 c6 83 23 40 00 	mov    $0x402383,%rsi
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
  401612:	be 01 00 00 00       	mov    $0x1,%esi
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
  401654:	e8 81 0d 00 00       	call   4023da <launch>
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
  401685:	e8 5d 08 00 00       	call   401ee7 <check_fail>
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
  401b67:	e8 b3 03 00 00       	call   401f1f <Gets>
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
  401b95:	e8 ad 09 00 00       	call   402547 <validate>
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
  401bd7:	e8 83 06 00 00       	call   40225f <fail>
  401bdc:	bf 00 00 00 00       	mov    $0x0,%edi
  401be1:	e8 da f5 ff ff       	call   4011c0 <exit@plt>
  401be6:	48 8d 35 c3 26 00 00 	lea    0x26c3(%rip),%rsi        # 4042b0 <_IO_stdin_used+0x2b0>
  401bed:	bf 01 00 00 00       	mov    $0x1,%edi
  401bf2:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf7:	e8 84 f5 ff ff       	call   401180 <__printf_chk@plt>
  401bfc:	bf 02 00 00 00       	mov    $0x2,%edi
  401c01:	e8 41 09 00 00       	call   402547 <validate>
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
  401cf9:	e8 49 08 00 00       	call   402547 <validate>
  401cfe:	bf 00 00 00 00       	mov    $0x0,%edi
  401d03:	e8 b8 f4 ff ff       	call   4011c0 <exit@plt>
  401d08:	48 89 da             	mov    %rbx,%rdx
  401d0b:	48 8d 35 16 26 00 00 	lea    0x2616(%rip),%rsi        # 404328 <_IO_stdin_used+0x328>
  401d12:	bf 01 00 00 00       	mov    $0x1,%edi
  401d17:	b8 00 00 00 00       	mov    $0x0,%eax
  401d1c:	e8 5f f4 ff ff       	call   401180 <__printf_chk@plt>
  401d21:	bf 03 00 00 00       	mov    $0x3,%edi
  401d26:	e8 34 05 00 00       	call   40225f <fail>
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

0000000000401d58 <start_farm>:
  401d58:	b8 01 00 00 00       	mov    $0x1,%eax
  401d5d:	c3                   	ret

0000000000401d5e <getval_232>:
  401d5e:	b8 c6 a1 58 90       	mov    $0x9058a1c6,%eax
  401d63:	c3                   	ret

0000000000401d64 <getval_182>:
  401d64:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  401d69:	c3                   	ret

0000000000401d6a <getval_274>:
  401d6a:	b8 78 48 89 c7       	mov    $0xc7894878,%eax
  401d6f:	c3                   	ret

0000000000401d70 <addval_377>:
  401d70:	8d 87 48 89 c7 c2    	lea    -0x3d3876b8(%rdi),%eax
  401d76:	c3                   	ret

0000000000401d77 <getval_136>:
  401d77:	b8 1e 25 d6 48       	mov    $0x48d6251e,%eax
  401d7c:	c3                   	ret

0000000000401d7d <getval_124>:
  401d7d:	b8 50 90 90 c3       	mov    $0xc3909050,%eax
  401d82:	c3                   	ret

0000000000401d83 <getval_383>:
  401d83:	b8 08 89 c7 90       	mov    $0x90c78908,%eax
  401d88:	c3                   	ret

0000000000401d89 <getval_245>:
  401d89:	b8 3b 48 89 c7       	mov    $0xc789483b,%eax
  401d8e:	c3                   	ret

0000000000401d8f <mid_farm>:
  401d8f:	b8 01 00 00 00       	mov    $0x1,%eax
  401d94:	c3                   	ret

0000000000401d95 <add_xy>:
  401d95:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401d99:	c3                   	ret

0000000000401d9a <getval_367>:
  401d9a:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  401d9f:	c3                   	ret

0000000000401da0 <setval_138>:
  401da0:	c7 07 89 d1 18 d2    	movl   $0xd218d189,(%rdi)
  401da6:	c3                   	ret

0000000000401da7 <addval_276>:
  401da7:	8d 87 89 d1 48 c0    	lea    -0x3fb72e77(%rdi),%eax
  401dad:	c3                   	ret

0000000000401dae <addval_345>:
  401dae:	8d 87 89 d1 30 c9    	lea    -0x36cf2e77(%rdi),%eax
  401db4:	c3                   	ret

0000000000401db5 <addval_252>:
  401db5:	8d 87 8b d1 84 c9    	lea    -0x367b2e75(%rdi),%eax
  401dbb:	c3                   	ret

0000000000401dbc <getval_168>:
  401dbc:	b8 8b ce 38 d2       	mov    $0xd238ce8b,%eax
  401dc1:	c3                   	ret

0000000000401dc2 <setval_297>:
  401dc2:	c7 07 89 c2 94 90    	movl   $0x9094c289,(%rdi)
  401dc8:	c3                   	ret

0000000000401dc9 <addval_401>:
  401dc9:	8d 87 89 ce 84 d2    	lea    -0x2d7b3177(%rdi),%eax
  401dcf:	c3                   	ret

0000000000401dd0 <setval_371>:
  401dd0:	c7 07 89 c2 c7 c3    	movl   $0xc3c7c289,(%rdi)
  401dd6:	c3                   	ret

0000000000401dd7 <setval_199>:
  401dd7:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401ddd:	c3                   	ret

0000000000401dde <setval_315>:
  401dde:	c7 07 8b ce 08 c9    	movl   $0xc908ce8b,(%rdi)
  401de4:	c3                   	ret

0000000000401de5 <setval_449>:
  401de5:	c7 07 89 c2 c1 c9    	movl   $0xc9c1c289,(%rdi)
  401deb:	c3                   	ret

0000000000401dec <setval_351>:
  401dec:	c7 07 89 ce 90 c3    	movl   $0xc390ce89,(%rdi)
  401df2:	c3                   	ret

0000000000401df3 <addval_107>:
  401df3:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  401df9:	c3                   	ret

0000000000401dfa <getval_220>:
  401dfa:	b8 c9 d1 38 db       	mov    $0xdb38d1c9,%eax
  401dff:	c3                   	ret

0000000000401e00 <addval_434>:
  401e00:	8d 87 89 c2 a4 c9    	lea    -0x365b3d77(%rdi),%eax
  401e06:	c3                   	ret

0000000000401e07 <getval_319>:
  401e07:	b8 4a 48 89 e0       	mov    $0xe089484a,%eax
  401e0c:	c3                   	ret

0000000000401e0d <setval_215>:
  401e0d:	c7 07 89 d1 84 db    	movl   $0xdb84d189,(%rdi)
  401e13:	c3                   	ret

0000000000401e14 <addval_161>:
  401e14:	8d 87 48 99 e0 c3    	lea    -0x3c1f66b8(%rdi),%eax
  401e1a:	c3                   	ret

0000000000401e1b <addval_147>:
  401e1b:	8d 87 89 c2 28 db    	lea    -0x24d73d77(%rdi),%eax
  401e21:	c3                   	ret

0000000000401e22 <getval_328>:
  401e22:	b8 8d ce 90 c3       	mov    $0xc390ce8d,%eax
  401e27:	c3                   	ret

0000000000401e28 <getval_430>:
  401e28:	b8 68 89 e0 90       	mov    $0x90e08968,%eax
  401e2d:	c3                   	ret

0000000000401e2e <getval_157>:
  401e2e:	b8 89 c2 84 c9       	mov    $0xc984c289,%eax
  401e33:	c3                   	ret

0000000000401e34 <addval_121>:
  401e34:	8d 87 89 d1 08 db    	lea    -0x24f72e77(%rdi),%eax
  401e3a:	c3                   	ret

0000000000401e3b <addval_334>:
  401e3b:	8d 87 48 c9 e0 c3    	lea    -0x3c1f36b8(%rdi),%eax
  401e41:	c3                   	ret

0000000000401e42 <setval_135>:
  401e42:	c7 07 7d 89 ce c2    	movl   $0xc2ce897d,(%rdi)
  401e48:	c3                   	ret

0000000000401e49 <setval_283>:
  401e49:	c7 07 89 c2 94 c0    	movl   $0xc094c289,(%rdi)
  401e4f:	c3                   	ret

0000000000401e50 <addval_197>:
  401e50:	8d 87 df 8d ce 90    	lea    -0x6f317221(%rdi),%eax
  401e56:	c3                   	ret

0000000000401e57 <getval_204>:
  401e57:	b8 89 d1 c4 d2       	mov    $0xd2c4d189,%eax
  401e5c:	c3                   	ret

0000000000401e5d <setval_193>:
  401e5d:	c7 07 89 c2 84 d2    	movl   $0xd284c289,(%rdi)
  401e63:	c3                   	ret

0000000000401e64 <getval_480>:
  401e64:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401e69:	c3                   	ret

0000000000401e6a <setval_290>:
  401e6a:	c7 07 8b ce 20 d2    	movl   $0xd220ce8b,(%rdi)
  401e70:	c3                   	ret

0000000000401e71 <end_farm>:
  401e71:	b8 01 00 00 00       	mov    $0x1,%eax
  401e76:	c3                   	ret

0000000000401e77 <save_char>:
  401e77:	8b 05 a7 62 00 00    	mov    0x62a7(%rip),%eax        # 408124 <gets_cnt>
  401e7d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401e82:	7f 4a                	jg     401ece <save_char+0x57>
  401e84:	89 f9                	mov    %edi,%ecx
  401e86:	c0 e9 04             	shr    $0x4,%cl
  401e89:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401e8c:	4c 8d 05 dd 27 00 00 	lea    0x27dd(%rip),%r8        # 404670 <trans_char>
  401e93:	83 e1 0f             	and    $0xf,%ecx
  401e96:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401e9b:	48 8d 0d 7e 56 00 00 	lea    0x567e(%rip),%rcx        # 407520 <gets_buf>
  401ea2:	48 63 f2             	movslq %edx,%rsi
  401ea5:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401ea9:	8d 72 01             	lea    0x1(%rdx),%esi
  401eac:	83 e7 0f             	and    $0xf,%edi
  401eaf:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401eb4:	48 63 f6             	movslq %esi,%rsi
  401eb7:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401ebb:	83 c2 02             	add    $0x2,%edx
  401ebe:	48 63 d2             	movslq %edx,%rdx
  401ec1:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401ec5:	83 c0 01             	add    $0x1,%eax
  401ec8:	89 05 56 62 00 00    	mov    %eax,0x6256(%rip)        # 408124 <gets_cnt>
  401ece:	f3 c3                	repz ret

0000000000401ed0 <save_term>:
  401ed0:	8b 05 4e 62 00 00    	mov    0x624e(%rip),%eax        # 408124 <gets_cnt>
  401ed6:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ed9:	48 98                	cltq
  401edb:	48 8d 15 3e 56 00 00 	lea    0x563e(%rip),%rdx        # 407520 <gets_buf>
  401ee2:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401ee6:	c3                   	ret

0000000000401ee7 <check_fail>:
  401ee7:	48 83 ec 08          	sub    $0x8,%rsp
  401eeb:	0f be 15 36 62 00 00 	movsbl 0x6236(%rip),%edx        # 408128 <target_prefix>
  401ef2:	4c 8d 05 27 56 00 00 	lea    0x5627(%rip),%r8        # 407520 <gets_buf>
  401ef9:	8b 0d f9 55 00 00    	mov    0x55f9(%rip),%ecx        # 4074f8 <check_level>
  401eff:	48 8d 35 6d 24 00 00 	lea    0x246d(%rip),%rsi        # 404373 <_IO_stdin_used+0x373>
  401f06:	bf 01 00 00 00       	mov    $0x1,%edi
  401f0b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f10:	e8 6b f2 ff ff       	call   401180 <__printf_chk@plt>
  401f15:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1a:	e8 a1 f2 ff ff       	call   4011c0 <exit@plt>

0000000000401f1f <Gets>:
  401f1f:	41 54                	push   %r12
  401f21:	55                   	push   %rbp
  401f22:	53                   	push   %rbx
  401f23:	49 89 fc             	mov    %rdi,%r12
  401f26:	c7 05 f4 61 00 00 00 	movl   $0x0,0x61f4(%rip)        # 408124 <gets_cnt>
  401f2d:	00 00 00 
  401f30:	48 89 fb             	mov    %rdi,%rbx
  401f33:	eb 11                	jmp    401f46 <Gets+0x27>
  401f35:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401f39:	88 03                	mov    %al,(%rbx)
  401f3b:	0f b6 f8             	movzbl %al,%edi
  401f3e:	e8 34 ff ff ff       	call   401e77 <save_char>
  401f43:	48 89 eb             	mov    %rbp,%rbx
  401f46:	48 8b 3d a3 55 00 00 	mov    0x55a3(%rip),%rdi        # 4074f0 <infile>
  401f4d:	e8 9e f2 ff ff       	call   4011f0 <getc@plt>
  401f52:	83 f8 ff             	cmp    $0xffffffff,%eax
  401f55:	74 05                	je     401f5c <Gets+0x3d>
  401f57:	83 f8 0a             	cmp    $0xa,%eax
  401f5a:	75 d9                	jne    401f35 <Gets+0x16>
  401f5c:	c6 03 00             	movb   $0x0,(%rbx)
  401f5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401f64:	e8 67 ff ff ff       	call   401ed0 <save_term>
  401f69:	4c 89 e0             	mov    %r12,%rax
  401f6c:	5b                   	pop    %rbx
  401f6d:	5d                   	pop    %rbp
  401f6e:	41 5c                	pop    %r12
  401f70:	c3                   	ret

0000000000401f71 <notify_server>:
  401f71:	55                   	push   %rbp
  401f72:	53                   	push   %rbx
  401f73:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401f7a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f81:	00 00 
  401f83:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401f8a:	00 
  401f8b:	31 c0                	xor    %eax,%eax
  401f8d:	83 3d 74 55 00 00 00 	cmpl   $0x0,0x5574(%rip)        # 407508 <is_checker>
  401f94:	0f 85 d2 00 00 00    	jne    40206c <notify_server+0xfb>
  401f9a:	89 fb                	mov    %edi,%ebx
  401f9c:	8b 05 82 61 00 00    	mov    0x6182(%rip),%eax        # 408124 <gets_cnt>
  401fa2:	83 c0 64             	add    $0x64,%eax
  401fa5:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401faa:	0f 8f dd 00 00 00    	jg     40208d <notify_server+0x11c>
  401fb0:	0f be 05 71 61 00 00 	movsbl 0x6171(%rip),%eax        # 408128 <target_prefix>
  401fb7:	83 3d ca 54 00 00 00 	cmpl   $0x0,0x54ca(%rip)        # 407488 <notify>
  401fbe:	0f 84 e9 00 00 00    	je     4020ad <notify_server+0x13c>
  401fc4:	8b 15 36 55 00 00    	mov    0x5536(%rip),%edx        # 407500 <authkey>
  401fca:	85 db                	test   %ebx,%ebx
  401fcc:	0f 84 e5 00 00 00    	je     4020b7 <notify_server+0x146>
  401fd2:	48 8d 2d b0 23 00 00 	lea    0x23b0(%rip),%rbp        # 404389 <_IO_stdin_used+0x389>
  401fd9:	48 89 e7             	mov    %rsp,%rdi
  401fdc:	48 8d 0d 3d 55 00 00 	lea    0x553d(%rip),%rcx        # 407520 <gets_buf>
  401fe3:	51                   	push   %rcx
  401fe4:	56                   	push   %rsi
  401fe5:	50                   	push   %rax
  401fe6:	52                   	push   %rdx
  401fe7:	49 89 e9             	mov    %rbp,%r9
  401fea:	44 8b 05 3f 51 00 00 	mov    0x513f(%rip),%r8d        # 407130 <target_id>
  401ff1:	48 8d 0d 9b 23 00 00 	lea    0x239b(%rip),%rcx        # 404393 <_IO_stdin_used+0x393>
  401ff8:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ffd:	be 01 00 00 00       	mov    $0x1,%esi
  402002:	b8 00 00 00 00       	mov    $0x0,%eax
  402007:	e8 f4 f1 ff ff       	call   401200 <__sprintf_chk@plt>
  40200c:	48 83 c4 20          	add    $0x20,%rsp
  402010:	83 3d 71 54 00 00 00 	cmpl   $0x0,0x5471(%rip)        # 407488 <notify>
  402017:	0f 84 df 00 00 00    	je     4020fc <notify_server+0x18b>
  40201d:	85 db                	test   %ebx,%ebx
  40201f:	0f 84 c6 00 00 00    	je     4020eb <notify_server+0x17a>
  402025:	48 89 e1             	mov    %rsp,%rcx
  402028:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40202f:	00 
  402030:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402036:	48 8b 15 0b 51 00 00 	mov    0x510b(%rip),%rdx        # 407148 <lab>
  40203d:	48 8b 35 0c 51 00 00 	mov    0x510c(%rip),%rsi        # 407150 <course>
  402044:	48 8b 3d f5 50 00 00 	mov    0x50f5(%rip),%rdi        # 407140 <user_id>
  40204b:	e8 81 11 00 00       	call   4031d1 <driver_post>
  402050:	85 c0                	test   %eax,%eax
  402052:	78 6f                	js     4020c3 <notify_server+0x152>
  402054:	48 8d 3d 7d 24 00 00 	lea    0x247d(%rip),%rdi        # 4044d8 <_IO_stdin_used+0x4d8>
  40205b:	e8 10 f0 ff ff       	call   401070 <puts@plt>
  402060:	48 8d 3d 54 23 00 00 	lea    0x2354(%rip),%rdi        # 4043bb <_IO_stdin_used+0x3bb>
  402067:	e8 04 f0 ff ff       	call   401070 <puts@plt>
  40206c:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402073:	00 
  402074:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40207b:	00 00 
  40207d:	0f 85 07 01 00 00    	jne    40218a <notify_server+0x219>
  402083:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40208a:	5b                   	pop    %rbx
  40208b:	5d                   	pop    %rbp
  40208c:	c3                   	ret
  40208d:	48 8d 35 14 24 00 00 	lea    0x2414(%rip),%rsi        # 4044a8 <_IO_stdin_used+0x4a8>
  402094:	bf 01 00 00 00       	mov    $0x1,%edi
  402099:	b8 00 00 00 00       	mov    $0x0,%eax
  40209e:	e8 dd f0 ff ff       	call   401180 <__printf_chk@plt>
  4020a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a8:	e8 13 f1 ff ff       	call   4011c0 <exit@plt>
  4020ad:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4020b2:	e9 13 ff ff ff       	jmp    401fca <notify_server+0x59>
  4020b7:	48 8d 2d d0 22 00 00 	lea    0x22d0(%rip),%rbp        # 40438e <_IO_stdin_used+0x38e>
  4020be:	e9 16 ff ff ff       	jmp    401fd9 <notify_server+0x68>
  4020c3:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4020ca:	00 
  4020cb:	48 8d 35 dd 22 00 00 	lea    0x22dd(%rip),%rsi        # 4043af <_IO_stdin_used+0x3af>
  4020d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020dc:	e8 9f f0 ff ff       	call   401180 <__printf_chk@plt>
  4020e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020e6:	e8 d5 f0 ff ff       	call   4011c0 <exit@plt>
  4020eb:	48 8d 3d d3 22 00 00 	lea    0x22d3(%rip),%rdi        # 4043c5 <_IO_stdin_used+0x3c5>
  4020f2:	e8 79 ef ff ff       	call   401070 <puts@plt>
  4020f7:	e9 70 ff ff ff       	jmp    40206c <notify_server+0xfb>
  4020fc:	48 89 ea             	mov    %rbp,%rdx
  4020ff:	48 8d 35 0a 24 00 00 	lea    0x240a(%rip),%rsi        # 404510 <_IO_stdin_used+0x510>
  402106:	bf 01 00 00 00       	mov    $0x1,%edi
  40210b:	b8 00 00 00 00       	mov    $0x0,%eax
  402110:	e8 6b f0 ff ff       	call   401180 <__printf_chk@plt>
  402115:	48 8b 15 24 50 00 00 	mov    0x5024(%rip),%rdx        # 407140 <user_id>
  40211c:	48 8d 35 a9 22 00 00 	lea    0x22a9(%rip),%rsi        # 4043cc <_IO_stdin_used+0x3cc>
  402123:	bf 01 00 00 00       	mov    $0x1,%edi
  402128:	b8 00 00 00 00       	mov    $0x0,%eax
  40212d:	e8 4e f0 ff ff       	call   401180 <__printf_chk@plt>
  402132:	48 8b 15 17 50 00 00 	mov    0x5017(%rip),%rdx        # 407150 <course>
  402139:	48 8d 35 99 22 00 00 	lea    0x2299(%rip),%rsi        # 4043d9 <_IO_stdin_used+0x3d9>
  402140:	bf 01 00 00 00       	mov    $0x1,%edi
  402145:	b8 00 00 00 00       	mov    $0x0,%eax
  40214a:	e8 31 f0 ff ff       	call   401180 <__printf_chk@plt>
  40214f:	48 8b 15 f2 4f 00 00 	mov    0x4ff2(%rip),%rdx        # 407148 <lab>
  402156:	48 8d 35 88 22 00 00 	lea    0x2288(%rip),%rsi        # 4043e5 <_IO_stdin_used+0x3e5>
  40215d:	bf 01 00 00 00       	mov    $0x1,%edi
  402162:	b8 00 00 00 00       	mov    $0x0,%eax
  402167:	e8 14 f0 ff ff       	call   401180 <__printf_chk@plt>
  40216c:	48 89 e2             	mov    %rsp,%rdx
  40216f:	48 8d 35 78 22 00 00 	lea    0x2278(%rip),%rsi        # 4043ee <_IO_stdin_used+0x3ee>
  402176:	bf 01 00 00 00       	mov    $0x1,%edi
  40217b:	b8 00 00 00 00       	mov    $0x0,%eax
  402180:	e8 fb ef ff ff       	call   401180 <__printf_chk@plt>
  402185:	e9 e2 fe ff ff       	jmp    40206c <notify_server+0xfb>
  40218a:	e8 01 ef ff ff       	call   401090 <__stack_chk_fail@plt>

000000000040218f <_validate>:
  40218f:	53                   	push   %rbx
  402190:	89 fb                	mov    %edi,%ebx
  402192:	83 3d 6f 53 00 00 00 	cmpl   $0x0,0x536f(%rip)        # 407508 <is_checker>
  402199:	74 72                	je     40220d <_validate+0x7e>
  40219b:	39 3d 5b 53 00 00    	cmp    %edi,0x535b(%rip)        # 4074fc <vlevel>
  4021a1:	75 32                	jne    4021d5 <_validate+0x46>
  4021a3:	8b 15 4f 53 00 00    	mov    0x534f(%rip),%edx        # 4074f8 <check_level>
  4021a9:	39 fa                	cmp    %edi,%edx
  4021ab:	75 3e                	jne    4021eb <_validate+0x5c>
  4021ad:	0f be 15 74 5f 00 00 	movsbl 0x5f74(%rip),%edx        # 408128 <target_prefix>
  4021b4:	4c 8d 05 65 53 00 00 	lea    0x5365(%rip),%r8        # 407520 <gets_buf>
  4021bb:	89 f9                	mov    %edi,%ecx
  4021bd:	48 8d 35 54 22 00 00 	lea    0x2254(%rip),%rsi        # 404418 <_IO_stdin_used+0x418>
  4021c4:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ce:	e8 ad ef ff ff       	call   401180 <__printf_chk@plt>
  4021d3:	5b                   	pop    %rbx
  4021d4:	c3                   	ret
  4021d5:	48 8d 3d 1e 22 00 00 	lea    0x221e(%rip),%rdi        # 4043fa <_IO_stdin_used+0x3fa>
  4021dc:	e8 8f ee ff ff       	call   401070 <puts@plt>
  4021e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e6:	e8 fc fc ff ff       	call   401ee7 <check_fail>
  4021eb:	89 f9                	mov    %edi,%ecx
  4021ed:	48 8d 35 44 23 00 00 	lea    0x2344(%rip),%rsi        # 404538 <_IO_stdin_used+0x538>
  4021f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4021f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021fe:	e8 7d ef ff ff       	call   401180 <__printf_chk@plt>
  402203:	b8 00 00 00 00       	mov    $0x0,%eax
  402208:	e8 da fc ff ff       	call   401ee7 <check_fail>
  40220d:	39 3d e9 52 00 00    	cmp    %edi,0x52e9(%rip)        # 4074fc <vlevel>
  402213:	74 1a                	je     40222f <_validate+0xa0>
  402215:	48 8d 3d de 21 00 00 	lea    0x21de(%rip),%rdi        # 4043fa <_IO_stdin_used+0x3fa>
  40221c:	e8 4f ee ff ff       	call   401070 <puts@plt>
  402221:	89 de                	mov    %ebx,%esi
  402223:	bf 00 00 00 00       	mov    $0x0,%edi
  402228:	e8 44 fd ff ff       	call   401f71 <notify_server>
  40222d:	eb a4                	jmp    4021d3 <_validate+0x44>
  40222f:	0f be 0d f2 5e 00 00 	movsbl 0x5ef2(%rip),%ecx        # 408128 <target_prefix>
  402236:	89 fa                	mov    %edi,%edx
  402238:	48 8d 35 21 23 00 00 	lea    0x2321(%rip),%rsi        # 404560 <_IO_stdin_used+0x560>
  40223f:	bf 01 00 00 00       	mov    $0x1,%edi
  402244:	b8 00 00 00 00       	mov    $0x0,%eax
  402249:	e8 32 ef ff ff       	call   401180 <__printf_chk@plt>
  40224e:	89 de                	mov    %ebx,%esi
  402250:	bf 01 00 00 00       	mov    $0x1,%edi
  402255:	e8 17 fd ff ff       	call   401f71 <notify_server>
  40225a:	e9 74 ff ff ff       	jmp    4021d3 <_validate+0x44>

000000000040225f <fail>:
  40225f:	48 83 ec 08          	sub    $0x8,%rsp
  402263:	83 3d 9e 52 00 00 00 	cmpl   $0x0,0x529e(%rip)        # 407508 <is_checker>
  40226a:	75 11                	jne    40227d <fail+0x1e>
  40226c:	89 fe                	mov    %edi,%esi
  40226e:	bf 00 00 00 00       	mov    $0x0,%edi
  402273:	e8 f9 fc ff ff       	call   401f71 <notify_server>
  402278:	48 83 c4 08          	add    $0x8,%rsp
  40227c:	c3                   	ret
  40227d:	b8 00 00 00 00       	mov    $0x0,%eax
  402282:	e8 60 fc ff ff       	call   401ee7 <check_fail>

0000000000402287 <bushandler>:
  402287:	48 83 ec 08          	sub    $0x8,%rsp
  40228b:	83 3d 76 52 00 00 00 	cmpl   $0x0,0x5276(%rip)        # 407508 <is_checker>
  402292:	74 16                	je     4022aa <bushandler+0x23>
  402294:	48 8d 3d 92 21 00 00 	lea    0x2192(%rip),%rdi        # 40442d <_IO_stdin_used+0x42d>
  40229b:	e8 d0 ed ff ff       	call   401070 <puts@plt>
  4022a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a5:	e8 3d fc ff ff       	call   401ee7 <check_fail>
  4022aa:	48 8d 3d e7 22 00 00 	lea    0x22e7(%rip),%rdi        # 404598 <_IO_stdin_used+0x598>
  4022b1:	e8 ba ed ff ff       	call   401070 <puts@plt>
  4022b6:	48 8d 3d 7a 21 00 00 	lea    0x217a(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  4022bd:	e8 ae ed ff ff       	call   401070 <puts@plt>
  4022c2:	be 00 00 00 00       	mov    $0x0,%esi
  4022c7:	bf 00 00 00 00       	mov    $0x0,%edi
  4022cc:	e8 a0 fc ff ff       	call   401f71 <notify_server>
  4022d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4022d6:	e8 e5 ee ff ff       	call   4011c0 <exit@plt>

00000000004022db <seghandler>:
  4022db:	48 83 ec 08          	sub    $0x8,%rsp
  4022df:	83 3d 22 52 00 00 00 	cmpl   $0x0,0x5222(%rip)        # 407508 <is_checker>
  4022e6:	74 16                	je     4022fe <seghandler+0x23>
  4022e8:	48 8d 3d 5e 21 00 00 	lea    0x215e(%rip),%rdi        # 40444d <_IO_stdin_used+0x44d>
  4022ef:	e8 7c ed ff ff       	call   401070 <puts@plt>
  4022f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4022f9:	e8 e9 fb ff ff       	call   401ee7 <check_fail>
  4022fe:	48 8d 3d b3 22 00 00 	lea    0x22b3(%rip),%rdi        # 4045b8 <_IO_stdin_used+0x5b8>
  402305:	e8 66 ed ff ff       	call   401070 <puts@plt>
  40230a:	48 8d 3d 26 21 00 00 	lea    0x2126(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  402311:	e8 5a ed ff ff       	call   401070 <puts@plt>
  402316:	be 00 00 00 00       	mov    $0x0,%esi
  40231b:	bf 00 00 00 00       	mov    $0x0,%edi
  402320:	e8 4c fc ff ff       	call   401f71 <notify_server>
  402325:	bf 01 00 00 00       	mov    $0x1,%edi
  40232a:	e8 91 ee ff ff       	call   4011c0 <exit@plt>

000000000040232f <illegalhandler>:
  40232f:	48 83 ec 08          	sub    $0x8,%rsp
  402333:	83 3d ce 51 00 00 00 	cmpl   $0x0,0x51ce(%rip)        # 407508 <is_checker>
  40233a:	74 16                	je     402352 <illegalhandler+0x23>
  40233c:	48 8d 3d 1d 21 00 00 	lea    0x211d(%rip),%rdi        # 404460 <_IO_stdin_used+0x460>
  402343:	e8 28 ed ff ff       	call   401070 <puts@plt>
  402348:	b8 00 00 00 00       	mov    $0x0,%eax
  40234d:	e8 95 fb ff ff       	call   401ee7 <check_fail>
  402352:	48 8d 3d 87 22 00 00 	lea    0x2287(%rip),%rdi        # 4045e0 <_IO_stdin_used+0x5e0>
  402359:	e8 12 ed ff ff       	call   401070 <puts@plt>
  40235e:	48 8d 3d d2 20 00 00 	lea    0x20d2(%rip),%rdi        # 404437 <_IO_stdin_used+0x437>
  402365:	e8 06 ed ff ff       	call   401070 <puts@plt>
  40236a:	be 00 00 00 00       	mov    $0x0,%esi
  40236f:	bf 00 00 00 00       	mov    $0x0,%edi
  402374:	e8 f8 fb ff ff       	call   401f71 <notify_server>
  402379:	bf 01 00 00 00       	mov    $0x1,%edi
  40237e:	e8 3d ee ff ff       	call   4011c0 <exit@plt>

0000000000402383 <sigalrmhandler>:
  402383:	48 83 ec 08          	sub    $0x8,%rsp
  402387:	83 3d 7a 51 00 00 00 	cmpl   $0x0,0x517a(%rip)        # 407508 <is_checker>
  40238e:	74 16                	je     4023a6 <sigalrmhandler+0x23>
  402390:	48 8d 3d dd 20 00 00 	lea    0x20dd(%rip),%rdi        # 404474 <_IO_stdin_used+0x474>
  402397:	e8 d4 ec ff ff       	call   401070 <puts@plt>
  40239c:	b8 00 00 00 00       	mov    $0x0,%eax
  4023a1:	e8 41 fb ff ff       	call   401ee7 <check_fail>
  4023a6:	ba 05 00 00 00       	mov    $0x5,%edx
  4023ab:	48 8d 35 5e 22 00 00 	lea    0x225e(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4023b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4023b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023bc:	e8 bf ed ff ff       	call   401180 <__printf_chk@plt>
  4023c1:	be 00 00 00 00       	mov    $0x0,%esi
  4023c6:	bf 00 00 00 00       	mov    $0x0,%edi
  4023cb:	e8 a1 fb ff ff       	call   401f71 <notify_server>
  4023d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4023d5:	e8 e6 ed ff ff       	call   4011c0 <exit@plt>

00000000004023da <launch>:
  4023da:	55                   	push   %rbp
  4023db:	48 89 e5             	mov    %rsp,%rbp
  4023de:	48 83 ec 10          	sub    $0x10,%rsp
  4023e2:	48 89 fa             	mov    %rdi,%rdx
  4023e5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023ec:	00 00 
  4023ee:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4023f2:	31 c0                	xor    %eax,%eax
  4023f4:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4023f8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4023fc:	48 29 c4             	sub    %rax,%rsp
  4023ff:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402404:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402408:	be f4 00 00 00       	mov    $0xf4,%esi
  40240d:	e8 9e ec ff ff       	call   4010b0 <memset@plt>
  402412:	48 8b 05 87 50 00 00 	mov    0x5087(%rip),%rax        # 4074a0 <stdin@GLIBC_2.2.5>
  402419:	48 39 05 d0 50 00 00 	cmp    %rax,0x50d0(%rip)        # 4074f0 <infile>
  402420:	74 3a                	je     40245c <launch+0x82>
  402422:	c7 05 d0 50 00 00 00 	movl   $0x0,0x50d0(%rip)        # 4074fc <vlevel>
  402429:	00 00 00 
  40242c:	b8 00 00 00 00       	mov    $0x0,%eax
  402431:	e8 f7 f8 ff ff       	call   401d2d <test>
  402436:	83 3d cb 50 00 00 00 	cmpl   $0x0,0x50cb(%rip)        # 407508 <is_checker>
  40243d:	75 35                	jne    402474 <launch+0x9a>
  40243f:	48 8d 3d 4e 20 00 00 	lea    0x204e(%rip),%rdi        # 404494 <_IO_stdin_used+0x494>
  402446:	e8 25 ec ff ff       	call   401070 <puts@plt>
  40244b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40244f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402456:	00 00 
  402458:	75 30                	jne    40248a <launch+0xb0>
  40245a:	c9                   	leave
  40245b:	c3                   	ret
  40245c:	48 8d 35 19 20 00 00 	lea    0x2019(%rip),%rsi        # 40447c <_IO_stdin_used+0x47c>
  402463:	bf 01 00 00 00       	mov    $0x1,%edi
  402468:	b8 00 00 00 00       	mov    $0x0,%eax
  40246d:	e8 0e ed ff ff       	call   401180 <__printf_chk@plt>
  402472:	eb ae                	jmp    402422 <launch+0x48>
  402474:	48 8d 3d 0e 20 00 00 	lea    0x200e(%rip),%rdi        # 404489 <_IO_stdin_used+0x489>
  40247b:	e8 f0 eb ff ff       	call   401070 <puts@plt>
  402480:	b8 00 00 00 00       	mov    $0x0,%eax
  402485:	e8 5d fa ff ff       	call   401ee7 <check_fail>
  40248a:	e8 01 ec ff ff       	call   401090 <__stack_chk_fail@plt>

000000000040248f <stable_launch>:
  40248f:	53                   	push   %rbx
  402490:	48 89 3d 51 50 00 00 	mov    %rdi,0x5051(%rip)        # 4074e8 <global_offset>
  402497:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  40249d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4024a3:	b9 32 01 00 00       	mov    $0x132,%ecx
  4024a8:	ba 07 00 00 00       	mov    $0x7,%edx
  4024ad:	be 00 00 10 00       	mov    $0x100000,%esi
  4024b2:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4024b7:	e8 e4 eb ff ff       	call   4010a0 <mmap@plt>
  4024bc:	48 89 c3             	mov    %rax,%rbx
  4024bf:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4024c5:	75 47                	jne    40250e <stable_launch+0x7f>
  4024c7:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4024ce:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  4024d2:	48 89 15 57 5c 00 00 	mov    %rdx,0x5c57(%rip)        # 408130 <stack_top>
  4024d9:	48 89 e0             	mov    %rsp,%rax
  4024dc:	48 89 d4             	mov    %rdx,%rsp
  4024df:	48 89 c2             	mov    %rax,%rdx
  4024e2:	48 89 15 f7 4f 00 00 	mov    %rdx,0x4ff7(%rip)        # 4074e0 <global_save_stack>
  4024e9:	48 8b 3d f8 4f 00 00 	mov    0x4ff8(%rip),%rdi        # 4074e8 <global_offset>
  4024f0:	e8 e5 fe ff ff       	call   4023da <launch>
  4024f5:	48 8b 05 e4 4f 00 00 	mov    0x4fe4(%rip),%rax        # 4074e0 <global_save_stack>
  4024fc:	48 89 c4             	mov    %rax,%rsp
  4024ff:	be 00 00 10 00       	mov    $0x100000,%esi
  402504:	48 89 df             	mov    %rbx,%rdi
  402507:	e8 64 ec ff ff       	call   401170 <munmap@plt>
  40250c:	5b                   	pop    %rbx
  40250d:	c3                   	ret
  40250e:	be 00 00 10 00       	mov    $0x100000,%esi
  402513:	48 89 c7             	mov    %rax,%rdi
  402516:	e8 55 ec ff ff       	call   401170 <munmap@plt>
  40251b:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402520:	48 8d 15 21 21 00 00 	lea    0x2121(%rip),%rdx        # 404648 <_IO_stdin_used+0x648>
  402527:	be 01 00 00 00       	mov    $0x1,%esi
  40252c:	48 8b 3d 8d 4f 00 00 	mov    0x4f8d(%rip),%rdi        # 4074c0 <stderr@GLIBC_2.2.5>
  402533:	b8 00 00 00 00       	mov    $0x0,%eax
  402538:	e8 a3 ec ff ff       	call   4011e0 <__fprintf_chk@plt>
  40253d:	bf 01 00 00 00       	mov    $0x1,%edi
  402542:	e8 79 ec ff ff       	call   4011c0 <exit@plt>

0000000000402547 <validate>:
  402547:	53                   	push   %rbx
  402548:	48 89 e3             	mov    %rsp,%rbx
  40254b:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40254f:	e8 3b fc ff ff       	call   40218f <_validate>
  402554:	48 89 dc             	mov    %rbx,%rsp
  402557:	5b                   	pop    %rbx
  402558:	c3                   	ret

0000000000402559 <rio_readinitb>:
  402559:	89 37                	mov    %esi,(%rdi)
  40255b:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402562:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402566:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40256a:	c3                   	ret

000000000040256b <sigalrm_handler>:
  40256b:	48 83 ec 08          	sub    $0x8,%rsp
  40256f:	b9 00 00 00 00       	mov    $0x0,%ecx
  402574:	48 8d 15 05 21 00 00 	lea    0x2105(%rip),%rdx        # 404680 <trans_char+0x10>
  40257b:	be 01 00 00 00       	mov    $0x1,%esi
  402580:	48 8b 3d 39 4f 00 00 	mov    0x4f39(%rip),%rdi        # 4074c0 <stderr@GLIBC_2.2.5>
  402587:	b8 00 00 00 00       	mov    $0x0,%eax
  40258c:	e8 4f ec ff ff       	call   4011e0 <__fprintf_chk@plt>
  402591:	bf 01 00 00 00       	mov    $0x1,%edi
  402596:	e8 25 ec ff ff       	call   4011c0 <exit@plt>

000000000040259b <rio_writen>:
  40259b:	41 55                	push   %r13
  40259d:	41 54                	push   %r12
  40259f:	55                   	push   %rbp
  4025a0:	53                   	push   %rbx
  4025a1:	48 83 ec 08          	sub    $0x8,%rsp
  4025a5:	41 89 fc             	mov    %edi,%r12d
  4025a8:	48 89 f5             	mov    %rsi,%rbp
  4025ab:	49 89 d5             	mov    %rdx,%r13
  4025ae:	48 89 d3             	mov    %rdx,%rbx
  4025b1:	eb 06                	jmp    4025b9 <rio_writen+0x1e>
  4025b3:	48 29 c3             	sub    %rax,%rbx
  4025b6:	48 01 c5             	add    %rax,%rbp
  4025b9:	48 85 db             	test   %rbx,%rbx
  4025bc:	74 24                	je     4025e2 <rio_writen+0x47>
  4025be:	48 89 da             	mov    %rbx,%rdx
  4025c1:	48 89 ee             	mov    %rbp,%rsi
  4025c4:	44 89 e7             	mov    %r12d,%edi
  4025c7:	e8 b4 ea ff ff       	call   401080 <write@plt>
  4025cc:	48 85 c0             	test   %rax,%rax
  4025cf:	7f e2                	jg     4025b3 <rio_writen+0x18>
  4025d1:	e8 5a ea ff ff       	call   401030 <__errno_location@plt>
  4025d6:	83 38 04             	cmpl   $0x4,(%rax)
  4025d9:	75 15                	jne    4025f0 <rio_writen+0x55>
  4025db:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e0:	eb d1                	jmp    4025b3 <rio_writen+0x18>
  4025e2:	4c 89 e8             	mov    %r13,%rax
  4025e5:	48 83 c4 08          	add    $0x8,%rsp
  4025e9:	5b                   	pop    %rbx
  4025ea:	5d                   	pop    %rbp
  4025eb:	41 5c                	pop    %r12
  4025ed:	41 5d                	pop    %r13
  4025ef:	c3                   	ret
  4025f0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4025f7:	eb ec                	jmp    4025e5 <rio_writen+0x4a>

00000000004025f9 <rio_read>:
  4025f9:	41 55                	push   %r13
  4025fb:	41 54                	push   %r12
  4025fd:	55                   	push   %rbp
  4025fe:	53                   	push   %rbx
  4025ff:	48 83 ec 08          	sub    $0x8,%rsp
  402603:	48 89 fb             	mov    %rdi,%rbx
  402606:	49 89 f5             	mov    %rsi,%r13
  402609:	49 89 d4             	mov    %rdx,%r12
  40260c:	eb 0a                	jmp    402618 <rio_read+0x1f>
  40260e:	e8 1d ea ff ff       	call   401030 <__errno_location@plt>
  402613:	83 38 04             	cmpl   $0x4,(%rax)
  402616:	75 5c                	jne    402674 <rio_read+0x7b>
  402618:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40261b:	85 ed                	test   %ebp,%ebp
  40261d:	7f 24                	jg     402643 <rio_read+0x4a>
  40261f:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402623:	8b 3b                	mov    (%rbx),%edi
  402625:	ba 00 20 00 00       	mov    $0x2000,%edx
  40262a:	48 89 ee             	mov    %rbp,%rsi
  40262d:	e8 ae ea ff ff       	call   4010e0 <read@plt>
  402632:	89 43 04             	mov    %eax,0x4(%rbx)
  402635:	85 c0                	test   %eax,%eax
  402637:	78 d5                	js     40260e <rio_read+0x15>
  402639:	85 c0                	test   %eax,%eax
  40263b:	74 40                	je     40267d <rio_read+0x84>
  40263d:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402641:	eb d5                	jmp    402618 <rio_read+0x1f>
  402643:	89 e8                	mov    %ebp,%eax
  402645:	4c 39 e0             	cmp    %r12,%rax
  402648:	72 03                	jb     40264d <rio_read+0x54>
  40264a:	44 89 e5             	mov    %r12d,%ebp
  40264d:	4c 63 e5             	movslq %ebp,%r12
  402650:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402654:	4c 89 e2             	mov    %r12,%rdx
  402657:	4c 89 ef             	mov    %r13,%rdi
  40265a:	e8 d1 ea ff ff       	call   401130 <memcpy@plt>
  40265f:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402663:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402666:	4c 89 e0             	mov    %r12,%rax
  402669:	48 83 c4 08          	add    $0x8,%rsp
  40266d:	5b                   	pop    %rbx
  40266e:	5d                   	pop    %rbp
  40266f:	41 5c                	pop    %r12
  402671:	41 5d                	pop    %r13
  402673:	c3                   	ret
  402674:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40267b:	eb ec                	jmp    402669 <rio_read+0x70>
  40267d:	b8 00 00 00 00       	mov    $0x0,%eax
  402682:	eb e5                	jmp    402669 <rio_read+0x70>

0000000000402684 <rio_readlineb>:
  402684:	41 55                	push   %r13
  402686:	41 54                	push   %r12
  402688:	55                   	push   %rbp
  402689:	53                   	push   %rbx
  40268a:	48 83 ec 18          	sub    $0x18,%rsp
  40268e:	49 89 fd             	mov    %rdi,%r13
  402691:	48 89 f5             	mov    %rsi,%rbp
  402694:	49 89 d4             	mov    %rdx,%r12
  402697:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40269e:	00 00 
  4026a0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4026a5:	31 c0                	xor    %eax,%eax
  4026a7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4026ac:	4c 39 e3             	cmp    %r12,%rbx
  4026af:	73 47                	jae    4026f8 <rio_readlineb+0x74>
  4026b1:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4026b6:	ba 01 00 00 00       	mov    $0x1,%edx
  4026bb:	4c 89 ef             	mov    %r13,%rdi
  4026be:	e8 36 ff ff ff       	call   4025f9 <rio_read>
  4026c3:	83 f8 01             	cmp    $0x1,%eax
  4026c6:	75 1c                	jne    4026e4 <rio_readlineb+0x60>
  4026c8:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4026cc:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4026d1:	88 55 00             	mov    %dl,0x0(%rbp)
  4026d4:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4026d9:	74 1a                	je     4026f5 <rio_readlineb+0x71>
  4026db:	48 83 c3 01          	add    $0x1,%rbx
  4026df:	48 89 c5             	mov    %rax,%rbp
  4026e2:	eb c8                	jmp    4026ac <rio_readlineb+0x28>
  4026e4:	85 c0                	test   %eax,%eax
  4026e6:	75 32                	jne    40271a <rio_readlineb+0x96>
  4026e8:	48 83 fb 01          	cmp    $0x1,%rbx
  4026ec:	75 0a                	jne    4026f8 <rio_readlineb+0x74>
  4026ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f3:	eb 0a                	jmp    4026ff <rio_readlineb+0x7b>
  4026f5:	48 89 c5             	mov    %rax,%rbp
  4026f8:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4026fc:	48 89 d8             	mov    %rbx,%rax
  4026ff:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402704:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40270b:	00 00 
  40270d:	75 14                	jne    402723 <rio_readlineb+0x9f>
  40270f:	48 83 c4 18          	add    $0x18,%rsp
  402713:	5b                   	pop    %rbx
  402714:	5d                   	pop    %rbp
  402715:	41 5c                	pop    %r12
  402717:	41 5d                	pop    %r13
  402719:	c3                   	ret
  40271a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402721:	eb dc                	jmp    4026ff <rio_readlineb+0x7b>
  402723:	e8 68 e9 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402728 <urlencode>:
  402728:	41 54                	push   %r12
  40272a:	55                   	push   %rbp
  40272b:	53                   	push   %rbx
  40272c:	48 83 ec 10          	sub    $0x10,%rsp
  402730:	48 89 fb             	mov    %rdi,%rbx
  402733:	48 89 f5             	mov    %rsi,%rbp
  402736:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40273d:	00 00 
  40273f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402744:	31 c0                	xor    %eax,%eax
  402746:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40274d:	f2 ae                	repnz scas %es:(%rdi),%al
  40274f:	48 89 ce             	mov    %rcx,%rsi
  402752:	48 f7 d6             	not    %rsi
  402755:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402758:	eb 0f                	jmp    402769 <urlencode+0x41>
  40275a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40275e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402762:	48 83 c3 01          	add    $0x1,%rbx
  402766:	44 89 e0             	mov    %r12d,%eax
  402769:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40276d:	85 c0                	test   %eax,%eax
  40276f:	0f 84 a8 00 00 00    	je     40281d <urlencode+0xf5>
  402775:	44 0f b6 03          	movzbl (%rbx),%r8d
  402779:	41 80 f8 2a          	cmp    $0x2a,%r8b
  40277d:	0f 94 c2             	sete   %dl
  402780:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402784:	0f 94 c0             	sete   %al
  402787:	08 c2                	or     %al,%dl
  402789:	75 cf                	jne    40275a <urlencode+0x32>
  40278b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  40278f:	74 c9                	je     40275a <urlencode+0x32>
  402791:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402795:	74 c3                	je     40275a <urlencode+0x32>
  402797:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40279b:	3c 09                	cmp    $0x9,%al
  40279d:	76 bb                	jbe    40275a <urlencode+0x32>
  40279f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4027a3:	3c 19                	cmp    $0x19,%al
  4027a5:	76 b3                	jbe    40275a <urlencode+0x32>
  4027a7:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4027ab:	3c 19                	cmp    $0x19,%al
  4027ad:	76 ab                	jbe    40275a <urlencode+0x32>
  4027af:	41 80 f8 20          	cmp    $0x20,%r8b
  4027b3:	74 56                	je     40280b <urlencode+0xe3>
  4027b5:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4027b9:	3c 5f                	cmp    $0x5f,%al
  4027bb:	0f 96 c2             	setbe  %dl
  4027be:	41 80 f8 09          	cmp    $0x9,%r8b
  4027c2:	0f 94 c0             	sete   %al
  4027c5:	08 c2                	or     %al,%dl
  4027c7:	74 4f                	je     402818 <urlencode+0xf0>
  4027c9:	48 89 e7             	mov    %rsp,%rdi
  4027cc:	45 0f b6 c0          	movzbl %r8b,%r8d
  4027d0:	48 8d 0d 3e 1f 00 00 	lea    0x1f3e(%rip),%rcx        # 404715 <trans_char+0xa5>
  4027d7:	ba 08 00 00 00       	mov    $0x8,%edx
  4027dc:	be 01 00 00 00       	mov    $0x1,%esi
  4027e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e6:	e8 15 ea ff ff       	call   401200 <__sprintf_chk@plt>
  4027eb:	0f b6 04 24          	movzbl (%rsp),%eax
  4027ef:	88 45 00             	mov    %al,0x0(%rbp)
  4027f2:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  4027f7:	88 45 01             	mov    %al,0x1(%rbp)
  4027fa:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  4027ff:	88 45 02             	mov    %al,0x2(%rbp)
  402802:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402806:	e9 57 ff ff ff       	jmp    402762 <urlencode+0x3a>
  40280b:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40280f:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402813:	e9 4a ff ff ff       	jmp    402762 <urlencode+0x3a>
  402818:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40281d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402822:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402829:	00 00 
  40282b:	75 09                	jne    402836 <urlencode+0x10e>
  40282d:	48 83 c4 10          	add    $0x10,%rsp
  402831:	5b                   	pop    %rbx
  402832:	5d                   	pop    %rbp
  402833:	41 5c                	pop    %r12
  402835:	c3                   	ret
  402836:	e8 55 e8 ff ff       	call   401090 <__stack_chk_fail@plt>

000000000040283b <submitr>:
  40283b:	41 57                	push   %r15
  40283d:	41 56                	push   %r14
  40283f:	41 55                	push   %r13
  402841:	41 54                	push   %r12
  402843:	55                   	push   %rbp
  402844:	53                   	push   %rbx
  402845:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  40284c:	49 89 fd             	mov    %rdi,%r13
  40284f:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402853:	49 89 d7             	mov    %rdx,%r15
  402856:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40285b:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402860:	4d 89 ce             	mov    %r9,%r14
  402863:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  40286a:	00 
  40286b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402872:	00 00 
  402874:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  40287b:	00 
  40287c:	31 c0                	xor    %eax,%eax
  40287e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402885:	00 
  402886:	ba 00 00 00 00       	mov    $0x0,%edx
  40288b:	be 01 00 00 00       	mov    $0x1,%esi
  402890:	bf 02 00 00 00       	mov    $0x2,%edi
  402895:	e8 76 e9 ff ff       	call   401210 <socket@plt>
  40289a:	85 c0                	test   %eax,%eax
  40289c:	0f 88 a9 02 00 00    	js     402b4b <submitr+0x310>
  4028a2:	89 c3                	mov    %eax,%ebx
  4028a4:	4c 89 ef             	mov    %r13,%rdi
  4028a7:	e8 54 e8 ff ff       	call   401100 <gethostbyname@plt>
  4028ac:	48 85 c0             	test   %rax,%rax
  4028af:	0f 84 e2 02 00 00    	je     402b97 <submitr+0x35c>
  4028b5:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4028ba:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4028c1:	00 00 
  4028c3:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4028ca:	00 
  4028cb:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4028d2:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4028d9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4028dd:	48 8b 40 18          	mov    0x18(%rax),%rax
  4028e1:	48 8b 30             	mov    (%rax),%rsi
  4028e4:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4028e9:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4028ee:	e8 1d e8 ff ff       	call   401110 <__memmove_chk@plt>
  4028f3:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4028f8:	66 c1 c0 08          	rol    $0x8,%ax
  4028fc:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402901:	ba 10 00 00 00       	mov    $0x10,%edx
  402906:	4c 89 e6             	mov    %r12,%rsi
  402909:	89 df                	mov    %ebx,%edi
  40290b:	e8 c0 e8 ff ff       	call   4011d0 <connect@plt>
  402910:	85 c0                	test   %eax,%eax
  402912:	0f 88 e7 02 00 00    	js     402bff <submitr+0x3c4>
  402918:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40291f:	b8 00 00 00 00       	mov    $0x0,%eax
  402924:	48 89 f1             	mov    %rsi,%rcx
  402927:	4c 89 f7             	mov    %r14,%rdi
  40292a:	f2 ae                	repnz scas %es:(%rdi),%al
  40292c:	48 89 ca             	mov    %rcx,%rdx
  40292f:	48 f7 d2             	not    %rdx
  402932:	48 89 f1             	mov    %rsi,%rcx
  402935:	4c 89 ff             	mov    %r15,%rdi
  402938:	f2 ae                	repnz scas %es:(%rdi),%al
  40293a:	48 f7 d1             	not    %rcx
  40293d:	49 89 c8             	mov    %rcx,%r8
  402940:	48 89 f1             	mov    %rsi,%rcx
  402943:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402948:	f2 ae                	repnz scas %es:(%rdi),%al
  40294a:	48 f7 d1             	not    %rcx
  40294d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402952:	48 89 f1             	mov    %rsi,%rcx
  402955:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40295a:	f2 ae                	repnz scas %es:(%rdi),%al
  40295c:	48 89 c8             	mov    %rcx,%rax
  40295f:	48 f7 d0             	not    %rax
  402962:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402967:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40296c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402973:	00 
  402974:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  40297a:	0f 87 d9 02 00 00    	ja     402c59 <submitr+0x41e>
  402980:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402987:	00 
  402988:	b9 00 04 00 00       	mov    $0x400,%ecx
  40298d:	b8 00 00 00 00       	mov    $0x0,%eax
  402992:	48 89 f7             	mov    %rsi,%rdi
  402995:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402998:	4c 89 f7             	mov    %r14,%rdi
  40299b:	e8 88 fd ff ff       	call   402728 <urlencode>
  4029a0:	85 c0                	test   %eax,%eax
  4029a2:	0f 88 24 03 00 00    	js     402ccc <submitr+0x491>
  4029a8:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4029af:	00 
  4029b0:	41 55                	push   %r13
  4029b2:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  4029b9:	00 
  4029ba:	50                   	push   %rax
  4029bb:	4d 89 f9             	mov    %r15,%r9
  4029be:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  4029c3:	48 8d 0d de 1c 00 00 	lea    0x1cde(%rip),%rcx        # 4046a8 <trans_char+0x38>
  4029ca:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029cf:	be 01 00 00 00       	mov    $0x1,%esi
  4029d4:	4c 89 e7             	mov    %r12,%rdi
  4029d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029dc:	e8 1f e8 ff ff       	call   401200 <__sprintf_chk@plt>
  4029e1:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4029e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ed:	4c 89 e7             	mov    %r12,%rdi
  4029f0:	f2 ae                	repnz scas %es:(%rdi),%al
  4029f2:	48 89 ca             	mov    %rcx,%rdx
  4029f5:	48 f7 d2             	not    %rdx
  4029f8:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  4029fc:	4c 89 e6             	mov    %r12,%rsi
  4029ff:	89 df                	mov    %ebx,%edi
  402a01:	e8 95 fb ff ff       	call   40259b <rio_writen>
  402a06:	48 83 c4 10          	add    $0x10,%rsp
  402a0a:	48 85 c0             	test   %rax,%rax
  402a0d:	0f 88 44 03 00 00    	js     402d57 <submitr+0x51c>
  402a13:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402a18:	89 de                	mov    %ebx,%esi
  402a1a:	4c 89 e7             	mov    %r12,%rdi
  402a1d:	e8 37 fb ff ff       	call   402559 <rio_readinitb>
  402a22:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402a29:	00 
  402a2a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a2f:	4c 89 e7             	mov    %r12,%rdi
  402a32:	e8 4d fc ff ff       	call   402684 <rio_readlineb>
  402a37:	48 85 c0             	test   %rax,%rax
  402a3a:	0f 8e 86 03 00 00    	jle    402dc6 <submitr+0x58b>
  402a40:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402a45:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402a4c:	00 
  402a4d:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402a54:	00 
  402a55:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402a5c:	00 
  402a5d:	48 8d 35 b8 1c 00 00 	lea    0x1cb8(%rip),%rsi        # 40471c <trans_char+0xac>
  402a64:	b8 00 00 00 00       	mov    $0x0,%eax
  402a69:	e8 f2 e6 ff ff       	call   401160 <__isoc99_sscanf@plt>
  402a6e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402a75:	00 
  402a76:	b9 03 00 00 00       	mov    $0x3,%ecx
  402a7b:	48 8d 3d b1 1c 00 00 	lea    0x1cb1(%rip),%rdi        # 404733 <trans_char+0xc3>
  402a82:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a84:	0f 97 c0             	seta   %al
  402a87:	1c 00                	sbb    $0x0,%al
  402a89:	84 c0                	test   %al,%al
  402a8b:	0f 84 b3 03 00 00    	je     402e44 <submitr+0x609>
  402a91:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402a98:	00 
  402a99:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402a9e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402aa3:	e8 dc fb ff ff       	call   402684 <rio_readlineb>
  402aa8:	48 85 c0             	test   %rax,%rax
  402aab:	7f c1                	jg     402a6e <submitr+0x233>
  402aad:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ab4:	3a 20 43 
  402ab7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402abe:	20 75 6e 
  402ac1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ac5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ac9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ad0:	74 6f 20 
  402ad3:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402ada:	68 65 61 
  402add:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ae1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ae5:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402aec:	66 72 6f 
  402aef:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402af6:	20 72 65 
  402af9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402afd:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b01:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402b08:	73 65 72 
  402b0b:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b0f:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402b16:	89 df                	mov    %ebx,%edi
  402b18:	e8 b3 e5 ff ff       	call   4010d0 <close@plt>
  402b1d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b22:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402b29:	00 
  402b2a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402b31:	00 00 
  402b33:	0f 85 7e 04 00 00    	jne    402fb7 <submitr+0x77c>
  402b39:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402b40:	5b                   	pop    %rbx
  402b41:	5d                   	pop    %rbp
  402b42:	41 5c                	pop    %r12
  402b44:	41 5d                	pop    %r13
  402b46:	41 5e                	pop    %r14
  402b48:	41 5f                	pop    %r15
  402b4a:	c3                   	ret
  402b4b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b52:	3a 20 43 
  402b55:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b5c:	20 75 6e 
  402b5f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b63:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b67:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b6e:	74 6f 20 
  402b71:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402b78:	65 20 73 
  402b7b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b7f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b83:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b8a:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b90:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b95:	eb 8b                	jmp    402b22 <submitr+0x2e7>
  402b97:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b9e:	3a 20 44 
  402ba1:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402ba8:	20 75 6e 
  402bab:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402baf:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402bb3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bba:	74 6f 20 
  402bbd:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402bc4:	76 65 20 
  402bc7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bcb:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402bcf:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402bd6:	72 20 61 
  402bd9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402bdd:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402be4:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402bea:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402bee:	89 df                	mov    %ebx,%edi
  402bf0:	e8 db e4 ff ff       	call   4010d0 <close@plt>
  402bf5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bfa:	e9 23 ff ff ff       	jmp    402b22 <submitr+0x2e7>
  402bff:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402c06:	3a 20 55 
  402c09:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402c10:	20 74 6f 
  402c13:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c17:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c1b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402c22:	65 63 74 
  402c25:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402c2c:	68 65 20 
  402c2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c33:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c37:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402c3e:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402c44:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402c48:	89 df                	mov    %ebx,%edi
  402c4a:	e8 81 e4 ff ff       	call   4010d0 <close@plt>
  402c4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c54:	e9 c9 fe ff ff       	jmp    402b22 <submitr+0x2e7>
  402c59:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402c60:	3a 20 52 
  402c63:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402c6a:	20 73 74 
  402c6d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c71:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c75:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402c7c:	74 6f 6f 
  402c7f:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  402c86:	65 2e 20 
  402c89:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c8d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c91:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402c98:	61 73 65 
  402c9b:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  402ca2:	49 54 52 
  402ca5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ca9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402cad:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402cb4:	55 46 00 
  402cb7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402cbb:	89 df                	mov    %ebx,%edi
  402cbd:	e8 0e e4 ff ff       	call   4010d0 <close@plt>
  402cc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cc7:	e9 56 fe ff ff       	jmp    402b22 <submitr+0x2e7>
  402ccc:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402cd3:	3a 20 52 
  402cd6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402cdd:	20 73 74 
  402ce0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ce4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ce8:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402cef:	63 6f 6e 
  402cf2:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402cf9:	20 61 6e 
  402cfc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d00:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d04:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402d0b:	67 61 6c 
  402d0e:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402d15:	6e 70 72 
  402d18:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d1c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402d20:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402d27:	6c 65 20 
  402d2a:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402d31:	63 74 65 
  402d34:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402d38:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402d3c:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402d42:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402d46:	89 df                	mov    %ebx,%edi
  402d48:	e8 83 e3 ff ff       	call   4010d0 <close@plt>
  402d4d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d52:	e9 cb fd ff ff       	jmp    402b22 <submitr+0x2e7>
  402d57:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d5e:	3a 20 43 
  402d61:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d68:	20 75 6e 
  402d6b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d6f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402d73:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d7a:	74 6f 20 
  402d7d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402d84:	20 74 6f 
  402d87:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d8b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402d8f:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402d96:	72 65 73 
  402d99:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402da0:	65 72 76 
  402da3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402da7:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402dab:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402db1:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402db5:	89 df                	mov    %ebx,%edi
  402db7:	e8 14 e3 ff ff       	call   4010d0 <close@plt>
  402dbc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dc1:	e9 5c fd ff ff       	jmp    402b22 <submitr+0x2e7>
  402dc6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402dcd:	3a 20 43 
  402dd0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402dd7:	20 75 6e 
  402dda:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402dde:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402de2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402de9:	74 6f 20 
  402dec:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402df3:	66 69 72 
  402df6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402dfa:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402dfe:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402e05:	61 64 65 
  402e08:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402e0f:	6d 20 72 
  402e12:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e16:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402e1a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402e21:	20 73 65 
  402e24:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402e28:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402e2f:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402e33:	89 df                	mov    %ebx,%edi
  402e35:	e8 96 e2 ff ff       	call   4010d0 <close@plt>
  402e3a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e3f:	e9 de fc ff ff       	jmp    402b22 <submitr+0x2e7>
  402e44:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e4b:	00 
  402e4c:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e51:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e56:	e8 29 f8 ff ff       	call   402684 <rio_readlineb>
  402e5b:	48 85 c0             	test   %rax,%rax
  402e5e:	0f 8e 96 00 00 00    	jle    402efa <submitr+0x6bf>
  402e64:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402e69:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402e70:	0f 85 08 01 00 00    	jne    402f7e <submitr+0x743>
  402e76:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e7d:	00 
  402e7e:	48 89 ef             	mov    %rbp,%rdi
  402e81:	e8 da e1 ff ff       	call   401060 <strcpy@plt>
  402e86:	89 df                	mov    %ebx,%edi
  402e88:	e8 43 e2 ff ff       	call   4010d0 <close@plt>
  402e8d:	b9 04 00 00 00       	mov    $0x4,%ecx
  402e92:	48 8d 3d 94 18 00 00 	lea    0x1894(%rip),%rdi        # 40472d <trans_char+0xbd>
  402e99:	48 89 ee             	mov    %rbp,%rsi
  402e9c:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e9e:	0f 97 c0             	seta   %al
  402ea1:	1c 00                	sbb    $0x0,%al
  402ea3:	0f be c0             	movsbl %al,%eax
  402ea6:	85 c0                	test   %eax,%eax
  402ea8:	0f 84 74 fc ff ff    	je     402b22 <submitr+0x2e7>
  402eae:	b9 05 00 00 00       	mov    $0x5,%ecx
  402eb3:	48 8d 3d 77 18 00 00 	lea    0x1877(%rip),%rdi        # 404731 <trans_char+0xc1>
  402eba:	48 89 ee             	mov    %rbp,%rsi
  402ebd:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ebf:	0f 97 c0             	seta   %al
  402ec2:	1c 00                	sbb    $0x0,%al
  402ec4:	0f be c0             	movsbl %al,%eax
  402ec7:	85 c0                	test   %eax,%eax
  402ec9:	0f 84 53 fc ff ff    	je     402b22 <submitr+0x2e7>
  402ecf:	b9 03 00 00 00       	mov    $0x3,%ecx
  402ed4:	48 8d 3d 5b 18 00 00 	lea    0x185b(%rip),%rdi        # 404736 <trans_char+0xc6>
  402edb:	48 89 ee             	mov    %rbp,%rsi
  402ede:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ee0:	0f 97 c0             	seta   %al
  402ee3:	1c 00                	sbb    $0x0,%al
  402ee5:	0f be c0             	movsbl %al,%eax
  402ee8:	85 c0                	test   %eax,%eax
  402eea:	0f 84 32 fc ff ff    	je     402b22 <submitr+0x2e7>
  402ef0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ef5:	e9 28 fc ff ff       	jmp    402b22 <submitr+0x2e7>
  402efa:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f01:	3a 20 43 
  402f04:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f0b:	20 75 6e 
  402f0e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402f12:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402f16:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f1d:	74 6f 20 
  402f20:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402f27:	73 74 61 
  402f2a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402f2e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402f32:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402f39:	65 73 73 
  402f3c:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402f43:	72 6f 6d 
  402f46:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402f4a:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402f4e:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402f55:	6c 74 20 
  402f58:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f5c:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402f63:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402f69:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402f6d:	89 df                	mov    %ebx,%edi
  402f6f:	e8 5c e1 ff ff       	call   4010d0 <close@plt>
  402f74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f79:	e9 a4 fb ff ff       	jmp    402b22 <submitr+0x2e7>
  402f7e:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402f85:	00 
  402f86:	48 8d 0d 5b 17 00 00 	lea    0x175b(%rip),%rcx        # 4046e8 <trans_char+0x78>
  402f8d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402f94:	be 01 00 00 00       	mov    $0x1,%esi
  402f99:	48 89 ef             	mov    %rbp,%rdi
  402f9c:	b8 00 00 00 00       	mov    $0x0,%eax
  402fa1:	e8 5a e2 ff ff       	call   401200 <__sprintf_chk@plt>
  402fa6:	89 df                	mov    %ebx,%edi
  402fa8:	e8 23 e1 ff ff       	call   4010d0 <close@plt>
  402fad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402fb2:	e9 6b fb ff ff       	jmp    402b22 <submitr+0x2e7>
  402fb7:	e8 d4 e0 ff ff       	call   401090 <__stack_chk_fail@plt>

0000000000402fbc <init_timeout>:
  402fbc:	85 ff                	test   %edi,%edi
  402fbe:	74 28                	je     402fe8 <init_timeout+0x2c>
  402fc0:	53                   	push   %rbx
  402fc1:	89 fb                	mov    %edi,%ebx
  402fc3:	85 ff                	test   %edi,%edi
  402fc5:	78 1a                	js     402fe1 <init_timeout+0x25>
  402fc7:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 40256b <sigalrm_handler>
  402fce:	bf 0e 00 00 00       	mov    $0xe,%edi
  402fd3:	e8 18 e1 ff ff       	call   4010f0 <signal@plt>
  402fd8:	89 df                	mov    %ebx,%edi
  402fda:	e8 e1 e0 ff ff       	call   4010c0 <alarm@plt>
  402fdf:	5b                   	pop    %rbx
  402fe0:	c3                   	ret
  402fe1:	bb 00 00 00 00       	mov    $0x0,%ebx
  402fe6:	eb df                	jmp    402fc7 <init_timeout+0xb>
  402fe8:	f3 c3                	repz ret

0000000000402fea <init_driver>:
  402fea:	41 54                	push   %r12
  402fec:	55                   	push   %rbp
  402fed:	53                   	push   %rbx
  402fee:	48 83 ec 20          	sub    $0x20,%rsp
  402ff2:	49 89 fc             	mov    %rdi,%r12
  402ff5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402ffc:	00 00 
  402ffe:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403003:	31 c0                	xor    %eax,%eax
  403005:	be 01 00 00 00       	mov    $0x1,%esi
  40300a:	bf 0d 00 00 00       	mov    $0xd,%edi
  40300f:	e8 dc e0 ff ff       	call   4010f0 <signal@plt>
  403014:	be 01 00 00 00       	mov    $0x1,%esi
  403019:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40301e:	e8 cd e0 ff ff       	call   4010f0 <signal@plt>
  403023:	be 01 00 00 00       	mov    $0x1,%esi
  403028:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40302d:	e8 be e0 ff ff       	call   4010f0 <signal@plt>
  403032:	ba 00 00 00 00       	mov    $0x0,%edx
  403037:	be 01 00 00 00       	mov    $0x1,%esi
  40303c:	bf 02 00 00 00       	mov    $0x2,%edi
  403041:	e8 ca e1 ff ff       	call   401210 <socket@plt>
  403046:	85 c0                	test   %eax,%eax
  403048:	0f 88 a3 00 00 00    	js     4030f1 <init_driver+0x107>
  40304e:	89 c3                	mov    %eax,%ebx
  403050:	48 8d 3d e2 16 00 00 	lea    0x16e2(%rip),%rdi        # 404739 <trans_char+0xc9>
  403057:	e8 a4 e0 ff ff       	call   401100 <gethostbyname@plt>
  40305c:	48 85 c0             	test   %rax,%rax
  40305f:	0f 84 df 00 00 00    	je     403144 <init_driver+0x15a>
  403065:	48 89 e5             	mov    %rsp,%rbp
  403068:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  40306f:	00 00 
  403071:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  403078:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  40307e:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403084:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403088:	48 8b 40 18          	mov    0x18(%rax),%rax
  40308c:	48 8b 30             	mov    (%rax),%rsi
  40308f:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  403093:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403098:	e8 73 e0 ff ff       	call   401110 <__memmove_chk@plt>
  40309d:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  4030a4:	ba 10 00 00 00       	mov    $0x10,%edx
  4030a9:	48 89 ee             	mov    %rbp,%rsi
  4030ac:	89 df                	mov    %ebx,%edi
  4030ae:	e8 1d e1 ff ff       	call   4011d0 <connect@plt>
  4030b3:	85 c0                	test   %eax,%eax
  4030b5:	0f 88 b7 00 00 00    	js     403172 <init_driver+0x188>
  4030bb:	89 df                	mov    %ebx,%edi
  4030bd:	e8 0e e0 ff ff       	call   4010d0 <close@plt>
  4030c2:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  4030c9:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  4030cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4030d4:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4030d9:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4030e0:	00 00 
  4030e2:	0f 85 e4 00 00 00    	jne    4031cc <init_driver+0x1e2>
  4030e8:	48 83 c4 20          	add    $0x20,%rsp
  4030ec:	5b                   	pop    %rbx
  4030ed:	5d                   	pop    %rbp
  4030ee:	41 5c                	pop    %r12
  4030f0:	c3                   	ret
  4030f1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4030f8:	3a 20 43 
  4030fb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403102:	20 75 6e 
  403105:	49 89 04 24          	mov    %rax,(%r12)
  403109:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40310e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403115:	74 6f 20 
  403118:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40311f:	65 20 73 
  403122:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  403127:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  40312c:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  403133:	6b 65 
  403135:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  40313c:	00 
  40313d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403142:	eb 90                	jmp    4030d4 <init_driver+0xea>
  403144:	48 b8 32 30 30 2e 31 	movabs $0x2e3434312e303032,%rax
  40314b:	34 34 2e 
  40314e:	48 ba 32 35 34 2e 31 	movabs $0x3139312e343532,%rdx
  403155:	39 31 00 
  403158:	49 89 04 24          	mov    %rax,(%r12)
  40315c:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  403161:	89 df                	mov    %ebx,%edi
  403163:	e8 68 df ff ff       	call   4010d0 <close@plt>
  403168:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40316d:	e9 62 ff ff ff       	jmp    4030d4 <init_driver+0xea>
  403172:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403179:	3a 20 55 
  40317c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403183:	20 74 6f 
  403186:	49 89 04 24          	mov    %rax,(%r12)
  40318a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  40318f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403196:	65 63 74 
  403199:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4031a0:	65 72 76 
  4031a3:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4031a8:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  4031ad:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  4031b4:	72 
  4031b5:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  4031bb:	89 df                	mov    %ebx,%edi
  4031bd:	e8 0e df ff ff       	call   4010d0 <close@plt>
  4031c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031c7:	e9 08 ff ff ff       	jmp    4030d4 <init_driver+0xea>
  4031cc:	e8 bf de ff ff       	call   401090 <__stack_chk_fail@plt>

00000000004031d1 <driver_post>:
  4031d1:	53                   	push   %rbx
  4031d2:	4c 89 cb             	mov    %r9,%rbx
  4031d5:	45 85 c0             	test   %r8d,%r8d
  4031d8:	75 18                	jne    4031f2 <driver_post+0x21>
  4031da:	48 85 ff             	test   %rdi,%rdi
  4031dd:	74 05                	je     4031e4 <driver_post+0x13>
  4031df:	80 3f 00             	cmpb   $0x0,(%rdi)
  4031e2:	75 37                	jne    40321b <driver_post+0x4a>
  4031e4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4031e9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4031ed:	44 89 c0             	mov    %r8d,%eax
  4031f0:	5b                   	pop    %rbx
  4031f1:	c3                   	ret
  4031f2:	48 89 ca             	mov    %rcx,%rdx
  4031f5:	48 8d 35 4d 15 00 00 	lea    0x154d(%rip),%rsi        # 404749 <trans_char+0xd9>
  4031fc:	bf 01 00 00 00       	mov    $0x1,%edi
  403201:	b8 00 00 00 00       	mov    $0x0,%eax
  403206:	e8 75 df ff ff       	call   401180 <__printf_chk@plt>
  40320b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403210:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403214:	b8 00 00 00 00       	mov    $0x0,%eax
  403219:	eb d5                	jmp    4031f0 <driver_post+0x1f>
  40321b:	48 83 ec 08          	sub    $0x8,%rsp
  40321f:	41 51                	push   %r9
  403221:	49 89 c9             	mov    %rcx,%r9
  403224:	49 89 d0             	mov    %rdx,%r8
  403227:	48 89 f9             	mov    %rdi,%rcx
  40322a:	48 89 f2             	mov    %rsi,%rdx
  40322d:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  403232:	48 8d 3d 00 15 00 00 	lea    0x1500(%rip),%rdi        # 404739 <trans_char+0xc9>
  403239:	e8 fd f5 ff ff       	call   40283b <submitr>
  40323e:	48 83 c4 10          	add    $0x10,%rsp
  403242:	eb ac                	jmp    4031f0 <driver_post+0x1f>

0000000000403244 <check>:
  403244:	89 f8                	mov    %edi,%eax
  403246:	c1 e8 1c             	shr    $0x1c,%eax
  403249:	85 c0                	test   %eax,%eax
  40324b:	74 1d                	je     40326a <check+0x26>
  40324d:	b9 00 00 00 00       	mov    $0x0,%ecx
  403252:	83 f9 1f             	cmp    $0x1f,%ecx
  403255:	7f 0d                	jg     403264 <check+0x20>
  403257:	89 f8                	mov    %edi,%eax
  403259:	d3 e8                	shr    %cl,%eax
  40325b:	3c 0a                	cmp    $0xa,%al
  40325d:	74 11                	je     403270 <check+0x2c>
  40325f:	83 c1 08             	add    $0x8,%ecx
  403262:	eb ee                	jmp    403252 <check+0xe>
  403264:	b8 01 00 00 00       	mov    $0x1,%eax
  403269:	c3                   	ret
  40326a:	b8 00 00 00 00       	mov    $0x0,%eax
  40326f:	c3                   	ret
  403270:	b8 00 00 00 00       	mov    $0x0,%eax
  403275:	c3                   	ret

0000000000403276 <gencookie>:
  403276:	53                   	push   %rbx
  403277:	83 c7 01             	add    $0x1,%edi
  40327a:	e8 c1 dd ff ff       	call   401040 <srandom@plt>
  40327f:	e8 cc de ff ff       	call   401150 <random@plt>
  403284:	89 c3                	mov    %eax,%ebx
  403286:	89 c7                	mov    %eax,%edi
  403288:	e8 b7 ff ff ff       	call   403244 <check>
  40328d:	85 c0                	test   %eax,%eax
  40328f:	74 ee                	je     40327f <gencookie+0x9>
  403291:	89 d8                	mov    %ebx,%eax
  403293:	5b                   	pop    %rbx
  403294:	c3                   	ret
  403295:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40329c:	00 00 00 
  40329f:	90                   	nop

00000000004032a0 <__libc_csu_init>:
  4032a0:	f3 0f 1e fa          	endbr64
  4032a4:	41 57                	push   %r15
  4032a6:	4c 8d 3d 63 3b 00 00 	lea    0x3b63(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4032ad:	41 56                	push   %r14
  4032af:	49 89 d6             	mov    %rdx,%r14
  4032b2:	41 55                	push   %r13
  4032b4:	49 89 f5             	mov    %rsi,%r13
  4032b7:	41 54                	push   %r12
  4032b9:	41 89 fc             	mov    %edi,%r12d
  4032bc:	55                   	push   %rbp
  4032bd:	48 8d 2d 54 3b 00 00 	lea    0x3b54(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4032c4:	53                   	push   %rbx
  4032c5:	4c 29 fd             	sub    %r15,%rbp
  4032c8:	48 83 ec 08          	sub    $0x8,%rsp
  4032cc:	e8 2f dd ff ff       	call   401000 <_init>
  4032d1:	48 c1 fd 03          	sar    $0x3,%rbp
  4032d5:	74 1f                	je     4032f6 <__libc_csu_init+0x56>
  4032d7:	31 db                	xor    %ebx,%ebx
  4032d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4032e0:	4c 89 f2             	mov    %r14,%rdx
  4032e3:	4c 89 ee             	mov    %r13,%rsi
  4032e6:	44 89 e7             	mov    %r12d,%edi
  4032e9:	41 ff 14 df          	call   *(%r15,%rbx,8)
  4032ed:	48 83 c3 01          	add    $0x1,%rbx
  4032f1:	48 39 dd             	cmp    %rbx,%rbp
  4032f4:	75 ea                	jne    4032e0 <__libc_csu_init+0x40>
  4032f6:	48 83 c4 08          	add    $0x8,%rsp
  4032fa:	5b                   	pop    %rbx
  4032fb:	5d                   	pop    %rbp
  4032fc:	41 5c                	pop    %r12
  4032fe:	41 5d                	pop    %r13
  403300:	41 5e                	pop    %r14
  403302:	41 5f                	pop    %r15
  403304:	c3                   	ret
  403305:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40330c:	00 00 00 00 

0000000000403310 <__libc_csu_fini>:
  403310:	f3 0f 1e fa          	endbr64
  403314:	c3                   	ret

Desmontagem da secção .fini:

0000000000403318 <_fini>:
  403318:	f3 0f 1e fa          	endbr64
  40331c:	48 83 ec 08          	sub    $0x8,%rsp
  403320:	48 83 c4 08          	add    $0x8,%rsp
  403324:	c3                   	ret
