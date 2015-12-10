; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_SetupGH = external global %struct.cGH* (%struct.tFleshConfig*, i32)*
@.str = private unnamed_addr constant [18 x i8] c"cctk_initial_time\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"CCTK_POSTINITIAL\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str8 = private unnamed_addr constant [15 x i8] c"CCTK_CPINITIAL\00", align 1
@.str9 = private unnamed_addr constant [71 x i8] c"$Id: CactusDefaultInitialise.c,v 1.51 2001/12/17 22:31:27 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultInitialise_c() #0 {
  ret i8* getelementptr inbounds ([71 x i8]* @.str9, i64 0, i64 0), !dbg !82
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultInitialise(%struct.tFleshConfig* %config) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !66, metadata !83), !dbg !84
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !83), !dbg !85
  %1 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !86, !tbaa !87
  %2 = tail call %struct.cGH* %1(%struct.tFleshConfig* %config, i32 0) #4, !dbg !86
  tail call void @llvm.dbg.value(metadata %struct.cGH* %2, i64 0, metadata !67, metadata !83), !dbg !91
  %3 = icmp eq %struct.cGH* %2, null, !dbg !92
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !92

.lr.ph:                                           ; preds = %0, %.lr.ph
  %4 = phi %struct.cGH* [ %9, %.lr.ph ], [ %2, %0 ]
  %convergence_level.01 = phi i32 [ %7, %.lr.ph ], [ 0, %0 ]
  %5 = tail call i32 @CCTKi_AddGH(%struct.tFleshConfig* %config, i32 %convergence_level.01, %struct.cGH* %4) #4, !dbg !93
  %6 = tail call i32 @CactusInitialiseGH(%struct.cGH* %4) #5, !dbg !95
  %7 = add nuw nsw i32 %convergence_level.01, 1, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !68, metadata !83), !dbg !85
  %8 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !86, !tbaa !87
  %9 = tail call %struct.cGH* %8(%struct.tFleshConfig* %config, i32 %7) #4, !dbg !86
  tail call void @llvm.dbg.value(metadata %struct.cGH* %9, i64 0, metadata !67, metadata !83), !dbg !91
  %10 = icmp eq %struct.cGH* %9, null, !dbg !92
  br i1 %10, label %._crit_edge, label %.lr.ph, !dbg !92

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i32 0, !dbg !97
}

; Function Attrs: optsize
declare i32 @CCTKi_AddGH(%struct.tFleshConfig*, i32, %struct.cGH*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusInitialiseGH(%struct.cGH* %GH) #1 {
  %param_type = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !73, metadata !83), !dbg !98
  tail call void @llvm.dbg.value(metadata i32* %param_type, i64 0, metadata !74, metadata !83), !dbg !99
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #4, !dbg !100
  %2 = bitcast i8* %1 to i64*, !dbg !101
  %3 = load i64* %2, align 8, !dbg !101, !tbaa !102
  %4 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !104
  %5 = bitcast double* %4 to i64*, !dbg !105
  store i64 %3, i64* %5, align 8, !dbg !105, !tbaa !106
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !109
  store i32 0, i32* %6, align 4, !dbg !110, !tbaa !111
  %7 = bitcast %struct.cGH* %GH to i8*, !dbg !112
  %8 = call i32 @CCTKi_ScheduleGHInit(i8* %7) #4, !dbg !113
  %9 = call i32 @CCTKi_InitGHExtensions(%struct.cGH* %GH) #4, !dbg !114
  %10 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !115
  call void @CCTKi_FinaliseParamWarn() #4, !dbg !116
  %11 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !117
  %12 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !118
  %13 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !119
  %14 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !120
  %15 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !121
  %16 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !122
  ret i32 1, !dbg !123
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGHInit(i8*) #2

