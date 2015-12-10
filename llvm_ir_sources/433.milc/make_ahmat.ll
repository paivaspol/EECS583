; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/make_ahmat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @make_anti_hermitian(%struct.su3_matrix* nocapture readonly %m3, %struct.anti_hermitmat* nocapture %ah3) #0 {
  tail call void @llvm.dbg.value(metadata %struct.su3_matrix* %m3, i64 0, metadata !35, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata %struct.anti_hermitmat* %ah3, i64 0, metadata !36, metadata !42), !dbg !44
  %1 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !45
  %2 = load double* %1, align 8, !dbg !45, !tbaa !46
  %3 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !51
  %4 = load double* %3, align 8, !dbg !51, !tbaa !46
  %5 = fadd double %2, %4, !dbg !52
  %6 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !53
  %7 = load double* %6, align 8, !dbg !53, !tbaa !46
  %8 = fadd double %5, %7, !dbg !54
  %9 = fmul double %8, 0x3FD5555551C112DA, !dbg !55
  tail call void @llvm.dbg.value(metadata double %9, i64 0, metadata !37, metadata !42), !dbg !56
  %10 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 3, !dbg !57
  %11 = insertelement <2 x double> undef, double %2, i32 0, !dbg !58
  %12 = insertelement <2 x double> %11, double %4, i32 1, !dbg !58
  %13 = insertelement <2 x double> undef, double %9, i32 0, !dbg !58
  %14 = insertelement <2 x double> %13, double %9, i32 1, !dbg !58
  %15 = fsub <2 x double> %12, %14, !dbg !58
  %16 = bitcast double* %10 to <2 x double>*, !dbg !59
  store <2 x double> %15, <2 x double>* %16, align 8, !dbg !59, !tbaa !60
  %17 = fsub double %7, %9, !dbg !61
  %18 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 5, !dbg !62
  store double %17, double* %18, align 8, !dbg !63, !tbaa !64
  %19 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !66
  %20 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !67
  %21 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 2, i32 0, !dbg !68
  %22 = bitcast double* %19 to <2 x double>*, !dbg !66
  %23 = load <2 x double>* %22, align 8, !dbg !66, !tbaa !60
  %24 = bitcast double* %20 to <2 x double>*, !dbg !67
  %25 = load <2 x double>* %24, align 8, !dbg !67, !tbaa !60
  %26 = fsub <2 x double> %23, %25, !dbg !69
  %27 = fadd <2 x double> %23, %25, !dbg !69
  %28 = shufflevector <2 x double> %26, <2 x double> %27, <2 x i32> <i32 0, i32 3>, !dbg !69
  %29 = fmul <2 x double> %28, <double 5.000000e-01, double 5.000000e-01>, !dbg !70
  %30 = bitcast %struct.anti_hermitmat* %ah3 to <2 x double>*, !dbg !71
  store <2 x double> %29, <2 x double>* %30, align 8, !dbg !71, !tbaa !60
  %31 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 0, i32 0, !dbg !72
  %32 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 1, i32 0, !dbg !73
  %33 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 2, i32 0, !dbg !74
  %34 = bitcast double* %21 to <2 x double>*, !dbg !68
  %35 = load <2 x double>* %34, align 8, !dbg !68, !tbaa !60
  %36 = bitcast double* %31 to <2 x double>*, !dbg !72
  %37 = load <2 x double>* %36, align 8, !dbg !72, !tbaa !60
  %38 = fsub <2 x double> %35, %37, !dbg !75
  %39 = fadd <2 x double> %35, %37, !dbg !75
  %40 = shufflevector <2 x double> %38, <2 x double> %39, <2 x i32> <i32 0, i32 3>, !dbg !75
  %41 = fmul <2 x double> %40, <double 5.000000e-01, double 5.000000e-01>, !dbg !76
  %42 = bitcast double* %32 to <2 x double>*, !dbg !77
  store <2 x double> %41, <2 x double>* %42, align 8, !dbg !77, !tbaa !60
  %43 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 1, i32 0, !dbg !78
  %44 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 2, i32 0, !dbg !79
  %45 = bitcast double* %33 to <2 x double>*, !dbg !74
  %46 = load <2 x double>* %45, align 8, !dbg !74, !tbaa !60
  %47 = bitcast double* %43 to <2 x double>*, !dbg !78
  %48 = load <2 x double>* %47, align 8, !dbg !78, !tbaa !60
  %49 = fsub <2 x double> %46, %48, !dbg !80
  %50 = fadd <2 x double> %46, %48, !dbg !80
  %51 = shufflevector <2 x double> %49, <2 x double> %50, <2 x i32> <i32 0, i32 3>, !dbg !80
  %52 = fmul <2 x double> %51, <double 5.000000e-01, double 5.000000e-01>, !dbg !81
  %53 = bitcast double* %44 to <2 x double>*, !dbg !82
  store <2 x double> %52, <2 x double>* %53, align 8, !dbg !82, !tbaa !60
  ret void, !dbg !83
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/make_ahmat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "make_anti_hermitian", scope: !1, file: !1, line: 12, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.su3_matrix*, %struct.anti_hermitmat*)* @make_anti_hermitian, variables: !34)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !23}
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
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "anti_hermitmat", file: !9, line: 17, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 16, size: 640, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "m01", scope: !25, file: !9, line: 17, baseType: !14, size: 128, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "m02", scope: !25, file: !9, line: 17, baseType: !14, size: 128, align: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "m12", scope: !25, file: !9, line: 17, baseType: !14, size: 128, align: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "m00im", scope: !25, file: !9, line: 17, baseType: !19, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "m11im", scope: !25, file: !9, line: 17, baseType: !19, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "m22im", scope: !25, file: !9, line: 17, baseType: !19, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !25, file: !9, line: 17, baseType: !19, size: 64, align: 64, offset: 576)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m3", arg: 1, scope: !4, file: !1, line: 12, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ah3", arg: 2, scope: !4, file: !1, line: 12, type: !23)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !4, file: !1, line: 13, type: !19)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 12, column: 39, scope: !4)
!44 = !DILocation(line: 12, column: 59, scope: !4)
!45 = !DILocation(line: 16, column: 19, scope: !4)
!46 = !{!47, !48, i64 8}
!47 = !{!"", !48, i64 0, !48, i64 8}
!48 = !{!"double", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 16, column: 38, scope: !4)
!52 = !DILocation(line: 16, column: 24, scope: !4)
!53 = !DILocation(line: 16, column: 57, scope: !4)
!54 = !DILocation(line: 16, column: 43, scope: !4)
!55 = !DILocation(line: 16, column: 62, scope: !4)
!56 = !DILocation(line: 13, column: 8, scope: !4)
!57 = !DILocation(line: 17, column: 7, scope: !4)
!58 = !DILocation(line: 17, column: 32, scope: !4)
!59 = !DILocation(line: 17, column: 13, scope: !4)
!60 = !{!48, !48, i64 0}
!61 = !DILocation(line: 19, column: 32, scope: !4)
!62 = !DILocation(line: 19, column: 7, scope: !4)
!63 = !DILocation(line: 19, column: 13, scope: !4)
!64 = !{!65, !48, i64 64}
!65 = !{!"", !47, i64 0, !47, i64 16, !47, i64 32, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72}
!66 = !DILocation(line: 20, column: 31, scope: !4)
!67 = !DILocation(line: 20, column: 50, scope: !4)
!68 = !DILocation(line: 21, column: 31, scope: !4)
!69 = !DILocation(line: 20, column: 36, scope: !4)
!70 = !DILocation(line: 20, column: 55, scope: !4)
!71 = !DILocation(line: 20, column: 16, scope: !4)
!72 = !DILocation(line: 21, column: 50, scope: !4)
!73 = !DILocation(line: 21, column: 11, scope: !4)
!74 = !DILocation(line: 22, column: 31, scope: !4)
!75 = !DILocation(line: 21, column: 36, scope: !4)
!76 = !DILocation(line: 21, column: 55, scope: !4)
!77 = !DILocation(line: 21, column: 16, scope: !4)
!78 = !DILocation(line: 22, column: 50, scope: !4)
!79 = !DILocation(line: 22, column: 11, scope: !4)
!80 = !DILocation(line: 22, column: 36, scope: !4)
!81 = !DILocation(line: 22, column: 55, scope: !4)
!82 = !DILocation(line: 22, column: 16, scope: !4)
!83 = !DILocation(line: 27, column: 1, scope: !4)
