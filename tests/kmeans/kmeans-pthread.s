	.file	"kmeans-pthread.c"
# GNU C11 (Ubuntu 5.4.0-6ubuntu1~16.04.10) version 5.4.0 20160609 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I ../../include -I /home/henry/gem5-nej/include
# -imultiarch x86_64-linux-gnu -D _LINUX_ -D __x86_64__ kmeans-pthread.c
# -mtune=generic -march=x86-64 -auxbase-strip kmeans-pthread.s -O3 -Wall
# -fverbose-asm -fstack-protector-strong -Wformat-security
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-alignment -fipa-cp-clone
# -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -freorder-blocks -freorder-blocks-and-partition -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fschedule-insns2 -fsemantic-interposition -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt
# -fstack-protector-strong -fstdarg-opt -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
# -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mtls-direct-seg-refs -mvzeroupper

	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	calc_means
	.type	calc_means, @function
calc_means:
.LFB87:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movslq	(%rdi), %rbp	# MEM[(struct thread_arg *)arg_11(D)].start_idx,
	movl	4(%rdi), %eax	# MEM[(struct thread_arg *)arg_11(D)].num_pts, end_idx
	movq	8(%rdi), %r13	# MEM[(struct thread_arg *)arg_11(D)].sum, sum
	movl	dim(%rip), %ecx	# dim, D.6675
	addl	%ebp, %eax	# i, end_idx
	movq	%rbp, %r14	#,
	salq	$3, %rbp	#, ivtmp.86
	cmpl	%eax, %r14d	# end_idx, i
	movl	%eax, 12(%rsp)	# end_idx, %sfp
	jge	.L14	#,
	.p2align 4,,10
	.p2align 3
.L15:
	movslq	%ecx, %rdx	# D.6675, D.6676
	xorl	%esi, %esi	#
	movq	%r13, %rdi	# sum,
	salq	$2, %rdx	#, D.6676
	call	memset	#
	movl	num_points(%rip), %eax	# num_points, D.6675
	movl	dim(%rip), %ecx	# dim, D.6675
	testl	%eax, %eax	# D.6675
	jle	.L5	#,
	movq	clusters(%rip), %r9	# clusters, D.6678
	movl	dim(%rip), %ecx	# dim, D.6675
	xorl	%esi, %esi	# ivtmp.79
	movq	points(%rip), %r10	# points, D.6677
	xorl	%ebx, %ebx	# grp_size
	xorl	%r8d, %r8d	# j
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L6:
	addl	$1, %r8d	#, j
	addq	$4, %rsi	#, ivtmp.79
	cmpl	%eax, %r8d	# D.6675, j
	jge	.L23	#,
.L9:
	cmpl	%r14d, (%r9,%rsi)	# i, MEM[base: _99, index: ivtmp.79_54, offset: 0B]
	jne	.L6	#,
	testl	%ecx, %ecx	# D.6675
	movq	(%r10,%rsi,2), %rdi	# MEM[base: _28, index: ivtmp.79_54, step: 2, offset: 0B], D.6678
	jle	.L7	#,
	xorl	%eax, %eax	# ivtmp.73
	xorl	%edx, %edx	# i
	.p2align 4,,10
	.p2align 3
.L8:
	movl	(%rdi,%rax), %ecx	# MEM[base: _31, index: ivtmp.73_45, offset: 0B], MEM[base: _31, index: ivtmp.73_45, offset: 0B]
	addl	%ecx, 0(%r13,%rax)	# MEM[base: _31, index: ivtmp.73_45, offset: 0B], MEM[base: sum_17, index: ivtmp.73_45, offset: 0B]
	addl	$1, %edx	#, i
	movl	dim(%rip), %ecx	# dim, D.6675
	addq	$4, %rax	#, ivtmp.73
	cmpl	%ecx, %edx	# D.6675, i
	jl	.L8	#,
	movl	num_points(%rip), %eax	# num_points, D.6675
.L7:
	addl	$1, %r8d	#, j
	addl	$1, %ebx	#, grp_size
	addq	$4, %rsi	#, ivtmp.79
	cmpl	%eax, %r8d	# D.6675, j
	jl	.L9	#,
.L23:
	testl	%ecx, %ecx	# D.6675
	jle	.L5	#,
	testl	%ebx, %ebx	# grp_size
	jne	.L24	#,
.L5:
	addl	$1, %r14d	#, i
	addq	$8, %rbp	#, ivtmp.86
	cmpl	%r14d, 12(%rsp)	# i, %sfp
	jne	.L15	#,
