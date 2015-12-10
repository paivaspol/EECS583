; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stack.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failure at %s line %d\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stack.c\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.intstack_s* @InitIntStack() #0 {
  %1 = tail call i8* @malloc(i64 16) #4, !dbg !51
  %2 = bitcast i8* %1 to %struct.intstack_s*, !dbg !53
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %2, i64 0, metadata !17, metadata !54), !dbg !55
  %3 = icmp eq i8* %1, null, !dbg !56
  br i1 %3, label %4, label %5, !dbg !57

; <label>:4                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 42) #4, !dbg !58
  br label %5, !dbg !58

; <label>:5                                       ; preds = %4, %0
  %6 = getelementptr inbounds i8* %1, i64 8, !dbg !59
  %7 = bitcast i8* %6 to %struct.intstack_s**, !dbg !59
  store %struct.intstack_s* null, %struct.intstack_s** %7, align 8, !dbg !60, !tbaa !61
  ret %struct.intstack_s* %2, !dbg !67
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @PushIntStack(%struct.intstack_s* nocapture %stack, i32 %data) #0 {
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !22, metadata !54), !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %data, i64 0, metadata !23, metadata !54), !dbg !69
  %1 = tail call i8* @malloc(i64 16) #4, !dbg !70
  %2 = icmp eq i8* %1, null, !dbg !72
  br i1 %2, label %3, label %4, !dbg !73

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 52) #4, !dbg !74
  br label %4, !dbg !74

; <label>:4                                       ; preds = %3, %0
  %5 = bitcast i8* %1 to i32*, !dbg !75
  store i32 %data, i32* %5, align 4, !dbg !76, !tbaa !77
  %6 = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !78
  %7 = bitcast %struct.intstack_s** %6 to i64*, !dbg !78
  %8 = load i64* %7, align 8, !dbg !78, !tbaa !61
  %9 = getelementptr inbounds i8* %1, i64 8, !dbg !79
  %10 = bitcast i8* %9 to i64*, !dbg !79
  store i64 %8, i64* %10, align 8, !dbg !79, !tbaa !61
  %11 = bitcast %struct.intstack_s** %6 to i8**, !dbg !80
  store i8* %1, i8** %11, align 8, !dbg !80, !tbaa !61
  ret void, !dbg !81
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PopIntStack(%struct.intstack_s* nocapture %stack, i32* nocapture %ret_data) #0 {
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !30, metadata !54), !dbg !82
  tail call void @llvm.dbg.value(metadata i32* %ret_data, i64 0, metadata !31, metadata !54), !dbg !83
  %1 = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !84
  %2 = load %struct.intstack_s** %1, align 8, !dbg !84, !tbaa !61
  %3 = icmp eq %struct.intstack_s* %2, null, !dbg !86
  br i1 %3, label %12, label %4, !dbg !87

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %2, i64 0, metadata !32, metadata !54), !dbg !88
  %5 = getelementptr inbounds %struct.intstack_s* %2, i64 0, i32 1, !dbg !89
  %6 = bitcast %struct.intstack_s** %5 to i64*, !dbg !89
  %7 = load i64* %6, align 8, !dbg !89, !tbaa !61
  %8 = bitcast %struct.intstack_s** %1 to i64*, !dbg !90
  store i64 %7, i64* %8, align 8, !dbg !90, !tbaa !61
  %9 = getelementptr inbounds %struct.intstack_s* %2, i64 0, i32 0, !dbg !91
  %10 = load i32* %9, align 4, !dbg !91, !tbaa !77
  store i32 %10, i32* %ret_data, align 4, !dbg !92, !tbaa !93
  %11 = bitcast %struct.intstack_s* %2 to i8*, !dbg !94
  tail call void @free(i8* %11) #5, !dbg !95
  br label %12, !dbg !96

; <label>:12                                      ; preds = %0, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %0 ]
  ret i32 %.0, !dbg !97
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @ReverseIntStack(%struct.intstack_s* nocapture %stack) #0 {
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !37, metadata !54), !dbg !98
  %1 = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !99
  %2 = load %struct.intstack_s** %1, align 8, !dbg !99, !tbaa !61
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %2, i64 0, metadata !38, metadata !54), !dbg !100
  store %struct.intstack_s* null, %struct.intstack_s** %1, align 8, !dbg !101, !tbaa !61
  %3 = icmp eq %struct.intstack_s* %2, null, !dbg !103
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !104

