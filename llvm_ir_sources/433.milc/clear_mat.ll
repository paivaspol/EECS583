; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/clear_mat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_su3mat(%struct.su3_matrix* nocapture %dest) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %dest, i64 0, metadata !24, metadata !32), !dbg !33
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !25, metadata !32), !dbg !34
  br label %.preheader, !dbg !35

.preheader:                                       ; preds = %4, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %4 ]
  br label %1, !dbg !37

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.su3_matrix* %dest, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !37
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !37
  %3 = bitcast double* %2 to i8*, !dbg !37
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false), !dbg !43
  br i1 %exitcond, label %4, label %1, !dbg !37

; <label>:4                                       ; preds = %1
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !35
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3, !dbg !35
  br i1 %exitcond5, label %5, label %.preheader, !dbg !35

; <label>:5                                       ; preds = %4
  ret void, !dbg !44
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/clear_mat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "clear_su3mat", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*)* @clear_su3mat, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7}
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
!23 = !{!24, !25, !27}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !4, file: !1, line: 11, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 12, type: !26)
!26 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 12, type: !26)
!28 = !{i32 2, !"Dwarf Version", i32 2}
!29 = !{i32 2, !"Debug Info Version", i32 700000003}
!30 = !{i32 1, !"PIC Level", i32 2}
!31 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!32 = !DIExpression()
!33 = !DILocation(line: 11, column: 32, scope: !4)
!34 = !DILocation(line: 12, column: 14, scope: !4)
!35 = !DILocation(line: 13, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !4, file: !1, line: 13, column: 5)
!37 = !DILocation(line: 13, column: 21, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 21)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 13, column: 5)
!40 = !DILocation(line: 14, column: 16, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 37)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 13, column: 21)
!43 = !DILocation(line: 14, column: 21, scope: !41)
!44 = !DILocation(line: 16, column: 1, scope: !4)
