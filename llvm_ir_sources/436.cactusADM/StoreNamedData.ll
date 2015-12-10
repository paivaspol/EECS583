; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreNamedData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/util/StoreNamedData.c,v 1.5 2001/05/10 12:35:22 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreNamedData_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0), !dbg !55
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StoreNamedData(%struct.PNamedData** nocapture %list, i8* %name, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PNamedData** %list, i64 0, metadata !29, metadata !56), !dbg !57
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !30, metadata !56), !dbg !58
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !31, metadata !56), !dbg !59
  %1 = tail call i8* @malloc(i64 32) #6, !dbg !60
  %2 = icmp eq i8* %1, null, !dbg !61
  br i1 %2, label %26, label %3, !dbg !63

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %name) #6, !dbg !64
  %5 = add i64 %4, 1, !dbg !66
  %6 = tail call i8* @malloc(i64 %5) #6, !dbg !67
  %7 = getelementptr inbounds i8* %1, i64 16, !dbg !68
  %8 = bitcast i8* %7 to i8**, !dbg !68
  store i8* %6, i8** %8, align 8, !dbg !69, !tbaa !70
  %9 = icmp eq i8* %6, null, !dbg !75
  br i1 %9, label %25, label %10, !dbg !77

; <label>:10                                      ; preds = %3
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %6, i1 false), !dbg !78
  %12 = tail call i8* @__strcpy_chk(i8* %6, i8* %name, i64 %11) #6, !dbg !78
  %13 = getelementptr inbounds i8* %1, i64 24, !dbg !80
  %14 = bitcast i8* %13 to i8**, !dbg !80
  store i8* %data, i8** %14, align 8, !dbg !81, !tbaa !82
  %15 = bitcast %struct.PNamedData** %list to i64*, !dbg !83
  %16 = load i64* %15, align 8, !dbg !83, !tbaa !84
  %17 = getelementptr inbounds i8* %1, i64 8, !dbg !85
  %18 = bitcast i8* %17 to i64*, !dbg !86
  store i64 %16, i64* %18, align 8, !dbg !86, !tbaa !87
  %19 = bitcast i8* %1 to %struct.PNamedData**, !dbg !88
  store %struct.PNamedData* null, %struct.PNamedData** %19, align 8, !dbg !89, !tbaa !90
  %20 = icmp eq i64 %16, 0, !dbg !91
  br i1 %20, label %23, label %21, !dbg !93

; <label>:21                                      ; preds = %10
  %22 = inttoptr i64 %16 to i8**, !dbg !94
  store i8* %1, i8** %22, align 8, !dbg !94, !tbaa !90
  br label %23, !dbg !95

; <label>:23                                      ; preds = %10, %21
  %24 = bitcast %struct.PNamedData** %list to i8**, !dbg !96
  store i8* %1, i8** %24, align 8, !dbg !96, !tbaa !84
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !56), !dbg !97
  br label %26, !dbg !98

; <label>:25                                      ; preds = %3
  tail call void @free(i8* %1) #7, !dbg !99
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !32, metadata !56), !dbg !97
  br label %26

; <label>:26                                      ; preds = %0, %23, %25
  %return_code.0 = phi i32 [ 0, %23 ], [ 1, %25 ], [ 1, %0 ]
  ret i32 %return_code.0, !dbg !101
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @GetNamedData(%struct.PNamedData* readonly %list, i8* nocapture readonly %name) #5 {
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %list, i64 0, metadata !38, metadata !56), !dbg !102
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !39, metadata !56), !dbg !103
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !40, metadata !56), !dbg !104
  %1 = icmp eq %struct.PNamedData* %list, null, !dbg !105
  br i1 %1, label %.loopexit, label %.lr.ph, !dbg !107

.lr.ph:                                           ; preds = %0, %9
  %current.02 = phi %struct.PNamedData* [ %11, %9 ], [ %list, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 2, !dbg !108
  %3 = load i8** %2, align 8, !dbg !108, !tbaa !70
  %4 = tail call i32 @strcmp(i8* %3, i8* %name) #6, !dbg !114
  %5 = icmp eq i32 %4, 0, !dbg !114
  br i1 %5, label %6, label %9, !dbg !115

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 3, !dbg !116
  %8 = load i8** %7, align 8, !dbg !116, !tbaa !82
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !40, metadata !56), !dbg !104
  br label %.loopexit, !dbg !118

