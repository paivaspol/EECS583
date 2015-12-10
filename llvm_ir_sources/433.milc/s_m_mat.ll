; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/s_m_mat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @scalar_mult_su3_matrix(%struct.su3_matrix* nocapture readonly %a, double %s, %struct.su3_matrix* nocapture %b) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !34), !dbg !35
  tail call void @llvm.dbg.value(metadata double %s, i64 0, metadata !25, metadata !34), !dbg !36
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %b, i64 0, metadata !26, metadata !34), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !34), !dbg !38
  br label %.preheader, !dbg !39

.preheader:                                       ; preds = %10, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %10 ]
  %1 = insertelement <2 x double> undef, double %s, i32 0, !dbg !41
  %2 = insertelement <2 x double> %1, double %s, i32 1, !dbg !41
  br label %3, !dbg !46

; <label>:3                                       ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !47
  %5 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !48
  %6 = bitcast double* %4 to <2 x double>*, !dbg !47
  %7 = load <2 x double>* %6, align 8, !dbg !47, !tbaa !49
  %8 = fmul <2 x double> %2, %7, !dbg !41
  %9 = bitcast double* %5 to <2 x double>*, !dbg !53
  store <2 x double> %8, <2 x double>* %9, align 8, !dbg !53, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !46
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !46
  br i1 %exitcond, label %10, label %3, !dbg !46

; <label>:10                                      ; preds = %3
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !39
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3, !dbg !39
  br i1 %exitcond5, label %11, label %.preheader, !dbg !39

; <label>:11                                      ; preds = %10
  ret void, !dbg !54
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/s_m_mat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "scalar_mult_su3_matrix", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, double, %struct.su3_matrix*)* @scalar_mult_su3_matrix, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !19, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_matrix", file: !9, line: 14, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 14, size: 1152, align: 64, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !10, file: !9, line: 14, baseType: !13, size: 1152, align: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1152, align: 64, elements: !21)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !15, line: 76, baseType: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 73, size: 128, align: 64, elements: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !16, file: !15, line: 74, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !16, file: !15, line: 75, baseType: !19, size: 64, align: 64, offset: 64)
!21 = !{!22, !22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26, !27, !29}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 11, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !4, file: !1, line: 11, type: !19)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 3, scope: !4, file: !1, line: 11, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 14, type: !28)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 14, type: !28)
!30 = !{i32 2, !"Dwarf Version", i32 2}
!31 = !{i32 2, !"Debug Info Version", i32 700000003}
!32 = !{i32 1, !"PIC Level", i32 2}
!33 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!34 = !DIExpression()
!35 = !DILocation(line: 11, column: 42, scope: !4)
!36 = !DILocation(line: 11, column: 52, scope: !4)
!37 = !DILocation(line: 11, column: 67, scope: !4)
!38 = !DILocation(line: 14, column: 14, scope: !4)
!39 = !DILocation(line: 15, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!41 = !DILocation(line: 16, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 37)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 21)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 21)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 5)
!46 = !DILocation(line: 15, column: 21, scope: !44)
!47 = !DILocation(line: 16, column: 33, scope: !42)
!48 = !DILocation(line: 16, column: 13, scope: !42)
!49 = !{!50, !50, i64 0}
!50 = !{!"double", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 16, column: 18, scope: !42)
!54 = !DILocation(line: 51, column: 1, scope: !4)
