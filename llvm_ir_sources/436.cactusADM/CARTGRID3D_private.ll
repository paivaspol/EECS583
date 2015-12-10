; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CARTGRID3D_private.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@cartgrid3dpriv_ = common global %struct.anon zeroinitializer, align 4

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CARTGRID3D_private.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "cartgrid3dpriv_", scope: !0, file: !1, line: 23, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @cartgrid3dpriv_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 256, align: 32, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_origin", scope: !5, file: !1, line: 15, baseType: !8, size: 32, align: 32)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_originx", scope: !5, file: !1, line: 16, baseType: !8, size: 32, align: 32, offset: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_originy", scope: !5, file: !1, line: 17, baseType: !8, size: 32, align: 32, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_originz", scope: !5, file: !1, line: 18, baseType: !8, size: 32, align: 32, offset: 96)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "no_origin", scope: !5, file: !1, line: 19, baseType: !8, size: 32, align: 32, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "no_originx", scope: !5, file: !1, line: 20, baseType: !8, size: 32, align: 32, offset: 160)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "no_originy", scope: !5, file: !1, line: 21, baseType: !8, size: 32, align: 32, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "no_originz", scope: !5, file: !1, line: 22, baseType: !8, size: 32, align: 32, offset: 224)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 700000003}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
