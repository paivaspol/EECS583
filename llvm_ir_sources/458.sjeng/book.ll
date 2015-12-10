; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/book.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@dummy = external global %struct.move_s

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @init_book() #0 {
  ret i32 1, !dbg !30
}

; Function Attrs: nounwind optsize ssp uwtable
define void @choose_book_move(%struct.move_s* noalias nocapture sret %agg.result) #1 {
  %1 = bitcast %struct.move_s* %agg.result to i8*, !dbg !31
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !dbg !31, !tbaa.struct !32
  ret void, !dbg !37
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !9, globals: !8, imports: !8)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/book.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/458.sjeng/src/sjeng.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "FALSE", value: 0)
!7 = !DIEnumerator(name: "TRUE", value: 1)
!8 = !{}
!9 = !{!10, !14}
!10 = !DISubprogram(name: "init_book", scope: !1, file: !1, line: 16, type: !11, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @init_book, variables: !8)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "choose_book_move", scope: !1, file: !1, line: 22, type: !15, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.move_s*)* @choose_book_move, variables: !8)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "move_s", file: !4, line: 102, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 95, size: 192, align: 32, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !18, file: !4, line: 96, baseType: !13, size: 32, align: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !18, file: !4, line: 97, baseType: !13, size: 32, align: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "captured", scope: !18, file: !4, line: 98, baseType: !13, size: 32, align: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "promoted", scope: !18, file: !4, line: 99, baseType: !13, size: 32, align: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "castled", scope: !18, file: !4, line: 100, baseType: !13, size: 32, align: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !18, file: !4, line: 101, baseType: !13, size: 32, align: 32, offset: 160)
!26 = !{i32 2, !"Dwarf Version", i32 2}
!27 = !{i32 2, !"Debug Info Version", i32 700000003}
!28 = !{i32 1, !"PIC Level", i32 2}
!29 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!30 = !DILocation(line: 18, column: 4, scope: !10)
!31 = !DILocation(line: 24, column: 11, scope: !14)
!32 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 4, !33, i64 12, i64 4, !33, i64 16, i64 4, !33, i64 20, i64 4, !33}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 24, column: 4, scope: !14)
