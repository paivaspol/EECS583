; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize ssp uwtable
define void @left_su2_hit_n(%struct.su2_matrix* %u, i32 %p, i32 %q, %struct.su3_matrix* %link) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su2_matrix* %u, i64 0, metadata !33, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %p, i64 0, metadata !34, metadata !42), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %q, i64 0, metadata !35, metadata !42), !dbg !45
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %link, i64 0, metadata !36, metadata !42), !dbg !46
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !42), !dbg !47
  %1 = sext i32 %p to i64, !dbg !48
  %2 = sext i32 %q to i64, !dbg !51
  br label %3, !dbg !52

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %1, i64 %indvars.iv, !dbg !48
  %5 = getelementptr inbounds %struct.su3_matrix* %link, i64 0, i32 0, i64 %2, i64 %indvars.iv, !dbg !51
  tail call void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* %u, %struct.complex* %4, %struct.complex* %5) #3, !dbg !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !52
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !52
  br i1 %exitcond, label %6, label %3, !dbg !52

; <label>:6                                       ; preds = %3
  ret void, !dbg !54
}

; Function Attrs: optsize
declare void @mult_su2_mat_vec_elem_n(%struct.su2_matrix*, %struct.complex*, %struct.complex*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/l_su2_hit_n.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "left_su2_hit_n", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su2_matrix*, i32, i32, %struct.su3_matrix*)* @left_su2_hit_n, variables: !32)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !23, !23, !24}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "su2_matrix", file: !9, line: 20, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 20, size: 512, align: 64, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !10, file: !9, line: 20, baseType: !13, size: 512, align: 64)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, align: 64, elements: !21)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !15, line: 76, baseType: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 73, size: 128, align: 64, elements: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !16, file: !15, line: 74, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !16, file: !15, line: 75, baseType: !19, size: 64, align: 64, offset: 64)
!21 = !{!22, !22}
!22 = !DISubrange(count: 2)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_matrix", file: !9, line: 14, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 14, size: 1152, align: 64, elements: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !26, file: !9, line: 14, baseType: !29, size: 1152, align: 64)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1152, align: 64, elements: !30)
!30 = !{!31, !31}
!31 = !DISubrange(count: 3)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "u", arg: 1, scope: !4, file: !1, line: 10, type: !7)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !4, file: !1, line: 10, type: !23)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "q", arg: 3, scope: !4, file: !1, line: 10, type: !23)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "link", arg: 4, scope: !4, file: !1, line: 10, type: !24)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !4, file: !1, line: 17, type: !23)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 10, column: 33, scope: !4)
!44 = !DILocation(line: 10, column: 39, scope: !4)
!45 = !DILocation(line: 10, column: 45, scope: !4)
!46 = !DILocation(line: 10, column: 59, scope: !4)
!47 = !DILocation(line: 17, column: 16, scope: !4)
!48 = !DILocation(line: 20, column: 34, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 19, column: 3)
!50 = distinct !DILexicalBlock(scope: !4, file: !1, line: 19, column: 3)
!51 = !DILocation(line: 20, column: 52, scope: !49)
!52 = !DILocation(line: 19, column: 3, scope: !50)
!53 = !DILocation(line: 20, column: 5, scope: !49)
!54 = !DILocation(line: 22, column: 1, scope: !4)