; <label>:9                                       ; preds = %.lr.ph
  %10 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 1, !dbg !119
  %11 = load %struct.PNamedData** %10, align 8, !dbg !119, !tbaa !87
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %11, i64 0, metadata !41, metadata !56), !dbg !120
  %12 = icmp eq %struct.PNamedData* %11, null, !dbg !121
  br i1 %12, label %.loopexit, label %.lr.ph, !dbg !121

.loopexit:                                        ; preds = %9, %0, %6
  %return_val.0 = phi i8* [ %8, %6 ], [ null, %0 ], [ null, %9 ]
  ret i8* %return_val.0, !dbg !122
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DestroyNamedDataList(%struct.PNamedData* %list) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %list, i64 0, metadata !46, metadata !56), !dbg !123
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %list, i64 0, metadata !47, metadata !56), !dbg !124
  %1 = icmp eq %struct.PNamedData* %list, null, !dbg !125
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !125

.lr.ph:                                           ; preds = %0, %.lr.ph
  %current.01 = phi %struct.PNamedData* [ %3, %.lr.ph ], [ %list, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %current.01, i64 0, i32 1, !dbg !127
  %3 = load %struct.PNamedData** %2, align 8, !dbg !127, !tbaa !87
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %3, i64 0, metadata !48, metadata !56), !dbg !130
  %4 = bitcast %struct.PNamedData* %current.01 to i8*, !dbg !131
  tail call void @free(i8* %4) #7, !dbg !132
  tail call void @llvm.dbg.value(metadata %struct.PNamedData* %3, i64 0, metadata !47, metadata !56), !dbg !124
  %5 = icmp eq %struct.PNamedData* %3, null, !dbg !125
  br i1 %5, label %._crit_edge, label %.lr.ph, !dbg !125

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !133
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !17, globals: !49, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreNamedData.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !6, line: 18, size: 256, align: 64, elements: !8)
!8 = !{!9, !11, !12, !15}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !6, line: 20, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !6, line: 21, baseType: !10, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !6, line: 23, baseType: !13, size: 64, align: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 25, baseType: !16, size: 64, align: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !{!18, !23, !34, !42}
!18 = !DISubprogram(name: "CCTKi_version_util_StoreNamedData_c", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_StoreNamedData_c, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!23 = !DISubprogram(name: "StoreNamedData", scope: !1, file: !1, line: 68, type: !24, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PNamedData**, i8*, i8*)* @StoreNamedData, variables: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !21, !16}
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !23, file: !1, line: 68, type: !27)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !23, file: !1, line: 68, type: !21)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !23, file: !1, line: 68, type: !16)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !23, file: !1, line: 70, type: !26)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !23, file: !1, line: 72, type: !4)
!34 = !DISubprogram(name: "GetNamedData", scope: !1, file: !1, line: 149, type: !35, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.PNamedData*, i8*)* @GetNamedData, variables: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!16, !4, !21}
!37 = !{!38, !39, !40, !41}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !34, file: !1, line: 149, type: !4)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !34, file: !1, line: 149, type: !21)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_val", scope: !34, file: !1, line: 151, type: !16)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !34, file: !1, line: 153, type: !4)
!42 = !DISubprogram(name: "DestroyNamedDataList", scope: !1, file: !1, line: 196, type: !43, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PNamedData*)* @DestroyNamedDataList, variables: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !4}
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "list", arg: 1, scope: !42, file: !1, line: 196, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !42, file: !1, line: 198, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !42, file: !1, line: 199, type: !4)
!49 = !{!50}
!50 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !21, isLocal: true, isDefinition: true)
!51 = !{i32 2, !"Dwarf Version", i32 2}
!52 = !{i32 2, !"Debug Info Version", i32 700000003}
!53 = !{i32 1, !"PIC Level", i32 2}
!54 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!55 = !DILocation(line: 24, column: 1, scope: !18)
!56 = !DIExpression()
!57 = !DILocation(line: 68, column: 33, scope: !23)
!58 = !DILocation(line: 68, column: 51, scope: !23)
!59 = !DILocation(line: 68, column: 63, scope: !23)
!60 = !DILocation(line: 75, column: 23, scope: !23)
!61 = !DILocation(line: 77, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !23, file: !1, line: 77, column: 6)
!63 = !DILocation(line: 77, column: 6, scope: !23)
!64 = !DILocation(line: 80, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 78, column: 3)
!66 = !DILocation(line: 80, column: 37, scope: !65)
!67 = !DILocation(line: 80, column: 17, scope: !65)
!68 = !DILocation(line: 80, column: 10, scope: !65)
!69 = !DILocation(line: 80, column: 15, scope: !65)
!70 = !{!71, !72, i64 16}
!71 = !{!"PNamedData", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 81, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 81, column: 8)
!77 = !DILocation(line: 81, column: 8, scope: !65)
!78 = !DILocation(line: 84, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 82, column: 5)
!80 = !DILocation(line: 87, column: 12, scope: !79)
!81 = !DILocation(line: 87, column: 17, scope: !79)
!82 = !{!71, !72, i64 24}
!83 = !DILocation(line: 90, column: 20, scope: !79)
!84 = !{!72, !72, i64 0}
!85 = !DILocation(line: 90, column: 12, scope: !79)
!86 = !DILocation(line: 90, column: 17, scope: !79)
!87 = !{!71, !72, i64 8}
!88 = !DILocation(line: 91, column: 12, scope: !79)
!89 = !DILocation(line: 91, column: 17, scope: !79)
!90 = !{!71, !72, i64 0}
!91 = !DILocation(line: 93, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !79, file: !1, line: 93, column: 10)
!93 = !DILocation(line: 93, column: 10, scope: !79)
!94 = !DILocation(line: 93, column: 37, scope: !92)
!95 = !DILocation(line: 93, column: 21, scope: !92)
!96 = !DILocation(line: 95, column: 15, scope: !79)
!97 = !DILocation(line: 70, column: 7, scope: !23)
!98 = !DILocation(line: 98, column: 5, scope: !79)
!99 = !DILocation(line: 101, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !76, file: !1, line: 100, column: 5)
!101 = !DILocation(line: 111, column: 3, scope: !23)
!102 = !DILocation(line: 149, column: 32, scope: !34)
!103 = !DILocation(line: 149, column: 50, scope: !34)
!104 = !DILocation(line: 151, column: 9, scope: !34)
!105 = !DILocation(line: 157, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !34, file: !1, line: 157, column: 6)
!107 = !DILocation(line: 157, column: 6, scope: !34)
!108 = !DILocation(line: 163, column: 27, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 163, column: 10)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 161, column: 5)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 160, column: 5)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 160, column: 5)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 158, column: 3)
!114 = !DILocation(line: 163, column: 11, scope: !109)
!115 = !DILocation(line: 163, column: 10, scope: !110)
!116 = !DILocation(line: 165, column: 31, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 164, column: 7)
!118 = !DILocation(line: 166, column: 9, scope: !117)
!119 = !DILocation(line: 160, column: 54, scope: !111)
!120 = !DILocation(line: 153, column: 15, scope: !34)
!121 = !DILocation(line: 160, column: 5, scope: !112)
!122 = !DILocation(line: 171, column: 3, scope: !34)
!123 = !DILocation(line: 196, column: 39, scope: !42)
!124 = !DILocation(line: 198, column: 15, scope: !42)
!125 = !DILocation(line: 202, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !42, file: !1, line: 202, column: 3)
!127 = !DILocation(line: 204, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 203, column: 3)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 202, column: 3)
!130 = !DILocation(line: 199, column: 15, scope: !42)
!131 = !DILocation(line: 206, column: 10, scope: !128)
!132 = !DILocation(line: 206, column: 5, scope: !128)
!133 = !DILocation(line: 209, column: 1, scope: !42)
