; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"IOASCII_Startup\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose1D\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"Choose 1D output lines\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"IOASCII_Choose2D\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"Choose 2D output planes\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_IOASCII() #0 {
entry:
  %call = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Startup to i8*), i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !78
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose1D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !79
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOASCII_Choose2D to i8*), i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !80
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  tail call void @llvm.dbg.value(metadata !81, i64 0, metadata !75), !dbg !82
  ret void, !dbg !82
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOASCII_Startup() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose1D() #1

; Function Attrs: optsize
declare i32 @IOASCII_Choose2D() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_IOASCII", metadata !"CCTKi_BindingsSchedule_IOASCII", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_IOASCII, null, null, metadata !8, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [CCTKi_BindingsSchedule_IOASCII]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOASCII.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!9 = metadata !{i32 786688, metadata !4, metadata !"out1D_xline_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_y] [line 35]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!11 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!12 = metadata !{i32 786688, metadata !4, metadata !"out1D_xline_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_z] [line 35]
!13 = metadata !{i32 786688, metadata !4, metadata !"out1D_yline_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_x] [line 35]
!14 = metadata !{i32 786688, metadata !4, metadata !"out1D_yline_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_z] [line 35]
!15 = metadata !{i32 786688, metadata !4, metadata !"out1D_zline_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_x] [line 35]
!16 = metadata !{i32 786688, metadata !4, metadata !"out1D_zline_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_y] [line 35]
!17 = metadata !{i32 786688, metadata !4, metadata !"out2D_xyplane_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_z] [line 35]
!18 = metadata !{i32 786688, metadata !4, metadata !"out2D_xzplane_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_y] [line 35]
!19 = metadata !{i32 786688, metadata !4, metadata !"out2D_yzplane_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_x] [line 35]
!20 = metadata !{i32 786688, metadata !4, metadata !"out1D_style", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_style] [line 35]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!23 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!24 = metadata !{i32 786688, metadata !4, metadata !"out1D_vars", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_vars] [line 35]
!25 = metadata !{i32 786688, metadata !4, metadata !"out2D_style", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_style] [line 35]
!26 = metadata !{i32 786688, metadata !4, metadata !"out2D_vars", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_vars] [line 35]
!27 = metadata !{i32 786688, metadata !4, metadata !"out3D_style", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_style] [line 35]
!28 = metadata !{i32 786688, metadata !4, metadata !"out3D_vars", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_vars] [line 35]
!29 = metadata !{i32 786688, metadata !4, metadata !"out_format", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 35]
!30 = metadata !{i32 786688, metadata !4, metadata !"out_style", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_style] [line 35]
!31 = metadata !{i32 786688, metadata !4, metadata !"outdir1D", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir1D] [line 35]
!32 = metadata !{i32 786688, metadata !4, metadata !"outdir2D", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir2D] [line 35]
!33 = metadata !{i32 786688, metadata !4, metadata !"outdir3D", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir3D] [line 35]
!34 = metadata !{i32 786688, metadata !4, metadata !"out1D_d", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_d] [line 35]
!35 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786688, metadata !4, metadata !"out1D_every", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_every] [line 35]
!38 = metadata !{i32 786688, metadata !4, metadata !"out1D_x", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_x] [line 35]
!39 = metadata !{i32 786688, metadata !4, metadata !"out1D_xline_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_yi] [line 35]
!40 = metadata !{i32 786688, metadata !4, metadata !"out1D_xline_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_xline_zi] [line 35]
!41 = metadata !{i32 786688, metadata !4, metadata !"out1D_y", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_y] [line 35]
!42 = metadata !{i32 786688, metadata !4, metadata !"out1D_yline_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_xi] [line 35]
!43 = metadata !{i32 786688, metadata !4, metadata !"out1D_yline_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_yline_zi] [line 35]
!44 = metadata !{i32 786688, metadata !4, metadata !"out1D_z", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_z] [line 35]
!45 = metadata !{i32 786688, metadata !4, metadata !"out1D_zline_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_xi] [line 35]
!46 = metadata !{i32 786688, metadata !4, metadata !"out1D_zline_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out1D_zline_yi] [line 35]
!47 = metadata !{i32 786688, metadata !4, metadata !"out2D_every", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_every] [line 35]
!48 = metadata !{i32 786688, metadata !4, metadata !"out2D_xyplane_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xyplane_zi] [line 35]
!49 = metadata !{i32 786688, metadata !4, metadata !"out2D_xzplane_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_xzplane_yi] [line 35]
!50 = metadata !{i32 786688, metadata !4, metadata !"out2D_yzplane_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out2D_yzplane_xi] [line 35]
!51 = metadata !{i32 786688, metadata !4, metadata !"out3D_every", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out3D_every] [line 35]
!52 = metadata !{i32 786688, metadata !4, metadata !"outdir", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 35]
!53 = metadata !{i32 786688, metadata !4, metadata !"out_every", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 35]
!54 = metadata !{i32 786688, metadata !4, metadata !"out_xline_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_y] [line 35]
!55 = metadata !{i32 786688, metadata !4, metadata !"out_xline_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_z] [line 35]
!56 = metadata !{i32 786688, metadata !4, metadata !"out_yline_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_x] [line 35]
!57 = metadata !{i32 786688, metadata !4, metadata !"out_yline_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_z] [line 35]
!58 = metadata !{i32 786688, metadata !4, metadata !"out_zline_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_x] [line 35]
!59 = metadata !{i32 786688, metadata !4, metadata !"out_zline_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_y] [line 35]
!60 = metadata !{i32 786688, metadata !4, metadata !"out_xline_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_yi] [line 35]
!61 = metadata !{i32 786688, metadata !4, metadata !"out_xline_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xline_zi] [line 35]
!62 = metadata !{i32 786688, metadata !4, metadata !"out_yline_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_xi] [line 35]
!63 = metadata !{i32 786688, metadata !4, metadata !"out_yline_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yline_zi] [line 35]
!64 = metadata !{i32 786688, metadata !4, metadata !"out_zline_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_xi] [line 35]
!65 = metadata !{i32 786688, metadata !4, metadata !"out_zline_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_zline_yi] [line 35]
!66 = metadata !{i32 786688, metadata !4, metadata !"out_yzplane_x", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_x] [line 35]
!67 = metadata !{i32 786688, metadata !4, metadata !"out_xzplane_y", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_y] [line 35]
!68 = metadata !{i32 786688, metadata !4, metadata !"out_xyplane_z", metadata !5, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_z] [line 35]
!69 = metadata !{i32 786688, metadata !4, metadata !"out_xyplane_zi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xyplane_zi] [line 35]
!70 = metadata !{i32 786688, metadata !4, metadata !"out_xzplane_yi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_xzplane_yi] [line 35]
!71 = metadata !{i32 786688, metadata !4, metadata !"out_yzplane_xi", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_yzplane_xi] [line 35]
!72 = metadata !{i32 786688, metadata !4, metadata !"newverbose", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 35]
!73 = metadata !{i32 786688, metadata !4, metadata !"new_filename_scheme", metadata !5, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 35]
!74 = metadata !{i32 786688, metadata !4, metadata !"out_fileinfo", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 35]
!75 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 35, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 35]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 36, i32 0, metadata !4, null}
!79 = metadata !{i32 54, i32 0, metadata !4, null}
!80 = metadata !{i32 72, i32 0, metadata !4, null}
!81 = metadata !{i8* undef}
!82 = metadata !{i32 91, i32 0, metadata !4, null}