; Function Attrs: optsize
declare i32 @CCTKi_InitGHExtensions(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare void @CCTKi_FinaliseParamWarn() #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !76, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!8 = !{!9, !15, !69}
!9 = !DISubprogram(name: "CCTKi_version_main_CactusDefaultInitialise_c", scope: !1, file: !1, line: 32, type: !10, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_CactusDefaultInitialise_c, variables: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DISubprogram(name: "CactusDefaultInitialise", scope: !1, file: !1, line: 51, type: !16, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.tFleshConfig*)* @CactusDefaultInitialise, variables: !65)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !21, line: 28, baseType: !22)
!21 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 19, size: 192, align: 64, elements: !23)
!23 = !{!24, !26, !63}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !22, file: !21, line: 21, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !22, file: !21, line: 24, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !30, line: 75, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 24, size: 1216, align: 64, elements: !32)
!32 = !{!33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !55, !56}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !31, file: !30, line: 26, baseType: !18, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !31, file: !30, line: 27, baseType: !18, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !31, file: !30, line: 30, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !31, file: !30, line: 31, baseType: !36, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !31, file: !30, line: 32, baseType: !36, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !31, file: !30, line: 33, baseType: !36, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !31, file: !30, line: 36, baseType: !36, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !31, file: !30, line: 39, baseType: !36, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !31, file: !30, line: 40, baseType: !36, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !31, file: !30, line: 43, baseType: !6, size: 64, align: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !31, file: !30, line: 44, baseType: !45, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !31, file: !30, line: 47, baseType: !45, size: 64, align: 64, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !31, file: !30, line: 51, baseType: !36, size: 64, align: 64, offset: 704)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !31, file: !30, line: 54, baseType: !36, size: 64, align: 64, offset: 768)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !31, file: !30, line: 57, baseType: !18, size: 32, align: 32, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !31, file: !30, line: 60, baseType: !36, size: 64, align: 64, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !31, file: !30, line: 63, baseType: !6, size: 64, align: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !30, line: 67, baseType: !53, size: 64, align: 64, offset: 1024)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !31, file: !30, line: 70, baseType: !54, size: 64, align: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !31, file: !30, line: 73, baseType: !57, size: 64, align: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !30, line: 22, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 18, size: 16, align: 8, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !59, file: !30, line: 20, baseType: !14, size: 8, align: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !59, file: !30, line: 21, baseType: !14, size: 8, align: 8, offset: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !22, file: !21, line: 25, baseType: !64, size: 32, align: 32, offset: 128)
!64 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!65 = !{!66, !67, !68}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !15, file: !1, line: 51, type: !19)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GH", scope: !15, file: !1, line: 53, type: !28)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "convergence_level", scope: !15, file: !1, line: 54, type: !18)
!69 = !DISubprogram(name: "CactusInitialiseGH", scope: !1, file: !1, line: 96, type: !70, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CactusInitialiseGH, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!18, !28}
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !69, file: !1, line: 96, type: !28)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param_type", scope: !69, file: !1, line: 98, type: !18)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !69, file: !1, line: 99, type: !4)
!76 = !{!77}
!77 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 30, type: !12, isLocal: true, isDefinition: true)
!78 = !{i32 2, !"Dwarf Version", i32 2}
!79 = !{i32 2, !"Debug Info Version", i32 700000003}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!82 = !DILocation(line: 32, column: 1, scope: !9)
!83 = !DIExpression()
!84 = !DILocation(line: 51, column: 43, scope: !15)
!85 = !DILocation(line: 54, column: 7, scope: !15)
!86 = !DILocation(line: 65, column: 15, scope: !15)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 53, column: 8, scope: !15)
!92 = !DILocation(line: 65, column: 3, scope: !15)
!93 = !DILocation(line: 67, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !15, file: !1, line: 66, column: 3)
!95 = !DILocation(line: 69, column: 5, scope: !94)
!96 = !DILocation(line: 71, column: 22, scope: !94)
!97 = !DILocation(line: 78, column: 3, scope: !15)
!98 = !DILocation(line: 96, column: 29, scope: !69)
!99 = !DILocation(line: 98, column: 7, scope: !69)
!100 = !DILocation(line: 101, column: 43, scope: !69)
!101 = !DILocation(line: 105, column: 19, scope: !69)
!102 = !{!103, !103, i64 0}
!103 = !{!"double", !89, i64 0}
!104 = !DILocation(line: 105, column: 7, scope: !69)
!105 = !DILocation(line: 105, column: 17, scope: !69)
!106 = !{!107, !103, i64 120}
!107 = !{!"", !108, i64 0, !108, i64 4, !88, i64 8, !88, i64 16, !88, i64 24, !88, i64 32, !88, i64 40, !88, i64 48, !88, i64 56, !103, i64 64, !88, i64 72, !88, i64 80, !88, i64 88, !88, i64 96, !108, i64 104, !88, i64 112, !103, i64 120, !88, i64 128, !88, i64 136, !88, i64 144}
!108 = !{!"int", !89, i64 0}
!109 = !DILocation(line: 108, column: 7, scope: !69)
!110 = !DILocation(line: 108, column: 22, scope: !69)
!111 = !{!107, !108, i64 4}
!112 = !DILocation(line: 119, column: 24, scope: !69)
!113 = !DILocation(line: 119, column: 3, scope: !69)
!114 = !DILocation(line: 122, column: 3, scope: !69)
!115 = !DILocation(line: 125, column: 3, scope: !69)
!116 = !DILocation(line: 126, column: 3, scope: !69)
!117 = !DILocation(line: 128, column: 3, scope: !69)
!118 = !DILocation(line: 131, column: 3, scope: !69)
!119 = !DILocation(line: 134, column: 3, scope: !69)
!120 = !DILocation(line: 136, column: 3, scope: !69)
!121 = !DILocation(line: 139, column: 3, scope: !69)
!122 = !DILocation(line: 140, column: 3, scope: !69)
!123 = !DILocation(line: 142, column: 3, scope: !69)
