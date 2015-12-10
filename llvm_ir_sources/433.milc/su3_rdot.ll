; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3_rdot.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_vector = type { [3 x %struct.complex] }
%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @su3_rdot(%struct.su3_vector* nocapture readonly %a, %struct.su3_vector* nocapture readonly %b) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %a, i64 0, metadata !24, metadata !32), !dbg !33
  tail call void @llvm.dbg.value(metadata %struct.su3_vector* %b, i64 0, metadata !25, metadata !32), !dbg !34
  %1 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 0, !dbg !35
  %2 = load double* %1, align 8, !dbg !35, !tbaa !36
  %3 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 0, !dbg !41
  %4 = load double* %3, align 8, !dbg !41, !tbaa !36
  %5 = fmul double %2, %4, !dbg !42
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !27, metadata !32), !dbg !43
  %6 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 0, i32 1, !dbg !44
  %7 = load double* %6, align 8, !dbg !44, !tbaa !45
  %8 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 0, i32 1, !dbg !46
  %9 = load double* %8, align 8, !dbg !46, !tbaa !45
  %10 = fmul double %7, %9, !dbg !47
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !26, metadata !32), !dbg !48
  %11 = fadd double %5, %10, !dbg !49
  tail call void @llvm.dbg.value(metadata double %11, i64 0, metadata !27, metadata !32), !dbg !43
  %12 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 0, !dbg !50
  %13 = load double* %12, align 8, !dbg !50, !tbaa !36
  %14 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 0, !dbg !51
  %15 = load double* %14, align 8, !dbg !51, !tbaa !36
  %16 = fmul double %13, %15, !dbg !52
  tail call void @llvm.dbg.value(metadata double %16, i64 0, metadata !26, metadata !32), !dbg !48
  %17 = fadd double %11, %16, !dbg !53
  tail call void @llvm.dbg.value(metadata double %17, i64 0, metadata !27, metadata !32), !dbg !43
  %18 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 1, i32 1, !dbg !54
  %19 = load double* %18, align 8, !dbg !54, !tbaa !45
  %20 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 1, i32 1, !dbg !55
  %21 = load double* %20, align 8, !dbg !55, !tbaa !45
  %22 = fmul double %19, %21, !dbg !56
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !26, metadata !32), !dbg !48
  %23 = fadd double %17, %22, !dbg !57
  tail call void @llvm.dbg.value(metadata double %23, i64 0, metadata !27, metadata !32), !dbg !43
  %24 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 0, !dbg !58
  %25 = load double* %24, align 8, !dbg !58, !tbaa !36
  %26 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 0, !dbg !59
  %27 = load double* %26, align 8, !dbg !59, !tbaa !36
  %28 = fmul double %25, %27, !dbg !60
  tail call void @llvm.dbg.value(metadata double %28, i64 0, metadata !26, metadata !32), !dbg !48
  %29 = fadd double %23, %28, !dbg !61
  tail call void @llvm.dbg.value(metadata double %29, i64 0, metadata !27, metadata !32), !dbg !43
  %30 = getelementptr inbounds %struct.su3_vector* %a, i64 0, i32 0, i64 2, i32 1, !dbg !62
  %31 = load double* %30, align 8, !dbg !62, !tbaa !45
  %32 = getelementptr inbounds %struct.su3_vector* %b, i64 0, i32 0, i64 2, i32 1, !dbg !63
  %33 = load double* %32, align 8, !dbg !63, !tbaa !45
  %34 = fmul double %31, %33, !dbg !64
  tail call void @llvm.dbg.value(metadata double %34, i64 0, metadata !26, metadata !32), !dbg !48
  %35 = fadd double %29, %34, !dbg !65
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !27, metadata !32), !dbg !43
  ret double %35, !dbg !66
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3_rdot.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "su3_rdot", scope: !1, file: !1, line: 10, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct.su3_vector*, %struct.su3_vector*)* @su3_rdot, variables: !23)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !8}
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_vector", file: !10, line: 15, baseType: !11)
!10 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 15, size: 384, align: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !11, file: !10, line: 15, baseType: !14, size: 384, align: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 384, align: 64, elements: !21)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !16, line: 76, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 73, size: 128, align: 64, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !17, file: !16, line: 74, baseType: !7, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !17, file: !16, line: 75, baseType: !7, size: 64, align: 64, offset: 64)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !4, file: !1, line: 10, type: !8)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !4, file: !1, line: 10, type: !8)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp1", scope: !4, file: !1, line: 13, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp2", scope: !4, file: !1, line: 13, type: !7)
!28 = !{i32 2, !"Dwarf Version", i32 2}
!29 = !{i32 2, !"Debug Info Version", i32 700000003}
!30 = !{i32 1, !"PIC Level", i32 2}
!31 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!32 = !DIExpression()
!33 = !DILocation(line: 10, column: 30, scope: !4)
!34 = !DILocation(line: 10, column: 45, scope: !4)
!35 = !DILocation(line: 14, column: 21, scope: !4)
!36 = !{!37, !38, i64 0}
!37 = !{!"", !38, i64 0, !38, i64 8}
!38 = !{!"double", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 14, column: 36, scope: !4)
!42 = !DILocation(line: 14, column: 26, scope: !4)
!43 = !DILocation(line: 13, column: 23, scope: !4)
!44 = !DILocation(line: 15, column: 21, scope: !4)
!45 = !{!37, !38, i64 8}
!46 = !DILocation(line: 15, column: 36, scope: !4)
!47 = !DILocation(line: 15, column: 26, scope: !4)
!48 = !DILocation(line: 13, column: 17, scope: !4)
!49 = !DILocation(line: 15, column: 48, scope: !4)
!50 = !DILocation(line: 16, column: 21, scope: !4)
!51 = !DILocation(line: 16, column: 36, scope: !4)
!52 = !DILocation(line: 16, column: 26, scope: !4)
!53 = !DILocation(line: 16, column: 48, scope: !4)
!54 = !DILocation(line: 17, column: 21, scope: !4)
!55 = !DILocation(line: 17, column: 36, scope: !4)
!56 = !DILocation(line: 17, column: 26, scope: !4)
!57 = !DILocation(line: 17, column: 48, scope: !4)
!58 = !DILocation(line: 18, column: 21, scope: !4)
!59 = !DILocation(line: 18, column: 36, scope: !4)
!60 = !DILocation(line: 18, column: 26, scope: !4)
!61 = !DILocation(line: 18, column: 48, scope: !4)
!62 = !DILocation(line: 19, column: 21, scope: !4)
!63 = !DILocation(line: 19, column: 36, scope: !4)
!64 = !DILocation(line: 19, column: 26, scope: !4)
!65 = !DILocation(line: 19, column: 48, scope: !4)
!66 = !DILocation(line: 20, column: 5, scope: !4)
