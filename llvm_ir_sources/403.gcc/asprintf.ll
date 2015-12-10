; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/asprintf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind optsize ssp uwtable
define i32 @asprintf(i8** %buf, i8* %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8** %buf, i64 0, metadata !14, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !15, metadata !38), !dbg !39
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !17, metadata !38), !dbg !40
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !40
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !40
  call void @llvm.va_start(i8* %2), !dbg !40
  %3 = call i32 @vasprintf(i8** %buf, i8* %fmt, %struct.__va_list_tag* %1) #4, !dbg !41
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !16, metadata !38), !dbg !43
  call void @llvm.va_end(i8* %2), !dbg !44
  ret i32 %3, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: optsize
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/asprintf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "asprintf", scope: !1, file: !1, line: 48, type: !5, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i8*, ...)* @asprintf, variables: !13)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !11, null}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!13 = !{!14, !15, !16, !17}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !4, file: !1, line: 48, type: !8)
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 2, scope: !4, file: !1, line: 48, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !4, file: !1, line: 50, type: !7)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !18, file: !1, line: 51, type: !19)
!18 = distinct !DILexicalBlock(scope: !4, file: !1, line: 51, column: 3)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 30, baseType: !21)
!20 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 51, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 64, elements: !32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 51, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 51, size: 192, align: 64, elements: !25)
!25 = !{!26, !28, !29, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, line: 51, baseType: !27, size: 32, align: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, line: 51, baseType: !27, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, line: 51, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, line: 51, baseType: !30, size: 64, align: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !{i32 2, !"Dwarf Version", i32 2}
!35 = !{i32 2, !"Debug Info Version", i32 700000003}
!36 = !{i32 1, !"PIC Level", i32 2}
!37 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!38 = !DIExpression()
!39 = !DILocation(line: 48, column: 10, scope: !4)
!40 = !DILocation(line: 51, column: 3, scope: !18)
!41 = !DILocation(line: 54, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 3)
!43 = !DILocation(line: 50, column: 7, scope: !4)
!44 = !DILocation(line: 55, column: 3, scope: !18)
!45 = !DILocation(line: 56, column: 3, scope: !4)
