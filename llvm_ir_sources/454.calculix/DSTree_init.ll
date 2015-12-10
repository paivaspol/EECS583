; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init1(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DSTree_init2(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_init1(%struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !38, metadata !52), !dbg !53
  tail call void @llvm.dbg.value(metadata i32 %ndomsep, i64 0, metadata !39, metadata !52), !dbg !54
  tail call void @llvm.dbg.value(metadata i32 %nvtx, i64 0, metadata !40, metadata !52), !dbg !55
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !56
  %2 = icmp slt i32 %ndomsep, 1, !dbg !58
  %or.cond = or i1 %1, %2, !dbg !59
  br i1 %or.cond, label %3, label %6, !dbg !59

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !60, !tbaa !62
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._DSTree* %dstree, i32 %ndomsep, i32 %nvtx) #5, !dbg !66
  tail call void @exit(i32 -1) #6, !dbg !67
  unreachable, !dbg !67

; <label>:6                                       ; preds = %0
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #5, !dbg !68
  %7 = tail call %struct._Tree* @Tree_new() #5, !dbg !69
  %8 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !70
  store %struct._Tree* %7, %struct._Tree** %8, align 8, !dbg !71, !tbaa !72
  tail call void @Tree_init1(%struct._Tree* %7, i32 %ndomsep) #5, !dbg !74
  %9 = tail call %struct._IV* @IV_new() #5, !dbg !75
  %10 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !76
  store %struct._IV* %9, %struct._IV** %10, align 8, !dbg !77, !tbaa !78
  tail call void @IV_init(%struct._IV* %9, i32 %nvtx, i32* null) #5, !dbg !79
  %11 = load %struct._IV** %10, align 8, !dbg !80, !tbaa !78
  tail call void @IV_fill(%struct._IV* %11, i32 -1) #5, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DSTree_clearData(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DSTree_init2(%struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !45, metadata !52), !dbg !83
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !46, metadata !52), !dbg !84
  tail call void @llvm.dbg.value(metadata %struct._IV* %mapIV, i64 0, metadata !47, metadata !52), !dbg !85
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !86
  %2 = icmp eq %struct._Tree* %tree, null, !dbg !88
  %or.cond = or i1 %1, %2, !dbg !89
  br i1 %or.cond, label %11, label %3, !dbg !89

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !90
  %5 = load i32* %4, align 4, !dbg !90, !tbaa !91
  %6 = icmp slt i32 %5, 1, !dbg !94
  %7 = icmp eq %struct._IV* %mapIV, null, !dbg !95
  %or.cond3 = or i1 %7, %6, !dbg !96
  br i1 %or.cond3, label %11, label %8, !dbg !96

; <label>:8                                       ; preds = %3
  %9 = tail call i32 @IV_size(%struct._IV* %mapIV) #5, !dbg !97
  %10 = icmp slt i32 %9, 1, !dbg !98
  br i1 %10, label %11, label %14, !dbg !99

; <label>:11                                      ; preds = %8, %3, %0
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !100, !tbaa !62
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree, %struct._Tree* %tree, %struct._IV* %mapIV) #5, !dbg !102
  tail call void @exit(i32 -1) #6, !dbg !103
  unreachable, !dbg !103

