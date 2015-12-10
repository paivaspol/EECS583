; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/byterevn.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @byterevn(i32* nocapture %w, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata i32* %w, i64 0, metadata !12, metadata !21), !dbg !22
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !13, metadata !21), !dbg !23
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !16, metadata !21), !dbg !24
  %1 = icmp sgt i32 %n, 0, !dbg !25
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !28

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !28
  br label %3, !dbg !28

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds i32* %w, i64 %indvars.iv, !dbg !29
  %5 = load i32* %4, align 4, !dbg !29, !tbaa !31
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !14, metadata !21), !dbg !35
  %6 = tail call i32 @llvm.bswap.i32(i32 %5), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !15, metadata !21), !dbg !37
  store i32 %6, i32* %4, align 4, !dbg !38, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !28
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !28
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !28
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !28

._crit_edge:                                      ; preds = %3, %0
  ret void, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/byterevn.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "byterevn", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32)* @byterevn, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !10}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32type", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/433.milc/src/int32type.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !16}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 1, scope: !4, file: !1, line: 11, type: !7)
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !4, file: !1, line: 11, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old", scope: !4, file: !1, line: 13, type: !8)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newv", scope: !4, file: !1, line: 13, type: !8)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !4, file: !1, line: 14, type: !10)
!17 = !{i32 2, !"Dwarf Version", i32 2}
!18 = !{i32 2, !"Debug Info Version", i32 700000003}
!19 = !{i32 1, !"PIC Level", i32 2}
!20 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!21 = !DIExpression()
!22 = !DILocation(line: 11, column: 25, scope: !4)
!23 = !DILocation(line: 11, column: 34, scope: !4)
!24 = !DILocation(line: 14, column: 7, scope: !4)
!25 = !DILocation(line: 18, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 18, column: 3)
!27 = distinct !DILexicalBlock(scope: !4, file: !1, line: 18, column: 3)
!28 = !DILocation(line: 18, column: 3, scope: !27)
!29 = !DILocation(line: 20, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 19, column: 5)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 13, column: 22, scope: !4)
!36 = !DILocation(line: 24, column: 12, scope: !30)
!37 = !DILocation(line: 13, column: 26, scope: !4)
!38 = !DILocation(line: 25, column: 12, scope: !30)
!39 = !DILocation(line: 27, column: 1, scope: !4)
