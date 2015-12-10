; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTK_IsOverloaded(i8* nocapture %function) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %function}, i64 0, metadata !13), !dbg !27
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !14), !dbg !28
  tail call void @llvm.dbg.value(metadata !{i8* %function}, i64 0, metadata !15), !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_isoverloaded_(i32* nocapture %ret, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ret}, i64 0, metadata !23), !dbg !31
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !24), !dbg !31
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !25), !dbg !31
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !32
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !26), !dbg !32
  store i32 0, i32* %ret, align 4, !dbg !33, !tbaa !34
  tail call void @free(i8* %call) #5, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_IsOverloaded", metadata !"CCTK_IsOverloaded", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_IsOverloaded, null, null, metadata !12, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [CCTK_IsOverloaded]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IsOverloaded.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{metadata !13, metadata !14, metadata !15}
!13 = metadata !{i32 786689, metadata !4, metadata !"function", metadata !5, i32 16777234, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [function] [line 18]
!14 = metadata !{i32 786688, metadata !4, metadata !"retval", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 20]
!15 = metadata !{i32 786688, metadata !4, metadata !"cctk_dummy_string", metadata !5, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_string] [line 22]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_isoverloaded_", metadata !"cctk_isoverloaded_", metadata !"", i32 32, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_isoverloaded_, null, null, metadata !22, i32 34} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 34] [cctk_isoverloaded_]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19, metadata !20, metadata !21}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26}
!23 = metadata !{i32 786689, metadata !16, metadata !"ret", metadata !5, i32 16777249, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret] [line 33]
!24 = metadata !{i32 786689, metadata !16, metadata !"cctk_str1", metadata !5, i32 33554465, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 33]
!25 = metadata !{i32 786689, metadata !16, metadata !"cctk_strlen1", metadata !5, i32 50331681, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 33]
!26 = metadata !{i32 786688, metadata !16, metadata !"name", metadata !5, i32 35, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 35]
!27 = metadata !{i32 18, i32 0, metadata !4, null}
!28 = metadata !{i32 20, i32 0, metadata !4, null}
!29 = metadata !{i32 24, i32 0, metadata !4, null}
!30 = metadata !{i32 26, i32 0, metadata !4, null}
!31 = metadata !{i32 33, i32 0, metadata !16, null}
!32 = metadata !{i32 35, i32 0, metadata !16, null}
!33 = metadata !{i32 36, i32 0, metadata !16, null}
!34 = metadata !{metadata !"int", metadata !35}
!35 = metadata !{metadata !"omnipotent char", metadata !36}
!36 = metadata !{metadata !"Simple C/C++ TBAA"}
!37 = metadata !{i32 37, i32 0, metadata !16, null}
!38 = metadata !{i32 38, i32 0, metadata !16, null}
