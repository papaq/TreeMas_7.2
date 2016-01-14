cileBoth:
		g++ -c CreateTre.cpp
		g++ -c SearchTree.cpp
cileBothOpt:
		g++ -c  CreateTre.cpp  -fomit-frame-pointer 
		g++ -c  SearchTree.cpp -fomit-frame-pointer 
cileTogether:
		g++ -c -std=c++11 main.cpp
		g++ main.o CreateTre.o SearchTree.o -o jura
cileAll:
		g++ -std=c++11 main.cpp CreateTre.cpp SearchTree.cpp -o jura
cileAllProf:
		g++ -pg -std=c++11 main.o CreateTre.o SearchTree.o -o jura
runJuraRun:
		./jura 16
makeProf:
		gprof jura gmon.out > ./Gprof/juraProf.txt
asmCreate:
		gcc -c -g -Wa,-a,-ad CreateTree.cpp > ./Gprof/CreateTree.s
asmCreate1:
		g++ -O1 -S -fverbose-asm CreateTree.cpp

asmSearch:
		gcc -c -g -Wa,-a,-ad SearchTree.cpp > ./Gprof/SearchTree.s

remove:
		rm jura sufile.o


b00:
		g++ -c CreateTre.cpp -faggressive-loop-optimizations -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types -fexceptions
		g++ -c SearchTree.cpp -faggressive-loop-optimizations -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types -fexceptions
b1:
		g++ -c CreateTre.cpp -faggressive-loop-optimizations
		g++ -c SearchTree.cpp -faggressive-loop-optimizations
b2:
		g++ -c CreateTre.cpp -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
		g++ -c SearchTree.cpp -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
b3:
		g++ -c CreateTre.cpp -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
		g++ -c SearchTree.cpp -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
b4:
		g++ -c CreateTre.cpp -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
		g++ -c SearchTree.cpp -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
b6:
		g++ -c CreateTre.cpp -fchkp-store-bounds -fchkp-use-static-bounds
		g++ -c SearchTree.cpp -fchkp-store-bounds -fchkp-use-static-bounds
b7:
		g++ -c CreateTre.cpp -fchkp-use-static-const-bounds -fchkp-use-wrappers
		g++ -c SearchTree.cpp -fchkp-use-static-const-bounds -fchkp-use-wrappers
b8:
		g++ -c CreateTre.cpp -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
		g++ -c SearchTree.cpp -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
b9:
		g++ -c CreateTre.cpp -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
		g++ -c SearchTree.cpp -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
b10:
		g++ -c CreateTre.cpp -fearly-inlining -feliminate-unused-debug-types -fexceptions
		g++ -c SearchTree.cpp -fearly-inlining -feliminate-unused-debug-types -fexceptions
b01:
		g++ -c CreateTre.cpp -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability -fident -fif-conversion -fif-conversion2 -finline -finline-atomics -finline-functions-called-once -fipa-profile -fipa-pure-const -fipa-reference -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots -fivopts -fkeep-static-consts  -flifetime-dse -flto-odr-type-merging -fmath-errno -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer -fpeephole -fprefetch-loop-arrays -freg-struct-return -fsched-critical-path-heuristic -fsched-dep-count-heuristic
		g++ -c SearchTree.cpp -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability -fident -fif-conversion -fif-conversion2 -finline -finline-atomics -finline-functions-called-once -fipa-profile -fipa-pure-const -fipa-reference -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots -fivopts -fkeep-static-consts  -flifetime-dse -flto-odr-type-merging -fmath-errno -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer -fpeephole -fprefetch-loop-arrays -freg-struct-return -fsched-critical-path-heuristic -fsched-dep-count-heuristic
b11:
		g++ -c CreateTre.cpp -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
		g++ -c SearchTree.cpp -fforward-propagate -ffunction-cse -fgcse-lm -fgnu-runtime -fgnu-unique
b12:
		g++ -c CreateTre.cpp -fguess-branch-probability -fident -fif-conversion -fif-conversion2
		g++ -c SearchTree.cpp -fguess-branch-probability -fident -fif-conversion -fif-conversion2
b13:
		g++ -c CreateTre.cpp -finline -finline-atomics -finline-functions-called-once -fipa-profile
		g++ -c SearchTree.cpp -finline -finline-atomics -finline-functions-called-once -fipa-profile
