; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/462.libquantum/src/classic.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
  tail call void @llvm.dbg.value(metadata i32 %a, i64 0, metadata !12, metadata !53), !dbg !54
  tail call void @llvm.dbg.value(metadata i32 %b, i64 0, metadata !13, metadata !53), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !15, metadata !53), !dbg !56
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !14, metadata !53), !dbg !57
  %1 = icmp sgt i32 %b, 0, !dbg !58
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !61

.lr.ph:                                           ; preds = %0
  %2 = add i32 %b, -1, !dbg !61
  br label %3, !dbg !61

; <label>:3                                       ; preds = %3, %.lr.ph
  %r.02 = phi i32 [ 1, %.lr.ph ], [ %4, %3 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %5, %3 ]
  %4 = mul nsw i32 %r.02, %a, !dbg !62
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !15, metadata !53), !dbg !56
  %5 = add nuw nsw i32 %i.01, 1, !dbg !63
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !14, metadata !53), !dbg !57
  %exitcond = icmp eq i32 %i.01, %2, !dbg !61
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !61

._crit_edge:                                      ; preds = %3, %0
  %r.0.lcssa = phi i32 [ 1, %0 ], [ %4, %3 ]
  ret i32 %r.0.lcssa, !dbg !64
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
  tail call void @llvm.dbg.value(metadata i32 %u, i64 0, metadata !18, metadata !53), !dbg !65
  tail call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !19, metadata !53), !dbg !66
  %1 = icmp eq i32 %v, 0, !dbg !67
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !67

.lr.ph:                                           ; preds = %0, %.lr.ph
  %.03 = phi i32 [ %.012, %.lr.ph ], [ %u, %0 ]
  %.012 = phi i32 [ %2, %.lr.ph ], [ %v, %0 ]
  %2 = srem i32 %.03, %.012, !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !20, metadata !53), !dbg !70
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !18, metadata !53), !dbg !65
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !19, metadata !53), !dbg !66
  %3 = icmp eq i32 %2, 0, !dbg !67
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !67

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.0.lcssa = phi i32 [ %u, %0 ], [ %.012, %.lr.ph ]
  ret i32 %.0.lcssa, !dbg !71
}

; Function Attrs: nounwind optsize ssp uwtable
define void @quantum_frac_approx(i32* nocapture %a, i32* nocapture %b, i32 %width) #1 {
  tail call void @llvm.dbg.value(metadata i32* %a, i64 0, metadata !26, metadata !53), !dbg !72
  tail call void @llvm.dbg.value(metadata i32* %b, i64 0, metadata !27, metadata !53), !dbg !73
  tail call void @llvm.dbg.value(metadata i32 %width, i64 0, metadata !28, metadata !53), !dbg !74
  %1 = load i32* %a, align 4, !dbg !75, !tbaa !76
  %2 = sitofp i32 %1 to float, !dbg !80
  %3 = load i32* %b, align 4, !dbg !81, !tbaa !76
  %4 = sitofp i32 %3 to float, !dbg !81
  %5 = fdiv float %2, %4, !dbg !82
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !29, metadata !53), !dbg !83
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !30, metadata !53), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !53), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !33, metadata !53), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !34, metadata !53), !dbg !87
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !35, metadata !53), !dbg !88
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !53), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !53), !dbg !90
  %6 = shl i32 1, %width, !dbg !91
  %7 = fpext float %5 to double, !dbg !94
  %8 = shl nsw i32 %6, 1, !dbg !95
  %9 = sitofp i32 %8 to double, !dbg !96
  %10 = fdiv double 1.000000e+00, %9, !dbg !97
  br label %11, !dbg !98

