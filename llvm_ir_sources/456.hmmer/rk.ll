; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/rk.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i64 @rkcomp(i8* %probe) #0 {
  %coded = alloca [17 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %probe, i64 0, metadata !15, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !16, metadata !37), !dbg !39
  tail call void @llvm.dbg.declare(metadata [17 x i8]* %coded, metadata !17, metadata !37), !dbg !40
  %1 = tail call i64 @strlen(i8* %probe) #5, !dbg !41
  %2 = trunc i64 %1 to i32, !dbg !41
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !21, metadata !37), !dbg !43
  %sext = shl i64 %1, 32, !dbg !44
  %3 = ashr exact i64 %sext, 32, !dbg !44
  %4 = icmp ugt i64 %3, 16, !dbg !45
  br i1 %4, label %.loopexit, label %5, !dbg !46

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 0, !dbg !47
  %7 = call i32 @seqencode(i8* %6, i8* %probe) #5, !dbg !49
  %8 = icmp eq i32 %7, 0, !dbg !50
  br i1 %8, label %.loopexit, label %.preheader1, !dbg !51

.preheader1:                                      ; preds = %5
  %9 = icmp sgt i32 %2, 0, !dbg !52
  br i1 %9, label %.lr.ph6, label %.lr.ph, !dbg !55

.lr.ph6:                                          ; preds = %.preheader1
  %10 = add i32 %2, -1, !dbg !55
  br label %12, !dbg !55

.preheader:                                       ; preds = %12
  %11 = icmp ult i32 %2, 16, !dbg !56
  br i1 %11, label %.lr.ph, label %.loopexit, !dbg !59

; <label>:12                                      ; preds = %12, %.lr.ph6
  %indvars.iv = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next, %12 ]
  %hashprobe.04 = phi i64 [ 0, %.lr.ph6 ], [ %17, %12 ]
  %13 = shl i64 %hashprobe.04, 4, !dbg !60
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !16, metadata !37), !dbg !39
  %14 = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 %indvars.iv, !dbg !62
  %15 = load i8* %14, align 1, !dbg !62, !tbaa !63
  %16 = sext i8 %15 to i64, !dbg !66
  %17 = or i64 %16, %13, !dbg !67
  call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !16, metadata !37), !dbg !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !55
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !55
  %exitcond11 = icmp eq i32 %lftr.wideiv, %10, !dbg !55
  br i1 %exitcond11, label %.preheader, label %12, !dbg !55

.lr.ph:                                           ; preds = %.preheader1, %.preheader, %.lr.ph
  %i.13 = phi i32 [ %20, %.lr.ph ], [ 0, %.preheader1 ], [ %2, %.preheader ]
  %hashprobe.12 = phi i64 [ %19, %.lr.ph ], [ 0, %.preheader1 ], [ %17, %.preheader ]
  %18 = shl i64 %hashprobe.12, 4, !dbg !68
  call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !16, metadata !37), !dbg !39
  %19 = or i64 %18, 15, !dbg !70
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !16, metadata !37), !dbg !39
  %20 = add nuw nsw i32 %i.13, 1, !dbg !71
  call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !22, metadata !37), !dbg !72
  %exitcond = icmp eq i32 %i.13, 15, !dbg !59
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !dbg !59

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %5, %0
  %.0 = phi i64 [ 0, %0 ], [ 0, %5 ], [ %17, %.preheader ], [ %19, %.lr.ph ]
  ret i64 %.0, !dbg !73
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare i32 @seqencode(i8*, i8*) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @rkseq(i64 %hashprobe, i8* nocapture readonly %sequence) #4 {
  tail call void @llvm.dbg.value(metadata i64 %hashprobe, i64 0, metadata !27, metadata !37), !dbg !74
  tail call void @llvm.dbg.value(metadata i8* %sequence, i64 0, metadata !28, metadata !37), !dbg !75
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !31, metadata !37), !dbg !76
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !32, metadata !37), !dbg !77
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !29, metadata !37), !dbg !78
  br label %5, !dbg !79

