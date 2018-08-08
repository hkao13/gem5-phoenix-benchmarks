	.file	"histogram-pthread.c"
	.intel_syntax noprefix
# GNU C11 (Ubuntu 5.4.0-6ubuntu1~16.04.10) version 5.4.0 20160609 (x86_64-linux-gnu)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I ../../include -I /home/henry/gem5-nej/include
# -imultiarch x86_64-linux-gnu -D _LINUX_ -D __x86_64__ histogram-pthread.c
# -masm=intel -mtune=generic -march=x86-64
# -auxbase-strip histogram-pthread.s -O3 -Wall -fverbose-asm
# -fstack-protector-strong -Wformat-security
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
	.globl	calc_hist
	.type	calc_hist, @function
calc_hist:
.LFB90:
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
	mov	rbx, QWORD PTR [rdi+8]	# D.5777, MEM[(struct thread_arg_t *)arg_3(D)].data_pos
	mov	rax, rbx	# D.5777, D.5777
	add	rax, QWORD PTR [rdi+16]	# D.5777, MEM[(struct thread_arg_t *)arg_3(D)].data_len
	movsx	rbx, ebx	# ivtmp.20, D.5777
	cmp	rbx, rax	# ivtmp.20, D.5777
	jge	.L7	#,
	lea	r14, [rdi+24]	# red,
	lea	r13, [rdi+1048]	# green,
	lea	r12, [rdi+2072]	# blue,
	mov	rbp, rdi	# arg, arg
	.p2align 4,,10
	.p2align 3
.L5:
	call	m5_approxbegin	#
	mov	r15, rbx	# val, ivtmp.20
	add	r15, QWORD PTR [rbp+0]	# val, MEM[(struct thread_arg_t *)arg_3(D)].data
	call	m5_approxend	#
	movzx	eax, BYTE PTR [r15]	#, *val_17
	add	DWORD PTR [r12+rax*4], 1	# *_22,
	call	m5_approxbegin	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct thread_arg_t *)arg_3(D)].data, MEM[(struct thread_arg_t *)arg_3(D)].data
	lea	r15, [rax+1+rbx]	# val,
	call	m5_approxend	#
	movzx	eax, BYTE PTR [r15]	#, *val_29
	add	DWORD PTR [r13+0+rax*4], 1	# *_34,
	call	m5_approxbegin	#
	mov	rax, QWORD PTR [rbp+0]	# MEM[(struct thread_arg_t *)arg_3(D)].data, MEM[(struct thread_arg_t *)arg_3(D)].data
	lea	r15, [rax+2+rbx]	# val,
	add	rbx, 3	# ivtmp.20,
	call	m5_approxend	#
	movzx	eax, BYTE PTR [r15]	#, *val_41
	add	DWORD PTR [r14+rax*4], 1	# *_46,
	mov	rax, QWORD PTR [rbp+16]	# MEM[(struct thread_arg_t *)arg_3(D)].data_len, MEM[(struct thread_arg_t *)arg_3(D)].data_len
	add	rax, QWORD PTR [rbp+8]	# D.5777, MEM[(struct thread_arg_t *)arg_3(D)].data_pos
	cmp	rbx, rax	# ivtmp.20, D.5777
	jl	.L5	#,
.L7:
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
.LFE90:
	.size	calc_hist, .-calc_hist
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"No need to swap\n"
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	test_endianess
	.type	test_endianess, @function
test_endianess:
.LFB88:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 16	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	DWORD PTR swap[rip], 0	# swap,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	test_endianess, .-test_endianess
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"Swapping %d and %d\n"
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	swap_bytes
	.type	swap_bytes, @function
swap_bytes:
.LFB89:
	.cfi_startproc
	mov	eax, esi	# tmp131, num_bytes
	shr	eax, 31	# tmp131,
	add	eax, esi	# tmp132, num_bytes
	sar	eax	# tmp133
	test	eax, eax	# tmp133
	jle	.L19	#,
	movsx	rsi, esi	# D.5798, num_bytes
	sub	eax, 1	# D.5798,
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	lea	r12, [rdi+1+rax]	# D.5805,
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	lea	rbp, [rdi-1+rsi]	# ivtmp.33,
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi	# bytes, bytes
	.p2align 4,,10
	.p2align 3
