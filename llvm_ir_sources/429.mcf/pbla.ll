; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pbla.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize ssp uwtable
define %struct.node* @primal_iminus(i64* nocapture %delta, i64* nocapture %xchange, %struct.node* %iplus, %struct.node* readonly %jplus, %struct.node** nocapture %w) #0 {
  tail call void @llvm.dbg.value(metadata i64* %delta, i64 0, metadata !49, metadata !59), !dbg !60
  tail call void @llvm.dbg.value(metadata i64* %xchange, i64 0, metadata !50, metadata !59), !dbg !61
  tail call void @llvm.dbg.value(metadata %struct.node* %iplus, i64 0, metadata !51, metadata !59), !dbg !62
  tail call void @llvm.dbg.value(metadata %struct.node* %jplus, i64 0, metadata !52, metadata !59), !dbg !63
  tail call void @llvm.dbg.value(metadata %struct.node** %w, i64 0, metadata !53, metadata !59), !dbg !64
  tail call void @llvm.dbg.value(metadata %struct.node* null, i64 0, metadata !54, metadata !59), !dbg !65
  %1 = icmp eq %struct.node* %iplus, %jplus, !dbg !66
  br i1 %1, label %.outer._crit_edge, label %.lr.ph, !dbg !67

.lr.ph:                                           ; preds = %0, %.outer
  %iminus.0.ph11 = phi %struct.node* [ %iminus.2, %.outer ], [ null, %0 ]
  %.0.ph10 = phi %struct.node* [ %.04, %.outer ], [ %iplus, %0 ]
  %.01.ph9 = phi %struct.node* [ %59, %.outer ], [ %jplus, %0 ]
  %2 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 11, !dbg !68
  br label %3, !dbg !67

; <label>:3                                       ; preds = %.lr.ph, %31
  %iminus.05 = phi %struct.node* [ %iminus.0.ph11, %.lr.ph ], [ %iminus.1, %31 ]
  %.04 = phi %struct.node* [ %.0.ph10, %.lr.ph ], [ %33, %31 ]
  %4 = getelementptr inbounds %struct.node* %.04, i64 0, i32 11, !dbg !71
  %5 = load i64* %4, align 8, !dbg !71, !tbaa !72
  %6 = load i64* %2, align 8, !dbg !68, !tbaa !72
  %7 = icmp slt i64 %5, %6, !dbg !79
  br i1 %7, label %8, label %35, !dbg !80

; <label>:8                                       ; preds = %3
  %9 = getelementptr inbounds %struct.node* %.04, i64 0, i32 1, !dbg !81
  %10 = load i32* %9, align 4, !dbg !81, !tbaa !84
  %11 = icmp eq i32 %10, 0, !dbg !85
  br i1 %11, label %18, label %12, !dbg !86

; <label>:12                                      ; preds = %8
  %13 = load i64* %delta, align 8, !dbg !87, !tbaa !90
  %14 = getelementptr inbounds %struct.node* %.04, i64 0, i32 10, !dbg !87
  %15 = load i64* %14, align 8, !dbg !87, !tbaa !91
  %16 = icmp sgt i64 %13, %15, !dbg !87
  br i1 %16, label %17, label %31, !dbg !92

; <label>:17                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata %struct.node* %33, i64 0, metadata !54, metadata !59), !dbg !65
  store i64 %15, i64* %delta, align 8, !dbg !93, !tbaa !90
  store i64 0, i64* %xchange, align 8, !dbg !93, !tbaa !90
  br label %31, !dbg !93

; <label>:18                                      ; preds = %8
  %19 = getelementptr inbounds %struct.node* %.04, i64 0, i32 3, !dbg !95
  %20 = load %struct.node** %19, align 8, !dbg !95, !tbaa !97
  %21 = getelementptr inbounds %struct.node* %20, i64 0, i32 3, !dbg !98
  %22 = load %struct.node** %21, align 8, !dbg !98, !tbaa !97
  %23 = icmp eq %struct.node* %22, null, !dbg !99
  br i1 %23, label %31, label %24, !dbg !100

