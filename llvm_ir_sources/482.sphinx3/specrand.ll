; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/482.sphinx3/src/specrand.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@seedi = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind optsize ssp uwtable
define void @spec_srand(i32 %seed) #0 {
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !11, metadata !24), !dbg !25
  store i32 %seed, i32* @seedi, align 4, !dbg !26, !tbaa !27
  ret void, !dbg !31
}

; Function Attrs: nounwind optsize ssp uwtable
define double @spec_rand() #0 {
  %1 = load i32* @seedi, align 4, !dbg !32, !tbaa !27
  %2 = sext i32 %1 to i64, !dbg !32
  %3 = sdiv i64 %2, 127773, !dbg !33
  %4 = srem i64 %2, 127773, !dbg !34
  %5 = mul nsw i64 %4, 16807, !dbg !35
  %6 = mul nsw i64 %3, -2836, !dbg !36
  %7 = add i64 %5, %6, !dbg !36
  %8 = trunc i64 %7 to i32, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !17, metadata !24), !dbg !38
  %9 = icmp sgt i32 %8, 0, !dbg !39
  br i1 %9, label %13, label %10, !dbg !41

; <label>:10                                      ; preds = %0
  %11 = add i64 %7, 2147483647, !dbg !42
  %12 = trunc i64 %11 to i32, !dbg !44
  br label %13

; <label>:13                                      ; preds = %0, %10
  %storemerge = phi i32 [ %12, %10 ], [ %8, %0 ]
  store i32 %storemerge, i32* @seedi, align 4, !dbg !45, !tbaa !27
  %14 = sitofp i32 %storemerge to double, !dbg !47
  %15 = fdiv double %14, 0x41DFFFFFFFC00000, !dbg !48
  ret double %15, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !18, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/482.sphinx3/src/specrand.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!5 = !{!6, !12}
!6 = !DISubprogram(name: "spec_srand", scope: !1, file: !1, line: 16, type: !7, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @spec_srand, variables: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 1, scope: !6, file: !1, line: 16, type: !9)
!12 = !DISubprogram(name: "spec_rand", scope: !1, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @spec_rand, variables: !14)
!13 = !DISubroutineType(types: !3)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !12, file: !1, line: 31, type: !9)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !12, file: !1, line: 32, type: !9)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "test", scope: !12, file: !1, line: 33, type: !9)
!18 = !{!19}
!19 = !DIGlobalVariable(name: "seedi", scope: !0, file: !1, line: 14, type: !9, isLocal: true, isDefinition: true, variable: i32* @seedi)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DIExpression()
!25 = !DILocation(line: 16, column: 21, scope: !6)
!26 = !DILocation(line: 17, column: 9, scope: !6)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 18, column: 1, scope: !6)
!32 = !DILocation(line: 35, column: 8, scope: !12)
!33 = !DILocation(line: 35, column: 14, scope: !12)
!34 = !DILocation(line: 36, column: 14, scope: !12)
!35 = !DILocation(line: 37, column: 24, scope: !12)
!36 = !DILocation(line: 37, column: 29, scope: !12)
!37 = !DILocation(line: 37, column: 10, scope: !12)
!38 = !DILocation(line: 33, column: 7, scope: !12)
!39 = !DILocation(line: 38, column: 12, scope: !40)
!40 = distinct !DILexicalBlock(scope: !12, file: !1, line: 38, column: 7)
!41 = !DILocation(line: 38, column: 7, scope: !12)
!42 = !DILocation(line: 41, column: 18, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 40, column: 10)
!44 = !DILocation(line: 41, column: 13, scope: !43)
!45 = !DILocation(line: 39, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 38, column: 17)
!47 = !DILocation(line: 43, column: 12, scope: !12)
!48 = !DILocation(line: 43, column: 27, scope: !12)
!49 = !DILocation(line: 43, column: 3, scope: !12)
