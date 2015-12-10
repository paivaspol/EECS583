; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_mat_nn.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_su3_nn(%struct.su3_matrix* nocapture readonly %a, %struct.su3_matrix* nocapture readonly %b, %struct.su3_matrix* nocapture %c) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %a, i64 0, metadata !24, metadata !37), !dbg !38
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %b, i64 0, metadata !25, metadata !37), !dbg !39
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %c, i64 0, metadata !26, metadata !37), !dbg !40
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !31, metadata !37), !dbg !41
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !32, metadata !37), !dbg !42
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !27, metadata !37), !dbg !43
  br label %.preheader1, !dbg !44

.preheader1:                                      ; preds = %24, %0
  %indvars.iv11 = phi i64 [ 0, %0 ], [ %indvars.iv.next12, %24 ]
  br label %.preheader, !dbg !46

.preheader:                                       ; preds = %21, %.preheader1
  %indvars.iv8 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next9, %21 ]
  br label %1, !dbg !49

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = phi <2 x double> [ zeroinitializer, %.preheader ], [ %20, %1 ]
  %3 = getelementptr inbounds %struct.su3_matrix* %a, i64 0, i32 0, i64 %indvars.iv11, i64 %indvars.iv, i32 0, !dbg !53
  %4 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv8, i32 0, !dbg !53
  %5 = load double* %4, align 8, !dbg !53, !tbaa !57
  %6 = bitcast double* %3 to <2 x double>*, !dbg !53
  %7 = load <2 x double>* %6, align 8, !dbg !53, !tbaa !62
  %8 = getelementptr inbounds %struct.su3_matrix* %b, i64 0, i32 0, i64 %indvars.iv, i64 %indvars.iv8, i32 1, !dbg !53
  %9 = load double* %8, align 8, !dbg !53, !tbaa !63
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !32, metadata !64), !dbg !42
  %10 = shufflevector <2 x double> %7, <2 x double> undef, <2 x i32> <i32 1, i32 0>, !dbg !53
  %11 = insertelement <2 x double> undef, double %9, i32 0, !dbg !53
  %12 = insertelement <2 x double> %11, double %9, i32 1, !dbg !53
  %13 = fmul <2 x double> %10, %12, !dbg !53
  %14 = insertelement <2 x double> undef, double %5, i32 0, !dbg !53
  %15 = insertelement <2 x double> %14, double %5, i32 1, !dbg !53
  %16 = fmul <2 x double> %7, %15, !dbg !53
  %17 = fsub <2 x double> %16, %13, !dbg !53
  %18 = fadd <2 x double> %16, %13, !dbg !53
  %19 = shufflevector <2 x double> %17, <2 x double> %18, <2 x i32> <i32 0, i32 3>, !dbg !53
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !32, metadata !65), !dbg !42
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !31, metadata !64), !dbg !41
  %20 = fadd <2 x double> %2, %19, !dbg !66
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !31, metadata !65), !dbg !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !49
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !49
  br i1 %exitcond, label %21, label %1, !dbg !49

; <label>:21                                      ; preds = %1
  %22 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv11, i64 %indvars.iv8, i32 0, !dbg !68
  %23 = bitcast double* %22 to <2 x double>*, !dbg !68
  store <2 x double> %20, <2 x double>* %23, align 8, !dbg !68
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !46
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3, !dbg !46
  br i1 %exitcond10, label %24, label %.preheader, !dbg !46

; <label>:24                                      ; preds = %21
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !44
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 3, !dbg !44
  br i1 %exitcond13, label %25, label %.preheader1, !dbg !44

; <label>:25                                      ; preds = %24
  ret void, !dbg !69
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/m_mat_nn.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "mult_su3_nn", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*)* @mult_su3_nn, variables: !23)
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
!23 = !{!24, !25, !26, !27, !29, !30, !31, !32}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 12, type: !7)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 12, type: !7)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !4, file: !1, line: 12, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 13, type: !28)
!28 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 13, type: !28)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !4, file: !1, line: 13, type: !28)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !4, file: !1, line: 14, type: !14)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !4, file: !1, line: 14, type: !14)
!33 = !{i32 2, !"Dwarf Version", i32 2}
!34 = !{i32 2, !"Debug Info Version", i32 700000003}
!35 = !{i32 1, !"PIC Level", i32 2}
!36 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!37 = !DIExpression()
!38 = !DILocation(line: 12, column: 31, scope: !4)
!39 = !DILocation(line: 12, column: 46, scope: !4)
!40 = !DILocation(line: 12, column: 61, scope: !4)
!41 = !DILocation(line: 14, column: 18, scope: !4)
!42 = !DILocation(line: 14, column: 20, scope: !4)
!43 = !DILocation(line: 13, column: 14, scope: !4)
!44 = !DILocation(line: 15, column: 5, scope: !45)
!45 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!46 = !DILocation(line: 15, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 15, column: 21)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 5)
!49 = !DILocation(line: 17, column: 2, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 17, column: 2)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 15, column: 37)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 21)
!53 = !DILocation(line: 18, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 18, column: 6)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 17, column: 18)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 17, column: 2)
!57 = !{!58, !59, i64 0}
!58 = !{!"", !59, i64 0, !59, i64 8}
!59 = !{!"double", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!59, !59, i64 0}
!63 = !{!58, !59, i64 8}
!64 = !DIExpression(DW_OP_bit_piece, 0, 64)
!65 = !DIExpression(DW_OP_bit_piece, 64, 64)
!66 = !DILocation(line: 19, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !1, line: 19, column: 6)
!68 = !DILocation(line: 21, column: 15, scope: !51)
!69 = !DILocation(line: 23, column: 1, scope: !4)
