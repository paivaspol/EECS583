; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/insert.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [24 x i8] c"reallocation: nzs_=%d\0A\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @insert(i32* nocapture %ipointer, i32** nocapture %mast1p, i32** nocapture %mast2p, i32* nocapture readonly %i1, i32* nocapture readonly %i2, i32* nocapture %ifree, i32* nocapture %nzs_) #0 {
  tail call void @llvm.dbg.value(metadata i32* %ipointer, i64 0, metadata !12, metadata !28), !dbg !29
  tail call void @llvm.dbg.value(metadata i32** %mast1p, i64 0, metadata !13, metadata !28), !dbg !30
  tail call void @llvm.dbg.value(metadata i32** %mast2p, i64 0, metadata !14, metadata !28), !dbg !31
  tail call void @llvm.dbg.value(metadata i32* %i1, i64 0, metadata !15, metadata !28), !dbg !32
  tail call void @llvm.dbg.value(metadata i32* %i2, i64 0, metadata !16, metadata !28), !dbg !33
  tail call void @llvm.dbg.value(metadata i32* %ifree, i64 0, metadata !17, metadata !28), !dbg !34
  tail call void @llvm.dbg.value(metadata i32* %nzs_, i64 0, metadata !18, metadata !28), !dbg !35
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !22, metadata !28), !dbg !36
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !23, metadata !28), !dbg !37
  %1 = load i32** %mast1p, align 8, !dbg !38, !tbaa !39
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !22, metadata !28), !dbg !36
  %2 = load i32** %mast2p, align 8, !dbg !43, !tbaa !39
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !23, metadata !28), !dbg !37
  %3 = load i32* %i1, align 4, !dbg !44, !tbaa !46
  %4 = load i32* %i2, align 4, !dbg !48, !tbaa !46
  %5 = icmp slt i32 %3, %4, !dbg !49
  %. = select i1 %5, i32 %3, i32 %4, !dbg !50
  %.1 = select i1 %5, i32 %4, i32 %3, !dbg !50
  %6 = add nsw i32 %.1, -1, !dbg !52
  %7 = sext i32 %6 to i64, !dbg !54
  %8 = getelementptr inbounds i32* %ipointer, i64 %7, !dbg !54
  %9 = load i32* %8, align 4, !dbg !54, !tbaa !46
  %10 = icmp eq i32 %9, 0, !dbg !55
  br i1 %10, label %11, label %.preheader, !dbg !56

; <label>:11                                      ; preds = %0
  %12 = load i32* %ifree, align 4, !dbg !57, !tbaa !46
  %13 = add nsw i32 %12, 1, !dbg !57
  store i32 %13, i32* %ifree, align 4, !dbg !57, !tbaa !46
  %14 = load i32* %nzs_, align 4, !dbg !59, !tbaa !46
  %15 = icmp slt i32 %12, %14, !dbg !61
  br i1 %15, label %33, label %16, !dbg !62

; <label>:16                                      ; preds = %11
  %17 = sitofp i32 %14 to double, !dbg !63
  %18 = fmul double %17, 1.100000e+00, !dbg !65
  %19 = fptosi double %18 to i32, !dbg !66
  store i32 %19, i32* %nzs_, align 4, !dbg !67, !tbaa !46
  %20 = bitcast i32* %1 to i8*, !dbg !68
  %21 = sext i32 %19 to i64, !dbg !68
  %22 = shl nsw i64 %21, 2, !dbg !68
  %23 = tail call i8* @realloc(i8* %20, i64 %22) #3, !dbg !68
  %24 = bitcast i8* %23 to i32*, !dbg !68
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !22, metadata !28), !dbg !36
  %25 = bitcast i32* %2 to i8*, !dbg !69
  %26 = load i32* %nzs_, align 4, !dbg !69, !tbaa !46
  %27 = sext i32 %26 to i64, !dbg !69
  %28 = shl nsw i64 %27, 2, !dbg !69
  %29 = tail call i8* @realloc(i8* %25, i64 %28) #3, !dbg !69
  %30 = bitcast i8* %29 to i32*, !dbg !69
  tail call void @llvm.dbg.value(metadata i32* %30, i64 0, metadata !23, metadata !28), !dbg !37
  %31 = load i32* %nzs_, align 4, !dbg !70, !tbaa !46
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %31) #3, !dbg !71
  %.pre4 = load i32* %ifree, align 4, !dbg !72, !tbaa !46
  br label %33, !dbg !73

