; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize ssp uwtable
define void @uncompress_anti_hermitian(%struct.anti_hermitmat* nocapture readonly %mat_antihermit, %struct.su3_matrix* nocapture %mat_su3) #0 {
  tail call void @llvm.dbg.value(metadata %struct.anti_hermitmat* %mat_antihermit, i64 0, metadata !35, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %mat_su3, i64 0, metadata !36, metadata !42), !dbg !44
  %1 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3, !dbg !45
  %2 = bitcast double* %1 to i64*, !dbg !45
  %3 = load i64* %2, align 8, !dbg !45, !tbaa !46
  %4 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !52
  %5 = bitcast double* %4 to i64*, !dbg !53
  store i64 %3, i64* %5, align 8, !dbg !53, !tbaa !54
  %6 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !55
  store double 0.000000e+00, double* %6, align 8, !dbg !56, !tbaa !57
  %7 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4, !dbg !58
  %8 = bitcast double* %7 to i64*, !dbg !58
  %9 = load i64* %8, align 8, !dbg !58, !tbaa !59
  %10 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !60
  %11 = bitcast double* %10 to i64*, !dbg !61
  store i64 %9, i64* %11, align 8, !dbg !61, !tbaa !54
  %12 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !62
  store double 0.000000e+00, double* %12, align 8, !dbg !63, !tbaa !57
  %13 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5, !dbg !64
  %14 = bitcast double* %13 to i64*, !dbg !64
  %15 = load i64* %14, align 8, !dbg !64, !tbaa !65
  %16 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !66
  %17 = bitcast double* %16 to i64*, !dbg !67
  store i64 %15, i64* %17, align 8, !dbg !67, !tbaa !54
  %18 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 0, !dbg !68
  store double 0.000000e+00, double* %18, align 8, !dbg !69, !tbaa !57
  %19 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1, !dbg !70
  %20 = bitcast double* %19 to i64*, !dbg !70
  %21 = load i64* %20, align 8, !dbg !70, !tbaa !71
  %22 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 1, !dbg !72
  %23 = bitcast double* %22 to i64*, !dbg !73
  store i64 %21, i64* %23, align 8, !dbg !73, !tbaa !54
  %24 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0, !dbg !74
  %25 = load double* %24, align 8, !dbg !74, !tbaa !75
  tail call void @llvm.dbg.value(metadata double %25, i64 0, metadata !37, metadata !42), !dbg !76
  %26 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !77
  store double %25, double* %26, align 8, !dbg !78, !tbaa !57
  %27 = fsub double -0.000000e+00, %25, !dbg !79
  %28 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !80
  store double %27, double* %28, align 8, !dbg !81, !tbaa !57
  %29 = load i64* %20, align 8, !dbg !82, !tbaa !71
  %30 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 1, !dbg !83
  %31 = bitcast double* %30 to i64*, !dbg !84
  store i64 %29, i64* %31, align 8, !dbg !84, !tbaa !54
  %32 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1, !dbg !85
  %33 = bitcast double* %32 to i64*, !dbg !85
  %34 = load i64* %33, align 8, !dbg !85, !tbaa !86
  %35 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 1, !dbg !87
  %36 = bitcast double* %35 to i64*, !dbg !88
  store i64 %34, i64* %36, align 8, !dbg !88, !tbaa !54
  %37 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0, !dbg !89
  %38 = load double* %37, align 8, !dbg !89, !tbaa !90
  tail call void @llvm.dbg.value(metadata double %38, i64 0, metadata !37, metadata !42), !dbg !76
  %39 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 0, !dbg !91
  store double %38, double* %39, align 8, !dbg !92, !tbaa !57
  %40 = fsub double -0.000000e+00, %38, !dbg !93
  %41 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 0, !dbg !94
  store double %40, double* %41, align 8, !dbg !95, !tbaa !57
  %42 = load i64* %33, align 8, !dbg !96, !tbaa !86
  %43 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 1, !dbg !97
  %44 = bitcast double* %43 to i64*, !dbg !98
  store i64 %42, i64* %44, align 8, !dbg !98, !tbaa !54
  %45 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1, !dbg !99
  %46 = bitcast double* %45 to i64*, !dbg !99
  %47 = load i64* %46, align 8, !dbg !99, !tbaa !100
  %48 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 1, !dbg !101
  %49 = bitcast double* %48 to i64*, !dbg !102
  store i64 %47, i64* %49, align 8, !dbg !102, !tbaa !54
  %50 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0, !dbg !103
  %51 = load double* %50, align 8, !dbg !103, !tbaa !104
  tail call void @llvm.dbg.value(metadata double %51, i64 0, metadata !37, metadata !42), !dbg !76
  %52 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 0, !dbg !105
  store double %51, double* %52, align 8, !dbg !106, !tbaa !57
  %53 = fsub double -0.000000e+00, %51, !dbg !107
  %54 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 0, !dbg !108
  store double %53, double* %54, align 8, !dbg !109, !tbaa !57
  %55 = load i64* %46, align 8, !dbg !110, !tbaa !100
  %56 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 1, !dbg !111
  %57 = bitcast double* %56 to i64*, !dbg !112
  store i64 %55, i64* %57, align 8, !dbg !112, !tbaa !54
  ret void, !dbg !113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "uncompress_anti_hermitian", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.anti_hermitmat*, %struct.su3_matrix*)* @uncompress_anti_hermitian, variables: !34)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !26}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "anti_hermitmat", file: !9, line: 17, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 16, size: 640, align: 64, elements: !11)
