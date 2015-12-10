; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Cache.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@cache_data.0 = internal unnamed_addr global i64 0
@cache_data.1 = internal unnamed_addr global i64 0
@cache_set = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/util/Cache.c,v 1.7 2001/05/10 12:35:19 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Cache_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), !dbg !61
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_CacheMalloc(i32 %index, i64 %size, i8** nocapture %realstart) #1 {
  tail call void @llvm.dbg.value(metadata i32 %index, i64 0, metadata !24, metadata !62), !dbg !63
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !25, metadata !62), !dbg !64
  tail call void @llvm.dbg.value(metadata i8** %realstart, i64 0, metadata !26, metadata !62), !dbg !65
  %1 = load i32* @cache_set, align 4, !dbg !66, !tbaa !70
  %2 = icmp eq i32 %1, 0, !dbg !66
  br i1 %2, label %5, label %Utili_CacheDataGet.exit.thread, !dbg !74

Utili_CacheDataGet.exit.thread:                   ; preds = %0
  %3 = load i64* @cache_data.0, align 8, !dbg !75, !tbaa !77
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !46, metadata !62), !dbg !80
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !29, metadata !62), !dbg !81
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !29, metadata !62), !dbg !81
  %4 = load i64* @cache_data.1, align 8, !dbg !82, !tbaa !83
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !47, metadata !62), !dbg !84
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !30, metadata !62), !dbg !85
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !30, metadata !62), !dbg !85
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !30, metadata !62), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !48, metadata !62), !dbg !86
  br label %5, !dbg !87

; <label>:5                                       ; preds = %0, %Utili_CacheDataGet.exit.thread
  %6 = phi i64 [ %3, %Utili_CacheDataGet.exit.thread ], [ 0, %0 ]
  %7 = phi i64 [ %4, %Utili_CacheDataGet.exit.thread ], [ 0, %0 ]
  %8 = add i64 %7, %size, !dbg !88
  %9 = tail call i8* @malloc(i64 %8) #4, !dbg !89
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !28, metadata !62), !dbg !90
  %10 = icmp eq i8* %9, null, !dbg !91
  br i1 %10, label %26, label %11, !dbg !93

; <label>:11                                      ; preds = %5
  %12 = icmp eq i64 %7, 0, !dbg !94
  br i1 %12, label %24, label %13, !dbg !97

; <label>:13                                      ; preds = %11
  %14 = ptrtoint i8* %9 to i64, !dbg !98
  %15 = urem i64 %14, %7, !dbg !100
  %16 = urem i64 %15, %6, !dbg !101
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !31, metadata !62), !dbg !102
  %17 = udiv i64 %15, %6, !dbg !103
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !32, metadata !62), !dbg !104
  %18 = zext i32 %index to i64, !dbg !105
  %19 = sub i64 %18, %17, !dbg !106
  %20 = mul i64 %19, %6, !dbg !107
  %21 = sub i64 %6, %16, !dbg !108
  %22 = add i64 %21, %20, !dbg !109
  %23 = urem i64 %22, %7, !dbg !110
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !33, metadata !62), !dbg !111
  br label %24, !dbg !112

; <label>:24                                      ; preds = %11, %13
  %pad.0 = phi i64 [ %23, %13 ], [ 0, %11 ]
  %25 = getelementptr inbounds i8* %9, i64 %pad.0, !dbg !113
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !27, metadata !62), !dbg !114
  br label %26, !dbg !115

; <label>:26                                      ; preds = %5, %24
  %retval.0 = phi i8* [ %25, %24 ], [ null, %5 ]
  store i8* %9, i8** %realstart, align 8, !dbg !116, !tbaa !117
  ret i8* %retval.0, !dbg !119
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Utili_CacheDataGet(i64* nocapture %cacheline_bytes, i64* nocapture %cache_size) #1 {
  tail call void @llvm.dbg.value(metadata i64* %cacheline_bytes, i64 0, metadata !46, metadata !62), !dbg !120
  tail call void @llvm.dbg.value(metadata i64* %cache_size, i64 0, metadata !47, metadata !62), !dbg !121
  %1 = load i32* @cache_set, align 4, !dbg !122, !tbaa !70
  %2 = icmp eq i32 %1, 0, !dbg !122
  br i1 %2, label %6, label %3, !dbg !123

