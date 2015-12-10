; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/revcomp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@_DefaultRuneLocale = external global %struct._RuneLocale
@switch.table = private unnamed_addr constant [25 x i8] c"TVGHTTCDTTMTKTTTTYSAABWTR"

; Function Attrs: nounwind optsize ssp uwtable
define i8* @revcomp(i8* %comp, i8* %seq) #0 {
  tail call void @llvm.dbg.value(metadata i8* %comp, i64 0, metadata !13, metadata !39), !dbg !40
  tail call void @llvm.dbg.value(metadata i8* %seq, i64 0, metadata !14, metadata !39), !dbg !41
  %1 = icmp eq i8* %comp, null, !dbg !42
  %2 = icmp eq i8* %seq, null, !dbg !44
  %or.cond = or i1 %1, %2, !dbg !46
  br i1 %or.cond, label %.loopexit, label %3, !dbg !46

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @StrReverse(i8* %comp, i8* %seq) #3, !dbg !47
  tail call void @llvm.dbg.value(metadata i8* %comp, i64 0, metadata !15, metadata !39), !dbg !48
  %5 = load i8* %comp, align 1, !dbg !49, !tbaa !52
  %6 = icmp eq i8 %5, 0, !dbg !55
  br i1 %6, label %.loopexit, label %.lr.ph, !dbg !56

.lr.ph:                                           ; preds = %3, %29
  %7 = phi i8 [ %31, %29 ], [ %5, %3 ]
  %s.02 = phi i8* [ %30, %29 ], [ %comp, %3 ]
  %8 = sext i8 %7 to i32, !dbg !49
  tail call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !16, metadata !39), !dbg !57
  %9 = tail call i32 @sre_toupper(i32 %8) #3, !dbg !58
  %10 = trunc i32 %9 to i8, !dbg !58
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !16, metadata !39), !dbg !57
  %sext = shl i32 %9, 24, !dbg !60
  %11 = ashr exact i32 %sext, 24, !dbg !60
  %switch.tableidx = add nsw i32 %11, -65, !dbg !61
  %12 = icmp ult i32 %switch.tableidx, 25, !dbg !61
  br i1 %12, label %switch.hole_check, label %15, !dbg !61

switch.hole_check:                                ; preds = %.lr.ph
  %switch.shifted = lshr i32 25040079, %switch.tableidx, !dbg !61
  %13 = and i32 %switch.shifted, 1, !dbg !61
  %switch.lobit = icmp eq i32 %13, 0, !dbg !61
  br i1 %switch.lobit, label %15, label %switch.lookup, !dbg !61

switch.lookup:                                    ; preds = %switch.hole_check
  %14 = sext i32 %switch.tableidx to i64, !dbg !61
  %switch.gep = getelementptr inbounds [25 x i8]* @switch.table, i64 0, i64 %14, !dbg !61
  %switch.load = load i8* %switch.gep, align 1, !dbg !61
  br label %15, !dbg !61

; <label>:15                                      ; preds = %switch.hole_check, %switch.lookup, %.lr.ph
  %c.0 = phi i8 [ %10, %.lr.ph ], [ %10, %switch.hole_check ], [ %switch.load, %switch.lookup ]
  %16 = load i8* %s.02, align 1, !dbg !62, !tbaa !52
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !22, metadata !39) #4, !dbg !64
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !30, metadata !39) #4, !dbg !66
  tail call void @llvm.dbg.value(metadata i64 4096, i64 0, metadata !31, metadata !39) #4, !dbg !68
  %isascii.i.i1 = icmp sgt i8 %16, -1, !dbg !69
  br i1 %isascii.i.i1, label %17, label %22, !dbg !69

; <label>:17                                      ; preds = %15
  %18 = sext i8 %16 to i64, !dbg !70
  %19 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %18, !dbg !70
  %20 = load i32* %19, align 4, !dbg !70, !tbaa !71
  %21 = and i32 %20, 4096, !dbg !73
  br label %islower.exit, !dbg !69

; <label>:22                                      ; preds = %15
  %23 = sext i8 %16 to i32, !dbg !74
  %24 = tail call i32 @__maskrune(i32 %23, i64 4096) #3, !dbg !75
  br label %islower.exit, !dbg !69

islower.exit:                                     ; preds = %17, %22
  %.sink.i.in.i = phi i32 [ %21, %17 ], [ %24, %22 ], !dbg !76
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !77
  br i1 %.sink.i.i, label %29, label %25, !dbg !78

; <label>:25                                      ; preds = %islower.exit
  %26 = sext i8 %c.0 to i32, !dbg !79
  %27 = tail call i32 @sre_tolower(i32 %26) #3, !dbg !80
  %28 = trunc i32 %27 to i8, !dbg !81
  tail call void @llvm.dbg.value(metadata i8 %28, i64 0, metadata !16, metadata !39), !dbg !57
  br label %29, !dbg !82

