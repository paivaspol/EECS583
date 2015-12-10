; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Courant.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i32 }
%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timerest_ = external global %struct.anon
@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [74 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Courant.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"Time Step not defined for greater than 4 dimensions\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"Time step set to %f\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"Courant timestep would be %f\00", align 1
@.str10 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusBase/Time/src/Courant.c,v 1.15 2002/01/02 17:20:16 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Courant_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str10, i64 0, i64 0), !dbg !93
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Courant(%struct.cGH* nocapture %cctkGH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %cctkGH, i64 0, metadata !53, metadata !94), !dbg !95
  %1 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !dbg !96, !tbaa !97
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !55, metadata !94), !dbg !96
  %2 = load i32* getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 1), align 8, !dbg !96, !tbaa !103
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !56, metadata !94), !dbg !96
  %3 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 0), align 8, !dbg !96, !tbaa !104
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !58, metadata !94), !dbg !96
  %4 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 1), align 8, !dbg !96, !tbaa !107
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !60, metadata !94), !dbg !96
  %5 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 0, !dbg !108
  %6 = load i32* %5, align 4, !dbg !108, !tbaa !109
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !66, metadata !94), !dbg !108
  %7 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9, !dbg !108
  %8 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10, !dbg !108
  %9 = load double** %8, align 8, !dbg !108, !tbaa !111
  tail call void @llvm.dbg.value(metadata double* %9, i64 0, metadata !77, metadata !94), !dbg !108
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #5, !dbg !108
  %11 = sext i32 %10 to i64, !dbg !108
  %12 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17, !dbg !108
  %13 = load i8**** %12, align 8, !dbg !108, !tbaa !112
  %14 = getelementptr inbounds i8*** %13, i64 %11, !dbg !108
  %15 = bitcast i8*** %14 to double***, !dbg !108
  %16 = load double*** %15, align 8, !dbg !108, !tbaa !113
  %17 = load double** %16, align 8, !dbg !108, !tbaa !113
  tail call void @llvm.dbg.value(metadata double* %17, i64 0, metadata !84, metadata !94), !dbg !108
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !108
  %19 = sext i32 %18 to i64, !dbg !108
  %20 = load i8**** %12, align 8, !dbg !108, !tbaa !112
  %21 = getelementptr inbounds i8*** %20, i64 %19, !dbg !108
  %22 = bitcast i8*** %21 to double***, !dbg !108
  %23 = load double*** %22, align 8, !dbg !108, !tbaa !113
  %24 = load double** %23, align 8, !dbg !108, !tbaa !113
  tail call void @llvm.dbg.value(metadata double* %24, i64 0, metadata !85, metadata !94), !dbg !108
  %25 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !108
  %26 = sext i32 %25 to i64, !dbg !108
  %27 = load i8**** %12, align 8, !dbg !108, !tbaa !112
  %28 = getelementptr inbounds i8*** %27, i64 %26, !dbg !108
  %29 = bitcast i8*** %28 to double***, !dbg !108
  %30 = load double*** %29, align 8, !dbg !108, !tbaa !113
  %31 = load double** %30, align 8, !dbg !108, !tbaa !113
  tail call void @llvm.dbg.value(metadata double* %31, i64 0, metadata !86, metadata !94), !dbg !108
  %32 = load double* %9, align 8, !dbg !114, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %32, i64 0, metadata !54, metadata !94), !dbg !116
  %33 = icmp sgt i32 %6, 1, !dbg !117
  br i1 %33, label %34, label %.thread1, !dbg !119

; <label>:34                                      ; preds = %0
  %35 = getelementptr inbounds double* %9, i64 1, !dbg !120
  %36 = load double* %35, align 8, !dbg !120, !tbaa !115
  %37 = fcmp olt double %32, %36, !dbg !122
  %. = select i1 %37, double %32, double %36, !dbg !123
  tail call void @llvm.dbg.value(metadata double %., i64 0, metadata !54, metadata !94), !dbg !116
  %38 = icmp sgt i32 %6, 2, !dbg !124
  br i1 %38, label %39, label %.thread1, !dbg !126

