; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/msq_su3vec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @magsq_su3vec(%struct.su3_vector* nocapture readonly %a) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %a, i64 0, metadata !24, metadata !32), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !32), !dbg !34
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !25, metadata !32), !dbg !35
  br label %1, !dbg !36

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %sum.01 = phi double [ 0.000000e+00, %0 ], [ %9, %1 ]
  %2 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !38
  %3 = bitcast double* %2 to <2 x double>*, !dbg !38
  %4 = load <2 x double>* %3, align 8, !dbg !38, !tbaa !40
  %5 = fmul <2 x double> %4, %4, !dbg !44
  %6 = extractelement <2 x double> %5, i32 0, !dbg !45
  %7 = extractelement <2 x double> %5, i32 1, !dbg !45
  %8 = fadd double %6, %7, !dbg !45
  %9 = fadd double %sum.01, %8, !dbg !46
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !25, metadata !32), !dbg !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !36
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !36
  br i1 %exitcond, label %10, label %1, !dbg !36

; <label>:10                                      ; preds = %1
  ret double %9, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/msq_su3vec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "magsq_su3vec", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.su3_vector*)* @magsq_su3vec, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8}
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !10, line: 15, baseType: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 15, size: 384, align: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !11, file: !10, line: 15, baseType: !14, size: 384, align: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 384, align: 64, elements: !21)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !16, line: 76, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 73, size: 128, align: 64, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !17, file: !16, line: 74, baseType: !7, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !17, file: !16, line: 75, baseType: !7, size: 64, align: 64, offset: 64)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 12, type: !8)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !4, file: !1, line: 13, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 14, type: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !{i32 2, !"Dwarf Version", i32 2}
!29 = !{i32 2, !"Debug Info Version", i32 700000003}
!30 = !{i32 1, !"PIC Level", i32 2}
!31 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!32 = !DIExpression()
!33 = !DILocation(line: 12, column: 34, scope: !4)
!34 = !DILocation(line: 14, column: 14, scope: !4)
!35 = !DILocation(line: 13, column: 17, scope: !4)
!36 = !DILocation(line: 15, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!38 = !DILocation(line: 15, column: 44, scope: !39)
!39 = distinct !DILexicalBlock(scope: !37, file: !1, line: 15, column: 5)
!40 = !{!41, !41, i64 0}
!41 = !{!"double", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 15, column: 48, scope: !39)
!45 = !DILocation(line: 16, column: 2, scope: !39)
!46 = !DILocation(line: 15, column: 33, scope: !39)
!47 = !DILocation(line: 17, column: 5, scope: !4)