.L14:
	movq	%r13, %rdi	# sum,
	call	free	#
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L24:
	.cfi_restore_state
	xorl	%r15d, %r15d	# ivtmp.67
	xorl	%r12d, %r12d	# j
	.p2align 4,,10
	.p2align 3
.L12:
	call	m5_approxbegin	#
	movq	means(%rip), %rax	# means, means
	addl	$1, %r12d	#, j
	movq	(%rax,%rbp), %rcx	# *_40, *_40
	movl	0(%r13,%r15), %eax	# MEM[base: sum_17, index: ivtmp.67_32, offset: 0B], MEM[base: sum_17, index: ivtmp.67_32, offset: 0B]
	cltd
	idivl	%ebx	# grp_size
	movl	%eax, (%rcx,%r15)	# D.6675, *_44
	addq	$4, %r15	#, ivtmp.67
	call	m5_approxend	#
	movl	dim(%rip), %ecx	# dim, D.6675
	cmpl	%ecx, %r12d	# D.6675, j
	jl	.L12	#,
	addl	$1, %r14d	#, i
	addq	$8, %rbp	#, ivtmp.86
	cmpl	%r14d, 12(%rsp)	# i, %sfp
	jne	.L15	#,
	jmp	.L14	#
	.cfi_endproc
.LFE87:
	.size	calc_means, .-calc_means
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	find_clusters
	.type	find_clusters, @function
find_clusters:
.LFB86:
	.cfi_startproc
	movslq	(%rdi), %rax	# MEM[(struct thread_arg *)arg_9(D)].start_idx,
	movl	4(%rdi), %edx	# MEM[(struct thread_arg *)arg_9(D)].num_pts, D.6722
	leal	(%rax,%rdx), %ecx	#, end_idx
	cmpl	%ecx, %eax	# end_idx, i
	jge	.L50	#,
	subl	$1, %edx	#, D.6727
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	0(,%rax,4), %rdi	#, ivtmp.114
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	0(,%rax,8), %r14	#, ivtmp.112
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	1(%rax,%rdx), %rax	#, D.6727
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	salq	$2, %rax	#, D.6727
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	movq	%rdi, 16(%rsp)	# ivtmp.114, %sfp
	movq	%rax, 24(%rsp)	# D.6727, %sfp
.L39:
	call	m5_approxbegin	#
	movq	means(%rip), %rax	# means, means
	movl	dim(%rip), %edx	# dim,
	xorl	%r12d, %r12d	# i
	movl	$0, 40(%rsp)	#, sum
	movq	(%rax), %rbx	# *_15, D.6724
	movq	points(%rip), %rax	# points, points
	testl	%edx, %edx	#
	movq	(%rax,%r14), %rbp	# *_20, D.6724
	jle	.L31	#,
	.p2align 4,,10
	.p2align 3
.L43:
	call	m5_approxbegin	#
	movl	0(%rbp), %eax	# MEM[base: _1, offset: 0B], MEM[base: _1, offset: 0B]
	subl	(%rbx), %eax	# MEM[base: _120, offset: 0B], D.6722
	addl	$1, %r12d	#, i
	movl	40(%rsp), %edx	# sum, D.6726
	addq	$4, %rbp	#, ivtmp.105
	addq	$4, %rbx	#, ivtmp.107
	imull	%eax, %eax	# D.6722, D.6722
	addl	%edx, %eax	# D.6726, D.6726
	movl	%eax, 40(%rsp)	# D.6726, sum
	call	m5_approxend	#
	cmpl	dim(%rip), %r12d	# dim, i
	jl	.L43	#,
.L31:
	movl	40(%rsp), %eax	# sum, D.6726
	movl	$8, %r13d	#, ivtmp.100
	movl	$1, %r12d	#, min_idx
	movl	%eax, 32(%rsp)	# D.6726, min_dist
	call	m5_approxend	#
	cmpl	$1, num_means(%rip)	#, num_means
	movl	$0, 12(%rsp)	#, %sfp
	jle	.L29	#,
	.p2align 4,,10
	.p2align 3
.L41:
	call	m5_approxbegin	#
	movq	means(%rip), %rax	# means, means
	xorl	%r15d, %r15d	# i
	movl	$0, 44(%rsp)	#, sum
	movq	(%rax,%r13), %rbx	# *_31, D.6724
	movq	points(%rip), %rax	# points, points
	movq	(%rax,%r14), %rbp	# *_34, D.6724
	movl	dim(%rip), %eax	# dim,
	testl	%eax, %eax	#
	jle	.L36	#,
	.p2align 4,,10
	.p2align 3
