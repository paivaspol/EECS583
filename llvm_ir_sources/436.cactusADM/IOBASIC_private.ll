; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@iobasicpriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBASIC_private.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "iobasicpriv_", scope: !0, file: !1, line: 24, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @iobasicpriv_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 512, align: 64, elements: !6)
!6 = !{!7, !10, !11, !12, !13, !14, !15, !16, !18}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_reductions", scope: !5, file: !1, line: 15, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_vars", scope: !5, file: !1, line: 16, baseType: !8, size: 64, align: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_reductions", scope: !5, file: !1, line: 17, baseType: !8, size: 64, align: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_style", scope: !5, file: !1, line: 18, baseType: !8, size: 64, align: 64, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_vars", scope: !5, file: !1, line: 19, baseType: !8, size: 64, align: 64, offset: 256)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "out_format", scope: !5, file: !1, line: 20, baseType: !8, size: 64, align: 64, offset: 320)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "outdirScalar", scope: !5, file: !1, line: 21, baseType: !8, size: 64, align: 64, offset: 384)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_every", scope: !5, file: !1, line: 22, baseType: !17, size: 32, align: 32, offset: 448)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_every", scope: !5, file: !1, line: 23, baseType: !17, size: 32, align: 32, offset: 480)
!19 = !{i32 2, !"Dwarf Version", i32 2}
!20 = !{i32 2, !"Debug Info Version", i32 700000003}
!21 = !{i32 1, !"PIC Level", i32 2}
!22 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
