; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }

@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/util/StoreKeyedData.c,v 1.4 2001/05/10 12:35:22 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreKeyedData_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0), !dbg !54
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StoreKeyedData(%struct.PKeyedData** nocapture %storage, i32 %key, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData** %storage, i64 0, metadata !28, metadata !55), !dbg !56
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !29, metadata !55), !dbg !57
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !30, metadata !55), !dbg !58
  %1 = tail call i8* @malloc(i64 32) #5, !dbg !59
  %2 = icmp eq i8* %1, null, !dbg !60
  br i1 %2, label %18, label %3, !dbg !62

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8* %1, i64 16, !dbg !63
  %5 = bitcast i8* %4 to i32*, !dbg !63
  store i32 %key, i32* %5, align 4, !dbg !65, !tbaa !66
  %6 = getelementptr inbounds i8* %1, i64 24, !dbg !72
  %7 = bitcast i8* %6 to i8**, !dbg !72
  store i8* %data, i8** %7, align 8, !dbg !73, !tbaa !74
  %8 = bitcast %struct.PKeyedData** %storage to i64*, !dbg !75
  %9 = load i64* %8, align 8, !dbg !75, !tbaa !76
  %10 = getelementptr inbounds i8* %1, i64 8, !dbg !77
  %11 = bitcast i8* %10 to i64*, !dbg !78
  store i64 %9, i64* %11, align 8, !dbg !78, !tbaa !79
  %12 = bitcast i8* %1 to %struct.PKeyedData**, !dbg !80
  store %struct.PKeyedData* null, %struct.PKeyedData** %12, align 8, !dbg !81, !tbaa !82
  %13 = icmp eq i64 %9, 0, !dbg !83
  br i1 %13, label %16, label %14, !dbg !85

; <label>:14                                      ; preds = %3
  %15 = inttoptr i64 %9 to i8**, !dbg !86
  store i8* %1, i8** %15, align 8, !dbg !86, !tbaa !82
  br label %16, !dbg !87

; <label>:16                                      ; preds = %3, %14
  %17 = bitcast %struct.PKeyedData** %storage to i8**, !dbg !88
  store i8* %1, i8** %17, align 8, !dbg !88, !tbaa !76
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !55), !dbg !89
  br label %18, !dbg !90

; <label>:18                                      ; preds = %0, %16
  %return_code.0 = phi i32 [ 0, %16 ], [ 1, %0 ]
  ret i32 %return_code.0, !dbg !91
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @GetKeyedData(%struct.PKeyedData* readonly %storage, i32 %key) #3 {
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %storage, i64 0, metadata !37, metadata !55), !dbg !92
  tail call void @llvm.dbg.value(metadata i32 %key, i64 0, metadata !38, metadata !55), !dbg !93
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !39, metadata !55), !dbg !94
  %1 = icmp eq %struct.PKeyedData* %storage, null, !dbg !95
  br i1 %1, label %.loopexit, label %.lr.ph, !dbg !97

.lr.ph:                                           ; preds = %0, %8
  %current.02 = phi %struct.PKeyedData* [ %10, %8 ], [ %storage, %0 ]
  %2 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 2, !dbg !98
  %3 = load i32* %2, align 4, !dbg !98, !tbaa !66
  %4 = icmp eq i32 %3, %key, !dbg !104
  br i1 %4, label %5, label %8, !dbg !105

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 3, !dbg !106
  %7 = load i8** %6, align 8, !dbg !106, !tbaa !74
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !39, metadata !55), !dbg !94
  br label %.loopexit, !dbg !108

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 1, !dbg !109
  %10 = load %struct.PKeyedData** %9, align 8, !dbg !109, !tbaa !79
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %10, i64 0, metadata !40, metadata !55), !dbg !110
  %11 = icmp eq %struct.PKeyedData* %10, null, !dbg !111
  br i1 %11, label %.loopexit, label %.lr.ph, !dbg !111

.loopexit:                                        ; preds = %8, %0, %5
  %return_val.0 = phi i8* [ %7, %5 ], [ null, %0 ], [ null, %8 ]
  ret i8* %return_val.0, !dbg !112
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DestroyKeyedData(%struct.PKeyedData* %storage) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %storage, i64 0, metadata !45, metadata !55), !dbg !113
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %storage, i64 0, metadata !46, metadata !55), !dbg !114
  %1 = icmp eq %struct.PKeyedData* %storage, null, !dbg !115
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !115

