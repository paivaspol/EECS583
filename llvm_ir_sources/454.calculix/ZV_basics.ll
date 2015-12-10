; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in ZV_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZV_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in ZV_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._ZV* @ZV_new() #0 {
  %1 = tail call i8* @malloc(i64 24) #5, !dbg !42
  %2 = bitcast i8* %1 to %struct._ZV*, !dbg !42
  tail call void @llvm.dbg.value(metadata %struct._ZV* %2, i64 0, metadata !26, metadata !46), !dbg !47
  %3 = icmp eq i8* %1, null, !dbg !42
  br i1 %3, label %4, label %7, !dbg !48

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !49, !tbaa !51
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 24, i32 19, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !49
  tail call void @exit(i32 -1) #6, !dbg !49
  unreachable, !dbg !49

; <label>:7                                       ; preds = %0
  tail call void @ZV_setDefaultFields(%struct._ZV* %2) #7, !dbg !55
  ret %struct._ZV* %2, !dbg !56
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_setDefaultFields(%struct._ZV* %zv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !31, metadata !46), !dbg !57
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !58
  br i1 %1, label %2, label %5, !dbg !60

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !61, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._ZV* null) #5, !dbg !63
  tail call void @exit(i32 -1) #6, !dbg !64
  unreachable, !dbg !64

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !65
  store i32 0, i32* %6, align 4, !dbg !66, !tbaa !67
  %7 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !70
  store i32 0, i32* %7, align 4, !dbg !71, !tbaa !72
  %8 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !73
  store i32 0, i32* %8, align 4, !dbg !74, !tbaa !75
  %9 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !76
  store double* null, double** %9, align 8, !dbg !77, !tbaa !78
  ret void, !dbg !79
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_clearData(%struct._ZV* %zv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !34, metadata !46), !dbg !80
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !81
  br i1 %1, label %2, label %5, !dbg !83

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !84, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._ZV* null) #5, !dbg !86
  tail call void @exit(i32 -1) #6, !dbg !87
  unreachable, !dbg !87

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !88
  %7 = load double** %6, align 8, !dbg !88, !tbaa !78
  %8 = icmp eq double* %7, null, !dbg !90
  br i1 %8, label %14, label %9, !dbg !91

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !92
  %11 = load i32* %10, align 4, !dbg !92, !tbaa !75
  %12 = icmp eq i32 %11, 1, !dbg !93
  br i1 %12, label %13, label %14, !dbg !94

; <label>:13                                      ; preds = %9
  tail call void @DVfree(double* %7) #5, !dbg !95
  br label %14, !dbg !97

; <label>:14                                      ; preds = %5, %13, %9
  tail call void @ZV_setDefaultFields(%struct._ZV* %zv) #7, !dbg !98
  ret void, !dbg !99
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_free(%struct._ZV* %zv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %zv, i64 0, metadata !37, metadata !46), !dbg !100
  %1 = icmp eq %struct._ZV* %zv, null, !dbg !101
  br i1 %1, label %2, label %5, !dbg !103

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !104, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._ZV* null) #5, !dbg !106
  tail call void @exit(i32 -1) #6, !dbg !107
  unreachable, !dbg !107

