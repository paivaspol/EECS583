; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3_dot.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly ssp uwtable
define { double, double } @su3_dot(%struct.su3_vector* nocapture readonly %a, %struct.su3_vector* nocapture readonly %b) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %a, i64 0, metadata !24, metadata !32), !dbg !33
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b, i64 0, metadata !25, metadata !32), !dbg !34
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !26, metadata !32), !dbg !35
  tail call void @llvm.dbg.declare(metadata %struct.complex* undef, metadata !27, metadata !32), !dbg !36
  %1 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 0, !dbg !37
  %2 = load double* %1, align 8, !dbg !37, !tbaa !39
  %3 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 0, !dbg !37
  %4 = load double* %3, align 8, !dbg !37, !tbaa !39
  %5 = fmul double %2, %4, !dbg !37
  %6 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 1, !dbg !37
  %7 = load double* %6, align 8, !dbg !37, !tbaa !44
  %8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 1, !dbg !37
  %9 = load double* %8, align 8, !dbg !37, !tbaa !44
  %10 = fmul double %7, %9, !dbg !37
  %11 = fadd double %5, %10, !dbg !37
  tail call void @llvm.dbg.value(metadata double %11, i64 0, metadata !26, metadata !45), !dbg !35
  %12 = fmul double %2, %9, !dbg !37
  %13 = fmul double %4, %7, !dbg !37
  %14 = fsub double %12, %13, !dbg !37
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !26, metadata !46), !dbg !35
  %15 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 0, !dbg !47
  %16 = load double* %15, align 8, !dbg !47, !tbaa !39
  %17 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 0, !dbg !47
  %18 = load double* %17, align 8, !dbg !47, !tbaa !39
  %19 = fmul double %16, %18, !dbg !47
  %20 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 1, !dbg !47
  %21 = load double* %20, align 8, !dbg !47, !tbaa !44
  %22 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 1, !dbg !47
  %23 = load double* %22, align 8, !dbg !47, !tbaa !44
  %24 = fmul double %21, %23, !dbg !47
  %25 = fadd double %19, %24, !dbg !47
  tail call void @llvm.dbg.value(metadata double %25, i64 0, metadata !27, metadata !45), !dbg !36
  %26 = fmul double %16, %23, !dbg !47
  %27 = fmul double %18, %21, !dbg !47
  %28 = fsub double %26, %27, !dbg !47
  tail call void @llvm.dbg.value(metadata double %28, i64 0, metadata !27, metadata !46), !dbg !36
  %29 = fadd double %11, %25, !dbg !49
  tail call void @llvm.dbg.value(metadata double %29, i64 0, metadata !26, metadata !45), !dbg !35
  %30 = fadd double %14, %28, !dbg !49
  tail call void @llvm.dbg.value(metadata double %30, i64 0, metadata !26, metadata !46), !dbg !35
  %31 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 0, !dbg !51
  %32 = load double* %31, align 8, !dbg !51, !tbaa !39
  %33 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 0, !dbg !51
  %34 = load double* %33, align 8, !dbg !51, !tbaa !39
  %35 = fmul double %32, %34, !dbg !51
  %36 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 1, !dbg !51
  %37 = load double* %36, align 8, !dbg !51, !tbaa !44
  %38 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 1, !dbg !51
  %39 = load double* %38, align 8, !dbg !51, !tbaa !44
  %40 = fmul double %37, %39, !dbg !51
  %41 = fadd double %35, %40, !dbg !51
  tail call void @llvm.dbg.value(metadata double %41, i64 0, metadata !27, metadata !45), !dbg !36
  %42 = fmul double %32, %39, !dbg !51
  %43 = fmul double %34, %37, !dbg !51
  %44 = fsub double %42, %43, !dbg !51
  tail call void @llvm.dbg.value(metadata double %44, i64 0, metadata !27, metadata !46), !dbg !36
  %45 = fadd double %29, %41, !dbg !53
  tail call void @llvm.dbg.value(metadata double %45, i64 0, metadata !26, metadata !45), !dbg !35
  %46 = fadd double %30, %44, !dbg !53
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !26, metadata !46), !dbg !35
  %47 = insertvalue { double, double } undef, double %45, 0, !dbg !55
  %48 = insertvalue { double, double } %47, double %46, 1, !dbg !55
  ret { double, double } %48, !dbg !55
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3_dot.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "su3_dot", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (%struct.su3_vector*, %struct.su3_vector*)* @su3_dot, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !14, !14}
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !8, line: 76, baseType: !9)
!8 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 73, size: 128, align: 64, elements: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !9, file: !8, line: 74, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !9, file: !8, line: 75, baseType: !12, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !16, line: 15, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 15, size: 384, align: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !17, file: !16, line: 15, baseType: !20, size: 384, align: 64)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, align: 64, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 10, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 10, type: !14)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp1", scope: !4, file: !1, line: 13, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp2", scope: !4, file: !1, line: 13, type: !7)
!28 = !{i32 2, !"Dwarf Version", i32 2}
!29 = !{i32 2, !"Debug Info Version", i32 700000003}
!30 = !{i32 1, !"PIC Level", i32 2}
!31 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!32 = !DIExpression()
!33 = !DILocation(line: 10, column: 30, scope: !4)
!34 = !DILocation(line: 10, column: 45, scope: !4)
!35 = !DILocation(line: 13, column: 9, scope: !4)
!36 = !DILocation(line: 13, column: 15, scope: !4)
!37 = !DILocation(line: 14, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !4, file: !1, line: 14, column: 5)
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 8}
!41 = !{!"double", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!40, !41, i64 8}
!45 = !DIExpression(DW_OP_bit_piece, 0, 64)
!46 = !DIExpression(DW_OP_bit_piece, 64, 64)
!47 = !DILocation(line: 15, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !4, file: !1, line: 15, column: 5)
!49 = !DILocation(line: 16, column: 5, scope: !50)
!50 = distinct !DILexicalBlock(scope: !4, file: !1, line: 16, column: 5)
!51 = !DILocation(line: 17, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !4, file: !1, line: 17, column: 5)
!53 = !DILocation(line: 18, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !4, file: !1, line: 18, column: 5)
!55 = !DILocation(line: 19, column: 5, scope: !4)
