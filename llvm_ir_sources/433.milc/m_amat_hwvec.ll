; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amat_hwvec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.half_wilson_vector = type { [2 x %struct.su3_vector] }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_adj_su3_mat_hwvec(%struct.su3_matrix* %mat, %struct.half_wilson_vector* %src, %struct.half_wilson_vector* %dest) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %mat, i64 0, metadata !38, metadata !45), !dbg !46
  tail call void @llvm.dbg.value(metadata %struct.half_wilson_vector* %src, i64 0, metadata !39, metadata !45), !dbg !47
  tail call void @llvm.dbg.value(metadata %struct.half_wilson_vector* %dest, i64 0, metadata !40, metadata !45), !dbg !48
  %1 = getelementptr inbounds %struct.half_wilson_vector* %src, i64 0, i32 0, i64 0, !dbg !49
  %2 = getelementptr inbounds %struct.half_wilson_vector* %dest, i64 0, i32 0, i64 0, !dbg !50
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %1, %struct.su3_vector* %2) #3, !dbg !51
  %3 = getelementptr inbounds %struct.half_wilson_vector* %src, i64 0, i32 0, i64 1, !dbg !52
  %4 = getelementptr inbounds %struct.half_wilson_vector* %dest, i64 0, i32 0, i64 1, !dbg !53
  tail call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %mat, %struct.su3_vector* %3, %struct.su3_vector* %4) #3, !dbg !54
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
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amat_hwvec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_adj_su3_mat_hwvec", scope: !1, file: !1, line: 13, type: !5, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.half_wilson_vector*, %struct.half_wilson_vector*)* @mult_adj_su3_mat_hwvec, variables: !37)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !23, !23}
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
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "half_wilson_vector", file: !9, line: 47, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 47, size: 768, align: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !25, file: !9, line: 47, baseType: !28, size: 768, align: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 768, align: 64, elements: !35)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !9, line: 15, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 15, size: 384, align: 64, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !30, file: !9, line: 15, baseType: !33, size: 384, align: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, align: 64, elements: !34)
!34 = !{!22}
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat", arg: 1, scope: !4, file: !1, line: 13, type: !7)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 2, scope: !4, file: !1, line: 14, type: !23)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 3, scope: !4, file: !1, line: 14, type: !23)
!41 = !{i32 2, !"Dwarf Version", i32 2}
!42 = !{i32 2, !"Debug Info Version", i32 700000003}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!45 = !DIExpression()
!46 = !DILocation(line: 13, column: 42, scope: !4)
!47 = !DILocation(line: 14, column: 28, scope: !4)
!48 = !DILocation(line: 14, column: 53, scope: !4)
!49 = !DILocation(line: 15, column: 33, scope: !4)
!50 = !DILocation(line: 15, column: 47, scope: !4)
!51 = !DILocation(line: 15, column: 5, scope: !4)
!52 = !DILocation(line: 16, column: 33, scope: !4)
!53 = !DILocation(line: 16, column: 47, scope: !4)
!54 = !DILocation(line: 16, column: 5, scope: !4)
!55 = !DILocation(line: 17, column: 1, scope: !4)
