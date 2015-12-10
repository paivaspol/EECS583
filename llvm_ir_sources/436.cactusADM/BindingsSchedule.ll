; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"Time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsScheduleInitialise() #0 {
  %1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #2, !dbg !12
  %2 = icmp eq i32 %1, 0, !dbg !12
  br i1 %2, label %4, label %3, !dbg !14

; <label>:3                                       ; preds = %0
  tail call void @CCTKi_BindingsSchedule_BenchADM() #2, !dbg !15
  br label %4, !dbg !17

; <label>:4                                       ; preds = %0, %3
  %5 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2, !dbg !18
  %6 = icmp eq i32 %5, 0, !dbg !18
  br i1 %6, label %8, label %7, !dbg !20

; <label>:7                                       ; preds = %4
  tail call void @CCTKi_BindingsSchedule_Boundary() #2, !dbg !21
  br label %8, !dbg !23

; <label>:8                                       ; preds = %4, %7
  %9 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2, !dbg !24
  %10 = icmp eq i32 %9, 0, !dbg !24
  br i1 %10, label %12, label %11, !dbg !26

; <label>:11                                      ; preds = %8
  tail call void @CCTKi_BindingsSchedule_Cactus() #2, !dbg !27
  br label %12, !dbg !29

; <label>:12                                      ; preds = %8, %11
  %13 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) #2, !dbg !30
  %14 = icmp eq i32 %13, 0, !dbg !30
  br i1 %14, label %16, label %15, !dbg !32

; <label>:15                                      ; preds = %12
  tail call void @CCTKi_BindingsSchedule_CartGrid3D() #2, !dbg !33
  br label %16, !dbg !35

; <label>:16                                      ; preds = %12, %15
  %17 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #2, !dbg !36
  %18 = icmp eq i32 %17, 0, !dbg !36
  br i1 %18, label %20, label %19, !dbg !38

; <label>:19                                      ; preds = %16
  tail call void @CCTKi_BindingsSchedule_Einstein() #2, !dbg !39
  br label %20, !dbg !41

; <label>:20                                      ; preds = %16, %19
  %21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #2, !dbg !42
  %22 = icmp eq i32 %21, 0, !dbg !42
  br i1 %22, label %24, label %23, !dbg !44

; <label>:23                                      ; preds = %20
  tail call void @CCTKi_BindingsSchedule_IDLinearWaves() #2, !dbg !45
  br label %24, !dbg !47

; <label>:24                                      ; preds = %20, %23
  %25 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #2, !dbg !48
  %26 = icmp eq i32 %25, 0, !dbg !48
  br i1 %26, label %28, label %27, !dbg !50

; <label>:27                                      ; preds = %24
  tail call void @CCTKi_BindingsSchedule_IOASCII() #2, !dbg !51
  br label %28, !dbg !53

; <label>:28                                      ; preds = %24, %27
  %29 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !54
  %30 = icmp eq i32 %29, 0, !dbg !54
  br i1 %30, label %32, label %31, !dbg !56

; <label>:31                                      ; preds = %28
  tail call void @CCTKi_BindingsSchedule_IOBasic() #2, !dbg !57
  br label %32, !dbg !59

; <label>:32                                      ; preds = %28, %31
  %33 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #2, !dbg !60
  %34 = icmp eq i32 %33, 0, !dbg !60
  br i1 %34, label %36, label %35, !dbg !62

; <label>:35                                      ; preds = %32
  tail call void @CCTKi_BindingsSchedule_IOUtil() #2, !dbg !63
  br label %36, !dbg !65

; <label>:36                                      ; preds = %32, %35
  %37 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !66
  %38 = icmp eq i32 %37, 0, !dbg !66
  br i1 %38, label %40, label %39, !dbg !68

; <label>:39                                      ; preds = %36
  tail call void @CCTKi_BindingsSchedule_PUGH() #2, !dbg !69
  br label %40, !dbg !71

; <label>:40                                      ; preds = %36, %39
  %41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0)) #2, !dbg !72
  %42 = icmp eq i32 %41, 0, !dbg !72
  br i1 %42, label %44, label %43, !dbg !74

; <label>:43                                      ; preds = %40
  tail call void @CCTKi_BindingsSchedule_PUGHReduce() #2, !dbg !75
  br label %44, !dbg !77

; <label>:44                                      ; preds = %40, %43
  %45 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !78
  %46 = icmp eq i32 %45, 0, !dbg !78
  br i1 %46, label %48, label %47, !dbg !80

; <label>:47                                      ; preds = %44
  tail call void @CCTKi_BindingsSchedule_PUGHSlab() #2, !dbg !81
  br label %48, !dbg !83

; <label>:48                                      ; preds = %44, %47
  %49 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #2, !dbg !84
  %50 = icmp eq i32 %49, 0, !dbg !84
  br i1 %50, label %52, label %51, !dbg !86

