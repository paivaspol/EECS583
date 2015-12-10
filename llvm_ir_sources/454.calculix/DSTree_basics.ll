; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DSTree_setDefaultFields(%p)\0A dstree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DSTree_clearData(%p)\0A dstree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DSTree_free(%p)\0A dstree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._DSTree* @DSTree_new() #0 {
  %1 = tail call i8* @malloc(i64 16) #6, !dbg !58
  %2 = bitcast i8* %1 to %struct._DSTree*, !dbg !58
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %2, i64 0, metadata !42, metadata !62), !dbg !63
  %3 = icmp eq i8* %1, null, !dbg !58
  br i1 %3, label %4, label %7, !dbg !64

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !65, !tbaa !67
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 27, i8* getelementptr inbounds ([93 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !65
  tail call void @exit(i32 -1) #7, !dbg !65
  unreachable, !dbg !65

; <label>:7                                       ; preds = %0
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %2) #8, !dbg !71
  ret %struct._DSTree* %2, !dbg !72
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !47, metadata !62), !dbg !73
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !74
  br i1 %1, label %2, label %5, !dbg !76

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !77, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !79
  tail call void @exit(i32 -1) #7, !dbg !80
  unreachable, !dbg !80

; <label>:5                                       ; preds = %0
  %6 = bitcast %struct._DSTree* %dstree to i8*, !dbg !81
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false), !dbg !82
  ret void, !dbg !81
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_clearData(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !50, metadata !62), !dbg !83
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !84
  br i1 %1, label %2, label %5, !dbg !86

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !87, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !89
  tail call void @exit(i32 -1) #7, !dbg !90
  unreachable, !dbg !90

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !91
  %7 = load %struct._Tree** %6, align 8, !dbg !91, !tbaa !93
  %8 = icmp eq %struct._Tree* %7, null, !dbg !95
  br i1 %8, label %11, label %9, !dbg !96

; <label>:9                                       ; preds = %5
  tail call void @Tree_clearData(%struct._Tree* %7) #6, !dbg !97
  %10 = load %struct._Tree** %6, align 8, !dbg !99, !tbaa !93
  tail call void @Tree_free(%struct._Tree* %10) #6, !dbg !100
  br label %11, !dbg !101

; <label>:11                                      ; preds = %5, %9
  %12 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !102
  %13 = load %struct._IV** %12, align 8, !dbg !102, !tbaa !104
  %14 = icmp eq %struct._IV* %13, null, !dbg !105
  br i1 %14, label %16, label %15, !dbg !106

; <label>:15                                      ; preds = %11
  tail call void @IV_free(%struct._IV* %13) #6, !dbg !107
  br label %16, !dbg !109

; <label>:16                                      ; preds = %11, %15
  tail call void @DSTree_setDefaultFields(%struct._DSTree* %dstree) #8, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare void @Tree_free(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_free(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !53, metadata !62), !dbg !112
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !113
  br i1 %1, label %2, label %5, !dbg !115

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !116, !tbaa !67
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._DSTree* null) #6, !dbg !118
  tail call void @exit(i32 -1) #7, !dbg !119
  unreachable, !dbg !119

