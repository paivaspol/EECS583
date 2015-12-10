; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "einsteinrest_", scope: !0, file: !1, line: 36, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @einsteinrest_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 1152, align: 64, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !13, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "gaussian_amplitude", scope: !5, file: !1, line: 15, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "gaussian_sigma2", scope: !5, file: !1, line: 16, baseType: !8, size: 64, align: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "psiminustwo_cut", scope: !5, file: !1, line: 17, baseType: !8, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "rot_shift_att_sigma", scope: !5, file: !1, line: 18, baseType: !8, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_omega", scope: !5, file: !1, line: 19, baseType: !8, size: 64, align: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "advection", scope: !5, file: !1, line: 20, baseType: !14, size: 64, align: 64, offset: 320)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "evolution_system", scope: !5, file: !1, line: 21, baseType: !14, size: 64, align: 64, offset: 384)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "initial_data", scope: !5, file: !1, line: 22, baseType: !14, size: 64, align: 64, offset: 448)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "initial_lapse", scope: !5, file: !1, line: 23, baseType: !14, size: 64, align: 64, offset: 512)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "initial_shift", scope: !5, file: !1, line: 24, baseType: !14, size: 64, align: 64, offset: 576)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "mixed_slicing", scope: !5, file: !1, line: 25, baseType: !14, size: 64, align: 64, offset: 640)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !5, file: !1, line: 26, baseType: !14, size: 64, align: 64, offset: 704)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "slicing", scope: !5, file: !1, line: 27, baseType: !14, size: 64, align: 64, offset: 768)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "slicing_verbose", scope: !5, file: !1, line: 28, baseType: !14, size: 64, align: 64, offset: 832)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "einstein_register_slicing", scope: !5, file: !1, line: 29, baseType: !25, size: 32, align: 32, offset: 896)
!25 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rot_shift_att", scope: !5, file: !1, line: 30, baseType: !25, size: 32, align: 32, offset: 928)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "rot_shift_att_pow", scope: !5, file: !1, line: 31, baseType: !25, size: 32, align: 32, offset: 960)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_psipower", scope: !5, file: !1, line: 32, baseType: !25, size: 32, align: 32, offset: 992)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "use_conformal", scope: !5, file: !1, line: 33, baseType: !25, size: 32, align: 32, offset: 1024)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "use_conformal_derivs", scope: !5, file: !1, line: 34, baseType: !25, size: 32, align: 32, offset: 1056)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "use_mask", scope: !5, file: !1, line: 35, baseType: !25, size: 32, align: 32, offset: 1088)
!32 = !{i32 2, !"Dwarf Version", i32 2}
!33 = !{i32 2, !"Debug Info Version", i32 700000003}
!34 = !{i32 1, !"PIC Level", i32 2}
!35 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
