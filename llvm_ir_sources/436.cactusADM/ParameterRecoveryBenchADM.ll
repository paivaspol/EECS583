; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.1 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [4 x i8] c"ADM\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_BenchADM() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon.1* @einsteinrest_, i64 0, i32 6), align 8, !dbg !28, !tbaa !29
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !16, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !23, metadata !36), !dbg !37
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #3, !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !20, metadata !36), !dbg !28
  ret i32 0, !dbg !40
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryBenchADM.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_BenchADM", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_BenchADM, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !13, !14, !16, !17, !18, !19, !20, !23}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound", scope: !4, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time_symmetric", scope: !4, file: !1, line: 32, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !4, file: !1, line: 32, type: !10)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !4, file: !1, line: 32, type: !10)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !4, file: !1, line: 32, type: !10)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !4, file: !1, line: 32, type: !15)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!24 = !{i32 2, !"Dwarf Version", i32 2}
!25 = !{i32 2, !"Debug Info Version", i32 700000003}
!26 = !{i32 1, !"PIC Level", i32 2}
!27 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!28 = !DILocation(line: 32, column: 3, scope: !4)
!29 = !{!30, !34, i64 48}
!30 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !34, i64 104, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136}
!31 = !{!"double", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !{!"any pointer", !32, i64 0}
!35 = !{!"int", !32, i64 0}
!36 = !DIExpression()
!37 = !DILocation(line: 33, column: 7, scope: !4)
!38 = !DILocation(line: 36, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !4, file: !1, line: 36, column: 5)
!40 = !DILocation(line: 62, column: 26, scope: !4)
