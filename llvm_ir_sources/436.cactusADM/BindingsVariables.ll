; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c'
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
define i32 @CCTKi_BindingsVariablesInitialise() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #2, !dbg !12
  %2 = icmp eq i32 %1, 0, !dbg !12
  br i1 %2, label %5, label %3, !dbg !14

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CactusBindingsVariables_IOASCII_Initialise() #2, !dbg !15
  br label %5, !dbg !17

; <label>:5                                       ; preds = %0, %3
  %6 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2, !dbg !18
  %7 = icmp eq i32 %6, 0, !dbg !18
  br i1 %7, label %10, label %8, !dbg !20

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CactusBindingsVariables_BenchADM_Initialise() #2, !dbg !21
  br label %10, !dbg !23

; <label>:10                                      ; preds = %5, %8
  %11 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2, !dbg !24
  %12 = icmp eq i32 %11, 0, !dbg !24
  br i1 %12, label %15, label %13, !dbg !26

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CactusBindingsVariables_Cactus_Initialise() #2, !dbg !27
  br label %15, !dbg !29

; <label>:15                                      ; preds = %10, %13
  %16 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #2, !dbg !30
  %17 = icmp eq i32 %16, 0, !dbg !30
  br i1 %17, label %20, label %18, !dbg !32

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CactusBindingsVariables_Boundary_Initialise() #2, !dbg !33
  br label %20, !dbg !35

; <label>:20                                      ; preds = %15, %18
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #2, !dbg !36
  %22 = icmp eq i32 %21, 0, !dbg !36
  br i1 %22, label %25, label %23, !dbg !38

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CactusBindingsVariables_PUGH_Initialise() #2, !dbg !39
  br label %25, !dbg !41

; <label>:25                                      ; preds = %20, %23
  %26 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #2, !dbg !42
  %27 = icmp eq i32 %26, 0, !dbg !42
  br i1 %27, label %30, label %28, !dbg !44

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CactusBindingsVariables_IOUtil_Initialise() #2, !dbg !45
  br label %30, !dbg !47

; <label>:30                                      ; preds = %25, %28
  %31 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #2, !dbg !48
  %32 = icmp eq i32 %31, 0, !dbg !48
  br i1 %32, label %35, label %33, !dbg !50

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CactusBindingsVariables_PUGHSlab_Initialise() #2, !dbg !51
  br label %35, !dbg !53

; <label>:35                                      ; preds = %30, %33
  %36 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !54
  %37 = icmp eq i32 %36, 0, !dbg !54
  br i1 %37, label %40, label %38, !dbg !56

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CactusBindingsVariables_CartGrid3D_Initialise() #2, !dbg !57
  br label %40, !dbg !59

; <label>:40                                      ; preds = %35, %38
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #2, !dbg !60
  %42 = icmp eq i32 %41, 0, !dbg !60
  br i1 %42, label %45, label %43, !dbg !62

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CactusBindingsVariables_IOBasic_Initialise() #2, !dbg !63
  br label %45, !dbg !65

; <label>:45                                      ; preds = %40, %43
  %46 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !66
  %47 = icmp eq i32 %46, 0, !dbg !66
  br i1 %47, label %50, label %48, !dbg !68

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CactusBindingsVariables_PUGHReduce_Initialise() #2, !dbg !69
  br label %50, !dbg !71

; <label>:50                                      ; preds = %45, %48
  %51 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #2, !dbg !72
  %52 = icmp eq i32 %51, 0, !dbg !72
  br i1 %52, label %55, label %53, !dbg !74

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #2, !dbg !75
  br label %55, !dbg !77

; <label>:55                                      ; preds = %50, %53
  %56 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !78
  %57 = icmp eq i32 %56, 0, !dbg !78
  br i1 %57, label %60, label %58, !dbg !80

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CactusBindingsVariables_Time_Initialise() #2, !dbg !81
  br label %60, !dbg !83

; <label>:60                                      ; preds = %55, %58
  %61 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #2, !dbg !84
  %62 = icmp eq i32 %61, 0, !dbg !84
  br i1 %62, label %65, label %63, !dbg !86

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CactusBindingsVariables_Einstein_Initialise() #2, !dbg !87
  br label %65, !dbg !89

