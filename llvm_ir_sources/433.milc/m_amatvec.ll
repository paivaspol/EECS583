; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amatvec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_adj_su3_mat_vec(%struct.su3_matrix* nocapture readonly %a, %struct.su3_vector* nocapture readonly %b, %struct.su3_vector* nocapture %c) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !31, metadata !44), !dbg !45
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b, i64 0, metadata !32, metadata !44), !dbg !46
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %c, i64 0, metadata !33, metadata !44), !dbg !47
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !37, metadata !44), !dbg !48
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !38, metadata !44), !dbg !49
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !39, metadata !44), !dbg !50
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !44), !dbg !51
  br label %.preheader, !dbg !52

.preheader:                                       ; preds = %26, %0
  %indvars.iv6 = phi i64 [ 0, %0 ], [ %indvars.iv.next7, %26 ]
  br label %1, !dbg !54

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = phi <2 x double> [ zeroinitializer, %.preheader ], [ %25, %1 ]
  %3 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv6, i32 0, !dbg !58
  %4 = load double* %3, align 8, !dbg !58, !tbaa !62
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !39, metadata !67), !dbg !50
  %5 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv6, i32 1, !dbg !58
  %6 = load double* %5, align 8, !dbg !58, !tbaa !68
  %7 = fsub double -0.000000e+00, %6, !dbg !58
  tail call void @llvm.dbg.value(metadata double %7, i64 0, metadata !39, metadata !69), !dbg !50
  %8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 0, !dbg !70
  %9 = load double* %8, align 8, !dbg !70, !tbaa !62
  %10 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 %indvars.iv, i32 1, !dbg !70
  %11 = load double* %10, align 8, !dbg !70, !tbaa !68
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !38, metadata !67), !dbg !49
  %12 = insertelement <2 x double> undef, double %7, i32 0, !dbg !70
  %13 = insertelement <2 x double> %12, double %4, i32 1, !dbg !70
  %14 = insertelement <2 x double> undef, double %11, i32 0, !dbg !70
  %15 = insertelement <2 x double> %14, double %11, i32 1, !dbg !70
  %16 = fmul <2 x double> %13, %15, !dbg !70
  %17 = insertelement <2 x double> undef, double %4, i32 0, !dbg !70
  %18 = insertelement <2 x double> %17, double %7, i32 1, !dbg !70
  %19 = insertelement <2 x double> undef, double %9, i32 0, !dbg !70
  %20 = insertelement <2 x double> %19, double %9, i32 1, !dbg !70
  %21 = fmul <2 x double> %18, %20, !dbg !70
  %22 = fsub <2 x double> %21, %16, !dbg !70
  %23 = fadd <2 x double> %21, %16, !dbg !70
  %24 = shufflevector <2 x double> %22, <2 x double> %23, <2 x i32> <i32 0, i32 3>, !dbg !70
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !38, metadata !69), !dbg !49
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !37, metadata !67), !dbg !48
  %25 = fadd <2 x double> %2, %24, !dbg !72
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !37, metadata !69), !dbg !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !54
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !54
  br i1 %exitcond, label %26, label %1, !dbg !54

; <label>:26                                      ; preds = %1
  %27 = getelementptr inbounds %struct.su3_vector* %c, i64 0, i32 0, i64 %indvars.iv6, i32 0, !dbg !74
  %28 = bitcast double* %27 to <2 x double>*, !dbg !74
  store <2 x double> %25, <2 x double>* %28, align 8, !dbg !74
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !52
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 3, !dbg !52
  br i1 %exitcond8, label %29, label %.preheader, !dbg !52

; <label>:29                                      ; preds = %26
  ret void, !dbg !75
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_amatvec.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_adj_su3_mat_vec", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*)* @mult_adj_su3_mat_vec, variables: !30)
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
!30 = !{!31, !32, !33, !34, !36, !37, !38, !39}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 12, type: !7)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 12, type: !23)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !4, file: !1, line: 12, type: !23)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 13, type: !35)
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 13, type: !35)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !4, file: !1, line: 14, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !4, file: !1, line: 14, type: !14)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !4, file: !1, line: 14, type: !14)
!40 = !{i32 2, !"Dwarf Version", i32 2}
!41 = !{i32 2, !"Debug Info Version", i32 700000003}
!42 = !{i32 1, !"PIC Level", i32 2}
!43 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!44 = !DIExpression()
!45 = !DILocation(line: 12, column: 40, scope: !4)
!46 = !DILocation(line: 12, column: 55, scope: !4)
!47 = !DILocation(line: 12, column: 70, scope: !4)
!48 = !DILocation(line: 14, column: 18, scope: !4)
!49 = !DILocation(line: 14, column: 20, scope: !4)
!50 = !DILocation(line: 14, column: 22, scope: !4)
!51 = !DILocation(line: 13, column: 14, scope: !4)
!52 = !DILocation(line: 15, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!54 = !DILocation(line: 17, column: 2, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 17, column: 2)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 15, column: 21)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 15, column: 5)
!58 = !DILocation(line: 18, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 18, column: 6)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 17, column: 18)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 17, column: 2)
!62 = !{!63, !64, i64 0}
!63 = !{!"", !64, i64 0, !64, i64 8}
!64 = !{!"double", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DIExpression(DW_OP_bit_piece, 0, 64)
!68 = !{!63, !64, i64 8}
!69 = !DIExpression(DW_OP_bit_piece, 64, 64)
!70 = !DILocation(line: 19, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !1, line: 19, column: 6)
!72 = !DILocation(line: 20, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !60, file: !1, line: 20, column: 6)
!74 = !DILocation(line: 22, column: 12, scope: !56)
!75 = !DILocation(line: 24, column: 1, scope: !4)