.L14:
	movsx	ecx, BYTE PTR [rbx]	# D.5801, MEM[base: _32, offset: 0B]
	movsx	r8d, BYTE PTR [rbp+0]	#, MEM[base: _33, offset: 0B]
	mov	edx, OFFSET FLAT:.LC3	#,
	mov	rdi, QWORD PTR stdout[rip]	#, stdout
	xor	eax, eax	#
	mov	esi, 1	#,
	add	rbx, 1	# ivtmp.36,
	sub	rbp, 1	# ivtmp.33,
	call	__fprintf_chk	#
	movzx	edx, BYTE PTR [rbp+1]	# D.5800, MEM[base: _33, offset: 0B]
	movzx	eax, BYTE PTR [rbx-1]	# tmp, MEM[base: _32, offset: 0B]
	mov	BYTE PTR [rbx-1], dl	# MEM[base: _32, offset: 0B], D.5800
	mov	BYTE PTR [rbp+1], al	# MEM[base: _33, offset: 0B], tmp
	cmp	rbx, r12	# ivtmp.36, D.5805
	jne	.L14	#,
	pop	rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	pop	rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 8
.L19:
	rep ret
	.cfi_endproc
.LFE89:
	.size	swap_bytes, .-swap_bytes
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"USAGE: %s <bitmap filename>\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"Error at line\n\t(fd = open(fname, O_RDONLY)) < 0\nSystem Msg"
	.section	.rodata.str1.1
.LC7:
	.string	"histogram-pthread.c"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"((fd = open(fname, 00)) < 0) == 0"
	.align 8
.LC9:
	.string	"Error at line\n\tfstat(fd, &finfo) < 0\nSystem Msg"
	.section	.rodata.str1.1
.LC10:
	.string	"(fstat(fd, &finfo) < 0) == 0"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"Error at line\n\t(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\nSystem Msg"
	.align 8
.LC12:
	.string	"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void *)0)) == 0"
	.align 8
.LC13:
	.string	"File is not a valid bitmap file. Exiting"
	.align 8
.LC14:
	.string	"Error: Invalid bitmap format - "
	.align 8
.LC15:
	.string	"This application only accepts 24-bit pictures. Exiting"
	.align 8
.LC16:
	.string	"This file has %d bytes of image data, %d pixels\n"
	.section	.rodata.str1.1
