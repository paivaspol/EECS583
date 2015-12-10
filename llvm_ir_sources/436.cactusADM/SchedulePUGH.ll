; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [15 x i8] c"Driver_Startup\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"PUGH_Report\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Report on PUGH set up\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"PUGH_PrintTimingInfo\00", align 1
@.str10 = private unnamed_addr constant [34 x i8] c"Print time spent in communication\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"PUGH_PrintFinalStorageReport\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"Print storage information\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"PUGH_PrintStorageReport\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"Driver_Terminate\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"Termination routine\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_PUGH() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !85, !tbaa !86
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !37, metadata !92), !dbg !85
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 43), align 8, !dbg !85, !tbaa !93
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !70, metadata !92), !dbg !85
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Startup to i8*), i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !94
  %4 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Report to i8*), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !95
  %5 = icmp eq i32 %2, 0, !dbg !96
  br i1 %5, label %8, label %6, !dbg !98

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintTimingInfo to i8*), i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !99
  br label %8, !dbg !101

; <label>:8                                       ; preds = %0, %6
  %9 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !102
  %10 = icmp eq i32 %9, 0, !dbg !102
  br i1 %10, label %11, label %14, !dbg !104

; <label>:11                                      ; preds = %8
  %12 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !105
  %13 = icmp eq i32 %12, 0, !dbg !105
  br i1 %13, label %16, label %14, !dbg !106

; <label>:14                                      ; preds = %11, %8
  %15 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintFinalStorageReport to i8*), i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !107
  br label %16, !dbg !109

; <label>:16                                      ; preds = %11, %14
  %17 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !110
  %18 = icmp eq i32 %17, 0, !dbg !110
  br i1 %18, label %19, label %22, !dbg !112

; <label>:19                                      ; preds = %16
  %20 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !113
  %21 = icmp eq i32 %20, 0, !dbg !113
  br i1 %21, label %24, label %22, !dbg !114

; <label>:22                                      ; preds = %19, %16
  %23 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintStorageReport to i8*), i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !115
  br label %24, !dbg !117

; <label>:24                                      ; preds = %19, %22
  %25 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Terminate to i8*), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !118
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !78, metadata !92), !dbg !85
  ret void, !dbg !119
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @PUGH_Startup() #1

; Function Attrs: optsize
declare i32 @PUGH_Report() #1

; Function Attrs: optsize
declare i32 @PUGH_PrintTimingInfo() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @PUGH_PrintFinalStorageReport() #1

; Function Attrs: optsize
declare i32 @PUGH_PrintStorageReport() #1