; <label>:5                                       ; preds = %0
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #8, !dbg !120
  %6 = bitcast %struct._DSTree* %dstree to i8*, !dbg !121
  tail call void @free(i8* %6) #8, !dbg !121
  tail call void @llvm.dbg.value(metadata %struct._DSTree* null, i64 0, metadata !53, metadata !62), !dbg !112
  ret void, !dbg !124
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
!llvm.module.flags = !{!54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !35, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !31, !32, !33}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DSTree", file: !6, line: 23, size: 128, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !21}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !5, file: !6, line: 24, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !11, line: 15, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !11, line: 16, size: 256, align: 64, elements: !13)
!13 = !{!14, !16, !17, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !12, file: !11, line: 17, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !12, file: !11, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 20, baseType: !18, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 21, baseType: !18, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "mapIV", scope: !5, file: !6, line: 25, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !24, line: 20, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !24, line: 21, size: 192, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !25, file: !24, line: 22, baseType: !15, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !25, file: !24, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !25, file: !24, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !25, file: !24, line: 25, baseType: !18, size: 64, align: 64, offset: 128)
!31 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !{!36, !43, !48, !51}
!36 = !DISubprogram(name: "DSTree_new", scope: !1, file: !1, line: 17, type: !37, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: %struct._DSTree* ()* @DSTree_new, variables: !41)
!37 = !DISubroutineType(types: !38)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSTree", file: !6, line: 22, baseType: !5)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dstree", scope: !36, file: !1, line: 20, type: !39)
!43 = !DISubprogram(name: "DSTree_setDefaultFields", scope: !1, file: !1, line: 47, type: !44, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*)* @DSTree_setDefaultFields, variables: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !39}
!46 = !{!47}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !43, file: !1, line: 48, type: !39)
!48 = !DISubprogram(name: "DSTree_clearData", scope: !1, file: !1, line: 80, type: !44, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*)* @DSTree_clearData, variables: !49)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !48, file: !1, line: 81, type: !39)
!51 = !DISubprogram(name: "DSTree_free", scope: !1, file: !1, line: 119, type: !44, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*)* @DSTree_free, variables: !52)
!52 = !{!53}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !51, file: !1, line: 120, type: !39)
!54 = !{i32 2, !"Dwarf Version", i32 2}
!55 = !{i32 2, !"Debug Info Version", i32 700000003}
!56 = !{i32 1, !"PIC Level", i32 2}
!57 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!58 = !DILocation(line: 27, column: 1, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 1)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 27, column: 1)
!61 = distinct !DILexicalBlock(scope: !36, file: !1, line: 27, column: 1)
!62 = !DIExpression()
!63 = !DILocation(line: 20, column: 11, scope: !36)
!64 = !DILocation(line: 27, column: 1, scope: !60)
!65 = !DILocation(line: 27, column: 1, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 27, column: 1)
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 29, column: 1, scope: !36)
!72 = !DILocation(line: 36, column: 1, scope: !36)
!73 = !DILocation(line: 48, column: 14, scope: !43)
!74 = !DILocation(line: 56, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 56, column: 6)
!76 = !DILocation(line: 56, column: 6, scope: !43)
!77 = !DILocation(line: 57, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 56, column: 23)
!79 = !DILocation(line: 57, column: 4, scope: !78)
!80 = !DILocation(line: 59, column: 4, scope: !78)
!81 = !DILocation(line: 69, column: 1, scope: !43)
!82 = !DILocation(line: 62, column: 15, scope: !43)
!83 = !DILocation(line: 81, column: 14, scope: !48)
!84 = !DILocation(line: 88, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !48, file: !1, line: 88, column: 6)
!86 = !DILocation(line: 88, column: 6, scope: !48)
!87 = !DILocation(line: 89, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 88, column: 23)
!89 = !DILocation(line: 89, column: 4, scope: !88)
!90 = !DILocation(line: 91, column: 4, scope: !88)
!91 = !DILocation(line: 94, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !48, file: !1, line: 94, column: 6)
!93 = !{!94, !68, i64 0}
!94 = !{!"_DSTree", !68, i64 0, !68, i64 8}
!95 = !DILocation(line: 94, column: 19, scope: !92)
!96 = !DILocation(line: 94, column: 6, scope: !48)
!97 = !DILocation(line: 95, column: 4, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 94, column: 29)
!99 = !DILocation(line: 96, column: 22, scope: !98)
!100 = !DILocation(line: 96, column: 4, scope: !98)
!101 = !DILocation(line: 97, column: 1, scope: !98)
!102 = !DILocation(line: 98, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !48, file: !1, line: 98, column: 6)
!104 = !{!94, !68, i64 8}
!105 = !DILocation(line: 98, column: 20, scope: !103)
!106 = !DILocation(line: 98, column: 6, scope: !48)
!107 = !DILocation(line: 99, column: 4, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 98, column: 30)
!109 = !DILocation(line: 100, column: 1, scope: !108)
!110 = !DILocation(line: 101, column: 1, scope: !48)
!111 = !DILocation(line: 108, column: 1, scope: !48)
!112 = !DILocation(line: 120, column: 14, scope: !51)
!113 = !DILocation(line: 127, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !51, file: !1, line: 127, column: 6)
!115 = !DILocation(line: 127, column: 6, scope: !51)
!116 = !DILocation(line: 128, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 127, column: 23)
!118 = !DILocation(line: 128, column: 4, scope: !117)
!119 = !DILocation(line: 130, column: 4, scope: !117)
!120 = !DILocation(line: 133, column: 1, scope: !51)
!121 = !DILocation(line: 134, column: 1, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 134, column: 1)
!123 = distinct !DILexicalBlock(scope: !51, file: !1, line: 134, column: 1)
!124 = !DILocation(line: 141, column: 1, scope: !51)
