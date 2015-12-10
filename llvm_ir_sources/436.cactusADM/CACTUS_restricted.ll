; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_restricted.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, i8*, i32, i32 }

@cactusrest_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_restricted.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "cactusrest_", scope: !0, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @cactusrest_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 256, align: 64, elements: !6)
!6 = !{!7, !9, !10, !13, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_final_time", scope: !5, file: !1, line: 15, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_initial_time", scope: !5, file: !1, line: 16, baseType: !8, size: 64, align: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !5, file: !1, line: 17, baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_itlast", scope: !5, file: !1, line: 18, baseType: !14, size: 32, align: 32, offset: 192)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "terminate_next", scope: !5, file: !1, line: 19, baseType: !14, size: 32, align: 32, offset: 224)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 700000003}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
