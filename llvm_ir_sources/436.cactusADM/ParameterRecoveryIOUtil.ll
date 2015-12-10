; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@iorest_ = external global %struct.anon
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParameterRecovery_IOUtil() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 17), align 8, !dbg !71, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !32), !dbg !71
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 18), align 8, !dbg !71, !tbaa !72
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !33), !dbg !71
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !75
  %call = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #3, !dbg !76
  %call4 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #3, !dbg !77
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  tail call void @llvm.dbg.value(metadata !78, i64 0, metadata !67), !dbg !79
  ret i32 0, !dbg !79
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParameterRecovery_IOUtil", metadata !"CCTKi_BindingsParameterRecovery_IOUtil", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParameterRecovery_IOUtil, null, null, metadata !9, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsParameterRecovery_IOUtil]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOUtil.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !70}
!10 = metadata !{i32 786688, metadata !4, metadata !"out_xline_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_y] [line 32]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786688, metadata !4, metadata !"out_xline_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_z] [line 32]
!14 = metadata !{i32 786688, metadata !4, metadata !"out_xyplane_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_z] [line 32]
!15 = metadata !{i32 786688, metadata !4, metadata !"out_xzplane_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_y] [line 32]
!16 = metadata !{i32 786688, metadata !4, metadata !"out_yline_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_x] [line 32]
!17 = metadata !{i32 786688, metadata !4, metadata !"out_yline_z", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_z] [line 32]
!18 = metadata !{i32 786688, metadata !4, metadata !"out_yzplane_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_x] [line 32]
!19 = metadata !{i32 786688, metadata !4, metadata !"out_zline_x", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_x] [line 32]
!20 = metadata !{i32 786688, metadata !4, metadata !"out_zline_y", metadata !5, i32 32, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_y] [line 32]
!21 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_ID_file", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_ID_file] [line 32]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_dir", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_dir] [line 32]
!26 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_file", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_file] [line 32]
!27 = metadata !{i32 786688, metadata !4, metadata !"newverbose", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"out3D_mode", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_mode] [line 32]
!29 = metadata !{i32 786688, metadata !4, metadata !"out_fileinfo", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 32]
!30 = metadata !{i32 786688, metadata !4, metadata !"outdir", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 32]
!31 = metadata !{i32 786688, metadata !4, metadata !"parfile_name", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parfile_name] [line 32]
!32 = metadata !{i32 786688, metadata !4, metadata !"parfile_write", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parfile_write] [line 32]
!33 = metadata !{i32 786688, metadata !4, metadata !"recover", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recover] [line 32]
!34 = metadata !{i32 786688, metadata !4, metadata !"recover_ID_files", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recover_ID_files] [line 32]
!35 = metadata !{i32 786688, metadata !4, metadata !"recover_ID_vars", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recover_ID_vars] [line 32]
!36 = metadata !{i32 786688, metadata !4, metadata !"recover_file", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recover_file] [line 32]
!37 = metadata !{i32 786688, metadata !4, metadata !"recovery_dir", metadata !5, i32 32, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recovery_dir] [line 32]
!38 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_ID", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_ID] [line 32]
!39 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!40 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_every", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_every] [line 32]
!41 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_keep", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_keep] [line 32]
!42 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_keep_all", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_keep_all] [line 32]
!43 = metadata !{i32 786688, metadata !4, metadata !"checkpoint_on_terminate", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checkpoint_on_terminate] [line 32]
!44 = metadata !{i32 786688, metadata !4, metadata !"new_filename_scheme", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 32]
!45 = metadata !{i32 786688, metadata !4, metadata !"out3D_downsample_x", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_downsample_x] [line 32]
!46 = metadata !{i32 786688, metadata !4, metadata !"out3D_downsample_y", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_downsample_y] [line 32]
!47 = metadata !{i32 786688, metadata !4, metadata !"out3D_downsample_z", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_downsample_z] [line 32]
!48 = metadata !{i32 786688, metadata !4, metadata !"out3D_parameters", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_parameters] [line 32]
!49 = metadata !{i32 786688, metadata !4, metadata !"out3D_procs", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_procs] [line 32]
!50 = metadata !{i32 786688, metadata !4, metadata !"out3D_septimefiles", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_septimefiles] [line 32]
!51 = metadata !{i32 786688, metadata !4, metadata !"out3D_single", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_single] [line 32]
!52 = metadata !{i32 786688, metadata !4, metadata !"out3D_unchunked", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_unchunked] [line 32]
!53 = metadata !{i32 786688, metadata !4, metadata !"out_every", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 32]
!54 = metadata !{i32 786688, metadata !4, metadata !"out_xline_yi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_yi] [line 32]
!55 = metadata !{i32 786688, metadata !4, metadata !"out_xline_zi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_zi] [line 32]
!56 = metadata !{i32 786688, metadata !4, metadata !"out_xyplane_zi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_zi] [line 32]
!57 = metadata !{i32 786688, metadata !4, metadata !"out_xzplane_yi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_yi] [line 32]
!58 = metadata !{i32 786688, metadata !4, metadata !"out_yline_xi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_xi] [line 32]
!59 = metadata !{i32 786688, metadata !4, metadata !"out_yline_zi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_zi] [line 32]
!60 = metadata !{i32 786688, metadata !4, metadata !"out_yzplane_xi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_xi] [line 32]
!61 = metadata !{i32 786688, metadata !4, metadata !"out_zline_xi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_xi] [line 32]
!62 = metadata !{i32 786688, metadata !4, metadata !"out_zline_yi", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_yi] [line 32]
!63 = metadata !{i32 786688, metadata !4, metadata !"parfile_update_every", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parfile_update_every] [line 32]
!64 = metadata !{i32 786688, metadata !4, metadata !"print_timing_info", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [print_timing_info] [line 32]
!65 = metadata !{i32 786688, metadata !4, metadata !"recover_and_remove", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [recover_and_remove] [line 32]
!66 = metadata !{i32 786688, metadata !4, metadata !"verbose", metadata !5, i32 32, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [verbose] [line 32]
!67 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !68, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 33]
!71 = metadata !{i32 32, i32 0, metadata !4, null}
!72 = metadata !{metadata !"any pointer", metadata !73}
!73 = metadata !{metadata !"omnipotent char", metadata !74}
!74 = metadata !{metadata !"Simple C/C++ TBAA"}
!75 = metadata !{i32 33, i32 0, metadata !4, null}
!76 = metadata !{i32 36, i32 0, metadata !4, null}
!77 = metadata !{i32 50, i32 0, metadata !4, null}
!78 = metadata !{i8* undef}
!79 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
