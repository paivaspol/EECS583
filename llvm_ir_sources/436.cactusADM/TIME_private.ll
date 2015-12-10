; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/TIME_private.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, i32 }

@timepriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/TIME_private.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/TIME_private.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"timepriv_", metadata !"timepriv_", metadata !"", metadata !5, i32 19, metadata !6, i32 0, i32 1, %struct.anon* @timepriv_, null} ; [ DW_TAG_variable ] [timepriv_] [line 19] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/TIME_private.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 256, i64 64, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 256, align 64, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !11, metadata !12}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"courant_fac", i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [courant_fac] [line 15, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dtfac", i32 16, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [dtfac] [line 16, size 64, align 64, offset 64] [from double]
!11 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"timestep", i32 17, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [timestep] [line 17, size 64, align 64, offset 128] [from double]
!12 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"outtimestep_every", i32 18, i64 32, i64 32, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [outtimestep_every] [line 18, size 32, align 32, offset 192] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
