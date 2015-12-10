; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/strcpy1.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @strcpy1(i8* nocapture %s1, i8* nocapture readonly %s2, i32 %length) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !13, metadata !23), !dbg !24
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !14, metadata !23), !dbg !25
  tail call void @llvm.dbg.value(metadata i32 %length, i64 0, metadata !15, metadata !23), !dbg !26
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !18, metadata !23), !dbg !27
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !17, metadata !23), !dbg !28
  %1 = icmp sgt i32 %length, 0, !dbg !29
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !32

.lr.ph:                                           ; preds = %0
  %2 = add i32 %length, -1, !dbg !32
  br label %3, !dbg !32

; <label>:3                                       ; preds = %10, %.lr.ph
  %blank.010 = phi i32 [ 0, %.lr.ph ], [ %blank.12, %10 ]
  %i.09 = phi i32 [ 0, %.lr.ph ], [ %12, %10 ]
  %.07 = phi i8* [ %s1, %.lr.ph ], [ %11, %10 ]
  %.016 = phi i8* [ %s2, %.lr.ph ], [ %.1, %10 ]
  %4 = icmp eq i32 %blank.010, 0, !dbg !33
  br i1 %4, label %5, label %select.unfold, !dbg !36

; <label>:5                                       ; preds = %3
  %6 = load i8* %.016, align 1, !dbg !37, !tbaa !39
  %7 = icmp eq i8 %6, 0, !dbg !42
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !18, metadata !23), !dbg !27
  br i1 %7, label %select.unfold, label %8

; <label>:8                                       ; preds = %5
  store i8 %6, i8* %.07, align 1, !dbg !44, !tbaa !39
  %9 = getelementptr inbounds i8* %.016, i64 1, !dbg !47
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !14, metadata !23), !dbg !25
  br label %10, !dbg !48

select.unfold:                                    ; preds = %5, %3
  %blank.1.ph = phi i32 [ %blank.010, %3 ], [ 1, %5 ]
  store i8 32, i8* %.07, align 1, !dbg !49, !tbaa !39
  br label %10

; <label>:10                                      ; preds = %select.unfold, %8
  %blank.12 = phi i32 [ 0, %8 ], [ %blank.1.ph, %select.unfold ]
  %.1 = phi i8* [ %9, %8 ], [ %.016, %select.unfold ]
  %11 = getelementptr inbounds i8* %.07, i64 1, !dbg !50
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !13, metadata !23), !dbg !24
  %12 = add nuw nsw i32 %i.09, 1, !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !17, metadata !23), !dbg !28
  %exitcond = icmp eq i32 %i.09, %2, !dbg !32
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !32

._crit_edge:                                      ; preds = %10, %0
  ret i32 0, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/strcpy1.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "strcpy1", scope: !1, file: !1, line: 24, type: !5, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @strcpy1, variables: !12)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !10, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !4, file: !1, line: 24, type: !8)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !4, file: !1, line: 24, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 3, scope: !4, file: !1, line: 24, type: !7)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !4, file: !1, line: 26, type: !7)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !4, file: !1, line: 26, type: !7)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blank", scope: !4, file: !1, line: 26, type: !7)
!19 = !{i32 2, !"Dwarf Version", i32 2}
!20 = !{i32 2, !"Debug Info Version", i32 700000003}
!21 = !{i32 1, !"PIC Level", i32 2}
!22 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!23 = !DIExpression()
!24 = !DILocation(line: 24, column: 19, scope: !4)
!25 = !DILocation(line: 24, column: 35, scope: !4)
!26 = !DILocation(line: 24, column: 43, scope: !4)
!27 = !DILocation(line: 26, column: 11, scope: !4)
!28 = !DILocation(line: 26, column: 9, scope: !4)
!29 = !DILocation(line: 28, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 28, column: 3)
!31 = distinct !DILexicalBlock(scope: !4, file: !1, line: 28, column: 3)
!32 = !DILocation(line: 28, column: 3, scope: !31)
!33 = !DILocation(line: 29, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 29, column: 10)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 28, column: 25)
!36 = !DILocation(line: 29, column: 10, scope: !35)
!37 = !DILocation(line: 30, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 29, column: 19)
!39 = !{!40, !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 31, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 31, column: 7)
!44 = !DILocation(line: 33, column: 24, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 33, column: 20)
!46 = distinct !DILexicalBlock(scope: !35, file: !1, line: 33, column: 10)
!47 = !DILocation(line: 33, column: 31, scope: !45)
!48 = !DILocation(line: 33, column: 34, scope: !45)
!49 = !DILocation(line: 34, column: 15, scope: !46)
!50 = !DILocation(line: 35, column: 9, scope: !35)
!51 = !DILocation(line: 28, column: 21, scope: !30)
!52 = !DILocation(line: 37, column: 3, scope: !4)