; <label>:14                                      ; preds = %8
  tail call void @DSTree_clearData(%struct._DSTree* %dstree) #5, !dbg !104
  %15 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !105
  store %struct._Tree* %tree, %struct._Tree** %15, align 8, !dbg !106, !tbaa !72
  %16 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !107
  store %struct._IV* %mapIV, %struct._IV** %16, align 8, !dbg !108, !tbaa !78
  ret void, !dbg !109
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !41}
!6 = !DISubprogram(name: "DSTree_init1", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*, i32, i32)* @DSTree_init1, variables: !37)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !21, !21}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSTree", file: !11, line: 22, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DSTree", file: !11, line: 23, size: 128, align: 64, elements: !13)
!13 = !{!14, !27}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !12, file: !11, line: 24, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !17, line: 15, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !17, line: 16, size: 256, align: 64, elements: !19)
!19 = !{!20, !22, !23, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !18, file: !17, line: 17, baseType: !21, size: 32, align: 32)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !18, file: !17, line: 18, baseType: !21, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !18, file: !17, line: 19, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !18, file: !17, line: 20, baseType: !24, size: 64, align: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !18, file: !17, line: 21, baseType: !24, size: 64, align: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mapIV", scope: !12, file: !11, line: 25, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !21, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !21, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !21, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !24, size: 64, align: 64, offset: 128)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ndomsep", arg: 2, scope: !6, file: !1, line: 16, type: !21)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvtx", arg: 3, scope: !6, file: !1, line: 17, type: !21)
!41 = !DISubprogram(name: "DSTree_init2", scope: !1, file: !1, line: 47, type: !42, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DSTree*, %struct._Tree*, %struct._IV*)* @DSTree_init2, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !9, !15, !28}
!44 = !{!45, !46, !47}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !41, file: !1, line: 48, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 2, scope: !41, file: !1, line: 49, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mapIV", arg: 3, scope: !41, file: !1, line: 50, type: !28)
!48 = !{i32 2, !"Dwarf Version", i32 2}
!49 = !{i32 2, !"Debug Info Version", i32 700000003}
!50 = !{i32 1, !"PIC Level", i32 2}
!51 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!52 = !DIExpression()
!53 = !DILocation(line: 15, column: 14, scope: !6)
!54 = !DILocation(line: 16, column: 13, scope: !6)
!55 = !DILocation(line: 17, column: 13, scope: !6)
!56 = !DILocation(line: 24, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!58 = !DILocation(line: 24, column: 32, scope: !57)
!59 = !DILocation(line: 24, column: 21, scope: !57)
!60 = !DILocation(line: 25, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 24, column: 39)
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 25, column: 4, scope: !61)
!67 = !DILocation(line: 27, column: 4, scope: !61)
!68 = !DILocation(line: 29, column: 1, scope: !6)
!69 = !DILocation(line: 30, column: 16, scope: !6)
!70 = !DILocation(line: 30, column: 9, scope: !6)
!71 = !DILocation(line: 30, column: 14, scope: !6)
!72 = !{!73, !63, i64 0}
!73 = !{!"_DSTree", !63, i64 0, !63, i64 8}
!74 = !DILocation(line: 31, column: 1, scope: !6)
!75 = !DILocation(line: 32, column: 17, scope: !6)
!76 = !DILocation(line: 32, column: 9, scope: !6)
!77 = !DILocation(line: 32, column: 15, scope: !6)
!78 = !{!73, !63, i64 8}
!79 = !DILocation(line: 33, column: 1, scope: !6)
!80 = !DILocation(line: 34, column: 17, scope: !6)
!81 = !DILocation(line: 34, column: 1, scope: !6)
!82 = !DILocation(line: 36, column: 1, scope: !6)
!83 = !DILocation(line: 48, column: 14, scope: !41)
!84 = !DILocation(line: 49, column: 14, scope: !41)
!85 = !DILocation(line: 50, column: 14, scope: !41)
!86 = !DILocation(line: 57, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !41, file: !1, line: 57, column: 6)
!88 = !DILocation(line: 57, column: 29, scope: !87)
!89 = !DILocation(line: 57, column: 21, scope: !87)
!90 = !DILocation(line: 57, column: 46, scope: !87)
!91 = !{!92, !93, i64 0}
!92 = !{!"_Tree", !93, i64 0, !93, i64 4, !63, i64 8, !63, i64 16, !63, i64 24}
!93 = !{!"int", !64, i64 0}
!94 = !DILocation(line: 57, column: 48, scope: !87)
!95 = !DILocation(line: 58, column: 13, scope: !87)
!96 = !DILocation(line: 58, column: 4, scope: !87)
!97 = !DILocation(line: 58, column: 24, scope: !87)
!98 = !DILocation(line: 58, column: 39, scope: !87)
!99 = !DILocation(line: 57, column: 6, scope: !41)
!100 = !DILocation(line: 59, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !87, file: !1, line: 58, column: 45)
!102 = !DILocation(line: 59, column: 4, scope: !101)
!103 = !DILocation(line: 61, column: 4, scope: !101)
!104 = !DILocation(line: 63, column: 1, scope: !41)
!105 = !DILocation(line: 64, column: 9, scope: !41)
!106 = !DILocation(line: 64, column: 15, scope: !41)
!107 = !DILocation(line: 65, column: 9, scope: !41)
!108 = !DILocation(line: 65, column: 15, scope: !41)
!109 = !DILocation(line: 67, column: 1, scope: !41)
