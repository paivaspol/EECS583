; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xmalloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@name = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), align 8
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [32 x i8] c"\0A%s%sCannot allocate %lu bytes\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @xmalloc_set_program_name(i8* %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !13, metadata !48), !dbg !49
  store i8* %s, i8** @name, align 8, !dbg !50, !tbaa !51
  ret void, !dbg !55
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @xmalloc_failed(i64 %size) #1 {
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !20, metadata !48), !dbg !56
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !57, !tbaa !51
  %2 = load i8** @name, align 8, !dbg !58, !tbaa !51
  %3 = load i8* %2, align 1, !dbg !59, !tbaa !60
  %4 = icmp ne i8 %3, 0, !dbg !59
  %5 = select i1 %4, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), !dbg !59
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0), i8* %2, i8* %5, i64 %size) #5, !dbg !61
  tail call void @xexit(i32 1) #6, !dbg !62
  unreachable, !dbg !62
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @xexit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @xmalloc(i64 %size) #0 {
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !26, metadata !48), !dbg !63
  %1 = icmp eq i64 %size, 0, !dbg !64
  %.size = select i1 %1, i64 1, i64 %size, !dbg !66
  tail call void @llvm.dbg.value(metadata i64 %.size, i64 0, metadata !26, metadata !48), !dbg !63
  %2 = tail call i8* @malloc(i64 %.size) #5, !dbg !67
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !27, metadata !48), !dbg !68
  %3 = icmp eq i8* %2, null, !dbg !69
  br i1 %3, label %4, label %5, !dbg !71

; <label>:4                                       ; preds = %0
  tail call void @xmalloc_failed(i64 %.size) #7, !dbg !72
  unreachable, !dbg !72

; <label>:5                                       ; preds = %0
  ret i8* %2, !dbg !73
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @xcalloc(i64 %nelem, i64 %elsize) #0 {
  tail call void @llvm.dbg.value(metadata i64 %nelem, i64 0, metadata !32, metadata !48), !dbg !74
  tail call void @llvm.dbg.value(metadata i64 %elsize, i64 0, metadata !33, metadata !48), !dbg !75
  %1 = icmp eq i64 %nelem, 0, !dbg !76
  %2 = icmp eq i64 %elsize, 0, !dbg !78
  %or.cond = or i1 %1, %2, !dbg !79
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !33, metadata !48), !dbg !75
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !32, metadata !48), !dbg !74
  %.elsize = select i1 %or.cond, i64 1, i64 %elsize, !dbg !79
  %.nelem = select i1 %or.cond, i64 1, i64 %nelem, !dbg !79
  %3 = tail call i8* @calloc(i64 %.nelem, i64 %.elsize) #5, !dbg !80
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !34, metadata !48), !dbg !81
  %4 = icmp eq i8* %3, null, !dbg !82
  br i1 %4, label %5, label %7, !dbg !84

; <label>:5                                       ; preds = %0
  %6 = mul i64 %.nelem, %.elsize, !dbg !85
  tail call void @xmalloc_failed(i64 %6) #7, !dbg !86
  unreachable, !dbg !86

; <label>:7                                       ; preds = %0
  ret i8* %3, !dbg !87
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @xrealloc(i8* %oldmem, i64 %size) #0 {
  tail call void @llvm.dbg.value(metadata i8* %oldmem, i64 0, metadata !39, metadata !48), !dbg !88
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !40, metadata !48), !dbg !89
  %1 = icmp eq i64 %size, 0, !dbg !90
  %.size = select i1 %1, i64 1, i64 %size, !dbg !92
  tail call void @llvm.dbg.value(metadata i64 %.size, i64 0, metadata !40, metadata !48), !dbg !89
  %2 = icmp eq i8* %oldmem, null, !dbg !93
  br i1 %2, label %3, label %5, !dbg !95

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @malloc(i64 %.size) #5, !dbg !96
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !41, metadata !48), !dbg !97
  br label %7, !dbg !98

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @realloc(i8* %oldmem, i64 %.size) #5, !dbg !99
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !41, metadata !48), !dbg !97
  br label %7

; <label>:7                                       ; preds = %5, %3
  %newmem.0 = phi i8* [ %6, %5 ], [ %4, %3 ]
  %8 = icmp eq i8* %newmem.0, null, !dbg !100
  br i1 %8, label %9, label %10, !dbg !102

; <label>:9                                       ; preds = %7
  tail call void @xmalloc_failed(i64 %.size) #7, !dbg !103
  unreachable, !dbg !103

