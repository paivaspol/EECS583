; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xexit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@_xexit_cleanup = common global void ()* null, align 8

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @xexit(i32 %code) #0 {
  tail call void @llvm.dbg.value(metadata i32 %code, i64 0, metadata !11, metadata !21), !dbg !22
  %1 = load void ()** @_xexit_cleanup, align 8, !dbg !23, !tbaa !25
  %2 = icmp eq void ()* %1, null, !dbg !29
  br i1 %2, label %4, label %3, !dbg !30

; <label>:3                                       ; preds = %0
  tail call void %1() #3, !dbg !31
  br label %4, !dbg !31

; <label>:4                                       ; preds = %0, %3
  tail call void @exit(i32 %code) #4, !dbg !32
  unreachable, !dbg !32
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !12, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/xexit.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "xexit", scope: !1, file: !1, line: 45, type: !7, isLocal: false, isDefinition: true, scopeLine: 47, isOptimized: true, function: void (i32)* @xexit, variables: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 1, scope: !6, file: !1, line: 46, type: !9)
!12 = !{!13}
!13 = !DIGlobalVariable(name: "_xexit_cleanup", scope: !0, file: !1, line: 42, type: !14, isLocal: false, isDefinition: true, variable: void ()** @_xexit_cleanup)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !{i32 2, !"Dwarf Version", i32 2}
!18 = !{i32 2, !"Debug Info Version", i32 700000003}
!19 = !{i32 1, !"PIC Level", i32 2}
!20 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!21 = !DIExpression()
!22 = !DILocation(line: 46, column: 10, scope: !6)
!23 = !DILocation(line: 48, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !6, file: !1, line: 48, column: 7)
!25 = !{!26, !26, i64 0}
!26 = !{!"any pointer", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 48, column: 22, scope: !24)
!30 = !DILocation(line: 48, column: 7, scope: !6)
!31 = !DILocation(line: 49, column: 5, scope: !24)
!32 = !DILocation(line: 50, column: 3, scope: !6)
