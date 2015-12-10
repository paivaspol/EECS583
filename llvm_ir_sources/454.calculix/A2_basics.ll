; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._A2* @A2_new() #0 {
  %1 = tail call i8* @malloc(i64 32) #6, !dbg !45
  %2 = bitcast i8* %1 to %struct._A2*, !dbg !45
  tail call void @llvm.dbg.value(metadata %struct._A2* %2, i64 0, metadata !29, metadata !49), !dbg !50
  %3 = icmp eq i8* %1, null, !dbg !45
  br i1 %3, label %4, label %7, !dbg !51

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !52, !tbaa !54
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 21, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !52
  tail call void @exit(i32 -1) #7, !dbg !52
  unreachable, !dbg !52

; <label>:7                                       ; preds = %0
  tail call void @A2_setDefaultFields(%struct._A2* %2) #8, !dbg !58
  ret %struct._A2* %2, !dbg !59
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_setDefaultFields(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !34, metadata !49), !dbg !60
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !61
  br i1 %1, label %2, label %5, !dbg !63

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !64, !tbaa !54
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #6, !dbg !66
  tail call void @exit(i32 -1) #7, !dbg !67
  unreachable, !dbg !67

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !68
  store i32 1, i32* %6, align 4, !dbg !69, !tbaa !70
  %7 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !73
  %8 = bitcast i32* %7 to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 28, i32 4, i1 false), !dbg !75
  ret void, !dbg !74
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_clearData(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !37, metadata !49), !dbg !76
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !77
  br i1 %1, label %2, label %5, !dbg !79

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !80, !tbaa !54
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #6, !dbg !82
  tail call void @exit(i32 -1) #7, !dbg !83
  unreachable, !dbg !83

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !84
  %7 = load i32* %6, align 4, !dbg !84, !tbaa !86
  %8 = icmp sgt i32 %7, 0, !dbg !87
  br i1 %8, label %9, label %14, !dbg !88

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !89
  %11 = load double** %10, align 8, !dbg !89, !tbaa !90
  %12 = icmp eq double* %11, null, !dbg !91
  br i1 %12, label %14, label %13, !dbg !92

; <label>:13                                      ; preds = %9
  tail call void @DVfree(double* %11) #6, !dbg !93
  br label %14, !dbg !95

; <label>:14                                      ; preds = %9, %13, %5
  tail call void @A2_setDefaultFields(%struct._A2* %mtx) #8, !dbg !96
  ret void, !dbg !97
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_free(%struct._A2* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !40, metadata !49), !dbg !98
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !99
  br i1 %1, label %2, label %5, !dbg !101

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !102, !tbaa !54
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #6, !dbg !104
  tail call void @exit(i32 -1) #7, !dbg !105
  unreachable, !dbg !105

