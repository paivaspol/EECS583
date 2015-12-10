; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKBindings_RegisterThornFunctions() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !9, metadata !14), !dbg !15
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !16
  %2 = icmp eq i32 %1, 0, !dbg !16
  br i1 %2, label %5, label %3, !dbg !18

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTKBindings_IOASCIIAliases() #3, !dbg !19
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !9, metadata !14), !dbg !15
  br label %5, !dbg !21

; <label>:5                                       ; preds = %0, %3
  %retval.0 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %6 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !22
  %7 = icmp eq i32 %6, 0, !dbg !22
  br i1 %7, label %10, label %8, !dbg !24

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTKBindings_BenchADMAliases() #3, !dbg !25
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !9, metadata !14), !dbg !15
  br label %10, !dbg !27

; <label>:10                                      ; preds = %5, %8
  %retval.1 = phi i32 [ %9, %8 ], [ %retval.0, %5 ]
  %11 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !28
  %12 = icmp eq i32 %11, 0, !dbg !28
  br i1 %12, label %15, label %13, !dbg !30

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTKBindings_CactusAliases() #3, !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !9, metadata !14), !dbg !15
  br label %15, !dbg !33

; <label>:15                                      ; preds = %10, %13
  %retval.2 = phi i32 [ %14, %13 ], [ %retval.1, %10 ]
  %16 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !34
  %17 = icmp eq i32 %16, 0, !dbg !34
  br i1 %17, label %20, label %18, !dbg !36

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTKBindings_BoundaryAliases() #3, !dbg !37
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !9, metadata !14), !dbg !15
  br label %20, !dbg !39

; <label>:20                                      ; preds = %15, %18
  %retval.3 = phi i32 [ %19, %18 ], [ %retval.2, %15 ]
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !40
  %22 = icmp eq i32 %21, 0, !dbg !40
  br i1 %22, label %25, label %23, !dbg !42

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTKBindings_PUGHAliases() #3, !dbg !43
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !9, metadata !14), !dbg !15
  br label %25, !dbg !45

; <label>:25                                      ; preds = %20, %23
  %retval.4 = phi i32 [ %24, %23 ], [ %retval.3, %20 ]
  %26 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !46
  %27 = icmp eq i32 %26, 0, !dbg !46
  br i1 %27, label %30, label %28, !dbg !48

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTKBindings_IOUtilAliases() #3, !dbg !49
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !9, metadata !14), !dbg !15
  br label %30, !dbg !51

; <label>:30                                      ; preds = %25, %28
  %retval.5 = phi i32 [ %29, %28 ], [ %retval.4, %25 ]
  %31 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !52
  %32 = icmp eq i32 %31, 0, !dbg !52
  br i1 %32, label %35, label %33, !dbg !54

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTKBindings_PUGHSlabAliases() #3, !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !9, metadata !14), !dbg !15
  br label %35, !dbg !57

; <label>:35                                      ; preds = %30, %33
  %retval.6 = phi i32 [ %34, %33 ], [ %retval.5, %30 ]
  %36 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !58
  %37 = icmp eq i32 %36, 0, !dbg !58
  br i1 %37, label %40, label %38, !dbg !60

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTKBindings_CartGrid3DAliases() #3, !dbg !61
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !9, metadata !14), !dbg !15
  br label %40, !dbg !63

; <label>:40                                      ; preds = %35, %38
  %retval.7 = phi i32 [ %39, %38 ], [ %retval.6, %35 ]
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !64
  %42 = icmp eq i32 %41, 0, !dbg !64
  br i1 %42, label %45, label %43, !dbg !66

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTKBindings_IOBasicAliases() #3, !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !9, metadata !14), !dbg !15
  br label %45, !dbg !69

; <label>:45                                      ; preds = %40, %43
  %retval.8 = phi i32 [ %44, %43 ], [ %retval.7, %40 ]
  %46 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !70
  %47 = icmp eq i32 %46, 0, !dbg !70
  br i1 %47, label %50, label %48, !dbg !72

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CCTKBindings_PUGHReduceAliases() #3, !dbg !73
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !9, metadata !14), !dbg !15
  br label %50, !dbg !75

; <label>:50                                      ; preds = %45, %48
  %retval.9 = phi i32 [ %49, %48 ], [ %retval.8, %45 ]
  %51 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !76
  %52 = icmp eq i32 %51, 0, !dbg !76
  br i1 %52, label %55, label %53, !dbg !78

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CCTKBindings_IDLinearWavesAliases() #3, !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !9, metadata !14), !dbg !15
  br label %55, !dbg !81

; <label>:55                                      ; preds = %50, %53
  %retval.10 = phi i32 [ %54, %53 ], [ %retval.9, %50 ]
  %56 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !82
  %57 = icmp eq i32 %56, 0, !dbg !82
  br i1 %57, label %60, label %58, !dbg !84

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTKBindings_TimeAliases() #3, !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !9, metadata !14), !dbg !15
  br label %60, !dbg !87