; <label>:11                                      ; preds = %18, %0
  %g.0 = phi float [ %5, %0 ], [ %23, %18 ]
  %num2.0 = phi i32 [ 0, %0 ], [ %num1.0, %18 ]
  %den2.0 = phi i32 [ 1, %0 ], [ %den1.0, %18 ]
  %num1.0 = phi i32 [ 1, %0 ], [ %25, %18 ]
  %den1.0 = phi i32 [ 0, %0 ], [ %16, %18 ]
  %num.0 = phi i32 [ 0, %0 ], [ %25, %18 ]
  %12 = fpext float %g.0 to double, !dbg !99
  %13 = fadd double %12, 5.000000e-06, !dbg !100
  %14 = fptosi double %13 to i32, !dbg !101
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !31, metadata !53), !dbg !102
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !30, metadata !53), !dbg !84
  tail call void @llvm.dbg.value(metadata float %23, i64 0, metadata !30, metadata !53), !dbg !84
  %15 = mul nsw i32 %den1.0, %14, !dbg !103
  %16 = add nsw i32 %15, %den2.0, !dbg !104
  %17 = icmp sgt i32 %16, %6, !dbg !105
  br i1 %17, label %32, label %18, !dbg !106

; <label>:18                                      ; preds = %11
  %19 = sitofp i32 %14 to double, !dbg !107
  %20 = fadd double %19, -5.000000e-06, !dbg !108
  %21 = fsub double %12, %20, !dbg !109
  %22 = fptrunc double %21 to float, !dbg !109
  %23 = fdiv float 1.000000e+00, %22, !dbg !110
  %24 = mul nsw i32 %14, %num1.0, !dbg !111
  %25 = add nsw i32 %24, %num2.0, !dbg !112
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !36, metadata !53), !dbg !89
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !37, metadata !53), !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %num1.0, i64 0, metadata !32, metadata !53), !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %den1.0, i64 0, metadata !33, metadata !53), !dbg !86
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !34, metadata !53), !dbg !87
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !35, metadata !53), !dbg !88
  %26 = sitofp i32 %25 to double, !dbg !113
  %27 = sitofp i32 %16 to double, !dbg !114
  %28 = fdiv double %26, %27, !dbg !115
  %29 = fsub double %28, %7, !dbg !116
  %30 = tail call double @fabs(double %29) #4, !dbg !117
  %31 = fcmp ogt double %30, %10, !dbg !118
  br i1 %31, label %11, label %32, !dbg !119

; <label>:32                                      ; preds = %11, %18
  %num.1 = phi i32 [ %num.0, %11 ], [ %25, %18 ]
  %den.1 = phi i32 [ %den1.0, %11 ], [ %16, %18 ]
  store i32 %num.1, i32* %a, align 4, !dbg !120, !tbaa !76
  store i32 %den.1, i32* %b, align 4, !dbg !121, !tbaa !76
  ret void, !dbg !122
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !42, metadata !53), !dbg !123
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !43, metadata !53), !dbg !124
  br label %1, !dbg !125

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %4, %1 ]
  %2 = shl i32 1, %i.0, !dbg !127
  %3 = icmp slt i32 %2, %n, !dbg !129
  %4 = add nuw nsw i32 %i.0, 1, !dbg !130
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !43, metadata !53), !dbg !124
  br i1 %3, label %1, label %5, !dbg !131

; <label>:5                                       ; preds = %1
  ret i32 %i.0, !dbg !132
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !46, metadata !53), !dbg !133
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !47, metadata !53), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !48, metadata !53), !dbg !135
  br label %1, !dbg !136

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %5, %1 ]
  %2 = mul nsw i32 %i.0, %c, !dbg !138
  %3 = srem i32 %2, %n, !dbg !140
  %4 = icmp eq i32 %3, 1, !dbg !141
  %5 = add nuw nsw i32 %i.0, 1, !dbg !142
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !48, metadata !53), !dbg !135
  br i1 %4, label %6, label %1, !dbg !143

; <label>:6                                       ; preds = %1
  ret i32 %i.0, !dbg !144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/462.libquantum/src/classic.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!7 = !{!8, !16, !21, !38, !44}
