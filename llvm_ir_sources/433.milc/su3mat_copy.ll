; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3mat_copy.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @su3mat_copy(%struct.su3_matrix* nocapture readonly %a, %struct.su3_matrix* nocapture %b) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !33), !dbg !34
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %b, i64 0, metadata !25, metadata !33), !dbg !35
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !33), !dbg !36
  br label %.preheader, !dbg !37

.preheader:                                       ; preds = %7, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %7 ]
  br label %1, !dbg !39

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, !dbg !42
  %3 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, !dbg !45
  %4 = bitcast %struct.complex* %2 to <2 x i64>*, !dbg !46
  %5 = load <2 x i64>* %4, align 8, !dbg !46, !tbaa !47
  %6 = bitcast %struct.complex* %3 to <2 x i64>*, !dbg !51
  store <2 x i64> %5, <2 x i64>* %6, align 8, !dbg !51, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !39
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !39
  br i1 %exitcond, label %7, label %1, !dbg !39

; <label>:7                                       ; preds = %1
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !37
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3, !dbg !37
  br i1 %exitcond5, label %8, label %.preheader, !dbg !37

; <label>:8                                       ; preds = %7
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3mat_copy.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "su3mat_copy", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_matrix*)* @su3mat_copy, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7}
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
!23 = !{!24, !25, !26, !28}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 11, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 11, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 12, type: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 12, type: !27)
!29 = !{i32 2, !"Dwarf Version", i32 2}
!30 = !{i32 2, !"Debug Info Version", i32 700000003}
!31 = !{i32 1, !"PIC Level", i32 2}
!32 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!33 = !DIExpression()
!34 = !DILocation(line: 11, column: 31, scope: !4)
!35 = !DILocation(line: 11, column: 46, scope: !4)
!36 = !DILocation(line: 12, column: 14, scope: !4)
!37 = !DILocation(line: 13, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !4, file: !1, line: 13, column: 5)
!39 = !DILocation(line: 13, column: 21, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 21)
!41 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 5)
!42 = !DILocation(line: 14, column: 20, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 13, column: 37)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 21)
!45 = !DILocation(line: 14, column: 2, scope: !43)
!46 = !DILocation(line: 14, column: 31, scope: !43)
!47 = !{!48, !48, i64 0}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 14, column: 18, scope: !43)
!52 = !DILocation(line: 17, column: 1, scope: !4)
