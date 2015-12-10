; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillNewToOldPerm(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillOldToNewPerm(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillBothPerms(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_fillNewToOldPerm(%struct._Tree* %tree, i32* %newToOld) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !22, metadata !45), !dbg !46
  tail call void @llvm.dbg.value(metadata i32* %newToOld, i64 0, metadata !23, metadata !45), !dbg !47
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !48
  br i1 %1, label %7, label %2, !dbg !50

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !51
  %4 = load i32* %3, align 4, !dbg !51, !tbaa !52
  %5 = icmp slt i32 %4, 1, !dbg !58
  %6 = icmp eq i32* %newToOld, null, !dbg !59
  %or.cond = or i1 %6, %5, !dbg !60
  br i1 %or.cond, label %7, label %10, !dbg !60

; <label>:7                                       ; preds = %2, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !61, !tbaa !63
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld) #5, !dbg !64
  tail call void @exit(i32 -1) #6, !dbg !65
  unreachable, !dbg !65

; <label>:10                                      ; preds = %2
  %11 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !66
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !25, metadata !45), !dbg !68
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !45), !dbg !69
  %12 = icmp eq i32 %11, -1, !dbg !70
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !72

.lr.ph:                                           ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %10 ]
  %v.03 = phi i32 [ %14, %.lr.ph ], [ %11, %10 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !72
  %13 = getelementptr inbounds i32* %newToOld, i64 %indvars.iv, !dbg !73
  store i32 %v.03, i32* %13, align 4, !dbg !75, !tbaa !76
  %14 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.03) #5, !dbg !77
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !25, metadata !45), !dbg !68
  %15 = icmp eq i32 %14, -1, !dbg !70
  br i1 %15, label %._crit_edge, label %.lr.ph, !dbg !72

._crit_edge:                                      ; preds = %.lr.ph, %10
  ret void, !dbg !78
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_fillOldToNewPerm(%struct._Tree* %tree, i32* %oldToNew) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !28, metadata !45), !dbg !79
  tail call void @llvm.dbg.value(metadata i32* %oldToNew, i64 0, metadata !29, metadata !45), !dbg !80
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !81
  br i1 %1, label %7, label %2, !dbg !83

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !84
  %4 = load i32* %3, align 4, !dbg !84, !tbaa !52
  %5 = icmp slt i32 %4, 1, !dbg !85
  %6 = icmp eq i32* %oldToNew, null, !dbg !86
  %or.cond = or i1 %6, %5, !dbg !87
  br i1 %or.cond, label %7, label %10, !dbg !87

; <label>:7                                       ; preds = %2, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !88, !tbaa !63
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32* %oldToNew) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !91
  unreachable, !dbg !91

; <label>:10                                      ; preds = %2
  %11 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !31, metadata !45), !dbg !94
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !45), !dbg !95
  %12 = icmp eq i32 %11, -1, !dbg !96
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !98

.lr.ph:                                           ; preds = %10, %.lr.ph
  %v.03 = phi i32 [ %16, %.lr.ph ], [ %11, %10 ]
  %i.02 = phi i32 [ %13, %.lr.ph ], [ 0, %10 ]
  %13 = add nuw nsw i32 %i.02, 1, !dbg !99
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !30, metadata !45), !dbg !95
  %14 = sext i32 %v.03 to i64, !dbg !101
  %15 = getelementptr inbounds i32* %oldToNew, i64 %14, !dbg !101
  store i32 %i.02, i32* %15, align 4, !dbg !102, !tbaa !76
  %16 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.03) #5, !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !31, metadata !45), !dbg !94
  %17 = icmp eq i32 %16, -1, !dbg !96
  br i1 %17, label %._crit_edge, label %.lr.ph, !dbg !98

._crit_edge:                                      ; preds = %.lr.ph, %10
  ret void, !dbg !104
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Tree_fillBothPerms(%struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !36, metadata !45), !dbg !105
  tail call void @llvm.dbg.value(metadata i32* %newToOld, i64 0, metadata !37, metadata !45), !dbg !106
  tail call void @llvm.dbg.value(metadata i32* %oldToNew, i64 0, metadata !38, metadata !45), !dbg !107
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !108
  br i1 %1, label %8, label %2, !dbg !110

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !111
  %4 = load i32* %3, align 4, !dbg !111, !tbaa !52
  %5 = icmp slt i32 %4, 1, !dbg !112
  %6 = icmp eq i32* %newToOld, null, !dbg !113
  %or.cond = or i1 %6, %5, !dbg !114
  %7 = icmp eq i32* %oldToNew, null, !dbg !115
  %or.cond3 = or i1 %7, %or.cond, !dbg !114
  br i1 %or.cond3, label %8, label %11, !dbg !114

