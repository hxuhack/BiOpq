	.text
	.file	"test.c"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movl	$5, %eax
	movl	%eax, %ecx
	movl	%edi, -44(%rbp)
	movslq	-44(%rbp), %rax
	cqto
	idivq	%rcx
	movq	$0, -88(%rbp)
	movq	$1, -80(%rbp)
	movq	$2, -72(%rbp)
	movq	$3, -64(%rbp)
	movq	$4, -56(%rbp)
	movq	$0, -128(%rbp)
	movq	$1, -120(%rbp)
	movq	$2, -112(%rbp)
	movq	$3, -104(%rbp)
	movq	$4, -96(%rbp)
	movq	-88(%rbp,%rdx,8), %rcx
	cmpq	$5, -128(%rbp,%rcx,8)
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	je	.LBB0_29
.LBB0_1:                                # %originalBB
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	movq	%rcx, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r9
	addq	$-16, %r9
	movq	%r9, %rsp
	movq	%rsp, %r10
	addq	$-16, %r10
	movq	%r10, %rsp
	movq	%rsp, %r11
	movq	%r11, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-256, %r15
	movq	%r15, %rsp
	movl	$0, -16(%rax)
	movl	-132(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, -16(%rcx)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rdx)
	movw	$29285, -12(%r11)       # imm = 0x7265
	movl	$1752197475, -16(%r11)  # imm = 0x68706963
	movl	$.L.str, %r13d
	movl	%r13d, %ecx
	xorl	%r13d, %r13d
	movb	%r13b, %al
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movb	%al, -153(%rbp)         # 1-byte Spill
	movq	%r15, -168(%rbp)        # 8-byte Spill
	movq	%r14, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, -216(%rbp)        # 8-byte Spill
	callq	printf
	movl	$.L.str1, %r12d
	movl	%r12d, %edi
	movl	$10, %esi
	movb	-153(%rbp), %cl         # 1-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movb	%cl, %al
	callq	printf
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movl	$0, -16(%rdx)
	movq	%rsp, %rdi
	movq	%rdi, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	%esi, -16(%rdi)
	movslq	-16(%rdi), %rdi
	movabsq	$7378697629483820647, %r8 # imm = 0x6666666666666667
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movq	%rdi, %rax
	imulq	%r8
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rdi
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rdi,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_29
# BB#2:                                 # %originalBBpart2
	jmp	.LBB0_3
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -16(%rax)
	movslq	-16(%rax), %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rax, -232(%rbp)        # 8-byte Spill
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_30
.LBB0_4:                                # %originalBB40
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	subl	$10, %ecx
	setl	%dl
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -16(%rsi)
	movslq	-16(%rsi), %rsi
	movabsq	$7378697629483820647, %rdi # imm = 0x6666666666666667
	movq	%rsi, %rax
	movb	%dl, -233(%rbp)         # 1-byte Spill
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rsi
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rsi,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	je	.LBB0_30
# BB#5:                                 # %originalBBpart242
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	-233(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_10
.LBB0_6:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -16(%rax)
	movslq	-16(%rax), %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rax, -248(%rbp)        # 8-byte Spill
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_31
.LBB0_7:                                # %originalBB44
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movb	$1, (%rdx,%rcx)
	movq	%rsp, %rcx
	movq	%rcx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	-132(%rbp), %edi        # 4-byte Reload
	movl	%edi, -16(%rcx)
	movslq	-16(%rcx), %rcx
	movabsq	$7378697629483820647, %rsi # imm = 0x6666666666666667
	movq	%rcx, %rax
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_31
# BB#8:                                 # %originalBBpart246
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_3
.LBB0_10:                               # %for.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$6, (%rax)
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	callq	RC4_key
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$10, (%rax)
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	RC4
	movabsq	$.L.str2, %rdi
	movb	$0, %al
	callq	printf
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movl	$0, (%rcx)
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB0_11:                               # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpl	$10, (%rax)
	jge	.LBB0_14
# BB#12:                                # %for.body8
                                        #   in Loop: Header=BB0_11 Depth=1
	movabsq	$.L.str3, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rcx), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -256(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc12
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_11
.LBB0_14:                               # %for.end14
	movabsq	$.L.str4, %rdi
	movb	$0, %al
	callq	printf
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	$0, (%rdi)
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_15:                               # %for.cond16
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpl	$6, (%rax)
	jge	.LBB0_22
# BB#16:                                # %for.body19
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -16(%rax)
	movslq	-16(%rax), %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rax, -272(%rbp)        # 8-byte Spill
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_32
.LBB0_17:                               # %originalBB48
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rcx), %esi
	movl	$.L.str3, %edi
                                        # kill: RDI<def> EDI<kill>
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movb	%r9b, %al
	callq	printf
	movq	%rsp, %rcx
	movq	%rcx, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	%esi, -16(%rcx)
	movslq	-16(%rcx), %rcx
	movabsq	$7378697629483820647, %rdx # imm = 0x6666666666666667
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_32
# BB#18:                                # %originalBBpart250
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %for.inc24
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -16(%rax)
	movslq	-16(%rax), %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rax, -288(%rbp)        # 8-byte Spill
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-288(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_33
.LBB0_20:                               # %originalBB52
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	incl	%ecx
	movl	%ecx, (%rax)
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -16(%rdx)
	movslq	-16(%rdx), %rdx
	movabsq	$7378697629483820647, %rsi # imm = 0x6666666666666667
	movq	%rdx, %rax
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-296(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rsi
	addq	$-48, %rsi
	movq	%rsi, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rsi)
	movq	$1, 8(%rsi)
	movq	$2, 16(%rsi)
	movq	$3, 24(%rsi)
	movq	$4, 32(%rsi)
	movq	(%rax,%rdx,8), %rax
	cmpq	$5, (%rsi,%rax,8)
	je	.LBB0_33
# BB#21:                                # %originalBBpart258
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_15
.LBB0_22:                               # %for.end26
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -16(%rax)
	movslq	-16(%rax), %rax
	movabsq	$7378697629483820647, %rcx # imm = 0x6666666666666667
	movq	%rax, -304(%rbp)        # 8-byte Spill
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-304(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rdx
	addq	$-48, %rdx
	movq	%rdx, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rdx)
	movq	$1, 8(%rdx)
	movq	$2, 16(%rdx)
	movq	$3, 24(%rdx)
	movq	$4, 32(%rdx)
	movq	(%rax,%rcx,8), %rax
	cmpq	$5, (%rdx,%rax,8)
	je	.LBB0_34
.LBB0_23:                               # %originalBB60
	movl	$.L.str5, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	printf
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	$0, (%rdi)
	movq	%rsp, %rdx
	movq	%rdx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -16(%rdx)
	movslq	-16(%rdx), %rdx
	movabsq	$7378697629483820647, %rsi # imm = 0x6666666666666667
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	movq	-320(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	movq	%rsp, %rax
	addq	$-48, %rax
	movq	%rax, %rsp
	movq	%rsp, %rsi
	addq	$-48, %rsi
	movq	%rsi, %rsp
	movq	$0, (%rax)
	movq	$1, 8(%rax)
	movq	$2, 16(%rax)
	movq	$3, 24(%rax)
	movq	$4, 32(%rax)
	movq	$0, (%rsi)
	movq	$1, 8(%rsi)
	movq	$2, 16(%rsi)
	movq	$3, 24(%rsi)
	movq	$4, 32(%rsi)
	movq	(%rax,%rdx,8), %rax
	cmpq	$5, (%rsi,%rax,8)
	je	.LBB0_34
# BB#24:                                # %originalBBpart262
	jmp	.LBB0_25
.LBB0_25:                               # %for.cond28
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpl	$10, (%rax)
	jge	.LBB0_28
# BB#26:                                # %for.body31
                                        #   in Loop: Header=BB0_25 Depth=1
	movabsq	$.L.str3, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rcx), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -324(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc36
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_25
.LBB0_28:                               # %for.end38
	movabsq	$.L.str6, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_29:                               # %originalBBalteredBB
	movabsq	$.L.str, %rdi
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rdx
	addq	$-16, %rdx
	movq	%rdx, %rsp
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movq	%rsp, %r8
	addq	$-16, %r8
	movq	%r8, %rsp
	movl	$0, (%rax)
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	%r9d, (%rcx)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rdx)
	movl	.Lmain.key, %r10d
	movl	%r10d, (%r8)
	movw	.Lmain.key+4, %r11w
	movw	%r11w, 4(%r8)
	movb	$0, %al
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	printf
	movabsq	$.L.str1, %rdi
	movl	$10, %esi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movl	$0, (%rcx)
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB0_1
.LBB0_30:                               # %originalBB40alteredBB
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_4
.LBB0_31:                               # %originalBB44alteredBB
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movb	$1, (%rdx,%rcx)
	jmp	.LBB0_7
.LBB0_32:                               # %originalBB48alteredBB
                                        #   in Loop: Header=BB0_15 Depth=1
	movabsq	$.L.str3, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rcx), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB0_17