; Function Attrs: optsize
declare i32 @PUGH_Terminate() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_PUGH", scope: !1, file: !1, line: 36, type: !7, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_PUGH, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !75, !76, !77, !78}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !6, file: !1, line: 38, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !6, file: !1, line: 38, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !6, file: !1, line: 38, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !6, file: !1, line: 38, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !6, file: !1, line: 38, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !6, file: !1, line: 38, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !6, file: !1, line: 38, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !6, file: !1, line: 38, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !6, file: !1, line: 38, type: !11)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !6, file: !1, line: 38, type: !11)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !6, file: !1, line: 38, type: !11)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !6, file: !1, line: 38, type: !11)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !6, file: !1, line: 38, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !6, file: !1, line: 38, type: !25)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !6, file: !1, line: 38, type: !25)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !6, file: !1, line: 38, type: !25)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !6, file: !1, line: 38, type: !25)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !6, file: !1, line: 38, type: !25)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !6, file: !1, line: 38, type: !25)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !6, file: !1, line: 38, type: !25)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !6, file: !1, line: 38, type: !25)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !6, file: !1, line: 38, type: !25)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !6, file: !1, line: 38, type: !25)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !6, file: !1, line: 38, type: !11)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !6, file: !1, line: 38, type: !11)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !6, file: !1, line: 38, type: !11)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !6, file: !1, line: 38, type: !11)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !6, file: !1, line: 38, type: !11)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !6, file: !1, line: 38, type: !11)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !6, file: !1, line: 38, type: !11)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !6, file: !1, line: 38, type: !11)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !6, file: !1, line: 38, type: !11)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !6, file: !1, line: 38, type: !11)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !6, file: !1, line: 38, type: !11)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !6, file: !1, line: 38, type: !11)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !6, file: !1, line: 38, type: !11)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !6, file: !1, line: 38, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !6, file: !1, line: 38, type: !11)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !6, file: !1, line: 38, type: !11)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !6, file: !1, line: 38, type: !11)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !6, file: !1, line: 38, type: !11)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !6, file: !1, line: 38, type: !11)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !6, file: !1, line: 38, type: !11)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !6, file: !1, line: 38, type: !11)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !6, file: !1, line: 38, type: !11)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !6, file: !1, line: 38, type: !11)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !6, file: !1, line: 38, type: !11)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !6, file: !1, line: 38, type: !11)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !6, file: !1, line: 38, type: !11)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !6, file: !1, line: 38, type: !11)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !6, file: !1, line: 38, type: !11)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !6, file: !1, line: 38, type: !11)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !6, file: !1, line: 38, type: !11)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !6, file: !1, line: 38, type: !11)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !6, file: !1, line: 38, type: !11)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !6, file: !1, line: 38, type: !11)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !6, file: !1, line: 38, type: !25)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !6, file: !1, line: 38, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !6, file: !1, line: 38, type: !73)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !6, file: !1, line: 38, type: !11)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !6, file: !1, line: 38, type: !11)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 38, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!81 = !{i32 2, !"Dwarf Version", i32 2}
!82 = !{i32 2, !"Debug Info Version", i32 700000003}
!83 = !{i32 1, !"PIC Level", i32 2}
!84 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!85 = !DILocation(line: 38, column: 3, scope: !6)
!86 = !{!87, !88, i64 80}
!87 = !{!"", !88, i64 0, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !88, i64 64, !88, i64 72, !88, i64 80, !91, i64 88, !91, i64 92, !91, i64 96, !91, i64 100, !91, i64 104, !91, i64 108, !91, i64 112, !91, i64 116, !91, i64 120, !91, i64 124, !91, i64 128, !91, i64 132, !91, i64 136, !91, i64 140, !91, i64 144, !91, i64 148, !91, i64 152, !91, i64 156, !91, i64 160, !91, i64 164, !91, i64 168, !91, i64 172, !91, i64 176, !91, i64 180, !91, i64 184, !91, i64 188, !91, i64 192, !91, i64 196, !91, i64 200, !91, i64 204, !91, i64 208, !91, i64 212, !91, i64 216}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !{!"int", !89, i64 0}
!92 = !DIExpression()
!93 = !{!87, !91, i64 216}
!94 = !DILocation(line: 39, column: 3, scope: !6)
!95 = !DILocation(line: 56, column: 3, scope: !6)
!96 = !DILocation(line: 73, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !6, file: !1, line: 73, column: 5)
!98 = !DILocation(line: 73, column: 5, scope: !6)
!99 = !DILocation(line: 77, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 75, column: 1)
!101 = !DILocation(line: 94, column: 1, scope: !100)
!102 = !DILocation(line: 96, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !6, file: !1, line: 96, column: 5)
!104 = !DILocation(line: 96, column: 40, scope: !103)
!105 = !DILocation(line: 96, column: 43, scope: !103)
!106 = !DILocation(line: 96, column: 5, scope: !6)
!107 = !DILocation(line: 100, column: 3, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 98, column: 1)
!109 = !DILocation(line: 117, column: 1, scope: !108)
!110 = !DILocation(line: 119, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !6, file: !1, line: 119, column: 5)
!112 = !DILocation(line: 119, column: 40, scope: !111)
!113 = !DILocation(line: 119, column: 43, scope: !111)
!114 = !DILocation(line: 119, column: 5, scope: !6)
!115 = !DILocation(line: 123, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 121, column: 1)
!117 = !DILocation(line: 140, column: 1, scope: !116)
!118 = !DILocation(line: 142, column: 3, scope: !6)
!119 = !DILocation(line: 160, column: 22, scope: !6)