; <label>:3                                       ; preds = %0
  %4 = load i64* @cache_data.0, align 8, !dbg !124, !tbaa !77
  store i64 %4, i64* %cacheline_bytes, align 8, !dbg !125, !tbaa !126
  %5 = load i64* @cache_data.1, align 8, !dbg !127, !tbaa !83
  store i64 %5, i64* %cache_size, align 8, !dbg !128, !tbaa !126
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !48, metadata !62), !dbg !129
  br label %6, !dbg !130

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ 0, %3 ], [ -1, %0 ]
  ret i32 %retcode.0, !dbg !131
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Utili_CacheDataSet(i64 %cacheline_bytes, i64 %cache_size) #1 {
  tail call void @llvm.dbg.value(metadata i64 %cacheline_bytes, i64 0, metadata !39, metadata !62), !dbg !132
  tail call void @llvm.dbg.value(metadata i64 %cache_size, i64 0, metadata !40, metadata !62), !dbg !133
  store i64 %cacheline_bytes, i64* @cache_data.0, align 8, !dbg !134, !tbaa !77
  store i64 %cache_size, i64* @cache_data.1, align 8, !dbg !135, !tbaa !83
  %1 = load i32* @cache_set, align 4, !dbg !136, !tbaa !70
  %2 = add nsw i32 %1, 1, !dbg !136
  store i32 %2, i32* @cache_set, align 4, !dbg !136, !tbaa !70
  ret i32 %1, !dbg !137
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !12, globals: !49, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Cache.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !9, line: 92, baseType: !10)
!9 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !18, !34, !41}
!13 = !DISubprogram(name: "CCTKi_version_util_Cache_c", scope: !1, file: !1, line: 22, type: !14, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_Cache_c, variables: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !DISubprogram(name: "Util_CacheMalloc", scope: !1, file: !1, line: 83, type: !19, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32, i64, i8**)* @Util_CacheMalloc, variables: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !21, !10, !22}
!21 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 1, scope: !18, file: !1, line: 83, type: !21)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !18, file: !1, line: 84, type: !10)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "realstart", arg: 3, scope: !18, file: !1, line: 85, type: !22)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !18, file: !1, line: 87, type: !4)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !18, file: !1, line: 88, type: !4)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_bytes", scope: !18, file: !1, line: 89, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cache_size", scope: !18, file: !1, line: 90, type: !10)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !18, file: !1, line: 91, type: !10)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_index", scope: !18, file: !1, line: 92, type: !10)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pad", scope: !18, file: !1, line: 93, type: !10)
!34 = !DISubprogram(name: "Utili_CacheDataSet", scope: !1, file: !1, line: 169, type: !35, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64, i64)* @Utili_CacheDataSet, variables: !38)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !10, !10}
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !{!39, !40}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cacheline_bytes", arg: 1, scope: !34, file: !1, line: 169, type: !10)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cache_size", arg: 2, scope: !34, file: !1, line: 170, type: !10)
!41 = !DISubprogram(name: "Utili_CacheDataGet", scope: !1, file: !1, line: 215, type: !42, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64*)* @Utili_CacheDataGet, variables: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{!37, !44, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cacheline_bytes", arg: 1, scope: !41, file: !1, line: 215, type: !44)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cache_size", arg: 2, scope: !41, file: !1, line: 216, type: !44)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retcode", scope: !41, file: !1, line: 218, type: !37)
!49 = !{!50, !55, !56}
!50 = !DIGlobalVariable(name: "cache_data", scope: !0, file: !1, line: 33, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "s_cache_data", file: !1, line: 29, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cacheline_bytes", scope: !51, file: !1, line: 31, baseType: !10, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !51, file: !1, line: 32, baseType: !10, size: 64, align: 64, offset: 64)
!55 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !16, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariable(name: "cache_set", scope: !0, file: !1, line: 36, type: !37, isLocal: true, isDefinition: true, variable: i32* @cache_set)
!57 = !{i32 2, !"Dwarf Version", i32 2}
!58 = !{i32 2, !"Debug Info Version", i32 700000003}
!59 = !{i32 1, !"PIC Level", i32 2}
!60 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!61 = !DILocation(line: 22, column: 1, scope: !13)
!62 = !DIExpression()
!63 = !DILocation(line: 83, column: 33, scope: !18)
!64 = !DILocation(line: 84, column: 38, scope: !18)
!65 = !DILocation(line: 85, column: 31, scope: !18)
!66 = !DILocation(line: 220, column: 6, scope: !67, inlinedAt: !68)
!67 = distinct !DILexicalBlock(scope: !41, file: !1, line: 220, column: 6)
!68 = distinct !DILocation(line: 95, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !18, file: !1, line: 95, column: 6)
!70 = !{!71, !71, i64 0}
!71 = !{!"int", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 220, column: 6, scope: !41, inlinedAt: !68)
!75 = !DILocation(line: 222, column: 35, scope: !76, inlinedAt: !68)
!76 = distinct !DILexicalBlock(scope: !67, file: !1, line: 221, column: 3)
!77 = !{!78, !79, i64 0}
!78 = !{!"s_cache_data", !79, i64 0, !79, i64 8}
!79 = !{!"long", !72, i64 0}
!80 = !DILocation(line: 215, column: 39, scope: !41, inlinedAt: !68)
!81 = !DILocation(line: 89, column: 17, scope: !18)
!82 = !DILocation(line: 223, column: 35, scope: !76, inlinedAt: !68)
!83 = !{!78, !79, i64 8}
!84 = !DILocation(line: 216, column: 39, scope: !41, inlinedAt: !68)
!85 = !DILocation(line: 90, column: 17, scope: !18)
!86 = !DILocation(line: 218, column: 7, scope: !41, inlinedAt: !68)
!87 = !DILocation(line: 95, column: 6, scope: !18)
!88 = !DILocation(line: 101, column: 38, scope: !18)
!89 = !DILocation(line: 101, column: 18, scope: !18)
!90 = !DILocation(line: 88, column: 9, scope: !18)
!91 = !DILocation(line: 103, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !18, file: !1, line: 103, column: 6)
!93 = !DILocation(line: 103, column: 6, scope: !18)
!94 = !DILocation(line: 105, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 105, column: 8)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 104, column: 3)
!97 = !DILocation(line: 105, column: 8, scope: !96)
!98 = !DILocation(line: 108, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 106, column: 5)
!100 = !DILocation(line: 108, column: 36, scope: !99)
!101 = !DILocation(line: 108, column: 48, scope: !99)
!102 = !DILocation(line: 91, column: 17, scope: !18)
!103 = !DILocation(line: 110, column: 55, scope: !99)
!104 = !DILocation(line: 92, column: 17, scope: !18)
!105 = !DILocation(line: 112, column: 15, scope: !99)
!106 = !DILocation(line: 112, column: 20, scope: !99)
!107 = !DILocation(line: 112, column: 35, scope: !99)
!108 = !DILocation(line: 112, column: 52, scope: !99)
!109 = !DILocation(line: 112, column: 70, scope: !99)
!110 = !DILocation(line: 112, column: 79, scope: !99)
!111 = !DILocation(line: 93, column: 17, scope: !18)
!112 = !DILocation(line: 113, column: 5, scope: !99)
!113 = !DILocation(line: 119, column: 19, scope: !96)
!114 = !DILocation(line: 87, column: 9, scope: !18)
!115 = !DILocation(line: 120, column: 3, scope: !96)
!116 = !DILocation(line: 126, column: 14, scope: !18)
!117 = !{!118, !118, i64 0}
!118 = !{!"any pointer", !72, i64 0}
!119 = !DILocation(line: 128, column: 3, scope: !18)
!120 = !DILocation(line: 215, column: 39, scope: !41)
!121 = !DILocation(line: 216, column: 39, scope: !41)
!122 = !DILocation(line: 220, column: 6, scope: !67)
!123 = !DILocation(line: 220, column: 6, scope: !41)
!124 = !DILocation(line: 222, column: 35, scope: !76)
!125 = !DILocation(line: 222, column: 22, scope: !76)
!126 = !{!79, !79, i64 0}
!127 = !DILocation(line: 223, column: 35, scope: !76)
!128 = !DILocation(line: 223, column: 22, scope: !76)
!129 = !DILocation(line: 218, column: 7, scope: !41)
!130 = !DILocation(line: 225, column: 3, scope: !76)
!131 = !DILocation(line: 231, column: 3, scope: !41)
!132 = !DILocation(line: 169, column: 38, scope: !34)
!133 = !DILocation(line: 170, column: 38, scope: !34)
!134 = !DILocation(line: 172, column: 30, scope: !34)
!135 = !DILocation(line: 173, column: 30, scope: !34)
!136 = !DILocation(line: 175, column: 12, scope: !34)
!137 = !DILocation(line: 177, column: 3, scope: !34)