; <label>:51                                      ; preds = %48
  tail call void @CCTKi_BindingsSchedule_Time() #2, !dbg !87
  br label %52, !dbg !89

; <label>:52                                      ; preds = %48, %51
  ret i32 0, !dbg !90
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_BenchADM() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Boundary() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Cactus() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_CartGrid3D() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Einstein() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IDLinearWaves() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOASCII() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOBasic() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOUtil() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGH() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHReduce() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHSlab() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Time() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsScheduleInitialise", scope: !1, file: !1, line: 36, type: !5, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsScheduleInitialise, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 700000003}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!12 = !DILocation(line: 38, column: 6, scope: !13)
!13 = distinct !DILexicalBlock(scope: !4, file: !1, line: 38, column: 6)
!14 = !DILocation(line: 38, column: 6, scope: !4)
!15 = !DILocation(line: 40, column: 5, scope: !16)
!16 = distinct !DILexicalBlock(scope: !13, file: !1, line: 39, column: 3)
!17 = !DILocation(line: 41, column: 3, scope: !16)
!18 = !DILocation(line: 42, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !4, file: !1, line: 42, column: 6)
!20 = !DILocation(line: 42, column: 6, scope: !4)
!21 = !DILocation(line: 44, column: 5, scope: !22)
!22 = distinct !DILexicalBlock(scope: !19, file: !1, line: 43, column: 3)
!23 = !DILocation(line: 45, column: 3, scope: !22)
!24 = !DILocation(line: 46, column: 6, scope: !25)
!25 = distinct !DILexicalBlock(scope: !4, file: !1, line: 46, column: 6)
!26 = !DILocation(line: 46, column: 6, scope: !4)
!27 = !DILocation(line: 48, column: 5, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 47, column: 3)
!29 = !DILocation(line: 49, column: 3, scope: !28)
!30 = !DILocation(line: 50, column: 6, scope: !31)
!31 = distinct !DILexicalBlock(scope: !4, file: !1, line: 50, column: 6)
!32 = !DILocation(line: 50, column: 6, scope: !4)
!33 = !DILocation(line: 52, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 51, column: 3)
!35 = !DILocation(line: 53, column: 3, scope: !34)
!36 = !DILocation(line: 54, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !4, file: !1, line: 54, column: 6)
!38 = !DILocation(line: 54, column: 6, scope: !4)
!39 = !DILocation(line: 56, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 55, column: 3)
!41 = !DILocation(line: 57, column: 3, scope: !40)
!42 = !DILocation(line: 58, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !4, file: !1, line: 58, column: 6)
!44 = !DILocation(line: 58, column: 6, scope: !4)
!45 = !DILocation(line: 60, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 3)
!47 = !DILocation(line: 61, column: 3, scope: !46)
!48 = !DILocation(line: 62, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !4, file: !1, line: 62, column: 6)
!50 = !DILocation(line: 62, column: 6, scope: !4)
!51 = !DILocation(line: 64, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 63, column: 3)
!53 = !DILocation(line: 65, column: 3, scope: !52)
!54 = !DILocation(line: 66, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !4, file: !1, line: 66, column: 6)
!56 = !DILocation(line: 66, column: 6, scope: !4)
!57 = !DILocation(line: 68, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 67, column: 3)
!59 = !DILocation(line: 69, column: 3, scope: !58)
!60 = !DILocation(line: 70, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !4, file: !1, line: 70, column: 6)
!62 = !DILocation(line: 70, column: 6, scope: !4)
!63 = !DILocation(line: 72, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 71, column: 3)
!65 = !DILocation(line: 73, column: 3, scope: !64)
!66 = !DILocation(line: 74, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !4, file: !1, line: 74, column: 6)
!68 = !DILocation(line: 74, column: 6, scope: !4)
!69 = !DILocation(line: 76, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 75, column: 3)
!71 = !DILocation(line: 77, column: 3, scope: !70)
!72 = !DILocation(line: 78, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !4, file: !1, line: 78, column: 6)
!74 = !DILocation(line: 78, column: 6, scope: !4)
!75 = !DILocation(line: 80, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 79, column: 3)
!77 = !DILocation(line: 81, column: 3, scope: !76)
!78 = !DILocation(line: 82, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !4, file: !1, line: 82, column: 6)
!80 = !DILocation(line: 82, column: 6, scope: !4)
!81 = !DILocation(line: 84, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 83, column: 3)
!83 = !DILocation(line: 85, column: 3, scope: !82)
!84 = !DILocation(line: 86, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !4, file: !1, line: 86, column: 6)
!86 = !DILocation(line: 86, column: 6, scope: !4)
!87 = !DILocation(line: 88, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 87, column: 3)
!89 = !DILocation(line: 89, column: 3, scope: !88)
!90 = !DILocation(line: 90, column: 3, scope: !4)
