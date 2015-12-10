; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/cmplx.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @cmplx(double %x, double %y) #0 {
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !15, metadata !22), !dbg !23
  tail call void @llvm.dbg.value(metadata double %y, i64 0, metadata !16, metadata !22), !dbg !24
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !17, metadata !22), !dbg !25
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !17, metadata !26), !dbg !25
  tail call void @llvm.dbg.value(metadata double %y, i64 0, metadata !17, metadata !27), !dbg !25
  %1 = insertvalue { double, double } undef, double %x, 0, !dbg !28
  %2 = insertvalue { double, double } %1, double %y, 1, !dbg !28
  ret { double, double } %2, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/cmplx.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "cmplx", scope: !1, file: !1, line: 8, type: !5, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @cmplx, variables: !14)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !12, !12}
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !8, line: 76, baseType: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 73, size: 128, align: 64, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !9, file: !8, line: 74, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !9, file: !8, line: 75, baseType: !12, size: 64, align: 64, offset: 64)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !4, file: !1, line: 8, type: !12)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !4, file: !1, line: 8, type: !12)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !4, file: !1, line: 9, type: !7)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 700000003}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!22 = !DIExpression()
!23 = !DILocation(line: 8, column: 23, scope: !4)
!24 = !DILocation(line: 8, column: 33, scope: !4)
!25 = !DILocation(line: 9, column: 13, scope: !4)
!26 = !DIExpression(DW_OP_bit_piece, 0, 64)
!27 = !DIExpression(DW_OP_bit_piece, 64, 64)
!28 = !DILocation(line: 11, column: 5, scope: !4)