; <label>:5                                       ; preds = %0
  tail call void @A2_clearData(%struct._A2* %mtx) #8, !dbg !106
  %6 = bitcast %struct._A2* %mtx to i8*, !dbg !107
  tail call void @free(i8* %6) #8, !dbg !107
  tail call void @llvm.dbg.value(metadata %struct._A2* null, i64 0, metadata !40, metadata !49), !dbg !98
  ret void, !dbg !110
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !22, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !18, !19, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !6, line: 41, size: 256, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12, !13, !14, !15}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !6, line: 42, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !5, file: !6, line: 43, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !5, file: !6, line: 44, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !5, file: !6, line: 45, baseType: !9, size: 32, align: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !5, file: !6, line: 46, baseType: !9, size: 32, align: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !5, file: !6, line: 47, baseType: !9, size: 32, align: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5, file: !6, line: 48, baseType: !16, size: 64, align: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !30, !35, !38}
!23 = !DISubprogram(name: "A2_new", scope: !1, file: !1, line: 16, type: !24, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: %struct._A2* ()* @A2_new, variables: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !6, line: 49, baseType: !5)
!28 = !{!29}
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtx", scope: !23, file: !1, line: 19, type: !26)
!30 = !DISubprogram(name: "A2_setDefaultFields", scope: !1, file: !1, line: 35, type: !31, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*)* @A2_setDefaultFields, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !26}
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !30, file: !1, line: 36, type: !26)
!35 = !DISubprogram(name: "A2_clearData", scope: !1, file: !1, line: 62, type: !31, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*)* @A2_clearData, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !35, file: !1, line: 63, type: !26)
!38 = !DISubprogram(name: "A2_free", scope: !1, file: !1, line: 101, type: !31, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*)* @A2_free, variables: !39)
!39 = !{!40}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !38, file: !1, line: 102, type: !26)
!41 = !{i32 2, !"Dwarf Version", i32 2}
!42 = !{i32 2, !"Debug Info Version", i32 700000003}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!45 = !DILocation(line: 21, column: 1, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 21, column: 1)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 21, column: 1)
!48 = distinct !DILexicalBlock(scope: !23, file: !1, line: 21, column: 1)
!49 = !DIExpression()
!50 = !DILocation(line: 19, column: 7, scope: !23)
!51 = !DILocation(line: 21, column: 1, scope: !47)
!52 = !DILocation(line: 21, column: 1, scope: !53)
!53 = distinct !DILexicalBlock(scope: !46, file: !1, line: 21, column: 1)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 22, column: 1, scope: !23)
!59 = !DILocation(line: 24, column: 1, scope: !23)
!60 = !DILocation(line: 36, column: 10, scope: !30)
!61 = !DILocation(line: 38, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 6)
!63 = !DILocation(line: 38, column: 6, scope: !30)
!64 = !DILocation(line: 39, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 38, column: 20)
!66 = !DILocation(line: 39, column: 4, scope: !65)
!67 = !DILocation(line: 41, column: 4, scope: !65)
!68 = !DILocation(line: 43, column: 6, scope: !30)
!69 = !DILocation(line: 43, column: 14, scope: !30)
!70 = !{!71, !72, i64 0}
!71 = !{!"_A2", !72, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !72, i64 16, !72, i64 20, !55, i64 24}
!72 = !{!"int", !56, i64 0}
!73 = !DILocation(line: 44, column: 6, scope: !30)
!74 = !DILocation(line: 51, column: 1, scope: !30)
!75 = !DILocation(line: 45, column: 14, scope: !30)
!76 = !DILocation(line: 63, column: 10, scope: !35)
!77 = !DILocation(line: 70, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !35, file: !1, line: 70, column: 6)
!79 = !DILocation(line: 70, column: 6, scope: !35)
!80 = !DILocation(line: 71, column: 12, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 70, column: 20)
!82 = !DILocation(line: 71, column: 4, scope: !81)
!83 = !DILocation(line: 73, column: 4, scope: !81)
!84 = !DILocation(line: 80, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !35, file: !1, line: 80, column: 6)
!86 = !{!71, !72, i64 20}
!87 = !DILocation(line: 80, column: 18, scope: !85)
!88 = !DILocation(line: 80, column: 22, scope: !85)
!89 = !DILocation(line: 80, column: 30, scope: !85)
!90 = !{!71, !55, i64 24}
!91 = !DILocation(line: 80, column: 38, scope: !85)
!92 = !DILocation(line: 80, column: 6, scope: !35)
!93 = !DILocation(line: 81, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 48)
!95 = !DILocation(line: 82, column: 1, scope: !94)
!96 = !DILocation(line: 88, column: 1, scope: !35)
!97 = !DILocation(line: 90, column: 1, scope: !35)
!98 = !DILocation(line: 102, column: 10, scope: !38)
!99 = !DILocation(line: 104, column: 10, scope: !100)
!100 = distinct !DILexicalBlock(scope: !38, file: !1, line: 104, column: 6)
!101 = !DILocation(line: 104, column: 6, scope: !38)
!102 = !DILocation(line: 105, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 104, column: 20)
!104 = !DILocation(line: 105, column: 4, scope: !103)
!105 = !DILocation(line: 107, column: 4, scope: !103)
!106 = !DILocation(line: 109, column: 1, scope: !38)
!107 = !DILocation(line: 110, column: 1, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 110, column: 1)
!109 = distinct !DILexicalBlock(scope: !38, file: !1, line: 110, column: 1)
!110 = !DILocation(line: 112, column: 1, scope: !38)
