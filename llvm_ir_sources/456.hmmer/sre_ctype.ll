; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_ctype.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i32 @sre_tolower(i32 %c) #0 {
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !9, metadata !42), !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !16, metadata !42) #3, !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !24, metadata !42) #3, !dbg !47
  tail call void @llvm.dbg.value(metadata i64 32768, i64 0, metadata !25, metadata !42) #3, !dbg !49
  %isascii.i.i = icmp ult i32 %c, 128, !dbg !50
  br i1 %isascii.i.i, label %1, label %6, !dbg !50

; <label>:1                                       ; preds = %0
  %2 = sext i32 %c to i64, !dbg !51
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2, !dbg !51
  %4 = load i32* %3, align 4, !dbg !51, !tbaa !52
  %5 = and i32 %4, 32768, !dbg !56
  br label %isupper.exit, !dbg !50

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @__maskrune(i32 %c, i64 32768) #4, !dbg !57
  br label %isupper.exit, !dbg !50

isupper.exit:                                     ; preds = %1, %6
  %.sink.i.in.i = phi i32 [ %5, %1 ], [ %7, %6 ], !dbg !58
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !59
  br i1 %.sink.i.i, label %10, label %8, !dbg !60

; <label>:8                                       ; preds = %isupper.exit
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !31, metadata !42) #3, !dbg !61
  %9 = tail call i32 @__tolower(i32 %c) #4, !dbg !63
  br label %10, !dbg !64

; <label>:10                                      ; preds = %isupper.exit, %8
  %.0 = phi i32 [ %9, %8 ], [ %c, %isupper.exit ]
  ret i32 %.0, !dbg !65
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @sre_toupper(i32 %c) #0 {
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !12, metadata !42), !dbg !66
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !34, metadata !42) #3, !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !24, metadata !42) #3, !dbg !70
  tail call void @llvm.dbg.value(metadata i64 4096, i64 0, metadata !25, metadata !42) #3, !dbg !72
  %isascii.i.i = icmp ult i32 %c, 128, !dbg !73
  br i1 %isascii.i.i, label %1, label %6, !dbg !73

; <label>:1                                       ; preds = %0
  %2 = sext i32 %c to i64, !dbg !74
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2, !dbg !74
  %4 = load i32* %3, align 4, !dbg !74, !tbaa !52
  %5 = and i32 %4, 4096, !dbg !75
  br label %islower.exit, !dbg !73

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @__maskrune(i32 %c, i64 4096) #4, !dbg !76
  br label %islower.exit, !dbg !73

islower.exit:                                     ; preds = %1, %6
  %.sink.i.in.i = phi i32 [ %5, %1 ], [ %7, %6 ], !dbg !77
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !78
  br i1 %.sink.i.i, label %10, label %8, !dbg !79

; <label>:8                                       ; preds = %islower.exit
  tail call void @llvm.dbg.value(metadata i32 %c, i64 0, metadata !37, metadata !42) #3, !dbg !80
  %9 = tail call i32 @__toupper(i32 %c) #4, !dbg !82
  br label %10, !dbg !83

