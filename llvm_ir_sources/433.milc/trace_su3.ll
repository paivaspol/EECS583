; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/trace_su3.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly ssp uwtable
define { double, double } @trace_su3(%struct.su3_matrix* nocapture readonly %a) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !31), !dbg !32
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !25, metadata !31), !dbg !33
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !26, metadata !31), !dbg !34
  %1 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !35
  %2 = load double* %1, align 8, !dbg !35, !tbaa !37
  %3 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !35
  %4 = load double* %3, align 8, !dbg !35, !tbaa !37
  %5 = fadd double %2, %4, !dbg !35
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !25, metadata !42), !dbg !33
  %6 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !35
  %7 = load double* %6, align 8, !dbg !35, !tbaa !43
  %8 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !35
  %9 = load double* %8, align 8, !dbg !35, !tbaa !43
  %10 = fadd double %7, %9, !dbg !35
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !25, metadata !44), !dbg !33
  %11 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 0, !dbg !45
  %12 = load double* %11, align 8, !dbg !45, !tbaa !37
  %13 = fadd double %5, %12, !dbg !45
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !26, metadata !42), !dbg !34
  %14 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !45
  %15 = load double* %14, align 8, !dbg !45, !tbaa !43
  %16 = fadd double %10, %15, !dbg !45
  tail call void @llvm.dbg.value(metadata double %16, i64 0, metadata !26, metadata !44), !dbg !34
  %17 = insertvalue { double, double } undef, double %13, 0, !dbg !47
  %18 = insertvalue { double, double } %17, double %16, 1, !dbg !47
  ret { double, double } %18, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/trace_su3.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "trace_su3", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (%struct.su3_matrix*)* @trace_su3, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !14}
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !8, line: 76, baseType: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 73, size: 128, align: 64, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !9, file: !8, line: 74, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !9, file: !8, line: 75, baseType: !12, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_matrix", file: !16, line: 14, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 14, size: 1152, align: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !17, file: !16, line: 14, baseType: !20, size: 1152, align: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1152, align: 64, elements: !21)
!21 = !{!22, !22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 11, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !4, file: !1, line: 12, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t2", scope: !4, file: !1, line: 12, type: !7)
!27 = !{i32 2, !"Dwarf Version", i32 2}
!28 = !{i32 2, !"Debug Info Version", i32 700000003}
!29 = !{i32 1, !"PIC Level", i32 2}
!30 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!31 = !DIExpression()
!32 = !DILocation(line: 11, column: 32, scope: !4)
!33 = !DILocation(line: 12, column: 18, scope: !4)
!34 = !DILocation(line: 12, column: 21, scope: !4)
!35 = !DILocation(line: 13, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !4, file: !1, line: 13, column: 5)
!37 = !{!38, !39, i64 0}
!38 = !{!"", !39, i64 0, !39, i64 8}
!39 = !{!"double", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DIExpression(DW_OP_bit_piece, 0, 64)
!43 = !{!38, !39, i64 8}
!44 = !DIExpression(DW_OP_bit_piece, 64, 64)
!45 = !DILocation(line: 14, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !4, file: !1, line: 14, column: 5)
!47 = !DILocation(line: 15, column: 5, scope: !4)
