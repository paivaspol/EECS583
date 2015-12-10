; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_BindingsParameterRecovery_IOBasic() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !32
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !28), !dbg !34
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_IOBasic", metadata !"CCTKi_BindingsParameterRecovery_IOBasic", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_IOBasic, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_IOBasic]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !31}
!10 = metadata !{i32 786688, metadata !4, metadata !"outInfo_reductions", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_reductions] [line 32]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!13 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = metadata !{i32 786688, metadata !4, metadata !"outInfo_vars", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_vars] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"outScalar_reductions", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_reductions] [line 32]
!16 = metadata !{i32 786688, metadata !4, metadata !"outScalar_style", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_style] [line 32]
!17 = metadata !{i32 786688, metadata !4, metadata !"outScalar_vars", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_vars] [line 32]
!18 = metadata !{i32 786688, metadata !4, metadata !"out_format", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 32]
!19 = metadata !{i32 786688, metadata !4, metadata !"outdirScalar", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdirScalar] [line 32]
!20 = metadata !{i32 786688, metadata !4, metadata !"outInfo_every", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_every] [line 32]
!21 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!22 = metadata !{i32 786688, metadata !4, metadata !"outScalar_every", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_every] [line 32]
!23 = metadata !{i32 786688, metadata !4, metadata !"outdir", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 32]
!24 = metadata !{i32 786688, metadata !4, metadata !"out_every", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 32]
!25 = metadata !{i32 786688, metadata !4, metadata !"newverbose", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 32]
!26 = metadata !{i32 786688, metadata !4, metadata !"new_filename_scheme", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 32]
!27 = metadata !{i32 786688, metadata !4, metadata !"out_fileinfo", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!32 = metadata !{i32 33, i32 0, metadata !4, null}
!33 = metadata !{i8* undef}
!34 = metadata !{i32 37, i32 0, metadata !4, null}