!11 = !{!12, !20, !21, !22, !23, !24, !25}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "m01", scope: !10, file: !9, line: 17, baseType: !13, size: 128, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !14, line: 76, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 73, size: 128, align: 64, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !15, file: !14, line: 74, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !15, file: !14, line: 75, baseType: !18, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "m02", scope: !10, file: !9, line: 17, baseType: !13, size: 128, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "m12", scope: !10, file: !9, line: 17, baseType: !13, size: 128, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "m00im", scope: !10, file: !9, line: 17, baseType: !18, size: 64, align: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "m11im", scope: !10, file: !9, line: 17, baseType: !18, size: 64, align: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "m22im", scope: !10, file: !9, line: 17, baseType: !18, size: 64, align: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !10, file: !9, line: 17, baseType: !18, size: 64, align: 64, offset: 576)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "su3_matrix", file: !9, line: 14, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 14, size: 1152, align: 64, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !28, file: !9, line: 14, baseType: !31, size: 1152, align: 64)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1152, align: 64, elements: !32)
!32 = !{!33, !33}
!33 = !DISubrange(count: 3)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat_antihermit", arg: 1, scope: !4, file: !1, line: 11, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat_su3", arg: 2, scope: !4, file: !1, line: 12, type: !26)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp1", scope: !4, file: !1, line: 14, type: !18)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 11, column: 49, scope: !4)
!44 = !DILocation(line: 12, column: 14, scope: !4)
!45 = !DILocation(line: 15, column: 40, scope: !4)
!46 = !{!47, !49, i64 48}
!47 = !{!"", !48, i64 0, !48, i64 16, !48, i64 32, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72}
!48 = !{!"", !49, i64 0, !49, i64 8}
!49 = !{!"double", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 15, column: 19, scope: !4)
!53 = !DILocation(line: 15, column: 23, scope: !4)
!54 = !{!48, !49, i64 8}
!55 = !DILocation(line: 16, column: 19, scope: !4)
!56 = !DILocation(line: 16, column: 23, scope: !4)
!57 = !{!48, !49, i64 0}
!58 = !DILocation(line: 17, column: 40, scope: !4)
!59 = !{!47, !49, i64 56}
!60 = !DILocation(line: 17, column: 19, scope: !4)
!61 = !DILocation(line: 17, column: 23, scope: !4)
!62 = !DILocation(line: 18, column: 19, scope: !4)
!63 = !DILocation(line: 18, column: 23, scope: !4)
!64 = !DILocation(line: 19, column: 40, scope: !4)
!65 = !{!47, !49, i64 64}
!66 = !DILocation(line: 19, column: 19, scope: !4)
!67 = !DILocation(line: 19, column: 23, scope: !4)
!68 = !DILocation(line: 20, column: 19, scope: !4)
!69 = !DILocation(line: 20, column: 23, scope: !4)
!70 = !DILocation(line: 21, column: 44, scope: !4)
!71 = !{!47, !49, i64 8}
!72 = !DILocation(line: 21, column: 19, scope: !4)
!73 = !DILocation(line: 21, column: 23, scope: !4)
!74 = !DILocation(line: 22, column: 28, scope: !4)
!75 = !{!47, !49, i64 0}
!76 = !DILocation(line: 14, column: 16, scope: !4)
!77 = !DILocation(line: 23, column: 19, scope: !4)
!78 = !DILocation(line: 23, column: 23, scope: !4)
!79 = !DILocation(line: 24, column: 25, scope: !4)
!80 = !DILocation(line: 24, column: 19, scope: !4)
!81 = !DILocation(line: 24, column: 23, scope: !4)
!82 = !DILocation(line: 25, column: 44, scope: !4)
!83 = !DILocation(line: 25, column: 19, scope: !4)
!84 = !DILocation(line: 25, column: 23, scope: !4)
!85 = !DILocation(line: 26, column: 44, scope: !4)
!86 = !{!47, !49, i64 24}
!87 = !DILocation(line: 26, column: 19, scope: !4)
!88 = !DILocation(line: 26, column: 23, scope: !4)
!89 = !DILocation(line: 27, column: 28, scope: !4)
!90 = !{!47, !49, i64 16}
!91 = !DILocation(line: 28, column: 19, scope: !4)
!92 = !DILocation(line: 28, column: 23, scope: !4)
!93 = !DILocation(line: 29, column: 25, scope: !4)
!94 = !DILocation(line: 29, column: 19, scope: !4)
!95 = !DILocation(line: 29, column: 23, scope: !4)
!96 = !DILocation(line: 30, column: 44, scope: !4)
!97 = !DILocation(line: 30, column: 19, scope: !4)
!98 = !DILocation(line: 30, column: 23, scope: !4)
!99 = !DILocation(line: 31, column: 44, scope: !4)
!100 = !{!47, !49, i64 40}
!101 = !DILocation(line: 31, column: 19, scope: !4)
!102 = !DILocation(line: 31, column: 23, scope: !4)
!103 = !DILocation(line: 32, column: 28, scope: !4)
!104 = !{!47, !49, i64 32}
!105 = !DILocation(line: 33, column: 19, scope: !4)
!106 = !DILocation(line: 33, column: 23, scope: !4)
!107 = !DILocation(line: 34, column: 25, scope: !4)
!108 = !DILocation(line: 34, column: 19, scope: !4)
!109 = !DILocation(line: 34, column: 23, scope: !4)
!110 = !DILocation(line: 35, column: 44, scope: !4)
!111 = !DILocation(line: 35, column: 19, scope: !4)
!112 = !DILocation(line: 35, column: 23, scope: !4)
!113 = !DILocation(line: 36, column: 1, scope: !4)
