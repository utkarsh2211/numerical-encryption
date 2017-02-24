	.Ltext0:
             		.section	.rodata
             	.LC0:
0000 456E7465 		.string	"Enter String"
     72205374 
     72696E67 
     00
             	.LC1:
000d 456E6372 		.string	"Encrypted String"
     79707465 
     64205374 
     72696E67 
     00
             		.text
             		.globl	main
             	main:
             	.LFB0:
             		.cfi_startproc
0000 55       		pushq	%rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0001 4889E5   		movq	%rsp, %rbp
             		.cfi_def_cfa_register 6
0004 4883EC40 		subq	$64, %rsp
0008 64488B04 		movq	%fs:40, %rax
     25280000 
     00
0011 488945F8 		movq	%rax, -8(%rbp)
0015 31C0     		xorl	%eax, %eax
0017 BF000000 		movl	$.LC0, %edi
     00
001c E8000000 		call	puts
     00
0021 488B1500 		movq	stdin(%rip), %rdx
     000000
0028 488D45D0 		leaq	-48(%rbp), %rax
002c BE200000 		movl	$32, %esi
     00
0031 4889C7   		movq	%rax, %rdi
0034 E8000000 		call	fgets
     00
0039 BF000000 		movl	$.LC1, %edi
     00
003e E8000000 		call	puts
     00
0043 C745CC00 		movl	$0, -52(%rbp)
     000000
004a E9290100 		jmp	.L2
     00
             	.L13:
004f 8B45CC   		movl	-52(%rbp), %eax
0052 4898     		cltq
0054 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0059 3C30     		cmpb	$48, %al
005b 750F     		jne	.L3
005d 8B45CC   		movl	-52(%rbp), %eax
0060 4898     		cltq
0062 C64405D0 		movb	$52, -48(%rbp,%rax)
     34
0067 E9F40000 		jmp	.L4
     00
             	.L3:
006c 8B45CC   		movl	-52(%rbp), %eax
006f 4898     		cltq
0071 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0076 3C31     		cmpb	$49, %al
0078 750F     		jne	.L5
007a 8B45CC   		movl	-52(%rbp), %eax
007d 4898     		cltq
007f C64405D0 		movb	$54, -48(%rbp,%rax)
     36
0084 E9D70000 		jmp	.L4
     00
             	.L5:
0089 8B45CC   		movl	-52(%rbp), %eax
008c 4898     		cltq
008e 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0093 3C32     		cmpb	$50, %al
0095 750F     		jne	.L6
0097 8B45CC   		movl	-52(%rbp), %eax
009a 4898     		cltq
009c C64405D0 		movb	$57, -48(%rbp,%rax)
     39
00a1 E9BA0000 		jmp	.L4
     00
             	.L6:
00a6 8B45CC   		movl	-52(%rbp), %eax
00a9 4898     		cltq
00ab 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
00b0 3C33     		cmpb	$51, %al
00b2 750F     		jne	.L7
00b4 8B45CC   		movl	-52(%rbp), %eax
00b7 4898     		cltq
00b9 C64405D0 		movb	$53, -48(%rbp,%rax)
     35
00be E99D0000 		jmp	.L4
     00
             	.L7:
00c3 8B45CC   		movl	-52(%rbp), %eax
00c6 4898     		cltq
00c8 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
00cd 3C34     		cmpb	$52, %al
00cf 750F     		jne	.L8
00d1 8B45CC   		movl	-52(%rbp), %eax
00d4 4898     		cltq
00d6 C64405D0 		movb	$48, -48(%rbp,%rax)
     30
00db E9800000 		jmp	.L4
     00
             	.L8:
00e0 8B45CC   		movl	-52(%rbp), %eax
00e3 4898     		cltq
00e5 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
00ea 3C35     		cmpb	$53, %al
00ec 750C     		jne	.L9
00ee 8B45CC   		movl	-52(%rbp), %eax
00f1 4898     		cltq
00f3 C64405D0 		movb	$51, -48(%rbp,%rax)
     33
00f8 EB66     		jmp	.L4
             	.L9:
00fa 8B45CC   		movl	-52(%rbp), %eax
00fd 4898     		cltq
00ff 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0104 3C36     		cmpb	$54, %al
0106 750C     		jne	.L10
0108 8B45CC   		movl	-52(%rbp), %eax
010b 4898     		cltq
010d C64405D0 		movb	$49, -48(%rbp,%rax)
     31
0112 EB4C     		jmp	.L4
             	.L10:
0114 8B45CC   		movl	-52(%rbp), %eax
0117 4898     		cltq
0119 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
011e 3C37     		cmpb	$55, %al
0120 750C     		jne	.L11
0122 8B45CC   		movl	-52(%rbp), %eax
0125 4898     		cltq
0127 C64405D0 		movb	$56, -48(%rbp,%rax)
     38
012c EB32     		jmp	.L4
             	.L11:
012e 8B45CC   		movl	-52(%rbp), %eax
0131 4898     		cltq
0133 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0138 3C38     		cmpb	$56, %al
013a 750C     		jne	.L12
013c 8B45CC   		movl	-52(%rbp), %eax
013f 4898     		cltq
0141 C64405D0 		movb	$55, -48(%rbp,%rax)
     37
0146 EB18     		jmp	.L4
             	.L12:
0148 8B45CC   		movl	-52(%rbp), %eax
014b 4898     		cltq
014d 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0152 3C39     		cmpb	$57, %al
0154 750A     		jne	.L4
0156 8B45CC   		movl	-52(%rbp), %eax
0159 4898     		cltq
015b C64405D0 		movb	$50, -48(%rbp,%rax)
     32
             	.L4:
0174 8345CC01 		addl	$1, -52(%rbp)
0160 8B45CC   		movl	-52(%rbp), %eax
0163 4898     		cltq
0165 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
016a 0FBEC0   		movsbl	%al, %eax
016d 89C7     		movl	%eax, %edi
016f E8000000 		call	putchar
     00
             	.L2:
0178 8B45CC   		movl	-52(%rbp), %eax
017b 4898     		cltq
017d 0FB64405 		movzbl	-48(%rbp,%rax), %eax
     D0
0182 84C0     		testb	%al, %al
0184 0F85C5FE 		jne	.L13
     FFFF
018a B8000000 		movl	$0, %eax
     00
018f 488B4DF8 		movq	-8(%rbp), %rcx
0193 6448330C 		xorq	%fs:40, %rcx
     25280000 
     00
019c 7405     		je	.L15
019e E8000000 		call	__stack_chk_fail
     00
             	.L15:
01a3 C9       		leave
             		.cfi_def_cfa 7, 8
01a4 C3       		ret
             		.cfi_endproc
             	.LFE0:
             	.Letext0: