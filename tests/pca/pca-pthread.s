	.file	"pca-pthread.c"
	.intel_syntax noprefix
# GNU C11 (Ubuntu 5.4.0-6ubuntu1~16.04.10) version 5.4.0 20160609 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I ../../include -I /home/henry/gem5-nej/include
# -imultiarch x86_64-linux-gnu -D _LINUX_ -D __x86_64__ pca-pthread.c
# -masm=intel -mtune=generic -march=x86-64 -auxbase-strip pca-pthread.s -O3
# -Wall -fverbose-asm -fstack-protector-strong -Wformat-security
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
	.globl	calc_mean
	.type	calc_mean, @function
calc_mean:
.LFB84:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	movsx	rbp, DWORD PTR [rdi]	#, MEM[(struct mean_arg_t *)arg_7(D)].first_row
	mov	DWORD PTR [rsp+12], 0	# sum,
	mov	r12, rbp	#,
	lea	r13, [0+rbp*4]	# ivtmp.63,
	sal	rbp, 3	# ivtmp.65,
	cmp	r12d, DWORD PTR [rdi+4]	# i, MEM[(struct mean_arg_t *)arg_7(D)].last_row
	jge	.L10	#,
	mov	r14, rdi	# arg, arg
	.p2align 4,,10
	.p2align 3
.L7:
	mov	eax, DWORD PTR num_cols[rip]	#, num_cols
	mov	DWORD PTR [rsp+12], 0	# sum,
	test	eax, eax	#
	jle	.L3	#,
	xor	ebx, ebx	# ivtmp.56
	xor	r15d, r15d	# j
	.p2align 4,,10
	.p2align 3
.L4:
	call	m5_approxbegin	#
	mov	rax, QWORD PTR matrix[rip]	# matrix, matrix
	mov	rsi, rbx	# D.6516, ivtmp.56
	add	r15d, 1	# j,
	add	rbx, 4	# ivtmp.56,
	add	rsi, QWORD PTR [rax+rbp]	# D.6516, *_16
	mov	edx, DWORD PTR [rsi]	# D.6514, *_20
	mov	eax, DWORD PTR [rsp+12]	# D.6514, sum
	add	eax, edx	# D.6514, D.6514
	mov	DWORD PTR [rsp+12], eax	# sum, D.6514
	call	m5_approxend	#
	cmp	DWORD PTR num_cols[rip], r15d	# num_cols, j
	jg	.L4	#,
.L3:
	call	m5_approxbegin	#
	mov	eax, DWORD PTR [rsp+12]	# D.6514, sum
	mov	rcx, r13	# D.6516, ivtmp.63
	add	rcx, QWORD PTR mean[rip]	# D.6516, mean
	add	r12d, 1	# i,
	add	r13, 4	# ivtmp.63,
	add	rbp, 8	# ivtmp.65,
	cdq
	idiv	DWORD PTR num_cols[rip]	# num_cols
	mov	DWORD PTR [rcx], eax	# *_31, tmp122
	call	m5_approxend	#
	cmp	DWORD PTR [r14+4], r12d	# MEM[(struct mean_arg_t *)arg_7(D)].last_row, i
	jg	.L7	#,
.L10:
	add	rsp, 24	#,
	.cfi_def_cfa_offset 56
	xor	eax, eax	#
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	calc_mean, .-calc_mean
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	calc_cov
	.type	calc_cov, @function
calc_cov:
.LFB85:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	edi, OFFSET FLAT:row_lock	#,
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	call	pthread_mutex_lock	#
	movsx	rbx, DWORD PTR next_row[rip]	#, next_row
	mov	edi, OFFSET FLAT:row_lock	#,
	lea	eax, [rbx+1]	# j,
	mov	DWORD PTR [rsp+12], eax	# %sfp, j
	mov	DWORD PTR next_row[rip], eax	# next_row, j
	call	pthread_mutex_unlock	#
	mov	eax, DWORD PTR num_rows[rip]	# D.6532, num_rows
	cmp	ebx, eax	# j, D.6532
	jge	.L15	#,
	cmp	eax, ebx	# D.6532, j
	jg	.L21	#,
.L20:
	mov	edi, OFFSET FLAT:row_lock	#,
	call	pthread_mutex_lock	#
	movsx	rbx, DWORD PTR next_row[rip]	#, next_row
	mov	edi, OFFSET FLAT:row_lock	#,
	lea	eax, [rbx+1]	# j,
	mov	DWORD PTR [rsp+12], eax	# %sfp, j
	mov	DWORD PTR next_row[rip], eax	# next_row, j
	call	pthread_mutex_unlock	#
	cmp	DWORD PTR num_rows[rip], ebx	# num_rows, j
	jle	.L15	#,
.L21:
	lea	r14, [0+rbx*8]	# D.6531,
	lea	r13, [0+rbx*4]	# D.6531,
	mov	rbp, r14	# ivtmp.77, D.6531
	mov	r12, r13	# ivtmp.79, D.6531
	.p2align 4,,10
	.p2align 3
.L18:
	mov	eax, DWORD PTR num_cols[rip]	#, num_cols
	mov	DWORD PTR [rsp+28], 0	# sum,
	test	eax, eax	#
	jle	.L16	#,
	xor	ebx, ebx	# ivtmp.72
	xor	r15d, r15d	# k
	.p2align 4,,10
	.p2align 3
.L17:
	call	m5_approxbegin	#
	mov	rdx, QWORD PTR matrix[rip]	# D.6533, matrix
	mov	rcx, QWORD PTR mean[rip]	# D.6534, mean
	mov	rax, rbx	# D.6534, ivtmp.72
	mov	rsi, rbx	# D.6534, ivtmp.72
	add	r15d, 1	# k,
	add	rbx, 4	# ivtmp.72,
	add	rax, QWORD PTR [rdx+r14]	# D.6534, *_22
	add	rsi, QWORD PTR [rdx+rbp]	# D.6534, *_35
	lea	rdi, [rcx+r13]	# D.6534,
	add	rcx, r12	# D.6534, ivtmp.79
	mov	eax, DWORD PTR [rax]	# D.6532, *_26
	mov	r8d, DWORD PTR [rdi]	# D.6532, *_30
	mov	edx, DWORD PTR [rsi]	# D.6532, *_37
	mov	edi, DWORD PTR [rcx]	# D.6532, *_40
	mov	ecx, DWORD PTR [rsp+28]	# D.6532, sum
	sub	eax, r8d	# D.6532, D.6532
	sub	edx, edi	# D.6532, D.6532
	imul	eax, edx	# D.6532, D.6532
	add	eax, ecx	# D.6532, D.6532
	mov	DWORD PTR [rsp+28], eax	# sum, D.6532
	call	m5_approxend	#
	cmp	DWORD PTR num_cols[rip], r15d	# num_cols, k
	jg	.L17	#,
.L16:
	call	m5_approxbegin	#
	mov	rax, QWORD PTR cov[rip]	# D.6533, cov
	mov	ebx, DWORD PTR num_cols[rip]	# tmp157, num_cols
	mov	rsi, r12	# D.6534, ivtmp.79
	mov	rdi, r13	# D.6534, D.6531
	add	r12, 4	# ivtmp.79,
	add	rdi, QWORD PTR [rax+rbp]	# D.6534, *_59
	add	rsi, QWORD PTR [rax+r14]	# D.6534, *_53
	lea	ecx, [rbx-1]	# D.6532,
	mov	eax, DWORD PTR [rsp+28]	# D.6532, sum
	add	rbp, 8	# ivtmp.77,
	cdq
	idiv	ecx	# D.6532
	mov	DWORD PTR [rdi], eax	# *_62, tmp146
	mov	DWORD PTR [rsi], eax	# *_57, tmp146
	call	m5_approxend	#
	mov	eax, DWORD PTR [rsp+12]	# j, %sfp
	cmp	DWORD PTR num_rows[rip], eax	# num_rows, j
	jle	.L20	#,
	add	eax, 1	# j,
	mov	DWORD PTR [rsp+12], eax	# %sfp, j
	jmp	.L18	#
.L15:
	add	rsp, 40	#,
	.cfi_def_cfa_offset 56
	xor	eax, eax	#
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	calc_cov, .-calc_cov
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"../../include/stddefines.h"
.LC3:
	.string	"temp"
	.section	.text.unlikely
.LCOLDB4:
.LHOTB4:
	.type	MALLOC.part.0, @function
MALLOC.part.0:
.LFB89:
	.cfi_startproc
	push	rax	#
	.cfi_def_cfa_offset 16
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6086	#,
	mov	edx, 52	#,
	mov	esi, OFFSET FLAT:.LC2	#,
	mov	edi, OFFSET FLAT:.LC3	#,
	call	__assert_fail	#
	.cfi_endproc
.LFE89:
	.size	MALLOC.part.0, .-MALLOC.part.0
.LCOLDE4:
.LHOTE4:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"Usage: %s -r <num_rows> -c <num_cols> -s <max value>\n"
	.section	.rodata.str1.1
.LC6:
	.string	"r:c:s:"
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Illegal argument value. All values must be numeric and greater than 0"
	.section	.rodata.str1.1
.LC8:
	.string	"Number of rows = %d\n"
.LC9:
	.string	"Number of cols = %d\n"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Max value for each element = %d\n"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	parse_args
	.type	parse_args, @function
parse_args:
.LFB81:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	ebp, edi	# argc, argc
	mov	rbx, rsi	# argv, argv
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	DWORD PTR num_rows[rip], 500	# num_rows,
	mov	DWORD PTR num_cols[rip], 500	# num_cols,
	mov	DWORD PTR grid_size[rip], 1000	# grid_size,
.L39:
	mov	edx, OFFSET FLAT:.LC6	#,
	mov	rsi, rbx	#, argv
	mov	edi, ebp	#, argc
	call	getopt	#
	cmp	eax, -1	# c,
	je	.L41	#,
	cmp	eax, 99	# c,
	je	.L30	#,
	jle	.L42	#,
	cmp	eax, 114	# c,
	je	.L33	#,
	cmp	eax, 115	# c,
	jne	.L39	#,
	mov	rdi, QWORD PTR optarg[rip]	#, optarg
	mov	edx, 10	#,
	xor	esi, esi	#
	call	strtol	#
	mov	DWORD PTR grid_size[rip], eax	# grid_size, D.6550
	jmp	.L39	#
	.p2align 4,,10
	.p2align 3
.L42:
	cmp	eax, 63	# c,
	jne	.L39	#,
	mov	rdx, QWORD PTR [rbx]	#, *argv_7(D)
	mov	edi, 1	#,
	mov	esi, OFFSET FLAT:.LC5	#,
	xor	eax, eax	#
	call	__printf_chk	#
	mov	edi, 1	#,
	call	exit	#
	.p2align 4,,10
	.p2align 3
.L30:
	mov	rdi, QWORD PTR optarg[rip]	#, optarg
	mov	edx, 10	#,
	xor	esi, esi	#
	call	strtol	#
	mov	DWORD PTR num_cols[rip], eax	# num_cols, D.6550
	jmp	.L39	#
	.p2align 4,,10
	.p2align 3
.L33:
	mov	rdi, QWORD PTR optarg[rip]	#, optarg
	mov	edx, 10	#,
	xor	esi, esi	#
	call	strtol	#
	mov	DWORD PTR num_rows[rip], eax	# num_rows, D.6550
	jmp	.L39	#
	.p2align 4,,10
	.p2align 3
.L41:
	mov	edx, DWORD PTR num_rows[rip]	# D.6549, num_rows
	test	edx, edx	# D.6549
	jle	.L37	#,
	mov	ecx, DWORD PTR num_cols[rip]	#, num_cols
	test	ecx, ecx	#
	jle	.L37	#,
	mov	eax, DWORD PTR grid_size[rip]	#, grid_size
	test	eax, eax	#
	jle	.L37	#,
	mov	esi, OFFSET FLAT:.LC8	#,
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk	#
	mov	edx, DWORD PTR num_cols[rip]	#, num_cols
	mov	esi, OFFSET FLAT:.LC9	#,
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk	#
	mov	edx, DWORD PTR grid_size[rip]	#, grid_size
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	mov	esi, OFFSET FLAT:.LC10	#,
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	mov	edi, 1	#,
	xor	eax, eax	#
	jmp	__printf_chk	#
.L37:
	.cfi_restore_state
	mov	edi, OFFSET FLAT:.LC7	#,
	call	puts	#
	mov	edi, 1	#,
	call	exit	#
	.cfi_endproc
.LFE81:
	.size	parse_args, .-parse_args
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.str1.1
.LC12:
	.string	"%5d "
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	dump_points
	.type	dump_points, @function
dump_points:
.LFB82:
	.cfi_startproc
	test	esi, esi	# rows
	jle	.L55	#,
	lea	eax, [rsi-1]	# D.6569,
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	r12d, edx	# cols, cols
	lea	r13, [rdi+8+rax*8]	# D.6576,
	lea	eax, [rdx-1]	# D.6571,
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	r14, rdi	# ivtmp.94, vals
	lea	rbp, [4+rax*4]	# D.6571,
	.p2align 4,,10
	.p2align 3
.L47:
	xor	ebx, ebx	# ivtmp.90
	test	r12d, r12d	# cols
	jle	.L49	#,
	.p2align 4,,10
	.p2align 3
.L50:
	mov	rax, QWORD PTR [r14]	# MEM[base: _25, offset: 0B], MEM[base: _25, offset: 0B]
	mov	rdi, QWORD PTR stdout[rip]	#, stdout
	mov	edx, OFFSET FLAT:.LC12	#,
	mov	esi, 1	#,
	mov	ecx, DWORD PTR [rax+rbx]	# *_16, *_16
	xor	eax, eax	#
	add	rbx, 4	# ivtmp.90,
	call	__fprintf_chk	#
	cmp	rbp, rbx	# D.6571, ivtmp.90
	jne	.L50	#,
.L49:
	mov	rsi, QWORD PTR stdout[rip]	#, stdout
	mov	edi, 10	#,
	add	r14, 8	# ivtmp.94,
	call	fputc	#
	cmp	r14, r13	# ivtmp.94, D.6576
	jne	.L47	#,
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	pop	rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
.L55:
	rep ret
	.cfi_endproc
.LFE82:
	.size	dump_points, .-dump_points
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	generate_points
	.type	generate_points, @function
generate_points:
.LFB83:
	.cfi_startproc
	test	esi, esi	# rows
	jle	.L68	#,
	lea	eax, [rsi-1]	# D.6592,
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r13d, edx	# cols, cols
	lea	r14, [rdi+8+rax*8]	# D.6594,
	lea	eax, [rdx-1]	# D.6591,
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbp, rdi	# ivtmp.105, pts
	lea	r12, [4+rax*4]	# D.6591,
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L60:
	xor	ebx, ebx	# ivtmp.101
	test	r13d, r13d	# cols
	jle	.L62	#,
	.p2align 4,,10
	.p2align 3
.L63:
	mov	r15, rbx	# D.6596, ivtmp.101
	add	r15, QWORD PTR [rbp+0]	# D.6596, MEM[base: _12, offset: 0B]
	add	rbx, 4	# ivtmp.101,
	call	rand	#
	cdq
	idiv	DWORD PTR grid_size[rip]	# grid_size
	cmp	r12, rbx	# D.6591, ivtmp.101
	mov	DWORD PTR [r15], edx	# *_16, D.6597
	jne	.L63	#,
.L62:
	add	rbp, 8	# ivtmp.105,
	cmp	r14, rbp	# D.6594, ivtmp.105
	jne	.L60	#,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.L68:
	rep ret
	.cfi_endproc
.LFE83:
	.size	generate_points, .-generate_points
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"Error at line\n\t(num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0\nSystem Msg"
	.section	.rodata.str1.1
.LC16:
	.string	"pca-pthread.c"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"((num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0) == 0"
	.align 8
.LC18:
	.string	"The number of processors is %d\n"
	.align 8
.LC19:
	.string	"Error at line\n\tpthread_create(&tid[i], &attr, calc_mean, (void *)(&(mean_args[i]))) != 0\nSystem Msg"
	.align 8
