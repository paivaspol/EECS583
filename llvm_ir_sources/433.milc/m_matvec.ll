; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_matvec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_su3_mat_vec(%struct.su3_matrix* nocapture readonly %a, %struct.su3_vector* nocapture readonly %b, %struct.su3_vector* nocapture %c) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !31, metadata !43), !dbg !44
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b, i64 0, metadata !32, metadata !43), !dbg !45
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %c, i64 0, metadata !33, metadata !43), !dbg !46
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !37, metadata !43), !dbg !47
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !38, metadata !43), !dbg !48
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !43), !dbg !49
  br label %.preheader, !dbg !50

.preheader:                                       ; preds = %21, %0
  %indvars.iv6 = phi i64 [ 0, %0 ], [ %indvars.iv.next7, %21 ]
  br label %1, !dbg !52

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = phi <2 x double> [ zeroinitializer, %.preheader ], [ %20, %1 ]
  %3 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv6, i64 %indvars.iv, i32 0, !dbg !56
  %4 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !56
  %5 = load double* %4, align 8, !dbg !56, !tbaa !60
  %6 = bitcast double* %3 to <2 x double>*, !dbg !56
  %7 = load <2 x double>* %6, align 8, !dbg !56, !tbaa !65
  %8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !56
  %9 = load double* %8, align 8, !dbg !56, !tbaa !66
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !38, metadata !67), !dbg !48
  %10 = shufflevector <2 x double> %7, <2 x double> undef, <2 x i32> <i32 1, i32 0>, !dbg !56
  %11 = insertelement <2 x double> undef, double %9, i32 0, !dbg !56
  %12 = insertelement <2 x double> %11, double %9, i32 1, !dbg !56
  %13 = fmul <2 x double> %10, %12, !dbg !56
  %14 = insertelement <2 x double> undef, double %5, i32 0, !dbg !56
  %15 = insertelement <2 x double> %14, double %5, i32 1, !dbg !56
  %16 = fmul <2 x double> %7, %15, !dbg !56
  %17 = fsub <2 x double> %16, %13, !dbg !56
  %18 = fadd <2 x double> %16, %13, !dbg !56
  %19 = shufflevector <2 x double> %17, <2 x double> %18, <2 x i32> <i32 0, i32 3>, !dbg !56
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !38, metadata !68), !dbg !48
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !37, metadata !67), !dbg !47
  %20 = fadd <2 x double> %2, %19, !dbg !69
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !37, metadata !68), !dbg !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !52
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !52
  br i1 %exitcond, label %21, label %1, !dbg !52

; <label>:21                                      ; preds = %1
  %22 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv6, i32 0, !dbg !71
  %23 = bitcast double* %22 to <2 x double>*, !dbg !71
  store <2 x double> %20, <2 x double>* %23, align 8, !dbg !71
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !50
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 3, !dbg !50
  br i1 %exitcond8, label %24, label %.preheader, !dbg !50

; <label>:24                                      ; preds = %21
  ret void, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_matvec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_su3_mat_vec", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*)* @mult_su3_mat_vec, variables: !30)
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
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !9, line: 15, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 15, size: 384, align: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !25, file: !9, line: 15, baseType: !28, size: 384, align: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, align: 64, elements: !29)
!29 = !{!22}
!30 = !{!31, !32, !33, !34, !36, !37, !38}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 12, type: !7)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 12, type: !23)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !4, file: !1, line: 12, type: !23)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 13, type: !35)
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 13, type: !35)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !4, file: !1, line: 14, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !4, file: !1, line: 14, type: !14)
!39 = !{i32 2, !"Dwarf Version", i32 2}
!40 = !{i32 2, !"Debug Info Version", i32 700000003}
!41 = !{i32 1, !"PIC Level", i32 2}
!42 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!43 = !DIExpression()
!44 = !DILocation(line: 12, column: 36, scope: !4)
!45 = !DILocation(line: 12, column: 51, scope: !4)
!46 = !DILocation(line: 12, column: 66, scope: !4)
!47 = !DILocation(line: 14, column: 18, scope: !4)
!48 = !DILocation(line: 14, column: 20, scope: !4)
!49 = !DILocation(line: 13, column: 14, scope: !4)
!50 = !DILocation(line: 15, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!52 = !DILocation(line: 17, column: 2, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 17, column: 2)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 15, column: 21)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 15, column: 5)
!56 = !DILocation(line: 18, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 18, column: 6)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 18)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 2)
!60 = !{!61, !62, i64 0}
!61 = !{!"", !62, i64 0, !62, i64 8}
!62 = !{!"double", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!62, !62, i64 0}
!66 = !{!61, !62, i64 8}
!67 = !DIExpression(DW_OP_bit_piece, 0, 64)
!68 = !DIExpression(DW_OP_bit_piece, 64, 64)
!69 = !DILocation(line: 19, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 6)
!71 = !DILocation(line: 21, column: 12, scope: !54)
!72 = !DILocation(line: 23, column: 1, scope: !4)
