; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Global.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

@cctk_params_global_ = common global %struct.anon zeroinitializer, align 4

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Global.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Global.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"cctk_params_global_", metadata !"cctk_params_global_", metadata !"", metadata !5, i32 16, metadata !6, i32 0, i32 1, %struct.anon* @cctk_params_global_, null} ; [ DW_TAG_variable ] [cctk_params_global_] [line 16] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Global.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 32, i64 32, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 32, align 32, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"dummy_parameter", i32 15, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [dummy_parameter] [line 15, size 32, align 32, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
