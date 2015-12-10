; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/rand_ahmat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind optsize ssp uwtable
define void @random_anti_hermitian(%struct.anti_hermitmat* nocapture %mat_antihermit, %struct.double_prn* %prn_pt) #0 {
  tail call void @llvm.dbg.value(metadata %struct.anti_hermitmat* %mat_antihermit, i64 0, metadata !45, metadata !54), !dbg !55
  tail call void @llvm.dbg.value(metadata %struct.double_prn* %prn_pt, i64 0, metadata !46, metadata !54), !dbg !56
  tail call void @llvm.dbg.value(metadata double 0x3FE279A74590331C, i64 0, metadata !49, metadata !54), !dbg !57
  %1 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !58
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !47, metadata !54), !dbg !59
  %2 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !60
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !48, metadata !54), !dbg !61
  %3 = fmul double %2, 0x3FE279A74590331C, !dbg !62
  %4 = fadd double %1, %3, !dbg !63
  %5 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3, !dbg !64
  store double %4, double* %5, align 8, !dbg !65, !tbaa !66
  %6 = fsub double %3, %1, !dbg !72
  %7 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4, !dbg !73
  store double %6, double* %7, align 8, !dbg !74, !tbaa !75
  %8 = fmul double %2, 0xBFF279A74590331C, !dbg !76
  %9 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5, !dbg !77
  store double %8, double* %9, align 8, !dbg !78, !tbaa !79
  %10 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !80
  %11 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0, !dbg !81
  store double %10, double* %11, align 8, !dbg !82, !tbaa !83
  %12 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !84
  %13 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0, !dbg !85
  store double %12, double* %13, align 8, !dbg !86, !tbaa !87
  %14 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !88
  %15 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0, !dbg !89
  store double %14, double* %15, align 8, !dbg !90, !tbaa !91
  %16 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !92
  %17 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1, !dbg !93
  store double %16, double* %17, align 8, !dbg !94, !tbaa !95
  %18 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !96
  %19 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1, !dbg !97
  store double %18, double* %19, align 8, !dbg !98, !tbaa !99
  %20 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !100
  %21 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1, !dbg !101
  store double %20, double* %21, align 8, !dbg !102, !tbaa !103
  ret void, !dbg !104
}

; Function Attrs: optsize
declare double @gaussian_rand_no(%struct.double_prn*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/rand_ahmat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DISubprogram(name: "random_anti_hermitian", scope: !1, file: !1, line: 14, type: !7, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.anti_hermitmat*, %struct.double_prn*)* @random_anti_hermitian, variables: !44)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !27}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "anti_hermitmat", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/su3.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 16, size: 640, align: 64, elements: !13)
!13 = !{!14, !21, !22, !23, !24, !25, !26}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "m01", scope: !12, file: !11, line: 17, baseType: !15, size: 128, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !16, line: 76, baseType: !17)
!16 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/complex.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 73, size: 128, align: 64, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !17, file: !16, line: 74, baseType: !4, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !17, file: !16, line: 75, baseType: !4, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "m02", scope: !12, file: !11, line: 17, baseType: !15, size: 128, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "m12", scope: !12, file: !11, line: 17, baseType: !15, size: 128, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "m00im", scope: !12, file: !11, line: 17, baseType: !4, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "m11im", scope: !12, file: !11, line: 17, baseType: !4, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "m22im", scope: !12, file: !11, line: 17, baseType: !4, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !12, file: !11, line: 17, baseType: !4, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_prn", file: !29, line: 11, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/random.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 6, size: 704, align: 64, elements: !31)
!31 = !{!32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64)
!33 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !30, file: !29, line: 8, baseType: !33, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "multiplier", scope: !30, file: !29, line: 9, baseType: !33, size: 64, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "addend", scope: !30, file: !29, line: 9, baseType: !33, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ic_state", scope: !30, file: !29, line: 9, baseType: !33, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !30, file: !29, line: 10, baseType: !4, size: 64, align: 64, offset: 640)
!44 = !{!45, !46, !47, !48, !49}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat_antihermit", arg: 1, scope: !6, file: !1, line: 14, type: !9)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prn_pt", arg: 2, scope: !6, file: !1, line: 14, type: !27)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r3", scope: !6, file: !1, line: 15, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r8", scope: !6, file: !1, line: 15, type: !4)
!49 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqrt_third", scope: !6, file: !1, line: 16, type: !4)
!50 = !{i32 2, !"Dwarf Version", i32 2}
!51 = !{i32 2, !"Debug Info Version", i32 700000003}
!52 = !{i32 1, !"PIC Level", i32 2}
!53 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!54 = !DIExpression()
!55 = !DILocation(line: 14, column: 45, scope: !6)
!56 = !DILocation(line: 14, column: 73, scope: !6)
!57 = !DILocation(line: 16, column: 8, scope: !6)
!58 = !DILocation(line: 19, column: 12, scope: !6)
!59 = !DILocation(line: 15, column: 8, scope: !6)
!60 = !DILocation(line: 20, column: 5, scope: !6)
!61 = !DILocation(line: 15, column: 11, scope: !6)
!62 = !DILocation(line: 21, column: 37, scope: !6)
!63 = !DILocation(line: 21, column: 26, scope: !6)
!64 = !DILocation(line: 21, column: 18, scope: !6)
!65 = !DILocation(line: 21, column: 23, scope: !6)
!66 = !{!67, !69, i64 48}
!67 = !{!"", !68, i64 0, !68, i64 16, !68, i64 32, !69, i64 48, !69, i64 56, !69, i64 64, !69, i64 72}
!68 = !{!"", !69, i64 0, !69, i64 8}
!69 = !{!"double", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 22, column: 28, scope: !6)
!73 = !DILocation(line: 22, column: 18, scope: !6)
!74 = !DILocation(line: 22, column: 23, scope: !6)
!75 = !{!67, !69, i64 56}
!76 = !DILocation(line: 23, column: 40, scope: !6)
!77 = !DILocation(line: 23, column: 18, scope: !6)
!78 = !DILocation(line: 23, column: 23, scope: !6)
!79 = !{!67, !69, i64 64}
!80 = !DILocation(line: 24, column: 27, scope: !6)
!81 = !DILocation(line: 24, column: 22, scope: !6)
!82 = !DILocation(line: 24, column: 26, scope: !6)
!83 = !{!67, !69, i64 0}
!84 = !DILocation(line: 25, column: 27, scope: !6)
!85 = !DILocation(line: 25, column: 22, scope: !6)
!86 = !DILocation(line: 25, column: 26, scope: !6)
!87 = !{!67, !69, i64 16}
!88 = !DILocation(line: 26, column: 27, scope: !6)
!89 = !DILocation(line: 26, column: 22, scope: !6)
!90 = !DILocation(line: 26, column: 26, scope: !6)
!91 = !{!67, !69, i64 32}
!92 = !DILocation(line: 27, column: 27, scope: !6)
!93 = !DILocation(line: 27, column: 22, scope: !6)
!94 = !DILocation(line: 27, column: 26, scope: !6)
!95 = !{!67, !69, i64 8}
!96 = !DILocation(line: 28, column: 27, scope: !6)
!97 = !DILocation(line: 28, column: 22, scope: !6)
!98 = !DILocation(line: 28, column: 26, scope: !6)
!99 = !{!67, !69, i64 24}
!100 = !DILocation(line: 29, column: 27, scope: !6)
!101 = !DILocation(line: 29, column: 22, scope: !6)
!102 = !DILocation(line: 29, column: 26, scope: !6)
!103 = !{!67, !69, i64 40}
!104 = !DILocation(line: 31, column: 1, scope: !6)