.L42:
	call	m5_approxbegin	#
	movl	0(%rbp), %eax	# MEM[base: _22, offset: 0B], MEM[base: _22, offset: 0B]
	subl	(%rbx), %eax	# MEM[base: _8, offset: 0B], D.6722
	addl	$1, %r15d	#, i
	movl	44(%rsp), %edx	# sum, D.6726
	addq	$4, %rbp	#, ivtmp.93
	addq	$4, %rbx	#, ivtmp.95
	imull	%eax, %eax	# D.6722, D.6722
	addl	%edx, %eax	# D.6726, D.6726
	movl	%eax, 44(%rsp)	# D.6726, sum
	call	m5_approxend	#
	cmpl	dim(%rip), %r15d	# dim, i
	jl	.L42	#,
.L36:
	movl	44(%rsp), %eax	# sum, D.6726
	movl	%eax, 36(%rsp)	# D.6726, cur_dist
	call	m5_approxend	#
	movl	36(%rsp), %edx	# cur_dist, D.6726
	movl	32(%rsp), %eax	# min_dist, D.6726
	cmpl	%eax, %edx	# D.6726, D.6726
	jnb	.L34	#,
	movl	36(%rsp), %eax	# cur_dist, D.6726
	movl	%r12d, 12(%rsp)	# min_idx, %sfp
	movl	%eax, 32(%rsp)	# D.6726, min_dist
.L34:
	addl	$1, %r12d	#, min_idx
	addq	$8, %r13	#, ivtmp.100
	cmpl	%r12d, num_means(%rip)	# min_idx, num_means
	jg	.L41	#,
.L29:
	movq	clusters(%rip), %rax	# clusters, clusters
	movq	16(%rsp), %rbx	# %sfp, ivtmp.114
	movl	12(%rsp), %r15d	# %sfp, min_idx
	cmpl	%r15d, (%rax,%rbx)	# min_idx, *_47
	je	.L38	#,
	call	m5_approxbegin	#
	movq	clusters(%rip), %rax	# clusters, clusters
	movq	%rbx, %rsi	# ivtmp.114, ivtmp.114
	movl	%r15d, (%rax,%rsi)	# min_idx, *_51
	call	m5_approxend	#
	movl	$1, modified(%rip)	#, modified
.L38:
	addq	$4, 16(%rsp)	#, %sfp
	addq	$8, %r14	#, ivtmp.112
	movq	16(%rsp), %rax	# %sfp, ivtmp.114
	cmpq	24(%rsp), %rax	# %sfp, ivtmp.114
	jne	.L39	#,
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.L50:
	xorl	%eax, %eax	#
	ret
	.cfi_endproc
.LFE86:
	.size	find_clusters, .-find_clusters
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%5d "
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	dump_points
	.type	dump_points, @function
dump_points:
.LFB81:
	.cfi_startproc
	testl	%esi, %esi	# rows
	jle	.L63	#,
	leal	-1(%rsi), %eax	#, D.6741
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %r12	# vals, ivtmp.125
	leaq	8(%rdi,%rax,8), %r13	#, D.6739
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L55:
	movl	dim(%rip), %eax	# dim,
	xorl	%ebp, %ebp	# ivtmp.121
	xorl	%ebx, %ebx	# j
	testl	%eax, %eax	#
	jle	.L57	#,
	.p2align 4,,10
	.p2align 3
.L58:
	movq	(%r12), %rax	# MEM[base: _42, offset: 0B], MEM[base: _42, offset: 0B]
	movq	stdout(%rip), %rdi	# stdout,
	movl	$.LC2, %edx	#,
	movl	$1, %esi	#,
	addl	$1, %ebx	#, j
	movl	(%rax,%rbp), %ecx	# *_16, *_16
	xorl	%eax, %eax	#
	addq	$4, %rbp	#, ivtmp.121
	call	__fprintf_chk	#
	cmpl	%ebx, dim(%rip)	# j, dim
	jg	.L58	#,
.L57:
	movq	stdout(%rip), %rsi	# stdout,
	movl	$10, %edi	#,
	addq	$8, %r12	#, ivtmp.125
	call	fputc	#
	cmpq	%r12, %r13	# ivtmp.125, D.6739
	jne	.L55	#,
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	ret
.L63:
	rep ret
	.cfi_endproc
.LFE81:
	.size	dump_points, .-dump_points
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"Usage: %s -d <vector dimension> -c <num clusters> -p <num points> -s <grid size>\n"
	.section	.rodata.str1.1
.LC5:
	.string	"d:c:p:s:"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Illegal argument value. All values must be numeric and greater than 0"
	.section	.rodata.str1.1
.LC7:
	.string	"Dimension = %d\n"
.LC8:
	.string	"Number of clusters = %d\n"