; <label>:39                                      ; preds = %34
  %40 = getelementptr inbounds double* %9, i64 2, !dbg !127
  %41 = load double* %40, align 8, !dbg !127, !tbaa !115
  %42 = fcmp olt double %., %41, !dbg !129
  %min_spacing.0. = select i1 %42, double %., double %41, !dbg !130
  tail call void @llvm.dbg.value(metadata double %min_spacing.0., i64 0, metadata !54, metadata !94), !dbg !116
  %43 = icmp sgt i32 %6, 3, !dbg !131
  br i1 %43, label %44, label %.thread1, !dbg !133

; <label>:44                                      ; preds = %39
  %45 = tail call i32 @CCTK_Warn(i32 0, i32 51, i8* getelementptr inbounds ([74 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !134
  br label %.thread1, !dbg !136

.thread1:                                         ; preds = %0, %34, %44, %39
  %min_spacing.12 = phi double [ %min_spacing.0., %44 ], [ %min_spacing.0., %39 ], [ %., %34 ], [ %32, %0 ]
  %46 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !137
  %47 = icmp eq i32 %46, 0, !dbg !137
  br i1 %47, label %54, label %48, !dbg !139

; <label>:48                                      ; preds = %.thread1
  %49 = load double* %24, align 8, !dbg !140, !tbaa !115
  %50 = fmul double %3, %49, !dbg !142
  %51 = sitofp i32 %6 to double, !dbg !143
  %52 = tail call double @sqrt(double %51) #6, !dbg !144
  %53 = fdiv double %50, %52, !dbg !145
  store double %53, double* %17, align 8, !dbg !146, !tbaa !115
  br label %63, !dbg !147

; <label>:54                                      ; preds = %.thread1
  %55 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !148
  %56 = icmp eq i32 %55, 0, !dbg !148
  br i1 %56, label %63, label %57, !dbg !150

; <label>:57                                      ; preds = %54
  %58 = load double* %31, align 8, !dbg !151, !tbaa !115
  %59 = fdiv double %3, %58, !dbg !153
  %60 = sitofp i32 %6 to double, !dbg !154
  %61 = tail call double @sqrt(double %60) #6, !dbg !155
  %62 = fdiv double %59, %61, !dbg !156
  store double %62, double* %17, align 8, !dbg !157, !tbaa !115
  br label %63, !dbg !158

; <label>:63                                      ; preds = %54, %57, %48
  %64 = icmp eq i32 %2, 0, !dbg !159
  br i1 %64, label %65, label %68, !dbg !161

; <label>:65                                      ; preds = %63
  %66 = load double* %17, align 8, !dbg !162, !tbaa !115
  store double %66, double* %7, align 8, !dbg !164, !tbaa !165
  %67 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), double %66) #5, !dbg !166
  br label %72, !dbg !167

; <label>:68                                      ; preds = %63
  %69 = fmul double %4, %min_spacing.12, !dbg !168
  store double %69, double* %7, align 8, !dbg !170, !tbaa !165
  %70 = load double* %17, align 8, !dbg !171, !tbaa !115
  %71 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str9, i64 0, i64 0), double %70) #5, !dbg !172
  br label %72

