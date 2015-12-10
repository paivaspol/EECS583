; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setDefaultFields(%p)\0A tree is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_clearData(%p)\0A tree is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_free(%p)\0A tree is NULL\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Tree* @Tree_new() #0 {
  %1 = tail call i8* @malloc(i64 32) #6, !dbg !42
  %2 = bitcast i8* %1 to %struct._Tree*, !dbg !42
  tail call void @llvm.dbg.value(metadata %struct._Tree* %2, i64 0, metadata !26, metadata !46), !dbg !47
  %3 = icmp eq i8* %1, null, !dbg !42
  br i1 %3, label %4, label %7, !dbg !48

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !49, !tbaa !51
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 27, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !49
  tail call void @exit(i32 -1) #7, !dbg !49
  unreachable, !dbg !49

; <label>:7                                       ; preds = %0
  tail call void @Tree_setDefaultFields(%struct._Tree* %2) #8, !dbg !55
  ret %struct._Tree* %2, !dbg !56
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_setDefaultFields(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !31, metadata !46), !dbg !57
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !58
  br i1 %1, label %2, label %5, !dbg !60

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !61, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* null) #6, !dbg !63
  tail call void @exit(i32 -1) #7, !dbg !64
  unreachable, !dbg !64

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !65
  store i32 0, i32* %6, align 4, !dbg !66, !tbaa !67
  %7 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !70
  store i32 -1, i32* %7, align 4, !dbg !71, !tbaa !72
  %8 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !73
  %9 = bitcast i32** %8 to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !75
  ret void, !dbg !74
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_clearData(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !34, metadata !46), !dbg !76
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !77
  br i1 %1, label %2, label %5, !dbg !79

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !80, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #6, !dbg !82
  tail call void @exit(i32 -1) #7, !dbg !83
  unreachable, !dbg !83

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !84
  %7 = load i32** %6, align 8, !dbg !84, !tbaa !86
  %8 = icmp eq i32* %7, null, !dbg !87
  br i1 %8, label %10, label %9, !dbg !88

; <label>:9                                       ; preds = %5
  tail call void @IVfree(i32* %7) #6, !dbg !89
  br label %10, !dbg !91

; <label>:10                                      ; preds = %5, %9
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !92
  %12 = load i32** %11, align 8, !dbg !92, !tbaa !94
  %13 = icmp eq i32* %12, null, !dbg !95
  br i1 %13, label %15, label %14, !dbg !96

; <label>:14                                      ; preds = %10
  tail call void @IVfree(i32* %12) #6, !dbg !97
  br label %15, !dbg !99

; <label>:15                                      ; preds = %10, %14
  %16 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !100
  %17 = load i32** %16, align 8, !dbg !100, !tbaa !102
  %18 = icmp eq i32* %17, null, !dbg !103
  br i1 %18, label %20, label %19, !dbg !104

; <label>:19                                      ; preds = %15
  tail call void @IVfree(i32* %17) #6, !dbg !105
  br label %20, !dbg !107

; <label>:20                                      ; preds = %15, %19
  tail call void @Tree_setDefaultFields(%struct._Tree* %tree) #8, !dbg !108
  ret void, !dbg !109
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_free(%struct._Tree* %tree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !37, metadata !46), !dbg !110
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !111
  br i1 %1, label %2, label %5, !dbg !113

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !114, !tbaa !51
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* null) #6, !dbg !116
  tail call void @exit(i32 -1) #7, !dbg !117
  unreachable, !dbg !117

