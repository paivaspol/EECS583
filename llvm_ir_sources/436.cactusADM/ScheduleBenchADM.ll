; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i32 }
%struct.anon.1 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@benchadmpriv_ = external global %struct.anon.0
@einsteinrest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [17 x i8] c"Bench_ParamCheck\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"benchadm\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"Check parameters\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"BenchADM::ADM_metric_prev\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"BenchADM::ADM_curv_stag\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"BenchRegisterSlicing\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"Register slicings\00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Bench_PreLoop\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Setup for ADM\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"InitialEinstein\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"Bench_StaggeredLeapfrog1a_TS\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c"Time symmetric initial data for staggered leapfrog\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"InitialFlat\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"LapseOne\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"LapseGaussian\00", align 1
@.str24 = private unnamed_addr constant [26 x i8] c"Bench_StaggeredLeapfrog1a\00", align 1
@.str25 = private unnamed_addr constant [52 x i8] c"Time asymmetric initial data for staggered leapfrog\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"BenchADM::ADM_sources\00", align 1
@.str27 = private unnamed_addr constant [25 x i8] c"Bench_StaggeredLeapfrog2\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"Evolve using Staggered Leapfrog\00", align 1
@.str29 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_BenchADM() #0 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @benchadmpriv_, i64 0, i32 1), align 8, !dbg !29, !tbaa !30
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !15, metadata !36), !dbg !29
  %2 = load i8** getelementptr inbounds (%struct.anon.1* @einsteinrest_, i64 0, i32 6), align 8, !dbg !29, !tbaa !37
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !18, metadata !36), !dbg !29
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Bench_ParamCheck to i8*), i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !40
  %4 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !41
  %5 = icmp eq i32 %4, 0, !dbg !41
  br i1 %5, label %20, label %6, !dbg !43

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !44
  %8 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !46
  %9 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !47
  %10 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !48
  %11 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @BenchRegisterSlicing to i8*), i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !49
  %12 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_preloop_ to i8*), i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !50
  %13 = icmp eq i32 %1, 0, !dbg !51
  br i1 %13, label %16, label %14, !dbg !53

; <label>:14                                      ; preds = %6
  %15 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ts_ to i8*), i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !54
  br label %18, !dbg !56

; <label>:16                                      ; preds = %6
  %17 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ to i8*), i8* getelementptr inbounds ([26 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !57
  br label %18

; <label>:18                                      ; preds = %16, %14
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog2_ to i8*), i8* getelementptr inbounds ([25 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !59
  br label %20, !dbg !60

; <label>:20                                      ; preds = %0, %18
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !22, metadata !36), !dbg !29
  ret void, !dbg !61
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Bench_ParamCheck() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @BenchRegisterSlicing() #1

; Function Attrs: optsize
declare i32 @bench_preloop_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_ts_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog2_() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_BenchADM", scope: !1, file: !1, line: 36, type: !7, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_BenchADM, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !14, !15, !18, !19, !20, !21, !22}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !6, file: !1, line: 38, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bound", scope: !6, file: !1, line: 38, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time_symmetric", scope: !6, file: !1, line: 38, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !6, file: !1, line: 38, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !6, file: !1, line: 38, type: !11)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !6, file: !1, line: 38, type: !11)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !6, file: !1, line: 38, type: !16)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 38, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!25 = !{i32 2, !"Dwarf Version", i32 2}
!26 = !{i32 2, !"Debug Info Version", i32 700000003}
!27 = !{i32 1, !"PIC Level", i32 2}
!28 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!29 = !DILocation(line: 38, column: 3, scope: !6)
!30 = !{!31, !35, i64 8}
!31 = !{!"", !32, i64 0, !35, i64 8}
!32 = !{!"any pointer", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!"int", !33, i64 0}
!36 = !DIExpression()
!37 = !{!38, !32, i64 48}
!38 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136}
!39 = !{!"double", !33, i64 0}
!40 = !DILocation(line: 39, column: 3, scope: !6)
!41 = !DILocation(line: 56, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !6, file: !1, line: 56, column: 5)
!43 = !DILocation(line: 56, column: 5, scope: !6)
!44 = !DILocation(line: 60, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 58, column: 1)
!46 = !DILocation(line: 61, column: 3, scope: !45)
!47 = !DILocation(line: 63, column: 3, scope: !45)
!48 = !DILocation(line: 64, column: 3, scope: !45)
!49 = !DILocation(line: 66, column: 3, scope: !45)
!50 = !DILocation(line: 83, column: 3, scope: !45)
!51 = !DILocation(line: 101, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !45, file: !1, line: 101, column: 7)
!53 = !DILocation(line: 101, column: 7, scope: !45)
!54 = !DILocation(line: 105, column: 3, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 103, column: 3)
!56 = !DILocation(line: 127, column: 3, scope: !55)
!57 = !DILocation(line: 133, column: 3, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 131, column: 3)
!59 = !DILocation(line: 159, column: 3, scope: !45)
!60 = !DILocation(line: 177, column: 1, scope: !45)
!61 = !DILocation(line: 180, column: 22, scope: !6)
