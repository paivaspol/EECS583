; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/hex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@_hex_value = constant [256 x i8] c"cccccccccccccccccccccccccccccccccccccccccccccccc\00\01\02\03\04\05\06\07\08\09ccccccc\0A\0B\0C\0D\0E\0Fcccccccccccccccccccccccccc\0A\0B\0C\0D\0E\0Fccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc", align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @hex_init() #0 {
  ret void, !dbg !18
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !7, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/hex.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "hex_init", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @hex_init, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !{!8}
!8 = !DIGlobalVariable(name: "_hex_value", scope: !0, file: !1, line: 34, type: !9, isLocal: false, isDefinition: true, variable: [256 x i8]* @_hex_value)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, align: 8, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 256)
!14 = !{i32 2, !"Dwarf Version", i32 2}
!15 = !{i32 2, !"Debug Info Version", i32 700000003}
!16 = !{i32 1, !"PIC Level", i32 2}
!17 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!18 = !DILocation(line: 27, column: 1, scope: !4)