; <label>:24                                      ; preds = %18
  %25 = load i64* %delta, align 8, !dbg !101, !tbaa !90
  %26 = getelementptr inbounds %struct.node* %.04, i64 0, i32 10, !dbg !101
  %27 = load i64* %26, align 8, !dbg !101, !tbaa !91
  %28 = sub nsw i64 1, %27, !dbg !101
  %29 = icmp sgt i64 %25, %28, !dbg !101
  br i1 %29, label %30, label %31, !dbg !104

; <label>:30                                      ; preds = %24
  tail call void @llvm.dbg.value(metadata %struct.node* %33, i64 0, metadata !54, metadata !59), !dbg !65
  store i64 %28, i64* %delta, align 8, !dbg !105, !tbaa !90
  store i64 0, i64* %xchange, align 8, !dbg !105, !tbaa !90
  br label %31, !dbg !105

; <label>:31                                      ; preds = %18, %30, %24, %12, %17
  %iminus.1 = phi %struct.node* [ %.04, %17 ], [ %iminus.05, %12 ], [ %.04, %30 ], [ %iminus.05, %24 ], [ %iminus.05, %18 ]
  %32 = getelementptr inbounds %struct.node* %.04, i64 0, i32 3, !dbg !107
  %33 = load %struct.node** %32, align 8, !dbg !107, !tbaa !97
  tail call void @llvm.dbg.value(metadata %struct.node* %33, i64 0, metadata !51, metadata !59), !dbg !62
  %34 = icmp eq %struct.node* %33, %.01.ph9, !dbg !66
  br i1 %34, label %.outer._crit_edge, label %3, !dbg !67

; <label>:35                                      ; preds = %3
  %36 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 1, !dbg !108
  %37 = load i32* %36, align 4, !dbg !108, !tbaa !84
  %38 = icmp eq i32 %37, 0, !dbg !111
  br i1 %38, label %39, label %45, !dbg !112

; <label>:39                                      ; preds = %35
  %40 = load i64* %delta, align 8, !dbg !113, !tbaa !90
  %41 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 10, !dbg !113
  %42 = load i64* %41, align 8, !dbg !113, !tbaa !91
  %43 = icmp slt i64 %40, %42, !dbg !113
  br i1 %43, label %.outer, label %44, !dbg !116

; <label>:44                                      ; preds = %39
  tail call void @llvm.dbg.value(metadata %struct.node* %59, i64 0, metadata !54, metadata !59), !dbg !65
  store i64 %42, i64* %delta, align 8, !dbg !117, !tbaa !90
  store i64 1, i64* %xchange, align 8, !dbg !117, !tbaa !90
  br label %.outer, !dbg !117

; <label>:45                                      ; preds = %35
  %46 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 3, !dbg !119
  %47 = load %struct.node** %46, align 8, !dbg !119, !tbaa !97
  %48 = getelementptr inbounds %struct.node* %47, i64 0, i32 3, !dbg !121
  %49 = load %struct.node** %48, align 8, !dbg !121, !tbaa !97
  %50 = icmp eq %struct.node* %49, null, !dbg !122
  br i1 %50, label %.outer, label %51, !dbg !123

; <label>:51                                      ; preds = %45
  %52 = load i64* %delta, align 8, !dbg !124, !tbaa !90
  %53 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 10, !dbg !124
  %54 = load i64* %53, align 8, !dbg !124, !tbaa !91
  %55 = sub nsw i64 1, %54, !dbg !124
  %56 = icmp slt i64 %52, %55, !dbg !124
  br i1 %56, label %.outer, label %57, !dbg !127

; <label>:57                                      ; preds = %51
  tail call void @llvm.dbg.value(metadata %struct.node* %59, i64 0, metadata !54, metadata !59), !dbg !65
  store i64 %55, i64* %delta, align 8, !dbg !128, !tbaa !90
  store i64 1, i64* %xchange, align 8, !dbg !128, !tbaa !90
  br label %.outer, !dbg !128