.LC9:
	.string	"Number of points = %d\n"
.LC10:
	.string	"Size of each dimension = %d\n"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	parse_args
	.type	parse_args, @function
parse_args:
.LFB82:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebp	# argc, argc
	movq	%rsi, %rbx	# argv, argv
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
	movl	$100000, num_points(%rip)	#, num_points
	movl	$100, num_means(%rip)	#, num_means
	movl	$3, dim(%rip)	#, dim
	movl	$1000, grid_size(%rip)	#, grid_size
	.p2align 4,,10
	.p2align 3
.L77:
	movl	$.LC5, %edx	#,
	movq	%rbx, %rsi	# argv,
	movl	%ebp, %edi	# argc,
	call	getopt	#
	cmpl	$-1, %eax	#, c
	je	.L79	#,
	cmpl	$100, %eax	#, c
	je	.L67	#,
	jg	.L68	#,
	cmpl	$63, %eax	#, c
	je	.L69	#,
	cmpl	$99, %eax	#, c
	jne	.L77	#,
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
	movl	%eax, num_means(%rip)	# D.6758, num_means
	jmp	.L77	#
	.p2align 4,,10
	.p2align 3
.L68:
	cmpl	$112, %eax	#, c
	je	.L71	#,
	cmpl	$115, %eax	#, c
	jne	.L77	#,
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
	movl	%eax, grid_size(%rip)	# D.6758, grid_size
	jmp	.L77	#
	.p2align 4,,10
	.p2align 3
.L67:
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
	movl	%eax, dim(%rip)	# D.6758, dim
	jmp	.L77	#
	.p2align 4,,10
	.p2align 3
.L69:
	movq	(%rbx), %rdx	# *argv_8(D),
	movl	$1, %edi	#,
	movl	$.LC4, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$1, %edi	#,
	call	exit	#
	.p2align 4,,10
	.p2align 3
.L71:
	movq	optarg(%rip), %rdi	# optarg,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
	movl	%eax, num_points(%rip)	# D.6758, num_points
	jmp	.L77	#
	.p2align 4,,10
	.p2align 3
.L79:
	movl	dim(%rip), %edx	# dim, D.6757
	testl	%edx, %edx	# D.6757
	jle	.L75	#,
	movl	num_means(%rip), %esi	# num_means,
	testl	%esi, %esi	#
	jle	.L75	#,
	movl	num_points(%rip), %ecx	# num_points,
	testl	%ecx, %ecx	#
	jle	.L75	#,
	movl	grid_size(%rip), %eax	# grid_size,
	testl	%eax, %eax	#
	jle	.L75	#,
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	num_means(%rip), %edx	# num_means,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	num_points(%rip), %edx	# num_points,
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	grid_size(%rip), %edx	# grid_size,
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$.LC10, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L75:
	.cfi_restore_state
	movl	$.LC6, %edi	#,
	call	puts	#
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE82:
	.size	parse_args, .-parse_args
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	generate_points
	.type	generate_points, @function
generate_points:
.LFB83:
	.cfi_startproc
	testl	%esi, %esi	# size
	jle	.L90	#,
	leal	-1(%rsi), %edx	#, D.6778
	movl	dim(%rip), %eax	# dim, D.6782
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12	# pts, ivtmp.138
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	leaq	8(%rdi,%rdx,8), %r13	#, D.6780
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.p2align 4,,10
	.p2align 3
.L82:
	xorl	%ebp, %ebp	# ivtmp.134
	xorl	%ebx, %ebx	# j
	testl	%eax, %eax	# D.6782
	jle	.L85	#,
	.p2align 4,,10
	.p2align 3
.L86:
	movq	%rbp, %r14	# ivtmp.134, D.6781
	addq	(%r12), %r14	# MEM[base: _28, offset: 0B], D.6781
	addl	$1, %ebx	#, j
	call	rand	#
	cltd
	addq	$4, %rbp	#, ivtmp.134
	idivl	grid_size(%rip)	# grid_size
	movl	%edx, (%r14)	# D.6782, *_16
	movl	dim(%rip), %eax	# dim, D.6782
	cmpl	%ebx, %eax	# j, D.6782
	jg	.L86	#,
.L85:
	addq	$8, %r12	#, ivtmp.138
	cmpq	%r12, %r13	# ivtmp.138, D.6780
	jne	.L82	#,
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 8
.L90:
	rep ret
	.cfi_endproc
.LFE83:
	.size	generate_points, .-generate_points
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	add_to_sum
	.type	add_to_sum, @function