b14:
		g++ -c CreateTre.cpp -fipa-pure-const -fipa-reference -fira-hoist-pressure
		g++ -c SearchTree.cpp -fipa-pure-const -fipa-reference -fira-hoist-pressure
b15:
		g++ -c CreateTre.cpp -fira-share-save-slots -fira-share-spill-slots -fivopts
		g++ -c SearchTree.cpp -fira-share-save-slots -fira-share-spill-slots -fivopts
b16:
		g++ -c CreateTre.cpp -fkeep-static-consts  -flifetime-dse
		g++ -c SearchTree.cpp -fkeep-static-consts  -flifetime-dse
b17:
		g++ -c CreateTre.cpp -flto-odr-type-merging -fmath-errno -fmerge-constants
		g++ -c SearchTree.cpp -flto-odr-type-merging -fmath-errno -fmerge-constants
b18:
		g++ -c CreateTre.cpp -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
		g++ -c SearchTree.cpp -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
b19:
		g++ -c CreateTre.cpp -fpeephole -fprefetch-loop-arrays -freg-struct-return
		g++ -c SearchTree.cpp -fpeephole -fprefetch-loop-arrays -freg-struct-return
b20:
		g++ -c CreateTre.cpp -fsched-critical-path-heuristic -fsched-dep-count-heuristic
		g++ -c SearchTree.cpp -fsched-critical-path-heuristic -fsched-dep-count-heuristic
b02:
		g++ -c CreateTre.cpp -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
		g++ -c SearchTree.cpp -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-phiopt -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
b21:
		g++ -c CreateTre.cpp -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
		g++ -c SearchTree.cpp -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
b22:
		g++ -c CreateTre.cpp -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
		g++ -c SearchTree.cpp -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
b23:
		g++ -c CreateTre.cpp -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
		g++ -c SearchTree.cpp -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
b24:
		g++ -c CreateTre.cpp -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
		g++ -c SearchTree.cpp -fshow-column -fshrink-wrap -fsigned-zeros -fsplit-ivs-in-unroller
b25:
		g++ -c CreateTre.cpp -fsplit-wide-types -fssa-phiopt -fstack-protector-strong -fstdarg-opt
		g++ -c SearchTree.cpp -fsplit-wide-types -fssa-phiopt -fstack-protector-strong -fstdarg-opt
b26:
		g++ -c CreateTre.cpp -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
		g++ -c SearchTree.cpp -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
b27:
		g++ -c CreateTre.cpp -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-coalesce-vars
		g++ -c SearchTree.cpp -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch -ftree-coalesce-vars
b28:
		g++ -c CreateTre.cpp -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
		g++ -c SearchTree.cpp -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
b29:
		g++ -c CreateTre.cpp -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
		g++ -c SearchTree.cpp -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
b30:
		g++ -c CreateTre.cpp -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
		g++ -c SearchTree.cpp -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
b03:
		g++ -c CreateTre.cpp -ftree-loop-optimize -ftree-parallelize-loops=5 -ftree-phiprop -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -malign-stringops -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs -mvzeroupper
		g++ -c SearchTree.cpp -ftree-loop-optimize -ftree-parallelize-loops=5 -ftree-phiprop -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -malign-stringops -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs -mvzeroupper
b31:
		g++ -c CreateTre.cpp -ftree-loop-optimize -ftree-parallelize-loops=5 -ftree-phiprop -ftree-pta
		g++ -c SearchTree.cpp -ftree-loop-optimize -ftree-parallelize-loops=5 -ftree-phiprop -ftree-pta
b32:
		g++ -c CreateTre.cpp -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
		g++ -c SearchTree.cpp -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
b33:
		g++ -c CreateTre.cpp -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm
		g++ -c SearchTree.cpp -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm
b34:
		g++ -c CreateTre.cpp -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
		g++ -c SearchTree.cpp -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
b35:
		g++ -c CreateTre.cpp -malign-stringops -mavx256-split-unaligned-load
		g++ -c SearchTree.cpp -malign-stringops -mavx256-split-unaligned-load
b36:
		g++ -c CreateTre.cpp -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
		g++ -c SearchTree.cpp -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
b37:
		g++ -c CreateTre.cpp -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
		g++ -c SearchTree.cpp -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
b38:
		g++ -c CreateTre.cpp -msse -msse2 -mtls-direct-seg-refs -mvzeroupper
		g++ -c SearchTree.cpp -msse -msse2 -mtls-direct-seg-refs -mvzeroupper
