; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_Time() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !dbg !26, !tbaa !27
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !10), !dbg !26
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !25), !dbg !30
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !31
  %tobool = icmp eq i32 %call, 0, !dbg !31
  br i1 %tobool, label %if.else, label %if.end7, !dbg !31

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !32
  %tobool2 = icmp eq i32 %call1, 0, !dbg !32
  br i1 %tobool2, label %lor.lhs.false, label %if.end7, !dbg !32

lor.lhs.false:                                    ; preds = %if.else
  %call3 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !33
  br label %if.end7, !dbg !33

if.end7:                                          ; preds = %if.else, %entry, %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  tail call void @llvm.dbg.value(metadata !34, i64 0, metadata !22), !dbg !35
  ret i32 0, !dbg !35
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_Time", metadata !"CCTKi_BindingsParameterRecovery_Time", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_Time, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_Time]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !14, metadata !16, metadata !19, metadata !20, metadata !21, metadata !22, metadata !25}
!10 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 32]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!13 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = metadata !{i32 786688, metadata !4, metadata !"timestep_outonly", metadata !5, i32 32, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 32]
!15 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!16 = metadata !{i32 786688, metadata !4, metadata !"courant_fac", metadata !5, i32 32, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_fac] [line 32]
!17 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!18 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 786688, metadata !4, metadata !"dtfac", metadata !5, i32 32, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 32]
!20 = metadata !{i32 786688, metadata !4, metadata !"timestep", metadata !5, i32 32, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep] [line 32]
!21 = metadata !{i32 786688, metadata !4, metadata !"outtimestep_every", metadata !5, i32 32, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outtimestep_every] [line 32]
!22 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!26 = metadata !{i32 32, i32 0, metadata !4, null}
!27 = metadata !{metadata !"any pointer", metadata !28}
!28 = metadata !{metadata !"omnipotent char", metadata !29}
!29 = metadata !{metadata !"Simple C/C++ TBAA"}
!30 = metadata !{i32 33, i32 0, metadata !4, null}
!31 = metadata !{i32 37, i32 0, metadata !4, null}
!32 = metadata !{i32 44, i32 0, metadata !4, null}
!33 = metadata !{i32 46, i32 0, metadata !4, null}
!34 = metadata !{i8* undef}
!35 = metadata !{i32 62, i32 0, metadata !4, null}
