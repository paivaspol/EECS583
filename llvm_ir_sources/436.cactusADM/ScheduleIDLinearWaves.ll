; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIDLinearWaves.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = external global %struct.anon.0
@.str = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"idlinearwaves\00", align 1
@.str3 = private unnamed_addr constant [40 x i8] c"Construct linear planewave initial data\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1
@.str7 = private unnamed_addr constant [45 x i8] c"Construct linear Teukolsky wave initial data\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_IDLinearWaves() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @einsteinrest_, i64 0, i32 7), align 8, !dbg !38, !tbaa !39
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !28, metadata !46), !dbg !38
  %2 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) #3, !dbg !47
  %3 = icmp eq i32 %2, 0, !dbg !47
  br i1 %3, label %6, label %4, !dbg !49

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @planewaves_ to i8*), i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !50
  br label %6, !dbg !52

; <label>:6                                       ; preds = %0, %4
  %7 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !53
  %8 = icmp eq i32 %7, 0, !dbg !53
  br i1 %8, label %11, label %9, !dbg !55

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @teukwaves_ to i8*), i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !56
  br label %11, !dbg !58

; <label>:11                                      ; preds = %6, %9
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !46), !dbg !38
  ret void, !dbg !59
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @planewaves_() #1

; Function Attrs: optsize
declare i32 @teukwaves_() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleIDLinearWaves.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_IDLinearWaves", scope: !1, file: !1, line: 32, type: !7, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_IDLinearWaves, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !18, !22, !23, !24, !25, !28, !29, !30, !31}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "amplitude", scope: !6, file: !1, line: 34, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecenter", scope: !6, file: !1, line: 34, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavelength", scope: !6, file: !1, line: 34, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavephi", scope: !6, file: !1, line: 34, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavepulse", scope: !6, file: !1, line: 34, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavetheta", scope: !6, file: !1, line: 34, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "packet", scope: !6, file: !1, line: 34, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parity", scope: !6, file: !1, line: 34, type: !19)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "teuk_no_vee", scope: !6, file: !1, line: 34, type: !19)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavesgoing", scope: !6, file: !1, line: 34, type: !19)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mvalue", scope: !6, file: !1, line: 34, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !6, file: !1, line: 34, type: !19)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !6, file: !1, line: 34, type: !26)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !6, file: !1, line: 34, type: !26)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 34, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !{i32 2, !"Dwarf Version", i32 2}
!35 = !{i32 2, !"Debug Info Version", i32 700000003}
!36 = !{i32 1, !"PIC Level", i32 2}
!37 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!38 = !DILocation(line: 34, column: 3, scope: !6)
!39 = !{!40, !44, i64 56}
!40 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !44, i64 104, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136}
!41 = !{!"double", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"any pointer", !42, i64 0}
!45 = !{!"int", !42, i64 0}
!46 = !DIExpression()
!47 = !DILocation(line: 35, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !6, file: !1, line: 35, column: 5)
!49 = !DILocation(line: 35, column: 5, scope: !6)
!50 = !DILocation(line: 39, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 37, column: 1)
!52 = !DILocation(line: 56, column: 1, scope: !51)
!53 = !DILocation(line: 58, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !6, file: !1, line: 58, column: 5)
!55 = !DILocation(line: 58, column: 5, scope: !6)
!56 = !DILocation(line: 62, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 60, column: 1)
!58 = !DILocation(line: 79, column: 1, scope: !57)
!59 = !DILocation(line: 82, column: 22, scope: !6)
