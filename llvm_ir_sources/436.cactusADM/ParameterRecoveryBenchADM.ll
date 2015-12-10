; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [4 x i8] c"ADM\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_BenchADM() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon.1* @einsteinrest_, i64 0, i32 6), align 8, !dbg !25, !tbaa !26
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !17), !dbg !25
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !24), !dbg !29
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #3, !dbg !30
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !21), !dbg !32
  ret i32 0, !dbg !32
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_BenchADM", metadata !"CCTKi_BindingsParameterRecovery_BenchADM", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_BenchADM, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_BenchADM]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !14, metadata !15, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24}
!10 = metadata !{i32 786688, metadata !4, metadata !"method", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 32]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!13 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = metadata !{i32 786688, metadata !4, metadata !"bound", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"time_symmetric", metadata !5, i32 32, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_symmetric] [line 32]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!17 = metadata !{i32 786688, metadata !4, metadata !"evolution_system", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 32]
!18 = metadata !{i32 786688, metadata !4, metadata !"slicing", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 32]
!19 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 32]
!20 = metadata !{i32 786688, metadata !4, metadata !"timestep_outonly", metadata !5, i32 32, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 32]
!21 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!25 = metadata !{i32 32, i32 0, metadata !4, null}
!26 = metadata !{metadata !"any pointer", metadata !27}
!27 = metadata !{metadata !"omnipotent char", metadata !28}
!28 = metadata !{metadata !"Simple C/C++ TBAA"}
!29 = metadata !{i32 33, i32 0, metadata !4, null}
!30 = metadata !{i32 36, i32 0, metadata !4, null}
!31 = metadata !{i8* undef}
!32 = metadata !{i32 62, i32 0, metadata !4, null}