; <label>:33                                      ; preds = %11, %16
  %34 = phi i32 [ %.pre4, %16 ], [ %13, %11 ]
  %mast1.0 = phi i32* [ %24, %16 ], [ %1, %11 ]
  %mast2.0 = phi i32* [ %30, %16 ], [ %2, %11 ]
  store i32 %34, i32* %8, align 4, !dbg !74, !tbaa !46
  %35 = load i32* %ifree, align 4, !dbg !75, !tbaa !46
  %36 = add nsw i32 %35, -1, !dbg !76
  %37 = sext i32 %36 to i64, !dbg !77
  %38 = getelementptr inbounds i32* %mast1.0, i64 %37, !dbg !77
  store i32 %., i32* %38, align 4, !dbg !78, !tbaa !46
  %39 = load i32* %ifree, align 4, !dbg !79, !tbaa !46
  %40 = add nsw i32 %39, -1, !dbg !80
  %41 = sext i32 %40 to i64, !dbg !81
  %42 = getelementptr inbounds i32* %mast2.0, i64 %41, !dbg !81
  store i32 0, i32* %42, align 4, !dbg !82, !tbaa !46
  br label %.loopexit, !dbg !83

.preheader:                                       ; preds = %0, %48
  %istart.0 = phi i32 [ %50, %48 ], [ %9, %0 ]
  %43 = add nsw i32 %istart.0, -1, !dbg !84
  %44 = sext i32 %43 to i64, !dbg !88
  %45 = getelementptr inbounds i32* %1, i64 %44, !dbg !88
  %46 = load i32* %45, align 4, !dbg !88, !tbaa !46
  %47 = icmp eq i32 %46, %., !dbg !89
  br i1 %47, label %.loopexit, label %48, !dbg !90

; <label>:48                                      ; preds = %.preheader
  %49 = getelementptr inbounds i32* %2, i64 %44, !dbg !91
  %50 = load i32* %49, align 4, !dbg !91, !tbaa !46
  %51 = icmp eq i32 %50, 0, !dbg !93
  br i1 %51, label %52, label %.preheader, !dbg !94

; <label>:52                                      ; preds = %48
  %53 = load i32* %ifree, align 4, !dbg !95, !tbaa !46
  %54 = add nsw i32 %53, 1, !dbg !95
  store i32 %54, i32* %ifree, align 4, !dbg !95, !tbaa !46
  %55 = load i32* %nzs_, align 4, !dbg !97, !tbaa !46
  %56 = icmp slt i32 %53, %55, !dbg !99
  br i1 %56, label %74, label %57, !dbg !100

; <label>:57                                      ; preds = %52
  %58 = sitofp i32 %55 to double, !dbg !101
  %59 = fmul double %58, 1.100000e+00, !dbg !103
  %60 = fptosi double %59 to i32, !dbg !104
  store i32 %60, i32* %nzs_, align 4, !dbg !105, !tbaa !46
  %61 = bitcast i32* %1 to i8*, !dbg !106
  %62 = sext i32 %60 to i64, !dbg !106
  %63 = shl nsw i64 %62, 2, !dbg !106
  %64 = tail call i8* @realloc(i8* %61, i64 %63) #3, !dbg !106
  %65 = bitcast i8* %64 to i32*, !dbg !106
  tail call void @llvm.dbg.value(metadata i32* %65, i64 0, metadata !22, metadata !28), !dbg !36
  %66 = bitcast i32* %2 to i8*, !dbg !107
  %67 = load i32* %nzs_, align 4, !dbg !107, !tbaa !46
  %68 = sext i32 %67 to i64, !dbg !107
  %69 = shl nsw i64 %68, 2, !dbg !107
  %70 = tail call i8* @realloc(i8* %66, i64 %69) #3, !dbg !107
  %71 = bitcast i8* %70 to i32*, !dbg !107
  tail call void @llvm.dbg.value(metadata i32* %71, i64 0, metadata !23, metadata !28), !dbg !37
  %72 = load i32* %nzs_, align 4, !dbg !108, !tbaa !46
  %73 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %72) #3, !dbg !109
  %.pre = load i32* %ifree, align 4, !dbg !110, !tbaa !46
  br label %74, !dbg !111