.LC20:
	.string	"(pthread_create(&tid[i], &attr, calc_mean, (void *)(&(mean_args[i]))) != 0) == 0"
	.align 8
.LC21:
	.string	"Error at line\n\tpthread_join(tid[i], NULL) != 0\nSystem Msg"
	.align 8
.LC22:
	.string	"(pthread_join(tid[i], ((void *)0)) != 0) == 0"
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	pthread_mean
	.type	pthread_mean, @function
pthread_mean:
.LFB86:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	edi, 84	#,
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 144
	mov	rax, QWORD PTR fs:40	# tmp146,
	mov	QWORD PTR [rsp+72], rax	# D.6622, tmp146
	xor	eax, eax	# tmp146
	call	sysconf	#
	test	eax, eax	# D.6618
	mov	DWORD PTR num_procs[rip], eax	# num_procs, D.6618
	mov	edx, eax	# D.6617, D.6618
	jle	.L98	#,
.L70:
	sub	edx, 1	# D.6617,
	mov	esi, OFFSET FLAT:.LC18	#,
	mov	edi, 1	#,
	xor	eax, eax	#
	mov	DWORD PTR num_procs[rip], edx	# num_procs, D.6617
	call	__printf_chk	#
	movsx	rbx, DWORD PTR num_procs[rip]	# D.6619, num_procs
	sal	rbx, 3	# D.6619,
	mov	rdi, rbx	#, D.6619
	call	malloc	#
	test	rax, rax	# tid
	mov	QWORD PTR [rsp+8], rax	# %sfp, tid
	je	.L99	#,
	mov	rdi, rbx	#, D.6619
	call	malloc	#
	lea	rdi, [rsp+16]	#,
	mov	rbx, rax	# tmp137,
	call	pthread_attr_init	#
	lea	rdi, [rsp+16]	#,
	xor	esi, esi	#
	call	pthread_attr_setscope	#
	mov	r13d, DWORD PTR num_rows[rip]	# D.6617, num_rows
	mov	ecx, DWORD PTR num_procs[rip]	# D.6617, num_procs
	mov	eax, r13d	# tmp140, D.6617
	cdq
	idiv	ecx	# D.6617
	mov	DWORD PTR [rsp+4], eax	# %sfp, tmp140
	imul	eax, ecx	# D.6617, D.6617
	sub	r13d, eax	# excess, D.6617
	test	ecx, ecx	# D.6617
	jle	.L78	#,
	mov	r14, rbx	# ivtmp.117, tmp137
	mov	rbx, QWORD PTR [rsp+8]	# tid, %sfp
	xor	r15d, r15d	# curr_row
	xor	r12d, r12d	# i
	mov	rbp, rbx	# ivtmp.112, tid
	jmp	.L77	#
	.p2align 4,,10
	.p2align 3
.L76:
	mov	eax, DWORD PTR num_procs[rip]	# D.6617, num_procs
	add	r12d, 1	# i,
	add	r14, 8	# ivtmp.117,
	add	rbx, 8	# ivtmp.119,
	cmp	eax, r12d	# D.6617, i
	jle	.L100	#,
.L77:
	mov	eax, DWORD PTR [rsp+4]	# tmp140, %sfp
	test	r13d, r13d	# excess
	mov	DWORD PTR [r14], r15d	# MEM[base: _44, offset: 0B], curr_row
	lea	r8d, [rax+r15]	# D.6617,
	jle	.L101	#,
	add	r8d, 1	# D.6617,
	sub	r13d, 1	# excess,
	mov	DWORD PTR [r14+4], r8d	# MEM[base: _44, offset: 4B], D.6617
	mov	r15d, r8d	# curr_row, D.6617