; <label>:8                                       ; preds = %2, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !116, !tbaa !63
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #5, !dbg !118
  tail call void @exit(i32 -1) #6, !dbg !119
  unreachable, !dbg !119

; <label>:11                                      ; preds = %2
  %12 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !40, metadata !45), !dbg !122
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !39, metadata !45), !dbg !123
  %13 = icmp eq i32 %12, -1, !dbg !124
  br i1 %13, label %._crit_edge, label %.lr.ph, !dbg !126

.lr.ph:                                           ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %11 ]
  %v.05 = phi i32 [ %18, %.lr.ph ], [ %12, %11 ]
  %14 = getelementptr inbounds i32* %newToOld, i64 %indvars.iv, !dbg !127
  store i32 %v.05, i32* %14, align 4, !dbg !129, !tbaa !76
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !126
  %15 = sext i32 %v.05 to i64, !dbg !130
  %16 = getelementptr inbounds i32* %oldToNew, i64 %15, !dbg !130
  %17 = trunc i64 %indvars.iv to i32, !dbg !131
  store i32 %17, i32* %16, align 4, !dbg !131, !tbaa !76
  %18 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.05) #5, !dbg !132
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !40, metadata !45), !dbg !122
  %19 = icmp eq i32 %18, -1, !dbg !124
  br i1 %19, label %._crit_edge, label %.lr.ph, !dbg !126