.lr.ph:                                           ; preds = %0, %.lr.ph
  %4 = phi i64 [ %9, %.lr.ph ], [ 0, %0 ], !dbg !105
  %old.01 = phi %struct.intstack_s* [ %6, %.lr.ph ], [ %2, %0 ]
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %6, i64 0, metadata !39, metadata !54), !dbg !105
  %5 = getelementptr inbounds %struct.intstack_s* %old.01, i64 0, i32 1, !dbg !106
  %6 = load %struct.intstack_s** %5, align 8, !dbg !106, !tbaa !61
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %6, i64 0, metadata !38, metadata !54), !dbg !100
  %7 = bitcast %struct.intstack_s** %5 to i64*, !dbg !107
  store i64 %4, i64* %7, align 8, !dbg !107, !tbaa !61
  store %struct.intstack_s* %old.01, %struct.intstack_s** %1, align 8, !dbg !101, !tbaa !61
  %8 = icmp eq %struct.intstack_s* %6, null, !dbg !103
  %9 = ptrtoint %struct.intstack_s* %old.01 to i64
  br i1 %8, label %._crit_edge, label %.lr.ph, !dbg !104

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !108
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @FreeIntStack(%struct.intstack_s* nocapture %stack) #0 {
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !44, metadata !54), !dbg !109
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !54), !dbg !110
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !30, metadata !54) #6, !dbg !111
  %1 = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1, !dbg !113
  %2 = load %struct.intstack_s** %1, align 8, !dbg !113, !tbaa !61
  %3 = icmp eq %struct.intstack_s* %2, null, !dbg !114
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !115

.lr.ph:                                           ; preds = %0
  %4 = bitcast %struct.intstack_s** %1 to i64*, !dbg !116
  br label %5, !dbg !115

; <label>:5                                       ; preds = %.lr.ph, %5
  %6 = phi %struct.intstack_s* [ %2, %.lr.ph ], [ %12, %5 ]
  %count.01 = phi i32 [ 0, %.lr.ph ], [ %11, %5 ]
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %12, i64 0, metadata !32, metadata !54) #6, !dbg !117
  %7 = getelementptr inbounds %struct.intstack_s* %6, i64 0, i32 1, !dbg !118
  %8 = bitcast %struct.intstack_s** %7 to i64*, !dbg !118
  %9 = load i64* %8, align 8, !dbg !118, !tbaa !61
  store i64 %9, i64* %4, align 8, !dbg !116, !tbaa !61
  %10 = bitcast %struct.intstack_s* %6 to i8*, !dbg !119
  tail call void @free(i8* %10) #4, !dbg !120
  %11 = add nuw nsw i32 %count.01, 1, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !46, metadata !54), !dbg !110
  tail call void @llvm.dbg.value(metadata %struct.intstack_s* %stack, i64 0, metadata !30, metadata !54) #6, !dbg !111
  %12 = load %struct.intstack_s** %1, align 8, !dbg !113, !tbaa !61
  %13 = icmp eq %struct.intstack_s* %12, null, !dbg !114
  br i1 %13, label %._crit_edge, label %5, !dbg !115