.LC17:
	.string	"Starting pthreads histogram"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Error at line\n\t(num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0\nSystem Msg"
	.align 8
.LC19:
	.string	"((num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0) == 0"
	.align 8
.LC20:
	.string	"Error at line\n\t(pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == NULL\nSystem Msg"
	.align 8
.LC21:
	.string	"((pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == ((void *)0)) == 0"
	.align 8
.LC22:
	.string	"Error at line\n\t(arg = (thread_arg_t *)calloc(sizeof(thread_arg_t), num_procs)) == NULL\nSystem Msg"
	.align 8
.LC23:
	.string	"((arg = (thread_arg_t *)calloc(sizeof(thread_arg_t), num_procs)) == ((void *)0)) == 0"
	.section	.rodata.str1.1
.LC24:
	.string	"\n\nBlue\n"
.LC25:
	.string	"----------\n\n"
.LC26:
	.string	"%d - %d\n"
.LC27:
	.string	"\n\nGreen\n"
.LC28:
	.string	"\n\nRed\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"Error at line\n\tmunmap(fdata, finfo.st_size + 1) < 0\nSystem Msg"
	.align 8
.LC30:
	.string	"(munmap(fdata, finfo.st_size + 1) < 0) == 0"
	.align 8
.LC31:
	.string	"Error at line\n\tclose(fd) < 0\nSystem Msg"
	.section	.rodata.str1.1
.LC32:
	.string	"(close(fd) < 0) == 0"
	.section	.text.unlikely
.LCOLDB33:
	.section	.text.startup,"ax",@progbits
.LHOTB33:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB91:
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
	sub	rsp, 3384	#,
	.cfi_def_cfa_offset 3440
	mov	rbx, QWORD PTR [rsi+8]	# D.5907, MEM[(char * *)argv_34(D) + 8B]
	mov	rax, QWORD PTR fs:40	# tmp319,
	mov	QWORD PTR [rsp+3368], rax	# D.5920, tmp319
	xor	eax, eax	# tmp319
	test	rbx, rbx	# D.5907
	je	.L58	#,
	xor	esi, esi	#
	xor	eax, eax	#
	mov	rdi, rbx	#, D.5907
	call	open	#
	test	eax, eax	# fd
	mov	DWORD PTR [rsp+48], eax	# %sfp, fd
	js	.L59	#,
.L22:
	mov	esi, DWORD PTR [rsp+48]	#, %sfp
	lea	rdx, [rsp+144]	# tmp324,
	mov	edi, 1	#,
	call	__fxstat	#
	test	eax, eax	# D.5908
	js	.L60	#,
.L23:
	mov	rax, QWORD PTR [rsp+192]	# tmp326, finfo.st_size
	mov	r8d, DWORD PTR [rsp+48]	#, %sfp
	xor	r9d, r9d	#
	xor	edi, edi	#
	mov	ecx, 2	#,
	mov	edx, 3	#,
	lea	rsi, [rax+1]	# D.5909,
	call	mmap	#
	test	rax, rax	# fdata
	mov	QWORD PTR [rsp+16], rax	# %sfp, fdata
	je	.L61	#,
.L24:
	cmp	BYTE PTR [rax], 66	# *fdata_9,
	jne	.L25	#,
	cmp	BYTE PTR [rax+1], 77	# MEM[(char *)fdata_9 + 1B],
	jne	.L25	#,
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 16	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC1	#,
	call	fwrite	#
	mov	rax, QWORD PTR [rsp+16]	# fdata, %sfp
	mov	DWORD PTR swap[rip], 0	# swap,
	cmp	WORD PTR [rax+28], 24	# MEM[(short unsigned int *)fdata_9 + 28B],
	jne	.L62	#,
	movzx	eax, WORD PTR [rax+10]	# D.5908, MEM[(short unsigned int *)fdata_9 + 10B]
	mov	esi, DWORD PTR [rsp+192]	# imgdata_bytes, finfo.st_size
	mov	r15d, 1431655766	# tmp244,
	mov	edi, 1	#,
	lea	rbx, [rsp+288]	# tmp305,
	lea	r14, [rsp+1312]	# tmp302,
	lea	rbp, [rsp+2336]	# tmp303,
	sub	esi, eax	# imgdata_bytes, D.5908
	mov	eax, esi	# tmp320, imgdata_bytes
	imul	r15d	# tmp244
	mov	eax, esi	# tmp245, imgdata_bytes
	sar	eax, 31	# tmp245,
	sub	edx, eax	# num_pixels, tmp245
	xor	eax, eax	#
	mov	ecx, edx	#, num_pixels
	mov	r15d, edx	# num_pixels, num_pixels
	mov	edx, esi	#, imgdata_bytes
	mov	esi, OFFSET FLAT:.LC16	#,
	call	__printf_chk	#
	mov	edi, OFFSET FLAT:.LC17	#,
	call	puts	#
	xor	eax, eax	# tmp248
	mov	ecx, 128	# tmp249,
	mov	rdi, rbx	# tmp247, tmp305
	rep stosq
	mov	ecx, 128	# tmp253,
	mov	rdi, r14	# tmp251, tmp302
	rep stosq
	mov	ecx, 128	# tmp257,
	mov	rdi, rbp	# tmp255, tmp303
	rep stosq
	lea	rdi, [rsp+80]	#,
	call	pthread_attr_init	#
	lea	rdi, [rsp+80]	#,
	xor	esi, esi	#
	call	pthread_attr_setscope	#
	mov	edi, 84	#,
	call	sysconf	#
	test	eax, eax	# D.5909
	mov	r12d, eax	# num_procs, D.5909
	jle	.L63	#,
.L28:
	lea	eax, [r12-1]	# num_procs,
	mov	edi, eax	# num_procs, num_procs
	mov	DWORD PTR [rsp+52], eax	# %sfp, num_procs
	mov	eax, r15d	# tmp260, num_pixels
	cdq
	movsx	r13, edi	#, num_procs
	idiv	edi	# num_procs
	mov	DWORD PTR [rsp+24], eax	# %sfp, tmp260
	lea	rax, [0+r13*8]	# D.5910,
	mov	r15d, edx	# excess, excess
	mov	rdi, rax	#, D.5910
	mov	QWORD PTR [rsp+8], rax	# %sfp, D.5910
	call	malloc	#
	test	rax, rax	# pid
	mov	QWORD PTR [rsp+40], rax	# %sfp, pid
	je	.L64	#,
.L29:
	mov	rsi, r13	#, D.5910
	mov	edi, 3096	#,
	call	calloc	#
	test	rax, rax	# arg
	mov	QWORD PTR [rsp+56], rax	# %sfp, arg
	je	.L65	#,
.L31:
	mov	rax, QWORD PTR [rsp+16]	# fdata, %sfp
	movzx	r11d, WORD PTR [rax+10]	# curr_pos, MEM[(short unsigned int *)fdata_9 + 10B]
	mov	eax, DWORD PTR [rsp+52]	#, %sfp
	test	eax, eax	#
	je	.L32	#,
	movsx	rax, DWORD PTR [rsp+24]	# D.5909, %sfp
	mov	rdi, QWORD PTR [rsp+56]	# arg, %sfp
	mov	rcx, QWORD PTR [rsp+40]	# pid, %sfp
	mov	QWORD PTR [rsp+32], rax	# %sfp, D.5909
	lea	eax, [r12-2]	# D.5916,
	mov	r13, rcx	# ivtmp.117, pid
	mov	r9, r13	# ivtmp.126, ivtmp.126
	mov	r12, r11	# curr_pos, curr_pos
	mov	QWORD PTR [rsp+72], rcx	# %sfp, ivtmp.117
	add	rax, 1	# D.5916,
	mov	r13, rdi	# ivtmp.122, ivtmp.122
	mov	QWORD PTR [rsp+64], rax	# %sfp, D.5916
	imul	rax, rax, 3096	# D.5916, D.5916,
	add	rax, rdi	# D.5915, arg
	mov	QWORD PTR [rsp+24], rax	# %sfp, D.5915
	.p2align 4,,10
	.p2align 3
.L34:
	mov	rax, QWORD PTR [rsp+16]	# fdata, %sfp
	mov	rdi, QWORD PTR [rsp+32]	# D.5909, %sfp
	test	r15d, r15d	# excess
	mov	QWORD PTR [r13+8], r12	# MEM[base: _96, offset: 8B], curr_pos
	mov	QWORD PTR [r13+0], rax	# MEM[base: _96, offset: 0B], fdata
	mov	rax, rdi	# D.5909, D.5909
	jle	.L33	#,
	add	rax, 1	# D.5909,
	sub	r15d, 1	# excess,
.L33:
	lea	rax, [rax+rax*2]	# tmp273,
	lea	rsi, [rsp+80]	#,
	mov	rcx, r13	#, ivtmp.122
	mov	rdi, r9	#, ivtmp.126
	mov	edx, OFFSET FLAT:calc_hist	#,
	mov	QWORD PTR [rsp+8], r9	# %sfp, ivtmp.126
	mov	QWORD PTR [r13+16], rax	# MEM[base: _96, offset: 16B], tmp273
	add	r12, rax	# curr_pos, tmp273
	add	r13, 3096	# ivtmp.122,
	call	pthread_create	#
	mov	r9, QWORD PTR [rsp+8]	# ivtmp.126, %sfp
	add	r9, 8	# ivtmp.126,
	cmp	r13, QWORD PTR [rsp+24]	# ivtmp.122, %sfp
	jne	.L34	#,
	mov	rax, QWORD PTR [rsp+40]	# pid, %sfp
	mov	rdi, QWORD PTR [rsp+64]	# D.5916, %sfp
	mov	r13, QWORD PTR [rsp+72]	# ivtmp.117, %sfp
	lea	r12, [rax+rdi*8]	# D.5915,
	.p2align 4,,10
	.p2align 3
.L35:
	mov	rdi, QWORD PTR [r13+0]	#, MEM[base: _246, offset: 0B]
	xor	esi, esi	#
	add	r13, 8	# ivtmp.117,
	call	pthread_join	#
	cmp	r12, r13	# D.5915, ivtmp.117
	jne	.L35	#,
	mov	rdx, QWORD PTR [rsp+56]	# ivtmp.109, %sfp
	mov	r8d, DWORD PTR [rsp+52]	# num_procs, %sfp
	xor	edi, edi	# i
	add	rdx, 24	# ivtmp.109,
	.p2align 4,,10
	.p2align 3
.L36:
	lea	rsi, [rdx+1024]	# D.5918,
	lea	rcx, [rdx+2048]	# D.5918,
	xor	eax, eax	# ivtmp.93
	.p2align 4,,10
	.p2align 3
.L38:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]	# tmp279, MEM[base: vectp.43_262, index: ivtmp.93_286, offset: 0B]
	paddd	xmm0, XMMWORD PTR [rbx+rax]	# vect__123.45, MEM[symbol: red, index: ivtmp.93_286, offset: 0B]
	movaps	XMMWORD PTR [rbx+rax], xmm0	# MEM[symbol: red, index: ivtmp.93_286, offset: 0B], vect__123.45
	movdqu	xmm0, XMMWORD PTR [rsi+rax]	# tmp283, MEM[base: _250, index: ivtmp.93_286, offset: 0B]
	paddd	xmm0, XMMWORD PTR [r14+rax]	# vect__127.54, MEM[symbol: green, index: ivtmp.93_286, offset: 0B]
	movaps	XMMWORD PTR [r14+rax], xmm0	# MEM[symbol: green, index: ivtmp.93_286, offset: 0B], vect__127.54
	movdqu	xmm0, XMMWORD PTR [rcx+rax]	# tmp288, MEM[base: _243, index: ivtmp.93_286, offset: 0B]
	paddd	xmm0, XMMWORD PTR [rbp+0+rax]	# vect__131.63, MEM[symbol: blue, index: ivtmp.93_286, offset: 0B]
	movaps	XMMWORD PTR [rbp+0+rax], xmm0	# MEM[symbol: blue, index: ivtmp.93_286, offset: 0B], vect__131.63
	add	rax, 16	# ivtmp.93,
	cmp	rax, 1024	# ivtmp.93,
	jne	.L38	#,
	add	edi, 1	# i,
	add	rdx, 3096	# ivtmp.109,
	cmp	r8d, edi	# num_procs, i
	jg	.L36	#,