; <label>:60                                      ; preds = %55, %58
  %retval.11 = phi i32 [ %59, %58 ], [ %retval.10, %55 ]
  %61 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !88
  %62 = icmp eq i32 %61, 0, !dbg !88
  br i1 %62, label %65, label %63, !dbg !90

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTKBindings_EinsteinAliases() #3, !dbg !91
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !9, metadata !14), !dbg !15
  br label %65, !dbg !93

; <label>:65                                      ; preds = %60, %63
  %retval.12 = phi i32 [ %64, %63 ], [ %retval.11, %60 ]
  ret i32 %retval.12, !dbg !94
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOASCIIAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BenchADMAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CactusAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BoundaryAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOUtilAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHSlabAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CartGrid3DAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOBasicAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHReduceAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IDLinearWavesAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_TimeAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_EinsteinAliases() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKBindings_RegisterThornFunctions", scope: !1, file: !1, line: 33, type: !5, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKBindings_RegisterThornFunctions, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !4, file: !1, line: 35, type: !7)
!10 = !{i32 2, !"Dwarf Version", i32 2}
!11 = !{i32 2, !"Debug Info Version", i32 700000003}
!12 = !{i32 1, !"PIC Level", i32 2}
!13 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!14 = !DIExpression()
!15 = !DILocation(line: 35, column: 7, scope: !4)
!16 = !DILocation(line: 36, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !4, file: !1, line: 36, column: 7)
!18 = !DILocation(line: 36, column: 7, scope: !4)
!19 = !DILocation(line: 38, column: 15, scope: !20)
!20 = distinct !DILexicalBlock(scope: !17, file: !1, line: 37, column: 3)
!21 = !DILocation(line: 39, column: 3, scope: !20)
!22 = !DILocation(line: 40, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !4, file: !1, line: 40, column: 7)
!24 = !DILocation(line: 40, column: 7, scope: !4)
!25 = !DILocation(line: 42, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 3)
!27 = !DILocation(line: 43, column: 3, scope: !26)
!28 = !DILocation(line: 44, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !4, file: !1, line: 44, column: 7)
!30 = !DILocation(line: 44, column: 7, scope: !4)
!31 = !DILocation(line: 46, column: 15, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 45, column: 3)
!33 = !DILocation(line: 47, column: 3, scope: !32)
!34 = !DILocation(line: 48, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !4, file: !1, line: 48, column: 7)
!36 = !DILocation(line: 48, column: 7, scope: !4)
!37 = !DILocation(line: 50, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 49, column: 3)
!39 = !DILocation(line: 51, column: 3, scope: !38)
!40 = !DILocation(line: 52, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !4, file: !1, line: 52, column: 7)
!42 = !DILocation(line: 52, column: 7, scope: !4)
!43 = !DILocation(line: 54, column: 15, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 53, column: 3)
!45 = !DILocation(line: 55, column: 3, scope: !44)
!46 = !DILocation(line: 56, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !4, file: !1, line: 56, column: 7)
!48 = !DILocation(line: 56, column: 7, scope: !4)
!49 = !DILocation(line: 58, column: 15, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 57, column: 3)
!51 = !DILocation(line: 59, column: 3, scope: !50)
!52 = !DILocation(line: 60, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !4, file: !1, line: 60, column: 7)
!54 = !DILocation(line: 60, column: 7, scope: !4)
!55 = !DILocation(line: 62, column: 15, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 61, column: 3)
!57 = !DILocation(line: 63, column: 3, scope: !56)
!58 = !DILocation(line: 64, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !4, file: !1, line: 64, column: 7)
!60 = !DILocation(line: 64, column: 7, scope: !4)
!61 = !DILocation(line: 66, column: 15, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 65, column: 3)
!63 = !DILocation(line: 67, column: 3, scope: !62)
!64 = !DILocation(line: 68, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !4, file: !1, line: 68, column: 7)
!66 = !DILocation(line: 68, column: 7, scope: !4)
!67 = !DILocation(line: 70, column: 15, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 69, column: 3)
!69 = !DILocation(line: 71, column: 3, scope: !68)
!70 = !DILocation(line: 72, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !4, file: !1, line: 72, column: 7)
!72 = !DILocation(line: 72, column: 7, scope: !4)
!73 = !DILocation(line: 74, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 73, column: 3)
!75 = !DILocation(line: 75, column: 3, scope: !74)
!76 = !DILocation(line: 76, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !4, file: !1, line: 76, column: 7)
!78 = !DILocation(line: 76, column: 7, scope: !4)
!79 = !DILocation(line: 78, column: 15, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 77, column: 3)
!81 = !DILocation(line: 79, column: 3, scope: !80)
!82 = !DILocation(line: 80, column: 7, scope: !83)
!83 = distinct !DILexicalBlock(scope: !4, file: !1, line: 80, column: 7)
!84 = !DILocation(line: 80, column: 7, scope: !4)
!85 = !DILocation(line: 82, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 81, column: 3)
!87 = !DILocation(line: 83, column: 3, scope: !86)
!88 = !DILocation(line: 84, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !4, file: !1, line: 84, column: 7)
!90 = !DILocation(line: 84, column: 7, scope: !4)
!91 = !DILocation(line: 86, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 85, column: 3)
!93 = !DILocation(line: 87, column: 3, scope: !92)
!94 = !DILocation(line: 88, column: 3, scope: !4)
