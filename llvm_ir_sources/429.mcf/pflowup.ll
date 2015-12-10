; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pflowup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize ssp uwtable
define void @primal_update_flow(%struct.node* %iplus, %struct.node* %jplus, %struct.node* readnone %w) #0 {
  tail call void @llvm.dbg.value(metadata %struct.node* %iplus, i64 0, metadata !46, metadata !53), !dbg !54
  tail call void @llvm.dbg.value(metadata %struct.node* %jplus, i64 0, metadata !47, metadata !53), !dbg !55
  tail call void @llvm.dbg.value(metadata %struct.node* %w, i64 0, metadata !48, metadata !53), !dbg !56
  %1 = icmp eq %struct.node* %iplus, %w, !dbg !57
  br i1 %1, label %.preheader, label %.lr.ph7, !dbg !60

.preheader:                                       ; preds = %.lr.ph7, %0
  %2 = icmp eq %struct.node* %jplus, %w, !dbg !61
  br i1 %2, label %._crit_edge, label %.lr.ph, !dbg !64

.lr.ph7:                                          ; preds = %0, %.lr.ph7
  %.05 = phi %struct.node* [ %8, %.lr.ph7 ], [ %iplus, %0 ]
  %3 = getelementptr inbounds %struct.node* %.05, i64 0, i32 1, !dbg !65
  %4 = load i32* %3, align 4, !dbg !65, !tbaa !68
  %5 = icmp eq i32 %4, 0, !dbg !75
  %6 = getelementptr inbounds %struct.node* %.05, i64 0, i32 10, !dbg !76
  %. = zext i1 %5 to i64
  store i64 %., i64* %6, align 8, !dbg !77, !tbaa !78
  %7 = getelementptr inbounds %struct.node* %.05, i64 0, i32 3, !dbg !79
  %8 = load %struct.node** %7, align 8, !dbg !79, !tbaa !80
  tail call void @llvm.dbg.value(metadata %struct.node* %8, i64 0, metadata !46, metadata !53), !dbg !54
  %9 = icmp eq %struct.node* %8, %w, !dbg !57
  br i1 %9, label %.preheader, label %.lr.ph7, !dbg !60

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.014 = phi %struct.node* [ %14, %.lr.ph ], [ %jplus, %.preheader ]
  %10 = getelementptr inbounds %struct.node* %.014, i64 0, i32 1, !dbg !81
  %11 = load i32* %10, align 4, !dbg !81, !tbaa !68
  %12 = getelementptr inbounds %struct.node* %.014, i64 0, i32 10, !dbg !84
  %not. = icmp ne i32 %11, 0
  %.3 = zext i1 %not. to i64
  store i64 %.3, i64* %12, align 8, !dbg !85, !tbaa !78
  %13 = getelementptr inbounds %struct.node* %.014, i64 0, i32 3, !dbg !86
  %14 = load %struct.node** %13, align 8, !dbg !86, !tbaa !80
  tail call void @llvm.dbg.value(metadata %struct.node* %14, i64 0, metadata !47, metadata !53), !dbg !55
  %15 = icmp eq %struct.node* %14, %w, !dbg !61
  br i1 %15, label %._crit_edge, label %.lr.ph, !dbg !64

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void, !dbg !87
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/pflowup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !5, line: 68, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!7 = !{!8}
!8 = !DISubprogram(name: "primal_update_flow", scope: !1, file: !1, line: 29, type: !9, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.node*, %struct.node*, %struct.node*)* @primal_update_flow, variables: !45)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !11}
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
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iplus", arg: 1, scope: !8, file: !1, line: 30, type: !11)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jplus", arg: 2, scope: !8, file: !1, line: 31, type: !11)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 3, scope: !8, file: !1, line: 32, type: !11)
!49 = !{i32 2, !"Dwarf Version", i32 2}
!50 = !{i32 2, !"Debug Info Version", i32 700000003}
!51 = !{i32 1, !"PIC Level", i32 2}
!52 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!53 = !DIExpression()
!54 = !DILocation(line: 30, column: 26, scope: !8)
!55 = !DILocation(line: 31, column: 26, scope: !8)
!56 = !DILocation(line: 32, column: 26, scope: !8)
!57 = !DILocation(line: 40, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 40, column: 5)
!59 = distinct !DILexicalBlock(scope: !8, file: !1, line: 40, column: 5)
!60 = !DILocation(line: 40, column: 5, scope: !59)
!61 = !DILocation(line: 48, column: 18, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 5)
!63 = distinct !DILexicalBlock(scope: !8, file: !1, line: 48, column: 5)
!64 = !DILocation(line: 48, column: 5, scope: !63)
!65 = !DILocation(line: 42, column: 20, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 42, column: 13)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 41, column: 5)
!68 = !{!69, !73, i64 8}
!69 = !{!"node", !70, i64 0, !73, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !70, i64 80, !70, i64 88, !73, i64 96, !73, i64 100}
!70 = !{!"long", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!"int", !71, i64 0}
!74 = !{!"any pointer", !71, i64 0}
!75 = !DILocation(line: 42, column: 13, scope: !66)
!76 = !DILocation(line: 43, column: 20, scope: !66)
!77 = !DILocation(line: 43, column: 25, scope: !66)
!78 = !{!69, !70, i64 80}
!79 = !DILocation(line: 40, column: 39, scope: !58)
!80 = !{!69, !74, i64 24}
!81 = !DILocation(line: 50, column: 20, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 50, column: 13)
!83 = distinct !DILexicalBlock(scope: !62, file: !1, line: 49, column: 5)
!84 = !DILocation(line: 51, column: 20, scope: !82)
!85 = !DILocation(line: 51, column: 25, scope: !82)
!86 = !DILocation(line: 48, column: 39, scope: !62)
!87 = !DILocation(line: 55, column: 1, scope: !8)
