; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BENCHADM_private.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }

@benchadmpriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !2, globals: !3, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BENCHADM_private.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "benchadmpriv_", scope: !0, file: !1, line: 17, type: !5, isLocal: false, isDefinition: true, variable: %struct.anon* @benchadmpriv_)
!5 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 128, align: 64, elements: !6)
!6 = !{!7, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !5, file: !1, line: 15, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "time_symmetric", scope: !5, file: !1, line: 16, baseType: !11, size: 32, align: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{i32 2, !"Dwarf Version", i32 2}
!13 = !{i32 2, !"Debug Info Version", i32 700000003}
!14 = !{i32 1, !"PIC Level", i32 2}
!15 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