; <label>:10                                      ; preds = %7
  ret i8* %newmem.0, !dbg !104
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { noreturn optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !42, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xmalloc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!5 = !{!6, !14, !21, !28, !35}
!6 = !DISubprogram(name: "xmalloc_set_program_name", scope: !1, file: !1, line: 97, type: !7, isLocal: false, isDefinition: true, scopeLine: 99, isOptimized: true, function: void (i8*)* @xmalloc_set_program_name, variables: !12)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !6, file: !1, line: 98, type: !9)
!14 = !DISubprogram(name: "xmalloc_failed", scope: !1, file: !1, line: 109, type: !15, isLocal: false, isDefinition: true, scopeLine: 111, isOptimized: true, function: void (i64)* @xmalloc_failed, variables: !19)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 62, baseType: !4)
!18 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stddef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !{!20}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !14, file: !1, line: 110, type: !17)
!21 = !DISubprogram(name: "xmalloc", scope: !1, file: !1, line: 134, type: !22, isLocal: false, isDefinition: true, scopeLine: 136, isOptimized: true, function: i8* (i64)* @xmalloc, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !17}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!25 = !{!26, !27}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !21, file: !1, line: 135, type: !17)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmem", scope: !21, file: !1, line: 137, type: !24)
!28 = !DISubprogram(name: "xcalloc", scope: !1, file: !1, line: 149, type: !29, isLocal: false, isDefinition: true, scopeLine: 151, isOptimized: true, function: i8* (i64, i64)* @xcalloc, variables: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!24, !17, !17}
!31 = !{!32, !33, !34}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 1, scope: !28, file: !1, line: 150, type: !17)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "elsize", arg: 2, scope: !28, file: !1, line: 150, type: !17)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmem", scope: !28, file: !1, line: 152, type: !24)
!35 = !DISubprogram(name: "xrealloc", scope: !1, file: !1, line: 165, type: !36, isLocal: false, isDefinition: true, scopeLine: 168, isOptimized: true, function: i8* (i8*, i64)* @xrealloc, variables: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{!24, !24, !17}
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldmem", arg: 1, scope: !35, file: !1, line: 166, type: !24)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !35, file: !1, line: 167, type: !17)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmem", scope: !35, file: !1, line: 169, type: !24)
!42 = !{!43}
!43 = !DIGlobalVariable(name: "name", scope: !0, file: !1, line: 88, type: !9, isLocal: true, isDefinition: true, variable: i8** @name)
!44 = !{i32 2, !"Dwarf Version", i32 2}
!45 = !{i32 2, !"Debug Info Version", i32 700000003}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!48 = !DIExpression()
!49 = !DILocation(line: 98, column: 18, scope: !6)
!50 = !DILocation(line: 100, column: 8, scope: !6)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 106, column: 1, scope: !6)
!56 = !DILocation(line: 110, column: 13, scope: !14)
!57 = !DILocation(line: 125, column: 12, scope: !14)
!58 = !DILocation(line: 127, column: 5, scope: !14)
!59 = !DILocation(line: 127, column: 11, scope: !14)
!60 = !{!53, !53, i64 0}
!61 = !DILocation(line: 125, column: 3, scope: !14)
!62 = !DILocation(line: 130, column: 3, scope: !14)
!63 = !DILocation(line: 135, column: 12, scope: !21)
!64 = !DILocation(line: 139, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !21, file: !1, line: 139, column: 7)
!66 = !DILocation(line: 139, column: 7, scope: !21)
!67 = !DILocation(line: 141, column: 12, scope: !21)
!68 = !DILocation(line: 137, column: 7, scope: !21)
!69 = !DILocation(line: 142, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !21, file: !1, line: 142, column: 7)
!71 = !DILocation(line: 142, column: 7, scope: !21)
!72 = !DILocation(line: 143, column: 5, scope: !70)
!73 = !DILocation(line: 145, column: 3, scope: !21)
!74 = !DILocation(line: 150, column: 10, scope: !28)
!75 = !DILocation(line: 150, column: 17, scope: !28)
!76 = !DILocation(line: 154, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !28, file: !1, line: 154, column: 7)
!78 = !DILocation(line: 154, column: 28, scope: !77)
!79 = !DILocation(line: 154, column: 18, scope: !77)
!80 = !DILocation(line: 157, column: 12, scope: !28)
!81 = !DILocation(line: 152, column: 7, scope: !28)
!82 = !DILocation(line: 158, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !28, file: !1, line: 158, column: 7)
!84 = !DILocation(line: 158, column: 7, scope: !28)
!85 = !DILocation(line: 159, column: 27, scope: !83)
!86 = !DILocation(line: 159, column: 5, scope: !83)
!87 = !DILocation(line: 161, column: 3, scope: !28)
!88 = !DILocation(line: 166, column: 9, scope: !35)
!89 = !DILocation(line: 167, column: 12, scope: !35)
!90 = !DILocation(line: 171, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !35, file: !1, line: 171, column: 7)
!92 = !DILocation(line: 171, column: 7, scope: !35)
!93 = !DILocation(line: 173, column: 8, scope: !94)
!94 = distinct !DILexicalBlock(scope: !35, file: !1, line: 173, column: 7)
!95 = !DILocation(line: 173, column: 7, scope: !35)
!96 = !DILocation(line: 174, column: 14, scope: !94)
!97 = !DILocation(line: 169, column: 7, scope: !35)
!98 = !DILocation(line: 174, column: 5, scope: !94)
!99 = !DILocation(line: 176, column: 14, scope: !94)
!100 = !DILocation(line: 177, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !35, file: !1, line: 177, column: 7)
!102 = !DILocation(line: 177, column: 7, scope: !35)
!103 = !DILocation(line: 178, column: 5, scope: !101)
!104 = !DILocation(line: 180, column: 3, scope: !35)