; <label>:65                                      ; preds = %60, %63
  ret i32 0, !dbg !90
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOASCII_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_BenchADM_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Cactus_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Boundary_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGH_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOUtil_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHSlab_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_CartGrid3D_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOBasic_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHReduce_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Einstein_Initialise() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsVariablesInitialise", scope: !1, file: !1, line: 21, type: !5, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsVariablesInitialise, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 700000003}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!12 = !DILocation(line: 23, column: 6, scope: !13)
!13 = distinct !DILexicalBlock(scope: !4, file: !1, line: 23, column: 6)
!14 = !DILocation(line: 23, column: 6, scope: !4)
!15 = !DILocation(line: 25, column: 5, scope: !16)
!16 = distinct !DILexicalBlock(scope: !13, file: !1, line: 24, column: 3)
!17 = !DILocation(line: 26, column: 3, scope: !16)
!18 = !DILocation(line: 27, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 27, column: 6)
!20 = !DILocation(line: 27, column: 6, scope: !4)
!21 = !DILocation(line: 29, column: 5, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 28, column: 3)
!23 = !DILocation(line: 30, column: 3, scope: !22)
!24 = !DILocation(line: 31, column: 6, scope: !25)
!25 = distinct !DILexicalBlock(scope: !4, file: !1, line: 31, column: 6)
!26 = !DILocation(line: 31, column: 6, scope: !4)
!27 = !DILocation(line: 33, column: 5, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 32, column: 3)
!29 = !DILocation(line: 34, column: 3, scope: !28)
!30 = !DILocation(line: 35, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !4, file: !1, line: 35, column: 6)
!32 = !DILocation(line: 35, column: 6, scope: !4)
!33 = !DILocation(line: 37, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 36, column: 3)
!35 = !DILocation(line: 38, column: 3, scope: !34)
!36 = !DILocation(line: 39, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !4, file: !1, line: 39, column: 6)
!38 = !DILocation(line: 39, column: 6, scope: !4)
!39 = !DILocation(line: 41, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 40, column: 3)
!41 = !DILocation(line: 42, column: 3, scope: !40)
!42 = !DILocation(line: 43, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !4, file: !1, line: 43, column: 6)
!44 = !DILocation(line: 43, column: 6, scope: !4)
!45 = !DILocation(line: 45, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 44, column: 3)
!47 = !DILocation(line: 46, column: 3, scope: !46)
!48 = !DILocation(line: 47, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !4, file: !1, line: 47, column: 6)
!50 = !DILocation(line: 47, column: 6, scope: !4)
!51 = !DILocation(line: 49, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 48, column: 3)
!53 = !DILocation(line: 50, column: 3, scope: !52)
!54 = !DILocation(line: 51, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !4, file: !1, line: 51, column: 6)
!56 = !DILocation(line: 51, column: 6, scope: !4)
!57 = !DILocation(line: 53, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 52, column: 3)
!59 = !DILocation(line: 54, column: 3, scope: !58)
!60 = !DILocation(line: 55, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !4, file: !1, line: 55, column: 6)
!62 = !DILocation(line: 55, column: 6, scope: !4)
!63 = !DILocation(line: 57, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 56, column: 3)
!65 = !DILocation(line: 58, column: 3, scope: !64)
!66 = !DILocation(line: 59, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !4, file: !1, line: 59, column: 6)
!68 = !DILocation(line: 59, column: 6, scope: !4)
!69 = !DILocation(line: 61, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 3)
!71 = !DILocation(line: 62, column: 3, scope: !70)
!72 = !DILocation(line: 63, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !4, file: !1, line: 63, column: 6)
!74 = !DILocation(line: 63, column: 6, scope: !4)
!75 = !DILocation(line: 65, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 64, column: 3)
!77 = !DILocation(line: 66, column: 3, scope: !76)
!78 = !DILocation(line: 67, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !4, file: !1, line: 67, column: 6)
!80 = !DILocation(line: 67, column: 6, scope: !4)
!81 = !DILocation(line: 69, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 68, column: 3)
!83 = !DILocation(line: 70, column: 3, scope: !82)
!84 = !DILocation(line: 71, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !4, file: !1, line: 71, column: 6)
!86 = !DILocation(line: 71, column: 6, scope: !4)
!87 = !DILocation(line: 73, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 72, column: 3)
!89 = !DILocation(line: 74, column: 3, scope: !88)
!90 = !DILocation(line: 75, column: 3, scope: !4)