add_to_sum:
.LFB85:
	.cfi_startproc
	movl	dim(%rip), %ecx	# dim,
	xorl	%eax, %eax	# ivtmp.146
	xorl	%edx, %edx	# i
	testl	%ecx, %ecx	#
	jle	.L91	#,
	.p2align 4,,10
	.p2align 3
.L95:
	movl	(%rsi,%rax), %ecx	# MEM[base: point_10(D), index: ivtmp.146_21, offset: 0B], MEM[base: point_10(D), index: ivtmp.146_21, offset: 0B]
	addl	%ecx, (%rdi,%rax)	# MEM[base: point_10(D), index: ivtmp.146_21, offset: 0B], MEM[base: sum_7(D), index: ivtmp.146_21, offset: 0B]
	addl	$1, %edx	#, i
	addq	$4, %rax	#, ivtmp.146
	cmpl	%edx, dim(%rip)	# i, dim
	jg	.L95	#,
.L91:
	rep ret
	.cfi_endproc
.LFE85:
	.size	add_to_sum, .-add_to_sum
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.1
.LC14:
	.string	"Generating points\n"
.LC15:
	.string	"Generating means\n"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"Error at line\n\t(num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0\nSystem Msg"
	.section	.rodata.str1.1
.LC17:
	.string	"kmeans-pthread.c"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"((num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0) == 0"
	.align 8
.LC19:
	.string	"Error at line\n\t(pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == NULL\nSystem Msg"
	.align 8
.LC20:
	.string	"((pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == ((void *)0)) == 0"
	.section	.rodata.str1.1
.LC21:
	.string	"Starting iterative algorithm"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"Error at line\n\t(arg = (thread_arg *)malloc(sizeof(thread_arg))) == NULL\nSystem Msg"
	.align 8
.LC23:
	.string	"((arg = (thread_arg *)malloc(sizeof(thread_arg))) == ((void *)0)) == 0"
	.align 8
.LC24:
	.string	"Error at line\n\t(pthread_create(&(pid[num_threads++]), &attr, find_clusters, (void *)(arg))) != 0\nSystem Msg"
	.align 8
.LC25:
	.string	"((pthread_create(&(pid[num_threads++]), &attr, find_clusters, (void *)(arg))) != 0) == 0"
	.section	.rodata.str1.1
.LC26:
	.string	"num_threads == num_procs"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"Error at line\n\t(pthread_create(&(pid[num_threads++]), &attr, calc_means, (void *)(arg))) != 0\nSystem Msg"
	.align 8
.LC28:
	.string	"((pthread_create(&(pid[num_threads++]), &attr, calc_means, (void *)(arg))) != 0) == 0"
	.section	.rodata.str1.1
.LC29:
	.string	"\n\nFinal means:\n"
	.section	.text.unlikely
.LCOLDB30:
	.section	.text.startup,"ax",@progbits
.LHOTB30:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB88:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax	#, tmp294
	movq	%rax, 88(%rsp)	# tmp294, D.6865
	xorl	%eax, %eax	# tmp294
	call	parse_args	#
	movslq	num_points(%rip), %rdi	# num_points,
	movq	%rdi, %rbx	#,
	salq	$3, %rdi	#, D.6855
	call	malloc	#
	testl	%ebx, %ebx	# D.6854
	movq	%rax, points(%rip)	# tmp218, points
	jle	.L101	#,
	movslq	dim(%rip), %r13	# dim, D.6855
	leal	-1(%rbx), %r12d	#, D.6855
	movq	%rax, %rbp	# tmp218, D.6857
	xorl	%ebx, %ebx	# ivtmp.183
	salq	$3, %r12	#, D.6855
	salq	$2, %r13	#, D.6855
	jmp	.L102	#
.L164:
	movq	points(%rip), %rbp	# points, D.6857
	addq	$8, %rbx	#, ivtmp.183
.L102:
	movq	%r13, %rdi	# D.6855,
	call	malloc	#
	cmpq	%r12, %rbx	# D.6855, ivtmp.183
	movq	%rax, 0(%rbp,%rbx)	# tmp226, *_52
	jne	.L164	#,
.L101:
	movq	stdout(%rip), %rcx	# stdout,
	movl	$18, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	movl	num_points(%rip), %esi	# num_points,
	movq	points(%rip), %rdi	# points,
	call	generate_points	#
	movslq	num_means(%rip), %rdi	# num_means,
	movq	%rdi, %rbx	#,
	salq	$3, %rdi	#, D.6855
	call	malloc	#
	testl	%ebx, %ebx	# D.6854
	movq	%rax, means(%rip)	# tmp221, means
	jle	.L100	#,
	movslq	dim(%rip), %r13	# dim, D.6855
	leal	-1(%rbx), %r12d	#, D.6855
	movq	%rax, %rbp	# tmp221, D.6857
	xorl	%ebx, %ebx	# ivtmp.175
	salq	$3, %r12	#, D.6855
	salq	$2, %r13	#, D.6855
	jmp	.L105	#