.L75:
	lea	rsi, [rsp+16]	#,
	mov	rcx, r14	#, ivtmp.117
	mov	edx, OFFSET FLAT:calc_mean	#,
	mov	rdi, rbx	#, ivtmp.119
	call	pthread_create	#
	test	eax, eax	# D.6617
	je	.L76	#,
	mov	edi, OFFSET FLAT:.LC19	#,
	call	perror	#
	lea	rsi, [rsp+16]	#,
	mov	rcx, r14	#, ivtmp.117
	mov	edx, OFFSET FLAT:calc_mean	#,
	mov	rdi, rbx	#, ivtmp.119
	call	pthread_create	#
	test	eax, eax	# D.6617
	je	.L76	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6201	#,
	mov	edx, 226	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:.LC20	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L101:
	mov	DWORD PTR [r14+4], r8d	# MEM[base: _44, offset: 4B], D.6617
	mov	r15d, r8d	# curr_row, D.6617
	jmp	.L75	#
	.p2align 4,,10
	.p2align 3
.L78:
	mov	rax, QWORD PTR [rsp+72]	# tmp147, D.6622
	xor	rax, QWORD PTR fs:40	# tmp147,
	jne	.L102	#,
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	add	rsp, 88	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.p2align 4,,10
	.p2align 3
.L100:
	.cfi_restore_state
	test	eax, eax	# D.6617
	jle	.L78	#,
	xor	ebx, ebx	# i
	jmp	.L80	#
	.p2align 4,,10
	.p2align 3
.L79:
	add	ebx, 1	# i,
	add	rbp, 8	# ivtmp.112,
	cmp	DWORD PTR num_procs[rip], ebx	# num_procs, i
	jle	.L78	#,
.L80:
	mov	rdi, QWORD PTR [rbp+0]	#, MEM[base: _5, offset: 0B]
	xor	esi, esi	#
	call	pthread_join	#
	test	eax, eax	# D.6617
	je	.L79	#,
	mov	edi, OFFSET FLAT:.LC21	#,
	call	perror	#
	mov	rdi, QWORD PTR [rbp+0]	#, MEM[base: _5, offset: 0B]
	xor	esi, esi	#
	call	pthread_join	#
	test	eax, eax	# D.6617
	je	.L79	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6201	#,
	mov	edx, 232	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:.LC22	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L98:
	mov	edi, OFFSET FLAT:.LC15	#,
	call	perror	#
	mov	edi, 84	#,
	call	sysconf	#
	test	eax, eax	# D.6618
	mov	edx, eax	# D.6617, D.6618
	mov	DWORD PTR num_procs[rip], eax	# num_procs, D.6618
	jg	.L70	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6201	#,
	mov	edx, 201	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:.LC17	#,
	call	__assert_fail	#
.L102:
	call	__stack_chk_fail	#
.L99:
	call	MALLOC.part.0	#
	.cfi_endproc
.LFE86:
	.size	pthread_mean, .-pthread_mean
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.rodata.str1.8
	.align 8
.LC24:
	.string	"Error at line\n\tpthread_create(&tid[i], &attr, calc_cov, NULL) != 0\nSystem Msg"
	.align 8
.LC25:
	.string	"(pthread_create(&tid[i], &attr, calc_cov, ((void *)0)) != 0) == 0"
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	pthread_cov
	.type	pthread_cov, @function
pthread_cov:
.LFB87:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xor	esi, esi	#
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	edi, OFFSET FLAT:row_lock	#,
	sub	rsp, 72	#,
	.cfi_def_cfa_offset 112
	mov	rax, QWORD PTR fs:40	# tmp115,
	mov	QWORD PTR [rsp+56], rax	# D.6651, tmp115
	xor	eax, eax	# tmp115
	call	pthread_mutex_init	#
	mov	rdi, rsp	#,
	call	pthread_attr_init	#
	xor	esi, esi	#
	mov	rdi, rsp	#,
	call	pthread_attr_setscope	#
	movsx	rdi, DWORD PTR num_procs[rip]	#, num_procs
	mov	DWORD PTR next_row[rip], 0	# next_row,
	mov	r13, rdi	#,
	sal	rdi, 3	# D.6649,
	call	malloc	#
	test	rax, rax	# tmp111
	je	.L104	#,
	xor	r12d, r12d	# i
	test	r13d, r13d	# D.6648
	mov	rbx, rax	# ivtmp.126, tmp111
	mov	rbp, rax	# ivtmp.131, ivtmp.126
	jg	.L120	#,
	jmp	.L103	#
	.p2align 4,,10
	.p2align 3
