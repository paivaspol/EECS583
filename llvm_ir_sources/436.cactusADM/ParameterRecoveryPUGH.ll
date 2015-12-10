; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"report\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_PUGH() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !81, !tbaa !82
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !36), !dbg !81
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !85
  %call = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #3, !dbg !86
  %tobool1 = icmp eq i32 %call, 0, !dbg !86
  br i1 %tobool1, label %lor.lhs.false, label %if.end5, !dbg !86

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !86
  br label %if.end5, !dbg !86

if.end5:                                          ; preds = %entry, %lor.lhs.false
  %call6 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #3, !dbg !87
  %tobool7 = icmp eq i32 %call6, 0, !dbg !87
  br i1 %tobool7, label %lor.lhs.false8, label %if.end12, !dbg !87

lor.lhs.false8:                                   ; preds = %if.end5
  %call9 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !87
  br label %if.end12, !dbg !87

if.end12:                                         ; preds = %if.end5, %lor.lhs.false8
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  tail call void @llvm.dbg.value(metadata !88, i64 0, metadata !77), !dbg !89
  ret i32 0, !dbg !89
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGH.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGH.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_PUGH", metadata !"CCTKi_BindingsParameterRecovery_PUGH", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_PUGH, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_PUGH]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGH.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77, metadata !80}
!10 = metadata !{i32 786688, metadata !4, metadata !"ghost_size", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 32]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!12 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 32]
!13 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 32]
!14 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"global_nsize", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 32]
!16 = metadata !{i32 786688, metadata !4, metadata !"global_nx", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 32]
!17 = metadata !{i32 786688, metadata !4, metadata !"global_ny", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 32]
!18 = metadata !{i32 786688, metadata !4, metadata !"global_nz", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 32]
!19 = metadata !{i32 786688, metadata !4, metadata !"periodic", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 32]
!20 = metadata !{i32 786688, metadata !4, metadata !"periodic_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 32]
!21 = metadata !{i32 786688, metadata !4, metadata !"periodic_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 32]
!22 = metadata !{i32 786688, metadata !4, metadata !"periodic_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 32]
!23 = metadata !{i32 786688, metadata !4, metadata !"info", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 32]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786688, metadata !4, metadata !"initialize_memory", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"partition", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 32]
!29 = metadata !{i32 786688, metadata !4, metadata !"partition_1d_x", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 32]
!30 = metadata !{i32 786688, metadata !4, metadata !"partition_2d_x", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 32]
!31 = metadata !{i32 786688, metadata !4, metadata !"partition_2d_y", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 32]
!32 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_x", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 32]
!33 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_y", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 32]
!34 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_z", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 32]
!35 = metadata !{i32 786688, metadata !4, metadata !"processor_topology", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 32]
!36 = metadata !{i32 786688, metadata !4, metadata !"storage_verbose", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 32]
!37 = metadata !{i32 786688, metadata !4, metadata !"cacheline_mult", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 32]
!38 = metadata !{i32 786688, metadata !4, metadata !"enable_all_storage", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 32]
!39 = metadata !{i32 786688, metadata !4, metadata !"local_nsize", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 32]
!40 = metadata !{i32 786688, metadata !4, metadata !"local_nx", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 32]
!41 = metadata !{i32 786688, metadata !4, metadata !"local_ny", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 32]
!42 = metadata !{i32 786688, metadata !4, metadata !"local_nz", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 32]
!43 = metadata !{i32 786688, metadata !4, metadata !"overloadabort", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 32]
!44 = metadata !{i32 786688, metadata !4, metadata !"overloadarraygroupsizeb", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 32]
!45 = metadata !{i32 786688, metadata !4, metadata !"overloadbarrier", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 32]
!46 = metadata !{i32 786688, metadata !4, metadata !"overloaddisablegroupcomm", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 32]
!47 = metadata !{i32 786688, metadata !4, metadata !"overloaddisablegroupstorage", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 32]
!48 = metadata !{i32 786688, metadata !4, metadata !"overloadenablegroupcomm", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 32]
!49 = metadata !{i32 786688, metadata !4, metadata !"overloadenablegroupstorage", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 32]
!50 = metadata !{i32 786688, metadata !4, metadata !"overloadevolve", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 32]
!51 = metadata !{i32 786688, metadata !4, metadata !"overloadexit", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 32]
!52 = metadata !{i32 786688, metadata !4, metadata !"overloadgroupdynamicdata", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 32]
!53 = metadata !{i32 786688, metadata !4, metadata !"overloadmyproc", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 32]
!54 = metadata !{i32 786688, metadata !4, metadata !"overloadnprocs", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 32]
!55 = metadata !{i32 786688, metadata !4, metadata !"overloadparallelinit", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 32]
!56 = metadata !{i32 786688, metadata !4, metadata !"overloadquerygroupstorageb", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 32]
!57 = metadata !{i32 786688, metadata !4, metadata !"overloadsyncgroup", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 32]
!58 = metadata !{i32 786688, metadata !4, metadata !"padding_active", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 32]
!59 = metadata !{i32 786688, metadata !4, metadata !"padding_address_spacing", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 32]
!60 = metadata !{i32 786688, metadata !4, metadata !"padding_cacheline_bits", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 32]
!61 = metadata !{i32 786688, metadata !4, metadata !"padding_size", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 32]
!62 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_1d_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 32]
!63 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_2d_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 32]
!64 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_2d_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 32]
!65 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 32]
!66 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 32]
!67 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 32]
!68 = metadata !{i32 786688, metadata !4, metadata !"storage_report_every", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 32]
!69 = metadata !{i32 786688, metadata !4, metadata !"timer_output", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 32]
!70 = metadata !{i32 786688, metadata !4, metadata !"terminate", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 32]
!71 = metadata !{i32 786688, metadata !4, metadata !"cctk_initial_time", metadata !5, i32 32, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 32]
!72 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!73 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!74 = metadata !{i32 786688, metadata !4, metadata !"cctk_final_time", metadata !5, i32 32, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 32]
!75 = metadata !{i32 786688, metadata !4, metadata !"cctk_itlast", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 32]
!76 = metadata !{i32 786688, metadata !4, metadata !"terminate_next", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 32]
!77 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!81 = metadata !{i32 32, i32 0, metadata !4, null}
!82 = metadata !{metadata !"any pointer", metadata !83}
!83 = metadata !{metadata !"omnipotent char", metadata !84}
!84 = metadata !{metadata !"Simple C/C++ TBAA"}
!85 = metadata !{i32 33, i32 0, metadata !4, null}
!86 = metadata !{i32 44, i32 0, metadata !4, null}
!87 = metadata !{i32 51, i32 0, metadata !4, null}
!88 = metadata !{i8* undef}
!89 = metadata !{i32 60, i32 0, metadata !4, null}