; <label>:5                                       ; preds = %0
  tail call void @Tree_clearData(%struct._Tree* %tree) #8, !dbg !118
  %6 = bitcast %struct._Tree* %tree to i8*, !dbg !119
  tail call void @free(i8* %6) #8, !dbg !119
  tail call void @llvm.dbg.value(metadata %struct._Tree* null, i64 0, metadata !37, metadata !46), !dbg !110
  ret void, !dbg !122
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
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !19, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_basics.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !16, !17}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !6, line: 16, size: 256, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10, !11, !13, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !5, file: !6, line: 17, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5, file: !6, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !5, file: !6, line: 19, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !5, file: !6, line: 20, baseType: !12, size: 64, align: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !5, file: !6, line: 21, baseType: !12, size: 64, align: 64, offset: 192)
!15 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !27, !32, !35}
!20 = !DISubprogram(name: "Tree_new", scope: !1, file: !1, line: 17, type: !21, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Tree* ()* @Tree_new, variables: !25)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !6, line: 15, baseType: !5)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !20, file: !1, line: 20, type: !23)
!27 = !DISubprogram(name: "Tree_setDefaultFields", scope: !1, file: !1, line: 47, type: !28, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*)* @Tree_setDefaultFields, variables: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !23}
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !27, file: !1, line: 48, type: !23)
!32 = !DISubprogram(name: "Tree_clearData", scope: !1, file: !1, line: 83, type: !28, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*)* @Tree_clearData, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !32, file: !1, line: 84, type: !23)
!35 = !DISubprogram(name: "Tree_free", scope: !1, file: !1, line: 124, type: !28, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*)* @Tree_free, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !35, file: !1, line: 125, type: !23)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DILocation(line: 27, column: 1, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 27, column: 1)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 1)
!45 = distinct !DILexicalBlock(scope: !20, file: !1, line: 27, column: 1)
!46 = !DIExpression()
!47 = !DILocation(line: 20, column: 9, scope: !20)
!48 = !DILocation(line: 27, column: 1, scope: !44)
!49 = !DILocation(line: 27, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 27, column: 1)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 29, column: 1, scope: !20)
!56 = !DILocation(line: 36, column: 1, scope: !20)
!57 = !DILocation(line: 48, column: 12, scope: !27)
!58 = !DILocation(line: 56, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !27, file: !1, line: 56, column: 6)
!60 = !DILocation(line: 56, column: 6, scope: !27)
!61 = !DILocation(line: 57, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 56, column: 21)
!63 = !DILocation(line: 57, column: 4, scope: !62)
!64 = !DILocation(line: 59, column: 4, scope: !62)
!65 = !DILocation(line: 61, column: 7, scope: !27)
!66 = !DILocation(line: 61, column: 12, scope: !27)
!67 = !{!68, !69, i64 0}
!68 = !{!"_Tree", !69, i64 0, !69, i64 4, !52, i64 8, !52, i64 16, !52, i64 24}
!69 = !{!"int", !53, i64 0}
!70 = !DILocation(line: 62, column: 7, scope: !27)
!71 = !DILocation(line: 62, column: 12, scope: !27)
!72 = !{!68, !69, i64 4}
!73 = !DILocation(line: 63, column: 7, scope: !27)
!74 = !DILocation(line: 72, column: 1, scope: !27)
!75 = !DILocation(line: 64, column: 12, scope: !27)
!76 = !DILocation(line: 84, column: 12, scope: !32)
!77 = !DILocation(line: 91, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !32, file: !1, line: 91, column: 6)
!79 = !DILocation(line: 91, column: 6, scope: !32)
!80 = !DILocation(line: 92, column: 12, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 91, column: 21)
!82 = !DILocation(line: 92, column: 4, scope: !81)
!83 = !DILocation(line: 94, column: 4, scope: !81)
!84 = !DILocation(line: 97, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !32, file: !1, line: 97, column: 6)
!86 = !{!68, !52, i64 8}
!87 = !DILocation(line: 97, column: 16, scope: !85)
!88 = !DILocation(line: 97, column: 6, scope: !32)
!89 = !DILocation(line: 98, column: 4, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 97, column: 26)
!91 = !DILocation(line: 99, column: 1, scope: !90)
!92 = !DILocation(line: 100, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !32, file: !1, line: 100, column: 6)
!94 = !{!68, !52, i64 16}
!95 = !DILocation(line: 100, column: 16, scope: !93)
!96 = !DILocation(line: 100, column: 6, scope: !32)
!97 = !DILocation(line: 101, column: 4, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 100, column: 26)
!99 = !DILocation(line: 102, column: 1, scope: !98)
!100 = !DILocation(line: 103, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !32, file: !1, line: 103, column: 6)
!102 = !{!68, !52, i64 24}
!103 = !DILocation(line: 103, column: 16, scope: !101)
!104 = !DILocation(line: 103, column: 6, scope: !32)
!105 = !DILocation(line: 104, column: 4, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 103, column: 26)
!107 = !DILocation(line: 105, column: 1, scope: !106)
!108 = !DILocation(line: 106, column: 1, scope: !32)
!109 = !DILocation(line: 113, column: 1, scope: !32)
!110 = !DILocation(line: 125, column: 12, scope: !35)
!111 = !DILocation(line: 132, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !35, file: !1, line: 132, column: 6)
!113 = !DILocation(line: 132, column: 6, scope: !35)
!114 = !DILocation(line: 133, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 132, column: 21)
!116 = !DILocation(line: 133, column: 4, scope: !115)
!117 = !DILocation(line: 135, column: 4, scope: !115)
!118 = !DILocation(line: 138, column: 1, scope: !35)
!119 = !DILocation(line: 140, column: 1, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 140, column: 1)
!121 = distinct !DILexicalBlock(scope: !35, file: !1, line: 140, column: 1)
!122 = !DILocation(line: 147, column: 1, scope: !35)