.L32:
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 7	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC24	#,
	xor	r12d, r12d	# ivtmp.83
	call	fwrite	#
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 12	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC25	#,
	call	fwrite	#
	.p2align 4,,10
	.p2align 3
.L37:
	mov	r8d, DWORD PTR [rbp+0+r12*4]	#, MEM[symbol: blue, index: ivtmp.83_279, step: 4, offset: 0B]
	mov	rdi, QWORD PTR stdout[rip]	#, stdout
	mov	ecx, r12d	#, ivtmp.83
	xor	eax, eax	#
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 1	#,
	add	r12, 1	# ivtmp.83,
	call	__fprintf_chk	#
	cmp	r12, 256	# ivtmp.83,
	jne	.L37	#,
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 8	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC27	#,
	xor	r12d, r12d	# ivtmp.75
	call	fwrite	#
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 12	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC25	#,
	call	fwrite	#
	.p2align 4,,10
	.p2align 3
.L39:
	mov	r8d, DWORD PTR [r14+r12*4]	#, MEM[symbol: green, index: ivtmp.75_274, step: 4, offset: 0B]
	mov	rdi, QWORD PTR stdout[rip]	#, stdout
	mov	ecx, r12d	#, ivtmp.75
	xor	eax, eax	#
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 1	#,
	add	r12, 1	# ivtmp.75,
	call	__fprintf_chk	#
	cmp	r12, 256	# ivtmp.75,
	jne	.L39	#,
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 6	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC28	#,
	xor	r12d, r12d	# ivtmp.67
	call	fwrite	#
	mov	rcx, QWORD PTR stdout[rip]	#, stdout
	mov	edx, 12	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC25	#,
	call	fwrite	#
	.p2align 4,,10
	.p2align 3
