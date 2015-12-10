; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/lbasename.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @lbasename(i8* readonly %name) #0 {
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !11, metadata !17), !dbg !18
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !12, metadata !17), !dbg !19
  br label %.outer, !dbg !20

.outer:                                           ; preds = %3, %0
  %.0.ph = phi i8* [ %4, %3 ], [ %name, %0 ]
  br label %1

; <label>:1                                       ; preds = %.outer, %._crit_edge
  %.0 = phi i8* [ %.pre, %._crit_edge ], [ %.0.ph, %.outer ]
  %2 = load i8* %.0, align 1, !dbg !22, !tbaa !24
  switch i8 %2, label %._crit_edge [
    i8 0, label %5
    i8 47, label %3
  ], !dbg !27

._crit_edge:                                      ; preds = %1
  %.pre = getelementptr inbounds i8* %.0, i64 1, !dbg !28
  br label %1, !dbg !27

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds i8* %.0, i64 1, !dbg !29
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !12, metadata !17), !dbg !19
  br label %.outer, !dbg !31

; <label>:5                                       ; preds = %1
  ret i8* %.0.ph, !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/lbasename.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "lbasename", scope: !1, file: !1, line: 72, type: !5, isLocal: false, isDefinition: true, scopeLine: 74, isOptimized: true, function: i8* (i8*)* @lbasename, variables: !10)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !{!11, !12}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !4, file: !1, line: 73, type: !7)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !4, file: !1, line: 75, type: !7)
!13 = !{i32 2, !"Dwarf Version", i32 2}
!14 = !{i32 2, !"Debug Info Version", i32 700000003}
!15 = !{i32 1, !"PIC Level", i32 2}
!16 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!17 = !DIExpression()
!18 = !DILocation(line: 73, column: 18, scope: !4)
!19 = !DILocation(line: 75, column: 15, scope: !4)
!20 = !DILocation(line: 83, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !4, file: !1, line: 83, column: 3)
!22 = !DILocation(line: 83, column: 21, scope: !23)
!23 = distinct !DILexicalBlock(scope: !21, file: !1, line: 83, column: 3)
!24 = !{!25, !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 83, column: 3, scope: !21)
!28 = !DILocation(line: 83, column: 32, scope: !23)
!29 = !DILocation(line: 85, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !23, file: !1, line: 84, column: 9)
!31 = !DILocation(line: 85, column: 7, scope: !30)
!32 = !DILocation(line: 87, column: 3, scope: !4)
