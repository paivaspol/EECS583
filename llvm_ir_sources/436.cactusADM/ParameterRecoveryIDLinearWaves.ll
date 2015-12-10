; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = external global %struct.anon.0
@.str = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_IDLinearWaves() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @einsteinrest_, i64 0, i32 7), align 8, !dbg !37, !tbaa !38
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !26, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !45), !dbg !46
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) #3, !dbg !47
  %3 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !49
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !29, metadata !45), !dbg !37
  ret i32 0, !dbg !51
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
!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIDLinearWaves.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_IDLinearWaves", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_IDLinearWaves, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !12, !13, !14, !15, !16, !17, !21, !22, !23, !24, !26, !27, !28, !29, !32}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "amplitude", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecenter", scope: !4, file: !1, line: 32, type: !10)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavelength", scope: !4, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavephi", scope: !4, file: !1, line: 32, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavepulse", scope: !4, file: !1, line: 32, type: !10)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavetheta", scope: !4, file: !1, line: 32, type: !10)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "packet", scope: !4, file: !1, line: 32, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parity", scope: !4, file: !1, line: 32, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "teuk_no_vee", scope: !4, file: !1, line: 32, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavesgoing", scope: !4, file: !1, line: 32, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mvalue", scope: !4, file: !1, line: 32, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !4, file: !1, line: 32, type: !18)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !4, file: !1, line: 32, type: !25)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !4, file: !1, line: 32, type: !25)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!33 = !{i32 2, !"Dwarf Version", i32 2}
!34 = !{i32 2, !"Debug Info Version", i32 700000003}
!35 = !{i32 1, !"PIC Level", i32 2}
!36 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!37 = !DILocation(line: 32, column: 3, scope: !4)
!38 = !{!39, !43, i64 56}
!39 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136}
!40 = !{!"double", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"any pointer", !41, i64 0}
!44 = !{!"int", !41, i64 0}
!45 = !DIExpression()
!46 = !DILocation(line: 33, column: 7, scope: !4)
!47 = !DILocation(line: 35, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !4, file: !1, line: 35, column: 5)
!49 = !DILocation(line: 42, column: 5, scope: !50)
!50 = distinct !DILexicalBlock(scope: !4, file: !1, line: 42, column: 5)
!51 = !DILocation(line: 50, column: 26, scope: !4)
