; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [10 x i8] c"SPEEDVARS\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [19 x i8] c"courant_wave_speed\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"courant_min_time\00", align 1
@.str10 = private unnamed_addr constant [19 x i8] c"allow_mixeddim_gfs\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str12 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time.c\00", align 1
@.str13 = private unnamed_addr constant [105 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group speedvars with different dimension 1\00", align 1
@.str14 = private unnamed_addr constant [100 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group speedvars with dimension 1\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"COURANTTEMPS\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"courant_dt\00", align 1
@.str18 = private unnamed_addr constant [108 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group couranttemps with different dimension 1\00", align 1
@.str19 = private unnamed_addr constant [103 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group couranttemps with dimension 1\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"Time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusBindingsVariables_Time_Initialise() #0 {
  %param_type = alloca i32, align 4
  %param_type1 = alloca i32, align 4
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !24
  %2 = icmp eq i32 %1, 1, !dbg !25
  br i1 %2, label %3, label %12, !dbg !26

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !12, metadata !27), !dbg !28
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type) #3, !dbg !29
  %5 = bitcast i8* %4 to i32*, !dbg !30
  call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !15, metadata !27), !dbg !31
  %6 = load i32* %5, align 4, !dbg !32, !tbaa !34
  %7 = icmp eq i32 %6, 0, !dbg !32
  br i1 %7, label %10, label %8, !dbg !38

; <label>:8                                       ; preds = %3
  %9 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 32, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !39
  br label %12, !dbg !41

; <label>:10                                      ; preds = %3
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 38, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !42
  br label %12

; <label>:12                                      ; preds = %8, %10, %0
  %13 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !44
  %14 = icmp eq i32 %13, 1, !dbg !45
  br i1 %14, label %15, label %24, !dbg !46

; <label>:15                                      ; preds = %12
  call void @llvm.dbg.value(metadata i32* %param_type1, i64 0, metadata !16, metadata !27), !dbg !47
  %16 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type1) #3, !dbg !48
  %17 = bitcast i8* %16 to i32*, !dbg !49
  call void @llvm.dbg.value(metadata i32* %17, i64 0, metadata !19, metadata !27), !dbg !50
  %18 = load i32* %17, align 4, !dbg !51, !tbaa !34
  %19 = icmp eq i32 %18, 0, !dbg !51
  br i1 %19, label %22, label %20, !dbg !53

; <label>:20                                      ; preds = %15
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 63, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !54
  br label %24, !dbg !56

; <label>:22                                      ; preds = %15
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 69, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([103 x i8]* @.str19, i64 0, i64 0)) #3, !dbg !57
  br label %24

; <label>:24                                      ; preds = %20, %22, %12
  %25 = call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperTime) #3, !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: optsize
declare i32 @CCTKi_CreateGroup(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #1

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #1

; Function Attrs: optsize
declare i32 @CCTKi_RegisterFortranWrapper(i8*, i32 (i8*, i8*)*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsFortranWrapperTime(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!7 = !{!8}
!8 = !DISubprogram(name: "CactusBindingsVariables_Time_Initialise", scope: !1, file: !1, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CactusBindingsVariables_Time_Initialise, variables: !11)
!9 = !DISubroutineType(types: !10)
!10 = !{!6}
!11 = !{!12, !15, !16, !19}
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !13, file: !1, line: 27, type: !6)
!13 = distinct !DILexicalBlock(scope: !14, file: !1, line: 26, column: 1)
!14 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 7)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !13, file: !1, line: 28, type: !4)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !17, file: !1, line: 58, type: !6)
!17 = distinct !DILexicalBlock(scope: !18, file: !1, line: 57, column: 1)
!18 = distinct !DILexicalBlock(scope: !8, file: !1, line: 45, column: 7)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !17, file: !1, line: 59, type: !4)
!20 = !{i32 2, !"Dwarf Version", i32 2}
!21 = !{i32 2, !"Debug Info Version", i32 700000003}
!22 = !{i32 1, !"PIC Level", i32 2}
!23 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!24 = !DILocation(line: 13, column: 7, scope: !14)
!25 = !DILocation(line: 25, column: 39, scope: !14)
!26 = !DILocation(line: 13, column: 7, scope: !8)
!27 = !DIExpression()
!28 = !DILocation(line: 27, column: 7, scope: !13)
!29 = !DILocation(line: 29, column: 43, scope: !13)
!30 = !DILocation(line: 29, column: 24, scope: !13)
!31 = !DILocation(line: 28, column: 19, scope: !13)
!32 = !DILocation(line: 30, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !13, file: !1, line: 30, column: 7)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 30, column: 7, scope: !13)
!39 = !DILocation(line: 32, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !1, line: 31, column: 3)
!41 = !DILocation(line: 35, column: 3, scope: !40)
!42 = !DILocation(line: 38, column: 5, scope: !43)
!43 = distinct !DILexicalBlock(scope: !33, file: !1, line: 37, column: 3)
!44 = !DILocation(line: 45, column: 7, scope: !18)
!45 = !DILocation(line: 56, column: 33, scope: !18)
!46 = !DILocation(line: 45, column: 7, scope: !8)
!47 = !DILocation(line: 58, column: 7, scope: !17)
!48 = !DILocation(line: 60, column: 43, scope: !17)
!49 = !DILocation(line: 60, column: 24, scope: !17)
!50 = !DILocation(line: 59, column: 19, scope: !17)
!51 = !DILocation(line: 61, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !17, file: !1, line: 61, column: 7)
!53 = !DILocation(line: 61, column: 7, scope: !17)
!54 = !DILocation(line: 63, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 62, column: 3)
!56 = !DILocation(line: 66, column: 3, scope: !55)
!57 = !DILocation(line: 69, column: 5, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 68, column: 3)
!59 = !DILocation(line: 76, column: 3, scope: !8)
!60 = !DILocation(line: 78, column: 3, scope: !8)
