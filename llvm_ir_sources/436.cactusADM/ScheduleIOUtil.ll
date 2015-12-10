; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOUtil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@iorest_ = external global %struct.anon
@.str = private unnamed_addr constant [15 x i8] c"IOUtil_Startup\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"Driver_Startup\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"IOUtil_RecoverGH\00", align 1
@.str9 = private unnamed_addr constant [28 x i8] c"Checkpoint recovery routine\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"IOUtil_RecoverIDFromDatafiles\00", align 1
@.str12 = private unnamed_addr constant [30 x i8] c"Initial data recovery routine\00", align 1
@.str13 = private unnamed_addr constant [21 x i8] c"IOUtil_UpdateParFile\00", align 1
@.str14 = private unnamed_addr constant [44 x i8] c"Append steered parameters to parameter file\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"HTTP_Work\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IOUtil() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 17), align 8, !dbg !75, !tbaa !76
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !32, metadata !83), !dbg !75
  %2 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 18), align 8, !dbg !75, !tbaa !84
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !33, metadata !83), !dbg !75
  %3 = load i8** getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 19), align 8, !dbg !75, !tbaa !85
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !34, metadata !83), !dbg !75
  %4 = load i32* getelementptr inbounds (%struct.anon* @iorest_, i64 0, i32 47), align 8, !dbg !75, !tbaa !86
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !64, metadata !83), !dbg !75
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_Startup to i8*), i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !87
  %6 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !88
  %7 = icmp eq i32 %6, 0, !dbg !88
  br i1 %7, label %8, label %10, !dbg !90

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_RecoverGH to i8*), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !91
  br label %10, !dbg !93

; <label>:10                                      ; preds = %0, %8
  %11 = load i8* %3, align 1, !dbg !94, !tbaa !96
  %12 = icmp eq i8 %11, 0, !dbg !94
  br i1 %12, label %15, label %13, !dbg !97

; <label>:13                                      ; preds = %10
  %14 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_RecoverIDFromDatafiles to i8*), i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !98
  br label %15, !dbg !100

; <label>:15                                      ; preds = %10, %13
  %16 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !101
  %17 = icmp eq i32 %16, 0, !dbg !101
  %18 = icmp ne i32 %4, 0, !dbg !103
  %or.cond = and i1 %18, %17, !dbg !104
  br i1 %or.cond, label %19, label %21, !dbg !104