!8 = !DISubprogram(name: "quantum_ipow", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @quantum_ipow, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!5, !5, !5}
!11 = !{!12, !13, !14, !15}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !8, file: !1, line: 37, type: !5)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !8, file: !1, line: 37, type: !5)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 39, type: !5)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !8, file: !1, line: 40, type: !5)
!16 = !DISubprogram(name: "quantum_gcd", scope: !1, file: !1, line: 51, type: !9, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @quantum_gcd, variables: !17)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "u", arg: 1, scope: !16, file: !1, line: 51, type: !5)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !16, file: !1, line: 51, type: !5)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !16, file: !1, line: 53, type: !5)
!21 = !DISubprogram(name: "quantum_frac_approx", scope: !1, file: !1, line: 67, type: !22, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32)* @quantum_frac_approx, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !5}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !21, file: !1, line: 67, type: !24)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !21, file: !1, line: 67, type: !24)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "width", arg: 3, scope: !21, file: !1, line: 67, type: !5)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !21, file: !1, line: 69, type: !4)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !21, file: !1, line: 70, type: !4)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !21, file: !1, line: 71, type: !5)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num2", scope: !21, file: !1, line: 71, type: !5)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "den2", scope: !21, file: !1, line: 71, type: !5)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num1", scope: !21, file: !1, line: 71, type: !5)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "den1", scope: !21, file: !1, line: 71, type: !5)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !21, file: !1, line: 71, type: !5)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "den", scope: !21, file: !1, line: 71, type: !5)
!38 = !DISubprogram(name: "quantum_getwidth", scope: !1, file: !1, line: 104, type: !39, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @quantum_getwidth, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!5, !5}
!41 = !{!42, !43}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !38, file: !1, line: 104, type: !5)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !38, file: !1, line: 106, type: !5)
!44 = !DISubprogram(name: "quantum_inverse_mod", scope: !1, file: !1, line: 116, type: !9, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @quantum_inverse_mod, variables: !45)
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !44, file: !1, line: 116, type: !5)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !44, file: !1, line: 116, type: !5)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !44, file: !1, line: 118, type: !5)
!49 = !{i32 2, !"Dwarf Version", i32 2}
!50 = !{i32 2, !"Debug Info Version", i32 700000003}
!51 = !{i32 1, !"PIC Level", i32 2}
!52 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!53 = !DIExpression()
!54 = !DILocation(line: 37, column: 18, scope: !8)
!55 = !DILocation(line: 37, column: 25, scope: !8)
!56 = !DILocation(line: 40, column: 7, scope: !8)
!57 = !DILocation(line: 39, column: 7, scope: !8)
!58 = !DILocation(line: 42, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 42, column: 3)
!60 = distinct !DILexicalBlock(scope: !8, file: !1, line: 42, column: 3)
!61 = !DILocation(line: 42, column: 3, scope: !60)
!62 = !DILocation(line: 43, column: 6, scope: !59)
!63 = !DILocation(line: 42, column: 18, scope: !59)
!64 = !DILocation(line: 45, column: 3, scope: !8)
!65 = !DILocation(line: 51, column: 17, scope: !16)
!66 = !DILocation(line: 51, column: 24, scope: !16)
!67 = !DILocation(line: 55, column: 3, scope: !16)
!68 = !DILocation(line: 57, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !16, file: !1, line: 56, column: 5)
!70 = !DILocation(line: 53, column: 7, scope: !16)
!71 = !DILocation(line: 61, column: 3, scope: !16)
!72 = !DILocation(line: 67, column: 26, scope: !21)
!73 = !DILocation(line: 67, column: 34, scope: !21)
!74 = !DILocation(line: 67, column: 41, scope: !21)
!75 = !DILocation(line: 69, column: 21, scope: !21)
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !DILocation(line: 69, column: 13, scope: !21)
!81 = !DILocation(line: 69, column: 26, scope: !21)
!82 = !DILocation(line: 69, column: 24, scope: !21)
!83 = !DILocation(line: 69, column: 9, scope: !21)
!84 = !DILocation(line: 70, column: 9, scope: !21)
!85 = !DILocation(line: 71, column: 10, scope: !21)
!86 = !DILocation(line: 71, column: 18, scope: !21)
!87 = !DILocation(line: 71, column: 26, scope: !21)
!88 = !DILocation(line: 71, column: 34, scope: !21)
!89 = !DILocation(line: 71, column: 42, scope: !21)
!90 = !DILocation(line: 71, column: 49, scope: !21)
!91 = !DILocation(line: 80, column: 30, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 80, column: 11)
!93 = distinct !DILexicalBlock(scope: !21, file: !1, line: 74, column: 5)
!94 = !DILocation(line: 91, column: 41, scope: !21)
!95 = !DILocation(line: 91, column: 55, scope: !21)
!96 = !DILocation(line: 91, column: 52, scope: !21)
!97 = !DILocation(line: 91, column: 50, scope: !21)
!98 = !DILocation(line: 73, column: 3, scope: !21)
!99 = !DILocation(line: 75, column: 18, scope: !93)
!100 = !DILocation(line: 75, column: 19, scope: !93)
!101 = !DILocation(line: 75, column: 11, scope: !93)
!102 = !DILocation(line: 71, column: 7, scope: !21)
!103 = !DILocation(line: 80, column: 13, scope: !92)
!104 = !DILocation(line: 80, column: 20, scope: !92)
!105 = !DILocation(line: 80, column: 27, scope: !92)
!106 = !DILocation(line: 80, column: 11, scope: !93)
!107 = !DILocation(line: 77, column: 12, scope: !93)
!108 = !DILocation(line: 77, column: 13, scope: !93)
!109 = !DILocation(line: 77, column: 9, scope: !93)
!110 = !DILocation(line: 78, column: 11, scope: !93)
!111 = !DILocation(line: 83, column: 15, scope: !93)
!112 = !DILocation(line: 83, column: 22, scope: !93)
!113 = !DILocation(line: 91, column: 19, scope: !21)
!114 = !DILocation(line: 91, column: 34, scope: !21)
!115 = !DILocation(line: 91, column: 32, scope: !21)
!116 = !DILocation(line: 91, column: 39, scope: !21)
!117 = !DILocation(line: 91, column: 13, scope: !21)
!118 = !DILocation(line: 91, column: 44, scope: !21)
!119 = !DILocation(line: 91, column: 5, scope: !93)
!120 = !DILocation(line: 95, column: 6, scope: !21)
!121 = !DILocation(line: 96, column: 6, scope: !21)
!122 = !DILocation(line: 98, column: 3, scope: !21)
!123 = !DILocation(line: 104, column: 22, scope: !38)
!124 = !DILocation(line: 106, column: 7, scope: !38)
!125 = !DILocation(line: 108, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !38, file: !1, line: 108, column: 3)
!127 = !DILocation(line: 108, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !1, line: 108, column: 3)
!129 = !DILocation(line: 108, column: 16, scope: !128)
!130 = !DILocation(line: 108, column: 21, scope: !128)
!131 = !DILocation(line: 108, column: 3, scope: !126)
!132 = !DILocation(line: 110, column: 3, scope: !38)
!133 = !DILocation(line: 116, column: 25, scope: !44)
!134 = !DILocation(line: 116, column: 32, scope: !44)
!135 = !DILocation(line: 118, column: 7, scope: !44)
!136 = !DILocation(line: 120, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !44, file: !1, line: 120, column: 3)
!138 = !DILocation(line: 120, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 120, column: 3)
!140 = !DILocation(line: 120, column: 17, scope: !139)
!141 = !DILocation(line: 120, column: 19, scope: !139)
!142 = !DILocation(line: 120, column: 25, scope: !139)
!143 = !DILocation(line: 120, column: 3, scope: !137)
!144 = !DILocation(line: 122, column: 3, scope: !44)
