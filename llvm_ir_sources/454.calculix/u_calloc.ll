; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/u_calloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str1 = private unnamed_addr constant [18 x i8] c"num=%zd,size=%zd\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"*ERROR in u_calloc: error allocating memory\00"

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @u_calloc(i64 %num, i64 %size) #0 {
  tail call void @llvm.dbg.value(metadata i64 %num, i64 0, metadata !15, metadata !22), !dbg !23
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !16, metadata !22), !dbg !24
  %1 = icmp eq i64 %num, 0, !dbg !25
  br i1 %1, label %7, label %2, !dbg !27

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @calloc(i64 %num, i64 %size) #5, !dbg !28
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !17, metadata !22), !dbg !29
  %4 = icmp eq i8* %3, null, !dbg !30
  br i1 %4, label %5, label %7, !dbg !32

; <label>:5                                       ; preds = %2
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str, i64 0, i64 0)), !dbg !33
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 %num, i64 %size) #5, !dbg !35
  tail call void @exit(i32 16) #6, !dbg !36
  unreachable, !dbg !36

; <label>:7                                       ; preds = %2, %0
  %.0 = phi i8* [ null, %0 ], [ %3, %2 ]
  ret i8* %.0, !dbg !37
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/u_calloc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "u_calloc", scope: !1, file: !1, line: 25, type: !7, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i64, i64)* @u_calloc, variables: !14)
!7 = !DISubroutineType(types: !8)
!8 = !{!4, !9, !9}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 30, baseType: !11)
!10 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !12, line: 92, baseType: !13)
!12 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 1, scope: !6, file: !1, line: 25, type: !9)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !6, file: !1, line: 25, type: !9)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !6, file: !1, line: 27, type: !4)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 700000003}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!22 = !DIExpression()
!23 = !DILocation(line: 25, column: 23, scope: !6)
!24 = !DILocation(line: 25, column: 34, scope: !6)
!25 = !DILocation(line: 28, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!27 = !DILocation(line: 28, column: 6, scope: !6)
!28 = !DILocation(line: 33, column: 5, scope: !6)
!29 = !DILocation(line: 27, column: 9, scope: !6)
!30 = !DILocation(line: 34, column: 7, scope: !31)
!31 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!32 = !DILocation(line: 34, column: 6, scope: !6)
!33 = !DILocation(line: 35, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 34, column: 14)
!35 = !DILocation(line: 39, column: 5, scope: !34)
!36 = !DILocation(line: 41, column: 5, scope: !34)
!37 = !DILocation(line: 46, column: 1, scope: !6)