; <label>:29                                      ; preds = %islower.exit, %25
  %c.1 = phi i8 [ %28, %25 ], [ %c.0, %islower.exit ]
  store i8 %c.1, i8* %s.02, align 1, !dbg !83, !tbaa !52
  %30 = getelementptr inbounds i8* %s.02, i64 1, !dbg !84
  tail call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !15, metadata !39), !dbg !48
  %31 = load i8* %30, align 1, !dbg !49, !tbaa !52
  %32 = icmp eq i8 %31, 0, !dbg !55
  br i1 %32, label %.loopexit, label %.lr.ph, !dbg !56

.loopexit:                                        ; preds = %29, %3, %0
  %.0 = phi i8* [ null, %0 ], [ %comp, %3 ], [ %comp, %29 ]
  ret i8* %.0, !dbg !85
}

; Function Attrs: optsize
declare i32 @StrReverse(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #1

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #1

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/revcomp.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{!8, !17, !23, !32}
!8 = !DISubprogram(name: "revcomp", scope: !1, file: !1, line: 35, type: !9, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*)* @revcomp, variables: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!12 = !{!13, !14, !15, !16}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "comp", arg: 1, scope: !8, file: !1, line: 35, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 2, scope: !8, file: !1, line: 35, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !8, file: !1, line: 37, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !8, file: !1, line: 38, type: !6)
!17 = !DISubprogram(name: "islower", scope: !18, file: !18, line: 249, type: !19, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, variables: !21)
!18 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DISubroutineType(types: !20)
!20 = !{!5, !5}
!21 = !{!22}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !17, file: !18, line: 249, type: !5)
!23 = !DISubprogram(name: "__istype", scope: !18, file: !18, line: 153, type: !24, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!5, !26, !28}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !27, line: 70, baseType: !5)
!27 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!28 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!29 = !{!30, !31}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !23, file: !18, line: 153, type: !26)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !23, file: !18, line: 153, type: !28)
!32 = !DISubprogram(name: "isascii", scope: !18, file: !18, line: 135, type: !19, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !32, file: !18, line: 135, type: !5)
!35 = !{i32 2, !"Dwarf Version", i32 2}
!36 = !{i32 2, !"Debug Info Version", i32 700000003}
!37 = !{i32 1, !"PIC Level", i32 2}
!38 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!39 = !DIExpression()
!40 = !DILocation(line: 35, column: 15, scope: !8)
!41 = !DILocation(line: 35, column: 27, scope: !8)
!42 = !DILocation(line: 40, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !8, file: !1, line: 40, column: 7)
!44 = !DILocation(line: 41, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !8, file: !1, line: 41, column: 7)
!46 = !DILocation(line: 40, column: 7, scope: !8)
!47 = !DILocation(line: 43, column: 3, scope: !8)
!48 = !DILocation(line: 37, column: 9, scope: !8)
!49 = !DILocation(line: 44, column: 18, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 44, column: 3)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 44, column: 3)
!52 = !{!53, !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 44, column: 21, scope: !50)
!56 = !DILocation(line: 44, column: 3, scope: !51)
!57 = !DILocation(line: 38, column: 9, scope: !8)
!58 = !DILocation(line: 47, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 45, column: 5)
!60 = !DILocation(line: 48, column: 15, scope: !59)
!61 = !DILocation(line: 48, column: 7, scope: !59)
!62 = !DILocation(line: 66, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 66, column: 11)
!64 = !DILocation(line: 249, column: 13, scope: !17, inlinedAt: !65)
!65 = distinct !DILocation(line: 66, column: 11, scope: !63)
!66 = !DILocation(line: 153, column: 29, scope: !23, inlinedAt: !67)
!67 = distinct !DILocation(line: 251, column: 10, scope: !17, inlinedAt: !65)
!68 = !DILocation(line: 153, column: 47, scope: !23, inlinedAt: !67)
!69 = !DILocation(line: 158, column: 10, scope: !23, inlinedAt: !67)
!70 = !DILocation(line: 158, column: 27, scope: !23, inlinedAt: !67)
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !53, i64 0}
!73 = !DILocation(line: 158, column: 25, scope: !23, inlinedAt: !67)
!74 = !DILocation(line: 66, column: 19, scope: !63)
!75 = !DILocation(line: 159, column: 7, scope: !23, inlinedAt: !67)
!76 = !DILocation(line: 66, column: 11, scope: !63)
!77 = !DILocation(line: 251, column: 10, scope: !17, inlinedAt: !65)
!78 = !DILocation(line: 66, column: 11, scope: !59)
!79 = !DILocation(line: 66, column: 53, scope: !63)
!80 = !DILocation(line: 66, column: 41, scope: !63)
!81 = !DILocation(line: 66, column: 34, scope: !63)
!82 = !DILocation(line: 66, column: 30, scope: !63)
!83 = !DILocation(line: 67, column: 10, scope: !59)
!84 = !DILocation(line: 44, column: 31, scope: !50)
!85 = !DILocation(line: 70, column: 1, scope: !8)