.L165:
	movq	means(%rip), %rbp	# means, D.6857
	addq	$8, %rbx	#, ivtmp.175
.L105:
	movq	%r13, %rdi	# D.6855,
	call	malloc	#
	cmpq	%r12, %rbx	# D.6855, ivtmp.175
	movq	%rax, 0(%rbp,%rbx)	# tmp236, *_74
	jne	.L165	#,
.L100:
	movq	stdout(%rip), %rcx	# stdout,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	movl	num_means(%rip), %esi	# num_means,
	movq	means(%rip), %rdi	# means,
	call	generate_points	#
	movslq	num_points(%rip), %rbx	# num_points, D.6855
	salq	$2, %rbx	#, D.6855
	movq	%rbx, %rdi	# D.6855,
	call	malloc	#
	movq	%rbx, %rdx	# D.6855,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp229,
	movq	%rax, clusters(%rip)	# tmp229, clusters
	call	memset	#
	leaq	32(%rsp), %rdi	#,
	call	pthread_attr_init	#
	leaq	32(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	pthread_attr_setscope	#
	movl	$84, %edi	#,
	call	sysconf	#
	testl	%eax, %eax	# D.6860
	movl	%eax, %ebp	# D.6860, num_procs
	jle	.L166	#,
.L104:
	leal	-1(%rbp), %eax	#, num_procs
	movslq	%eax, %rbx	# num_procs, D.6855
	movl	%eax, 28(%rsp)	# num_procs, %sfp
	salq	$3, %rbx	#, D.6855
	movq	%rbx, %rdi	# D.6855,
	call	malloc	#
	testq	%rax, %rax	# pid
	movq	%rax, %r13	#, pid
	je	.L167	#,
.L106:
	movl	$.LC21, %edi	#,
	movl	$1, modified(%rip)	#, modified
	call	puts	#
	leal	-2(%rbp), %eax	#, D.6864
	leaq	8(%r13,%rax,8), %rax	#, D.6863
	movq	%rax, 16(%rsp)	# D.6863, %sfp
.L107:
	movl	modified(%rip), %ecx	# modified,
	testl	%ecx, %ecx	#
	je	.L168	#,
	.p2align 4,,10
	.p2align 3
.L128:
	movl	num_points(%rip), %eax	# num_points, D.6854
	movq	stdout(%rip), %rsi	# stdout,
	movl	$46, %edi	#,
	movl	$0, modified(%rip)	#, modified
	xorl	%r12d, %r12d	# num_threads
	cltd
	idivl	28(%rsp)	# %sfp
	movl	%edx, %r14d	# excess, excess
	movl	%eax, 24(%rsp)	# tmp244, %sfp
	call	fputc	#
	movl	num_points(%rip), %esi	# num_points,
	testl	%esi, %esi	#
	jle	.L108	#,
	movl	24(%rsp), %eax	# %sfp, tmp244
	xorl	%ebp, %ebp	# curr_point
	addl	$1, %eax	#, tmp293
	movl	%eax, 12(%rsp)	# tmp293, %sfp
	jmp	.L113	#
	.p2align 4,,10
	.p2align 3
.L138:
	movl	8(%rsp), %r12d	# %sfp, num_threads
.L112:
	addl	4(%r15), %ebp	# arg_11->num_pts, curr_point
	cmpl	%ebp, num_points(%rip)	# curr_point, num_points
	jle	.L108	#,
.L113:
	movl	$16, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# arg
	movq	%rax, %r15	#, arg
	je	.L169	#,
.L109:
	testl	%r14d, %r14d	# excess
	movl	%ebp, (%r15)	# curr_point, arg_11->start_idx
	jle	.L170	#,
	movl	12(%rsp), %eax	# %sfp, tmp293
	subl	$1, %r14d	#, excess
	movl	%eax, 4(%r15)	# tmp293, arg_11->num_pts
.L111:
	movslq	%r12d, %rbx	# num_threads, D.6855
	leal	1(%r12), %eax	#, num_threads
	leaq	32(%rsp), %rsi	#,
	salq	$3, %rbx	#, D.6855
	movq	%r15, %rcx	# arg,
	movl	$find_clusters, %edx	#,
	leaq	0(%r13,%rbx), %rdi	#, D.6861
	movl	%eax, 8(%rsp)	# num_threads, %sfp
	call	pthread_create	#
	testl	%eax, %eax	# D.6854
	je	.L138	#,
	movl	$.LC24, %edi	#,
	addl	$2, %r12d	#, num_threads
	call	perror	#
	leaq	8(%r13,%rbx), %rdi	#, D.6861
	leaq	32(%rsp), %rsi	#,
	movq	%r15, %rcx	# arg,
	movl	$find_clusters, %edx	#,
	call	pthread_create	#
	testl	%eax, %eax	# D.6854
	je	.L112	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$322, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC25, %edi	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L170:
	movl	24(%rsp), %eax	# %sfp, tmp244
	movl	%eax, 4(%r15)	# tmp244, arg_11->num_pts
	jmp	.L111	#
	.p2align 4,,10
	.p2align 3
.L169:
	movl	$.LC22, %edi	#,
	call	perror	#
	movl	$16, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# arg
	movq	%rax, %r15	#, arg
	jne	.L109	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$314, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC23, %edi	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L108:
	movl	28(%rsp), %eax	# %sfp, num_procs
	cmpl	%r12d, %eax	# num_threads, num_procs
	jne	.L114	#,
	testl	%eax, %eax	# num_procs
	movq	%r13, %rbx	# pid, ivtmp.166
	je	.L171	#,
	.p2align 4,,10
	.p2align 3
.L146:
	movq	(%rbx), %rdi	# MEM[base: _195, offset: 0B],
	xorl	%esi, %esi	#
	addq	$8, %rbx	#, ivtmp.166
	call	pthread_join	#
	cmpq	16(%rsp), %rbx	# %sfp, ivtmp.166
	jne	.L146	#,
	movl	num_means(%rip), %ecx	# num_means, D.6854
	movl	%ecx, %eax	# D.6854, num_per_thread
	cltd
	idivl	28(%rsp)	# %sfp
	testl	%ecx, %ecx	# D.6854
	movl	%edx, %r14d	# excess, excess
	movl	%eax, 24(%rsp)	# num_per_thread, %sfp
	jle	.L125	#,
.L135:
	addl	$1, %eax	#, tmp292
	xorl	%r12d, %r12d	# num_threads
	xorl	%ebp, %ebp	# curr_point
	movl	%eax, 12(%rsp)	# tmp292, %sfp
	jmp	.L124	#
	.p2align 4,,10
	.p2align 3
.L139:
	movl	8(%rsp), %r12d	# %sfp, num_threads
.L123:
	addl	4(%r15), %ebp	# arg_12->num_pts, curr_point
	cmpl	%ebp, num_means(%rip)	# curr_point, num_means
	jle	.L172	#,
.L124:
	movl	$16, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# arg
	movq	%rax, %r15	#, arg
	je	.L173	#,
.L120:
	movslq	dim(%rip), %rdi	# dim, D.6855
	movl	%ebp, (%r15)	# curr_point, arg_12->start_idx
	salq	$2, %rdi	#, D.6855
	call	malloc	#
	testl	%r14d, %r14d	# excess
	movq	%rax, 8(%r15)	# tmp271, arg_12->sum
	jle	.L174	#,
	movl	12(%rsp), %eax	# %sfp, tmp292
	subl	$1, %r14d	#, excess
	movl	%eax, 4(%r15)	# tmp292, arg_12->num_pts
.L122:
	movslq	%r12d, %rbx	# num_threads, D.6855
	leal	1(%r12), %eax	#, num_threads
	leaq	32(%rsp), %rsi	#,
	salq	$3, %rbx	#, D.6855
	movq	%r15, %rcx	# arg,
	movl	$calc_means, %edx	#,
	leaq	0(%r13,%rbx), %rdi	#, D.6861
	movl	%eax, 8(%rsp)	# num_threads, %sfp
	call	pthread_create	#
	testl	%eax, %eax	# D.6854
	je	.L139	#,
	movl	$.LC27, %edi	#,
	addl	$2, %r12d	#, num_threads
	call	perror	#
	leaq	8(%r13,%rbx), %rdi	#, D.6861
	leaq	32(%rsp), %rsi	#,
	movq	%r15, %rcx	# arg,
	movl	$calc_means, %edx	#,
	call	pthread_create	#
	testl	%eax, %eax	# D.6854
	je	.L123	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$345, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC28, %edi	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L174:
	movl	24(%rsp), %eax	# %sfp, num_per_thread
	movl	%eax, 4(%r15)	# num_per_thread, arg_12->num_pts
	jmp	.L122	#
	.p2align 4,,10
	.p2align 3
.L173:
	movl	$.LC22, %edi	#,
	call	perror	#
	movl	$16, %edi	#,
	call	malloc	#
	testq	%rax, %rax	# arg
	movq	%rax, %r15	#, arg
	jne	.L120	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$336, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC23, %edi	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L172:
	cmpl	28(%rsp), %r12d	# %sfp, num_threads
	jne	.L125	#,
	movq	%r13, %rbx	# pid, ivtmp.161
	.p2align 4,,10
	.p2align 3
.L127:
	movq	(%rbx), %rdi	# MEM[base: _302, offset: 0B],
	xorl	%esi, %esi	#
	addq	$8, %rbx	#, ivtmp.161
	call	pthread_join	#
	cmpq	16(%rsp), %rbx	# %sfp, ivtmp.161
	jne	.L127	#,
	movl	modified(%rip), %ecx	# modified,
	testl	%ecx, %ecx	#
	jne	.L128	#,
.L168:
	movq	stdout(%rip), %rcx	# stdout,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	xorl	%ebp, %ebp	# ivtmp.157
	xorl	%ebx, %ebx	# i
	call	fwrite	#
	movl	num_means(%rip), %esi	# num_means,
	movq	means(%rip), %rdi	# means,
	call	dump_points	#
	movl	num_points(%rip), %edx	# num_points,
	testl	%edx, %edx	#
	jle	.L133	#,
.L145:
	movq	points(%rip), %rax	# points, points
	addl	$1, %ebx	#, i
	movq	(%rax,%rbp), %rdi	# *_207, *_207
	addq	$8, %rbp	#, ivtmp.157
	call	free	#
	cmpl	%ebx, num_points(%rip)	# i, num_points
	jg	.L145	#,
.L133:
	movq	points(%rip), %rdi	# points,
	xorl	%ebp, %ebp	# ivtmp.153
	xorl	%ebx, %ebx	# i
	call	free	#
	movl	num_means(%rip), %eax	# num_means,
	testl	%eax, %eax	#
	jle	.L131	#,
.L144:
	movq	means(%rip), %rax	# means, means
	addl	$1, %ebx	#, i
	movq	(%rax,%rbp), %rdi	# *_217, *_217
	addq	$8, %rbp	#, ivtmp.153
	call	free	#
	cmpl	%ebx, num_means(%rip)	# i, num_means
	jg	.L144	#,
.L131:
	movq	means(%rip), %rdi	# means,
	call	free	#
	movq	clusters(%rip), %rdi	# clusters,
	call	free	#
	xorl	%eax, %eax	#
	movq	88(%rsp), %rdx	# D.6865, tmp295
	xorq	%fs:40, %rdx	#, tmp295
	jne	.L175	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
.L171:
	.cfi_restore_state
	movl	num_means(%rip), %eax	# num_means, D.6854
	testl	%eax, %eax	# D.6854
	jle	.L107	#,
	cltd
	idivl	28(%rsp)	# %sfp
	movl	%edx, %r14d	# excess, excess
	movl	%eax, 24(%rsp)	# num_per_thread, %sfp
	jmp	.L135	#
.L166:
	movl	$.LC16, %edi	#,
	call	perror	#
	movl	$84, %edi	#,
	call	sysconf	#
	testl	%eax, %eax	# D.6860
	movl	%eax, %ebp	# D.6860, num_procs
	jg	.L104	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$293, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC18, %edi	#,
	call	__assert_fail	#
.L167:
	movl	$.LC19, %edi	#,
	call	perror	#
	movq	%rbx, %rdi	# D.6855,
	call	malloc	#
	testq	%rax, %rax	# pid
	movq	%rax, %r13	#, pid
	jne	.L106	#,
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$295, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC20, %edi	#,
	call	__assert_fail	#
.L114:
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$326, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC26, %edi	#,
	call	__assert_fail	#
.L125:
	movl	$__PRETTY_FUNCTION__.6312, %ecx	#,
	movl	$349, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$.LC26, %edi	#,
	call	__assert_fail	#
.L175:
	call	__stack_chk_fail	#
	.cfi_endproc
.LFE88:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE30:
	.section	.text.startup
.LHOTE30:
	.section	.rodata
	.type	__PRETTY_FUNCTION__.6312, @object
	.size	__PRETTY_FUNCTION__.6312, 5
__PRETTY_FUNCTION__.6312:
	.string	"main"
	.comm	clusters,8,8
	.comm	means,8,8
	.comm	points,8,8
	.globl	num_pts
	.bss
	.align 4
	.type	num_pts, @object
	.size	num_pts, 4
num_pts:
	.zero	4
	.comm	modified,4,4
	.comm	grid_size,4,4
	.comm	num_means,4,4
	.comm	dim,4,4
	.comm	num_points,4,4
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