.L106:
	mov	eax, DWORD PTR num_procs[rip]	# D.6648, num_procs
	add	r12d, 1	# i,
	add	rbp, 8	# ivtmp.131,
	cmp	eax, r12d	# D.6648, i
	jle	.L128	#,
.L120:
	xor	ecx, ecx	#
	mov	edx, OFFSET FLAT:calc_cov	#,
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, ivtmp.131
	call	pthread_create	#
	test	eax, eax	# D.6648
	je	.L106	#,
	mov	edi, OFFSET FLAT:.LC24	#,
	call	perror	#
	xor	ecx, ecx	#
	mov	edx, OFFSET FLAT:calc_cov	#,
	mov	rsi, rsp	#,
	mov	rdi, rbp	#, ivtmp.131
	call	pthread_create	#
	test	eax, eax	# D.6648
	je	.L106	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6216	#,
	mov	edx, 256	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:.LC25	#,
	call	__assert_fail	#
	.p2align 4,,10
	.p2align 3
.L103:
	mov	rax, QWORD PTR [rsp+56]	# tmp116, D.6651
	xor	rax, QWORD PTR fs:40	# tmp116,
	jne	.L129	#,
	add	rsp, 72	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	test	eax, eax	# D.6648
	jle	.L103	#,
	xor	ebp, ebp	# i
	jmp	.L110	#
	.p2align 4,,10
	.p2align 3
.L109:
	add	ebp, 1	# i,
	add	rbx, 8	# ivtmp.126,
	cmp	DWORD PTR num_procs[rip], ebp	# num_procs, i
	jle	.L103	#,
.L110:
	mov	rdi, QWORD PTR [rbx]	#, MEM[base: _5, offset: 0B]
	xor	esi, esi	#
	call	pthread_join	#
	test	eax, eax	# D.6648
	je	.L109	#,
	mov	edi, OFFSET FLAT:.LC21	#,
	call	perror	#
	mov	rdi, QWORD PTR [rbx]	#, MEM[base: _5, offset: 0B]
	xor	esi, esi	#
	call	pthread_join	#
	test	eax, eax	# D.6648
	je	.L109	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.6216	#,
	mov	edx, 261	#,
	mov	esi, OFFSET FLAT:.LC16	#,
	mov	edi, OFFSET FLAT:.LC22	#,
	call	__assert_fail	#
.L129:
	call	__stack_chk_fail	#
.L104:
	call	MALLOC.part.0	#
	.cfi_endproc
.LFE87:
	.size	pthread_cov, .-pthread_cov
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB27:
	.section	.text.startup,"ax",@progbits
.LHOTB27:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB88:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	call	parse_args	#
	movsx	rdi, DWORD PTR num_rows[rip]	#, num_rows
	mov	r14, rdi	#,
	sal	rdi, 3	# D.6686,
	call	malloc	#
	test	r14d, r14d	# D.6687
	mov	QWORD PTR matrix[rip], rax	# matrix, tmp143
	mov	r15d, DWORD PTR num_cols[rip]	# D.6687, num_cols
	jle	.L132	#,
	movsx	r13, DWORD PTR num_cols[rip]	#, num_cols
	lea	r12d, [r14-1]	# D.6686,
	mov	rbp, rax	# D.6689, tmp143
	xor	ebx, ebx	# ivtmp.154
	sal	r12, 3	# D.6686,
	mov	r15, r13	#,
	sal	r13, 2	# D.6686,
	jmp	.L133	#
	.p2align 4,,10
	.p2align 3
.L143:
	mov	rbp, QWORD PTR matrix[rip]	# D.6689, matrix
	add	rbx, 8	# ivtmp.154,
.L133:
	mov	rdi, r13	#, D.6686
	call	malloc	#
	cmp	r12, rbx	# D.6686, ivtmp.154
	mov	QWORD PTR [rbp+0+rbx], rax	# *_20, tmp147
	jne	.L143	#,
