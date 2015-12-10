; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/ecache.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.ECacheType = type { i32, i32, i32 }

@hash = external global i32
@ECacheSize = external global i32
@ECache = common global %struct.ECacheType* null, align 8
@hold_hash = external global i32
@ECacheProbes = common global i32 0, align 4
@ECacheHits = common global i32 0, align 4
@str = private unnamed_addr constant [33 x i8] c"Out of memory allocating ECache.\00"

; Function Attrs: nounwind optsize ssp uwtable
define void @storeECache(i32 %score) #0 {
  tail call void @llvm.dbg.value(metadata i32 %score, i64 0, metadata !19, metadata !42), !dbg !43
  %1 = load i32* @hash, align 4, !dbg !44, !tbaa !45
  %2 = load i32* @ECacheSize, align 4, !dbg !49, !tbaa !45
  %3 = urem i32 %1, %2, !dbg !50
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !20, metadata !42), !dbg !51
  %4 = sext i32 %3 to i64, !dbg !52
  %5 = load %struct.ECacheType** @ECache, align 8, !dbg !52, !tbaa !53
  %6 = getelementptr inbounds %struct.ECacheType* %5, i64 %4, i32 0, !dbg !55
  store i32 %1, i32* %6, align 4, !dbg !56, !tbaa !57
  %7 = load i32* @hold_hash, align 4, !dbg !59, !tbaa !45
  %8 = getelementptr inbounds %struct.ECacheType* %5, i64 %4, i32 1, !dbg !60
  store i32 %7, i32* %8, align 4, !dbg !61, !tbaa !62
  %9 = getelementptr inbounds %struct.ECacheType* %5, i64 %4, i32 2, !dbg !63
  store i32 %score, i32* %9, align 4, !dbg !64, !tbaa !65
  ret void, !dbg !66
}

; Function Attrs: nounwind optsize ssp uwtable
define void @checkECache(i32* nocapture %score, i32* nocapture %in_cache) #0 {
  tail call void @llvm.dbg.value(metadata i32* %score, i64 0, metadata !26, metadata !42), !dbg !67
  tail call void @llvm.dbg.value(metadata i32* %in_cache, i64 0, metadata !27, metadata !42), !dbg !68
  %1 = load i32* @ECacheProbes, align 4, !dbg !69, !tbaa !45
  %2 = add i32 %1, 1, !dbg !69
  store i32 %2, i32* @ECacheProbes, align 4, !dbg !69, !tbaa !45
  %3 = load i32* @hash, align 4, !dbg !70, !tbaa !45
  %4 = load i32* @ECacheSize, align 4, !dbg !71, !tbaa !45
  %5 = urem i32 %3, %4, !dbg !72
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !28, metadata !42), !dbg !73
  %6 = sext i32 %5 to i64, !dbg !74
  %7 = load %struct.ECacheType** @ECache, align 8, !dbg !74, !tbaa !53
  %8 = getelementptr inbounds %struct.ECacheType* %7, i64 %6, i32 0, !dbg !76
  %9 = load i32* %8, align 4, !dbg !76, !tbaa !57
  %10 = icmp eq i32 %9, %3, !dbg !77
  br i1 %10, label %11, label %21, !dbg !78

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.ECacheType* %7, i64 %6, i32 1, !dbg !79
  %13 = load i32* %12, align 4, !dbg !79, !tbaa !62
  %14 = load i32* @hold_hash, align 4, !dbg !80, !tbaa !45
  %15 = icmp eq i32 %13, %14, !dbg !81
  br i1 %15, label %16, label %21, !dbg !82

; <label>:16                                      ; preds = %11
  %17 = load i32* @ECacheHits, align 4, !dbg !83, !tbaa !45
  %18 = add i32 %17, 1, !dbg !83
  store i32 %18, i32* @ECacheHits, align 4, !dbg !83, !tbaa !45
  store i32 1, i32* %in_cache, align 4, !dbg !85, !tbaa !45
  %19 = getelementptr inbounds %struct.ECacheType* %7, i64 %6, i32 2, !dbg !86
  %20 = load i32* %19, align 4, !dbg !86, !tbaa !65
  store i32 %20, i32* %score, align 4, !dbg !87, !tbaa !45
  br label %21, !dbg !88

; <label>:21                                      ; preds = %16, %11, %0
  ret void, !dbg !89
}

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_ecache() #0 {
  %1 = load i8** bitcast (%struct.ECacheType** @ECache to i8**), align 8, !dbg !90, !tbaa !53
  %2 = load i32* @ECacheSize, align 4, !dbg !90, !tbaa !45
  %3 = sext i32 %2 to i64, !dbg !90
  %4 = mul nsw i64 %3, 12, !dbg !90
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !90
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #5, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @alloc_ecache() #0 {
  %1 = load i32* @ECacheSize, align 4, !dbg !92, !tbaa !45
  %2 = sext i32 %1 to i64, !dbg !92
  %3 = mul nsw i64 %2, 12, !dbg !93
  %4 = tail call i8* @malloc(i64 %3) #5, !dbg !94
  store i8* %4, i8** bitcast (%struct.ECacheType** @ECache to i8**), align 8, !dbg !95, !tbaa !53
  %5 = icmp eq i8* %4, null, !dbg !96
  br i1 %5, label %6, label %7, !dbg !98

; <label>:6                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str, i64 0, i64 0)), !dbg !99
  tail call void @exit(i32 1) #6, !dbg !101
  unreachable, !dbg !101

