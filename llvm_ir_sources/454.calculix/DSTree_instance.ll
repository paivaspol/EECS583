; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in DSTree_tree(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"\0A fatal error in DSTree_mapIV(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !38, metadata !48), !dbg !49
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !50
  br i1 %1, label %2, label %5, !dbg !52

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !53, !tbaa !55
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._DSTree* null) #4, !dbg !59
  tail call void @exit(i32 -1) #5, !dbg !60
  unreachable, !dbg !60

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !61
  %7 = load %struct._Tree** %6, align 8, !dbg !61, !tbaa !62
  ret %struct._Tree* %7, !dbg !64
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DSTree* %dstree, i64 0, metadata !43, metadata !48), !dbg !65
  %1 = icmp eq %struct._DSTree* %dstree, null, !dbg !66
  br i1 %1, label %2, label %5, !dbg !68

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !69, !tbaa !55
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* null) #4, !dbg !71
  tail call void @exit(i32 -1) #5, !dbg !72
  unreachable, !dbg !72

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !73
  %7 = load %struct._IV** %6, align 8, !dbg !73, !tbaa !74
  ret %struct._IV* %7, !dbg !75
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !39}
!6 = !DISubprogram(name: "DSTree_tree", scope: !1, file: !1, line: 13, type: !7, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: %struct._Tree* (%struct._DSTree*)* @DSTree_tree, variables: !37)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !21}
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
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "DSTree", file: !23, line: 22, baseType: !24)
!23 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DSTree", file: !23, line: 23, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !24, file: !23, line: 24, baseType: !9, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "mapIV", scope: !24, file: !23, line: 25, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !15, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !18, size: 64, align: 64, offset: 128)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !6, file: !1, line: 14, type: !21)
!39 = !DISubprogram(name: "DSTree_mapIV", scope: !1, file: !1, line: 37, type: !40, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: %struct._IV* (%struct._DSTree*)* @DSTree_mapIV, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{!28, !21}
!42 = !{!43}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dstree", arg: 1, scope: !39, file: !1, line: 38, type: !21)
!44 = !{i32 2, !"Dwarf Version", i32 2}
!45 = !{i32 2, !"Debug Info Version", i32 700000003}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!48 = !DIExpression()
!49 = !DILocation(line: 14, column: 14, scope: !6)
!50 = !DILocation(line: 21, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !6, file: !1, line: 21, column: 6)
!52 = !DILocation(line: 21, column: 6, scope: !6)
!53 = !DILocation(line: 22, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 23)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !DILocation(line: 22, column: 4, scope: !54)
!60 = !DILocation(line: 24, column: 4, scope: !54)
!61 = !DILocation(line: 26, column: 16, scope: !6)
!62 = !{!63, !56, i64 0}
!63 = !{!"_DSTree", !56, i64 0, !56, i64 8}
!64 = !DILocation(line: 26, column: 1, scope: !6)
!65 = !DILocation(line: 38, column: 14, scope: !39)
!66 = !DILocation(line: 45, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !39, file: !1, line: 45, column: 6)
!68 = !DILocation(line: 45, column: 6, scope: !39)
!69 = !DILocation(line: 46, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 45, column: 23)
!71 = !DILocation(line: 46, column: 4, scope: !70)
!72 = !DILocation(line: 48, column: 4, scope: !70)
!73 = !DILocation(line: 50, column: 16, scope: !39)
!74 = !{!63, !56, i64 8}
!75 = !DILocation(line: 50, column: 1, scope: !39)