.lr.ph:                                           ; preds = %0, %.lr.ph
  %current.01 = phi %struct.PKeyedData* [ %3, %.lr.ph ], [ %storage, %0 ]
  %2 = getelementptr inbounds %struct.PKeyedData* %current.01, i64 0, i32 1, !dbg !117
  %3 = load %struct.PKeyedData** %2, align 8, !dbg !117, !tbaa !79
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %3, i64 0, metadata !47, metadata !55), !dbg !120
  %4 = bitcast %struct.PKeyedData* %current.01 to i8*, !dbg !121
  tail call void @free(i8* %4) #6, !dbg !122
  tail call void @llvm.dbg.value(metadata %struct.PKeyedData* %3, i64 0, metadata !46, metadata !55), !dbg !114
  %5 = icmp eq %struct.PKeyedData* %3, null, !dbg !115
  br i1 %5, label %._crit_edge, label %.lr.ph, !dbg !115

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !123
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !16, globals: !48, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pKeyedData", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreKeyedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "PKeyedData", file: !6, line: 18, size: 256, align: 64, elements: !8)
!8 = !{!9, !11, !12, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !6, line: 20, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 21, baseType: !10, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !6, line: 23, baseType: !13, size: 32, align: 32, offset: 128)
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 25, baseType: !15, size: 64, align: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!16 = !{!17, !23, !33, !41}
!17 = !DISubprogram(name: "CCTKi_version_util_StoreKeyedData_c", scope: !1, file: !1, line: 22, type: !18, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_StoreKeyedData_c, variables: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !DISubprogram(name: "StoreKeyedData", scope: !1, file: !1, line: 65, type: !24, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PKeyedData**, i32, i8*)* @StoreKeyedData, variables: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!13, !26, !13, !15}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!27 = !{!28, !29, !30, !31, !32}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !23, file: !1, line: 65, type: !26)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !23, file: !1, line: 65, type: !13)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !23, file: !1, line: 65, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !23, file: !1, line: 67, type: !13)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !23, file: !1, line: 69, type: !4)
!33 = !DISubprogram(name: "GetKeyedData", scope: !1, file: !1, line: 136, type: !34, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.PKeyedData*, i32)* @GetKeyedData, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!15, !4, !13}
!36 = !{!37, !38, !39, !40}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !33, file: !1, line: 136, type: !4)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !33, file: !1, line: 136, type: !13)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_val", scope: !33, file: !1, line: 138, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !33, file: !1, line: 140, type: !4)
!41 = !DISubprogram(name: "DestroyKeyedData", scope: !1, file: !1, line: 183, type: !42, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PKeyedData*)* @DestroyKeyedData, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !4}
!44 = !{!45, !46, !47}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "storage", arg: 1, scope: !41, file: !1, line: 183, type: !4)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !41, file: !1, line: 185, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !41, file: !1, line: 186, type: !4)
!48 = !{!49}
!49 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !20, isLocal: true, isDefinition: true)
!50 = !{i32 2, !"Dwarf Version", i32 2}
!51 = !{i32 2, !"Debug Info Version", i32 700000003}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!54 = !DILocation(line: 22, column: 1, scope: !17)
!55 = !DIExpression()
!56 = !DILocation(line: 65, column: 33, scope: !23)
!57 = !DILocation(line: 65, column: 46, scope: !23)
!58 = !DILocation(line: 65, column: 57, scope: !23)
!59 = !DILocation(line: 72, column: 23, scope: !23)
!60 = !DILocation(line: 74, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !23, file: !1, line: 74, column: 6)
!62 = !DILocation(line: 74, column: 6, scope: !23)
!63 = !DILocation(line: 77, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 75, column: 3)
!65 = !DILocation(line: 77, column: 14, scope: !64)
!66 = !{!67, !71, i64 16}
!67 = !{!"PKeyedData", !68, i64 0, !68, i64 8, !71, i64 16, !68, i64 24}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !{!"int", !69, i64 0}
!72 = !DILocation(line: 80, column: 10, scope: !64)
!73 = !DILocation(line: 80, column: 15, scope: !64)
!74 = !{!67, !68, i64 24}
!75 = !DILocation(line: 83, column: 18, scope: !64)
!76 = !{!68, !68, i64 0}
!77 = !DILocation(line: 83, column: 10, scope: !64)
!78 = !DILocation(line: 83, column: 15, scope: !64)
!79 = !{!67, !68, i64 8}
!80 = !DILocation(line: 84, column: 10, scope: !64)
!81 = !DILocation(line: 84, column: 15, scope: !64)
!82 = !{!67, !68, i64 0}
!83 = !DILocation(line: 86, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !64, file: !1, line: 86, column: 8)
!85 = !DILocation(line: 86, column: 8, scope: !64)
!86 = !DILocation(line: 86, column: 35, scope: !84)
!87 = !DILocation(line: 86, column: 19, scope: !84)
!88 = !DILocation(line: 88, column: 16, scope: !64)
!89 = !DILocation(line: 67, column: 7, scope: !23)
!90 = !DILocation(line: 91, column: 3, scope: !64)
!91 = !DILocation(line: 98, column: 3, scope: !23)
!92 = !DILocation(line: 136, column: 32, scope: !33)
!93 = !DILocation(line: 136, column: 45, scope: !33)
!94 = !DILocation(line: 138, column: 9, scope: !33)
!95 = !DILocation(line: 144, column: 6, scope: !96)
!96 = distinct !DILexicalBlock(scope: !33, file: !1, line: 144, column: 6)
!97 = !DILocation(line: 144, column: 6, scope: !33)
!98 = !DILocation(line: 150, column: 19, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 150, column: 10)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 148, column: 5)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 147, column: 5)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 147, column: 5)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 145, column: 3)
!104 = !DILocation(line: 150, column: 23, scope: !99)
!105 = !DILocation(line: 150, column: 10, scope: !100)
!106 = !DILocation(line: 152, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !99, file: !1, line: 151, column: 7)
!108 = !DILocation(line: 153, column: 9, scope: !107)
!109 = !DILocation(line: 147, column: 57, scope: !101)
!110 = !DILocation(line: 140, column: 15, scope: !33)
!111 = !DILocation(line: 147, column: 5, scope: !102)
!112 = !DILocation(line: 158, column: 3, scope: !33)
!113 = !DILocation(line: 183, column: 35, scope: !41)
!114 = !DILocation(line: 185, column: 15, scope: !41)
!115 = !DILocation(line: 189, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !41, file: !1, line: 189, column: 3)
!117 = !DILocation(line: 191, column: 21, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 190, column: 3)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 189, column: 3)
!120 = !DILocation(line: 186, column: 15, scope: !41)
!121 = !DILocation(line: 193, column: 10, scope: !118)
!122 = !DILocation(line: 193, column: 5, scope: !118)
!123 = !DILocation(line: 196, column: 1, scope: !41)
