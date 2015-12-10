; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_Time() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !dbg !29, !tbaa !30
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !9, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !36), !dbg !37
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !38
  %3 = icmp eq i32 %2, 0, !dbg !38
  br i1 %3, label %4, label %9, !dbg !40

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !41
  %6 = icmp eq i32 %5, 0, !dbg !41
  br i1 %6, label %7, label %9, !dbg !43

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !44
  br label %9, !dbg !45

; <label>:9                                       ; preds = %4, %0, %7
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !21, metadata !36), !dbg !29
  ret i32 0, !dbg !46
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
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryTime.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_Time", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_Time, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !13, !15, !18, !19, !20, !21, !24}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !4, file: !1, line: 32, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_fac", scope: !4, file: !1, line: 32, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !4, file: !1, line: 32, type: !16)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep", scope: !4, file: !1, line: 32, type: !16)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outtimestep_every", scope: !4, file: !1, line: 32, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!25 = !{i32 2, !"Dwarf Version", i32 2}
!26 = !{i32 2, !"Debug Info Version", i32 700000003}
!27 = !{i32 1, !"PIC Level", i32 2}
!28 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!29 = !DILocation(line: 32, column: 3, scope: !4)
!30 = !{!31, !32, i64 0}
!31 = !{!"", !32, i64 0, !35, i64 8}
!32 = !{!"any pointer", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!"int", !33, i64 0}
!36 = !DIExpression()
!37 = !DILocation(line: 33, column: 7, scope: !4)
!38 = !DILocation(line: 37, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !4, file: !1, line: 37, column: 5)
!40 = !DILocation(line: 37, column: 5, scope: !4)
!41 = !DILocation(line: 44, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 44, column: 10)
!43 = !DILocation(line: 44, column: 57, scope: !42)
!44 = !DILocation(line: 46, column: 10, scope: !42)
!45 = !DILocation(line: 44, column: 10, scope: !39)
!46 = !DILocation(line: 62, column: 26, scope: !4)