; <label>:72                                      ; preds = %68, %65
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !63, metadata !94), !dbg !96
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !83, metadata !94), !dbg !108
  ret void, !dbg !173
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90, !91}
!llvm.ident = !{!92}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !87, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Courant.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!6 = !{!7, !13}
!7 = !DISubprogram(name: "CCTKi_version_CactusBase_Time_Courant_c", scope: !1, file: !1, line: 23, type: !8, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_Time_Courant_c, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DISubprogram(name: "Time_Courant", scope: !1, file: !1, line: 27, type: !14, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @Time_Courant, variables: !52)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !18, line: 75, baseType: !19)
!18 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!19 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 24, size: 1216, align: 64, elements: !20)
!20 = !{!21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !44, !45}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !19, file: !18, line: 26, baseType: !22, size: 32, align: 32)
!22 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !19, file: !18, line: 27, baseType: !22, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !19, file: !18, line: 30, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !19, file: !18, line: 31, baseType: !25, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !19, file: !18, line: 32, baseType: !25, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !19, file: !18, line: 33, baseType: !25, size: 64, align: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !19, file: !18, line: 36, baseType: !25, size: 64, align: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !19, file: !18, line: 39, baseType: !25, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !19, file: !18, line: 40, baseType: !25, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !19, file: !18, line: 43, baseType: !5, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !19, file: !18, line: 44, baseType: !4, size: 64, align: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !19, file: !18, line: 47, baseType: !4, size: 64, align: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !19, file: !18, line: 51, baseType: !25, size: 64, align: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !19, file: !18, line: 54, baseType: !25, size: 64, align: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !19, file: !18, line: 57, baseType: !22, size: 32, align: 32, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !19, file: !18, line: 60, baseType: !25, size: 64, align: 64, offset: 896)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !19, file: !18, line: 63, baseType: !5, size: 64, align: 64, offset: 960)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 67, baseType: !41, size: 64, align: 64, offset: 1024)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !19, file: !18, line: 70, baseType: !42, size: 64, align: 64, offset: 1088)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !19, file: !18, line: 73, baseType: !46, size: 64, align: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !18, line: 22, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 18, size: 16, align: 8, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !48, file: !18, line: 20, baseType: !12, size: 8, align: 8)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !48, file: !18, line: 21, baseType: !12, size: 8, align: 8, offset: 8)
!52 = !{!53, !54, !55, !56, !58, !60, !61, !62, !63, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctkGH", arg: 1, scope: !13, file: !1, line: 27, type: !16)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_spacing", scope: !13, file: !1, line: 29, type: !5)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !13, file: !1, line: 30, type: !10)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_outonly", scope: !13, file: !1, line: 30, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_fac", scope: !13, file: !1, line: 30, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !13, file: !1, line: 30, type: !59)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep", scope: !13, file: !1, line: 30, type: !59)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outtimestep_every", scope: !13, file: !1, line: 30, type: !57)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !13, file: !1, line: 30, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dim", scope: !13, file: !1, line: 31, type: !22)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_gsh", scope: !13, file: !1, line: 31, type: !25)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lsh", scope: !13, file: !1, line: 31, type: !25)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lbnd", scope: !13, file: !1, line: 31, type: !25)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_ubnd", scope: !13, file: !1, line: 31, type: !25)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_lssh", scope: !13, file: !1, line: 31, type: !25)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_from", scope: !13, file: !1, line: 31, type: !25)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_to", scope: !13, file: !1, line: 31, type: !25)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_bbox", scope: !13, file: !1, line: 31, type: !25)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_time", scope: !13, file: !1, line: 31, type: !5)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_time", scope: !13, file: !1, line: 31, type: !5)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_delta_space", scope: !13, file: !1, line: 31, type: !4)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_origin_space", scope: !13, file: !1, line: 31, type: !4)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_levfac", scope: !13, file: !1, line: 31, type: !25)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_convlevel", scope: !13, file: !1, line: 31, type: !22)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_nghostzones", scope: !13, file: !1, line: 31, type: !25)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_iteration", scope: !13, file: !1, line: 31, type: !22)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_dummy_pointer", scope: !13, file: !1, line: 31, type: !64)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_dt", scope: !13, file: !1, line: 31, type: !4)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_min_time", scope: !13, file: !1, line: 31, type: !4)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "courant_wave_speed", scope: !13, file: !1, line: 31, type: !4)
!87 = !{!88}
!88 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 21, type: !10, isLocal: true, isDefinition: true)
!89 = !{i32 2, !"Dwarf Version", i32 2}
!90 = !{i32 2, !"Debug Info Version", i32 700000003}
!91 = !{i32 1, !"PIC Level", i32 2}
!92 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!93 = !DILocation(line: 23, column: 1, scope: !7)
!94 = !DIExpression()
!95 = !DILocation(line: 27, column: 19, scope: !13)
!96 = !DILocation(line: 30, column: 3, scope: !13)
!97 = !{!98, !99, i64 0}
!98 = !{!"", !99, i64 0, !102, i64 8}
!99 = !{!"any pointer", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!"int", !100, i64 0}
!103 = !{!98, !102, i64 8}
!104 = !{!105, !106, i64 0}
!105 = !{!"", !106, i64 0, !106, i64 8, !106, i64 16, !102, i64 24}
!106 = !{!"double", !100, i64 0}
!107 = !{!105, !106, i64 8}
!108 = !DILocation(line: 31, column: 3, scope: !13)
!109 = !{!110, !102, i64 0}
!110 = !{!"", !102, i64 0, !102, i64 4, !99, i64 8, !99, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !99, i64 56, !106, i64 64, !99, i64 72, !99, i64 80, !99, i64 88, !99, i64 96, !102, i64 104, !99, i64 112, !106, i64 120, !99, i64 128, !99, i64 136, !99, i64 144}
!111 = !{!110, !99, i64 72}
!112 = !{!110, !99, i64 128}
!113 = !{!99, !99, i64 0}
!114 = !DILocation(line: 35, column: 17, scope: !13)
!115 = !{!106, !106, i64 0}
!116 = !DILocation(line: 29, column: 13, scope: !13)
!117 = !DILocation(line: 37, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !13, file: !1, line: 37, column: 7)
!119 = !DILocation(line: 37, column: 7, scope: !13)
!120 = !DILocation(line: 39, column: 32, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 38, column: 3)
!122 = !DILocation(line: 39, column: 31, scope: !121)
!123 = !DILocation(line: 39, column: 20, scope: !121)
!124 = !DILocation(line: 43, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !13, file: !1, line: 43, column: 7)
!126 = !DILocation(line: 43, column: 7, scope: !13)
!127 = !DILocation(line: 45, column: 32, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 44, column: 3)
!129 = !DILocation(line: 45, column: 31, scope: !128)
!130 = !DILocation(line: 45, column: 20, scope: !128)
!131 = !DILocation(line: 49, column: 15, scope: !132)
!132 = distinct !DILexicalBlock(scope: !13, file: !1, line: 49, column: 7)
!133 = !DILocation(line: 49, column: 7, scope: !13)
!134 = !DILocation(line: 51, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 50, column: 3)
!136 = !DILocation(line: 52, column: 3, scope: !135)
!137 = !DILocation(line: 55, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !13, file: !1, line: 55, column: 7)
!139 = !DILocation(line: 55, column: 7, scope: !13)
!140 = !DILocation(line: 57, column: 32, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 56, column: 3)
!142 = !DILocation(line: 57, column: 30, scope: !141)
!143 = !DILocation(line: 57, column: 56, scope: !141)
!144 = !DILocation(line: 57, column: 51, scope: !141)
!145 = !DILocation(line: 57, column: 50, scope: !141)
!146 = !DILocation(line: 57, column: 17, scope: !141)
!147 = !DILocation(line: 58, column: 3, scope: !141)
!148 = !DILocation(line: 59, column: 12, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !1, line: 59, column: 12)
!150 = !DILocation(line: 59, column: 12, scope: !138)
!151 = !DILocation(line: 61, column: 32, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 60, column: 3)
!153 = !DILocation(line: 61, column: 30, scope: !152)
!154 = !DILocation(line: 61, column: 58, scope: !152)
!155 = !DILocation(line: 61, column: 53, scope: !152)
!156 = !DILocation(line: 61, column: 52, scope: !152)
!157 = !DILocation(line: 61, column: 17, scope: !152)
!158 = !DILocation(line: 62, column: 3, scope: !152)
!159 = !DILocation(line: 66, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !13, file: !1, line: 66, column: 7)
!161 = !DILocation(line: 66, column: 7, scope: !13)
!162 = !DILocation(line: 68, column: 31, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 67, column: 3)
!164 = !DILocation(line: 68, column: 29, scope: !163)
!165 = !{!110, !106, i64 64}
!166 = !DILocation(line: 69, column: 5, scope: !163)
!167 = !DILocation(line: 70, column: 3, scope: !163)
!168 = !DILocation(line: 73, column: 36, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !1, line: 72, column: 3)
!170 = !DILocation(line: 73, column: 29, scope: !169)
!171 = !DILocation(line: 74, column: 64, scope: !169)
!172 = !DILocation(line: 74, column: 5, scope: !169)
!173 = !DILocation(line: 76, column: 46, scope: !13)