._crit_edge:                                      ; preds = %5, %0
  %count.0.lcssa = phi i32 [ 0, %0 ], [ %11, %5 ]
  %14 = bitcast %struct.intstack_s* %stack to i8*, !dbg !122
  tail call void @free(i8* %14) #5, !dbg !123
  ret i32 %count.0.lcssa, !dbg !124
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !12, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stack.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "intstack_s", file: !6, line: 282, size: 128, align: 64, elements: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !6, line: 283, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !5, file: !6, line: 284, baseType: !4, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !18, !25, !33, !40}
!13 = !DISubprogram(name: "InitIntStack", scope: !1, file: !1, line: 37, type: !14, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: %struct.intstack_s* ()* @InitIntStack, variables: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4}
!16 = !{!17}
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stack", scope: !13, file: !1, line: 39, type: !4)
!18 = !DISubprogram(name: "PushIntStack", scope: !1, file: !1, line: 47, type: !19, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.intstack_s*, i32)* @PushIntStack, variables: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !4, !9}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack", arg: 1, scope: !18, file: !1, line: 47, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !18, file: !1, line: 47, type: !9)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !18, file: !1, line: 49, type: !4)
!25 = !DISubprogram(name: "PopIntStack", scope: !1, file: !1, line: 60, type: !26, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.intstack_s*, i32*)* @PopIntStack, variables: !29)
!26 = !DISubroutineType(types: !27)
!27 = !{!9, !4, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!29 = !{!30, !31, !32}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack", arg: 1, scope: !25, file: !1, line: 60, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_data", arg: 2, scope: !25, file: !1, line: 60, type: !28)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !25, file: !1, line: 62, type: !4)
!33 = !DISubprogram(name: "ReverseIntStack", scope: !1, file: !1, line: 75, type: !34, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.intstack_s*)* @ReverseIntStack, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !4}
!36 = !{!37, !38, !39}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack", arg: 1, scope: !33, file: !1, line: 75, type: !4)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !33, file: !1, line: 77, type: !4)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !33, file: !1, line: 78, type: !4)
!40 = !DISubprogram(name: "FreeIntStack", scope: !1, file: !1, line: 92, type: !41, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.intstack_s*)* @FreeIntStack, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!9, !4}
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stack", arg: 1, scope: !40, file: !1, line: 92, type: !4)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !40, file: !1, line: 94, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !40, file: !1, line: 95, type: !9)
!47 = !{i32 2, !"Dwarf Version", i32 2}
!48 = !{i32 2, !"Debug Info Version", i32 700000003}
!49 = !{i32 1, !"PIC Level", i32 2}
!50 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!51 = !DILocation(line: 41, column: 38, scope: !52)
!52 = distinct !DILexicalBlock(scope: !13, file: !1, line: 41, column: 7)
!53 = !DILocation(line: 41, column: 16, scope: !52)
!54 = !DIExpression()
!55 = !DILocation(line: 39, column: 22, scope: !13)
!56 = !DILocation(line: 41, column: 74, scope: !52)
!57 = !DILocation(line: 41, column: 7, scope: !13)
!58 = !DILocation(line: 42, column: 5, scope: !52)
!59 = !DILocation(line: 43, column: 10, scope: !13)
!60 = !DILocation(line: 43, column: 14, scope: !13)
!61 = !{!62, !66, i64 8}
!62 = !{!"intstack_s", !63, i64 0, !66, i64 8}
!63 = !{!"int", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!"any pointer", !64, i64 0}
!67 = !DILocation(line: 44, column: 3, scope: !13)
!68 = !DILocation(line: 47, column: 33, scope: !18)
!69 = !DILocation(line: 47, column: 44, scope: !18)
!70 = !DILocation(line: 51, column: 36, scope: !71)
!71 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 7)
!72 = !DILocation(line: 51, column: 72, scope: !71)
!73 = !DILocation(line: 51, column: 7, scope: !18)
!74 = !DILocation(line: 52, column: 5, scope: !71)
!75 = !DILocation(line: 53, column: 8, scope: !18)
!76 = !DILocation(line: 53, column: 13, scope: !18)
!77 = !{!62, !63, i64 0}
!78 = !DILocation(line: 55, column: 25, scope: !18)
!79 = !DILocation(line: 55, column: 16, scope: !18)
!80 = !DILocation(line: 56, column: 16, scope: !18)
!81 = !DILocation(line: 57, column: 1, scope: !18)
!82 = !DILocation(line: 60, column: 33, scope: !25)
!83 = !DILocation(line: 60, column: 45, scope: !25)
!84 = !DILocation(line: 64, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !25, file: !1, line: 64, column: 7)
!86 = !DILocation(line: 64, column: 18, scope: !85)
!87 = !DILocation(line: 64, column: 7, scope: !25)
!88 = !DILocation(line: 62, column: 22, scope: !25)
!89 = !DILocation(line: 67, column: 21, scope: !25)
!90 = !DILocation(line: 67, column: 14, scope: !25)
!91 = !DILocation(line: 69, column: 20, scope: !25)
!92 = !DILocation(line: 69, column: 13, scope: !25)
!93 = !{!63, !63, i64 0}
!94 = !DILocation(line: 70, column: 8, scope: !25)
!95 = !DILocation(line: 70, column: 3, scope: !25)
!96 = !DILocation(line: 71, column: 3, scope: !25)
!97 = !DILocation(line: 72, column: 1, scope: !25)
!98 = !DILocation(line: 75, column: 36, scope: !33)
!99 = !DILocation(line: 80, column: 23, scope: !33)
!100 = !DILocation(line: 77, column: 22, scope: !33)
!101 = !DILocation(line: 87, column: 18, scope: !102)
!102 = distinct !DILexicalBlock(scope: !33, file: !1, line: 83, column: 5)
!103 = !DILocation(line: 82, column: 14, scope: !33)
!104 = !DILocation(line: 82, column: 3, scope: !33)
!105 = !DILocation(line: 78, column: 22, scope: !33)
!106 = !DILocation(line: 85, column: 25, scope: !102)
!107 = !DILocation(line: 86, column: 18, scope: !102)
!108 = !DILocation(line: 89, column: 1, scope: !33)
!109 = !DILocation(line: 92, column: 34, scope: !40)
!110 = !DILocation(line: 95, column: 7, scope: !40)
!111 = !DILocation(line: 60, column: 33, scope: !25, inlinedAt: !112)
!112 = distinct !DILocation(line: 97, column: 10, scope: !40)
!113 = !DILocation(line: 64, column: 14, scope: !85, inlinedAt: !112)
!114 = !DILocation(line: 64, column: 18, scope: !85, inlinedAt: !112)
!115 = !DILocation(line: 64, column: 7, scope: !25, inlinedAt: !112)
!116 = !DILocation(line: 67, column: 14, scope: !25, inlinedAt: !112)
!117 = !DILocation(line: 62, column: 22, scope: !25, inlinedAt: !112)
!118 = !DILocation(line: 67, column: 21, scope: !25, inlinedAt: !112)
!119 = !DILocation(line: 70, column: 8, scope: !25, inlinedAt: !112)
!120 = !DILocation(line: 70, column: 3, scope: !25, inlinedAt: !112)
!121 = !DILocation(line: 98, column: 10, scope: !40)
!122 = !DILocation(line: 99, column: 8, scope: !40)
!123 = !DILocation(line: 99, column: 3, scope: !40)
!124 = !DILocation(line: 100, column: 3, scope: !40)