; <label>:10                                      ; preds = %islower.exit, %8
  %.0 = phi i32 [ %9, %8 ], [ %c, %islower.exit ]
  ret i32 %.0, !dbg !84
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: optsize
declare i32 @__tolower(i32) #1

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_ctype.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !13, !17, !26, !29, !32, !35}
!4 = !DISubprogram(name: "sre_tolower", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @sre_tolower, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !4, file: !1, line: 25, type: !7)
!10 = !DISubprogram(name: "sre_toupper", scope: !1, file: !1, line: 32, type: !5, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @sre_toupper, variables: !11)
!11 = !{!12}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !10, file: !1, line: 32, type: !7)
!13 = !DISubprogram(name: "isupper", scope: !14, file: !14, line: 273, type: !5, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, variables: !15)
!14 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !{!16}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !13, file: !14, line: 273, type: !7)
!17 = !DISubprogram(name: "__istype", scope: !14, file: !14, line: 153, type: !18, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!7, !20, !22}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !21, line: 70, baseType: !7)
!21 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !17, file: !14, line: 153, type: !20)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !17, file: !14, line: 153, type: !22)
!26 = !DISubprogram(name: "isascii", scope: !14, file: !14, line: 135, type: !5, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !27)
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !26, file: !14, line: 135, type: !7)
!29 = !DISubprogram(name: "tolower", scope: !14, file: !14, line: 292, type: !5, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !30)
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !29, file: !14, line: 292, type: !7)
!32 = !DISubprogram(name: "islower", scope: !14, file: !14, line: 249, type: !5, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, variables: !33)
!33 = !{!34}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !32, file: !14, line: 249, type: !7)
!35 = !DISubprogram(name: "toupper", scope: !14, file: !14, line: 298, type: !5, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !36)
!36 = !{!37}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !35, file: !14, line: 298, type: !7)
!38 = !{i32 2, !"Dwarf Version", i32 2}
!39 = !{i32 2, !"Debug Info Version", i32 700000003}
!40 = !{i32 1, !"PIC Level", i32 2}
!41 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!42 = !DIExpression()
!43 = !DILocation(line: 25, column: 17, scope: !4)
!44 = !DILocation(line: 273, column: 13, scope: !13, inlinedAt: !45)
!45 = distinct !DILocation(line: 27, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !4, file: !1, line: 27, column: 7)
!47 = !DILocation(line: 153, column: 29, scope: !17, inlinedAt: !48)
!48 = distinct !DILocation(line: 275, column: 10, scope: !13, inlinedAt: !45)
!49 = !DILocation(line: 153, column: 47, scope: !17, inlinedAt: !48)
!50 = !DILocation(line: 158, column: 10, scope: !17, inlinedAt: !48)
!51 = !DILocation(line: 158, column: 27, scope: !17, inlinedAt: !48)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 158, column: 25, scope: !17, inlinedAt: !48)
!57 = !DILocation(line: 159, column: 7, scope: !17, inlinedAt: !48)
!58 = !DILocation(line: 27, column: 7, scope: !46)
!59 = !DILocation(line: 275, column: 10, scope: !13, inlinedAt: !45)
!60 = !DILocation(line: 27, column: 7, scope: !4)
!61 = !DILocation(line: 292, column: 13, scope: !29, inlinedAt: !62)
!62 = distinct !DILocation(line: 27, column: 26, scope: !46)
!63 = !DILocation(line: 294, column: 17, scope: !29, inlinedAt: !62)
!64 = !DILocation(line: 27, column: 19, scope: !46)
!65 = !DILocation(line: 29, column: 1, scope: !4)
!66 = !DILocation(line: 32, column: 17, scope: !10)
!67 = !DILocation(line: 249, column: 13, scope: !32, inlinedAt: !68)
!68 = distinct !DILocation(line: 34, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 7)
!70 = !DILocation(line: 153, column: 29, scope: !17, inlinedAt: !71)
!71 = distinct !DILocation(line: 251, column: 10, scope: !32, inlinedAt: !68)
!72 = !DILocation(line: 153, column: 47, scope: !17, inlinedAt: !71)
!73 = !DILocation(line: 158, column: 10, scope: !17, inlinedAt: !71)
!74 = !DILocation(line: 158, column: 27, scope: !17, inlinedAt: !71)
!75 = !DILocation(line: 158, column: 25, scope: !17, inlinedAt: !71)
!76 = !DILocation(line: 159, column: 7, scope: !17, inlinedAt: !71)
!77 = !DILocation(line: 34, column: 7, scope: !69)
!78 = !DILocation(line: 251, column: 10, scope: !32, inlinedAt: !68)
!79 = !DILocation(line: 34, column: 7, scope: !10)
!80 = !DILocation(line: 298, column: 13, scope: !35, inlinedAt: !81)
!81 = distinct !DILocation(line: 34, column: 26, scope: !69)
!82 = !DILocation(line: 300, column: 17, scope: !35, inlinedAt: !81)
!83 = !DILocation(line: 34, column: 19, scope: !69)
!84 = !DILocation(line: 36, column: 1, scope: !10)
