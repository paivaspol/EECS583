; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Time_Initialise\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Initialise Time variables\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"Time_Simple\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"Time_Given\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"Set timestep based on Courant condition\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"Time_Courant\00", align 1
@.str16 = private unnamed_addr constant [30 x i8] c"Reset timestep each iteration\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"Set fixed timestep\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_Time() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !dbg !30, !tbaa !31
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !10, metadata !37), !dbg !30
  %2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !38
  %3 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !39
  %4 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !40
  %5 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !41
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Initialise to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !42
  %7 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !43
  %8 = icmp eq i32 %7, 0, !dbg !43
  br i1 %8, label %11, label %9, !dbg !45

; <label>:9                                       ; preds = %0
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !46
  br label %22, !dbg !48

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !49
  %13 = icmp eq i32 %12, 0, !dbg !49
  br i1 %13, label %14, label %17, !dbg !51

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !52
  %16 = icmp eq i32 %15, 0, !dbg !52
  br i1 %16, label %20, label %17, !dbg !53

; <label>:17                                      ; preds = %14, %11
  %18 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !54
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Courant to i8*), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !56
  br label %22, !dbg !57

; <label>:20                                      ; preds = %14
  %21 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Given to i8*), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !58
  br label %22

; <label>:22                                      ; preds = %17, %20, %9
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !23, metadata !37), !dbg !30
  ret void, !dbg !60
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @Time_Simple() #1

; Function Attrs: optsize
declare i32 @Time_Courant() #1

; Function Attrs: optsize
declare i32 @Time_Given() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_Time", scope: !1, file: !1, line: 35, type: !7, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_Time, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !14, !17, !20, !21, !22, !23}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !6, file: !1, line: 37, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !6, file: !1, line: 37, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_fac", scope: !6, file: !1, line: 37, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !6, file: !1, line: 37, type: !18)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep", scope: !6, file: !1, line: 37, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outtimestep_every", scope: !6, file: !1, line: 37, type: !15)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 37, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !{i32 2, !"Dwarf Version", i32 2}
!27 = !{i32 2, !"Debug Info Version", i32 700000003}
!28 = !{i32 1, !"PIC Level", i32 2}
!29 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!30 = !DILocation(line: 37, column: 3, scope: !6)
!31 = !{!32, !33, i64 0}
!32 = !{!"", !33, i64 0, !36, i64 8}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"int", !34, i64 0}
!37 = !DIExpression()
!38 = !DILocation(line: 38, column: 3, scope: !6)
!39 = !DILocation(line: 39, column: 3, scope: !6)
!40 = !DILocation(line: 40, column: 3, scope: !6)
!41 = !DILocation(line: 41, column: 3, scope: !6)
!42 = !DILocation(line: 43, column: 3, scope: !6)
!43 = !DILocation(line: 62, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !6, file: !1, line: 62, column: 5)
!45 = !DILocation(line: 62, column: 5, scope: !6)
!46 = !DILocation(line: 66, column: 3, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 64, column: 1)
!48 = !DILocation(line: 84, column: 1, scope: !47)
!49 = !DILocation(line: 86, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 86, column: 10)
!51 = !DILocation(line: 86, column: 57, scope: !50)
!52 = !DILocation(line: 88, column: 10, scope: !50)
!53 = !DILocation(line: 86, column: 10, scope: !44)
!54 = !DILocation(line: 92, column: 3, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 90, column: 1)
!56 = !DILocation(line: 110, column: 3, scope: !55)
!57 = !DILocation(line: 127, column: 1, scope: !55)
!58 = !DILocation(line: 133, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 131, column: 1)
!60 = !DILocation(line: 153, column: 22, scope: !6)