; <label>:74                                      ; preds = %52, %57
  %75 = phi i32 [ %.pre, %57 ], [ %54, %52 ]
  %mast1.1 = phi i32* [ %65, %57 ], [ %1, %52 ]
  %mast2.1 = phi i32* [ %71, %57 ], [ %2, %52 ]
  %76 = getelementptr inbounds i32* %mast2.1, i64 %44, !dbg !112
  store i32 %75, i32* %76, align 4, !dbg !113, !tbaa !46
  %77 = load i32* %ifree, align 4, !dbg !114, !tbaa !46
  %78 = add nsw i32 %77, -1, !dbg !115
  %79 = sext i32 %78 to i64, !dbg !116
  %80 = getelementptr inbounds i32* %mast1.1, i64 %79, !dbg !116
  store i32 %., i32* %80, align 4, !dbg !117, !tbaa !46
  %81 = load i32* %ifree, align 4, !dbg !118, !tbaa !46
  %82 = add nsw i32 %81, -1, !dbg !119
  %83 = sext i32 %82 to i64, !dbg !120
  %84 = getelementptr inbounds i32* %mast2.1, i64 %83, !dbg !120
  store i32 0, i32* %84, align 4, !dbg !121, !tbaa !46
  br label %.loopexit, !dbg !122

