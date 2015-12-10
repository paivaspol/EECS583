; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xstrdup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @xstrdup(i8* %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !12, metadata !24), !dbg !25
  %1 = tail call i64 @strlen(i8* %s) #5, !dbg !26
  %2 = add i64 %1, 1, !dbg !27
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !13, metadata !24), !dbg !28
  %3 = tail call noalias i8* @xmalloc(i64 %2) #5, !dbg !29
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !19, metadata !24), !dbg !30
  %4 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false), !dbg !31
  %5 = tail call i8* @__memcpy_chk(i8* %3, i8* %s, i64 %2, i64 %4) #5, !dbg !31
  ret i8* %3, !dbg !32
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xstrdup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "xstrdup", scope: !1, file: !1, line: 25, type: !5, isLocal: false, isDefinition: true, scopeLine: 27, isOptimized: true, function: i8* (i8*)* @xstrdup, variables: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!11 = !{!12, !13, !19}
!12 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !4, file: !1, line: 26, type: !9)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !4, file: !1, line: 28, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 30, baseType: !16)
!15 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !17, line: 92, baseType: !18)
!17 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !4, file: !1, line: 29, type: !7)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DIExpression()
!25 = !DILocation(line: 26, column: 15, scope: !4)
!26 = !DILocation(line: 28, column: 25, scope: !4)
!27 = !DILocation(line: 28, column: 36, scope: !4)
!28 = !DILocation(line: 28, column: 19, scope: !4)
!29 = !DILocation(line: 29, column: 24, scope: !4)
!30 = !DILocation(line: 29, column: 18, scope: !4)
!31 = !DILocation(line: 30, column: 3, scope: !4)
!32 = !DILocation(line: 31, column: 3, scope: !4)