.preheader2:                                      ; preds = %5, %9
  %target.0.lcssa = phi i64 [ %target.013, %5 ], [ %12, %9 ]
  %1 = getelementptr inbounds i8* %sequence, i64 15, !dbg !81
  %2 = load i8* %1, align 1, !dbg !82, !tbaa !63
  %3 = icmp eq i8 %2, 0, !dbg !83
  br i1 %3, label %.preheader, label %.lr.ph, !dbg !84

.lr.ph:                                           ; preds = %.preheader2
  %4 = getelementptr inbounds i8* %sequence, i64 16, !dbg !85
  br label %15, !dbg !84

; <label>:5                                       ; preds = %0, %9
  %target.013 = phi i64 [ 0, %0 ], [ %12, %9 ]
  %i.012 = phi i64 [ 0, %0 ], [ %13, %9 ]
  %6 = getelementptr inbounds i8* %sequence, i64 %i.012, !dbg !86
  %7 = load i8* %6, align 1, !dbg !90, !tbaa !63
  %8 = icmp eq i8 %7, 0, !dbg !91
  br i1 %8, label %.preheader2, label %9, !dbg !92

; <label>:9                                       ; preds = %5
  %10 = shl i64 %target.013, 4, !dbg !93
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !32, metadata !37), !dbg !77
  %11 = sext i8 %7 to i64, !dbg !94
  %12 = or i64 %11, %10, !dbg !95
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !32, metadata !37), !dbg !77
  %13 = add nuw nsw i64 %i.012, 1, !dbg !96
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !29, metadata !37), !dbg !78
  %14 = icmp ult i64 %13, 16, !dbg !97
  br i1 %14, label %5, label %.preheader2, !dbg !79

; <label>:15                                      ; preds = %.lr.ph, %21
  %16 = phi i8* [ %4, %.lr.ph ], [ %27, %21 ]
  %target.110 = phi i64 [ %target.0.lcssa, %.lr.ph ], [ %25, %21 ]
  %pos.09 = phi i64 [ 0, %.lr.ph ], [ %26, %21 ]
  %17 = and i64 %target.110, %hashprobe, !dbg !98
  %18 = icmp eq i64 %17, %target.110, !dbg !101
  br i1 %18, label %19, label %21, !dbg !102

; <label>:19                                      ; preds = %15
  %20 = trunc i64 %pos.09 to i32, !dbg !103
  br label %.loopexit, !dbg !104

; <label>:21                                      ; preds = %15
  %22 = shl i64 %target.110, 4, !dbg !105
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !32, metadata !37), !dbg !77
  %23 = load i8* %16, align 1, !dbg !106, !tbaa !63
  %24 = sext i8 %23 to i64, !dbg !107
  %25 = or i64 %24, %22, !dbg !108
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !32, metadata !37), !dbg !77
  %26 = add nuw nsw i64 %pos.09, 1, !dbg !109
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !31, metadata !37), !dbg !76
  %.sum = add i64 %pos.09, 17, !dbg !85
  %27 = getelementptr inbounds i8* %sequence, i64 %.sum, !dbg !85
  %.sum1 = add i64 %pos.09, 16, !dbg !81
  %28 = getelementptr inbounds i8* %sequence, i64 %.sum1, !dbg !81
  %29 = load i8* %28, align 1, !dbg !82, !tbaa !63
  %30 = icmp eq i8 %29, 0, !dbg !83
  br i1 %30, label %.preheader, label %15, !dbg !84

