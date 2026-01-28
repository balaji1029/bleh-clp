
sclp:     file format elf64-x86-64


Disassembly of section .init:

0000000000004000 <_init>:
    4000:	48 83 ec 08          	sub    $0x8,%rsp
    4004:	48 8b 05 bd df 00 00 	mov    0xdfbd(%rip),%rax        # 11fc8 <__gmon_start__@Base>
    400b:	48 85 c0             	test   %rax,%rax
    400e:	74 02                	je     4012 <_init+0x12>
    4010:	ff d0                	call   *%rax
    4012:	48 83 c4 08          	add    $0x8,%rsp
    4016:	c3                   	ret

Disassembly of section .plt:

0000000000004020 <_Znam@plt-0x10>:
    4020:	ff 35 ca df 00 00    	push   0xdfca(%rip)        # 11ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    4026:	ff 25 cc df 00 00    	jmp    *0xdfcc(%rip)        # 11ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    402c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000004030 <_Znam@plt>:
    4030:	ff 25 ca df 00 00    	jmp    *0xdfca(%rip)        # 12000 <_Znam@GLIBCXX_3.4>
    4036:	68 00 00 00 00       	push   $0x0
    403b:	e9 e0 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004040 <__errno_location@plt>:
    4040:	ff 25 c2 df 00 00    	jmp    *0xdfc2(%rip)        # 12008 <__errno_location@GLIBC_2.2.5>
    4046:	68 01 00 00 00       	push   $0x1
    404b:	e9 d0 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004050 <_ZNSaIcED2Ev@plt>:
    4050:	ff 25 ba df 00 00    	jmp    *0xdfba(%rip)        # 12010 <_ZNSaIcED2Ev@GLIBCXX_3.4>
    4056:	68 02 00 00 00       	push   $0x2
    405b:	e9 c0 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004060 <clearerr@plt>:
    4060:	ff 25 b2 df 00 00    	jmp    *0xdfb2(%rip)        # 12018 <clearerr@GLIBC_2.2.5>
    4066:	68 03 00 00 00       	push   $0x3
    406b:	e9 b0 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004070 <getc@plt>:
    4070:	ff 25 aa df 00 00    	jmp    *0xdfaa(%rip)        # 12020 <getc@GLIBC_2.2.5>
    4076:	68 04 00 00 00       	push   $0x4
    407b:	e9 a0 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004080 <_ZSt17__throw_bad_allocv@plt>:
    4080:	ff 25 a2 df 00 00    	jmp    *0xdfa2(%rip)        # 12028 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
    4086:	68 05 00 00 00       	push   $0x5
    408b:	e9 90 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004090 <__cxa_begin_catch@plt>:
    4090:	ff 25 9a df 00 00    	jmp    *0xdf9a(%rip)        # 12030 <__cxa_begin_catch@CXXABI_1.3>
    4096:	68 06 00 00 00       	push   $0x6
    409b:	e9 80 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040a0 <strlen@plt>:
    40a0:	ff 25 92 df 00 00    	jmp    *0xdf92(%rip)        # 12038 <strlen@GLIBC_2.2.5>
    40a6:	68 07 00 00 00       	push   $0x7
    40ab:	e9 70 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040b0 <_ZSt20__throw_length_errorPKc@plt>:
    40b0:	ff 25 8a df 00 00    	jmp    *0xdf8a(%rip)        # 12040 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
    40b6:	68 08 00 00 00       	push   $0x8
    40bb:	e9 60 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040c0 <memset@plt>:
    40c0:	ff 25 82 df 00 00    	jmp    *0xdf82(%rip)        # 12048 <memset@GLIBC_2.2.5>
    40c6:	68 09 00 00 00       	push   $0x9
    40cb:	e9 50 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040d0 <_ZSt19__throw_logic_errorPKc@plt>:
    40d0:	ff 25 7a df 00 00    	jmp    *0xdf7a(%rip)        # 12050 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    40d6:	68 0a 00 00 00       	push   $0xa
    40db:	e9 40 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040e0 <_ZSt28__throw_bad_array_new_lengthv@plt>:
    40e0:	ff 25 72 df 00 00    	jmp    *0xdf72(%rip)        # 12058 <_ZSt28__throw_bad_array_new_lengthv@GLIBCXX_3.4.29>
    40e6:	68 0b 00 00 00       	push   $0xb
    40eb:	e9 30 ff ff ff       	jmp    4020 <_init+0x20>

00000000000040f0 <memcpy@plt>:
    40f0:	ff 25 6a df 00 00    	jmp    *0xdf6a(%rip)        # 12060 <memcpy@GLIBC_2.14>
    40f6:	68 0c 00 00 00       	push   $0xc
    40fb:	e9 20 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004100 <perror@plt>:
    4100:	ff 25 62 df 00 00    	jmp    *0xdf62(%rip)        # 12068 <perror@GLIBC_2.2.5>
    4106:	68 0d 00 00 00       	push   $0xd
    410b:	e9 10 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004110 <__cxa_atexit@plt>:
    4110:	ff 25 5a df 00 00    	jmp    *0xdf5a(%rip)        # 12070 <__cxa_atexit@GLIBC_2.2.5>
    4116:	68 0e 00 00 00       	push   $0xe
    411b:	e9 00 ff ff ff       	jmp    4020 <_init+0x20>

0000000000004120 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>:
    4120:	ff 25 52 df 00 00    	jmp    *0xdf52(%rip)        # 12078 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@GLIBCXX_3.4.21>
    4126:	68 0f 00 00 00       	push   $0xf
    412b:	e9 f0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004130 <_ZdlPv@plt>:
    4130:	ff 25 4a df 00 00    	jmp    *0xdf4a(%rip)        # 12080 <_ZdlPv@GLIBCXX_3.4>
    4136:	68 10 00 00 00       	push   $0x10
    413b:	e9 e0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004140 <fclose@plt>:
    4140:	ff 25 42 df 00 00    	jmp    *0xdf42(%rip)        # 12088 <fclose@GLIBC_2.2.5>
    4146:	68 11 00 00 00       	push   $0x11
    414b:	e9 d0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004150 <_Znwm@plt>:
    4150:	ff 25 3a df 00 00    	jmp    *0xdf3a(%rip)        # 12090 <_Znwm@GLIBCXX_3.4>
    4156:	68 12 00 00 00       	push   $0x12
    415b:	e9 c0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004160 <_ZdlPvm@plt>:
    4160:	ff 25 32 df 00 00    	jmp    *0xdf32(%rip)        # 12098 <_ZdlPvm@CXXABI_1.3.9>
    4166:	68 13 00 00 00       	push   $0x13
    416b:	e9 b0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004170 <_ZNSolsEPFRSoS_E@plt>:
    4170:	ff 25 2a df 00 00    	jmp    *0xdf2a(%rip)        # 120a0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    4176:	68 14 00 00 00       	push   $0x14
    417b:	e9 a0 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004180 <fileno@plt>:
    4180:	ff 25 22 df 00 00    	jmp    *0xdf22(%rip)        # 120a8 <fileno@GLIBC_2.2.5>
    4186:	68 15 00 00 00       	push   $0x15
    418b:	e9 90 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004190 <freopen@plt>:
    4190:	ff 25 1a df 00 00    	jmp    *0xdf1a(%rip)        # 120b0 <freopen@GLIBC_2.2.5>
    4196:	68 16 00 00 00       	push   $0x16
    419b:	e9 80 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041a0 <_ZNSaIcED1Ev@plt>:
    41a0:	ff 25 12 df 00 00    	jmp    *0xdf12(%rip)        # 120b8 <_ZNSaIcED1Ev@GLIBCXX_3.4>
    41a6:	68 17 00 00 00       	push   $0x17
    41ab:	e9 70 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041b0 <_ZNSt13runtime_errorD2Ev@plt>:
    41b0:	ff 25 0a df 00 00    	jmp    *0xdf0a(%rip)        # 120c0 <_ZNSt13runtime_errorD2Ev@GLIBCXX_3.4>
    41b6:	68 18 00 00 00       	push   $0x18
    41bb:	e9 60 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041c0 <fopen@plt>:
    41c0:	ff 25 02 df 00 00    	jmp    *0xdf02(%rip)        # 120c8 <fopen@GLIBC_2.2.5>
    41c6:	68 19 00 00 00       	push   $0x19
    41cb:	e9 50 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041d0 <free@plt>:
    41d0:	ff 25 fa de 00 00    	jmp    *0xdefa(%rip)        # 120d0 <free@GLIBC_2.2.5>
    41d6:	68 1a 00 00 00       	push   $0x1a
    41db:	e9 40 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041e0 <exit@plt>:
    41e0:	ff 25 f2 de 00 00    	jmp    *0xdef2(%rip)        # 120d8 <exit@GLIBC_2.2.5>
    41e6:	68 1b 00 00 00       	push   $0x1b
    41eb:	e9 30 fe ff ff       	jmp    4020 <_init+0x20>

00000000000041f0 <_ZdaPv@plt>:
    41f0:	ff 25 ea de 00 00    	jmp    *0xdeea(%rip)        # 120e0 <_ZdaPv@GLIBCXX_3.4>
    41f6:	68 1c 00 00 00       	push   $0x1c
    41fb:	e9 20 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004200 <malloc@plt>:
    4200:	ff 25 e2 de 00 00    	jmp    *0xdee2(%rip)        # 120e8 <malloc@GLIBC_2.2.5>
    4206:	68 1d 00 00 00       	push   $0x1d
    420b:	e9 10 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004210 <_ZNSaIcEC2ERKS_@plt>:
    4210:	ff 25 da de 00 00    	jmp    *0xdeda(%rip)        # 120f0 <_ZNSaIcEC2ERKS_@GLIBCXX_3.4>
    4216:	68 1e 00 00 00       	push   $0x1e
    421b:	e9 00 fe ff ff       	jmp    4020 <_init+0x20>

0000000000004220 <fprintf@plt>:
    4220:	ff 25 d2 de 00 00    	jmp    *0xded2(%rip)        # 120f8 <fprintf@GLIBC_2.2.5>
    4226:	68 1f 00 00 00       	push   $0x1f
    422b:	e9 f0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004230 <__cxa_rethrow@plt>:
    4230:	ff 25 ca de 00 00    	jmp    *0xdeca(%rip)        # 12100 <__cxa_rethrow@CXXABI_1.3>
    4236:	68 20 00 00 00       	push   $0x20
    423b:	e9 e0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004240 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>:
    4240:	ff 25 c2 de 00 00    	jmp    *0xdec2(%rip)        # 12108 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
    4246:	68 21 00 00 00       	push   $0x21
    424b:	e9 d0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004250 <fread@plt>:
    4250:	ff 25 ba de 00 00    	jmp    *0xdeba(%rip)        # 12110 <fread@GLIBC_2.2.5>
    4256:	68 22 00 00 00       	push   $0x22
    425b:	e9 c0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004260 <_ZSt24__throw_out_of_range_fmtPKcz@plt>:
    4260:	ff 25 b2 de 00 00    	jmp    *0xdeb2(%rip)        # 12118 <_ZSt24__throw_out_of_range_fmtPKcz@GLIBCXX_3.4.20>
    4266:	68 23 00 00 00       	push   $0x23
    426b:	e9 b0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004270 <_ZNSt8ios_base4InitC1Ev@plt>:
    4270:	ff 25 aa de 00 00    	jmp    *0xdeaa(%rip)        # 12120 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    4276:	68 24 00 00 00       	push   $0x24
    427b:	e9 a0 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004280 <puts@plt>:
    4280:	ff 25 a2 de 00 00    	jmp    *0xdea2(%rip)        # 12128 <puts@GLIBC_2.2.5>
    4286:	68 25 00 00 00       	push   $0x25
    428b:	e9 90 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004290 <memmove@plt>:
    4290:	ff 25 9a de 00 00    	jmp    *0xde9a(%rip)        # 12130 <memmove@GLIBC_2.2.5>
    4296:	68 26 00 00 00       	push   $0x26
    429b:	e9 80 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042a0 <__cxa_end_catch@plt>:
    42a0:	ff 25 92 de 00 00    	jmp    *0xde92(%rip)        # 12138 <__cxa_end_catch@CXXABI_1.3>
    42a6:	68 27 00 00 00       	push   $0x27
    42ab:	e9 70 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042b0 <realloc@plt>:
    42b0:	ff 25 8a de 00 00    	jmp    *0xde8a(%rip)        # 12140 <realloc@GLIBC_2.2.5>
    42b6:	68 28 00 00 00       	push   $0x28
    42bb:	e9 60 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042c0 <getopt_long@plt>:
    42c0:	ff 25 82 de 00 00    	jmp    *0xde82(%rip)        # 12148 <getopt_long@GLIBC_2.2.5>
    42c6:	68 29 00 00 00       	push   $0x29
    42cb:	e9 50 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042d0 <isatty@plt>:
    42d0:	ff 25 7a de 00 00    	jmp    *0xde7a(%rip)        # 12150 <isatty@GLIBC_2.2.5>
    42d6:	68 2a 00 00 00       	push   $0x2a
    42db:	e9 40 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042e0 <_Unwind_Resume@plt>:
    42e0:	ff 25 72 de 00 00    	jmp    *0xde72(%rip)        # 12158 <_Unwind_Resume@GCC_3.0>
    42e6:	68 2b 00 00 00       	push   $0x2b
    42eb:	e9 30 fd ff ff       	jmp    4020 <_init+0x20>

00000000000042f0 <_ZNSaIcEC1Ev@plt>:
    42f0:	ff 25 6a de 00 00    	jmp    *0xde6a(%rip)        # 12160 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
    42f6:	68 2c 00 00 00       	push   $0x2c
    42fb:	e9 20 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004300 <ferror@plt>:
    4300:	ff 25 62 de 00 00    	jmp    *0xde62(%rip)        # 12168 <ferror@GLIBC_2.2.5>
    4306:	68 2d 00 00 00       	push   $0x2d
    430b:	e9 10 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004310 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>:
    4310:	ff 25 5a de 00 00    	jmp    *0xde5a(%rip)        # 12170 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@GLIBCXX_3.4.21>
    4316:	68 2e 00 00 00       	push   $0x2e
    431b:	e9 00 fd ff ff       	jmp    4020 <_init+0x20>

0000000000004320 <fwrite@plt>:
    4320:	ff 25 52 de 00 00    	jmp    *0xde52(%rip)        # 12178 <fwrite@GLIBC_2.2.5>
    4326:	68 2f 00 00 00       	push   $0x2f
    432b:	e9 f0 fc ff ff       	jmp    4020 <_init+0x20>

Disassembly of section .plt.got:

0000000000004330 <__cxa_finalize@plt>:
    4330:	ff 25 6a dc 00 00    	jmp    *0xdc6a(%rip)        # 11fa0 <__cxa_finalize@GLIBC_2.2.5>
    4336:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000004340 <_start>:
    4340:	31 ed                	xor    %ebp,%ebp
    4342:	49 89 d1             	mov    %rdx,%r9
    4345:	5e                   	pop    %rsi
    4346:	48 89 e2             	mov    %rsp,%rdx
    4349:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    434d:	50                   	push   %rax
    434e:	54                   	push   %rsp
    434f:	45 31 c0             	xor    %r8d,%r8d
    4352:	31 c9                	xor    %ecx,%ecx
    4354:	48 8d 3d cb 02 00 00 	lea    0x2cb(%rip),%rdi        # 4626 <main>
    435b:	ff 15 4f dc 00 00    	call   *0xdc4f(%rip)        # 11fb0 <__libc_start_main@GLIBC_2.34>
    4361:	f4                   	hlt
    4362:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4369:	00 00 00 
    436c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000004370 <deregister_tm_clones>:
    4370:	48 8d 3d e1 de 00 00 	lea    0xdee1(%rip),%rdi        # 12258 <__TMC_END__>
    4377:	48 8d 05 da de 00 00 	lea    0xdeda(%rip),%rax        # 12258 <__TMC_END__>
    437e:	48 39 f8             	cmp    %rdi,%rax
    4381:	74 15                	je     4398 <deregister_tm_clones+0x28>
    4383:	48 8b 05 36 dc 00 00 	mov    0xdc36(%rip),%rax        # 11fc0 <_ITM_deregisterTMCloneTable@Base>
    438a:	48 85 c0             	test   %rax,%rax
    438d:	74 09                	je     4398 <deregister_tm_clones+0x28>
    438f:	ff e0                	jmp    *%rax
    4391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4398:	c3                   	ret
    4399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000043a0 <register_tm_clones>:
    43a0:	48 8d 3d b1 de 00 00 	lea    0xdeb1(%rip),%rdi        # 12258 <__TMC_END__>
    43a7:	48 8d 35 aa de 00 00 	lea    0xdeaa(%rip),%rsi        # 12258 <__TMC_END__>
    43ae:	48 29 fe             	sub    %rdi,%rsi
    43b1:	48 89 f0             	mov    %rsi,%rax
    43b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    43b8:	48 c1 f8 03          	sar    $0x3,%rax
    43bc:	48 01 c6             	add    %rax,%rsi
    43bf:	48 d1 fe             	sar    %rsi
    43c2:	74 14                	je     43d8 <register_tm_clones+0x38>
    43c4:	48 8b 05 05 dc 00 00 	mov    0xdc05(%rip),%rax        # 11fd0 <_ITM_registerTMCloneTable@Base>
    43cb:	48 85 c0             	test   %rax,%rax
    43ce:	74 08                	je     43d8 <register_tm_clones+0x38>
    43d0:	ff e0                	jmp    *%rax
    43d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    43d8:	c3                   	ret
    43d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000043e0 <__do_global_dtors_aux>:
    43e0:	f3 0f 1e fa          	endbr64
    43e4:	80 3d c5 df 00 00 00 	cmpb   $0x0,0xdfc5(%rip)        # 123b0 <completed.0>
    43eb:	75 2b                	jne    4418 <__do_global_dtors_aux+0x38>
    43ed:	55                   	push   %rbp
    43ee:	48 83 3d aa db 00 00 	cmpq   $0x0,0xdbaa(%rip)        # 11fa0 <__cxa_finalize@GLIBC_2.2.5>
    43f5:	00 
    43f6:	48 89 e5             	mov    %rsp,%rbp
    43f9:	74 0c                	je     4407 <__do_global_dtors_aux+0x27>
    43fb:	48 8b 3d 86 dd 00 00 	mov    0xdd86(%rip),%rdi        # 12188 <__dso_handle>
    4402:	e8 29 ff ff ff       	call   4330 <__cxa_finalize@plt>
    4407:	e8 64 ff ff ff       	call   4370 <deregister_tm_clones>
    440c:	c6 05 9d df 00 00 01 	movb   $0x1,0xdf9d(%rip)        # 123b0 <completed.0>
    4413:	5d                   	pop    %rbp
    4414:	c3                   	ret
    4415:	0f 1f 00             	nopl   (%rax)
    4418:	c3                   	ret
    4419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004420 <frame_dummy>:
    4420:	f3 0f 1e fa          	endbr64
    4424:	e9 77 ff ff ff       	jmp    43a0 <register_tm_clones>

0000000000004429 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
// extern int yyparse();

#define ERROR "Usage: A1-sclp [OPTION...] [FILE]\nTry `A1-sclp --help' or `A1-sclp --usage' for more information.\n"

void process_command_options(int argc, char * argv[], bool& show_tokens, std::string& token_output_filename)
{
    4429:	55                   	push   %rbp
    442a:	48 89 e5             	mov    %rsp,%rbp
    442d:	53                   	push   %rbx
    442e:	48 83 ec 78          	sub    $0x78,%rsp
    4432:	89 7d 9c             	mov    %edi,-0x64(%rbp)
    4435:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    4439:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    443d:	48 89 4d 80          	mov    %rcx,-0x80(%rbp)
    static struct option long_opts[] = {
        {"show-tokens", no_argument, 0, 't'},
        {0, 0, 0, 0}
    };

    while ((opt = getopt_long(argc, argv, "t", long_opts, NULL)) != -1) {
    4441:	eb 3c                	jmp    447f <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x56>
        switch (opt) {
    4443:	83 7d ec 74          	cmpl   $0x74,-0x14(%rbp)
    4447:	75 09                	jne    4452 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x29>
            case 't':
                show_tokens = true;
    4449:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    444d:	c6 00 01             	movb   $0x1,(%rax)
                break;
    4450:	eb 2d                	jmp    447f <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x56>
            default:
                fprintf(stderr, ERROR);
    4452:	48 8b 05 27 de 00 00 	mov    0xde27(%rip),%rax        # 12280 <stderr@GLIBC_2.2.5>
    4459:	48 89 c1             	mov    %rax,%rcx
    445c:	ba 62 00 00 00       	mov    $0x62,%edx
    4461:	be 01 00 00 00       	mov    $0x1,%esi
    4466:	48 8d 05 ab 7b 00 00 	lea    0x7bab(%rip),%rax        # c018 <_IO_stdin_used+0x18>
    446d:	48 89 c7             	mov    %rax,%rdi
    4470:	e8 ab fe ff ff       	call   4320 <fwrite@plt>
                exit(1);
    4475:	bf 01 00 00 00       	mov    $0x1,%edi
    447a:	e8 61 fd ff ff       	call   41e0 <exit@plt>
    while ((opt = getopt_long(argc, argv, "t", long_opts, NULL)) != -1) {
    447f:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
    4483:	8b 45 9c             	mov    -0x64(%rbp),%eax
    4486:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    448c:	48 8d 15 0d dd 00 00 	lea    0xdd0d(%rip),%rdx        # 121a0 <_ZZ23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9long_opts>
    4493:	48 89 d1             	mov    %rdx,%rcx
    4496:	48 8d 15 de 7b 00 00 	lea    0x7bde(%rip),%rdx        # c07b <_IO_stdin_used+0x7b>
    449d:	89 c7                	mov    %eax,%edi
    449f:	e8 1c fe ff ff       	call   42c0 <getopt_long@plt>
    44a4:	89 45 ec             	mov    %eax,-0x14(%rbp)
    44a7:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
    44ab:	0f 95 c0             	setne  %al
    44ae:	84 c0                	test   %al,%al
    44b0:	75 91                	jne    4443 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1a>
        }
    }

    if (optind >= argc) {
    44b2:	8b 05 d0 dd 00 00    	mov    0xddd0(%rip),%eax        # 12288 <optind@GLIBC_2.2.5>
    44b8:	39 45 9c             	cmp    %eax,-0x64(%rbp)
    44bb:	7f 2d                	jg     44ea <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc1>
        fprintf(stderr, ERROR);
    44bd:	48 8b 05 bc dd 00 00 	mov    0xddbc(%rip),%rax        # 12280 <stderr@GLIBC_2.2.5>
    44c4:	48 89 c1             	mov    %rax,%rcx
    44c7:	ba 62 00 00 00       	mov    $0x62,%edx
    44cc:	be 01 00 00 00       	mov    $0x1,%esi
    44d1:	48 8d 05 40 7b 00 00 	lea    0x7b40(%rip),%rax        # c018 <_IO_stdin_used+0x18>
    44d8:	48 89 c7             	mov    %rax,%rdi
    44db:	e8 40 fe ff ff       	call   4320 <fwrite@plt>
        exit(1);
    44e0:	bf 01 00 00 00       	mov    $0x1,%edi
    44e5:	e8 f6 fc ff ff       	call   41e0 <exit@plt>
    }

    if (optind + 1 < argc) {
    44ea:	8b 05 98 dd 00 00    	mov    0xdd98(%rip),%eax        # 12288 <optind@GLIBC_2.2.5>
    44f0:	83 c0 01             	add    $0x1,%eax
    44f3:	39 45 9c             	cmp    %eax,-0x64(%rbp)
    44f6:	7e 2d                	jle    4525 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xfc>
        fprintf(stderr, ERROR);
    44f8:	48 8b 05 81 dd 00 00 	mov    0xdd81(%rip),%rax        # 12280 <stderr@GLIBC_2.2.5>
    44ff:	48 89 c1             	mov    %rax,%rcx
    4502:	ba 62 00 00 00       	mov    $0x62,%edx
    4507:	be 01 00 00 00       	mov    $0x1,%esi
    450c:	48 8d 05 05 7b 00 00 	lea    0x7b05(%rip),%rax        # c018 <_IO_stdin_used+0x18>
    4513:	48 89 c7             	mov    %rax,%rdi
    4516:	e8 05 fe ff ff       	call   4320 <fwrite@plt>
        exit(1);
    451b:	bf 01 00 00 00       	mov    $0x1,%edi
    4520:	e8 bb fc ff ff       	call   41e0 <exit@plt>
    }
    yyin = fopen(argv[optind], "r");
    4525:	8b 05 5d dd 00 00    	mov    0xdd5d(%rip),%eax        # 12288 <optind@GLIBC_2.2.5>
    452b:	48 98                	cltq
    452d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4534:	00 
    4535:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    4539:	48 01 d0             	add    %rdx,%rax
    453c:	48 8b 00             	mov    (%rax),%rax
    453f:	48 8d 15 37 7b 00 00 	lea    0x7b37(%rip),%rdx        # c07d <_IO_stdin_used+0x7d>
    4546:	48 89 d6             	mov    %rdx,%rsi
    4549:	48 89 c7             	mov    %rax,%rdi
    454c:	e8 6f fc ff ff       	call   41c0 <fopen@plt>
    4551:	48 89 05 70 de 00 00 	mov    %rax,0xde70(%rip)        # 123c8 <yyin>
    token_output_filename += std::string(argv[optind]) + ".toks";
    4558:	48 8d 45 eb          	lea    -0x15(%rbp),%rax
    455c:	48 89 c7             	mov    %rax,%rdi
    455f:	e8 8c fd ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    4564:	8b 05 1e dd 00 00    	mov    0xdd1e(%rip),%eax        # 12288 <optind@GLIBC_2.2.5>
    456a:	48 98                	cltq
    456c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4573:	00 
    4574:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    4578:	48 01 d0             	add    %rdx,%rax
    457b:	48 8b 08             	mov    (%rax),%rcx
    457e:	48 8d 55 eb          	lea    -0x15(%rbp),%rdx
    4582:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4586:	48 89 ce             	mov    %rcx,%rsi
    4589:	48 89 c7             	mov    %rax,%rdi
    458c:	e8 11 07 00 00       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    4591:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4595:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    4599:	48 8d 15 df 7a 00 00 	lea    0x7adf(%rip),%rdx        # c07f <_IO_stdin_used+0x7f>
    45a0:	48 89 ce             	mov    %rcx,%rsi
    45a3:	48 89 c7             	mov    %rax,%rdi
    45a6:	e8 97 07 00 00       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    45ab:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    45af:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    45b3:	48 89 d6             	mov    %rdx,%rsi
    45b6:	48 89 c7             	mov    %rax,%rdi
    45b9:	e8 cc 07 00 00       	call   4d8a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>
    45be:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    45c2:	48 89 c7             	mov    %rax,%rdi
    45c5:	e8 8c 05 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    45ca:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    45ce:	48 89 c7             	mov    %rax,%rdi
    45d1:	e8 80 05 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    45d6:	48 8d 45 eb          	lea    -0x15(%rbp),%rax
    45da:	48 89 c7             	mov    %rax,%rdi
    45dd:	e8 be fb ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
}
    45e2:	eb 3c                	jmp    4620 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1f7>
    token_output_filename += std::string(argv[optind]) + ".toks";
    45e4:	48 89 c3             	mov    %rax,%rbx
    45e7:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    45eb:	48 89 c7             	mov    %rax,%rdi
    45ee:	e8 63 05 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    45f3:	eb 03                	jmp    45f8 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1cf>
    45f5:	48 89 c3             	mov    %rax,%rbx
    45f8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    45fc:	48 89 c7             	mov    %rax,%rdi
    45ff:	e8 52 05 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    4604:	eb 03                	jmp    4609 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x1e0>
    4606:	48 89 c3             	mov    %rax,%rbx
    4609:	48 8d 45 eb          	lea    -0x15(%rbp),%rax
    460d:	48 89 c7             	mov    %rax,%rdi
    4610:	e8 8b fb ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    4615:	48 89 d8             	mov    %rbx,%rax
    4618:	48 89 c7             	mov    %rax,%rdi
    461b:	e8 c0 fc ff ff       	call   42e0 <_Unwind_Resume@plt>
}
    4620:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4624:	c9                   	leave
    4625:	c3                   	ret

0000000000004626 <main>:

int main(int argc, char * argv[])
{
    4626:	55                   	push   %rbp
    4627:	48 89 e5             	mov    %rsp,%rbp
    462a:	53                   	push   %rbx
    462b:	48 81 ec 68 02 00 00 	sub    $0x268,%rsp
    4632:	89 bd 9c fd ff ff    	mov    %edi,-0x264(%rbp)
    4638:	48 89 b5 90 fd ff ff 	mov    %rsi,-0x270(%rbp)
    int status;
    bool show_tokens;
    std::string token_output_filename;
    463f:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4643:	48 89 c7             	mov    %rax,%rdi
    4646:	e8 97 02 00 00       	call   48e2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    // Process the comm
    // and line options
    process_command_options(argc, argv, show_tokens, token_output_filename);
    464b:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    464f:	48 8d 55 e7          	lea    -0x19(%rbp),%rdx
    4653:	48 8b b5 90 fd ff ff 	mov    -0x270(%rbp),%rsi
    465a:	8b 85 9c fd ff ff    	mov    -0x264(%rbp),%eax
    4660:	89 c7                	mov    %eax,%edi
    4662:	e8 c2 fd ff ff       	call   4429 <_Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>

    yy::parser parser;
    4667:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    466b:	48 89 c7             	mov    %rax,%rdi
    466e:	e8 27 44 00 00       	call   8a9a <_ZN2yy6parserC1Ev>
    int result = parser.parse();
    4673:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4677:	48 89 c7             	mov    %rax,%rdi
    467a:	e8 17 49 00 00       	call   8f96 <_ZN2yy6parser5parseEv>
    467f:	89 45 ec             	mov    %eax,-0x14(%rbp)
    // Executing the parser
    // status = yyparse();
    if (show_tokens) {
    4682:	0f b6 45 e7          	movzbl -0x19(%rbp),%eax
    4686:	84 c0                	test   %al,%al
    4688:	74 55                	je     46df <main+0xb9>
        std::ofstream token_file(token_output_filename);
    468a:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    468e:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    4695:	ba 10 00 00 00       	mov    $0x10,%edx
    469a:	48 89 ce             	mov    %rcx,%rsi
    469d:	48 89 c7             	mov    %rax,%rdi
    46a0:	e8 6b fc ff ff       	call   4310 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>
        token_file << token_output << std::flush;
    46a5:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    46ac:	48 8d 15 4d dd 00 00 	lea    0xdd4d(%rip),%rdx        # 12400 <_Z12token_outputB5cxx11>
    46b3:	48 89 d6             	mov    %rdx,%rsi
    46b6:	48 89 c7             	mov    %rax,%rdi
    46b9:	e8 62 fa ff ff       	call   4120 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    46be:	48 8b 15 f3 d8 00 00 	mov    0xd8f3(%rip),%rdx        # 11fb8 <_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    46c5:	48 89 d6             	mov    %rdx,%rsi
    46c8:	48 89 c7             	mov    %rax,%rdi
    46cb:	e8 a0 fa ff ff       	call   4170 <_ZNSolsEPFRSoS_E@plt>
    }
    46d0:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    46d7:	48 89 c7             	mov    %rax,%rdi
    46da:	e8 61 fb ff ff       	call   4240 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>

    // std::cout << token_output << std::flush;

    fclose(yyin);
    46df:	48 8b 05 e2 dc 00 00 	mov    0xdce2(%rip),%rax        # 123c8 <yyin>
    46e6:	48 89 c7             	mov    %rax,%rdi
    46e9:	e8 52 fa ff ff       	call   4140 <fclose@plt>
    // if (show_tokens) fclose(tok_out);
    return status;
    46ee:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    46f1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    46f5:	48 89 c7             	mov    %rax,%rdi
    46f8:	e8 cf 43 00 00       	call   8acc <_ZN2yy6parserD1Ev>
    46fd:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4701:	48 89 c7             	mov    %rax,%rdi
    4704:	e8 4d 04 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    4709:	89 d8                	mov    %ebx,%eax
    470b:	eb 3f                	jmp    474c <main+0x126>
    }
    470d:	48 89 c3             	mov    %rax,%rbx
    4710:	48 8d 85 a0 fd ff ff 	lea    -0x260(%rbp),%rax
    4717:	48 89 c7             	mov    %rax,%rdi
    471a:	e8 21 fb ff ff       	call   4240 <_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@plt>
    471f:	eb 03                	jmp    4724 <main+0xfe>
    4721:	48 89 c3             	mov    %rax,%rbx
    4724:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    4728:	48 89 c7             	mov    %rax,%rdi
    472b:	e8 9c 43 00 00       	call   8acc <_ZN2yy6parserD1Ev>
    4730:	eb 03                	jmp    4735 <main+0x10f>
    4732:	48 89 c3             	mov    %rax,%rbx
    4735:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    4739:	48 89 c7             	mov    %rax,%rdi
    473c:	e8 15 04 00 00       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    4741:	48 89 d8             	mov    %rbx,%rax
    4744:	48 89 c7             	mov    %rax,%rdi
    4747:	e8 94 fb ff ff       	call   42e0 <_Unwind_Resume@plt>
    474c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4750:	c9                   	leave
    4751:	c3                   	ret

0000000000004752 <_Z41__static_initialization_and_destruction_0ii>:
    4752:	55                   	push   %rbp
    4753:	48 89 e5             	mov    %rsp,%rbp
    4756:	48 83 ec 10          	sub    $0x10,%rsp
    475a:	89 7d fc             	mov    %edi,-0x4(%rbp)
    475d:	89 75 f8             	mov    %esi,-0x8(%rbp)
    4760:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    4764:	75 3b                	jne    47a1 <_Z41__static_initialization_and_destruction_0ii+0x4f>
    4766:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    476d:	75 32                	jne    47a1 <_Z41__static_initialization_and_destruction_0ii+0x4f>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
    476f:	48 8d 05 3b dc 00 00 	lea    0xdc3b(%rip),%rax        # 123b1 <_ZStL8__ioinit>
    4776:	48 89 c7             	mov    %rax,%rdi
    4779:	e8 f2 fa ff ff       	call   4270 <_ZNSt8ios_base4InitC1Ev@plt>
    477e:	48 8d 05 03 da 00 00 	lea    0xda03(%rip),%rax        # 12188 <__dso_handle>
    4785:	48 89 c2             	mov    %rax,%rdx
    4788:	48 8d 05 22 dc 00 00 	lea    0xdc22(%rip),%rax        # 123b1 <_ZStL8__ioinit>
    478f:	48 89 c6             	mov    %rax,%rsi
    4792:	48 8b 05 3f d8 00 00 	mov    0xd83f(%rip),%rax        # 11fd8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    4799:	48 89 c7             	mov    %rax,%rdi
    479c:	e8 6f f9 ff ff       	call   4110 <__cxa_atexit@plt>
    47a1:	90                   	nop
    47a2:	c9                   	leave
    47a3:	c3                   	ret

00000000000047a4 <_GLOBAL__sub_I__Z23process_command_optionsiPPcRbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
    47a4:	55                   	push   %rbp
    47a5:	48 89 e5             	mov    %rsp,%rbp
    47a8:	be ff ff 00 00       	mov    $0xffff,%esi
    47ad:	bf 01 00 00 00       	mov    $0x1,%edi
    47b2:	e8 9b ff ff ff       	call   4752 <_Z41__static_initialization_and_destruction_0ii>
    47b7:	5d                   	pop    %rbp
    47b8:	c3                   	ret

00000000000047b9 <_ZSt23__is_constant_evaluatedv>:
    47b9:	55                   	push   %rbp
    47ba:	48 89 e5             	mov    %rsp,%rbp
    47bd:	b8 00 00 00 00       	mov    $0x0,%eax
    47c2:	5d                   	pop    %rbp
    47c3:	c3                   	ret

00000000000047c4 <_ZSt21is_constant_evaluatedv>:

  /// Returns true only when called during constant evaluation.
  /// @since C++20
  constexpr inline bool
  is_constant_evaluated() noexcept
  {
    47c4:	55                   	push   %rbp
    47c5:	48 89 e5             	mov    %rsp,%rbp
#if __cpp_if_consteval >= 202106L
    if consteval { return true; } else { return false; }
#else
    return __builtin_is_constant_evaluated();
    47c8:	b8 00 00 00 00       	mov    $0x0,%eax
#endif
  }
    47cd:	5d                   	pop    %rbp
    47ce:	c3                   	ret

00000000000047cf <_ZnwmPv>:
#endif // __cpp_sized_deallocation
#endif // __cpp_aligned_new

// Default placement versions of operator new.
_GLIBCXX_NODISCARD inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
    47cf:	55                   	push   %rbp
    47d0:	48 89 e5             	mov    %rsp,%rbp
    47d3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    47d7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    47db:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    47df:	5d                   	pop    %rbp
    47e0:	c3                   	ret

00000000000047e1 <_ZNSt11char_traitsIcE6assignERcRKc>:
#if __cpp_lib_three_way_comparison
      using comparison_category = strong_ordering;
#endif

      static _GLIBCXX17_CONSTEXPR void
      assign(char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
    47e1:	55                   	push   %rbp
    47e2:	48 89 e5             	mov    %rsp,%rbp
    47e5:	48 83 ec 10          	sub    $0x10,%rsp
    47e9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    47ed:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
#if __cpp_constexpr_dynamic_alloc
	if (std::__is_constant_evaluated())
    47f1:	e8 c3 ff ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    47f6:	84 c0                	test   %al,%al
    47f8:	74 15                	je     480f <_ZNSt11char_traitsIcE6assignERcRKc+0x2e>
	  std::construct_at(__builtin_addressof(__c1), __c2);
    47fa:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    47fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4802:	48 89 d6             	mov    %rdx,%rsi
    4805:	48 89 c7             	mov    %rax,%rdi
    4808:	e8 43 02 00 00       	call   4a50 <_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_>
	else
#endif
	__c1 = __c2;
      }
    480d:	eb 0d                	jmp    481c <_ZNSt11char_traitsIcE6assignERcRKc+0x3b>
	__c1 = __c2;
    480f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4813:	0f b6 10             	movzbl (%rax),%edx
    4816:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    481a:	88 10                	mov    %dl,(%rax)
      }
    481c:	90                   	nop
    481d:	c9                   	leave
    481e:	c3                   	ret

000000000000481f <_ZNSt11char_traitsIcE6lengthEPKc>:
#endif
	return __builtin_memcmp(__s1, __s2, __n);
      }

      static _GLIBCXX17_CONSTEXPR size_t
      length(const char_type* __s)
    481f:	55                   	push   %rbp
    4820:	48 89 e5             	mov    %rsp,%rbp
    4823:	48 83 ec 10          	sub    $0x10,%rsp
    4827:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
#if __cplusplus >= 201703L
	if (std::__is_constant_evaluated())
    482b:	e8 89 ff ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    4830:	84 c0                	test   %al,%al
    4832:	74 0e                	je     4842 <_ZNSt11char_traitsIcE6lengthEPKc+0x23>
	  return __gnu_cxx::char_traits<char_type>::length(__s);
    4834:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4838:	48 89 c7             	mov    %rax,%rdi
    483b:	e8 50 02 00 00       	call   4a90 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>
    4840:	eb 0d                	jmp    484f <_ZNSt11char_traitsIcE6lengthEPKc+0x30>
#endif
	return __builtin_strlen(__s);
    4842:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4846:	48 89 c7             	mov    %rax,%rdi
    4849:	e8 52 f8 ff ff       	call   40a0 <strlen@plt>
    484e:	90                   	nop
      }
    484f:	c9                   	leave
    4850:	c3                   	ret

0000000000004851 <_ZNSt11char_traitsIcE4copyEPcPKcm>:
#endif
	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
      }

      static _GLIBCXX20_CONSTEXPR char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
    4851:	55                   	push   %rbp
    4852:	48 89 e5             	mov    %rsp,%rbp
    4855:	48 83 ec 20          	sub    $0x20,%rsp
    4859:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    485d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4861:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      {
	if (__n == 0)
    4865:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    486a:	75 06                	jne    4872 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x21>
	  return __s1;
    486c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4870:	eb 40                	jmp    48b2 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x61>
#if __cplusplus >= 202002L
	if (std::__is_constant_evaluated())
    4872:	e8 42 ff ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    4877:	84 c0                	test   %al,%al
    4879:	74 19                	je     4894 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x43>
	  return __gnu_cxx::char_traits<char_type>::copy(__s1, __s2, __n);
    487b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    487f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    4883:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4887:	48 89 ce             	mov    %rcx,%rsi
    488a:	48 89 c7             	mov    %rax,%rdi
    488d:	e8 44 02 00 00       	call   4ad6 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm>
    4892:	eb 1e                	jmp    48b2 <_ZNSt11char_traitsIcE4copyEPcPKcm+0x61>
#endif
	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
    4894:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4898:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    489c:	48 89 d1             	mov    %rdx,%rcx
    489f:	48 89 c6             	mov    %rax,%rsi
    48a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48a6:	48 89 c2             	mov    %rax,%rdx
    48a9:	48 89 cf             	mov    %rcx,%rdi
    48ac:	e8 3f f8 ff ff       	call   40f0 <memcpy@plt>
    48b1:	90                   	nop
      }
    48b2:	c9                   	leave
    48b3:	c3                   	ret

00000000000048b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>:
      // Capacity:
      ///  Returns the number of characters in the string, not including any
      ///  null-termination.
      _GLIBCXX20_CONSTEXPR
      size_type
      size() const _GLIBCXX_NOEXCEPT
    48b4:	55                   	push   %rbp
    48b5:	48 89 e5             	mov    %rsp,%rbp
    48b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_string_length; }
    48bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48c0:	48 8b 40 08          	mov    0x8(%rax),%rax
    48c4:	5d                   	pop    %rbp
    48c5:	c3                   	ret

00000000000048c6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
      struct _Alloc_hider : allocator_type // TODO check __is_final
    48c6:	55                   	push   %rbp
    48c7:	48 89 e5             	mov    %rsp,%rbp
    48ca:	48 83 ec 10          	sub    $0x10,%rsp
    48ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48d6:	48 89 c7             	mov    %rax,%rdi
    48d9:	e8 72 f7 ff ff       	call   4050 <_ZNSaIcED2Ev@plt>
    48de:	90                   	nop
    48df:	c9                   	leave
    48e0:	c3                   	ret
    48e1:	90                   	nop

00000000000048e2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
      basic_string()
    48e2:	55                   	push   %rbp
    48e3:	48 89 e5             	mov    %rsp,%rbp
    48e6:	53                   	push   %rbx
    48e7:	48 83 ec 48          	sub    $0x48,%rsp
    48eb:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
      : _M_dataplus(_M_local_data())
    48ef:	48 8b 5d b8          	mov    -0x48(%rbp),%rbx
    48f3:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    48f7:	48 89 c7             	mov    %rax,%rdi
    48fa:	e8 f1 f9 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    48ff:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4903:	48 89 c7             	mov    %rax,%rdi
    4906:	e8 97 00 00 00       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    490b:	48 89 c1             	mov    %rax,%rcx
    490e:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    4912:	48 89 c2             	mov    %rax,%rdx
    4915:	48 89 ce             	mov    %rcx,%rsi
    4918:	48 89 df             	mov    %rbx,%rdi
    491b:	e8 e2 00 00 00       	call   4a02 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>
    4920:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    4924:	48 89 c7             	mov    %rax,%rdi
    4927:	e8 74 f8 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    492c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4930:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (std::is_constant_evaluated())
    4934:	e8 8b fe ff ff       	call   47c4 <_ZSt21is_constant_evaluatedv>
    4939:	84 c0                	test   %al,%al
    493b:	74 40                	je     497d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev+0x9b>
	  for (_CharT& __c : _M_local_buf)
    493d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4941:	48 83 c0 10          	add    $0x10,%rax
    4945:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4949:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    494d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    4951:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4955:	48 83 c0 10          	add    $0x10,%rax
    4959:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    495d:	eb 14                	jmp    4973 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev+0x91>
    495f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4963:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	    __c = _CharT();
    4967:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    496b:	c6 00 00             	movb   $0x0,(%rax)
	  for (_CharT& __c : _M_local_buf)
    496e:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    4973:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4977:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    497b:	75 e2                	jne    495f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev+0x7d>
	return _M_local_data();
    497d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4981:	48 89 c7             	mov    %rax,%rdi
    4984:	e8 19 00 00 00       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    4989:	90                   	nop
	_M_set_length(0);
    498a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    498e:	be 00 00 00 00       	mov    $0x0,%esi
    4993:	48 89 c7             	mov    %rax,%rdi
    4996:	e8 15 04 00 00       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      }
    499b:	90                   	nop
    499c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    49a0:	c9                   	leave
    49a1:	c3                   	ret

00000000000049a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
      _M_local_data()
    49a2:	55                   	push   %rbp
    49a3:	48 89 e5             	mov    %rsp,%rbp
    49a6:	48 83 ec 10          	sub    $0x10,%rsp
    49aa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
    49ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49b2:	48 83 c0 10          	add    $0x10,%rax
    49b6:	48 89 c7             	mov    %rax,%rdi
    49b9:	e8 02 00 00 00       	call   49c0 <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>
      }
    49be:	c9                   	leave
    49bf:	c3                   	ret

00000000000049c0 <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>:
       *  @brief  Obtain a pointer to an object
       *  @param  __r  A reference to an object of type `element_type`
       *  @return `addressof(__r)`
      */
      static _GLIBCXX20_CONSTEXPR pointer
      pointer_to(element_type& __r) noexcept
    49c0:	55                   	push   %rbp
    49c1:	48 89 e5             	mov    %rsp,%rbp
    49c4:	48 83 ec 10          	sub    $0x10,%rsp
    49c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return std::addressof(__r); }
    49cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49d0:	48 89 c7             	mov    %rax,%rdi
    49d3:	e8 02 00 00 00       	call   49da <_ZSt9addressofIcEPT_RS0_>
    49d8:	c9                   	leave
    49d9:	c3                   	ret

00000000000049da <_ZSt9addressofIcEPT_RS0_>:
   *  @return   The actual address.
  */
  template<typename _Tp>
    _GLIBCXX_NODISCARD
    inline _GLIBCXX17_CONSTEXPR _Tp*
    addressof(_Tp& __r) noexcept
    49da:	55                   	push   %rbp
    49db:	48 89 e5             	mov    %rsp,%rbp
    49de:	48 83 ec 10          	sub    $0x10,%rsp
    49e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__addressof(__r); }
    49e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49ea:	48 89 c7             	mov    %rax,%rdi
    49ed:	e8 02 00 00 00       	call   49f4 <_ZSt11__addressofIcEPT_RS0_>
    49f2:	c9                   	leave
    49f3:	c3                   	ret

00000000000049f4 <_ZSt11__addressofIcEPT_RS0_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
    49f4:	55                   	push   %rbp
    49f5:	48 89 e5             	mov    %rsp,%rbp
    49f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
    49fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a00:	5d                   	pop    %rbp
    4a01:	c3                   	ret

0000000000004a02 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>:
	_Alloc_hider(pointer __dat, _Alloc&& __a = _Alloc())
    4a02:	55                   	push   %rbp
    4a03:	48 89 e5             	mov    %rsp,%rbp
    4a06:	48 83 ec 20          	sub    $0x20,%rsp
    4a0a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4a0e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4a12:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: allocator_type(std::move(__a)), _M_p(__dat) { }
    4a16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4a1a:	48 89 c7             	mov    %rax,%rdi
    4a1d:	e8 20 00 00 00       	call   4a42 <_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_>
    4a22:	48 89 c2             	mov    %rax,%rdx
    4a25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a29:	48 89 d6             	mov    %rdx,%rsi
    4a2c:	48 89 c7             	mov    %rax,%rdi
    4a2f:	e8 dc f7 ff ff       	call   4210 <_ZNSaIcEC2ERKS_@plt>
    4a34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a38:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4a3c:	48 89 10             	mov    %rdx,(%rax)
    4a3f:	90                   	nop
    4a40:	c9                   	leave
    4a41:	c3                   	ret

0000000000004a42 <_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_>:
    move(_Tp&& __t) noexcept
    4a42:	55                   	push   %rbp
    4a43:	48 89 e5             	mov    %rsp,%rbp
    4a46:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    4a4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4a4e:	5d                   	pop    %rbp
    4a4f:	c3                   	ret

0000000000004a50 <_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_>:
    }

#if __cplusplus >= 202002L
  template<typename _Tp, typename... _Args>
    constexpr auto
    construct_at(_Tp* __location, _Args&&... __args)
    4a50:	55                   	push   %rbp
    4a51:	48 89 e5             	mov    %rsp,%rbp
    4a54:	53                   	push   %rbx
    4a55:	48 83 ec 18          	sub    $0x18,%rsp
    4a59:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4a5d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    noexcept(noexcept(::new((void*)0) _Tp(std::declval<_Args>()...)))
    -> decltype(::new((void*)0) _Tp(std::declval<_Args>()...))
    { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
    4a61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4a65:	48 89 c6             	mov    %rax,%rsi
    4a68:	bf 01 00 00 00       	mov    $0x1,%edi
    4a6d:	e8 5d fd ff ff       	call   47cf <_ZnwmPv>
    4a72:	48 89 c3             	mov    %rax,%rbx
    4a75:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4a79:	48 89 c7             	mov    %rax,%rdi
    4a7c:	e8 7b 03 00 00       	call   4dfc <_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE>
    4a81:	0f b6 00             	movzbl (%rax),%eax
    4a84:	88 03                	mov    %al,(%rbx)
    4a86:	48 89 d8             	mov    %rbx,%rax
    4a89:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4a8d:	c9                   	leave
    4a8e:	c3                   	ret
    4a8f:	90                   	nop

0000000000004a90 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc>:
    char_traits<_CharT>::
    4a90:	55                   	push   %rbp
    4a91:	48 89 e5             	mov    %rsp,%rbp
    4a94:	48 83 ec 20          	sub    $0x20,%rsp
    4a98:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      std::size_t __i = 0;
    4a9c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4aa3:	00 
      while (!eq(__p[__i], char_type()))
    4aa4:	eb 05                	jmp    4aab <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x1b>
        ++__i;
    4aa6:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
      while (!eq(__p[__i], char_type()))
    4aab:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    4aaf:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4ab3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ab7:	48 01 c2             	add    %rax,%rdx
    4aba:	48 8d 45 f7          	lea    -0x9(%rbp),%rax
    4abe:	48 89 c6             	mov    %rax,%rsi
    4ac1:	48 89 d7             	mov    %rdx,%rdi
    4ac4:	e8 41 03 00 00       	call   4e0a <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>
    4ac9:	83 f0 01             	xor    $0x1,%eax
    4acc:	84 c0                	test   %al,%al
    4ace:	75 d6                	jne    4aa6 <_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc+0x16>
      return __i;
    4ad0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
    4ad4:	c9                   	leave
    4ad5:	c3                   	ret

0000000000004ad6 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm>:
    char_traits<_CharT>::
    4ad6:	55                   	push   %rbp
    4ad7:	48 89 e5             	mov    %rsp,%rbp
    4ada:	48 83 ec 30          	sub    $0x30,%rsp
    4ade:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4ae2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4ae6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      if (std::__is_constant_evaluated())
    4aea:	e8 ca fc ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    4aef:	84 c0                	test   %al,%al
    4af1:	74 40                	je     4b33 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm+0x5d>
	  for (std::size_t __i = 0; __i < __n; ++__i)
    4af3:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    4afa:	00 
    4afb:	eb 26                	jmp    4b23 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm+0x4d>
	    std::construct_at(__s1 + __i, __s2[__i]);
    4afd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4b01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b05:	48 01 c2             	add    %rax,%rdx
    4b08:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    4b0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b10:	48 01 c8             	add    %rcx,%rax
    4b13:	48 89 d6             	mov    %rdx,%rsi
    4b16:	48 89 c7             	mov    %rax,%rdi
    4b19:	e8 32 ff ff ff       	call   4a50 <_ZSt12construct_atIcJRKcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS3_DpOS4_>
	  for (std::size_t __i = 0; __i < __n; ++__i)
    4b1e:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    4b23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b27:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    4b2b:	72 d0                	jb     4afd <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm+0x27>
	  return __s1;
    4b2d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4b31:	eb 21                	jmp    4b54 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm+0x7e>
      __builtin_memcpy(__s1, __s2, __n * sizeof(char_type));
    4b33:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4b37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b3b:	48 89 d1             	mov    %rdx,%rcx
    4b3e:	48 89 c6             	mov    %rax,%rsi
    4b41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b45:	48 89 c2             	mov    %rax,%rdx
    4b48:	48 89 cf             	mov    %rcx,%rdi
    4b4b:	e8 a0 f5 ff ff       	call   40f0 <memcpy@plt>
      return __s1;
    4b50:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    }
    4b54:	c9                   	leave
    4b55:	c3                   	ret

0000000000004b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
      ~basic_string()
    4b56:	55                   	push   %rbp
    4b57:	48 89 e5             	mov    %rsp,%rbp
    4b5a:	48 83 ec 10          	sub    $0x10,%rsp
    4b5e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_dispose(); }
    4b62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b66:	48 89 c7             	mov    %rax,%rdi
    4b69:	e8 06 03 00 00       	call   4e74 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
    4b6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b72:	48 89 c7             	mov    %rax,%rdi
    4b75:	e8 4c fd ff ff       	call   48c6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
    4b7a:	90                   	nop
    4b7b:	c9                   	leave
    4b7c:	c3                   	ret
    4b7d:	90                   	nop

0000000000004b7e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>:
      basic_string(basic_string&& __str) noexcept
    4b7e:	55                   	push   %rbp
    4b7f:	48 89 e5             	mov    %rsp,%rbp
    4b82:	41 54                	push   %r12
    4b84:	53                   	push   %rbx
    4b85:	48 83 ec 10          	sub    $0x10,%rsp
    4b89:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4b8d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      : _M_dataplus(_M_local_data(), std::move(__str._M_get_allocator()))
    4b91:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    4b95:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4b99:	48 89 c7             	mov    %rax,%rdi
    4b9c:	e8 0d 03 00 00       	call   4eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    4ba1:	48 89 c7             	mov    %rax,%rdi
    4ba4:	e8 99 fe ff ff       	call   4a42 <_ZSt4moveIRSaIcEEONSt16remove_referenceIT_E4typeEOS3_>
    4ba9:	49 89 c4             	mov    %rax,%r12
    4bac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bb0:	48 89 c7             	mov    %rax,%rdi
    4bb3:	e8 ea fd ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    4bb8:	4c 89 e2             	mov    %r12,%rdx
    4bbb:	48 89 c6             	mov    %rax,%rsi
    4bbe:	48 89 df             	mov    %rbx,%rdi
    4bc1:	e8 3c fe ff ff       	call   4a02 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>
	if (__str._M_is_local())
    4bc6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4bca:	48 89 c7             	mov    %rax,%rdi
    4bcd:	e8 ea 02 00 00       	call   4ebc <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>
    4bd2:	84 c0                	test   %al,%al
    4bd4:	74 2d                	je     4c03 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_+0x85>
			      __str.length() + 1);
    4bd6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4bda:	48 89 c7             	mov    %rax,%rdi
    4bdd:	e8 ae 00 00 00       	call   4c90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
	    traits_type::copy(_M_local_buf, __str._M_local_buf,
    4be2:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4be6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4bea:	48 8d 48 10          	lea    0x10(%rax),%rcx
    4bee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bf2:	48 83 c0 10          	add    $0x10,%rax
    4bf6:	48 89 ce             	mov    %rcx,%rsi
    4bf9:	48 89 c7             	mov    %rax,%rdi
    4bfc:	e8 50 fc ff ff       	call   4851 <_ZNSt11char_traitsIcE4copyEPcPKcm>
    4c01:	eb 35                	jmp    4c38 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_+0xba>
	    _M_data(__str._M_data());
    4c03:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c07:	48 89 c7             	mov    %rax,%rdi
    4c0a:	e8 1d 02 00 00       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    4c0f:	48 89 c2             	mov    %rax,%rdx
    4c12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c16:	48 89 d6             	mov    %rdx,%rsi
    4c19:	48 89 c7             	mov    %rax,%rdi
    4c1c:	e8 cf 02 00 00       	call   4ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	    _M_capacity(__str._M_allocated_capacity);
    4c21:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c25:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4c29:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c2d:	48 89 d6             	mov    %rdx,%rsi
    4c30:	48 89 c7             	mov    %rax,%rdi
    4c33:	e8 d2 02 00 00       	call   4f0a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>
	_M_length(__str.length());
    4c38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c3c:	48 89 c7             	mov    %rax,%rdi
    4c3f:	e8 4c 00 00 00       	call   4c90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
    4c44:	48 89 c2             	mov    %rax,%rdx
    4c47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c4b:	48 89 d6             	mov    %rdx,%rsi
    4c4e:	48 89 c7             	mov    %rax,%rdi
    4c51:	e8 d0 02 00 00       	call   4f26 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm>
	__str._M_data(__str._M_local_data());
    4c56:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c5a:	48 89 c7             	mov    %rax,%rdi
    4c5d:	e8 40 fd ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    4c62:	48 89 c2             	mov    %rax,%rdx
    4c65:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c69:	48 89 d6             	mov    %rdx,%rsi
    4c6c:	48 89 c7             	mov    %rax,%rdi
    4c6f:	e8 7c 02 00 00       	call   4ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	__str._M_set_length(0);
    4c74:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c78:	be 00 00 00 00       	mov    $0x0,%esi
    4c7d:	48 89 c7             	mov    %rax,%rdi
    4c80:	e8 2b 01 00 00       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      }
    4c85:	90                   	nop
    4c86:	48 83 c4 10          	add    $0x10,%rsp
    4c8a:	5b                   	pop    %rbx
    4c8b:	41 5c                	pop    %r12
    4c8d:	5d                   	pop    %rbp
    4c8e:	c3                   	ret
    4c8f:	90                   	nop

0000000000004c90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>:

      ///  Returns the number of characters in the string, not including any
      ///  null-termination.
      _GLIBCXX20_CONSTEXPR
      size_type
      length() const _GLIBCXX_NOEXCEPT
    4c90:	55                   	push   %rbp
    4c91:	48 89 e5             	mov    %rsp,%rbp
    4c94:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_string_length; }
    4c98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c9c:	48 8b 40 08          	mov    0x8(%rax),%rax
    4ca0:	5d                   	pop    %rbp
    4ca1:	c3                   	ret

0000000000004ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>:
      basic_string(const _CharT* __s, const _Alloc& __a = _Alloc())
    4ca2:	55                   	push   %rbp
    4ca3:	48 89 e5             	mov    %rsp,%rbp
    4ca6:	53                   	push   %rbx
    4ca7:	48 83 ec 38          	sub    $0x38,%rsp
    4cab:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4caf:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4cb3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      : _M_dataplus(_M_local_data(), __a)
    4cb7:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    4cbb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4cbf:	48 89 c7             	mov    %rax,%rdi
    4cc2:	e8 db fc ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    4cc7:	48 89 c1             	mov    %rax,%rcx
    4cca:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4cce:	48 89 c2             	mov    %rax,%rdx
    4cd1:	48 89 ce             	mov    %rcx,%rsi
    4cd4:	48 89 df             	mov    %rbx,%rdi
    4cd7:	e8 62 01 00 00       	call   4e3e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
	if (__s == 0)
    4cdc:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    4ce1:	75 0f                	jne    4cf2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x50>
	  std::__throw_logic_error(__N("basic_string: "
    4ce3:	48 8d 05 9e 73 00 00 	lea    0x739e(%rip),%rax        # c088 <_IO_stdin_used+0x88>
    4cea:	48 89 c7             	mov    %rax,%rdi
    4ced:	e8 de f3 ff ff       	call   40d0 <_ZSt19__throw_logic_errorPKc@plt>
	const _CharT* __end = __s + traits_type::length(__s);
    4cf2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4cf6:	48 89 c7             	mov    %rax,%rdi
    4cf9:	e8 21 fb ff ff       	call   481f <_ZNSt11char_traitsIcE6lengthEPKc>
    4cfe:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4d02:	48 01 d0             	add    %rdx,%rax
    4d05:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	_M_construct(__s, __end, forward_iterator_tag());
    4d09:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4d0d:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    4d11:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d15:	48 89 ce             	mov    %rcx,%rsi
    4d18:	48 89 c7             	mov    %rax,%rdi
    4d1b:	e8 66 02 00 00       	call   4f86 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>
      }
    4d20:	eb 1a                	jmp    4d3c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_+0x9a>
    4d22:	48 89 c3             	mov    %rax,%rbx
    4d25:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d29:	48 89 c7             	mov    %rax,%rdi
    4d2c:	e8 95 fb ff ff       	call   48c6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
    4d31:	48 89 d8             	mov    %rbx,%rax
    4d34:	48 89 c7             	mov    %rax,%rdi
    4d37:	e8 a4 f5 ff ff       	call   42e0 <_Unwind_Resume@plt>
    4d3c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4d40:	c9                   	leave
    4d41:	c3                   	ret

0000000000004d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
    { return std::move(__rhs.insert(0, 1, __lhs)); }

  template<typename _CharT, typename _Traits, typename _Alloc>
    _GLIBCXX20_CONSTEXPR
    inline basic_string<_CharT, _Traits, _Alloc>
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    4d42:	55                   	push   %rbp
    4d43:	48 89 e5             	mov    %rsp,%rbp
    4d46:	48 83 ec 20          	sub    $0x20,%rsp
    4d4a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d4e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4d52:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	      const _CharT* __rhs)
    { return std::move(__lhs.append(__rhs)); }
    4d56:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4d5a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4d5e:	48 89 d6             	mov    %rdx,%rsi
    4d61:	48 89 c7             	mov    %rax,%rdi
    4d64:	e8 4d 03 00 00       	call   50b6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>
    4d69:	48 89 c7             	mov    %rax,%rdi
    4d6c:	e8 c8 03 00 00       	call   5139 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    4d71:	48 89 c2             	mov    %rax,%rdx
    4d74:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d78:	48 89 d6             	mov    %rdx,%rsi
    4d7b:	48 89 c7             	mov    %rax,%rdi
    4d7e:	e8 fb fd ff ff       	call   4b7e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
    4d83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d87:	c9                   	leave
    4d88:	c3                   	ret
    4d89:	90                   	nop

0000000000004d8a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>:
      operator+=(const basic_string& __str)
    4d8a:	55                   	push   %rbp
    4d8b:	48 89 e5             	mov    %rsp,%rbp
    4d8e:	48 83 ec 10          	sub    $0x10,%rsp
    4d92:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4d96:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return this->append(__str); }
    4d9a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4d9e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4da2:	48 89 d6             	mov    %rdx,%rsi
    4da5:	48 89 c7             	mov    %rax,%rdi
    4da8:	e8 9b 03 00 00       	call   5148 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>
    4dad:	c9                   	leave
    4dae:	c3                   	ret
    4daf:	90                   	nop

0000000000004db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>:
      _M_set_length(size_type __n)
    4db0:	55                   	push   %rbp
    4db1:	48 89 e5             	mov    %rsp,%rbp
    4db4:	48 83 ec 20          	sub    $0x20,%rsp
    4db8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4dbc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	_M_length(__n);
    4dc0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4dc4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4dc8:	48 89 d6             	mov    %rdx,%rsi
    4dcb:	48 89 c7             	mov    %rax,%rdi
    4dce:	e8 53 01 00 00       	call   4f26 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm>
	traits_type::assign(_M_data()[__n], _CharT());
    4dd3:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
    4dd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ddb:	48 89 c7             	mov    %rax,%rdi
    4dde:	e8 49 00 00 00       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    4de3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4de7:	48 01 c2             	add    %rax,%rdx
    4dea:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
    4dee:	48 89 c6             	mov    %rax,%rsi
    4df1:	48 89 d7             	mov    %rdx,%rdi
    4df4:	e8 e8 f9 ff ff       	call   47e1 <_ZNSt11char_traitsIcE6assignERcRKc>
      }
    4df9:	90                   	nop
    4dfa:	c9                   	leave
    4dfb:	c3                   	ret

0000000000004dfc <_ZSt7forwardIRKcEOT_RNSt16remove_referenceIS2_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    4dfc:	55                   	push   %rbp
    4dfd:	48 89 e5             	mov    %rsp,%rbp
    4e00:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    4e04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e08:	5d                   	pop    %rbp
    4e09:	c3                   	ret

0000000000004e0a <_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_>:
      eq(const char_type& __c1, const char_type& __c2)
    4e0a:	55                   	push   %rbp
    4e0b:	48 89 e5             	mov    %rsp,%rbp
    4e0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4e12:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __c1 == __c2; }
    4e16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e1a:	0f b6 10             	movzbl (%rax),%edx
    4e1d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4e21:	0f b6 00             	movzbl (%rax),%eax
    4e24:	38 c2                	cmp    %al,%dl
    4e26:	0f 94 c0             	sete   %al
    4e29:	5d                   	pop    %rbp
    4e2a:	c3                   	ret
    4e2b:	90                   	nop

0000000000004e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
      _M_data() const
    4e2c:	55                   	push   %rbp
    4e2d:	48 89 e5             	mov    %rsp,%rbp
    4e30:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_dataplus._M_p; }
    4e34:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e38:	48 8b 00             	mov    (%rax),%rax
    4e3b:	5d                   	pop    %rbp
    4e3c:	c3                   	ret
    4e3d:	90                   	nop

0000000000004e3e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>:
	_Alloc_hider(pointer __dat, const _Alloc& __a)
    4e3e:	55                   	push   %rbp
    4e3f:	48 89 e5             	mov    %rsp,%rbp
    4e42:	48 83 ec 20          	sub    $0x20,%rsp
    4e46:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4e4a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4e4e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	: allocator_type(__a), _M_p(__dat) { }
    4e52:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e5a:	48 89 d6             	mov    %rdx,%rsi
    4e5d:	48 89 c7             	mov    %rax,%rdi
    4e60:	e8 ab f3 ff ff       	call   4210 <_ZNSaIcEC2ERKS_@plt>
    4e65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e69:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4e6d:	48 89 10             	mov    %rdx,(%rax)
    4e70:	90                   	nop
    4e71:	c9                   	leave
    4e72:	c3                   	ret
    4e73:	90                   	nop

0000000000004e74 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
      _M_dispose()
    4e74:	55                   	push   %rbp
    4e75:	48 89 e5             	mov    %rsp,%rbp
    4e78:	48 83 ec 10          	sub    $0x10,%rsp
    4e7c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	if (!_M_is_local())
    4e80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e84:	48 89 c7             	mov    %rax,%rdi
    4e87:	e8 30 00 00 00       	call   4ebc <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>
    4e8c:	83 f0 01             	xor    $0x1,%eax
    4e8f:	84 c0                	test   %al,%al
    4e91:	74 17                	je     4eaa <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv+0x36>
	  _M_destroy(_M_allocated_capacity);
    4e93:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e97:	48 8b 50 10          	mov    0x10(%rax),%rdx
    4e9b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e9f:	48 89 d6             	mov    %rdx,%rsi
    4ea2:	48 89 c7             	mov    %rax,%rdi
    4ea5:	e8 ae 03 00 00       	call   5258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm>
      }
    4eaa:	90                   	nop
    4eab:	c9                   	leave
    4eac:	c3                   	ret
    4ead:	90                   	nop

0000000000004eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
      _M_get_allocator()
    4eae:	55                   	push   %rbp
    4eaf:	48 89 e5             	mov    %rsp,%rbp
    4eb2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_dataplus; }
    4eb6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4eba:	5d                   	pop    %rbp
    4ebb:	c3                   	ret

0000000000004ebc <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>:
      _M_is_local() const
    4ebc:	55                   	push   %rbp
    4ebd:	48 89 e5             	mov    %rsp,%rbp
    4ec0:	53                   	push   %rbx
    4ec1:	48 83 ec 18          	sub    $0x18,%rsp
    4ec5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return _M_data() == _M_local_data(); }
    4ec9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ecd:	48 89 c7             	mov    %rax,%rdi
    4ed0:	e8 57 ff ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    4ed5:	48 89 c3             	mov    %rax,%rbx
    4ed8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4edc:	48 89 c7             	mov    %rax,%rdi
    4edf:	e8 c2 03 00 00       	call   52a6 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    4ee4:	48 39 c3             	cmp    %rax,%rbx
    4ee7:	0f 94 c0             	sete   %al
    4eea:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    4eee:	c9                   	leave
    4eef:	c3                   	ret

0000000000004ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
      _M_data(pointer __p)
    4ef0:	55                   	push   %rbp
    4ef1:	48 89 e5             	mov    %rsp,%rbp
    4ef4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ef8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { _M_dataplus._M_p = __p; }
    4efc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f00:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4f04:	48 89 10             	mov    %rdx,(%rax)
    4f07:	90                   	nop
    4f08:	5d                   	pop    %rbp
    4f09:	c3                   	ret

0000000000004f0a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>:
      _M_capacity(size_type __capacity)
    4f0a:	55                   	push   %rbp
    4f0b:	48 89 e5             	mov    %rsp,%rbp
    4f0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4f12:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { _M_allocated_capacity = __capacity; }
    4f16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f1a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4f1e:	48 89 50 10          	mov    %rdx,0x10(%rax)
    4f22:	90                   	nop
    4f23:	5d                   	pop    %rbp
    4f24:	c3                   	ret
    4f25:	90                   	nop

0000000000004f26 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm>:
      _M_length(size_type __length)
    4f26:	55                   	push   %rbp
    4f27:	48 89 e5             	mov    %rsp,%rbp
    4f2a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4f2e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { _M_string_length = __length; }
    4f32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f36:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4f3a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4f3e:	90                   	nop
    4f3f:	5d                   	pop    %rbp
    4f40:	c3                   	ret
    4f41:	90                   	nop

0000000000004f42 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_>:

	// Check for out_of_range and length_error exceptions.
	struct _Guard
	{
	  _GLIBCXX20_CONSTEXPR
	  explicit _Guard(basic_string* __s) : _M_guarded(__s) { }
    4f42:	55                   	push   %rbp
    4f43:	48 89 e5             	mov    %rsp,%rbp
    4f46:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4f4a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    4f4e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f52:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4f56:	48 89 10             	mov    %rdx,(%rax)
    4f59:	90                   	nop
    4f5a:	5d                   	pop    %rbp
    4f5b:	c3                   	ret

0000000000004f5c <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev>:

	  _GLIBCXX20_CONSTEXPR
	  ~_Guard() { if (_M_guarded) _M_guarded->_M_dispose(); }
    4f5c:	55                   	push   %rbp
    4f5d:	48 89 e5             	mov    %rsp,%rbp
    4f60:	48 83 ec 10          	sub    $0x10,%rsp
    4f64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4f68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f6c:	48 8b 00             	mov    (%rax),%rax
    4f6f:	48 85 c0             	test   %rax,%rax
    4f72:	74 0f                	je     4f83 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev+0x27>
    4f74:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f78:	48 8b 00             	mov    (%rax),%rax
    4f7b:	48 89 c7             	mov    %rax,%rdi
    4f7e:	e8 f1 fe ff ff       	call   4e74 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
    4f83:	90                   	nop
    4f84:	c9                   	leave
    4f85:	c3                   	ret

0000000000004f86 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag>:
      basic_string<_CharT, _Traits, _Alloc>::
    4f86:	55                   	push   %rbp
    4f87:	48 89 e5             	mov    %rsp,%rbp
    4f8a:	48 83 ec 60          	sub    $0x60,%rsp
    4f8e:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    4f92:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    4f96:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
    4f9a:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    4f9e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    4fa2:	48 89 d6             	mov    %rdx,%rsi
    4fa5:	48 89 c7             	mov    %rax,%rdi
    4fa8:	e8 17 03 00 00       	call   52c4 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>
    4fad:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
	if (__dnew > size_type(_S_local_capacity))
    4fb1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4fb5:	48 83 f8 0f          	cmp    $0xf,%rax
    4fb9:	76 3f                	jbe    4ffa <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0x74>
	    _M_data(_M_create(__dnew, size_type(0)));
    4fbb:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
    4fbf:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4fc3:	ba 00 00 00 00       	mov    $0x0,%edx
    4fc8:	48 89 ce             	mov    %rcx,%rsi
    4fcb:	48 89 c7             	mov    %rax,%rdi
    4fce:	e8 bd 01 00 00       	call   5190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>
    4fd3:	48 89 c2             	mov    %rax,%rdx
    4fd6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4fda:	48 89 d6             	mov    %rdx,%rsi
    4fdd:	48 89 c7             	mov    %rax,%rdi
    4fe0:	e8 0b ff ff ff       	call   4ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	    _M_capacity(__dnew);
    4fe5:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    4fe9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4fed:	48 89 d6             	mov    %rdx,%rsi
    4ff0:	48 89 c7             	mov    %rax,%rdi
    4ff3:	e8 12 ff ff ff       	call   4f0a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>
    4ff8:	eb 5e                	jmp    5058 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xd2>
    4ffa:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    4ffe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if (std::is_constant_evaluated())
    5002:	e8 bd f7 ff ff       	call   47c4 <_ZSt21is_constant_evaluatedv>
    5007:	84 c0                	test   %al,%al
    5009:	74 40                	je     504b <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xc5>
	  for (_CharT& __c : _M_local_buf)
    500b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    500f:	48 83 c0 10          	add    $0x10,%rax
    5013:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5017:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    501b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    501f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5023:	48 83 c0 10          	add    $0x10,%rax
    5027:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    502b:	eb 14                	jmp    5041 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xbb>
    502d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5031:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
	    __c = _CharT();
    5035:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5039:	c6 00 00             	movb   $0x0,(%rax)
	  for (_CharT& __c : _M_local_buf)
    503c:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    5041:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5045:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    5049:	75 e2                	jne    502d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag+0xa7>
	return _M_local_data();
    504b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    504f:	48 89 c7             	mov    %rax,%rdi
    5052:	e8 4b f9 ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    5057:	90                   	nop

	  basic_string* _M_guarded;
	} __guard(this);
    5058:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    505c:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    5060:	48 89 d6             	mov    %rdx,%rsi
    5063:	48 89 c7             	mov    %rax,%rdi
    5066:	e8 d7 fe ff ff       	call   4f42 <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_>

	this->_S_copy_chars(_M_data(), __beg, __end);
    506b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    506f:	48 89 c7             	mov    %rax,%rdi
    5072:	e8 b5 fd ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    5077:	48 89 c1             	mov    %rax,%rcx
    507a:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    507e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    5082:	48 89 c6             	mov    %rax,%rsi
    5085:	48 89 cf             	mov    %rcx,%rdi
    5088:	e8 68 02 00 00       	call   52f5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>

	__guard._M_guarded = 0;
    508d:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    5094:	00 

	_M_set_length(__dnew);
    5095:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    5099:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    509d:	48 89 d6             	mov    %rdx,%rsi
    50a0:	48 89 c7             	mov    %rax,%rdi
    50a3:	e8 08 fd ff ff       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      }
    50a8:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
    50ac:	48 89 c7             	mov    %rax,%rdi
    50af:	e8 a8 fe ff ff       	call   4f5c <_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev>
    50b4:	c9                   	leave
    50b5:	c3                   	ret

00000000000050b6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>:
      append(const _CharT* __s)
    50b6:	55                   	push   %rbp
    50b7:	48 89 e5             	mov    %rsp,%rbp
    50ba:	48 83 ec 20          	sub    $0x20,%rsp
    50be:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50c2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	const size_type __n = traits_type::length(__s);
    50c6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    50ca:	48 89 c7             	mov    %rax,%rdi
    50cd:	e8 4d f7 ff ff       	call   481f <_ZNSt11char_traitsIcE6lengthEPKc>
    50d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	_M_check_length(size_type(0), __n, "basic_string::append");
    50d6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    50da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50de:	48 8d 0d d5 6f 00 00 	lea    0x6fd5(%rip),%rcx        # c0ba <_IO_stdin_used+0xba>
    50e5:	be 00 00 00 00       	mov    $0x0,%esi
    50ea:	48 89 c7             	mov    %rax,%rdi
    50ed:	e8 46 02 00 00       	call   5338 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc>
	return _M_append(__s, __n);
    50f2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    50f6:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    50fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50fe:	48 89 ce             	mov    %rcx,%rsi
    5101:	48 89 c7             	mov    %rax,%rdi
    5104:	e8 8d 02 00 00       	call   5396 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm>
      }
    5109:	c9                   	leave
    510a:	c3                   	ret
    510b:	90                   	nop

000000000000510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>:
      capacity() const _GLIBCXX_NOEXCEPT
    510c:	55                   	push   %rbp
    510d:	48 89 e5             	mov    %rsp,%rbp
    5110:	48 83 ec 10          	sub    $0x10,%rsp
    5114:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return _M_is_local() ? size_type(_S_local_capacity)
    5118:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    511c:	48 89 c7             	mov    %rax,%rdi
    511f:	e8 98 fd ff ff       	call   4ebc <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>
    5124:	84 c0                	test   %al,%al
    5126:	74 07                	je     512f <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv+0x23>
    5128:	b8 0f 00 00 00       	mov    $0xf,%eax
	                     : _M_allocated_capacity;
    512d:	eb 08                	jmp    5137 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv+0x2b>
	return _M_is_local() ? size_type(_S_local_capacity)
    512f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5133:	48 8b 40 10          	mov    0x10(%rax),%rax
      }
    5137:	c9                   	leave
    5138:	c3                   	ret

0000000000005139 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>:
    move(_Tp&& __t) noexcept
    5139:	55                   	push   %rbp
    513a:	48 89 e5             	mov    %rsp,%rbp
    513d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    5141:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5145:	5d                   	pop    %rbp
    5146:	c3                   	ret
    5147:	90                   	nop

0000000000005148 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>:
      append(const basic_string& __str)
    5148:	55                   	push   %rbp
    5149:	48 89 e5             	mov    %rsp,%rbp
    514c:	53                   	push   %rbx
    514d:	48 83 ec 18          	sub    $0x18,%rsp
    5151:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5155:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      { return this->append(__str._M_data(), __str.size()); }
    5159:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    515d:	48 89 c7             	mov    %rax,%rdi
    5160:	e8 4f f7 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    5165:	48 89 c3             	mov    %rax,%rbx
    5168:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    516c:	48 89 c7             	mov    %rax,%rdi
    516f:	e8 b8 fc ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    5174:	48 89 c1             	mov    %rax,%rcx
    5177:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    517b:	48 89 da             	mov    %rbx,%rdx
    517e:	48 89 ce             	mov    %rcx,%rsi
    5181:	48 89 c7             	mov    %rax,%rdi
    5184:	e8 d7 02 00 00       	call   5460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm>
    5189:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    518d:	c9                   	leave
    518e:	c3                   	ret
    518f:	90                   	nop

0000000000005190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>:
    basic_string<_CharT, _Traits, _Alloc>::
    5190:	55                   	push   %rbp
    5191:	48 89 e5             	mov    %rsp,%rbp
    5194:	53                   	push   %rbx
    5195:	48 83 ec 28          	sub    $0x28,%rsp
    5199:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    519d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    51a1:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      if (__capacity > max_size())
    51a5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    51a9:	48 8b 18             	mov    (%rax),%rbx
    51ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    51b0:	48 89 c7             	mov    %rax,%rdi
    51b3:	e8 f2 02 00 00       	call   54aa <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
    51b8:	48 39 d8             	cmp    %rbx,%rax
    51bb:	0f 92 c0             	setb   %al
    51be:	84 c0                	test   %al,%al
    51c0:	74 0f                	je     51d1 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0x41>
	std::__throw_length_error(__N("basic_string::_M_create"));
    51c2:	48 8d 05 06 6f 00 00 	lea    0x6f06(%rip),%rax        # c0cf <_IO_stdin_used+0xcf>
    51c9:	48 89 c7             	mov    %rax,%rdi
    51cc:	e8 df ee ff ff       	call   40b0 <_ZSt20__throw_length_errorPKc@plt>
      if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
    51d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    51d5:	48 8b 00             	mov    (%rax),%rax
    51d8:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    51dc:	73 52                	jae    5230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0xa0>
    51de:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    51e2:	48 8b 10             	mov    (%rax),%rdx
    51e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51e9:	48 01 c0             	add    %rax,%rax
    51ec:	48 39 c2             	cmp    %rax,%rdx
    51ef:	73 3f                	jae    5230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0xa0>
	  __capacity = 2 * __old_capacity;
    51f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51f5:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    51f9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    51fd:	48 89 10             	mov    %rdx,(%rax)
	  if (__capacity > max_size())
    5200:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5204:	48 8b 18             	mov    (%rax),%rbx
    5207:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    520b:	48 89 c7             	mov    %rax,%rdi
    520e:	e8 97 02 00 00       	call   54aa <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
    5213:	48 39 d8             	cmp    %rbx,%rax
    5216:	0f 92 c0             	setb   %al
    5219:	84 c0                	test   %al,%al
    521b:	74 13                	je     5230 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm+0xa0>
	    __capacity = max_size();
    521d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5221:	48 89 c7             	mov    %rax,%rdi
    5224:	e8 81 02 00 00       	call   54aa <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
    5229:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    522d:	48 89 02             	mov    %rax,(%rdx)
      return _Alloc_traits::allocate(_M_get_allocator(), __capacity + 1);
    5230:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5234:	48 8b 00             	mov    (%rax),%rax
    5237:	48 8d 58 01          	lea    0x1(%rax),%rbx
    523b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    523f:	48 89 c7             	mov    %rax,%rdi
    5242:	e8 67 fc ff ff       	call   4eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    5247:	48 89 de             	mov    %rbx,%rsi
    524a:	48 89 c7             	mov    %rax,%rdi
    524d:	e8 81 02 00 00       	call   54d3 <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m>
    }
    5252:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    5256:	c9                   	leave
    5257:	c3                   	ret

0000000000005258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm>:
      _M_destroy(size_type __size) throw()
    5258:	55                   	push   %rbp
    5259:	48 89 e5             	mov    %rsp,%rbp
    525c:	41 54                	push   %r12
    525e:	53                   	push   %rbx
    525f:	48 83 ec 10          	sub    $0x10,%rsp
    5263:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5267:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      { _Alloc_traits::deallocate(_M_get_allocator(), _M_data(), __size + 1); }
    526b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    526f:	48 8d 58 01          	lea    0x1(%rax),%rbx
    5273:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5277:	48 89 c7             	mov    %rax,%rdi
    527a:	e8 ad fb ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    527f:	49 89 c4             	mov    %rax,%r12
    5282:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5286:	48 89 c7             	mov    %rax,%rdi
    5289:	e8 20 fc ff ff       	call   4eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    528e:	48 89 da             	mov    %rbx,%rdx
    5291:	4c 89 e6             	mov    %r12,%rsi
    5294:	48 89 c7             	mov    %rax,%rdi
    5297:	e8 a5 02 00 00       	call   5541 <_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm>
    529c:	90                   	nop
    529d:	48 83 c4 10          	add    $0x10,%rsp
    52a1:	5b                   	pop    %rbx
    52a2:	41 5c                	pop    %r12
    52a4:	5d                   	pop    %rbp
    52a5:	c3                   	ret

00000000000052a6 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
      _M_local_data() const
    52a6:	55                   	push   %rbp
    52a7:	48 89 e5             	mov    %rsp,%rbp
    52aa:	48 83 ec 10          	sub    $0x10,%rsp
    52ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
    52b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    52b6:	48 83 c0 10          	add    $0x10,%rax
    52ba:	48 89 c7             	mov    %rax,%rdi
    52bd:	e8 dd 02 00 00       	call   559f <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>
      }
    52c2:	c9                   	leave
    52c3:	c3                   	ret

00000000000052c4 <_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_>:
  */
  template<typename _InputIterator>
    _GLIBCXX_NODISCARD
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    52c4:	55                   	push   %rbp
    52c5:	48 89 e5             	mov    %rsp,%rbp
    52c8:	48 83 ec 10          	sub    $0x10,%rsp
    52cc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    52d0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
    52d4:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    52d8:	48 89 c7             	mov    %rax,%rdi
    52db:	e8 d9 02 00 00       	call   55b9 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>
      return std::__distance(__first, __last,
    52e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    52e4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    52e8:	48 89 d6             	mov    %rdx,%rsi
    52eb:	48 89 c7             	mov    %rax,%rdi
    52ee:	e8 d1 02 00 00       	call   55c4 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>
    }
    52f3:	c9                   	leave
    52f4:	c3                   	ret

00000000000052f5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_>:
      _S_copy_chars(_CharT* __p, const _CharT* __k1, const _CharT* __k2)
    52f5:	55                   	push   %rbp
    52f6:	48 89 e5             	mov    %rsp,%rbp
    52f9:	48 83 ec 20          	sub    $0x20,%rsp
    52fd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5301:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5305:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { _S_copy(__p, __k1, __k2 - __k1); }
    5309:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    530d:	48 2b 45 f0          	sub    -0x10(%rbp),%rax
    5311:	48 89 c2             	mov    %rax,%rdx
    5314:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    5318:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    531c:	48 89 ce             	mov    %rcx,%rsi
    531f:	48 89 c7             	mov    %rax,%rdi
    5322:	e8 b3 02 00 00       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
    5327:	90                   	nop
    5328:	c9                   	leave
    5329:	c3                   	ret

000000000000532a <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
      _M_get_allocator() const
    532a:	55                   	push   %rbp
    532b:	48 89 e5             	mov    %rsp,%rbp
    532e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_dataplus; }
    5332:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5336:	5d                   	pop    %rbp
    5337:	c3                   	ret

0000000000005338 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc>:
      _M_check_length(size_type __n1, size_type __n2, const char* __s) const
    5338:	55                   	push   %rbp
    5339:	48 89 e5             	mov    %rsp,%rbp
    533c:	53                   	push   %rbx
    533d:	48 83 ec 28          	sub    $0x28,%rsp
    5341:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5345:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5349:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    534d:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	if (this->max_size() - (this->size() - __n1) < __n2)
    5351:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5355:	48 89 c7             	mov    %rax,%rdi
    5358:	e8 4d 01 00 00       	call   54aa <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
    535d:	48 89 c3             	mov    %rax,%rbx
    5360:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5364:	48 89 c7             	mov    %rax,%rdi
    5367:	e8 48 f5 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    536c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5370:	48 29 c2             	sub    %rax,%rdx
    5373:	48 8d 04 13          	lea    (%rbx,%rdx,1),%rax
    5377:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    537b:	0f 92 c0             	setb   %al
    537e:	84 c0                	test   %al,%al
    5380:	74 0c                	je     538e <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc+0x56>
	  __throw_length_error(__N(__s));
    5382:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5386:	48 89 c7             	mov    %rax,%rdi
    5389:	e8 22 ed ff ff       	call   40b0 <_ZSt20__throw_length_errorPKc@plt>
      }
    538e:	90                   	nop
    538f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    5393:	c9                   	leave
    5394:	c3                   	ret
    5395:	90                   	nop

0000000000005396 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm>:
    }

  template<typename _CharT, typename _Traits, typename _Alloc>
    _GLIBCXX20_CONSTEXPR
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    5396:	55                   	push   %rbp
    5397:	48 89 e5             	mov    %rsp,%rbp
    539a:	53                   	push   %rbx
    539b:	48 83 ec 38          	sub    $0x38,%rsp
    539f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    53a3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    53a7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    _M_append(const _CharT* __s, size_type __n)
    {
      const size_type __len = __n + this->size();
    53ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53af:	48 89 c7             	mov    %rax,%rdi
    53b2:	e8 fd f4 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    53b7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    53bb:	48 01 d0             	add    %rdx,%rax
    53be:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

      if (__len <= this->capacity())
    53c2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53c6:	48 89 c7             	mov    %rax,%rdi
    53c9:	e8 3e fd ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    53ce:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    53d2:	0f 93 c0             	setae  %al
    53d5:	84 c0                	test   %al,%al
    53d7:	74 3b                	je     5414 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm+0x7e>
	{
	  if (__n)
    53d9:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    53de:	74 62                	je     5442 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm+0xac>
	    this->_S_copy(this->_M_data() + this->size(), __s, __n);
    53e0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53e4:	48 89 c7             	mov    %rax,%rdi
    53e7:	e8 40 fa ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    53ec:	48 89 c3             	mov    %rax,%rbx
    53ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    53f3:	48 89 c7             	mov    %rax,%rdi
    53f6:	e8 b9 f4 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    53fb:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
    53ff:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    5403:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5407:	48 89 c6             	mov    %rax,%rsi
    540a:	48 89 cf             	mov    %rcx,%rdi
    540d:	e8 c8 01 00 00       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
    5412:	eb 2e                	jmp    5442 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm+0xac>
	}
      else
	this->_M_mutate(this->size(), size_type(0), __s, __n);
    5414:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5418:	48 89 c7             	mov    %rax,%rdi
    541b:	e8 94 f4 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    5420:	48 89 c6             	mov    %rax,%rsi
    5423:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    5427:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    542b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    542f:	49 89 c8             	mov    %rcx,%r8
    5432:	48 89 d1             	mov    %rdx,%rcx
    5435:	ba 00 00 00 00       	mov    $0x0,%edx
    543a:	48 89 c7             	mov    %rax,%rdi
    543d:	e8 e2 01 00 00       	call   5624 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>

      this->_M_set_length(__len);
    5442:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5446:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    544a:	48 89 d6             	mov    %rdx,%rsi
    544d:	48 89 c7             	mov    %rax,%rdi
    5450:	e8 5b f9 ff ff       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      return *this;
    5455:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    }
    5459:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    545d:	c9                   	leave
    545e:	c3                   	ret
    545f:	90                   	nop

0000000000005460 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm>:
      append(const _CharT* __s, size_type __n)
    5460:	55                   	push   %rbp
    5461:	48 89 e5             	mov    %rsp,%rbp
    5464:	48 83 ec 20          	sub    $0x20,%rsp
    5468:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    546c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    5470:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	_M_check_length(size_type(0), __n, "basic_string::append");
    5474:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5478:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    547c:	48 8d 0d 37 6c 00 00 	lea    0x6c37(%rip),%rcx        # c0ba <_IO_stdin_used+0xba>
    5483:	be 00 00 00 00       	mov    $0x0,%esi
    5488:	48 89 c7             	mov    %rax,%rdi
    548b:	e8 a8 fe ff ff       	call   5338 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc>
	return _M_append(__s, __n);
    5490:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5494:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    5498:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    549c:	48 89 ce             	mov    %rcx,%rsi
    549f:	48 89 c7             	mov    %rax,%rdi
    54a2:	e8 ef fe ff ff       	call   5396 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm>
      }
    54a7:	c9                   	leave
    54a8:	c3                   	ret
    54a9:	90                   	nop

00000000000054aa <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
    54aa:	55                   	push   %rbp
    54ab:	48 89 e5             	mov    %rsp,%rbp
    54ae:	48 83 ec 10          	sub    $0x10,%rsp
    54b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return (_Alloc_traits::max_size(_M_get_allocator()) - 1) / 2; }
    54b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54ba:	48 89 c7             	mov    %rax,%rdi
    54bd:	e8 68 fe ff ff       	call   532a <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    54c2:	48 89 c7             	mov    %rax,%rdi
    54c5:	e8 9e 02 00 00       	call   5768 <_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_>
    54ca:	48 83 e8 01          	sub    $0x1,%rax
    54ce:	48 d1 e8             	shr    %rax
    54d1:	c9                   	leave
    54d2:	c3                   	ret

00000000000054d3 <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m>:
       *  @param  __n  The number of objects to allocate space for.
       *
       *  Calls @c a.allocate(n)
      */
      _GLIBCXX_NODISCARD static _GLIBCXX20_CONSTEXPR pointer
      allocate(allocator_type& __a, size_type __n)
    54d3:	55                   	push   %rbp
    54d4:	48 89 e5             	mov    %rsp,%rbp
    54d7:	48 83 ec 20          	sub    $0x20,%rsp
    54db:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    54df:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    54e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54e7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    54eb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54ef:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
#if __cplusplus > 201703L
      [[nodiscard,__gnu__::__always_inline__]]
      constexpr _Tp*
      allocate(size_t __n)
      {
	if (std::__is_constant_evaluated())
    54f3:	e8 c1 f2 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    54f8:	84 c0                	test   %al,%al
    54fa:	74 2a                	je     5526 <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m+0x53>
	  {
	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
    54fc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5500:	ba 00 00 00 00       	mov    $0x0,%edx
    5505:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5509:	48 89 d0             	mov    %rdx,%rax
    550c:	83 e0 01             	and    $0x1,%eax
    550f:	84 c0                	test   %al,%al
    5511:	74 05                	je     5518 <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m+0x45>
	      std::__throw_bad_array_new_length();
    5513:	e8 c8 eb ff ff       	call   40e0 <_ZSt28__throw_bad_array_new_lengthv@plt>
	    return static_cast<_Tp*>(::operator new(__n));
    5518:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    551c:	48 89 c7             	mov    %rax,%rdi
    551f:	e8 2c ec ff ff       	call   4150 <_Znwm@plt>
    5524:	eb 19                	jmp    553f <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m+0x6c>
	  }

	return __allocator_base<_Tp>::allocate(__n, 0);
    5526:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    552a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    552e:	ba 00 00 00 00       	mov    $0x0,%edx
    5533:	48 89 ce             	mov    %rcx,%rsi
    5536:	48 89 c7             	mov    %rax,%rdi
    5539:	e8 56 02 00 00       	call   5794 <_ZNSt15__new_allocatorIcE8allocateEmPKv>
    553e:	90                   	nop
      { return __a.allocate(__n); }
    553f:	c9                   	leave
    5540:	c3                   	ret

0000000000005541 <_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm>:
       *  @param  __n  The number of objects space was allocated for.
       *
       *  Calls <tt> a.deallocate(p, n) </tt>
      */
      static _GLIBCXX20_CONSTEXPR void
      deallocate(allocator_type& __a, pointer __p, size_type __n)
    5541:	55                   	push   %rbp
    5542:	48 89 e5             	mov    %rsp,%rbp
    5545:	48 83 ec 40          	sub    $0x40,%rsp
    5549:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    554d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5551:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    5555:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5559:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    555d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5561:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5565:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5569:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

      [[__gnu__::__always_inline__]]
      constexpr void
      deallocate(_Tp* __p, size_t __n)
      {
	if (std::__is_constant_evaluated())
    556d:	e8 47 f2 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    5572:	84 c0                	test   %al,%al
    5574:	74 0e                	je     5584 <_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm+0x43>
	  {
	    ::operator delete(__p);
    5576:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    557a:	48 89 c7             	mov    %rax,%rdi
    557d:	e8 ae eb ff ff       	call   4130 <_ZdlPv@plt>
	    return;
    5582:	eb 18                	jmp    559c <_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm+0x5b>
	  }
	__allocator_base<_Tp>::deallocate(__p, __n);
    5584:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5588:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    558c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5590:	48 89 ce             	mov    %rcx,%rsi
    5593:	48 89 c7             	mov    %rax,%rdi
    5596:	e8 41 02 00 00       	call   57dc <_ZNSt15__new_allocatorIcE10deallocateEPcm>
      { __a.deallocate(__p, __n); }
    559b:	90                   	nop
    559c:	90                   	nop
    559d:	c9                   	leave
    559e:	c3                   	ret

000000000000559f <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>:
      pointer_to(element_type& __r) noexcept
    559f:	55                   	push   %rbp
    55a0:	48 89 e5             	mov    %rsp,%rbp
    55a3:	48 83 ec 10          	sub    $0x10,%rsp
    55a7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return std::addressof(__r); }
    55ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    55af:	48 89 c7             	mov    %rax,%rdi
    55b2:	e8 c2 01 00 00       	call   5779 <_ZSt9addressofIKcEPT_RS1_>
    55b7:	c9                   	leave
    55b8:	c3                   	ret

00000000000055b9 <_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_>:
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    55b9:	55                   	push   %rbp
    55ba:	48 89 e5             	mov    %rsp,%rbp
    55bd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
    55c1:	90                   	nop
    55c2:	5d                   	pop    %rbp
    55c3:	c3                   	ret

00000000000055c4 <_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag>:
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
    55c4:	55                   	push   %rbp
    55c5:	48 89 e5             	mov    %rsp,%rbp
    55c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    55cc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      return __last - __first;
    55d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    55d4:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
    }
    55d8:	5d                   	pop    %rbp
    55d9:	c3                   	ret

00000000000055da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>:
      _S_copy(_CharT* __d, const _CharT* __s, size_type __n)
    55da:	55                   	push   %rbp
    55db:	48 89 e5             	mov    %rsp,%rbp
    55de:	48 83 ec 20          	sub    $0x20,%rsp
    55e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    55e6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    55ea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n == 1)
    55ee:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
    55f3:	75 15                	jne    560a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm+0x30>
	  traits_type::assign(*__d, *__s);
    55f5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    55f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    55fd:	48 89 d6             	mov    %rdx,%rsi
    5600:	48 89 c7             	mov    %rax,%rdi
    5603:	e8 d9 f1 ff ff       	call   47e1 <_ZNSt11char_traitsIcE6assignERcRKc>
      }
    5608:	eb 17                	jmp    5621 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm+0x47>
	  traits_type::copy(__d, __s, __n);
    560a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    560e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    5612:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5616:	48 89 ce             	mov    %rcx,%rsi
    5619:	48 89 c7             	mov    %rax,%rdi
    561c:	e8 30 f2 ff ff       	call   4851 <_ZNSt11char_traitsIcE4copyEPcPKcm>
      }
    5621:	90                   	nop
    5622:	c9                   	leave
    5623:	c3                   	ret

0000000000005624 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>:
    basic_string<_CharT, _Traits, _Alloc>::
    5624:	55                   	push   %rbp
    5625:	48 89 e5             	mov    %rsp,%rbp
    5628:	48 83 ec 50          	sub    $0x50,%rsp
    562c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5630:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5634:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    5638:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    563c:	4c 89 45 b8          	mov    %r8,-0x48(%rbp)
      const size_type __how_much = length() - __pos - __len1;
    5640:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5644:	48 89 c7             	mov    %rax,%rdi
    5647:	e8 44 f6 ff ff       	call   4c90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
    564c:	48 2b 45 d0          	sub    -0x30(%rbp),%rax
    5650:	48 2b 45 c8          	sub    -0x38(%rbp),%rax
    5654:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      size_type __new_capacity = length() + __len2 - __len1;
    5658:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    565c:	48 89 c7             	mov    %rax,%rdi
    565f:	e8 2c f6 ff ff       	call   4c90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
    5664:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    5668:	48 01 d0             	add    %rdx,%rax
    566b:	48 2b 45 c8          	sub    -0x38(%rbp),%rax
    566f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      pointer __r = _M_create(__new_capacity, capacity());
    5673:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5677:	48 89 c7             	mov    %rax,%rdi
    567a:	e8 8d fa ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    567f:	48 89 c2             	mov    %rax,%rdx
    5682:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
    5686:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    568a:	48 89 ce             	mov    %rcx,%rsi
    568d:	48 89 c7             	mov    %rax,%rdi
    5690:	e8 fb fa ff ff       	call   5190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>
    5695:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      if (__pos)
    5699:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    569e:	74 22                	je     56c2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x9e>
	this->_S_copy(__r, _M_data(), __pos);
    56a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    56a4:	48 89 c7             	mov    %rax,%rdi
    56a7:	e8 80 f7 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    56ac:	48 89 c1             	mov    %rax,%rcx
    56af:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    56b3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    56b7:	48 89 ce             	mov    %rcx,%rsi
    56ba:	48 89 c7             	mov    %rax,%rdi
    56bd:	e8 18 ff ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
      if (__s && __len2)
    56c2:	48 83 7d c0 00       	cmpq   $0x0,-0x40(%rbp)
    56c7:	74 26                	je     56ef <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xcb>
    56c9:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    56ce:	74 1f                	je     56ef <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0xcb>
	this->_S_copy(__r + __pos, __s, __len2);
    56d0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    56d4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    56d8:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    56dc:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    56e0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    56e4:	48 89 c6             	mov    %rax,%rsi
    56e7:	48 89 cf             	mov    %rcx,%rdi
    56ea:	e8 eb fe ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
      if (__how_much)
    56ef:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    56f4:	74 3d                	je     5733 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm+0x10f>
		      _M_data() + __pos + __len1, __how_much);
    56f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    56fa:	48 89 c7             	mov    %rax,%rdi
    56fd:	e8 2a f7 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    5702:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    5706:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    570a:	48 01 ca             	add    %rcx,%rdx
    570d:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
	this->_S_copy(__r + __pos + __len2,
    5711:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    5715:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    5719:	48 01 c2             	add    %rax,%rdx
    571c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5720:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    5724:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5728:	48 89 c2             	mov    %rax,%rdx
    572b:	48 89 cf             	mov    %rcx,%rdi
    572e:	e8 a7 fe ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
      _M_dispose();
    5733:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5737:	48 89 c7             	mov    %rax,%rdi
    573a:	e8 35 f7 ff ff       	call   4e74 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
      _M_data(__r);
    573f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5743:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5747:	48 89 d6             	mov    %rdx,%rsi
    574a:	48 89 c7             	mov    %rax,%rdi
    574d:	e8 9e f7 ff ff       	call   4ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
      _M_capacity(__new_capacity);
    5752:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5756:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    575a:	48 89 d6             	mov    %rdx,%rsi
    575d:	48 89 c7             	mov    %rax,%rdi
    5760:	e8 a5 f7 ff ff       	call   4f0a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>
    }
    5765:	90                   	nop
    5766:	c9                   	leave
    5767:	c3                   	ret

0000000000005768 <_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_>:
       *  @brief  The maximum supported allocation size
       *  @param  __a  An allocator.
       *  @return @c __a.max_size()
      */
      static _GLIBCXX20_CONSTEXPR size_type
      max_size(const allocator_type& __a __attribute__((__unused__))) noexcept
    5768:	55                   	push   %rbp
    5769:	48 89 e5             	mov    %rsp,%rbp
    576c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
#if __cplusplus <= 201703L
	return __a.max_size();
#else
	return size_t(-1) / sizeof(value_type);
    5770:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
#endif
      }
    5777:	5d                   	pop    %rbp
    5778:	c3                   	ret

0000000000005779 <_ZSt9addressofIKcEPT_RS1_>:
    addressof(_Tp& __r) noexcept
    5779:	55                   	push   %rbp
    577a:	48 89 e5             	mov    %rsp,%rbp
    577d:	48 83 ec 10          	sub    $0x10,%rsp
    5781:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return std::__addressof(__r); }
    5785:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5789:	48 89 c7             	mov    %rax,%rdi
    578c:	e8 74 00 00 00       	call   5805 <_ZSt11__addressofIKcEPT_RS1_>
    5791:	c9                   	leave
    5792:	c3                   	ret
    5793:	90                   	nop

0000000000005794 <_ZNSt15__new_allocatorIcE8allocateEmPKv>:
#endif

      // NB: __n is permitted to be 0.  The C++ standard says nothing
      // about what the return value is when __n == 0.
      _GLIBCXX_NODISCARD _Tp*
      allocate(size_type __n, const void* = static_cast<const void*>(0))
    5794:	55                   	push   %rbp
    5795:	48 89 e5             	mov    %rsp,%rbp
    5798:	48 83 ec 20          	sub    $0x20,%rsp
    579c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    57a0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    57a4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	// _GLIBCXX_RESOLVE_LIB_DEFECTS
	// 3308. std::allocator<void>().allocate(n)
	static_assert(sizeof(_Tp) != 0, "cannot allocate incomplete types");
#endif

	if (__builtin_expect(__n > this->_M_max_size(), false))
    57a8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57ac:	48 89 c7             	mov    %rax,%rdi
    57af:	e8 60 00 00 00       	call   5814 <_ZNKSt15__new_allocatorIcE11_M_max_sizeEv>
    57b4:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    57b8:	0f 92 c0             	setb   %al
    57bb:	0f b6 c0             	movzbl %al,%eax
    57be:	48 85 c0             	test   %rax,%rax
    57c1:	0f 95 c0             	setne  %al
    57c4:	84 c0                	test   %al,%al
    57c6:	74 05                	je     57cd <_ZNSt15__new_allocatorIcE8allocateEmPKv+0x39>
	  {
	    // _GLIBCXX_RESOLVE_LIB_DEFECTS
	    // 3190. allocator::allocate sometimes returns too little storage
	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	      std::__throw_bad_array_new_length();
	    std::__throw_bad_alloc();
    57c8:	e8 b3 e8 ff ff       	call   4080 <_ZSt17__throw_bad_allocv@plt>
	    std::align_val_t __al = std::align_val_t(alignof(_Tp));
	    return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp),
							   __al));
	  }
#endif
	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
    57cd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    57d1:	48 89 c7             	mov    %rax,%rdi
    57d4:	e8 77 e9 ff ff       	call   4150 <_Znwm@plt>
    57d9:	90                   	nop
      }
    57da:	c9                   	leave
    57db:	c3                   	ret

00000000000057dc <_ZNSt15__new_allocatorIcE10deallocateEPcm>:

      // __p is not permitted to be a null pointer.
      void
      deallocate(_Tp* __p, size_type __n __attribute__ ((__unused__)))
    57dc:	55                   	push   %rbp
    57dd:	48 89 e5             	mov    %rsp,%rbp
    57e0:	48 83 ec 20          	sub    $0x20,%rsp
    57e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    57e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    57ec:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	    _GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n),
				     std::align_val_t(alignof(_Tp)));
	    return;
	  }
#endif
	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
    57f0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    57f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    57f8:	48 89 d6             	mov    %rdx,%rsi
    57fb:	48 89 c7             	mov    %rax,%rdi
    57fe:	e8 5d e9 ff ff       	call   4160 <_ZdlPvm@plt>
      }
    5803:	c9                   	leave
    5804:	c3                   	ret

0000000000005805 <_ZSt11__addressofIKcEPT_RS1_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
    5805:	55                   	push   %rbp
    5806:	48 89 e5             	mov    %rsp,%rbp
    5809:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
    580d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5811:	5d                   	pop    %rbp
    5812:	c3                   	ret
    5813:	90                   	nop

0000000000005814 <_ZNKSt15__new_allocatorIcE11_M_max_sizeEv>:
	{ return false; }
#endif

    private:
      _GLIBCXX_CONSTEXPR size_type
      _M_max_size() const _GLIBCXX_USE_NOEXCEPT
    5814:	55                   	push   %rbp
    5815:	48 89 e5             	mov    %rsp,%rbp
    5818:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
#if __PTRDIFF_MAX__ < __SIZE_MAX__
	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
    581c:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
    5823:	ff ff 7f 
#else
	return std::size_t(-1) / sizeof(_Tp);
#endif
      }
    5826:	5d                   	pop    %rbp
    5827:	c3                   	ret

0000000000005828 <_Z7yyerrorv>:
	}


	// #define DISPLAY_TOKEN(a) if (show_tokens) std::cout << "Token Name: " a << "\tLexeme: " << yytext << "\tLineno: " << yylineno << std::endl;

	void yyerror() {
    5828:	55                   	push   %rbp
    5829:	48 89 e5             	mov    %rsp,%rbp
		if (show_tokens) {
    582c:	0f b6 05 f5 cb 00 00 	movzbl 0xcbf5(%rip),%eax        # 12428 <show_tokens>
    5833:	84 c0                	test   %al,%al
    5835:	74 51                	je     5888 <_Z7yyerrorv+0x60>
			tok_out = freopen(NULL, "w", tok_out);
    5837:	48 8b 05 e2 cb 00 00 	mov    0xcbe2(%rip),%rax        # 12420 <tok_out>
    583e:	48 89 c2             	mov    %rax,%rdx
    5841:	48 8d 05 9b 6d 00 00 	lea    0x6d9b(%rip),%rax        # c5e3 <_ZL6yy_chk+0x103>
    5848:	48 89 c6             	mov    %rax,%rsi
    584b:	bf 00 00 00 00       	mov    $0x0,%edi
    5850:	e8 3b e9 ff ff       	call   4190 <freopen@plt>
    5855:	48 89 05 c4 cb 00 00 	mov    %rax,0xcbc4(%rip)        # 12420 <tok_out>
			if (!tok_out)
    585c:	48 8b 05 bd cb 00 00 	mov    0xcbbd(%rip),%rax        # 12420 <tok_out>
    5863:	48 85 c0             	test   %rax,%rax
    5866:	75 11                	jne    5879 <_Z7yyerrorv+0x51>
				perror("freopen");
    5868:	48 8d 05 76 6d 00 00 	lea    0x6d76(%rip),%rax        # c5e5 <_ZL6yy_chk+0x105>
    586f:	48 89 c7             	mov    %rax,%rdi
    5872:	e8 89 e8 ff ff       	call   4100 <perror@plt>
    5877:	eb 0f                	jmp    5888 <_Z7yyerrorv+0x60>
			else
				fclose(tok_out);
    5879:	48 8b 05 a0 cb 00 00 	mov    0xcba0(%rip),%rax        # 12420 <tok_out>
    5880:	48 89 c7             	mov    %rax,%rdi
    5883:	e8 b8 e8 ff ff       	call   4140 <fclose@plt>
		}
		exit(1);
    5888:	bf 01 00 00 00       	mov    $0x1,%edi
    588d:	e8 4e e9 ff ff       	call   41e0 <exit@plt>

0000000000005892 <_Z5yylexPi>:
	YY_USER_ACTION

/** The main scanner function which does all the work.
 */
YY_DECL
{
    5892:	55                   	push   %rbp
    5893:	48 89 e5             	mov    %rsp,%rbp
    5896:	53                   	push   %rbx
    5897:	48 83 ec 48          	sub    $0x48,%rsp
    589b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
	yy_state_type yy_current_state;
	char *yy_cp, *yy_bp;
	int yy_act;
    
	if ( !(yy_init) )
    589f:	8b 05 b3 cb 00 00    	mov    0xcbb3(%rip),%eax        # 12458 <_ZL7yy_init>
    58a5:	85 c0                	test   %eax,%eax
    58a7:	0f 85 b9 00 00 00    	jne    5966 <_Z5yylexPi+0xd4>
		{
		(yy_init) = 1;
    58ad:	c7 05 a1 cb 00 00 01 	movl   $0x1,0xcba1(%rip)        # 12458 <_ZL7yy_init>
    58b4:	00 00 00 

#ifdef YY_USER_INIT
		YY_USER_INIT;
#endif

		if ( ! (yy_start) )
    58b7:	8b 05 9f cb 00 00    	mov    0xcb9f(%rip),%eax        # 1245c <_ZL8yy_start>
    58bd:	85 c0                	test   %eax,%eax
    58bf:	75 0a                	jne    58cb <_Z5yylexPi+0x39>
			(yy_start) = 1;	/* first start state */
    58c1:	c7 05 91 cb 00 00 01 	movl   $0x1,0xcb91(%rip)        # 1245c <_ZL8yy_start>
    58c8:	00 00 00 

		if ( ! yyin )
    58cb:	48 8b 05 f6 ca 00 00 	mov    0xcaf6(%rip),%rax        # 123c8 <yyin>
    58d2:	48 85 c0             	test   %rax,%rax
    58d5:	75 0e                	jne    58e5 <_Z5yylexPi+0x53>
			yyin = stdin;
    58d7:	48 8b 05 92 c9 00 00 	mov    0xc992(%rip),%rax        # 12270 <stdin@GLIBC_2.2.5>
    58de:	48 89 05 e3 ca 00 00 	mov    %rax,0xcae3(%rip)        # 123c8 <yyin>

		if ( ! yyout )
    58e5:	48 8b 05 e4 ca 00 00 	mov    0xcae4(%rip),%rax        # 123d0 <yyout>
    58ec:	48 85 c0             	test   %rax,%rax
    58ef:	75 0e                	jne    58ff <_Z5yylexPi+0x6d>
			yyout = stdout;
    58f1:	48 8b 05 68 c9 00 00 	mov    0xc968(%rip),%rax        # 12260 <stdout@GLIBC_2.2.5>
    58f8:	48 89 05 d1 ca 00 00 	mov    %rax,0xcad1(%rip)        # 123d0 <yyout>

		if ( ! YY_CURRENT_BUFFER ) {
    58ff:	48 8b 05 3a cb 00 00 	mov    0xcb3a(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    5906:	48 85 c0             	test   %rax,%rax
    5909:	74 1a                	je     5925 <_Z5yylexPi+0x93>
    590b:	48 8b 05 2e cb 00 00 	mov    0xcb2e(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    5912:	48 8b 15 17 cb 00 00 	mov    0xcb17(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    5919:	48 c1 e2 03          	shl    $0x3,%rdx
    591d:	48 01 d0             	add    %rdx,%rax
    5920:	48 8b 00             	mov    (%rax),%rax
    5923:	eb 05                	jmp    592a <_Z5yylexPi+0x98>
    5925:	b8 00 00 00 00       	mov    $0x0,%eax
    592a:	48 85 c0             	test   %rax,%rax
    592d:	75 32                	jne    5961 <_Z5yylexPi+0xcf>
			yyensure_buffer_stack ();
    592f:	e8 e3 1a 00 00       	call   7417 <_ZL21yyensure_buffer_stackv>
			YY_CURRENT_BUFFER_LVALUE =
				yy_create_buffer( yyin, YY_BUF_SIZE );
    5934:	48 8b 05 8d ca 00 00 	mov    0xca8d(%rip),%rax        # 123c8 <yyin>
			YY_CURRENT_BUFFER_LVALUE =
    593b:	48 8b 15 fe ca 00 00 	mov    0xcafe(%rip),%rdx        # 12440 <_ZL15yy_buffer_stack>
    5942:	48 8b 0d e7 ca 00 00 	mov    0xcae7(%rip),%rcx        # 12430 <_ZL19yy_buffer_stack_top>
    5949:	48 c1 e1 03          	shl    $0x3,%rcx
    594d:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
				yy_create_buffer( yyin, YY_BUF_SIZE );
    5951:	be 00 40 00 00       	mov    $0x4000,%esi
    5956:	48 89 c7             	mov    %rax,%rdi
    5959:	e8 3b 16 00 00       	call   6f99 <_Z16yy_create_bufferP8_IO_FILEi>
			YY_CURRENT_BUFFER_LVALUE =
    595e:	48 89 03             	mov    %rax,(%rbx)
		}

		yy_load_buffer_state(  );
    5961:	e8 a8 15 00 00       	call   6f0e <_ZL20yy_load_buffer_statev>

#line 754 "lex.yy.c"

	while ( /*CONSTCOND*/1 )		/* loops until end-of-file is reached */
		{
		yy_cp = (yy_c_buf_p);
    5966:	48 8b 05 e3 ca 00 00 	mov    0xcae3(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    596d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)

		/* Support of yytext. */
		*yy_cp = (yy_hold_char);
    5971:	0f b6 15 d0 ca 00 00 	movzbl 0xcad0(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    5978:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    597c:	88 10                	mov    %dl,(%rax)

		/* yy_bp points to the position in yy_ch_buf of the start of
		 * the current run.
		 */
		yy_bp = yy_cp;
    597e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5982:	48 89 45 d8          	mov    %rax,-0x28(%rbp)

		yy_current_state = (yy_start);
    5986:	8b 05 d0 ca 00 00    	mov    0xcad0(%rip),%eax        # 1245c <_ZL8yy_start>
    598c:	89 45 ec             	mov    %eax,-0x14(%rbp)
yy_match:
		do
			{
			YY_CHAR yy_c = yy_ec[YY_SC_TO_UI(*yy_cp)] ;
    598f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5993:	0f b6 00             	movzbl (%rax),%eax
    5996:	0f b6 c0             	movzbl %al,%eax
    5999:	48 98                	cltq
    599b:	48 8d 15 de 67 00 00 	lea    0x67de(%rip),%rdx        # c180 <_ZL5yy_ec>
    59a2:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    59a6:	88 45 d3             	mov    %al,-0x2d(%rbp)
			if ( yy_accept[yy_current_state] )
    59a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    59ac:	48 98                	cltq
    59ae:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    59b2:	48 8d 05 47 67 00 00 	lea    0x6747(%rip),%rax        # c100 <_ZL9yy_accept>
    59b9:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    59bd:	66 85 c0             	test   %ax,%ax
    59c0:	74 48                	je     5a0a <_Z5yylexPi+0x178>
				{
				(yy_last_accepting_state) = yy_current_state;
    59c2:	8b 45 ec             	mov    -0x14(%rbp),%eax
    59c5:	89 05 99 ca 00 00    	mov    %eax,0xca99(%rip)        # 12464 <_ZL23yy_last_accepting_state>
				(yy_last_accepting_cpos) = yy_cp;
    59cb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    59cf:	48 89 05 92 ca 00 00 	mov    %rax,0xca92(%rip)        # 12468 <_ZL22yy_last_accepting_cpos>
				}
			while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    59d6:	eb 32                	jmp    5a0a <_Z5yylexPi+0x178>
				{
				yy_current_state = (int) yy_def[yy_current_state];
    59d8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    59db:	48 98                	cltq
    59dd:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    59e1:	48 8d 05 78 69 00 00 	lea    0x6978(%rip),%rax        # c360 <_ZL6yy_def>
    59e8:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    59ec:	98                   	cwtl
    59ed:	89 45 ec             	mov    %eax,-0x14(%rbp)
				if ( yy_current_state >= 63 )
    59f0:	83 7d ec 3e          	cmpl   $0x3e,-0x14(%rbp)
    59f4:	7e 14                	jle    5a0a <_Z5yylexPi+0x178>
					yy_c = yy_meta[yy_c];
    59f6:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    59fa:	48 98                	cltq
    59fc:	48 8d 15 7d 68 00 00 	lea    0x687d(%rip),%rdx        # c280 <_ZL7yy_meta>
    5a03:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    5a07:	88 45 d3             	mov    %al,-0x2d(%rbp)
			while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    5a0a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    5a0d:	48 98                	cltq
    5a0f:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a13:	48 8d 05 a6 68 00 00 	lea    0x68a6(%rip),%rax        # c2c0 <_ZL7yy_base>
    5a1a:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5a1e:	0f bf d0             	movswl %ax,%edx
    5a21:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    5a25:	01 d0                	add    %edx,%eax
    5a27:	48 98                	cltq
    5a29:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a2d:	48 8d 05 ac 6a 00 00 	lea    0x6aac(%rip),%rax        # c4e0 <_ZL6yy_chk>
    5a34:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5a38:	98                   	cwtl
    5a39:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    5a3c:	75 9a                	jne    59d8 <_Z5yylexPi+0x146>
				}
			yy_current_state = yy_nxt[yy_base[yy_current_state] + yy_c];
    5a3e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    5a41:	48 98                	cltq
    5a43:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a47:	48 8d 05 72 68 00 00 	lea    0x6872(%rip),%rax        # c2c0 <_ZL7yy_base>
    5a4e:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5a52:	0f bf d0             	movswl %ax,%edx
    5a55:	0f b6 45 d3          	movzbl -0x2d(%rbp),%eax
    5a59:	01 d0                	add    %edx,%eax
    5a5b:	48 98                	cltq
    5a5d:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a61:	48 8d 05 98 69 00 00 	lea    0x6998(%rip),%rax        # c400 <_ZL6yy_nxt>
    5a68:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5a6c:	98                   	cwtl
    5a6d:	89 45 ec             	mov    %eax,-0x14(%rbp)
			++yy_cp;
    5a70:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
			}
		while ( yy_base[yy_current_state] != 76 );
    5a75:	8b 45 ec             	mov    -0x14(%rbp),%eax
    5a78:	48 98                	cltq
    5a7a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a7e:	48 8d 05 3b 68 00 00 	lea    0x683b(%rip),%rax        # c2c0 <_ZL7yy_base>
    5a85:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5a89:	66 83 f8 4c          	cmp    $0x4c,%ax
    5a8d:	0f 85 fc fe ff ff    	jne    598f <_Z5yylexPi+0xfd>

yy_find_action:
    5a93:	90                   	nop
		yy_act = yy_accept[yy_current_state];
    5a94:	8b 45 ec             	mov    -0x14(%rbp),%eax
    5a97:	48 98                	cltq
    5a99:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5a9d:	48 8d 05 5c 66 00 00 	lea    0x665c(%rip),%rax        # c100 <_ZL9yy_accept>
    5aa4:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5aa8:	98                   	cwtl
    5aa9:	89 45 d4             	mov    %eax,-0x2c(%rbp)
		if ( yy_act == 0 )
    5aac:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    5ab0:	75 2c                	jne    5ade <_Z5yylexPi+0x24c>
			{ /* have to back up */
			yy_cp = (yy_last_accepting_cpos);
    5ab2:	48 8b 05 af c9 00 00 	mov    0xc9af(%rip),%rax        # 12468 <_ZL22yy_last_accepting_cpos>
    5ab9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
			yy_current_state = (yy_last_accepting_state);
    5abd:	8b 05 a1 c9 00 00    	mov    0xc9a1(%rip),%eax        # 12464 <_ZL23yy_last_accepting_state>
    5ac3:	89 45 ec             	mov    %eax,-0x14(%rbp)
			yy_act = yy_accept[yy_current_state];
    5ac6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    5ac9:	48 98                	cltq
    5acb:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    5acf:	48 8d 05 2a 66 00 00 	lea    0x662a(%rip),%rax        # c100 <_ZL9yy_accept>
    5ad6:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    5ada:	98                   	cwtl
    5adb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
			}

		YY_DO_BEFORE_ACTION;
    5ade:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5ae2:	48 89 05 f7 c8 00 00 	mov    %rax,0xc8f7(%rip)        # 123e0 <yytext>
    5ae9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5aed:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
    5af1:	89 05 c9 c8 00 00    	mov    %eax,0xc8c9(%rip)        # 123c0 <yyleng>
    5af7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5afb:	0f b6 00             	movzbl (%rax),%eax
    5afe:	88 05 44 c9 00 00    	mov    %al,0xc944(%rip)        # 12448 <_ZL12yy_hold_char>
    5b04:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b08:	c6 00 00             	movb   $0x0,(%rax)
    5b0b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b0f:	48 89 05 3a c9 00 00 	mov    %rax,0xc93a(%rip)        # 12450 <_ZL10yy_c_buf_p>

do_action:	/* This label is used only to access EOF actions. */

		switch ( yy_act )
    5b16:	83 7d d4 1d          	cmpl   $0x1d,-0x2c(%rbp)
    5b1a:	0f 87 8f 06 00 00    	ja     61af <_Z5yylexPi+0x91d>
    5b20:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    5b23:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    5b2a:	00 
    5b2b:	48 8d 05 d2 6b 00 00 	lea    0x6bd2(%rip),%rax        # c704 <_ZL6yy_chk+0x224>
    5b32:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    5b35:	48 98                	cltq
    5b37:	48 8d 15 c6 6b 00 00 	lea    0x6bc6(%rip),%rdx        # c704 <_ZL6yy_chk+0x224>
    5b3e:	48 01 d0             	add    %rdx,%rax
    5b41:	ff e0                	jmp    *%rax
	{ /* beginning of action switch */
			case 0: /* must back up */
			/* undo the effects of YY_DO_BEFORE_ACTION */
			*yy_cp = (yy_hold_char);
    5b43:	0f b6 15 fe c8 00 00 	movzbl 0xc8fe(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    5b4a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b4e:	88 10                	mov    %dl,(%rax)
			yy_cp = (yy_last_accepting_cpos);
    5b50:	48 8b 05 11 c9 00 00 	mov    0xc911(%rip),%rax        # 12468 <_ZL22yy_last_accepting_cpos>
    5b57:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
			yy_current_state = (yy_last_accepting_state);
    5b5b:	8b 05 03 c9 00 00    	mov    0xc903(%rip),%eax        # 12464 <_ZL23yy_last_accepting_state>
    5b61:	89 45 ec             	mov    %eax,-0x14(%rbp)
			goto yy_find_action;
    5b64:	e9 2b ff ff ff       	jmp    5a94 <_Z5yylexPi+0x202>
%}

%%

void	{
	display_token_info("VOID", yytext, yylineno);
    5b69:	48 8b 05 70 c8 00 00 	mov    0xc870(%rip),%rax        # 123e0 <yytext>
    5b70:	48 8d 15 89 c6 00 00 	lea    0xc689(%rip),%rdx        # 12200 <yylineno>
    5b77:	48 89 c6             	mov    %rax,%rsi
    5b7a:	48 8d 05 6c 6a 00 00 	lea    0x6a6c(%rip),%rax        # c5ed <_ZL6yy_chk+0x10d>
    5b81:	48 89 c7             	mov    %rax,%rdi
    5b84:	e8 04 20 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token_kind_type::VOID;
    5b89:	b8 07 01 00 00       	mov    $0x107,%eax
    5b8e:	e9 37 06 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

int	{ 	
	display_token_info("INTEGER", yytext, yylineno);
    5b93:	48 8b 05 46 c8 00 00 	mov    0xc846(%rip),%rax        # 123e0 <yytext>
    5b9a:	48 8d 15 5f c6 00 00 	lea    0xc65f(%rip),%rdx        # 12200 <yylineno>
    5ba1:	48 89 c6             	mov    %rax,%rsi
    5ba4:	48 8d 05 47 6a 00 00 	lea    0x6a47(%rip),%rax        # c5f2 <_ZL6yy_chk+0x112>
    5bab:	48 89 c7             	mov    %rax,%rdi
    5bae:	e8 da 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::INTEGER;
    5bb3:	b8 03 01 00 00       	mov    $0x103,%eax
    5bb8:	e9 0d 06 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

float {
	display_token_info("FLOAT", yytext, yylineno);
    5bbd:	48 8b 05 1c c8 00 00 	mov    0xc81c(%rip),%rax        # 123e0 <yytext>
    5bc4:	48 8d 15 35 c6 00 00 	lea    0xc635(%rip),%rdx        # 12200 <yylineno>
    5bcb:	48 89 c6             	mov    %rax,%rsi
    5bce:	48 8d 05 25 6a 00 00 	lea    0x6a25(%rip),%rax        # c5fa <_ZL6yy_chk+0x11a>
    5bd5:	48 89 c7             	mov    %rax,%rdi
    5bd8:	e8 b0 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::FLOAT;
    5bdd:	b8 04 01 00 00       	mov    $0x104,%eax
    5be2:	e9 e3 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

string {
	display_token_info("STRING", yytext, yylineno);
    5be7:	48 8b 05 f2 c7 00 00 	mov    0xc7f2(%rip),%rax        # 123e0 <yytext>
    5bee:	48 8d 15 0b c6 00 00 	lea    0xc60b(%rip),%rdx        # 12200 <yylineno>
    5bf5:	48 89 c6             	mov    %rax,%rsi
    5bf8:	48 8d 05 01 6a 00 00 	lea    0x6a01(%rip),%rax        # c600 <_ZL6yy_chk+0x120>
    5bff:	48 89 c7             	mov    %rax,%rdi
    5c02:	e8 86 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::STRING;
    5c07:	b8 06 01 00 00       	mov    $0x106,%eax
    5c0c:	e9 b9 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

bool {
	display_token_info("BOOL", yytext, yylineno);
    5c11:	48 8b 05 c8 c7 00 00 	mov    0xc7c8(%rip),%rax        # 123e0 <yytext>
    5c18:	48 8d 15 e1 c5 00 00 	lea    0xc5e1(%rip),%rdx        # 12200 <yylineno>
    5c1f:	48 89 c6             	mov    %rax,%rsi
    5c22:	48 8d 05 de 69 00 00 	lea    0x69de(%rip),%rax        # c607 <_ZL6yy_chk+0x127>
    5c29:	48 89 c7             	mov    %rax,%rdi
    5c2c:	e8 5c 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::BOOL;
    5c31:	b8 05 01 00 00       	mov    $0x105,%eax
    5c36:	e9 8f 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"("       {
	display_token_info("LEFT_ROUND_BRACKET", yytext, yylineno);
    5c3b:	48 8b 05 9e c7 00 00 	mov    0xc79e(%rip),%rax        # 123e0 <yytext>
    5c42:	48 8d 15 b7 c5 00 00 	lea    0xc5b7(%rip),%rdx        # 12200 <yylineno>
    5c49:	48 89 c6             	mov    %rax,%rsi
    5c4c:	48 8d 05 b9 69 00 00 	lea    0x69b9(%rip),%rax        # c60c <_ZL6yy_chk+0x12c>
    5c53:	48 89 c7             	mov    %rax,%rdi
    5c56:	e8 32 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::LEFT_ROUND_BRACKET;
    5c5b:	b8 0e 01 00 00       	mov    $0x10e,%eax
    5c60:	e9 65 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

")"       {
	display_token_info("RIGHT_ROUND_BRACKET", yytext, yylineno);
    5c65:	48 8b 05 74 c7 00 00 	mov    0xc774(%rip),%rax        # 123e0 <yytext>
    5c6c:	48 8d 15 8d c5 00 00 	lea    0xc58d(%rip),%rdx        # 12200 <yylineno>
    5c73:	48 89 c6             	mov    %rax,%rsi
    5c76:	48 8d 05 a2 69 00 00 	lea    0x69a2(%rip),%rax        # c61f <_ZL6yy_chk+0x13f>
    5c7d:	48 89 c7             	mov    %rax,%rdi
    5c80:	e8 08 1f 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::RIGHT_ROUND_BRACKET;
    5c85:	b8 0f 01 00 00       	mov    $0x10f,%eax
    5c8a:	e9 3b 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"{"       {
	display_token_info("LEFT_CURLY_BRACKET", yytext, yylineno);
    5c8f:	48 8b 05 4a c7 00 00 	mov    0xc74a(%rip),%rax        # 123e0 <yytext>
    5c96:	48 8d 15 63 c5 00 00 	lea    0xc563(%rip),%rdx        # 12200 <yylineno>
    5c9d:	48 89 c6             	mov    %rax,%rsi
    5ca0:	48 8d 05 8c 69 00 00 	lea    0x698c(%rip),%rax        # c633 <_ZL6yy_chk+0x153>
    5ca7:	48 89 c7             	mov    %rax,%rdi
    5caa:	e8 de 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::LEFT_CURLY_BRACKET;
    5caf:	b8 10 01 00 00       	mov    $0x110,%eax
    5cb4:	e9 11 05 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"}"       {
	display_token_info("RIGHT_CURLY_BRACKET", yytext, yylineno);
    5cb9:	48 8b 05 20 c7 00 00 	mov    0xc720(%rip),%rax        # 123e0 <yytext>
    5cc0:	48 8d 15 39 c5 00 00 	lea    0xc539(%rip),%rdx        # 12200 <yylineno>
    5cc7:	48 89 c6             	mov    %rax,%rsi
    5cca:	48 8d 05 75 69 00 00 	lea    0x6975(%rip),%rax        # c646 <_ZL6yy_chk+0x166>
    5cd1:	48 89 c7             	mov    %rax,%rdi
    5cd4:	e8 b4 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::RIGHT_CURLY_BRACKET;
    5cd9:	b8 11 01 00 00       	mov    $0x111,%eax
    5cde:	e9 e7 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

,		{
	display_token_info("COMMA", yytext, yylineno);
    5ce3:	48 8b 05 f6 c6 00 00 	mov    0xc6f6(%rip),%rax        # 123e0 <yytext>
    5cea:	48 8d 15 0f c5 00 00 	lea    0xc50f(%rip),%rdx        # 12200 <yylineno>
    5cf1:	48 89 c6             	mov    %rax,%rsi
    5cf4:	48 8d 05 5f 69 00 00 	lea    0x695f(%rip),%rax        # c65a <_ZL6yy_chk+0x17a>
    5cfb:	48 89 c7             	mov    %rax,%rdi
    5cfe:	e8 8a 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::COMMA;
    5d03:	b8 12 01 00 00       	mov    $0x112,%eax
    5d08:	e9 bd 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

;		{
	display_token_info("SEMICOLON", yytext, yylineno);
    5d0d:	48 8b 05 cc c6 00 00 	mov    0xc6cc(%rip),%rax        # 123e0 <yytext>
    5d14:	48 8d 15 e5 c4 00 00 	lea    0xc4e5(%rip),%rdx        # 12200 <yylineno>
    5d1b:	48 89 c6             	mov    %rax,%rsi
    5d1e:	48 8d 05 3b 69 00 00 	lea    0x693b(%rip),%rax        # c660 <_ZL6yy_chk+0x180>
    5d25:	48 89 c7             	mov    %rax,%rdi
    5d28:	e8 60 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::SEMICOLON;
    5d2d:	b8 13 01 00 00       	mov    $0x113,%eax
    5d32:	e9 93 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

read    {
	display_token_info("READ", yytext, yylineno);
    5d37:	48 8b 05 a2 c6 00 00 	mov    0xc6a2(%rip),%rax        # 123e0 <yytext>
    5d3e:	48 8d 15 bb c4 00 00 	lea    0xc4bb(%rip),%rdx        # 12200 <yylineno>
    5d45:	48 89 c6             	mov    %rax,%rsi
    5d48:	48 8d 05 1b 69 00 00 	lea    0x691b(%rip),%rax        # c66a <_ZL6yy_chk+0x18a>
    5d4f:	48 89 c7             	mov    %rax,%rdi
    5d52:	e8 36 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::READ;
    5d57:	b8 0a 01 00 00       	mov    $0x10a,%eax
    5d5c:	e9 69 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

print   {
	display_token_info("WRITE", yytext, yylineno);
    5d61:	48 8b 05 78 c6 00 00 	mov    0xc678(%rip),%rax        # 123e0 <yytext>
    5d68:	48 8d 15 91 c4 00 00 	lea    0xc491(%rip),%rdx        # 12200 <yylineno>
    5d6f:	48 89 c6             	mov    %rax,%rsi
    5d72:	48 8d 05 f6 68 00 00 	lea    0x68f6(%rip),%rax        # c66f <_ZL6yy_chk+0x18f>
    5d79:	48 89 c7             	mov    %rax,%rdi
    5d7c:	e8 0c 1e 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::WRITE;
    5d81:	b8 09 01 00 00       	mov    $0x109,%eax
    5d86:	e9 3f 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

=       {
	display_token_info("ASSIGN_OP", yytext, yylineno);
    5d8b:	48 8b 05 4e c6 00 00 	mov    0xc64e(%rip),%rax        # 123e0 <yytext>
    5d92:	48 8d 15 67 c4 00 00 	lea    0xc467(%rip),%rdx        # 12200 <yylineno>
    5d99:	48 89 c6             	mov    %rax,%rsi
    5d9c:	48 8d 05 d2 68 00 00 	lea    0x68d2(%rip),%rax        # c675 <_ZL6yy_chk+0x195>
    5da3:	48 89 c7             	mov    %rax,%rdi
    5da6:	e8 e2 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::ASSIGN;
    5dab:	b8 08 01 00 00       	mov    $0x108,%eax
    5db0:	e9 15 04 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

("."[0-9]+)|([0-9]+"."[0-9]*) {
	display_token_info("FLOAT_NUM", yytext, yylineno);
    5db5:	48 8b 05 24 c6 00 00 	mov    0xc624(%rip),%rax        # 123e0 <yytext>
    5dbc:	48 8d 15 3d c4 00 00 	lea    0xc43d(%rip),%rdx        # 12200 <yylineno>
    5dc3:	48 89 c6             	mov    %rax,%rsi
    5dc6:	48 8d 05 b2 68 00 00 	lea    0x68b2(%rip),%rax        # c67f <_ZL6yy_chk+0x19f>
    5dcd:	48 89 c7             	mov    %rax,%rdi
    5dd0:	e8 b8 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::DOUBLE_NUMBER;
    5dd5:	b8 0c 01 00 00       	mov    $0x10c,%eax
    5dda:	e9 eb 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

\"[^\"]*\" {
	display_token_info("STR_CONST", yytext, yylineno);
    5ddf:	48 8b 05 fa c5 00 00 	mov    0xc5fa(%rip),%rax        # 123e0 <yytext>
    5de6:	48 8d 15 13 c4 00 00 	lea    0xc413(%rip),%rdx        # 12200 <yylineno>
    5ded:	48 89 c6             	mov    %rax,%rsi
    5df0:	48 8d 05 92 68 00 00 	lea    0x6892(%rip),%rax        # c689 <_ZL6yy_chk+0x1a9>
    5df7:	48 89 c7             	mov    %rax,%rdi
    5dfa:	e8 8e 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::STRING_CONSTANT;
    5dff:	b8 0d 01 00 00       	mov    $0x10d,%eax
    5e04:	e9 c1 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

[0-9]+   {
	display_token_info("INT_NUM", yytext, yylineno);
    5e09:	48 8b 05 d0 c5 00 00 	mov    0xc5d0(%rip),%rax        # 123e0 <yytext>
    5e10:	48 8d 15 e9 c3 00 00 	lea    0xc3e9(%rip),%rdx        # 12200 <yylineno>
    5e17:	48 89 c6             	mov    %rax,%rsi
    5e1a:	48 8d 05 72 68 00 00 	lea    0x6872(%rip),%rax        # c693 <_ZL6yy_chk+0x1b3>
    5e21:	48 89 c7             	mov    %rax,%rdi
    5e24:	e8 64 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::INTEGER_NUMBER;
    5e29:	b8 0b 01 00 00       	mov    $0x10b,%eax
    5e2e:	e9 97 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"+"        {
	display_token_info("PLUS", yytext, yylineno);
    5e33:	48 8b 05 a6 c5 00 00 	mov    0xc5a6(%rip),%rax        # 123e0 <yytext>
    5e3a:	48 8d 15 bf c3 00 00 	lea    0xc3bf(%rip),%rdx        # 12200 <yylineno>
    5e41:	48 89 c6             	mov    %rax,%rsi
    5e44:	48 8d 05 50 68 00 00 	lea    0x6850(%rip),%rax        # c69b <_ZL6yy_chk+0x1bb>
    5e4b:	48 89 c7             	mov    %rax,%rdi
    5e4e:	e8 3a 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::PLUS;
    5e53:	b8 14 01 00 00       	mov    $0x114,%eax
    5e58:	e9 6d 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"-"        {
	display_token_info("MINUS", yytext, yylineno);
    5e5d:	48 8b 05 7c c5 00 00 	mov    0xc57c(%rip),%rax        # 123e0 <yytext>
    5e64:	48 8d 15 95 c3 00 00 	lea    0xc395(%rip),%rdx        # 12200 <yylineno>
    5e6b:	48 89 c6             	mov    %rax,%rsi
    5e6e:	48 8d 05 2b 68 00 00 	lea    0x682b(%rip),%rax        # c6a0 <_ZL6yy_chk+0x1c0>
    5e75:	48 89 c7             	mov    %rax,%rdi
    5e78:	e8 10 1d 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::MINUS;
    5e7d:	b8 15 01 00 00       	mov    $0x115,%eax
    5e82:	e9 43 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

"*"        {
	display_token_info("MULT", yytext, yylineno);
    5e87:	48 8b 05 52 c5 00 00 	mov    0xc552(%rip),%rax        # 123e0 <yytext>
    5e8e:	48 8d 15 6b c3 00 00 	lea    0xc36b(%rip),%rdx        # 12200 <yylineno>
    5e95:	48 89 c6             	mov    %rax,%rsi
    5e98:	48 8d 05 07 68 00 00 	lea    0x6807(%rip),%rax        # c6a6 <_ZL6yy_chk+0x1c6>
    5e9f:	48 89 c7             	mov    %rax,%rdi
    5ea2:	e8 e6 1c 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::MULT;
    5ea7:	b8 16 01 00 00       	mov    $0x116,%eax
    5eac:	e9 19 03 00 00       	jmp    61ca <_Z5yylexPi+0x938>
"//".* {

}

"/"        {
	display_token_info("DIV", yytext, yylineno);
    5eb1:	48 8b 05 28 c5 00 00 	mov    0xc528(%rip),%rax        # 123e0 <yytext>
    5eb8:	48 8d 15 41 c3 00 00 	lea    0xc341(%rip),%rdx        # 12200 <yylineno>
    5ebf:	48 89 c6             	mov    %rax,%rsi
    5ec2:	48 8d 05 e2 67 00 00 	lea    0x67e2(%rip),%rax        # c6ab <_ZL6yy_chk+0x1cb>
    5ec9:	48 89 c7             	mov    %rax,%rdi
    5ecc:	e8 bc 1c 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::DIV;
    5ed1:	b8 17 01 00 00       	mov    $0x117,%eax
    5ed6:	e9 ef 02 00 00       	jmp    61ca <_Z5yylexPi+0x938>
}

[A-Za-z_][A-Za-z0-9_]* {
	display_token_info("NAME", yytext, yylineno);
    5edb:	48 8b 05 fe c4 00 00 	mov    0xc4fe(%rip),%rax        # 123e0 <yytext>
    5ee2:	48 8d 15 17 c3 00 00 	lea    0xc317(%rip),%rdx        # 12200 <yylineno>
    5ee9:	48 89 c6             	mov    %rax,%rsi
    5eec:	48 8d 05 bc 67 00 00 	lea    0x67bc(%rip),%rax        # c6af <_ZL6yy_chk+0x1cf>
    5ef3:	48 89 c7             	mov    %rax,%rdi
    5ef6:	e8 92 1c 00 00       	call   7b8d <_Z18display_token_infoPKcS0_RKi>
	return yy::parser::token::token_kind_type::NAME;
    5efb:	b8 02 01 00 00       	mov    $0x102,%eax
    5f00:	e9 c5 02 00 00       	jmp    61ca <_Z5yylexPi+0x938>
[ \t]	{

}

\n		{
	yylineno++;
    5f05:	8b 05 f5 c2 00 00    	mov    0xc2f5(%rip),%eax        # 12200 <yylineno>
    5f0b:	83 c0 01             	add    $0x1,%eax
    5f0e:	89 05 ec c2 00 00    	mov    %eax,0xc2ec(%rip)        # 12200 <yylineno>
}

    5f14:	e9 ac 02 00 00       	jmp    61c5 <_Z5yylexPi+0x933>
.       {
	fprintf(stderr, "Illegal character: '%s'\n", yytext);
    5f19:	48 8b 15 c0 c4 00 00 	mov    0xc4c0(%rip),%rdx        # 123e0 <yytext>
    5f20:	48 8b 05 59 c3 00 00 	mov    0xc359(%rip),%rax        # 12280 <stderr@GLIBC_2.2.5>
    5f27:	48 8d 0d 86 67 00 00 	lea    0x6786(%rip),%rcx        # c6b4 <_ZL6yy_chk+0x1d4>
    5f2e:	48 89 ce             	mov    %rcx,%rsi
    5f31:	48 89 c7             	mov    %rax,%rdi
    5f34:	b8 00 00 00 00       	mov    $0x0,%eax
    5f39:	e8 e2 e2 ff ff       	call   4220 <fprintf@plt>
	yyerror();
    5f3e:	e8 e5 f8 ff ff       	call   5828 <_Z7yyerrorv>
}

    5f43:	e9 7d 02 00 00       	jmp    61c5 <_Z5yylexPi+0x933>
%%
    5f48:	48 8b 15 81 c4 00 00 	mov    0xc481(%rip),%rdx        # 123d0 <yyout>
    5f4f:	8b 05 6b c4 00 00    	mov    0xc46b(%rip),%eax        # 123c0 <yyleng>
    5f55:	48 63 f0             	movslq %eax,%rsi
    5f58:	48 8b 05 81 c4 00 00 	mov    0xc481(%rip),%rax        # 123e0 <yytext>
    5f5f:	48 89 d1             	mov    %rdx,%rcx
    5f62:	ba 01 00 00 00       	mov    $0x1,%edx
    5f67:	48 89 c7             	mov    %rax,%rdi
    5f6a:	e8 b1 e3 ff ff       	call   4320 <fwrite@plt>
    5f6f:	48 85 c0             	test   %rax,%rax
    5f72:	e9 4e 02 00 00       	jmp    61c5 <_Z5yylexPi+0x933>
#line 180 "lexer.l"
ECHO;
	YY_BREAK
#line 1023 "lex.yy.c"
case YY_STATE_EOF(INITIAL):
	yyterminate();
    5f77:	b8 00 00 00 00       	mov    $0x0,%eax
    5f7c:	e9 49 02 00 00       	jmp    61ca <_Z5yylexPi+0x938>

	case YY_END_OF_BUFFER:
		{
		/* Amount of text matched not including the EOB char. */
		int yy_amount_of_matched_text = (int) (yy_cp - (yytext_ptr)) - 1;
    5f81:	48 8b 05 58 c4 00 00 	mov    0xc458(%rip),%rax        # 123e0 <yytext>
    5f88:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5f8c:	48 29 c2             	sub    %rax,%rdx
    5f8f:	89 d0                	mov    %edx,%eax
    5f91:	83 e8 01             	sub    $0x1,%eax
    5f94:	89 45 cc             	mov    %eax,-0x34(%rbp)

		/* Undo the effects of YY_DO_BEFORE_ACTION. */
		*yy_cp = (yy_hold_char);
    5f97:	0f b6 15 aa c4 00 00 	movzbl 0xc4aa(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    5f9e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5fa2:	88 10                	mov    %dl,(%rax)
		YY_RESTORE_YY_MORE_OFFSET

		if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_NEW )
    5fa4:	48 8b 05 95 c4 00 00 	mov    0xc495(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    5fab:	48 8b 15 7e c4 00 00 	mov    0xc47e(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    5fb2:	48 c1 e2 03          	shl    $0x3,%rdx
    5fb6:	48 01 d0             	add    %rdx,%rax
    5fb9:	48 8b 00             	mov    (%rax),%rax
    5fbc:	8b 40 38             	mov    0x38(%rax),%eax
    5fbf:	85 c0                	test   %eax,%eax
    5fc1:	75 62                	jne    6025 <_Z5yylexPi+0x793>
			 * consistency between YY_CURRENT_BUFFER and our
			 * globals.  Here is the right place to do so, because
			 * this is the first action (other than possibly a
			 * back-up) that will match for the new input source.
			 */
			(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
    5fc3:	48 8b 05 76 c4 00 00 	mov    0xc476(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    5fca:	48 8b 15 5f c4 00 00 	mov    0xc45f(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    5fd1:	48 c1 e2 03          	shl    $0x3,%rdx
    5fd5:	48 01 d0             	add    %rdx,%rax
    5fd8:	48 8b 00             	mov    (%rax),%rax
    5fdb:	8b 40 1c             	mov    0x1c(%rax),%eax
    5fde:	89 05 68 c4 00 00    	mov    %eax,0xc468(%rip)        # 1244c <_ZL10yy_n_chars>
			YY_CURRENT_BUFFER_LVALUE->yy_input_file = yyin;
    5fe4:	48 8b 05 55 c4 00 00 	mov    0xc455(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    5feb:	48 8b 15 3e c4 00 00 	mov    0xc43e(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    5ff2:	48 c1 e2 03          	shl    $0x3,%rdx
    5ff6:	48 01 d0             	add    %rdx,%rax
    5ff9:	48 8b 00             	mov    (%rax),%rax
    5ffc:	48 8b 15 c5 c3 00 00 	mov    0xc3c5(%rip),%rdx        # 123c8 <yyin>
    6003:	48 89 10             	mov    %rdx,(%rax)
			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status = YY_BUFFER_NORMAL;
    6006:	48 8b 05 33 c4 00 00 	mov    0xc433(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    600d:	48 8b 15 1c c4 00 00 	mov    0xc41c(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6014:	48 c1 e2 03          	shl    $0x3,%rdx
    6018:	48 01 d0             	add    %rdx,%rax
    601b:	48 8b 00             	mov    (%rax),%rax
    601e:	c7 40 38 01 00 00 00 	movl   $0x1,0x38(%rax)
		 * already have been incremented past the NUL character
		 * (since all states make transitions on EOB to the
		 * end-of-buffer state).  Contrast this with the test
		 * in input().
		 */
		if ( (yy_c_buf_p) <= &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
    6025:	48 8b 05 14 c4 00 00 	mov    0xc414(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    602c:	48 8b 15 fd c3 00 00 	mov    0xc3fd(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6033:	48 c1 e2 03          	shl    $0x3,%rdx
    6037:	48 01 d0             	add    %rdx,%rax
    603a:	48 8b 00             	mov    (%rax),%rax
    603d:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6041:	8b 05 05 c4 00 00    	mov    0xc405(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    6047:	48 98                	cltq
    6049:	48 01 c2             	add    %rax,%rdx
    604c:	48 8b 05 fd c3 00 00 	mov    0xc3fd(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6053:	48 39 c2             	cmp    %rax,%rdx
    6056:	72 74                	jb     60cc <_Z5yylexPi+0x83a>
			{ /* This was really a NUL. */
			yy_state_type yy_next_state;

			(yy_c_buf_p) = (yytext_ptr) + yy_amount_of_matched_text;
    6058:	48 8b 15 81 c3 00 00 	mov    0xc381(%rip),%rdx        # 123e0 <yytext>
    605f:	8b 45 cc             	mov    -0x34(%rbp),%eax
    6062:	48 98                	cltq
    6064:	48 01 d0             	add    %rdx,%rax
    6067:	48 89 05 e2 c3 00 00 	mov    %rax,0xc3e2(%rip)        # 12450 <_ZL10yy_c_buf_p>

			yy_current_state = yy_get_previous_state(  );
    606e:	e8 e1 07 00 00       	call   6854 <_ZL21yy_get_previous_statev>
    6073:	89 45 ec             	mov    %eax,-0x14(%rbp)
			 * with the possibility of jamming (and we don't
			 * want to build jamming into it because then it
			 * will run more slowly).
			 */

			yy_next_state = yy_try_NUL_trans( yy_current_state );
    6076:	8b 45 ec             	mov    -0x14(%rbp),%eax
    6079:	89 c7                	mov    %eax,%edi
    607b:	e8 ff 08 00 00       	call   697f <_ZL16yy_try_NUL_transi>
    6080:	89 45 c8             	mov    %eax,-0x38(%rbp)

			yy_bp = (yytext_ptr) + YY_MORE_ADJ;
    6083:	48 8b 05 56 c3 00 00 	mov    0xc356(%rip),%rax        # 123e0 <yytext>
    608a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)

			if ( yy_next_state )
    608e:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    6092:	74 28                	je     60bc <_Z5yylexPi+0x82a>
				{
				/* Consume the NUL. */
				yy_cp = ++(yy_c_buf_p);
    6094:	48 8b 05 b5 c3 00 00 	mov    0xc3b5(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    609b:	48 83 c0 01          	add    $0x1,%rax
    609f:	48 89 05 aa c3 00 00 	mov    %rax,0xc3aa(%rip)        # 12450 <_ZL10yy_c_buf_p>
    60a6:	48 8b 05 a3 c3 00 00 	mov    0xc3a3(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    60ad:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
				yy_current_state = yy_next_state;
    60b1:	8b 45 c8             	mov    -0x38(%rbp),%eax
    60b4:	89 45 ec             	mov    %eax,-0x14(%rbp)
				goto yy_match;
    60b7:	e9 d3 f8 ff ff       	jmp    598f <_Z5yylexPi+0xfd>
				}

			else
				{
				yy_cp = (yy_c_buf_p);
    60bc:	48 8b 05 8d c3 00 00 	mov    0xc38d(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    60c3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
				goto yy_find_action;
    60c7:	e9 c8 f9 ff ff       	jmp    5a94 <_Z5yylexPi+0x202>
				}
			}

		else switch ( yy_get_next_buffer(  ) )
    60cc:	e8 ff 00 00 00       	call   61d0 <_ZL18yy_get_next_bufferv>
    60d1:	83 f8 02             	cmp    $0x2,%eax
    60d4:	0f 84 84 00 00 00    	je     615e <_Z5yylexPi+0x8cc>
    60da:	83 f8 02             	cmp    $0x2,%eax
    60dd:	0f 8f e1 00 00 00    	jg     61c4 <_Z5yylexPi+0x932>
    60e3:	85 c0                	test   %eax,%eax
    60e5:	74 3e                	je     6125 <_Z5yylexPi+0x893>
    60e7:	83 f8 01             	cmp    $0x1,%eax
    60ea:	0f 85 d4 00 00 00    	jne    61c4 <_Z5yylexPi+0x932>
			{
			case EOB_ACT_END_OF_FILE:
				{
				(yy_did_buffer_switch_on_eof) = 0;
    60f0:	c7 05 66 c3 00 00 00 	movl   $0x0,0xc366(%rip)        # 12460 <_ZL27yy_did_buffer_switch_on_eof>
    60f7:	00 00 00 
					 * hoser (like flex itself) wants to
					 * call the scanner after we return the
					 * YY_NULL, it'll still work - another
					 * YY_NULL will get returned.
					 */
					(yy_c_buf_p) = (yytext_ptr) + YY_MORE_ADJ;
    60fa:	48 8b 05 df c2 00 00 	mov    0xc2df(%rip),%rax        # 123e0 <yytext>
    6101:	48 89 05 48 c3 00 00 	mov    %rax,0xc348(%rip)        # 12450 <_ZL10yy_c_buf_p>

					yy_act = YY_STATE_EOF(YY_START);
    6108:	8b 05 4e c3 00 00    	mov    0xc34e(%rip),%eax        # 1245c <_ZL8yy_start>
    610e:	83 e8 01             	sub    $0x1,%eax
    6111:	89 c2                	mov    %eax,%edx
    6113:	c1 ea 1f             	shr    $0x1f,%edx
    6116:	01 d0                	add    %edx,%eax
    6118:	d1 f8                	sar    %eax
    611a:	83 c0 1d             	add    $0x1d,%eax
    611d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
					goto do_action;
    6120:	e9 f1 f9 ff ff       	jmp    5b16 <_Z5yylexPi+0x284>
				break;
				}

			case EOB_ACT_CONTINUE_SCAN:
				(yy_c_buf_p) =
					(yytext_ptr) + yy_amount_of_matched_text;
    6125:	48 8b 15 b4 c2 00 00 	mov    0xc2b4(%rip),%rdx        # 123e0 <yytext>
    612c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    612f:	48 98                	cltq
    6131:	48 01 d0             	add    %rdx,%rax
				(yy_c_buf_p) =
    6134:	48 89 05 15 c3 00 00 	mov    %rax,0xc315(%rip)        # 12450 <_ZL10yy_c_buf_p>

				yy_current_state = yy_get_previous_state(  );
    613b:	e8 14 07 00 00       	call   6854 <_ZL21yy_get_previous_statev>
    6140:	89 45 ec             	mov    %eax,-0x14(%rbp)

				yy_cp = (yy_c_buf_p);
    6143:	48 8b 05 06 c3 00 00 	mov    0xc306(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    614a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
    614e:	48 8b 05 8b c2 00 00 	mov    0xc28b(%rip),%rax        # 123e0 <yytext>
    6155:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
				goto yy_match;
    6159:	e9 31 f8 ff ff       	jmp    598f <_Z5yylexPi+0xfd>

			case EOB_ACT_LAST_MATCH:
				(yy_c_buf_p) =
				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)];
    615e:	48 8b 05 db c2 00 00 	mov    0xc2db(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6165:	48 8b 15 c4 c2 00 00 	mov    0xc2c4(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    616c:	48 c1 e2 03          	shl    $0x3,%rdx
    6170:	48 01 d0             	add    %rdx,%rax
    6173:	48 8b 00             	mov    (%rax),%rax
    6176:	48 8b 50 08          	mov    0x8(%rax),%rdx
    617a:	8b 05 cc c2 00 00    	mov    0xc2cc(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    6180:	48 98                	cltq
    6182:	48 01 d0             	add    %rdx,%rax
				(yy_c_buf_p) =
    6185:	48 89 05 c4 c2 00 00 	mov    %rax,0xc2c4(%rip)        # 12450 <_ZL10yy_c_buf_p>

				yy_current_state = yy_get_previous_state(  );
    618c:	e8 c3 06 00 00       	call   6854 <_ZL21yy_get_previous_statev>
    6191:	89 45 ec             	mov    %eax,-0x14(%rbp)

				yy_cp = (yy_c_buf_p);
    6194:	48 8b 05 b5 c2 00 00 	mov    0xc2b5(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    619b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
    619f:	48 8b 05 3a c2 00 00 	mov    0xc23a(%rip),%rax        # 123e0 <yytext>
    61a6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
				goto yy_find_action;
    61aa:	e9 e5 f8 ff ff       	jmp    5a94 <_Z5yylexPi+0x202>
			}
		break;
		}

	default:
		YY_FATAL_ERROR(
    61af:	48 8d 05 1a 65 00 00 	lea    0x651a(%rip),%rax        # c6d0 <_ZL6yy_chk+0x1f0>
    61b6:	48 89 c7             	mov    %rax,%rdi
    61b9:	e8 93 15 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

    61be:	90                   	nop
    61bf:	e9 a2 f7 ff ff       	jmp    5966 <_Z5yylexPi+0xd4>
		break;
    61c4:	90                   	nop
			"fatal flex scanner internal error--no action found" );
	} /* end of action switch */
		} /* end of scanning one token */
    61c5:	e9 9c f7 ff ff       	jmp    5966 <_Z5yylexPi+0xd4>
	} /* end of user's declarations */
} /* end of yylex */
    61ca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    61ce:	c9                   	leave
    61cf:	c3                   	ret

00000000000061d0 <_ZL18yy_get_next_bufferv>:
 *	EOB_ACT_LAST_MATCH -
 *	EOB_ACT_CONTINUE_SCAN - continue scanning from current position
 *	EOB_ACT_END_OF_FILE - end of file
 */
static int yy_get_next_buffer (void)
{
    61d0:	55                   	push   %rbp
    61d1:	48 89 e5             	mov    %rsp,%rbp
    61d4:	53                   	push   %rbx
    61d5:	48 83 ec 48          	sub    $0x48,%rsp
    	char *dest = YY_CURRENT_BUFFER_LVALUE->yy_ch_buf;
    61d9:	48 8b 05 60 c2 00 00 	mov    0xc260(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    61e0:	48 8b 15 49 c2 00 00 	mov    0xc249(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    61e7:	48 c1 e2 03          	shl    $0x3,%rdx
    61eb:	48 01 d0             	add    %rdx,%rax
    61ee:	48 8b 00             	mov    (%rax),%rax
    61f1:	48 8b 40 08          	mov    0x8(%rax),%rax
    61f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	char *source = (yytext_ptr);
    61f9:	48 8b 05 e0 c1 00 00 	mov    0xc1e0(%rip),%rax        # 123e0 <yytext>
    6200:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	int number_to_move, i;
	int ret_val;

	if ( (yy_c_buf_p) > &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] )
    6204:	48 8b 05 35 c2 00 00 	mov    0xc235(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    620b:	48 8b 15 1e c2 00 00 	mov    0xc21e(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6212:	48 c1 e2 03          	shl    $0x3,%rdx
    6216:	48 01 d0             	add    %rdx,%rax
    6219:	48 8b 00             	mov    (%rax),%rax
    621c:	48 8b 40 08          	mov    0x8(%rax),%rax
    6220:	8b 15 26 c2 00 00    	mov    0xc226(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6226:	48 63 d2             	movslq %edx,%rdx
    6229:	48 83 c2 01          	add    $0x1,%rdx
    622d:	48 01 c2             	add    %rax,%rdx
    6230:	48 8b 05 19 c2 00 00 	mov    0xc219(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6237:	48 39 c2             	cmp    %rax,%rdx
    623a:	73 0f                	jae    624b <_ZL18yy_get_next_bufferv+0x7b>
		YY_FATAL_ERROR(
    623c:	48 8d 05 3d 65 00 00 	lea    0x653d(%rip),%rax        # c780 <_ZL6yy_chk+0x2a0>
    6243:	48 89 c7             	mov    %rax,%rdi
    6246:	e8 06 15 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
		"fatal flex scanner internal error--end of buffer missed" );

	if ( YY_CURRENT_BUFFER_LVALUE->yy_fill_buffer == 0 )
    624b:	48 8b 05 ee c1 00 00 	mov    0xc1ee(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6252:	48 8b 15 d7 c1 00 00 	mov    0xc1d7(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6259:	48 c1 e2 03          	shl    $0x3,%rdx
    625d:	48 01 d0             	add    %rdx,%rax
    6260:	48 8b 00             	mov    (%rax),%rax
    6263:	8b 40 34             	mov    0x34(%rax),%eax
    6266:	85 c0                	test   %eax,%eax
    6268:	75 2b                	jne    6295 <_ZL18yy_get_next_bufferv+0xc5>
		{ /* Don't try to fill the buffer, so this is an EOF. */
		if ( (yy_c_buf_p) - (yytext_ptr) - YY_MORE_ADJ == 1 )
    626a:	48 8b 15 df c1 00 00 	mov    0xc1df(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    6271:	48 8b 05 68 c1 00 00 	mov    0xc168(%rip),%rax        # 123e0 <yytext>
    6278:	48 29 c2             	sub    %rax,%rdx
    627b:	48 83 fa 01          	cmp    $0x1,%rdx
    627f:	75 0a                	jne    628b <_ZL18yy_get_next_bufferv+0xbb>
			{
			/* We matched a single character, the EOB, so
			 * treat this as a final EOF.
			 */
			return EOB_ACT_END_OF_FILE;
    6281:	b8 01 00 00 00       	mov    $0x1,%eax
    6286:	e9 c3 05 00 00       	jmp    684e <_ZL18yy_get_next_bufferv+0x67e>
		else
			{
			/* We matched some text prior to the EOB, first
			 * process it.
			 */
			return EOB_ACT_LAST_MATCH;
    628b:	b8 02 00 00 00       	mov    $0x2,%eax
    6290:	e9 b9 05 00 00       	jmp    684e <_ZL18yy_get_next_bufferv+0x67e>
		}

	/* Try to read more data. */

	/* First move last chars to start of buffer. */
	number_to_move = (int) ((yy_c_buf_p) - (yytext_ptr) - 1);
    6295:	48 8b 15 b4 c1 00 00 	mov    0xc1b4(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    629c:	48 8b 05 3d c1 00 00 	mov    0xc13d(%rip),%rax        # 123e0 <yytext>
    62a3:	48 29 c2             	sub    %rax,%rdx
    62a6:	89 d0                	mov    %edx,%eax
    62a8:	83 e8 01             	sub    $0x1,%eax
    62ab:	89 45 c8             	mov    %eax,-0x38(%rbp)

	for ( i = 0; i < number_to_move; ++i )
    62ae:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    62b5:	eb 21                	jmp    62d8 <_ZL18yy_get_next_bufferv+0x108>
		*(dest++) = *(source++);
    62b7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    62bb:	48 8d 50 01          	lea    0x1(%rax),%rdx
    62bf:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    62c3:	0f b6 10             	movzbl (%rax),%edx
    62c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62ca:	48 8d 48 01          	lea    0x1(%rax),%rcx
    62ce:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    62d2:	88 10                	mov    %dl,(%rax)
	for ( i = 0; i < number_to_move; ++i )
    62d4:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    62d8:	8b 45 dc             	mov    -0x24(%rbp),%eax
    62db:	3b 45 c8             	cmp    -0x38(%rbp),%eax
    62de:	7c d7                	jl     62b7 <_ZL18yy_get_next_bufferv+0xe7>

	if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_EOF_PENDING )
    62e0:	48 8b 05 59 c1 00 00 	mov    0xc159(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    62e7:	48 8b 15 42 c1 00 00 	mov    0xc142(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    62ee:	48 c1 e2 03          	shl    $0x3,%rdx
    62f2:	48 01 d0             	add    %rdx,%rax
    62f5:	48 8b 00             	mov    (%rax),%rax
    62f8:	8b 40 38             	mov    0x38(%rax),%eax
    62fb:	83 f8 02             	cmp    $0x2,%eax
    62fe:	75 30                	jne    6330 <_ZL18yy_get_next_bufferv+0x160>
		/* don't do the read, it's not guaranteed to return an EOF,
		 * just force an EOF
		 */
		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars) = 0;
    6300:	c7 05 42 c1 00 00 00 	movl   $0x0,0xc142(%rip)        # 1244c <_ZL10yy_n_chars>
    6307:	00 00 00 
    630a:	48 8b 05 2f c1 00 00 	mov    0xc12f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6311:	48 8b 15 18 c1 00 00 	mov    0xc118(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6318:	48 c1 e2 03          	shl    $0x3,%rdx
    631c:	48 01 d0             	add    %rdx,%rax
    631f:	48 8b 00             	mov    (%rax),%rax
    6322:	8b 15 24 c1 00 00    	mov    0xc124(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6328:	89 50 1c             	mov    %edx,0x1c(%rax)
    632b:	e9 56 03 00 00       	jmp    6686 <_ZL18yy_get_next_bufferv+0x4b6>

	else
		{
			int num_to_read =
			YY_CURRENT_BUFFER_LVALUE->yy_buf_size - number_to_move - 1;
    6330:	48 8b 05 09 c1 00 00 	mov    0xc109(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6337:	48 8b 15 f2 c0 00 00 	mov    0xc0f2(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    633e:	48 c1 e2 03          	shl    $0x3,%rdx
    6342:	48 01 d0             	add    %rdx,%rax
    6345:	48 8b 00             	mov    (%rax),%rax
    6348:	8b 40 18             	mov    0x18(%rax),%eax
    634b:	2b 45 c8             	sub    -0x38(%rbp),%eax
			int num_to_read =
    634e:	83 e8 01             	sub    $0x1,%eax
    6351:	89 45 d4             	mov    %eax,-0x2c(%rbp)

		while ( num_to_read <= 0 )
    6354:	e9 10 01 00 00       	jmp    6469 <_ZL18yy_get_next_bufferv+0x299>
			{ /* Not enough room in the buffer - grow it. */

			/* just a shorter name for the current buffer */
			YY_BUFFER_STATE b = YY_CURRENT_BUFFER_LVALUE;
    6359:	48 8b 05 e0 c0 00 00 	mov    0xc0e0(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6360:	48 8b 15 c9 c0 00 00 	mov    0xc0c9(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6367:	48 c1 e2 03          	shl    $0x3,%rdx
    636b:	48 01 d0             	add    %rdx,%rax
    636e:	48 8b 00             	mov    (%rax),%rax
    6371:	48 89 45 c0          	mov    %rax,-0x40(%rbp)

			int yy_c_buf_p_offset =
				(int) ((yy_c_buf_p) - b->yy_ch_buf);
    6375:	48 8b 15 d4 c0 00 00 	mov    0xc0d4(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    637c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6380:	48 8b 40 08          	mov    0x8(%rax),%rax
    6384:	48 29 c2             	sub    %rax,%rdx
			int yy_c_buf_p_offset =
    6387:	89 55 bc             	mov    %edx,-0x44(%rbp)

			if ( b->yy_is_our_buffer )
    638a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    638e:	8b 40 20             	mov    0x20(%rax),%eax
    6391:	85 c0                	test   %eax,%eax
    6393:	74 71                	je     6406 <_ZL18yy_get_next_bufferv+0x236>
				{
				int new_size = b->yy_buf_size * 2;
    6395:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6399:	8b 40 18             	mov    0x18(%rax),%eax
    639c:	01 c0                	add    %eax,%eax
    639e:	89 45 b8             	mov    %eax,-0x48(%rbp)

				if ( new_size <= 0 )
    63a1:	83 7d b8 00          	cmpl   $0x0,-0x48(%rbp)
    63a5:	7f 24                	jg     63cb <_ZL18yy_get_next_bufferv+0x1fb>
					b->yy_buf_size += b->yy_buf_size / 8;
    63a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63ab:	8b 50 18             	mov    0x18(%rax),%edx
    63ae:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63b2:	8b 40 18             	mov    0x18(%rax),%eax
    63b5:	8d 48 07             	lea    0x7(%rax),%ecx
    63b8:	85 c0                	test   %eax,%eax
    63ba:	0f 48 c1             	cmovs  %ecx,%eax
    63bd:	c1 f8 03             	sar    $0x3,%eax
    63c0:	01 c2                	add    %eax,%edx
    63c2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63c6:	89 50 18             	mov    %edx,0x18(%rax)
    63c9:	eb 11                	jmp    63dc <_ZL18yy_get_next_bufferv+0x20c>
				else
					b->yy_buf_size *= 2;
    63cb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63cf:	8b 40 18             	mov    0x18(%rax),%eax
    63d2:	8d 14 00             	lea    (%rax,%rax,1),%edx
    63d5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63d9:	89 50 18             	mov    %edx,0x18(%rax)

				b->yy_ch_buf = (char *)
					/* Include room in for 2 EOB chars. */
					yyrealloc( (void *) b->yy_ch_buf,
							 (yy_size_t) (b->yy_buf_size + 2)  );
    63dc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63e0:	8b 40 18             	mov    0x18(%rax),%eax
    63e3:	83 c0 02             	add    $0x2,%eax
					yyrealloc( (void *) b->yy_ch_buf,
    63e6:	48 63 d0             	movslq %eax,%rdx
    63e9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    63ed:	48 8b 40 08          	mov    0x8(%rax),%rax
    63f1:	48 89 d6             	mov    %rdx,%rsi
    63f4:	48 89 c7             	mov    %rax,%rdi
    63f7:	e8 59 15 00 00       	call   7955 <_Z9yyreallocPvm>
				b->yy_ch_buf = (char *)
    63fc:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6400:	48 89 42 08          	mov    %rax,0x8(%rdx)
    6404:	eb 0c                	jmp    6412 <_ZL18yy_get_next_bufferv+0x242>
				}
			else
				/* Can't grow it, we don't own it. */
				b->yy_ch_buf = NULL;
    6406:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    640a:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    6411:	00 

			if ( ! b->yy_ch_buf )
    6412:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6416:	48 8b 40 08          	mov    0x8(%rax),%rax
    641a:	48 85 c0             	test   %rax,%rax
    641d:	75 0f                	jne    642e <_ZL18yy_get_next_bufferv+0x25e>
				YY_FATAL_ERROR(
    641f:	48 8d 05 92 63 00 00 	lea    0x6392(%rip),%rax        # c7b8 <_ZL6yy_chk+0x2d8>
    6426:	48 89 c7             	mov    %rax,%rdi
    6429:	e8 23 13 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
				"fatal error - scanner input buffer overflow" );

			(yy_c_buf_p) = &b->yy_ch_buf[yy_c_buf_p_offset];
    642e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6432:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6436:	8b 45 bc             	mov    -0x44(%rbp),%eax
    6439:	48 98                	cltq
    643b:	48 01 d0             	add    %rdx,%rax
    643e:	48 89 05 0b c0 00 00 	mov    %rax,0xc00b(%rip)        # 12450 <_ZL10yy_c_buf_p>

			num_to_read = YY_CURRENT_BUFFER_LVALUE->yy_buf_size -
    6445:	48 8b 05 f4 bf 00 00 	mov    0xbff4(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    644c:	48 8b 15 dd bf 00 00 	mov    0xbfdd(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6453:	48 c1 e2 03          	shl    $0x3,%rdx
    6457:	48 01 d0             	add    %rdx,%rax
    645a:	48 8b 00             	mov    (%rax),%rax
    645d:	8b 40 18             	mov    0x18(%rax),%eax
    6460:	2b 45 c8             	sub    -0x38(%rbp),%eax
    6463:	83 e8 01             	sub    $0x1,%eax
    6466:	89 45 d4             	mov    %eax,-0x2c(%rbp)
		while ( num_to_read <= 0 )
    6469:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    646d:	0f 8e e6 fe ff ff    	jle    6359 <_ZL18yy_get_next_bufferv+0x189>
						number_to_move - 1;

			}

		if ( num_to_read > YY_READ_BUF_SIZE )
    6473:	81 7d d4 00 20 00 00 	cmpl   $0x2000,-0x2c(%rbp)
    647a:	7e 07                	jle    6483 <_ZL18yy_get_next_bufferv+0x2b3>
			num_to_read = YY_READ_BUF_SIZE;
    647c:	c7 45 d4 00 20 00 00 	movl   $0x2000,-0x2c(%rbp)

		/* Read in more data. */
		YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
    6483:	48 8b 05 b6 bf 00 00 	mov    0xbfb6(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    648a:	48 8b 15 9f bf 00 00 	mov    0xbf9f(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6491:	48 c1 e2 03          	shl    $0x3,%rdx
    6495:	48 01 d0             	add    %rdx,%rax
    6498:	48 8b 00             	mov    (%rax),%rax
    649b:	8b 40 24             	mov    0x24(%rax),%eax
    649e:	85 c0                	test   %eax,%eax
    64a0:	0f 84 04 01 00 00    	je     65aa <_ZL18yy_get_next_bufferv+0x3da>
    64a6:	c7 45 d0 2a 00 00 00 	movl   $0x2a,-0x30(%rbp)
    64ad:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    64b4:	eb 37                	jmp    64ed <_ZL18yy_get_next_bufferv+0x31d>
    64b6:	48 8b 05 83 bf 00 00 	mov    0xbf83(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    64bd:	48 8b 15 6c bf 00 00 	mov    0xbf6c(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    64c4:	48 c1 e2 03          	shl    $0x3,%rdx
    64c8:	48 01 d0             	add    %rdx,%rax
    64cb:	48 8b 00             	mov    (%rax),%rax
    64ce:	48 8b 40 08          	mov    0x8(%rax),%rax
    64d2:	8b 55 c8             	mov    -0x38(%rbp),%edx
    64d5:	48 63 ca             	movslq %edx,%rcx
    64d8:	8b 55 cc             	mov    -0x34(%rbp),%edx
    64db:	48 63 d2             	movslq %edx,%rdx
    64de:	48 01 ca             	add    %rcx,%rdx
    64e1:	48 01 d0             	add    %rdx,%rax
    64e4:	8b 55 d0             	mov    -0x30(%rbp),%edx
    64e7:	88 10                	mov    %dl,(%rax)
    64e9:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    64ed:	8b 45 cc             	mov    -0x34(%rbp),%eax
    64f0:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    64f3:	7d 25                	jge    651a <_ZL18yy_get_next_bufferv+0x34a>
    64f5:	48 8b 05 cc be 00 00 	mov    0xbecc(%rip),%rax        # 123c8 <yyin>
    64fc:	48 89 c7             	mov    %rax,%rdi
    64ff:	e8 6c db ff ff       	call   4070 <getc@plt>
    6504:	89 45 d0             	mov    %eax,-0x30(%rbp)
    6507:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%rbp)
    650b:	74 0d                	je     651a <_ZL18yy_get_next_bufferv+0x34a>
    650d:	83 7d d0 0a          	cmpl   $0xa,-0x30(%rbp)
    6511:	74 07                	je     651a <_ZL18yy_get_next_bufferv+0x34a>
    6513:	b8 01 00 00 00       	mov    $0x1,%eax
    6518:	eb 05                	jmp    651f <_ZL18yy_get_next_bufferv+0x34f>
    651a:	b8 00 00 00 00       	mov    $0x0,%eax
    651f:	84 c0                	test   %al,%al
    6521:	75 93                	jne    64b6 <_ZL18yy_get_next_bufferv+0x2e6>
    6523:	83 7d d0 0a          	cmpl   $0xa,-0x30(%rbp)
    6527:	75 3b                	jne    6564 <_ZL18yy_get_next_bufferv+0x394>
    6529:	8b 45 d0             	mov    -0x30(%rbp),%eax
    652c:	89 c6                	mov    %eax,%esi
    652e:	48 8b 05 0b bf 00 00 	mov    0xbf0b(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6535:	48 8b 15 f4 be 00 00 	mov    0xbef4(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    653c:	48 c1 e2 03          	shl    $0x3,%rdx
    6540:	48 01 d0             	add    %rdx,%rax
    6543:	48 8b 00             	mov    (%rax),%rax
    6546:	48 8b 50 08          	mov    0x8(%rax),%rdx
    654a:	8b 45 c8             	mov    -0x38(%rbp),%eax
    654d:	48 98                	cltq
    654f:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    6553:	8b 45 cc             	mov    -0x34(%rbp),%eax
    6556:	8d 50 01             	lea    0x1(%rax),%edx
    6559:	89 55 cc             	mov    %edx,-0x34(%rbp)
    655c:	48 98                	cltq
    655e:	48 01 c8             	add    %rcx,%rax
    6561:	40 88 30             	mov    %sil,(%rax)
    6564:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%rbp)
    6568:	75 1a                	jne    6584 <_ZL18yy_get_next_bufferv+0x3b4>
    656a:	48 8b 05 57 be 00 00 	mov    0xbe57(%rip),%rax        # 123c8 <yyin>
    6571:	48 89 c7             	mov    %rax,%rdi
    6574:	e8 87 dd ff ff       	call   4300 <ferror@plt>
    6579:	85 c0                	test   %eax,%eax
    657b:	74 07                	je     6584 <_ZL18yy_get_next_bufferv+0x3b4>
    657d:	b8 01 00 00 00       	mov    $0x1,%eax
    6582:	eb 05                	jmp    6589 <_ZL18yy_get_next_bufferv+0x3b9>
    6584:	b8 00 00 00 00       	mov    $0x0,%eax
    6589:	84 c0                	test   %al,%al
    658b:	74 0f                	je     659c <_ZL18yy_get_next_bufferv+0x3cc>
    658d:	48 8d 05 50 62 00 00 	lea    0x6250(%rip),%rax        # c7e4 <_ZL6yy_chk+0x304>
    6594:	48 89 c7             	mov    %rax,%rdi
    6597:	e8 b5 11 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
    659c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    659f:	89 05 a7 be 00 00    	mov    %eax,0xbea7(%rip)        # 1244c <_ZL10yy_n_chars>
    65a5:	e9 bb 00 00 00       	jmp    6665 <_ZL18yy_get_next_bufferv+0x495>
    65aa:	e8 91 da ff ff       	call   4040 <__errno_location@plt>
    65af:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    65b5:	eb 35                	jmp    65ec <_ZL18yy_get_next_bufferv+0x41c>
    65b7:	e8 84 da ff ff       	call   4040 <__errno_location@plt>
    65bc:	8b 00                	mov    (%rax),%eax
    65be:	83 f8 04             	cmp    $0x4,%eax
    65c1:	74 0f                	je     65d2 <_ZL18yy_get_next_bufferv+0x402>
    65c3:	48 8d 05 1a 62 00 00 	lea    0x621a(%rip),%rax        # c7e4 <_ZL6yy_chk+0x304>
    65ca:	48 89 c7             	mov    %rax,%rdi
    65cd:	e8 7f 11 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
    65d2:	e8 69 da ff ff       	call   4040 <__errno_location@plt>
    65d7:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    65dd:	48 8b 05 e4 bd 00 00 	mov    0xbde4(%rip),%rax        # 123c8 <yyin>
    65e4:	48 89 c7             	mov    %rax,%rdi
    65e7:	e8 74 da ff ff       	call   4060 <clearerr@plt>
    65ec:	48 8b 15 d5 bd 00 00 	mov    0xbdd5(%rip),%rdx        # 123c8 <yyin>
    65f3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    65f6:	48 98                	cltq
    65f8:	48 8b 0d 41 be 00 00 	mov    0xbe41(%rip),%rcx        # 12440 <_ZL15yy_buffer_stack>
    65ff:	48 8b 35 2a be 00 00 	mov    0xbe2a(%rip),%rsi        # 12430 <_ZL19yy_buffer_stack_top>
    6606:	48 c1 e6 03          	shl    $0x3,%rsi
    660a:	48 01 f1             	add    %rsi,%rcx
    660d:	48 8b 09             	mov    (%rcx),%rcx
    6610:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    6614:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    6617:	48 63 c9             	movslq %ecx,%rcx
    661a:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    661e:	48 89 d1             	mov    %rdx,%rcx
    6621:	48 89 c2             	mov    %rax,%rdx
    6624:	be 01 00 00 00       	mov    $0x1,%esi
    6629:	e8 22 dc ff ff       	call   4250 <fread@plt>
    662e:	89 05 18 be 00 00    	mov    %eax,0xbe18(%rip)        # 1244c <_ZL10yy_n_chars>
    6634:	8b 05 12 be 00 00    	mov    0xbe12(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    663a:	85 c0                	test   %eax,%eax
    663c:	75 1a                	jne    6658 <_ZL18yy_get_next_bufferv+0x488>
    663e:	48 8b 05 83 bd 00 00 	mov    0xbd83(%rip),%rax        # 123c8 <yyin>
    6645:	48 89 c7             	mov    %rax,%rdi
    6648:	e8 b3 dc ff ff       	call   4300 <ferror@plt>
    664d:	85 c0                	test   %eax,%eax
    664f:	74 07                	je     6658 <_ZL18yy_get_next_bufferv+0x488>
    6651:	b8 01 00 00 00       	mov    $0x1,%eax
    6656:	eb 05                	jmp    665d <_ZL18yy_get_next_bufferv+0x48d>
    6658:	b8 00 00 00 00       	mov    $0x0,%eax
    665d:	84 c0                	test   %al,%al
    665f:	0f 85 52 ff ff ff    	jne    65b7 <_ZL18yy_get_next_bufferv+0x3e7>
			(yy_n_chars), num_to_read );

		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
    6665:	48 8b 05 d4 bd 00 00 	mov    0xbdd4(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    666c:	48 8b 15 bd bd 00 00 	mov    0xbdbd(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6673:	48 c1 e2 03          	shl    $0x3,%rdx
    6677:	48 01 d0             	add    %rdx,%rax
    667a:	48 8b 00             	mov    (%rax),%rax
    667d:	8b 15 c9 bd 00 00    	mov    0xbdc9(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6683:	89 50 1c             	mov    %edx,0x1c(%rax)
		}

	if ( (yy_n_chars) == 0 )
    6686:	8b 05 c0 bd 00 00    	mov    0xbdc0(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    668c:	85 c0                	test   %eax,%eax
    668e:	75 46                	jne    66d6 <_ZL18yy_get_next_bufferv+0x506>
		{
		if ( number_to_move == YY_MORE_ADJ )
    6690:	83 7d c8 00          	cmpl   $0x0,-0x38(%rbp)
    6694:	75 18                	jne    66ae <_ZL18yy_get_next_bufferv+0x4de>
			{
			ret_val = EOB_ACT_END_OF_FILE;
    6696:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
			yyrestart( yyin  );
    669d:	48 8b 05 24 bd 00 00 	mov    0xbd24(%rip),%rax        # 123c8 <yyin>
    66a4:	48 89 c7             	mov    %rax,%rdi
    66a7:	e8 b3 06 00 00       	call   6d5f <_Z9yyrestartP8_IO_FILE>
    66ac:	eb 2f                	jmp    66dd <_ZL18yy_get_next_bufferv+0x50d>
			}

		else
			{
			ret_val = EOB_ACT_LAST_MATCH;
    66ae:	c7 45 d8 02 00 00 00 	movl   $0x2,-0x28(%rbp)
			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status =
    66b5:	48 8b 05 84 bd 00 00 	mov    0xbd84(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    66bc:	48 8b 15 6d bd 00 00 	mov    0xbd6d(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    66c3:	48 c1 e2 03          	shl    $0x3,%rdx
    66c7:	48 01 d0             	add    %rdx,%rax
    66ca:	48 8b 00             	mov    (%rax),%rax
    66cd:	c7 40 38 02 00 00 00 	movl   $0x2,0x38(%rax)
    66d4:	eb 07                	jmp    66dd <_ZL18yy_get_next_bufferv+0x50d>
				YY_BUFFER_EOF_PENDING;
			}
		}

	else
		ret_val = EOB_ACT_CONTINUE_SCAN;
    66d6:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)

	if (((yy_n_chars) + number_to_move) > YY_CURRENT_BUFFER_LVALUE->yy_buf_size) {
    66dd:	8b 15 69 bd 00 00    	mov    0xbd69(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    66e3:	8b 45 c8             	mov    -0x38(%rbp),%eax
    66e6:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    66e9:	48 8b 05 50 bd 00 00 	mov    0xbd50(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    66f0:	48 8b 15 39 bd 00 00 	mov    0xbd39(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    66f7:	48 c1 e2 03          	shl    $0x3,%rdx
    66fb:	48 01 d0             	add    %rdx,%rax
    66fe:	48 8b 00             	mov    (%rax),%rax
    6701:	8b 40 18             	mov    0x18(%rax),%eax
    6704:	39 c1                	cmp    %eax,%ecx
    6706:	0f 8e b2 00 00 00    	jle    67be <_ZL18yy_get_next_bufferv+0x5ee>
		/* Extend the array by 50%, plus the number we really need. */
		int new_size = (yy_n_chars) + number_to_move + ((yy_n_chars) >> 1);
    670c:	8b 15 3a bd 00 00    	mov    0xbd3a(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6712:	8b 45 c8             	mov    -0x38(%rbp),%eax
    6715:	01 c2                	add    %eax,%edx
    6717:	8b 05 2f bd 00 00    	mov    0xbd2f(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    671d:	d1 f8                	sar    %eax
    671f:	01 d0                	add    %edx,%eax
    6721:	89 45 b4             	mov    %eax,-0x4c(%rbp)
		YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) yyrealloc(
    6724:	8b 45 b4             	mov    -0x4c(%rbp),%eax
    6727:	48 63 d0             	movslq %eax,%rdx
			(void *) YY_CURRENT_BUFFER_LVALUE->yy_ch_buf, (yy_size_t) new_size  );
    672a:	48 8b 05 0f bd 00 00 	mov    0xbd0f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6731:	48 8b 0d f8 bc 00 00 	mov    0xbcf8(%rip),%rcx        # 12430 <_ZL19yy_buffer_stack_top>
    6738:	48 c1 e1 03          	shl    $0x3,%rcx
    673c:	48 01 c8             	add    %rcx,%rax
    673f:	48 8b 00             	mov    (%rax),%rax
    6742:	48 8b 40 08          	mov    0x8(%rax),%rax
		YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) yyrealloc(
    6746:	48 8b 0d f3 bc 00 00 	mov    0xbcf3(%rip),%rcx        # 12440 <_ZL15yy_buffer_stack>
    674d:	48 8b 35 dc bc 00 00 	mov    0xbcdc(%rip),%rsi        # 12430 <_ZL19yy_buffer_stack_top>
    6754:	48 c1 e6 03          	shl    $0x3,%rsi
    6758:	48 01 f1             	add    %rsi,%rcx
    675b:	48 8b 19             	mov    (%rcx),%rbx
    675e:	48 89 d6             	mov    %rdx,%rsi
    6761:	48 89 c7             	mov    %rax,%rdi
    6764:	e8 ec 11 00 00       	call   7955 <_Z9yyreallocPvm>
    6769:	48 89 43 08          	mov    %rax,0x8(%rbx)
		if ( ! YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
    676d:	48 8b 05 cc bc 00 00 	mov    0xbccc(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6774:	48 8b 15 b5 bc 00 00 	mov    0xbcb5(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    677b:	48 c1 e2 03          	shl    $0x3,%rdx
    677f:	48 01 d0             	add    %rdx,%rax
    6782:	48 8b 00             	mov    (%rax),%rax
    6785:	48 8b 40 08          	mov    0x8(%rax),%rax
    6789:	48 85 c0             	test   %rax,%rax
    678c:	75 0f                	jne    679d <_ZL18yy_get_next_bufferv+0x5cd>
			YY_FATAL_ERROR( "out of dynamic memory in yy_get_next_buffer()" );
    678e:	48 8d 05 73 60 00 00 	lea    0x6073(%rip),%rax        # c808 <_ZL6yy_chk+0x328>
    6795:	48 89 c7             	mov    %rax,%rdi
    6798:	e8 b4 0f 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
		/* "- 2" to take care of EOB's */
		YY_CURRENT_BUFFER_LVALUE->yy_buf_size = (int) (new_size - 2);
    679d:	48 8b 05 9c bc 00 00 	mov    0xbc9c(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    67a4:	48 8b 15 85 bc 00 00 	mov    0xbc85(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    67ab:	48 c1 e2 03          	shl    $0x3,%rdx
    67af:	48 01 d0             	add    %rdx,%rax
    67b2:	48 8b 00             	mov    (%rax),%rax
    67b5:	8b 55 b4             	mov    -0x4c(%rbp),%edx
    67b8:	83 ea 02             	sub    $0x2,%edx
    67bb:	89 50 18             	mov    %edx,0x18(%rax)
	}

	(yy_n_chars) += number_to_move;
    67be:	8b 15 88 bc 00 00    	mov    0xbc88(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    67c4:	8b 45 c8             	mov    -0x38(%rbp),%eax
    67c7:	01 d0                	add    %edx,%eax
    67c9:	89 05 7d bc 00 00    	mov    %eax,0xbc7d(%rip)        # 1244c <_ZL10yy_n_chars>
	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] = YY_END_OF_BUFFER_CHAR;
    67cf:	48 8b 05 6a bc 00 00 	mov    0xbc6a(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    67d6:	48 8b 15 53 bc 00 00 	mov    0xbc53(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    67dd:	48 c1 e2 03          	shl    $0x3,%rdx
    67e1:	48 01 d0             	add    %rdx,%rax
    67e4:	48 8b 00             	mov    (%rax),%rax
    67e7:	48 8b 50 08          	mov    0x8(%rax),%rdx
    67eb:	8b 05 5b bc 00 00    	mov    0xbc5b(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    67f1:	48 98                	cltq
    67f3:	48 01 d0             	add    %rdx,%rax
    67f6:	c6 00 00             	movb   $0x0,(%rax)
	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] = YY_END_OF_BUFFER_CHAR;
    67f9:	48 8b 05 40 bc 00 00 	mov    0xbc40(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6800:	48 8b 15 29 bc 00 00 	mov    0xbc29(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6807:	48 c1 e2 03          	shl    $0x3,%rdx
    680b:	48 01 d0             	add    %rdx,%rax
    680e:	48 8b 00             	mov    (%rax),%rax
    6811:	48 8b 40 08          	mov    0x8(%rax),%rax
    6815:	8b 15 31 bc 00 00    	mov    0xbc31(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    681b:	48 63 d2             	movslq %edx,%rdx
    681e:	48 83 c2 01          	add    $0x1,%rdx
    6822:	48 01 d0             	add    %rdx,%rax
    6825:	c6 00 00             	movb   $0x0,(%rax)

	(yytext_ptr) = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[0];
    6828:	48 8b 05 11 bc 00 00 	mov    0xbc11(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    682f:	48 8b 15 fa bb 00 00 	mov    0xbbfa(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6836:	48 c1 e2 03          	shl    $0x3,%rdx
    683a:	48 01 d0             	add    %rdx,%rax
    683d:	48 8b 00             	mov    (%rax),%rax
    6840:	48 8b 40 08          	mov    0x8(%rax),%rax
    6844:	48 89 05 95 bb 00 00 	mov    %rax,0xbb95(%rip)        # 123e0 <yytext>

	return ret_val;
    684b:	8b 45 d8             	mov    -0x28(%rbp),%eax
}
    684e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    6852:	c9                   	leave
    6853:	c3                   	ret

0000000000006854 <_ZL21yy_get_previous_statev>:

/* yy_get_previous_state - get the state just before the EOB char was reached */

    static yy_state_type yy_get_previous_state (void)
{
    6854:	55                   	push   %rbp
    6855:	48 89 e5             	mov    %rsp,%rbp
	yy_state_type yy_current_state;
	char *yy_cp;
    
	yy_current_state = (yy_start);
    6858:	8b 05 fe bb 00 00    	mov    0xbbfe(%rip),%eax        # 1245c <_ZL8yy_start>
    685e:	89 45 fc             	mov    %eax,-0x4(%rbp)

	for ( yy_cp = (yytext_ptr) + YY_MORE_ADJ; yy_cp < (yy_c_buf_p); ++yy_cp )
    6861:	48 8b 05 78 bb 00 00 	mov    0xbb78(%rip),%rax        # 123e0 <yytext>
    6868:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    686c:	e9 f8 00 00 00       	jmp    6969 <_ZL21yy_get_previous_statev+0x115>
		{
		YY_CHAR yy_c = (*yy_cp ? yy_ec[YY_SC_TO_UI(*yy_cp)] : 1);
    6871:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6875:	0f b6 00             	movzbl (%rax),%eax
    6878:	84 c0                	test   %al,%al
    687a:	74 19                	je     6895 <_ZL21yy_get_previous_statev+0x41>
    687c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6880:	0f b6 00             	movzbl (%rax),%eax
    6883:	0f b6 c0             	movzbl %al,%eax
    6886:	48 98                	cltq
    6888:	48 8d 15 f1 58 00 00 	lea    0x58f1(%rip),%rdx        # c180 <_ZL5yy_ec>
    688f:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    6893:	eb 05                	jmp    689a <_ZL21yy_get_previous_statev+0x46>
    6895:	b8 01 00 00 00       	mov    $0x1,%eax
    689a:	88 45 ef             	mov    %al,-0x11(%rbp)
		if ( yy_accept[yy_current_state] )
    689d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    68a0:	48 98                	cltq
    68a2:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    68a6:	48 8d 05 53 58 00 00 	lea    0x5853(%rip),%rax        # c100 <_ZL9yy_accept>
    68ad:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    68b1:	66 85 c0             	test   %ax,%ax
    68b4:	74 48                	je     68fe <_ZL21yy_get_previous_statev+0xaa>
			{
			(yy_last_accepting_state) = yy_current_state;
    68b6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    68b9:	89 05 a5 bb 00 00    	mov    %eax,0xbba5(%rip)        # 12464 <_ZL23yy_last_accepting_state>
			(yy_last_accepting_cpos) = yy_cp;
    68bf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    68c3:	48 89 05 9e bb 00 00 	mov    %rax,0xbb9e(%rip)        # 12468 <_ZL22yy_last_accepting_cpos>
			}
		while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    68ca:	eb 32                	jmp    68fe <_ZL21yy_get_previous_statev+0xaa>
			{
			yy_current_state = (int) yy_def[yy_current_state];
    68cc:	8b 45 fc             	mov    -0x4(%rbp),%eax
    68cf:	48 98                	cltq
    68d1:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    68d5:	48 8d 05 84 5a 00 00 	lea    0x5a84(%rip),%rax        # c360 <_ZL6yy_def>
    68dc:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    68e0:	98                   	cwtl
    68e1:	89 45 fc             	mov    %eax,-0x4(%rbp)
			if ( yy_current_state >= 63 )
    68e4:	83 7d fc 3e          	cmpl   $0x3e,-0x4(%rbp)
    68e8:	7e 14                	jle    68fe <_ZL21yy_get_previous_statev+0xaa>
				yy_c = yy_meta[yy_c];
    68ea:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    68ee:	48 98                	cltq
    68f0:	48 8d 15 89 59 00 00 	lea    0x5989(%rip),%rdx        # c280 <_ZL7yy_meta>
    68f7:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    68fb:	88 45 ef             	mov    %al,-0x11(%rbp)
		while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    68fe:	8b 45 fc             	mov    -0x4(%rbp),%eax
    6901:	48 98                	cltq
    6903:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6907:	48 8d 05 b2 59 00 00 	lea    0x59b2(%rip),%rax        # c2c0 <_ZL7yy_base>
    690e:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6912:	0f bf d0             	movswl %ax,%edx
    6915:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    6919:	01 d0                	add    %edx,%eax
    691b:	48 98                	cltq
    691d:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6921:	48 8d 05 b8 5b 00 00 	lea    0x5bb8(%rip),%rax        # c4e0 <_ZL6yy_chk>
    6928:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    692c:	98                   	cwtl
    692d:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    6930:	75 9a                	jne    68cc <_ZL21yy_get_previous_statev+0x78>
			}
		yy_current_state = yy_nxt[yy_base[yy_current_state] + yy_c];
    6932:	8b 45 fc             	mov    -0x4(%rbp),%eax
    6935:	48 98                	cltq
    6937:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    693b:	48 8d 05 7e 59 00 00 	lea    0x597e(%rip),%rax        # c2c0 <_ZL7yy_base>
    6942:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6946:	0f bf d0             	movswl %ax,%edx
    6949:	0f b6 45 ef          	movzbl -0x11(%rbp),%eax
    694d:	01 d0                	add    %edx,%eax
    694f:	48 98                	cltq
    6951:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6955:	48 8d 05 a4 5a 00 00 	lea    0x5aa4(%rip),%rax        # c400 <_ZL6yy_nxt>
    695c:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6960:	98                   	cwtl
    6961:	89 45 fc             	mov    %eax,-0x4(%rbp)
	for ( yy_cp = (yytext_ptr) + YY_MORE_ADJ; yy_cp < (yy_c_buf_p); ++yy_cp )
    6964:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    6969:	48 8b 05 e0 ba 00 00 	mov    0xbae0(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6970:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
    6974:	0f 82 f7 fe ff ff    	jb     6871 <_ZL21yy_get_previous_statev+0x1d>
		}

	return yy_current_state;
    697a:	8b 45 fc             	mov    -0x4(%rbp),%eax
}
    697d:	5d                   	pop    %rbp
    697e:	c3                   	ret

000000000000697f <_ZL16yy_try_NUL_transi>:
 *
 * synopsis
 *	next_state = yy_try_NUL_trans( current_state );
 */
    static yy_state_type yy_try_NUL_trans  (yy_state_type yy_current_state )
{
    697f:	55                   	push   %rbp
    6980:	48 89 e5             	mov    %rsp,%rbp
    6983:	89 7d dc             	mov    %edi,-0x24(%rbp)
	int yy_is_jam;
    	char *yy_cp = (yy_c_buf_p);
    6986:	48 8b 05 c3 ba 00 00 	mov    0xbac3(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    698d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)

	YY_CHAR yy_c = 1;
    6991:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	if ( yy_accept[yy_current_state] )
    6995:	8b 45 dc             	mov    -0x24(%rbp),%eax
    6998:	48 98                	cltq
    699a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    699e:	48 8d 05 5b 57 00 00 	lea    0x575b(%rip),%rax        # c100 <_ZL9yy_accept>
    69a5:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    69a9:	66 85 c0             	test   %ax,%ax
    69ac:	74 48                	je     69f6 <_ZL16yy_try_NUL_transi+0x77>
		{
		(yy_last_accepting_state) = yy_current_state;
    69ae:	8b 45 dc             	mov    -0x24(%rbp),%eax
    69b1:	89 05 ad ba 00 00    	mov    %eax,0xbaad(%rip)        # 12464 <_ZL23yy_last_accepting_state>
		(yy_last_accepting_cpos) = yy_cp;
    69b7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    69bb:	48 89 05 a6 ba 00 00 	mov    %rax,0xbaa6(%rip)        # 12468 <_ZL22yy_last_accepting_cpos>
		}
	while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    69c2:	eb 32                	jmp    69f6 <_ZL16yy_try_NUL_transi+0x77>
		{
		yy_current_state = (int) yy_def[yy_current_state];
    69c4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    69c7:	48 98                	cltq
    69c9:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    69cd:	48 8d 05 8c 59 00 00 	lea    0x598c(%rip),%rax        # c360 <_ZL6yy_def>
    69d4:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    69d8:	98                   	cwtl
    69d9:	89 45 dc             	mov    %eax,-0x24(%rbp)
		if ( yy_current_state >= 63 )
    69dc:	83 7d dc 3e          	cmpl   $0x3e,-0x24(%rbp)
    69e0:	7e 14                	jle    69f6 <_ZL16yy_try_NUL_transi+0x77>
			yy_c = yy_meta[yy_c];
    69e2:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    69e6:	48 98                	cltq
    69e8:	48 8d 15 91 58 00 00 	lea    0x5891(%rip),%rdx        # c280 <_ZL7yy_meta>
    69ef:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    69f3:	88 45 ff             	mov    %al,-0x1(%rbp)
	while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
    69f6:	8b 45 dc             	mov    -0x24(%rbp),%eax
    69f9:	48 98                	cltq
    69fb:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    69ff:	48 8d 05 ba 58 00 00 	lea    0x58ba(%rip),%rax        # c2c0 <_ZL7yy_base>
    6a06:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6a0a:	0f bf d0             	movswl %ax,%edx
    6a0d:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    6a11:	01 d0                	add    %edx,%eax
    6a13:	48 98                	cltq
    6a15:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6a19:	48 8d 05 c0 5a 00 00 	lea    0x5ac0(%rip),%rax        # c4e0 <_ZL6yy_chk>
    6a20:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6a24:	98                   	cwtl
    6a25:	39 45 dc             	cmp    %eax,-0x24(%rbp)
    6a28:	75 9a                	jne    69c4 <_ZL16yy_try_NUL_transi+0x45>
		}
	yy_current_state = yy_nxt[yy_base[yy_current_state] + yy_c];
    6a2a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    6a2d:	48 98                	cltq
    6a2f:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6a33:	48 8d 05 86 58 00 00 	lea    0x5886(%rip),%rax        # c2c0 <_ZL7yy_base>
    6a3a:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6a3e:	0f bf d0             	movswl %ax,%edx
    6a41:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
    6a45:	01 d0                	add    %edx,%eax
    6a47:	48 98                	cltq
    6a49:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    6a4d:	48 8d 05 ac 59 00 00 	lea    0x59ac(%rip),%rax        # c400 <_ZL6yy_nxt>
    6a54:	0f b7 04 02          	movzwl (%rdx,%rax,1),%eax
    6a58:	98                   	cwtl
    6a59:	89 45 dc             	mov    %eax,-0x24(%rbp)
	yy_is_jam = (yy_current_state == 62);
    6a5c:	83 7d dc 3e          	cmpl   $0x3e,-0x24(%rbp)
    6a60:	0f 94 c0             	sete   %al
    6a63:	0f b6 c0             	movzbl %al,%eax
    6a66:	89 45 ec             	mov    %eax,-0x14(%rbp)

		return yy_is_jam ? 0 : yy_current_state;
    6a69:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    6a6d:	75 05                	jne    6a74 <_ZL16yy_try_NUL_transi+0xf5>
    6a6f:	8b 45 dc             	mov    -0x24(%rbp),%eax
    6a72:	eb 05                	jmp    6a79 <_ZL16yy_try_NUL_transi+0xfa>
    6a74:	b8 00 00 00 00       	mov    $0x0,%eax
}
    6a79:	5d                   	pop    %rbp
    6a7a:	c3                   	ret

0000000000006a7b <_ZL7yyunputiPc>:

#ifndef YY_NO_UNPUT

    static void yyunput (int c, char * yy_bp )
{
    6a7b:	55                   	push   %rbp
    6a7c:	48 89 e5             	mov    %rsp,%rbp
    6a7f:	48 83 ec 30          	sub    $0x30,%rsp
    6a83:	89 7d dc             	mov    %edi,-0x24(%rbp)
    6a86:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
	char *yy_cp;
    
    yy_cp = (yy_c_buf_p);
    6a8a:	48 8b 05 bf b9 00 00 	mov    0xb9bf(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6a91:	48 89 45 f8          	mov    %rax,-0x8(%rbp)

	/* undo effects of setting up yytext */
	*yy_cp = (yy_hold_char);
    6a95:	0f b6 15 ac b9 00 00 	movzbl 0xb9ac(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    6a9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6aa0:	88 10                	mov    %dl,(%rax)

	if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
    6aa2:	48 8b 05 97 b9 00 00 	mov    0xb997(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6aa9:	48 8b 15 80 b9 00 00 	mov    0xb980(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6ab0:	48 c1 e2 03          	shl    $0x3,%rdx
    6ab4:	48 01 d0             	add    %rdx,%rax
    6ab7:	48 8b 00             	mov    (%rax),%rax
    6aba:	48 8b 40 08          	mov    0x8(%rax),%rax
    6abe:	48 83 c0 02          	add    $0x2,%rax
    6ac2:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    6ac6:	0f 83 46 01 00 00    	jae    6c12 <_ZL7yyunputiPc+0x197>
		{ /* need to shift things up to make room */
		/* +2 for EOB chars. */
		int number_to_move = (yy_n_chars) + 2;
    6acc:	8b 05 7a b9 00 00    	mov    0xb97a(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    6ad2:	83 c0 02             	add    $0x2,%eax
    6ad5:	89 45 e4             	mov    %eax,-0x1c(%rbp)
		char *dest = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[
    6ad8:	48 8b 05 61 b9 00 00 	mov    0xb961(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6adf:	48 8b 15 4a b9 00 00 	mov    0xb94a(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6ae6:	48 c1 e2 03          	shl    $0x3,%rdx
    6aea:	48 01 d0             	add    %rdx,%rax
    6aed:	48 8b 00             	mov    (%rax),%rax
    6af0:	48 8b 50 08          	mov    0x8(%rax),%rdx
					YY_CURRENT_BUFFER_LVALUE->yy_buf_size + 2];
    6af4:	48 8b 05 45 b9 00 00 	mov    0xb945(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6afb:	48 8b 0d 2e b9 00 00 	mov    0xb92e(%rip),%rcx        # 12430 <_ZL19yy_buffer_stack_top>
    6b02:	48 c1 e1 03          	shl    $0x3,%rcx
    6b06:	48 01 c8             	add    %rcx,%rax
    6b09:	48 8b 00             	mov    (%rax),%rax
    6b0c:	8b 40 18             	mov    0x18(%rax),%eax
    6b0f:	48 98                	cltq
    6b11:	48 83 c0 02          	add    $0x2,%rax
		char *dest = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[
    6b15:	48 01 d0             	add    %rdx,%rax
    6b18:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
		char *source =
				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move];
    6b1c:	48 8b 05 1d b9 00 00 	mov    0xb91d(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6b23:	48 8b 15 06 b9 00 00 	mov    0xb906(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6b2a:	48 c1 e2 03          	shl    $0x3,%rdx
    6b2e:	48 01 d0             	add    %rdx,%rax
    6b31:	48 8b 00             	mov    (%rax),%rax
    6b34:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6b38:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    6b3b:	48 98                	cltq
		char *source =
    6b3d:	48 01 d0             	add    %rdx,%rax
    6b40:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

		while ( source > YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
    6b44:	eb 17                	jmp    6b5d <_ZL7yyunputiPc+0xe2>
			*--dest = *--source;
    6b46:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
    6b4b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6b4f:	0f b6 10             	movzbl (%rax),%edx
    6b52:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
    6b57:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6b5b:	88 10                	mov    %dl,(%rax)
		while ( source > YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
    6b5d:	48 8b 05 dc b8 00 00 	mov    0xb8dc(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6b64:	48 8b 15 c5 b8 00 00 	mov    0xb8c5(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6b6b:	48 c1 e2 03          	shl    $0x3,%rdx
    6b6f:	48 01 d0             	add    %rdx,%rax
    6b72:	48 8b 00             	mov    (%rax),%rax
    6b75:	48 8b 40 08          	mov    0x8(%rax),%rax
    6b79:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    6b7d:	72 c7                	jb     6b46 <_ZL7yyunputiPc+0xcb>

		yy_cp += (int) (dest - source);
    6b7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6b83:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    6b87:	48 98                	cltq
    6b89:	48 01 45 f8          	add    %rax,-0x8(%rbp)
		yy_bp += (int) (dest - source);
    6b8d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6b91:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    6b95:	48 98                	cltq
    6b97:	48 01 45 d0          	add    %rax,-0x30(%rbp)
		YY_CURRENT_BUFFER_LVALUE->yy_n_chars =
			(yy_n_chars) = (int) YY_CURRENT_BUFFER_LVALUE->yy_buf_size;
    6b9b:	48 8b 05 9e b8 00 00 	mov    0xb89e(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6ba2:	48 8b 15 87 b8 00 00 	mov    0xb887(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6ba9:	48 c1 e2 03          	shl    $0x3,%rdx
    6bad:	48 01 d0             	add    %rdx,%rax
    6bb0:	48 8b 00             	mov    (%rax),%rax
    6bb3:	8b 40 18             	mov    0x18(%rax),%eax
    6bb6:	89 05 90 b8 00 00    	mov    %eax,0xb890(%rip)        # 1244c <_ZL10yy_n_chars>
		YY_CURRENT_BUFFER_LVALUE->yy_n_chars =
    6bbc:	48 8b 05 7d b8 00 00 	mov    0xb87d(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6bc3:	48 8b 15 66 b8 00 00 	mov    0xb866(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6bca:	48 c1 e2 03          	shl    $0x3,%rdx
    6bce:	48 01 d0             	add    %rdx,%rax
    6bd1:	48 8b 00             	mov    (%rax),%rax
    6bd4:	8b 15 72 b8 00 00    	mov    0xb872(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6bda:	89 50 1c             	mov    %edx,0x1c(%rax)

		if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
    6bdd:	48 8b 05 5c b8 00 00 	mov    0xb85c(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6be4:	48 8b 15 45 b8 00 00 	mov    0xb845(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6beb:	48 c1 e2 03          	shl    $0x3,%rdx
    6bef:	48 01 d0             	add    %rdx,%rax
    6bf2:	48 8b 00             	mov    (%rax),%rax
    6bf5:	48 8b 40 08          	mov    0x8(%rax),%rax
    6bf9:	48 83 c0 02          	add    $0x2,%rax
    6bfd:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    6c01:	73 0f                	jae    6c12 <_ZL7yyunputiPc+0x197>
			YY_FATAL_ERROR( "flex scanner push-back overflow" );
    6c03:	48 8d 05 2e 5c 00 00 	lea    0x5c2e(%rip),%rax        # c838 <_ZL6yy_chk+0x358>
    6c0a:	48 89 c7             	mov    %rax,%rdi
    6c0d:	e8 3f 0b 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>
		}

	*--yy_cp = (char) c;
    6c12:	8b 45 dc             	mov    -0x24(%rbp),%eax
    6c15:	89 c2                	mov    %eax,%edx
    6c17:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
    6c1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6c20:	88 10                	mov    %dl,(%rax)

	(yytext_ptr) = yy_bp;
    6c22:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c26:	48 89 05 b3 b7 00 00 	mov    %rax,0xb7b3(%rip)        # 123e0 <yytext>
	(yy_hold_char) = *yy_cp;
    6c2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6c31:	0f b6 00             	movzbl (%rax),%eax
    6c34:	88 05 0e b8 00 00    	mov    %al,0xb80e(%rip)        # 12448 <_ZL12yy_hold_char>
	(yy_c_buf_p) = yy_cp;
    6c3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6c3e:	48 89 05 0b b8 00 00 	mov    %rax,0xb80b(%rip)        # 12450 <_ZL10yy_c_buf_p>
}
    6c45:	90                   	nop
    6c46:	c9                   	leave
    6c47:	c3                   	ret

0000000000006c48 <_ZL7yyinputv>:
    static int yyinput (void)
#else
    static int input  (void)
#endif

{
    6c48:	55                   	push   %rbp
    6c49:	48 89 e5             	mov    %rsp,%rbp
    6c4c:	48 83 ec 10          	sub    $0x10,%rsp
	int c;
    
	*(yy_c_buf_p) = (yy_hold_char);
    6c50:	48 8b 05 f9 b7 00 00 	mov    0xb7f9(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6c57:	0f b6 15 ea b7 00 00 	movzbl 0xb7ea(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    6c5e:	88 10                	mov    %dl,(%rax)

	if ( *(yy_c_buf_p) == YY_END_OF_BUFFER_CHAR )
    6c60:	48 8b 05 e9 b7 00 00 	mov    0xb7e9(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6c67:	0f b6 00             	movzbl (%rax),%eax
    6c6a:	84 c0                	test   %al,%al
    6c6c:	0f 85 ac 00 00 00    	jne    6d1e <_ZL7yyinputv+0xd6>
		{
		/* yy_c_buf_p now points to the character we want to return.
		 * If this occurs *before* the EOB characters, then it's a
		 * valid NUL; if not, then we've hit the end of the buffer.
		 */
		if ( (yy_c_buf_p) < &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
    6c72:	48 8b 05 c7 b7 00 00 	mov    0xb7c7(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6c79:	48 8b 15 b0 b7 00 00 	mov    0xb7b0(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6c80:	48 c1 e2 03          	shl    $0x3,%rdx
    6c84:	48 01 d0             	add    %rdx,%rax
    6c87:	48 8b 00             	mov    (%rax),%rax
    6c8a:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6c8e:	8b 05 b8 b7 00 00    	mov    0xb7b8(%rip),%eax        # 1244c <_ZL10yy_n_chars>
    6c94:	48 98                	cltq
    6c96:	48 01 d0             	add    %rdx,%rax
    6c99:	48 8b 15 b0 b7 00 00 	mov    0xb7b0(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    6ca0:	48 39 c2             	cmp    %rax,%rdx
    6ca3:	73 0c                	jae    6cb1 <_ZL7yyinputv+0x69>
			/* This was really a NUL. */
			*(yy_c_buf_p) = '\0';
    6ca5:	48 8b 05 a4 b7 00 00 	mov    0xb7a4(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6cac:	c6 00 00             	movb   $0x0,(%rax)
    6caf:	eb 6d                	jmp    6d1e <_ZL7yyinputv+0xd6>

		else
			{ /* need more input */
			int offset = (int) ((yy_c_buf_p) - (yytext_ptr));
    6cb1:	48 8b 15 98 b7 00 00 	mov    0xb798(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    6cb8:	48 8b 05 21 b7 00 00 	mov    0xb721(%rip),%rax        # 123e0 <yytext>
    6cbf:	48 29 c2             	sub    %rax,%rdx
    6cc2:	89 55 fc             	mov    %edx,-0x4(%rbp)
			++(yy_c_buf_p);
    6cc5:	48 8b 05 84 b7 00 00 	mov    0xb784(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6ccc:	48 83 c0 01          	add    $0x1,%rax
    6cd0:	48 89 05 79 b7 00 00 	mov    %rax,0xb779(%rip)        # 12450 <_ZL10yy_c_buf_p>

			switch ( yy_get_next_buffer(  ) )
    6cd7:	e8 f4 f4 ff ff       	call   61d0 <_ZL18yy_get_next_bufferv>
    6cdc:	83 f8 02             	cmp    $0x2,%eax
    6cdf:	74 10                	je     6cf1 <_ZL7yyinputv+0xa9>
    6ce1:	83 f8 02             	cmp    $0x2,%eax
    6ce4:	7f 38                	jg     6d1e <_ZL7yyinputv+0xd6>
    6ce6:	85 c0                	test   %eax,%eax
    6ce8:	74 1d                	je     6d07 <_ZL7yyinputv+0xbf>
    6cea:	83 f8 01             	cmp    $0x1,%eax
    6ced:	74 11                	je     6d00 <_ZL7yyinputv+0xb8>
    6cef:	eb 2d                	jmp    6d1e <_ZL7yyinputv+0xd6>
					 * So convert the EOB_ACT_LAST_MATCH
					 * to EOB_ACT_END_OF_FILE.
					 */

					/* Reset buffer status. */
					yyrestart( yyin );
    6cf1:	48 8b 05 d0 b6 00 00 	mov    0xb6d0(%rip),%rax        # 123c8 <yyin>
    6cf8:	48 89 c7             	mov    %rax,%rdi
    6cfb:	e8 5f 00 00 00       	call   6d5f <_Z9yyrestartP8_IO_FILE>
					/*FALLTHROUGH*/

				case EOB_ACT_END_OF_FILE:
					{
					if ( yywrap(  ) )
						return 0;
    6d00:	b8 00 00 00 00       	mov    $0x0,%eax
    6d05:	eb 56                	jmp    6d5d <_ZL7yyinputv+0x115>
					return input();
#endif
					}

				case EOB_ACT_CONTINUE_SCAN:
					(yy_c_buf_p) = (yytext_ptr) + offset;
    6d07:	48 8b 15 d2 b6 00 00 	mov    0xb6d2(%rip),%rdx        # 123e0 <yytext>
    6d0e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    6d11:	48 98                	cltq
    6d13:	48 01 d0             	add    %rdx,%rax
    6d16:	48 89 05 33 b7 00 00 	mov    %rax,0xb733(%rip)        # 12450 <_ZL10yy_c_buf_p>
					break;
    6d1d:	90                   	nop
				}
			}
		}

	c = *(unsigned char *) (yy_c_buf_p);	/* cast for 8-bit char's */
    6d1e:	48 8b 05 2b b7 00 00 	mov    0xb72b(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6d25:	0f b6 00             	movzbl (%rax),%eax
    6d28:	0f b6 c0             	movzbl %al,%eax
    6d2b:	89 45 f8             	mov    %eax,-0x8(%rbp)
	*(yy_c_buf_p) = '\0';	/* preserve yytext */
    6d2e:	48 8b 05 1b b7 00 00 	mov    0xb71b(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6d35:	c6 00 00             	movb   $0x0,(%rax)
	(yy_hold_char) = *++(yy_c_buf_p);
    6d38:	48 8b 05 11 b7 00 00 	mov    0xb711(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6d3f:	48 83 c0 01          	add    $0x1,%rax
    6d43:	48 89 05 06 b7 00 00 	mov    %rax,0xb706(%rip)        # 12450 <_ZL10yy_c_buf_p>
    6d4a:	48 8b 05 ff b6 00 00 	mov    0xb6ff(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6d51:	0f b6 00             	movzbl (%rax),%eax
    6d54:	88 05 ee b6 00 00    	mov    %al,0xb6ee(%rip)        # 12448 <_ZL12yy_hold_char>

	return c;
    6d5a:	8b 45 f8             	mov    -0x8(%rbp),%eax
}
    6d5d:	c9                   	leave
    6d5e:	c3                   	ret

0000000000006d5f <_Z9yyrestartP8_IO_FILE>:
 * @param input_file A readable stream.
 * 
 * @note This function does not reset the start condition to @c INITIAL .
 */
    void yyrestart  (FILE * input_file )
{
    6d5f:	55                   	push   %rbp
    6d60:	48 89 e5             	mov    %rsp,%rbp
    6d63:	53                   	push   %rbx
    6d64:	48 83 ec 18          	sub    $0x18,%rsp
    6d68:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    
	if ( ! YY_CURRENT_BUFFER ){
    6d6c:	48 8b 05 cd b6 00 00 	mov    0xb6cd(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6d73:	48 85 c0             	test   %rax,%rax
    6d76:	74 1a                	je     6d92 <_Z9yyrestartP8_IO_FILE+0x33>
    6d78:	48 8b 05 c1 b6 00 00 	mov    0xb6c1(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6d7f:	48 8b 15 aa b6 00 00 	mov    0xb6aa(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6d86:	48 c1 e2 03          	shl    $0x3,%rdx
    6d8a:	48 01 d0             	add    %rdx,%rax
    6d8d:	48 8b 00             	mov    (%rax),%rax
    6d90:	eb 05                	jmp    6d97 <_Z9yyrestartP8_IO_FILE+0x38>
    6d92:	b8 00 00 00 00       	mov    $0x0,%eax
    6d97:	48 85 c0             	test   %rax,%rax
    6d9a:	75 32                	jne    6dce <_Z9yyrestartP8_IO_FILE+0x6f>
        yyensure_buffer_stack ();
    6d9c:	e8 76 06 00 00       	call   7417 <_ZL21yyensure_buffer_stackv>
		YY_CURRENT_BUFFER_LVALUE =
            yy_create_buffer( yyin, YY_BUF_SIZE );
    6da1:	48 8b 05 20 b6 00 00 	mov    0xb620(%rip),%rax        # 123c8 <yyin>
		YY_CURRENT_BUFFER_LVALUE =
    6da8:	48 8b 15 91 b6 00 00 	mov    0xb691(%rip),%rdx        # 12440 <_ZL15yy_buffer_stack>
    6daf:	48 8b 0d 7a b6 00 00 	mov    0xb67a(%rip),%rcx        # 12430 <_ZL19yy_buffer_stack_top>
    6db6:	48 c1 e1 03          	shl    $0x3,%rcx
    6dba:	48 8d 1c 0a          	lea    (%rdx,%rcx,1),%rbx
            yy_create_buffer( yyin, YY_BUF_SIZE );
    6dbe:	be 00 40 00 00       	mov    $0x4000,%esi
    6dc3:	48 89 c7             	mov    %rax,%rdi
    6dc6:	e8 ce 01 00 00       	call   6f99 <_Z16yy_create_bufferP8_IO_FILEi>
		YY_CURRENT_BUFFER_LVALUE =
    6dcb:	48 89 03             	mov    %rax,(%rbx)
	}

	yy_init_buffer( YY_CURRENT_BUFFER, input_file );
    6dce:	48 8b 05 6b b6 00 00 	mov    0xb66b(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6dd5:	48 85 c0             	test   %rax,%rax
    6dd8:	74 1a                	je     6df4 <_Z9yyrestartP8_IO_FILE+0x95>
    6dda:	48 8b 05 5f b6 00 00 	mov    0xb65f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6de1:	48 8b 15 48 b6 00 00 	mov    0xb648(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6de8:	48 c1 e2 03          	shl    $0x3,%rdx
    6dec:	48 01 d0             	add    %rdx,%rax
    6def:	48 8b 00             	mov    (%rax),%rax
    6df2:	eb 05                	jmp    6df9 <_Z9yyrestartP8_IO_FILE+0x9a>
    6df4:	b8 00 00 00 00       	mov    $0x0,%eax
    6df9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6dfd:	48 89 d6             	mov    %rdx,%rsi
    6e00:	48 89 c7             	mov    %rax,%rdi
    6e03:	e8 b6 02 00 00       	call   70be <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>
	yy_load_buffer_state(  );
    6e08:	e8 01 01 00 00       	call   6f0e <_ZL20yy_load_buffer_statev>
}
    6e0d:	90                   	nop
    6e0e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    6e12:	c9                   	leave
    6e13:	c3                   	ret

0000000000006e14 <_Z19yy_switch_to_bufferP15yy_buffer_state>:
/** Switch to a different input buffer.
 * @param new_buffer The new input buffer.
 * 
 */
    void yy_switch_to_buffer  (YY_BUFFER_STATE  new_buffer )
{
    6e14:	55                   	push   %rbp
    6e15:	48 89 e5             	mov    %rsp,%rbp
    6e18:	48 83 ec 10          	sub    $0x10,%rsp
    6e1c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	/* TODO. We should be able to replace this entire function body
	 * with
	 *		yypop_buffer_state();
	 *		yypush_buffer_state(new_buffer);
     */
	yyensure_buffer_stack ();
    6e20:	e8 f2 05 00 00       	call   7417 <_ZL21yyensure_buffer_stackv>
	if ( YY_CURRENT_BUFFER == new_buffer )
    6e25:	48 8b 05 14 b6 00 00 	mov    0xb614(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6e2c:	48 85 c0             	test   %rax,%rax
    6e2f:	74 1a                	je     6e4b <_Z19yy_switch_to_bufferP15yy_buffer_state+0x37>
    6e31:	48 8b 05 08 b6 00 00 	mov    0xb608(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6e38:	48 8b 15 f1 b5 00 00 	mov    0xb5f1(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6e3f:	48 c1 e2 03          	shl    $0x3,%rdx
    6e43:	48 01 d0             	add    %rdx,%rax
    6e46:	48 8b 00             	mov    (%rax),%rax
    6e49:	eb 05                	jmp    6e50 <_Z19yy_switch_to_bufferP15yy_buffer_state+0x3c>
    6e4b:	b8 00 00 00 00       	mov    $0x0,%eax
    6e50:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    6e54:	0f 84 b1 00 00 00    	je     6f0b <_Z19yy_switch_to_bufferP15yy_buffer_state+0xf7>
		return;

	if ( YY_CURRENT_BUFFER )
    6e5a:	48 8b 05 df b5 00 00 	mov    0xb5df(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6e61:	48 85 c0             	test   %rax,%rax
    6e64:	74 1a                	je     6e80 <_Z19yy_switch_to_bufferP15yy_buffer_state+0x6c>
    6e66:	48 8b 05 d3 b5 00 00 	mov    0xb5d3(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6e6d:	48 8b 15 bc b5 00 00 	mov    0xb5bc(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6e74:	48 c1 e2 03          	shl    $0x3,%rdx
    6e78:	48 01 d0             	add    %rdx,%rax
    6e7b:	48 8b 00             	mov    (%rax),%rax
    6e7e:	eb 05                	jmp    6e85 <_Z19yy_switch_to_bufferP15yy_buffer_state+0x71>
    6e80:	b8 00 00 00 00       	mov    $0x0,%eax
    6e85:	48 85 c0             	test   %rax,%rax
    6e88:	74 54                	je     6ede <_Z19yy_switch_to_bufferP15yy_buffer_state+0xca>
		{
		/* Flush out information for old buffer. */
		*(yy_c_buf_p) = (yy_hold_char);
    6e8a:	48 8b 05 bf b5 00 00 	mov    0xb5bf(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6e91:	0f b6 15 b0 b5 00 00 	movzbl 0xb5b0(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    6e98:	88 10                	mov    %dl,(%rax)
		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
    6e9a:	48 8b 05 9f b5 00 00 	mov    0xb59f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6ea1:	48 8b 15 88 b5 00 00 	mov    0xb588(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6ea8:	48 c1 e2 03          	shl    $0x3,%rdx
    6eac:	48 01 d0             	add    %rdx,%rax
    6eaf:	48 8b 00             	mov    (%rax),%rax
    6eb2:	48 8b 15 97 b5 00 00 	mov    0xb597(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    6eb9:	48 89 50 10          	mov    %rdx,0x10(%rax)
		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
    6ebd:	48 8b 05 7c b5 00 00 	mov    0xb57c(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6ec4:	48 8b 15 65 b5 00 00 	mov    0xb565(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6ecb:	48 c1 e2 03          	shl    $0x3,%rdx
    6ecf:	48 01 d0             	add    %rdx,%rax
    6ed2:	48 8b 00             	mov    (%rax),%rax
    6ed5:	8b 15 71 b5 00 00    	mov    0xb571(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    6edb:	89 50 1c             	mov    %edx,0x1c(%rax)
		}

	YY_CURRENT_BUFFER_LVALUE = new_buffer;
    6ede:	48 8b 05 5b b5 00 00 	mov    0xb55b(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6ee5:	48 8b 15 44 b5 00 00 	mov    0xb544(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6eec:	48 c1 e2 03          	shl    $0x3,%rdx
    6ef0:	48 01 c2             	add    %rax,%rdx
    6ef3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6ef7:	48 89 02             	mov    %rax,(%rdx)
	yy_load_buffer_state(  );
    6efa:	e8 0f 00 00 00       	call   6f0e <_ZL20yy_load_buffer_statev>
	/* We don't actually know whether we did this switch during
	 * EOF (yywrap()) processing, but the only time this flag
	 * is looked at is after yywrap() is called, so it's safe
	 * to go ahead and always set it.
	 */
	(yy_did_buffer_switch_on_eof) = 1;
    6eff:	c7 05 57 b5 00 00 01 	movl   $0x1,0xb557(%rip)        # 12460 <_ZL27yy_did_buffer_switch_on_eof>
    6f06:	00 00 00 
    6f09:	eb 01                	jmp    6f0c <_Z19yy_switch_to_bufferP15yy_buffer_state+0xf8>
		return;
    6f0b:	90                   	nop
}
    6f0c:	c9                   	leave
    6f0d:	c3                   	ret

0000000000006f0e <_ZL20yy_load_buffer_statev>:

static void yy_load_buffer_state  (void)
{
    6f0e:	55                   	push   %rbp
    6f0f:	48 89 e5             	mov    %rsp,%rbp
    	(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
    6f12:	48 8b 05 27 b5 00 00 	mov    0xb527(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6f19:	48 8b 15 10 b5 00 00 	mov    0xb510(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6f20:	48 c1 e2 03          	shl    $0x3,%rdx
    6f24:	48 01 d0             	add    %rdx,%rax
    6f27:	48 8b 00             	mov    (%rax),%rax
    6f2a:	8b 40 1c             	mov    0x1c(%rax),%eax
    6f2d:	89 05 19 b5 00 00    	mov    %eax,0xb519(%rip)        # 1244c <_ZL10yy_n_chars>
	(yytext_ptr) = (yy_c_buf_p) = YY_CURRENT_BUFFER_LVALUE->yy_buf_pos;
    6f33:	48 8b 05 06 b5 00 00 	mov    0xb506(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6f3a:	48 8b 15 ef b4 00 00 	mov    0xb4ef(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6f41:	48 c1 e2 03          	shl    $0x3,%rdx
    6f45:	48 01 d0             	add    %rdx,%rax
    6f48:	48 8b 00             	mov    (%rax),%rax
    6f4b:	48 8b 40 10          	mov    0x10(%rax),%rax
    6f4f:	48 89 05 fa b4 00 00 	mov    %rax,0xb4fa(%rip)        # 12450 <_ZL10yy_c_buf_p>
    6f56:	48 8b 05 f3 b4 00 00 	mov    0xb4f3(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6f5d:	48 89 05 7c b4 00 00 	mov    %rax,0xb47c(%rip)        # 123e0 <yytext>
	yyin = YY_CURRENT_BUFFER_LVALUE->yy_input_file;
    6f64:	48 8b 05 d5 b4 00 00 	mov    0xb4d5(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    6f6b:	48 8b 15 be b4 00 00 	mov    0xb4be(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    6f72:	48 c1 e2 03          	shl    $0x3,%rdx
    6f76:	48 01 d0             	add    %rdx,%rax
    6f79:	48 8b 00             	mov    (%rax),%rax
    6f7c:	48 8b 00             	mov    (%rax),%rax
    6f7f:	48 89 05 42 b4 00 00 	mov    %rax,0xb442(%rip)        # 123c8 <yyin>
	(yy_hold_char) = *(yy_c_buf_p);
    6f86:	48 8b 05 c3 b4 00 00 	mov    0xb4c3(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    6f8d:	0f b6 00             	movzbl (%rax),%eax
    6f90:	88 05 b2 b4 00 00    	mov    %al,0xb4b2(%rip)        # 12448 <_ZL12yy_hold_char>
}
    6f96:	90                   	nop
    6f97:	5d                   	pop    %rbp
    6f98:	c3                   	ret

0000000000006f99 <_Z16yy_create_bufferP8_IO_FILEi>:
 * @param size The character buffer size in bytes. When in doubt, use @c YY_BUF_SIZE.
 * 
 * @return the allocated buffer state.
 */
    YY_BUFFER_STATE yy_create_buffer  (FILE * file, int  size )
{
    6f99:	55                   	push   %rbp
    6f9a:	48 89 e5             	mov    %rsp,%rbp
    6f9d:	48 83 ec 20          	sub    $0x20,%rsp
    6fa1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6fa5:	89 75 e4             	mov    %esi,-0x1c(%rbp)
	YY_BUFFER_STATE b;
    
	b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state )  );
    6fa8:	bf 40 00 00 00       	mov    $0x40,%edi
    6fad:	e8 89 09 00 00       	call   793b <_Z7yyallocm>
    6fb2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if ( ! b )
    6fb6:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    6fbb:	75 0f                	jne    6fcc <_Z16yy_create_bufferP8_IO_FILEi+0x33>
		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
    6fbd:	48 8d 05 94 58 00 00 	lea    0x5894(%rip),%rax        # c858 <_ZL6yy_chk+0x378>
    6fc4:	48 89 c7             	mov    %rax,%rdi
    6fc7:	e8 85 07 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

	b->yy_buf_size = size;
    6fcc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6fd0:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    6fd3:	89 50 18             	mov    %edx,0x18(%rax)

	/* yy_ch_buf has to be 2 characters longer than the size given because
	 * we need to put in 2 end-of-buffer characters.
	 */
	b->yy_ch_buf = (char *) yyalloc( (yy_size_t) (b->yy_buf_size + 2)  );
    6fd6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6fda:	8b 40 18             	mov    0x18(%rax),%eax
    6fdd:	83 c0 02             	add    $0x2,%eax
    6fe0:	48 98                	cltq
    6fe2:	48 89 c7             	mov    %rax,%rdi
    6fe5:	e8 51 09 00 00       	call   793b <_Z7yyallocm>
    6fea:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    6fee:	48 89 42 08          	mov    %rax,0x8(%rdx)
	if ( ! b->yy_ch_buf )
    6ff2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6ff6:	48 8b 40 08          	mov    0x8(%rax),%rax
    6ffa:	48 85 c0             	test   %rax,%rax
    6ffd:	75 0f                	jne    700e <_Z16yy_create_bufferP8_IO_FILEi+0x75>
		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
    6fff:	48 8d 05 52 58 00 00 	lea    0x5852(%rip),%rax        # c858 <_ZL6yy_chk+0x378>
    7006:	48 89 c7             	mov    %rax,%rdi
    7009:	e8 43 07 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

	b->yy_is_our_buffer = 1;
    700e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7012:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%rax)

	yy_init_buffer( b, file );
    7019:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    701d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7021:	48 89 d6             	mov    %rdx,%rsi
    7024:	48 89 c7             	mov    %rax,%rdi
    7027:	e8 92 00 00 00       	call   70be <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>

	return b;
    702c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
}
    7030:	c9                   	leave
    7031:	c3                   	ret

0000000000007032 <_Z16yy_delete_bufferP15yy_buffer_state>:
/** Destroy the buffer.
 * @param b a buffer created with yy_create_buffer()
 * 
 */
    void yy_delete_buffer (YY_BUFFER_STATE  b )
{
    7032:	55                   	push   %rbp
    7033:	48 89 e5             	mov    %rsp,%rbp
    7036:	48 83 ec 10          	sub    $0x10,%rsp
    703a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    
	if ( ! b )
    703e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7043:	74 76                	je     70bb <_Z16yy_delete_bufferP15yy_buffer_state+0x89>
		return;

	if ( b == YY_CURRENT_BUFFER ) /* Not sure if we should pop here. */
    7045:	48 8b 05 f4 b3 00 00 	mov    0xb3f4(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    704c:	48 85 c0             	test   %rax,%rax
    704f:	74 1a                	je     706b <_Z16yy_delete_bufferP15yy_buffer_state+0x39>
    7051:	48 8b 05 e8 b3 00 00 	mov    0xb3e8(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7058:	48 8b 15 d1 b3 00 00 	mov    0xb3d1(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    705f:	48 c1 e2 03          	shl    $0x3,%rdx
    7063:	48 01 d0             	add    %rdx,%rax
    7066:	48 8b 00             	mov    (%rax),%rax
    7069:	eb 05                	jmp    7070 <_Z16yy_delete_bufferP15yy_buffer_state+0x3e>
    706b:	b8 00 00 00 00       	mov    $0x0,%eax
    7070:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    7074:	75 1c                	jne    7092 <_Z16yy_delete_bufferP15yy_buffer_state+0x60>
		YY_CURRENT_BUFFER_LVALUE = (YY_BUFFER_STATE) 0;
    7076:	48 8b 05 c3 b3 00 00 	mov    0xb3c3(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    707d:	48 8b 15 ac b3 00 00 	mov    0xb3ac(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    7084:	48 c1 e2 03          	shl    $0x3,%rdx
    7088:	48 01 d0             	add    %rdx,%rax
    708b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)

	if ( b->yy_is_our_buffer )
    7092:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7096:	8b 40 20             	mov    0x20(%rax),%eax
    7099:	85 c0                	test   %eax,%eax
    709b:	74 10                	je     70ad <_Z16yy_delete_bufferP15yy_buffer_state+0x7b>
		yyfree( (void *) b->yy_ch_buf  );
    709d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    70a1:	48 8b 40 08          	mov    0x8(%rax),%rax
    70a5:	48 89 c7             	mov    %rax,%rdi
    70a8:	e8 cd 08 00 00       	call   797a <_Z6yyfreePv>

	yyfree( (void *) b  );
    70ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    70b1:	48 89 c7             	mov    %rax,%rdi
    70b4:	e8 c1 08 00 00       	call   797a <_Z6yyfreePv>
    70b9:	eb 01                	jmp    70bc <_Z16yy_delete_bufferP15yy_buffer_state+0x8a>
		return;
    70bb:	90                   	nop
}
    70bc:	c9                   	leave
    70bd:	c3                   	ret

00000000000070be <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE>:
 * This function is sometimes called more than once on the same buffer,
 * such as during a yyrestart() or at EOF.
 */
    static void yy_init_buffer  (YY_BUFFER_STATE  b, FILE * file )

{
    70be:	55                   	push   %rbp
    70bf:	48 89 e5             	mov    %rsp,%rbp
    70c2:	48 83 ec 20          	sub    $0x20,%rsp
    70c6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    70ca:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	int oerrno = errno;
    70ce:	e8 6d cf ff ff       	call   4040 <__errno_location@plt>
    70d3:	8b 00                	mov    (%rax),%eax
    70d5:	89 45 fc             	mov    %eax,-0x4(%rbp)
    
	yy_flush_buffer( b );
    70d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70dc:	48 89 c7             	mov    %rax,%rdi
    70df:	e8 9b 00 00 00       	call   717f <_Z15yy_flush_bufferP15yy_buffer_state>

	b->yy_input_file = file;
    70e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70e8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    70ec:	48 89 10             	mov    %rdx,(%rax)
	b->yy_fill_buffer = 1;
    70ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70f3:	c7 40 34 01 00 00 00 	movl   $0x1,0x34(%rax)

    /* If b is the current buffer, then yy_init_buffer was _probably_
     * called from yyrestart() or through yy_get_next_buffer.
     * In that case, we don't want to reset the lineno or column.
     */
    if (b != YY_CURRENT_BUFFER){
    70fa:	48 8b 05 3f b3 00 00 	mov    0xb33f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7101:	48 85 c0             	test   %rax,%rax
    7104:	74 1a                	je     7120 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x62>
    7106:	48 8b 05 33 b3 00 00 	mov    0xb333(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    710d:	48 8b 15 1c b3 00 00 	mov    0xb31c(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    7114:	48 c1 e2 03          	shl    $0x3,%rdx
    7118:	48 01 d0             	add    %rdx,%rax
    711b:	48 8b 00             	mov    (%rax),%rax
    711e:	eb 05                	jmp    7125 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x67>
    7120:	b8 00 00 00 00       	mov    $0x0,%eax
    7125:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    7129:	74 16                	je     7141 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0x83>
        b->yy_bs_lineno = 1;
    712b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    712f:	c7 40 2c 01 00 00 00 	movl   $0x1,0x2c(%rax)
        b->yy_bs_column = 0;
    7136:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    713a:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%rax)
    }

        b->yy_is_interactive = file ? (isatty( fileno(file) ) > 0) : 0;
    7141:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    7146:	74 1e                	je     7166 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xa8>
    7148:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    714c:	48 89 c7             	mov    %rax,%rdi
    714f:	e8 2c d0 ff ff       	call   4180 <fileno@plt>
    7154:	89 c7                	mov    %eax,%edi
    7156:	e8 75 d1 ff ff       	call   42d0 <isatty@plt>
    715b:	85 c0                	test   %eax,%eax
    715d:	7e 07                	jle    7166 <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xa8>
    715f:	ba 01 00 00 00       	mov    $0x1,%edx
    7164:	eb 05                	jmp    716b <_ZL14yy_init_bufferP15yy_buffer_stateP8_IO_FILE+0xad>
    7166:	ba 00 00 00 00       	mov    $0x0,%edx
    716b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    716f:	89 50 24             	mov    %edx,0x24(%rax)
    
	errno = oerrno;
    7172:	e8 c9 ce ff ff       	call   4040 <__errno_location@plt>
    7177:	8b 55 fc             	mov    -0x4(%rbp),%edx
    717a:	89 10                	mov    %edx,(%rax)
}
    717c:	90                   	nop
    717d:	c9                   	leave
    717e:	c3                   	ret

000000000000717f <_Z15yy_flush_bufferP15yy_buffer_state>:
/** Discard all buffered characters. On the next scan, YY_INPUT will be called.
 * @param b the buffer state to be flushed, usually @c YY_CURRENT_BUFFER.
 * 
 */
    void yy_flush_buffer (YY_BUFFER_STATE  b )
{
    717f:	55                   	push   %rbp
    7180:	48 89 e5             	mov    %rsp,%rbp
    7183:	48 83 ec 08          	sub    $0x8,%rsp
    7187:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    	if ( ! b )
    718b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7190:	0f 84 83 00 00 00    	je     7219 <_Z15yy_flush_bufferP15yy_buffer_state+0x9a>
		return;

	b->yy_n_chars = 0;
    7196:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    719a:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%rax)

	/* We always need two end-of-buffer characters.  The first causes
	 * a transition to the end-of-buffer state.  The second causes
	 * a jam in that state.
	 */
	b->yy_ch_buf[0] = YY_END_OF_BUFFER_CHAR;
    71a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71a5:	48 8b 40 08          	mov    0x8(%rax),%rax
    71a9:	c6 00 00             	movb   $0x0,(%rax)
	b->yy_ch_buf[1] = YY_END_OF_BUFFER_CHAR;
    71ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71b0:	48 8b 40 08          	mov    0x8(%rax),%rax
    71b4:	48 83 c0 01          	add    $0x1,%rax
    71b8:	c6 00 00             	movb   $0x0,(%rax)

	b->yy_buf_pos = &b->yy_ch_buf[0];
    71bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71bf:	48 8b 50 08          	mov    0x8(%rax),%rdx
    71c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71c7:	48 89 50 10          	mov    %rdx,0x10(%rax)

	b->yy_at_bol = 1;
    71cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71cf:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%rax)
	b->yy_buffer_status = YY_BUFFER_NEW;
    71d6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    71da:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%rax)

	if ( b == YY_CURRENT_BUFFER )
    71e1:	48 8b 05 58 b2 00 00 	mov    0xb258(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    71e8:	48 85 c0             	test   %rax,%rax
    71eb:	74 1a                	je     7207 <_Z15yy_flush_bufferP15yy_buffer_state+0x88>
    71ed:	48 8b 05 4c b2 00 00 	mov    0xb24c(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    71f4:	48 8b 15 35 b2 00 00 	mov    0xb235(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    71fb:	48 c1 e2 03          	shl    $0x3,%rdx
    71ff:	48 01 d0             	add    %rdx,%rax
    7202:	48 8b 00             	mov    (%rax),%rax
    7205:	eb 05                	jmp    720c <_Z15yy_flush_bufferP15yy_buffer_state+0x8d>
    7207:	b8 00 00 00 00       	mov    $0x0,%eax
    720c:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
    7210:	75 08                	jne    721a <_Z15yy_flush_bufferP15yy_buffer_state+0x9b>
		yy_load_buffer_state(  );
    7212:	e8 f7 fc ff ff       	call   6f0e <_ZL20yy_load_buffer_statev>
    7217:	eb 01                	jmp    721a <_Z15yy_flush_bufferP15yy_buffer_state+0x9b>
		return;
    7219:	90                   	nop
}
    721a:	c9                   	leave
    721b:	c3                   	ret

000000000000721c <_Z19yypush_buffer_stateP15yy_buffer_state>:
 *  if necessary.
 *  @param new_buffer The new state.
 *  
 */
void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
{
    721c:	55                   	push   %rbp
    721d:	48 89 e5             	mov    %rsp,%rbp
    7220:	48 83 ec 10          	sub    $0x10,%rsp
    7224:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    	if (new_buffer == NULL)
    7228:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    722d:	0f 84 f8 00 00 00    	je     732b <_Z19yypush_buffer_stateP15yy_buffer_state+0x10f>
		return;

	yyensure_buffer_stack();
    7233:	e8 df 01 00 00       	call   7417 <_ZL21yyensure_buffer_stackv>

	/* This block is copied from yy_switch_to_buffer. */
	if ( YY_CURRENT_BUFFER )
    7238:	48 8b 05 01 b2 00 00 	mov    0xb201(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    723f:	48 85 c0             	test   %rax,%rax
    7242:	74 1a                	je     725e <_Z19yypush_buffer_stateP15yy_buffer_state+0x42>
    7244:	48 8b 05 f5 b1 00 00 	mov    0xb1f5(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    724b:	48 8b 15 de b1 00 00 	mov    0xb1de(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    7252:	48 c1 e2 03          	shl    $0x3,%rdx
    7256:	48 01 d0             	add    %rdx,%rax
    7259:	48 8b 00             	mov    (%rax),%rax
    725c:	eb 05                	jmp    7263 <_Z19yypush_buffer_stateP15yy_buffer_state+0x47>
    725e:	b8 00 00 00 00       	mov    $0x0,%eax
    7263:	48 85 c0             	test   %rax,%rax
    7266:	74 54                	je     72bc <_Z19yypush_buffer_stateP15yy_buffer_state+0xa0>
		{
		/* Flush out information for old buffer. */
		*(yy_c_buf_p) = (yy_hold_char);
    7268:	48 8b 05 e1 b1 00 00 	mov    0xb1e1(%rip),%rax        # 12450 <_ZL10yy_c_buf_p>
    726f:	0f b6 15 d2 b1 00 00 	movzbl 0xb1d2(%rip),%edx        # 12448 <_ZL12yy_hold_char>
    7276:	88 10                	mov    %dl,(%rax)
		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
    7278:	48 8b 05 c1 b1 00 00 	mov    0xb1c1(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    727f:	48 8b 15 aa b1 00 00 	mov    0xb1aa(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    7286:	48 c1 e2 03          	shl    $0x3,%rdx
    728a:	48 01 d0             	add    %rdx,%rax
    728d:	48 8b 00             	mov    (%rax),%rax
    7290:	48 8b 15 b9 b1 00 00 	mov    0xb1b9(%rip),%rdx        # 12450 <_ZL10yy_c_buf_p>
    7297:	48 89 50 10          	mov    %rdx,0x10(%rax)
		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
    729b:	48 8b 05 9e b1 00 00 	mov    0xb19e(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    72a2:	48 8b 15 87 b1 00 00 	mov    0xb187(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    72a9:	48 c1 e2 03          	shl    $0x3,%rdx
    72ad:	48 01 d0             	add    %rdx,%rax
    72b0:	48 8b 00             	mov    (%rax),%rax
    72b3:	8b 15 93 b1 00 00    	mov    0xb193(%rip),%edx        # 1244c <_ZL10yy_n_chars>
    72b9:	89 50 1c             	mov    %edx,0x1c(%rax)
		}

	/* Only push if top exists. Otherwise, replace top. */
	if (YY_CURRENT_BUFFER)
    72bc:	48 8b 05 7d b1 00 00 	mov    0xb17d(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    72c3:	48 85 c0             	test   %rax,%rax
    72c6:	74 1a                	je     72e2 <_Z19yypush_buffer_stateP15yy_buffer_state+0xc6>
    72c8:	48 8b 05 71 b1 00 00 	mov    0xb171(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    72cf:	48 8b 15 5a b1 00 00 	mov    0xb15a(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    72d6:	48 c1 e2 03          	shl    $0x3,%rdx
    72da:	48 01 d0             	add    %rdx,%rax
    72dd:	48 8b 00             	mov    (%rax),%rax
    72e0:	eb 05                	jmp    72e7 <_Z19yypush_buffer_stateP15yy_buffer_state+0xcb>
    72e2:	b8 00 00 00 00       	mov    $0x0,%eax
    72e7:	48 85 c0             	test   %rax,%rax
    72ea:	74 12                	je     72fe <_Z19yypush_buffer_stateP15yy_buffer_state+0xe2>
		(yy_buffer_stack_top)++;
    72ec:	48 8b 05 3d b1 00 00 	mov    0xb13d(%rip),%rax        # 12430 <_ZL19yy_buffer_stack_top>
    72f3:	48 83 c0 01          	add    $0x1,%rax
    72f7:	48 89 05 32 b1 00 00 	mov    %rax,0xb132(%rip)        # 12430 <_ZL19yy_buffer_stack_top>
	YY_CURRENT_BUFFER_LVALUE = new_buffer;
    72fe:	48 8b 05 3b b1 00 00 	mov    0xb13b(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7305:	48 8b 15 24 b1 00 00 	mov    0xb124(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    730c:	48 c1 e2 03          	shl    $0x3,%rdx
    7310:	48 01 c2             	add    %rax,%rdx
    7313:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7317:	48 89 02             	mov    %rax,(%rdx)

	/* copied from yy_switch_to_buffer. */
	yy_load_buffer_state(  );
    731a:	e8 ef fb ff ff       	call   6f0e <_ZL20yy_load_buffer_statev>
	(yy_did_buffer_switch_on_eof) = 1;
    731f:	c7 05 37 b1 00 00 01 	movl   $0x1,0xb137(%rip)        # 12460 <_ZL27yy_did_buffer_switch_on_eof>
    7326:	00 00 00 
    7329:	eb 01                	jmp    732c <_Z19yypush_buffer_stateP15yy_buffer_state+0x110>
		return;
    732b:	90                   	nop
}
    732c:	c9                   	leave
    732d:	c3                   	ret

000000000000732e <_Z18yypop_buffer_statev>:
/** Removes and deletes the top of the stack, if present.
 *  The next element becomes the new top.
 *  
 */
void yypop_buffer_state (void)
{
    732e:	55                   	push   %rbp
    732f:	48 89 e5             	mov    %rsp,%rbp
    	if (!YY_CURRENT_BUFFER)
    7332:	48 8b 05 07 b1 00 00 	mov    0xb107(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7339:	48 85 c0             	test   %rax,%rax
    733c:	74 1a                	je     7358 <_Z18yypop_buffer_statev+0x2a>
    733e:	48 8b 05 fb b0 00 00 	mov    0xb0fb(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7345:	48 8b 15 e4 b0 00 00 	mov    0xb0e4(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    734c:	48 c1 e2 03          	shl    $0x3,%rdx
    7350:	48 01 d0             	add    %rdx,%rax
    7353:	48 8b 00             	mov    (%rax),%rax
    7356:	eb 05                	jmp    735d <_Z18yypop_buffer_statev+0x2f>
    7358:	b8 00 00 00 00       	mov    $0x0,%eax
    735d:	48 85 c0             	test   %rax,%rax
    7360:	0f 84 ae 00 00 00    	je     7414 <_Z18yypop_buffer_statev+0xe6>
		return;

	yy_delete_buffer(YY_CURRENT_BUFFER );
    7366:	48 8b 05 d3 b0 00 00 	mov    0xb0d3(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    736d:	48 85 c0             	test   %rax,%rax
    7370:	74 1a                	je     738c <_Z18yypop_buffer_statev+0x5e>
    7372:	48 8b 05 c7 b0 00 00 	mov    0xb0c7(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7379:	48 8b 15 b0 b0 00 00 	mov    0xb0b0(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    7380:	48 c1 e2 03          	shl    $0x3,%rdx
    7384:	48 01 d0             	add    %rdx,%rax
    7387:	48 8b 00             	mov    (%rax),%rax
    738a:	eb 05                	jmp    7391 <_Z18yypop_buffer_statev+0x63>
    738c:	b8 00 00 00 00       	mov    $0x0,%eax
    7391:	48 89 c7             	mov    %rax,%rdi
    7394:	e8 99 fc ff ff       	call   7032 <_Z16yy_delete_bufferP15yy_buffer_state>
	YY_CURRENT_BUFFER_LVALUE = NULL;
    7399:	48 8b 05 a0 b0 00 00 	mov    0xb0a0(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    73a0:	48 8b 15 89 b0 00 00 	mov    0xb089(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    73a7:	48 c1 e2 03          	shl    $0x3,%rdx
    73ab:	48 01 d0             	add    %rdx,%rax
    73ae:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
	if ((yy_buffer_stack_top) > 0)
    73b5:	48 8b 05 74 b0 00 00 	mov    0xb074(%rip),%rax        # 12430 <_ZL19yy_buffer_stack_top>
    73bc:	48 85 c0             	test   %rax,%rax
    73bf:	74 12                	je     73d3 <_Z18yypop_buffer_statev+0xa5>
		--(yy_buffer_stack_top);
    73c1:	48 8b 05 68 b0 00 00 	mov    0xb068(%rip),%rax        # 12430 <_ZL19yy_buffer_stack_top>
    73c8:	48 83 e8 01          	sub    $0x1,%rax
    73cc:	48 89 05 5d b0 00 00 	mov    %rax,0xb05d(%rip)        # 12430 <_ZL19yy_buffer_stack_top>

	if (YY_CURRENT_BUFFER) {
    73d3:	48 8b 05 66 b0 00 00 	mov    0xb066(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    73da:	48 85 c0             	test   %rax,%rax
    73dd:	74 1a                	je     73f9 <_Z18yypop_buffer_statev+0xcb>
    73df:	48 8b 05 5a b0 00 00 	mov    0xb05a(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    73e6:	48 8b 15 43 b0 00 00 	mov    0xb043(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    73ed:	48 c1 e2 03          	shl    $0x3,%rdx
    73f1:	48 01 d0             	add    %rdx,%rax
    73f4:	48 8b 00             	mov    (%rax),%rax
    73f7:	eb 05                	jmp    73fe <_Z18yypop_buffer_statev+0xd0>
    73f9:	b8 00 00 00 00       	mov    $0x0,%eax
    73fe:	48 85 c0             	test   %rax,%rax
    7401:	74 12                	je     7415 <_Z18yypop_buffer_statev+0xe7>
		yy_load_buffer_state(  );
    7403:	e8 06 fb ff ff       	call   6f0e <_ZL20yy_load_buffer_statev>
		(yy_did_buffer_switch_on_eof) = 1;
    7408:	c7 05 4e b0 00 00 01 	movl   $0x1,0xb04e(%rip)        # 12460 <_ZL27yy_did_buffer_switch_on_eof>
    740f:	00 00 00 
    7412:	eb 01                	jmp    7415 <_Z18yypop_buffer_statev+0xe7>
		return;
    7414:	90                   	nop
	}
}
    7415:	5d                   	pop    %rbp
    7416:	c3                   	ret

0000000000007417 <_ZL21yyensure_buffer_stackv>:

/* Allocates the stack if it does not exist.
 *  Guarantees space for at least one push.
 */
static void yyensure_buffer_stack (void)
{
    7417:	55                   	push   %rbp
    7418:	48 89 e5             	mov    %rsp,%rbp
    741b:	48 83 ec 10          	sub    $0x10,%rsp
	yy_size_t num_to_alloc;
    
	if (!(yy_buffer_stack)) {
    741f:	48 8b 05 1a b0 00 00 	mov    0xb01a(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7426:	48 85 c0             	test   %rax,%rax
    7429:	75 75                	jne    74a0 <_ZL21yyensure_buffer_stackv+0x89>

		/* First allocation is just for 2 elements, since we don't know if this
		 * scanner will even need a stack. We use 2 instead of 1 to avoid an
		 * immediate realloc on the next call.
         */
      num_to_alloc = 1; /* After all that talk, this was set to 1 anyways... */
    742b:	48 c7 45 f0 01 00 00 	movq   $0x1,-0x10(%rbp)
    7432:	00 
		(yy_buffer_stack) = (struct yy_buffer_state**)yyalloc
								(num_to_alloc * sizeof(struct yy_buffer_state*)
    7433:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7437:	48 c1 e0 03          	shl    $0x3,%rax
    743b:	48 89 c7             	mov    %rax,%rdi
    743e:	e8 f8 04 00 00       	call   793b <_Z7yyallocm>
		(yy_buffer_stack) = (struct yy_buffer_state**)yyalloc
    7443:	48 89 05 f6 af 00 00 	mov    %rax,0xaff6(%rip)        # 12440 <_ZL15yy_buffer_stack>
								);
		if ( ! (yy_buffer_stack) )
    744a:	48 8b 05 ef af 00 00 	mov    0xafef(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7451:	48 85 c0             	test   %rax,%rax
    7454:	75 0f                	jne    7465 <_ZL21yyensure_buffer_stackv+0x4e>
			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
    7456:	48 8d 05 2b 54 00 00 	lea    0x542b(%rip),%rax        # c888 <_ZL6yy_chk+0x3a8>
    745d:	48 89 c7             	mov    %rax,%rdi
    7460:	e8 ec 02 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
    7465:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7469:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7470:	00 
    7471:	48 8b 05 c8 af 00 00 	mov    0xafc8(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7478:	be 00 00 00 00       	mov    $0x0,%esi
    747d:	48 89 c7             	mov    %rax,%rdi
    7480:	e8 3b cc ff ff       	call   40c0 <memset@plt>

		(yy_buffer_stack_max) = num_to_alloc;
    7485:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7489:	48 89 05 a8 af 00 00 	mov    %rax,0xafa8(%rip)        # 12438 <_ZL19yy_buffer_stack_max>
		(yy_buffer_stack_top) = 0;
    7490:	48 c7 05 95 af 00 00 	movq   $0x0,0xaf95(%rip)        # 12430 <_ZL19yy_buffer_stack_top>
    7497:	00 00 00 00 
		return;
    749b:	e9 ae 00 00 00       	jmp    754e <_ZL21yyensure_buffer_stackv+0x137>
	}

	if ((yy_buffer_stack_top) >= ((yy_buffer_stack_max)) - 1){
    74a0:	48 8b 05 91 af 00 00 	mov    0xaf91(%rip),%rax        # 12438 <_ZL19yy_buffer_stack_max>
    74a7:	48 83 e8 01          	sub    $0x1,%rax
    74ab:	48 8b 15 7e af 00 00 	mov    0xaf7e(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    74b2:	48 39 c2             	cmp    %rax,%rdx
    74b5:	0f 82 93 00 00 00    	jb     754e <_ZL21yyensure_buffer_stackv+0x137>

		/* Increase the buffer to prepare for a possible push. */
		yy_size_t grow_size = 8 /* arbitrary grow size */;
    74bb:	48 c7 45 f8 08 00 00 	movq   $0x8,-0x8(%rbp)
    74c2:	00 

		num_to_alloc = (yy_buffer_stack_max) + grow_size;
    74c3:	48 8b 15 6e af 00 00 	mov    0xaf6e(%rip),%rdx        # 12438 <_ZL19yy_buffer_stack_max>
    74ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    74ce:	48 01 d0             	add    %rdx,%rax
    74d1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
		(yy_buffer_stack) = (struct yy_buffer_state**)yyrealloc
								((yy_buffer_stack),
    74d5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    74d9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    74e0:	00 
    74e1:	48 8b 05 58 af 00 00 	mov    0xaf58(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    74e8:	48 89 d6             	mov    %rdx,%rsi
    74eb:	48 89 c7             	mov    %rax,%rdi
    74ee:	e8 62 04 00 00       	call   7955 <_Z9yyreallocPvm>
		(yy_buffer_stack) = (struct yy_buffer_state**)yyrealloc
    74f3:	48 89 05 46 af 00 00 	mov    %rax,0xaf46(%rip)        # 12440 <_ZL15yy_buffer_stack>
								num_to_alloc * sizeof(struct yy_buffer_state*)
								);
		if ( ! (yy_buffer_stack) )
    74fa:	48 8b 05 3f af 00 00 	mov    0xaf3f(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7501:	48 85 c0             	test   %rax,%rax
    7504:	75 0f                	jne    7515 <_ZL21yyensure_buffer_stackv+0xfe>
			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
    7506:	48 8d 05 7b 53 00 00 	lea    0x537b(%rip),%rax        # c888 <_ZL6yy_chk+0x3a8>
    750d:	48 89 c7             	mov    %rax,%rdi
    7510:	e8 3c 02 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

		/* zero only the new slots.*/
		memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
    7515:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7519:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7520:	00 
    7521:	48 8b 05 18 af 00 00 	mov    0xaf18(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7528:	48 8b 0d 09 af 00 00 	mov    0xaf09(%rip),%rcx        # 12438 <_ZL19yy_buffer_stack_max>
    752f:	48 c1 e1 03          	shl    $0x3,%rcx
    7533:	48 01 c8             	add    %rcx,%rax
    7536:	be 00 00 00 00       	mov    $0x0,%esi
    753b:	48 89 c7             	mov    %rax,%rdi
    753e:	e8 7d cb ff ff       	call   40c0 <memset@plt>
		(yy_buffer_stack_max) = num_to_alloc;
    7543:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7547:	48 89 05 ea ae 00 00 	mov    %rax,0xaeea(%rip)        # 12438 <_ZL19yy_buffer_stack_max>
	}
}
    754e:	c9                   	leave
    754f:	c3                   	ret

0000000000007550 <_Z14yy_scan_bufferPcm>:
 * @param size the size in bytes of the character buffer
 * 
 * @return the newly allocated buffer state object.
 */
YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
{
    7550:	55                   	push   %rbp
    7551:	48 89 e5             	mov    %rsp,%rbp
    7554:	48 83 ec 20          	sub    $0x20,%rsp
    7558:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    755c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	YY_BUFFER_STATE b;
    
	if ( size < 2 ||
    7560:	48 83 7d e0 01       	cmpq   $0x1,-0x20(%rbp)
    7565:	76 2c                	jbe    7593 <_Z14yy_scan_bufferPcm+0x43>
	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
    7567:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    756b:	48 8d 50 fe          	lea    -0x2(%rax),%rdx
    756f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7573:	48 01 d0             	add    %rdx,%rax
    7576:	0f b6 00             	movzbl (%rax),%eax
	if ( size < 2 ||
    7579:	84 c0                	test   %al,%al
    757b:	75 16                	jne    7593 <_Z14yy_scan_bufferPcm+0x43>
	     base[size-1] != YY_END_OF_BUFFER_CHAR )
    757d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7581:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
    7585:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7589:	48 01 d0             	add    %rdx,%rax
    758c:	0f b6 00             	movzbl (%rax),%eax
	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
    758f:	84 c0                	test   %al,%al
    7591:	74 0a                	je     759d <_Z14yy_scan_bufferPcm+0x4d>
		/* They forgot to leave room for the EOB's. */
		return NULL;
    7593:	b8 00 00 00 00       	mov    $0x0,%eax
    7598:	e9 b0 00 00 00       	jmp    764d <_Z14yy_scan_bufferPcm+0xfd>

	b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state )  );
    759d:	bf 40 00 00 00       	mov    $0x40,%edi
    75a2:	e8 94 03 00 00       	call   793b <_Z7yyallocm>
    75a7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	if ( ! b )
    75ab:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    75b0:	75 0f                	jne    75c1 <_Z14yy_scan_bufferPcm+0x71>
		YY_FATAL_ERROR( "out of dynamic memory in yy_scan_buffer()" );
    75b2:	48 8d 05 07 53 00 00 	lea    0x5307(%rip),%rax        # c8c0 <_ZL6yy_chk+0x3e0>
    75b9:	48 89 c7             	mov    %rax,%rdi
    75bc:	e8 90 01 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

	b->yy_buf_size = (int) (size - 2);	/* "- 2" to take care of EOB's */
    75c1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    75c5:	83 e8 02             	sub    $0x2,%eax
    75c8:	89 c2                	mov    %eax,%edx
    75ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75ce:	89 50 18             	mov    %edx,0x18(%rax)
	b->yy_buf_pos = b->yy_ch_buf = base;
    75d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75d5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    75d9:	48 89 50 08          	mov    %rdx,0x8(%rax)
    75dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75e1:	48 8b 50 08          	mov    0x8(%rax),%rdx
    75e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75e9:	48 89 50 10          	mov    %rdx,0x10(%rax)
	b->yy_is_our_buffer = 0;
    75ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75f1:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%rax)
	b->yy_input_file = NULL;
    75f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75fc:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
	b->yy_n_chars = b->yy_buf_size;
    7603:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7607:	8b 50 18             	mov    0x18(%rax),%edx
    760a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    760e:	89 50 1c             	mov    %edx,0x1c(%rax)
	b->yy_is_interactive = 0;
    7611:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7615:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%rax)
	b->yy_at_bol = 1;
    761c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7620:	c7 40 28 01 00 00 00 	movl   $0x1,0x28(%rax)
	b->yy_fill_buffer = 0;
    7627:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    762b:	c7 40 34 00 00 00 00 	movl   $0x0,0x34(%rax)
	b->yy_buffer_status = YY_BUFFER_NEW;
    7632:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7636:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%rax)

	yy_switch_to_buffer( b  );
    763d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7641:	48 89 c7             	mov    %rax,%rdi
    7644:	e8 cb f7 ff ff       	call   6e14 <_Z19yy_switch_to_bufferP15yy_buffer_state>

	return b;
    7649:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
}
    764d:	c9                   	leave
    764e:	c3                   	ret

000000000000764f <_Z14yy_scan_stringPKc>:
 * @return the newly allocated buffer state object.
 * @note If you want to scan bytes that may contain NUL values, then use
 *       yy_scan_bytes() instead.
 */
YY_BUFFER_STATE yy_scan_string (const char * yystr )
{
    764f:	55                   	push   %rbp
    7650:	48 89 e5             	mov    %rsp,%rbp
    7653:	48 83 ec 10          	sub    $0x10,%rsp
    7657:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    
	return yy_scan_bytes( yystr, (int) strlen(yystr) );
    765b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    765f:	48 89 c7             	mov    %rax,%rdi
    7662:	e8 39 ca ff ff       	call   40a0 <strlen@plt>
    7667:	89 c2                	mov    %eax,%edx
    7669:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    766d:	89 d6                	mov    %edx,%esi
    766f:	48 89 c7             	mov    %rax,%rdi
    7672:	e8 02 00 00 00       	call   7679 <_Z13yy_scan_bytesPKci>
}
    7677:	c9                   	leave
    7678:	c3                   	ret

0000000000007679 <_Z13yy_scan_bytesPKci>:
 * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
 * 
 * @return the newly allocated buffer state object.
 */
YY_BUFFER_STATE yy_scan_bytes  (const char * yybytes, int  _yybytes_len )
{
    7679:	55                   	push   %rbp
    767a:	48 89 e5             	mov    %rsp,%rbp
    767d:	48 83 ec 30          	sub    $0x30,%rsp
    7681:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7685:	89 75 d4             	mov    %esi,-0x2c(%rbp)
	char *buf;
	yy_size_t n;
	int i;
    
	/* Get memory for full buffer, including space for trailing EOB's. */
	n = (yy_size_t) (_yybytes_len + 2);
    7688:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    768b:	83 c0 02             	add    $0x2,%eax
    768e:	48 98                	cltq
    7690:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	buf = (char *) yyalloc( n  );
    7694:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7698:	48 89 c7             	mov    %rax,%rdi
    769b:	e8 9b 02 00 00       	call   793b <_Z7yyallocm>
    76a0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if ( ! buf )
    76a4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    76a9:	75 0f                	jne    76ba <_Z13yy_scan_bytesPKci+0x41>
		YY_FATAL_ERROR( "out of dynamic memory in yy_scan_bytes()" );
    76ab:	48 8d 05 3e 52 00 00 	lea    0x523e(%rip),%rax        # c8f0 <_ZL6yy_chk+0x410>
    76b2:	48 89 c7             	mov    %rax,%rdi
    76b5:	e8 97 00 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

	for ( i = 0; i < _yybytes_len; ++i )
    76ba:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    76c1:	eb 23                	jmp    76e6 <_Z13yy_scan_bytesPKci+0x6d>
		buf[i] = yybytes[i];
    76c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    76c6:	48 63 d0             	movslq %eax,%rdx
    76c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    76cd:	48 01 d0             	add    %rdx,%rax
    76d0:	8b 55 fc             	mov    -0x4(%rbp),%edx
    76d3:	48 63 ca             	movslq %edx,%rcx
    76d6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    76da:	48 01 ca             	add    %rcx,%rdx
    76dd:	0f b6 00             	movzbl (%rax),%eax
    76e0:	88 02                	mov    %al,(%rdx)
	for ( i = 0; i < _yybytes_len; ++i )
    76e2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    76e6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    76e9:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
    76ec:	7c d5                	jl     76c3 <_Z13yy_scan_bytesPKci+0x4a>

	buf[_yybytes_len] = buf[_yybytes_len+1] = YY_END_OF_BUFFER_CHAR;
    76ee:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    76f1:	48 98                	cltq
    76f3:	48 8d 50 01          	lea    0x1(%rax),%rdx
    76f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    76fb:	48 01 d0             	add    %rdx,%rax
    76fe:	c6 00 00             	movb   $0x0,(%rax)
    7701:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    7704:	48 63 ca             	movslq %edx,%rcx
    7707:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    770b:	48 01 ca             	add    %rcx,%rdx
    770e:	0f b6 00             	movzbl (%rax),%eax
    7711:	88 02                	mov    %al,(%rdx)

	b = yy_scan_buffer( buf, n );
    7713:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    7717:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    771b:	48 89 d6             	mov    %rdx,%rsi
    771e:	48 89 c7             	mov    %rax,%rdi
    7721:	e8 2a fe ff ff       	call   7550 <_Z14yy_scan_bufferPcm>
    7726:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	if ( ! b )
    772a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    772f:	75 0f                	jne    7740 <_Z13yy_scan_bytesPKci+0xc7>
		YY_FATAL_ERROR( "bad buffer in yy_scan_bytes()" );
    7731:	48 8d 05 e1 51 00 00 	lea    0x51e1(%rip),%rax        # c919 <_ZL6yy_chk+0x439>
    7738:	48 89 c7             	mov    %rax,%rdi
    773b:	e8 11 00 00 00       	call   7751 <_ZL14yy_fatal_errorPKc>

	/* It's okay to grow etc. this buffer, and we should throw it
	 * away when we're done.
	 */
	b->yy_is_our_buffer = 1;
    7740:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7744:	c7 40 20 01 00 00 00 	movl   $0x1,0x20(%rax)

	return b;
    774b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
}
    774f:	c9                   	leave
    7750:	c3                   	ret

0000000000007751 <_ZL14yy_fatal_errorPKc>:
#ifndef YY_EXIT_FAILURE
#define YY_EXIT_FAILURE 2
#endif

static void yynoreturn yy_fatal_error (const char* msg )
{
    7751:	55                   	push   %rbp
    7752:	48 89 e5             	mov    %rsp,%rbp
    7755:	48 83 ec 10          	sub    $0x10,%rsp
    7759:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
			fprintf( stderr, "%s\n", msg );
    775d:	48 8b 05 1c ab 00 00 	mov    0xab1c(%rip),%rax        # 12280 <stderr@GLIBC_2.2.5>
    7764:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7768:	48 8d 0d c8 51 00 00 	lea    0x51c8(%rip),%rcx        # c937 <_ZL6yy_chk+0x457>
    776f:	48 89 ce             	mov    %rcx,%rsi
    7772:	48 89 c7             	mov    %rax,%rdi
    7775:	b8 00 00 00 00       	mov    $0x0,%eax
    777a:	e8 a1 ca ff ff       	call   4220 <fprintf@plt>
	exit( YY_EXIT_FAILURE );
    777f:	bf 02 00 00 00       	mov    $0x2,%edi
    7784:	e8 57 ca ff ff       	call   41e0 <exit@plt>

0000000000007789 <_Z12yyget_linenov>:

/** Get the current line number.
 * 
 */
int yyget_lineno  (void)
{
    7789:	55                   	push   %rbp
    778a:	48 89 e5             	mov    %rsp,%rbp
    
    return yylineno;
    778d:	8b 05 6d aa 00 00    	mov    0xaa6d(%rip),%eax        # 12200 <yylineno>
}
    7793:	5d                   	pop    %rbp
    7794:	c3                   	ret

0000000000007795 <_Z8yyget_inv>:

/** Get the input stream.
 * 
 */
FILE *yyget_in  (void)
{
    7795:	55                   	push   %rbp
    7796:	48 89 e5             	mov    %rsp,%rbp
        return yyin;
    7799:	48 8b 05 28 ac 00 00 	mov    0xac28(%rip),%rax        # 123c8 <yyin>
}
    77a0:	5d                   	pop    %rbp
    77a1:	c3                   	ret

00000000000077a2 <_Z9yyget_outv>:

/** Get the output stream.
 * 
 */
FILE *yyget_out  (void)
{
    77a2:	55                   	push   %rbp
    77a3:	48 89 e5             	mov    %rsp,%rbp
        return yyout;
    77a6:	48 8b 05 23 ac 00 00 	mov    0xac23(%rip),%rax        # 123d0 <yyout>
}
    77ad:	5d                   	pop    %rbp
    77ae:	c3                   	ret

00000000000077af <_Z10yyget_lengv>:

/** Get the length of the current token.
 * 
 */
int yyget_leng  (void)
{
    77af:	55                   	push   %rbp
    77b0:	48 89 e5             	mov    %rsp,%rbp
        return yyleng;
    77b3:	8b 05 07 ac 00 00    	mov    0xac07(%rip),%eax        # 123c0 <yyleng>
}
    77b9:	5d                   	pop    %rbp
    77ba:	c3                   	ret

00000000000077bb <_Z10yyget_textv>:
/** Get the current token.
 * 
 */

char *yyget_text  (void)
{
    77bb:	55                   	push   %rbp
    77bc:	48 89 e5             	mov    %rsp,%rbp
        return yytext;
    77bf:	48 8b 05 1a ac 00 00 	mov    0xac1a(%rip),%rax        # 123e0 <yytext>
}
    77c6:	5d                   	pop    %rbp
    77c7:	c3                   	ret

00000000000077c8 <_Z12yyset_linenoi>:
/** Set the current line number.
 * @param _line_number line number
 * 
 */
void yyset_lineno (int  _line_number )
{
    77c8:	55                   	push   %rbp
    77c9:	48 89 e5             	mov    %rsp,%rbp
    77cc:	89 7d fc             	mov    %edi,-0x4(%rbp)
    
    yylineno = _line_number;
    77cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
    77d2:	89 05 28 aa 00 00    	mov    %eax,0xaa28(%rip)        # 12200 <yylineno>
}
    77d8:	90                   	nop
    77d9:	5d                   	pop    %rbp
    77da:	c3                   	ret

00000000000077db <_Z8yyset_inP8_IO_FILE>:
 * @param _in_str A readable stream.
 * 
 * @see yy_switch_to_buffer
 */
void yyset_in (FILE *  _in_str )
{
    77db:	55                   	push   %rbp
    77dc:	48 89 e5             	mov    %rsp,%rbp
    77df:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        yyin = _in_str ;
    77e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    77e7:	48 89 05 da ab 00 00 	mov    %rax,0xabda(%rip)        # 123c8 <yyin>
}
    77ee:	90                   	nop
    77ef:	5d                   	pop    %rbp
    77f0:	c3                   	ret

00000000000077f1 <_Z9yyset_outP8_IO_FILE>:

void yyset_out (FILE *  _out_str )
{
    77f1:	55                   	push   %rbp
    77f2:	48 89 e5             	mov    %rsp,%rbp
    77f5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        yyout = _out_str ;
    77f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    77fd:	48 89 05 cc ab 00 00 	mov    %rax,0xabcc(%rip)        # 123d0 <yyout>
}
    7804:	90                   	nop
    7805:	5d                   	pop    %rbp
    7806:	c3                   	ret

0000000000007807 <_Z11yyget_debugv>:

int yyget_debug  (void)
{
    7807:	55                   	push   %rbp
    7808:	48 89 e5             	mov    %rsp,%rbp
        return yy_flex_debug;
    780b:	8b 05 c7 ab 00 00    	mov    0xabc7(%rip),%eax        # 123d8 <yy_flex_debug>
}
    7811:	5d                   	pop    %rbp
    7812:	c3                   	ret

0000000000007813 <_Z11yyset_debugi>:

void yyset_debug (int  _bdebug )
{
    7813:	55                   	push   %rbp
    7814:	48 89 e5             	mov    %rsp,%rbp
    7817:	89 7d fc             	mov    %edi,-0x4(%rbp)
        yy_flex_debug = _bdebug ;
    781a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    781d:	89 05 b5 ab 00 00    	mov    %eax,0xabb5(%rip)        # 123d8 <yy_flex_debug>
}
    7823:	90                   	nop
    7824:	5d                   	pop    %rbp
    7825:	c3                   	ret

0000000000007826 <_ZL15yy_init_globalsv>:

static int yy_init_globals (void)
{
    7826:	55                   	push   %rbp
    7827:	48 89 e5             	mov    %rsp,%rbp
        /* Initialization is the same as for the non-reentrant scanner.
     * This function is called from yylex_destroy(), so don't allocate here.
     */

    (yy_buffer_stack) = NULL;
    782a:	48 c7 05 0b ac 00 00 	movq   $0x0,0xac0b(%rip)        # 12440 <_ZL15yy_buffer_stack>
    7831:	00 00 00 00 
    (yy_buffer_stack_top) = 0;
    7835:	48 c7 05 f0 ab 00 00 	movq   $0x0,0xabf0(%rip)        # 12430 <_ZL19yy_buffer_stack_top>
    783c:	00 00 00 00 
    (yy_buffer_stack_max) = 0;
    7840:	48 c7 05 ed ab 00 00 	movq   $0x0,0xabed(%rip)        # 12438 <_ZL19yy_buffer_stack_max>
    7847:	00 00 00 00 
    (yy_c_buf_p) = NULL;
    784b:	48 c7 05 fa ab 00 00 	movq   $0x0,0xabfa(%rip)        # 12450 <_ZL10yy_c_buf_p>
    7852:	00 00 00 00 
    (yy_init) = 0;
    7856:	c7 05 f8 ab 00 00 00 	movl   $0x0,0xabf8(%rip)        # 12458 <_ZL7yy_init>
    785d:	00 00 00 
    (yy_start) = 0;
    7860:	c7 05 f2 ab 00 00 00 	movl   $0x0,0xabf2(%rip)        # 1245c <_ZL8yy_start>
    7867:	00 00 00 
/* Defined in main.c */
#ifdef YY_STDINIT
    yyin = stdin;
    yyout = stdout;
#else
    yyin = NULL;
    786a:	48 c7 05 53 ab 00 00 	movq   $0x0,0xab53(%rip)        # 123c8 <yyin>
    7871:	00 00 00 00 
    yyout = NULL;
    7875:	48 c7 05 50 ab 00 00 	movq   $0x0,0xab50(%rip)        # 123d0 <yyout>
    787c:	00 00 00 00 
#endif

    /* For future reference: Set errno on error, since we are called by
     * yylex_init()
     */
    return 0;
    7880:	b8 00 00 00 00       	mov    $0x0,%eax
}
    7885:	5d                   	pop    %rbp
    7886:	c3                   	ret

0000000000007887 <_Z13yylex_destroyv>:

/* yylex_destroy is for both reentrant and non-reentrant scanners. */
int yylex_destroy  (void)
{
    7887:	55                   	push   %rbp
    7888:	48 89 e5             	mov    %rsp,%rbp
    
    /* Pop the buffer stack, destroying each element. */
	while(YY_CURRENT_BUFFER){
    788b:	eb 54                	jmp    78e1 <_Z13yylex_destroyv+0x5a>
		yy_delete_buffer( YY_CURRENT_BUFFER  );
    788d:	48 8b 05 ac ab 00 00 	mov    0xabac(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    7894:	48 85 c0             	test   %rax,%rax
    7897:	74 1a                	je     78b3 <_Z13yylex_destroyv+0x2c>
    7899:	48 8b 05 a0 ab 00 00 	mov    0xaba0(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    78a0:	48 8b 15 89 ab 00 00 	mov    0xab89(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    78a7:	48 c1 e2 03          	shl    $0x3,%rdx
    78ab:	48 01 d0             	add    %rdx,%rax
    78ae:	48 8b 00             	mov    (%rax),%rax
    78b1:	eb 05                	jmp    78b8 <_Z13yylex_destroyv+0x31>
    78b3:	b8 00 00 00 00       	mov    $0x0,%eax
    78b8:	48 89 c7             	mov    %rax,%rdi
    78bb:	e8 72 f7 ff ff       	call   7032 <_Z16yy_delete_bufferP15yy_buffer_state>
		YY_CURRENT_BUFFER_LVALUE = NULL;
    78c0:	48 8b 05 79 ab 00 00 	mov    0xab79(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    78c7:	48 8b 15 62 ab 00 00 	mov    0xab62(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    78ce:	48 c1 e2 03          	shl    $0x3,%rdx
    78d2:	48 01 d0             	add    %rdx,%rax
    78d5:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
		yypop_buffer_state();
    78dc:	e8 4d fa ff ff       	call   732e <_Z18yypop_buffer_statev>
	while(YY_CURRENT_BUFFER){
    78e1:	48 8b 05 58 ab 00 00 	mov    0xab58(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    78e8:	48 85 c0             	test   %rax,%rax
    78eb:	74 1a                	je     7907 <_Z13yylex_destroyv+0x80>
    78ed:	48 8b 05 4c ab 00 00 	mov    0xab4c(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    78f4:	48 8b 15 35 ab 00 00 	mov    0xab35(%rip),%rdx        # 12430 <_ZL19yy_buffer_stack_top>
    78fb:	48 c1 e2 03          	shl    $0x3,%rdx
    78ff:	48 01 d0             	add    %rdx,%rax
    7902:	48 8b 00             	mov    (%rax),%rax
    7905:	eb 05                	jmp    790c <_Z13yylex_destroyv+0x85>
    7907:	b8 00 00 00 00       	mov    $0x0,%eax
    790c:	48 85 c0             	test   %rax,%rax
    790f:	0f 85 78 ff ff ff    	jne    788d <_Z13yylex_destroyv+0x6>
	}

	/* Destroy the stack itself. */
	yyfree((yy_buffer_stack) );
    7915:	48 8b 05 24 ab 00 00 	mov    0xab24(%rip),%rax        # 12440 <_ZL15yy_buffer_stack>
    791c:	48 89 c7             	mov    %rax,%rdi
    791f:	e8 56 00 00 00       	call   797a <_Z6yyfreePv>
	(yy_buffer_stack) = NULL;
    7924:	48 c7 05 11 ab 00 00 	movq   $0x0,0xab11(%rip)        # 12440 <_ZL15yy_buffer_stack>
    792b:	00 00 00 00 

    /* Reset the globals. This is important in a non-reentrant scanner so the next time
     * yylex() is called, initialization will occur. */
    yy_init_globals( );
    792f:	e8 f2 fe ff ff       	call   7826 <_ZL15yy_init_globalsv>

    return 0;
    7934:	b8 00 00 00 00       	mov    $0x0,%eax
}
    7939:	5d                   	pop    %rbp
    793a:	c3                   	ret

000000000000793b <_Z7yyallocm>:
	return n;
}
#endif

void *yyalloc (yy_size_t  size )
{
    793b:	55                   	push   %rbp
    793c:	48 89 e5             	mov    %rsp,%rbp
    793f:	48 83 ec 10          	sub    $0x10,%rsp
    7943:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
			return malloc(size);
    7947:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    794b:	48 89 c7             	mov    %rax,%rdi
    794e:	e8 ad c8 ff ff       	call   4200 <malloc@plt>
}
    7953:	c9                   	leave
    7954:	c3                   	ret

0000000000007955 <_Z9yyreallocPvm>:

void *yyrealloc  (void * ptr, yy_size_t  size )
{
    7955:	55                   	push   %rbp
    7956:	48 89 e5             	mov    %rsp,%rbp
    7959:	48 83 ec 10          	sub    $0x10,%rsp
    795d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7961:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	 * that use void* generic pointers.  It works with the latter
	 * because both ANSI C and C++ allow castless assignment from
	 * any pointer type to void*, and deal with argument conversions
	 * as though doing an assignment.
	 */
	return realloc(ptr, size);
    7965:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    7969:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    796d:	48 89 d6             	mov    %rdx,%rsi
    7970:	48 89 c7             	mov    %rax,%rdi
    7973:	e8 38 c9 ff ff       	call   42b0 <realloc@plt>
}
    7978:	c9                   	leave
    7979:	c3                   	ret

000000000000797a <_Z6yyfreePv>:

void yyfree (void * ptr )
{
    797a:	55                   	push   %rbp
    797b:	48 89 e5             	mov    %rsp,%rbp
    797e:	48 83 ec 10          	sub    $0x10,%rsp
    7982:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
			free( (char *) ptr );	/* see yyrealloc() for (char *) cast */
    7986:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    798a:	48 89 c7             	mov    %rax,%rdi
    798d:	e8 3e c8 ff ff       	call   41d0 <free@plt>
}
    7992:	90                   	nop
    7993:	c9                   	leave
    7994:	c3                   	ret

0000000000007995 <_Z41__static_initialization_and_destruction_0ii>:
    7995:	55                   	push   %rbp
    7996:	48 89 e5             	mov    %rsp,%rbp
    7999:	48 83 ec 10          	sub    $0x10,%rsp
    799d:	89 7d fc             	mov    %edi,-0x4(%rbp)
    79a0:	89 75 f8             	mov    %esi,-0x8(%rbp)
    79a3:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    79a7:	75 6d                	jne    7a16 <_Z41__static_initialization_and_destruction_0ii+0x81>
    79a9:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    79b0:	75 64                	jne    7a16 <_Z41__static_initialization_and_destruction_0ii+0x81>
    79b2:	48 8d 05 b7 aa 00 00 	lea    0xaab7(%rip),%rax        # 12470 <_ZStL8__ioinit>
    79b9:	48 89 c7             	mov    %rax,%rdi
    79bc:	e8 af c8 ff ff       	call   4270 <_ZNSt8ios_base4InitC1Ev@plt>
    79c1:	48 8d 05 c0 a7 00 00 	lea    0xa7c0(%rip),%rax        # 12188 <__dso_handle>
    79c8:	48 89 c2             	mov    %rax,%rdx
    79cb:	48 8d 05 9e aa 00 00 	lea    0xaa9e(%rip),%rax        # 12470 <_ZStL8__ioinit>
    79d2:	48 89 c6             	mov    %rax,%rsi
    79d5:	48 8b 05 fc a5 00 00 	mov    0xa5fc(%rip),%rax        # 11fd8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    79dc:	48 89 c7             	mov    %rax,%rdi
    79df:	e8 2c c7 ff ff       	call   4110 <__cxa_atexit@plt>
	std::string token_output;
    79e4:	48 8d 05 15 aa 00 00 	lea    0xaa15(%rip),%rax        # 12400 <_Z12token_outputB5cxx11>
    79eb:	48 89 c7             	mov    %rax,%rdi
    79ee:	e8 ef ce ff ff       	call   48e2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    79f3:	48 8d 05 8e a7 00 00 	lea    0xa78e(%rip),%rax        # 12188 <__dso_handle>
    79fa:	48 89 c2             	mov    %rax,%rdx
    79fd:	48 8d 05 fc a9 00 00 	lea    0xa9fc(%rip),%rax        # 12400 <_Z12token_outputB5cxx11>
    7a04:	48 89 c6             	mov    %rax,%rsi
    7a07:	48 8d 05 48 d1 ff ff 	lea    -0x2eb8(%rip),%rax        # 4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7a0e:	48 89 c7             	mov    %rax,%rdi
    7a11:	e8 fa c6 ff ff       	call   4110 <__cxa_atexit@plt>
    7a16:	90                   	nop
    7a17:	c9                   	leave
    7a18:	c3                   	ret

0000000000007a19 <_GLOBAL__sub_I_yyleng>:
    7a19:	55                   	push   %rbp
    7a1a:	48 89 e5             	mov    %rsp,%rbp
    7a1d:	be ff ff 00 00       	mov    $0xffff,%esi
    7a22:	bf 01 00 00 00       	mov    $0x1,%edi
    7a27:	e8 69 ff ff ff       	call   7995 <_Z41__static_initialization_and_destruction_0ii>
    7a2c:	5d                   	pop    %rbp
    7a2d:	c3                   	ret

0000000000007a2e <_ZNSt11char_traitsIcE4moveEPcPKcm>:
      move(char_type* __s1, const char_type* __s2, size_t __n)
    7a2e:	55                   	push   %rbp
    7a2f:	48 89 e5             	mov    %rsp,%rbp
    7a32:	48 83 ec 20          	sub    $0x20,%rsp
    7a36:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7a3a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7a3e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n == 0)
    7a42:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    7a47:	75 06                	jne    7a4f <_ZNSt11char_traitsIcE4moveEPcPKcm+0x21>
	  return __s1;
    7a49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7a4d:	eb 3a                	jmp    7a89 <_ZNSt11char_traitsIcE4moveEPcPKcm+0x5b>
	if (std::__is_constant_evaluated())
    7a4f:	e8 65 cd ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    7a54:	84 c0                	test   %al,%al
    7a56:	74 19                	je     7a71 <_ZNSt11char_traitsIcE4moveEPcPKcm+0x43>
	  return __gnu_cxx::char_traits<char_type>::move(__s1, __s2, __n);
    7a58:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7a5c:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    7a60:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7a64:	48 89 ce             	mov    %rcx,%rsi
    7a67:	48 89 c7             	mov    %rax,%rdi
    7a6a:	e8 7b 03 00 00       	call   7dea <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm>
    7a6f:	eb 18                	jmp    7a89 <_ZNSt11char_traitsIcE4moveEPcPKcm+0x5b>
	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
    7a71:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7a75:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    7a79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7a7d:	48 89 ce             	mov    %rcx,%rsi
    7a80:	48 89 c7             	mov    %rax,%rdi
    7a83:	e8 08 c8 ff ff       	call   4290 <memmove@plt>
    7a88:	90                   	nop
      }
    7a89:	c9                   	leave
    7a8a:	c3                   	ret

0000000000007a8b <_ZNSt11char_traitsIcE6assignEPcmc>:

      static _GLIBCXX20_CONSTEXPR char_type*
      assign(char_type* __s, size_t __n, char_type __a)
    7a8b:	55                   	push   %rbp
    7a8c:	48 89 e5             	mov    %rsp,%rbp
    7a8f:	48 83 ec 20          	sub    $0x20,%rsp
    7a93:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7a97:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7a9b:	89 d0                	mov    %edx,%eax
    7a9d:	88 45 ec             	mov    %al,-0x14(%rbp)
      {
	if (__n == 0)
    7aa0:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    7aa5:	75 06                	jne    7aad <_ZNSt11char_traitsIcE6assignEPcmc+0x22>
	  return __s;
    7aa7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7aab:	eb 39                	jmp    7ae6 <_ZNSt11char_traitsIcE6assignEPcmc+0x5b>
#if __cplusplus >= 202002L
	if (std::__is_constant_evaluated())
    7aad:	e8 07 cd ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    7ab2:	84 c0                	test   %al,%al
    7ab4:	74 19                	je     7acf <_ZNSt11char_traitsIcE6assignEPcmc+0x44>
	  return __gnu_cxx::char_traits<char_type>::assign(__s, __n, __a);
    7ab6:	0f be 55 ec          	movsbl -0x14(%rbp),%edx
    7aba:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    7abe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7ac2:	48 89 ce             	mov    %rcx,%rsi
    7ac5:	48 89 c7             	mov    %rax,%rdi
    7ac8:	e8 cf 03 00 00       	call   7e9c <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc>
    7acd:	eb 17                	jmp    7ae6 <_ZNSt11char_traitsIcE6assignEPcmc+0x5b>
#endif
	return static_cast<char_type*>(__builtin_memset(__s, __a, __n));
    7acf:	0f be 4d ec          	movsbl -0x14(%rbp),%ecx
    7ad3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    7ad7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7adb:	89 ce                	mov    %ecx,%esi
    7add:	48 89 c7             	mov    %rax,%rdi
    7ae0:	e8 db c5 ff ff       	call   40c0 <memset@plt>
    7ae5:	90                   	nop
      }
    7ae6:	c9                   	leave
    7ae7:	c3                   	ret

0000000000007ae8 <_ZNSt7__cxx119to_stringEi>:
  inline string
  to_string(int __val)
#if _GLIBCXX_USE_CXX11_ABI && (__CHAR_BIT__ * __SIZEOF_INT__) <= 32
  noexcept // any 32-bit value fits in the SSO buffer
#endif
  {
    7ae8:	55                   	push   %rbp
    7ae9:	48 89 e5             	mov    %rsp,%rbp
    7aec:	48 83 ec 20          	sub    $0x20,%rsp
    7af0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7af4:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    const bool __neg = __val < 0;
    7af7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    7afa:	c1 e8 1f             	shr    $0x1f,%eax
    7afd:	88 45 ff             	mov    %al,-0x1(%rbp)
    const unsigned __uval = __neg ? (unsigned)~__val + 1u : __val;
    7b00:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
    7b04:	74 07                	je     7b0d <_ZNSt7__cxx119to_stringEi+0x25>
    7b06:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    7b09:	f7 d8                	neg    %eax
    7b0b:	eb 03                	jmp    7b10 <_ZNSt7__cxx119to_stringEi+0x28>
    7b0d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    7b10:	89 45 f8             	mov    %eax,-0x8(%rbp)
    const auto __len = __detail::__to_chars_len(__uval);
    7b13:	8b 45 f8             	mov    -0x8(%rbp),%eax
    7b16:	be 0a 00 00 00       	mov    $0xa,%esi
    7b1b:	89 c7                	mov    %eax,%edi
    7b1d:	e8 f7 03 00 00       	call   7f19 <_ZNSt8__detail14__to_chars_lenIjEEjT_i>
    7b22:	89 45 f4             	mov    %eax,-0xc(%rbp)
    string __str(__neg + __len, '-');
    7b25:	48 8d 45 f3          	lea    -0xd(%rbp),%rax
    7b29:	48 89 c7             	mov    %rax,%rdi
    7b2c:	e8 bf c7 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    7b31:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    7b35:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7b38:	01 d0                	add    %edx,%eax
    7b3a:	89 c6                	mov    %eax,%esi
    7b3c:	48 8d 55 f3          	lea    -0xd(%rbp),%rdx
    7b40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7b44:	48 89 d1             	mov    %rdx,%rcx
    7b47:	ba 2d 00 00 00       	mov    $0x2d,%edx
    7b4c:	48 89 c7             	mov    %rax,%rdi
    7b4f:	e8 4e 04 00 00       	call   7fa2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_>
    7b54:	48 8d 45 f3          	lea    -0xd(%rbp),%rax
    7b58:	48 89 c7             	mov    %rax,%rdi
    7b5b:	e8 40 c6 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    __detail::__to_chars_10_impl(&__str[__neg], __len, __uval);
    7b60:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
    7b64:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7b68:	48 89 d6             	mov    %rdx,%rsi
    7b6b:	48 89 c7             	mov    %rax,%rdi
    7b6e:	e8 a7 04 00 00       	call   801a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm>
    7b73:	48 89 c1             	mov    %rax,%rcx
    7b76:	8b 55 f8             	mov    -0x8(%rbp),%edx
    7b79:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7b7c:	89 c6                	mov    %eax,%esi
    7b7e:	48 89 cf             	mov    %rcx,%rdi
    7b81:	e8 e2 04 00 00       	call   8068 <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_>
    return __str;
    7b86:	90                   	nop
  }
    7b87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7b8b:	c9                   	leave
    7b8c:	c3                   	ret

0000000000007b8d <_Z18display_token_infoPKcS0_RKi>:
	inline void display_token_info(const char* a, const char* yytext, const int& yylineno) {
    7b8d:	55                   	push   %rbp
    7b8e:	48 89 e5             	mov    %rsp,%rbp
    7b91:	53                   	push   %rbx
    7b92:	48 81 ec 38 01 00 00 	sub    $0x138,%rsp
    7b99:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    7ba0:	48 89 b5 d0 fe ff ff 	mov    %rsi,-0x130(%rbp)
    7ba7:	48 89 95 c8 fe ff ff 	mov    %rdx,-0x138(%rbp)
		token_output += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(yylineno) + "\n";
    7bae:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    7bb5:	8b 10                	mov    (%rax),%edx
    7bb7:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    7bbe:	89 d6                	mov    %edx,%esi
    7bc0:	48 89 c7             	mov    %rax,%rdi
    7bc3:	e8 20 ff ff ff       	call   7ae8 <_ZNSt7__cxx119to_stringEi>
    7bc8:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    7bcc:	48 89 c7             	mov    %rax,%rdi
    7bcf:	e8 1c c7 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    7bd4:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
    7bd8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    7bdc:	48 8d 0d d9 49 00 00 	lea    0x49d9(%rip),%rcx        # c5bc <_ZL6yy_chk+0xdc>
    7be3:	48 89 ce             	mov    %rcx,%rsi
    7be6:	48 89 c7             	mov    %rax,%rdi
    7be9:	e8 b4 d0 ff ff       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    7bee:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    7bf2:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
    7bf9:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    7bfd:	48 89 ce             	mov    %rcx,%rsi
    7c00:	48 89 c7             	mov    %rax,%rdi
    7c03:	e8 3a d1 ff ff       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    7c08:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    7c0c:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    7c10:	48 8d 15 b3 49 00 00 	lea    0x49b3(%rip),%rdx        # c5ca <_ZL6yy_chk+0xea>
    7c17:	48 89 ce             	mov    %rcx,%rsi
    7c1a:	48 89 c7             	mov    %rax,%rdi
    7c1d:	e8 20 d1 ff ff       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    7c22:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    7c29:	48 8b 95 d0 fe ff ff 	mov    -0x130(%rbp),%rdx
    7c30:	48 8d 4d 80          	lea    -0x80(%rbp),%rcx
    7c34:	48 89 ce             	mov    %rcx,%rsi
    7c37:	48 89 c7             	mov    %rax,%rdi
    7c3a:	e8 03 d1 ff ff       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    7c3f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    7c46:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
    7c4d:	48 8d 15 81 49 00 00 	lea    0x4981(%rip),%rdx        # c5d5 <_ZL6yy_chk+0xf5>
    7c54:	48 89 ce             	mov    %rcx,%rsi
    7c57:	48 89 c7             	mov    %rax,%rdi
    7c5a:	e8 e3 d0 ff ff       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    7c5f:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    7c66:	48 8d 95 20 ff ff ff 	lea    -0xe0(%rbp),%rdx
    7c6d:	48 8d 8d 40 ff ff ff 	lea    -0xc0(%rbp),%rcx
    7c74:	48 89 ce             	mov    %rcx,%rsi
    7c77:	48 89 c7             	mov    %rax,%rdi
    7c7a:	e8 d1 04 00 00       	call   8150 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
    7c7f:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    7c86:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
    7c8d:	48 8d 15 4d 49 00 00 	lea    0x494d(%rip),%rdx        # c5e1 <_ZL6yy_chk+0x101>
    7c94:	48 89 ce             	mov    %rcx,%rsi
    7c97:	48 89 c7             	mov    %rax,%rdi
    7c9a:	e8 a3 d0 ff ff       	call   4d42 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
    7c9f:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    7ca6:	48 89 c6             	mov    %rax,%rsi
    7ca9:	48 8d 05 50 a7 00 00 	lea    0xa750(%rip),%rax        # 12400 <_Z12token_outputB5cxx11>
    7cb0:	48 89 c7             	mov    %rax,%rdi
    7cb3:	e8 d2 d0 ff ff       	call   4d8a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>
    7cb8:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    7cbf:	48 89 c7             	mov    %rax,%rdi
    7cc2:	e8 8f ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7cc7:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    7cce:	48 89 c7             	mov    %rax,%rdi
    7cd1:	e8 80 ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7cd6:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    7cdd:	48 89 c7             	mov    %rax,%rdi
    7ce0:	e8 71 ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7ce5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    7cec:	48 89 c7             	mov    %rax,%rdi
    7cef:	e8 62 ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7cf4:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    7cf8:	48 89 c7             	mov    %rax,%rdi
    7cfb:	e8 56 ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d00:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    7d04:	48 89 c7             	mov    %rax,%rdi
    7d07:	e8 4a ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d0c:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    7d10:	48 89 c7             	mov    %rax,%rdi
    7d13:	e8 3e ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d18:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    7d1c:	48 89 c7             	mov    %rax,%rdi
    7d1f:	e8 7c c4 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    7d24:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    7d2b:	48 89 c7             	mov    %rax,%rdi
    7d2e:	e8 23 ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
	}
    7d33:	e9 ac 00 00 00       	jmp    7de4 <_Z18display_token_infoPKcS0_RKi+0x257>
		token_output += std::string("\tToken Name: ") + a + " \tLexeme: " + yytext + " \t Lineno: " + std::to_string(yylineno) + "\n";
    7d38:	48 89 c3             	mov    %rax,%rbx
    7d3b:	48 8d 85 e0 fe ff ff 	lea    -0x120(%rbp),%rax
    7d42:	48 89 c7             	mov    %rax,%rdi
    7d45:	e8 0c ce ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d4a:	eb 03                	jmp    7d4f <_Z18display_token_infoPKcS0_RKi+0x1c2>
    7d4c:	48 89 c3             	mov    %rax,%rbx
    7d4f:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    7d56:	48 89 c7             	mov    %rax,%rdi
    7d59:	e8 f8 cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d5e:	eb 03                	jmp    7d63 <_Z18display_token_infoPKcS0_RKi+0x1d6>
    7d60:	48 89 c3             	mov    %rax,%rbx
    7d63:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
    7d6a:	48 89 c7             	mov    %rax,%rdi
    7d6d:	e8 e4 cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d72:	eb 03                	jmp    7d77 <_Z18display_token_infoPKcS0_RKi+0x1ea>
    7d74:	48 89 c3             	mov    %rax,%rbx
    7d77:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    7d7e:	48 89 c7             	mov    %rax,%rdi
    7d81:	e8 d0 cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d86:	eb 03                	jmp    7d8b <_Z18display_token_infoPKcS0_RKi+0x1fe>
    7d88:	48 89 c3             	mov    %rax,%rbx
    7d8b:	48 8d 45 80          	lea    -0x80(%rbp),%rax
    7d8f:	48 89 c7             	mov    %rax,%rdi
    7d92:	e8 bf cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7d97:	eb 03                	jmp    7d9c <_Z18display_token_infoPKcS0_RKi+0x20f>
    7d99:	48 89 c3             	mov    %rax,%rbx
    7d9c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    7da0:	48 89 c7             	mov    %rax,%rdi
    7da3:	e8 ae cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7da8:	eb 03                	jmp    7dad <_Z18display_token_infoPKcS0_RKi+0x220>
    7daa:	48 89 c3             	mov    %rax,%rbx
    7dad:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    7db1:	48 89 c7             	mov    %rax,%rdi
    7db4:	e8 9d cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7db9:	eb 03                	jmp    7dbe <_Z18display_token_infoPKcS0_RKi+0x231>
    7dbb:	48 89 c3             	mov    %rax,%rbx
    7dbe:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    7dc2:	48 89 c7             	mov    %rax,%rdi
    7dc5:	e8 d6 c3 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    7dca:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    7dd1:	48 89 c7             	mov    %rax,%rdi
    7dd4:	e8 7d cd ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    7dd9:	48 89 d8             	mov    %rbx,%rax
    7ddc:	48 89 c7             	mov    %rax,%rdi
    7ddf:	e8 fc c4 ff ff       	call   42e0 <_Unwind_Resume@plt>
	}
    7de4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7de8:	c9                   	leave
    7de9:	c3                   	ret

0000000000007dea <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm>:
    char_traits<_CharT>::
    7dea:	55                   	push   %rbp
    7deb:	48 89 e5             	mov    %rsp,%rbp
    7dee:	48 83 ec 30          	sub    $0x30,%rsp
    7df2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7df6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7dfa:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      if (__n == 0)
    7dfe:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    7e03:	75 09                	jne    7e0e <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0x24>
	return __s1;
    7e05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e09:	e9 8b 00 00 00       	jmp    7e99 <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0xaf>
      if (std::__is_constant_evaluated())
    7e0e:	e8 a6 c9 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    7e13:	84 c0                	test   %al,%al
    7e15:	74 67                	je     7e7e <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0x94>
	  if (__s1 == __s2) // unlikely, but saves a lot of work
    7e17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e1b:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    7e1f:	75 06                	jne    7e27 <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0x3d>
	    return __s1;
    7e21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e25:	eb 72                	jmp    7e99 <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0xaf>
	  char_type* __tmp = new char_type[__n];
    7e27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7e2b:	48 89 c7             	mov    %rax,%rdi
    7e2e:	e8 fd c1 ff ff       	call   4030 <_Znam@plt>
    7e33:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  copy(__tmp, __s2, __n);
    7e37:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7e3b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7e3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7e43:	48 89 ce             	mov    %rcx,%rsi
    7e46:	48 89 c7             	mov    %rax,%rdi
    7e49:	e8 88 cc ff ff       	call   4ad6 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm>
	  copy(__s1, __tmp, __n);
    7e4e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7e52:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    7e56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e5a:	48 89 ce             	mov    %rcx,%rsi
    7e5d:	48 89 c7             	mov    %rax,%rdi
    7e60:	e8 71 cc ff ff       	call   4ad6 <_ZN9__gnu_cxx11char_traitsIcE4copyEPcPKcm>
	  delete[] __tmp;
    7e65:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7e6a:	74 0c                	je     7e78 <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0x8e>
    7e6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7e70:	48 89 c7             	mov    %rax,%rdi
    7e73:	e8 78 c3 ff ff       	call   41f0 <_ZdaPv@plt>
	  return __s1;
    7e78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e7c:	eb 1b                	jmp    7e99 <_ZN9__gnu_cxx11char_traitsIcE4moveEPcPKcm+0xaf>
      __builtin_memmove(__s1, __s2, __n * sizeof(char_type));
    7e7e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7e82:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7e86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e8a:	48 89 ce             	mov    %rcx,%rsi
    7e8d:	48 89 c7             	mov    %rax,%rdi
    7e90:	e8 fb c3 ff ff       	call   4290 <memmove@plt>
      return __s1;
    7e95:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    }
    7e99:	c9                   	leave
    7e9a:	c3                   	ret
    7e9b:	90                   	nop

0000000000007e9c <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc>:
    char_traits<_CharT>::
    7e9c:	55                   	push   %rbp
    7e9d:	48 89 e5             	mov    %rsp,%rbp
    7ea0:	48 83 ec 30          	sub    $0x30,%rsp
    7ea4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7ea8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7eac:	89 d0                	mov    %edx,%eax
    7eae:	88 45 dc             	mov    %al,-0x24(%rbp)
      if (std::__is_constant_evaluated())
    7eb1:	e8 03 c9 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    7eb6:	84 c0                	test   %al,%al
    7eb8:	74 39                	je     7ef3 <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc+0x57>
	  for (std::size_t __i = 0; __i < __n; ++__i)
    7eba:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    7ec1:	00 
    7ec2:	eb 1f                	jmp    7ee3 <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc+0x47>
	    std::construct_at(__s + __i, __a);
    7ec4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7ec8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7ecc:	48 01 c2             	add    %rax,%rdx
    7ecf:	48 8d 45 dc          	lea    -0x24(%rbp),%rax
    7ed3:	48 89 c6             	mov    %rax,%rsi
    7ed6:	48 89 d7             	mov    %rdx,%rdi
    7ed9:	e8 57 03 00 00       	call   8235 <_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_>
	  for (std::size_t __i = 0; __i < __n; ++__i)
    7ede:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    7ee3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7ee7:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    7eeb:	72 d7                	jb     7ec4 <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc+0x28>
	  return __s;
    7eed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7ef1:	eb 24                	jmp    7f17 <_ZN9__gnu_cxx11char_traitsIcE6assignEPcmc+0x7b>
	  __builtin_memcpy(&__c, __builtin_addressof(__a), 1);
    7ef3:	0f b6 45 dc          	movzbl -0x24(%rbp),%eax
    7ef7:	88 45 f7             	mov    %al,-0x9(%rbp)
	  __builtin_memset(__s, __c, __n);
    7efa:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    7efe:	0f b6 c8             	movzbl %al,%ecx
    7f01:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7f05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7f09:	89 ce                	mov    %ecx,%esi
    7f0b:	48 89 c7             	mov    %rax,%rdi
    7f0e:	e8 ad c1 ff ff       	call   40c0 <memset@plt>
      return __s;
    7f13:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    }
    7f17:	c9                   	leave
    7f18:	c3                   	ret

0000000000007f19 <_ZNSt8__detail14__to_chars_lenIjEEjT_i>:
namespace __detail
{
  // Generic implementation for arbitrary bases.
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR unsigned
    __to_chars_len(_Tp __value, int __base = 10) noexcept
    7f19:	55                   	push   %rbp
    7f1a:	48 89 e5             	mov    %rsp,%rbp
    7f1d:	89 7d dc             	mov    %edi,-0x24(%rbp)
    7f20:	89 75 d8             	mov    %esi,-0x28(%rbp)
    {
      static_assert(is_integral<_Tp>::value, "implementation bug");
      static_assert(is_unsigned<_Tp>::value, "implementation bug");

      unsigned __n = 1;
    7f23:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
      const unsigned __b2 = __base  * __base;
    7f2a:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7f2d:	0f af c0             	imul   %eax,%eax
    7f30:	89 45 f8             	mov    %eax,-0x8(%rbp)
      const unsigned __b3 = __b2 * __base;
    7f33:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7f36:	8b 55 f8             	mov    -0x8(%rbp),%edx
    7f39:	0f af c2             	imul   %edx,%eax
    7f3c:	89 45 f4             	mov    %eax,-0xc(%rbp)
      const unsigned long __b4 = __b3 * __base;
    7f3f:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7f42:	0f af 45 f4          	imul   -0xc(%rbp),%eax
    7f46:	89 c0                	mov    %eax,%eax
    7f48:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      for (;;)
	{
	  if (__value < (unsigned)__base) return __n;
    7f4c:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7f4f:	39 45 dc             	cmp    %eax,-0x24(%rbp)
    7f52:	73 05                	jae    7f59 <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x40>
    7f54:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f57:	eb 46                	jmp    7f9f <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x86>
	  if (__value < __b2) return __n + 1;
    7f59:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7f5c:	3b 45 f8             	cmp    -0x8(%rbp),%eax
    7f5f:	73 08                	jae    7f69 <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x50>
    7f61:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f64:	83 c0 01             	add    $0x1,%eax
    7f67:	eb 36                	jmp    7f9f <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x86>
	  if (__value < __b3) return __n + 2;
    7f69:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7f6c:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    7f6f:	73 08                	jae    7f79 <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x60>
    7f71:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f74:	83 c0 02             	add    $0x2,%eax
    7f77:	eb 26                	jmp    7f9f <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x86>
	  if (__value < __b4) return __n + 3;
    7f79:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7f7c:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    7f80:	73 08                	jae    7f8a <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x71>
    7f82:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7f85:	83 c0 03             	add    $0x3,%eax
    7f88:	eb 15                	jmp    7f9f <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x86>
	  __value /= __b4;
    7f8a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7f8d:	ba 00 00 00 00       	mov    $0x0,%edx
    7f92:	48 f7 75 e8          	divq   -0x18(%rbp)
    7f96:	89 45 dc             	mov    %eax,-0x24(%rbp)
	  __n += 4;
    7f99:	83 45 fc 04          	addl   $0x4,-0x4(%rbp)
	  if (__value < (unsigned)__base) return __n;
    7f9d:	eb ad                	jmp    7f4c <_ZNSt8__detail14__to_chars_lenIjEEjT_i+0x33>
	}
    }
    7f9f:	5d                   	pop    %rbp
    7fa0:	c3                   	ret
    7fa1:	90                   	nop

0000000000007fa2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_>:
      basic_string(size_type __n, _CharT __c, const _Alloc& __a = _Alloc())
    7fa2:	55                   	push   %rbp
    7fa3:	48 89 e5             	mov    %rsp,%rbp
    7fa6:	53                   	push   %rbx
    7fa7:	48 83 ec 28          	sub    $0x28,%rsp
    7fab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7faf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7fb3:	89 d0                	mov    %edx,%eax
    7fb5:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    7fb9:	88 45 dc             	mov    %al,-0x24(%rbp)
      : _M_dataplus(_M_local_data(), __a)
    7fbc:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    7fc0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7fc4:	48 89 c7             	mov    %rax,%rdi
    7fc7:	e8 d6 c9 ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    7fcc:	48 89 c1             	mov    %rax,%rcx
    7fcf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7fd3:	48 89 c2             	mov    %rax,%rdx
    7fd6:	48 89 ce             	mov    %rcx,%rsi
    7fd9:	48 89 df             	mov    %rbx,%rdi
    7fdc:	e8 5d ce ff ff       	call   4e3e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
      { _M_construct(__n, __c); }
    7fe1:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    7fe5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7fe9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7fed:	48 89 ce             	mov    %rcx,%rsi
    7ff0:	48 89 c7             	mov    %rax,%rdi
    7ff3:	e8 7c 02 00 00       	call   8274 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc>
    7ff8:	eb 1a                	jmp    8014 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEmcRKS3_+0x72>
    7ffa:	48 89 c3             	mov    %rax,%rbx
    7ffd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8001:	48 89 c7             	mov    %rax,%rdi
    8004:	e8 bd c8 ff ff       	call   48c6 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
    8009:	48 89 d8             	mov    %rbx,%rax
    800c:	48 89 c7             	mov    %rax,%rdi
    800f:	e8 cc c2 ff ff       	call   42e0 <_Unwind_Resume@plt>
    8014:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8018:	c9                   	leave
    8019:	c3                   	ret

000000000000801a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm>:
      operator[](size_type __pos)
    801a:	55                   	push   %rbp
    801b:	48 89 e5             	mov    %rsp,%rbp
    801e:	48 83 ec 10          	sub    $0x10,%rsp
    8022:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8026:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	__glibcxx_assert(__pos <= size());
    802a:	e8 8a c7 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    802f:	84 c0                	test   %al,%al
    8031:	74 19                	je     804c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm+0x32>
    8033:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8037:	48 89 c7             	mov    %rax,%rdi
    803a:	e8 75 c8 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    803f:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    8043:	73 07                	jae    804c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm+0x32>
    8045:	b8 01 00 00 00       	mov    $0x1,%eax
    804a:	eb 05                	jmp    8051 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm+0x37>
    804c:	b8 00 00 00 00       	mov    $0x0,%eax
    8051:	84 c0                	test   %al,%al
	return _M_data()[__pos];
    8053:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8057:	48 89 c7             	mov    %rax,%rdi
    805a:	e8 cd cd ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    805f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    8063:	48 01 d0             	add    %rdx,%rax
      }
    8066:	c9                   	leave
    8067:	c3                   	ret

0000000000008068 <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_>:
  // Write an unsigned integer value to the range [first,first+len).
  // The caller is required to provide a buffer of exactly the right size
  // (which can be determined by the __to_chars_len function).
  template<typename _Tp>
    void
    __to_chars_10_impl(char* __first, unsigned __len, _Tp __val) noexcept
    8068:	55                   	push   %rbp
    8069:	48 89 e5             	mov    %rsp,%rbp
    806c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8070:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    8073:	89 55 e0             	mov    %edx,-0x20(%rbp)
	"0001020304050607080910111213141516171819"
	"2021222324252627282930313233343536373839"
	"4041424344454647484950515253545556575859"
	"6061626364656667686970717273747576777879"
	"8081828384858687888990919293949596979899";
      unsigned __pos = __len - 1;
    8076:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    8079:	83 e8 01             	sub    $0x1,%eax
    807c:	89 45 fc             	mov    %eax,-0x4(%rbp)
      while (__val >= 100)
    807f:	eb 77                	jmp    80f8 <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_+0x90>
	{
	  auto const __num = (__val % 100) * 2;
    8081:	8b 4d e0             	mov    -0x20(%rbp),%ecx
    8084:	89 c8                	mov    %ecx,%eax
    8086:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
    808d:	48 c1 e8 20          	shr    $0x20,%rax
    8091:	c1 e8 05             	shr    $0x5,%eax
    8094:	6b d0 64             	imul   $0x64,%eax,%edx
    8097:	89 c8                	mov    %ecx,%eax
    8099:	29 d0                	sub    %edx,%eax
    809b:	01 c0                	add    %eax,%eax
    809d:	89 45 f4             	mov    %eax,-0xc(%rbp)
	  __val /= 100;
    80a0:	8b 45 e0             	mov    -0x20(%rbp),%eax
    80a3:	89 c0                	mov    %eax,%eax
    80a5:	48 69 c0 1f 85 eb 51 	imul   $0x51eb851f,%rax,%rax
    80ac:	48 c1 e8 20          	shr    $0x20,%rax
    80b0:	c1 e8 05             	shr    $0x5,%eax
    80b3:	89 45 e0             	mov    %eax,-0x20(%rbp)
	  __first[__pos] = __digits[__num + 1];
    80b6:	8b 45 f4             	mov    -0xc(%rbp),%eax
    80b9:	8d 48 01             	lea    0x1(%rax),%ecx
    80bc:	8b 55 fc             	mov    -0x4(%rbp),%edx
    80bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    80c3:	48 01 c2             	add    %rax,%rdx
    80c6:	89 c9                	mov    %ecx,%ecx
    80c8:	48 8d 05 51 49 00 00 	lea    0x4951(%rip),%rax        # ca20 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits>
    80cf:	0f b6 04 01          	movzbl (%rcx,%rax,1),%eax
    80d3:	88 02                	mov    %al,(%rdx)
	  __first[__pos - 1] = __digits[__num];
    80d5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    80d8:	83 e8 01             	sub    $0x1,%eax
    80db:	89 c2                	mov    %eax,%edx
    80dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    80e1:	48 01 c2             	add    %rax,%rdx
    80e4:	8b 45 f4             	mov    -0xc(%rbp),%eax
    80e7:	48 8d 0d 32 49 00 00 	lea    0x4932(%rip),%rcx        # ca20 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits>
    80ee:	0f b6 04 08          	movzbl (%rax,%rcx,1),%eax
    80f2:	88 02                	mov    %al,(%rdx)
	  __pos -= 2;
    80f4:	83 6d fc 02          	subl   $0x2,-0x4(%rbp)
      while (__val >= 100)
    80f8:	83 7d e0 63          	cmpl   $0x63,-0x20(%rbp)
    80fc:	77 83                	ja     8081 <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_+0x19>
	}
      if (__val >= 10)
    80fe:	83 7d e0 09          	cmpl   $0x9,-0x20(%rbp)
    8102:	76 3b                	jbe    813f <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_+0xd7>
	{
	  auto const __num = __val * 2;
    8104:	8b 45 e0             	mov    -0x20(%rbp),%eax
    8107:	01 c0                	add    %eax,%eax
    8109:	89 45 f8             	mov    %eax,-0x8(%rbp)
	  __first[1] = __digits[__num + 1];
    810c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    810f:	8d 48 01             	lea    0x1(%rax),%ecx
    8112:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8116:	48 8d 50 01          	lea    0x1(%rax),%rdx
    811a:	89 c9                	mov    %ecx,%ecx
    811c:	48 8d 05 fd 48 00 00 	lea    0x48fd(%rip),%rax        # ca20 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits>
    8123:	0f b6 04 01          	movzbl (%rcx,%rax,1),%eax
    8127:	88 02                	mov    %al,(%rdx)
	  __first[0] = __digits[__num];
    8129:	8b 45 f8             	mov    -0x8(%rbp),%eax
    812c:	48 8d 15 ed 48 00 00 	lea    0x48ed(%rip),%rdx        # ca20 <_ZZNSt8__detail18__to_chars_10_implIjEEvPcjT_E8__digits>
    8133:	0f b6 14 10          	movzbl (%rax,%rdx,1),%edx
    8137:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    813b:	88 10                	mov    %dl,(%rax)
	}
      else
	__first[0] = '0' + __val;
    }
    813d:	eb 0e                	jmp    814d <_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_+0xe5>
	__first[0] = '0' + __val;
    813f:	8b 45 e0             	mov    -0x20(%rbp),%eax
    8142:	83 c0 30             	add    $0x30,%eax
    8145:	89 c2                	mov    %eax,%edx
    8147:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    814b:	88 10                	mov    %dl,(%rax)
    }
    814d:	90                   	nop
    814e:	5d                   	pop    %rbp
    814f:	c3                   	ret

0000000000008150 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>:
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
    8150:	55                   	push   %rbp
    8151:	48 89 e5             	mov    %rsp,%rbp
    8154:	53                   	push   %rbx
    8155:	48 83 ec 38          	sub    $0x38,%rsp
    8159:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    815d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    8161:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      bool __use_rhs = false;
    8165:	c6 45 ef 00          	movb   $0x0,-0x11(%rbp)
	__use_rhs = true;
    8169:	c6 45 ef 01          	movb   $0x1,-0x11(%rbp)
      if (__use_rhs)
    816d:	80 7d ef 00          	cmpb   $0x0,-0x11(%rbp)
    8171:	0f 84 87 00 00 00    	je     81fe <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xae>
	  const auto __size = __lhs.size() + __rhs.size();
    8177:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    817b:	48 89 c7             	mov    %rax,%rdi
    817e:	e8 31 c7 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    8183:	48 89 c3             	mov    %rax,%rbx
    8186:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    818a:	48 89 c7             	mov    %rax,%rdi
    818d:	e8 22 c7 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    8192:	48 01 d8             	add    %rbx,%rax
    8195:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	  if (__size > __lhs.capacity() && __size <= __rhs.capacity())
    8199:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    819d:	48 89 c7             	mov    %rax,%rdi
    81a0:	e8 67 cf ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    81a5:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    81a9:	73 19                	jae    81c4 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x74>
    81ab:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    81af:	48 89 c7             	mov    %rax,%rdi
    81b2:	e8 55 cf ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    81b7:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
    81bb:	72 07                	jb     81c4 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x74>
    81bd:	b8 01 00 00 00       	mov    $0x1,%eax
    81c2:	eb 05                	jmp    81c9 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x79>
    81c4:	b8 00 00 00 00       	mov    $0x0,%eax
    81c9:	84 c0                	test   %al,%al
    81cb:	74 31                	je     81fe <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xae>
	    return std::move(__rhs.insert(0, __lhs));
    81cd:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    81d1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    81d5:	be 00 00 00 00       	mov    $0x0,%esi
    81da:	48 89 c7             	mov    %rax,%rdi
    81dd:	e8 9a 01 00 00       	call   837c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_>
    81e2:	48 89 c7             	mov    %rax,%rdi
    81e5:	e8 4f cf ff ff       	call   5139 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    81ea:	48 89 c2             	mov    %rax,%rdx
    81ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    81f1:	48 89 d6             	mov    %rdx,%rsi
    81f4:	48 89 c7             	mov    %rax,%rdi
    81f7:	e8 82 c9 ff ff       	call   4b7e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
    81fc:	eb 2d                	jmp    822b <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xdb>
      return std::move(__lhs.append(__rhs));
    81fe:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    8202:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8206:	48 89 d6             	mov    %rdx,%rsi
    8209:	48 89 c7             	mov    %rax,%rdi
    820c:	e8 37 cf ff ff       	call   5148 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>
    8211:	48 89 c7             	mov    %rax,%rdi
    8214:	e8 20 cf ff ff       	call   5139 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    8219:	48 89 c2             	mov    %rax,%rdx
    821c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8220:	48 89 d6             	mov    %rdx,%rsi
    8223:	48 89 c7             	mov    %rax,%rdi
    8226:	e8 53 c9 ff ff       	call   4b7e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
    }
    822b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    822f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8233:	c9                   	leave
    8234:	c3                   	ret

0000000000008235 <_ZSt12construct_atIcJRcEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS2_DpOS3_>:
    construct_at(_Tp* __location, _Args&&... __args)
    8235:	55                   	push   %rbp
    8236:	48 89 e5             	mov    %rsp,%rbp
    8239:	53                   	push   %rbx
    823a:	48 83 ec 18          	sub    $0x18,%rsp
    823e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8242:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
    8246:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    824a:	48 89 c6             	mov    %rax,%rsi
    824d:	bf 01 00 00 00       	mov    $0x1,%edi
    8252:	e8 78 c5 ff ff       	call   47cf <_ZnwmPv>
    8257:	48 89 c3             	mov    %rax,%rbx
    825a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    825e:	48 89 c7             	mov    %rax,%rdi
    8261:	e8 6a 01 00 00       	call   83d0 <_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE>
    8266:	0f b6 00             	movzbl (%rax),%eax
    8269:	88 03                	mov    %al,(%rbx)
    826b:	48 89 d8             	mov    %rbx,%rax
    826e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8272:	c9                   	leave
    8273:	c3                   	ret

0000000000008274 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc>:
    basic_string<_CharT, _Traits, _Alloc>::
    8274:	55                   	push   %rbp
    8275:	48 89 e5             	mov    %rsp,%rbp
    8278:	41 54                	push   %r12
    827a:	53                   	push   %rbx
    827b:	48 83 ec 50          	sub    $0x50,%rsp
    827f:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    8283:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    8287:	89 d0                	mov    %edx,%eax
    8289:	88 45 ac             	mov    %al,-0x54(%rbp)
      if (__n > size_type(_S_local_capacity))
    828c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8290:	48 83 f8 0f          	cmp    $0xf,%rax
    8294:	76 3f                	jbe    82d5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0x61>
	  _M_data(_M_create(__n, size_type(0)));
    8296:	48 8d 4d b0          	lea    -0x50(%rbp),%rcx
    829a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    829e:	ba 00 00 00 00       	mov    $0x0,%edx
    82a3:	48 89 ce             	mov    %rcx,%rsi
    82a6:	48 89 c7             	mov    %rax,%rdi
    82a9:	e8 e2 ce ff ff       	call   5190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm>
    82ae:	48 89 c2             	mov    %rax,%rdx
    82b1:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    82b5:	48 89 d6             	mov    %rdx,%rsi
    82b8:	48 89 c7             	mov    %rax,%rdi
    82bb:	e8 30 cc ff ff       	call   4ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	  _M_capacity(__n);
    82c0:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    82c4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    82c8:	48 89 d6             	mov    %rdx,%rsi
    82cb:	48 89 c7             	mov    %rax,%rdi
    82ce:	e8 37 cc ff ff       	call   4f0a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm>
    82d3:	eb 5e                	jmp    8333 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0xbf>
    82d5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    82d9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (std::is_constant_evaluated())
    82dd:	e8 e2 c4 ff ff       	call   47c4 <_ZSt21is_constant_evaluatedv>
    82e2:	84 c0                	test   %al,%al
    82e4:	74 40                	je     8326 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0xb2>
	  for (_CharT& __c : _M_local_buf)
    82e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    82ea:	48 83 c0 10          	add    $0x10,%rax
    82ee:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    82f2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    82f6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    82fa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    82fe:	48 83 c0 10          	add    $0x10,%rax
    8302:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    8306:	eb 14                	jmp    831c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0xa8>
    8308:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    830c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
	    __c = _CharT();
    8310:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8314:	c6 00 00             	movb   $0x0,(%rax)
	  for (_CharT& __c : _M_local_buf)
    8317:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    831c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8320:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    8324:	75 e2                	jne    8308 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0x94>
	return _M_local_data();
    8326:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    832a:	48 89 c7             	mov    %rax,%rdi
    832d:	e8 70 c6 ff ff       	call   49a2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
    8332:	90                   	nop
      if (__n)
    8333:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    8337:	48 85 c0             	test   %rax,%rax
    833a:	74 23                	je     835f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc+0xeb>
	this->_S_assign(_M_data(), __n, __c);
    833c:	44 0f be 65 ac       	movsbl -0x54(%rbp),%r12d
    8341:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
    8345:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8349:	48 89 c7             	mov    %rax,%rdi
    834c:	e8 db ca ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    8351:	44 89 e2             	mov    %r12d,%edx
    8354:	48 89 de             	mov    %rbx,%rsi
    8357:	48 89 c7             	mov    %rax,%rdi
    835a:	e8 7f 00 00 00       	call   83de <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc>
      _M_set_length(__n);
    835f:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    8363:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    8367:	48 89 d6             	mov    %rdx,%rsi
    836a:	48 89 c7             	mov    %rax,%rdi
    836d:	e8 3e ca ff ff       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
    }
    8372:	90                   	nop
    8373:	48 83 c4 50          	add    $0x50,%rsp
    8377:	5b                   	pop    %rbx
    8378:	41 5c                	pop    %r12
    837a:	5d                   	pop    %rbp
    837b:	c3                   	ret

000000000000837c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmRKS4_>:
      insert(size_type __pos1, const basic_string& __str)
    837c:	55                   	push   %rbp
    837d:	48 89 e5             	mov    %rsp,%rbp
    8380:	53                   	push   %rbx
    8381:	48 83 ec 28          	sub    $0x28,%rsp
    8385:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8389:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    838d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      { return this->replace(__pos1, size_type(0),
    8391:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8395:	48 89 c7             	mov    %rax,%rdi
    8398:	e8 17 c5 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    839d:	48 89 c3             	mov    %rax,%rbx
			     __str._M_data(), __str.size()); }
    83a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    83a4:	48 89 c7             	mov    %rax,%rdi
    83a7:	e8 80 ca ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    83ac:	48 89 c2             	mov    %rax,%rdx
      { return this->replace(__pos1, size_type(0),
    83af:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    83b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    83b7:	49 89 d8             	mov    %rbx,%r8
    83ba:	48 89 d1             	mov    %rdx,%rcx
    83bd:	ba 00 00 00 00       	mov    $0x0,%edx
    83c2:	48 89 c7             	mov    %rax,%rdi
    83c5:	e8 62 00 00 00       	call   842c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm>
			     __str._M_data(), __str.size()); }
    83ca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    83ce:	c9                   	leave
    83cf:	c3                   	ret

00000000000083d0 <_ZSt7forwardIRcEOT_RNSt16remove_referenceIS1_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    83d0:	55                   	push   %rbp
    83d1:	48 89 e5             	mov    %rsp,%rbp
    83d4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    83d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    83dc:	5d                   	pop    %rbp
    83dd:	c3                   	ret

00000000000083de <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc>:
      _S_assign(_CharT* __d, size_type __n, _CharT __c)
    83de:	55                   	push   %rbp
    83df:	48 89 e5             	mov    %rsp,%rbp
    83e2:	48 83 ec 20          	sub    $0x20,%rsp
    83e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    83ea:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    83ee:	89 d0                	mov    %edx,%eax
    83f0:	88 45 ec             	mov    %al,-0x14(%rbp)
	if (__n == 1)
    83f3:	48 83 7d f0 01       	cmpq   $0x1,-0x10(%rbp)
    83f8:	75 15                	jne    840f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc+0x31>
	  traits_type::assign(*__d, __c);
    83fa:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
    83fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8402:	48 89 d6             	mov    %rdx,%rsi
    8405:	48 89 c7             	mov    %rax,%rdi
    8408:	e8 d4 c3 ff ff       	call   47e1 <_ZNSt11char_traitsIcE6assignERcRKc>
      }
    840d:	eb 1a                	jmp    8429 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_S_assignEPcmc+0x4b>
	  traits_type::assign(__d, __n, __c);
    840f:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
    8413:	0f be d0             	movsbl %al,%edx
    8416:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    841a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    841e:	48 89 ce             	mov    %rcx,%rsi
    8421:	48 89 c7             	mov    %rax,%rdi
    8424:	e8 62 f6 ff ff       	call   7a8b <_ZNSt11char_traitsIcE6assignEPcmc>
      }
    8429:	90                   	nop
    842a:	c9                   	leave
    842b:	c3                   	ret

000000000000842c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7replaceEmmPKcm>:
      replace(size_type __pos, size_type __n1, const _CharT* __s,
    842c:	55                   	push   %rbp
    842d:	48 89 e5             	mov    %rsp,%rbp
    8430:	53                   	push   %rbx
    8431:	48 83 ec 38          	sub    $0x38,%rsp
    8435:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8439:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    843d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    8441:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    8445:	4c 89 45 c8          	mov    %r8,-0x38(%rbp)
	return _M_replace(_M_check(__pos, "basic_string::replace"),
    8449:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    844d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8451:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8455:	48 89 ce             	mov    %rcx,%rsi
    8458:	48 89 c7             	mov    %rax,%rdi
    845b:	e8 4c 04 00 00       	call   88ac <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm>
    8460:	48 89 c3             	mov    %rax,%rbx
    8463:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8467:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    846b:	48 8d 15 2d 45 00 00 	lea    0x452d(%rip),%rdx        # c99f <_ZL6yy_chk+0x4bf>
    8472:	48 89 ce             	mov    %rcx,%rsi
    8475:	48 89 c7             	mov    %rax,%rdi
    8478:	e8 cf 03 00 00       	call   884c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc>
    847d:	48 89 c6             	mov    %rax,%rsi
    8480:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    8484:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    8488:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    848c:	49 89 c8             	mov    %rcx,%r8
    848f:	48 89 d1             	mov    %rdx,%rcx
    8492:	48 89 da             	mov    %rbx,%rdx
    8495:	48 89 c7             	mov    %rax,%rdi
    8498:	e8 07 00 00 00       	call   84a4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm>
      }
    849d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    84a1:	c9                   	leave
    84a2:	c3                   	ret
    84a3:	90                   	nop

00000000000084a4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm>:
    }

  template<typename _CharT, typename _Traits, typename _Alloc>
    _GLIBCXX20_CONSTEXPR
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    84a4:	55                   	push   %rbp
    84a5:	48 89 e5             	mov    %rsp,%rbp
    84a8:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    84ac:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    84b0:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    84b4:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    84b8:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
    84bc:	4c 89 45 88          	mov    %r8,-0x78(%rbp)
    _M_replace(size_type __pos, size_type __len1, const _CharT* __s,
	       const size_type __len2)
    {
      _M_check_length(__len1, __len2, "basic_string::_M_replace");
    84c0:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    84c4:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
    84c8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    84cc:	48 8d 0d e2 44 00 00 	lea    0x44e2(%rip),%rcx        # c9b5 <_ZL6yy_chk+0x4d5>
    84d3:	48 89 c7             	mov    %rax,%rdi
    84d6:	e8 5d ce ff ff       	call   5338 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc>

      const size_type __old_size = this->size();
    84db:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    84df:	48 89 c7             	mov    %rax,%rdi
    84e2:	e8 cd c3 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    84e7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      const size_type __new_size = __old_size + __len2 - __len1;
    84eb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    84ef:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    84f3:	48 01 d0             	add    %rdx,%rax
    84f6:	48 2b 45 98          	sub    -0x68(%rbp),%rax
    84fa:	48 89 45 f0          	mov    %rax,-0x10(%rbp)

      if (__new_size <= this->capacity())
    84fe:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8502:	48 89 c7             	mov    %rax,%rdi
    8505:	e8 02 cc ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    850a:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    850e:	0f 93 c0             	setae  %al
    8511:	84 c0                	test   %al,%al
    8513:	0f 84 fa 02 00 00    	je     8813 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x36f>
	{
	  pointer __p = this->_M_data() + __pos;
    8519:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    851d:	48 89 c7             	mov    %rax,%rdi
    8520:	e8 07 c9 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    8525:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    8529:	48 01 d0             	add    %rdx,%rax
    852c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

	  const size_type __how_much = __old_size - __pos - __len1;
    8530:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8534:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
    8538:	48 2b 45 98          	sub    -0x68(%rbp),%rax
    853c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
#if __cpp_lib_is_constant_evaluated
	  if (std::is_constant_evaluated())
    8540:	e8 7f c2 ff ff       	call   47c4 <_ZSt21is_constant_evaluatedv>
    8545:	84 c0                	test   %al,%al
    8547:	0f 84 09 01 00 00    	je     8656 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x1b2>
	    {
	      auto __newp = _Alloc_traits::allocate(_M_get_allocator(),
    854d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8551:	48 89 c7             	mov    %rax,%rdi
    8554:	e8 55 c9 ff ff       	call   4eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    8559:	48 89 c2             	mov    %rax,%rdx
    855c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8560:	48 89 c6             	mov    %rax,%rsi
    8563:	48 89 d7             	mov    %rdx,%rdi
    8566:	e8 68 cf ff ff       	call   54d3 <_ZNSt16allocator_traitsISaIcEE8allocateERS0_m>
    856b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
						    __new_size);
	      _S_copy(__newp, this->_M_data(), __pos);
    856f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8573:	48 89 c7             	mov    %rax,%rdi
    8576:	e8 b1 c8 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    857b:	48 89 c1             	mov    %rax,%rcx
    857e:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    8582:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8586:	48 89 ce             	mov    %rcx,%rsi
    8589:	48 89 c7             	mov    %rax,%rdi
    858c:	e8 49 d0 ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
	      _S_copy(__newp + __pos, __s, __len2);
    8591:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    8595:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    8599:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    859d:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    85a1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    85a5:	48 89 c6             	mov    %rax,%rsi
    85a8:	48 89 cf             	mov    %rcx,%rdi
    85ab:	e8 2a d0 ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
	      _S_copy(__newp + __pos + __len2, __p + __len1, __how_much);
    85b0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    85b4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    85b8:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    85bc:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    85c0:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    85c4:	48 01 c2             	add    %rax,%rdx
    85c7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    85cb:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    85cf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    85d3:	48 89 c2             	mov    %rax,%rdx
    85d6:	48 89 cf             	mov    %rcx,%rdi
    85d9:	e8 fc cf ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
	      _S_copy(this->_M_data(), __newp, __new_size);
    85de:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    85e2:	48 89 c7             	mov    %rax,%rdi
    85e5:	e8 42 c8 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    85ea:	48 89 c1             	mov    %rax,%rcx
    85ed:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    85f1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    85f5:	48 89 c6             	mov    %rax,%rsi
    85f8:	48 89 cf             	mov    %rcx,%rdi
    85fb:	e8 da cf ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
	      this->_M_get_allocator().deallocate(__newp, __new_size);
    8600:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8604:	48 89 c7             	mov    %rax,%rdi
    8607:	e8 a2 c8 ff ff       	call   4eae <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
    860c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    8610:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    8614:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    8618:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    861c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
	if (std::__is_constant_evaluated())
    8620:	e8 94 c1 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    8625:	84 c0                	test   %al,%al
    8627:	74 11                	je     863a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x196>
	    ::operator delete(__p);
    8629:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    862d:	48 89 c7             	mov    %rax,%rdi
    8630:	e8 fb ba ff ff       	call   4130 <_ZdlPv@plt>
	    return;
    8635:	e9 f8 01 00 00       	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
	__allocator_base<_Tp>::deallocate(__p, __n);
    863a:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    863e:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
    8642:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8646:	48 89 ce             	mov    %rcx,%rsi
    8649:	48 89 c7             	mov    %rax,%rdi
    864c:	e8 8b d1 ff ff       	call   57dc <_ZNSt15__new_allocatorIcE10deallocateEPcm>
    8651:	e9 dc 01 00 00       	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
	    }
	  else
#endif
	  if (_M_disjunct(__s))
    8656:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    865a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    865e:	48 89 d6             	mov    %rdx,%rsi
    8661:	48 89 c7             	mov    %rax,%rdi
    8664:	e8 8f 02 00 00       	call   88f8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc>
    8669:	84 c0                	test   %al,%al
    866b:	74 5f                	je     86cc <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x228>
	    {
	      if (__how_much && __len1 != __len2)
    866d:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    8672:	74 31                	je     86a5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x201>
    8674:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    8678:	48 3b 45 88          	cmp    -0x78(%rbp),%rax
    867c:	74 27                	je     86a5 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x201>
		this->_S_move(__p + __len2, __p + __len1, __how_much);
    867e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    8682:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    8686:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    868a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    868e:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    8692:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    8696:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    869a:	48 89 c2             	mov    %rax,%rdx
    869d:	48 89 cf             	mov    %rcx,%rdi
    86a0:	e8 d2 02 00 00       	call   8977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>
	      if (__len2)
    86a5:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    86aa:	0f 84 82 01 00 00    	je     8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
		this->_S_copy(__p, __s, __len2);
    86b0:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    86b4:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    86b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    86bc:	48 89 ce             	mov    %rcx,%rsi
    86bf:	48 89 c7             	mov    %rax,%rdi
    86c2:	e8 13 cf ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
    86c7:	e9 66 01 00 00       	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
	    }
	  else
	    {
	      // Work in-place.
	      if (__len2 && __len2 <= __len1)
    86cc:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    86d1:	74 21                	je     86f4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x250>
    86d3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    86d7:	48 39 45 98          	cmp    %rax,-0x68(%rbp)
    86db:	72 17                	jb     86f4 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x250>
		this->_S_move(__p, __s, __len2);
    86dd:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    86e1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    86e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    86e9:	48 89 ce             	mov    %rcx,%rsi
    86ec:	48 89 c7             	mov    %rax,%rdi
    86ef:	e8 83 02 00 00       	call   8977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>
	      if (__how_much && __len1 != __len2)
    86f4:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    86f9:	74 31                	je     872c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x288>
    86fb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    86ff:	48 3b 45 88          	cmp    -0x78(%rbp),%rax
    8703:	74 27                	je     872c <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x288>
		this->_S_move(__p + __len2, __p + __len1, __how_much);
    8705:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    8709:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    870d:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    8711:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    8715:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    8719:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    871d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8721:	48 89 c2             	mov    %rax,%rdx
    8724:	48 89 cf             	mov    %rcx,%rdi
    8727:	e8 4b 02 00 00       	call   8977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>
	      if (__len2 > __len1)
    872c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    8730:	48 39 45 98          	cmp    %rax,-0x68(%rbp)
    8734:	0f 83 f8 00 00 00    	jae    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
		{
		  if (__s + __len2 <= __p + __len1)
    873a:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    873e:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    8742:	48 01 d0             	add    %rdx,%rax
    8745:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8749:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    874d:	48 01 ca             	add    %rcx,%rdx
    8750:	48 39 c2             	cmp    %rax,%rdx
    8753:	72 1c                	jb     8771 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x2cd>
		    this->_S_move(__p, __s, __len2);
    8755:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    8759:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    875d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8761:	48 89 ce             	mov    %rcx,%rsi
    8764:	48 89 c7             	mov    %rax,%rdi
    8767:	e8 0b 02 00 00       	call   8977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>
    876c:	e9 c1 00 00 00       	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
		  else if (__s >= __p + __len1)
    8771:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    8775:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    8779:	48 01 d0             	add    %rdx,%rax
    877c:	48 39 45 90          	cmp    %rax,-0x70(%rbp)
    8780:	72 3b                	jb     87bd <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x319>
		    {
		      // Hint to middle end that __p and __s overlap
		      // (PR 98465).
		      const size_type __poff = (__s - __p) + (__len2 - __len1);
    8782:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    8786:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
    878a:	48 89 c2             	mov    %rax,%rdx
    878d:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    8791:	48 2b 45 98          	sub    -0x68(%rbp),%rax
    8795:	48 01 d0             	add    %rdx,%rax
    8798:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
		      this->_S_copy(__p, __p + __poff, __len2);
    879c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    87a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    87a4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    87a8:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    87ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    87b0:	48 89 ce             	mov    %rcx,%rsi
    87b3:	48 89 c7             	mov    %rax,%rdi
    87b6:	e8 1f ce ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
    87bb:	eb 75                	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
		    }
		  else
		    {
		      const size_type __nleft = (__p + __len1) - __s;
    87bd:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    87c1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    87c5:	48 01 d0             	add    %rdx,%rax
    87c8:	48 2b 45 90          	sub    -0x70(%rbp),%rax
    87cc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
		      this->_S_move(__p, __s, __nleft);
    87d0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    87d4:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    87d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    87dc:	48 89 ce             	mov    %rcx,%rsi
    87df:	48 89 c7             	mov    %rax,%rdi
    87e2:	e8 90 01 00 00       	call   8977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>
		      this->_S_copy(__p + __nleft, __p + __len2,
    87e7:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    87eb:	48 2b 45 d8          	sub    -0x28(%rbp),%rax
    87ef:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87f3:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    87f7:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
    87fb:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87ff:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8803:	48 01 d1             	add    %rdx,%rcx
    8806:	48 89 c2             	mov    %rax,%rdx
    8809:	48 89 cf             	mov    %rcx,%rdi
    880c:	e8 c9 cd ff ff       	call   55da <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm>
    8811:	eb 1f                	jmp    8832 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm+0x38e>
		    }
		}
	    }
	}
      else
	this->_M_mutate(__pos, __len1, __s, __len2);
    8813:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
    8817:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
    881b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    881f:	48 8b 75 a0          	mov    -0x60(%rbp),%rsi
    8823:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    8827:	49 89 f8             	mov    %rdi,%r8
    882a:	48 89 c7             	mov    %rax,%rdi
    882d:	e8 f2 cd ff ff       	call   5624 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>

      this->_M_set_length(__new_size);
    8832:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    8836:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    883a:	48 89 d6             	mov    %rdx,%rsi
    883d:	48 89 c7             	mov    %rax,%rdi
    8840:	e8 6b c5 ff ff       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      return *this;
    8845:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    }
    8849:	c9                   	leave
    884a:	c3                   	ret
    884b:	90                   	nop

000000000000884c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc>:
      _M_check(size_type __pos, const char* __s) const
    884c:	55                   	push   %rbp
    884d:	48 89 e5             	mov    %rsp,%rbp
    8850:	48 83 ec 20          	sub    $0x20,%rsp
    8854:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8858:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    885c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__pos > this->size())
    8860:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8864:	48 89 c7             	mov    %rax,%rdi
    8867:	e8 48 c0 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    886c:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    8870:	0f 92 c0             	setb   %al
    8873:	84 c0                	test   %al,%al
    8875:	74 2e                	je     88a5 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc+0x59>
	  __throw_out_of_range_fmt(__N("%s: __pos (which is %zu) > "
    8877:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    887b:	48 89 c7             	mov    %rax,%rdi
    887e:	e8 31 c0 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    8883:	48 89 c1             	mov    %rax,%rcx
    8886:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    888a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    888e:	48 89 c6             	mov    %rax,%rsi
    8891:	48 8d 05 38 41 00 00 	lea    0x4138(%rip),%rax        # c9d0 <_ZL6yy_chk+0x4f0>
    8898:	48 89 c7             	mov    %rax,%rdi
    889b:	b8 00 00 00 00       	mov    $0x0,%eax
    88a0:	e8 bb b9 ff ff       	call   4260 <_ZSt24__throw_out_of_range_fmtPKcz@plt>
	return __pos;
    88a5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      }
    88a9:	c9                   	leave
    88aa:	c3                   	ret
    88ab:	90                   	nop

00000000000088ac <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm>:
      _M_limit(size_type __pos, size_type __off) const _GLIBCXX_NOEXCEPT
    88ac:	55                   	push   %rbp
    88ad:	48 89 e5             	mov    %rsp,%rbp
    88b0:	48 83 ec 30          	sub    $0x30,%rsp
    88b4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    88b8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    88bc:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	const bool __testoff =  __off < this->size() - __pos;
    88c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    88c4:	48 89 c7             	mov    %rax,%rdi
    88c7:	e8 e8 bf ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    88cc:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
    88d0:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    88d4:	0f 92 c0             	setb   %al
    88d7:	88 45 ff             	mov    %al,-0x1(%rbp)
	return __testoff ? __off : this->size() - __pos;
    88da:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
    88de:	74 06                	je     88e6 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm+0x3a>
    88e0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    88e4:	eb 10                	jmp    88f6 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_limitEmm+0x4a>
    88e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    88ea:	48 89 c7             	mov    %rax,%rdi
    88ed:	e8 c2 bf ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    88f2:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
      }
    88f6:	c9                   	leave
    88f7:	c3                   	ret

00000000000088f8 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc>:
      _M_disjunct(const _CharT* __s) const _GLIBCXX_NOEXCEPT
    88f8:	55                   	push   %rbp
    88f9:	48 89 e5             	mov    %rsp,%rbp
    88fc:	53                   	push   %rbx
    88fd:	48 83 ec 28          	sub    $0x28,%rsp
    8901:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    8905:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
	return (less<const _CharT*>()(__s, _M_data())
    8909:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    890d:	48 89 c7             	mov    %rax,%rdi
    8910:	e8 17 c5 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    8915:	48 89 c2             	mov    %rax,%rdx
    8918:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    891c:	48 8d 45 ee          	lea    -0x12(%rbp),%rax
    8920:	48 89 ce             	mov    %rcx,%rsi
    8923:	48 89 c7             	mov    %rax,%rdi
    8926:	e8 97 00 00 00       	call   89c2 <_ZNKSt4lessIPKcEclES1_S1_>
		|| less<const _CharT*>()(_M_data() + this->size(), __s));
    892b:	84 c0                	test   %al,%al
    892d:	75 36                	jne    8965 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc+0x6d>
    892f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8933:	48 89 c7             	mov    %rax,%rdi
    8936:	e8 f1 c4 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    893b:	48 89 c3             	mov    %rax,%rbx
    893e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8942:	48 89 c7             	mov    %rax,%rdi
    8945:	e8 6a bf ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    894a:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
    894e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    8952:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    8956:	48 89 ce             	mov    %rcx,%rsi
    8959:	48 89 c7             	mov    %rax,%rdi
    895c:	e8 61 00 00 00       	call   89c2 <_ZNKSt4lessIPKcEclES1_S1_>
    8961:	84 c0                	test   %al,%al
    8963:	74 07                	je     896c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc+0x74>
    8965:	b8 01 00 00 00       	mov    $0x1,%eax
    896a:	eb 05                	jmp    8971 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_disjunctEPKc+0x79>
    896c:	b8 00 00 00 00       	mov    $0x0,%eax
      }
    8971:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8975:	c9                   	leave
    8976:	c3                   	ret

0000000000008977 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm>:
      _S_move(_CharT* __d, const _CharT* __s, size_type __n)
    8977:	55                   	push   %rbp
    8978:	48 89 e5             	mov    %rsp,%rbp
    897b:	48 83 ec 20          	sub    $0x20,%rsp
    897f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8983:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    8987:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n == 1)
    898b:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
    8990:	75 15                	jne    89a7 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm+0x30>
	  traits_type::assign(*__d, *__s);
    8992:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    8996:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    899a:	48 89 d6             	mov    %rdx,%rsi
    899d:	48 89 c7             	mov    %rax,%rdi
    89a0:	e8 3c be ff ff       	call   47e1 <_ZNSt11char_traitsIcE6assignERcRKc>
      }
    89a5:	eb 17                	jmp    89be <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm+0x47>
	  traits_type::move(__d, __s, __n);
    89a7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    89ab:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    89af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    89b3:	48 89 ce             	mov    %rcx,%rsi
    89b6:	48 89 c7             	mov    %rax,%rdi
    89b9:	e8 70 f0 ff ff       	call   7a2e <_ZNSt11char_traitsIcE4moveEPcPKcm>
      }
    89be:	90                   	nop
    89bf:	c9                   	leave
    89c0:	c3                   	ret
    89c1:	90                   	nop

00000000000089c2 <_ZNKSt4lessIPKcEclES1_S1_>:
  // Partial specialization of std::less for pointers.
  template<typename _Tp>
    struct less<_Tp*> : public binary_function<_Tp*, _Tp*, bool>
    {
      _GLIBCXX14_CONSTEXPR bool
      operator()(_Tp* __x, _Tp* __y) const _GLIBCXX_NOTHROW
    89c2:	55                   	push   %rbp
    89c3:	48 89 e5             	mov    %rsp,%rbp
    89c6:	48 83 ec 20          	sub    $0x20,%rsp
    89ca:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    89ce:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    89d2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      {
#if __cplusplus >= 201402L
	if (std::__is_constant_evaluated())
    89d6:	e8 de bd ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    89db:	84 c0                	test   %al,%al
    89dd:	74 0d                	je     89ec <_ZNKSt4lessIPKcEclES1_S1_+0x2a>
	  return __x < __y;
    89df:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    89e3:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    89e7:	0f 92 c0             	setb   %al
    89ea:	eb 0e                	jmp    89fa <_ZNKSt4lessIPKcEclES1_S1_+0x38>
#endif
	return (__UINTPTR_TYPE__)__x < (__UINTPTR_TYPE__)__y;
    89ec:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    89f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    89f4:	48 39 c2             	cmp    %rax,%rdx
    89f7:	0f 92 c0             	setb   %al
      }
    89fa:	c9                   	leave
    89fb:	c3                   	ret

00000000000089fc <_ZN2yy6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
    int seen_func_decl = 0;
%}

%code {
    extern int yylex(yy::parser::semantic_type* yylval);
    void yy::parser::error(const std::string& s) {
    89fc:	55                   	push   %rbp
    89fd:	48 89 e5             	mov    %rsp,%rbp
    8a00:	48 83 ec 10          	sub    $0x10,%rsp
    8a04:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8a08:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
        // fprintf(stderr, s);
        // fprintf(stderr, "\n");
        std::cerr << s << std::endl;
    8a0c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8a10:	48 89 c6             	mov    %rax,%rsi
    8a13:	48 8d 05 86 98 00 00 	lea    0x9886(%rip),%rax        # 122a0 <_ZSt4cerr@GLIBCXX_3.4>
    8a1a:	48 89 c7             	mov    %rax,%rdi
    8a1d:	e8 fe b6 ff ff       	call   4120 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@plt>
    8a22:	48 8b 15 7f 95 00 00 	mov    0x957f(%rip),%rdx        # 11fa8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    8a29:	48 89 d6             	mov    %rdx,%rsi
    8a2c:	48 89 c7             	mov    %rax,%rdi
    8a2f:	e8 3c b7 ff ff       	call   4170 <_ZNSolsEPFRSoS_E@plt>
        if (show_tokens) {
    8a34:	0f b6 05 ed 99 00 00 	movzbl 0x99ed(%rip),%eax        # 12428 <show_tokens>
    8a3b:	84 c0                	test   %al,%al
    8a3d:	74 51                	je     8a90 <_ZN2yy6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x94>
            tok_out = freopen(NULL, "w", tok_out);
    8a3f:	48 8b 05 da 99 00 00 	mov    0x99da(%rip),%rax        # 12420 <tok_out>
    8a46:	48 89 c2             	mov    %rax,%rdx
    8a49:	48 8d 05 b0 40 00 00 	lea    0x40b0(%rip),%rax        # cb00 <_ZNSt6ranges6__cust9iter_moveE+0x17>
    8a50:	48 89 c6             	mov    %rax,%rsi
    8a53:	bf 00 00 00 00       	mov    $0x0,%edi
    8a58:	e8 33 b7 ff ff       	call   4190 <freopen@plt>
    8a5d:	48 89 05 bc 99 00 00 	mov    %rax,0x99bc(%rip)        # 12420 <tok_out>
            if (!tok_out)
    8a64:	48 8b 05 b5 99 00 00 	mov    0x99b5(%rip),%rax        # 12420 <tok_out>
    8a6b:	48 85 c0             	test   %rax,%rax
    8a6e:	75 11                	jne    8a81 <_ZN2yy6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x85>
                perror("freopen");
    8a70:	48 8d 05 8b 40 00 00 	lea    0x408b(%rip),%rax        # cb02 <_ZNSt6ranges6__cust9iter_moveE+0x19>
    8a77:	48 89 c7             	mov    %rax,%rdi
    8a7a:	e8 81 b6 ff ff       	call   4100 <perror@plt>
    8a7f:	eb 0f                	jmp    8a90 <_ZN2yy6parser5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x94>
            else
                fclose(tok_out);
    8a81:	48 8b 05 98 99 00 00 	mov    0x9998(%rip),%rax        # 12420 <tok_out>
    8a88:	48 89 c7             	mov    %rax,%rdi
    8a8b:	e8 b0 b6 ff ff       	call   4140 <fclose@plt>
        }
        exit(EXIT_FAILURE);
    8a90:	bf 01 00 00 00       	mov    $0x1,%edi
    8a95:	e8 46 b7 ff ff       	call   41e0 <exit@plt>

0000000000008a9a <_ZN2yy6parserC1Ev>:

namespace yy {
#line 154 "parser.tab.cc"

  /// Build a parser object.
  parser::parser ()
    8a9a:	55                   	push   %rbp
    8a9b:	48 89 e5             	mov    %rsp,%rbp
    8a9e:	48 83 ec 10          	sub    $0x10,%rsp
    8aa2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8aa6:	48 8d 15 7b 92 00 00 	lea    0x927b(%rip),%rdx        # 11d28 <_ZTVN2yy6parserE+0x10>
    8aad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8ab1:	48 89 10             	mov    %rdx,(%rax)
    8ab4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8ab8:	48 83 c0 08          	add    $0x8,%rax
    8abc:	be c8 00 00 00       	mov    $0xc8,%esi
    8ac1:	48 89 c7             	mov    %rax,%rdi
    8ac4:	e8 f5 15 00 00       	call   a0be <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEC1Em>
    : yydebug_ (false),
      yycdebug_ (&std::cerr)
#else

#endif
  {}
    8ac9:	90                   	nop
    8aca:	c9                   	leave
    8acb:	c3                   	ret

0000000000008acc <_ZN2yy6parserD1Ev>:

  parser::~parser ()
    8acc:	55                   	push   %rbp
    8acd:	48 89 e5             	mov    %rsp,%rbp
    8ad0:	48 83 ec 10          	sub    $0x10,%rsp
    8ad4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8ad8:	48 8d 15 49 92 00 00 	lea    0x9249(%rip),%rdx        # 11d28 <_ZTVN2yy6parserE+0x10>
    8adf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8ae3:	48 89 10             	mov    %rdx,(%rax)
  {}
    8ae6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8aea:	48 83 c0 08          	add    $0x8,%rax
    8aee:	48 89 c7             	mov    %rax,%rdi
    8af1:	e8 58 15 00 00       	call   a04e <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEED1Ev>
    8af6:	90                   	nop
    8af7:	c9                   	leave
    8af8:	c3                   	ret
    8af9:	90                   	nop

0000000000008afa <_ZN2yy6parserD0Ev>:
  parser::~parser ()
    8afa:	55                   	push   %rbp
    8afb:	48 89 e5             	mov    %rsp,%rbp
    8afe:	48 83 ec 10          	sub    $0x10,%rsp
    8b02:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  {}
    8b06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b0a:	48 89 c7             	mov    %rax,%rdi
    8b0d:	e8 ba ff ff ff       	call   8acc <_ZN2yy6parserD1Ev>
    8b12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b16:	be 20 00 00 00       	mov    $0x20,%esi
    8b1b:	48 89 c7             	mov    %rax,%rdi
    8b1e:	e8 3d b6 ff ff       	call   4160 <_ZdlPvm@plt>
    8b23:	c9                   	leave
    8b24:	c3                   	ret
    8b25:	90                   	nop

0000000000008b26 <_ZN2yy6parser12syntax_errorD1Ev>:

  parser::syntax_error::~syntax_error () YY_NOEXCEPT YY_NOTHROW
    8b26:	55                   	push   %rbp
    8b27:	48 89 e5             	mov    %rsp,%rbp
    8b2a:	48 83 ec 10          	sub    $0x10,%rsp
    8b2e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8b32:	48 8d 15 27 92 00 00 	lea    0x9227(%rip),%rdx        # 11d60 <_ZTVN2yy6parser12syntax_errorE+0x10>
    8b39:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b3d:	48 89 10             	mov    %rdx,(%rax)
  {}
    8b40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b44:	48 89 c7             	mov    %rax,%rdi
    8b47:	e8 64 b6 ff ff       	call   41b0 <_ZNSt13runtime_errorD2Ev@plt>
    8b4c:	90                   	nop
    8b4d:	c9                   	leave
    8b4e:	c3                   	ret
    8b4f:	90                   	nop

0000000000008b50 <_ZN2yy6parser12syntax_errorD0Ev>:
  parser::syntax_error::~syntax_error () YY_NOEXCEPT YY_NOTHROW
    8b50:	55                   	push   %rbp
    8b51:	48 89 e5             	mov    %rsp,%rbp
    8b54:	48 83 ec 10          	sub    $0x10,%rsp
    8b58:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  {}
    8b5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b60:	48 89 c7             	mov    %rax,%rdi
    8b63:	e8 be ff ff ff       	call   8b26 <_ZN2yy6parser12syntax_errorD1Ev>
    8b68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b6c:	be 10 00 00 00       	mov    $0x10,%esi
    8b71:	48 89 c7             	mov    %rax,%rdi
    8b74:	e8 e7 b5 ff ff       	call   4160 <_ZdlPvm@plt>
    8b79:	c9                   	leave
    8b7a:	c3                   	ret
    8b7b:	90                   	nop

0000000000008b7c <_ZN2yy6parser7by_kindC1Ev>:
    super_type::move (s);
    value = YY_MOVE (s.value);
  }

  // by_kind.
  parser::by_kind::by_kind () YY_NOEXCEPT
    8b7c:	55                   	push   %rbp
    8b7d:	48 89 e5             	mov    %rsp,%rbp
    8b80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    : kind_ (symbol_kind::S_YYEMPTY)
    8b84:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8b88:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%rax)
  {}
    8b8e:	90                   	nop
    8b8f:	5d                   	pop    %rbp
    8b90:	c3                   	ret
    8b91:	90                   	nop

0000000000008b92 <_ZN2yy6parser7by_kindC1EOS1_>:

#if 201103L <= YY_CPLUSPLUS
  parser::by_kind::by_kind (by_kind&& that) YY_NOEXCEPT
    8b92:	55                   	push   %rbp
    8b93:	48 89 e5             	mov    %rsp,%rbp
    8b96:	48 83 ec 10          	sub    $0x10,%rsp
    8b9a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8b9e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    : kind_ (that.kind_)
    8ba2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8ba6:	8b 10                	mov    (%rax),%edx
    8ba8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8bac:	89 10                	mov    %edx,(%rax)
  {
    that.clear ();
    8bae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8bb2:	48 89 c7             	mov    %rax,%rdi
    8bb5:	e8 42 00 00 00       	call   8bfc <_ZN2yy6parser7by_kind5clearEv>
  }
    8bba:	90                   	nop
    8bbb:	c9                   	leave
    8bbc:	c3                   	ret
    8bbd:	90                   	nop

0000000000008bbe <_ZN2yy6parser7by_kindC1ERKS1_>:
#endif

  parser::by_kind::by_kind (const by_kind& that) YY_NOEXCEPT
    8bbe:	55                   	push   %rbp
    8bbf:	48 89 e5             	mov    %rsp,%rbp
    8bc2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8bc6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    : kind_ (that.kind_)
    8bca:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8bce:	8b 10                	mov    (%rax),%edx
    8bd0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8bd4:	89 10                	mov    %edx,(%rax)
  {}
    8bd6:	90                   	nop
    8bd7:	5d                   	pop    %rbp
    8bd8:	c3                   	ret
    8bd9:	90                   	nop

0000000000008bda <_ZN2yy6parser7by_kindC1ENS0_5token15token_kind_typeE>:

  parser::by_kind::by_kind (token_kind_type t) YY_NOEXCEPT
    8bda:	55                   	push   %rbp
    8bdb:	48 89 e5             	mov    %rsp,%rbp
    8bde:	48 83 ec 10          	sub    $0x10,%rsp
    8be2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8be6:	89 75 f4             	mov    %esi,-0xc(%rbp)
    : kind_ (yytranslate_ (t))
    8be9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    8bec:	89 c7                	mov    %eax,%edi
    8bee:	e8 75 13 00 00       	call   9f68 <_ZN2yy6parser12yytranslate_Ei>
    8bf3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    8bf7:	89 02                	mov    %eax,(%rdx)
  {}
    8bf9:	90                   	nop
    8bfa:	c9                   	leave
    8bfb:	c3                   	ret

0000000000008bfc <_ZN2yy6parser7by_kind5clearEv>:



  void
  parser::by_kind::clear () YY_NOEXCEPT
  {
    8bfc:	55                   	push   %rbp
    8bfd:	48 89 e5             	mov    %rsp,%rbp
    8c00:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    kind_ = symbol_kind::S_YYEMPTY;
    8c04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c08:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%rax)
  }
    8c0e:	90                   	nop
    8c0f:	5d                   	pop    %rbp
    8c10:	c3                   	ret
    8c11:	90                   	nop

0000000000008c12 <_ZN2yy6parser7by_kind4moveERS1_>:

  void
  parser::by_kind::move (by_kind& that)
  {
    8c12:	55                   	push   %rbp
    8c13:	48 89 e5             	mov    %rsp,%rbp
    8c16:	48 83 ec 10          	sub    $0x10,%rsp
    8c1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8c1e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    kind_ = that.kind_;
    8c22:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8c26:	8b 10                	mov    (%rax),%edx
    8c28:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c2c:	89 10                	mov    %edx,(%rax)
    that.clear ();
    8c2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8c32:	48 89 c7             	mov    %rax,%rdi
    8c35:	e8 c2 ff ff ff       	call   8bfc <_ZN2yy6parser7by_kind5clearEv>
  }
    8c3a:	90                   	nop
    8c3b:	c9                   	leave
    8c3c:	c3                   	ret
    8c3d:	90                   	nop

0000000000008c3e <_ZNK2yy6parser7by_kind4kindEv>:

  parser::symbol_kind_type
  parser::by_kind::kind () const YY_NOEXCEPT
  {
    8c3e:	55                   	push   %rbp
    8c3f:	48 89 e5             	mov    %rsp,%rbp
    8c42:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return kind_;
    8c46:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c4a:	8b 00                	mov    (%rax),%eax
  }
    8c4c:	5d                   	pop    %rbp
    8c4d:	c3                   	ret

0000000000008c4e <_ZNK2yy6parser7by_kind8type_getEv>:


  parser::symbol_kind_type
  parser::by_kind::type_get () const YY_NOEXCEPT
  {
    8c4e:	55                   	push   %rbp
    8c4f:	48 89 e5             	mov    %rsp,%rbp
    8c52:	48 83 ec 08          	sub    $0x8,%rsp
    8c56:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return this->kind ();
    8c5a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c5e:	48 89 c7             	mov    %rax,%rdi
    8c61:	e8 d8 ff ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
  }
    8c66:	c9                   	leave
    8c67:	c3                   	ret

0000000000008c68 <_ZN2yy6parser8by_stateC1Ev>:



  // by_state.
  parser::by_state::by_state () YY_NOEXCEPT
    8c68:	55                   	push   %rbp
    8c69:	48 89 e5             	mov    %rsp,%rbp
    8c6c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    : state (empty_state)
    8c70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c74:	c6 00 00             	movb   $0x0,(%rax)
  {}
    8c77:	90                   	nop
    8c78:	5d                   	pop    %rbp
    8c79:	c3                   	ret

0000000000008c7a <_ZN2yy6parser8by_stateC1ERKS1_>:

  parser::by_state::by_state (const by_state& that) YY_NOEXCEPT
    8c7a:	55                   	push   %rbp
    8c7b:	48 89 e5             	mov    %rsp,%rbp
    8c7e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8c82:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    : state (that.state)
    8c86:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8c8a:	0f b6 10             	movzbl (%rax),%edx
    8c8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8c91:	88 10                	mov    %dl,(%rax)
  {}
    8c93:	90                   	nop
    8c94:	5d                   	pop    %rbp
    8c95:	c3                   	ret

0000000000008c96 <_ZN2yy6parser8by_state5clearEv>:

  void
  parser::by_state::clear () YY_NOEXCEPT
  {
    8c96:	55                   	push   %rbp
    8c97:	48 89 e5             	mov    %rsp,%rbp
    8c9a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    state = empty_state;
    8c9e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8ca2:	c6 00 00             	movb   $0x0,(%rax)
  }
    8ca5:	90                   	nop
    8ca6:	5d                   	pop    %rbp
    8ca7:	c3                   	ret

0000000000008ca8 <_ZN2yy6parser8by_state4moveERS1_>:

  void
  parser::by_state::move (by_state& that)
  {
    8ca8:	55                   	push   %rbp
    8ca9:	48 89 e5             	mov    %rsp,%rbp
    8cac:	48 83 ec 10          	sub    $0x10,%rsp
    8cb0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8cb4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    state = that.state;
    8cb8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8cbc:	0f b6 10             	movzbl (%rax),%edx
    8cbf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8cc3:	88 10                	mov    %dl,(%rax)
    that.clear ();
    8cc5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8cc9:	48 89 c7             	mov    %rax,%rdi
    8ccc:	e8 c5 ff ff ff       	call   8c96 <_ZN2yy6parser8by_state5clearEv>
  }
    8cd1:	90                   	nop
    8cd2:	c9                   	leave
    8cd3:	c3                   	ret

0000000000008cd4 <_ZN2yy6parser8by_stateC1Ea>:

  parser::by_state::by_state (state_type s) YY_NOEXCEPT
    8cd4:	55                   	push   %rbp
    8cd5:	48 89 e5             	mov    %rsp,%rbp
    8cd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8cdc:	89 f0                	mov    %esi,%eax
    8cde:	88 45 f4             	mov    %al,-0xc(%rbp)
    : state (s)
    8ce1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8ce5:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
    8ce9:	88 10                	mov    %dl,(%rax)
  {}
    8ceb:	90                   	nop
    8cec:	5d                   	pop    %rbp
    8ced:	c3                   	ret

0000000000008cee <_ZNK2yy6parser8by_state4kindEv>:

  parser::symbol_kind_type
  parser::by_state::kind () const YY_NOEXCEPT
  {
    8cee:	55                   	push   %rbp
    8cef:	48 89 e5             	mov    %rsp,%rbp
    8cf2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    if (state == empty_state)
    8cf6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8cfa:	0f b6 00             	movzbl (%rax),%eax
    8cfd:	84 c0                	test   %al,%al
    8cff:	75 07                	jne    8d08 <_ZNK2yy6parser8by_state4kindEv+0x1a>
      return symbol_kind::S_YYEMPTY;
    8d01:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    8d06:	eb 1a                	jmp    8d22 <_ZNK2yy6parser8by_state4kindEv+0x34>
    else
      return YY_CAST (symbol_kind_type, yystos_[+state]);
    8d08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8d0c:	0f b6 00             	movzbl (%rax),%eax
    8d0f:	0f be c0             	movsbl %al,%eax
    8d12:	48 98                	cltq
    8d14:	48 8d 15 45 41 00 00 	lea    0x4145(%rip),%rdx        # ce60 <_ZN2yy6parser7yystos_E>
    8d1b:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    8d1f:	0f be c0             	movsbl %al,%eax
  }
    8d22:	5d                   	pop    %rbp
    8d23:	c3                   	ret

0000000000008d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>:

  parser::stack_symbol_type::stack_symbol_type ()
    8d24:	55                   	push   %rbp
    8d25:	48 89 e5             	mov    %rsp,%rbp
    8d28:	48 83 ec 10          	sub    $0x10,%rsp
    8d2c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8d30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8d34:	48 89 c7             	mov    %rax,%rdi
    8d37:	e8 0e 14 00 00       	call   a14a <_ZN2yy6parser12basic_symbolINS0_8by_stateEEC1Ev>
  {}
    8d3c:	90                   	nop
    8d3d:	c9                   	leave
    8d3e:	c3                   	ret
    8d3f:	90                   	nop

0000000000008d40 <_ZN2yy6parser17stack_symbol_typeC1EOS1_>:

  parser::stack_symbol_type::stack_symbol_type (YY_RVREF (stack_symbol_type) that)
    8d40:	55                   	push   %rbp
    8d41:	48 89 e5             	mov    %rsp,%rbp
    8d44:	41 54                	push   %r12
    8d46:	53                   	push   %rbx
    8d47:	48 83 ec 10          	sub    $0x10,%rsp
    8d4b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8d4f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    : super_type (YY_MOVE (that.state), YY_MOVE (that.value))
    8d53:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    8d57:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8d5b:	48 83 c0 04          	add    $0x4,%rax
    8d5f:	48 89 c7             	mov    %rax,%rdi
    8d62:	e8 32 14 00 00       	call   a199 <_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_>
    8d67:	49 89 c4             	mov    %rax,%r12
    8d6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8d6e:	48 89 c7             	mov    %rax,%rdi
    8d71:	e8 15 14 00 00       	call   a18b <_ZSt4moveIRaEONSt16remove_referenceIT_E4typeEOS2_>
    8d76:	0f b6 00             	movzbl (%rax),%eax
    8d79:	0f be c0             	movsbl %al,%eax
    8d7c:	4c 89 e2             	mov    %r12,%rdx
    8d7f:	89 c6                	mov    %eax,%esi
    8d81:	48 89 df             	mov    %rbx,%rdi
    8d84:	e8 1f 14 00 00       	call   a1a8 <_ZN2yy6parser12basic_symbolINS0_8by_stateEEC1EaOi>
  {
#if 201103L <= YY_CPLUSPLUS
    // that is emptied.
    that.state = empty_state;
    8d89:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8d8d:	c6 00 00             	movb   $0x0,(%rax)
#endif
  }
    8d90:	90                   	nop
    8d91:	48 83 c4 10          	add    $0x10,%rsp
    8d95:	5b                   	pop    %rbx
    8d96:	41 5c                	pop    %r12
    8d98:	5d                   	pop    %rbp
    8d99:	c3                   	ret

0000000000008d9a <_ZN2yy6parser17stack_symbol_typeC1EaONS0_11symbol_typeE>:

  parser::stack_symbol_type::stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) that)
    8d9a:	55                   	push   %rbp
    8d9b:	48 89 e5             	mov    %rsp,%rbp
    8d9e:	53                   	push   %rbx
    8d9f:	48 83 ec 28          	sub    $0x28,%rsp
    8da3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8da7:	89 f0                	mov    %esi,%eax
    8da9:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    8dad:	88 45 e4             	mov    %al,-0x1c(%rbp)
    : super_type (s, YY_MOVE (that.value))
    8db0:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    8db4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8db8:	48 83 c0 04          	add    $0x4,%rax
    8dbc:	48 89 c7             	mov    %rax,%rdi
    8dbf:	e8 d5 13 00 00       	call   a199 <_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_>
    8dc4:	48 89 c2             	mov    %rax,%rdx
    8dc7:	0f be 45 e4          	movsbl -0x1c(%rbp),%eax
    8dcb:	89 c6                	mov    %eax,%esi
    8dcd:	48 89 df             	mov    %rbx,%rdi
    8dd0:	e8 d3 13 00 00       	call   a1a8 <_ZN2yy6parser12basic_symbolINS0_8by_stateEEC1EaOi>
  {
    // that is emptied.
    that.kind_ = symbol_kind::S_YYEMPTY;
    8dd5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8dd9:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%rax)
  }
    8ddf:	90                   	nop
    8de0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8de4:	c9                   	leave
    8de5:	c3                   	ret

0000000000008de6 <_ZN2yy6parser7yypush_EPKcONS0_17stack_symbol_typeE>:
  }
#endif

  void
  parser::yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym)
  {
    8de6:	55                   	push   %rbp
    8de7:	48 89 e5             	mov    %rsp,%rbp
    8dea:	53                   	push   %rbx
    8deb:	48 83 ec 28          	sub    $0x28,%rsp
    8def:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8df3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8df7:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    if (m)
      YY_SYMBOL_PRINT (m, sym);
    yystack_.push (YY_MOVE (sym));
    8dfb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8dff:	48 8d 58 08          	lea    0x8(%rax),%rbx
    8e03:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8e07:	48 89 c7             	mov    %rax,%rdi
    8e0a:	e8 d8 13 00 00       	call   a1e7 <_ZSt4moveIRN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    8e0f:	48 89 c6             	mov    %rax,%rsi
    8e12:	48 89 df             	mov    %rbx,%rdi
    8e15:	e8 dc 13 00 00       	call   a1f6 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4pushEOS2_>
  }
    8e1a:	90                   	nop
    8e1b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8e1f:	c9                   	leave
    8e20:	c3                   	ret
    8e21:	90                   	nop

0000000000008e22 <_ZN2yy6parser7yypush_EPKcaONS0_11symbol_typeE>:

  void
  parser::yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym)
  {
    8e22:	55                   	push   %rbp
    8e23:	48 89 e5             	mov    %rsp,%rbp
    8e26:	53                   	push   %rbx
    8e27:	48 83 ec 38          	sub    $0x38,%rsp
    8e2b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    8e2f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    8e33:	89 d0                	mov    %edx,%eax
    8e35:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    8e39:	88 45 cc             	mov    %al,-0x34(%rbp)
#if 201103L <= YY_CPLUSPLUS
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
    8e3c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    8e40:	48 89 c7             	mov    %rax,%rdi
    8e43:	e8 2f 14 00 00       	call   a277 <_ZSt4moveIRN2yy6parser11symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    8e48:	48 89 c2             	mov    %rax,%rdx
    8e4b:	0f be 4d cc          	movsbl -0x34(%rbp),%ecx
    8e4f:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    8e53:	89 ce                	mov    %ecx,%esi
    8e55:	48 89 c7             	mov    %rax,%rdi
    8e58:	e8 3d ff ff ff       	call   8d9a <_ZN2yy6parser17stack_symbol_typeC1EaONS0_11symbol_typeE>
    8e5d:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
    8e61:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    8e65:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8e69:	48 89 ce             	mov    %rcx,%rsi
    8e6c:	48 89 c7             	mov    %rax,%rdi
    8e6f:	e8 72 ff ff ff       	call   8de6 <_ZN2yy6parser7yypush_EPKcONS0_17stack_symbol_typeE>
    8e74:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    8e78:	48 89 c7             	mov    %rax,%rdi
    8e7b:	e8 ea 11 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
#else
    stack_symbol_type ss (s, sym);
    yypush_ (m, ss);
#endif
  }
    8e80:	eb 1a                	jmp    8e9c <_ZN2yy6parser7yypush_EPKcaONS0_11symbol_typeE+0x7a>
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
    8e82:	48 89 c3             	mov    %rax,%rbx
    8e85:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    8e89:	48 89 c7             	mov    %rax,%rdi
    8e8c:	e8 d9 11 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    8e91:	48 89 d8             	mov    %rbx,%rax
    8e94:	48 89 c7             	mov    %rax,%rdi
    8e97:	e8 44 b4 ff ff       	call   42e0 <_Unwind_Resume@plt>
  }
    8e9c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8ea0:	c9                   	leave
    8ea1:	c3                   	ret

0000000000008ea2 <_ZN2yy6parser6yypop_Ei>:

  void
  parser::yypop_ (int n) YY_NOEXCEPT
  {
    8ea2:	55                   	push   %rbp
    8ea3:	48 89 e5             	mov    %rsp,%rbp
    8ea6:	48 83 ec 10          	sub    $0x10,%rsp
    8eaa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    8eae:	89 75 f4             	mov    %esi,-0xc(%rbp)
    yystack_.pop (n);
    8eb1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8eb5:	48 8d 50 08          	lea    0x8(%rax),%rdx
    8eb9:	8b 45 f4             	mov    -0xc(%rbp),%eax
    8ebc:	48 98                	cltq
    8ebe:	48 89 c6             	mov    %rax,%rsi
    8ec1:	48 89 d7             	mov    %rdx,%rdi
    8ec4:	e8 bd 13 00 00       	call   a286 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE3popEl>
  }
    8ec9:	90                   	nop
    8eca:	c9                   	leave
    8ecb:	c3                   	ret

0000000000008ecc <_ZN2yy6parser17yy_lr_goto_state_Eai>:
  }
#endif // YYDEBUG

  parser::state_type
  parser::yy_lr_goto_state_ (state_type yystate, int yysym)
  {
    8ecc:	55                   	push   %rbp
    8ecd:	48 89 e5             	mov    %rsp,%rbp
    8ed0:	89 f8                	mov    %edi,%eax
    8ed2:	89 75 e8             	mov    %esi,-0x18(%rbp)
    8ed5:	88 45 ec             	mov    %al,-0x14(%rbp)
    int yyr = yypgoto_[yysym - YYNTOKENS] + yystate;
    8ed8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    8edb:	83 e8 19             	sub    $0x19,%eax
    8ede:	48 98                	cltq
    8ee0:	48 8d 15 79 3e 00 00 	lea    0x3e79(%rip),%rdx        # cd60 <_ZN2yy6parser8yypgoto_E>
    8ee7:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    8eeb:	0f be d0             	movsbl %al,%edx
    8eee:	0f be 45 ec          	movsbl -0x14(%rbp),%eax
    8ef2:	01 d0                	add    %edx,%eax
    8ef4:	89 45 fc             	mov    %eax,-0x4(%rbp)
    if (0 <= yyr && yyr <= yylast_ && yycheck_[yyr] == yystate)
    8ef7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    8efb:	78 2d                	js     8f2a <_ZN2yy6parser17yy_lr_goto_state_Eai+0x5e>
    8efd:	83 7d fc 53          	cmpl   $0x53,-0x4(%rbp)
    8f01:	7f 27                	jg     8f2a <_ZN2yy6parser17yy_lr_goto_state_Eai+0x5e>
    8f03:	8b 45 fc             	mov    -0x4(%rbp),%eax
    8f06:	48 98                	cltq
    8f08:	48 8d 15 f1 3e 00 00 	lea    0x3ef1(%rip),%rdx        # ce00 <_ZN2yy6parser8yycheck_E>
    8f0f:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    8f13:	38 45 ec             	cmp    %al,-0x14(%rbp)
    8f16:	75 12                	jne    8f2a <_ZN2yy6parser17yy_lr_goto_state_Eai+0x5e>
      return yytable_[yyr];
    8f18:	8b 45 fc             	mov    -0x4(%rbp),%eax
    8f1b:	48 98                	cltq
    8f1d:	48 8d 15 7c 3e 00 00 	lea    0x3e7c(%rip),%rdx        # cda0 <_ZN2yy6parser8yytable_E>
    8f24:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    8f28:	eb 13                	jmp    8f3d <_ZN2yy6parser17yy_lr_goto_state_Eai+0x71>
    else
      return yydefgoto_[yysym - YYNTOKENS];
    8f2a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    8f2d:	83 e8 19             	sub    $0x19,%eax
    8f30:	48 98                	cltq
    8f32:	48 8d 15 47 3e 00 00 	lea    0x3e47(%rip),%rdx        # cd80 <_ZN2yy6parser10yydefgoto_E>
    8f39:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
  }
    8f3d:	5d                   	pop    %rbp
    8f3e:	c3                   	ret
    8f3f:	90                   	nop

0000000000008f40 <_ZN2yy6parser25yy_pact_value_is_default_Ei>:

  bool
  parser::yy_pact_value_is_default_ (int yyvalue) YY_NOEXCEPT
  {
    8f40:	55                   	push   %rbp
    8f41:	48 89 e5             	mov    %rsp,%rbp
    8f44:	89 7d fc             	mov    %edi,-0x4(%rbp)
    return yyvalue == yypact_ninf_;
    8f47:	b8 d5 ff ff ff       	mov    $0xffffffd5,%eax
    8f4c:	0f be c0             	movsbl %al,%eax
    8f4f:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    8f52:	0f 94 c0             	sete   %al
  }
    8f55:	5d                   	pop    %rbp
    8f56:	c3                   	ret
    8f57:	90                   	nop

0000000000008f58 <_ZN2yy6parser24yy_table_value_is_error_Ei>:

  bool
  parser::yy_table_value_is_error_ (int yyvalue) YY_NOEXCEPT
  {
    8f58:	55                   	push   %rbp
    8f59:	48 89 e5             	mov    %rsp,%rbp
    8f5c:	89 7d fc             	mov    %edi,-0x4(%rbp)
    return yyvalue == yytable_ninf_;
    8f5f:	b8 f4 ff ff ff       	mov    $0xfffffff4,%eax
    8f64:	0f be c0             	movsbl %al,%eax
    8f67:	39 45 fc             	cmp    %eax,-0x4(%rbp)
    8f6a:	0f 94 c0             	sete   %al
  }
    8f6d:	5d                   	pop    %rbp
    8f6e:	c3                   	ret
    8f6f:	90                   	nop

0000000000008f70 <_ZN2yy6parserclEv>:

  int
  parser::operator() ()
  {
    8f70:	55                   	push   %rbp
    8f71:	48 89 e5             	mov    %rsp,%rbp
    8f74:	48 83 ec 10          	sub    $0x10,%rsp
    8f78:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return parse ();
    8f7c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8f80:	48 8b 00             	mov    (%rax),%rax
    8f83:	48 83 c0 10          	add    $0x10,%rax
    8f87:	48 8b 10             	mov    (%rax),%rdx
    8f8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    8f8e:	48 89 c7             	mov    %rax,%rdi
    8f91:	ff d2                	call   *%rdx
  }
    8f93:	c9                   	leave
    8f94:	c3                   	ret
    8f95:	90                   	nop

0000000000008f96 <_ZN2yy6parser5parseEv>:

  int
  parser::parse ()
  {
    8f96:	55                   	push   %rbp
    8f97:	48 89 e5             	mov    %rsp,%rbp
    8f9a:	41 54                	push   %r12
    8f9c:	53                   	push   %rbx
    8f9d:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    8fa4:	48 89 bd 18 ff ff ff 	mov    %rdi,-0xe8(%rbp)
    int yyn;
    /// Length of the RHS of the rule being reduced.
    int yylen = 0;
    8fab:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)

    // Error handling.
    int yynerrs_ = 0;
    8fb2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    int yyerrstatus_ = 0;
    8fb9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)

    /// The lookahead symbol.
    symbol_type yyla;
    8fc0:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    8fc7:	48 89 c7             	mov    %rax,%rdi
    8fca:	e8 b7 10 00 00       	call   a086 <_ZN2yy6parser11symbol_typeC1Ev>

    /* Initialize the stack.  The initial state will be set in
       yynewstate, since the latter expects the semantical and the
       location values to have been already stored, initialize these
       stacks with a primary value.  */
    yystack_.clear ();
    8fcf:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    8fd6:	48 83 c0 08          	add    $0x8,%rax
    8fda:	48 89 c7             	mov    %rax,%rdi
    8fdd:	e8 14 13 00 00       	call   a2f6 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE5clearEv>
    yypush_ (YY_NULLPTR, 0, YY_MOVE (yyla));
    8fe2:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    8fe9:	48 89 c7             	mov    %rax,%rdi
    8fec:	e8 86 12 00 00       	call   a277 <_ZSt4moveIRN2yy6parser11symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    8ff1:	48 89 c2             	mov    %rax,%rdx
    8ff4:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    8ffb:	48 89 d1             	mov    %rdx,%rcx
    8ffe:	ba 00 00 00 00       	mov    $0x0,%edx
    9003:	be 00 00 00 00       	mov    $0x0,%esi
    9008:	48 89 c7             	mov    %rax,%rdi
    900b:	e8 12 fe ff ff       	call   8e22 <_ZN2yy6parser7yypush_EPKcaONS0_11symbol_typeE>
  yynewstate:
    YYCDEBUG << "Entering state " << int (yystack_[0].state) << '\n';
    YY_STACK_PRINT ();

    // Accept?
    if (yystack_[0].state == yyfinal_)
    9010:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9017:	48 83 c0 08          	add    $0x8,%rax
    901b:	be 00 00 00 00       	mov    $0x0,%esi
    9020:	48 89 c7             	mov    %rax,%rdi
    9023:	e8 ea 12 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9028:	0f b6 00             	movzbl (%rax),%eax
    902b:	3c 0e                	cmp    $0xe,%al
    902d:	0f 94 c0             	sete   %al
    9030:	84 c0                	test   %al,%al
    9032:	0f 85 73 06 00 00    	jne    96ab <_ZN2yy6parser5parseEv+0x715>
      YYACCEPT;

    goto yybackup;
    9038:	90                   	nop
  /*-----------.
  | yybackup.  |
  `-----------*/
  yybackup:
    // Try to take a decision without lookahead.
    yyn = yypact_[+yystack_[0].state];
    9039:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9040:	48 83 c0 08          	add    $0x8,%rax
    9044:	be 00 00 00 00       	mov    $0x0,%esi
    9049:	48 89 c7             	mov    %rax,%rdi
    904c:	e8 c1 12 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9051:	0f b6 00             	movzbl (%rax),%eax
    9054:	0f be c0             	movsbl %al,%eax
    9057:	48 98                	cltq
    9059:	48 8d 15 40 3c 00 00 	lea    0x3c40(%rip),%rdx        # cca0 <_ZN2yy6parser7yypact_E>
    9060:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9064:	0f be c0             	movsbl %al,%eax
    9067:	89 45 dc             	mov    %eax,-0x24(%rbp)
    if (yy_pact_value_is_default_ (yyn))
    906a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    906d:	89 c7                	mov    %eax,%edi
    906f:	e8 cc fe ff ff       	call   8f40 <_ZN2yy6parser25yy_pact_value_is_default_Ei>
    9074:	84 c0                	test   %al,%al
    9076:	0f 85 1f 01 00 00    	jne    919b <_ZN2yy6parser5parseEv+0x205>
      goto yydefault;

    // Read a lookahead token.
    if (yyla.empty ())
    907c:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    9083:	48 89 c7             	mov    %rax,%rdi
    9086:	e8 c1 12 00 00       	call   a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>
    908b:	84 c0                	test   %al,%al
    908d:	74 20                	je     90af <_ZN2yy6parser5parseEv+0x119>
        YYCDEBUG << "Reading a token\n";
#if YY_EXCEPTIONS
        try
#endif // YY_EXCEPTIONS
          {
            yyla.kind_ = yytranslate_ (yylex (&yyla.value));
    908f:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    9096:	48 83 c0 04          	add    $0x4,%rax
    909a:	48 89 c7             	mov    %rax,%rdi
    909d:	e8 f0 c7 ff ff       	call   5892 <_Z5yylexPi>
    90a2:	89 c7                	mov    %eax,%edi
    90a4:	e8 bf 0e 00 00       	call   9f68 <_ZN2yy6parser12yytranslate_Ei>
    90a9:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
          }
#endif // YY_EXCEPTIONS
      }
    YY_SYMBOL_PRINT ("Next token is", yyla);

    if (yyla.kind () == symbol_kind::S_YYerror)
    90af:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    90b6:	48 89 c7             	mov    %rax,%rdi
    90b9:	e8 80 fb ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    90be:	83 f8 01             	cmp    $0x1,%eax
    90c1:	0f 94 c0             	sete   %al
    90c4:	84 c0                	test   %al,%al
    90c6:	74 0f                	je     90d7 <_ZN2yy6parser5parseEv+0x141>
    {
      // The scanner already issued an error message, process directly
      // to error recovery.  But do not keep the error token as
      // lookahead, it is too special and may lead us to an endless
      // loop in error recovery. */
      yyla.kind_ = symbol_kind::S_YYUNDEF;
    90c8:	c7 85 68 ff ff ff 02 	movl   $0x2,-0x98(%rbp)
    90cf:	00 00 00 
      goto yyerrlab1;
    90d2:	e9 84 04 00 00       	jmp    955b <_ZN2yy6parser5parseEv+0x5c5>
    }

    /* If the proper action on seeing token YYLA.TYPE is to reduce or
       to detect an error, take that action.  */
    yyn += yyla.kind ();
    90d7:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    90de:	48 89 c7             	mov    %rax,%rdi
    90e1:	e8 58 fb ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    90e6:	01 45 dc             	add    %eax,-0x24(%rbp)
    if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yyla.kind ())
    90e9:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    90ed:	78 2c                	js     911b <_ZN2yy6parser5parseEv+0x185>
    90ef:	83 7d dc 53          	cmpl   $0x53,-0x24(%rbp)
    90f3:	7f 26                	jg     911b <_ZN2yy6parser5parseEv+0x185>
    90f5:	8b 45 dc             	mov    -0x24(%rbp),%eax
    90f8:	48 98                	cltq
    90fa:	48 8d 15 ff 3c 00 00 	lea    0x3cff(%rip),%rdx        # ce00 <_ZN2yy6parser8yycheck_E>
    9101:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9105:	0f be d8             	movsbl %al,%ebx
    9108:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    910f:	48 89 c7             	mov    %rax,%rdi
    9112:	e8 27 fb ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    9117:	39 c3                	cmp    %eax,%ebx
    9119:	74 07                	je     9122 <_ZN2yy6parser5parseEv+0x18c>
    911b:	b8 01 00 00 00       	mov    $0x1,%eax
    9120:	eb 05                	jmp    9127 <_ZN2yy6parser5parseEv+0x191>
    9122:	b8 00 00 00 00       	mov    $0x0,%eax
    9127:	84 c0                	test   %al,%al
    9129:	75 73                	jne    919e <_ZN2yy6parser5parseEv+0x208>
      {
        goto yydefault;
      }

    // Reduce or error.
    yyn = yytable_[yyn];
    912b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    912e:	48 98                	cltq
    9130:	48 8d 15 69 3c 00 00 	lea    0x3c69(%rip),%rdx        # cda0 <_ZN2yy6parser8yytable_E>
    9137:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    913b:	0f be c0             	movsbl %al,%eax
    913e:	89 45 dc             	mov    %eax,-0x24(%rbp)
    if (yyn <= 0)
    9141:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    9145:	7f 17                	jg     915e <_ZN2yy6parser5parseEv+0x1c8>
      {
        if (yy_table_value_is_error_ (yyn))
    9147:	8b 45 dc             	mov    -0x24(%rbp),%eax
    914a:	89 c7                	mov    %eax,%edi
    914c:	e8 07 fe ff ff       	call   8f58 <_ZN2yy6parser24yy_table_value_is_error_Ei>
    9151:	84 c0                	test   %al,%al
    9153:	0f 85 d5 02 00 00    	jne    942e <_ZN2yy6parser5parseEv+0x498>
          goto yyerrlab;
        yyn = -yyn;
    9159:	f7 5d dc             	negl   -0x24(%rbp)
        goto yyreduce;
    915c:	eb 7d                	jmp    91db <_ZN2yy6parser5parseEv+0x245>
      }

    // Count tokens shifted since error; after three, turn off error status.
    if (yyerrstatus_)
    915e:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    9162:	74 04                	je     9168 <_ZN2yy6parser5parseEv+0x1d2>
      --yyerrstatus_;
    9164:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)

    // Shift the lookahead token.
    yypush_ ("Shifting", state_type (yyn), YY_MOVE (yyla));
    9168:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    916f:	48 89 c7             	mov    %rax,%rdi
    9172:	e8 00 11 00 00       	call   a277 <_ZSt4moveIRN2yy6parser11symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    9177:	48 89 c1             	mov    %rax,%rcx
    917a:	8b 45 dc             	mov    -0x24(%rbp),%eax
    917d:	0f be d0             	movsbl %al,%edx
    9180:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9187:	48 8d 35 7c 39 00 00 	lea    0x397c(%rip),%rsi        # cb0a <_ZNSt6ranges6__cust9iter_moveE+0x21>
    918e:	48 89 c7             	mov    %rax,%rdi
    9191:	e8 8c fc ff ff       	call   8e22 <_ZN2yy6parser7yypush_EPKcaONS0_11symbol_typeE>
    goto yynewstate;
    9196:	e9 75 fe ff ff       	jmp    9010 <_ZN2yy6parser5parseEv+0x7a>
      goto yydefault;
    919b:	90                   	nop
    919c:	eb 01                	jmp    919f <_ZN2yy6parser5parseEv+0x209>
        goto yydefault;
    919e:	90                   	nop

  /*-----------------------------------------------------------.
  | yydefault -- do the default action for the current state.  |
  `-----------------------------------------------------------*/
  yydefault:
    yyn = yydefact_[+yystack_[0].state];
    919f:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    91a6:	48 83 c0 08          	add    $0x8,%rax
    91aa:	be 00 00 00 00       	mov    $0x0,%esi
    91af:	48 89 c7             	mov    %rax,%rdi
    91b2:	e8 5b 11 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    91b7:	0f b6 00             	movzbl (%rax),%eax
    91ba:	0f be c0             	movsbl %al,%eax
    91bd:	48 98                	cltq
    91bf:	48 8d 15 3a 3b 00 00 	lea    0x3b3a(%rip),%rdx        # cd00 <_ZN2yy6parser9yydefact_E>
    91c6:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    91ca:	0f be c0             	movsbl %al,%eax
    91cd:	89 45 dc             	mov    %eax,-0x24(%rbp)
    if (yyn == 0)
    91d0:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    91d4:	0f 84 57 02 00 00    	je     9431 <_ZN2yy6parser5parseEv+0x49b>
      goto yyerrlab;
    goto yyreduce;
    91da:	90                   	nop

  /*-----------------------------.
  | yyreduce -- do a reduction.  |
  `-----------------------------*/
  yyreduce:
    yylen = yyr2_[yyn];
    91db:	8b 45 dc             	mov    -0x24(%rbp),%eax
    91de:	48 98                	cltq
    91e0:	48 8d 15 19 3d 00 00 	lea    0x3d19(%rip),%rdx        # cf00 <_ZN2yy6parser5yyr2_E>
    91e7:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    91eb:	0f be c0             	movsbl %al,%eax
    91ee:	89 45 e0             	mov    %eax,-0x20(%rbp)
    {
      stack_symbol_type yylhs;
    91f1:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    91f8:	48 89 c7             	mov    %rax,%rdi
    91fb:	e8 24 fb ff ff       	call   8d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>
      yylhs.state = yy_lr_goto_state_ (yystack_[yylen].state, yyr1_[yyn]);
    9200:	8b 45 dc             	mov    -0x24(%rbp),%eax
    9203:	48 98                	cltq
    9205:	48 8d 15 b4 3c 00 00 	lea    0x3cb4(%rip),%rdx        # cec0 <_ZN2yy6parser5yyr1_E>
    920c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9210:	0f be d8             	movsbl %al,%ebx
    9213:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    921a:	48 8d 50 08          	lea    0x8(%rax),%rdx
    921e:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9221:	48 98                	cltq
    9223:	48 89 c6             	mov    %rax,%rsi
    9226:	48 89 d7             	mov    %rdx,%rdi
    9229:	e8 e4 10 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    922e:	0f b6 00             	movzbl (%rax),%eax
    9231:	0f be c0             	movsbl %al,%eax
    9234:	89 de                	mov    %ebx,%esi
    9236:	89 c7                	mov    %eax,%edi
    9238:	e8 8f fc ff ff       	call   8ecc <_ZN2yy6parser17yy_lr_goto_state_Eai>
    923d:	88 85 60 ff ff ff    	mov    %al,-0xa0(%rbp)
         action: '$$ = $1'.  Otherwise, use the top of the stack.

         Otherwise, the following line sets YYLHS.VALUE to garbage.
         This behavior is undocumented and Bison users should not rely
         upon it.  */
      if (yylen)
    9243:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
    9247:	74 29                	je     9272 <_ZN2yy6parser5parseEv+0x2dc>
        yylhs.value = yystack_[yylen - 1].value;
    9249:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9250:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9254:	8b 45 e0             	mov    -0x20(%rbp),%eax
    9257:	83 e8 01             	sub    $0x1,%eax
    925a:	48 98                	cltq
    925c:	48 89 c6             	mov    %rax,%rsi
    925f:	48 89 d7             	mov    %rdx,%rdi
    9262:	e8 ab 10 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9267:	8b 40 04             	mov    0x4(%rax),%eax
    926a:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
    9270:	eb 21                	jmp    9293 <_ZN2yy6parser5parseEv+0x2fd>
      else
        yylhs.value = yystack_[0].value;
    9272:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9279:	48 83 c0 08          	add    $0x8,%rax
    927d:	be 00 00 00 00       	mov    $0x0,%esi
    9282:	48 89 c7             	mov    %rax,%rdi
    9285:	e8 88 10 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    928a:	8b 40 04             	mov    0x4(%rax),%eax
    928d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
      YY_REDUCE_PRINT (yyn);
#if YY_EXCEPTIONS
      try
#endif // YY_EXCEPTIONS
        {
          switch (yyn)
    9293:	83 7d dc 09          	cmpl   $0x9,-0x24(%rbp)
    9297:	0f 84 1b 01 00 00    	je     93b8 <_ZN2yy6parser5parseEv+0x422>
    929d:	83 7d dc 09          	cmpl   $0x9,-0x24(%rbp)
    92a1:	0f 8f 22 01 00 00    	jg     93c9 <_ZN2yy6parser5parseEv+0x433>
    92a7:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
    92ab:	74 0f                	je     92bc <_ZN2yy6parser5parseEv+0x326>
    92ad:	83 7d dc 07          	cmpl   $0x7,-0x24(%rbp)
    92b1:	0f 84 89 00 00 00    	je     9340 <_ZN2yy6parser5parseEv+0x3aa>


#line 638 "parser.tab.cc"

            default:
              break;
    92b7:	e9 0d 01 00 00       	jmp    93c9 <_ZN2yy6parser5parseEv+0x433>

global_decl_statement_list
    : global_decl_statement_list var_decl_stmt
    | global_decl_statement_list func_decl
        {
            if (seen_func_decl) {
    92bc:	8b 05 b2 91 00 00    	mov    0x91b2(%rip),%eax        # 12474 <seen_func_decl>
    92c2:	85 c0                	test   %eax,%eax
    92c4:	74 6b                	je     9331 <_ZN2yy6parser5parseEv+0x39b>
                error("only one func_decl allowed\n");
    92c6:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    92cd:	48 8b 00             	mov    (%rax),%rax
    92d0:	48 83 c0 18          	add    $0x18,%rax
    92d4:	48 8b 18             	mov    (%rax),%rbx
    92d7:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
    92db:	48 89 c7             	mov    %rax,%rdi
    92de:	e8 0d b0 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    92e3:	48 8d 55 9f          	lea    -0x61(%rbp),%rdx
    92e7:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    92ee:	48 8d 0d 1e 38 00 00 	lea    0x381e(%rip),%rcx        # cb13 <_ZNSt6ranges6__cust9iter_moveE+0x2a>
    92f5:	48 89 ce             	mov    %rcx,%rsi
    92f8:	48 89 c7             	mov    %rax,%rdi
    92fb:	e8 a2 b9 ff ff       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    9300:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    9307:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    930e:	48 89 d6             	mov    %rdx,%rsi
    9311:	48 89 c7             	mov    %rax,%rdi
    9314:	ff d3                	call   *%rbx
    9316:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    931d:	48 89 c7             	mov    %rax,%rdi
    9320:	e8 31 b8 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9325:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
    9329:	48 89 c7             	mov    %rax,%rdi
    932c:	e8 6f ae ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
            }
            seen_func_decl = 1;
    9331:	c7 05 39 91 00 00 01 	movl   $0x1,0x9139(%rip)        # 12474 <seen_func_decl>
    9338:	00 00 00 
    break;
    933b:	e9 8a 00 00 00       	jmp    93ca <_ZN2yy6parser5parseEv+0x434>
        }
    | var_decl_stmt
    | func_decl
        {
            if (seen_func_decl) {
    9340:	8b 05 2e 91 00 00    	mov    0x912e(%rip),%eax        # 12474 <seen_func_decl>
    9346:	85 c0                	test   %eax,%eax
    9348:	74 62                	je     93ac <_ZN2yy6parser5parseEv+0x416>
                error("only one func_decl allowed\n");
    934a:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9351:	48 8b 00             	mov    (%rax),%rax
    9354:	48 83 c0 18          	add    $0x18,%rax
    9358:	48 8b 18             	mov    (%rax),%rbx
    935b:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    935f:	48 89 c7             	mov    %rax,%rdi
    9362:	e8 89 af ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    9367:	48 8d 55 c7          	lea    -0x39(%rbp),%rdx
    936b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    936f:	48 8d 0d 9d 37 00 00 	lea    0x379d(%rip),%rcx        # cb13 <_ZNSt6ranges6__cust9iter_moveE+0x2a>
    9376:	48 89 ce             	mov    %rcx,%rsi
    9379:	48 89 c7             	mov    %rax,%rdi
    937c:	e8 21 b9 ff ff       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    9381:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    9385:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    938c:	48 89 d6             	mov    %rdx,%rsi
    938f:	48 89 c7             	mov    %rax,%rdi
    9392:	ff d3                	call   *%rbx
    9394:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    9398:	48 89 c7             	mov    %rax,%rdi
    939b:	e8 b6 b7 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    93a0:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    93a4:	48 89 c7             	mov    %rax,%rdi
    93a7:	e8 f4 ad ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
            }
            seen_func_decl = 1;
    93ac:	c7 05 be 90 00 00 01 	movl   $0x1,0x90be(%rip)        # 12474 <seen_func_decl>
    93b3:	00 00 00 
    break;
    93b6:	eb 12                	jmp    93ca <_ZN2yy6parser5parseEv+0x434>

func_decl
    : func_header LEFT_ROUND_BRACKET formal_param_list RIGHT_ROUND_BRACKET SEMICOLON
    | func_header LEFT_ROUND_BRACKET RIGHT_ROUND_BRACKET SEMICOLON
        {
            printf("hello\n");
    93b8:	48 8d 05 70 37 00 00 	lea    0x3770(%rip),%rax        # cb2f <_ZNSt6ranges6__cust9iter_moveE+0x46>
    93bf:	48 89 c7             	mov    %rax,%rdi
    93c2:	e8 b9 ae ff ff       	call   4280 <puts@plt>
    break;
    93c7:	eb 01                	jmp    93ca <_ZN2yy6parser5parseEv+0x434>
              break;
    93c9:	90                   	nop
          error (yyexc);
          YYERROR;
        }
#endif // YY_EXCEPTIONS
      YY_SYMBOL_PRINT ("-> $$ =", yylhs);
      yypop_ (yylen);
    93ca:	8b 55 e0             	mov    -0x20(%rbp),%edx
    93cd:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    93d4:	89 d6                	mov    %edx,%esi
    93d6:	48 89 c7             	mov    %rax,%rdi
    93d9:	e8 c4 fa ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
      yylen = 0;
    93de:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)

      // Shift the result of the reduction.
      yypush_ (YY_NULLPTR, YY_MOVE (yylhs));
    93e5:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    93ec:	48 89 c7             	mov    %rax,%rdi
    93ef:	e8 f3 0d 00 00       	call   a1e7 <_ZSt4moveIRN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    93f4:	48 89 c2             	mov    %rax,%rdx
    93f7:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    93fe:	be 00 00 00 00       	mov    $0x0,%esi
    9403:	48 89 c7             	mov    %rax,%rdi
    9406:	e8 db f9 ff ff       	call   8de6 <_ZN2yy6parser7yypush_EPKcONS0_17stack_symbol_typeE>
    }
    940b:	bb 01 00 00 00       	mov    $0x1,%ebx
    9410:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    9417:	48 89 c7             	mov    %rax,%rdi
    941a:	e8 4b 0c 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    941f:	83 fb 01             	cmp    $0x1,%ebx
    9422:	0f 85 15 01 00 00    	jne    953d <_ZN2yy6parser5parseEv+0x5a7>
    9428:	90                   	nop
    goto yynewstate;
    9429:	e9 e2 fb ff ff       	jmp    9010 <_ZN2yy6parser5parseEv+0x7a>
          goto yyerrlab;
    942e:	90                   	nop
    942f:	eb 01                	jmp    9432 <_ZN2yy6parser5parseEv+0x49c>
      goto yyerrlab;
    9431:	90                   	nop
  /*--------------------------------------.
  | yyerrlab -- here on detecting error.  |
  `--------------------------------------*/
  yyerrlab:
    // If not already recovering from an error, report this error.
    if (!yyerrstatus_)
    9432:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    9436:	0f 85 94 00 00 00    	jne    94d0 <_ZN2yy6parser5parseEv+0x53a>
      {
        ++yynerrs_;
    943c:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
        context yyctx (*this, yyla);
    9440:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    9447:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
    944e:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    9455:	48 89 ce             	mov    %rcx,%rsi
    9458:	48 89 c7             	mov    %rax,%rdi
    945b:	e8 54 07 00 00       	call   9bb4 <_ZN2yy6parser7contextC1ERKS0_RKNS0_11symbol_typeE>
        std::string msg = yysyntax_error_ (yyctx);
    9460:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9467:	48 8b 00             	mov    (%rax),%rax
    946a:	48 83 c0 20          	add    $0x20,%rax
    946e:	4c 8b 00             	mov    (%rax),%r8
    9471:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    9478:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
    947f:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
    9486:	48 89 ce             	mov    %rcx,%rsi
    9489:	48 89 c7             	mov    %rax,%rdi
    948c:	41 ff d0             	call   *%r8
        error (YY_MOVE (msg));
    948f:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9496:	48 8b 00             	mov    (%rax),%rax
    9499:	48 83 c0 18          	add    $0x18,%rax
    949d:	48 8b 18             	mov    (%rax),%rbx
    94a0:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    94a7:	48 89 c7             	mov    %rax,%rdi
    94aa:	e8 8a bc ff ff       	call   5139 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
    94af:	48 89 c2             	mov    %rax,%rdx
    94b2:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    94b9:	48 89 d6             	mov    %rdx,%rsi
    94bc:	48 89 c7             	mov    %rax,%rdi
    94bf:	ff d3                	call   *%rbx
      }
    94c1:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    94c8:	48 89 c7             	mov    %rax,%rdi
    94cb:	e8 86 b6 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>


    if (yyerrstatus_ == 3)
    94d0:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
    94d4:	0f 85 80 00 00 00    	jne    955a <_ZN2yy6parser5parseEv+0x5c4>
      {
        /* If just tried and failed to reuse lookahead token after an
           error, discard it.  */

        // Return failure if at end of input.
        if (yyla.kind () == symbol_kind::S_YYEOF)
    94da:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    94e1:	48 89 c7             	mov    %rax,%rdi
    94e4:	e8 55 f7 ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    94e9:	85 c0                	test   %eax,%eax
    94eb:	0f 94 c0             	sete   %al
    94ee:	84 c0                	test   %al,%al
    94f0:	0f 85 bf 01 00 00    	jne    96b5 <_ZN2yy6parser5parseEv+0x71f>
          YYABORT;
        else if (!yyla.empty ())
    94f6:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    94fd:	48 89 c7             	mov    %rax,%rdi
    9500:	e8 47 0e 00 00       	call   a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>
    9505:	83 f0 01             	xor    $0x1,%eax
    9508:	84 c0                	test   %al,%al
    950a:	74 4e                	je     955a <_ZN2yy6parser5parseEv+0x5c4>
          {
            yy_destroy_ ("Error: discarding", yyla);
    950c:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    9513:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    951a:	48 8d 0d 14 36 00 00 	lea    0x3614(%rip),%rcx        # cb35 <_ZNSt6ranges6__cust9iter_moveE+0x4c>
    9521:	48 89 ce             	mov    %rcx,%rsi
    9524:	48 89 c7             	mov    %rax,%rdi
    9527:	e8 40 0e 00 00       	call   a36c <_ZNK2yy6parser11yy_destroy_INS0_7by_kindEEEvPKcRNS0_12basic_symbolIT_EE>
            yyla.clear ();
    952c:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    9533:	48 89 c7             	mov    %rax,%rdi
    9536:	e8 55 0e 00 00       	call   a390 <_ZN2yy6parser12basic_symbolINS0_7by_kindEE5clearEv>
          }
      }

    // Else will try to reuse lookahead token after shifting the error token.
    goto yyerrlab1;
    953b:	eb 1d                	jmp    955a <_ZN2yy6parser5parseEv+0x5c4>
    if (false)
      YYERROR;

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYERROR.  */
    yypop_ (yylen);
    953d:	8b 55 e0             	mov    -0x20(%rbp),%edx
    9540:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9547:	89 d6                	mov    %edx,%esi
    9549:	48 89 c7             	mov    %rax,%rdi
    954c:	e8 51 f9 ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
    yylen = 0;
    9551:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    YY_STACK_PRINT ();
    goto yyerrlab1;
    9558:	eb 01                	jmp    955b <_ZN2yy6parser5parseEv+0x5c5>
    goto yyerrlab1;
    955a:	90                   	nop

  /*-------------------------------------------------------------.
  | yyerrlab1 -- common code for both syntax error and YYERROR.  |
  `-------------------------------------------------------------*/
  yyerrlab1:
    yyerrstatus_ = 3;   // Each real token shifted decrements this.
    955b:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%rbp)
    // Pop stack until we find a state that shifts the error token.
    for (;;)
      {
        yyn = yypact_[+yystack_[0].state];
    9562:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9569:	48 83 c0 08          	add    $0x8,%rax
    956d:	be 00 00 00 00       	mov    $0x0,%esi
    9572:	48 89 c7             	mov    %rax,%rdi
    9575:	e8 98 0d 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    957a:	0f b6 00             	movzbl (%rax),%eax
    957d:	0f be c0             	movsbl %al,%eax
    9580:	48 98                	cltq
    9582:	48 8d 15 17 37 00 00 	lea    0x3717(%rip),%rdx        # cca0 <_ZN2yy6parser7yypact_E>
    9589:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    958d:	0f be c0             	movsbl %al,%eax
    9590:	89 45 dc             	mov    %eax,-0x24(%rbp)
        if (!yy_pact_value_is_default_ (yyn))
    9593:	8b 45 dc             	mov    -0x24(%rbp),%eax
    9596:	89 c7                	mov    %eax,%edi
    9598:	e8 a3 f9 ff ff       	call   8f40 <_ZN2yy6parser25yy_pact_value_is_default_Ei>
    959d:	83 f0 01             	xor    $0x1,%eax
    95a0:	84 c0                	test   %al,%al
    95a2:	74 40                	je     95e4 <_ZN2yy6parser5parseEv+0x64e>
          {
            yyn += symbol_kind::S_YYerror;
    95a4:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
            if (0 <= yyn && yyn <= yylast_
    95a8:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    95ac:	78 36                	js     95e4 <_ZN2yy6parser5parseEv+0x64e>
    95ae:	83 7d dc 53          	cmpl   $0x53,-0x24(%rbp)
    95b2:	7f 30                	jg     95e4 <_ZN2yy6parser5parseEv+0x64e>
                && yycheck_[yyn] == symbol_kind::S_YYerror)
    95b4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    95b7:	48 98                	cltq
    95b9:	48 8d 15 40 38 00 00 	lea    0x3840(%rip),%rdx        # ce00 <_ZN2yy6parser8yycheck_E>
    95c0:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    95c4:	3c 01                	cmp    $0x1,%al
    95c6:	75 1c                	jne    95e4 <_ZN2yy6parser5parseEv+0x64e>
              {
                yyn = yytable_[yyn];
    95c8:	8b 45 dc             	mov    -0x24(%rbp),%eax
    95cb:	48 98                	cltq
    95cd:	48 8d 15 cc 37 00 00 	lea    0x37cc(%rip),%rdx        # cda0 <_ZN2yy6parser8yytable_E>
    95d4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    95d8:	0f be c0             	movsbl %al,%eax
    95db:	89 45 dc             	mov    %eax,-0x24(%rbp)
                if (0 < yyn)
    95de:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    95e2:	7f 6f                	jg     9653 <_ZN2yy6parser5parseEv+0x6bd>
                  break;
              }
          }

        // Pop the current state because it cannot handle the error token.
        if (yystack_.size () == 1)
    95e4:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    95eb:	48 83 c0 08          	add    $0x8,%rax
    95ef:	48 89 c7             	mov    %rax,%rdi
    95f2:	e8 b5 0d 00 00       	call   a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>
    95f7:	48 83 f8 01          	cmp    $0x1,%rax
    95fb:	0f 94 c0             	sete   %al
    95fe:	84 c0                	test   %al,%al
    9600:	0f 85 b2 00 00 00    	jne    96b8 <_ZN2yy6parser5parseEv+0x722>
          YYABORT;

        yy_destroy_ ("Error: popping", yystack_[0]);
    9606:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    960d:	48 83 c0 08          	add    $0x8,%rax
    9611:	be 00 00 00 00       	mov    $0x0,%esi
    9616:	48 89 c7             	mov    %rax,%rdi
    9619:	e8 f4 0c 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    961e:	48 89 c2             	mov    %rax,%rdx
    9621:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9628:	48 8d 0d 18 35 00 00 	lea    0x3518(%rip),%rcx        # cb47 <_ZNSt6ranges6__cust9iter_moveE+0x5e>
    962f:	48 89 ce             	mov    %rcx,%rsi
    9632:	48 89 c7             	mov    %rax,%rdi
    9635:	e8 8c 0d 00 00       	call   a3c6 <_ZNK2yy6parser11yy_destroy_INS0_8by_stateEEEvPKcRNS0_12basic_symbolIT_EE>
        yypop_ ();
    963a:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9641:	be 01 00 00 00       	mov    $0x1,%esi
    9646:	48 89 c7             	mov    %rax,%rdi
    9649:	e8 54 f8 ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
        yyn = yypact_[+yystack_[0].state];
    964e:	e9 0f ff ff ff       	jmp    9562 <_ZN2yy6parser5parseEv+0x5cc>
                  break;
    9653:	90                   	nop
        YY_STACK_PRINT ();
      }
    {
      stack_symbol_type error_token;
    9654:	48 8d 85 48 ff ff ff 	lea    -0xb8(%rbp),%rax
    965b:	48 89 c7             	mov    %rax,%rdi
    965e:	e8 c1 f6 ff ff       	call   8d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>


      // Shift the error token.
      error_token.state = state_type (yyn);
    9663:	8b 45 dc             	mov    -0x24(%rbp),%eax
    9666:	88 85 48 ff ff ff    	mov    %al,-0xb8(%rbp)
      yypush_ ("Shifting", YY_MOVE (error_token));
    966c:	48 8d 85 48 ff ff ff 	lea    -0xb8(%rbp),%rax
    9673:	48 89 c7             	mov    %rax,%rdi
    9676:	e8 6c 0b 00 00       	call   a1e7 <_ZSt4moveIRN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    967b:	48 89 c2             	mov    %rax,%rdx
    967e:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9685:	48 8d 0d 7e 34 00 00 	lea    0x347e(%rip),%rcx        # cb0a <_ZNSt6ranges6__cust9iter_moveE+0x21>
    968c:	48 89 ce             	mov    %rcx,%rsi
    968f:	48 89 c7             	mov    %rax,%rdi
    9692:	e8 4f f7 ff ff       	call   8de6 <_ZN2yy6parser7yypush_EPKcONS0_17stack_symbol_typeE>
    }
    9697:	48 8d 85 48 ff ff ff 	lea    -0xb8(%rbp),%rax
    969e:	48 89 c7             	mov    %rax,%rdi
    96a1:	e8 c4 09 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    goto yynewstate;
    96a6:	e9 65 f9 ff ff       	jmp    9010 <_ZN2yy6parser5parseEv+0x7a>
      YYACCEPT;
    96ab:	90                   	nop

  /*-------------------------------------.
  | yyacceptlab -- YYACCEPT comes here.  |
  `-------------------------------------*/
  yyacceptlab:
    yyresult = 0;
    96ac:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    goto yyreturn;
    96b3:	eb 0c                	jmp    96c1 <_ZN2yy6parser5parseEv+0x72b>
          YYABORT;
    96b5:	90                   	nop
    96b6:	eb 01                	jmp    96b9 <_ZN2yy6parser5parseEv+0x723>
          YYABORT;
    96b8:	90                   	nop

  /*-----------------------------------.
  | yyabortlab -- YYABORT comes here.  |
  `-----------------------------------*/
  yyabortlab:
    yyresult = 1;
    96b9:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    goto yyreturn;
    96c0:	90                   	nop

  /*-----------------------------------------------------.
  | yyreturn -- parsing is finished, return the result.  |
  `-----------------------------------------------------*/
  yyreturn:
    if (!yyla.empty ())
    96c1:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    96c8:	48 89 c7             	mov    %rax,%rdi
    96cb:	e8 7c 0c 00 00       	call   a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>
    96d0:	83 f0 01             	xor    $0x1,%eax
    96d3:	84 c0                	test   %al,%al
    96d5:	74 20                	je     96f7 <_ZN2yy6parser5parseEv+0x761>
      yy_destroy_ ("Cleanup: discarding lookahead", yyla);
    96d7:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    96de:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    96e5:	48 8d 0d 6a 34 00 00 	lea    0x346a(%rip),%rcx        # cb56 <_ZNSt6ranges6__cust9iter_moveE+0x6d>
    96ec:	48 89 ce             	mov    %rcx,%rsi
    96ef:	48 89 c7             	mov    %rax,%rdi
    96f2:	e8 75 0c 00 00       	call   a36c <_ZNK2yy6parser11yy_destroy_INS0_7by_kindEEEvPKcRNS0_12basic_symbolIT_EE>

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYABORT or YYACCEPT.  */
    yypop_ (yylen);
    96f7:	8b 55 e0             	mov    -0x20(%rbp),%edx
    96fa:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9701:	89 d6                	mov    %edx,%esi
    9703:	48 89 c7             	mov    %rax,%rdi
    9706:	e8 97 f7 ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
    YY_STACK_PRINT ();
    while (1 < yystack_.size ())
    970b:	eb 48                	jmp    9755 <_ZN2yy6parser5parseEv+0x7bf>
      {
        yy_destroy_ ("Cleanup: popping", yystack_[0]);
    970d:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9714:	48 83 c0 08          	add    $0x8,%rax
    9718:	be 00 00 00 00       	mov    $0x0,%esi
    971d:	48 89 c7             	mov    %rax,%rdi
    9720:	e8 ed 0b 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9725:	48 89 c2             	mov    %rax,%rdx
    9728:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    972f:	48 8d 0d 3e 34 00 00 	lea    0x343e(%rip),%rcx        # cb74 <_ZNSt6ranges6__cust9iter_moveE+0x8b>
    9736:	48 89 ce             	mov    %rcx,%rsi
    9739:	48 89 c7             	mov    %rax,%rdi
    973c:	e8 85 0c 00 00       	call   a3c6 <_ZNK2yy6parser11yy_destroy_INS0_8by_stateEEEvPKcRNS0_12basic_symbolIT_EE>
        yypop_ ();
    9741:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9748:	be 01 00 00 00       	mov    $0x1,%esi
    974d:	48 89 c7             	mov    %rax,%rdi
    9750:	e8 4d f7 ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
    while (1 < yystack_.size ())
    9755:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    975c:	48 83 c0 08          	add    $0x8,%rax
    9760:	48 89 c7             	mov    %rax,%rdi
    9763:	e8 44 0c 00 00       	call   a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>
    9768:	48 83 f8 01          	cmp    $0x1,%rax
    976c:	0f 9f c0             	setg   %al
    976f:	84 c0                	test   %al,%al
    9771:	75 9a                	jne    970d <_ZN2yy6parser5parseEv+0x777>
      }

    return yyresult;
    9773:	8b 5d e8             	mov    -0x18(%rbp),%ebx
            yypop_ ();
          }
        throw;
      }
#endif // YY_EXCEPTIONS
  }
    9776:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    977d:	48 89 c7             	mov    %rax,%rdi
    9780:	e8 1d 09 00 00       	call   a0a2 <_ZN2yy6parser11symbol_typeD1Ev>
    return yyresult;
    9785:	89 d8                	mov    %ebx,%eax
    9787:	e9 f4 01 00 00       	jmp    9980 <_ZN2yy6parser5parseEv+0x9ea>
        catch (const syntax_error& yyexc)
    978c:	48 83 fa 02          	cmp    $0x2,%rdx
    9790:	74 05                	je     9797 <_ZN2yy6parser5parseEv+0x801>
    9792:	e9 26 01 00 00       	jmp    98bd <_ZN2yy6parser5parseEv+0x927>
    9797:	48 89 c7             	mov    %rax,%rdi
    979a:	e8 f1 a8 ff ff       	call   4090 <__cxa_begin_catch@plt>
    979f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
            error (yyexc);
    97a3:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    97a7:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    97ae:	48 89 d6             	mov    %rdx,%rsi
    97b1:	48 89 c7             	mov    %rax,%rdi
    97b4:	e8 d3 01 00 00       	call   998c <_ZN2yy6parser5errorERKNS0_12syntax_errorE>
          }
    97b9:	e8 e2 aa ff ff       	call   42a0 <__cxa_end_catch@plt>
    97be:	e9 98 fd ff ff       	jmp    955b <_ZN2yy6parser5parseEv+0x5c5>
    97c3:	48 89 c3             	mov    %rax,%rbx
    97c6:	e8 d5 aa ff ff       	call   42a0 <__cxa_end_catch@plt>
    97cb:	48 89 d8             	mov    %rbx,%rax
    97ce:	e9 ea 00 00 00       	jmp    98bd <_ZN2yy6parser5parseEv+0x927>
                error("only one func_decl allowed\n");
    97d3:	49 89 c4             	mov    %rax,%r12
    97d6:	48 89 d3             	mov    %rdx,%rbx
    97d9:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
    97e0:	48 89 c7             	mov    %rax,%rdi
    97e3:	e8 6e b3 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    97e8:	eb 06                	jmp    97f0 <_ZN2yy6parser5parseEv+0x85a>
    97ea:	49 89 c4             	mov    %rax,%r12
    97ed:	48 89 d3             	mov    %rdx,%rbx
    97f0:	48 8d 45 9f          	lea    -0x61(%rbp),%rax
    97f4:	48 89 c7             	mov    %rax,%rdi
    97f7:	e8 a4 a9 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    97fc:	4c 89 e0             	mov    %r12,%rax
    97ff:	48 89 da             	mov    %rbx,%rdx
    9802:	eb 2e                	jmp    9832 <_ZN2yy6parser5parseEv+0x89c>
                error("only one func_decl allowed\n");
    9804:	49 89 c4             	mov    %rax,%r12
    9807:	48 89 d3             	mov    %rdx,%rbx
    980a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    980e:	48 89 c7             	mov    %rax,%rdi
    9811:	e8 40 b3 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9816:	eb 06                	jmp    981e <_ZN2yy6parser5parseEv+0x888>
    9818:	49 89 c4             	mov    %rax,%r12
    981b:	48 89 d3             	mov    %rdx,%rbx
    981e:	48 8d 45 c7          	lea    -0x39(%rbp),%rax
    9822:	48 89 c7             	mov    %rax,%rdi
    9825:	e8 76 a9 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    982a:	4c 89 e0             	mov    %r12,%rax
    982d:	48 89 da             	mov    %rbx,%rdx
    9830:	eb 00                	jmp    9832 <_ZN2yy6parser5parseEv+0x89c>
      catch (const syntax_error& yyexc)
    9832:	48 83 fa 02          	cmp    $0x2,%rdx
    9836:	74 05                	je     983d <_ZN2yy6parser5parseEv+0x8a7>
    9838:	48 89 c3             	mov    %rax,%rbx
    983b:	eb 3e                	jmp    987b <_ZN2yy6parser5parseEv+0x8e5>
    983d:	48 89 c7             	mov    %rax,%rdi
    9840:	e8 4b a8 ff ff       	call   4090 <__cxa_begin_catch@plt>
    9845:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
          error (yyexc);
    9849:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    984d:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9854:	48 89 d6             	mov    %rdx,%rsi
    9857:	48 89 c7             	mov    %rax,%rdi
    985a:	e8 2d 01 00 00       	call   998c <_ZN2yy6parser5errorERKNS0_12syntax_errorE>
        }
    985f:	e8 3c aa ff ff       	call   42a0 <__cxa_end_catch@plt>
    9864:	bb 00 00 00 00       	mov    $0x0,%ebx
    9869:	e9 a2 fb ff ff       	jmp    9410 <_ZN2yy6parser5parseEv+0x47a>
    986e:	48 89 c3             	mov    %rax,%rbx
    9871:	e8 2a aa ff ff       	call   42a0 <__cxa_end_catch@plt>
    9876:	eb 03                	jmp    987b <_ZN2yy6parser5parseEv+0x8e5>
    }
    9878:	48 89 c3             	mov    %rax,%rbx
    987b:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    9882:	48 89 c7             	mov    %rax,%rdi
    9885:	e8 e0 07 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    988a:	48 89 d8             	mov    %rbx,%rax
    988d:	eb 2e                	jmp    98bd <_ZN2yy6parser5parseEv+0x927>
      }
    988f:	48 89 c3             	mov    %rax,%rbx
    9892:	48 8d 85 20 ff ff ff 	lea    -0xe0(%rbp),%rax
    9899:	48 89 c7             	mov    %rax,%rdi
    989c:	e8 b5 b2 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    98a1:	48 89 d8             	mov    %rbx,%rax
    98a4:	eb 17                	jmp    98bd <_ZN2yy6parser5parseEv+0x927>
    }
    98a6:	48 89 c3             	mov    %rax,%rbx
    98a9:	48 8d 85 48 ff ff ff 	lea    -0xb8(%rbp),%rax
    98b0:	48 89 c7             	mov    %rax,%rdi
    98b3:	e8 b2 07 00 00       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    98b8:	48 89 d8             	mov    %rbx,%rax
    98bb:	eb 00                	jmp    98bd <_ZN2yy6parser5parseEv+0x927>
    catch (...)
    98bd:	48 89 c7             	mov    %rax,%rdi
    98c0:	e8 cb a7 ff ff       	call   4090 <__cxa_begin_catch@plt>
        if (!yyla.empty ())
    98c5:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    98cc:	48 89 c7             	mov    %rax,%rdi
    98cf:	e8 78 0a 00 00       	call   a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>
    98d4:	83 f0 01             	xor    $0x1,%eax
    98d7:	84 c0                	test   %al,%al
    98d9:	74 60                	je     993b <_ZN2yy6parser5parseEv+0x9a5>
          yy_destroy_ (YY_NULLPTR, yyla);
    98db:	48 8d 95 68 ff ff ff 	lea    -0x98(%rbp),%rdx
    98e2:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    98e9:	be 00 00 00 00       	mov    $0x0,%esi
    98ee:	48 89 c7             	mov    %rax,%rdi
    98f1:	e8 76 0a 00 00       	call   a36c <_ZNK2yy6parser11yy_destroy_INS0_7by_kindEEEvPKcRNS0_12basic_symbolIT_EE>
        while (1 < yystack_.size ())
    98f6:	eb 43                	jmp    993b <_ZN2yy6parser5parseEv+0x9a5>
            yy_destroy_ (YY_NULLPTR, yystack_[0]);
    98f8:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    98ff:	48 83 c0 08          	add    $0x8,%rax
    9903:	be 00 00 00 00       	mov    $0x0,%esi
    9908:	48 89 c7             	mov    %rax,%rdi
    990b:	e8 02 0a 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9910:	48 89 c2             	mov    %rax,%rdx
    9913:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    991a:	be 00 00 00 00       	mov    $0x0,%esi
    991f:	48 89 c7             	mov    %rax,%rdi
    9922:	e8 9f 0a 00 00       	call   a3c6 <_ZNK2yy6parser11yy_destroy_INS0_8by_stateEEEvPKcRNS0_12basic_symbolIT_EE>
            yypop_ ();
    9927:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    992e:	be 01 00 00 00       	mov    $0x1,%esi
    9933:	48 89 c7             	mov    %rax,%rdi
    9936:	e8 67 f5 ff ff       	call   8ea2 <_ZN2yy6parser6yypop_Ei>
        while (1 < yystack_.size ())
    993b:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
    9942:	48 83 c0 08          	add    $0x8,%rax
    9946:	48 89 c7             	mov    %rax,%rdi
    9949:	e8 5e 0a 00 00       	call   a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>
    994e:	48 83 f8 01          	cmp    $0x1,%rax
    9952:	0f 9f c0             	setg   %al
    9955:	84 c0                	test   %al,%al
    9957:	75 9f                	jne    98f8 <_ZN2yy6parser5parseEv+0x962>
        throw;
    9959:	e8 d2 a8 ff ff       	call   4230 <__cxa_rethrow@plt>
      }
    995e:	48 89 c3             	mov    %rax,%rbx
    9961:	e8 3a a9 ff ff       	call   42a0 <__cxa_end_catch@plt>
  }
    9966:	48 8d 85 68 ff ff ff 	lea    -0x98(%rbp),%rax
    996d:	48 89 c7             	mov    %rax,%rdi
    9970:	e8 2d 07 00 00       	call   a0a2 <_ZN2yy6parser11symbol_typeD1Ev>
    9975:	48 89 d8             	mov    %rbx,%rax
    9978:	48 89 c7             	mov    %rax,%rdi
    997b:	e8 60 a9 ff ff       	call   42e0 <_Unwind_Resume@plt>
    9980:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
    9987:	5b                   	pop    %rbx
    9988:	41 5c                	pop    %r12
    998a:	5d                   	pop    %rbp
    998b:	c3                   	ret

000000000000998c <_ZN2yy6parser5errorERKNS0_12syntax_errorE>:

  void
  parser::error (const syntax_error& yyexc)
  {
    998c:	55                   	push   %rbp
    998d:	48 89 e5             	mov    %rsp,%rbp
    9990:	53                   	push   %rbx
    9991:	48 83 ec 48          	sub    $0x48,%rsp
    9995:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    9999:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    error (yyexc.what ());
    999d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    99a1:	48 8b 00             	mov    (%rax),%rax
    99a4:	48 83 c0 18          	add    $0x18,%rax
    99a8:	48 8b 18             	mov    (%rax),%rbx
    99ab:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    99af:	48 89 c7             	mov    %rax,%rdi
    99b2:	e8 39 a9 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    99b7:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    99bb:	48 8b 00             	mov    (%rax),%rax
    99be:	48 83 c0 10          	add    $0x10,%rax
    99c2:	48 8b 10             	mov    (%rax),%rdx
    99c5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    99c9:	48 89 c7             	mov    %rax,%rdi
    99cc:	ff d2                	call   *%rdx
    99ce:	48 89 c1             	mov    %rax,%rcx
    99d1:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
    99d5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    99d9:	48 89 ce             	mov    %rcx,%rsi
    99dc:	48 89 c7             	mov    %rax,%rdi
    99df:	e8 be b2 ff ff       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    99e4:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    99e8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    99ec:	48 89 d6             	mov    %rdx,%rsi
    99ef:	48 89 c7             	mov    %rax,%rdi
    99f2:	ff d3                	call   *%rbx
    99f4:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    99f8:	48 89 c7             	mov    %rax,%rdi
    99fb:	e8 56 b1 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9a00:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    9a04:	48 89 c7             	mov    %rax,%rdi
    9a07:	e8 94 a7 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
  }
    9a0c:	eb 2b                	jmp    9a39 <_ZN2yy6parser5errorERKNS0_12syntax_errorE+0xad>
    error (yyexc.what ());
    9a0e:	48 89 c3             	mov    %rax,%rbx
    9a11:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    9a15:	48 89 c7             	mov    %rax,%rdi
    9a18:	e8 39 b1 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9a1d:	eb 03                	jmp    9a22 <_ZN2yy6parser5errorERKNS0_12syntax_errorE+0x96>
    9a1f:	48 89 c3             	mov    %rax,%rbx
    9a22:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    9a26:	48 89 c7             	mov    %rax,%rdi
    9a29:	e8 72 a7 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    9a2e:	48 89 d8             	mov    %rbx,%rax
    9a31:	48 89 c7             	mov    %rax,%rdi
    9a34:	e8 a7 a8 ff ff       	call   42e0 <_Unwind_Resume@plt>
  }
    9a39:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9a3d:	c9                   	leave
    9a3e:	c3                   	ret
    9a3f:	90                   	nop

0000000000009a40 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc>:
     that double-quoting is unnecessary unless the string contains an
     apostrophe, a comma, or backslash (other than backslash-backslash).
     YYSTR is taken from yytname.  */
  std::string
  parser::yytnamerr_ (const char *yystr)
  {
    9a40:	55                   	push   %rbp
    9a41:	48 89 e5             	mov    %rsp,%rbp
    9a44:	53                   	push   %rbx
    9a45:	48 83 ec 48          	sub    $0x48,%rsp
    9a49:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    9a4d:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    if (*yystr == '"')
    9a51:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9a55:	0f b6 00             	movzbl (%rax),%eax
    9a58:	3c 22                	cmp    $0x22,%al
    9a5a:	0f 85 a9 00 00 00    	jne    9b09 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xc9>
      {
        std::string yyr;
    9a60:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    9a64:	48 89 c7             	mov    %rax,%rdi
    9a67:	e8 76 ae ff ff       	call   48e2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
        char const *yyp = yystr;
    9a6c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    9a70:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

        for (;;)
          switch (*++yyp)
    9a74:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    9a79:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a7d:	0f b6 00             	movzbl (%rax),%eax
    9a80:	0f be c0             	movsbl %al,%eax
    9a83:	83 f8 5c             	cmp    $0x5c,%eax
    9a86:	74 1b                	je     9aa3 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x63>
    9a88:	83 f8 5c             	cmp    $0x5c,%eax
    9a8b:	7f 2c                	jg     9ab9 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x79>
    9a8d:	83 f8 2c             	cmp    $0x2c,%eax
    9a90:	74 5d                	je     9aef <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xaf>
    9a92:	83 f8 2c             	cmp    $0x2c,%eax
    9a95:	7f 22                	jg     9ab9 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x79>
    9a97:	83 f8 22             	cmp    $0x22,%eax
    9a9a:	74 37                	je     9ad3 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x93>
    9a9c:	83 f8 27             	cmp    $0x27,%eax
    9a9f:	75 18                	jne    9ab9 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x79>
            {
            case '\'':
            case ',':
              goto do_not_strip_quotes;
    9aa1:	eb 4c                	jmp    9aef <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xaf>

            case '\\':
              if (*++yyp != '\\')
    9aa3:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    9aa8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9aac:	0f b6 00             	movzbl (%rax),%eax
    9aaf:	3c 5c                	cmp    $0x5c,%al
    9ab1:	0f 95 c0             	setne  %al
    9ab4:	84 c0                	test   %al,%al
    9ab6:	75 3a                	jne    9af2 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xb2>
                goto do_not_strip_quotes;
              else
                goto append;
    9ab8:	90                   	nop

            append:
            default:
              yyr += *yyp;
    9ab9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9abd:	0f b6 00             	movzbl (%rax),%eax
    9ac0:	0f be d0             	movsbl %al,%edx
    9ac3:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    9ac7:	89 d6                	mov    %edx,%esi
    9ac9:	48 89 c7             	mov    %rax,%rdi
    9acc:	e8 19 09 00 00       	call   a3ea <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc>
              break;
    9ad1:	eb 1a                	jmp    9aed <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xad>

            case '"':
              return yyr;
    9ad3:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
    9ad7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9adb:	48 89 d6             	mov    %rdx,%rsi
    9ade:	48 89 c7             	mov    %rax,%rdi
    9ae1:	e8 98 b0 ff ff       	call   4b7e <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
    9ae6:	bb 00 00 00 00       	mov    $0x0,%ebx
    9aeb:	eb 0b                	jmp    9af8 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xb8>
          switch (*++yyp)
    9aed:	eb 85                	jmp    9a74 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x34>
              goto do_not_strip_quotes;
    9aef:	90                   	nop
    9af0:	eb 01                	jmp    9af3 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0xb3>
                goto do_not_strip_quotes;
    9af2:	90                   	nop
            }
      do_not_strip_quotes: ;
      }
    9af3:	bb 01 00 00 00       	mov    $0x1,%ebx
    9af8:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    9afc:	48 89 c7             	mov    %rax,%rdi
    9aff:	e8 52 b0 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9b04:	83 fb 01             	cmp    $0x1,%ebx
    9b07:	75 65                	jne    9b6e <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x12e>

    return yystr;
    9b09:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    9b0d:	48 89 c7             	mov    %rax,%rdi
    9b10:	e8 db a7 ff ff       	call   42f0 <_ZNSaIcEC1Ev@plt>
    9b15:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    9b19:	48 8d 55 e7          	lea    -0x19(%rbp),%rdx
    9b1d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9b21:	48 89 ce             	mov    %rcx,%rsi
    9b24:	48 89 c7             	mov    %rax,%rdi
    9b27:	e8 76 b1 ff ff       	call   4ca2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_>
    9b2c:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    9b30:	48 89 c7             	mov    %rax,%rdi
    9b33:	e8 68 a6 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    9b38:	eb 34                	jmp    9b6e <_ZN2yy6parser10yytnamerr_B5cxx11EPKc+0x12e>
      }
    9b3a:	48 89 c3             	mov    %rax,%rbx
    9b3d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    9b41:	48 89 c7             	mov    %rax,%rdi
    9b44:	e8 0d b0 ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9b49:	48 89 d8             	mov    %rbx,%rax
    9b4c:	48 89 c7             	mov    %rax,%rdi
    9b4f:	e8 8c a7 ff ff       	call   42e0 <_Unwind_Resume@plt>
    return yystr;
    9b54:	48 89 c3             	mov    %rax,%rbx
    9b57:	48 8d 45 e7          	lea    -0x19(%rbp),%rax
    9b5b:	48 89 c7             	mov    %rax,%rdi
    9b5e:	e8 3d a6 ff ff       	call   41a0 <_ZNSaIcED1Ev@plt>
    9b63:	48 89 d8             	mov    %rbx,%rax
    9b66:	48 89 c7             	mov    %rax,%rdi
    9b69:	e8 72 a7 ff ff       	call   42e0 <_Unwind_Resume@plt>
  }
    9b6e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    9b72:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9b76:	c9                   	leave
    9b77:	c3                   	ret

0000000000009b78 <_ZN2yy6parser11symbol_nameB5cxx11ENS0_11symbol_kind16symbol_kind_typeE>:

  std::string
  parser::symbol_name (symbol_kind_type yysymbol)
  {
    9b78:	55                   	push   %rbp
    9b79:	48 89 e5             	mov    %rsp,%rbp
    9b7c:	48 83 ec 10          	sub    $0x10,%rsp
    9b80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9b84:	89 75 f4             	mov    %esi,-0xc(%rbp)
    return yytnamerr_ (yytname_[yysymbol]);
    9b87:	8b 45 f4             	mov    -0xc(%rbp),%eax
    9b8a:	48 98                	cltq
    9b8c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9b93:	00 
    9b94:	48 8d 05 e5 7f 00 00 	lea    0x7fe5(%rip),%rax        # 11b80 <_ZN2yy6parser8yytname_E>
    9b9b:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
    9b9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9ba3:	48 89 d6             	mov    %rdx,%rsi
    9ba6:	48 89 c7             	mov    %rax,%rdi
    9ba9:	e8 92 fe ff ff       	call   9a40 <_ZN2yy6parser10yytnamerr_B5cxx11EPKc>
  }
    9bae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9bb2:	c9                   	leave
    9bb3:	c3                   	ret

0000000000009bb4 <_ZN2yy6parser7contextC1ERKS0_RKNS0_11symbol_typeE>:



  // parser::context.
  parser::context::context (const parser& yyparser, const symbol_type& yyla)
    9bb4:	55                   	push   %rbp
    9bb5:	48 89 e5             	mov    %rsp,%rbp
    9bb8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9bbc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9bc0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    : yyparser_ (yyparser)
    9bc4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9bc8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    9bcc:	48 89 10             	mov    %rdx,(%rax)
    , yyla_ (yyla)
    9bcf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9bd3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    9bd7:	48 89 50 08          	mov    %rdx,0x8(%rax)
  {}
    9bdb:	90                   	nop
    9bdc:	5d                   	pop    %rbp
    9bdd:	c3                   	ret

0000000000009bde <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi>:

  int
  parser::context::expected_tokens (symbol_kind_type yyarg[], int yyargn) const
  {
    9bde:	55                   	push   %rbp
    9bdf:	48 89 e5             	mov    %rsp,%rbp
    9be2:	48 83 ec 40          	sub    $0x40,%rsp
    9be6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9bea:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9bee:	89 55 cc             	mov    %edx,-0x34(%rbp)
    // Actual number of expected tokens
    int yycount = 0;
    9bf1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)

    const int yyn = yypact_[+yyparser_.yystack_[0].state];
    9bf8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9bfc:	48 8b 00             	mov    (%rax),%rax
    9bff:	48 83 c0 08          	add    $0x8,%rax
    9c03:	be 00 00 00 00       	mov    $0x0,%esi
    9c08:	48 89 c7             	mov    %rax,%rdi
    9c0b:	e8 04 08 00 00       	call   a414 <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    9c10:	0f b6 00             	movzbl (%rax),%eax
    9c13:	0f be c0             	movsbl %al,%eax
    9c16:	48 98                	cltq
    9c18:	48 8d 15 81 30 00 00 	lea    0x3081(%rip),%rdx        # cca0 <_ZN2yy6parser7yypact_E>
    9c1f:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9c23:	0f be c0             	movsbl %al,%eax
    9c26:	89 45 f4             	mov    %eax,-0xc(%rbp)
    if (!yy_pact_value_is_default_ (yyn))
    9c29:	8b 45 f4             	mov    -0xc(%rbp),%eax
    9c2c:	89 c7                	mov    %eax,%edi
    9c2e:	e8 0d f3 ff ff       	call   8f40 <_ZN2yy6parser25yy_pact_value_is_default_Ei>
    9c33:	83 f0 01             	xor    $0x1,%eax
    9c36:	84 c0                	test   %al,%al
    9c38:	0f 84 db 00 00 00    	je     9d19 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x13b>
      {
        /* Start YYX at -YYN if negative to avoid negative indexes in
           YYCHECK.  In other words, skip the first -YYN actions for
           this state because they are default actions.  */
        const int yyxbegin = yyn < 0 ? -yyn : 0;
    9c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    9c42:	79 07                	jns    9c4b <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x6d>
    9c44:	8b 45 f4             	mov    -0xc(%rbp),%eax
    9c47:	f7 d8                	neg    %eax
    9c49:	eb 05                	jmp    9c50 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x72>
    9c4b:	b8 00 00 00 00       	mov    $0x0,%eax
    9c50:	89 45 f0             	mov    %eax,-0x10(%rbp)
        // Stay within bounds of both yycheck and yytname.
        const int yychecklim = yylast_ - yyn + 1;
    9c53:	b8 54 00 00 00       	mov    $0x54,%eax
    9c58:	2b 45 f4             	sub    -0xc(%rbp),%eax
    9c5b:	89 45 ec             	mov    %eax,-0x14(%rbp)
        const int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
    9c5e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    9c61:	ba 19 00 00 00       	mov    $0x19,%edx
    9c66:	39 d0                	cmp    %edx,%eax
    9c68:	0f 4f c2             	cmovg  %edx,%eax
    9c6b:	89 45 e8             	mov    %eax,-0x18(%rbp)
        for (int yyx = yyxbegin; yyx < yyxend; ++yyx)
    9c6e:	8b 45 f0             	mov    -0x10(%rbp),%eax
    9c71:	89 45 f8             	mov    %eax,-0x8(%rbp)
    9c74:	e9 94 00 00 00       	jmp    9d0d <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x12f>
          if (yycheck_[yyx + yyn] == yyx && yyx != symbol_kind::S_YYerror
    9c79:	8b 55 f8             	mov    -0x8(%rbp),%edx
    9c7c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    9c7f:	01 d0                	add    %edx,%eax
    9c81:	48 98                	cltq
    9c83:	48 8d 15 76 31 00 00 	lea    0x3176(%rip),%rdx        # ce00 <_ZN2yy6parser8yycheck_E>
    9c8a:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9c8e:	0f be c0             	movsbl %al,%eax
              && !yy_table_value_is_error_ (yytable_[yyx + yyn]))
    9c91:	39 45 f8             	cmp    %eax,-0x8(%rbp)
    9c94:	75 33                	jne    9cc9 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0xeb>
          if (yycheck_[yyx + yyn] == yyx && yyx != symbol_kind::S_YYerror
    9c96:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
    9c9a:	74 2d                	je     9cc9 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0xeb>
              && !yy_table_value_is_error_ (yytable_[yyx + yyn]))
    9c9c:	8b 55 f8             	mov    -0x8(%rbp),%edx
    9c9f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    9ca2:	01 d0                	add    %edx,%eax
    9ca4:	48 98                	cltq
    9ca6:	48 8d 15 f3 30 00 00 	lea    0x30f3(%rip),%rdx        # cda0 <_ZN2yy6parser8yytable_E>
    9cad:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9cb1:	0f be c0             	movsbl %al,%eax
    9cb4:	89 c7                	mov    %eax,%edi
    9cb6:	e8 9d f2 ff ff       	call   8f58 <_ZN2yy6parser24yy_table_value_is_error_Ei>
    9cbb:	83 f0 01             	xor    $0x1,%eax
    9cbe:	84 c0                	test   %al,%al
    9cc0:	74 07                	je     9cc9 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0xeb>
    9cc2:	b8 01 00 00 00       	mov    $0x1,%eax
    9cc7:	eb 05                	jmp    9cce <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0xf0>
    9cc9:	b8 00 00 00 00       	mov    $0x0,%eax
          if (yycheck_[yyx + yyn] == yyx && yyx != symbol_kind::S_YYerror
    9cce:	84 c0                	test   %al,%al
    9cd0:	74 37                	je     9d09 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x12b>
            {
              if (!yyarg)
    9cd2:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    9cd7:	75 06                	jne    9cdf <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x101>
                ++yycount;
    9cd9:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    9cdd:	eb 2a                	jmp    9d09 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x12b>
              else if (yycount == yyargn)
    9cdf:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9ce2:	3b 45 cc             	cmp    -0x34(%rbp),%eax
    9ce5:	75 07                	jne    9cee <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x110>
                return 0;
    9ce7:	b8 00 00 00 00       	mov    $0x0,%eax
    9cec:	eb 4b                	jmp    9d39 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x15b>
              else
                yyarg[yycount++] = YY_CAST (symbol_kind_type, yyx);
    9cee:	8b 55 f8             	mov    -0x8(%rbp),%edx
    9cf1:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    9cf5:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9cf8:	8d 48 01             	lea    0x1(%rax),%ecx
    9cfb:	89 4d fc             	mov    %ecx,-0x4(%rbp)
    9cfe:	48 98                	cltq
    9d00:	48 c1 e0 02          	shl    $0x2,%rax
    9d04:	48 01 f0             	add    %rsi,%rax
    9d07:	89 10                	mov    %edx,(%rax)
        for (int yyx = yyxbegin; yyx < yyxend; ++yyx)
    9d09:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    9d0d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    9d10:	3b 45 e8             	cmp    -0x18(%rbp),%eax
    9d13:	0f 8c 60 ff ff ff    	jl     9c79 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x9b>
            }
      }

    if (yyarg && yycount == 0 && 0 < yyargn)
    9d19:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    9d1e:	74 16                	je     9d36 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x158>
    9d20:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    9d24:	75 10                	jne    9d36 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x158>
    9d26:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
    9d2a:	7e 0a                	jle    9d36 <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi+0x158>
      yyarg[0] = symbol_kind::S_YYEMPTY;
    9d2c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9d30:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%rax)
    return yycount;
    9d36:	8b 45 fc             	mov    -0x4(%rbp),%eax
  }
    9d39:	c9                   	leave
    9d3a:	c3                   	ret
    9d3b:	90                   	nop

0000000000009d3c <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi>:


  int
  parser::yy_syntax_error_arguments_ (const context& yyctx,
                                                 symbol_kind_type yyarg[], int yyargn) const
  {
    9d3c:	55                   	push   %rbp
    9d3d:	48 89 e5             	mov    %rsp,%rbp
    9d40:	48 83 ec 30          	sub    $0x30,%rsp
    9d44:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9d48:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9d4c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    9d50:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
         token list.  However, the list is correct for canonical LR with
         one exception: it will still contain any token that will not be
         accepted due to an error action in a later state.
    */

    if (!yyctx.lookahead ().empty ())
    9d53:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9d57:	48 89 c7             	mov    %rax,%rdi
    9d5a:	e8 bf 02 00 00       	call   a01e <_ZNK2yy6parser7context9lookaheadEv>
    9d5f:	48 89 c7             	mov    %rax,%rdi
    9d62:	e8 e5 05 00 00       	call   a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>
    9d67:	83 f0 01             	xor    $0x1,%eax
    9d6a:	84 c0                	test   %al,%al
    9d6c:	74 4e                	je     9dbc <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi+0x80>
      {
        if (yyarg)
    9d6e:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    9d73:	74 12                	je     9d87 <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi+0x4b>
          yyarg[0] = yyctx.token ();
    9d75:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9d79:	48 89 c7             	mov    %rax,%rdi
    9d7c:	e8 af 02 00 00       	call   a030 <_ZNK2yy6parser7context5tokenEv>
    9d81:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    9d85:	89 02                	mov    %eax,(%rdx)
        int yyn = yyctx.expected_tokens (yyarg ? yyarg + 1 : yyarg, yyargn - 1);
    9d87:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    9d8a:	8d 50 ff             	lea    -0x1(%rax),%edx
    9d8d:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    9d92:	74 0a                	je     9d9e <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi+0x62>
    9d94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d98:	48 83 c0 04          	add    $0x4,%rax
    9d9c:	eb 04                	jmp    9da2 <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi+0x66>
    9d9e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9da2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9da6:	48 89 c6             	mov    %rax,%rsi
    9da9:	48 89 cf             	mov    %rcx,%rdi
    9dac:	e8 2d fe ff ff       	call   9bde <_ZNK2yy6parser7context15expected_tokensEPNS0_11symbol_kind16symbol_kind_typeEi>
    9db1:	89 45 fc             	mov    %eax,-0x4(%rbp)
        return yyn + 1;
    9db4:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9db7:	83 c0 01             	add    $0x1,%eax
    9dba:	eb 05                	jmp    9dc1 <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi+0x85>
      }
    return 0;
    9dbc:	b8 00 00 00 00       	mov    $0x0,%eax
  }
    9dc1:	c9                   	leave
    9dc2:	c3                   	ret
    9dc3:	90                   	nop

0000000000009dc4 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE>:

  // Generate an error message.
  std::string
  parser::yysyntax_error_ (const context& yyctx) const
  {
    9dc4:	55                   	push   %rbp
    9dc5:	48 89 e5             	mov    %rsp,%rbp
    9dc8:	53                   	push   %rbx
    9dc9:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    9dd0:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
    9dd4:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
    9dd8:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
    // Its maximum.
    enum { YYARGS_MAX = 5 };
    // Arguments of yyformat.
    symbol_kind_type yyarg[YYARGS_MAX];
    int yycount = yy_syntax_error_arguments_ (yyctx, yyarg, YYARGS_MAX);
    9ddf:	48 8d 55 90          	lea    -0x70(%rbp),%rdx
    9de3:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
    9dea:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    9dee:	b9 05 00 00 00       	mov    $0x5,%ecx
    9df3:	48 89 c7             	mov    %rax,%rdi
    9df6:	e8 41 ff ff ff       	call   9d3c <_ZNK2yy6parser26yy_syntax_error_arguments_ERKNS0_7contextEPNS0_11symbol_kind16symbol_kind_typeEi>
    9dfb:	89 45 d4             	mov    %eax,-0x2c(%rbp)

    char const* yyformat = YY_NULLPTR;
    9dfe:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    9e05:	00 
    switch (yycount)
    9e06:	83 7d d4 05          	cmpl   $0x5,-0x2c(%rbp)
    9e0a:	77 23                	ja     9e2f <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x6b>
    9e0c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    9e0f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    9e16:	00 
    9e17:	48 8d 05 66 2e 00 00 	lea    0x2e66(%rip),%rax        # cc84 <_ZNSt6ranges6__cust9iter_moveE+0x19b>
    9e1e:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    9e21:	48 98                	cltq
    9e23:	48 8d 15 5a 2e 00 00 	lea    0x2e5a(%rip),%rdx        # cc84 <_ZNSt6ranges6__cust9iter_moveE+0x19b>
    9e2a:	48 01 d0             	add    %rdx,%rax
    9e2d:	ff e0                	jmp    *%rax
#define YYCASE_(N, S)                         \
        case N:                               \
          yyformat = S;                       \
        break
      default: // Avoid compiler warnings.
        YYCASE_ (0, YY_("syntax error"));
    9e2f:	48 8d 05 4f 2d 00 00 	lea    0x2d4f(%rip),%rax        # cb85 <_ZNSt6ranges6__cust9iter_moveE+0x9c>
    9e36:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    9e3a:	eb 3f                	jmp    9e7b <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xb7>
        YYCASE_ (1, YY_("syntax error, unexpected %s"));
    9e3c:	48 8d 05 4f 2d 00 00 	lea    0x2d4f(%rip),%rax        # cb92 <_ZNSt6ranges6__cust9iter_moveE+0xa9>
    9e43:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    9e47:	eb 32                	jmp    9e7b <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xb7>
        YYCASE_ (2, YY_("syntax error, unexpected %s, expecting %s"));
    9e49:	48 8d 05 60 2d 00 00 	lea    0x2d60(%rip),%rax        # cbb0 <_ZNSt6ranges6__cust9iter_moveE+0xc7>
    9e50:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    9e54:	eb 25                	jmp    9e7b <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xb7>
        YYCASE_ (3, YY_("syntax error, unexpected %s, expecting %s or %s"));
    9e56:	48 8d 05 83 2d 00 00 	lea    0x2d83(%rip),%rax        # cbe0 <_ZNSt6ranges6__cust9iter_moveE+0xf7>
    9e5d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    9e61:	eb 18                	jmp    9e7b <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xb7>
        YYCASE_ (4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
    9e63:	48 8d 05 a6 2d 00 00 	lea    0x2da6(%rip),%rax        # cc10 <_ZNSt6ranges6__cust9iter_moveE+0x127>
    9e6a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    9e6e:	eb 0b                	jmp    9e7b <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xb7>
        YYCASE_ (5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
    9e70:	48 8d 05 d1 2d 00 00 	lea    0x2dd1(%rip),%rax        # cc48 <_ZNSt6ranges6__cust9iter_moveE+0x15f>
    9e77:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
#undef YYCASE_
      }

    std::string yyres;
    9e7b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9e7f:	48 89 c7             	mov    %rax,%rdi
    9e82:	e8 5b aa ff ff       	call   48e2 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    // Argument number.
    std::ptrdiff_t yyi = 0;
    9e87:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    9e8e:	00 
    for (char const* yyp = yyformat; *yyp; ++yyp)
    9e8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e93:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    9e97:	e9 86 00 00 00       	jmp    9f22 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x15e>
      if (yyp[0] == '%' && yyp[1] == 's' && yyi < yycount)
    9e9c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9ea0:	0f b6 00             	movzbl (%rax),%eax
    9ea3:	3c 25                	cmp    $0x25,%al
    9ea5:	75 5e                	jne    9f05 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x141>
    9ea7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9eab:	48 83 c0 01          	add    $0x1,%rax
    9eaf:	0f b6 00             	movzbl (%rax),%eax
    9eb2:	3c 73                	cmp    $0x73,%al
    9eb4:	75 4f                	jne    9f05 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x141>
    9eb6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    9eb9:	48 98                	cltq
    9ebb:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    9ebf:	7d 44                	jge    9f05 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x141>
        {
          yyres += symbol_name (yyarg[yyi++]);
    9ec1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9ec5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    9ec9:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    9ecd:	8b 54 85 90          	mov    -0x70(%rbp,%rax,4),%edx
    9ed1:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    9ed5:	89 d6                	mov    %edx,%esi
    9ed7:	48 89 c7             	mov    %rax,%rdi
    9eda:	e8 99 fc ff ff       	call   9b78 <_ZN2yy6parser11symbol_nameB5cxx11ENS0_11symbol_kind16symbol_kind_typeE>
    9edf:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
    9ee3:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9ee7:	48 89 d6             	mov    %rdx,%rsi
    9eea:	48 89 c7             	mov    %rax,%rdi
    9eed:	e8 98 ae ff ff       	call   4d8a <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_>
    9ef2:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    9ef6:	48 89 c7             	mov    %rax,%rdi
    9ef9:	e8 58 ac ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
          ++yyp;
    9efe:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    9f03:	eb 18                	jmp    9f1d <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x159>
        }
      else
        yyres += *yyp;
    9f05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f09:	0f b6 00             	movzbl (%rax),%eax
    9f0c:	0f be d0             	movsbl %al,%edx
    9f0f:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9f13:	89 d6                	mov    %edx,%esi
    9f15:	48 89 c7             	mov    %rax,%rdi
    9f18:	e8 cd 04 00 00       	call   a3ea <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc>
    for (char const* yyp = yyformat; *yyp; ++yyp)
    9f1d:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
    9f22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f26:	0f b6 00             	movzbl (%rax),%eax
    9f29:	84 c0                	test   %al,%al
    9f2b:	0f 85 6b ff ff ff    	jne    9e9c <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0xd8>
    return yyres;
    9f31:	eb 2b                	jmp    9f5e <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x19a>
          yyres += symbol_name (yyarg[yyi++]);
    9f33:	48 89 c3             	mov    %rax,%rbx
    9f36:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    9f3a:	48 89 c7             	mov    %rax,%rdi
    9f3d:	e8 14 ac ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9f42:	eb 03                	jmp    9f47 <_ZNK2yy6parser15yysyntax_error_B5cxx11ERKNS0_7contextE+0x183>
    9f44:	48 89 c3             	mov    %rax,%rbx
    9f47:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9f4b:	48 89 c7             	mov    %rax,%rdi
    9f4e:	e8 03 ac ff ff       	call   4b56 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    9f53:	48 89 d8             	mov    %rbx,%rax
    9f56:	48 89 c7             	mov    %rax,%rdi
    9f59:	e8 82 a3 ff ff       	call   42e0 <_Unwind_Resume@plt>
  }
    9f5e:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    9f62:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9f66:	c9                   	leave
    9f67:	c3                   	ret

0000000000009f68 <_ZN2yy6parser12yytranslate_Ei>:
  }
#endif // YYDEBUG

  parser::symbol_kind_type
  parser::yytranslate_ (int t) YY_NOEXCEPT
  {
    9f68:	55                   	push   %rbp
    9f69:	48 89 e5             	mov    %rsp,%rbp
    9f6c:	89 7d ec             	mov    %edi,-0x14(%rbp)
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24
    };
    // Last valid token kind.
    const int code_max = 279;
    9f6f:	c7 45 fc 17 01 00 00 	movl   $0x117,-0x4(%rbp)

    if (t <= 0)
    9f76:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    9f7a:	7f 07                	jg     9f83 <_ZN2yy6parser12yytranslate_Ei+0x1b>
      return symbol_kind::S_YYEOF;
    9f7c:	b8 00 00 00 00       	mov    $0x0,%eax
    9f81:	eb 23                	jmp    9fa6 <_ZN2yy6parser12yytranslate_Ei+0x3e>
    else if (t <= code_max)
    9f83:	81 7d ec 17 01 00 00 	cmpl   $0x117,-0x14(%rbp)
    9f8a:	7f 15                	jg     9fa1 <_ZN2yy6parser12yytranslate_Ei+0x39>
      return static_cast <symbol_kind_type> (translate_table[t]);
    9f8c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    9f8f:	48 98                	cltq
    9f91:	48 8d 15 28 32 00 00 	lea    0x3228(%rip),%rdx        # d1c0 <_ZZN2yy6parser12yytranslate_EiE15translate_table>
    9f98:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    9f9c:	0f be c0             	movsbl %al,%eax
    9f9f:	eb 05                	jmp    9fa6 <_ZN2yy6parser12yytranslate_Ei+0x3e>
    else
      return symbol_kind::S_YYUNDEF;
    9fa1:	b8 02 00 00 00       	mov    $0x2,%eax
  }
    9fa6:	5d                   	pop    %rbp
    9fa7:	c3                   	ret

0000000000009fa8 <_Z41__static_initialization_and_destruction_0ii>:

} // yy
    9fa8:	55                   	push   %rbp
    9fa9:	48 89 e5             	mov    %rsp,%rbp
    9fac:	48 83 ec 10          	sub    $0x10,%rsp
    9fb0:	89 7d fc             	mov    %edi,-0x4(%rbp)
    9fb3:	89 75 f8             	mov    %esi,-0x8(%rbp)
    9fb6:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    9fba:	75 3b                	jne    9ff7 <_Z41__static_initialization_and_destruction_0ii+0x4f>
    9fbc:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    9fc3:	75 32                	jne    9ff7 <_Z41__static_initialization_and_destruction_0ii+0x4f>
    9fc5:	48 8d 05 ac 84 00 00 	lea    0x84ac(%rip),%rax        # 12478 <_ZStL8__ioinit>
    9fcc:	48 89 c7             	mov    %rax,%rdi
    9fcf:	e8 9c a2 ff ff       	call   4270 <_ZNSt8ios_base4InitC1Ev@plt>
    9fd4:	48 8d 05 ad 81 00 00 	lea    0x81ad(%rip),%rax        # 12188 <__dso_handle>
    9fdb:	48 89 c2             	mov    %rax,%rdx
    9fde:	48 8d 05 93 84 00 00 	lea    0x8493(%rip),%rax        # 12478 <_ZStL8__ioinit>
    9fe5:	48 89 c6             	mov    %rax,%rsi
    9fe8:	48 8b 05 e9 7f 00 00 	mov    0x7fe9(%rip),%rax        # 11fd8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    9fef:	48 89 c7             	mov    %rax,%rdi
    9ff2:	e8 19 a1 ff ff       	call   4110 <__cxa_atexit@plt>
    9ff7:	90                   	nop
    9ff8:	c9                   	leave
    9ff9:	c3                   	ret

0000000000009ffa <_GLOBAL__sub_I_seen_func_decl>:
    9ffa:	55                   	push   %rbp
    9ffb:	48 89 e5             	mov    %rsp,%rbp
    9ffe:	be ff ff 00 00       	mov    $0xffff,%esi
    a003:	bf 01 00 00 00       	mov    $0x1,%edi
    a008:	e8 9b ff ff ff       	call   9fa8 <_Z41__static_initialization_and_destruction_0ii>
    a00d:	5d                   	pop    %rbp
    a00e:	c3                   	ret

000000000000a00f <_ZdlPvS_>:
_GLIBCXX_NODISCARD inline void* operator new[](std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }

// Default placement versions of operator delete.
inline void operator delete  (void*, void*) _GLIBCXX_USE_NOEXCEPT { }
    a00f:	55                   	push   %rbp
    a010:	48 89 e5             	mov    %rsp,%rbp
    a013:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a017:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    a01b:	90                   	nop
    a01c:	5d                   	pop    %rbp
    a01d:	c3                   	ret

000000000000a01e <_ZNK2yy6parser7context9lookaheadEv>:

    class context
    {
    public:
      context (const parser& yyparser, const symbol_type& yyla);
      const symbol_type& lookahead () const YY_NOEXCEPT { return yyla_; }
    a01e:	55                   	push   %rbp
    a01f:	48 89 e5             	mov    %rsp,%rbp
    a022:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a026:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a02a:	48 8b 40 08          	mov    0x8(%rax),%rax
    a02e:	5d                   	pop    %rbp
    a02f:	c3                   	ret

000000000000a030 <_ZNK2yy6parser7context5tokenEv>:
      symbol_kind_type token () const YY_NOEXCEPT { return yyla_.kind (); }
    a030:	55                   	push   %rbp
    a031:	48 89 e5             	mov    %rsp,%rbp
    a034:	48 83 ec 10          	sub    $0x10,%rsp
    a038:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a03c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a040:	48 8b 40 08          	mov    0x8(%rax),%rax
    a044:	48 89 c7             	mov    %rax,%rdi
    a047:	e8 f2 eb ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    a04c:	c9                   	leave
    a04d:	c3                   	ret

000000000000a04e <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEED1Ev>:
#endif
    };

    /// A stack with random access from its top.
    template <typename T, typename S = std::vector<T> >
    class stack
    a04e:	55                   	push   %rbp
    a04f:	48 89 e5             	mov    %rsp,%rbp
    a052:	48 83 ec 10          	sub    $0x10,%rsp
    a056:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a05a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a05e:	48 89 c7             	mov    %rax,%rdi
    a061:	e8 a0 00 00 00       	call   a106 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EED1Ev>
    a066:	90                   	nop
    a067:	c9                   	leave
    a068:	c3                   	ret
    a069:	90                   	nop

000000000000a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>:
    struct stack_symbol_type : basic_symbol<by_state>
    a06a:	55                   	push   %rbp
    a06b:	48 89 e5             	mov    %rsp,%rbp
    a06e:	48 83 ec 10          	sub    $0x10,%rsp
    a072:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a076:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a07a:	48 89 c7             	mov    %rax,%rdi
    a07d:	e8 ee 00 00 00       	call   a170 <_ZN2yy6parser12basic_symbolINS0_8by_stateEED1Ev>
    a082:	90                   	nop
    a083:	c9                   	leave
    a084:	c3                   	ret
    a085:	90                   	nop

000000000000a086 <_ZN2yy6parser11symbol_typeC1Ev>:
    struct symbol_type : basic_symbol<by_kind>
    a086:	55                   	push   %rbp
    a087:	48 89 e5             	mov    %rsp,%rbp
    a08a:	48 83 ec 10          	sub    $0x10,%rsp
    a08e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a092:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a096:	48 89 c7             	mov    %rax,%rdi
    a099:	e8 16 02 00 00       	call   a2b4 <_ZN2yy6parser12basic_symbolINS0_7by_kindEEC1Ev>
    a09e:	90                   	nop
    a09f:	c9                   	leave
    a0a0:	c3                   	ret
    a0a1:	90                   	nop

000000000000a0a2 <_ZN2yy6parser11symbol_typeD1Ev>:
    a0a2:	55                   	push   %rbp
    a0a3:	48 89 e5             	mov    %rsp,%rbp
    a0a6:	48 83 ec 10          	sub    $0x10,%rsp
    a0aa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a0ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a0b2:	48 89 c7             	mov    %rax,%rdi
    a0b5:	e8 20 02 00 00       	call   a2da <_ZN2yy6parser12basic_symbolINS0_7by_kindEED1Ev>
    a0ba:	90                   	nop
    a0bb:	c9                   	leave
    a0bc:	c3                   	ret
    a0bd:	90                   	nop

000000000000a0be <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEC1Em>:
      typedef typename S::iterator iterator;
      typedef typename S::const_iterator const_iterator;
      typedef typename S::size_type size_type;
      typedef typename std::ptrdiff_t index_type;

      stack (size_type n = 200) YY_NOEXCEPT
    a0be:	55                   	push   %rbp
    a0bf:	48 89 e5             	mov    %rsp,%rbp
    a0c2:	53                   	push   %rbx
    a0c3:	48 83 ec 28          	sub    $0x28,%rsp
    a0c7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a0cb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
        : seq_ (n)
    a0cf:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    a0d3:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    a0d7:	48 89 c7             	mov    %rax,%rdi
    a0da:	e8 6f 03 00 00       	call   a44e <_ZNSaIN2yy6parser17stack_symbol_typeEEC1Ev>
    a0df:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
    a0e3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a0e7:	48 89 c6             	mov    %rax,%rsi
    a0ea:	48 89 df             	mov    %rbx,%rdi
    a0ed:	e8 84 03 00 00       	call   a476 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_>
    a0f2:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    a0f6:	48 89 c7             	mov    %rax,%rdi
    a0f9:	e8 6c 03 00 00       	call   a46a <_ZNSaIN2yy6parser17stack_symbol_typeEED1Ev>
      {}
    a0fe:	90                   	nop
    a0ff:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a103:	c9                   	leave
    a104:	c3                   	ret
    a105:	90                   	nop

000000000000a106 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EED1Ev>:
       *  elements themselves are pointers, the pointed-to memory is
       *  not touched in any way.  Managing the pointer is the user's
       *  responsibility.
       */
      _GLIBCXX20_CONSTEXPR
      ~vector() _GLIBCXX_NOEXCEPT
    a106:	55                   	push   %rbp
    a107:	48 89 e5             	mov    %rsp,%rbp
    a10a:	48 83 ec 10          	sub    $0x10,%rsp
    a10e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
		      _M_get_Tp_allocator());
    a112:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a116:	48 89 c7             	mov    %rax,%rdi
    a119:	e8 38 04 00 00       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    a11e:	48 89 c2             	mov    %rax,%rdx
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
    a121:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a125:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a129:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a12d:	48 8b 00             	mov    (%rax),%rax
    a130:	48 89 ce             	mov    %rcx,%rsi
    a133:	48 89 c7             	mov    %rax,%rdi
    a136:	e8 29 04 00 00       	call   a564 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeES2_EvT_S4_RSaIT0_E>
	_GLIBCXX_ASAN_ANNOTATE_BEFORE_DEALLOC;
      }
    a13b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a13f:	48 89 c7             	mov    %rax,%rdi
    a142:	e8 c1 03 00 00       	call   a508 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EED1Ev>
    a147:	90                   	nop
    a148:	c9                   	leave
    a149:	c3                   	ret

000000000000a14a <_ZN2yy6parser12basic_symbolINS0_8by_stateEEC1Ev>:
      basic_symbol () YY_NOEXCEPT
    a14a:	55                   	push   %rbp
    a14b:	48 89 e5             	mov    %rsp,%rbp
    a14e:	48 83 ec 08          	sub    $0x8,%rsp
    a152:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        : value ()
    a156:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a15a:	48 89 c7             	mov    %rax,%rdi
    a15d:	e8 06 eb ff ff       	call   8c68 <_ZN2yy6parser8by_stateC1Ev>
    a162:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a166:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
      {}
    a16d:	90                   	nop
    a16e:	c9                   	leave
    a16f:	c3                   	ret

000000000000a170 <_ZN2yy6parser12basic_symbolINS0_8by_stateEED1Ev>:
      ~basic_symbol ()
    a170:	55                   	push   %rbp
    a171:	48 89 e5             	mov    %rsp,%rbp
    a174:	48 83 ec 10          	sub    $0x10,%rsp
    a178:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        clear ();
    a17c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a180:	48 89 c7             	mov    %rax,%rdi
    a183:	e8 06 04 00 00       	call   a58e <_ZN2yy6parser12basic_symbolINS0_8by_stateEE5clearEv>
      }
    a188:	90                   	nop
    a189:	c9                   	leave
    a18a:	c3                   	ret

000000000000a18b <_ZSt4moveIRaEONSt16remove_referenceIT_E4typeEOS2_>:
    move(_Tp&& __t) noexcept
    a18b:	55                   	push   %rbp
    a18c:	48 89 e5             	mov    %rsp,%rbp
    a18f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    a193:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a197:	5d                   	pop    %rbp
    a198:	c3                   	ret

000000000000a199 <_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_>:
    move(_Tp&& __t) noexcept
    a199:	55                   	push   %rbp
    a19a:	48 89 e5             	mov    %rsp,%rbp
    a19d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    a1a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a1a5:	5d                   	pop    %rbp
    a1a6:	c3                   	ret
    a1a7:	90                   	nop

000000000000a1a8 <_ZN2yy6parser12basic_symbolINS0_8by_stateEEC1EaOi>:
  parser::basic_symbol<Base>::basic_symbol (typename Base::kind_type t, YY_RVREF (value_type) v)
    a1a8:	55                   	push   %rbp
    a1a9:	48 89 e5             	mov    %rsp,%rbp
    a1ac:	48 83 ec 20          	sub    $0x20,%rsp
    a1b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a1b4:	89 f0                	mov    %esi,%eax
    a1b6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    a1ba:	88 45 f4             	mov    %al,-0xc(%rbp)
    , value (YY_MOVE (v))
    a1bd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a1c1:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    a1c5:	89 d6                	mov    %edx,%esi
    a1c7:	48 89 c7             	mov    %rax,%rdi
    a1ca:	e8 05 eb ff ff       	call   8cd4 <_ZN2yy6parser8by_stateC1Ea>
    a1cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a1d3:	48 89 c7             	mov    %rax,%rdi
    a1d6:	e8 be ff ff ff       	call   a199 <_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_>
    a1db:	8b 10                	mov    (%rax),%edx
    a1dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a1e1:	89 50 04             	mov    %edx,0x4(%rax)
  {}
    a1e4:	90                   	nop
    a1e5:	c9                   	leave
    a1e6:	c3                   	ret

000000000000a1e7 <_ZSt4moveIRN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>:
    move(_Tp&& __t) noexcept
    a1e7:	55                   	push   %rbp
    a1e8:	48 89 e5             	mov    %rsp,%rbp
    a1eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    a1ef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a1f3:	5d                   	pop    %rbp
    a1f4:	c3                   	ret
    a1f5:	90                   	nop

000000000000a1f6 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4pushEOS2_>:

      /// Steal the contents of \a t.
      ///
      /// Close to move-semantics.
      void
      push (YY_MOVE_REF (T) t)
    a1f6:	55                   	push   %rbp
    a1f7:	48 89 e5             	mov    %rsp,%rbp
    a1fa:	53                   	push   %rbx
    a1fb:	48 83 ec 28          	sub    $0x28,%rsp
    a1ff:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a203:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
      {
        seq_.push_back (T ());
    a207:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    a20b:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    a20f:	48 89 c7             	mov    %rax,%rdi
    a212:	e8 0d eb ff ff       	call   8d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>
    a217:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    a21b:	48 89 c6             	mov    %rax,%rsi
    a21e:	48 89 df             	mov    %rbx,%rdi
    a221:	e8 84 03 00 00       	call   a5aa <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE9push_backEOS2_>
    a226:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    a22a:	48 89 c7             	mov    %rax,%rdi
    a22d:	e8 38 fe ff ff       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
        operator[] (0).move (t);
    a232:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a236:	be 00 00 00 00       	mov    $0x0,%esi
    a23b:	48 89 c7             	mov    %rax,%rdi
    a23e:	e8 cf 00 00 00       	call   a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>
    a243:	48 89 c2             	mov    %rax,%rdx
    a246:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a24a:	48 89 c6             	mov    %rax,%rsi
    a24d:	48 89 d7             	mov    %rdx,%rdi
    a250:	e8 87 03 00 00       	call   a5dc <_ZN2yy6parser12basic_symbolINS0_8by_stateEE4moveERS3_>
      }
    a255:	eb 1a                	jmp    a271 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4pushEOS2_+0x7b>
        seq_.push_back (T ());
    a257:	48 89 c3             	mov    %rax,%rbx
    a25a:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
    a25e:	48 89 c7             	mov    %rax,%rdi
    a261:	e8 04 fe ff ff       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    a266:	48 89 d8             	mov    %rbx,%rax
    a269:	48 89 c7             	mov    %rax,%rdi
    a26c:	e8 6f a0 ff ff       	call   42e0 <_Unwind_Resume@plt>
      }
    a271:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a275:	c9                   	leave
    a276:	c3                   	ret

000000000000a277 <_ZSt4moveIRN2yy6parser11symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>:
    move(_Tp&& __t) noexcept
    a277:	55                   	push   %rbp
    a278:	48 89 e5             	mov    %rsp,%rbp
    a27b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    a27f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a283:	5d                   	pop    %rbp
    a284:	c3                   	ret
    a285:	90                   	nop

000000000000a286 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE3popEl>:

      /// Pop elements from the stack.
      void
      pop (std::ptrdiff_t n = 1) YY_NOEXCEPT
    a286:	55                   	push   %rbp
    a287:	48 89 e5             	mov    %rsp,%rbp
    a28a:	48 83 ec 10          	sub    $0x10,%rsp
    a28e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a292:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      {
        for (; 0 < n; --n)
    a296:	eb 11                	jmp    a2a9 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE3popEl+0x23>
          seq_.pop_back ();
    a298:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a29c:	48 89 c7             	mov    %rax,%rdi
    a29f:	e8 78 03 00 00       	call   a61c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8pop_backEv>
        for (; 0 < n; --n)
    a2a4:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
    a2a9:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    a2ae:	7f e8                	jg     a298 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE3popEl+0x12>
      }
    a2b0:	90                   	nop
    a2b1:	90                   	nop
    a2b2:	c9                   	leave
    a2b3:	c3                   	ret

000000000000a2b4 <_ZN2yy6parser12basic_symbolINS0_7by_kindEEC1Ev>:
      basic_symbol () YY_NOEXCEPT
    a2b4:	55                   	push   %rbp
    a2b5:	48 89 e5             	mov    %rsp,%rbp
    a2b8:	48 83 ec 08          	sub    $0x8,%rsp
    a2bc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        : value ()
    a2c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a2c4:	48 89 c7             	mov    %rax,%rdi
    a2c7:	e8 b0 e8 ff ff       	call   8b7c <_ZN2yy6parser7by_kindC1Ev>
    a2cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a2d0:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
      {}
    a2d7:	90                   	nop
    a2d8:	c9                   	leave
    a2d9:	c3                   	ret

000000000000a2da <_ZN2yy6parser12basic_symbolINS0_7by_kindEED1Ev>:
      ~basic_symbol ()
    a2da:	55                   	push   %rbp
    a2db:	48 89 e5             	mov    %rsp,%rbp
    a2de:	48 83 ec 10          	sub    $0x10,%rsp
    a2e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        clear ();
    a2e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a2ea:	48 89 c7             	mov    %rax,%rdi
    a2ed:	e8 9e 00 00 00       	call   a390 <_ZN2yy6parser12basic_symbolINS0_7by_kindEE5clearEv>
      }
    a2f2:	90                   	nop
    a2f3:	c9                   	leave
    a2f4:	c3                   	ret
    a2f5:	90                   	nop

000000000000a2f6 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE5clearEv>:

      /// Pop all elements from the stack.
      void
      clear () YY_NOEXCEPT
    a2f6:	55                   	push   %rbp
    a2f7:	48 89 e5             	mov    %rsp,%rbp
    a2fa:	48 83 ec 10          	sub    $0x10,%rsp
    a2fe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
        seq_.clear ();
    a302:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a306:	48 89 c7             	mov    %rax,%rdi
    a309:	e8 48 03 00 00       	call   a656 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE5clearEv>
      }
    a30e:	90                   	nop
    a30f:	c9                   	leave
    a310:	c3                   	ret
    a311:	90                   	nop

000000000000a312 <_ZN2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>:
      operator[] (index_type i)
    a312:	55                   	push   %rbp
    a313:	48 89 e5             	mov    %rsp,%rbp
    a316:	53                   	push   %rbx
    a317:	48 83 ec 18          	sub    $0x18,%rsp
    a31b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a31f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
        return seq_[size_type (size () - 1 - i)];
    a323:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    a327:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a32b:	48 89 c7             	mov    %rax,%rdi
    a32e:	e8 79 00 00 00       	call   a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>
    a333:	48 83 e8 01          	sub    $0x1,%rax
    a337:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
    a33b:	48 89 c6             	mov    %rax,%rsi
    a33e:	48 89 df             	mov    %rbx,%rdi
    a341:	e8 36 03 00 00       	call   a67c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEixEm>
      }
    a346:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a34a:	c9                   	leave
    a34b:	c3                   	ret

000000000000a34c <_ZNK2yy6parser12basic_symbolINS0_7by_kindEE5emptyEv>:
  parser::basic_symbol<Base>::empty () const YY_NOEXCEPT
    a34c:	55                   	push   %rbp
    a34d:	48 89 e5             	mov    %rsp,%rbp
    a350:	48 83 ec 08          	sub    $0x8,%rsp
    a354:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    return this->kind () == symbol_kind::S_YYEMPTY;
    a358:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a35c:	48 89 c7             	mov    %rax,%rdi
    a35f:	e8 da e8 ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
    a364:	83 f8 fe             	cmp    $0xfffffffe,%eax
    a367:	0f 94 c0             	sete   %al
  }
    a36a:	c9                   	leave
    a36b:	c3                   	ret

000000000000a36c <_ZNK2yy6parser11yy_destroy_INS0_7by_kindEEEvPKcRNS0_12basic_symbolIT_EE>:
  parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
    a36c:	55                   	push   %rbp
    a36d:	48 89 e5             	mov    %rsp,%rbp
    a370:	48 83 ec 18          	sub    $0x18,%rsp
    a374:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a378:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    a37c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    YY_USE (yysym.kind ());
    a380:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a384:	48 89 c7             	mov    %rax,%rdi
    a387:	e8 b2 e8 ff ff       	call   8c3e <_ZNK2yy6parser7by_kind4kindEv>
  }
    a38c:	90                   	nop
    a38d:	c9                   	leave
    a38e:	c3                   	ret
    a38f:	90                   	nop

000000000000a390 <_ZN2yy6parser12basic_symbolINS0_7by_kindEE5clearEv>:
      void clear () YY_NOEXCEPT
    a390:	55                   	push   %rbp
    a391:	48 89 e5             	mov    %rsp,%rbp
    a394:	48 83 ec 08          	sub    $0x8,%rsp
    a398:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        Base::clear ();
    a39c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a3a0:	48 89 c7             	mov    %rax,%rdi
    a3a3:	e8 54 e8 ff ff       	call   8bfc <_ZN2yy6parser7by_kind5clearEv>
      }
    a3a8:	90                   	nop
    a3a9:	c9                   	leave
    a3aa:	c3                   	ret
    a3ab:	90                   	nop

000000000000a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>:

      /// Number of elements on the stack.
      index_type
      size () const YY_NOEXCEPT
    a3ac:	55                   	push   %rbp
    a3ad:	48 89 e5             	mov    %rsp,%rbp
    a3b0:	48 83 ec 10          	sub    $0x10,%rsp
    a3b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
        return index_type (seq_.size ());
    a3b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a3bc:	48 89 c7             	mov    %rax,%rdi
    a3bf:	e8 d8 02 00 00       	call   a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>
      }
    a3c4:	c9                   	leave
    a3c5:	c3                   	ret

000000000000a3c6 <_ZNK2yy6parser11yy_destroy_INS0_8by_stateEEEvPKcRNS0_12basic_symbolIT_EE>:
  parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
    a3c6:	55                   	push   %rbp
    a3c7:	48 89 e5             	mov    %rsp,%rbp
    a3ca:	48 83 ec 18          	sub    $0x18,%rsp
    a3ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a3d2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    a3d6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    YY_USE (yysym.kind ());
    a3da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a3de:	48 89 c7             	mov    %rax,%rdi
    a3e1:	e8 08 e9 ff ff       	call   8cee <_ZNK2yy6parser8by_state4kindEv>
  }
    a3e6:	90                   	nop
    a3e7:	c9                   	leave
    a3e8:	c3                   	ret
    a3e9:	90                   	nop

000000000000a3ea <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc>:
      operator+=(_CharT __c)
    a3ea:	55                   	push   %rbp
    a3eb:	48 89 e5             	mov    %rsp,%rbp
    a3ee:	48 83 ec 10          	sub    $0x10,%rsp
    a3f2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a3f6:	89 f0                	mov    %esi,%eax
    a3f8:	88 45 f4             	mov    %al,-0xc(%rbp)
	this->push_back(__c);
    a3fb:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    a3ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a403:	89 d6                	mov    %edx,%esi
    a405:	48 89 c7             	mov    %rax,%rdi
    a408:	e8 b3 02 00 00       	call   a6c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc>
	return *this;
    a40d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
    a411:	c9                   	leave
    a412:	c3                   	ret
    a413:	90                   	nop

000000000000a414 <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEEixEl>:
      operator[] (index_type i) const
    a414:	55                   	push   %rbp
    a415:	48 89 e5             	mov    %rsp,%rbp
    a418:	53                   	push   %rbx
    a419:	48 83 ec 18          	sub    $0x18,%rsp
    a41d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a421:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
        return seq_[size_type (size () - 1 - i)];
    a425:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    a429:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a42d:	48 89 c7             	mov    %rax,%rdi
    a430:	e8 77 ff ff ff       	call   a3ac <_ZNK2yy6parser5stackINS0_17stack_symbol_typeESt6vectorIS2_SaIS2_EEE4sizeEv>
    a435:	48 83 e8 01          	sub    $0x1,%rax
    a439:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
    a43d:	48 89 c6             	mov    %rax,%rsi
    a440:	48 89 df             	mov    %rbx,%rdi
    a443:	e8 18 03 00 00       	call   a760 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEixEm>
      }
    a448:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a44c:	c9                   	leave
    a44d:	c3                   	ret

000000000000a44e <_ZNSaIN2yy6parser17stack_symbol_typeEEC1Ev>:
      allocator() _GLIBCXX_NOTHROW { }
    a44e:	55                   	push   %rbp
    a44f:	48 89 e5             	mov    %rsp,%rbp
    a452:	48 83 ec 10          	sub    $0x10,%rsp
    a456:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a45a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a45e:	48 89 c7             	mov    %rax,%rdi
    a461:	e8 1a 03 00 00       	call   a780 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEEC1Ev>
    a466:	90                   	nop
    a467:	c9                   	leave
    a468:	c3                   	ret
    a469:	90                   	nop

000000000000a46a <_ZNSaIN2yy6parser17stack_symbol_typeEED1Ev>:
      ~allocator() _GLIBCXX_NOTHROW { }
    a46a:	55                   	push   %rbp
    a46b:	48 89 e5             	mov    %rsp,%rbp
    a46e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a472:	90                   	nop
    a473:	5d                   	pop    %rbp
    a474:	c3                   	ret
    a475:	90                   	nop

000000000000a476 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_>:
      vector(size_type __n, const allocator_type& __a = allocator_type())
    a476:	55                   	push   %rbp
    a477:	48 89 e5             	mov    %rsp,%rbp
    a47a:	53                   	push   %rbx
    a47b:	48 83 ec 28          	sub    $0x28,%rsp
    a47f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a483:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a487:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      : _Base(_S_check_init_len(__n, __a), __a)
    a48b:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    a48f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    a493:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a497:	48 89 d6             	mov    %rdx,%rsi
    a49a:	48 89 c7             	mov    %rax,%rdi
    a49d:	e8 e9 02 00 00       	call   a78b <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_S_check_init_lenEmRKS3_>
    a4a2:	48 89 c1             	mov    %rax,%rcx
    a4a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a4a9:	48 89 c2             	mov    %rax,%rdx
    a4ac:	48 89 ce             	mov    %rcx,%rsi
    a4af:	48 89 df             	mov    %rbx,%rdi
    a4b2:	e8 35 03 00 00       	call   a7ec <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_>
      { _M_default_initialize(__n); }
    a4b7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    a4bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a4bf:	48 89 d6             	mov    %rdx,%rsi
    a4c2:	48 89 c7             	mov    %rax,%rdi
    a4c5:	e8 80 03 00 00       	call   a84a <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE21_M_default_initializeEm>
    a4ca:	eb 1a                	jmp    a4e6 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_+0x70>
    a4cc:	48 89 c3             	mov    %rax,%rbx
    a4cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a4d3:	48 89 c7             	mov    %rax,%rdi
    a4d6:	e8 2d 00 00 00       	call   a508 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EED1Ev>
    a4db:	48 89 d8             	mov    %rbx,%rax
    a4de:	48 89 c7             	mov    %rax,%rdi
    a4e1:	e8 fa 9d ff ff       	call   42e0 <_Unwind_Resume@plt>
    a4e6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a4ea:	c9                   	leave
    a4eb:	c3                   	ret

000000000000a4ec <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE12_Vector_implD1Ev>:
      struct _Vector_impl
    a4ec:	55                   	push   %rbp
    a4ed:	48 89 e5             	mov    %rsp,%rbp
    a4f0:	48 83 ec 10          	sub    $0x10,%rsp
    a4f4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a4f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a4fc:	48 89 c7             	mov    %rax,%rdi
    a4ff:	e8 66 ff ff ff       	call   a46a <_ZNSaIN2yy6parser17stack_symbol_typeEED1Ev>
    a504:	90                   	nop
    a505:	c9                   	leave
    a506:	c3                   	ret
    a507:	90                   	nop

000000000000a508 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
    a508:	55                   	push   %rbp
    a509:	48 89 e5             	mov    %rsp,%rbp
    a50c:	48 83 ec 10          	sub    $0x10,%rsp
    a510:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_impl._M_end_of_storage - _M_impl._M_start);
    a514:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a518:	48 8b 50 10          	mov    0x10(%rax),%rdx
    a51c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a520:	48 8b 00             	mov    (%rax),%rax
    a523:	48 29 c2             	sub    %rax,%rdx
    a526:	48 89 d0             	mov    %rdx,%rax
    a529:	48 c1 f8 03          	sar    $0x3,%rax
	_M_deallocate(_M_impl._M_start,
    a52d:	48 89 c2             	mov    %rax,%rdx
    a530:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a534:	48 8b 08             	mov    (%rax),%rcx
    a537:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a53b:	48 89 ce             	mov    %rcx,%rsi
    a53e:	48 89 c7             	mov    %rax,%rdi
    a541:	e8 44 03 00 00       	call   a88a <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE13_M_deallocateEPS2_m>
      }
    a546:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a54a:	48 89 c7             	mov    %rax,%rdi
    a54d:	e8 9a ff ff ff       	call   a4ec <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE12_Vector_implD1Ev>
    a552:	90                   	nop
    a553:	c9                   	leave
    a554:	c3                   	ret
    a555:	90                   	nop

000000000000a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
    a556:	55                   	push   %rbp
    a557:	48 89 e5             	mov    %rsp,%rbp
    a55a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
    a55e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a562:	5d                   	pop    %rbp
    a563:	c3                   	ret

000000000000a564 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeES2_EvT_S4_RSaIT0_E>:
    }

  template<typename _ForwardIterator, typename _Tp>
    _GLIBCXX20_CONSTEXPR
    inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
    a564:	55                   	push   %rbp
    a565:	48 89 e5             	mov    %rsp,%rbp
    a568:	48 83 ec 20          	sub    $0x20,%rsp
    a56c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a570:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    a574:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	     allocator<_Tp>&)
    {
      _Destroy(__first, __last);
    a578:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a57c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a580:	48 89 d6             	mov    %rdx,%rsi
    a583:	48 89 c7             	mov    %rax,%rdi
    a586:	e8 34 03 00 00       	call   a8bf <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_>
    }
    a58b:	90                   	nop
    a58c:	c9                   	leave
    a58d:	c3                   	ret

000000000000a58e <_ZN2yy6parser12basic_symbolINS0_8by_stateEE5clearEv>:
      void clear () YY_NOEXCEPT
    a58e:	55                   	push   %rbp
    a58f:	48 89 e5             	mov    %rsp,%rbp
    a592:	48 83 ec 08          	sub    $0x8,%rsp
    a596:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
        Base::clear ();
    a59a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a59e:	48 89 c7             	mov    %rax,%rdi
    a5a1:	e8 f0 e6 ff ff       	call   8c96 <_ZN2yy6parser8by_state5clearEv>
      }
    a5a6:	90                   	nop
    a5a7:	c9                   	leave
    a5a8:	c3                   	ret
    a5a9:	90                   	nop

000000000000a5aa <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE9push_backEOS2_>:
      }

#if __cplusplus >= 201103L
      _GLIBCXX20_CONSTEXPR
      void
      push_back(value_type&& __x)
    a5aa:	55                   	push   %rbp
    a5ab:	48 89 e5             	mov    %rsp,%rbp
    a5ae:	48 83 ec 10          	sub    $0x10,%rsp
    a5b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a5b6:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { emplace_back(std::move(__x)); }
    a5ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a5be:	48 89 c7             	mov    %rax,%rdi
    a5c1:	e8 21 fc ff ff       	call   a1e7 <_ZSt4moveIRN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS5_>
    a5c6:	48 89 c2             	mov    %rax,%rdx
    a5c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a5cd:	48 89 d6             	mov    %rdx,%rsi
    a5d0:	48 89 c7             	mov    %rax,%rdi
    a5d3:	e8 2a 03 00 00       	call   a902 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_>
    a5d8:	90                   	nop
    a5d9:	c9                   	leave
    a5da:	c3                   	ret
    a5db:	90                   	nop

000000000000a5dc <_ZN2yy6parser12basic_symbolINS0_8by_stateEE4moveERS3_>:
  parser::basic_symbol<Base>::move (basic_symbol& s)
    a5dc:	55                   	push   %rbp
    a5dd:	48 89 e5             	mov    %rsp,%rbp
    a5e0:	48 83 ec 10          	sub    $0x10,%rsp
    a5e4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a5e8:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    super_type::move (s);
    a5ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a5f0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a5f4:	48 89 d6             	mov    %rdx,%rsi
    a5f7:	48 89 c7             	mov    %rax,%rdi
    a5fa:	e8 a9 e6 ff ff       	call   8ca8 <_ZN2yy6parser8by_state4moveERS1_>
    value = YY_MOVE (s.value);
    a5ff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a603:	48 83 c0 04          	add    $0x4,%rax
    a607:	48 89 c7             	mov    %rax,%rdi
    a60a:	e8 8a fb ff ff       	call   a199 <_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_>
    a60f:	8b 10                	mov    (%rax),%edx
    a611:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a615:	89 50 04             	mov    %edx,0x4(%rax)
  }
    a618:	90                   	nop
    a619:	c9                   	leave
    a61a:	c3                   	ret
    a61b:	90                   	nop

000000000000a61c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8pop_backEv>:
       *  data is needed, it should be retrieved before pop_back() is
       *  called.
       */
      _GLIBCXX20_CONSTEXPR
      void
      pop_back() _GLIBCXX_NOEXCEPT
    a61c:	55                   	push   %rbp
    a61d:	48 89 e5             	mov    %rsp,%rbp
    a620:	48 83 ec 10          	sub    $0x10,%rsp
    a624:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
	__glibcxx_requires_nonempty();
	--this->_M_impl._M_finish;
    a628:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a62c:	48 8b 40 08          	mov    0x8(%rax),%rax
    a630:	48 8d 50 f8          	lea    -0x8(%rax),%rdx
    a634:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a638:	48 89 50 08          	mov    %rdx,0x8(%rax)
	_Alloc_traits::destroy(this->_M_impl, this->_M_impl._M_finish);
    a63c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a640:	48 8b 50 08          	mov    0x8(%rax),%rdx
    a644:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a648:	48 89 d6             	mov    %rdx,%rsi
    a64b:	48 89 c7             	mov    %rax,%rdi
    a64e:	e8 53 03 00 00       	call   a9a6 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE7destroyIS2_EEvRS3_PT_>
	_GLIBCXX_ASAN_ANNOTATE_SHRINK(1);
      }
    a653:	90                   	nop
    a654:	c9                   	leave
    a655:	c3                   	ret

000000000000a656 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE5clearEv>:
       *  pointed-to memory is not touched in any way.  Managing the pointer is
       *  the user's responsibility.
       */
      _GLIBCXX20_CONSTEXPR
      void
      clear() _GLIBCXX_NOEXCEPT
    a656:	55                   	push   %rbp
    a657:	48 89 e5             	mov    %rsp,%rbp
    a65a:	48 83 ec 10          	sub    $0x10,%rsp
    a65e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_erase_at_end(this->_M_impl._M_start); }
    a662:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a666:	48 8b 10             	mov    (%rax),%rdx
    a669:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a66d:	48 89 d6             	mov    %rdx,%rsi
    a670:	48 89 c7             	mov    %rax,%rdi
    a673:	e8 4e 03 00 00       	call   a9c6 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE15_M_erase_at_endEPS2_>
    a678:	90                   	nop
    a679:	c9                   	leave
    a67a:	c3                   	ret
    a67b:	90                   	nop

000000000000a67c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEixEm>:
      operator[](size_type __n) _GLIBCXX_NOEXCEPT
    a67c:	55                   	push   %rbp
    a67d:	48 89 e5             	mov    %rsp,%rbp
    a680:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a684:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return *(this->_M_impl._M_start + __n);
    a688:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a68c:	48 8b 00             	mov    (%rax),%rax
    a68f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a693:	48 c1 e2 03          	shl    $0x3,%rdx
    a697:	48 01 d0             	add    %rdx,%rax
      }
    a69a:	5d                   	pop    %rbp
    a69b:	c3                   	ret

000000000000a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
    a69c:	55                   	push   %rbp
    a69d:	48 89 e5             	mov    %rsp,%rbp
    a6a0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
    a6a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a6a8:	48 8b 50 08          	mov    0x8(%rax),%rdx
    a6ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a6b0:	48 8b 00             	mov    (%rax),%rax
    a6b3:	48 29 c2             	sub    %rax,%rdx
    a6b6:	48 89 d0             	mov    %rdx,%rax
    a6b9:	48 c1 f8 03          	sar    $0x3,%rax
    a6bd:	5d                   	pop    %rbp
    a6be:	c3                   	ret
    a6bf:	90                   	nop

000000000000a6c0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc>:
      push_back(_CharT __c)
    a6c0:	55                   	push   %rbp
    a6c1:	48 89 e5             	mov    %rsp,%rbp
    a6c4:	53                   	push   %rbx
    a6c5:	48 83 ec 28          	sub    $0x28,%rsp
    a6c9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a6cd:	89 f0                	mov    %esi,%eax
    a6cf:	88 45 d4             	mov    %al,-0x2c(%rbp)
	const size_type __size = this->size();
    a6d2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a6d6:	48 89 c7             	mov    %rax,%rdi
    a6d9:	e8 d6 a1 ff ff       	call   48b4 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
    a6de:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (__size + 1 > this->capacity())
    a6e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a6e6:	48 8d 58 01          	lea    0x1(%rax),%rbx
    a6ea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a6ee:	48 89 c7             	mov    %rax,%rdi
    a6f1:	e8 16 aa ff ff       	call   510c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
    a6f6:	48 39 d8             	cmp    %rbx,%rax
    a6f9:	0f 92 c0             	setb   %al
    a6fc:	84 c0                	test   %al,%al
    a6fe:	74 20                	je     a720 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc+0x60>
	  this->_M_mutate(__size, size_type(0), 0, size_type(1));
    a700:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    a704:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a708:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    a70e:	b9 00 00 00 00       	mov    $0x0,%ecx
    a713:	ba 00 00 00 00       	mov    $0x0,%edx
    a718:	48 89 c7             	mov    %rax,%rdi
    a71b:	e8 04 af ff ff       	call   5624 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm>
	traits_type::assign(this->_M_data()[__size], __c);
    a720:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a724:	48 89 c7             	mov    %rax,%rdi
    a727:	e8 00 a7 ff ff       	call   4e2c <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
    a72c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    a730:	48 01 c2             	add    %rax,%rdx
    a733:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
    a737:	48 89 c6             	mov    %rax,%rsi
    a73a:	48 89 d7             	mov    %rdx,%rdi
    a73d:	e8 9f a0 ff ff       	call   47e1 <_ZNSt11char_traitsIcE6assignERcRKc>
	this->_M_set_length(__size + 1);
    a742:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a746:	48 8d 50 01          	lea    0x1(%rax),%rdx
    a74a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a74e:	48 89 d6             	mov    %rdx,%rsi
    a751:	48 89 c7             	mov    %rax,%rdi
    a754:	e8 57 a6 ff ff       	call   4db0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm>
      }
    a759:	90                   	nop
    a75a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a75e:	c9                   	leave
    a75f:	c3                   	ret

000000000000a760 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EEixEm>:
      operator[](size_type __n) const _GLIBCXX_NOEXCEPT
    a760:	55                   	push   %rbp
    a761:	48 89 e5             	mov    %rsp,%rbp
    a764:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a768:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return *(this->_M_impl._M_start + __n);
    a76c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a770:	48 8b 00             	mov    (%rax),%rax
    a773:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a777:	48 c1 e2 03          	shl    $0x3,%rdx
    a77b:	48 01 d0             	add    %rdx,%rax
      }
    a77e:	5d                   	pop    %rbp
    a77f:	c3                   	ret

000000000000a780 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEEC1Ev>:
      __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
    a780:	55                   	push   %rbp
    a781:	48 89 e5             	mov    %rsp,%rbp
    a784:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a788:	90                   	nop
    a789:	5d                   	pop    %rbp
    a78a:	c3                   	ret

000000000000a78b <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_S_check_init_lenEmRKS3_>:
	return (__len < size() || __len > max_size()) ? max_size() : __len;
      }

      // Called by constructors to check initial size.
      static _GLIBCXX20_CONSTEXPR size_type
      _S_check_init_len(size_type __n, const allocator_type& __a)
    a78b:	55                   	push   %rbp
    a78c:	48 89 e5             	mov    %rsp,%rbp
    a78f:	53                   	push   %rbx
    a790:	48 83 ec 28          	sub    $0x28,%rsp
    a794:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a798:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
      {
	if (__n > _S_max_size(_Tp_alloc_type(__a)))
    a79c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    a7a0:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    a7a4:	48 89 d6             	mov    %rdx,%rsi
    a7a7:	48 89 c7             	mov    %rax,%rdi
    a7aa:	e8 cd 02 00 00       	call   aa7c <_ZNSaIN2yy6parser17stack_symbol_typeEEC1ERKS2_>
    a7af:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    a7b3:	48 89 c7             	mov    %rax,%rdi
    a7b6:	e8 7f 02 00 00       	call   aa3a <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE11_S_max_sizeERKS3_>
    a7bb:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    a7bf:	0f 92 c3             	setb   %bl
    a7c2:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
    a7c6:	48 89 c7             	mov    %rax,%rdi
    a7c9:	e8 9c fc ff ff       	call   a46a <_ZNSaIN2yy6parser17stack_symbol_typeEED1Ev>
    a7ce:	84 db                	test   %bl,%bl
    a7d0:	74 0f                	je     a7e1 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_S_check_init_lenEmRKS3_+0x56>
	  __throw_length_error(
    a7d2:	48 8d 05 5f 2b 00 00 	lea    0x2b5f(%rip),%rax        # d338 <_ZZN2yy6parser12yytranslate_EiE15translate_table+0x178>
    a7d9:	48 89 c7             	mov    %rax,%rdi
    a7dc:	e8 cf 98 ff ff       	call   40b0 <_ZSt20__throw_length_errorPKc@plt>
	      __N("cannot create std::vector larger than max_size()"));
	return __n;
    a7e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
      }
    a7e5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a7e9:	c9                   	leave
    a7ea:	c3                   	ret
    a7eb:	90                   	nop

000000000000a7ec <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_>:
      _Vector_base(size_t __n, const allocator_type& __a)
    a7ec:	55                   	push   %rbp
    a7ed:	48 89 e5             	mov    %rsp,%rbp
    a7f0:	53                   	push   %rbx
    a7f1:	48 83 ec 28          	sub    $0x28,%rsp
    a7f5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a7f9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a7fd:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      : _M_impl(__a)
    a801:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a805:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    a809:	48 89 d6             	mov    %rdx,%rsi
    a80c:	48 89 c7             	mov    %rax,%rdi
    a80f:	e8 8e 02 00 00       	call   aaa2 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE12_Vector_implC1ERKS3_>
      { _M_create_storage(__n); }
    a814:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    a818:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a81c:	48 89 d6             	mov    %rdx,%rsi
    a81f:	48 89 c7             	mov    %rax,%rdi
    a822:	e8 ad 02 00 00       	call   aad4 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_create_storageEm>
    a827:	eb 1a                	jmp    a843 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EEC1EmRKS3_+0x57>
    a829:	48 89 c3             	mov    %rax,%rbx
    a82c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a830:	48 89 c7             	mov    %rax,%rdi
    a833:	e8 b4 fc ff ff       	call   a4ec <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE12_Vector_implD1Ev>
    a838:	48 89 d8             	mov    %rbx,%rax
    a83b:	48 89 c7             	mov    %rax,%rdi
    a83e:	e8 9d 9a ff ff       	call   42e0 <_Unwind_Resume@plt>
    a843:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a847:	c9                   	leave
    a848:	c3                   	ret
    a849:	90                   	nop

000000000000a84a <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE21_M_default_initializeEm>:
      _M_default_initialize(size_type __n)
    a84a:	55                   	push   %rbp
    a84b:	48 89 e5             	mov    %rsp,%rbp
    a84e:	48 83 ec 10          	sub    $0x10,%rsp
    a852:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a856:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
					   _M_get_Tp_allocator());
    a85a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a85e:	48 89 c7             	mov    %rax,%rdi
    a861:	e8 f0 fc ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    a866:	48 89 c2             	mov    %rax,%rdx
	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
    a869:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a86d:	48 8b 00             	mov    (%rax),%rax
    a870:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    a874:	48 89 ce             	mov    %rcx,%rsi
    a877:	48 89 c7             	mov    %rax,%rdi
    a87a:	e8 ab 02 00 00       	call   ab2a <_ZSt27__uninitialized_default_n_aIPN2yy6parser17stack_symbol_typeEmS2_ET_S4_T0_RSaIT1_E>
	this->_M_impl._M_finish =
    a87f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    a883:	48 89 42 08          	mov    %rax,0x8(%rdx)
      }
    a887:	90                   	nop
    a888:	c9                   	leave
    a889:	c3                   	ret

000000000000a88a <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE13_M_deallocateEPS2_m>:
      _M_deallocate(pointer __p, size_t __n)
    a88a:	55                   	push   %rbp
    a88b:	48 89 e5             	mov    %rsp,%rbp
    a88e:	48 83 ec 20          	sub    $0x20,%rsp
    a892:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a896:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    a89a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
    a89e:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    a8a3:	74 17                	je     a8bc <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE13_M_deallocateEPS2_m+0x32>
	  _Tr::deallocate(_M_impl, __p, __n);
    a8a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a8a9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    a8ad:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    a8b1:	48 89 ce             	mov    %rcx,%rsi
    a8b4:	48 89 c7             	mov    %rax,%rdi
    a8b7:	e8 97 02 00 00       	call   ab53 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE10deallocateERS3_PS2_m>
      }
    a8bc:	90                   	nop
    a8bd:	c9                   	leave
    a8be:	c3                   	ret

000000000000a8bf <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_>:
   * a trivial destructor, the compiler should optimize all of this
   * away, otherwise the objects' destructors must be invoked.
   */
  template<typename _ForwardIterator>
    _GLIBCXX20_CONSTEXPR inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
    a8bf:	55                   	push   %rbp
    a8c0:	48 89 e5             	mov    %rsp,%rbp
    a8c3:	48 83 ec 10          	sub    $0x10,%rsp
    a8c7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a8cb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      // A deleted destructor is trivial, this ensures we reject such types:
      static_assert(is_destructible<_Value_type>::value,
		    "value type is destructible");
#endif
#if __cplusplus >= 202002L
      if (std::__is_constant_evaluated())
    a8cf:	e8 e5 9e ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    a8d4:	84 c0                	test   %al,%al
    a8d6:	74 15                	je     a8ed <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_+0x2e>
	return _Destroy_aux<false>::__destroy(__first, __last);
    a8d8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a8dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a8e0:	48 89 d6             	mov    %rdx,%rsi
    a8e3:	48 89 c7             	mov    %rax,%rdi
    a8e6:	e8 c6 02 00 00       	call   abb1 <_ZNSt12_Destroy_auxILb0EE9__destroyIPN2yy6parser17stack_symbol_typeEEEvT_S6_>
    a8eb:	eb 13                	jmp    a900 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_+0x41>
#endif
      std::_Destroy_aux<__has_trivial_destructor(_Value_type)>::
	__destroy(__first, __last);
    a8ed:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    a8f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a8f5:	48 89 d6             	mov    %rdx,%rsi
    a8f8:	48 89 c7             	mov    %rax,%rdi
    a8fb:	e8 b1 02 00 00       	call   abb1 <_ZNSt12_Destroy_auxILb0EE9__destroyIPN2yy6parser17stack_symbol_typeEEEvT_S6_>
    }
    a900:	c9                   	leave
    a901:	c3                   	ret

000000000000a902 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_>:
      _GLIBCXX20_CONSTEXPR
      typename vector<_Tp, _Alloc>::reference
#else
      void
#endif
      vector<_Tp, _Alloc>::
    a902:	55                   	push   %rbp
    a903:	48 89 e5             	mov    %rsp,%rbp
    a906:	53                   	push   %rbx
    a907:	48 83 ec 18          	sub    $0x18,%rsp
    a90b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a90f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      emplace_back(_Args&&... __args)
      {
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
    a913:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a917:	48 8b 50 08          	mov    0x8(%rax),%rdx
    a91b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a91f:	48 8b 40 10          	mov    0x10(%rax),%rax
    a923:	48 39 c2             	cmp    %rax,%rdx
    a926:	74 3c                	je     a964 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_+0x62>
	  {
	    _GLIBCXX_ASAN_ANNOTATE_GROW(1);
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
    a928:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a92c:	48 89 c7             	mov    %rax,%rdi
    a92f:	e8 b6 02 00 00       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    a934:	48 89 c2             	mov    %rax,%rdx
    a937:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a93b:	48 8b 48 08          	mov    0x8(%rax),%rcx
    a93f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a943:	48 89 ce             	mov    %rcx,%rsi
    a946:	48 89 c7             	mov    %rax,%rdi
    a949:	e8 aa 02 00 00       	call   abf8 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_>
				     std::forward<_Args>(__args)...);
	    ++this->_M_impl._M_finish;
    a94e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a952:	48 8b 40 08          	mov    0x8(%rax),%rax
    a956:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a95a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a95e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    a962:	eb 30                	jmp    a994 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_+0x92>
	    _GLIBCXX_ASAN_ANNOTATE_GREW(1);
	  }
	else
	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
    a964:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a968:	48 89 c7             	mov    %rax,%rdi
    a96b:	e8 7a 02 00 00       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    a970:	48 89 c3             	mov    %rax,%rbx
    a973:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a977:	48 89 c7             	mov    %rax,%rdi
    a97a:	e8 af 02 00 00       	call   ac2e <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE3endEv>
    a97f:	48 89 c1             	mov    %rax,%rcx
    a982:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a986:	48 89 da             	mov    %rbx,%rdx
    a989:	48 89 ce             	mov    %rcx,%rsi
    a98c:	48 89 c7             	mov    %rax,%rdi
    a98f:	e8 1e 04 00 00       	call   adb2 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_>
#if __cplusplus > 201402L
	return back();
    a994:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a998:	48 89 c7             	mov    %rax,%rdi
    a99b:	e8 4e 06 00 00       	call   afee <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4backEv>
#endif
      }
    a9a0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a9a4:	c9                   	leave
    a9a5:	c3                   	ret

000000000000a9a6 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE7destroyIS2_EEvRS3_PT_>:
	destroy(allocator_type& __a __attribute__((__unused__)), _Up* __p)
    a9a6:	55                   	push   %rbp
    a9a7:	48 89 e5             	mov    %rsp,%rbp
    a9aa:	48 83 ec 10          	sub    $0x10,%rsp
    a9ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a9b2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  std::destroy_at(__p);
    a9b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a9ba:	48 89 c7             	mov    %rax,%rdi
    a9bd:	e8 6b 06 00 00       	call   b02d <_ZSt10destroy_atIN2yy6parser17stack_symbol_typeEEvPT_>
	}
    a9c2:	90                   	nop
    a9c3:	c9                   	leave
    a9c4:	c3                   	ret
    a9c5:	90                   	nop

000000000000a9c6 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE15_M_erase_at_endEPS2_>:

      // Called by erase(q1,q2), clear(), resize(), _M_fill_assign,
      // _M_assign_aux.
      _GLIBCXX20_CONSTEXPR
      void
      _M_erase_at_end(pointer __pos) _GLIBCXX_NOEXCEPT
    a9c6:	55                   	push   %rbp
    a9c7:	48 89 e5             	mov    %rsp,%rbp
    a9ca:	48 83 ec 20          	sub    $0x20,%rsp
    a9ce:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a9d2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      {
	if (size_type __n = this->_M_impl._M_finish - __pos)
    a9d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a9da:	48 8b 40 08          	mov    0x8(%rax),%rax
    a9de:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
    a9e2:	48 c1 f8 03          	sar    $0x3,%rax
    a9e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a9ea:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    a9ef:	74 32                	je     aa23 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE15_M_erase_at_endEPS2_+0x5d>
	  {
	    std::_Destroy(__pos, this->_M_impl._M_finish,
			  _M_get_Tp_allocator());
    a9f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a9f5:	48 89 c7             	mov    %rax,%rdi
    a9f8:	e8 59 fb ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    a9fd:	48 89 c2             	mov    %rax,%rdx
	    std::_Destroy(__pos, this->_M_impl._M_finish,
    aa00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    aa04:	48 8b 48 08          	mov    0x8(%rax),%rcx
    aa08:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    aa0c:	48 89 ce             	mov    %rcx,%rsi
    aa0f:	48 89 c7             	mov    %rax,%rdi
    aa12:	e8 4d fb ff ff       	call   a564 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeES2_EvT_S4_RSaIT0_E>
	    this->_M_impl._M_finish = __pos;
    aa17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    aa1b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    aa1f:	48 89 50 08          	mov    %rdx,0x8(%rax)
	    _GLIBCXX_ASAN_ANNOTATE_SHRINK(__n);
	  }
      }
    aa23:	90                   	nop
    aa24:	c9                   	leave
    aa25:	c3                   	ret

000000000000aa26 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8max_sizeERKS3_>:
      max_size(const allocator_type& __a __attribute__((__unused__))) noexcept
    aa26:	55                   	push   %rbp
    aa27:	48 89 e5             	mov    %rsp,%rbp
    aa2a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return size_t(-1) / sizeof(value_type);
    aa2e:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
    aa35:	ff ff 1f 
      }
    aa38:	5d                   	pop    %rbp
    aa39:	c3                   	ret

000000000000aa3a <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE11_S_max_sizeERKS3_>:
      _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
    aa3a:	55                   	push   %rbp
    aa3b:	48 89 e5             	mov    %rsp,%rbp
    aa3e:	48 83 ec 20          	sub    $0x20,%rsp
    aa42:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	const size_t __diffmax
    aa46:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
    aa4d:	ff ff 0f 
    aa50:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	const size_t __allocmax = _Alloc_traits::max_size(__a);
    aa54:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    aa58:	48 89 c7             	mov    %rax,%rdi
    aa5b:	e8 c6 ff ff ff       	call   aa26 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8max_sizeERKS3_>
    aa60:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	return (std::min)(__diffmax, __allocmax);
    aa64:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    aa68:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    aa6c:	48 89 d6             	mov    %rdx,%rsi
    aa6f:	48 89 c7             	mov    %rax,%rdi
    aa72:	e8 d1 05 00 00       	call   b048 <_ZSt3minImERKT_S2_S2_>
    aa77:	48 8b 00             	mov    (%rax),%rax
      }
    aa7a:	c9                   	leave
    aa7b:	c3                   	ret

000000000000aa7c <_ZNSaIN2yy6parser17stack_symbol_typeEEC1ERKS2_>:
      allocator(const allocator& __a) _GLIBCXX_NOTHROW
    aa7c:	55                   	push   %rbp
    aa7d:	48 89 e5             	mov    %rsp,%rbp
    aa80:	48 83 ec 10          	sub    $0x10,%rsp
    aa84:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    aa88:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : __allocator_base<_Tp>(__a) { }
    aa8c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    aa90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    aa94:	48 89 d6             	mov    %rdx,%rsi
    aa97:	48 89 c7             	mov    %rax,%rdi
    aa9a:	e8 d5 05 00 00       	call   b074 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEEC1ERKS3_>
    aa9f:	90                   	nop
    aaa0:	c9                   	leave
    aaa1:	c3                   	ret

000000000000aaa2 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE12_Vector_implC1ERKS3_>:
	_Vector_impl(_Tp_alloc_type const& __a) _GLIBCXX_NOEXCEPT
    aaa2:	55                   	push   %rbp
    aaa3:	48 89 e5             	mov    %rsp,%rbp
    aaa6:	48 83 ec 10          	sub    $0x10,%rsp
    aaaa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    aaae:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	: _Tp_alloc_type(__a)
    aab2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    aab6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    aaba:	48 89 d6             	mov    %rdx,%rsi
    aabd:	48 89 c7             	mov    %rax,%rdi
    aac0:	e8 b7 ff ff ff       	call   aa7c <_ZNSaIN2yy6parser17stack_symbol_typeEEC1ERKS2_>
    aac5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    aac9:	48 89 c7             	mov    %rax,%rdi
    aacc:	e8 b3 05 00 00       	call   b084 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE17_Vector_impl_dataC1Ev>
	{ }
    aad1:	90                   	nop
    aad2:	c9                   	leave
    aad3:	c3                   	ret

000000000000aad4 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_create_storageEm>:
      _M_create_storage(size_t __n)
    aad4:	55                   	push   %rbp
    aad5:	48 89 e5             	mov    %rsp,%rbp
    aad8:	48 83 ec 10          	sub    $0x10,%rsp
    aadc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    aae0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	this->_M_impl._M_start = this->_M_allocate(__n);
    aae4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    aae8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    aaec:	48 89 d6             	mov    %rdx,%rsi
    aaef:	48 89 c7             	mov    %rax,%rdi
    aaf2:	e8 bb 05 00 00       	call   b0b2 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE11_M_allocateEm>
    aaf7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    aafb:	48 89 02             	mov    %rax,(%rdx)
	this->_M_impl._M_finish = this->_M_impl._M_start;
    aafe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab02:	48 8b 10             	mov    (%rax),%rdx
    ab05:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab09:	48 89 50 08          	mov    %rdx,0x8(%rax)
	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
    ab0d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab11:	48 8b 00             	mov    (%rax),%rax
    ab14:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    ab18:	48 c1 e2 03          	shl    $0x3,%rdx
    ab1c:	48 01 c2             	add    %rax,%rdx
    ab1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab23:	48 89 50 10          	mov    %rdx,0x10(%rax)
      }
    ab27:	90                   	nop
    ab28:	c9                   	leave
    ab29:	c3                   	ret

000000000000ab2a <_ZSt27__uninitialized_default_n_aIPN2yy6parser17stack_symbol_typeEmS2_ET_S4_T0_RSaIT1_E>:
  // __uninitialized_default_n_a specialization for std::allocator,
  // which ignores the allocator and value-initializes the elements.
  template<typename _ForwardIterator, typename _Size, typename _Tp>
    _GLIBCXX20_CONSTEXPR
    inline _ForwardIterator
    __uninitialized_default_n_a(_ForwardIterator __first, _Size __n,
    ab2a:	55                   	push   %rbp
    ab2b:	48 89 e5             	mov    %rsp,%rbp
    ab2e:	48 83 ec 20          	sub    $0x20,%rsp
    ab32:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ab36:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    ab3a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
				allocator<_Tp>&)
    { return std::__uninitialized_default_n(__first, __n); }
    ab3e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    ab42:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ab46:	48 89 d6             	mov    %rdx,%rsi
    ab49:	48 89 c7             	mov    %rax,%rdi
    ab4c:	e8 94 05 00 00       	call   b0e5 <_ZSt25__uninitialized_default_nIPN2yy6parser17stack_symbol_typeEmET_S4_T0_>
    ab51:	c9                   	leave
    ab52:	c3                   	ret

000000000000ab53 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE10deallocateERS3_PS2_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
    ab53:	55                   	push   %rbp
    ab54:	48 89 e5             	mov    %rsp,%rbp
    ab57:	48 83 ec 40          	sub    $0x40,%rsp
    ab5b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    ab5f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    ab63:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    ab67:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ab6b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    ab6f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    ab73:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    ab77:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    ab7b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	if (std::__is_constant_evaluated())
    ab7f:	e8 35 9c ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    ab84:	84 c0                	test   %al,%al
    ab86:	74 0e                	je     ab96 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE10deallocateERS3_PS2_m+0x43>
	    ::operator delete(__p);
    ab88:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    ab8c:	48 89 c7             	mov    %rax,%rdi
    ab8f:	e8 9c 95 ff ff       	call   4130 <_ZdlPv@plt>
	    return;
    ab94:	eb 18                	jmp    abae <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE10deallocateERS3_PS2_m+0x5b>
	__allocator_base<_Tp>::deallocate(__p, __n);
    ab96:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    ab9a:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    ab9e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    aba2:	48 89 ce             	mov    %rcx,%rsi
    aba5:	48 89 c7             	mov    %rax,%rdi
    aba8:	e8 cb 07 00 00       	call   b378 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE10deallocateEPS2_m>
      { __a.deallocate(__p, __n); }
    abad:	90                   	nop
    abae:	90                   	nop
    abaf:	c9                   	leave
    abb0:	c3                   	ret

000000000000abb1 <_ZNSt12_Destroy_auxILb0EE9__destroyIPN2yy6parser17stack_symbol_typeEEEvT_S6_>:
	__destroy(_ForwardIterator __first, _ForwardIterator __last)
    abb1:	55                   	push   %rbp
    abb2:	48 89 e5             	mov    %rsp,%rbp
    abb5:	48 83 ec 10          	sub    $0x10,%rsp
    abb9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    abbd:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  for (; __first != __last; ++__first)
    abc1:	eb 19                	jmp    abdc <_ZNSt12_Destroy_auxILb0EE9__destroyIPN2yy6parser17stack_symbol_typeEEEvT_S6_+0x2b>
	    std::_Destroy(std::__addressof(*__first));
    abc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    abc7:	48 89 c7             	mov    %rax,%rdi
    abca:	e8 3f 05 00 00       	call   b10e <_ZSt11__addressofIN2yy6parser17stack_symbol_typeEEPT_RS3_>
    abcf:	48 89 c7             	mov    %rax,%rdi
    abd2:	e8 45 05 00 00       	call   b11c <_ZSt8_DestroyIN2yy6parser17stack_symbol_typeEEvPT_>
	  for (; __first != __last; ++__first)
    abd7:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
    abdc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    abe0:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    abe4:	75 dd                	jne    abc3 <_ZNSt12_Destroy_auxILb0EE9__destroyIPN2yy6parser17stack_symbol_typeEEEvT_S6_+0x12>
	}
    abe6:	90                   	nop
    abe7:	90                   	nop
    abe8:	c9                   	leave
    abe9:	c3                   	ret

000000000000abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>:
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    abea:	55                   	push   %rbp
    abeb:	48 89 e5             	mov    %rsp,%rbp
    abee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
    abf2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    abf6:	5d                   	pop    %rbp
    abf7:	c3                   	ret

000000000000abf8 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_>:
	construct(allocator_type& __a __attribute__((__unused__)), _Up* __p,
    abf8:	55                   	push   %rbp
    abf9:	48 89 e5             	mov    %rsp,%rbp
    abfc:	48 83 ec 20          	sub    $0x20,%rsp
    ac00:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ac04:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    ac08:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	  std::construct_at(__p, std::forward<_Args>(__args)...);
    ac0c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ac10:	48 89 c7             	mov    %rax,%rdi
    ac13:	e8 d2 ff ff ff       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    ac18:	48 89 c2             	mov    %rax,%rdx
    ac1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    ac1f:	48 89 d6             	mov    %rdx,%rsi
    ac22:	48 89 c7             	mov    %rax,%rdi
    ac25:	e8 0d 05 00 00       	call   b137 <_ZSt12construct_atIN2yy6parser17stack_symbol_typeEJS2_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS4_DpOS5_>
	}
    ac2a:	90                   	nop
    ac2b:	c9                   	leave
    ac2c:	c3                   	ret
    ac2d:	90                   	nop

000000000000ac2e <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE3endEv>:
      end() _GLIBCXX_NOEXCEPT
    ac2e:	55                   	push   %rbp
    ac2f:	48 89 e5             	mov    %rsp,%rbp
    ac32:	48 83 ec 20          	sub    $0x20,%rsp
    ac36:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return iterator(this->_M_impl._M_finish); }
    ac3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ac3e:	48 8d 50 08          	lea    0x8(%rax),%rdx
    ac42:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    ac46:	48 89 d6             	mov    %rdx,%rsi
    ac49:	48 89 c7             	mov    %rax,%rdi
    ac4c:	e8 2b 05 00 00       	call   b17c <_ZN9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEC1ERKS4_>
    ac51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ac55:	c9                   	leave
    ac56:	c3                   	ret

000000000000ac57 <_ZSt3maxImERKT_S2_S2_>:
   *  preprocessor macro.
  */
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
    ac57:	55                   	push   %rbp
    ac58:	48 89 e5             	mov    %rsp,%rbp
    ac5b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ac5f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    {
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return  __a < __b ? __b : __a;
      if (__a < __b)
    ac63:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ac67:	48 8b 10             	mov    (%rax),%rdx
    ac6a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    ac6e:	48 8b 00             	mov    (%rax),%rax
    ac71:	48 39 c2             	cmp    %rax,%rdx
    ac74:	73 06                	jae    ac7c <_ZSt3maxImERKT_S2_S2_+0x25>
	return __b;
    ac76:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    ac7a:	eb 04                	jmp    ac80 <_ZSt3maxImERKT_S2_S2_+0x29>
      return __a;
    ac7c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
    ac80:	5d                   	pop    %rbp
    ac81:	c3                   	ret

000000000000ac82 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
    ac82:	55                   	push   %rbp
    ac83:	48 89 e5             	mov    %rsp,%rbp
    ac86:	53                   	push   %rbx
    ac87:	48 83 ec 38          	sub    $0x38,%rsp
    ac8b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    ac8f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    ac93:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	if (max_size() - size() < __n)
    ac97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ac9b:	48 89 c7             	mov    %rax,%rdi
    ac9e:	e8 f7 04 00 00       	call   b19a <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8max_sizeEv>
    aca3:	48 89 c3             	mov    %rax,%rbx
    aca6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    acaa:	48 89 c7             	mov    %rax,%rdi
    acad:	e8 ea f9 ff ff       	call   a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>
    acb2:	48 29 c3             	sub    %rax,%rbx
    acb5:	48 89 da             	mov    %rbx,%rdx
    acb8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    acbc:	48 39 c2             	cmp    %rax,%rdx
    acbf:	0f 92 c0             	setb   %al
    acc2:	84 c0                	test   %al,%al
    acc4:	74 0c                	je     acd2 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc+0x50>
	  __throw_length_error(__N(__s));
    acc6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    acca:	48 89 c7             	mov    %rax,%rdi
    accd:	e8 de 93 ff ff       	call   40b0 <_ZSt20__throw_length_errorPKc@plt>
	const size_type __len = size() + (std::max)(size(), __n);
    acd2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    acd6:	48 89 c7             	mov    %rax,%rdi
    acd9:	e8 be f9 ff ff       	call   a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>
    acde:	48 89 c3             	mov    %rax,%rbx
    ace1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ace5:	48 89 c7             	mov    %rax,%rdi
    ace8:	e8 af f9 ff ff       	call   a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>
    aced:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    acf1:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    acf5:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    acf9:	48 89 d6             	mov    %rdx,%rsi
    acfc:	48 89 c7             	mov    %rax,%rdi
    acff:	e8 53 ff ff ff       	call   ac57 <_ZSt3maxImERKT_S2_S2_>
    ad04:	48 8b 00             	mov    (%rax),%rax
    ad07:	48 01 d8             	add    %rbx,%rax
    ad0a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
    ad0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ad12:	48 89 c7             	mov    %rax,%rdi
    ad15:	e8 82 f9 ff ff       	call   a69c <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4sizeEv>
    ad1a:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
    ad1e:	72 12                	jb     ad32 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc+0xb0>
    ad20:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ad24:	48 89 c7             	mov    %rax,%rdi
    ad27:	e8 6e 04 00 00       	call   b19a <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8max_sizeEv>
    ad2c:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
    ad30:	73 0e                	jae    ad40 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc+0xbe>
    ad32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ad36:	48 89 c7             	mov    %rax,%rdi
    ad39:	e8 5c 04 00 00       	call   b19a <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8max_sizeEv>
    ad3e:	eb 04                	jmp    ad44 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc+0xc2>
    ad40:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      }
    ad44:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    ad48:	c9                   	leave
    ad49:	c3                   	ret

000000000000ad4a <_ZN9__gnu_cxxmiIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_>:
    { return __lhs.base() - __rhs.base(); }

  template<typename _Iterator, typename _Container>
    _GLIBCXX_NODISCARD _GLIBCXX20_CONSTEXPR
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
    ad4a:	55                   	push   %rbp
    ad4b:	48 89 e5             	mov    %rsp,%rbp
    ad4e:	53                   	push   %rbx
    ad4f:	48 83 ec 18          	sub    $0x18,%rsp
    ad53:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    ad57:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	      const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() - __rhs.base(); }
    ad5b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ad5f:	48 89 c7             	mov    %rax,%rdi
    ad62:	e8 55 04 00 00       	call   b1bc <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEE4baseEv>
    ad67:	48 8b 18             	mov    (%rax),%rbx
    ad6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    ad6e:	48 89 c7             	mov    %rax,%rdi
    ad71:	e8 46 04 00 00       	call   b1bc <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEE4baseEv>
    ad76:	48 8b 00             	mov    (%rax),%rax
    ad79:	48 89 da             	mov    %rbx,%rdx
    ad7c:	48 29 c2             	sub    %rax,%rdx
    ad7f:	48 89 d0             	mov    %rdx,%rax
    ad82:	48 c1 f8 03          	sar    $0x3,%rax
    ad86:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    ad8a:	c9                   	leave
    ad8b:	c3                   	ret

000000000000ad8c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE5beginEv>:
      begin() _GLIBCXX_NOEXCEPT
    ad8c:	55                   	push   %rbp
    ad8d:	48 89 e5             	mov    %rsp,%rbp
    ad90:	48 83 ec 20          	sub    $0x20,%rsp
    ad94:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      { return iterator(this->_M_impl._M_start); }
    ad98:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    ad9c:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    ada0:	48 89 d6             	mov    %rdx,%rsi
    ada3:	48 89 c7             	mov    %rax,%rdi
    ada6:	e8 d1 03 00 00       	call   b17c <_ZN9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEC1ERKS4_>
    adab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    adaf:	c9                   	leave
    adb0:	c3                   	ret
    adb1:	90                   	nop

000000000000adb2 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_>:
#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    template<typename... _Args>
      _GLIBCXX20_CONSTEXPR
      void
      vector<_Tp, _Alloc>::
    adb2:	55                   	push   %rbp
    adb3:	48 89 e5             	mov    %rsp,%rbp
    adb6:	53                   	push   %rbx
    adb7:	48 83 ec 68          	sub    $0x68,%rsp
    adbb:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
    adbf:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
    adc3:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    vector<_Tp, _Alloc>::
    _M_realloc_insert(iterator __position, const _Tp& __x)
#endif
    {
      const size_type __len =
	_M_check_len(size_type(1), "vector::_M_realloc_insert");
    adc7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    adcb:	48 8d 15 97 25 00 00 	lea    0x2597(%rip),%rdx        # d369 <_ZZN2yy6parser12yytranslate_EiE15translate_table+0x1a9>
    add2:	be 01 00 00 00       	mov    $0x1,%esi
    add7:	48 89 c7             	mov    %rax,%rdi
    adda:	e8 a3 fe ff ff       	call   ac82 <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE12_M_check_lenEmPKc>
    addf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __old_start = this->_M_impl._M_start;
    ade3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    ade7:	48 8b 00             	mov    (%rax),%rax
    adea:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __old_finish = this->_M_impl._M_finish;
    adee:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    adf2:	48 8b 40 08          	mov    0x8(%rax),%rax
    adf6:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      const size_type __elems_before = __position - begin();
    adfa:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    adfe:	48 89 c7             	mov    %rax,%rdi
    ae01:	e8 86 ff ff ff       	call   ad8c <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE5beginEv>
    ae06:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    ae0a:	48 8d 55 b8          	lea    -0x48(%rbp),%rdx
    ae0e:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    ae12:	48 89 d6             	mov    %rdx,%rsi
    ae15:	48 89 c7             	mov    %rax,%rdi
    ae18:	e8 2d ff ff ff       	call   ad4a <_ZN9__gnu_cxxmiIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_>
    ae1d:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
      pointer __new_start(this->_M_allocate(__len));
    ae21:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    ae25:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    ae29:	48 89 d6             	mov    %rdx,%rsi
    ae2c:	48 89 c7             	mov    %rax,%rdi
    ae2f:	e8 7e 02 00 00       	call   b0b2 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE11_M_allocateEm>
    ae34:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
      pointer __new_finish(__new_start);
    ae38:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    ae3c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	  // The order of the three operations is dictated by the C++11
	  // case, where the moves could alter a new element belonging
	  // to the existing vector.  This is an issue only for callers
	  // taking the element by lvalue ref (see last bullet of C++11
	  // [res.on.arguments]).
	  _Alloc_traits::construct(this->_M_impl,
    ae40:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    ae44:	48 89 c7             	mov    %rax,%rdi
    ae47:	e8 9e fd ff ff       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    ae4c:	48 89 c2             	mov    %rax,%rdx
				   __new_start + __elems_before,
    ae4f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    ae53:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    ae5a:	00 
	  _Alloc_traits::construct(this->_M_impl,
    ae5b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    ae5f:	48 01 c1             	add    %rax,%rcx
    ae62:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    ae66:	48 89 ce             	mov    %rcx,%rsi
    ae69:	48 89 c7             	mov    %rax,%rdi
    ae6c:	e8 87 fd ff ff       	call   abf8 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_>
#if __cplusplus >= 201103L
				   std::forward<_Args>(__args)...);
#else
				   __x);
#endif
	  __new_finish = pointer();
    ae71:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    ae78:	00 
#endif
	    {
	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__old_start, __position.base(),
		 __new_start, _M_get_Tp_allocator());
    ae79:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    ae7d:	48 89 c7             	mov    %rax,%rdi
    ae80:	e8 d1 f6 ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    ae85:	48 89 c3             	mov    %rax,%rbx
		(__old_start, __position.base(),
    ae88:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    ae8c:	48 89 c7             	mov    %rax,%rdi
    ae8f:	e8 28 03 00 00       	call   b1bc <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEE4baseEv>
    ae94:	48 8b 30             	mov    (%rax),%rsi
    ae97:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    ae9b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ae9f:	48 89 d9             	mov    %rbx,%rcx
    aea2:	48 89 c7             	mov    %rax,%rdi
    aea5:	e8 20 03 00 00       	call   b1ca <_ZSt34__uninitialized_move_if_noexcept_aIPN2yy6parser17stack_symbol_typeES3_SaIS2_EET0_T_S6_S5_RT1_>
    aeaa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

	      ++__new_finish;
    aeae:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)

	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__position.base(), __old_finish,
		 __new_finish, _M_get_Tp_allocator());
    aeb3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    aeb7:	48 89 c7             	mov    %rax,%rdi
    aeba:	e8 97 f6 ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    aebf:	48 89 c3             	mov    %rax,%rbx
		(__position.base(), __old_finish,
    aec2:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    aec6:	48 89 c7             	mov    %rax,%rdi
    aec9:	e8 ee 02 00 00       	call   b1bc <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEE4baseEv>
    aece:	48 8b 00             	mov    (%rax),%rax
    aed1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    aed5:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    aed9:	48 89 d9             	mov    %rbx,%rcx
    aedc:	48 89 c7             	mov    %rax,%rdi
    aedf:	e8 e6 02 00 00       	call   b1ca <_ZSt34__uninitialized_move_if_noexcept_aIPN2yy6parser17stack_symbol_typeES3_SaIS2_EET0_T_S6_S5_RT1_>
    aee4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	  __throw_exception_again;
	}
#if __cplusplus >= 201103L
      if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
#endif
	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
    aee8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    aeec:	48 89 c7             	mov    %rax,%rdi
    aeef:	e8 62 f6 ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    aef4:	48 89 c2             	mov    %rax,%rdx
    aef7:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    aefb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    aeff:	48 89 ce             	mov    %rcx,%rsi
    af02:	48 89 c7             	mov    %rax,%rdi
    af05:	e8 5a f6 ff ff       	call   a564 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeES2_EvT_S4_RSaIT0_E>
      _GLIBCXX_ASAN_ANNOTATE_REINIT;
      _M_deallocate(__old_start,
    af0a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
		    this->_M_impl._M_end_of_storage - __old_start);
    af0e:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    af12:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    af16:	48 2b 55 d8          	sub    -0x28(%rbp),%rdx
    af1a:	48 c1 fa 03          	sar    $0x3,%rdx
      _M_deallocate(__old_start,
    af1e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    af22:	48 89 ce             	mov    %rcx,%rsi
    af25:	48 89 c7             	mov    %rax,%rdi
    af28:	e8 5d f9 ff ff       	call   a88a <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE13_M_deallocateEPS2_m>
      this->_M_impl._M_start = __new_start;
    af2d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    af31:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    af35:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
    af38:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    af3c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    af40:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
    af44:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    af48:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    af4f:	00 
    af50:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    af54:	48 01 c2             	add    %rax,%rdx
    af57:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    af5b:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
    af5f:	e9 84 00 00 00       	jmp    afe8 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x236>
      __catch(...)
    af64:	48 89 c7             	mov    %rax,%rdi
    af67:	e8 24 91 ff ff       	call   4090 <__cxa_begin_catch@plt>
	  if (!__new_finish)
    af6c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    af71:	75 24                	jne    af97 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x1e5>
				   __new_start + __elems_before);
    af73:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    af77:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    af7e:	00 
	    _Alloc_traits::destroy(this->_M_impl,
    af7f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    af83:	48 01 c2             	add    %rax,%rdx
    af86:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    af8a:	48 89 d6             	mov    %rdx,%rsi
    af8d:	48 89 c7             	mov    %rax,%rdi
    af90:	e8 11 fa ff ff       	call   a9a6 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE7destroyIS2_EEvRS3_PT_>
    af95:	eb 22                	jmp    afb9 <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_+0x207>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
    af97:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    af9b:	48 89 c7             	mov    %rax,%rdi
    af9e:	e8 b3 f5 ff ff       	call   a556 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    afa3:	48 89 c2             	mov    %rax,%rdx
    afa6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    afaa:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    afae:	48 89 ce             	mov    %rcx,%rsi
    afb1:	48 89 c7             	mov    %rax,%rdi
    afb4:	e8 ab f5 ff ff       	call   a564 <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeES2_EvT_S4_RSaIT0_E>
	  _M_deallocate(__new_start, __len);
    afb9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    afbd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    afc1:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    afc5:	48 89 ce             	mov    %rcx,%rsi
    afc8:	48 89 c7             	mov    %rax,%rdi
    afcb:	e8 ba f8 ff ff       	call   a88a <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE13_M_deallocateEPS2_m>
	  __throw_exception_again;
    afd0:	e8 5b 92 ff ff       	call   4230 <__cxa_rethrow@plt>
      __catch(...)
    afd5:	48 89 c3             	mov    %rax,%rbx
    afd8:	e8 c3 92 ff ff       	call   42a0 <__cxa_end_catch@plt>
    afdd:	48 89 d8             	mov    %rbx,%rax
    afe0:	48 89 c7             	mov    %rax,%rdi
    afe3:	e8 f8 92 ff ff       	call   42e0 <_Unwind_Resume@plt>
    }
    afe8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    afec:	c9                   	leave
    afed:	c3                   	ret

000000000000afee <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE4backEv>:
      back() _GLIBCXX_NOEXCEPT
    afee:	55                   	push   %rbp
    afef:	48 89 e5             	mov    %rsp,%rbp
    aff2:	48 83 ec 20          	sub    $0x20,%rsp
    aff6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
	return *(end() - 1);
    affa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    affe:	48 89 c7             	mov    %rax,%rdi
    b001:	e8 28 fc ff ff       	call   ac2e <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE3endEv>
    b006:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    b00a:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    b00e:	be 01 00 00 00       	mov    $0x1,%esi
    b013:	48 89 c7             	mov    %rax,%rdi
    b016:	e8 03 02 00 00       	call   b21e <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEmiEl>
    b01b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    b01f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    b023:	48 89 c7             	mov    %rax,%rdi
    b026:	e8 35 02 00 00       	call   b260 <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEdeEv>
      }
    b02b:	c9                   	leave
    b02c:	c3                   	ret

000000000000b02d <_ZSt10destroy_atIN2yy6parser17stack_symbol_typeEEvPT_>:
    destroy_at(_Tp* __location)
    b02d:	55                   	push   %rbp
    b02e:	48 89 e5             	mov    %rsp,%rbp
    b031:	48 83 ec 10          	sub    $0x10,%rsp
    b035:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	__location->~_Tp();
    b039:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b03d:	48 89 c7             	mov    %rax,%rdi
    b040:	e8 25 f0 ff ff       	call   a06a <_ZN2yy6parser17stack_symbol_typeD1Ev>
    }
    b045:	90                   	nop
    b046:	c9                   	leave
    b047:	c3                   	ret

000000000000b048 <_ZSt3minImERKT_S2_S2_>:
    min(const _Tp& __a, const _Tp& __b)
    b048:	55                   	push   %rbp
    b049:	48 89 e5             	mov    %rsp,%rbp
    b04c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b050:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      if (__b < __a)
    b054:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b058:	48 8b 10             	mov    (%rax),%rdx
    b05b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b05f:	48 8b 00             	mov    (%rax),%rax
    b062:	48 39 c2             	cmp    %rax,%rdx
    b065:	73 06                	jae    b06d <_ZSt3minImERKT_S2_S2_+0x25>
	return __b;
    b067:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b06b:	eb 04                	jmp    b071 <_ZSt3minImERKT_S2_S2_+0x29>
      return __a;
    b06d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
    b071:	5d                   	pop    %rbp
    b072:	c3                   	ret
    b073:	90                   	nop

000000000000b074 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEEC1ERKS3_>:
      __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
    b074:	55                   	push   %rbp
    b075:	48 89 e5             	mov    %rsp,%rbp
    b078:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b07c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b080:	90                   	nop
    b081:	5d                   	pop    %rbp
    b082:	c3                   	ret
    b083:	90                   	nop

000000000000b084 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE17_Vector_impl_dataC1Ev>:
	_Vector_impl_data() _GLIBCXX_NOEXCEPT
    b084:	55                   	push   %rbp
    b085:	48 89 e5             	mov    %rsp,%rbp
    b088:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _M_start(), _M_finish(), _M_end_of_storage()
    b08c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b090:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    b097:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b09b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    b0a2:	00 
    b0a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b0a7:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    b0ae:	00 
	{ }
    b0af:	90                   	nop
    b0b0:	5d                   	pop    %rbp
    b0b1:	c3                   	ret

000000000000b0b2 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
    b0b2:	55                   	push   %rbp
    b0b3:	48 89 e5             	mov    %rsp,%rbp
    b0b6:	48 83 ec 10          	sub    $0x10,%rsp
    b0ba:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b0be:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
    b0c2:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    b0c7:	74 15                	je     b0de <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE11_M_allocateEm+0x2c>
    b0c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b0cd:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    b0d1:	48 89 d6             	mov    %rdx,%rsi
    b0d4:	48 89 c7             	mov    %rax,%rdi
    b0d7:	e8 95 01 00 00       	call   b271 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m>
    b0dc:	eb 05                	jmp    b0e3 <_ZNSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE11_M_allocateEm+0x31>
    b0de:	b8 00 00 00 00       	mov    $0x0,%eax
      }
    b0e3:	c9                   	leave
    b0e4:	c3                   	ret

000000000000b0e5 <_ZSt25__uninitialized_default_nIPN2yy6parser17stack_symbol_typeEmET_S4_T0_>:
    __uninitialized_default_n(_ForwardIterator __first, _Size __n)
    b0e5:	55                   	push   %rbp
    b0e6:	48 89 e5             	mov    %rsp,%rbp
    b0e9:	48 83 ec 20          	sub    $0x20,%rsp
    b0ed:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b0f1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      constexpr bool __can_fill
    b0f5:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
	__uninit_default_n(__first, __n);
    b0f9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    b0fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b101:	48 89 d6             	mov    %rdx,%rsi
    b104:	48 89 c7             	mov    %rax,%rdi
    b107:	e8 ec 01 00 00       	call   b2f8 <_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2yy6parser17stack_symbol_typeEmEET_S6_T0_>
    }
    b10c:	c9                   	leave
    b10d:	c3                   	ret

000000000000b10e <_ZSt11__addressofIN2yy6parser17stack_symbol_typeEEPT_RS3_>:
    __addressof(_Tp& __r) _GLIBCXX_NOEXCEPT
    b10e:	55                   	push   %rbp
    b10f:	48 89 e5             	mov    %rsp,%rbp
    b112:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __builtin_addressof(__r); }
    b116:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b11a:	5d                   	pop    %rbp
    b11b:	c3                   	ret

000000000000b11c <_ZSt8_DestroyIN2yy6parser17stack_symbol_typeEEvPT_>:
    _Destroy(_Tp* __pointer)
    b11c:	55                   	push   %rbp
    b11d:	48 89 e5             	mov    %rsp,%rbp
    b120:	48 83 ec 10          	sub    $0x10,%rsp
    b124:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      std::destroy_at(__pointer);
    b128:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b12c:	48 89 c7             	mov    %rax,%rdi
    b12f:	e8 f9 fe ff ff       	call   b02d <_ZSt10destroy_atIN2yy6parser17stack_symbol_typeEEvPT_>
    }
    b134:	90                   	nop
    b135:	c9                   	leave
    b136:	c3                   	ret

000000000000b137 <_ZSt12construct_atIN2yy6parser17stack_symbol_typeEJS2_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS4_DpOS5_>:
    construct_at(_Tp* __location, _Args&&... __args)
    b137:	55                   	push   %rbp
    b138:	48 89 e5             	mov    %rsp,%rbp
    b13b:	53                   	push   %rbx
    b13c:	48 83 ec 18          	sub    $0x18,%rsp
    b140:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b144:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
    b148:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b14c:	48 89 c6             	mov    %rax,%rsi
    b14f:	bf 08 00 00 00       	mov    $0x8,%edi
    b154:	e8 76 96 ff ff       	call   47cf <_ZnwmPv>
    b159:	48 89 c3             	mov    %rax,%rbx
    b15c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b160:	48 89 c7             	mov    %rax,%rdi
    b163:	e8 82 fa ff ff       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    b168:	48 89 c6             	mov    %rax,%rsi
    b16b:	48 89 df             	mov    %rbx,%rdi
    b16e:	e8 cd db ff ff       	call   8d40 <_ZN2yy6parser17stack_symbol_typeC1EOS1_>
    b173:	48 89 d8             	mov    %rbx,%rax
    b176:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b17a:	c9                   	leave
    b17b:	c3                   	ret

000000000000b17c <_ZN9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEC1ERKS4_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
    b17c:	55                   	push   %rbp
    b17d:	48 89 e5             	mov    %rsp,%rbp
    b180:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b184:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
    b188:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b18c:	48 8b 10             	mov    (%rax),%rdx
    b18f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b193:	48 89 10             	mov    %rdx,(%rax)
    b196:	90                   	nop
    b197:	5d                   	pop    %rbp
    b198:	c3                   	ret
    b199:	90                   	nop

000000000000b19a <_ZNKSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
    b19a:	55                   	push   %rbp
    b19b:	48 89 e5             	mov    %rsp,%rbp
    b19e:	48 83 ec 10          	sub    $0x10,%rsp
    b1a2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _S_max_size(_M_get_Tp_allocator()); }
    b1a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b1aa:	48 89 c7             	mov    %rax,%rdi
    b1ad:	e8 f8 01 00 00       	call   b3aa <_ZNKSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>
    b1b2:	48 89 c7             	mov    %rax,%rdi
    b1b5:	e8 80 f8 ff ff       	call   aa3a <_ZNSt6vectorIN2yy6parser17stack_symbol_typeESaIS2_EE11_S_max_sizeERKS3_>
    b1ba:	c9                   	leave
    b1bb:	c3                   	ret

000000000000b1bc <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
    b1bc:	55                   	push   %rbp
    b1bd:	48 89 e5             	mov    %rsp,%rbp
    b1c0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
    b1c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b1c8:	5d                   	pop    %rbp
    b1c9:	c3                   	ret

000000000000b1ca <_ZSt34__uninitialized_move_if_noexcept_aIPN2yy6parser17stack_symbol_typeES3_SaIS2_EET0_T_S6_S5_RT1_>:
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
    b1ca:	55                   	push   %rbp
    b1cb:	48 89 e5             	mov    %rsp,%rbp
    b1ce:	53                   	push   %rbx
    b1cf:	48 83 ec 28          	sub    $0x28,%rsp
    b1d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b1d7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    b1db:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    b1df:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
    b1e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b1e7:	48 89 c7             	mov    %rax,%rdi
    b1ea:	e8 c9 01 00 00       	call   b3b8 <_ZSt32__make_move_if_noexcept_iteratorIN2yy6parser17stack_symbol_typeESt13move_iteratorIPS2_EET0_PT_>
    b1ef:	48 89 c3             	mov    %rax,%rbx
    b1f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b1f6:	48 89 c7             	mov    %rax,%rdi
    b1f9:	e8 ba 01 00 00       	call   b3b8 <_ZSt32__make_move_if_noexcept_iteratorIN2yy6parser17stack_symbol_typeESt13move_iteratorIPS2_EET0_PT_>
    b1fe:	48 89 c7             	mov    %rax,%rdi
    b201:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    b205:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b209:	48 89 d1             	mov    %rdx,%rcx
    b20c:	48 89 c2             	mov    %rax,%rdx
    b20f:	48 89 de             	mov    %rbx,%rsi
    b212:	e8 c6 01 00 00       	call   b3dd <_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_S3_ET0_T_S7_S6_RSaIT1_E>
    }
    b217:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b21b:	c9                   	leave
    b21c:	c3                   	ret
    b21d:	90                   	nop

000000000000b21e <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEmiEl>:
      operator-(difference_type __n) const _GLIBCXX_NOEXCEPT
    b21e:	55                   	push   %rbp
    b21f:	48 89 e5             	mov    %rsp,%rbp
    b222:	48 83 ec 20          	sub    $0x20,%rsp
    b226:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b22a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      { return __normal_iterator(_M_current - __n); }
    b22e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b232:	48 8b 00             	mov    (%rax),%rax
    b235:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    b239:	48 c1 e2 03          	shl    $0x3,%rdx
    b23d:	48 f7 da             	neg    %rdx
    b240:	48 01 d0             	add    %rdx,%rax
    b243:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    b247:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
    b24b:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    b24f:	48 89 d6             	mov    %rdx,%rsi
    b252:	48 89 c7             	mov    %rax,%rdi
    b255:	e8 22 ff ff ff       	call   b17c <_ZN9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEC1ERKS4_>
    b25a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b25e:	c9                   	leave
    b25f:	c3                   	ret

000000000000b260 <_ZNK9__gnu_cxx17__normal_iteratorIPN2yy6parser17stack_symbol_typeESt6vectorIS3_SaIS3_EEEdeEv>:
      operator*() const _GLIBCXX_NOEXCEPT
    b260:	55                   	push   %rbp
    b261:	48 89 e5             	mov    %rsp,%rbp
    b264:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *_M_current; }
    b268:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b26c:	48 8b 00             	mov    (%rax),%rax
    b26f:	5d                   	pop    %rbp
    b270:	c3                   	ret

000000000000b271 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m>:
      allocate(allocator_type& __a, size_type __n)
    b271:	55                   	push   %rbp
    b272:	48 89 e5             	mov    %rsp,%rbp
    b275:	48 83 ec 20          	sub    $0x20,%rsp
    b279:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b27d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    b281:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b285:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    b289:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b28d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	if (std::__is_constant_evaluated())
    b291:	e8 23 95 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    b296:	84 c0                	test   %al,%al
    b298:	74 43                	je     b2dd <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m+0x6c>
	    if (__builtin_mul_overflow(__n, sizeof(_Tp), &__n))
    b29a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b29e:	b9 00 00 00 00       	mov    $0x0,%ecx
    b2a3:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    b2aa:	00 
    b2ab:	48 c1 e8 3d          	shr    $0x3d,%rax
    b2af:	48 85 c0             	test   %rax,%rax
    b2b2:	74 05                	je     b2b9 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m+0x48>
    b2b4:	b9 01 00 00 00       	mov    $0x1,%ecx
    b2b9:	48 89 d0             	mov    %rdx,%rax
    b2bc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    b2c0:	48 89 c8             	mov    %rcx,%rax
    b2c3:	83 e0 01             	and    $0x1,%eax
    b2c6:	84 c0                	test   %al,%al
    b2c8:	74 05                	je     b2cf <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m+0x5e>
	      std::__throw_bad_array_new_length();
    b2ca:	e8 11 8e ff ff       	call   40e0 <_ZSt28__throw_bad_array_new_lengthv@plt>
	    return static_cast<_Tp*>(::operator new(__n));
    b2cf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b2d3:	48 89 c7             	mov    %rax,%rdi
    b2d6:	e8 75 8e ff ff       	call   4150 <_Znwm@plt>
    b2db:	eb 19                	jmp    b2f6 <_ZNSt16allocator_traitsISaIN2yy6parser17stack_symbol_typeEEE8allocateERS3_m+0x85>
	return __allocator_base<_Tp>::allocate(__n, 0);
    b2dd:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b2e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b2e5:	ba 00 00 00 00       	mov    $0x0,%edx
    b2ea:	48 89 ce             	mov    %rcx,%rsi
    b2ed:	48 89 c7             	mov    %rax,%rdi
    b2f0:	e8 d1 02 00 00       	call   b5c6 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE8allocateEmPKv>
    b2f5:	90                   	nop
      { return __a.allocate(__n); }
    b2f6:	c9                   	leave
    b2f7:	c3                   	ret

000000000000b2f8 <_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2yy6parser17stack_symbol_typeEmEET_S6_T0_>:
        __uninit_default_n(_ForwardIterator __first, _Size __n)
    b2f8:	55                   	push   %rbp
    b2f9:	48 89 e5             	mov    %rsp,%rbp
    b2fc:	53                   	push   %rbx
    b2fd:	48 83 ec 28          	sub    $0x28,%rsp
    b301:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    b305:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
	  _ForwardIterator __cur = __first;
    b309:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b30d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	      for (; __n > 0; --__n, (void) ++__cur)
    b311:	eb 1e                	jmp    b331 <_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2yy6parser17stack_symbol_typeEmEET_S6_T0_+0x39>
		std::_Construct(std::__addressof(*__cur));
    b313:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b317:	48 89 c7             	mov    %rax,%rdi
    b31a:	e8 ef fd ff ff       	call   b10e <_ZSt11__addressofIN2yy6parser17stack_symbol_typeEEPT_RS3_>
    b31f:	48 89 c7             	mov    %rax,%rdi
    b322:	e8 0a 01 00 00       	call   b431 <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJEEvPT_DpOT0_>
	      for (; __n > 0; --__n, (void) ++__cur)
    b327:	48 83 6d d0 01       	subq   $0x1,-0x30(%rbp)
    b32c:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
    b331:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    b336:	75 db                	jne    b313 <_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2yy6parser17stack_symbol_typeEmEET_S6_T0_+0x1b>
	      return __cur;
    b338:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b33c:	eb 33                	jmp    b371 <_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2yy6parser17stack_symbol_typeEmEET_S6_T0_+0x79>
	  __catch(...)
    b33e:	48 89 c7             	mov    %rax,%rdi
    b341:	e8 4a 8d ff ff       	call   4090 <__cxa_begin_catch@plt>
	      std::_Destroy(__first, __cur);
    b346:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b34a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b34e:	48 89 d6             	mov    %rdx,%rsi
    b351:	48 89 c7             	mov    %rax,%rdi
    b354:	e8 66 f5 ff ff       	call   a8bf <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_>
	      __throw_exception_again;
    b359:	e8 d2 8e ff ff       	call   4230 <__cxa_rethrow@plt>
	  __catch(...)
    b35e:	48 89 c3             	mov    %rax,%rbx
    b361:	e8 3a 8f ff ff       	call   42a0 <__cxa_end_catch@plt>
    b366:	48 89 d8             	mov    %rbx,%rax
    b369:	48 89 c7             	mov    %rax,%rdi
    b36c:	e8 6f 8f ff ff       	call   42e0 <_Unwind_Resume@plt>
	}
    b371:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b375:	c9                   	leave
    b376:	c3                   	ret
    b377:	90                   	nop

000000000000b378 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE10deallocateEPS2_m>:
      deallocate(_Tp* __p, size_type __n __attribute__ ((__unused__)))
    b378:	55                   	push   %rbp
    b379:	48 89 e5             	mov    %rsp,%rbp
    b37c:	48 83 ec 20          	sub    $0x20,%rsp
    b380:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b384:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b388:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
    b38c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b390:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    b397:	00 
    b398:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b39c:	48 89 d6             	mov    %rdx,%rsi
    b39f:	48 89 c7             	mov    %rax,%rdi
    b3a2:	e8 b9 8d ff ff       	call   4160 <_ZdlPvm@plt>
      }
    b3a7:	c9                   	leave
    b3a8:	c3                   	ret
    b3a9:	90                   	nop

000000000000b3aa <_ZNKSt12_Vector_baseIN2yy6parser17stack_symbol_typeESaIS2_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
    b3aa:	55                   	push   %rbp
    b3ab:	48 89 e5             	mov    %rsp,%rbp
    b3ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
    b3b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b3b6:	5d                   	pop    %rbp
    b3b7:	c3                   	ret

000000000000b3b8 <_ZSt32__make_move_if_noexcept_iteratorIN2yy6parser17stack_symbol_typeESt13move_iteratorIPS2_EET0_PT_>:
  // returning a constant iterator when we don't want to move.
  template<typename _Tp, typename _ReturnType
    = __conditional_t<__move_if_noexcept_cond<_Tp>::value,
		      const _Tp*, move_iterator<_Tp*>>>
    inline _GLIBCXX17_CONSTEXPR _ReturnType
    __make_move_if_noexcept_iterator(_Tp* __i)
    b3b8:	55                   	push   %rbp
    b3b9:	48 89 e5             	mov    %rsp,%rbp
    b3bc:	48 83 ec 20          	sub    $0x20,%rsp
    b3c0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    { return _ReturnType(__i); }
    b3c4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b3c8:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
    b3cc:	48 89 d6             	mov    %rdx,%rsi
    b3cf:	48 89 c7             	mov    %rax,%rdi
    b3d2:	e8 99 00 00 00       	call   b470 <_ZNSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEC1ES3_>
    b3d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b3db:	c9                   	leave
    b3dc:	c3                   	ret

000000000000b3dd <_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_S3_ET0_T_S7_S6_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
    b3dd:	55                   	push   %rbp
    b3de:	48 89 e5             	mov    %rsp,%rbp
    b3e1:	48 83 ec 20          	sub    $0x20,%rsp
    b3e5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b3e9:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b3ed:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    b3f1:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
      if (std::is_constant_evaluated())
    b3f5:	e8 ca 93 ff ff       	call   47c4 <_ZSt21is_constant_evaluatedv>
    b3fa:	84 c0                	test   %al,%al
    b3fc:	74 19                	je     b417 <_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_S3_ET0_T_S7_S6_RSaIT1_E+0x3a>
	return std::__do_uninit_copy(__first, __last, __result);
    b3fe:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b402:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b406:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b40a:	48 89 ce             	mov    %rcx,%rsi
    b40d:	48 89 c7             	mov    %rax,%rdi
    b410:	e8 cd 00 00 00       	call   b4e2 <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_>
    b415:	eb 18                	jmp    b42f <_ZSt22__uninitialized_copy_aISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_S3_ET0_T_S7_S6_RSaIT1_E+0x52>
      return std::uninitialized_copy(__first, __last, __result);
    b417:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b41b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b41f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b423:	48 89 ce             	mov    %rcx,%rsi
    b426:	48 89 c7             	mov    %rax,%rdi
    b429:	e8 63 01 00 00       	call   b591 <_ZSt18uninitialized_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_>
    b42e:	90                   	nop
    }
    b42f:	c9                   	leave
    b430:	c3                   	ret

000000000000b431 <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJEEvPT_DpOT0_>:
    _Construct(_Tp* __p, _Args&&... __args)
    b431:	55                   	push   %rbp
    b432:	48 89 e5             	mov    %rsp,%rbp
    b435:	48 83 ec 10          	sub    $0x10,%rsp
    b439:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      if (std::__is_constant_evaluated())
    b43d:	e8 77 93 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    b442:	84 c0                	test   %al,%al
    b444:	74 0e                	je     b454 <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJEEvPT_DpOT0_+0x23>
	  std::construct_at(__p, std::forward<_Args>(__args)...);
    b446:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b44a:	48 89 c7             	mov    %rax,%rdi
    b44d:	e8 d5 01 00 00       	call   b627 <_ZSt12construct_atIN2yy6parser17stack_symbol_typeEJEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS4_DpOS5_>
	  return;
    b452:	eb 19                	jmp    b46d <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJEEvPT_DpOT0_+0x3c>
      ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
    b454:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b458:	48 89 c6             	mov    %rax,%rsi
    b45b:	bf 08 00 00 00       	mov    $0x8,%edi
    b460:	e8 6a 93 ff ff       	call   47cf <_ZnwmPv>
    b465:	48 89 c7             	mov    %rax,%rdi
    b468:	e8 b7 d8 ff ff       	call   8d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>
    }
    b46d:	c9                   	leave
    b46e:	c3                   	ret
    b46f:	90                   	nop

000000000000b470 <_ZNSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEC1ES3_>:
      move_iterator(iterator_type __i)
    b470:	55                   	push   %rbp
    b471:	48 89 e5             	mov    %rsp,%rbp
    b474:	48 83 ec 10          	sub    $0x10,%rsp
    b478:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b47c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(std::move(__i)) { }
    b480:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
    b484:	48 89 c7             	mov    %rax,%rdi
    b487:	e8 cd 01 00 00       	call   b659 <_ZSt4moveIRPN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS6_>
    b48c:	48 8b 10             	mov    (%rax),%rdx
    b48f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b493:	48 89 10             	mov    %rdx,(%rax)
    b496:	90                   	nop
    b497:	c9                   	leave
    b498:	c3                   	ret

000000000000b499 <_ZSteqIPN2yy6parser17stack_symbol_typeEEbRKSt13move_iteratorIT_ES8_>:
    operator==(const move_iterator<_Iterator>& __x,
    b499:	55                   	push   %rbp
    b49a:	48 89 e5             	mov    %rsp,%rbp
    b49d:	53                   	push   %rbx
    b49e:	48 83 ec 18          	sub    $0x18,%rsp
    b4a2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b4a6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    { return __x.base() == __y.base(); }
    b4aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b4ae:	48 89 c7             	mov    %rax,%rdi
    b4b1:	e8 1e 00 00 00       	call   b4d4 <_ZNKRSt13move_iteratorIPN2yy6parser17stack_symbol_typeEE4baseEv>
    b4b6:	48 8b 18             	mov    (%rax),%rbx
    b4b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b4bd:	48 89 c7             	mov    %rax,%rdi
    b4c0:	e8 0f 00 00 00       	call   b4d4 <_ZNKRSt13move_iteratorIPN2yy6parser17stack_symbol_typeEE4baseEv>
    b4c5:	48 8b 00             	mov    (%rax),%rax
    b4c8:	48 39 c3             	cmp    %rax,%rbx
    b4cb:	0f 94 c0             	sete   %al
    b4ce:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b4d2:	c9                   	leave
    b4d3:	c3                   	ret

000000000000b4d4 <_ZNKRSt13move_iteratorIPN2yy6parser17stack_symbol_typeEE4baseEv>:
      base() const & noexcept
    b4d4:	55                   	push   %rbp
    b4d5:	48 89 e5             	mov    %rsp,%rbp
    b4d8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
    b4dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b4e0:	5d                   	pop    %rbp
    b4e1:	c3                   	ret

000000000000b4e2 <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_>:
    __do_uninit_copy(_InputIterator __first, _InputIterator __last,
    b4e2:	55                   	push   %rbp
    b4e3:	48 89 e5             	mov    %rsp,%rbp
    b4e6:	53                   	push   %rbx
    b4e7:	48 83 ec 38          	sub    $0x38,%rsp
    b4eb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    b4ef:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    b4f3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      _ForwardIterator __cur = __result;
    b4f7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    b4fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	  for (; __first != __last; ++__first, (void)++__cur)
    b4ff:	eb 37                	jmp    b538 <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_+0x56>
	    std::_Construct(std::__addressof(*__cur), *__first);
    b501:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    b505:	48 89 c7             	mov    %rax,%rdi
    b508:	e8 7b 01 00 00       	call   b688 <_ZNKSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEdeEv>
    b50d:	48 89 c3             	mov    %rax,%rbx
    b510:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b514:	48 89 c7             	mov    %rax,%rdi
    b517:	e8 f2 fb ff ff       	call   b10e <_ZSt11__addressofIN2yy6parser17stack_symbol_typeEEPT_RS3_>
    b51c:	48 89 de             	mov    %rbx,%rsi
    b51f:	48 89 c7             	mov    %rax,%rdi
    b522:	e8 85 01 00 00       	call   b6ac <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJS2_EEvPT_DpOT0_>
	  for (; __first != __last; ++__first, (void)++__cur)
    b527:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    b52b:	48 89 c7             	mov    %rax,%rdi
    b52e:	e8 35 01 00 00       	call   b668 <_ZNSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEppEv>
    b533:	48 83 45 e8 08       	addq   $0x8,-0x18(%rbp)
    b538:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
    b53c:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
    b540:	48 89 d6             	mov    %rdx,%rsi
    b543:	48 89 c7             	mov    %rax,%rdi
    b546:	e8 4e ff ff ff       	call   b499 <_ZSteqIPN2yy6parser17stack_symbol_typeEEbRKSt13move_iteratorIT_ES8_>
    b54b:	83 f0 01             	xor    $0x1,%eax
    b54e:	84 c0                	test   %al,%al
    b550:	75 af                	jne    b501 <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_+0x1f>
	  return __cur;
    b552:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b556:	eb 33                	jmp    b58b <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_+0xa9>
      __catch(...)
    b558:	48 89 c7             	mov    %rax,%rdi
    b55b:	e8 30 8b ff ff       	call   4090 <__cxa_begin_catch@plt>
	  std::_Destroy(__result, __cur);
    b560:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b564:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    b568:	48 89 d6             	mov    %rdx,%rsi
    b56b:	48 89 c7             	mov    %rax,%rdi
    b56e:	e8 4c f3 ff ff       	call   a8bf <_ZSt8_DestroyIPN2yy6parser17stack_symbol_typeEEvT_S4_>
	  __throw_exception_again;
    b573:	e8 b8 8c ff ff       	call   4230 <__cxa_rethrow@plt>
      __catch(...)
    b578:	48 89 c3             	mov    %rax,%rbx
    b57b:	e8 20 8d ff ff       	call   42a0 <__cxa_end_catch@plt>
    b580:	48 89 d8             	mov    %rbx,%rax
    b583:	48 89 c7             	mov    %rax,%rdi
    b586:	e8 55 8d ff ff       	call   42e0 <_Unwind_Resume@plt>
    }
    b58b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b58f:	c9                   	leave
    b590:	c3                   	ret

000000000000b591 <_ZSt18uninitialized_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
    b591:	55                   	push   %rbp
    b592:	48 89 e5             	mov    %rsp,%rbp
    b595:	48 83 ec 30          	sub    $0x30,%rsp
    b599:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b59d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    b5a1:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __can_memmove = __is_trivial(_ValueType1);
    b5a5:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
      const bool __assignable
    b5a9:	c6 45 fe 00          	movb   $0x0,-0x2(%rbp)
	__uninit_copy(__first, __last, __result);
    b5ad:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    b5b1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    b5b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b5b9:	48 89 ce             	mov    %rcx,%rsi
    b5bc:	48 89 c7             	mov    %rax,%rdi
    b5bf:	e8 53 01 00 00       	call   b717 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES6_EET0_T_S9_S8_>
    }
    b5c4:	c9                   	leave
    b5c5:	c3                   	ret

000000000000b5c6 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
    b5c6:	55                   	push   %rbp
    b5c7:	48 89 e5             	mov    %rsp,%rbp
    b5ca:	48 83 ec 20          	sub    $0x20,%rsp
    b5ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b5d2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b5d6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__builtin_expect(__n > this->_M_max_size(), false))
    b5da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b5de:	48 89 c7             	mov    %rax,%rdi
    b5e1:	e8 5e 01 00 00       	call   b744 <_ZNKSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE11_M_max_sizeEv>
    b5e6:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    b5ea:	0f 92 c0             	setb   %al
    b5ed:	0f b6 c0             	movzbl %al,%eax
    b5f0:	48 85 c0             	test   %rax,%rax
    b5f3:	0f 95 c0             	setne  %al
    b5f6:	84 c0                	test   %al,%al
    b5f8:	74 1a                	je     b614 <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE8allocateEmPKv+0x4e>
	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
    b5fa:	48 b8 ff ff ff ff ff 	movabs $0x1fffffffffffffff,%rax
    b601:	ff ff 1f 
    b604:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
    b608:	73 05                	jae    b60f <_ZNSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE8allocateEmPKv+0x49>
	      std::__throw_bad_array_new_length();
    b60a:	e8 d1 8a ff ff       	call   40e0 <_ZSt28__throw_bad_array_new_lengthv@plt>
	    std::__throw_bad_alloc();
    b60f:	e8 6c 8a ff ff       	call   4080 <_ZSt17__throw_bad_allocv@plt>
	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
    b614:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b618:	48 c1 e0 03          	shl    $0x3,%rax
    b61c:	48 89 c7             	mov    %rax,%rdi
    b61f:	e8 2c 8b ff ff       	call   4150 <_Znwm@plt>
    b624:	90                   	nop
      }
    b625:	c9                   	leave
    b626:	c3                   	ret

000000000000b627 <_ZSt12construct_atIN2yy6parser17stack_symbol_typeEJEEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS4_DpOS5_>:
    construct_at(_Tp* __location, _Args&&... __args)
    b627:	55                   	push   %rbp
    b628:	48 89 e5             	mov    %rsp,%rbp
    b62b:	53                   	push   %rbx
    b62c:	48 83 ec 18          	sub    $0x18,%rsp
    b630:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    { return ::new((void*)__location) _Tp(std::forward<_Args>(__args)...); }
    b634:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b638:	48 89 c6             	mov    %rax,%rsi
    b63b:	bf 08 00 00 00       	mov    $0x8,%edi
    b640:	e8 8a 91 ff ff       	call   47cf <_ZnwmPv>
    b645:	48 89 c3             	mov    %rax,%rbx
    b648:	48 89 df             	mov    %rbx,%rdi
    b64b:	e8 d4 d6 ff ff       	call   8d24 <_ZN2yy6parser17stack_symbol_typeC1Ev>
    b650:	48 89 d8             	mov    %rbx,%rax
    b653:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b657:	c9                   	leave
    b658:	c3                   	ret

000000000000b659 <_ZSt4moveIRPN2yy6parser17stack_symbol_typeEEONSt16remove_referenceIT_E4typeEOS6_>:
    move(_Tp&& __t) noexcept
    b659:	55                   	push   %rbp
    b65a:	48 89 e5             	mov    %rsp,%rbp
    b65d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
    b661:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b665:	5d                   	pop    %rbp
    b666:	c3                   	ret
    b667:	90                   	nop

000000000000b668 <_ZNSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEppEv>:
      operator++()
    b668:	55                   	push   %rbp
    b669:	48 89 e5             	mov    %rsp,%rbp
    b66c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
    b670:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b674:	48 8b 00             	mov    (%rax),%rax
    b677:	48 8d 50 08          	lea    0x8(%rax),%rdx
    b67b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b67f:	48 89 10             	mov    %rdx,(%rax)
	return *this;
    b682:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
    b686:	5d                   	pop    %rbp
    b687:	c3                   	ret

000000000000b688 <_ZNKSt13move_iteratorIPN2yy6parser17stack_symbol_typeEEdeEv>:
      operator*() const
    b688:	55                   	push   %rbp
    b689:	48 89 e5             	mov    %rsp,%rbp
    b68c:	48 83 ec 10          	sub    $0x10,%rsp
    b690:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return ranges::iter_move(_M_current); }
    b694:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b698:	48 89 c6             	mov    %rax,%rsi
    b69b:	48 8d 05 47 14 00 00 	lea    0x1447(%rip),%rax        # cae9 <_ZNSt6ranges6__cust9iter_moveE>
    b6a2:	48 89 c7             	mov    %rax,%rdi
    b6a5:	e8 ae 00 00 00       	call   b758 <_ZNKSt6ranges12__cust_imove6_IMoveclIRKPN2yy6parser17stack_symbol_typeEEENS1_8__resultIT_E4typeEOSA_>
    b6aa:	c9                   	leave
    b6ab:	c3                   	ret

000000000000b6ac <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJS2_EEvPT_DpOT0_>:
    _Construct(_Tp* __p, _Args&&... __args)
    b6ac:	55                   	push   %rbp
    b6ad:	48 89 e5             	mov    %rsp,%rbp
    b6b0:	53                   	push   %rbx
    b6b1:	48 83 ec 18          	sub    $0x18,%rsp
    b6b5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b6b9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      if (std::__is_constant_evaluated())
    b6bd:	e8 f7 90 ff ff       	call   47b9 <_ZSt23__is_constant_evaluatedv>
    b6c2:	84 c0                	test   %al,%al
    b6c4:	74 20                	je     b6e6 <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJS2_EEvPT_DpOT0_+0x3a>
	  std::construct_at(__p, std::forward<_Args>(__args)...);
    b6c6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b6ca:	48 89 c7             	mov    %rax,%rdi
    b6cd:	e8 18 f5 ff ff       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    b6d2:	48 89 c2             	mov    %rax,%rdx
    b6d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b6d9:	48 89 d6             	mov    %rdx,%rsi
    b6dc:	48 89 c7             	mov    %rax,%rdi
    b6df:	e8 53 fa ff ff       	call   b137 <_ZSt12construct_atIN2yy6parser17stack_symbol_typeEJS2_EEDTgsnwcvPvLi0E_T_pispcl7declvalIT0_EEEEPS4_DpOS5_>
	  return;
    b6e4:	eb 2b                	jmp    b711 <_ZSt10_ConstructIN2yy6parser17stack_symbol_typeEJS2_EEvPT_DpOT0_+0x65>
      ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
    b6e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b6ea:	48 89 c6             	mov    %rax,%rsi
    b6ed:	bf 08 00 00 00       	mov    $0x8,%edi
    b6f2:	e8 d8 90 ff ff       	call   47cf <_ZnwmPv>
    b6f7:	48 89 c3             	mov    %rax,%rbx
    b6fa:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b6fe:	48 89 c7             	mov    %rax,%rdi
    b701:	e8 e4 f4 ff ff       	call   abea <_ZSt7forwardIN2yy6parser17stack_symbol_typeEEOT_RNSt16remove_referenceIS3_E4typeE>
    b706:	48 89 c6             	mov    %rax,%rsi
    b709:	48 89 df             	mov    %rbx,%rdi
    b70c:	e8 2f d6 ff ff       	call   8d40 <_ZN2yy6parser17stack_symbol_typeC1EOS1_>
    }
    b711:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    b715:	c9                   	leave
    b716:	c3                   	ret

000000000000b717 <_ZNSt20__uninitialized_copyILb0EE13__uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES6_EET0_T_S9_S8_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
    b717:	55                   	push   %rbp
    b718:	48 89 e5             	mov    %rsp,%rbp
    b71b:	48 83 ec 20          	sub    $0x20,%rsp
    b71f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b723:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b727:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	{ return std::__do_uninit_copy(__first, __last, __result); }
    b72b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    b72f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b733:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b737:	48 89 ce             	mov    %rcx,%rsi
    b73a:	48 89 c7             	mov    %rax,%rdi
    b73d:	e8 a0 fd ff ff       	call   b4e2 <_ZSt16__do_uninit_copyISt13move_iteratorIPN2yy6parser17stack_symbol_typeEES4_ET0_T_S7_S6_>
    b742:	c9                   	leave
    b743:	c3                   	ret

000000000000b744 <_ZNKSt15__new_allocatorIN2yy6parser17stack_symbol_typeEE11_M_max_sizeEv>:
      _M_max_size() const _GLIBCXX_USE_NOEXCEPT
    b744:	55                   	push   %rbp
    b745:	48 89 e5             	mov    %rsp,%rbp
    b748:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
    b74c:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
    b753:	ff ff 0f 
      }
    b756:	5d                   	pop    %rbp
    b757:	c3                   	ret

000000000000b758 <_ZNKSt6ranges12__cust_imove6_IMoveclIRKPN2yy6parser17stack_symbol_typeEEENS1_8__resultIT_E4typeEOSA_>:
	  using __type = typename __result<_Tp>::type;

	template<std::__detail::__dereferenceable _Tp>
	  [[nodiscard]]
	  constexpr __type<_Tp>
	  operator()(_Tp&& __e) const
    b758:	55                   	push   %rbp
    b759:	48 89 e5             	mov    %rsp,%rbp
    b75c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b760:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  noexcept(_S_noexcept<_Tp>())
	  {
	    if constexpr (__adl_imove<_Tp>)
	      return iter_move(static_cast<_Tp&&>(__e));
	    else if constexpr (is_lvalue_reference_v<iter_reference_t<_Tp>>)
	      return static_cast<__type<_Tp>>(*__e);
    b764:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    b768:	48 8b 00             	mov    (%rax),%rax
	    else
	      return *__e;
	  }
    b76b:	5d                   	pop    %rbp
    b76c:	c3                   	ret

Disassembly of section .fini:

000000000000b770 <_fini>:
    b770:	48 83 ec 08          	sub    $0x8,%rsp
    b774:	48 83 c4 08          	add    $0x8,%rsp
    b778:	c3                   	ret