.outer:                                           ; preds = %51, %45, %39, %57, %44
  %iminus.2 = phi %struct.node* [ %.01.ph9, %57 ], [ %iminus.05, %51 ], [ %iminus.05, %45 ], [ %.01.ph9, %44 ], [ %iminus.05, %39 ]
  %58 = getelementptr inbounds %struct.node* %.01.ph9, i64 0, i32 3, !dbg !130
  %59 = load %struct.node** %58, align 8, !dbg !130, !tbaa !97
  tail call void @llvm.dbg.value(metadata %struct.node* %59, i64 0, metadata !52, metadata !59), !dbg !63
  %60 = icmp eq %struct.node* %.04, %59, !dbg !66
  br i1 %60, label %.outer._crit_edge, label %.lr.ph, !dbg !67

.outer._crit_edge:                                ; preds = %.outer, %31, %0
  %iminus.0.lcssa = phi %struct.node* [ null, %0 ], [ %iminus.1, %31 ], [ %iminus.2, %.outer ]
  %.0.lcssa = phi %struct.node* [ %iplus, %0 ], [ %.01.ph9, %31 ], [ %.04, %.outer ]
  store %struct.node* %.0.lcssa, %struct.node** %w, align 8, !dbg !131, !tbaa !132
  ret %struct.node* %iminus.0.lcssa, !dbg !133
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56, !57}
!llvm.ident = !{!58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pbla.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !5, line: 68, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !{!8}
!8 = !DISubprogram(name: "primal_iminus", scope: !1, file: !1, line: 41, type: !9, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: %struct.node* (i64*, i64*, %struct.node*, %struct.node*, %struct.node**)* @primal_iminus, variables: !48)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !45, !46, !11, !11, !47}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !5, line: 99, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !5, line: 107, size: 832, align: 64, elements: !14)
!14 = !{!15, !17, !19, !22, !23, !24, !25, !38, !39, !40, !41, !42, !43, !44}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !13, file: !5, line: 109, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !5, line: 69, baseType: !6)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !13, file: !5, line: 110, baseType: !18, size: 32, align: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !13, file: !5, line: 111, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !5, line: 100, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !13, file: !5, line: 112, baseType: !20, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !13, file: !5, line: 113, baseType: !20, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !13, file: !5, line: 114, baseType: !20, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !13, file: !5, line: 115, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !5, line: 103, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !5, line: 126, size: 512, align: 64, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !28, file: !5, line: 128, baseType: !16, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !28, file: !5, line: 129, baseType: !20, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !28, file: !5, line: 129, baseType: !20, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !28, file: !5, line: 130, baseType: !18, size: 32, align: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !28, file: !5, line: 131, baseType: !26, size: 64, align: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !28, file: !5, line: 131, baseType: !26, size: 64, align: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !28, file: !5, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !28, file: !5, line: 133, baseType: !16, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !13, file: !5, line: 116, baseType: !26, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !13, file: !5, line: 116, baseType: !26, size: 64, align: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !13, file: !5, line: 117, baseType: !26, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !13, file: !5, line: 118, baseType: !4, size: 64, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !13, file: !5, line: 119, baseType: !6, size: 64, align: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !13, file: !5, line: 120, baseType: !18, size: 32, align: 32, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !13, file: !5, line: 121, baseType: !18, size: 32, align: 32, offset: 800)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!48 = !{!49, !50, !51, !52, !53, !54}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delta", arg: 1, scope: !8, file: !1, line: 42, type: !45)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xchange", arg: 2, scope: !8, file: !1, line: 43, type: !46)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iplus", arg: 3, scope: !8, file: !1, line: 44, type: !11)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jplus", arg: 4, scope: !8, file: !1, line: 45, type: !11)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 5, scope: !8, file: !1, line: 46, type: !47)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iminus", scope: !8, file: !1, line: 56, type: !11)
!55 = !{i32 2, !"Dwarf Version", i32 2}
!56 = !{i32 2, !"Debug Info Version", i32 700000003}
!57 = !{i32 1, !"PIC Level", i32 2}
!58 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!59 = !DIExpression()
!60 = !DILocation(line: 42, column: 31, scope: !8)
!61 = !DILocation(line: 43, column: 29, scope: !8)
!62 = !DILocation(line: 44, column: 31, scope: !8)
!63 = !DILocation(line: 45, column: 30, scope: !8)
!64 = !DILocation(line: 46, column: 32, scope: !8)
!65 = !DILocation(line: 56, column: 13, scope: !8)
!66 = !DILocation(line: 59, column: 18, scope: !8)
!67 = !DILocation(line: 59, column: 5, scope: !8)
!68 = !DILocation(line: 61, column: 35, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 61, column: 13)
!70 = distinct !DILexicalBlock(scope: !8, file: !1, line: 60, column: 5)
!71 = !DILocation(line: 61, column: 20, scope: !69)
!72 = !{!73, !74, i64 88}
!73 = !{!"node", !74, i64 0, !77, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !78, i64 56, !78, i64 64, !78, i64 72, !74, i64 80, !74, i64 88, !77, i64 96, !77, i64 100}
!74 = !{!"long", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !{!"int", !75, i64 0}
!78 = !{!"any pointer", !75, i64 0}
!79 = !DILocation(line: 61, column: 26, scope: !69)
!80 = !DILocation(line: 61, column: 13, scope: !70)
!81 = !DILocation(line: 63, column: 24, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 63, column: 17)
!83 = distinct !DILexicalBlock(scope: !69, file: !1, line: 62, column: 9)
!84 = !{!73, !77, i64 8}
!85 = !DILocation(line: 63, column: 17, scope: !82)
!86 = !DILocation(line: 63, column: 17, scope: !83)
!87 = !DILocation(line: 64, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 64, column: 17)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 64, column: 17)
!90 = !{!74, !74, i64 0}
!91 = !{!73, !74, i64 80}
!92 = !DILocation(line: 64, column: 17, scope: !89)
!93 = !DILocation(line: 64, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !88, file: !1, line: 64, column: 17)
!95 = !DILocation(line: 65, column: 29, scope: !96)
!96 = distinct !DILexicalBlock(scope: !82, file: !1, line: 65, column: 22)
!97 = !{!73, !78, i64 24}
!98 = !DILocation(line: 65, column: 35, scope: !96)
!99 = !DILocation(line: 65, column: 22, scope: !96)
!100 = !DILocation(line: 65, column: 22, scope: !82)
!101 = !DILocation(line: 66, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 66, column: 17)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 66, column: 17)
!104 = !DILocation(line: 66, column: 17, scope: !103)
!105 = !DILocation(line: 66, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 66, column: 17)
!107 = !DILocation(line: 67, column: 28, scope: !83)
!108 = !DILocation(line: 71, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 71, column: 17)
!110 = distinct !DILexicalBlock(scope: !69, file: !1, line: 70, column: 9)
!111 = !DILocation(line: 71, column: 18, scope: !109)
!112 = !DILocation(line: 71, column: 17, scope: !110)
!113 = !DILocation(line: 72, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 72, column: 17)
!115 = distinct !DILexicalBlock(scope: !109, file: !1, line: 72, column: 17)
!116 = !DILocation(line: 72, column: 17, scope: !115)
!117 = !DILocation(line: 72, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 72, column: 17)
!119 = !DILocation(line: 73, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !1, line: 73, column: 22)
!121 = !DILocation(line: 73, column: 35, scope: !120)
!122 = !DILocation(line: 73, column: 22, scope: !120)
!123 = !DILocation(line: 73, column: 22, scope: !109)
!124 = !DILocation(line: 74, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 74, column: 17)
!126 = distinct !DILexicalBlock(scope: !120, file: !1, line: 74, column: 17)
!127 = !DILocation(line: 74, column: 17, scope: !126)
!128 = !DILocation(line: 74, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 74, column: 17)
!130 = !DILocation(line: 75, column: 28, scope: !110)
!131 = !DILocation(line: 79, column: 8, scope: !8)
!132 = !{!78, !78, i64 0}
!133 = !DILocation(line: 81, column: 5, scope: !8)