.preheader:                                       ; preds = %.preheader2, %21, %36
  %target.28 = phi i64 [ %37, %36 ], [ %target.0.lcssa, %.preheader2 ], [ %25, %21 ]
  %pos.17 = phi i64 [ %38, %36 ], [ 0, %.preheader2 ], [ %26, %21 ]
  %i.16 = phi i64 [ %39, %36 ], [ 0, %.preheader2 ], [ 0, %21 ]
  %31 = or i64 %target.28, 15, !dbg !110
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !32, metadata !37), !dbg !77
  %32 = and i64 %31, %hashprobe, !dbg !114
  %33 = icmp eq i64 %32, %31, !dbg !116
  br i1 %33, label %34, label %36, !dbg !117

; <label>:34                                      ; preds = %.preheader
  %35 = trunc i64 %pos.17 to i32, !dbg !118
  br label %.loopexit, !dbg !119

; <label>:36                                      ; preds = %.preheader
  %37 = shl i64 %31, 4, !dbg !120
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !32, metadata !37), !dbg !77
  %38 = add nsw i64 %pos.17, 1, !dbg !121
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !31, metadata !37), !dbg !76
  %39 = add nuw nsw i64 %i.16, 1, !dbg !122
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !29, metadata !37), !dbg !78
  %40 = icmp ult i64 %39, 16, !dbg !123
  br i1 %40, label %.preheader, label %.loopexit, !dbg !124

