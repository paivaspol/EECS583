; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/addmat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @add_su3_matrix(%struct.su3_matrix* nocapture readonly %a, %struct.su3_matrix* nocapture readonly %b, %struct.su3_matrix* nocapture %c) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !34), !dbg !35
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %b, i64 0, metadata !25, metadata !34), !dbg !36
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %c, i64 0, metadata !26, metadata !34), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !34), !dbg !38
  br label %.preheader, !dbg !39

.preheader:                                       ; preds = %11, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %11 ]
  br label %1, !dbg !41

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !44
  %3 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !44
  %4 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv3, i64 %indvars.iv, i32 0, !dbg !44
  %5 = bitcast double* %2 to <2 x double>*, !dbg !44
  %6 = load <2 x double>* %5, align 8, !dbg !44, !tbaa !48
  %7 = bitcast double* %3 to <2 x double>*, !dbg !44
  %8 = load <2 x double>* %7, align 8, !dbg !44, !tbaa !48
  %9 = fadd <2 x double> %6, %8, !dbg !44
  %10 = bitcast double* %4 to <2 x double>*, !dbg !44
  store <2 x double> %9, <2 x double>* %10, align 8, !dbg !44, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !41
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !41
  br i1 %exitcond, label %11, label %1, !dbg !41

; <label>:11                                      ; preds = %1
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !39
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3, !dbg !39
  br i1 %exitcond5, label %12, label %.preheader, !dbg !39

; <label>:12                                      ; preds = %11
  ret void, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/addmat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "add_su3_matrix", scope: !1, file: !1, line: 9, type: !5, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*)* @add_su3_matrix, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7}
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
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 9, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 9, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !4, file: !1, line: 9, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 10, type: !28)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 10, type: !28)
!30 = !{i32 2, !"Dwarf Version", i32 2}
!31 = !{i32 2, !"Debug Info Version", i32 700000003}
!32 = !{i32 1, !"PIC Level", i32 2}
!33 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!34 = !DIExpression()
!35 = !DILocation(line: 9, column: 34, scope: !4)
!36 = !DILocation(line: 9, column: 49, scope: !4)
!37 = !DILocation(line: 9, column: 64, scope: !4)
!38 = !DILocation(line: 10, column: 14, scope: !4)
!39 = !DILocation(line: 11, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !4, file: !1, line: 11, column: 5)
!41 = !DILocation(line: 11, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 11, column: 21)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 5)
!44 = !DILocation(line: 12, column: 2, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 12, column: 2)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 37)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 21)
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 14, column: 1, scope: !4)