._crit_edge:                                      ; preds = %.lr.ph, %11
  ret void, !dbg !133
}

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
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !26, !32}
!6 = !DISubprogram(name: "Tree_fillNewToOldPerm", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32*)* @Tree_fillNewToOldPerm, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !18}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !11, line: 15, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !11, line: 16, size: 256, align: 64, elements: !13)
!13 = !{!14, !16, !17, !19, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !12, file: !11, line: 17, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !12, file: !11, line: 18, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 20, baseType: !18, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 21, baseType: !18, size: 64, align: 64, offset: 192)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 15, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newToOld", arg: 2, scope: !6, file: !1, line: 16, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 18, type: !15)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !6, file: !1, line: 18, type: !15)
!26 = !DISubprogram(name: "Tree_fillOldToNewPerm", scope: !1, file: !1, line: 50, type: !7, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32*)* @Tree_fillOldToNewPerm, variables: !27)
!27 = !{!28, !29, !30, !31}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !26, file: !1, line: 51, type: !9)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldToNew", arg: 2, scope: !26, file: !1, line: 52, type: !18)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !26, file: !1, line: 54, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !26, file: !1, line: 54, type: !15)
!32 = !DISubprogram(name: "Tree_fillBothPerms", scope: !1, file: !1, line: 86, type: !33, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Tree*, i32*, i32*)* @Tree_fillBothPerms, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !9, !18, !18}
!35 = !{!36, !37, !38, !39, !40}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !32, file: !1, line: 87, type: !9)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newToOld", arg: 2, scope: !32, file: !1, line: 88, type: !18)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldToNew", arg: 3, scope: !32, file: !1, line: 89, type: !18)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !32, file: !1, line: 91, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !32, file: !1, line: 91, type: !15)
!41 = !{i32 2, !"Dwarf Version", i32 2}
!42 = !{i32 2, !"Debug Info Version", i32 700000003}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!45 = !DIExpression()
!46 = !DILocation(line: 15, column: 12, scope: !6)
!47 = !DILocation(line: 16, column: 11, scope: !6)
!48 = !DILocation(line: 24, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !6, file: !1, line: 24, column: 6)
!50 = !DILocation(line: 24, column: 19, scope: !49)
!51 = !DILocation(line: 24, column: 28, scope: !49)
!52 = !{!53, !54, i64 0}
!53 = !{!"_Tree", !54, i64 0, !54, i64 4, !57, i64 8, !57, i64 16, !57, i64 24}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"any pointer", !55, i64 0}
!58 = !DILocation(line: 24, column: 30, scope: !49)
!59 = !DILocation(line: 24, column: 46, scope: !49)
!60 = !DILocation(line: 24, column: 34, scope: !49)
!61 = !DILocation(line: 25, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !49, file: !1, line: 24, column: 56)
!63 = !{!57, !57, i64 0}
!64 = !DILocation(line: 25, column: 4, scope: !62)
!65 = !DILocation(line: 27, column: 4, scope: !62)
!66 = !DILocation(line: 34, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 1)
!68 = !DILocation(line: 18, column: 10, scope: !6)
!69 = !DILocation(line: 18, column: 7, scope: !6)
!70 = !DILocation(line: 35, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 34, column: 1)
!72 = !DILocation(line: 34, column: 1, scope: !67)
!73 = !DILocation(line: 37, column: 4, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 36, column: 38)
!75 = !DILocation(line: 37, column: 18, scope: !74)
!76 = !{!54, !54, i64 0}
!77 = !DILocation(line: 36, column: 11, scope: !71)
!78 = !DILocation(line: 39, column: 1, scope: !6)
!79 = !DILocation(line: 51, column: 12, scope: !26)
!80 = !DILocation(line: 52, column: 11, scope: !26)
!81 = !DILocation(line: 60, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !26, file: !1, line: 60, column: 6)
!83 = !DILocation(line: 60, column: 19, scope: !82)
!84 = !DILocation(line: 60, column: 28, scope: !82)
!85 = !DILocation(line: 60, column: 30, scope: !82)
!86 = !DILocation(line: 60, column: 46, scope: !82)
!87 = !DILocation(line: 60, column: 34, scope: !82)
!88 = !DILocation(line: 61, column: 12, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 60, column: 56)
!90 = !DILocation(line: 61, column: 4, scope: !89)
!91 = !DILocation(line: 63, column: 4, scope: !89)
!92 = !DILocation(line: 70, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !26, file: !1, line: 70, column: 1)
!94 = !DILocation(line: 54, column: 10, scope: !26)
!95 = !DILocation(line: 54, column: 7, scope: !26)
!96 = !DILocation(line: 71, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 70, column: 1)
!98 = !DILocation(line: 70, column: 1, scope: !93)
!99 = !DILocation(line: 73, column: 19, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 72, column: 38)
!101 = !DILocation(line: 73, column: 4, scope: !100)
!102 = !DILocation(line: 73, column: 16, scope: !100)
!103 = !DILocation(line: 72, column: 11, scope: !97)
!104 = !DILocation(line: 75, column: 1, scope: !26)
!105 = !DILocation(line: 87, column: 12, scope: !32)
!106 = !DILocation(line: 88, column: 11, scope: !32)
!107 = !DILocation(line: 89, column: 11, scope: !32)
!108 = !DILocation(line: 97, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !32, file: !1, line: 97, column: 7)
!110 = !DILocation(line: 97, column: 20, scope: !109)
!111 = !DILocation(line: 97, column: 29, scope: !109)
!112 = !DILocation(line: 97, column: 31, scope: !109)
!113 = !DILocation(line: 98, column: 16, scope: !109)
!114 = !DILocation(line: 98, column: 4, scope: !109)
!115 = !DILocation(line: 98, column: 36, scope: !109)
!116 = !DILocation(line: 99, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 98, column: 46)
!118 = !DILocation(line: 99, column: 4, scope: !117)
!119 = !DILocation(line: 101, column: 4, scope: !117)
!120 = !DILocation(line: 108, column: 11, scope: !121)
!121 = distinct !DILexicalBlock(scope: !32, file: !1, line: 108, column: 1)
!122 = !DILocation(line: 91, column: 10, scope: !32)
!123 = !DILocation(line: 91, column: 7, scope: !32)
!124 = !DILocation(line: 109, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 108, column: 1)
!126 = !DILocation(line: 108, column: 1, scope: !121)
!127 = !DILocation(line: 111, column: 4, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 110, column: 38)
!129 = !DILocation(line: 111, column: 16, scope: !128)
!130 = !DILocation(line: 112, column: 4, scope: !128)
!131 = !DILocation(line: 112, column: 16, scope: !128)
!132 = !DILocation(line: 110, column: 11, scope: !125)
!133 = !DILocation(line: 114, column: 1, scope: !32)
