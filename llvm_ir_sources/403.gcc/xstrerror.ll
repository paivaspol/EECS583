; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xstrerror.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@xstrerror_buf = internal global [43 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"undocumented error #%d\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @xstrerror(i32 %errnum) #0 {
  tail call void @llvm.dbg.value(metadata i32 %errnum, i64 0, metadata !11, metadata !22), !dbg !23
  %1 = tail call i8* @strerror(i32 %errnum) #3, !dbg !24
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !12, metadata !22), !dbg !25
  %2 = icmp eq i8* %1, null, !dbg !26
  br i1 %2, label %3, label %5, !dbg !28

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), i32 0, i64 43, i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %errnum) #3, !dbg !29
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !12, metadata !22), !dbg !25
  br label %5, !dbg !31

; <label>:5                                       ; preds = %0, %3
  %errstr.0 = phi i8* [ %1, %0 ], [ getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), %3 ]
  ret i8* %errstr.0, !dbg !32
}

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !13, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xstrerror.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "xstrerror", scope: !1, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, scopeLine: 43, isOptimized: true, function: i8* (i32)* @xstrerror, variables: !10)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11, !12}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "errnum", arg: 1, scope: !4, file: !1, line: 42, type: !9)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errstr", scope: !4, file: !1, line: 44, type: !7)
!13 = !{!14}
!14 = !DIGlobalVariable(name: "xstrerror_buf", scope: !0, file: !1, line: 36, type: !15, isLocal: true, isDefinition: true, variable: [43 x i8]* @xstrerror_buf)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 344, align: 8, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 43)
!18 = !{i32 2, !"Dwarf Version", i32 2}
!19 = !{i32 2, !"Debug Info Version", i32 700000003}
!20 = !{i32 1, !"PIC Level", i32 2}
!21 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!22 = !DIExpression()
!23 = !DILocation(line: 42, column: 10, scope: !4)
!24 = !DILocation(line: 57, column: 12, scope: !4)
!25 = !DILocation(line: 44, column: 9, scope: !4)
!26 = !DILocation(line: 61, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !4, file: !1, line: 61, column: 7)
!28 = !DILocation(line: 61, column: 7, scope: !4)
!29 = !DILocation(line: 63, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 62, column: 5)
!31 = !DILocation(line: 65, column: 5, scope: !30)
!32 = !DILocation(line: 66, column: 3, scope: !4)
