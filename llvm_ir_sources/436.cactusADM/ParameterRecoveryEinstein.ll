; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i8*, i32 }

@einsteinrest_ = external global %struct.anon
@timerest_ = external global %struct.anon.2
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"psiminustwo\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"isotropic\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"courant\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_Einstein() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !22), !dbg !48
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !23), !dbg !48
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !24), !dbg !48
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !26), !dbg !48
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !27), !dbg !48
  %5 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !dbg !48, !tbaa !49
  tail call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !43), !dbg !48
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !52
  %call = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3, !dbg !53
  %call13 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !54
  %call17 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !55
  %tobool18 = icmp eq i32 %call17, 0, !dbg !55
  br i1 %tobool18, label %lor.lhs.false, label %if.end22, !dbg !55

lor.lhs.false:                                    ; preds = %entry
  %call19 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !55
  br label %if.end22, !dbg !55

if.end22:                                         ; preds = %entry, %lor.lhs.false
  %call23 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !56
  %call27 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !57
  %call31 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !58
  %call35 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #3, !dbg !59
  %tobool36 = icmp eq i32 %call35, 0, !dbg !59
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !59

if.then37:                                        ; preds = %if.end22
  %call38 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !60
  %call42 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !62
  br label %if.end46, !dbg !63

if.end46:                                         ; preds = %if.end22, %if.then37
  %call50 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !64
  %tobool51 = icmp eq i32 %call50, 0, !dbg !64
  br i1 %tobool51, label %lor.lhs.false52, label %if.end56, !dbg !64

lor.lhs.false52:                                  ; preds = %if.end46
  %call53 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !64
  br label %if.end56, !dbg !64

if.end56:                                         ; preds = %if.end46, %lor.lhs.false52
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  tail call void @llvm.dbg.value(metadata !65, i64 0, metadata !44), !dbg !66
  ret i32 0, !dbg !66
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_Einstein", metadata !"CCTKi_BindingsParameterRecovery_Einstein", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_Einstein, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_Einstein]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !47}
!10 = metadata !{i32 786688, metadata !4, metadata !"gaussian_amplitude", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 32]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786688, metadata !4, metadata !"gaussian_sigma2", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 32]
!14 = metadata !{i32 786688, metadata !4, metadata !"psiminustwo_cut", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att_sigma", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 32]
!16 = metadata !{i32 786688, metadata !4, metadata !"rotation_omega", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 32]
!17 = metadata !{i32 786688, metadata !4, metadata !"advection", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 32]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{i32 786688, metadata !4, metadata !"evolution_system", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 32]
!22 = metadata !{i32 786688, metadata !4, metadata !"initial_data", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 32]
!23 = metadata !{i32 786688, metadata !4, metadata !"initial_lapse", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 32]
!24 = metadata !{i32 786688, metadata !4, metadata !"initial_shift", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 32]
!25 = metadata !{i32 786688, metadata !4, metadata !"mixed_slicing", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 32]
!26 = metadata !{i32 786688, metadata !4, metadata !"shift", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 32]
!27 = metadata !{i32 786688, metadata !4, metadata !"slicing", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"slicing_verbose", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 32]
!29 = metadata !{i32 786688, metadata !4, metadata !"einstein_register_slicing", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 32]
!30 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!31 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 32]
!32 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att_pow", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 32]
!33 = metadata !{i32 786688, metadata !4, metadata !"rotation_psipower", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 32]
!34 = metadata !{i32 786688, metadata !4, metadata !"use_conformal", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 32]
!35 = metadata !{i32 786688, metadata !4, metadata !"use_conformal_derivs", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 32]
!36 = metadata !{i32 786688, metadata !4, metadata !"use_mask", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 32]
!37 = metadata !{i32 786688, metadata !4, metadata !"dtfac", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 32]
!38 = metadata !{i32 786688, metadata !4, metadata !"gauge_speed", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 32]
!39 = metadata !{i32 786688, metadata !4, metadata !"wavecalc", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 32]
!40 = metadata !{i32 786688, metadata !4, metadata !"conformal_storage_all", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 32]
!41 = metadata !{i32 786688, metadata !4, metadata !"rsquared_in_sphm", metadata !5, i32 32, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 32]
!42 = metadata !{i32 786688, metadata !4, metadata !"domain", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 32]
!43 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 32]
!44 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!48 = metadata !{i32 32, i32 0, metadata !4, null}
!49 = metadata !{metadata !"any pointer", metadata !50}
!50 = metadata !{metadata !"omnipotent char", metadata !51}
!51 = metadata !{metadata !"Simple C/C++ TBAA"}
!52 = metadata !{i32 33, i32 0, metadata !4, null}
!53 = metadata !{i32 36, i32 0, metadata !4, null}
!54 = metadata !{i32 68, i32 0, metadata !4, null}
!55 = metadata !{i32 75, i32 0, metadata !4, null}
!56 = metadata !{i32 82, i32 0, metadata !4, null}
!57 = metadata !{i32 89, i32 0, metadata !4, null}
!58 = metadata !{i32 96, i32 0, metadata !4, null}
!59 = metadata !{i32 103, i32 0, metadata !4, null}
!60 = metadata !{i32 107, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 105, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryEinstein.c]
!62 = metadata !{i32 114, i32 0, metadata !61, null}
!63 = metadata !{i32 121, i32 0, metadata !61, null}
!64 = metadata !{i32 133, i32 0, metadata !4, null}
!65 = metadata !{i8* undef}
!66 = metadata !{i32 141, i32 0, metadata !4, null}
