; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [76 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"No driver thorn activated to provide storage for variables\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"No driver thorn activated to provide communication for variables\00", align 1
@.str4 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/main/Dummies.c,v 1.8 2001/07/04 13:18:00 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Dummies_c() #0 {
  ret i8* getelementptr inbounds ([82 x i8]* @.str4, i64 0, i64 0), !dbg !49
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyStorageOn(i8* nocapture readnone %GH, i32 %group) #1 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !16, metadata !50), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !17, metadata !50), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !16, metadata !50), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !17, metadata !50), !dbg !52
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 25, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !53
  ret i32 0, !dbg !54
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyStorageOff(i8* nocapture readnone %GH, i32 %group) #1 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !20, metadata !50), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !21, metadata !50), !dbg !56
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !20, metadata !50), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !21, metadata !50), !dbg !56
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 34, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !57
  ret i32 0, !dbg !58
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyCommunicationOn(i8* nocapture readnone %GH, i32 %group) #1 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !24, metadata !50), !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !25, metadata !50), !dbg !60
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !24, metadata !50), !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !25, metadata !50), !dbg !60
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 43, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyCommunicationOff(i8* nocapture readnone %GH, i32 %group) #1 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !28, metadata !50), !dbg !63
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !29, metadata !50), !dbg !64
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !28, metadata !50), !dbg !63
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !29, metadata !50), !dbg !64
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 52, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_DummyTriggerable(i32 %variable) #0 {
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !34, metadata !50), !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !34, metadata !50), !dbg !67
  ret i32 0, !dbg !68
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_DummyTriggerSaysGo(i8* nocapture readnone %GH, i32 %variable) #0 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !37, metadata !50), !dbg !69
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !38, metadata !50), !dbg !70
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !37, metadata !50), !dbg !69
  tail call void @llvm.dbg.value(metadata i32 %variable, i64 0, metadata !38, metadata !50), !dbg !70
  ret i32 1, !dbg !71
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_DummyTriggerAction(i8* nocapture readnone %GH, i32 %group) #0 {
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !41, metadata !50), !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !42, metadata !50), !dbg !73
  tail call void @llvm.dbg.value(metadata i8* %GH, i64 0, metadata !41, metadata !50), !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !42, metadata !50), !dbg !73
  ret i32 0, !dbg !74
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !43, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Dummies.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !18, !22, !26, !30, !35, !39}
!4 = !DISubprogram(name: "CCTKi_version_main_Dummies_c", scope: !1, file: !1, line: 19, type: !5, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Dummies_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_DummyStorageOn", scope: !1, file: !1, line: 21, type: !11, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyStorageOn, variables: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!15 = !{!16, !17}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !10, file: !1, line: 21, type: !14)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !10, file: !1, line: 21, type: !13)
!18 = !DISubprogram(name: "CCTKi_DummyStorageOff", scope: !1, file: !1, line: 30, type: !11, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyStorageOff, variables: !19)
!19 = !{!20, !21}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !18, file: !1, line: 30, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !18, file: !1, line: 30, type: !13)
!22 = !DISubprogram(name: "CCTKi_DummyCommunicationOn", scope: !1, file: !1, line: 39, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyCommunicationOn, variables: !23)
!23 = !{!24, !25}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !22, file: !1, line: 39, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !22, file: !1, line: 39, type: !13)
!26 = !DISubprogram(name: "CCTKi_DummyCommunicationOff", scope: !1, file: !1, line: 48, type: !11, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyCommunicationOff, variables: !27)
!27 = !{!28, !29}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !26, file: !1, line: 48, type: !14)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !26, file: !1, line: 48, type: !13)
!30 = !DISubprogram(name: "CCTKi_DummyTriggerable", scope: !1, file: !1, line: 57, type: !31, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTKi_DummyTriggerable, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !13}
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "variable", arg: 1, scope: !30, file: !1, line: 57, type: !13)
!35 = !DISubprogram(name: "CCTKi_DummyTriggerSaysGo", scope: !1, file: !1, line: 63, type: !11, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyTriggerSaysGo, variables: !36)
!36 = !{!37, !38}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !35, file: !1, line: 63, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "variable", arg: 2, scope: !35, file: !1, line: 63, type: !13)
!39 = !DISubprogram(name: "CCTKi_DummyTriggerAction", scope: !1, file: !1, line: 70, type: !11, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @CCTKi_DummyTriggerAction, variables: !40)
!40 = !{!41, !42}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !39, file: !1, line: 70, type: !14)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !39, file: !1, line: 70, type: !13)
!43 = !{!44}
!44 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !7, isLocal: true, isDefinition: true)
!45 = !{i32 2, !"Dwarf Version", i32 2}
!46 = !{i32 2, !"Debug Info Version", i32 700000003}
!47 = !{i32 1, !"PIC Level", i32 2}
!48 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!49 = !DILocation(line: 19, column: 1, scope: !4)
!50 = !DIExpression()
!51 = !DILocation(line: 21, column: 32, scope: !10)
!52 = !DILocation(line: 21, column: 40, scope: !10)
!53 = !DILocation(line: 25, column: 3, scope: !10)
!54 = !DILocation(line: 27, column: 3, scope: !10)
!55 = !DILocation(line: 30, column: 33, scope: !18)
!56 = !DILocation(line: 30, column: 41, scope: !18)
!57 = !DILocation(line: 34, column: 3, scope: !18)
!58 = !DILocation(line: 36, column: 3, scope: !18)
!59 = !DILocation(line: 39, column: 38, scope: !22)
!60 = !DILocation(line: 39, column: 46, scope: !22)
!61 = !DILocation(line: 43, column: 3, scope: !22)
!62 = !DILocation(line: 45, column: 3, scope: !22)
!63 = !DILocation(line: 48, column: 39, scope: !26)
!64 = !DILocation(line: 48, column: 47, scope: !26)
!65 = !DILocation(line: 52, column: 3, scope: !26)
!66 = !DILocation(line: 54, column: 3, scope: !26)
!67 = !DILocation(line: 57, column: 32, scope: !30)
!68 = !DILocation(line: 60, column: 3, scope: !30)
!69 = !DILocation(line: 63, column: 36, scope: !35)
!70 = !DILocation(line: 63, column: 44, scope: !35)
!71 = !DILocation(line: 67, column: 3, scope: !35)
!72 = !DILocation(line: 70, column: 36, scope: !39)
!73 = !DILocation(line: 70, column: 44, scope: !39)
!74 = !DILocation(line: 74, column: 3, scope: !39)
