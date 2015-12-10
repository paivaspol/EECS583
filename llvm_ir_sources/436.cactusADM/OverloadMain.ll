; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadMain.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_Initialise = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadInitialise.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/MainOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"Initialise\00", align 1
@CCTK_Evolve = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadEvolve.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [7 x i8] c"Evolve\00", align 1
@CCTK_Shutdown = global i32 (%struct.tFleshConfig*)* null, align 8
@CCTK_OverloadShutdown.overloaded = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@CCTK_MainLoopIndex = global i32 ()* null, align 8
@CCTK_OverloadMainLoopIndex.overloaded = internal unnamed_addr global i32 0, align 4
@.str7 = private unnamed_addr constant [14 x i8] c"MainLoopIndex\00", align 1
@CCTK_SetMainLoopIndex = global i32 (i32)* null, align 8
@CCTK_OverloadSetMainLoopIndex.overloaded = internal unnamed_addr global i32 0, align 4
@.str8 = private unnamed_addr constant [17 x i8] c"SetMainLoopIndex\00", align 1
@.str9 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/main/OverloadMain.c,v 1.14 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_OverloadMain_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str9, i64 0, i64 0), !dbg !112
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadInitialise(i32 (%struct.tFleshConfig*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.tFleshConfig*)* %func, i64 0, metadata !67, metadata !113), !dbg !114
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null, !dbg !115
  %2 = load i32* @CCTK_OverloadInitialise.overloaded, align 4, !dbg !117, !tbaa !120
  br i1 %1, label %9, label %3, !dbg !114

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !117
  br i1 %4, label %5, label %7, !dbg !124

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Initialise, align 8, !dbg !125, !tbaa !127
  %6 = add nsw i32 %2, 1, !dbg !125
  store i32 %6, i32* @CCTK_OverloadInitialise.overloaded, align 4, !dbg !125, !tbaa !120
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !68, metadata !113), !dbg !114
  br label %9, !dbg !125

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 45, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !129
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !68, metadata !113), !dbg !114
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !114
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.tFleshConfig*)* %func, i64 0, metadata !71, metadata !113), !dbg !131
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null, !dbg !132
  %2 = load i32* @CCTK_OverloadEvolve.overloaded, align 4, !dbg !134, !tbaa !120
  br i1 %1, label %9, label %3, !dbg !131

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !134
  br i1 %4, label %5, label %7, !dbg !137

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Evolve, align 8, !dbg !138, !tbaa !127
  %6 = add nsw i32 %2, 1, !dbg !138
  store i32 %6, i32* @CCTK_OverloadEvolve.overloaded, align 4, !dbg !138, !tbaa !120
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !72, metadata !113), !dbg !131
  br label %9, !dbg !138

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 46, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !140
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !113), !dbg !131
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !131
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadShutdown(i32 (%struct.tFleshConfig*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.tFleshConfig*)* %func, i64 0, metadata !75, metadata !113), !dbg !142
  %1 = icmp eq i32 (%struct.tFleshConfig*)* %func, null, !dbg !143
  %2 = load i32* @CCTK_OverloadShutdown.overloaded, align 4, !dbg !145, !tbaa !120
  br i1 %1, label %9, label %3, !dbg !142

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !145
  br i1 %4, label %5, label %7, !dbg !148

; <label>:5                                       ; preds = %3
  store i32 (%struct.tFleshConfig*)* %func, i32 (%struct.tFleshConfig*)** @CCTK_Shutdown, align 8, !dbg !149, !tbaa !127
  %6 = add nsw i32 %2, 1, !dbg !149
  store i32 %6, i32* @CCTK_OverloadShutdown.overloaded, align 4, !dbg !149, !tbaa !120
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !76, metadata !113), !dbg !142
  br label %9, !dbg !149

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 47, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !76, metadata !113), !dbg !142
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !142
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadMainLoopIndex(i32 ()* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 ()* %func, i64 0, metadata !84, metadata !113), !dbg !153
  %1 = icmp eq i32 ()* %func, null, !dbg !154
  %2 = load i32* @CCTK_OverloadMainLoopIndex.overloaded, align 4, !dbg !156, !tbaa !120
  br i1 %1, label %9, label %3, !dbg !153

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !156
  br i1 %4, label %5, label %7, !dbg !159

