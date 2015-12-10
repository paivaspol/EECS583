; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = external global %struct.anon.0
@.str = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_IDLinearWaves() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @einsteinrest_, i64 0, i32 7), align 8, !dbg !34, !tbaa !35
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !27), !dbg !34
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !33), !dbg !38
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) #3, !dbg !39
  %call1 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !40
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  tail call void @llvm.dbg.value(metadata !41, i64 0, metadata !30), !dbg !42
  ret i32 0, !dbg !42
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_IDLinearWaves", metadata !"CCTKi_BindingsParameterRecovery_IDLinearWaves", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_IDLinearWaves, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_IDLinearWaves]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !22, metadata !23, metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !33}
!10 = metadata !{i32 786688, metadata !4, metadata !"amplitude", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [amplitude] [line 32]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786688, metadata !4, metadata !"wavecenter", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecenter] [line 32]
!14 = metadata !{i32 786688, metadata !4, metadata !"wavelength", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavelength] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"wavephi", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavephi] [line 32]
!16 = metadata !{i32 786688, metadata !4, metadata !"wavepulse", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavepulse] [line 32]
!17 = metadata !{i32 786688, metadata !4, metadata !"wavetheta", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavetheta] [line 32]
!18 = metadata !{i32 786688, metadata !4, metadata !"packet", metadata !5, i32 32, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [packet] [line 32]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{i32 786688, metadata !4, metadata !"parity", metadata !5, i32 32, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parity] [line 32]
!23 = metadata !{i32 786688, metadata !4, metadata !"teuk_no_vee", metadata !5, i32 32, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [teuk_no_vee] [line 32]
!24 = metadata !{i32 786688, metadata !4, metadata !"wavesgoing", metadata !5, i32 32, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavesgoing] [line 32]
!25 = metadata !{i32 786688, metadata !4, metadata !"mvalue", metadata !5, i32 32, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mvalue] [line 32]
!26 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!27 = metadata !{i32 786688, metadata !4, metadata !"initial_data", metadata !5, i32 32, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"use_conformal", metadata !5, i32 32, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 32]
!29 = metadata !{i32 786688, metadata !4, metadata !"use_conformal_derivs", metadata !5, i32 32, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 32]
!30 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!34 = metadata !{i32 32, i32 0, metadata !4, null}
!35 = metadata !{metadata !"any pointer", metadata !36}
!36 = metadata !{metadata !"omnipotent char", metadata !37}
!37 = metadata !{metadata !"Simple C/C++ TBAA"}
!38 = metadata !{i32 33, i32 0, metadata !4, null}
!39 = metadata !{i32 35, i32 0, metadata !4, null}
!40 = metadata !{i32 42, i32 0, metadata !4, null}
!41 = metadata !{i8* undef}
!42 = metadata !{i32 50, i32 0, metadata !4, null}
