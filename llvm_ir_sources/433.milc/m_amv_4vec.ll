; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amv_4vec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_adj_su3_mat_4vec(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest0, %struct.su3_vector* %dest1, %struct.su3_vector* %dest2, %struct.su3_vector* %dest3) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %mat, i64 0, metadata !31, metadata !41), !dbg !42
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %src, i64 0, metadata !32, metadata !41), !dbg !43
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %dest0, i64 0, metadata !33, metadata !41), !dbg !44
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %dest1, i64 0, metadata !34, metadata !41), !dbg !45
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %dest2, i64 0, metadata !35, metadata !41), !dbg !46
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %dest3, i64 0, metadata !36, metadata !41), !dbg !47
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %src, %struct.su3_vector* %dest0) #3, !dbg !48
  %1 = getelementptr inbounds %struct.su3_matrix* %mat, i64 1, !dbg !49
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %1, %struct.su3_vector* %src, %struct.su3_vector* %dest1) #3, !dbg !50
  %2 = getelementptr inbounds %struct.su3_matrix* %mat, i64 2, !dbg !51
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %2, %struct.su3_vector* %src, %struct.su3_vector* %dest2) #3, !dbg !52
  %3 = getelementptr inbounds %struct.su3_matrix* %mat, i64 3, !dbg !53
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %3, %struct.su3_vector* %src, %struct.su3_vector* %dest3) #3, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: optsize
declare void @mult_adj_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amv_4vec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_adj_su3_mat_4vec", scope: !1, file: !1, line: 14, type: !5, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*, %struct.su3_vector*)* @mult_adj_su3_mat_4vec, variables: !30)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !23, !23, !23, !23, !23}
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
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !9, line: 15, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 15, size: 384, align: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !25, file: !9, line: 15, baseType: !28, size: 384, align: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, align: 64, elements: !29)
!29 = !{!22}
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat", arg: 1, scope: !4, file: !1, line: 14, type: !7)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 2, scope: !4, file: !1, line: 14, type: !23)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest0", arg: 3, scope: !4, file: !1, line: 15, type: !23)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest1", arg: 4, scope: !4, file: !1, line: 15, type: !23)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest2", arg: 5, scope: !4, file: !1, line: 16, type: !23)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest3", arg: 6, scope: !4, file: !1, line: 16, type: !23)
!37 = !{i32 2, !"Dwarf Version", i32 2}
!38 = !{i32 2, !"Debug Info Version", i32 700000003}
!39 = !{i32 1, !"PIC Level", i32 2}
!40 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!41 = !DIExpression()
!42 = !DILocation(line: 14, column: 41, scope: !4)
!43 = !DILocation(line: 14, column: 58, scope: !4)
!44 = !DILocation(line: 15, column: 20, scope: !4)
!45 = !DILocation(line: 15, column: 39, scope: !4)
!46 = !DILocation(line: 16, column: 20, scope: !4)
!47 = !DILocation(line: 16, column: 39, scope: !4)
!48 = !DILocation(line: 17, column: 5, scope: !4)
!49 = !DILocation(line: 18, column: 30, scope: !4)
!50 = !DILocation(line: 18, column: 5, scope: !4)
!51 = !DILocation(line: 19, column: 30, scope: !4)
!52 = !DILocation(line: 19, column: 5, scope: !4)
!53 = !DILocation(line: 20, column: 30, scope: !4)
!54 = !DILocation(line: 20, column: 5, scope: !4)
!55 = !DILocation(line: 21, column: 1, scope: !4)