.L40:
	mov	r8d, DWORD PTR [rbx+r12*4]	#, MEM[symbol: red, index: ivtmp.67_217, step: 4, offset: 0B]
	mov	rdi, QWORD PTR stdout[rip]	#, stdout
	mov	ecx, r12d	#, ivtmp.67
	xor	eax, eax	#
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 1	#,
	add	r12, 1	# ivtmp.67,
	call	__fprintf_chk	#
	cmp	r12, 256	# ivtmp.67,
	jne	.L40	#,
	mov	rax, QWORD PTR [rsp+192]	# tmp365, finfo.st_size
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	lea	rsi, [rax+1]	# D.5909,
	call	munmap	#
	test	eax, eax	# D.5908
	js	.L66	#,
.L41:
	mov	edi, DWORD PTR [rsp+48]	#, %sfp
	call	close	#
	test	eax, eax	# D.5908
	js	.L67	#,
.L42:
	mov	rdi, QWORD PTR [rsp+40]	#, %sfp
	call	free	#
	xor	eax, eax	#
	mov	rdi, QWORD PTR [rsp+3368]	# tmp321, D.5920
	xor	rdi, QWORD PTR fs:40	# tmp321,
	jne	.L68	#,
	add	rsp, 3384	#,
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
	ret
.L67:
	.cfi_restore_state
	mov	edi, OFFSET FLAT:.LC31	#,
	call	perror	#
	mov	edi, DWORD PTR [rsp+48]	#, %sfp
	call	close	#
	test	eax, eax	# D.5908
	jns	.L42	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 272	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC32	#,
	call	__assert_fail	#