.loopexit:                                        ; preds = %36, %34, %19
  %.0 = phi i32 [ %20, %19 ], [ %35, %34 ], [ -1, %36 ]
  ret i32 %.0, !dbg !125
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/rk.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Hashseq", file: !5, line: 25, baseType: !6)
!5 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/rk.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !23}
!9 = !DISubprogram(name: "rkcomp", scope: !1, file: !1, line: 34, type: !10, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @rkcomp, variables: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !21, !22}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "probe", arg: 1, scope: !9, file: !1, line: 34, type: !12)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hashprobe", scope: !9, file: !1, line: 36, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coded", scope: !9, file: !1, line: 37, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 136, align: 8, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 17)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !9, file: !1, line: 38, type: !7)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 39, type: !7)
!23 = !DISubprogram(name: "rkseq", scope: !1, file: !1, line: 61, type: !24, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64, i8*)* @rkseq, variables: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!7, !4, !12}
!26 = !{!27, !28, !29, !31, !32}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "hashprobe", arg: 1, scope: !23, file: !1, line: 61, type: !4)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sequence", arg: 2, scope: !23, file: !1, line: 62, type: !12)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !23, file: !1, line: 64, type: !30)
!30 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !23, file: !1, line: 65, type: !30)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "target", scope: !23, file: !1, line: 66, type: !4)
!33 = !{i32 2, !"Dwarf Version", i32 2}
!34 = !{i32 2, !"Debug Info Version", i32 700000003}
!35 = !{i32 1, !"PIC Level", i32 2}
!36 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!37 = !DIExpression()
!38 = !DILocation(line: 34, column: 14, scope: !9)
!39 = !DILocation(line: 36, column: 11, scope: !9)
!40 = !DILocation(line: 37, column: 11, scope: !9)
!41 = !DILocation(line: 41, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 7)
!43 = !DILocation(line: 38, column: 11, scope: !9)
!44 = !DILocation(line: 41, column: 7, scope: !42)
!45 = !DILocation(line: 41, column: 30, scope: !42)
!46 = !DILocation(line: 41, column: 7, scope: !9)
!47 = !DILocation(line: 43, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 7)
!49 = !DILocation(line: 43, column: 7, scope: !48)
!50 = !DILocation(line: 43, column: 31, scope: !48)
!51 = !DILocation(line: 43, column: 7, scope: !9)
!52 = !DILocation(line: 45, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 45, column: 3)
!54 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 3)
!55 = !DILocation(line: 45, column: 3, scope: !54)
!56 = !DILocation(line: 51, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 51, column: 3)
!58 = distinct !DILexicalBlock(scope: !9, file: !1, line: 51, column: 3)
!59 = !DILocation(line: 51, column: 3, scope: !58)
!60 = !DILocation(line: 47, column: 17, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 46, column: 5)
!62 = !DILocation(line: 48, column: 30, scope: !61)
!63 = !{!64, !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 48, column: 20, scope: !61)
!67 = !DILocation(line: 48, column: 17, scope: !61)
!68 = !DILocation(line: 53, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !57, file: !1, line: 52, column: 5)
!70 = !DILocation(line: 54, column: 17, scope: !69)
!71 = !DILocation(line: 51, column: 28, scope: !57)
!72 = !DILocation(line: 39, column: 11, scope: !9)
!73 = !DILocation(line: 58, column: 1, scope: !9)
!74 = !DILocation(line: 61, column: 17, scope: !23)
!75 = !DILocation(line: 62, column: 17, scope: !23)
!76 = !DILocation(line: 65, column: 12, scope: !23)
!77 = !DILocation(line: 66, column: 12, scope: !23)
!78 = !DILocation(line: 64, column: 12, scope: !23)
!79 = !DILocation(line: 69, column: 3, scope: !80)
!80 = distinct !DILexicalBlock(scope: !23, file: !1, line: 69, column: 3)
!81 = !DILocation(line: 77, column: 41, scope: !23)
!82 = !DILocation(line: 77, column: 10, scope: !23)
!83 = !DILocation(line: 77, column: 45, scope: !23)
!84 = !DILocation(line: 77, column: 3, scope: !23)
!85 = !DILocation(line: 77, column: 27, scope: !23)
!86 = !DILocation(line: 71, column: 22, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 71, column: 11)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 5)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 69, column: 3)
!90 = !DILocation(line: 71, column: 11, scope: !87)
!91 = !DILocation(line: 71, column: 27, scope: !87)
!92 = !DILocation(line: 71, column: 11, scope: !88)
!93 = !DILocation(line: 73, column: 14, scope: !88)
!94 = !DILocation(line: 74, column: 18, scope: !88)
!95 = !DILocation(line: 74, column: 14, scope: !88)
!96 = !DILocation(line: 69, column: 33, scope: !89)
!97 = !DILocation(line: 69, column: 17, scope: !89)
!98 = !DILocation(line: 88, column: 22, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 88, column: 11)
!100 = distinct !DILexicalBlock(scope: !23, file: !1, line: 78, column: 5)
!101 = !DILocation(line: 88, column: 32, scope: !99)
!102 = !DILocation(line: 88, column: 11, scope: !100)
!103 = !DILocation(line: 89, column: 10, scope: !99)
!104 = !DILocation(line: 89, column: 2, scope: !99)
!105 = !DILocation(line: 90, column: 14, scope: !100)
!106 = !DILocation(line: 91, column: 29, scope: !100)
!107 = !DILocation(line: 91, column: 18, scope: !100)
!108 = !DILocation(line: 91, column: 14, scope: !100)
!109 = !DILocation(line: 92, column: 10, scope: !100)
!110 = !DILocation(line: 97, column: 14, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 96, column: 5)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 95, column: 3)
!113 = distinct !DILexicalBlock(scope: !23, file: !1, line: 95, column: 3)
!114 = !DILocation(line: 98, column: 22, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 98, column: 11)
!116 = !DILocation(line: 98, column: 32, scope: !115)
!117 = !DILocation(line: 98, column: 11, scope: !111)
!118 = !DILocation(line: 99, column: 10, scope: !115)
!119 = !DILocation(line: 99, column: 2, scope: !115)
!120 = !DILocation(line: 100, column: 14, scope: !111)
!121 = !DILocation(line: 101, column: 10, scope: !111)
!122 = !DILocation(line: 95, column: 33, scope: !112)
!123 = !DILocation(line: 95, column: 17, scope: !112)
!124 = !DILocation(line: 95, column: 3, scope: !113)
!125 = !DILocation(line: 105, column: 1, scope: !23)