; <label>:5                                       ; preds = %3
  store i32 ()* %func, i32 ()** @CCTK_MainLoopIndex, align 8, !dbg !160, !tbaa !127
  %6 = add nsw i32 %2, 1, !dbg !160
  store i32 %6, i32* @CCTK_OverloadMainLoopIndex.overloaded, align 4, !dbg !160, !tbaa !120
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !85, metadata !113), !dbg !153
  br label %9, !dbg !160

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 56, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !113), !dbg !153
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !153
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSetMainLoopIndex(i32 (i32)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (i32)* %func, i64 0, metadata !93, metadata !113), !dbg !164
  %1 = icmp eq i32 (i32)* %func, null, !dbg !165
  %2 = load i32* @CCTK_OverloadSetMainLoopIndex.overloaded, align 4, !dbg !167, !tbaa !120
  br i1 %1, label %9, label %3, !dbg !164

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !167
  br i1 %4, label %5, label %7, !dbg !170

; <label>:5                                       ; preds = %3
  store i32 (i32)* %func, i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !dbg !171, !tbaa !127
  %6 = add nsw i32 %2, 1, !dbg !171
  store i32 %6, i32* @CCTK_OverloadSetMainLoopIndex.overloaded, align 4, !dbg !171, !tbaa !120
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !94, metadata !113), !dbg !164
  br label %9, !dbg !171

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 65, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !173
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !113), !dbg !164
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !164
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupMainFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadInitialise(i32 (%struct.tFleshConfig*)* @CactusDefaultInitialise) #5, !dbg !175
  %2 = tail call i32 @CCTK_OverloadEvolve(i32 (%struct.tFleshConfig*)* @CactusDefaultEvolve) #5, !dbg !177
  %3 = tail call i32 @CCTK_OverloadShutdown(i32 (%struct.tFleshConfig*)* @CactusDefaultShutdown) #5, !dbg !178
  %4 = tail call i32 @CCTK_OverloadMainLoopIndex(i32 ()* @CactusDefaultMainLoopIndex) #5, !dbg !179
  %5 = tail call i32 @CCTK_OverloadSetMainLoopIndex(i32 (i32)* @CactusDefaultSetMainLoopIndex) #5, !dbg !180
  ret i32 0, !dbg !181
}