.L66:
	mov	edi, OFFSET FLAT:.LC29	#,
	call	perror	#
	mov	rax, QWORD PTR [rsp+192]	# tmp366, finfo.st_size
	mov	rdi, QWORD PTR [rsp+16]	#, %sfp
	lea	rsi, [rax+1]	# D.5909,
	call	munmap	#
	test	eax, eax	# D.5908
	jns	.L41	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 271	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC30	#,
	call	__assert_fail	#
.L63:
	mov	edi, OFFSET FLAT:.LC18	#,
	call	perror	#
	mov	edi, 84	#,
	call	sysconf	#
	test	eax, eax	# D.5909
	mov	r12d, eax	# num_procs, D.5909
	jg	.L28	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 216	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC19	#,
	call	__assert_fail	#
.L60:
	mov	edi, OFFSET FLAT:.LC9	#,
	call	perror	#
	mov	esi, DWORD PTR [rsp+48]	#, %sfp
	lea	rdx, [rsp+144]	# tmp325,
	mov	edi, 1	#,
	call	__fxstat	#
	test	eax, eax	# D.5908
	jns	.L23	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 173	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC10	#,
	call	__assert_fail	#
.L59:
	mov	edi, OFFSET FLAT:.LC6	#,
	call	perror	#
	xor	esi, esi	#
	xor	eax, eax	#
	mov	rdi, rbx	#, D.5907
	call	open	#
	test	eax, eax	# fd
	mov	DWORD PTR [rsp+48], eax	# %sfp, fd
	jns	.L22	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 171	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC8	#,
	call	__assert_fail	#
.L65:
	mov	edi, OFFSET FLAT:.LC22	#,
	call	perror	#
	mov	rsi, r13	#, D.5910
	mov	edi, 3096	#,
	call	calloc	#
	test	rax, rax	# arg
	mov	QWORD PTR [rsp+56], rax	# %sfp, arg
	jne	.L31	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 222	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC23	#,
	call	__assert_fail	#
.L61:
	mov	edi, OFFSET FLAT:.LC11	#,
	call	perror	#
	mov	rax, QWORD PTR [rsp+192]	# tmp328, finfo.st_size
	mov	r8d, DWORD PTR [rsp+48]	#, %sfp
	xor	r9d, r9d	#
	xor	edi, edi	#
	mov	ecx, 2	#,
	mov	edx, 3	#,
	lea	rsi, [rax+1]	# D.5909,
	call	mmap	#
	test	rax, rax	# fdata
	mov	QWORD PTR [rsp+16], rax	# %sfp, fdata
	jne	.L24	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 176	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC12	#,
	call	__assert_fail	#
.L64:
	mov	edi, OFFSET FLAT:.LC20	#,
	call	perror	#
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	malloc	#
	test	rax, rax	# pid
	mov	QWORD PTR [rsp+40], rax	# %sfp, pid
	jne	.L29	#,
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.5458	#,
	mov	edx, 221	#,
	mov	esi, OFFSET FLAT:.LC7	#,
	mov	edi, OFFSET FLAT:.LC21	#,
	call	__assert_fail	#
.L68:
	call	__stack_chk_fail	#
.L58:
	mov	rdx, QWORD PTR [rsi]	#, *argv_34(D)
	mov	edi, 1	#,
	mov	esi, OFFSET FLAT:.LC5	#,
	call	__printf_chk	#
	mov	edi, 1	#,
	call	exit	#
.L25:
	mov	edi, OFFSET FLAT:.LC13	#,
	call	puts	#
	mov	edi, 1	#,
	call	exit	#
.L62:
	mov	esi, OFFSET FLAT:.LC14	#,
	mov	edi, 1	#,
	xor	eax, eax	#
	call	__printf_chk	#
	mov	edi, OFFSET FLAT:.LC15	#,
	call	puts	#
	mov	edi, 1	#,
	call	exit	#
	.cfi_endproc
.LFE91:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE33:
	.section	.text.startup
.LHOTE33:
	.section	.rodata
	.type	__PRETTY_FUNCTION__.5458, @object
	.size	__PRETTY_FUNCTION__.5458, 5
__PRETTY_FUNCTION__.5458:
	.string	"main"
	.comm	swap,4,4
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