; <label>:19                                      ; preds = %15
  %20 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @IOUtil_UpdateParFile to i8*), i8* getelementptr inbounds ([21 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !105
  br label %21, !dbg !107

; <label>:21                                      ; preds = %15, %19
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !68, metadata !83), !dbg !75
  ret void, !dbg !108
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @IOUtil_Startup() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @IOUtil_RecoverGH() #1

; Function Attrs: optsize
declare i32 @IOUtil_RecoverIDFromDatafiles() #1

; Function Attrs: optsize
declare i32 @IOUtil_UpdateParFile() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIOUtil.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_IOUtil", scope: !1, file: !1, line: 34, type: !7, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_IOUtil, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !18, !19, !20, !21, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_y", scope: !6, file: !1, line: 36, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_z", scope: !6, file: !1, line: 36, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_z", scope: !6, file: !1, line: 36, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_y", scope: !6, file: !1, line: 36, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_x", scope: !6, file: !1, line: 36, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_z", scope: !6, file: !1, line: 36, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_x", scope: !6, file: !1, line: 36, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_x", scope: !6, file: !1, line: 36, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_y", scope: !6, file: !1, line: 36, type: !11)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_ID_file", scope: !6, file: !1, line: 36, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_dir", scope: !6, file: !1, line: 36, type: !22)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_file", scope: !6, file: !1, line: 36, type: !22)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !6, file: !1, line: 36, type: !22)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_mode", scope: !6, file: !1, line: 36, type: !22)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !6, file: !1, line: 36, type: !22)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !6, file: !1, line: 36, type: !22)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_name", scope: !6, file: !1, line: 36, type: !22)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_write", scope: !6, file: !1, line: 36, type: !22)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover", scope: !6, file: !1, line: 36, type: !22)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_ID_files", scope: !6, file: !1, line: 36, type: !22)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_ID_vars", scope: !6, file: !1, line: 36, type: !22)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_file", scope: !6, file: !1, line: 36, type: !22)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recovery_dir", scope: !6, file: !1, line: 36, type: !22)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_ID", scope: !6, file: !1, line: 36, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_every", scope: !6, file: !1, line: 36, type: !39)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_keep", scope: !6, file: !1, line: 36, type: !39)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_keep_all", scope: !6, file: !1, line: 36, type: !39)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "checkpoint_on_terminate", scope: !6, file: !1, line: 36, type: !39)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !6, file: !1, line: 36, type: !39)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_x", scope: !6, file: !1, line: 36, type: !39)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_y", scope: !6, file: !1, line: 36, type: !39)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_downsample_z", scope: !6, file: !1, line: 36, type: !39)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_parameters", scope: !6, file: !1, line: 36, type: !39)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_procs", scope: !6, file: !1, line: 36, type: !39)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_septimefiles", scope: !6, file: !1, line: 36, type: !39)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_single", scope: !6, file: !1, line: 36, type: !39)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out3D_unchunked", scope: !6, file: !1, line: 36, type: !39)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !6, file: !1, line: 36, type: !39)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_yi", scope: !6, file: !1, line: 36, type: !39)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xline_zi", scope: !6, file: !1, line: 36, type: !39)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xyplane_zi", scope: !6, file: !1, line: 36, type: !39)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_xzplane_yi", scope: !6, file: !1, line: 36, type: !39)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_xi", scope: !6, file: !1, line: 36, type: !39)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yline_zi", scope: !6, file: !1, line: 36, type: !39)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_yzplane_xi", scope: !6, file: !1, line: 36, type: !39)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_xi", scope: !6, file: !1, line: 36, type: !39)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_zline_yi", scope: !6, file: !1, line: 36, type: !39)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile_update_every", scope: !6, file: !1, line: 36, type: !39)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "print_timing_info", scope: !6, file: !1, line: 36, type: !39)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "recover_and_remove", scope: !6, file: !1, line: 36, type: !39)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "verbose", scope: !6, file: !1, line: 36, type: !39)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 36, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !{i32 2, !"Dwarf Version", i32 2}
!72 = !{i32 2, !"Debug Info Version", i32 700000003}
!73 = !{i32 1, !"PIC Level", i32 2}
!74 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!75 = !DILocation(line: 36, column: 3, scope: !6)
!76 = !{!77, !81, i64 136}
!77 = !{!"", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !81, i64 72, !81, i64 80, !81, i64 88, !81, i64 96, !81, i64 104, !81, i64 112, !81, i64 120, !81, i64 128, !81, i64 136, !81, i64 144, !81, i64 152, !81, i64 160, !81, i64 168, !81, i64 176, !82, i64 184, !82, i64 188, !82, i64 192, !82, i64 196, !82, i64 200, !82, i64 204, !82, i64 208, !82, i64 212, !82, i64 216, !82, i64 220, !82, i64 224, !82, i64 228, !82, i64 232, !82, i64 236, !82, i64 240, !82, i64 244, !82, i64 248, !82, i64 252, !82, i64 256, !82, i64 260, !82, i64 264, !82, i64 268, !82, i64 272, !82, i64 276, !82, i64 280, !82, i64 284, !82, i64 288, !82, i64 292}
!78 = !{!"double", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"any pointer", !79, i64 0}
!82 = !{!"int", !79, i64 0}
!83 = !DIExpression()
!84 = !{!77, !81, i64 144}
!85 = !{!77, !81, i64 152}
!86 = !{!77, !82, i64 280}
!87 = !DILocation(line: 37, column: 3, scope: !6)
!88 = !DILocation(line: 55, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !6, file: !1, line: 55, column: 5)
!90 = !DILocation(line: 55, column: 5, scope: !6)
!91 = !DILocation(line: 59, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 57, column: 1)
!93 = !DILocation(line: 76, column: 1, scope: !92)
!94 = !DILocation(line: 78, column: 5, scope: !95)
!95 = distinct !DILexicalBlock(scope: !6, file: !1, line: 78, column: 5)
!96 = !{!79, !79, i64 0}
!97 = !DILocation(line: 78, column: 5, scope: !6)
!98 = !DILocation(line: 82, column: 3, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 80, column: 1)
!100 = !DILocation(line: 100, column: 1, scope: !99)
!101 = !DILocation(line: 102, column: 7, scope: !102)
!102 = distinct !DILexicalBlock(scope: !6, file: !1, line: 102, column: 5)
!103 = !DILocation(line: 102, column: 44, scope: !102)
!104 = !DILocation(line: 102, column: 41, scope: !102)
!105 = !DILocation(line: 106, column: 3, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 104, column: 1)
!107 = !DILocation(line: 124, column: 1, scope: !106)
!108 = !DILocation(line: 127, column: 22, scope: !6)
