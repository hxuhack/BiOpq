	.text
	.file	"foo.c"
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
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)         # 4-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, -20(%rbp)
	jge	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	-24(%rbp), %edx         # 4-byte Reload
	movl	%edx, -16(%rax)
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rsp, %rsi
	movq	%rsi, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rsp
	movabsq	$8103787051271351668, %rdi # imm = 0x70766F632E706D74
	movq	%rdi, -16(%rax)
	movb	$0, -6(%rax)
	movw	$28530, -8(%rax)        # imm = 0x6F72
	movl	$.Lattribute_rw, %r8d
	movl	%r8d, %eax
	movl	$.Lattribute_r, %r8d
	movl	%r8d, %edi
	movl	$".Lattribute_%d", %r8d
	movl	%r8d, %r9d
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	fopen
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -16(%rcx)
	xorl	%edx, %edx
	movb	%dl, %r10b
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	-24(%rbp), %edx         # 4-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	%r10b, %al
	callq	fprintf
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fclose
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fopen
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -16(%rcx)
	movq	%rsp, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rsp
	movq	%rax, %rdi
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	fclose
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	cmpl	%r8d, (%rcx)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB0_7
.LBB0_3:                                # %originalBB
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	x, %esi
	movl	y, %ecx
	movl	%esi, %edx
	subl	$1, %edx
	imull	%edx, %esi
	andl	$1, %esi
	cmpl	$0, %esi
	sete	%r8b
	cmpl	$10, %ecx
	setl	%r9b
	orb	%r9b, %r8b
	testb	$1, %r8b
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jne	.LBB0_4
	jmp	.LBB0_7
.LBB0_4:                                # %originalBBpart2
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.LBB0_7:                                # %originalBBalteredBB
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str, %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB0_3
.Ltmp3:
	.size	main, .Ltmp3-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"i = %d\n"
	.size	.L.str, 8

	.type	.Lfile.name,@object     # @file.name
.Lfile.name:
	.asciz	"tmp.covpro"
	.size	.Lfile.name, 11

	.type	.Lattribute_rw,@object  # @attribute_rw
.Lattribute_rw:
	.asciz	"ab"
	.size	.Lattribute_rw, 3

	.type	.Lattribute_r,@object   # @attribute_r
.Lattribute_r:
	.asciz	"r"
	.size	.Lattribute_r, 2

	.type	".Lattribute_%d",@object # @"attribute_%d"
".Lattribute_%d":
	.asciz	"%d"
	.size	".Lattribute_%d", 3

	.type	x,@object               # @x
	.comm	x,4,4
	.type	y,@object               # @y
	.comm	y,4,4

	.ident	"Obfuscator-LLVM clang version 3.6.1 (tags/RELEASE_361/final) (based on Obfuscator-LLVM 3.6.1)"
	.section	".note.GNU-stack","",@progbits
