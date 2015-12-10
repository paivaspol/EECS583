; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/strcmp1.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @strcmp1(i8* nocapture readonly %s1, i8* nocapture readonly %s2) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !12, metadata !20), !dbg !21
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !13, metadata !20), !dbg !22
  br label %1, !dbg !23

; <label>:1                                       ; preds = %6, %0
  %.02 = phi i8* [ %s1, %0 ], [ %10, %6 ]
  %.0 = phi i8* [ %s2, %0 ], [ %9, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !12, metadata !20), !dbg !21
  %2 = load i8* %.02, align 1, !dbg !24, !tbaa !26
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !14, metadata !20), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !13, metadata !20), !dbg !22
  %3 = load i8* %.0, align 1, !dbg !30, !tbaa !26
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !15, metadata !20), !dbg !31
  %4 = icmp eq i8 %2, 0, !dbg !32
  %5 = icmp eq i8 %3, 0, !dbg !34
  %or.cond = or i1 %4, %5, !dbg !35
  br i1 %or.cond, label %12, label %6, !dbg !35

; <label>:6                                       ; preds = %1
  %7 = sext i8 %2 to i32, !dbg !24
  %8 = sext i8 %3 to i32, !dbg !30
  %9 = getelementptr inbounds i8* %.0, i64 1, !dbg !36
  %10 = getelementptr inbounds i8* %.02, i64 1, !dbg !37
  %11 = icmp eq i8 %2, %3, !dbg !38
  br i1 %11, label %1, label %12, !dbg !39

; <label>:12                                      ; preds = %1, %6
  %a.0 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %b.0 = phi i32 [ %8, %6 ], [ 0, %1 ]
  %13 = sub nsw i32 %a.0, %b.0, !dbg !40
  ret i32 %13, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/strcmp1.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "strcmp1", scope: !1, file: !1, line: 24, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @strcmp1, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !8}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{!12, !13, !14, !15}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !4, file: !1, line: 24, type: !8)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !4, file: !1, line: 24, type: !8)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !4, file: !1, line: 26, type: !7)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !4, file: !1, line: 26, type: !7)
!16 = !{i32 2, !"Dwarf Version", i32 2}
!17 = !{i32 2, !"Debug Info Version", i32 700000003}
!18 = !{i32 1, !"PIC Level", i32 2}
!19 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!20 = !DIExpression()
!21 = !DILocation(line: 24, column: 25, scope: !4)
!22 = !DILocation(line: 24, column: 41, scope: !4)
!23 = !DILocation(line: 28, column: 3, scope: !4)
!24 = !DILocation(line: 29, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !4, file: !1, line: 28, column: 6)
!26 = !{!27, !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 26, column: 7, scope: !4)
!30 = !DILocation(line: 30, column: 7, scope: !25)
!31 = !DILocation(line: 26, column: 9, scope: !4)
!32 = !DILocation(line: 31, column: 10, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 31, column: 8)
!34 = !DILocation(line: 31, column: 21, scope: !33)
!35 = !DILocation(line: 31, column: 17, scope: !33)
!36 = !DILocation(line: 30, column: 10, scope: !25)
!37 = !DILocation(line: 29, column: 10, scope: !25)
!38 = !DILocation(line: 36, column: 11, scope: !4)
!39 = !DILocation(line: 36, column: 3, scope: !25)
!40 = !DILocation(line: 37, column: 11, scope: !4)
!41 = !DILocation(line: 37, column: 3, scope: !4)
