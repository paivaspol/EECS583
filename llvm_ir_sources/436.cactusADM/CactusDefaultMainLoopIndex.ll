; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iteration = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultMainLoopIndex.c,v 1.3 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_CactusDefaultMainLoopIndex_c() #0 {
entry:
  ret i8* getelementptr inbounds ([101 x i8]* @.str, i64 0, i64 0), !dbg !23
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CactusDefaultMainLoopIndex() #1 {
entry:
  %0 = load i32* @iteration, align 4, !dbg !24, !tbaa !25
  ret i32 %0, !dbg !24
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultSetMainLoopIndex(i32 %main_loop_index) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %main_loop_index}, i64 0, metadata !19), !dbg !28
  store i32 %main_loop_index, i32* @iteration, align 4, !dbg !29, !tbaa !25
  ret i32 %main_loop_index, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !20, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_CactusDefaultMainLoopIndex_c", metadata !"CCTKi_version_main_CactusDefaultMainLoopIndex_c", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_CactusDefaultMainLoopIndex_c, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [CCTKi_version_main_CactusDefaultMainLoopIndex_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultMainLoopIndex", metadata !"CactusDefaultMainLoopIndex", metadata !"", i32 39, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CactusDefaultMainLoopIndex, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [CactusDefaultMainLoopIndex]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultSetMainLoopIndex", metadata !"CactusDefaultSetMainLoopIndex", metadata !"", i32 59, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CactusDefaultSetMainLoopIndex, null, null, metadata !18, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [CactusDefaultSetMainLoopIndex]
!16 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !14, metadata !14}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786689, metadata !15, metadata !"main_loop_index", metadata !5, i32 16777275, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [main_loop_index] [line 59]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786484, i32 0, null, metadata !"iteration", metadata !"iteration", metadata !"", metadata !5, i32 20, metadata !14, i32 1, i32 1, i32* @iteration, null} ; [ DW_TAG_variable ] [iteration] [line 20] [local] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 16, metadata !8, i32 1, i32 1, null, null}
!23 = metadata !{i32 18, i32 0, metadata !4, null}
!24 = metadata !{i32 41, i32 0, metadata !11, null}
!25 = metadata !{metadata !"int", metadata !26}
!26 = metadata !{metadata !"omnipotent char", metadata !27}
!27 = metadata !{metadata !"Simple C/C++ TBAA"}
!28 = metadata !{i32 59, i32 0, metadata !15, null}
!29 = metadata !{i32 61, i32 0, metadata !15, null}
!30 = metadata !{i32 62, i32 0, metadata !15, null}
