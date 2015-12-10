; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@iteration = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultMainLoopIndex.c,v 1.3 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultMainLoopIndex_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str, i64 0, i64 0), !dbg !26
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CactusDefaultMainLoopIndex() #1 {
  %1 = load i32* @iteration, align 4, !dbg !27, !tbaa !28
  ret i32 %1, !dbg !32
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultSetMainLoopIndex(i32 %main_loop_index) #2 {
  tail call void @llvm.dbg.value(metadata i32 %main_loop_index, i64 0, metadata !18, metadata !33), !dbg !34
  store i32 %main_loop_index, i32* @iteration, align 4, !dbg !35, !tbaa !28
  ret i32 %main_loop_index, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !19, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultMainLoopIndex.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !14}
!4 = !DISubprogram(name: "CCTKi_version_main_CactusDefaultMainLoopIndex_c", scope: !1, file: !1, line: 18, type: !5, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_CactusDefaultMainLoopIndex_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CactusDefaultMainLoopIndex", scope: !1, file: !1, line: 39, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CactusDefaultMainLoopIndex, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "CactusDefaultSetMainLoopIndex", scope: !1, file: !1, line: 59, type: !15, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CactusDefaultSetMainLoopIndex, variables: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!13, !13}
!17 = !{!18}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "main_loop_index", arg: 1, scope: !14, file: !1, line: 59, type: !13)
!19 = !{!20, !21}
!20 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 16, type: !7, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariable(name: "iteration", scope: !0, file: !1, line: 20, type: !13, isLocal: true, isDefinition: true, variable: i32* @iteration)
!22 = !{i32 2, !"Dwarf Version", i32 2}
!23 = !{i32 2, !"Debug Info Version", i32 700000003}
!24 = !{i32 1, !"PIC Level", i32 2}
!25 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!26 = !DILocation(line: 18, column: 1, scope: !4)
!27 = !DILocation(line: 41, column: 11, scope: !10)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 41, column: 3, scope: !10)
!33 = !DIExpression()
!34 = !DILocation(line: 59, column: 40, scope: !14)
!35 = !DILocation(line: 61, column: 13, scope: !14)
!36 = !DILocation(line: 62, column: 3, scope: !14)