; Function Attrs: optsize
declare i32 @CactusDefaultInitialise(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultEvolve(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultShutdown(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultMainLoopIndex() #2

; Function Attrs: optsize
declare i32 @CactusDefaultSetMainLoopIndex(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !96, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadMain.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !69, !73, !77, !86, !95}
!4 = !DISubprogram(name: "CCTKi_version_main_OverloadMain_c", scope: !1, file: !1, line: 27, type: !5, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_OverloadMain_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_OverloadInitialise", scope: !11, file: !11, line: 45, type: !12, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.tFleshConfig*)*)* @CCTK_OverloadInitialise, variables: !66)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/MainOverloadables.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!14, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !20, line: 28, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 19, size: 192, align: 64, elements: !22)
!22 = !{!23, !25, !64}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !21, file: !20, line: 21, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !21, file: !20, line: 24, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !29, line: 75, baseType: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 24, size: 1216, align: 64, elements: !31)
!31 = !{!32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !52, !56, !57}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !30, file: !29, line: 26, baseType: !14, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !30, file: !29, line: 27, baseType: !14, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !30, file: !29, line: 30, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !30, file: !29, line: 31, baseType: !35, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !30, file: !29, line: 32, baseType: !35, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !30, file: !29, line: 33, baseType: !35, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !30, file: !29, line: 36, baseType: !35, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !30, file: !29, line: 39, baseType: !35, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !30, file: !29, line: 40, baseType: !35, size: 64, align: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !30, file: !29, line: 43, baseType: !43, size: 64, align: 64, offset: 512)
!43 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !30, file: !29, line: 44, baseType: !45, size: 64, align: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !30, file: !29, line: 47, baseType: !45, size: 64, align: 64, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !30, file: !29, line: 51, baseType: !35, size: 64, align: 64, offset: 704)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !30, file: !29, line: 54, baseType: !35, size: 64, align: 64, offset: 768)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !30, file: !29, line: 57, baseType: !14, size: 32, align: 32, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !30, file: !29, line: 60, baseType: !35, size: 64, align: 64, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !30, file: !29, line: 63, baseType: !43, size: 64, align: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !29, line: 67, baseType: !53, size: 64, align: 64, offset: 1024)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !30, file: !29, line: 70, baseType: !54, size: 64, align: 64, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !30, file: !29, line: 73, baseType: !58, size: 64, align: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !29, line: 22, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 18, size: 16, align: 8, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !60, file: !29, line: 20, baseType: !9, size: 8, align: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !60, file: !29, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !21, file: !20, line: 25, baseType: !65, size: 32, align: 32, offset: 128)
!65 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68}
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !10, file: !11, line: 45, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !10, file: !11, line: 45, type: !14)
!69 = !DISubprogram(name: "CCTK_OverloadEvolve", scope: !11, file: !11, line: 46, type: !12, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.tFleshConfig*)*)* @CCTK_OverloadEvolve, variables: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !69, file: !11, line: 46, type: !15)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !69, file: !11, line: 46, type: !14)
!73 = !DISubprogram(name: "CCTK_OverloadShutdown", scope: !11, file: !11, line: 47, type: !12, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.tFleshConfig*)*)* @CCTK_OverloadShutdown, variables: !74)
!74 = !{!75, !76}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !73, file: !11, line: 47, type: !15)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !73, file: !11, line: 47, type: !14)
!77 = !DISubprogram(name: "CCTK_OverloadMainLoopIndex", scope: !11, file: !11, line: 56, type: !78, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 ()*)* @CCTK_OverloadMainLoopIndex, variables: !83)
!78 = !DISubroutineType(types: !79)
!79 = !{!14, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!14}
!83 = !{!84, !85}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !77, file: !11, line: 56, type: !80)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !77, file: !11, line: 56, type: !14)
!86 = !DISubprogram(name: "CCTK_OverloadSetMainLoopIndex", scope: !11, file: !11, line: 65, type: !87, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (i32)*)* @CCTK_OverloadSetMainLoopIndex, variables: !92)
!87 = !DISubroutineType(types: !88)
!88 = !{!14, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!14, !14}
!92 = !{!93, !94}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !86, file: !11, line: 65, type: !89)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !86, file: !11, line: 65, type: !14)
!95 = !DISubprogram(name: "CCTKi_SetupMainFunctions", scope: !1, file: !1, line: 74, type: !81, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_SetupMainFunctions, variables: !2)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DIGlobalVariable(name: "CCTK_Initialise", scope: !0, file: !11, line: 45, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.tFleshConfig*)** @CCTK_Initialise)
!98 = !DIGlobalVariable(name: "overloaded", scope: !10, file: !11, line: 45, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadInitialise.overloaded)
!99 = !DIGlobalVariable(name: "CCTK_Evolve", scope: !0, file: !11, line: 46, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.tFleshConfig*)** @CCTK_Evolve)
!100 = !DIGlobalVariable(name: "overloaded", scope: !69, file: !11, line: 46, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadEvolve.overloaded)
!101 = !DIGlobalVariable(name: "CCTK_Shutdown", scope: !0, file: !11, line: 47, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.tFleshConfig*)** @CCTK_Shutdown)
!102 = !DIGlobalVariable(name: "overloaded", scope: !73, file: !11, line: 47, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadShutdown.overloaded)
!103 = !DIGlobalVariable(name: "CCTK_MainLoopIndex", scope: !0, file: !11, line: 56, type: !80, isLocal: false, isDefinition: true, variable: i32 ()** @CCTK_MainLoopIndex)
!104 = !DIGlobalVariable(name: "overloaded", scope: !77, file: !11, line: 56, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadMainLoopIndex.overloaded)
!105 = !DIGlobalVariable(name: "CCTK_SetMainLoopIndex", scope: !0, file: !11, line: 65, type: !89, isLocal: false, isDefinition: true, variable: i32 (i32)** @CCTK_SetMainLoopIndex)
!106 = !DIGlobalVariable(name: "overloaded", scope: !86, file: !11, line: 65, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadSetMainLoopIndex.overloaded)
!107 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 25, type: !7, isLocal: true, isDefinition: true)
!108 = !{i32 2, !"Dwarf Version", i32 2}
!109 = !{i32 2, !"Debug Info Version", i32 700000003}
!110 = !{i32 1, !"PIC Level", i32 2}
!111 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!112 = !DILocation(line: 27, column: 1, scope: !4)
!113 = !DIExpression()
!114 = !DILocation(line: 45, column: 1, scope: !10)
!115 = !DILocation(line: 45, column: 1, scope: !116)
!116 = distinct !DILexicalBlock(scope: !10, file: !11, line: 45, column: 1)
!117 = !DILocation(line: 45, column: 1, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !11, line: 45, column: 1)
!119 = distinct !DILexicalBlock(scope: !116, file: !11, line: 45, column: 1)
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !122, i64 0}
!122 = !{!"omnipotent char", !123, i64 0}
!123 = !{!"Simple C/C++ TBAA"}
!124 = !DILocation(line: 45, column: 1, scope: !119)
!125 = !DILocation(line: 45, column: 1, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !11, line: 45, column: 1)
!127 = !{!128, !128, i64 0}
!128 = !{!"any pointer", !122, i64 0}
!129 = !DILocation(line: 45, column: 1, scope: !130)
!130 = distinct !DILexicalBlock(scope: !118, file: !11, line: 45, column: 1)
!131 = !DILocation(line: 46, column: 1, scope: !69)
!132 = !DILocation(line: 46, column: 1, scope: !133)
!133 = distinct !DILexicalBlock(scope: !69, file: !11, line: 46, column: 1)
!134 = !DILocation(line: 46, column: 1, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !11, line: 46, column: 1)
!136 = distinct !DILexicalBlock(scope: !133, file: !11, line: 46, column: 1)
!137 = !DILocation(line: 46, column: 1, scope: !136)
!138 = !DILocation(line: 46, column: 1, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !11, line: 46, column: 1)
!140 = !DILocation(line: 46, column: 1, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !11, line: 46, column: 1)
!142 = !DILocation(line: 47, column: 1, scope: !73)
!143 = !DILocation(line: 47, column: 1, scope: !144)
!144 = distinct !DILexicalBlock(scope: !73, file: !11, line: 47, column: 1)
!145 = !DILocation(line: 47, column: 1, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !11, line: 47, column: 1)
!147 = distinct !DILexicalBlock(scope: !144, file: !11, line: 47, column: 1)
!148 = !DILocation(line: 47, column: 1, scope: !147)
!149 = !DILocation(line: 47, column: 1, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !11, line: 47, column: 1)
!151 = !DILocation(line: 47, column: 1, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !11, line: 47, column: 1)
!153 = !DILocation(line: 56, column: 1, scope: !77)
!154 = !DILocation(line: 56, column: 1, scope: !155)
!155 = distinct !DILexicalBlock(scope: !77, file: !11, line: 56, column: 1)
!156 = !DILocation(line: 56, column: 1, scope: !157)
!157 = distinct !DILexicalBlock(scope: !158, file: !11, line: 56, column: 1)
!158 = distinct !DILexicalBlock(scope: !155, file: !11, line: 56, column: 1)
!159 = !DILocation(line: 56, column: 1, scope: !158)
!160 = !DILocation(line: 56, column: 1, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !11, line: 56, column: 1)
!162 = !DILocation(line: 56, column: 1, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !11, line: 56, column: 1)
!164 = !DILocation(line: 65, column: 1, scope: !86)
!165 = !DILocation(line: 65, column: 1, scope: !166)
!166 = distinct !DILexicalBlock(scope: !86, file: !11, line: 65, column: 1)
!167 = !DILocation(line: 65, column: 1, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !11, line: 65, column: 1)
!169 = distinct !DILexicalBlock(scope: !166, file: !11, line: 65, column: 1)
!170 = !DILocation(line: 65, column: 1, scope: !169)
!171 = !DILocation(line: 65, column: 1, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !11, line: 65, column: 1)
!173 = !DILocation(line: 65, column: 1, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !11, line: 65, column: 1)
!175 = !DILocation(line: 45, column: 1, scope: !176)
!176 = !DILexicalBlockFile(scope: !95, file: !11, discriminator: 0)
!177 = !DILocation(line: 46, column: 1, scope: !176)
!178 = !DILocation(line: 47, column: 1, scope: !176)
!179 = !DILocation(line: 56, column: 1, scope: !176)
!180 = !DILocation(line: 65, column: 1, scope: !176)
!181 = !DILocation(line: 97, column: 3, scope: !182)
!182 = !DILexicalBlockFile(scope: !95, file: !1, discriminator: 0)