.LBB0_33:                               # %originalBB52alteredBB
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_20
.LBB0_34:                               # %originalBB60alteredBB
	movabsq	$.L.str5, %rdi
	movb	$0, %al
	callq	printf
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	$0, (%rdi)
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB0_23
.Ltmp8:
	.size	main, .Ltmp8-main
	.cfi_endproc

	.type	.Lmain.key,@object      # @main.key
	.section	.rodata,"a",@progbits
.Lmain.key:
	.ascii	"cipher"
	.size	.Lmain.key, 6

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"------------------------------\n----------RC4 CIPHER----------\n------------------------------\n"
	.size	.L.str, 94

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"Please enter the plaintext(%d characters): "
	.size	.L.str1, 44

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"The plaintext is: "
	.size	.L.str2, 19

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"%x "
	.size	.L.str3, 4

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"\nThe key is: "
	.size	.L.str4, 14

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"\nThe ciphertext is: "
	.size	.L.str5, 21

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"\n\n"
	.size	.L.str6, 3

	.type	.Lfile.name,@object     # @file.name
.Lfile.name:
	.asciz	"tmp.covpro"
	.size	.Lfile.name, 11

	.type	.Lattribute_rw,@object  # @attribute_rw
.Lattribute_rw:
	.asciz	"w+"
	.size	.Lattribute_rw, 3

	.type	.Lattribute_r,@object   # @attribute_r
.Lattribute_r:
	.asciz	"r"
	.size	.Lattribute_r, 2

	.type	".Lattribute_%d",@object # @"attribute_%d"
".Lattribute_%d":
	.asciz	"%d"
	.size	".Lattribute_%d", 3


	.ident	"Obfuscator-LLVM clang version 3.6.1 (tags/RELEASE_361/final) (based on Obfuscator-LLVM 3.6.1)"
	.section	".note.GNU-stack","",@progbits