.loopexit:                                        ; preds = %.preheader, %74, %33
  %mast1.2 = phi i32* [ %mast1.0, %33 ], [ %mast1.1, %74 ], [ %1, %.preheader ]
  %mast2.2 = phi i32* [ %mast2.0, %33 ], [ %mast2.1, %74 ], [ %2, %.preheader ]
  store i32* %mast1.2, i32** %mast1p, align 8, !dbg !123, !tbaa !39
  store i32* %mast2.2, i32** %mast2p, align 8, !dbg !124, !tbaa !39
  ret void, !dbg !125
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/insert.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!6 = !{!7}
!7 = !DISubprogram(name: "insert", scope: !1, file: !1, line: 24, type: !8, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32**, i32**, i32*, i32*, i32*, i32*)* @insert, variables: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !5, !10, !10, !5, !5, !5, !5}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ipointer", arg: 1, scope: !7, file: !1, line: 24, type: !5)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mast1p", arg: 2, scope: !7, file: !1, line: 24, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mast2p", arg: 3, scope: !7, file: !1, line: 24, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i1", arg: 4, scope: !7, file: !1, line: 24, type: !5)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "i2", arg: 5, scope: !7, file: !1, line: 25, type: !5)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ifree", arg: 6, scope: !7, file: !1, line: 25, type: !5)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nzs_", arg: 7, scope: !7, file: !1, line: 25, type: !5)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idof1", scope: !7, file: !1, line: 29, type: !4)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idof2", scope: !7, file: !1, line: 29, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "istart", scope: !7, file: !1, line: 29, type: !4)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mast1", scope: !7, file: !1, line: 29, type: !5)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mast2", scope: !7, file: !1, line: 29, type: !5)
!24 = !{i32 2, !"Dwarf Version", i32 2}
!25 = !{i32 2, !"Debug Info Version", i32 700000003}
!26 = !{i32 1, !"PIC Level", i32 2}
!27 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!28 = !DIExpression()
!29 = !DILocation(line: 24, column: 18, scope: !7)
!30 = !DILocation(line: 24, column: 34, scope: !7)
!31 = !DILocation(line: 24, column: 48, scope: !7)
!32 = !DILocation(line: 24, column: 61, scope: !7)
!33 = !DILocation(line: 25, column: 11, scope: !7)
!34 = !DILocation(line: 25, column: 20, scope: !7)
!35 = !DILocation(line: 25, column: 32, scope: !7)
!36 = !DILocation(line: 29, column: 27, scope: !7)
!37 = !DILocation(line: 29, column: 39, scope: !7)
!38 = !DILocation(line: 31, column: 9, scope: !7)
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 32, column: 9, scope: !7)
!44 = !DILocation(line: 34, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 34, column: 6)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !41, i64 0}
!48 = !DILocation(line: 34, column: 10, scope: !45)
!49 = !DILocation(line: 34, column: 9, scope: !45)
!50 = !DILocation(line: 37, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 34, column: 14)
!52 = !DILocation(line: 43, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 43, column: 6)
!54 = !DILocation(line: 43, column: 6, scope: !53)
!55 = !DILocation(line: 43, column: 23, scope: !53)
!56 = !DILocation(line: 43, column: 6, scope: !7)
!57 = !DILocation(line: 44, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 27)
!59 = !DILocation(line: 45, column: 15, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !1, line: 45, column: 8)
!61 = !DILocation(line: 45, column: 14, scope: !60)
!62 = !DILocation(line: 45, column: 8, scope: !58)
!63 = !DILocation(line: 46, column: 23, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 21)
!65 = !DILocation(line: 46, column: 22, scope: !64)
!66 = !DILocation(line: 46, column: 13, scope: !64)
!67 = !DILocation(line: 46, column: 12, scope: !64)
!68 = !DILocation(line: 47, column: 7, scope: !64)
!69 = !DILocation(line: 48, column: 7, scope: !64)
!70 = !DILocation(line: 49, column: 42, scope: !64)
!71 = !DILocation(line: 49, column: 7, scope: !64)
!72 = !DILocation(line: 51, column: 23, scope: !58)
!73 = !DILocation(line: 50, column: 5, scope: !64)
!74 = !DILocation(line: 51, column: 22, scope: !58)
!75 = !DILocation(line: 52, column: 11, scope: !58)
!76 = !DILocation(line: 52, column: 17, scope: !58)
!77 = !DILocation(line: 52, column: 5, scope: !58)
!78 = !DILocation(line: 52, column: 20, scope: !58)
!79 = !DILocation(line: 53, column: 11, scope: !58)
!80 = !DILocation(line: 53, column: 17, scope: !58)
!81 = !DILocation(line: 53, column: 5, scope: !58)
!82 = !DILocation(line: 53, column: 20, scope: !58)
!83 = !DILocation(line: 54, column: 3, scope: !58)
!84 = !DILocation(line: 58, column: 22, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 10)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 57, column: 13)
!87 = distinct !DILexicalBlock(scope: !53, file: !1, line: 55, column: 7)
!88 = !DILocation(line: 58, column: 10, scope: !85)
!89 = !DILocation(line: 58, column: 25, scope: !85)
!90 = !DILocation(line: 58, column: 10, scope: !86)
!91 = !DILocation(line: 59, column: 10, scope: !92)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 59, column: 10)
!93 = !DILocation(line: 59, column: 25, scope: !92)
!94 = !DILocation(line: 59, column: 10, scope: !86)
!95 = !DILocation(line: 60, column: 2, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 59, column: 29)
!97 = !DILocation(line: 61, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !96, file: !1, line: 61, column: 5)
!99 = !DILocation(line: 61, column: 11, scope: !98)
!100 = !DILocation(line: 61, column: 5, scope: !96)
!101 = !DILocation(line: 62, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 61, column: 18)
!103 = !DILocation(line: 62, column: 19, scope: !102)
!104 = !DILocation(line: 62, column: 10, scope: !102)
!105 = !DILocation(line: 62, column: 9, scope: !102)
!106 = !DILocation(line: 63, column: 4, scope: !102)
!107 = !DILocation(line: 64, column: 4, scope: !102)
!108 = !DILocation(line: 65, column: 39, scope: !102)
!109 = !DILocation(line: 65, column: 4, scope: !102)
!110 = !DILocation(line: 67, column: 18, scope: !96)
!111 = !DILocation(line: 66, column: 2, scope: !102)
!112 = !DILocation(line: 67, column: 2, scope: !96)
!113 = !DILocation(line: 67, column: 17, scope: !96)
!114 = !DILocation(line: 68, column: 8, scope: !96)
!115 = !DILocation(line: 68, column: 14, scope: !96)
!116 = !DILocation(line: 68, column: 2, scope: !96)
!117 = !DILocation(line: 68, column: 17, scope: !96)
!118 = !DILocation(line: 69, column: 8, scope: !96)
!119 = !DILocation(line: 69, column: 14, scope: !96)
!120 = !DILocation(line: 69, column: 2, scope: !96)
!121 = !DILocation(line: 69, column: 17, scope: !96)
!122 = !DILocation(line: 70, column: 2, scope: !96)
!123 = !DILocation(line: 78, column: 10, scope: !7)
!124 = !DILocation(line: 79, column: 10, scope: !7)
!125 = !DILocation(line: 81, column: 3, scope: !7)