; <label>:7                                       ; preds = %0
  ret void, !dbg !102
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @free_ecache() #0 {
  %1 = load i8** bitcast (%struct.ECacheType** @ECache to i8**), align 8, !dbg !103, !tbaa !53
  tail call void @free(i8* %1) #7, !dbg !104
  ret void, !dbg !105
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !14, globals: !34, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/ecache.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !13}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "ECacheType", file: !1, line: 19, baseType: !6)
!6 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 96, align: 32, elements: !7)
!7 = !{!8, !10, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "stored_hash", scope: !6, file: !1, line: 16, baseType: !9, size: 32, align: 32)
!9 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "hold_hash", scope: !6, file: !1, line: 17, baseType: !9, size: 32, align: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !6, file: !1, line: 18, baseType: !12, size: 32, align: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!14 = !{!15, !21, !29, !32, !33}
!15 = !DISubprogram(name: "storeECache", scope: !1, file: !1, line: 27, type: !16, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @storeECache, variables: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !12}
!18 = !{!19, !20}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "score", arg: 1, scope: !15, file: !1, line: 27, type: !12)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ecindex", scope: !15, file: !1, line: 29, type: !12)
!21 = !DISubprogram(name: "checkECache", scope: !1, file: !1, line: 38, type: !22, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @checkECache, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "score", arg: 1, scope: !21, file: !1, line: 38, type: !24)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in_cache", arg: 2, scope: !21, file: !1, line: 38, type: !24)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ecindex", scope: !21, file: !1, line: 40, type: !12)
!29 = !DISubprogram(name: "reset_ecache", scope: !1, file: !1, line: 57, type: !30, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @reset_ecache, variables: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !DISubprogram(name: "alloc_ecache", scope: !1, file: !1, line: 63, type: !30, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @alloc_ecache, variables: !2)
!33 = !DISubprogram(name: "free_ecache", scope: !1, file: !1, line: 79, type: !30, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @free_ecache, variables: !2)
!34 = !{!35, !36, !37}
!35 = !DIGlobalVariable(name: "ECache", scope: !0, file: !1, line: 22, type: !4, isLocal: false, isDefinition: true, variable: %struct.ECacheType** @ECache)
!36 = !DIGlobalVariable(name: "ECacheProbes", scope: !0, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, variable: i32* @ECacheProbes)
!37 = !DIGlobalVariable(name: "ECacheHits", scope: !0, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, variable: i32* @ECacheHits)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 27, column: 22, scope: !15)
!44 = !DILocation(line: 31, column: 13, scope: !15)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 31, column: 20, scope: !15)
!50 = !DILocation(line: 31, column: 18, scope: !15)
!51 = !DILocation(line: 29, column: 7, scope: !15)
!52 = !DILocation(line: 33, column: 3, scope: !15)
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !47, i64 0}
!55 = !DILocation(line: 33, column: 19, scope: !15)
!56 = !DILocation(line: 33, column: 31, scope: !15)
!57 = !{!58, !46, i64 0}
!58 = !{!"", !46, i64 0, !46, i64 4, !46, i64 8}
!59 = !DILocation(line: 34, column: 31, scope: !15)
!60 = !DILocation(line: 34, column: 19, scope: !15)
!61 = !DILocation(line: 34, column: 29, scope: !15)
!62 = !{!58, !46, i64 4}
!63 = !DILocation(line: 35, column: 19, scope: !15)
!64 = !DILocation(line: 35, column: 25, scope: !15)
!65 = !{!58, !46, i64 8}
!66 = !DILocation(line: 36, column: 1, scope: !15)
!67 = !DILocation(line: 38, column: 23, scope: !21)
!68 = !DILocation(line: 38, column: 35, scope: !21)
!69 = !DILocation(line: 42, column: 15, scope: !21)
!70 = !DILocation(line: 44, column: 13, scope: !21)
!71 = !DILocation(line: 44, column: 20, scope: !21)
!72 = !DILocation(line: 44, column: 18, scope: !21)
!73 = !DILocation(line: 40, column: 7, scope: !21)
!74 = !DILocation(line: 46, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !21, file: !1, line: 46, column: 6)
!76 = !DILocation(line: 46, column: 22, scope: !75)
!77 = !DILocation(line: 46, column: 34, scope: !75)
!78 = !DILocation(line: 46, column: 42, scope: !75)
!79 = !DILocation(line: 47, column: 20, scope: !75)
!80 = !DILocation(line: 47, column: 33, scope: !75)
!81 = !DILocation(line: 47, column: 30, scope: !75)
!82 = !DILocation(line: 46, column: 6, scope: !21)
!83 = !DILocation(line: 50, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !75, file: !1, line: 49, column: 5)
!85 = !DILocation(line: 52, column: 17, scope: !84)
!86 = !DILocation(line: 53, column: 32, scope: !84)
!87 = !DILocation(line: 53, column: 14, scope: !84)
!88 = !DILocation(line: 54, column: 5, scope: !84)
!89 = !DILocation(line: 55, column: 1, scope: !21)
!90 = !DILocation(line: 59, column: 3, scope: !29)
!91 = !DILocation(line: 60, column: 3, scope: !29)
!92 = !DILocation(line: 65, column: 51, scope: !32)
!93 = !DILocation(line: 65, column: 50, scope: !32)
!94 = !DILocation(line: 65, column: 25, scope: !32)
!95 = !DILocation(line: 65, column: 10, scope: !32)
!96 = !DILocation(line: 67, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !32, file: !1, line: 67, column: 7)
!98 = !DILocation(line: 67, column: 7, scope: !32)
!99 = !DILocation(line: 69, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 68, column: 3)
!101 = !DILocation(line: 70, column: 5, scope: !100)
!102 = !DILocation(line: 76, column: 4, scope: !32)
!103 = !DILocation(line: 81, column: 8, scope: !33)
!104 = !DILocation(line: 81, column: 3, scope: !33)
!105 = !DILocation(line: 82, column: 3, scope: !33)
