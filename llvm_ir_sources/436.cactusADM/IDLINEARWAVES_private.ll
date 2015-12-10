; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLINEARWAVES_private.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32 }

@idlinearwavespriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLINEARWAVES_private.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "idlinearwavespriv_", scope: !0, file: !1, line: 26, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @idlinearwavespriv_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 704, align: 64, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !13, !14, !17, !18, !19, !20}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "amplitude", scope: !5, file: !1, line: 15, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "wavecenter", scope: !5, file: !1, line: 16, baseType: !8, size: 64, align: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "wavelength", scope: !5, file: !1, line: 17, baseType: !8, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "wavephi", scope: !5, file: !1, line: 18, baseType: !8, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "wavepulse", scope: !5, file: !1, line: 19, baseType: !8, size: 64, align: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "wavetheta", scope: !5, file: !1, line: 20, baseType: !8, size: 64, align: 64, offset: 320)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !5, file: !1, line: 21, baseType: !15, size: 64, align: 64, offset: 384)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5, file: !1, line: 22, baseType: !15, size: 64, align: 64, offset: 448)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "teuk_no_vee", scope: !5, file: !1, line: 23, baseType: !15, size: 64, align: 64, offset: 512)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "wavesgoing", scope: !5, file: !1, line: 24, baseType: !15, size: 64, align: 64, offset: 576)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "mvalue", scope: !5, file: !1, line: 25, baseType: !21, size: 32, align: 32, offset: 640)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !{i32 2, !"Dwarf Version", i32 2}
!23 = !{i32 2, !"Debug Info Version", i32 700000003}
!24 = !{i32 1, !"PIC Level", i32 2}
!25 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
