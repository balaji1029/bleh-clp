
sclp:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	48 83 ec 08          	sub    $0x8,%rsp
    2004:	48 8b 05 bd 6f 00 00 	mov    0x6fbd(%rip),%rax        # 8fc8 <__gmon_start__@Base>
    200b:	48 85 c0             	test   %rax,%rax
    200e:	74 02                	je     2012 <_init+0x12>
    2010:	ff d0                	call   *%rax
    2012:	48 83 c4 08          	add    $0x8,%rsp
    2016:	c3                   	ret

Disassembly of section .plt:

0000000000002020 <free@plt-0x10>:
    2020:	ff 35 ca 6f 00 00    	push   0x6fca(%rip)        # 8ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 cc 6f 00 00    	jmp    *0x6fcc(%rip)        # 8ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <free@plt>:
    2030:	ff 25 ca 6f 00 00    	jmp    *0x6fca(%rip)        # 9000 <free@GLIBC_2.2.5>
    2036:	68 00 00 00 00       	push   $0x0
    203b:	e9 e0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002040 <__errno_location@plt>:
    2040:	ff 25 c2 6f 00 00    	jmp    *0x6fc2(%rip)        # 9008 <__errno_location@GLIBC_2.2.5>
    2046:	68 01 00 00 00       	push   $0x1
    204b:	e9 d0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002050 <puts@plt>:
    2050:	ff 25 ba 6f 00 00    	jmp    *0x6fba(%rip)        # 9010 <puts@GLIBC_2.2.5>
    2056:	68 02 00 00 00       	push   $0x2
    205b:	e9 c0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002060 <ferror@plt>:
    2060:	ff 25 b2 6f 00 00    	jmp    *0x6fb2(%rip)        # 9018 <ferror@GLIBC_2.2.5>
    2066:	68 03 00 00 00       	push   $0x3
    206b:	e9 b0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002070 <isatty@plt>:
    2070:	ff 25 aa 6f 00 00    	jmp    *0x6faa(%rip)        # 9020 <isatty@GLIBC_2.2.5>
    2076:	68 04 00 00 00       	push   $0x4
    207b:	e9 a0 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002080 <fread@plt>:
    2080:	ff 25 a2 6f 00 00    	jmp    *0x6fa2(%rip)        # 9028 <fread@GLIBC_2.2.5>
    2086:	68 05 00 00 00       	push   $0x5
    208b:	e9 90 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002090 <fclose@plt>:
    2090:	ff 25 9a 6f 00 00    	jmp    *0x6f9a(%rip)        # 9030 <fclose@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	push   $0x6
    209b:	e9 80 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020a0 <strlen@plt>:
    20a0:	ff 25 92 6f 00 00    	jmp    *0x6f92(%rip)        # 9038 <strlen@GLIBC_2.2.5>
    20a6:	68 07 00 00 00       	push   $0x7
    20ab:	e9 70 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020b0 <getopt_long@plt>:
    20b0:	ff 25 8a 6f 00 00    	jmp    *0x6f8a(%rip)        # 9040 <getopt_long@GLIBC_2.2.5>
    20b6:	68 08 00 00 00       	push   $0x8
    20bb:	e9 60 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020c0 <memset@plt>:
    20c0:	ff 25 82 6f 00 00    	jmp    *0x6f82(%rip)        # 9048 <memset@GLIBC_2.2.5>
    20c6:	68 09 00 00 00       	push   $0x9
    20cb:	e9 50 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020d0 <freopen@plt>:
    20d0:	ff 25 7a 6f 00 00    	jmp    *0x6f7a(%rip)        # 9050 <freopen@GLIBC_2.2.5>
    20d6:	68 0a 00 00 00       	push   $0xa
    20db:	e9 40 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020e0 <fputc@plt>:
    20e0:	ff 25 72 6f 00 00    	jmp    *0x6f72(%rip)        # 9058 <fputc@GLIBC_2.2.5>
    20e6:	68 0b 00 00 00       	push   $0xb
    20eb:	e9 30 ff ff ff       	jmp    2020 <_init+0x20>

00000000000020f0 <fprintf@plt>:
    20f0:	ff 25 6a 6f 00 00    	jmp    *0x6f6a(%rip)        # 9060 <fprintf@GLIBC_2.2.5>
    20f6:	68 0c 00 00 00       	push   $0xc
    20fb:	e9 20 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002100 <clearerr@plt>:
    2100:	ff 25 62 6f 00 00    	jmp    *0x6f62(%rip)        # 9068 <clearerr@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	push   $0xd
    210b:	e9 10 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002110 <memcpy@plt>:
    2110:	ff 25 5a 6f 00 00    	jmp    *0x6f5a(%rip)        # 9070 <memcpy@GLIBC_2.14>
    2116:	68 0e 00 00 00       	push   $0xe
    211b:	e9 00 ff ff ff       	jmp    2020 <_init+0x20>

0000000000002120 <fileno@plt>:
    2120:	ff 25 52 6f 00 00    	jmp    *0x6f52(%rip)        # 9078 <fileno@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	push   $0xf
    212b:	e9 f0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002130 <malloc@plt>:
    2130:	ff 25 4a 6f 00 00    	jmp    *0x6f4a(%rip)        # 9080 <malloc@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	push   $0x10
    213b:	e9 e0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002140 <realloc@plt>:
    2140:	ff 25 42 6f 00 00    	jmp    *0x6f42(%rip)        # 9088 <realloc@GLIBC_2.2.5>
    2146:	68 11 00 00 00       	push   $0x11
    214b:	e9 d0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002150 <fopen@plt>:
    2150:	ff 25 3a 6f 00 00    	jmp    *0x6f3a(%rip)        # 9090 <fopen@GLIBC_2.2.5>
    2156:	68 12 00 00 00       	push   $0x12
    215b:	e9 c0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002160 <perror@plt>:
    2160:	ff 25 32 6f 00 00    	jmp    *0x6f32(%rip)        # 9098 <perror@GLIBC_2.2.5>
    2166:	68 13 00 00 00       	push   $0x13
    216b:	e9 b0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002170 <exit@plt>:
    2170:	ff 25 2a 6f 00 00    	jmp    *0x6f2a(%rip)        # 90a0 <exit@GLIBC_2.2.5>
    2176:	68 14 00 00 00       	push   $0x14
    217b:	e9 a0 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002180 <fwrite@plt>:
    2180:	ff 25 22 6f 00 00    	jmp    *0x6f22(%rip)        # 90a8 <fwrite@GLIBC_2.2.5>
    2186:	68 15 00 00 00       	push   $0x15
    218b:	e9 90 fe ff ff       	jmp    2020 <_init+0x20>

0000000000002190 <getc@plt>:
    2190:	ff 25 1a 6f 00 00    	jmp    *0x6f1a(%rip)        # 90b0 <getc@GLIBC_2.2.5>
    2196:	68 16 00 00 00       	push   $0x16
    219b:	e9 80 fe ff ff       	jmp    2020 <_init+0x20>

Disassembly of section .plt.got:

00000000000021a0 <__cxa_finalize@plt>:
    21a0:	ff 25 32 6e 00 00    	jmp    *0x6e32(%rip)        # 8fd8 <__cxa_finalize@GLIBC_2.2.5>
    21a6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000021b0 <_start>:
    21b0:	31 ed                	xor    %ebp,%ebp
    21b2:	49 89 d1             	mov    %rdx,%r9
    21b5:	5e                   	pop    %rsi
    21b6:	48 89 e2             	mov    %rsp,%rdx
    21b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    21bd:	50                   	push   %rax
    21be:	54                   	push   %rsp
    21bf:	45 31 c0             	xor    %r8d,%r8d
    21c2:	31 c9                	xor    %ecx,%ecx
    21c4:	48 8d 3d 76 02 00 00 	lea    0x276(%rip),%rdi        # 2441 <main>
    21cb:	ff 15 e7 6d 00 00    	call   *0x6de7(%rip)        # 8fb8 <__libc_start_main@GLIBC_2.34>
    21d1:	f4                   	hlt
    21d2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    21d9:	00 00 00 
    21dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000021e0 <deregister_tm_clones>:
    21e0:	48 8d 3d 89 6f 00 00 	lea    0x6f89(%rip),%rdi        # 9170 <__TMC_END__>
    21e7:	48 8d 05 82 6f 00 00 	lea    0x6f82(%rip),%rax        # 9170 <__TMC_END__>
    21ee:	48 39 f8             	cmp    %rdi,%rax
    21f1:	74 15                	je     2208 <deregister_tm_clones+0x28>
    21f3:	48 8b 05 c6 6d 00 00 	mov    0x6dc6(%rip),%rax        # 8fc0 <_ITM_deregisterTMCloneTable@Base>
    21fa:	48 85 c0             	test   %rax,%rax
    21fd:	74 09                	je     2208 <deregister_tm_clones+0x28>
    21ff:	ff e0                	jmp    *%rax
    2201:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2208:	c3                   	ret
    2209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002210 <register_tm_clones>:
    2210:	48 8d 3d 59 6f 00 00 	lea    0x6f59(%rip),%rdi        # 9170 <__TMC_END__>
    2217:	48 8d 35 52 6f 00 00 	lea    0x6f52(%rip),%rsi        # 9170 <__TMC_END__>
    221e:	48 29 fe             	sub    %rdi,%rsi
    2221:	48 89 f0             	mov    %rsi,%rax
    2224:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2228:	48 c1 f8 03          	sar    $0x3,%rax
    222c:	48 01 c6             	add    %rax,%rsi
    222f:	48 d1 fe             	sar    %rsi
    2232:	74 14                	je     2248 <register_tm_clones+0x38>
    2234:	48 8b 05 95 6d 00 00 	mov    0x6d95(%rip),%rax        # 8fd0 <_ITM_registerTMCloneTable@Base>
    223b:	48 85 c0             	test   %rax,%rax
    223e:	74 08                	je     2248 <register_tm_clones+0x38>
    2240:	ff e0                	jmp    *%rax
    2242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2248:	c3                   	ret
    2249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002250 <__do_global_dtors_aux>:
    2250:	f3 0f 1e fa          	endbr64
    2254:	80 3d 4d 6f 00 00 00 	cmpb   $0x0,0x6f4d(%rip)        # 91a8 <completed.0>
    225b:	75 2b                	jne    2288 <__do_global_dtors_aux+0x38>
    225d:	55                   	push   %rbp
    225e:	48 83 3d 72 6d 00 00 	cmpq   $0x0,0x6d72(%rip)        # 8fd8 <__cxa_finalize@GLIBC_2.2.5>
    2265:	00 
    2266:	48 89 e5             	mov    %rsp,%rbp
    2269:	74 0c                	je     2277 <__do_global_dtors_aux+0x27>
    226b:	48 8b 3d 56 6e 00 00 	mov    0x6e56(%rip),%rdi        # 90c8 <__dso_handle>
    2272:	e8 29 ff ff ff       	call   21a0 <__cxa_finalize@plt>
    2277:	e8 64 ff ff ff       	call   21e0 <deregister_tm_clones>
    227c:	c6 05 25 6f 00 00 01 	movb   $0x1,0x6f25(%rip)        # 91a8 <completed.0>
    2283:	5d                   	pop    %rbp
    2284:	c3                   	ret
    2285:	0f 1f 00             	nopl   (%rax)
    2288:	c3                   	ret
    2289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002290 <frame_dummy>:
    2290:	f3 0f 1e fa          	endbr64
    2294:	e9 77 ff ff ff       	jmp    2210 <register_tm_clones>