.L132:
	mov	rdi, QWORD PTR matrix[rip]	#, matrix
	mov	edx, r15d	#, D.6687
	mov	esi, r14d	#, D.6687
	call	generate_points	#
	mov	edx, DWORD PTR num_cols[rip]	#, num_cols
	mov	esi, DWORD PTR num_rows[rip]	#, num_rows
	mov	rdi, QWORD PTR matrix[rip]	#, matrix
	call	dump_points	#
	movsx	rbx, DWORD PTR num_rows[rip]	#, num_rows
	lea	r13, [0+rbx*4]	# D.6686,
	mov	rdi, r13	#, D.6686
	call	malloc	#
	lea	rdi, [0+rbx*8]	# D.6686,
	mov	QWORD PTR mean[rip], rax	# mean, tmp148
	call	malloc	#
	test	ebx, ebx	# D.6687
	mov	QWORD PTR cov[rip], rax	# cov, tmp150
	jle	.L134	#,
	lea	r12d, [rbx-1]	# D.6686,
	mov	rbp, rax	# D.6689, tmp150
	xor	ebx, ebx	# ivtmp.146
	sal	r12, 3	# D.6686,
	jmp	.L135	#
	.p2align 4,,10
	.p2align 3
.L144:
	mov	rbp, QWORD PTR cov[rip]	# D.6689, cov
	add	rbx, 8	# ivtmp.146,
.L135:
	mov	rdi, r13	#, D.6686
	call	malloc	#
	cmp	rbx, r12	# ivtmp.146, D.6686
	mov	QWORD PTR [rbp+0+rbx], rax	# *_48, tmp153
	jne	.L144	#,
.L134:
	xor	eax, eax	#
	xor	ebx, ebx	# ivtmp.138
	xor	ebp, ebp	# i
	call	pthread_mean	#
	xor	eax, eax	#
	call	pthread_cov	#
	mov	esi, DWORD PTR num_rows[rip]	# D.6687, num_rows
	mov	rdi, QWORD PTR cov[rip]	#, cov
	mov	edx, esi	#, D.6687
	call	dump_points	#
	mov	eax, DWORD PTR num_rows[rip]	#, num_rows
	test	eax, eax	#
	jle	.L137	#,
	.p2align 4,,10
	.p2align 3
.L139:
	mov	rax, QWORD PTR cov[rip]	# cov, cov
	add	ebp, 1	# i,
	mov	rdi, QWORD PTR [rax+rbx]	# *_62, *_62
	call	free	#
	mov	rax, QWORD PTR matrix[rip]	# matrix, matrix
	mov	rdi, QWORD PTR [rax+rbx]	# *_66, *_66
	add	rbx, 8	# ivtmp.138,
	call	free	#
	cmp	DWORD PTR num_rows[rip], ebp	# num_rows, i
	jg	.L139	#,
.L137:
	mov	rdi, QWORD PTR mean[rip]	#, mean
	call	free	#
	mov	rdi, QWORD PTR cov[rip]	#, cov
	call	free	#
	mov	rdi, QWORD PTR matrix[rip]	#, matrix
	call	free	#
	add	rsp, 8	#,
	.cfi_def_cfa_offset 56
	xor	eax, eax	#
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE27:
	.section	.text.startup
.LHOTE27:
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.6216, @object
	.size	__PRETTY_FUNCTION__.6216, 12
__PRETTY_FUNCTION__.6216:
	.string	"pthread_cov"
	.type	__PRETTY_FUNCTION__.6086, @object
	.size	__PRETTY_FUNCTION__.6086, 7
__PRETTY_FUNCTION__.6086:
	.string	"MALLOC"
	.align 8
	.type	__PRETTY_FUNCTION__.6201, @object
	.size	__PRETTY_FUNCTION__.6201, 13
__PRETTY_FUNCTION__.6201:
	.string	"pthread_mean"
	.comm	row_lock,40,32
	.comm	mean,8,8
	.comm	cov,8,8
	.comm	matrix,8,8
	.comm	next_row,4,4
	.comm	num_procs,4,4
	.comm	grid_size,4,4
	.comm	num_cols,4,4
	.comm	num_rows,4,4
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
