; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/realtr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @realtrace_su3(%struct.su3_matrix* nocapture readonly %a, %struct.su3_matrix* nocapture readonly %b) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !34), !dbg !35
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %b, i64 0, metadata !25, metadata !34), !dbg !36
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !29, metadata !34), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !34), !dbg !38
  br label %.preheader, !dbg !39

.preheader:                                       ; preds = %13, %0
  %indvars.iv5 = phi i64 [ 0, %0 ], [ %indvars.iv.next6, %13 ]
  %sum.04 = phi double [ 0.000000e+00, %0 ], [ %12, %13 ]
  br label %1, !dbg !41

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %sum.12 = phi double [ %sum.04, %.preheader ], [ %12, %1 ]
  %2 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv5, i64 %indvars.iv, i32 0, !dbg !44
  %3 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv5, i64 %indvars.iv, i32 0, !dbg !46
  %4 = bitcast double* %2 to <2 x double>*, !dbg !44
  %5 = load <2 x double>* %4, align 8, !dbg !44, !tbaa !47
  %6 = bitcast double* %3 to <2 x double>*, !dbg !46
  %7 = load <2 x double>* %6, align 8, !dbg !46, !tbaa !47
  %8 = fmul <2 x double> %5, %7, !dbg !51
  %9 = extractelement <2 x double> %8, i32 0, !dbg !52
  %10 = extractelement <2 x double> %8, i32 1, !dbg !52
  %11 = fadd double %9, %10, !dbg !52
  %12 = fadd double %sum.12, %11, !dbg !53
  tail call void @llvm.dbg.value(metadata double %12, i64 0, metadata !29, metadata !34), !dbg !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !41
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !41
  br i1 %exitcond, label %13, label %1, !dbg !41

; <label>:13                                      ; preds = %1
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !39
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 3, !dbg !39
  br i1 %exitcond7, label %14, label %.preheader, !dbg !39

; <label>:14                                      ; preds = %13
  ret double %12, !dbg !54
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/realtr.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "realtrace_su3", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.su3_matrix*, %struct.su3_matrix*)* @realtrace_su3, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !8}
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_matrix", file: !10, line: 14, baseType: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 14, size: 1152, align: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !11, file: !10, line: 14, baseType: !14, size: 1152, align: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1152, align: 64, elements: !21)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !16, line: 76, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 73, size: 128, align: 64, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !17, file: !16, line: 74, baseType: !7, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !17, file: !16, line: 75, baseType: !7, size: 64, align: 64, offset: 64)
!21 = !{!22, !22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26, !28, !29}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 10, type: !8)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 10, type: !8)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 11, type: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 11, type: !27)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !4, file: !1, line: 12, type: !7)
!30 = !{i32 2, !"Dwarf Version", i32 2}
!31 = !{i32 2, !"Debug Info Version", i32 700000003}
!32 = !{i32 1, !"PIC Level", i32 2}
!33 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!34 = !DIExpression()
!35 = !DILocation(line: 10, column: 36, scope: !4)
!36 = !DILocation(line: 10, column: 51, scope: !4)
!37 = !DILocation(line: 12, column: 17, scope: !4)
!38 = !DILocation(line: 11, column: 14, scope: !4)
!39 = !DILocation(line: 13, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !4, file: !1, line: 13, column: 5)
!41 = !DILocation(line: 13, column: 29, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 29)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 5)
!44 = !DILocation(line: 14, column: 19, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 29)
!46 = !DILocation(line: 14, column: 35, scope: !45)
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 14, column: 23, scope: !45)
!52 = !DILocation(line: 14, column: 40, scope: !45)
!53 = !DILocation(line: 14, column: 5, scope: !45)
!54 = !DILocation(line: 15, column: 5, scope: !4)