0000000000002299 <_Z23process_command_optionsiPPc>:
    2299:	55                   	push   %rbp
    229a:	48 89 e5             	mov    %rsp,%rbp
    229d:	53                   	push   %rbx
    229e:	48 83 ec 28          	sub    $0x28,%rsp
    22a2:	89 7d dc             	mov    %edi,-0x24(%rbp)
    22a5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    22a9:	eb 3c                	jmp    22e7 <_Z23process_command_optionsiPPc+0x4e>
    22ab:	83 7d ec 74          	cmpl   $0x74,-0x14(%rbp)
    22af:	75 09                	jne    22ba <_Z23process_command_optionsiPPc+0x21>
    22b1:	c6 05 28 6f 00 00 01 	movb   $0x1,0x6f28(%rip)        # 91e0 <show_tokens>
    22b8:	eb 2d                	jmp    22e7 <_Z23process_command_optionsiPPc+0x4e>
    22ba:	48 8b 05 df 6e 00 00 	mov    0x6edf(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    22c1:	48 89 c1             	mov    %rax,%rcx
    22c4:	ba 62 00 00 00       	mov    $0x62,%edx
    22c9:	be 01 00 00 00       	mov    $0x1,%esi
    22ce:	48 8d 05 43 3d 00 00 	lea    0x3d43(%rip),%rax        # 6018 <_IO_stdin_used+0x18>
    22d5:	48 89 c7             	mov    %rax,%rdi
    22d8:	e8 a3 fe ff ff       	call   2180 <fwrite@plt>
    22dd:	bf 01 00 00 00       	mov    $0x1,%edi
    22e2:	e8 89 fe ff ff       	call   2170 <exit@plt>
    22e7:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    22eb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    22ee:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    22f4:	48 8d 15 e5 6d 00 00 	lea    0x6de5(%rip),%rdx        # 90e0 <_ZZ23process_command_optionsiPPcE9long_opts>
    22fb:	48 89 d1             	mov    %rdx,%rcx
    22fe:	48 8d 15 76 3d 00 00 	lea    0x3d76(%rip),%rdx        # 607b <_IO_stdin_used+0x7b>
    2305:	89 c7                	mov    %eax,%edi
    2307:	e8 a4 fd ff ff       	call   20b0 <getopt_long@plt>
    230c:	89 45 ec             	mov    %eax,-0x14(%rbp)
    230f:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
    2313:	0f 95 c0             	setne  %al
    2316:	84 c0                	test   %al,%al
    2318:	75 91                	jne    22ab <_Z23process_command_optionsiPPc+0x12>
    231a:	8b 05 78 6e 00 00    	mov    0x6e78(%rip),%eax        # 9198 <optind@GLIBC_2.2.5>
    2320:	39 45 dc             	cmp    %eax,-0x24(%rbp)
    2323:	7f 2d                	jg     2352 <_Z23process_command_optionsiPPc+0xb9>
    2325:	48 8b 05 74 6e 00 00 	mov    0x6e74(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    232c:	48 89 c1             	mov    %rax,%rcx
    232f:	ba 62 00 00 00       	mov    $0x62,%edx
    2334:	be 01 00 00 00       	mov    $0x1,%esi
    2339:	48 8d 05 d8 3c 00 00 	lea    0x3cd8(%rip),%rax        # 6018 <_IO_stdin_used+0x18>
    2340:	48 89 c7             	mov    %rax,%rdi
    2343:	e8 38 fe ff ff       	call   2180 <fwrite@plt>
    2348:	bf 01 00 00 00       	mov    $0x1,%edi
    234d:	e8 1e fe ff ff       	call   2170 <exit@plt>
    2352:	8b 05 40 6e 00 00    	mov    0x6e40(%rip),%eax        # 9198 <optind@GLIBC_2.2.5>
    2358:	83 c0 01             	add    $0x1,%eax
    235b:	39 45 dc             	cmp    %eax,-0x24(%rbp)
    235e:	7e 2d                	jle    238d <_Z23process_command_optionsiPPc+0xf4>
    2360:	48 8b 05 39 6e 00 00 	mov    0x6e39(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    2367:	48 89 c1             	mov    %rax,%rcx
    236a:	ba 62 00 00 00       	mov    $0x62,%edx
    236f:	be 01 00 00 00       	mov    $0x1,%esi
    2374:	48 8d 05 9d 3c 00 00 	lea    0x3c9d(%rip),%rax        # 6018 <_IO_stdin_used+0x18>
    237b:	48 89 c7             	mov    %rax,%rdi
    237e:	e8 fd fd ff ff       	call   2180 <fwrite@plt>
    2383:	bf 01 00 00 00       	mov    $0x1,%edi
    2388:	e8 e3 fd ff ff       	call   2170 <exit@plt>
    238d:	8b 05 05 6e 00 00    	mov    0x6e05(%rip),%eax        # 9198 <optind@GLIBC_2.2.5>
    2393:	48 98                	cltq
    2395:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    239c:	00 
    239d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    23a1:	48 01 d0             	add    %rdx,%rax
    23a4:	48 8b 00             	mov    (%rax),%rax
    23a7:	48 8d 15 cf 3c 00 00 	lea    0x3ccf(%rip),%rdx        # 607d <_IO_stdin_used+0x7d>
    23ae:	48 89 d6             	mov    %rdx,%rsi
    23b1:	48 89 c7             	mov    %rax,%rdi
    23b4:	e8 97 fd ff ff       	call   2150 <fopen@plt>
    23b9:	48 89 05 f8 6d 00 00 	mov    %rax,0x6df8(%rip)        # 91b8 <yyin>
    23c0:	0f b6 05 19 6e 00 00 	movzbl 0x6e19(%rip),%eax        # 91e0 <show_tokens>
    23c7:	84 c0                	test   %al,%al
    23c9:	74 4a                	je     2415 <_Z23process_command_optionsiPPc+0x17c>
    23cb:	8b 05 c7 6d 00 00    	mov    0x6dc7(%rip),%eax        # 9198 <optind@GLIBC_2.2.5>
    23d1:	48 98                	cltq
    23d3:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    23da:	00 
    23db:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    23df:	48 01 d0             	add    %rdx,%rax
    23e2:	48 8b 18             	mov    (%rax),%rbx
    23e5:	48 89 df             	mov    %rbx,%rdi
    23e8:	e8 b3 fc ff ff       	call   20a0 <strlen@plt>
    23ed:	48 01 d8             	add    %rbx,%rax
    23f0:	c7 00 2e 74 6f 6b    	movl   $0x6b6f742e,(%rax)
    23f6:	66 c7 40 04 73 00    	movw   $0x73,0x4(%rax)
    23fc:	48 8d 05 7c 3c 00 00 	lea    0x3c7c(%rip),%rax        # 607f <_IO_stdin_used+0x7f>
    2403:	48 89 c6             	mov    %rax,%rsi
    2406:	48 89 df             	mov    %rbx,%rdi
    2409:	e8 42 fd ff ff       	call   2150 <fopen@plt>
    240e:	48 89 05 c3 6d 00 00 	mov    %rax,0x6dc3(%rip)        # 91d8 <tok_out>
    2415:	48 8b 05 9c 6d 00 00 	mov    0x6d9c(%rip),%rax        # 91b8 <yyin>
    241c:	48 85 c0             	test   %rax,%rax
    241f:	75 19                	jne    243a <_Z23process_command_optionsiPPc+0x1a1>
    2421:	48 8d 05 59 3c 00 00 	lea    0x3c59(%rip),%rax        # 6081 <_IO_stdin_used+0x81>
    2428:	48 89 c7             	mov    %rax,%rdi
    242b:	e8 30 fd ff ff       	call   2160 <perror@plt>
    2430:	bf 01 00 00 00       	mov    $0x1,%edi
    2435:	e8 36 fd ff ff       	call   2170 <exit@plt>
    243a:	90                   	nop
    243b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    243f:	c9                   	leave
    2440:	c3                   	ret

0000000000002441 <main>:
    2441:	55                   	push   %rbp
    2442:	48 89 e5             	mov    %rsp,%rbp
    2445:	48 83 ec 20          	sub    $0x20,%rsp
    2449:	89 7d ec             	mov    %edi,-0x14(%rbp)
    244c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2450:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2454:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2457:	48 89 d6             	mov    %rdx,%rsi
    245a:	89 c7                	mov    %eax,%edi
    245c:	e8 38 fe ff ff       	call   2299 <_Z23process_command_optionsiPPc>
    2461:	e8 76 2a 00 00       	call   4edc <_Z7yyparsev>
    2466:	89 45 fc             	mov    %eax,-0x4(%rbp)
    2469:	48 8b 05 48 6d 00 00 	mov    0x6d48(%rip),%rax        # 91b8 <yyin>
    2470:	48 89 c7             	mov    %rax,%rdi
    2473:	e8 18 fc ff ff       	call   2090 <fclose@plt>
    2478:	0f b6 05 61 6d 00 00 	movzbl 0x6d61(%rip),%eax        # 91e0 <show_tokens>
    247f:	84 c0                	test   %al,%al
    2481:	74 0f                	je     2492 <main+0x51>
    2483:	48 8b 05 4e 6d 00 00 	mov    0x6d4e(%rip),%rax        # 91d8 <tok_out>
    248a:	48 89 c7             	mov    %rax,%rdi
    248d:	e8 fe fb ff ff       	call   2090 <fclose@plt>
    2492:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2495:	c9                   	leave
    2496:	c3                   	ret

0000000000002497 <_Z7yyerrorv>:
    2497:	55                   	push   %rbp
    2498:	48 89 e5             	mov    %rsp,%rbp
    249b:	0f b6 05 3e 6d 00 00 	movzbl 0x6d3e(%rip),%eax        # 91e0 <show_tokens>
    24a2:	84 c0                	test   %al,%al
    24a4:	74 51                	je     24f7 <_Z7yyerrorv+0x60>
    24a6:	48 8b 05 2b 6d 00 00 	mov    0x6d2b(%rip),%rax        # 91d8 <tok_out>
    24ad:	48 89 c2             	mov    %rax,%rdx
    24b0:	48 8d 05 a5 40 00 00 	lea    0x40a5(%rip),%rax        # 655c <_ZL6yy_chk+0xdc>
    24b7:	48 89 c6             	mov    %rax,%rsi
    24ba:	bf 00 00 00 00       	mov    $0x0,%edi
    24bf:	e8 0c fc ff ff       	call   20d0 <freopen@plt>
    24c4:	48 89 05 0d 6d 00 00 	mov    %rax,0x6d0d(%rip)        # 91d8 <tok_out>
    24cb:	48 8b 05 06 6d 00 00 	mov    0x6d06(%rip),%rax        # 91d8 <tok_out>
    24d2:	48 85 c0             	test   %rax,%rax
    24d5:	75 11                	jne    24e8 <_Z7yyerrorv+0x51>
    24d7:	48 8d 05 80 40 00 00 	lea    0x4080(%rip),%rax        # 655e <_ZL6yy_chk+0xde>
    24de:	48 89 c7             	mov    %rax,%rdi
    24e1:	e8 7a fc ff ff       	call   2160 <perror@plt>
    24e6:	eb 0f                	jmp    24f7 <_Z7yyerrorv+0x60>
    24e8:	48 8b 05 e9 6c 00 00 	mov    0x6ce9(%rip),%rax        # 91d8 <tok_out>
    24ef:	48 89 c7             	mov    %rax,%rdi
    24f2:	e8 99 fb ff ff       	call   2090 <fclose@plt>
    24f7:	bf 01 00 00 00       	mov    $0x1,%edi
    24fc:	e8 6f fc ff ff       	call   2170 <exit@plt>

0000000000002501 <_Z5yylexv>:
    2501:	55                   	push   %rbp
    2502:	48 89 e5             	mov    %rsp,%rbp
    2505:	53                   	push   %rbx
    2506:	48 83 ec 38          	sub    $0x38,%rsp
    250a:	8b 05 00 6d 00 00    	mov    0x6d00(%rip),%eax        # 9210 <_ZL7yy_init>
    2510:	85 c0                	test   %eax,%eax
    2512:	0f 85 b9 00 00 00    	jne    25d1 <_Z5yylexv+0xd0>
    2518:	c7 05 ee 6c 00 00 01 	movl   $0x1,0x6cee(%rip)        # 9210 <_ZL7yy_init>
    251f:	00 00 00 
    2522:	8b 05 ec 6c 00 00    	mov    0x6cec(%rip),%eax        # 9214 <_ZL8yy_start>
    2528:	85 c0                	test   %eax,%eax
    252a:	75 0a                	jne    2536 <_Z5yylexv+0x35>
    252c:	c7 05 de 6c 00 00 01 	movl   $0x1,0x6cde(%rip)        # 9214 <_ZL8yy_start>
    2533:	00 00 00 
    2536:	48 8b 05 7b 6c 00 00 	mov    0x6c7b(%rip),%rax        # 91b8 <yyin>
    253d:	48 85 c0             	test   %rax,%rax
    2540:	75 0e                	jne    2550 <_Z5yylexv+0x4f>
    2542:	48 8b 05 47 6c 00 00 	mov    0x6c47(%rip),%rax        # 9190 <stdin@GLIBC_2.2.5>
    2549:	48 89 05 68 6c 00 00 	mov    %rax,0x6c68(%rip)        # 91b8 <yyin>
    2550:	48 8b 05 69 6c 00 00 	mov    0x6c69(%rip),%rax        # 91c0 <yyout>
    2557:	48 85 c0             	test   %rax,%rax
    255a:	75 0e                	jne    256a <_Z5yylexv+0x69>
    255c:	48 8b 05 1d 6c 00 00 	mov    0x6c1d(%rip),%rax        # 9180 <stdout@GLIBC_2.2.5>
    2563:	48 89 05 56 6c 00 00 	mov    %rax,0x6c56(%rip)        # 91c0 <yyout>
    256a:	48 8b 05 87 6c 00 00 	mov    0x6c87(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2571:	48 85 c0             	test   %rax,%rax
    2574:	74 1a                	je     2590 <_Z5yylexv+0x8f>
    2576:	48 8b 05 7b 6c 00 00 	mov    0x6c7b(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    257d:	48 8b 15 64 6c 00 00 	mov    0x6c64(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2584:	48 c1 e2 03          	shl    $0x3,%rdx
    2588:	48 01 d0             	add    %rdx,%rax
    258b:	48 8b 00             	mov    (%rax),%rax
    258e:	eb 05                	jmp    2595 <_Z5yylexv+0x94>
    2590:	b8 00 00 00 00       	mov    $0x0,%eax
    2595:	48 85 c0             	test   %rax,%rax
    2598:	75 32                	jne    25cc <_Z5yylexv+0xcb>
    259a:	e8 a3 1d 00 00       	call   4342 <_ZL21yyensure_buffer_stackv>
    259f:	48 8b 05 12 6c 00 00 	mov    0x6c12(%rip),%rax        # 91b8 <yyin>
    25a6:	48 8b 15 4b 6c 00 00 	mov    0x6c4b(%rip),%rdx        # 91f8 <_ZL15yy_buffer_stack>
    25ad:	48 8b 0d 34 6c 00 00 	mov    0x6c34(%rip),%rcx        # 91e8 <_ZL19yy_buffer_stack_top>
    25b4:	48 c1 e1 03          	shl    $0x3,%rcx
    25b8:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
    25bc:	be 00 40 00 00       	mov    $0x4000,%esi
    25c1:	48 89 c7             	mov    %rax,%rdi
    25c4:	e8 fb 18 00 00       	call   3ec4 <_Z16yy_create_bufferP8_IO_FILEi>
    25c9:	48 89 03             	mov    %rax,(%rbx)
    25cc:	e8 68 18 00 00       	call   3e39 <_ZL20yy_load_buffer_statev>
    25d1:	48 8b 05 30 6c 00 00 	mov    0x6c30(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    25d8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    25dc:	0f b6 15 1d 6c 00 00 	movzbl 0x6c1d(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    25e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    25e7:	88 10                	mov    %dl,(%rax)
    25e9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    25ed:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    25f1:	8b 05 1d 6c 00 00    	mov    0x6c1d(%rip),%eax        # 9214 <_ZL8yy_start>
    25f7:	89 45 ec             	mov    %eax,-0x14(%rbp)
    25fa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    25fe:	0f b6 00             	movzbl (%rax),%eax
    2601:	0f b6 c0             	movzbl %al,%eax
    2604:	48 98                	cltq
    2606:	48 8d 15 13 3b 00 00 	lea    0x3b13(%rip),%rdx        # 6120 <_ZL5yy_ec>
    260d:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    2611:	88 45 d3             	mov    %al,-0x2d(%rbp)
    2614:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2617:	48 98                	cltq
    2619:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    261d:	48 8d 05 7c 3a 00 00 	lea    0x3a7c(%rip),%rax        # 60a0 <_ZL9yy_accept>
    2624:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    2628:	66 85 c0             	test   %ax,%ax
    262b:	74 48                	je     2675 <_Z5yylexv+0x174>
    262d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2630:	89 05 e6 6b 00 00    	mov    %eax,0x6be6(%rip)        # 921c <_ZL23yy_last_accepting_state>
    2636:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    263a:	48 89 05 df 6b 00 00 	mov    %rax,0x6bdf(%rip)        # 9220 <_ZL22yy_last_accepting_cpos>
    2641:	eb 32                	jmp    2675 <_Z5yylexv+0x174>
    2643:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2646:	48 98                	cltq
    2648:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    264c:	48 8d 05 ad 3c 00 00 	lea    0x3cad(%rip),%rax        # 6300 <_ZL6yy_def>
    2653:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    2657:	98                   	cwtl
    2658:	89 45 ec             	mov    %eax,-0x14(%rbp)
    265b:	83 7d ec 3e          	cmpl   $0x3e,-0x14(%rbp)
    265f:	7e 14                	jle    2675 <_Z5yylexv+0x174>
    2661:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    2665:	48 98                	cltq
    2667:	48 8d 15 b2 3b 00 00 	lea    0x3bb2(%rip),%rdx        # 6220 <_ZL7yy_meta>
    266e:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    2672:	88 45 d3             	mov    %al,-0x2d(%rbp)
    2675:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2678:	48 98                	cltq
    267a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    267e:	48 8d 05 db 3b 00 00 	lea    0x3bdb(%rip),%rax        # 6260 <_ZL7yy_base>
    2685:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    2689:	0f bf d0             	movswl %ax,%edx
    268c:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    2690:	01 d0                	add    %edx,%eax
    2692:	48 98                	cltq
    2694:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    2698:	48 8d 05 e1 3d 00 00 	lea    0x3de1(%rip),%rax        # 6480 <_ZL6yy_chk>
    269f:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    26a3:	98                   	cwtl
    26a4:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    26a7:	75 9a                	jne    2643 <_Z5yylexv+0x142>
    26a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    26ac:	48 98                	cltq
    26ae:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    26b2:	48 8d 05 a7 3b 00 00 	lea    0x3ba7(%rip),%rax        # 6260 <_ZL7yy_base>
    26b9:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    26bd:	0f bf d0             	movswl %ax,%edx
    26c0:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    26c4:	01 d0                	add    %edx,%eax
    26c6:	48 98                	cltq
    26c8:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    26cc:	48 8d 05 cd 3c 00 00 	lea    0x3ccd(%rip),%rax        # 63a0 <_ZL6yy_nxt>
    26d3:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    26d7:	98                   	cwtl
    26d8:	89 45 ec             	mov    %eax,-0x14(%rbp)
    26db:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    26e0:	8b 45 ec             	mov    -0x14(%rbp),%eax
    26e3:	48 98                	cltq
    26e5:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    26e9:	48 8d 05 70 3b 00 00 	lea    0x3b70(%rip),%rax        # 6260 <_ZL7yy_base>
    26f0:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    26f4:	66 83 f8 4c          	cmp    $0x4c,%ax
    26f8:	0f 85 fc fe ff ff    	jne    25fa <_Z5yylexv+0xf9>
    26fe:	90                   	nop
    26ff:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2702:	48 98                	cltq
    2704:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    2708:	48 8d 05 91 39 00 00 	lea    0x3991(%rip),%rax        # 60a0 <_ZL9yy_accept>
    270f:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    2713:	98                   	cwtl
    2714:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2717:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    271b:	75 2c                	jne    2749 <_Z5yylexv+0x248>
    271d:	48 8b 05 fc 6a 00 00 	mov    0x6afc(%rip),%rax        # 9220 <_ZL22yy_last_accepting_cpos>
    2724:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2728:	8b 05 ee 6a 00 00    	mov    0x6aee(%rip),%eax        # 921c <_ZL23yy_last_accepting_state>
    272e:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2731:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2734:	48 98                	cltq
    2736:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    273a:	48 8d 05 5f 39 00 00 	lea    0x395f(%rip),%rax        # 60a0 <_ZL9yy_accept>
    2741:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    2745:	98                   	cwtl
    2746:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    2749:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    274d:	48 89 05 7c 6a 00 00 	mov    %rax,0x6a7c(%rip)        # 91d0 <yytext>
    2754:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2758:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
    275c:	89 05 4e 6a 00 00    	mov    %eax,0x6a4e(%rip)        # 91b0 <yyleng>
    2762:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2766:	0f b6 00             	movzbl (%rax),%eax
    2769:	88 05 91 6a 00 00    	mov    %al,0x6a91(%rip)        # 9200 <_ZL12yy_hold_char>
    276f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2773:	c6 00 00             	movb   $0x0,(%rax)
    2776:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    277a:	48 89 05 87 6a 00 00 	mov    %rax,0x6a87(%rip)        # 9208 <_ZL10yy_c_buf_p>
    2781:	83 7d d4 1d          	cmpl   $0x1d,-0x2c(%rbp)
    2785:	0f 87 4f 09 00 00    	ja     30da <_Z5yylexv+0xbd9>
    278b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    278e:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    2795:	00 
    2796:	48 8d 05 df 3e 00 00 	lea    0x3edf(%rip),%rax        # 667c <_ZL6yy_chk+0x1fc>
    279d:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    27a0:	48 98                	cltq
    27a2:	48 8d 15 d3 3e 00 00 	lea    0x3ed3(%rip),%rdx        # 667c <_ZL6yy_chk+0x1fc>
    27a9:	48 01 d0             	add    %rdx,%rax
    27ac:	ff e0                	jmp    *%rax
    27ae:	0f b6 15 4b 6a 00 00 	movzbl 0x6a4b(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    27b5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    27b9:	88 10                	mov    %dl,(%rax)
    27bb:	48 8b 05 5e 6a 00 00 	mov    0x6a5e(%rip),%rax        # 9220 <_ZL22yy_last_accepting_cpos>
    27c2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    27c6:	8b 05 50 6a 00 00    	mov    0x6a50(%rip),%eax        # 921c <_ZL23yy_last_accepting_state>
    27cc:	89 45 ec             	mov    %eax,-0x14(%rbp)
    27cf:	e9 2b ff ff ff       	jmp    26ff <_Z5yylexv+0x1fe>
    27d4:	0f b6 05 05 6a 00 00 	movzbl 0x6a05(%rip),%eax        # 91e0 <show_tokens>
    27db:	84 c0                	test   %al,%al
    27dd:	74 35                	je     2814 <_Z5yylexv+0x313>
    27df:	8b 0d 3b 69 00 00    	mov    0x693b(%rip),%ecx        # 9120 <yylineno>
    27e5:	48 8b 15 e4 69 00 00 	mov    0x69e4(%rip),%rdx        # 91d0 <yytext>
    27ec:	48 8b 05 e5 69 00 00 	mov    0x69e5(%rip),%rax        # 91d8 <tok_out>
    27f3:	41 89 c8             	mov    %ecx,%r8d
    27f6:	48 89 d1             	mov    %rdx,%rcx
    27f9:	48 8d 15 66 3d 00 00 	lea    0x3d66(%rip),%rdx        # 6566 <_ZL6yy_chk+0xe6>
    2800:	48 8d 35 39 69 00 00 	lea    0x6939(%rip),%rsi        # 9140 <print_string>
    2807:	48 89 c7             	mov    %rax,%rdi
    280a:	b8 00 00 00 00       	mov    $0x0,%eax
    280f:	e8 dc f8 ff ff       	call   20f0 <fprintf@plt>
    2814:	b8 07 01 00 00       	mov    $0x107,%eax
    2819:	e9 d7 08 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    281e:	0f b6 05 bb 69 00 00 	movzbl 0x69bb(%rip),%eax        # 91e0 <show_tokens>
    2825:	84 c0                	test   %al,%al
    2827:	74 35                	je     285e <_Z5yylexv+0x35d>
    2829:	8b 0d f1 68 00 00    	mov    0x68f1(%rip),%ecx        # 9120 <yylineno>
    282f:	48 8b 15 9a 69 00 00 	mov    0x699a(%rip),%rdx        # 91d0 <yytext>
    2836:	48 8b 05 9b 69 00 00 	mov    0x699b(%rip),%rax        # 91d8 <tok_out>
    283d:	41 89 c8             	mov    %ecx,%r8d
    2840:	48 89 d1             	mov    %rdx,%rcx
    2843:	48 8d 15 21 3d 00 00 	lea    0x3d21(%rip),%rdx        # 656b <_ZL6yy_chk+0xeb>
    284a:	48 8d 35 ef 68 00 00 	lea    0x68ef(%rip),%rsi        # 9140 <print_string>
    2851:	48 89 c7             	mov    %rax,%rdi
    2854:	b8 00 00 00 00       	mov    $0x0,%eax
    2859:	e8 92 f8 ff ff       	call   20f0 <fprintf@plt>
    285e:	b8 03 01 00 00       	mov    $0x103,%eax
    2863:	e9 8d 08 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2868:	0f b6 05 71 69 00 00 	movzbl 0x6971(%rip),%eax        # 91e0 <show_tokens>
    286f:	84 c0                	test   %al,%al
    2871:	74 35                	je     28a8 <_Z5yylexv+0x3a7>
    2873:	8b 0d a7 68 00 00    	mov    0x68a7(%rip),%ecx        # 9120 <yylineno>
    2879:	48 8b 15 50 69 00 00 	mov    0x6950(%rip),%rdx        # 91d0 <yytext>
    2880:	48 8b 05 51 69 00 00 	mov    0x6951(%rip),%rax        # 91d8 <tok_out>
    2887:	41 89 c8             	mov    %ecx,%r8d
    288a:	48 89 d1             	mov    %rdx,%rcx
    288d:	48 8d 15 df 3c 00 00 	lea    0x3cdf(%rip),%rdx        # 6573 <_ZL6yy_chk+0xf3>
    2894:	48 8d 35 a5 68 00 00 	lea    0x68a5(%rip),%rsi        # 9140 <print_string>
    289b:	48 89 c7             	mov    %rax,%rdi
    289e:	b8 00 00 00 00       	mov    $0x0,%eax
    28a3:	e8 48 f8 ff ff       	call   20f0 <fprintf@plt>
    28a8:	b8 04 01 00 00       	mov    $0x104,%eax
    28ad:	e9 43 08 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    28b2:	0f b6 05 27 69 00 00 	movzbl 0x6927(%rip),%eax        # 91e0 <show_tokens>
    28b9:	84 c0                	test   %al,%al
    28bb:	74 35                	je     28f2 <_Z5yylexv+0x3f1>
    28bd:	8b 0d 5d 68 00 00    	mov    0x685d(%rip),%ecx        # 9120 <yylineno>
    28c3:	48 8b 15 06 69 00 00 	mov    0x6906(%rip),%rdx        # 91d0 <yytext>
    28ca:	48 8b 05 07 69 00 00 	mov    0x6907(%rip),%rax        # 91d8 <tok_out>
    28d1:	41 89 c8             	mov    %ecx,%r8d
    28d4:	48 89 d1             	mov    %rdx,%rcx
    28d7:	48 8d 15 9b 3c 00 00 	lea    0x3c9b(%rip),%rdx        # 6579 <_ZL6yy_chk+0xf9>
    28de:	48 8d 35 5b 68 00 00 	lea    0x685b(%rip),%rsi        # 9140 <print_string>
    28e5:	48 89 c7             	mov    %rax,%rdi
    28e8:	b8 00 00 00 00       	mov    $0x0,%eax
    28ed:	e8 fe f7 ff ff       	call   20f0 <fprintf@plt>
    28f2:	b8 06 01 00 00       	mov    $0x106,%eax
    28f7:	e9 f9 07 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    28fc:	0f b6 05 dd 68 00 00 	movzbl 0x68dd(%rip),%eax        # 91e0 <show_tokens>
    2903:	84 c0                	test   %al,%al
    2905:	74 35                	je     293c <_Z5yylexv+0x43b>
    2907:	8b 0d 13 68 00 00    	mov    0x6813(%rip),%ecx        # 9120 <yylineno>
    290d:	48 8b 15 bc 68 00 00 	mov    0x68bc(%rip),%rdx        # 91d0 <yytext>
    2914:	48 8b 05 bd 68 00 00 	mov    0x68bd(%rip),%rax        # 91d8 <tok_out>
    291b:	41 89 c8             	mov    %ecx,%r8d
    291e:	48 89 d1             	mov    %rdx,%rcx
    2921:	48 8d 15 58 3c 00 00 	lea    0x3c58(%rip),%rdx        # 6580 <_ZL6yy_chk+0x100>
    2928:	48 8d 35 11 68 00 00 	lea    0x6811(%rip),%rsi        # 9140 <print_string>
    292f:	48 89 c7             	mov    %rax,%rdi
    2932:	b8 00 00 00 00       	mov    $0x0,%eax
    2937:	e8 b4 f7 ff ff       	call   20f0 <fprintf@plt>
    293c:	b8 05 01 00 00       	mov    $0x105,%eax
    2941:	e9 af 07 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2946:	0f b6 05 93 68 00 00 	movzbl 0x6893(%rip),%eax        # 91e0 <show_tokens>
    294d:	84 c0                	test   %al,%al
    294f:	74 35                	je     2986 <_Z5yylexv+0x485>
    2951:	8b 0d c9 67 00 00    	mov    0x67c9(%rip),%ecx        # 9120 <yylineno>
    2957:	48 8b 15 72 68 00 00 	mov    0x6872(%rip),%rdx        # 91d0 <yytext>
    295e:	48 8b 05 73 68 00 00 	mov    0x6873(%rip),%rax        # 91d8 <tok_out>
    2965:	41 89 c8             	mov    %ecx,%r8d
    2968:	48 89 d1             	mov    %rdx,%rcx
    296b:	48 8d 15 13 3c 00 00 	lea    0x3c13(%rip),%rdx        # 6585 <_ZL6yy_chk+0x105>
    2972:	48 8d 35 c7 67 00 00 	lea    0x67c7(%rip),%rsi        # 9140 <print_string>
    2979:	48 89 c7             	mov    %rax,%rdi
    297c:	b8 00 00 00 00       	mov    $0x0,%eax
    2981:	e8 6a f7 ff ff       	call   20f0 <fprintf@plt>
    2986:	b8 0e 01 00 00       	mov    $0x10e,%eax
    298b:	e9 65 07 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2990:	0f b6 05 49 68 00 00 	movzbl 0x6849(%rip),%eax        # 91e0 <show_tokens>
    2997:	84 c0                	test   %al,%al
    2999:	74 35                	je     29d0 <_Z5yylexv+0x4cf>
    299b:	8b 0d 7f 67 00 00    	mov    0x677f(%rip),%ecx        # 9120 <yylineno>
    29a1:	48 8b 15 28 68 00 00 	mov    0x6828(%rip),%rdx        # 91d0 <yytext>
    29a8:	48 8b 05 29 68 00 00 	mov    0x6829(%rip),%rax        # 91d8 <tok_out>
    29af:	41 89 c8             	mov    %ecx,%r8d
    29b2:	48 89 d1             	mov    %rdx,%rcx
    29b5:	48 8d 15 dc 3b 00 00 	lea    0x3bdc(%rip),%rdx        # 6598 <_ZL6yy_chk+0x118>
    29bc:	48 8d 35 7d 67 00 00 	lea    0x677d(%rip),%rsi        # 9140 <print_string>
    29c3:	48 89 c7             	mov    %rax,%rdi
    29c6:	b8 00 00 00 00       	mov    $0x0,%eax
    29cb:	e8 20 f7 ff ff       	call   20f0 <fprintf@plt>
    29d0:	b8 0f 01 00 00       	mov    $0x10f,%eax
    29d5:	e9 1b 07 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    29da:	0f b6 05 ff 67 00 00 	movzbl 0x67ff(%rip),%eax        # 91e0 <show_tokens>
    29e1:	84 c0                	test   %al,%al
    29e3:	74 35                	je     2a1a <_Z5yylexv+0x519>
    29e5:	8b 0d 35 67 00 00    	mov    0x6735(%rip),%ecx        # 9120 <yylineno>
    29eb:	48 8b 15 de 67 00 00 	mov    0x67de(%rip),%rdx        # 91d0 <yytext>
    29f2:	48 8b 05 df 67 00 00 	mov    0x67df(%rip),%rax        # 91d8 <tok_out>
    29f9:	41 89 c8             	mov    %ecx,%r8d
    29fc:	48 89 d1             	mov    %rdx,%rcx
    29ff:	48 8d 15 a6 3b 00 00 	lea    0x3ba6(%rip),%rdx        # 65ac <_ZL6yy_chk+0x12c>
    2a06:	48 8d 35 33 67 00 00 	lea    0x6733(%rip),%rsi        # 9140 <print_string>
    2a0d:	48 89 c7             	mov    %rax,%rdi
    2a10:	b8 00 00 00 00       	mov    $0x0,%eax
    2a15:	e8 d6 f6 ff ff       	call   20f0 <fprintf@plt>
    2a1a:	b8 10 01 00 00       	mov    $0x110,%eax
    2a1f:	e9 d1 06 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2a24:	0f b6 05 b5 67 00 00 	movzbl 0x67b5(%rip),%eax        # 91e0 <show_tokens>
    2a2b:	84 c0                	test   %al,%al
    2a2d:	74 35                	je     2a64 <_Z5yylexv+0x563>
    2a2f:	8b 0d eb 66 00 00    	mov    0x66eb(%rip),%ecx        # 9120 <yylineno>
    2a35:	48 8b 15 94 67 00 00 	mov    0x6794(%rip),%rdx        # 91d0 <yytext>
    2a3c:	48 8b 05 95 67 00 00 	mov    0x6795(%rip),%rax        # 91d8 <tok_out>
    2a43:	41 89 c8             	mov    %ecx,%r8d
    2a46:	48 89 d1             	mov    %rdx,%rcx
    2a49:	48 8d 15 6f 3b 00 00 	lea    0x3b6f(%rip),%rdx        # 65bf <_ZL6yy_chk+0x13f>
    2a50:	48 8d 35 e9 66 00 00 	lea    0x66e9(%rip),%rsi        # 9140 <print_string>
    2a57:	48 89 c7             	mov    %rax,%rdi
    2a5a:	b8 00 00 00 00       	mov    $0x0,%eax
    2a5f:	e8 8c f6 ff ff       	call   20f0 <fprintf@plt>
    2a64:	b8 11 01 00 00       	mov    $0x111,%eax
    2a69:	e9 87 06 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2a6e:	0f b6 05 6b 67 00 00 	movzbl 0x676b(%rip),%eax        # 91e0 <show_tokens>
    2a75:	84 c0                	test   %al,%al
    2a77:	74 35                	je     2aae <_Z5yylexv+0x5ad>
    2a79:	8b 0d a1 66 00 00    	mov    0x66a1(%rip),%ecx        # 9120 <yylineno>
    2a7f:	48 8b 15 4a 67 00 00 	mov    0x674a(%rip),%rdx        # 91d0 <yytext>
    2a86:	48 8b 05 4b 67 00 00 	mov    0x674b(%rip),%rax        # 91d8 <tok_out>
    2a8d:	41 89 c8             	mov    %ecx,%r8d
    2a90:	48 89 d1             	mov    %rdx,%rcx
    2a93:	48 8d 15 39 3b 00 00 	lea    0x3b39(%rip),%rdx        # 65d3 <_ZL6yy_chk+0x153>
    2a9a:	48 8d 35 9f 66 00 00 	lea    0x669f(%rip),%rsi        # 9140 <print_string>
    2aa1:	48 89 c7             	mov    %rax,%rdi
    2aa4:	b8 00 00 00 00       	mov    $0x0,%eax
    2aa9:	e8 42 f6 ff ff       	call   20f0 <fprintf@plt>
    2aae:	b8 12 01 00 00       	mov    $0x112,%eax
    2ab3:	e9 3d 06 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2ab8:	0f b6 05 21 67 00 00 	movzbl 0x6721(%rip),%eax        # 91e0 <show_tokens>
    2abf:	84 c0                	test   %al,%al
    2ac1:	74 35                	je     2af8 <_Z5yylexv+0x5f7>
    2ac3:	8b 0d 57 66 00 00    	mov    0x6657(%rip),%ecx        # 9120 <yylineno>
    2ac9:	48 8b 15 00 67 00 00 	mov    0x6700(%rip),%rdx        # 91d0 <yytext>
    2ad0:	48 8b 05 01 67 00 00 	mov    0x6701(%rip),%rax        # 91d8 <tok_out>
    2ad7:	41 89 c8             	mov    %ecx,%r8d
    2ada:	48 89 d1             	mov    %rdx,%rcx
    2add:	48 8d 15 f5 3a 00 00 	lea    0x3af5(%rip),%rdx        # 65d9 <_ZL6yy_chk+0x159>
    2ae4:	48 8d 35 55 66 00 00 	lea    0x6655(%rip),%rsi        # 9140 <print_string>
    2aeb:	48 89 c7             	mov    %rax,%rdi
    2aee:	b8 00 00 00 00       	mov    $0x0,%eax
    2af3:	e8 f8 f5 ff ff       	call   20f0 <fprintf@plt>
    2af8:	b8 13 01 00 00       	mov    $0x113,%eax
    2afd:	e9 f3 05 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2b02:	0f b6 05 d7 66 00 00 	movzbl 0x66d7(%rip),%eax        # 91e0 <show_tokens>
    2b09:	84 c0                	test   %al,%al
    2b0b:	74 35                	je     2b42 <_Z5yylexv+0x641>
    2b0d:	8b 0d 0d 66 00 00    	mov    0x660d(%rip),%ecx        # 9120 <yylineno>
    2b13:	48 8b 15 b6 66 00 00 	mov    0x66b6(%rip),%rdx        # 91d0 <yytext>
    2b1a:	48 8b 05 b7 66 00 00 	mov    0x66b7(%rip),%rax        # 91d8 <tok_out>
    2b21:	41 89 c8             	mov    %ecx,%r8d
    2b24:	48 89 d1             	mov    %rdx,%rcx
    2b27:	48 8d 15 b5 3a 00 00 	lea    0x3ab5(%rip),%rdx        # 65e3 <_ZL6yy_chk+0x163>
    2b2e:	48 8d 35 0b 66 00 00 	lea    0x660b(%rip),%rsi        # 9140 <print_string>
    2b35:	48 89 c7             	mov    %rax,%rdi
    2b38:	b8 00 00 00 00       	mov    $0x0,%eax
    2b3d:	e8 ae f5 ff ff       	call   20f0 <fprintf@plt>
    2b42:	b8 0a 01 00 00       	mov    $0x10a,%eax
    2b47:	e9 a9 05 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2b4c:	0f b6 05 8d 66 00 00 	movzbl 0x668d(%rip),%eax        # 91e0 <show_tokens>
    2b53:	84 c0                	test   %al,%al
    2b55:	74 35                	je     2b8c <_Z5yylexv+0x68b>
    2b57:	8b 0d c3 65 00 00    	mov    0x65c3(%rip),%ecx        # 9120 <yylineno>
    2b5d:	48 8b 15 6c 66 00 00 	mov    0x666c(%rip),%rdx        # 91d0 <yytext>
    2b64:	48 8b 05 6d 66 00 00 	mov    0x666d(%rip),%rax        # 91d8 <tok_out>
    2b6b:	41 89 c8             	mov    %ecx,%r8d
    2b6e:	48 89 d1             	mov    %rdx,%rcx
    2b71:	48 8d 15 70 3a 00 00 	lea    0x3a70(%rip),%rdx        # 65e8 <_ZL6yy_chk+0x168>
    2b78:	48 8d 35 c1 65 00 00 	lea    0x65c1(%rip),%rsi        # 9140 <print_string>
    2b7f:	48 89 c7             	mov    %rax,%rdi
    2b82:	b8 00 00 00 00       	mov    $0x0,%eax
    2b87:	e8 64 f5 ff ff       	call   20f0 <fprintf@plt>
    2b8c:	b8 09 01 00 00       	mov    $0x109,%eax
    2b91:	e9 5f 05 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2b96:	0f b6 05 43 66 00 00 	movzbl 0x6643(%rip),%eax        # 91e0 <show_tokens>
    2b9d:	84 c0                	test   %al,%al
    2b9f:	74 35                	je     2bd6 <_Z5yylexv+0x6d5>
    2ba1:	8b 0d 79 65 00 00    	mov    0x6579(%rip),%ecx        # 9120 <yylineno>
    2ba7:	48 8b 15 22 66 00 00 	mov    0x6622(%rip),%rdx        # 91d0 <yytext>
    2bae:	48 8b 05 23 66 00 00 	mov    0x6623(%rip),%rax        # 91d8 <tok_out>
    2bb5:	41 89 c8             	mov    %ecx,%r8d
    2bb8:	48 89 d1             	mov    %rdx,%rcx
    2bbb:	48 8d 15 2c 3a 00 00 	lea    0x3a2c(%rip),%rdx        # 65ee <_ZL6yy_chk+0x16e>
    2bc2:	48 8d 35 77 65 00 00 	lea    0x6577(%rip),%rsi        # 9140 <print_string>
    2bc9:	48 89 c7             	mov    %rax,%rdi
    2bcc:	b8 00 00 00 00       	mov    $0x0,%eax
    2bd1:	e8 1a f5 ff ff       	call   20f0 <fprintf@plt>
    2bd6:	b8 08 01 00 00       	mov    $0x108,%eax
    2bdb:	e9 15 05 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2be0:	0f b6 05 f9 65 00 00 	movzbl 0x65f9(%rip),%eax        # 91e0 <show_tokens>
    2be7:	84 c0                	test   %al,%al
    2be9:	74 35                	je     2c20 <_Z5yylexv+0x71f>
    2beb:	8b 0d 2f 65 00 00    	mov    0x652f(%rip),%ecx        # 9120 <yylineno>
    2bf1:	48 8b 15 d8 65 00 00 	mov    0x65d8(%rip),%rdx        # 91d0 <yytext>
    2bf8:	48 8b 05 d9 65 00 00 	mov    0x65d9(%rip),%rax        # 91d8 <tok_out>
    2bff:	41 89 c8             	mov    %ecx,%r8d
    2c02:	48 89 d1             	mov    %rdx,%rcx
    2c05:	48 8d 15 ec 39 00 00 	lea    0x39ec(%rip),%rdx        # 65f8 <_ZL6yy_chk+0x178>
    2c0c:	48 8d 35 2d 65 00 00 	lea    0x652d(%rip),%rsi        # 9140 <print_string>
    2c13:	48 89 c7             	mov    %rax,%rdi
    2c16:	b8 00 00 00 00       	mov    $0x0,%eax
    2c1b:	e8 d0 f4 ff ff       	call   20f0 <fprintf@plt>
    2c20:	b8 0c 01 00 00       	mov    $0x10c,%eax
    2c25:	e9 cb 04 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2c2a:	0f b6 05 af 65 00 00 	movzbl 0x65af(%rip),%eax        # 91e0 <show_tokens>
    2c31:	84 c0                	test   %al,%al
    2c33:	74 35                	je     2c6a <_Z5yylexv+0x769>
    2c35:	8b 0d e5 64 00 00    	mov    0x64e5(%rip),%ecx        # 9120 <yylineno>
    2c3b:	48 8b 15 8e 65 00 00 	mov    0x658e(%rip),%rdx        # 91d0 <yytext>
    2c42:	48 8b 05 8f 65 00 00 	mov    0x658f(%rip),%rax        # 91d8 <tok_out>
    2c49:	41 89 c8             	mov    %ecx,%r8d
    2c4c:	48 89 d1             	mov    %rdx,%rcx
    2c4f:	48 8d 15 ac 39 00 00 	lea    0x39ac(%rip),%rdx        # 6602 <_ZL6yy_chk+0x182>
    2c56:	48 8d 35 e3 64 00 00 	lea    0x64e3(%rip),%rsi        # 9140 <print_string>
    2c5d:	48 89 c7             	mov    %rax,%rdi
    2c60:	b8 00 00 00 00       	mov    $0x0,%eax
    2c65:	e8 86 f4 ff ff       	call   20f0 <fprintf@plt>
    2c6a:	b8 0d 01 00 00       	mov    $0x10d,%eax
    2c6f:	e9 81 04 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2c74:	0f b6 05 65 65 00 00 	movzbl 0x6565(%rip),%eax        # 91e0 <show_tokens>
    2c7b:	84 c0                	test   %al,%al
    2c7d:	74 35                	je     2cb4 <_Z5yylexv+0x7b3>
    2c7f:	8b 0d 9b 64 00 00    	mov    0x649b(%rip),%ecx        # 9120 <yylineno>
    2c85:	48 8b 15 44 65 00 00 	mov    0x6544(%rip),%rdx        # 91d0 <yytext>
    2c8c:	48 8b 05 45 65 00 00 	mov    0x6545(%rip),%rax        # 91d8 <tok_out>
    2c93:	41 89 c8             	mov    %ecx,%r8d
    2c96:	48 89 d1             	mov    %rdx,%rcx
    2c99:	48 8d 15 6c 39 00 00 	lea    0x396c(%rip),%rdx        # 660c <_ZL6yy_chk+0x18c>
    2ca0:	48 8d 35 99 64 00 00 	lea    0x6499(%rip),%rsi        # 9140 <print_string>
    2ca7:	48 89 c7             	mov    %rax,%rdi
    2caa:	b8 00 00 00 00       	mov    $0x0,%eax
    2caf:	e8 3c f4 ff ff       	call   20f0 <fprintf@plt>
    2cb4:	b8 0b 01 00 00       	mov    $0x10b,%eax
    2cb9:	e9 37 04 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2cbe:	0f b6 05 1b 65 00 00 	movzbl 0x651b(%rip),%eax        # 91e0 <show_tokens>
    2cc5:	84 c0                	test   %al,%al
    2cc7:	74 35                	je     2cfe <_Z5yylexv+0x7fd>
    2cc9:	8b 0d 51 64 00 00    	mov    0x6451(%rip),%ecx        # 9120 <yylineno>
    2ccf:	48 8b 15 fa 64 00 00 	mov    0x64fa(%rip),%rdx        # 91d0 <yytext>
    2cd6:	48 8b 05 fb 64 00 00 	mov    0x64fb(%rip),%rax        # 91d8 <tok_out>
    2cdd:	41 89 c8             	mov    %ecx,%r8d
    2ce0:	48 89 d1             	mov    %rdx,%rcx
    2ce3:	48 8d 15 2a 39 00 00 	lea    0x392a(%rip),%rdx        # 6614 <_ZL6yy_chk+0x194>
    2cea:	48 8d 35 4f 64 00 00 	lea    0x644f(%rip),%rsi        # 9140 <print_string>
    2cf1:	48 89 c7             	mov    %rax,%rdi
    2cf4:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf9:	e8 f2 f3 ff ff       	call   20f0 <fprintf@plt>
    2cfe:	b8 14 01 00 00       	mov    $0x114,%eax
    2d03:	e9 ed 03 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2d08:	0f b6 05 d1 64 00 00 	movzbl 0x64d1(%rip),%eax        # 91e0 <show_tokens>
    2d0f:	84 c0                	test   %al,%al
    2d11:	74 35                	je     2d48 <_Z5yylexv+0x847>
    2d13:	8b 0d 07 64 00 00    	mov    0x6407(%rip),%ecx        # 9120 <yylineno>
    2d19:	48 8b 15 b0 64 00 00 	mov    0x64b0(%rip),%rdx        # 91d0 <yytext>
    2d20:	48 8b 05 b1 64 00 00 	mov    0x64b1(%rip),%rax        # 91d8 <tok_out>
    2d27:	41 89 c8             	mov    %ecx,%r8d
    2d2a:	48 89 d1             	mov    %rdx,%rcx
    2d2d:	48 8d 15 e5 38 00 00 	lea    0x38e5(%rip),%rdx        # 6619 <_ZL6yy_chk+0x199>
    2d34:	48 8d 35 05 64 00 00 	lea    0x6405(%rip),%rsi        # 9140 <print_string>
    2d3b:	48 89 c7             	mov    %rax,%rdi
    2d3e:	b8 00 00 00 00       	mov    $0x0,%eax
    2d43:	e8 a8 f3 ff ff       	call   20f0 <fprintf@plt>
    2d48:	b8 15 01 00 00       	mov    $0x115,%eax
    2d4d:	e9 a3 03 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2d52:	0f b6 05 87 64 00 00 	movzbl 0x6487(%rip),%eax        # 91e0 <show_tokens>
    2d59:	84 c0                	test   %al,%al
    2d5b:	74 35                	je     2d92 <_Z5yylexv+0x891>
    2d5d:	8b 0d bd 63 00 00    	mov    0x63bd(%rip),%ecx        # 9120 <yylineno>
    2d63:	48 8b 15 66 64 00 00 	mov    0x6466(%rip),%rdx        # 91d0 <yytext>
    2d6a:	48 8b 05 67 64 00 00 	mov    0x6467(%rip),%rax        # 91d8 <tok_out>
    2d71:	41 89 c8             	mov    %ecx,%r8d
    2d74:	48 89 d1             	mov    %rdx,%rcx
    2d77:	48 8d 15 a1 38 00 00 	lea    0x38a1(%rip),%rdx        # 661f <_ZL6yy_chk+0x19f>
    2d7e:	48 8d 35 bb 63 00 00 	lea    0x63bb(%rip),%rsi        # 9140 <print_string>
    2d85:	48 89 c7             	mov    %rax,%rdi
    2d88:	b8 00 00 00 00       	mov    $0x0,%eax
    2d8d:	e8 5e f3 ff ff       	call   20f0 <fprintf@plt>
    2d92:	b8 16 01 00 00       	mov    $0x116,%eax
    2d97:	e9 59 03 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2d9c:	0f b6 05 3d 64 00 00 	movzbl 0x643d(%rip),%eax        # 91e0 <show_tokens>
    2da3:	84 c0                	test   %al,%al
    2da5:	74 35                	je     2ddc <_Z5yylexv+0x8db>
    2da7:	8b 0d 73 63 00 00    	mov    0x6373(%rip),%ecx        # 9120 <yylineno>
    2dad:	48 8b 15 1c 64 00 00 	mov    0x641c(%rip),%rdx        # 91d0 <yytext>
    2db4:	48 8b 05 1d 64 00 00 	mov    0x641d(%rip),%rax        # 91d8 <tok_out>
    2dbb:	41 89 c8             	mov    %ecx,%r8d
    2dbe:	48 89 d1             	mov    %rdx,%rcx
    2dc1:	48 8d 15 5c 38 00 00 	lea    0x385c(%rip),%rdx        # 6624 <_ZL6yy_chk+0x1a4>
    2dc8:	48 8d 35 71 63 00 00 	lea    0x6371(%rip),%rsi        # 9140 <print_string>
    2dcf:	48 89 c7             	mov    %rax,%rdi
    2dd2:	b8 00 00 00 00       	mov    $0x0,%eax
    2dd7:	e8 14 f3 ff ff       	call   20f0 <fprintf@plt>
    2ddc:	b8 17 01 00 00       	mov    $0x117,%eax
    2de1:	e9 0f 03 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2de6:	0f b6 05 f3 63 00 00 	movzbl 0x63f3(%rip),%eax        # 91e0 <show_tokens>
    2ded:	84 c0                	test   %al,%al
    2def:	74 35                	je     2e26 <_Z5yylexv+0x925>
    2df1:	8b 0d 29 63 00 00    	mov    0x6329(%rip),%ecx        # 9120 <yylineno>
    2df7:	48 8b 15 d2 63 00 00 	mov    0x63d2(%rip),%rdx        # 91d0 <yytext>
    2dfe:	48 8b 05 d3 63 00 00 	mov    0x63d3(%rip),%rax        # 91d8 <tok_out>
    2e05:	41 89 c8             	mov    %ecx,%r8d
    2e08:	48 89 d1             	mov    %rdx,%rcx
    2e0b:	48 8d 15 16 38 00 00 	lea    0x3816(%rip),%rdx        # 6628 <_ZL6yy_chk+0x1a8>
    2e12:	48 8d 35 27 63 00 00 	lea    0x6327(%rip),%rsi        # 9140 <print_string>
    2e19:	48 89 c7             	mov    %rax,%rdi
    2e1c:	b8 00 00 00 00       	mov    $0x0,%eax
    2e21:	e8 ca f2 ff ff       	call   20f0 <fprintf@plt>
    2e26:	b8 02 01 00 00       	mov    $0x102,%eax
    2e2b:	e9 c5 02 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2e30:	8b 05 ea 62 00 00    	mov    0x62ea(%rip),%eax        # 9120 <yylineno>
    2e36:	83 c0 01             	add    $0x1,%eax
    2e39:	89 05 e1 62 00 00    	mov    %eax,0x62e1(%rip)        # 9120 <yylineno>
    2e3f:	e9 ac 02 00 00       	jmp    30f0 <_Z5yylexv+0xbef>
    2e44:	48 8b 15 85 63 00 00 	mov    0x6385(%rip),%rdx        # 91d0 <yytext>
    2e4b:	48 8b 05 4e 63 00 00 	mov    0x634e(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    2e52:	48 8d 0d d4 37 00 00 	lea    0x37d4(%rip),%rcx        # 662d <_ZL6yy_chk+0x1ad>
    2e59:	48 89 ce             	mov    %rcx,%rsi
    2e5c:	48 89 c7             	mov    %rax,%rdi
    2e5f:	b8 00 00 00 00       	mov    $0x0,%eax
    2e64:	e8 87 f2 ff ff       	call   20f0 <fprintf@plt>
    2e69:	e8 29 f6 ff ff       	call   2497 <_Z7yyerrorv>
    2e6e:	e9 7d 02 00 00       	jmp    30f0 <_Z5yylexv+0xbef>
    2e73:	48 8b 15 46 63 00 00 	mov    0x6346(%rip),%rdx        # 91c0 <yyout>
    2e7a:	8b 05 30 63 00 00    	mov    0x6330(%rip),%eax        # 91b0 <yyleng>
    2e80:	48 63 f0             	movslq %eax,%rsi
    2e83:	48 8b 05 46 63 00 00 	mov    0x6346(%rip),%rax        # 91d0 <yytext>
    2e8a:	48 89 d1             	mov    %rdx,%rcx
    2e8d:	ba 01 00 00 00       	mov    $0x1,%edx
    2e92:	48 89 c7             	mov    %rax,%rdi
    2e95:	e8 e6 f2 ff ff       	call   2180 <fwrite@plt>
    2e9a:	48 85 c0             	test   %rax,%rax
    2e9d:	e9 4e 02 00 00       	jmp    30f0 <_Z5yylexv+0xbef>
    2ea2:	b8 00 00 00 00       	mov    $0x0,%eax
    2ea7:	e9 49 02 00 00       	jmp    30f5 <_Z5yylexv+0xbf4>
    2eac:	48 8b 05 1d 63 00 00 	mov    0x631d(%rip),%rax        # 91d0 <yytext>
    2eb3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    2eb7:	48 29 c2             	sub    %rax,%rdx
    2eba:	89 d0                	mov    %edx,%eax
    2ebc:	83 e8 01             	sub    $0x1,%eax
    2ebf:	89 45 cc             	mov    %eax,-0x34(%rbp)
    2ec2:	0f b6 15 37 63 00 00 	movzbl 0x6337(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    2ec9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2ecd:	88 10                	mov    %dl,(%rax)
    2ecf:	48 8b 05 22 63 00 00 	mov    0x6322(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2ed6:	48 8b 15 0b 63 00 00 	mov    0x630b(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2edd:	48 c1 e2 03          	shl    $0x3,%rdx
    2ee1:	48 01 d0             	add    %rdx,%rax
    2ee4:	48 8b 00             	mov    (%rax),%rax
    2ee7:	8b 40 38             	mov    0x38(%rax),%eax
    2eea:	85 c0                	test   %eax,%eax
    2eec:	75 62                	jne    2f50 <_Z5yylexv+0xa4f>
    2eee:	48 8b 05 03 63 00 00 	mov    0x6303(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2ef5:	48 8b 15 ec 62 00 00 	mov    0x62ec(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2efc:	48 c1 e2 03          	shl    $0x3,%rdx
    2f00:	48 01 d0             	add    %rdx,%rax
    2f03:	48 8b 00             	mov    (%rax),%rax
    2f06:	8b 40 1c             	mov    0x1c(%rax),%eax
    2f09:	89 05 f5 62 00 00    	mov    %eax,0x62f5(%rip)        # 9204 <_ZL10yy_n_chars>
    2f0f:	48 8b 05 e2 62 00 00 	mov    0x62e2(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2f16:	48 8b 15 cb 62 00 00 	mov    0x62cb(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2f1d:	48 c1 e2 03          	shl    $0x3,%rdx
    2f21:	48 01 d0             	add    %rdx,%rax
    2f24:	48 8b 00             	mov    (%rax),%rax
    2f27:	48 8b 15 8a 62 00 00 	mov    0x628a(%rip),%rdx        # 91b8 <yyin>
    2f2e:	48 89 10             	mov    %rdx,(%rax)
    2f31:	48 8b 05 c0 62 00 00 	mov    0x62c0(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2f38:	48 8b 15 a9 62 00 00 	mov    0x62a9(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2f3f:	48 c1 e2 03          	shl    $0x3,%rdx
    2f43:	48 01 d0             	add    %rdx,%rax
    2f46:	48 8b 00             	mov    (%rax),%rax
    2f49:	c7 40 38 01 00 00 00 	movl   $0x1,0x38(%rax)
    2f50:	48 8b 05 a1 62 00 00 	mov    0x62a1(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    2f57:	48 8b 15 8a 62 00 00 	mov    0x628a(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    2f5e:	48 c1 e2 03          	shl    $0x3,%rdx
    2f62:	48 01 d0             	add    %rdx,%rax
    2f65:	48 8b 00             	mov    (%rax),%rax
    2f68:	48 8b 50 08          	mov    0x8(%rax),%rdx
    2f6c:	8b 05 92 62 00 00    	mov    0x6292(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    2f72:	48 98                	cltq
    2f74:	48 01 c2             	add    %rax,%rdx
    2f77:	48 8b 05 8a 62 00 00 	mov    0x628a(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    2f7e:	48 39 c2             	cmp    %rax,%rdx
    2f81:	72 74                	jb     2ff7 <_Z5yylexv+0xaf6>
    2f83:	48 8b 15 46 62 00 00 	mov    0x6246(%rip),%rdx        # 91d0 <yytext>
    2f8a:	8b 45 cc             	mov    -0x34(%rbp),%eax
    2f8d:	48 98                	cltq
    2f8f:	48 01 d0             	add    %rdx,%rax
    2f92:	48 89 05 6f 62 00 00 	mov    %rax,0x626f(%rip)        # 9208 <_ZL10yy_c_buf_p>
    2f99:	e8 e1 07 00 00       	call   377f <_ZL21yy_get_previous_statev>
    2f9e:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2fa1:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2fa4:	89 c7                	mov    %eax,%edi
    2fa6:	e8 ff 08 00 00       	call   38aa <_ZL16yy_try_NUL_transi>
    2fab:	89 45 c8             	mov    %eax,-0x38(%rbp)
    2fae:	48 8b 05 1b 62 00 00 	mov    0x621b(%rip),%rax        # 91d0 <yytext>
    2fb5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2fb9:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    2fbd:	74 28                	je     2fe7 <_Z5yylexv+0xae6>
    2fbf:	48 8b 05 42 62 00 00 	mov    0x6242(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    2fc6:	48 83 c0 01          	add    $0x1,%rax
    2fca:	48 89 05 37 62 00 00 	mov    %rax,0x6237(%rip)        # 9208 <_ZL10yy_c_buf_p>
    2fd1:	48 8b 05 30 62 00 00 	mov    0x6230(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    2fd8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2fdc:	8b 45 c8             	mov    -0x38(%rbp),%eax
    2fdf:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2fe2:	e9 13 f6 ff ff       	jmp    25fa <_Z5yylexv+0xf9>
    2fe7:	48 8b 05 1a 62 00 00 	mov    0x621a(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    2fee:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    2ff2:	e9 08 f7 ff ff       	jmp    26ff <_Z5yylexv+0x1fe>
    2ff7:	e8 ff 00 00 00       	call   30fb <_ZL18yy_get_next_bufferv>
    2ffc:	83 f8 02             	cmp    $0x2,%eax
    2fff:	0f 84 84 00 00 00    	je     3089 <_Z5yylexv+0xb88>
    3005:	83 f8 02             	cmp    $0x2,%eax
    3008:	0f 8f e1 00 00 00    	jg     30ef <_Z5yylexv+0xbee>
    300e:	85 c0                	test   %eax,%eax
    3010:	74 3e                	je     3050 <_Z5yylexv+0xb4f>
    3012:	83 f8 01             	cmp    $0x1,%eax
    3015:	0f 85 d4 00 00 00    	jne    30ef <_Z5yylexv+0xbee>
    301b:	c7 05 f3 61 00 00 00 	movl   $0x0,0x61f3(%rip)        # 9218 <_ZL27yy_did_buffer_switch_on_eof>
    3022:	00 00 00 
    3025:	48 8b 05 a4 61 00 00 	mov    0x61a4(%rip),%rax        # 91d0 <yytext>
    302c:	48 89 05 d5 61 00 00 	mov    %rax,0x61d5(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3033:	8b 05 db 61 00 00    	mov    0x61db(%rip),%eax        # 9214 <_ZL8yy_start>
    3039:	83 e8 01             	sub    $0x1,%eax
    303c:	89 c2                	mov    %eax,%edx
    303e:	c1 ea 1f             	shr    $0x1f,%edx
    3041:	01 d0                	add    %edx,%eax
    3043:	d1 f8                	sar    %eax
    3045:	83 c0 1d             	add    $0x1d,%eax
    3048:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    304b:	e9 31 f7 ff ff       	jmp    2781 <_Z5yylexv+0x280>
    3050:	48 8b 15 79 61 00 00 	mov    0x6179(%rip),%rdx        # 91d0 <yytext>
    3057:	8b 45 cc             	mov    -0x34(%rbp),%eax
    305a:	48 98                	cltq
    305c:	48 01 d0             	add    %rdx,%rax
    305f:	48 89 05 a2 61 00 00 	mov    %rax,0x61a2(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3066:	e8 14 07 00 00       	call   377f <_ZL21yy_get_previous_statev>
    306b:	89 45 ec             	mov    %eax,-0x14(%rbp)
    306e:	48 8b 05 93 61 00 00 	mov    0x6193(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3075:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    3079:	48 8b 05 50 61 00 00 	mov    0x6150(%rip),%rax        # 91d0 <yytext>
    3080:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    3084:	e9 71 f5 ff ff       	jmp    25fa <_Z5yylexv+0xf9>
    3089:	48 8b 05 68 61 00 00 	mov    0x6168(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3090:	48 8b 15 51 61 00 00 	mov    0x6151(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3097:	48 c1 e2 03          	shl    $0x3,%rdx
    309b:	48 01 d0             	add    %rdx,%rax
    309e:	48 8b 00             	mov    (%rax),%rax
    30a1:	48 8b 50 08          	mov    0x8(%rax),%rdx
    30a5:	8b 05 59 61 00 00    	mov    0x6159(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    30ab:	48 98                	cltq
    30ad:	48 01 d0             	add    %rdx,%rax
    30b0:	48 89 05 51 61 00 00 	mov    %rax,0x6151(%rip)        # 9208 <_ZL10yy_c_buf_p>
    30b7:	e8 c3 06 00 00       	call   377f <_ZL21yy_get_previous_statev>
    30bc:	89 45 ec             	mov    %eax,-0x14(%rbp)
    30bf:	48 8b 05 42 61 00 00 	mov    0x6142(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    30c6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    30ca:	48 8b 05 ff 60 00 00 	mov    0x60ff(%rip),%rax        # 91d0 <yytext>
    30d1:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    30d5:	e9 25 f6 ff ff       	jmp    26ff <_Z5yylexv+0x1fe>
    30da:	48 8d 05 67 35 00 00 	lea    0x3567(%rip),%rax        # 6648 <_ZL6yy_chk+0x1c8>
    30e1:	48 89 c7             	mov    %rax,%rdi
    30e4:	e8 93 15 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    30e9:	90                   	nop
    30ea:	e9 e2 f4 ff ff       	jmp    25d1 <_Z5yylexv+0xd0>
    30ef:	90                   	nop
    30f0:	e9 dc f4 ff ff       	jmp    25d1 <_Z5yylexv+0xd0>
    30f5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    30f9:	c9                   	leave
    30fa:	c3                   	ret

00000000000030fb <_ZL18yy_get_next_bufferv>:
    30fb:	55                   	push   %rbp
    30fc:	48 89 e5             	mov    %rsp,%rbp
    30ff:	53                   	push   %rbx
    3100:	48 83 ec 48          	sub    $0x48,%rsp
    3104:	48 8b 05 ed 60 00 00 	mov    0x60ed(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    310b:	48 8b 15 d6 60 00 00 	mov    0x60d6(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3112:	48 c1 e2 03          	shl    $0x3,%rdx
    3116:	48 01 d0             	add    %rdx,%rax
    3119:	48 8b 00             	mov    (%rax),%rax
    311c:	48 8b 40 08          	mov    0x8(%rax),%rax
    3120:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3124:	48 8b 05 a5 60 00 00 	mov    0x60a5(%rip),%rax        # 91d0 <yytext>
    312b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    312f:	48 8b 05 c2 60 00 00 	mov    0x60c2(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3136:	48 8b 15 ab 60 00 00 	mov    0x60ab(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    313d:	48 c1 e2 03          	shl    $0x3,%rdx
    3141:	48 01 d0             	add    %rdx,%rax
    3144:	48 8b 00             	mov    (%rax),%rax
    3147:	48 8b 40 08          	mov    0x8(%rax),%rax
    314b:	8b 15 b3 60 00 00    	mov    0x60b3(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    3151:	48 63 d2             	movslq %edx,%rdx
    3154:	48 83 c2 01          	add    $0x1,%rdx
    3158:	48 01 c2             	add    %rax,%rdx
    315b:	48 8b 05 a6 60 00 00 	mov    0x60a6(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3162:	48 39 c2             	cmp    %rax,%rdx
    3165:	73 0f                	jae    3176 <_ZL18yy_get_next_bufferv+0x7b>
    3167:	48 8d 05 8a 35 00 00 	lea    0x358a(%rip),%rax        # 66f8 <_ZL6yy_chk+0x278>
    316e:	48 89 c7             	mov    %rax,%rdi
    3171:	e8 06 15 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    3176:	48 8b 05 7b 60 00 00 	mov    0x607b(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    317d:	48 8b 15 64 60 00 00 	mov    0x6064(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3184:	48 c1 e2 03          	shl    $0x3,%rdx
    3188:	48 01 d0             	add    %rdx,%rax
    318b:	48 8b 00             	mov    (%rax),%rax
    318e:	8b 40 34             	mov    0x34(%rax),%eax
    3191:	85 c0                	test   %eax,%eax
    3193:	75 2b                	jne    31c0 <_ZL18yy_get_next_bufferv+0xc5>
    3195:	48 8b 15 6c 60 00 00 	mov    0x606c(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    319c:	48 8b 05 2d 60 00 00 	mov    0x602d(%rip),%rax        # 91d0 <yytext>
    31a3:	48 29 c2             	sub    %rax,%rdx
    31a6:	48 83 fa 01          	cmp    $0x1,%rdx
    31aa:	75 0a                	jne    31b6 <_ZL18yy_get_next_bufferv+0xbb>
    31ac:	b8 01 00 00 00       	mov    $0x1,%eax
    31b1:	e9 c3 05 00 00       	jmp    3779 <_ZL18yy_get_next_bufferv+0x67e>
    31b6:	b8 02 00 00 00       	mov    $0x2,%eax
    31bb:	e9 b9 05 00 00       	jmp    3779 <_ZL18yy_get_next_bufferv+0x67e>
    31c0:	48 8b 15 41 60 00 00 	mov    0x6041(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    31c7:	48 8b 05 02 60 00 00 	mov    0x6002(%rip),%rax        # 91d0 <yytext>
    31ce:	48 29 c2             	sub    %rax,%rdx
    31d1:	89 d0                	mov    %edx,%eax
    31d3:	83 e8 01             	sub    $0x1,%eax
    31d6:	89 45 c8             	mov    %eax,-0x38(%rbp)
    31d9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    31e0:	eb 21                	jmp    3203 <_ZL18yy_get_next_bufferv+0x108>
    31e2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    31e6:	48 8d 50 01          	lea    0x1(%rax),%rdx
    31ea:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    31ee:	0f b6 10             	movzbl (%rax),%edx
    31f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    31f5:	48 8d 48 01          	lea    0x1(%rax),%rcx
    31f9:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    31fd:	88 10                	mov    %dl,(%rax)
    31ff:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    3203:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3206:	3b 45 c8             	cmp    -0x38(%rbp),%eax
    3209:	7c d7                	jl     31e2 <_ZL18yy_get_next_bufferv+0xe7>
    320b:	48 8b 05 e6 5f 00 00 	mov    0x5fe6(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3212:	48 8b 15 cf 5f 00 00 	mov    0x5fcf(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3219:	48 c1 e2 03          	shl    $0x3,%rdx
    321d:	48 01 d0             	add    %rdx,%rax
    3220:	48 8b 00             	mov    (%rax),%rax
    3223:	8b 40 38             	mov    0x38(%rax),%eax
    3226:	83 f8 02             	cmp    $0x2,%eax
    3229:	75 30                	jne    325b <_ZL18yy_get_next_bufferv+0x160>
    322b:	c7 05 cf 5f 00 00 00 	movl   $0x0,0x5fcf(%rip)        # 9204 <_ZL10yy_n_chars>
    3232:	00 00 00 
    3235:	48 8b 05 bc 5f 00 00 	mov    0x5fbc(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    323c:	48 8b 15 a5 5f 00 00 	mov    0x5fa5(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3243:	48 c1 e2 03          	shl    $0x3,%rdx
    3247:	48 01 d0             	add    %rdx,%rax
    324a:	48 8b 00             	mov    (%rax),%rax
    324d:	8b 15 b1 5f 00 00    	mov    0x5fb1(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    3253:	89 50 1c             	mov    %edx,0x1c(%rax)
    3256:	e9 56 03 00 00       	jmp    35b1 <_ZL18yy_get_next_bufferv+0x4b6>
    325b:	48 8b 05 96 5f 00 00 	mov    0x5f96(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3262:	48 8b 15 7f 5f 00 00 	mov    0x5f7f(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3269:	48 c1 e2 03          	shl    $0x3,%rdx
    326d:	48 01 d0             	add    %rdx,%rax
    3270:	48 8b 00             	mov    (%rax),%rax
    3273:	8b 40 18             	mov    0x18(%rax),%eax
    3276:	2b 45 c8             	sub    -0x38(%rbp),%eax
    3279:	83 e8 01             	sub    $0x1,%eax
    327c:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    327f:	e9 10 01 00 00       	jmp    3394 <_ZL18yy_get_next_bufferv+0x299>
    3284:	48 8b 05 6d 5f 00 00 	mov    0x5f6d(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    328b:	48 8b 15 56 5f 00 00 	mov    0x5f56(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3292:	48 c1 e2 03          	shl    $0x3,%rdx
    3296:	48 01 d0             	add    %rdx,%rax
    3299:	48 8b 00             	mov    (%rax),%rax
    329c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    32a0:	48 8b 15 61 5f 00 00 	mov    0x5f61(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    32a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32ab:	48 8b 40 08          	mov    0x8(%rax),%rax
    32af:	48 29 c2             	sub    %rax,%rdx
    32b2:	89 55 bc             	mov    %edx,-0x44(%rbp)
    32b5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32b9:	8b 40 20             	mov    0x20(%rax),%eax
    32bc:	85 c0                	test   %eax,%eax
    32be:	74 71                	je     3331 <_ZL18yy_get_next_bufferv+0x236>
    32c0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32c4:	8b 40 18             	mov    0x18(%rax),%eax
    32c7:	01 c0                	add    %eax,%eax
    32c9:	89 45 b8             	mov    %eax,-0x48(%rbp)
    32cc:	83 7d b8 00          	cmpl   $0x0,-0x48(%rbp)
    32d0:	7f 24                	jg     32f6 <_ZL18yy_get_next_bufferv+0x1fb>
    32d2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32d6:	8b 50 18             	mov    0x18(%rax),%edx
    32d9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32dd:	8b 40 18             	mov    0x18(%rax),%eax
    32e0:	8d 48 07             	lea    0x7(%rax),%ecx
    32e3:	85 c0                	test   %eax,%eax
    32e5:	0f 48 c1             	cmovs  %ecx,%eax
    32e8:	c1 f8 03             	sar    $0x3,%eax
    32eb:	01 c2                	add    %eax,%edx
    32ed:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32f1:	89 50 18             	mov    %edx,0x18(%rax)
    32f4:	eb 11                	jmp    3307 <_ZL18yy_get_next_bufferv+0x20c>
    32f6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    32fa:	8b 40 18             	mov    0x18(%rax),%eax
    32fd:	8d 14 00             	lea    (%rax,%rax,1),%edx
    3300:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    3304:	89 50 18             	mov    %edx,0x18(%rax)
    3307:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    330b:	8b 40 18             	mov    0x18(%rax),%eax
    330e:	83 c0 02             	add    $0x2,%eax
    3311:	48 63 d0             	movslq %eax,%rdx
    3314:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    3318:	48 8b 40 08          	mov    0x8(%rax),%rax
    331c:	48 89 d6             	mov    %rdx,%rsi
    331f:	48 89 c7             	mov    %rax,%rdi
    3322:	e8 59 15 00 00       	call   4880 <_Z9yyreallocPvm>
    3327:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    332b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    332f:	eb 0c                	jmp    333d <_ZL18yy_get_next_bufferv+0x242>
    3331:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    3335:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    333c:	00 
    333d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    3341:	48 8b 40 08          	mov    0x8(%rax),%rax
    3345:	48 85 c0             	test   %rax,%rax
    3348:	75 0f                	jne    3359 <_ZL18yy_get_next_bufferv+0x25e>
    334a:	48 8d 05 df 33 00 00 	lea    0x33df(%rip),%rax        # 6730 <_ZL6yy_chk+0x2b0>
    3351:	48 89 c7             	mov    %rax,%rdi
    3354:	e8 23 13 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    3359:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    335d:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3361:	8b 45 bc             	mov    -0x44(%rbp),%eax
    3364:	48 98                	cltq
    3366:	48 01 d0             	add    %rdx,%rax
    3369:	48 89 05 98 5e 00 00 	mov    %rax,0x5e98(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3370:	48 8b 05 81 5e 00 00 	mov    0x5e81(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3377:	48 8b 15 6a 5e 00 00 	mov    0x5e6a(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    337e:	48 c1 e2 03          	shl    $0x3,%rdx
    3382:	48 01 d0             	add    %rdx,%rax
    3385:	48 8b 00             	mov    (%rax),%rax
    3388:	8b 40 18             	mov    0x18(%rax),%eax
    338b:	2b 45 c8             	sub    -0x38(%rbp),%eax
    338e:	83 e8 01             	sub    $0x1,%eax
    3391:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    3394:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    3398:	0f 8e e6 fe ff ff    	jle    3284 <_ZL18yy_get_next_bufferv+0x189>
    339e:	81 7d d4 00 20 00 00 	cmpl   $0x2000,-0x2c(%rbp)
    33a5:	7e 07                	jle    33ae <_ZL18yy_get_next_bufferv+0x2b3>
    33a7:	c7 45 d4 00 20 00 00 	movl   $0x2000,-0x2c(%rbp)
    33ae:	48 8b 05 43 5e 00 00 	mov    0x5e43(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    33b5:	48 8b 15 2c 5e 00 00 	mov    0x5e2c(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    33bc:	48 c1 e2 03          	shl    $0x3,%rdx
    33c0:	48 01 d0             	add    %rdx,%rax
    33c3:	48 8b 00             	mov    (%rax),%rax
    33c6:	8b 40 24             	mov    0x24(%rax),%eax
    33c9:	85 c0                	test   %eax,%eax
    33cb:	0f 84 04 01 00 00    	je     34d5 <_ZL18yy_get_next_bufferv+0x3da>
    33d1:	c7 45 d0 2a 00 00 00 	movl   $0x2a,-0x30(%rbp)
    33d8:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    33df:	eb 37                	jmp    3418 <_ZL18yy_get_next_bufferv+0x31d>
    33e1:	48 8b 05 10 5e 00 00 	mov    0x5e10(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    33e8:	48 8b 15 f9 5d 00 00 	mov    0x5df9(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    33ef:	48 c1 e2 03          	shl    $0x3,%rdx
    33f3:	48 01 d0             	add    %rdx,%rax
    33f6:	48 8b 00             	mov    (%rax),%rax
    33f9:	48 8b 40 08          	mov    0x8(%rax),%rax
    33fd:	8b 55 c8             	mov    -0x38(%rbp),%edx
    3400:	48 63 ca             	movslq %edx,%rcx
    3403:	8b 55 cc             	mov    -0x34(%rbp),%edx
    3406:	48 63 d2             	movslq %edx,%rdx
    3409:	48 01 ca             	add    %rcx,%rdx
    340c:	48 01 d0             	add    %rdx,%rax
    340f:	8b 55 d0             	mov    -0x30(%rbp),%edx
    3412:	88 10                	mov    %dl,(%rax)
    3414:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    3418:	8b 45 cc             	mov    -0x34(%rbp),%eax
    341b:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    341e:	7d 25                	jge    3445 <_ZL18yy_get_next_bufferv+0x34a>
    3420:	48 8b 05 91 5d 00 00 	mov    0x5d91(%rip),%rax        # 91b8 <yyin>
    3427:	48 89 c7             	mov    %rax,%rdi
    342a:	e8 61 ed ff ff       	call   2190 <getc@plt>
    342f:	89 45 d0             	mov    %eax,-0x30(%rbp)
    3432:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%rbp)
    3436:	74 0d                	je     3445 <_ZL18yy_get_next_bufferv+0x34a>
    3438:	83 7d d0 0a          	cmpl   $0xa,-0x30(%rbp)
    343c:	74 07                	je     3445 <_ZL18yy_get_next_bufferv+0x34a>
    343e:	b8 01 00 00 00       	mov    $0x1,%eax
    3443:	eb 05                	jmp    344a <_ZL18yy_get_next_bufferv+0x34f>
    3445:	b8 00 00 00 00       	mov    $0x0,%eax
    344a:	84 c0                	test   %al,%al
    344c:	75 93                	jne    33e1 <_ZL18yy_get_next_bufferv+0x2e6>
    344e:	83 7d d0 0a          	cmpl   $0xa,-0x30(%rbp)
    3452:	75 3b                	jne    348f <_ZL18yy_get_next_bufferv+0x394>
    3454:	8b 45 d0             	mov    -0x30(%rbp),%eax
    3457:	89 c6                	mov    %eax,%esi
    3459:	48 8b 05 98 5d 00 00 	mov    0x5d98(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3460:	48 8b 15 81 5d 00 00 	mov    0x5d81(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3467:	48 c1 e2 03          	shl    $0x3,%rdx
    346b:	48 01 d0             	add    %rdx,%rax
    346e:	48 8b 00             	mov    (%rax),%rax
    3471:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3475:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3478:	48 98                	cltq
    347a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    347e:	8b 45 cc             	mov    -0x34(%rbp),%eax
    3481:	8d 50 01             	lea    0x1(%rax),%edx
    3484:	89 55 cc             	mov    %edx,-0x34(%rbp)
    3487:	48 98                	cltq
    3489:	48 01 c8             	add    %rcx,%rax
    348c:	40 88 30             	mov    %sil,(%rax)
    348f:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%rbp)
    3493:	75 1a                	jne    34af <_ZL18yy_get_next_bufferv+0x3b4>
    3495:	48 8b 05 1c 5d 00 00 	mov    0x5d1c(%rip),%rax        # 91b8 <yyin>
    349c:	48 89 c7             	mov    %rax,%rdi
    349f:	e8 bc eb ff ff       	call   2060 <ferror@plt>
    34a4:	85 c0                	test   %eax,%eax
    34a6:	74 07                	je     34af <_ZL18yy_get_next_bufferv+0x3b4>
    34a8:	b8 01 00 00 00       	mov    $0x1,%eax
    34ad:	eb 05                	jmp    34b4 <_ZL18yy_get_next_bufferv+0x3b9>
    34af:	b8 00 00 00 00       	mov    $0x0,%eax
    34b4:	84 c0                	test   %al,%al
    34b6:	74 0f                	je     34c7 <_ZL18yy_get_next_bufferv+0x3cc>
    34b8:	48 8d 05 9d 32 00 00 	lea    0x329d(%rip),%rax        # 675c <_ZL6yy_chk+0x2dc>
    34bf:	48 89 c7             	mov    %rax,%rdi
    34c2:	e8 b5 11 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    34c7:	8b 45 cc             	mov    -0x34(%rbp),%eax
    34ca:	89 05 34 5d 00 00    	mov    %eax,0x5d34(%rip)        # 9204 <_ZL10yy_n_chars>
    34d0:	e9 bb 00 00 00       	jmp    3590 <_ZL18yy_get_next_bufferv+0x495>
    34d5:	e8 66 eb ff ff       	call   2040 <__errno_location@plt>
    34da:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    34e0:	eb 35                	jmp    3517 <_ZL18yy_get_next_bufferv+0x41c>
    34e2:	e8 59 eb ff ff       	call   2040 <__errno_location@plt>
    34e7:	8b 00                	mov    (%rax),%eax
    34e9:	83 f8 04             	cmp    $0x4,%eax
    34ec:	74 0f                	je     34fd <_ZL18yy_get_next_bufferv+0x402>
    34ee:	48 8d 05 67 32 00 00 	lea    0x3267(%rip),%rax        # 675c <_ZL6yy_chk+0x2dc>
    34f5:	48 89 c7             	mov    %rax,%rdi
    34f8:	e8 7f 11 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    34fd:	e8 3e eb ff ff       	call   2040 <__errno_location@plt>
    3502:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    3508:	48 8b 05 a9 5c 00 00 	mov    0x5ca9(%rip),%rax        # 91b8 <yyin>
    350f:	48 89 c7             	mov    %rax,%rdi
    3512:	e8 e9 eb ff ff       	call   2100 <clearerr@plt>
    3517:	48 8b 15 9a 5c 00 00 	mov    0x5c9a(%rip),%rdx        # 91b8 <yyin>
    351e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    3521:	48 98                	cltq
    3523:	48 8b 0d ce 5c 00 00 	mov    0x5cce(%rip),%rcx        # 91f8 <_ZL15yy_buffer_stack>
    352a:	48 8b 35 b7 5c 00 00 	mov    0x5cb7(%rip),%rsi        # 91e8 <_ZL19yy_buffer_stack_top>
    3531:	48 c1 e6 03          	shl    $0x3,%rsi
    3535:	48 01 f1             	add    %rsi,%rcx
    3538:	48 8b 09             	mov    (%rcx),%rcx
    353b:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    353f:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    3542:	48 63 c9             	movslq %ecx,%rcx
    3545:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    3549:	48 89 d1             	mov    %rdx,%rcx
    354c:	48 89 c2             	mov    %rax,%rdx
    354f:	be 01 00 00 00       	mov    $0x1,%esi
    3554:	e8 27 eb ff ff       	call   2080 <fread@plt>
    3559:	89 05 a5 5c 00 00    	mov    %eax,0x5ca5(%rip)        # 9204 <_ZL10yy_n_chars>
    355f:	8b 05 9f 5c 00 00    	mov    0x5c9f(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    3565:	85 c0                	test   %eax,%eax
    3567:	75 1a                	jne    3583 <_ZL18yy_get_next_bufferv+0x488>
    3569:	48 8b 05 48 5c 00 00 	mov    0x5c48(%rip),%rax        # 91b8 <yyin>
    3570:	48 89 c7             	mov    %rax,%rdi
    3573:	e8 e8 ea ff ff       	call   2060 <ferror@plt>
    3578:	85 c0                	test   %eax,%eax
    357a:	74 07                	je     3583 <_ZL18yy_get_next_bufferv+0x488>
    357c:	b8 01 00 00 00       	mov    $0x1,%eax
    3581:	eb 05                	jmp    3588 <_ZL18yy_get_next_bufferv+0x48d>
    3583:	b8 00 00 00 00       	mov    $0x0,%eax
    3588:	84 c0                	test   %al,%al
    358a:	0f 85 52 ff ff ff    	jne    34e2 <_ZL18yy_get_next_bufferv+0x3e7>
    3590:	48 8b 05 61 5c 00 00 	mov    0x5c61(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3597:	48 8b 15 4a 5c 00 00 	mov    0x5c4a(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    359e:	48 c1 e2 03          	shl    $0x3,%rdx
    35a2:	48 01 d0             	add    %rdx,%rax
    35a5:	48 8b 00             	mov    (%rax),%rax
    35a8:	8b 15 56 5c 00 00    	mov    0x5c56(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    35ae:	89 50 1c             	mov    %edx,0x1c(%rax)
    35b1:	8b 05 4d 5c 00 00    	mov    0x5c4d(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    35b7:	85 c0                	test   %eax,%eax
    35b9:	75 46                	jne    3601 <_ZL18yy_get_next_bufferv+0x506>
    35bb:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    35bf:	75 18                	jne    35d9 <_ZL18yy_get_next_bufferv+0x4de>
    35c1:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    35c8:	48 8b 05 e9 5b 00 00 	mov    0x5be9(%rip),%rax        # 91b8 <yyin>
    35cf:	48 89 c7             	mov    %rax,%rdi
    35d2:	e8 b3 06 00 00       	call   3c8a <_Z9yyrestartP8_IO_FILE>
    35d7:	eb 2f                	jmp    3608 <_ZL18yy_get_next_bufferv+0x50d>
    35d9:	c7 45 d8 02 00 00 00 	movl   $0x2,-0x28(%rbp)
    35e0:	48 8b 05 11 5c 00 00 	mov    0x5c11(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    35e7:	48 8b 15 fa 5b 00 00 	mov    0x5bfa(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    35ee:	48 c1 e2 03          	shl    $0x3,%rdx
    35f2:	48 01 d0             	add    %rdx,%rax
    35f5:	48 8b 00             	mov    (%rax),%rax
    35f8:	c7 40 38 02 00 00 00 	movl   $0x2,0x38(%rax)
    35ff:	eb 07                	jmp    3608 <_ZL18yy_get_next_bufferv+0x50d>
    3601:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    3608:	8b 15 f6 5b 00 00    	mov    0x5bf6(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    360e:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3611:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    3614:	48 8b 05 dd 5b 00 00 	mov    0x5bdd(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    361b:	48 8b 15 c6 5b 00 00 	mov    0x5bc6(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3622:	48 c1 e2 03          	shl    $0x3,%rdx
    3626:	48 01 d0             	add    %rdx,%rax
    3629:	48 8b 00             	mov    (%rax),%rax
    362c:	8b 40 18             	mov    0x18(%rax),%eax
    362f:	39 c1                	cmp    %eax,%ecx
    3631:	0f 8e b2 00 00 00    	jle    36e9 <_ZL18yy_get_next_bufferv+0x5ee>
    3637:	8b 15 c7 5b 00 00    	mov    0x5bc7(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    363d:	8b 45 c8             	mov    -0x38(%rbp),%eax
    3640:	01 c2                	add    %eax,%edx
    3642:	8b 05 bc 5b 00 00    	mov    0x5bbc(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    3648:	d1 f8                	sar    %eax
    364a:	01 d0                	add    %edx,%eax
    364c:	89 45 b4             	mov    %eax,-0x4c(%rbp)
    364f:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    3652:	48 63 d0             	movslq %eax,%rdx
    3655:	48 8b 05 9c 5b 00 00 	mov    0x5b9c(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    365c:	48 8b 0d 85 5b 00 00 	mov    0x5b85(%rip),%rcx        # 91e8 <_ZL19yy_buffer_stack_top>
    3663:	48 c1 e1 03          	shl    $0x3,%rcx
    3667:	48 01 c8             	add    %rcx,%rax
    366a:	48 8b 00             	mov    (%rax),%rax
    366d:	48 8b 40 08          	mov    0x8(%rax),%rax
    3671:	48 8b 0d 80 5b 00 00 	mov    0x5b80(%rip),%rcx        # 91f8 <_ZL15yy_buffer_stack>
    3678:	48 8b 35 69 5b 00 00 	mov    0x5b69(%rip),%rsi        # 91e8 <_ZL19yy_buffer_stack_top>
    367f:	48 c1 e6 03          	shl    $0x3,%rsi
    3683:	48 01 f1             	add    %rsi,%rcx
    3686:	48 8b 19             	mov    (%rcx),%rbx
    3689:	48 89 d6             	mov    %rdx,%rsi
    368c:	48 89 c7             	mov    %rax,%rdi
    368f:	e8 ec 11 00 00       	call   4880 <_Z9yyreallocPvm>
    3694:	48 89 43 08          	mov    %rax,0x8(%rbx)
    3698:	48 8b 05 59 5b 00 00 	mov    0x5b59(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    369f:	48 8b 15 42 5b 00 00 	mov    0x5b42(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    36a6:	48 c1 e2 03          	shl    $0x3,%rdx
    36aa:	48 01 d0             	add    %rdx,%rax
    36ad:	48 8b 00             	mov    (%rax),%rax
    36b0:	48 8b 40 08          	mov    0x8(%rax),%rax
    36b4:	48 85 c0             	test   %rax,%rax
    36b7:	75 0f                	jne    36c8 <_ZL18yy_get_next_bufferv+0x5cd>
    36b9:	48 8d 05 c0 30 00 00 	lea    0x30c0(%rip),%rax        # 6780 <_ZL6yy_chk+0x300>
    36c0:	48 89 c7             	mov    %rax,%rdi
    36c3:	e8 b4 0f 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    36c8:	48 8b 05 29 5b 00 00 	mov    0x5b29(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    36cf:	48 8b 15 12 5b 00 00 	mov    0x5b12(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    36d6:	48 c1 e2 03          	shl    $0x3,%rdx
    36da:	48 01 d0             	add    %rdx,%rax
    36dd:	48 8b 00             	mov    (%rax),%rax
    36e0:	8b 55 b4             	mov    -0x4c(%rbp),%edx
    36e3:	83 ea 02             	sub    $0x2,%edx
    36e6:	89 50 18             	mov    %edx,0x18(%rax)
    36e9:	8b 15 15 5b 00 00    	mov    0x5b15(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    36ef:	8b 45 c8             	mov    -0x38(%rbp),%eax
    36f2:	01 d0                	add    %edx,%eax
    36f4:	89 05 0a 5b 00 00    	mov    %eax,0x5b0a(%rip)        # 9204 <_ZL10yy_n_chars>
    36fa:	48 8b 05 f7 5a 00 00 	mov    0x5af7(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3701:	48 8b 15 e0 5a 00 00 	mov    0x5ae0(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3708:	48 c1 e2 03          	shl    $0x3,%rdx
    370c:	48 01 d0             	add    %rdx,%rax
    370f:	48 8b 00             	mov    (%rax),%rax
    3712:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3716:	8b 05 e8 5a 00 00    	mov    0x5ae8(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    371c:	48 98                	cltq
    371e:	48 01 d0             	add    %rdx,%rax
    3721:	c6 00 00             	movb   $0x0,(%rax)
    3724:	48 8b 05 cd 5a 00 00 	mov    0x5acd(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    372b:	48 8b 15 b6 5a 00 00 	mov    0x5ab6(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3732:	48 c1 e2 03          	shl    $0x3,%rdx
    3736:	48 01 d0             	add    %rdx,%rax
    3739:	48 8b 00             	mov    (%rax),%rax
    373c:	48 8b 40 08          	mov    0x8(%rax),%rax
    3740:	8b 15 be 5a 00 00    	mov    0x5abe(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    3746:	48 63 d2             	movslq %edx,%rdx
    3749:	48 83 c2 01          	add    $0x1,%rdx
    374d:	48 01 d0             	add    %rdx,%rax
    3750:	c6 00 00             	movb   $0x0,(%rax)
    3753:	48 8b 05 9e 5a 00 00 	mov    0x5a9e(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    375a:	48 8b 15 87 5a 00 00 	mov    0x5a87(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3761:	48 c1 e2 03          	shl    $0x3,%rdx
    3765:	48 01 d0             	add    %rdx,%rax
    3768:	48 8b 00             	mov    (%rax),%rax
    376b:	48 8b 40 08          	mov    0x8(%rax),%rax
    376f:	48 89 05 5a 5a 00 00 	mov    %rax,0x5a5a(%rip)        # 91d0 <yytext>
    3776:	8b 45 d8             	mov    -0x28(%rbp),%eax
    3779:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    377d:	c9                   	leave
    377e:	c3                   	ret

000000000000377f <_ZL21yy_get_previous_statev>:
    377f:	55                   	push   %rbp
    3780:	48 89 e5             	mov    %rsp,%rbp
    3783:	8b 05 8b 5a 00 00    	mov    0x5a8b(%rip),%eax        # 9214 <_ZL8yy_start>
    3789:	89 45 fc             	mov    %eax,-0x4(%rbp)
    378c:	48 8b 05 3d 5a 00 00 	mov    0x5a3d(%rip),%rax        # 91d0 <yytext>
    3793:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3797:	e9 f8 00 00 00       	jmp    3894 <_ZL21yy_get_previous_statev+0x115>
    379c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37a0:	0f b6 00             	movzbl (%rax),%eax
    37a3:	84 c0                	test   %al,%al
    37a5:	74 19                	je     37c0 <_ZL21yy_get_previous_statev+0x41>
    37a7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37ab:	0f b6 00             	movzbl (%rax),%eax
    37ae:	0f b6 c0             	movzbl %al,%eax
    37b1:	48 98                	cltq
    37b3:	48 8d 15 66 29 00 00 	lea    0x2966(%rip),%rdx        # 6120 <_ZL5yy_ec>
    37ba:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    37be:	eb 05                	jmp    37c5 <_ZL21yy_get_previous_statev+0x46>
    37c0:	b8 01 00 00 00       	mov    $0x1,%eax
    37c5:	88 45 ef             	mov    %al,-0x11(%rbp)
    37c8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    37cb:	48 98                	cltq
    37cd:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    37d1:	48 8d 05 c8 28 00 00 	lea    0x28c8(%rip),%rax        # 60a0 <_ZL9yy_accept>
    37d8:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    37dc:	66 85 c0             	test   %ax,%ax
    37df:	74 48                	je     3829 <_ZL21yy_get_previous_statev+0xaa>
    37e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    37e4:	89 05 32 5a 00 00    	mov    %eax,0x5a32(%rip)        # 921c <_ZL23yy_last_accepting_state>
    37ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    37ee:	48 89 05 2b 5a 00 00 	mov    %rax,0x5a2b(%rip)        # 9220 <_ZL22yy_last_accepting_cpos>
    37f5:	eb 32                	jmp    3829 <_ZL21yy_get_previous_statev+0xaa>
    37f7:	8b 45 fc             	mov    -0x4(%rbp),%eax
    37fa:	48 98                	cltq
    37fc:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3800:	48 8d 05 f9 2a 00 00 	lea    0x2af9(%rip),%rax        # 6300 <_ZL6yy_def>
    3807:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    380b:	98                   	cwtl
    380c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    380f:	83 7d fc 3e          	cmpl   $0x3e,-0x4(%rbp)
    3813:	7e 14                	jle    3829 <_ZL21yy_get_previous_statev+0xaa>
    3815:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    3819:	48 98                	cltq
    381b:	48 8d 15 fe 29 00 00 	lea    0x29fe(%rip),%rdx        # 6220 <_ZL7yy_meta>
    3822:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    3826:	88 45 ef             	mov    %al,-0x11(%rbp)
    3829:	8b 45 fc             	mov    -0x4(%rbp),%eax
    382c:	48 98                	cltq
    382e:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3832:	48 8d 05 27 2a 00 00 	lea    0x2a27(%rip),%rax        # 6260 <_ZL7yy_base>
    3839:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    383d:	0f bf d0             	movswl %ax,%edx
    3840:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    3844:	01 d0                	add    %edx,%eax
    3846:	48 98                	cltq
    3848:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    384c:	48 8d 05 2d 2c 00 00 	lea    0x2c2d(%rip),%rax        # 6480 <_ZL6yy_chk>
    3853:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3857:	98                   	cwtl
    3858:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    385b:	75 9a                	jne    37f7 <_ZL21yy_get_previous_statev+0x78>
    385d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    3860:	48 98                	cltq
    3862:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3866:	48 8d 05 f3 29 00 00 	lea    0x29f3(%rip),%rax        # 6260 <_ZL7yy_base>
    386d:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3871:	0f bf d0             	movswl %ax,%edx
    3874:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    3878:	01 d0                	add    %edx,%eax
    387a:	48 98                	cltq
    387c:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3880:	48 8d 05 19 2b 00 00 	lea    0x2b19(%rip),%rax        # 63a0 <_ZL6yy_nxt>
    3887:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    388b:	98                   	cwtl
    388c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    388f:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    3894:	48 8b 05 6d 59 00 00 	mov    0x596d(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    389b:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    389f:	0f 82 f7 fe ff ff    	jb     379c <_ZL21yy_get_previous_statev+0x1d>
    38a5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    38a8:	5d                   	pop    %rbp
    38a9:	c3                   	ret

00000000000038aa <_ZL16yy_try_NUL_transi>:
    38aa:	55                   	push   %rbp
    38ab:	48 89 e5             	mov    %rsp,%rbp
    38ae:	89 7d dc             	mov    %edi,-0x24(%rbp)
    38b1:	48 8b 05 50 59 00 00 	mov    0x5950(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    38b8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    38bc:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
    38c0:	8b 45 dc             	mov    -0x24(%rbp),%eax
    38c3:	48 98                	cltq
    38c5:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    38c9:	48 8d 05 d0 27 00 00 	lea    0x27d0(%rip),%rax        # 60a0 <_ZL9yy_accept>
    38d0:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    38d4:	66 85 c0             	test   %ax,%ax
    38d7:	74 48                	je     3921 <_ZL16yy_try_NUL_transi+0x77>
    38d9:	8b 45 dc             	mov    -0x24(%rbp),%eax
    38dc:	89 05 3a 59 00 00    	mov    %eax,0x593a(%rip)        # 921c <_ZL23yy_last_accepting_state>
    38e2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    38e6:	48 89 05 33 59 00 00 	mov    %rax,0x5933(%rip)        # 9220 <_ZL22yy_last_accepting_cpos>
    38ed:	eb 32                	jmp    3921 <_ZL16yy_try_NUL_transi+0x77>
    38ef:	8b 45 dc             	mov    -0x24(%rbp),%eax
    38f2:	48 98                	cltq
    38f4:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    38f8:	48 8d 05 01 2a 00 00 	lea    0x2a01(%rip),%rax        # 6300 <_ZL6yy_def>
    38ff:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3903:	98                   	cwtl
    3904:	89 45 dc             	mov    %eax,-0x24(%rbp)
    3907:	83 7d dc 3e          	cmpl   $0x3e,-0x24(%rbp)
    390b:	7e 14                	jle    3921 <_ZL16yy_try_NUL_transi+0x77>
    390d:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    3911:	48 98                	cltq
    3913:	48 8d 15 06 29 00 00 	lea    0x2906(%rip),%rdx        # 6220 <_ZL7yy_meta>
    391a:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    391e:	88 45 ff             	mov    %al,-0x1(%rbp)
    3921:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3924:	48 98                	cltq
    3926:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    392a:	48 8d 05 2f 29 00 00 	lea    0x292f(%rip),%rax        # 6260 <_ZL7yy_base>
    3931:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3935:	0f bf d0             	movswl %ax,%edx
    3938:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    393c:	01 d0                	add    %edx,%eax
    393e:	48 98                	cltq
    3940:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3944:	48 8d 05 35 2b 00 00 	lea    0x2b35(%rip),%rax        # 6480 <_ZL6yy_chk>
    394b:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    394f:	98                   	cwtl
    3950:	39 45 dc             	cmp    %eax,-0x24(%rbp)
    3953:	75 9a                	jne    38ef <_ZL16yy_try_NUL_transi+0x45>
    3955:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3958:	48 98                	cltq
    395a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    395e:	48 8d 05 fb 28 00 00 	lea    0x28fb(%rip),%rax        # 6260 <_ZL7yy_base>
    3965:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3969:	0f bf d0             	movswl %ax,%edx
    396c:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    3970:	01 d0                	add    %edx,%eax
    3972:	48 98                	cltq
    3974:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    3978:	48 8d 05 21 2a 00 00 	lea    0x2a21(%rip),%rax        # 63a0 <_ZL6yy_nxt>
    397f:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    3983:	98                   	cwtl
    3984:	89 45 dc             	mov    %eax,-0x24(%rbp)
    3987:	83 7d dc 3e          	cmpl   $0x3e,-0x24(%rbp)
    398b:	0f 94 c0             	sete   %al
    398e:	0f b6 c0             	movzbl %al,%eax
    3991:	89 45 ec             	mov    %eax,-0x14(%rbp)
    3994:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    3998:	75 05                	jne    399f <_ZL16yy_try_NUL_transi+0xf5>
    399a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    399d:	eb 05                	jmp    39a4 <_ZL16yy_try_NUL_transi+0xfa>
    399f:	b8 00 00 00 00       	mov    $0x0,%eax
    39a4:	5d                   	pop    %rbp
    39a5:	c3                   	ret

00000000000039a6 <_ZL7yyunputiPc>:
    39a6:	55                   	push   %rbp
    39a7:	48 89 e5             	mov    %rsp,%rbp
    39aa:	48 83 ec 30          	sub    $0x30,%rsp
    39ae:	89 7d dc             	mov    %edi,-0x24(%rbp)
    39b1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    39b5:	48 8b 05 4c 58 00 00 	mov    0x584c(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    39bc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    39c0:	0f b6 15 39 58 00 00 	movzbl 0x5839(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    39c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    39cb:	88 10                	mov    %dl,(%rax)
    39cd:	48 8b 05 24 58 00 00 	mov    0x5824(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    39d4:	48 8b 15 0d 58 00 00 	mov    0x580d(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    39db:	48 c1 e2 03          	shl    $0x3,%rdx
    39df:	48 01 d0             	add    %rdx,%rax
    39e2:	48 8b 00             	mov    (%rax),%rax
    39e5:	48 8b 40 08          	mov    0x8(%rax),%rax
    39e9:	48 83 c0 02          	add    $0x2,%rax
    39ed:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    39f1:	0f 83 46 01 00 00    	jae    3b3d <_ZL7yyunputiPc+0x197>
    39f7:	8b 05 07 58 00 00    	mov    0x5807(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    39fd:	83 c0 02             	add    $0x2,%eax
    3a00:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    3a03:	48 8b 05 ee 57 00 00 	mov    0x57ee(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3a0a:	48 8b 15 d7 57 00 00 	mov    0x57d7(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3a11:	48 c1 e2 03          	shl    $0x3,%rdx
    3a15:	48 01 d0             	add    %rdx,%rax
    3a18:	48 8b 00             	mov    (%rax),%rax
    3a1b:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3a1f:	48 8b 05 d2 57 00 00 	mov    0x57d2(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3a26:	48 8b 0d bb 57 00 00 	mov    0x57bb(%rip),%rcx        # 91e8 <_ZL19yy_buffer_stack_top>
    3a2d:	48 c1 e1 03          	shl    $0x3,%rcx
    3a31:	48 01 c8             	add    %rcx,%rax
    3a34:	48 8b 00             	mov    (%rax),%rax
    3a37:	8b 40 18             	mov    0x18(%rax),%eax
    3a3a:	48 98                	cltq
    3a3c:	48 83 c0 02          	add    $0x2,%rax
    3a40:	48 01 d0             	add    %rdx,%rax
    3a43:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    3a47:	48 8b 05 aa 57 00 00 	mov    0x57aa(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3a4e:	48 8b 15 93 57 00 00 	mov    0x5793(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3a55:	48 c1 e2 03          	shl    $0x3,%rdx
    3a59:	48 01 d0             	add    %rdx,%rax
    3a5c:	48 8b 00             	mov    (%rax),%rax
    3a5f:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3a63:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    3a66:	48 98                	cltq
    3a68:	48 01 d0             	add    %rdx,%rax
    3a6b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    3a6f:	eb 17                	jmp    3a88 <_ZL7yyunputiPc+0xe2>
    3a71:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
    3a76:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3a7a:	0f b6 10             	movzbl (%rax),%edx
    3a7d:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
    3a82:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3a86:	88 10                	mov    %dl,(%rax)
    3a88:	48 8b 05 69 57 00 00 	mov    0x5769(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3a8f:	48 8b 15 52 57 00 00 	mov    0x5752(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3a96:	48 c1 e2 03          	shl    $0x3,%rdx
    3a9a:	48 01 d0             	add    %rdx,%rax
    3a9d:	48 8b 00             	mov    (%rax),%rax
    3aa0:	48 8b 40 08          	mov    0x8(%rax),%rax
    3aa4:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    3aa8:	72 c7                	jb     3a71 <_ZL7yyunputiPc+0xcb>
    3aaa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3aae:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    3ab2:	48 98                	cltq
    3ab4:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    3ab8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3abc:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    3ac0:	48 98                	cltq
    3ac2:	48 01 45 d0          	add    %rax,-0x30(%rbp)
    3ac6:	48 8b 05 2b 57 00 00 	mov    0x572b(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3acd:	48 8b 15 14 57 00 00 	mov    0x5714(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3ad4:	48 c1 e2 03          	shl    $0x3,%rdx
    3ad8:	48 01 d0             	add    %rdx,%rax
    3adb:	48 8b 00             	mov    (%rax),%rax
    3ade:	8b 40 18             	mov    0x18(%rax),%eax
    3ae1:	89 05 1d 57 00 00    	mov    %eax,0x571d(%rip)        # 9204 <_ZL10yy_n_chars>
    3ae7:	48 8b 05 0a 57 00 00 	mov    0x570a(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3aee:	48 8b 15 f3 56 00 00 	mov    0x56f3(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3af5:	48 c1 e2 03          	shl    $0x3,%rdx
    3af9:	48 01 d0             	add    %rdx,%rax
    3afc:	48 8b 00             	mov    (%rax),%rax
    3aff:	8b 15 ff 56 00 00    	mov    0x56ff(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    3b05:	89 50 1c             	mov    %edx,0x1c(%rax)
    3b08:	48 8b 05 e9 56 00 00 	mov    0x56e9(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3b0f:	48 8b 15 d2 56 00 00 	mov    0x56d2(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3b16:	48 c1 e2 03          	shl    $0x3,%rdx
    3b1a:	48 01 d0             	add    %rdx,%rax
    3b1d:	48 8b 00             	mov    (%rax),%rax
    3b20:	48 8b 40 08          	mov    0x8(%rax),%rax
    3b24:	48 83 c0 02          	add    $0x2,%rax
    3b28:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    3b2c:	73 0f                	jae    3b3d <_ZL7yyunputiPc+0x197>
    3b2e:	48 8d 05 7b 2c 00 00 	lea    0x2c7b(%rip),%rax        # 67b0 <_ZL6yy_chk+0x330>
    3b35:	48 89 c7             	mov    %rax,%rdi
    3b38:	e8 3f 0b 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    3b3d:	8b 45 dc             	mov    -0x24(%rbp),%eax
    3b40:	89 c2                	mov    %eax,%edx
    3b42:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
    3b47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b4b:	88 10                	mov    %dl,(%rax)
    3b4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    3b51:	48 89 05 78 56 00 00 	mov    %rax,0x5678(%rip)        # 91d0 <yytext>
    3b58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b5c:	0f b6 00             	movzbl (%rax),%eax
    3b5f:	88 05 9b 56 00 00    	mov    %al,0x569b(%rip)        # 9200 <_ZL12yy_hold_char>
    3b65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3b69:	48 89 05 98 56 00 00 	mov    %rax,0x5698(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3b70:	90                   	nop
    3b71:	c9                   	leave
    3b72:	c3                   	ret

0000000000003b73 <_ZL7yyinputv>:
    3b73:	55                   	push   %rbp
    3b74:	48 89 e5             	mov    %rsp,%rbp
    3b77:	48 83 ec 10          	sub    $0x10,%rsp
    3b7b:	48 8b 05 86 56 00 00 	mov    0x5686(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3b82:	0f b6 15 77 56 00 00 	movzbl 0x5677(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    3b89:	88 10                	mov    %dl,(%rax)
    3b8b:	48 8b 05 76 56 00 00 	mov    0x5676(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3b92:	0f b6 00             	movzbl (%rax),%eax
    3b95:	84 c0                	test   %al,%al
    3b97:	0f 85 ac 00 00 00    	jne    3c49 <_ZL7yyinputv+0xd6>
    3b9d:	48 8b 05 54 56 00 00 	mov    0x5654(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3ba4:	48 8b 15 3d 56 00 00 	mov    0x563d(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3bab:	48 c1 e2 03          	shl    $0x3,%rdx
    3baf:	48 01 d0             	add    %rdx,%rax
    3bb2:	48 8b 00             	mov    (%rax),%rax
    3bb5:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3bb9:	8b 05 45 56 00 00    	mov    0x5645(%rip),%eax        # 9204 <_ZL10yy_n_chars>
    3bbf:	48 98                	cltq
    3bc1:	48 01 d0             	add    %rdx,%rax
    3bc4:	48 8b 15 3d 56 00 00 	mov    0x563d(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    3bcb:	48 39 c2             	cmp    %rax,%rdx
    3bce:	73 0c                	jae    3bdc <_ZL7yyinputv+0x69>
    3bd0:	48 8b 05 31 56 00 00 	mov    0x5631(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3bd7:	c6 00 00             	movb   $0x0,(%rax)
    3bda:	eb 6d                	jmp    3c49 <_ZL7yyinputv+0xd6>
    3bdc:	48 8b 15 25 56 00 00 	mov    0x5625(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    3be3:	48 8b 05 e6 55 00 00 	mov    0x55e6(%rip),%rax        # 91d0 <yytext>
    3bea:	48 29 c2             	sub    %rax,%rdx
    3bed:	89 55 fc             	mov    %edx,-0x4(%rbp)
    3bf0:	48 8b 05 11 56 00 00 	mov    0x5611(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3bf7:	48 83 c0 01          	add    $0x1,%rax
    3bfb:	48 89 05 06 56 00 00 	mov    %rax,0x5606(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3c02:	e8 f4 f4 ff ff       	call   30fb <_ZL18yy_get_next_bufferv>
    3c07:	83 f8 02             	cmp    $0x2,%eax
    3c0a:	74 10                	je     3c1c <_ZL7yyinputv+0xa9>
    3c0c:	83 f8 02             	cmp    $0x2,%eax
    3c0f:	7f 38                	jg     3c49 <_ZL7yyinputv+0xd6>
    3c11:	85 c0                	test   %eax,%eax
    3c13:	74 1d                	je     3c32 <_ZL7yyinputv+0xbf>
    3c15:	83 f8 01             	cmp    $0x1,%eax
    3c18:	74 11                	je     3c2b <_ZL7yyinputv+0xb8>
    3c1a:	eb 2d                	jmp    3c49 <_ZL7yyinputv+0xd6>
    3c1c:	48 8b 05 95 55 00 00 	mov    0x5595(%rip),%rax        # 91b8 <yyin>
    3c23:	48 89 c7             	mov    %rax,%rdi
    3c26:	e8 5f 00 00 00       	call   3c8a <_Z9yyrestartP8_IO_FILE>
    3c2b:	b8 00 00 00 00       	mov    $0x0,%eax
    3c30:	eb 56                	jmp    3c88 <_ZL7yyinputv+0x115>
    3c32:	48 8b 15 97 55 00 00 	mov    0x5597(%rip),%rdx        # 91d0 <yytext>
    3c39:	8b 45 fc             	mov    -0x4(%rbp),%eax
    3c3c:	48 98                	cltq
    3c3e:	48 01 d0             	add    %rdx,%rax
    3c41:	48 89 05 c0 55 00 00 	mov    %rax,0x55c0(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3c48:	90                   	nop
    3c49:	48 8b 05 b8 55 00 00 	mov    0x55b8(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3c50:	0f b6 00             	movzbl (%rax),%eax
    3c53:	0f b6 c0             	movzbl %al,%eax
    3c56:	89 45 f8             	mov    %eax,-0x8(%rbp)
    3c59:	48 8b 05 a8 55 00 00 	mov    0x55a8(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3c60:	c6 00 00             	movb   $0x0,(%rax)
    3c63:	48 8b 05 9e 55 00 00 	mov    0x559e(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3c6a:	48 83 c0 01          	add    $0x1,%rax
    3c6e:	48 89 05 93 55 00 00 	mov    %rax,0x5593(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3c75:	48 8b 05 8c 55 00 00 	mov    0x558c(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3c7c:	0f b6 00             	movzbl (%rax),%eax
    3c7f:	88 05 7b 55 00 00    	mov    %al,0x557b(%rip)        # 9200 <_ZL12yy_hold_char>
    3c85:	8b 45 f8             	mov    -0x8(%rbp),%eax
    3c88:	c9                   	leave
    3c89:	c3                   	ret

0000000000003c8a <_Z9yyrestartP8_IO_FILE>:
    3c8a:	55                   	push   %rbp
    3c8b:	48 89 e5             	mov    %rsp,%rbp
    3c8e:	53                   	push   %rbx
    3c8f:	48 83 ec 18          	sub    $0x18,%rsp
    3c93:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3c97:	48 8b 05 5a 55 00 00 	mov    0x555a(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3c9e:	48 85 c0             	test   %rax,%rax
    3ca1:	74 1a                	je     3cbd <_Z9yyrestartP8_IO_FILE+0x33>
    3ca3:	48 8b 05 4e 55 00 00 	mov    0x554e(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3caa:	48 8b 15 37 55 00 00 	mov    0x5537(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3cb1:	48 c1 e2 03          	shl    $0x3,%rdx
    3cb5:	48 01 d0             	add    %rdx,%rax
    3cb8:	48 8b 00             	mov    (%rax),%rax
    3cbb:	eb 05                	jmp    3cc2 <_Z9yyrestartP8_IO_FILE+0x38>
    3cbd:	b8 00 00 00 00       	mov    $0x0,%eax
    3cc2:	48 85 c0             	test   %rax,%rax
    3cc5:	75 32                	jne    3cf9 <_Z9yyrestartP8_IO_FILE+0x6f>
    3cc7:	e8 76 06 00 00       	call   4342 <_ZL21yyensure_buffer_stackv>
    3ccc:	48 8b 05 e5 54 00 00 	mov    0x54e5(%rip),%rax        # 91b8 <yyin>
    3cd3:	48 8b 15 1e 55 00 00 	mov    0x551e(%rip),%rdx        # 91f8 <_ZL15yy_buffer_stack>
    3cda:	48 8b 0d 07 55 00 00 	mov    0x5507(%rip),%rcx        # 91e8 <_ZL19yy_buffer_stack_top>
    3ce1:	48 c1 e1 03          	shl    $0x3,%rcx
    3ce5:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
    3ce9:	be 00 40 00 00       	mov    $0x4000,%esi
    3cee:	48 89 c7             	mov    %rax,%rdi
    3cf1:	e8 ce 01 00 00       	call   3ec4 <_Z16yy_create_bufferP8_IO_FILEi>
    3cf6:	48 89 03             	mov    %rax,(%rbx)
    3cf9:	48 8b 05 f8 54 00 00 	mov    0x54f8(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d00:	48 85 c0             	test   %rax,%rax
    3d03:	74 1a                	je     3d1f <_Z9yyrestartP8_IO_FILE+0x95>
    3d05:	48 8b 05 ec 54 00 00 	mov    0x54ec(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d0c:	48 8b 15 d5 54 00 00 	mov    0x54d5(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3d13:	48 c1 e2 03          	shl    $0x3,%rdx
    3d17:	48 01 d0             	add    %rdx,%rax
    3d1a:	48 8b 00             	mov    (%rax),%rax
    3d1d:	eb 05                	jmp    3d24 <_Z9yyrestartP8_IO_FILE+0x9a>
    3d1f:	b8 00 00 00 00       	mov    $0x0,%eax
    3d24:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3d28:	48 89 d6             	mov    %rdx,%rsi
    3d2b:	48 89 c7             	mov    %rax,%rdi
    3d2e:	e8 b6 02 00 00       	call   3fe9 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>
    3d33:	e8 01 01 00 00       	call   3e39 <_ZL20yy_load_buffer_statev>
    3d38:	90                   	nop
    3d39:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    3d3d:	c9                   	leave
    3d3e:	c3                   	ret

0000000000003d3f <_Z19yy_switch_to_bufferP15yy_buffer_state>:
    3d3f:	55                   	push   %rbp
    3d40:	48 89 e5             	mov    %rsp,%rbp
    3d43:	48 83 ec 10          	sub    $0x10,%rsp
    3d47:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3d4b:	e8 f2 05 00 00       	call   4342 <_ZL21yyensure_buffer_stackv>
    3d50:	48 8b 05 a1 54 00 00 	mov    0x54a1(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d57:	48 85 c0             	test   %rax,%rax
    3d5a:	74 1a                	je     3d76 <_Z19yy_switch_to_bufferP15yy_buffer_state+0x37>
    3d5c:	48 8b 05 95 54 00 00 	mov    0x5495(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d63:	48 8b 15 7e 54 00 00 	mov    0x547e(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3d6a:	48 c1 e2 03          	shl    $0x3,%rdx
    3d6e:	48 01 d0             	add    %rdx,%rax
    3d71:	48 8b 00             	mov    (%rax),%rax
    3d74:	eb 05                	jmp    3d7b <_Z19yy_switch_to_bufferP15yy_buffer_state+0x3c>
    3d76:	b8 00 00 00 00       	mov    $0x0,%eax
    3d7b:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    3d7f:	0f 84 b1 00 00 00    	je     3e36 <_Z19yy_switch_to_bufferP15yy_buffer_state+0xf7>
    3d85:	48 8b 05 6c 54 00 00 	mov    0x546c(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d8c:	48 85 c0             	test   %rax,%rax
    3d8f:	74 1a                	je     3dab <_Z19yy_switch_to_bufferP15yy_buffer_state+0x6c>
    3d91:	48 8b 05 60 54 00 00 	mov    0x5460(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3d98:	48 8b 15 49 54 00 00 	mov    0x5449(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3d9f:	48 c1 e2 03          	shl    $0x3,%rdx
    3da3:	48 01 d0             	add    %rdx,%rax
    3da6:	48 8b 00             	mov    (%rax),%rax
    3da9:	eb 05                	jmp    3db0 <_Z19yy_switch_to_bufferP15yy_buffer_state+0x71>
    3dab:	b8 00 00 00 00       	mov    $0x0,%eax
    3db0:	48 85 c0             	test   %rax,%rax
    3db3:	74 54                	je     3e09 <_Z19yy_switch_to_bufferP15yy_buffer_state+0xca>
    3db5:	48 8b 05 4c 54 00 00 	mov    0x544c(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3dbc:	0f b6 15 3d 54 00 00 	movzbl 0x543d(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    3dc3:	88 10                	mov    %dl,(%rax)
    3dc5:	48 8b 05 2c 54 00 00 	mov    0x542c(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3dcc:	48 8b 15 15 54 00 00 	mov    0x5415(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3dd3:	48 c1 e2 03          	shl    $0x3,%rdx
    3dd7:	48 01 d0             	add    %rdx,%rax
    3dda:	48 8b 00             	mov    (%rax),%rax
    3ddd:	48 8b 15 24 54 00 00 	mov    0x5424(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    3de4:	48 89 50 10          	mov    %rdx,0x10(%rax)
    3de8:	48 8b 05 09 54 00 00 	mov    0x5409(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3def:	48 8b 15 f2 53 00 00 	mov    0x53f2(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3df6:	48 c1 e2 03          	shl    $0x3,%rdx
    3dfa:	48 01 d0             	add    %rdx,%rax
    3dfd:	48 8b 00             	mov    (%rax),%rax
    3e00:	8b 15 fe 53 00 00    	mov    0x53fe(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    3e06:	89 50 1c             	mov    %edx,0x1c(%rax)
    3e09:	48 8b 05 e8 53 00 00 	mov    0x53e8(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3e10:	48 8b 15 d1 53 00 00 	mov    0x53d1(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3e17:	48 c1 e2 03          	shl    $0x3,%rdx
    3e1b:	48 01 c2             	add    %rax,%rdx
    3e1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3e22:	48 89 02             	mov    %rax,(%rdx)
    3e25:	e8 0f 00 00 00       	call   3e39 <_ZL20yy_load_buffer_statev>
    3e2a:	c7 05 e4 53 00 00 01 	movl   $0x1,0x53e4(%rip)        # 9218 <_ZL27yy_did_buffer_switch_on_eof>
    3e31:	00 00 00 
    3e34:	eb 01                	jmp    3e37 <_Z19yy_switch_to_bufferP15yy_buffer_state+0xf8>
    3e36:	90                   	nop
    3e37:	c9                   	leave
    3e38:	c3                   	ret

0000000000003e39 <_ZL20yy_load_buffer_statev>:
    3e39:	55                   	push   %rbp
    3e3a:	48 89 e5             	mov    %rsp,%rbp
    3e3d:	48 8b 05 b4 53 00 00 	mov    0x53b4(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3e44:	48 8b 15 9d 53 00 00 	mov    0x539d(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3e4b:	48 c1 e2 03          	shl    $0x3,%rdx
    3e4f:	48 01 d0             	add    %rdx,%rax
    3e52:	48 8b 00             	mov    (%rax),%rax
    3e55:	8b 40 1c             	mov    0x1c(%rax),%eax
    3e58:	89 05 a6 53 00 00    	mov    %eax,0x53a6(%rip)        # 9204 <_ZL10yy_n_chars>
    3e5e:	48 8b 05 93 53 00 00 	mov    0x5393(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3e65:	48 8b 15 7c 53 00 00 	mov    0x537c(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3e6c:	48 c1 e2 03          	shl    $0x3,%rdx
    3e70:	48 01 d0             	add    %rdx,%rax
    3e73:	48 8b 00             	mov    (%rax),%rax
    3e76:	48 8b 40 10          	mov    0x10(%rax),%rax
    3e7a:	48 89 05 87 53 00 00 	mov    %rax,0x5387(%rip)        # 9208 <_ZL10yy_c_buf_p>
    3e81:	48 8b 05 80 53 00 00 	mov    0x5380(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3e88:	48 89 05 41 53 00 00 	mov    %rax,0x5341(%rip)        # 91d0 <yytext>
    3e8f:	48 8b 05 62 53 00 00 	mov    0x5362(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3e96:	48 8b 15 4b 53 00 00 	mov    0x534b(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3e9d:	48 c1 e2 03          	shl    $0x3,%rdx
    3ea1:	48 01 d0             	add    %rdx,%rax
    3ea4:	48 8b 00             	mov    (%rax),%rax
    3ea7:	48 8b 00             	mov    (%rax),%rax
    3eaa:	48 89 05 07 53 00 00 	mov    %rax,0x5307(%rip)        # 91b8 <yyin>
    3eb1:	48 8b 05 50 53 00 00 	mov    0x5350(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    3eb8:	0f b6 00             	movzbl (%rax),%eax
    3ebb:	88 05 3f 53 00 00    	mov    %al,0x533f(%rip)        # 9200 <_ZL12yy_hold_char>
    3ec1:	90                   	nop
    3ec2:	5d                   	pop    %rbp
    3ec3:	c3                   	ret

0000000000003ec4 <_Z16yy_create_bufferP8_IO_FILEi>:
    3ec4:	55                   	push   %rbp
    3ec5:	48 89 e5             	mov    %rsp,%rbp
    3ec8:	48 83 ec 20          	sub    $0x20,%rsp
    3ecc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3ed0:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    3ed3:	bf 40 00 00 00       	mov    $0x40,%edi
    3ed8:	e8 89 09 00 00       	call   4866 <_Z7yyallocm>
    3edd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3ee1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    3ee6:	75 0f                	jne    3ef7 <_Z16yy_create_bufferP8_IO_FILEi+0x33>
    3ee8:	48 8d 05 e1 28 00 00 	lea    0x28e1(%rip),%rax        # 67d0 <_ZL6yy_chk+0x350>
    3eef:	48 89 c7             	mov    %rax,%rdi
    3ef2:	e8 85 07 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    3ef7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3efb:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    3efe:	89 50 18             	mov    %edx,0x18(%rax)
    3f01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f05:	8b 40 18             	mov    0x18(%rax),%eax
    3f08:	83 c0 02             	add    $0x2,%eax
    3f0b:	48 98                	cltq
    3f0d:	48 89 c7             	mov    %rax,%rdi
    3f10:	e8 51 09 00 00       	call   4866 <_Z7yyallocm>
    3f15:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    3f19:	48 89 42 08          	mov    %rax,0x8(%rdx)
    3f1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f21:	48 8b 40 08          	mov    0x8(%rax),%rax
    3f25:	48 85 c0             	test   %rax,%rax
    3f28:	75 0f                	jne    3f39 <_Z16yy_create_bufferP8_IO_FILEi+0x75>
    3f2a:	48 8d 05 9f 28 00 00 	lea    0x289f(%rip),%rax        # 67d0 <_ZL6yy_chk+0x350>
    3f31:	48 89 c7             	mov    %rax,%rdi
    3f34:	e8 43 07 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    3f39:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f3d:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%rax)
    3f44:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3f48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f4c:	48 89 d6             	mov    %rdx,%rsi
    3f4f:	48 89 c7             	mov    %rax,%rdi
    3f52:	e8 92 00 00 00       	call   3fe9 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>
    3f57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3f5b:	c9                   	leave
    3f5c:	c3                   	ret

0000000000003f5d <_Z16yy_delete_bufferP15yy_buffer_state>:
    3f5d:	55                   	push   %rbp
    3f5e:	48 89 e5             	mov    %rsp,%rbp
    3f61:	48 83 ec 10          	sub    $0x10,%rsp
    3f65:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3f69:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    3f6e:	74 76                	je     3fe6 <_Z16yy_delete_bufferP15yy_buffer_state+0x89>
    3f70:	48 8b 05 81 52 00 00 	mov    0x5281(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3f77:	48 85 c0             	test   %rax,%rax
    3f7a:	74 1a                	je     3f96 <_Z16yy_delete_bufferP15yy_buffer_state+0x39>
    3f7c:	48 8b 05 75 52 00 00 	mov    0x5275(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3f83:	48 8b 15 5e 52 00 00 	mov    0x525e(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3f8a:	48 c1 e2 03          	shl    $0x3,%rdx
    3f8e:	48 01 d0             	add    %rdx,%rax
    3f91:	48 8b 00             	mov    (%rax),%rax
    3f94:	eb 05                	jmp    3f9b <_Z16yy_delete_bufferP15yy_buffer_state+0x3e>
    3f96:	b8 00 00 00 00       	mov    $0x0,%eax
    3f9b:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    3f9f:	75 1c                	jne    3fbd <_Z16yy_delete_bufferP15yy_buffer_state+0x60>
    3fa1:	48 8b 05 50 52 00 00 	mov    0x5250(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    3fa8:	48 8b 15 39 52 00 00 	mov    0x5239(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    3faf:	48 c1 e2 03          	shl    $0x3,%rdx
    3fb3:	48 01 d0             	add    %rdx,%rax
    3fb6:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    3fbd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fc1:	8b 40 20             	mov    0x20(%rax),%eax
    3fc4:	85 c0                	test   %eax,%eax
    3fc6:	74 10                	je     3fd8 <_Z16yy_delete_bufferP15yy_buffer_state+0x7b>
    3fc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fcc:	48 8b 40 08          	mov    0x8(%rax),%rax
    3fd0:	48 89 c7             	mov    %rax,%rdi
    3fd3:	e8 cd 08 00 00       	call   48a5 <_Z6yyfreePv>
    3fd8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3fdc:	48 89 c7             	mov    %rax,%rdi
    3fdf:	e8 c1 08 00 00       	call   48a5 <_Z6yyfreePv>
    3fe4:	eb 01                	jmp    3fe7 <_Z16yy_delete_bufferP15yy_buffer_state+0x8a>
    3fe6:	90                   	nop
    3fe7:	c9                   	leave
    3fe8:	c3                   	ret

0000000000003fe9 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>:
    3fe9:	55                   	push   %rbp
    3fea:	48 89 e5             	mov    %rsp,%rbp
    3fed:	48 83 ec 20          	sub    $0x20,%rsp
    3ff1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3ff5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    3ff9:	e8 42 e0 ff ff       	call   2040 <__errno_location@plt>
    3ffe:	8b 00                	mov    (%rax),%eax
    4000:	89 45 fc             	mov    %eax,-0x4(%rbp)
    4003:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4007:	48 89 c7             	mov    %rax,%rdi
    400a:	e8 9b 00 00 00       	call   40aa <_Z15yy_flush_bufferP15yy_buffer_state>
    400f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4013:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4017:	48 89 10             	mov    %rdx,(%rax)
    401a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    401e:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%rax)
    4025:	48 8b 05 cc 51 00 00 	mov    0x51cc(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    402c:	48 85 c0             	test   %rax,%rax
    402f:	74 1a                	je     404b <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x62>
    4031:	48 8b 05 c0 51 00 00 	mov    0x51c0(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4038:	48 8b 15 a9 51 00 00 	mov    0x51a9(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    403f:	48 c1 e2 03          	shl    $0x3,%rdx
    4043:	48 01 d0             	add    %rdx,%rax
    4046:	48 8b 00             	mov    (%rax),%rax
    4049:	eb 05                	jmp    4050 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x67>
    404b:	b8 00 00 00 00       	mov    $0x0,%eax
    4050:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    4054:	74 16                	je     406c <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x83>
    4056:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    405a:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%rax)
    4061:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4065:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%rax)
    406c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4071:	74 1e                	je     4091 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xa8>
    4073:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4077:	48 89 c7             	mov    %rax,%rdi
    407a:	e8 a1 e0 ff ff       	call   2120 <fileno@plt>
    407f:	89 c7                	mov    %eax,%edi
    4081:	e8 ea df ff ff       	call   2070 <isatty@plt>
    4086:	85 c0                	test   %eax,%eax
    4088:	7e 07                	jle    4091 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xa8>
    408a:	ba 01 00 00 00       	mov    $0x1,%edx
    408f:	eb 05                	jmp    4096 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xad>
    4091:	ba 00 00 00 00       	mov    $0x0,%edx
    4096:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    409a:	89 50 24             	mov    %edx,0x24(%rax)
    409d:	e8 9e df ff ff       	call   2040 <__errno_location@plt>
    40a2:	8b 55 fc             	mov    -0x4(%rbp),%edx
    40a5:	89 10                	mov    %edx,(%rax)
    40a7:	90                   	nop
    40a8:	c9                   	leave
    40a9:	c3                   	ret

00000000000040aa <_Z15yy_flush_bufferP15yy_buffer_state>:
    40aa:	55                   	push   %rbp
    40ab:	48 89 e5             	mov    %rsp,%rbp
    40ae:	48 83 ec 08          	sub    $0x8,%rsp
    40b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    40b6:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    40bb:	0f 84 83 00 00 00    	je     4144 <_Z15yy_flush_bufferP15yy_buffer_state+0x9a>
    40c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40c5:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%rax)
    40cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40d0:	48 8b 40 08          	mov    0x8(%rax),%rax
    40d4:	c6 00 00             	movb   $0x0,(%rax)
    40d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40db:	48 8b 40 08          	mov    0x8(%rax),%rax
    40df:	48 83 c0 01          	add    $0x1,%rax
    40e3:	c6 00 00             	movb   $0x0,(%rax)
    40e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40ea:	48 8b 50 08          	mov    0x8(%rax),%rdx
    40ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40f2:	48 89 50 10          	mov    %rdx,0x10(%rax)
    40f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    40fa:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%rax)
    4101:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4105:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%rax)
    410c:	48 8b 05 e5 50 00 00 	mov    0x50e5(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4113:	48 85 c0             	test   %rax,%rax
    4116:	74 1a                	je     4132 <_Z15yy_flush_bufferP15yy_buffer_state+0x88>
    4118:	48 8b 05 d9 50 00 00 	mov    0x50d9(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    411f:	48 8b 15 c2 50 00 00 	mov    0x50c2(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4126:	48 c1 e2 03          	shl    $0x3,%rdx
    412a:	48 01 d0             	add    %rdx,%rax
    412d:	48 8b 00             	mov    (%rax),%rax
    4130:	eb 05                	jmp    4137 <_Z15yy_flush_bufferP15yy_buffer_state+0x8d>
    4132:	b8 00 00 00 00       	mov    $0x0,%eax
    4137:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    413b:	75 08                	jne    4145 <_Z15yy_flush_bufferP15yy_buffer_state+0x9b>
    413d:	e8 f7 fc ff ff       	call   3e39 <_ZL20yy_load_buffer_statev>
    4142:	eb 01                	jmp    4145 <_Z15yy_flush_bufferP15yy_buffer_state+0x9b>
    4144:	90                   	nop
    4145:	c9                   	leave
    4146:	c3                   	ret

0000000000004147 <_Z19yypush_buffer_stateP15yy_buffer_state>:
    4147:	55                   	push   %rbp
    4148:	48 89 e5             	mov    %rsp,%rbp
    414b:	48 83 ec 10          	sub    $0x10,%rsp
    414f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4153:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4158:	0f 84 f8 00 00 00    	je     4256 <_Z19yypush_buffer_stateP15yy_buffer_state+0x10f>
    415e:	e8 df 01 00 00       	call   4342 <_ZL21yyensure_buffer_stackv>
    4163:	48 8b 05 8e 50 00 00 	mov    0x508e(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    416a:	48 85 c0             	test   %rax,%rax
    416d:	74 1a                	je     4189 <_Z19yypush_buffer_stateP15yy_buffer_state+0x42>
    416f:	48 8b 05 82 50 00 00 	mov    0x5082(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4176:	48 8b 15 6b 50 00 00 	mov    0x506b(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    417d:	48 c1 e2 03          	shl    $0x3,%rdx
    4181:	48 01 d0             	add    %rdx,%rax
    4184:	48 8b 00             	mov    (%rax),%rax
    4187:	eb 05                	jmp    418e <_Z19yypush_buffer_stateP15yy_buffer_state+0x47>
    4189:	b8 00 00 00 00       	mov    $0x0,%eax
    418e:	48 85 c0             	test   %rax,%rax
    4191:	74 54                	je     41e7 <_Z19yypush_buffer_stateP15yy_buffer_state+0xa0>
    4193:	48 8b 05 6e 50 00 00 	mov    0x506e(%rip),%rax        # 9208 <_ZL10yy_c_buf_p>
    419a:	0f b6 15 5f 50 00 00 	movzbl 0x505f(%rip),%edx        # 9200 <_ZL12yy_hold_char>
    41a1:	88 10                	mov    %dl,(%rax)
    41a3:	48 8b 05 4e 50 00 00 	mov    0x504e(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    41aa:	48 8b 15 37 50 00 00 	mov    0x5037(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    41b1:	48 c1 e2 03          	shl    $0x3,%rdx
    41b5:	48 01 d0             	add    %rdx,%rax
    41b8:	48 8b 00             	mov    (%rax),%rax
    41bb:	48 8b 15 46 50 00 00 	mov    0x5046(%rip),%rdx        # 9208 <_ZL10yy_c_buf_p>
    41c2:	48 89 50 10          	mov    %rdx,0x10(%rax)
    41c6:	48 8b 05 2b 50 00 00 	mov    0x502b(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    41cd:	48 8b 15 14 50 00 00 	mov    0x5014(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    41d4:	48 c1 e2 03          	shl    $0x3,%rdx
    41d8:	48 01 d0             	add    %rdx,%rax
    41db:	48 8b 00             	mov    (%rax),%rax
    41de:	8b 15 20 50 00 00    	mov    0x5020(%rip),%edx        # 9204 <_ZL10yy_n_chars>
    41e4:	89 50 1c             	mov    %edx,0x1c(%rax)
    41e7:	48 8b 05 0a 50 00 00 	mov    0x500a(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    41ee:	48 85 c0             	test   %rax,%rax
    41f1:	74 1a                	je     420d <_Z19yypush_buffer_stateP15yy_buffer_state+0xc6>
    41f3:	48 8b 05 fe 4f 00 00 	mov    0x4ffe(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    41fa:	48 8b 15 e7 4f 00 00 	mov    0x4fe7(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4201:	48 c1 e2 03          	shl    $0x3,%rdx
    4205:	48 01 d0             	add    %rdx,%rax
    4208:	48 8b 00             	mov    (%rax),%rax
    420b:	eb 05                	jmp    4212 <_Z19yypush_buffer_stateP15yy_buffer_state+0xcb>
    420d:	b8 00 00 00 00       	mov    $0x0,%eax
    4212:	48 85 c0             	test   %rax,%rax
    4215:	74 12                	je     4229 <_Z19yypush_buffer_stateP15yy_buffer_state+0xe2>
    4217:	48 8b 05 ca 4f 00 00 	mov    0x4fca(%rip),%rax        # 91e8 <_ZL19yy_buffer_stack_top>
    421e:	48 83 c0 01          	add    $0x1,%rax
    4222:	48 89 05 bf 4f 00 00 	mov    %rax,0x4fbf(%rip)        # 91e8 <_ZL19yy_buffer_stack_top>
    4229:	48 8b 05 c8 4f 00 00 	mov    0x4fc8(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4230:	48 8b 15 b1 4f 00 00 	mov    0x4fb1(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4237:	48 c1 e2 03          	shl    $0x3,%rdx
    423b:	48 01 c2             	add    %rax,%rdx
    423e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4242:	48 89 02             	mov    %rax,(%rdx)
    4245:	e8 ef fb ff ff       	call   3e39 <_ZL20yy_load_buffer_statev>
    424a:	c7 05 c4 4f 00 00 01 	movl   $0x1,0x4fc4(%rip)        # 9218 <_ZL27yy_did_buffer_switch_on_eof>
    4251:	00 00 00 
    4254:	eb 01                	jmp    4257 <_Z19yypush_buffer_stateP15yy_buffer_state+0x110>
    4256:	90                   	nop
    4257:	c9                   	leave
    4258:	c3                   	ret

0000000000004259 <_Z18yypop_buffer_statev>:
    4259:	55                   	push   %rbp
    425a:	48 89 e5             	mov    %rsp,%rbp
    425d:	48 8b 05 94 4f 00 00 	mov    0x4f94(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4264:	48 85 c0             	test   %rax,%rax
    4267:	74 1a                	je     4283 <_Z18yypop_buffer_statev+0x2a>
    4269:	48 8b 05 88 4f 00 00 	mov    0x4f88(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4270:	48 8b 15 71 4f 00 00 	mov    0x4f71(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4277:	48 c1 e2 03          	shl    $0x3,%rdx
    427b:	48 01 d0             	add    %rdx,%rax
    427e:	48 8b 00             	mov    (%rax),%rax
    4281:	eb 05                	jmp    4288 <_Z18yypop_buffer_statev+0x2f>
    4283:	b8 00 00 00 00       	mov    $0x0,%eax
    4288:	48 85 c0             	test   %rax,%rax
    428b:	0f 84 ae 00 00 00    	je     433f <_Z18yypop_buffer_statev+0xe6>
    4291:	48 8b 05 60 4f 00 00 	mov    0x4f60(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4298:	48 85 c0             	test   %rax,%rax
    429b:	74 1a                	je     42b7 <_Z18yypop_buffer_statev+0x5e>
    429d:	48 8b 05 54 4f 00 00 	mov    0x4f54(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    42a4:	48 8b 15 3d 4f 00 00 	mov    0x4f3d(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    42ab:	48 c1 e2 03          	shl    $0x3,%rdx
    42af:	48 01 d0             	add    %rdx,%rax
    42b2:	48 8b 00             	mov    (%rax),%rax
    42b5:	eb 05                	jmp    42bc <_Z18yypop_buffer_statev+0x63>
    42b7:	b8 00 00 00 00       	mov    $0x0,%eax
    42bc:	48 89 c7             	mov    %rax,%rdi
    42bf:	e8 99 fc ff ff       	call   3f5d <_Z16yy_delete_bufferP15yy_buffer_state>
    42c4:	48 8b 05 2d 4f 00 00 	mov    0x4f2d(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    42cb:	48 8b 15 16 4f 00 00 	mov    0x4f16(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    42d2:	48 c1 e2 03          	shl    $0x3,%rdx
    42d6:	48 01 d0             	add    %rdx,%rax
    42d9:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    42e0:	48 8b 05 01 4f 00 00 	mov    0x4f01(%rip),%rax        # 91e8 <_ZL19yy_buffer_stack_top>
    42e7:	48 85 c0             	test   %rax,%rax
    42ea:	74 12                	je     42fe <_Z18yypop_buffer_statev+0xa5>
    42ec:	48 8b 05 f5 4e 00 00 	mov    0x4ef5(%rip),%rax        # 91e8 <_ZL19yy_buffer_stack_top>
    42f3:	48 83 e8 01          	sub    $0x1,%rax
    42f7:	48 89 05 ea 4e 00 00 	mov    %rax,0x4eea(%rip)        # 91e8 <_ZL19yy_buffer_stack_top>
    42fe:	48 8b 05 f3 4e 00 00 	mov    0x4ef3(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4305:	48 85 c0             	test   %rax,%rax
    4308:	74 1a                	je     4324 <_Z18yypop_buffer_statev+0xcb>
    430a:	48 8b 05 e7 4e 00 00 	mov    0x4ee7(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4311:	48 8b 15 d0 4e 00 00 	mov    0x4ed0(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4318:	48 c1 e2 03          	shl    $0x3,%rdx
    431c:	48 01 d0             	add    %rdx,%rax
    431f:	48 8b 00             	mov    (%rax),%rax
    4322:	eb 05                	jmp    4329 <_Z18yypop_buffer_statev+0xd0>
    4324:	b8 00 00 00 00       	mov    $0x0,%eax
    4329:	48 85 c0             	test   %rax,%rax
    432c:	74 12                	je     4340 <_Z18yypop_buffer_statev+0xe7>
    432e:	e8 06 fb ff ff       	call   3e39 <_ZL20yy_load_buffer_statev>
    4333:	c7 05 db 4e 00 00 01 	movl   $0x1,0x4edb(%rip)        # 9218 <_ZL27yy_did_buffer_switch_on_eof>
    433a:	00 00 00 
    433d:	eb 01                	jmp    4340 <_Z18yypop_buffer_statev+0xe7>
    433f:	90                   	nop
    4340:	5d                   	pop    %rbp
    4341:	c3                   	ret

0000000000004342 <_ZL21yyensure_buffer_stackv>:
    4342:	55                   	push   %rbp
    4343:	48 89 e5             	mov    %rsp,%rbp
    4346:	48 83 ec 10          	sub    $0x10,%rsp
    434a:	48 8b 05 a7 4e 00 00 	mov    0x4ea7(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4351:	48 85 c0             	test   %rax,%rax
    4354:	75 75                	jne    43cb <_ZL21yyensure_buffer_stackv+0x89>
    4356:	48 c7 45 f0 01 00 00 	movq   $0x1,-0x10(%rbp)
    435d:	00 
    435e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4362:	48 c1 e0 03          	shl    $0x3,%rax
    4366:	48 89 c7             	mov    %rax,%rdi
    4369:	e8 f8 04 00 00       	call   4866 <_Z7yyallocm>
    436e:	48 89 05 83 4e 00 00 	mov    %rax,0x4e83(%rip)        # 91f8 <_ZL15yy_buffer_stack>
    4375:	48 8b 05 7c 4e 00 00 	mov    0x4e7c(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    437c:	48 85 c0             	test   %rax,%rax
    437f:	75 0f                	jne    4390 <_ZL21yyensure_buffer_stackv+0x4e>
    4381:	48 8d 05 78 24 00 00 	lea    0x2478(%rip),%rax        # 6800 <_ZL6yy_chk+0x380>
    4388:	48 89 c7             	mov    %rax,%rdi
    438b:	e8 ec 02 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    4390:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4394:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    439b:	00 
    439c:	48 8b 05 55 4e 00 00 	mov    0x4e55(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    43a3:	be 00 00 00 00       	mov    $0x0,%esi
    43a8:	48 89 c7             	mov    %rax,%rdi
    43ab:	e8 10 dd ff ff       	call   20c0 <memset@plt>
    43b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    43b4:	48 89 05 35 4e 00 00 	mov    %rax,0x4e35(%rip)        # 91f0 <_ZL19yy_buffer_stack_max>
    43bb:	48 c7 05 22 4e 00 00 	movq   $0x0,0x4e22(%rip)        # 91e8 <_ZL19yy_buffer_stack_top>
    43c2:	00 00 00 00 
    43c6:	e9 ae 00 00 00       	jmp    4479 <_ZL21yyensure_buffer_stackv+0x137>
    43cb:	48 8b 05 1e 4e 00 00 	mov    0x4e1e(%rip),%rax        # 91f0 <_ZL19yy_buffer_stack_max>
    43d2:	48 83 e8 01          	sub    $0x1,%rax
    43d6:	48 8b 15 0b 4e 00 00 	mov    0x4e0b(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    43dd:	48 39 c2             	cmp    %rax,%rdx
    43e0:	0f 82 93 00 00 00    	jb     4479 <_ZL21yyensure_buffer_stackv+0x137>
    43e6:	48 c7 45 f8 08 00 00 	movq   $0x8,-0x8(%rbp)
    43ed:	00 
    43ee:	48 8b 15 fb 4d 00 00 	mov    0x4dfb(%rip),%rdx        # 91f0 <_ZL19yy_buffer_stack_max>
    43f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    43f9:	48 01 d0             	add    %rdx,%rax
    43fc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4400:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4404:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    440b:	00 
    440c:	48 8b 05 e5 4d 00 00 	mov    0x4de5(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4413:	48 89 d6             	mov    %rdx,%rsi
    4416:	48 89 c7             	mov    %rax,%rdi
    4419:	e8 62 04 00 00       	call   4880 <_Z9yyreallocPvm>
    441e:	48 89 05 d3 4d 00 00 	mov    %rax,0x4dd3(%rip)        # 91f8 <_ZL15yy_buffer_stack>
    4425:	48 8b 05 cc 4d 00 00 	mov    0x4dcc(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    442c:	48 85 c0             	test   %rax,%rax
    442f:	75 0f                	jne    4440 <_ZL21yyensure_buffer_stackv+0xfe>
    4431:	48 8d 05 c8 23 00 00 	lea    0x23c8(%rip),%rax        # 6800 <_ZL6yy_chk+0x380>
    4438:	48 89 c7             	mov    %rax,%rdi
    443b:	e8 3c 02 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    4440:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4444:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    444b:	00 
    444c:	48 8b 05 a5 4d 00 00 	mov    0x4da5(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4453:	48 8b 0d 96 4d 00 00 	mov    0x4d96(%rip),%rcx        # 91f0 <_ZL19yy_buffer_stack_max>
    445a:	48 c1 e1 03          	shl    $0x3,%rcx
    445e:	48 01 c8             	add    %rcx,%rax
    4461:	be 00 00 00 00       	mov    $0x0,%esi
    4466:	48 89 c7             	mov    %rax,%rdi
    4469:	e8 52 dc ff ff       	call   20c0 <memset@plt>
    446e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4472:	48 89 05 77 4d 00 00 	mov    %rax,0x4d77(%rip)        # 91f0 <_ZL19yy_buffer_stack_max>
    4479:	c9                   	leave
    447a:	c3                   	ret

000000000000447b <_Z14yy_scan_bufferPcm>:
    447b:	55                   	push   %rbp
    447c:	48 89 e5             	mov    %rsp,%rbp
    447f:	48 83 ec 20          	sub    $0x20,%rsp
    4483:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4487:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    448b:	48 83 7d e0 01       	cmpq   $0x1,-0x20(%rbp)
    4490:	76 2c                	jbe    44be <_Z14yy_scan_bufferPcm+0x43>
    4492:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4496:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    449a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    449e:	48 01 d0             	add    %rdx,%rax
    44a1:	0f b6 00             	movzbl (%rax),%eax
    44a4:	84 c0                	test   %al,%al
    44a6:	75 16                	jne    44be <_Z14yy_scan_bufferPcm+0x43>
    44a8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    44ac:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    44b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44b4:	48 01 d0             	add    %rdx,%rax
    44b7:	0f b6 00             	movzbl (%rax),%eax
    44ba:	84 c0                	test   %al,%al
    44bc:	74 0a                	je     44c8 <_Z14yy_scan_bufferPcm+0x4d>
    44be:	b8 00 00 00 00       	mov    $0x0,%eax
    44c3:	e9 b0 00 00 00       	jmp    4578 <_Z14yy_scan_bufferPcm+0xfd>
    44c8:	bf 40 00 00 00       	mov    $0x40,%edi
    44cd:	e8 94 03 00 00       	call   4866 <_Z7yyallocm>
    44d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    44d6:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    44db:	75 0f                	jne    44ec <_Z14yy_scan_bufferPcm+0x71>
    44dd:	48 8d 05 54 23 00 00 	lea    0x2354(%rip),%rax        # 6838 <_ZL6yy_chk+0x3b8>
    44e4:	48 89 c7             	mov    %rax,%rdi
    44e7:	e8 90 01 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    44ec:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    44f0:	83 e8 02             	sub    $0x2,%eax
    44f3:	89 c2                	mov    %eax,%edx
    44f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    44f9:	89 50 18             	mov    %edx,0x18(%rax)
    44fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4500:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4504:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4508:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    450c:	48 8b 50 08          	mov    0x8(%rax),%rdx
    4510:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4514:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4518:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    451c:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%rax)
    4523:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4527:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    452e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4532:	8b 50 18             	mov    0x18(%rax),%edx
    4535:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4539:	89 50 1c             	mov    %edx,0x1c(%rax)
    453c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4540:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%rax)
    4547:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    454b:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%rax)
    4552:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4556:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%rax)
    455d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4561:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%rax)
    4568:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    456c:	48 89 c7             	mov    %rax,%rdi
    456f:	e8 cb f7 ff ff       	call   3d3f <_Z19yy_switch_to_bufferP15yy_buffer_state>
    4574:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4578:	c9                   	leave
    4579:	c3                   	ret

000000000000457a <_Z14yy_scan_stringPKc>:
    457a:	55                   	push   %rbp
    457b:	48 89 e5             	mov    %rsp,%rbp
    457e:	48 83 ec 10          	sub    $0x10,%rsp
    4582:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4586:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    458a:	48 89 c7             	mov    %rax,%rdi
    458d:	e8 0e db ff ff       	call   20a0 <strlen@plt>
    4592:	89 c2                	mov    %eax,%edx
    4594:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4598:	89 d6                	mov    %edx,%esi
    459a:	48 89 c7             	mov    %rax,%rdi
    459d:	e8 02 00 00 00       	call   45a4 <_Z13yy_scan_bytesPKci>
    45a2:	c9                   	leave
    45a3:	c3                   	ret

00000000000045a4 <_Z13yy_scan_bytesPKci>:
    45a4:	55                   	push   %rbp
    45a5:	48 89 e5             	mov    %rsp,%rbp
    45a8:	48 83 ec 30          	sub    $0x30,%rsp
    45ac:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    45b0:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    45b3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    45b6:	83 c0 02             	add    $0x2,%eax
    45b9:	48 98                	cltq
    45bb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    45bf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    45c3:	48 89 c7             	mov    %rax,%rdi
    45c6:	e8 9b 02 00 00       	call   4866 <_Z7yyallocm>
    45cb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    45cf:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    45d4:	75 0f                	jne    45e5 <_Z13yy_scan_bytesPKci+0x41>
    45d6:	48 8d 05 8b 22 00 00 	lea    0x228b(%rip),%rax        # 6868 <_ZL6yy_chk+0x3e8>
    45dd:	48 89 c7             	mov    %rax,%rdi
    45e0:	e8 97 00 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    45e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    45ec:	eb 23                	jmp    4611 <_Z13yy_scan_bytesPKci+0x6d>
    45ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
    45f1:	48 63 d0             	movslq %eax,%rdx
    45f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    45f8:	48 01 d0             	add    %rdx,%rax
    45fb:	8b 55 fc             	mov    -0x4(%rbp),%edx
    45fe:	48 63 ca             	movslq %edx,%rcx
    4601:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4605:	48 01 ca             	add    %rcx,%rdx
    4608:	0f b6 00             	movzbl (%rax),%eax
    460b:	88 02                	mov    %al,(%rdx)
    460d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    4611:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4614:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    4617:	7c d5                	jl     45ee <_Z13yy_scan_bytesPKci+0x4a>
    4619:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    461c:	48 98                	cltq
    461e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4622:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4626:	48 01 d0             	add    %rdx,%rax
    4629:	c6 00 00             	movb   $0x0,(%rax)
    462c:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    462f:	48 63 ca             	movslq %edx,%rcx
    4632:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4636:	48 01 ca             	add    %rcx,%rdx
    4639:	0f b6 00             	movzbl (%rax),%eax
    463c:	88 02                	mov    %al,(%rdx)
    463e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4642:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4646:	48 89 d6             	mov    %rdx,%rsi
    4649:	48 89 c7             	mov    %rax,%rdi
    464c:	e8 2a fe ff ff       	call   447b <_Z14yy_scan_bufferPcm>
    4651:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4655:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    465a:	75 0f                	jne    466b <_Z13yy_scan_bytesPKci+0xc7>
    465c:	48 8d 05 2e 22 00 00 	lea    0x222e(%rip),%rax        # 6891 <_ZL6yy_chk+0x411>
    4663:	48 89 c7             	mov    %rax,%rdi
    4666:	e8 11 00 00 00       	call   467c <_ZL14yy_fatal_errorPKc>
    466b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    466f:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%rax)
    4676:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    467a:	c9                   	leave
    467b:	c3                   	ret

000000000000467c <_ZL14yy_fatal_errorPKc>:
    467c:	55                   	push   %rbp
    467d:	48 89 e5             	mov    %rsp,%rbp
    4680:	48 83 ec 10          	sub    $0x10,%rsp
    4684:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4688:	48 8b 05 11 4b 00 00 	mov    0x4b11(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    468f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4693:	48 8d 0d 15 22 00 00 	lea    0x2215(%rip),%rcx        # 68af <_ZL6yy_chk+0x42f>
    469a:	48 89 ce             	mov    %rcx,%rsi
    469d:	48 89 c7             	mov    %rax,%rdi
    46a0:	b8 00 00 00 00       	mov    $0x0,%eax
    46a5:	e8 46 da ff ff       	call   20f0 <fprintf@plt>
    46aa:	bf 02 00 00 00       	mov    $0x2,%edi
    46af:	e8 bc da ff ff       	call   2170 <exit@plt>

00000000000046b4 <_Z12yyget_linenov>:
    46b4:	55                   	push   %rbp
    46b5:	48 89 e5             	mov    %rsp,%rbp
    46b8:	8b 05 62 4a 00 00    	mov    0x4a62(%rip),%eax        # 9120 <yylineno>
    46be:	5d                   	pop    %rbp
    46bf:	c3                   	ret

00000000000046c0 <_Z8yyget_inv>:
    46c0:	55                   	push   %rbp
    46c1:	48 89 e5             	mov    %rsp,%rbp
    46c4:	48 8b 05 ed 4a 00 00 	mov    0x4aed(%rip),%rax        # 91b8 <yyin>
    46cb:	5d                   	pop    %rbp
    46cc:	c3                   	ret

00000000000046cd <_Z9yyget_outv>:
    46cd:	55                   	push   %rbp
    46ce:	48 89 e5             	mov    %rsp,%rbp
    46d1:	48 8b 05 e8 4a 00 00 	mov    0x4ae8(%rip),%rax        # 91c0 <yyout>
    46d8:	5d                   	pop    %rbp
    46d9:	c3                   	ret

00000000000046da <_Z10yyget_lengv>:
    46da:	55                   	push   %rbp
    46db:	48 89 e5             	mov    %rsp,%rbp
    46de:	8b 05 cc 4a 00 00    	mov    0x4acc(%rip),%eax        # 91b0 <yyleng>
    46e4:	5d                   	pop    %rbp
    46e5:	c3                   	ret

00000000000046e6 <_Z10yyget_textv>:
    46e6:	55                   	push   %rbp
    46e7:	48 89 e5             	mov    %rsp,%rbp
    46ea:	48 8b 05 df 4a 00 00 	mov    0x4adf(%rip),%rax        # 91d0 <yytext>
    46f1:	5d                   	pop    %rbp
    46f2:	c3                   	ret

00000000000046f3 <_Z12yyset_linenoi>:
    46f3:	55                   	push   %rbp
    46f4:	48 89 e5             	mov    %rsp,%rbp
    46f7:	89 7d fc             	mov    %edi,-0x4(%rbp)
    46fa:	8b 45 fc             	mov    -0x4(%rbp),%eax
    46fd:	89 05 1d 4a 00 00    	mov    %eax,0x4a1d(%rip)        # 9120 <yylineno>
    4703:	90                   	nop
    4704:	5d                   	pop    %rbp
    4705:	c3                   	ret

0000000000004706 <_Z8yyset_inP8_IO_FILE>:
    4706:	55                   	push   %rbp
    4707:	48 89 e5             	mov    %rsp,%rbp
    470a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    470e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4712:	48 89 05 9f 4a 00 00 	mov    %rax,0x4a9f(%rip)        # 91b8 <yyin>
    4719:	90                   	nop
    471a:	5d                   	pop    %rbp
    471b:	c3                   	ret

000000000000471c <_Z9yyset_outP8_IO_FILE>:
    471c:	55                   	push   %rbp
    471d:	48 89 e5             	mov    %rsp,%rbp
    4720:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4724:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4728:	48 89 05 91 4a 00 00 	mov    %rax,0x4a91(%rip)        # 91c0 <yyout>
    472f:	90                   	nop
    4730:	5d                   	pop    %rbp
    4731:	c3                   	ret

0000000000004732 <_Z11yyget_debugv>:
    4732:	55                   	push   %rbp
    4733:	48 89 e5             	mov    %rsp,%rbp
    4736:	8b 05 8c 4a 00 00    	mov    0x4a8c(%rip),%eax        # 91c8 <yy_flex_debug>
    473c:	5d                   	pop    %rbp
    473d:	c3                   	ret

000000000000473e <_Z11yyset_debugi>:
    473e:	55                   	push   %rbp
    473f:	48 89 e5             	mov    %rsp,%rbp
    4742:	89 7d fc             	mov    %edi,-0x4(%rbp)
    4745:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4748:	89 05 7a 4a 00 00    	mov    %eax,0x4a7a(%rip)        # 91c8 <yy_flex_debug>
    474e:	90                   	nop
    474f:	5d                   	pop    %rbp
    4750:	c3                   	ret

0000000000004751 <_ZL15yy_init_globalsv>:
    4751:	55                   	push   %rbp
    4752:	48 89 e5             	mov    %rsp,%rbp
    4755:	48 c7 05 98 4a 00 00 	movq   $0x0,0x4a98(%rip)        # 91f8 <_ZL15yy_buffer_stack>
    475c:	00 00 00 00 
    4760:	48 c7 05 7d 4a 00 00 	movq   $0x0,0x4a7d(%rip)        # 91e8 <_ZL19yy_buffer_stack_top>
    4767:	00 00 00 00 
    476b:	48 c7 05 7a 4a 00 00 	movq   $0x0,0x4a7a(%rip)        # 91f0 <_ZL19yy_buffer_stack_max>
    4772:	00 00 00 00 
    4776:	48 c7 05 87 4a 00 00 	movq   $0x0,0x4a87(%rip)        # 9208 <_ZL10yy_c_buf_p>
    477d:	00 00 00 00 
    4781:	c7 05 85 4a 00 00 00 	movl   $0x0,0x4a85(%rip)        # 9210 <_ZL7yy_init>
    4788:	00 00 00 
    478b:	c7 05 7f 4a 00 00 00 	movl   $0x0,0x4a7f(%rip)        # 9214 <_ZL8yy_start>
    4792:	00 00 00 
    4795:	48 c7 05 18 4a 00 00 	movq   $0x0,0x4a18(%rip)        # 91b8 <yyin>
    479c:	00 00 00 00 
    47a0:	48 c7 05 15 4a 00 00 	movq   $0x0,0x4a15(%rip)        # 91c0 <yyout>
    47a7:	00 00 00 00 
    47ab:	b8 00 00 00 00       	mov    $0x0,%eax
    47b0:	5d                   	pop    %rbp
    47b1:	c3                   	ret

00000000000047b2 <_Z13yylex_destroyv>:
    47b2:	55                   	push   %rbp
    47b3:	48 89 e5             	mov    %rsp,%rbp
    47b6:	eb 54                	jmp    480c <_Z13yylex_destroyv+0x5a>
    47b8:	48 8b 05 39 4a 00 00 	mov    0x4a39(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    47bf:	48 85 c0             	test   %rax,%rax
    47c2:	74 1a                	je     47de <_Z13yylex_destroyv+0x2c>
    47c4:	48 8b 05 2d 4a 00 00 	mov    0x4a2d(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    47cb:	48 8b 15 16 4a 00 00 	mov    0x4a16(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    47d2:	48 c1 e2 03          	shl    $0x3,%rdx
    47d6:	48 01 d0             	add    %rdx,%rax
    47d9:	48 8b 00             	mov    (%rax),%rax
    47dc:	eb 05                	jmp    47e3 <_Z13yylex_destroyv+0x31>
    47de:	b8 00 00 00 00       	mov    $0x0,%eax
    47e3:	48 89 c7             	mov    %rax,%rdi
    47e6:	e8 72 f7 ff ff       	call   3f5d <_Z16yy_delete_bufferP15yy_buffer_state>
    47eb:	48 8b 05 06 4a 00 00 	mov    0x4a06(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    47f2:	48 8b 15 ef 49 00 00 	mov    0x49ef(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    47f9:	48 c1 e2 03          	shl    $0x3,%rdx
    47fd:	48 01 d0             	add    %rdx,%rax
    4800:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4807:	e8 4d fa ff ff       	call   4259 <_Z18yypop_buffer_statev>
    480c:	48 8b 05 e5 49 00 00 	mov    0x49e5(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4813:	48 85 c0             	test   %rax,%rax
    4816:	74 1a                	je     4832 <_Z13yylex_destroyv+0x80>
    4818:	48 8b 05 d9 49 00 00 	mov    0x49d9(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    481f:	48 8b 15 c2 49 00 00 	mov    0x49c2(%rip),%rdx        # 91e8 <_ZL19yy_buffer_stack_top>
    4826:	48 c1 e2 03          	shl    $0x3,%rdx
    482a:	48 01 d0             	add    %rdx,%rax
    482d:	48 8b 00             	mov    (%rax),%rax
    4830:	eb 05                	jmp    4837 <_Z13yylex_destroyv+0x85>
    4832:	b8 00 00 00 00       	mov    $0x0,%eax
    4837:	48 85 c0             	test   %rax,%rax
    483a:	0f 85 78 ff ff ff    	jne    47b8 <_Z13yylex_destroyv+0x6>
    4840:	48 8b 05 b1 49 00 00 	mov    0x49b1(%rip),%rax        # 91f8 <_ZL15yy_buffer_stack>
    4847:	48 89 c7             	mov    %rax,%rdi
    484a:	e8 56 00 00 00       	call   48a5 <_Z6yyfreePv>
    484f:	48 c7 05 9e 49 00 00 	movq   $0x0,0x499e(%rip)        # 91f8 <_ZL15yy_buffer_stack>
    4856:	00 00 00 00 
    485a:	e8 f2 fe ff ff       	call   4751 <_ZL15yy_init_globalsv>
    485f:	b8 00 00 00 00       	mov    $0x0,%eax
    4864:	5d                   	pop    %rbp
    4865:	c3                   	ret

0000000000004866 <_Z7yyallocm>:
    4866:	55                   	push   %rbp
    4867:	48 89 e5             	mov    %rsp,%rbp
    486a:	48 83 ec 10          	sub    $0x10,%rsp
    486e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4872:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4876:	48 89 c7             	mov    %rax,%rdi
    4879:	e8 b2 d8 ff ff       	call   2130 <malloc@plt>
    487e:	c9                   	leave
    487f:	c3                   	ret

0000000000004880 <_Z9yyreallocPvm>:
    4880:	55                   	push   %rbp
    4881:	48 89 e5             	mov    %rsp,%rbp
    4884:	48 83 ec 10          	sub    $0x10,%rsp
    4888:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    488c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4890:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4894:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4898:	48 89 d6             	mov    %rdx,%rsi
    489b:	48 89 c7             	mov    %rax,%rdi
    489e:	e8 9d d8 ff ff       	call   2140 <realloc@plt>
    48a3:	c9                   	leave
    48a4:	c3                   	ret

00000000000048a5 <_Z6yyfreePv>:
    48a5:	55                   	push   %rbp
    48a6:	48 89 e5             	mov    %rsp,%rbp
    48a9:	48 83 ec 10          	sub    $0x10,%rsp
    48ad:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48b5:	48 89 c7             	mov    %rax,%rdi
    48b8:	e8 73 d7 ff ff       	call   2030 <free@plt>
    48bd:	90                   	nop
    48be:	c9                   	leave
    48bf:	c3                   	ret

00000000000048c0 <_Z7yyerrorPKc>:
    48c0:	55                   	push   %rbp
    48c1:	48 89 e5             	mov    %rsp,%rbp
    48c4:	48 83 ec 10          	sub    $0x10,%rsp
    48c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48cc:	48 8b 05 cd 48 00 00 	mov    0x48cd(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    48d3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    48d7:	48 89 d6             	mov    %rdx,%rsi
    48da:	48 89 c7             	mov    %rax,%rdi
    48dd:	b8 00 00 00 00       	mov    $0x0,%eax
    48e2:	e8 09 d8 ff ff       	call   20f0 <fprintf@plt>
    48e7:	48 8b 05 b2 48 00 00 	mov    0x48b2(%rip),%rax        # 91a0 <stderr@GLIBC_2.2.5>
    48ee:	48 89 c6             	mov    %rax,%rsi
    48f1:	bf 0a 00 00 00       	mov    $0xa,%edi
    48f6:	e8 e5 d7 ff ff       	call   20e0 <fputc@plt>
    48fb:	0f b6 05 de 48 00 00 	movzbl 0x48de(%rip),%eax        # 91e0 <show_tokens>
    4902:	84 c0                	test   %al,%al
    4904:	74 51                	je     4957 <_Z7yyerrorPKc+0x97>
    4906:	48 8b 05 cb 48 00 00 	mov    0x48cb(%rip),%rax        # 91d8 <tok_out>
    490d:	48 89 c2             	mov    %rax,%rdx
    4910:	48 8d 05 a9 1f 00 00 	lea    0x1fa9(%rip),%rax        # 68c0 <_ZL6yy_chk+0x440>
    4917:	48 89 c6             	mov    %rax,%rsi
    491a:	bf 00 00 00 00       	mov    $0x0,%edi
    491f:	e8 ac d7 ff ff       	call   20d0 <freopen@plt>
    4924:	48 89 05 ad 48 00 00 	mov    %rax,0x48ad(%rip)        # 91d8 <tok_out>
    492b:	48 8b 05 a6 48 00 00 	mov    0x48a6(%rip),%rax        # 91d8 <tok_out>
    4932:	48 85 c0             	test   %rax,%rax
    4935:	75 11                	jne    4948 <_Z7yyerrorPKc+0x88>
    4937:	48 8d 05 84 1f 00 00 	lea    0x1f84(%rip),%rax        # 68c2 <_ZL6yy_chk+0x442>
    493e:	48 89 c7             	mov    %rax,%rdi
    4941:	e8 1a d8 ff ff       	call   2160 <perror@plt>
    4946:	eb 0f                	jmp    4957 <_Z7yyerrorPKc+0x97>
    4948:	48 8b 05 89 48 00 00 	mov    0x4889(%rip),%rax        # 91d8 <tok_out>
    494f:	48 89 c7             	mov    %rax,%rdi
    4952:	e8 39 d7 ff ff       	call   2090 <fclose@plt>
    4957:	bf 01 00 00 00       	mov    $0x1,%edi
    495c:	e8 0f d8 ff ff       	call   2170 <exit@plt>

0000000000004961 <_ZL13yysymbol_name15yysymbol_kind_t>:
    4961:	55                   	push   %rbp
    4962:	48 89 e5             	mov    %rsp,%rbp
    4965:	89 7d fc             	mov    %edi,-0x4(%rbp)
    4968:	8b 45 fc             	mov    -0x4(%rbp),%eax
    496b:	48 98                	cltq
    496d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4974:	00 
    4975:	48 8d 05 c4 42 00 00 	lea    0x42c4(%rip),%rax        # 8c40 <_ZL7yytname>
    497c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    4980:	5d                   	pop    %rbp
    4981:	c3                   	ret

0000000000004982 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti>:
    4982:	55                   	push   %rbp
    4983:	48 89 e5             	mov    %rsp,%rbp
    4986:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    498a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    498e:	89 55 cc             	mov    %edx,-0x34(%rbp)
    4991:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    4998:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    499c:	48 8b 00             	mov    (%rax),%rax
    499f:	0f b6 00             	movzbl (%rax),%eax
    49a2:	0f be c0             	movsbl %al,%eax
    49a5:	48 98                	cltq
    49a7:	48 8d 15 d2 22 00 00 	lea    0x22d2(%rip),%rdx        # 6c80 <_ZL6yypact>
    49ae:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    49b2:	0f be c0             	movsbl %al,%eax
    49b5:	89 45 f4             	mov    %eax,-0xc(%rbp)
    49b8:	83 7d f4 d5          	cmpl   $0xffffffd5,-0xc(%rbp)
    49bc:	0f 84 9e 00 00 00    	je     4a60 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xde>
    49c2:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    49c6:	79 07                	jns    49cf <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0x4d>
    49c8:	8b 45 f4             	mov    -0xc(%rbp),%eax
    49cb:	f7 d8                	neg    %eax
    49cd:	eb 05                	jmp    49d4 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0x52>
    49cf:	b8 00 00 00 00       	mov    $0x0,%eax
    49d4:	89 45 f0             	mov    %eax,-0x10(%rbp)
    49d7:	b8 54 00 00 00       	mov    $0x54,%eax
    49dc:	2b 45 f4             	sub    -0xc(%rbp),%eax
    49df:	89 45 ec             	mov    %eax,-0x14(%rbp)
    49e2:	8b 45 ec             	mov    -0x14(%rbp),%eax
    49e5:	ba 19 00 00 00       	mov    $0x19,%edx
    49ea:	39 d0                	cmp    %edx,%eax
    49ec:	0f 4f c2             	cmovg  %edx,%eax
    49ef:	89 45 e8             	mov    %eax,-0x18(%rbp)
    49f2:	8b 45 f0             	mov    -0x10(%rbp),%eax
    49f5:	89 45 f8             	mov    %eax,-0x8(%rbp)
    49f8:	eb 5e                	jmp    4a58 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xd6>
    49fa:	8b 55 f8             	mov    -0x8(%rbp),%edx
    49fd:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4a00:	01 d0                	add    %edx,%eax
    4a02:	48 98                	cltq
    4a04:	48 8d 15 d5 23 00 00 	lea    0x23d5(%rip),%rdx        # 6de0 <_ZL7yycheck>
    4a0b:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    4a0f:	0f be c0             	movsbl %al,%eax
    4a12:	39 45 f8             	cmp    %eax,-0x8(%rbp)
    4a15:	75 3d                	jne    4a54 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xd2>
    4a17:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
    4a1b:	74 37                	je     4a54 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xd2>
    4a1d:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4a22:	75 06                	jne    4a2a <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xa8>
    4a24:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    4a28:	eb 2a                	jmp    4a54 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xd2>
    4a2a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4a2d:	3b 45 cc             	cmp    -0x34(%rbp),%eax
    4a30:	75 07                	jne    4a39 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xb7>
    4a32:	b8 00 00 00 00       	mov    $0x0,%eax
    4a37:	eb 47                	jmp    4a80 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xfe>
    4a39:	8b 55 f8             	mov    -0x8(%rbp),%edx
    4a3c:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    4a40:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4a43:	8d 48 01             	lea    0x1(%rax),%ecx
    4a46:	89 4d fc             	mov    %ecx,-0x4(%rbp)
    4a49:	48 98                	cltq
    4a4b:	48 c1 e0 02          	shl    $0x2,%rax
    4a4f:	48 01 f0             	add    %rsi,%rax
    4a52:	89 10                	mov    %edx,(%rax)
    4a54:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    4a58:	8b 45 f8             	mov    -0x8(%rbp),%eax
    4a5b:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    4a5e:	7c 9a                	jl     49fa <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0x78>
    4a60:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4a65:	74 16                	je     4a7d <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xfb>
    4a67:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    4a6b:	75 10                	jne    4a7d <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xfb>
    4a6d:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    4a71:	7e 0a                	jle    4a7d <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti+0xfb>
    4a73:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4a77:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%rax)
    4a7d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4a80:	5d                   	pop    %rbp
    4a81:	c3                   	ret

0000000000004a82 <_ZL8yystrlenPKc>:
    4a82:	55                   	push   %rbp
    4a83:	48 89 e5             	mov    %rsp,%rbp
    4a86:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4a8a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4a91:	00 
    4a92:	eb 06                	jmp    4a9a <_ZL8yystrlenPKc+0x18>
    4a94:	90                   	nop
    4a95:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    4a9a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4a9e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4aa2:	48 01 d0             	add    %rdx,%rax
    4aa5:	0f b6 00             	movzbl (%rax),%eax
    4aa8:	84 c0                	test   %al,%al
    4aaa:	75 e8                	jne    4a94 <_ZL8yystrlenPKc+0x12>
    4aac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ab0:	5d                   	pop    %rbp
    4ab1:	c3                   	ret

0000000000004ab2 <_ZL8yystpcpyPcPKc>:
    4ab2:	55                   	push   %rbp
    4ab3:	48 89 e5             	mov    %rsp,%rbp
    4ab6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4aba:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4abe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ac2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4ac6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4aca:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4ace:	eb 01                	jmp    4ad1 <_ZL8yystpcpyPcPKc+0x1f>
    4ad0:	90                   	nop
    4ad1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4ad5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4ad9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    4add:	0f b6 10             	movzbl (%rax),%edx
    4ae0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ae4:	48 8d 48 01          	lea    0x1(%rax),%rcx
    4ae8:	48 89 4d f8          	mov    %rcx,-0x8(%rbp)
    4aec:	88 10                	mov    %dl,(%rax)
    4aee:	0f b6 00             	movzbl (%rax),%eax
    4af1:	84 c0                	test   %al,%al
    4af3:	0f 95 c0             	setne  %al
    4af6:	84 c0                	test   %al,%al
    4af8:	75 d6                	jne    4ad0 <_ZL8yystpcpyPcPKc+0x1e>
    4afa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4afe:	48 83 e8 01          	sub    $0x1,%rax
    4b02:	5d                   	pop    %rbp
    4b03:	c3                   	ret

0000000000004b04 <_ZL9yytnamerrPcPKc>:
    4b04:	55                   	push   %rbp
    4b05:	48 89 e5             	mov    %rsp,%rbp
    4b08:	48 83 ec 20          	sub    $0x20,%rsp
    4b0c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4b10:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4b14:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b18:	0f b6 00             	movzbl (%rax),%eax
    4b1b:	3c 22                	cmp    $0x22,%al
    4b1d:	0f 85 9b 00 00 00    	jne    4bbe <_ZL9yytnamerrPcPKc+0xba>
    4b23:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4b2a:	00 
    4b2b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b2f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4b33:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    4b38:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b3c:	0f b6 00             	movzbl (%rax),%eax
    4b3f:	0f be c0             	movsbl %al,%eax
    4b42:	83 f8 5c             	cmp    $0x5c,%eax
    4b45:	74 1b                	je     4b62 <_ZL9yytnamerrPcPKc+0x5e>
    4b47:	83 f8 5c             	cmp    $0x5c,%eax
    4b4a:	7f 2c                	jg     4b78 <_ZL9yytnamerrPcPKc+0x74>
    4b4c:	83 f8 2c             	cmp    $0x2c,%eax
    4b4f:	74 69                	je     4bba <_ZL9yytnamerrPcPKc+0xb6>
    4b51:	83 f8 2c             	cmp    $0x2c,%eax
    4b54:	7f 22                	jg     4b78 <_ZL9yytnamerrPcPKc+0x74>
    4b56:	83 f8 22             	cmp    $0x22,%eax
    4b59:	74 3f                	je     4b9a <_ZL9yytnamerrPcPKc+0x96>
    4b5b:	83 f8 27             	cmp    $0x27,%eax
    4b5e:	75 18                	jne    4b78 <_ZL9yytnamerrPcPKc+0x74>
    4b60:	eb 58                	jmp    4bba <_ZL9yytnamerrPcPKc+0xb6>
    4b62:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    4b67:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b6b:	0f b6 00             	movzbl (%rax),%eax
    4b6e:	3c 5c                	cmp    $0x5c,%al
    4b70:	0f 95 c0             	setne  %al
    4b73:	84 c0                	test   %al,%al
    4b75:	75 46                	jne    4bbd <_ZL9yytnamerrPcPKc+0xb9>
    4b77:	90                   	nop
    4b78:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4b7d:	74 14                	je     4b93 <_ZL9yytnamerrPcPKc+0x8f>
    4b7f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4b83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b87:	48 01 c2             	add    %rax,%rdx
    4b8a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b8e:	0f b6 00             	movzbl (%rax),%eax
    4b91:	88 02                	mov    %al,(%rdx)
    4b93:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    4b98:	eb 1b                	jmp    4bb5 <_ZL9yytnamerrPcPKc+0xb1>
    4b9a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4b9f:	74 0e                	je     4baf <_ZL9yytnamerrPcPKc+0xab>
    4ba1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4ba5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ba9:	48 01 d0             	add    %rdx,%rax
    4bac:	c6 00 00             	movb   $0x0,(%rax)
    4baf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4bb3:	eb 36                	jmp    4beb <_ZL9yytnamerrPcPKc+0xe7>
    4bb5:	e9 79 ff ff ff       	jmp    4b33 <_ZL9yytnamerrPcPKc+0x2f>
    4bba:	90                   	nop
    4bbb:	eb 01                	jmp    4bbe <_ZL9yytnamerrPcPKc+0xba>
    4bbd:	90                   	nop
    4bbe:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    4bc3:	74 19                	je     4bde <_ZL9yytnamerrPcPKc+0xda>
    4bc5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4bc9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bcd:	48 89 d6             	mov    %rdx,%rsi
    4bd0:	48 89 c7             	mov    %rax,%rdi
    4bd3:	e8 da fe ff ff       	call   4ab2 <_ZL8yystpcpyPcPKc>
    4bd8:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    4bdc:	eb 0d                	jmp    4beb <_ZL9yytnamerrPcPKc+0xe7>
    4bde:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4be2:	48 89 c7             	mov    %rax,%rdi
    4be5:	e8 98 fe ff ff       	call   4a82 <_ZL8yystrlenPKc>
    4bea:	90                   	nop
    4beb:	c9                   	leave
    4bec:	c3                   	ret

0000000000004bed <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti>:
    4bed:	55                   	push   %rbp
    4bee:	48 89 e5             	mov    %rsp,%rbp
    4bf1:	48 83 ec 28          	sub    $0x28,%rsp
    4bf5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4bf9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4bfd:	89 55 dc             	mov    %edx,-0x24(%rbp)
    4c00:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    4c07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c0b:	8b 40 08             	mov    0x8(%rax),%eax
    4c0e:	83 f8 fe             	cmp    $0xfffffffe,%eax
    4c11:	74 68                	je     4c7b <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x8e>
    4c13:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4c18:	74 1d                	je     4c37 <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x4a>
    4c1a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4c1d:	48 98                	cltq
    4c1f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    4c26:	00 
    4c27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c2b:	48 01 c2             	add    %rax,%rdx
    4c2e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c32:	8b 40 08             	mov    0x8(%rax),%eax
    4c35:	89 02                	mov    %eax,(%rdx)
    4c37:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    4c3b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    4c3e:	8d 50 ff             	lea    -0x1(%rax),%edx
    4c41:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4c46:	74 0a                	je     4c52 <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x65>
    4c48:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c4c:	48 83 c0 04          	add    $0x4,%rax
    4c50:	eb 04                	jmp    4c56 <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x69>
    4c52:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c56:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4c5a:	48 89 c6             	mov    %rax,%rsi
    4c5d:	48 89 cf             	mov    %rcx,%rdi
    4c60:	e8 1d fd ff ff       	call   4982 <_ZL26yypcontext_expected_tokensPK12yypcontext_tP15yysymbol_kind_ti>
    4c65:	89 45 f8             	mov    %eax,-0x8(%rbp)
    4c68:	83 7d f8 fe          	cmpl   $0xfffffffe,-0x8(%rbp)
    4c6c:	75 07                	jne    4c75 <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x88>
    4c6e:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4c73:	eb 09                	jmp    4c7e <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti+0x91>
    4c75:	8b 45 f8             	mov    -0x8(%rbp),%eax
    4c78:	01 45 fc             	add    %eax,-0x4(%rbp)
    4c7b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4c7e:	c9                   	leave
    4c7f:	c3                   	ret

0000000000004c80 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t>:
    4c80:	55                   	push   %rbp
    4c81:	48 89 e5             	mov    %rsp,%rbp
    4c84:	48 83 ec 70          	sub    $0x70,%rsp
    4c88:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    4c8c:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    4c90:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    4c94:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4c9b:	00 
    4c9c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    4ca3:	00 
    4ca4:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
    4ca8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    4cac:	ba 05 00 00 00       	mov    $0x5,%edx
    4cb1:	48 89 ce             	mov    %rcx,%rsi
    4cb4:	48 89 c7             	mov    %rax,%rdi
    4cb7:	e8 31 ff ff ff       	call   4bed <_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti>
    4cbc:	89 45 d8             	mov    %eax,-0x28(%rbp)
    4cbf:	83 7d d8 fe          	cmpl   $0xfffffffe,-0x28(%rbp)
    4cc3:	75 0a                	jne    4ccf <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x4f>
    4cc5:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4cca:	e9 e7 01 00 00       	jmp    4eb6 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x236>
    4ccf:	83 7d d8 05          	cmpl   $0x5,-0x28(%rbp)
    4cd3:	77 23                	ja     4cf8 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x78>
    4cd5:	8b 45 d8             	mov    -0x28(%rbp),%eax
    4cd8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    4cdf:	00 
    4ce0:	48 8d 05 2d 23 00 00 	lea    0x232d(%rip),%rax        # 7014 <_ZL4yyr2+0x134>
    4ce7:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    4cea:	48 98                	cltq
    4cec:	48 8d 15 21 23 00 00 	lea    0x2321(%rip),%rdx        # 7014 <_ZL4yyr2+0x134>
    4cf3:	48 01 d0             	add    %rdx,%rax
    4cf6:	ff e0                	jmp    *%rax
    4cf8:	48 8d 05 18 22 00 00 	lea    0x2218(%rip),%rax        # 6f17 <_ZL4yyr2+0x37>
    4cff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d03:	eb 3f                	jmp    4d44 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xc4>
    4d05:	48 8d 05 18 22 00 00 	lea    0x2218(%rip),%rax        # 6f24 <_ZL4yyr2+0x44>
    4d0c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d10:	eb 32                	jmp    4d44 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xc4>
    4d12:	48 8d 05 27 22 00 00 	lea    0x2227(%rip),%rax        # 6f40 <_ZL4yyr2+0x60>
    4d19:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d1d:	eb 25                	jmp    4d44 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xc4>
    4d1f:	48 8d 05 4a 22 00 00 	lea    0x224a(%rip),%rax        # 6f70 <_ZL4yyr2+0x90>
    4d26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d2a:	eb 18                	jmp    4d44 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xc4>
    4d2c:	48 8d 05 6d 22 00 00 	lea    0x226d(%rip),%rax        # 6fa0 <_ZL4yyr2+0xc0>
    4d33:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d37:	eb 0b                	jmp    4d44 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xc4>
    4d39:	48 8d 05 98 22 00 00 	lea    0x2298(%rip),%rax        # 6fd8 <_ZL4yyr2+0xf8>
    4d40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d48:	48 89 c7             	mov    %rax,%rdi
    4d4b:	e8 32 fd ff ff       	call   4a82 <_ZL8yystrlenPKc>
    4d50:	48 89 c2             	mov    %rax,%rdx
    4d53:	8b 45 d8             	mov    -0x28(%rbp),%eax
    4d56:	01 c0                	add    %eax,%eax
    4d58:	48 98                	cltq
    4d5a:	48 29 c2             	sub    %rax,%rdx
    4d5d:	48 8d 42 01          	lea    0x1(%rdx),%rax
    4d61:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4d65:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    4d6c:	eb 58                	jmp    4dc6 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x146>
    4d6e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    4d71:	48 98                	cltq
    4d73:	8b 44 85 b0          	mov    -0x50(%rbp,%rax,4),%eax
    4d77:	48 98                	cltq
    4d79:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4d80:	00 
    4d81:	48 8d 05 b8 3e 00 00 	lea    0x3eb8(%rip),%rax        # 8c40 <_ZL7yytname>
    4d88:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    4d8c:	48 89 c6             	mov    %rax,%rsi
    4d8f:	bf 00 00 00 00       	mov    $0x0,%edi
    4d94:	e8 6b fd ff ff       	call   4b04 <_ZL9yytnamerrPcPKc>
    4d99:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4d9d:	48 01 d0             	add    %rdx,%rax
    4da0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4da4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4da8:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
    4dac:	7f 0a                	jg     4db8 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x138>
    4dae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4db2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4db6:	eb 0a                	jmp    4dc2 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x142>
    4db8:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    4dbd:	e9 f4 00 00 00       	jmp    4eb6 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x236>
    4dc2:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    4dc6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    4dc9:	3b 45 d8             	cmp    -0x28(%rbp),%eax
    4dcc:	7c a0                	jl     4d6e <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0xee>
    4dce:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4dd2:	48 8b 00             	mov    (%rax),%rax
    4dd5:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    4dd9:	7e 37                	jle    4e12 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x192>
    4ddb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4ddf:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    4de3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4de7:	48 89 10             	mov    %rdx,(%rax)
    4dea:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4dee:	48 8b 00             	mov    (%rax),%rax
    4df1:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    4df5:	7e 11                	jle    4e08 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x188>
    4df7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4dfb:	48 b9 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rcx
    4e02:	ff ff 7f 
    4e05:	48 89 08             	mov    %rcx,(%rax)
    4e08:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4e0d:	e9 a4 00 00 00       	jmp    4eb6 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x236>
    4e12:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    4e16:	48 8b 00             	mov    (%rax),%rax
    4e19:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4e1d:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    4e24:	eb 6a                	jmp    4e90 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x210>
    4e26:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4e2a:	0f b6 00             	movzbl (%rax),%eax
    4e2d:	3c 25                	cmp    $0x25,%al
    4e2f:	75 55                	jne    4e86 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x206>
    4e31:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e35:	48 83 c0 01          	add    $0x1,%rax
    4e39:	0f b6 00             	movzbl (%rax),%eax
    4e3c:	3c 73                	cmp    $0x73,%al
    4e3e:	75 46                	jne    4e86 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x206>
    4e40:	8b 45 dc             	mov    -0x24(%rbp),%eax
    4e43:	3b 45 d8             	cmp    -0x28(%rbp),%eax
    4e46:	7d 3e                	jge    4e86 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x206>
    4e48:	8b 45 dc             	mov    -0x24(%rbp),%eax
    4e4b:	8d 50 01             	lea    0x1(%rax),%edx
    4e4e:	89 55 dc             	mov    %edx,-0x24(%rbp)
    4e51:	48 98                	cltq
    4e53:	8b 44 85 b0          	mov    -0x50(%rbp,%rax,4),%eax
    4e57:	48 98                	cltq
    4e59:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4e60:	00 
    4e61:	48 8d 05 d8 3d 00 00 	lea    0x3dd8(%rip),%rax        # 8c40 <_ZL7yytname>
    4e68:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    4e6c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4e70:	48 89 d6             	mov    %rdx,%rsi
    4e73:	48 89 c7             	mov    %rax,%rdi
    4e76:	e8 89 fc ff ff       	call   4b04 <_ZL9yytnamerrPcPKc>
    4e7b:	48 01 45 e0          	add    %rax,-0x20(%rbp)
    4e7f:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
    4e84:	eb 0a                	jmp    4e90 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x210>
    4e86:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    4e8b:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    4e90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e94:	0f b6 10             	movzbl (%rax),%edx
    4e97:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4e9b:	88 10                	mov    %dl,(%rax)
    4e9d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4ea1:	0f b6 00             	movzbl (%rax),%eax
    4ea4:	84 c0                	test   %al,%al
    4ea6:	0f 95 c0             	setne  %al
    4ea9:	84 c0                	test   %al,%al
    4eab:	0f 85 75 ff ff ff    	jne    4e26 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t+0x1a6>
    4eb1:	b8 00 00 00 00       	mov    $0x0,%eax
    4eb6:	c9                   	leave
    4eb7:	c3                   	ret

0000000000004eb8 <_ZL10yydestructPKc15yysymbol_kind_tPi>:
    4eb8:	55                   	push   %rbp
    4eb9:	48 89 e5             	mov    %rsp,%rbp
    4ebc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ec0:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4ec3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    4ec7:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    4ecc:	75 0b                	jne    4ed9 <_ZL10yydestructPKc15yysymbol_kind_tPi+0x21>
    4ece:	48 8d 05 57 21 00 00 	lea    0x2157(%rip),%rax        # 702c <_ZL4yyr2+0x14c>
    4ed5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4ed9:	90                   	nop
    4eda:	5d                   	pop    %rbp
    4edb:	c3                   	ret

0000000000004edc <_Z7yyparsev>:
    4edc:	55                   	push   %rbp
    4edd:	48 89 e5             	mov    %rsp,%rbp
    4ee0:	48 81 ec 10 05 00 00 	sub    $0x510,%rsp
    4ee7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    4eee:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    4ef5:	48 c7 45 f0 c8 00 00 	movq   $0xc8,-0x10(%rbp)
    4efc:	00 
    4efd:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    4f04:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4f08:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f0c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4f10:	48 8d 85 90 fb ff ff 	lea    -0x470(%rbp),%rax
    4f17:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    4f1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4f1f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4f23:	c7 45 c4 fe ff ff ff 	movl   $0xfffffffe,-0x3c(%rbp)
    4f2a:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    4f31:	48 89 85 08 fb ff ff 	mov    %rax,-0x4f8(%rbp)
    4f38:	48 c7 85 00 fb ff ff 	movq   $0x80,-0x500(%rbp)
    4f3f:	80 00 00 00 
    4f43:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    4f4a:	c7 05 d8 42 00 00 fe 	movl   $0xfffffffe,0x42d8(%rip)        # 922c <yychar>
    4f51:	ff ff ff 
    4f54:	eb 05                	jmp    4f5b <_Z7yyparsev+0x7f>
    4f56:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    4f5b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    4f5e:	89 c2                	mov    %eax,%edx
    4f60:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4f64:	88 10                	mov    %dl,(%rax)
    4f66:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4f6a:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    4f6e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4f72:	48 01 d0             	add    %rdx,%rax
    4f75:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    4f79:	0f 82 5f 01 00 00    	jb     50de <_Z7yyparsev+0x202>
    4f7f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4f83:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    4f87:	48 83 c0 01          	add    $0x1,%rax
    4f8b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    4f8f:	48 81 7d f0 0f 27 00 	cmpq   $0x270f,-0x10(%rbp)
    4f96:	00 
    4f97:	0f 8f ae 06 00 00    	jg     564b <_Z7yyparsev+0x76f>
    4f9d:	48 d1 65 f0          	shlq   -0x10(%rbp)
    4fa1:	48 81 7d f0 10 27 00 	cmpq   $0x2710,-0x10(%rbp)
    4fa8:	00 
    4fa9:	7e 08                	jle    4fb3 <_Z7yyparsev+0xd7>
    4fab:	48 c7 45 f0 10 27 00 	movq   $0x2710,-0x10(%rbp)
    4fb2:	00 
    4fb3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4fb7:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    4fbb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4fbf:	48 89 d0             	mov    %rdx,%rax
    4fc2:	48 c1 e0 02          	shl    $0x2,%rax
    4fc6:	48 01 d0             	add    %rdx,%rax
    4fc9:	48 83 c0 03          	add    $0x3,%rax
    4fcd:	48 89 c7             	mov    %rax,%rdi
    4fd0:	e8 5b d1 ff ff       	call   2130 <malloc@plt>
    4fd5:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    4fd9:	48 83 7d 98 00       	cmpq   $0x0,-0x68(%rbp)
    4fde:	0f 84 6a 06 00 00    	je     564e <_Z7yyparsev+0x772>
    4fe4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    4fe8:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
    4fec:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4ff0:	48 89 d6             	mov    %rdx,%rsi
    4ff3:	48 89 c2             	mov    %rax,%rdx
    4ff6:	48 89 cf             	mov    %rcx,%rdi
    4ff9:	e8 12 d1 ff ff       	call   2110 <memcpy@plt>
    4ffe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    5002:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5006:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    500a:	48 83 c0 03          	add    $0x3,%rax
    500e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    5012:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    5016:	48 8d 50 03          	lea    0x3(%rax),%rdx
    501a:	48 85 c0             	test   %rax,%rax
    501d:	48 0f 48 c2          	cmovs  %rdx,%rax
    5021:	48 c1 f8 02          	sar    $0x2,%rax
    5025:	48 c1 e0 02          	shl    $0x2,%rax
    5029:	48 01 45 98          	add    %rax,-0x68(%rbp)
    502d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5031:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
    5038:	00 
    5039:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    503d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5041:	48 89 d7             	mov    %rdx,%rdi
    5044:	48 89 ca             	mov    %rcx,%rdx
    5047:	48 89 c6             	mov    %rax,%rsi
    504a:	e8 c1 d0 ff ff       	call   2110 <memcpy@plt>
    504f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    5053:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    5057:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    505b:	48 c1 e0 02          	shl    $0x2,%rax
    505f:	48 83 c0 03          	add    $0x3,%rax
    5063:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    5067:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    506b:	48 8d 50 03          	lea    0x3(%rax),%rdx
    506f:	48 85 c0             	test   %rax,%rax
    5072:	48 0f 48 c2          	cmovs  %rdx,%rax
    5076:	48 c1 f8 02          	sar    $0x2,%rax
    507a:	48 c1 e0 02          	shl    $0x2,%rax
    507e:	48 01 45 98          	add    %rax,-0x68(%rbp)
    5082:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    5089:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
    508d:	74 0c                	je     509b <_Z7yyparsev+0x1bf>
    508f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    5093:	48 89 c7             	mov    %rax,%rdi
    5096:	e8 95 cf ff ff       	call   2030 <free@plt>
    509b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    509f:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    50a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50a7:	48 01 d0             	add    %rdx,%rax
    50aa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    50ae:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    50b2:	48 c1 e0 02          	shl    $0x2,%rax
    50b6:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    50ba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    50be:	48 01 d0             	add    %rdx,%rax
    50c1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    50c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    50c9:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    50cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50d1:	48 01 d0             	add    %rdx,%rax
    50d4:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    50d8:	0f 83 60 05 00 00    	jae    563e <_Z7yyparsev+0x762>
    50de:	83 7d fc 0e          	cmpl   $0xe,-0x4(%rbp)
    50e2:	0f 84 4c 05 00 00    	je     5634 <_Z7yyparsev+0x758>
    50e8:	90                   	nop
    50e9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    50ec:	48 98                	cltq
    50ee:	48 8d 15 8b 1b 00 00 	lea    0x1b8b(%rip),%rdx        # 6c80 <_ZL6yypact>
    50f5:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    50f9:	0f be c0             	movsbl %al,%eax
    50fc:	89 45 cc             	mov    %eax,-0x34(%rbp)
    50ff:	83 7d cc d5          	cmpl   $0xffffffd5,-0x34(%rbp)
    5103:	0f 84 08 01 00 00    	je     5211 <_Z7yyparsev+0x335>
    5109:	8b 05 1d 41 00 00    	mov    0x411d(%rip),%eax        # 922c <yychar>
    510f:	83 f8 fe             	cmp    $0xfffffffe,%eax
    5112:	75 0b                	jne    511f <_Z7yyparsev+0x243>
    5114:	e8 e8 d3 ff ff       	call   2501 <_Z5yylexv>
    5119:	89 05 0d 41 00 00    	mov    %eax,0x410d(%rip)        # 922c <yychar>
    511f:	8b 05 07 41 00 00    	mov    0x4107(%rip),%eax        # 922c <yychar>
    5125:	85 c0                	test   %eax,%eax
    5127:	7f 13                	jg     513c <_Z7yyparsev+0x260>
    5129:	c7 05 f9 40 00 00 00 	movl   $0x0,0x40f9(%rip)        # 922c <yychar>
    5130:	00 00 00 
    5133:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
    513a:	eb 5a                	jmp    5196 <_Z7yyparsev+0x2ba>
    513c:	8b 05 ea 40 00 00    	mov    0x40ea(%rip),%eax        # 922c <yychar>
    5142:	3d 00 01 00 00       	cmp    $0x100,%eax
    5147:	75 16                	jne    515f <_Z7yyparsev+0x283>
    5149:	c7 05 d9 40 00 00 01 	movl   $0x101,0x40d9(%rip)        # 922c <yychar>
    5150:	01 00 00 
    5153:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%rbp)
    515a:	e9 07 04 00 00       	jmp    5566 <_Z7yyparsev+0x68a>
    515f:	8b 05 c7 40 00 00    	mov    0x40c7(%rip),%eax        # 922c <yychar>
    5165:	85 c0                	test   %eax,%eax
    5167:	78 25                	js     518e <_Z7yyparsev+0x2b2>
    5169:	8b 05 bd 40 00 00    	mov    0x40bd(%rip),%eax        # 922c <yychar>
    516f:	3d 17 01 00 00       	cmp    $0x117,%eax
    5174:	7f 18                	jg     518e <_Z7yyparsev+0x2b2>
    5176:	8b 05 b0 40 00 00    	mov    0x40b0(%rip),%eax        # 922c <yychar>
    517c:	48 98                	cltq
    517e:	48 8d 15 5b 17 00 00 	lea    0x175b(%rip),%rdx        # 68e0 <_ZL11yytranslate>
    5185:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5189:	0f be c0             	movsbl %al,%eax
    518c:	eb 05                	jmp    5193 <_Z7yyparsev+0x2b7>
    518e:	b8 02 00 00 00       	mov    $0x2,%eax
    5193:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    5196:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    5199:	01 45 cc             	add    %eax,-0x34(%rbp)
    519c:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    51a0:	78 72                	js     5214 <_Z7yyparsev+0x338>
    51a2:	83 7d cc 53          	cmpl   $0x53,-0x34(%rbp)
    51a6:	7f 6c                	jg     5214 <_Z7yyparsev+0x338>
    51a8:	8b 45 cc             	mov    -0x34(%rbp),%eax
    51ab:	48 98                	cltq
    51ad:	48 8d 15 2c 1c 00 00 	lea    0x1c2c(%rip),%rdx        # 6de0 <_ZL7yycheck>
    51b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    51b8:	0f be c0             	movsbl %al,%eax
    51bb:	39 45 c4             	cmp    %eax,-0x3c(%rbp)
    51be:	75 54                	jne    5214 <_Z7yyparsev+0x338>
    51c0:	8b 45 cc             	mov    -0x34(%rbp),%eax
    51c3:	48 98                	cltq
    51c5:	48 8d 15 b4 1b 00 00 	lea    0x1bb4(%rip),%rdx        # 6d80 <_ZL7yytable>
    51cc:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    51d0:	0f be c0             	movsbl %al,%eax
    51d3:	89 45 cc             	mov    %eax,-0x34(%rbp)
    51d6:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    51da:	7f 05                	jg     51e1 <_Z7yyparsev+0x305>
    51dc:	f7 5d cc             	negl   -0x34(%rbp)
    51df:	eb 55                	jmp    5236 <_Z7yyparsev+0x35a>
    51e1:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    51e5:	74 04                	je     51eb <_Z7yyparsev+0x30f>
    51e7:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
    51eb:	8b 45 cc             	mov    -0x34(%rbp),%eax
    51ee:	89 45 fc             	mov    %eax,-0x4(%rbp)
    51f1:	8b 15 39 40 00 00    	mov    0x4039(%rip),%edx        # 9230 <yylval>
    51f7:	48 83 45 d0 04       	addq   $0x4,-0x30(%rbp)
    51fc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5200:	89 10                	mov    %edx,(%rax)
    5202:	c7 05 20 40 00 00 fe 	movl   $0xfffffffe,0x4020(%rip)        # 922c <yychar>
    5209:	ff ff ff 
    520c:	e9 45 fd ff ff       	jmp    4f56 <_Z7yyparsev+0x7a>
    5211:	90                   	nop
    5212:	eb 01                	jmp    5215 <_Z7yyparsev+0x339>
    5214:	90                   	nop
    5215:	8b 45 fc             	mov    -0x4(%rbp),%eax
    5218:	48 98                	cltq
    521a:	48 8d 15 bf 1a 00 00 	lea    0x1abf(%rip),%rdx        # 6ce0 <_ZL8yydefact>
    5221:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5225:	0f be c0             	movsbl %al,%eax
    5228:	89 45 cc             	mov    %eax,-0x34(%rbp)
    522b:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    522f:	0f 84 7d 01 00 00    	je     53b2 <_Z7yyparsev+0x4d6>
    5235:	90                   	nop
    5236:	8b 45 cc             	mov    -0x34(%rbp),%eax
    5239:	48 98                	cltq
    523b:	48 8d 15 9e 1c 00 00 	lea    0x1c9e(%rip),%rdx        # 6ee0 <_ZL4yyr2>
    5242:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5246:	0f be c0             	movsbl %al,%eax
    5249:	89 45 c0             	mov    %eax,-0x40(%rbp)
    524c:	b8 01 00 00 00       	mov    $0x1,%eax
    5251:	2b 45 c0             	sub    -0x40(%rbp),%eax
    5254:	48 98                	cltq
    5256:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    525d:	00 
    525e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5262:	48 01 d0             	add    %rdx,%rax
    5265:	8b 00                	mov    (%rax),%eax
    5267:	89 45 84             	mov    %eax,-0x7c(%rbp)
    526a:	83 7d cc 09          	cmpl   $0x9,-0x34(%rbp)
    526e:	74 5e                	je     52ce <_Z7yyparsev+0x3f2>
    5270:	83 7d cc 09          	cmpl   $0x9,-0x34(%rbp)
    5274:	7f 69                	jg     52df <_Z7yyparsev+0x403>
    5276:	83 7d cc 05          	cmpl   $0x5,-0x34(%rbp)
    527a:	74 08                	je     5284 <_Z7yyparsev+0x3a8>
    527c:	83 7d cc 07          	cmpl   $0x7,-0x34(%rbp)
    5280:	74 27                	je     52a9 <_Z7yyparsev+0x3cd>
    5282:	eb 5b                	jmp    52df <_Z7yyparsev+0x403>
    5284:	8b 05 9e 3f 00 00    	mov    0x3f9e(%rip),%eax        # 9228 <seen_func_decl>
    528a:	85 c0                	test   %eax,%eax
    528c:	74 0f                	je     529d <_Z7yyparsev+0x3c1>
    528e:	48 8d 05 a0 1d 00 00 	lea    0x1da0(%rip),%rax        # 7035 <_ZL4yyr2+0x155>
    5295:	48 89 c7             	mov    %rax,%rdi
    5298:	e8 23 f6 ff ff       	call   48c0 <_Z7yyerrorPKc>
    529d:	c7 05 81 3f 00 00 01 	movl   $0x1,0x3f81(%rip)        # 9228 <seen_func_decl>
    52a4:	00 00 00 
    52a7:	eb 37                	jmp    52e0 <_Z7yyparsev+0x404>
    52a9:	8b 05 79 3f 00 00    	mov    0x3f79(%rip),%eax        # 9228 <seen_func_decl>
    52af:	85 c0                	test   %eax,%eax
    52b1:	74 0f                	je     52c2 <_Z7yyparsev+0x3e6>
    52b3:	48 8d 05 7b 1d 00 00 	lea    0x1d7b(%rip),%rax        # 7035 <_ZL4yyr2+0x155>
    52ba:	48 89 c7             	mov    %rax,%rdi
    52bd:	e8 fe f5 ff ff       	call   48c0 <_Z7yyerrorPKc>
    52c2:	c7 05 5c 3f 00 00 01 	movl   $0x1,0x3f5c(%rip)        # 9228 <seen_func_decl>
    52c9:	00 00 00 
    52cc:	eb 12                	jmp    52e0 <_Z7yyparsev+0x404>
    52ce:	48 8d 05 7c 1d 00 00 	lea    0x1d7c(%rip),%rax        # 7051 <_ZL4yyr2+0x171>
    52d5:	48 89 c7             	mov    %rax,%rdi
    52d8:	e8 73 cd ff ff       	call   2050 <puts@plt>
    52dd:	eb 01                	jmp    52e0 <_Z7yyparsev+0x404>
    52df:	90                   	nop
    52e0:	8b 45 c0             	mov    -0x40(%rbp),%eax
    52e3:	48 98                	cltq
    52e5:	48 c1 e0 02          	shl    $0x2,%rax
    52e9:	48 f7 d8             	neg    %rax
    52ec:	48 01 45 d0          	add    %rax,-0x30(%rbp)
    52f0:	8b 45 c0             	mov    -0x40(%rbp),%eax
    52f3:	48 98                	cltq
    52f5:	48 f7 d8             	neg    %rax
    52f8:	48 01 45 e0          	add    %rax,-0x20(%rbp)
    52fc:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    5303:	8b 55 84             	mov    -0x7c(%rbp),%edx
    5306:	48 83 45 d0 04       	addq   $0x4,-0x30(%rbp)
    530b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    530f:	89 10                	mov    %edx,(%rax)
    5311:	8b 45 cc             	mov    -0x34(%rbp),%eax
    5314:	48 98                	cltq
    5316:	48 8d 15 83 1b 00 00 	lea    0x1b83(%rip),%rdx        # 6ea0 <_ZL4yyr1>
    531d:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5321:	0f be c0             	movsbl %al,%eax
    5324:	83 e8 19             	sub    $0x19,%eax
    5327:	89 45 80             	mov    %eax,-0x80(%rbp)
    532a:	8b 45 80             	mov    -0x80(%rbp),%eax
    532d:	48 98                	cltq
    532f:	48 8d 15 0a 1a 00 00 	lea    0x1a0a(%rip),%rdx        # 6d40 <_ZL7yypgoto>
    5336:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    533a:	0f be d0             	movsbl %al,%edx
    533d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5341:	0f b6 00             	movzbl (%rax),%eax
    5344:	0f be c0             	movsbl %al,%eax
    5347:	01 d0                	add    %edx,%eax
    5349:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
    534f:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
    5356:	78 3f                	js     5397 <_Z7yyparsev+0x4bb>
    5358:	83 bd 7c ff ff ff 53 	cmpl   $0x53,-0x84(%rbp)
    535f:	7f 36                	jg     5397 <_Z7yyparsev+0x4bb>
    5361:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    5367:	48 98                	cltq
    5369:	48 8d 15 70 1a 00 00 	lea    0x1a70(%rip),%rdx        # 6de0 <_ZL7yycheck>
    5370:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    5374:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5378:	0f b6 00             	movzbl (%rax),%eax
    537b:	38 c2                	cmp    %al,%dl
    537d:	75 18                	jne    5397 <_Z7yyparsev+0x4bb>
    537f:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    5385:	48 98                	cltq
    5387:	48 8d 15 f2 19 00 00 	lea    0x19f2(%rip),%rdx        # 6d80 <_ZL7yytable>
    538e:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5392:	0f be c0             	movsbl %al,%eax
    5395:	eb 13                	jmp    53aa <_Z7yyparsev+0x4ce>
    5397:	8b 45 80             	mov    -0x80(%rbp),%eax
    539a:	48 98                	cltq
    539c:	48 8d 15 bd 19 00 00 	lea    0x19bd(%rip),%rdx        # 6d60 <_ZL9yydefgoto>
    53a3:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    53a7:	0f be c0             	movsbl %al,%eax
    53aa:	89 45 fc             	mov    %eax,-0x4(%rbp)
    53ad:	e9 a4 fb ff ff       	jmp    4f56 <_Z7yyparsev+0x7a>
    53b2:	90                   	nop
    53b3:	8b 05 73 3e 00 00    	mov    0x3e73(%rip),%eax        # 922c <yychar>
    53b9:	83 f8 fe             	cmp    $0xfffffffe,%eax
    53bc:	74 36                	je     53f4 <_Z7yyparsev+0x518>
    53be:	8b 05 68 3e 00 00    	mov    0x3e68(%rip),%eax        # 922c <yychar>
    53c4:	85 c0                	test   %eax,%eax
    53c6:	78 25                	js     53ed <_Z7yyparsev+0x511>
    53c8:	8b 05 5e 3e 00 00    	mov    0x3e5e(%rip),%eax        # 922c <yychar>
    53ce:	3d 17 01 00 00       	cmp    $0x117,%eax
    53d3:	7f 18                	jg     53ed <_Z7yyparsev+0x511>
    53d5:	8b 05 51 3e 00 00    	mov    0x3e51(%rip),%eax        # 922c <yychar>
    53db:	48 98                	cltq
    53dd:	48 8d 15 fc 14 00 00 	lea    0x14fc(%rip),%rdx        # 68e0 <_ZL11yytranslate>
    53e4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    53e8:	0f be c0             	movsbl %al,%eax
    53eb:	eb 0c                	jmp    53f9 <_Z7yyparsev+0x51d>
    53ed:	b8 02 00 00 00       	mov    $0x2,%eax
    53f2:	eb 05                	jmp    53f9 <_Z7yyparsev+0x51d>
    53f4:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    53f9:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    53fc:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    5400:	0f 85 1b 01 00 00    	jne    5521 <_Z7yyparsev+0x645>
    5406:	8b 05 28 3e 00 00    	mov    0x3e28(%rip),%eax        # 9234 <yynerrs>
    540c:	83 c0 01             	add    $0x1,%eax
    540f:	89 05 1f 3e 00 00    	mov    %eax,0x3e1f(%rip)        # 9234 <yynerrs>
    5415:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5419:	48 89 85 f0 fa ff ff 	mov    %rax,-0x510(%rbp)
    5420:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    5423:	89 85 f8 fa ff ff    	mov    %eax,-0x508(%rbp)
    5429:	48 8d 05 e7 1a 00 00 	lea    0x1ae7(%rip),%rax        # 6f17 <_ZL4yyr2+0x37>
    5430:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    5434:	48 8d 95 f0 fa ff ff 	lea    -0x510(%rbp),%rdx
    543b:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    5442:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    5449:	48 89 ce             	mov    %rcx,%rsi
    544c:	48 89 c7             	mov    %rax,%rdi
    544f:	e8 2c f8 ff ff       	call   4c80 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t>
    5454:	89 45 b4             	mov    %eax,-0x4c(%rbp)
    5457:	83 7d b4 00          	cmpl   $0x0,-0x4c(%rbp)
    545b:	75 10                	jne    546d <_Z7yyparsev+0x591>
    545d:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    5464:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    5468:	e9 9e 00 00 00       	jmp    550b <_Z7yyparsev+0x62f>
    546d:	83 7d b4 ff          	cmpl   $0xffffffff,-0x4c(%rbp)
    5471:	0f 85 94 00 00 00    	jne    550b <_Z7yyparsev+0x62f>
    5477:	48 8b 95 08 fb ff ff 	mov    -0x4f8(%rbp),%rdx
    547e:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    5485:	48 39 c2             	cmp    %rax,%rdx
    5488:	74 0f                	je     5499 <_Z7yyparsev+0x5bd>
    548a:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    5491:	48 89 c7             	mov    %rax,%rdi
    5494:	e8 97 cb ff ff       	call   2030 <free@plt>
    5499:	48 8b 85 00 fb ff ff 	mov    -0x500(%rbp),%rax
    54a0:	48 89 c7             	mov    %rax,%rdi
    54a3:	e8 88 cc ff ff       	call   2130 <malloc@plt>
    54a8:	48 89 85 08 fb ff ff 	mov    %rax,-0x4f8(%rbp)
    54af:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    54b6:	48 85 c0             	test   %rax,%rax
    54b9:	74 30                	je     54eb <_Z7yyparsev+0x60f>
    54bb:	48 8d 95 f0 fa ff ff 	lea    -0x510(%rbp),%rdx
    54c2:	48 8d 8d 08 fb ff ff 	lea    -0x4f8(%rbp),%rcx
    54c9:	48 8d 85 00 fb ff ff 	lea    -0x500(%rbp),%rax
    54d0:	48 89 ce             	mov    %rcx,%rsi
    54d3:	48 89 c7             	mov    %rax,%rdi
    54d6:	e8 a5 f7 ff ff       	call   4c80 <_ZL14yysyntax_errorPlPPcPK12yypcontext_t>
    54db:	89 45 b4             	mov    %eax,-0x4c(%rbp)
    54de:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    54e5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    54e9:	eb 20                	jmp    550b <_Z7yyparsev+0x62f>
    54eb:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    54f2:	48 89 85 08 fb ff ff 	mov    %rax,-0x4f8(%rbp)
    54f9:	48 c7 85 00 fb ff ff 	movq   $0x80,-0x500(%rbp)
    5500:	80 00 00 00 
    5504:	c7 45 b4 fe ff ff ff 	movl   $0xfffffffe,-0x4c(%rbp)
    550b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    550f:	48 89 c7             	mov    %rax,%rdi
    5512:	e8 a9 f3 ff ff       	call   48c0 <_Z7yyerrorPKc>
    5517:	83 7d b4 fe          	cmpl   $0xfffffffe,-0x4c(%rbp)
    551b:	0f 84 30 01 00 00    	je     5651 <_Z7yyparsev+0x775>
    5521:	83 7d f8 03          	cmpl   $0x3,-0x8(%rbp)
    5525:	75 3e                	jne    5565 <_Z7yyparsev+0x689>
    5527:	8b 05 ff 3c 00 00    	mov    0x3cff(%rip),%eax        # 922c <yychar>
    552d:	85 c0                	test   %eax,%eax
    552f:	7f 0f                	jg     5540 <_Z7yyparsev+0x664>
    5531:	8b 05 f5 3c 00 00    	mov    0x3cf5(%rip),%eax        # 922c <yychar>
    5537:	85 c0                	test   %eax,%eax
    5539:	75 2a                	jne    5565 <_Z7yyparsev+0x689>
    553b:	e9 02 01 00 00       	jmp    5642 <_Z7yyparsev+0x766>
    5540:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    5543:	48 8d 15 e6 3c 00 00 	lea    0x3ce6(%rip),%rdx        # 9230 <yylval>
    554a:	89 c6                	mov    %eax,%esi
    554c:	48 8d 05 04 1b 00 00 	lea    0x1b04(%rip),%rax        # 7057 <_ZL4yyr2+0x177>
    5553:	48 89 c7             	mov    %rax,%rdi
    5556:	e8 5d f9 ff ff       	call   4eb8 <_ZL10yydestructPKc15yysymbol_kind_tPi>
    555b:	c7 05 c7 3c 00 00 fe 	movl   $0xfffffffe,0x3cc7(%rip)        # 922c <yychar>
    5562:	ff ff ff 
    5565:	90                   	nop
    5566:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
    556d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    5570:	48 98                	cltq
    5572:	48 8d 15 07 17 00 00 	lea    0x1707(%rip),%rdx        # 6c80 <_ZL6yypact>
    5579:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    557d:	0f be c0             	movsbl %al,%eax
    5580:	89 45 cc             	mov    %eax,-0x34(%rbp)
    5583:	83 7d cc d5          	cmpl   $0xffffffd5,-0x34(%rbp)
    5587:	74 40                	je     55c9 <_Z7yyparsev+0x6ed>
    5589:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    558d:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    5591:	78 36                	js     55c9 <_Z7yyparsev+0x6ed>
    5593:	83 7d cc 53          	cmpl   $0x53,-0x34(%rbp)
    5597:	7f 30                	jg     55c9 <_Z7yyparsev+0x6ed>
    5599:	8b 45 cc             	mov    -0x34(%rbp),%eax
    559c:	48 98                	cltq
    559e:	48 8d 15 3b 18 00 00 	lea    0x183b(%rip),%rdx        # 6de0 <_ZL7yycheck>
    55a5:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    55a9:	3c 01                	cmp    $0x1,%al
    55ab:	75 1c                	jne    55c9 <_Z7yyparsev+0x6ed>
    55ad:	8b 45 cc             	mov    -0x34(%rbp),%eax
    55b0:	48 98                	cltq
    55b2:	48 8d 15 c7 17 00 00 	lea    0x17c7(%rip),%rdx        # 6d80 <_ZL7yytable>
    55b9:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    55bd:	0f be c0             	movsbl %al,%eax
    55c0:	89 45 cc             	mov    %eax,-0x34(%rbp)
    55c3:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    55c7:	7f 4e                	jg     5617 <_Z7yyparsev+0x73b>
    55c9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    55cd:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    55d1:	74 6e                	je     5641 <_Z7yyparsev+0x765>
    55d3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    55d6:	48 98                	cltq
    55d8:	48 8d 15 61 18 00 00 	lea    0x1861(%rip),%rdx        # 6e40 <_ZL6yystos>
    55df:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    55e3:	0f be c0             	movsbl %al,%eax
    55e6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    55ea:	89 c6                	mov    %eax,%esi
    55ec:	48 8d 05 76 1a 00 00 	lea    0x1a76(%rip),%rax        # 7069 <_ZL4yyr2+0x189>
    55f3:	48 89 c7             	mov    %rax,%rdi
    55f6:	e8 bd f8 ff ff       	call   4eb8 <_ZL10yydestructPKc15yysymbol_kind_tPi>
    55fb:	48 83 6d d0 04       	subq   $0x4,-0x30(%rbp)
    5600:	48 83 6d e0 01       	subq   $0x1,-0x20(%rbp)
    5605:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5609:	0f b6 00             	movzbl (%rax),%eax
    560c:	0f be c0             	movsbl %al,%eax
    560f:	89 45 fc             	mov    %eax,-0x4(%rbp)
    5612:	e9 56 ff ff ff       	jmp    556d <_Z7yyparsev+0x691>
    5617:	90                   	nop
    5618:	8b 15 12 3c 00 00    	mov    0x3c12(%rip),%edx        # 9230 <yylval>
    561e:	48 83 45 d0 04       	addq   $0x4,-0x30(%rbp)
    5623:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5627:	89 10                	mov    %edx,(%rax)
    5629:	8b 45 cc             	mov    -0x34(%rbp),%eax
    562c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    562f:	e9 22 f9 ff ff       	jmp    4f56 <_Z7yyparsev+0x7a>
    5634:	90                   	nop
    5635:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    563c:	eb 2b                	jmp    5669 <_Z7yyparsev+0x78d>
    563e:	90                   	nop
    563f:	eb 01                	jmp    5642 <_Z7yyparsev+0x766>
    5641:	90                   	nop
    5642:	c7 45 c8 01 00 00 00 	movl   $0x1,-0x38(%rbp)
    5649:	eb 1e                	jmp    5669 <_Z7yyparsev+0x78d>
    564b:	90                   	nop
    564c:	eb 04                	jmp    5652 <_Z7yyparsev+0x776>
    564e:	90                   	nop
    564f:	eb 01                	jmp    5652 <_Z7yyparsev+0x776>
    5651:	90                   	nop
    5652:	48 8d 05 1f 1a 00 00 	lea    0x1a1f(%rip),%rax        # 7078 <_ZL4yyr2+0x198>
    5659:	48 89 c7             	mov    %rax,%rdi
    565c:	e8 5f f2 ff ff       	call   48c0 <_Z7yyerrorPKc>
    5661:	c7 45 c8 02 00 00 00 	movl   $0x2,-0x38(%rbp)
    5668:	90                   	nop
    5669:	8b 05 bd 3b 00 00    	mov    0x3bbd(%rip),%eax        # 922c <yychar>
    566f:	83 f8 fe             	cmp    $0xfffffffe,%eax
    5672:	74 52                	je     56c6 <_Z7yyparsev+0x7ea>
    5674:	8b 05 b2 3b 00 00    	mov    0x3bb2(%rip),%eax        # 922c <yychar>
    567a:	85 c0                	test   %eax,%eax
    567c:	78 25                	js     56a3 <_Z7yyparsev+0x7c7>
    567e:	8b 05 a8 3b 00 00    	mov    0x3ba8(%rip),%eax        # 922c <yychar>
    5684:	3d 17 01 00 00       	cmp    $0x117,%eax
    5689:	7f 18                	jg     56a3 <_Z7yyparsev+0x7c7>
    568b:	8b 05 9b 3b 00 00    	mov    0x3b9b(%rip),%eax        # 922c <yychar>
    5691:	48 98                	cltq
    5693:	48 8d 15 46 12 00 00 	lea    0x1246(%rip),%rdx        # 68e0 <_ZL11yytranslate>
    569a:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    569e:	0f be c0             	movsbl %al,%eax
    56a1:	eb 05                	jmp    56a8 <_Z7yyparsev+0x7cc>
    56a3:	b8 02 00 00 00       	mov    $0x2,%eax
    56a8:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    56ab:	8b 45 c4             	mov    -0x3c(%rbp),%eax
    56ae:	48 8d 15 7b 3b 00 00 	lea    0x3b7b(%rip),%rdx        # 9230 <yylval>
    56b5:	89 c6                	mov    %eax,%esi
    56b7:	48 8d 05 cb 19 00 00 	lea    0x19cb(%rip),%rax        # 7089 <_ZL4yyr2+0x1a9>
    56be:	48 89 c7             	mov    %rax,%rdi
    56c1:	e8 f2 f7 ff ff       	call   4eb8 <_ZL10yydestructPKc15yysymbol_kind_tPi>
    56c6:	8b 45 c0             	mov    -0x40(%rbp),%eax
    56c9:	48 98                	cltq
    56cb:	48 c1 e0 02          	shl    $0x2,%rax
    56cf:	48 f7 d8             	neg    %rax
    56d2:	48 01 45 d0          	add    %rax,-0x30(%rbp)
    56d6:	8b 45 c0             	mov    -0x40(%rbp),%eax
    56d9:	48 98                	cltq
    56db:	48 f7 d8             	neg    %rax
    56de:	48 01 45 e0          	add    %rax,-0x20(%rbp)
    56e2:	eb 39                	jmp    571d <_Z7yyparsev+0x841>
    56e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56e8:	0f b6 00             	movzbl (%rax),%eax
    56eb:	0f be c0             	movsbl %al,%eax
    56ee:	48 98                	cltq
    56f0:	48 8d 15 49 17 00 00 	lea    0x1749(%rip),%rdx        # 6e40 <_ZL6yystos>
    56f7:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    56fb:	0f be c0             	movsbl %al,%eax
    56fe:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    5702:	89 c6                	mov    %eax,%esi
    5704:	48 8d 05 9c 19 00 00 	lea    0x199c(%rip),%rax        # 70a7 <_ZL4yyr2+0x1c7>
    570b:	48 89 c7             	mov    %rax,%rdi
    570e:	e8 a5 f7 ff ff       	call   4eb8 <_ZL10yydestructPKc15yysymbol_kind_tPi>
    5713:	48 83 6d d0 04       	subq   $0x4,-0x30(%rbp)
    5718:	48 83 6d e0 01       	subq   $0x1,-0x20(%rbp)
    571d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5721:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    5725:	75 bd                	jne    56e4 <_Z7yyparsev+0x808>
    5727:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
    572e:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    5732:	74 0c                	je     5740 <_Z7yyparsev+0x864>
    5734:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5738:	48 89 c7             	mov    %rax,%rdi
    573b:	e8 f0 c8 ff ff       	call   2030 <free@plt>
    5740:	48 8b 95 08 fb ff ff 	mov    -0x4f8(%rbp),%rdx
    5747:	48 8d 85 10 fb ff ff 	lea    -0x4f0(%rbp),%rax
    574e:	48 39 c2             	cmp    %rax,%rdx
    5751:	74 0f                	je     5762 <_Z7yyparsev+0x886>
    5753:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    575a:	48 89 c7             	mov    %rax,%rdi
    575d:	e8 ce c8 ff ff       	call   2030 <free@plt>
    5762:	8b 45 c8             	mov    -0x38(%rbp),%eax
    5765:	c9                   	leave
    5766:	c3                   	ret

Disassembly of section .fini:

0000000000005768 <_fini>:
    5768:	48 83 ec 08          	sub    $0x8,%rsp
    576c:	48 83 c4 08          	add    $0x8,%rsp
    5770:	c3                   	ret