; <label>:5                                       ; preds = %0
  tail call void @ZV_clearData(%struct._ZV* %zv) #7, !dbg !108
  %6 = bitcast %struct._ZV* %zv to i8*, !dbg !109
  tail call void @free(i8* %6) #7, !dbg !109
  tail call void @llvm.dbg.value(metadata %struct._ZV* null, i64 0, metadata !37, metadata !46), !dbg !100
  ret void, !dbg !112
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !19, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !16, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ZV", file: !6, line: 21, size: 192, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/../ZV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !12}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5, file: !6, line: 22, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !5, file: !6, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !5, file: !6, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !5, file: !6, line: 25, baseType: !13, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !27, !32, !35}
!20 = !DISubprogram(name: "ZV_new", scope: !1, file: !1, line: 14, type: !21, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: %struct._ZV* ()* @ZV_new, variables: !25)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZV", file: !6, line: 20, baseType: !5)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zv", scope: !20, file: !1, line: 17, type: !23)
!27 = !DISubprogram(name: "ZV_setDefaultFields", scope: !1, file: !1, line: 34, type: !28, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*)* @ZV_setDefaultFields, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !23}
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !27, file: !1, line: 35, type: !23)
!32 = !DISubprogram(name: "ZV_clearData", scope: !1, file: !1, line: 58, type: !28, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*)* @ZV_clearData, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !32, file: !1, line: 59, type: !23)
!35 = !DISubprogram(name: "ZV_free", scope: !1, file: !1, line: 82, type: !28, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*)* @ZV_free, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zv", arg: 1, scope: !35, file: !1, line: 83, type: !23)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DILocation(line: 19, column: 1, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 19, column: 1)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 19, column: 1)
!45 = distinct !DILexicalBlock(scope: !20, file: !1, line: 19, column: 1)
!46 = !DIExpression()
!47 = !DILocation(line: 17, column: 7, scope: !20)
!48 = !DILocation(line: 19, column: 1, scope: !44)
!49 = !DILocation(line: 19, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 19, column: 1)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 21, column: 1, scope: !20)
!56 = !DILocation(line: 23, column: 1, scope: !20)
!57 = !DILocation(line: 35, column: 10, scope: !27)
!58 = !DILocation(line: 37, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !27, file: !1, line: 37, column: 6)
!60 = !DILocation(line: 37, column: 6, scope: !27)
!61 = !DILocation(line: 38, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 37, column: 19)
!63 = !DILocation(line: 38, column: 4, scope: !62)
!64 = !DILocation(line: 40, column: 4, scope: !62)
!65 = !DILocation(line: 42, column: 5, scope: !27)
!66 = !DILocation(line: 42, column: 13, scope: !27)
!67 = !{!68, !69, i64 0}
!68 = !{!"_ZV", !69, i64 0, !69, i64 4, !69, i64 8, !52, i64 16}
!69 = !{!"int", !53, i64 0}
!70 = !DILocation(line: 43, column: 5, scope: !27)
!71 = !DILocation(line: 43, column: 13, scope: !27)
!72 = !{!68, !69, i64 4}
!73 = !DILocation(line: 44, column: 5, scope: !27)
!74 = !DILocation(line: 44, column: 13, scope: !27)
!75 = !{!68, !69, i64 8}
!76 = !DILocation(line: 45, column: 5, scope: !27)
!77 = !DILocation(line: 45, column: 13, scope: !27)
!78 = !{!68, !52, i64 16}
!79 = !DILocation(line: 47, column: 1, scope: !27)
!80 = !DILocation(line: 59, column: 10, scope: !32)
!81 = !DILocation(line: 61, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !32, file: !1, line: 61, column: 6)
!83 = !DILocation(line: 61, column: 6, scope: !32)
!84 = !DILocation(line: 62, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 61, column: 19)
!86 = !DILocation(line: 62, column: 4, scope: !85)
!87 = !DILocation(line: 64, column: 4, scope: !85)
!88 = !DILocation(line: 66, column: 10, scope: !89)
!89 = distinct !DILexicalBlock(scope: !32, file: !1, line: 66, column: 6)
!90 = !DILocation(line: 66, column: 14, scope: !89)
!91 = !DILocation(line: 66, column: 22, scope: !89)
!92 = !DILocation(line: 66, column: 29, scope: !89)
!93 = !DILocation(line: 66, column: 35, scope: !89)
!94 = !DILocation(line: 66, column: 6, scope: !32)
!95 = !DILocation(line: 67, column: 4, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 66, column: 42)
!97 = !DILocation(line: 68, column: 1, scope: !96)
!98 = !DILocation(line: 69, column: 1, scope: !32)
!99 = !DILocation(line: 71, column: 1, scope: !32)
!100 = !DILocation(line: 83, column: 10, scope: !35)
!101 = !DILocation(line: 85, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !35, file: !1, line: 85, column: 6)
!103 = !DILocation(line: 85, column: 6, scope: !35)
!104 = !DILocation(line: 86, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 85, column: 19)
!106 = !DILocation(line: 86, column: 4, scope: !105)
!107 = !DILocation(line: 88, column: 4, scope: !105)
!108 = !DILocation(line: 90, column: 1, scope: !35)
!109 = !DILocation(line: 91, column: 1, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 91, column: 1)
!111 = distinct !DILexicalBlock(scope: !35, file: !1, line: 91, column: 1)
!112 = !DILocation(line: 93, column: 1, scope: !35)
