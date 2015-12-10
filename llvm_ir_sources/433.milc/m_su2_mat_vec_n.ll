; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_n.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su2_matrix = type { [2 x [2 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_su2_mat_vec_elem_n(%struct.su2_matrix* nocapture readonly %u, %struct.complex* nocapture %x0, %struct.complex* nocapture %x1) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su2_matrix* %u, i64 0, metadata !25, metadata !36), !dbg !37
  tail call void @llvm.dbg.value(metadata %struct.complex* %x0, i64 0, metadata !26, metadata !36), !dbg !38
  tail call void @llvm.dbg.value(metadata %struct.complex* %x1, i64 0, metadata !27, metadata !36), !dbg !39
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !28, metadata !36), !dbg !40
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !29, metadata !36), !dbg !41
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !30, metadata !36), !dbg !42
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !31, metadata !36), !dbg !43
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !30, metadata !44), !dbg !42
  %1 = bitcast %struct.complex* %x0 to <2 x double>*, !dbg !45
  %2 = load <2 x double>* %1, align 8, !dbg !45
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !30, metadata !46), !dbg !42
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !31, metadata !44), !dbg !43
  %3 = bitcast %struct.complex* %x1 to <2 x double>*, !dbg !47
  %4 = load <2 x double>* %3, align 8, !dbg !47
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !31, metadata !46), !dbg !43
  %5 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !48
  %6 = load double* %5, align 8, !dbg !48, !tbaa !50
  %7 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !48
  %8 = load double* %7, align 8, !dbg !48, !tbaa !55
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !28, metadata !44), !dbg !40
  %9 = insertelement <2 x double> undef, double %6, i32 0, !dbg !48
  %10 = insertelement <2 x double> %9, double %6, i32 1, !dbg !48
  %11 = fmul <2 x double> %2, %10, !dbg !48
  %12 = shufflevector <2 x double> %2, <2 x double> undef, <2 x i32> <i32 1, i32 0>, !dbg !48
  %13 = insertelement <2 x double> undef, double %8, i32 0, !dbg !48
  %14 = insertelement <2 x double> %13, double %8, i32 1, !dbg !48
  %15 = fmul <2 x double> %12, %14, !dbg !48
  %16 = fsub <2 x double> %11, %15, !dbg !48
  %17 = fadd <2 x double> %11, %15, !dbg !48
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <2 x i32> <i32 0, i32 3>, !dbg !48
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !28, metadata !46), !dbg !40
  %19 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !56
  %20 = load double* %19, align 8, !dbg !56, !tbaa !50
  %21 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 0, i64 1, i32 1, !dbg !56
  %22 = load double* %21, align 8, !dbg !56, !tbaa !55
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !29, metadata !44), !dbg !41
  %23 = insertelement <2 x double> undef, double %20, i32 0, !dbg !56
  %24 = insertelement <2 x double> %23, double %20, i32 1, !dbg !56
  %25 = fmul <2 x double> %4, %24, !dbg !56
  %26 = shufflevector <2 x double> %4, <2 x double> undef, <2 x i32> <i32 1, i32 0>, !dbg !56
  %27 = insertelement <2 x double> undef, double %22, i32 0, !dbg !56
  %28 = insertelement <2 x double> %27, double %22, i32 1, !dbg !56
  %29 = fmul <2 x double> %26, %28, !dbg !56
  %30 = fsub <2 x double> %25, %29, !dbg !56
  %31 = fadd <2 x double> %25, %29, !dbg !56
  %32 = shufflevector <2 x double> %30, <2 x double> %31, <2 x i32> <i32 0, i32 3>, !dbg !56
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !29, metadata !46), !dbg !41
  %33 = fadd <2 x double> %18, %32, !dbg !58
  %34 = bitcast %struct.complex* %x0 to <2 x double>*, !dbg !58
  store <2 x double> %33, <2 x double>* %34, align 8, !dbg !58, !tbaa !60
  %35 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !61
  %36 = load double* %35, align 8, !dbg !61, !tbaa !50
  %37 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 0, i32 1, !dbg !61
  %38 = load double* %37, align 8, !dbg !61, !tbaa !55
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !28, metadata !44), !dbg !40
  %39 = insertelement <2 x double> undef, double %36, i32 0, !dbg !61
  %40 = insertelement <2 x double> %39, double %36, i32 1, !dbg !61
  %41 = fmul <2 x double> %40, %2, !dbg !61
  %42 = insertelement <2 x double> undef, double %38, i32 0, !dbg !61
  %43 = insertelement <2 x double> %42, double %38, i32 1, !dbg !61
  %44 = fmul <2 x double> %43, %12, !dbg !61
  %45 = fsub <2 x double> %41, %44, !dbg !61
  %46 = fadd <2 x double> %41, %44, !dbg !61
  %47 = shufflevector <2 x double> %45, <2 x double> %46, <2 x i32> <i32 0, i32 3>, !dbg !61
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !28, metadata !46), !dbg !40
  %48 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !63
  %49 = load double* %48, align 8, !dbg !63, !tbaa !50
  %50 = getelementptr inbounds %struct.su2_matrix* %u, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !63
  %51 = load double* %50, align 8, !dbg !63, !tbaa !55
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !29, metadata !44), !dbg !41
  %52 = insertelement <2 x double> undef, double %49, i32 0, !dbg !63
  %53 = insertelement <2 x double> %52, double %49, i32 1, !dbg !63
  %54 = fmul <2 x double> %53, %4, !dbg !63
  %55 = insertelement <2 x double> undef, double %51, i32 0, !dbg !63
  %56 = insertelement <2 x double> %55, double %51, i32 1, !dbg !63
  %57 = fmul <2 x double> %56, %26, !dbg !63
  %58 = fsub <2 x double> %54, %57, !dbg !63
  %59 = fadd <2 x double> %54, %57, !dbg !63
  %60 = shufflevector <2 x double> %58, <2 x double> %59, <2 x i32> <i32 0, i32 3>, !dbg !63
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !29, metadata !46), !dbg !41
  %61 = fadd <2 x double> %47, %60, !dbg !65
  %62 = bitcast %struct.complex* %x1 to <2 x double>*, !dbg !65
  store <2 x double> %61, <2 x double>* %62, align 8, !dbg !65, !tbaa !60
  ret void, !dbg !67
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_su2_mat_vec_n.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_su2_mat_vec_elem_n", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su2_matrix*, %struct.complex*, %struct.complex*)* @mult_su2_mat_vec_elem_n, variables: !24)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !23, !23}
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
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "u", arg: 1, scope: !4, file: !1, line: 10, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x0", arg: 2, scope: !4, file: !1, line: 10, type: !23)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x1", arg: 3, scope: !4, file: !1, line: 10, type: !23)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z0", scope: !4, file: !1, line: 17, type: !14)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z1", scope: !4, file: !1, line: 17, type: !14)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t0", scope: !4, file: !1, line: 17, type: !14)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t1", scope: !4, file: !1, line: 17, type: !14)
!32 = !{i32 2, !"Dwarf Version", i32 2}
!33 = !{i32 2, !"Debug Info Version", i32 700000003}
!34 = !{i32 1, !"PIC Level", i32 2}
!35 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!36 = !DIExpression()
!37 = !DILocation(line: 10, column: 42, scope: !4)
!38 = !DILocation(line: 10, column: 53, scope: !4)
!39 = !DILocation(line: 10, column: 65, scope: !4)
!40 = !DILocation(line: 17, column: 11, scope: !4)
!41 = !DILocation(line: 17, column: 15, scope: !4)
!42 = !DILocation(line: 17, column: 19, scope: !4)
!43 = !DILocation(line: 17, column: 23, scope: !4)
!44 = !DIExpression(DW_OP_bit_piece, 0, 64)
!45 = !DILocation(line: 19, column: 8, scope: !4)
!46 = !DIExpression(DW_OP_bit_piece, 64, 64)
!47 = !DILocation(line: 19, column: 18, scope: !4)
!48 = !DILocation(line: 21, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !4, file: !1, line: 21, column: 3)
!50 = !{!51, !52, i64 0}
!51 = !{!"", !52, i64 0, !52, i64 8}
!52 = !{!"double", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{!51, !52, i64 8}
!56 = !DILocation(line: 22, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !4, file: !1, line: 22, column: 3)
!58 = !DILocation(line: 23, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !4, file: !1, line: 23, column: 3)
!60 = !{!52, !52, i64 0}
!61 = !DILocation(line: 24, column: 3, scope: !62)
!62 = distinct !DILexicalBlock(scope: !4, file: !1, line: 24, column: 3)
!63 = !DILocation(line: 25, column: 3, scope: !64)
!64 = distinct !DILexicalBlock(scope: !4, file: !1, line: 25, column: 3)
!65 = !DILocation(line: 26, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !4, file: !1, line: 26, column: 3)
!67 = !DILocation(line: 28, column: 1, scope: !4)
