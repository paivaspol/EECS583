; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [13 x i8] c"ActiveThorns\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"CCTKi_SetParameter: Errors while activating thorns\0A\00", align 1
@.str4 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Range error setting parameter '%s' to '%s'\00", align 1
@num_0errors = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [58 x i8] c"In parameter file '%s' line %d:: Parameter '%s' not found\00", align 1
@num_1errors = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Parameter '%s' set in two different thorns\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"In parameter file '%s' line %d: Parameter '%s' is not associated with an active thorn\00", align 1
@.str8 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/SetParams.c,v 1.34 2002/01/02 12:24:41 tradke Exp $\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_SetParams_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str8, i64 0, i64 0), !dbg !52
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetParameter(i8* %parameter, i8* %value, i32 %lineno) #1 {
  %param.i = alloca i8*, align 8
  %imp.i = alloca i8*, align 8
  %parfile = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %parameter, i64 0, metadata !15, metadata !53), !dbg !54
  tail call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !16, metadata !53), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %lineno, i64 0, metadata !17, metadata !53), !dbg !56
  %1 = getelementptr inbounds [256 x i8]* %parfile, i64 0, i64 0, !dbg !57
  call void @llvm.lifetime.start(i64 256, i8* %1) #3, !dbg !57
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %parfile, metadata !20, metadata !53), !dbg !58
  %2 = tail call i32 @CCTK_ParameterLevel() #7, !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !19, metadata !53), !dbg !60
  %3 = call i32 @CCTK_ParameterFilename(i32 256, i8* %1) #7, !dbg !61
  %4 = call i32 @CCTK_Equals(i8* %parameter, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0)) #7, !dbg !62
  %5 = icmp eq i32 %4, 0, !dbg !62
  br i1 %5, label %11, label %6, !dbg !64

; <label>:6                                       ; preds = %0
  %7 = call i32 @CCTKi_ActivateThorns(i8* %value) #7, !dbg !65
  %8 = icmp eq i32 %7, 0, !dbg !65
  br i1 %8, label %.thread, label %9, !dbg !68

; <label>:9                                       ; preds = %6
  %10 = call i32 @CCTK_Warn(i32 0, i32 96, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !69
  br label %.thread, !dbg !71

; <label>:11                                      ; preds = %0
  %12 = bitcast i8** %param.i to i8*, !dbg !72
  call void @llvm.lifetime.start(i64 8, i8* %12), !dbg !72
  %13 = bitcast i8** %imp.i to i8*, !dbg !72
  call void @llvm.lifetime.start(i64 8, i8* %13), !dbg !72
  call void @llvm.dbg.value(metadata i8* %parameter, i64 0, metadata !34, metadata !53) #3, !dbg !72
  call void @llvm.dbg.value(metadata i8* %value, i64 0, metadata !35, metadata !53) #3, !dbg !75
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !37, metadata !53) #3, !dbg !76
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !38, metadata !53) #3, !dbg !77
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !39, metadata !53) #3, !dbg !78
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !36, metadata !53) #3, !dbg !79
  call void @llvm.dbg.value(metadata i8** %param.i, i64 0, metadata !41, metadata !53) #3, !dbg !80
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %14 = call i32 @Util_SplitString(i8** %imp.i, i8** %param.i, i8* %parameter, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !82
  call void @llvm.dbg.value(metadata i8** %param.i, i64 0, metadata !41, metadata !53) #3, !dbg !80
  %15 = load i8** %param.i, align 8, !dbg !83, !tbaa !85
  %16 = icmp eq i8* %15, null, !dbg !83
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %17 = load i8** %imp.i, align 8, !dbg !89, !tbaa !85
  br i1 %16, label %18, label %20, !dbg !91

; <label>:18                                      ; preds = %11
  %19 = call i32 @CCTK_ParameterSet(i8* %parameter, i8* %17, i8* %value) #7, !dbg !92
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !36, metadata !53) #3, !dbg !79
  br label %55, !dbg !93

; <label>:20                                      ; preds = %11
  %21 = call i32 @CCTK_IsImplementationActive(i8* %17) #7, !dbg !94
  %22 = icmp eq i32 %21, 0, !dbg !94
  br i1 %22, label %32, label %23, !dbg !97

; <label>:23                                      ; preds = %20
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %24 = load i8** %imp.i, align 8, !dbg !98, !tbaa !85
  %25 = call i8* @CCTK_ActivatingThorn(i8* %24) #7, !dbg !100
  call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !40, metadata !53) #3, !dbg !101
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %26 = load i8** %imp.i, align 8, !dbg !102, !tbaa !85
  %27 = call i32 @CCTK_Equals(i8* %25, i8* %26) #7, !dbg !104
  %28 = icmp eq i32 %27, 0, !dbg !104
  br i1 %28, label %29, label %32, !dbg !105

; <label>:29                                      ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !38, metadata !53) #3, !dbg !77
  call void @llvm.dbg.value(metadata i8** %param.i, i64 0, metadata !41, metadata !53) #3, !dbg !80
  %30 = load i8** %param.i, align 8, !dbg !106, !tbaa !85
  %31 = call i32 @CCTK_ParameterSet(i8* %30, i8* %25, i8* %value) #7, !dbg !108
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !39, metadata !53) #3, !dbg !78
  br label %32, !dbg !109

; <label>:32                                      ; preds = %29, %23, %20
  %found.0.i = phi i32 [ 0, %23 ], [ 1, %29 ], [ 0, %20 ], !dbg !110
  %retval_imp.0.i = phi i32 [ 0, %23 ], [ %31, %29 ], [ 0, %20 ], !dbg !110
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %33 = load i8** %imp.i, align 8, !dbg !111, !tbaa !85
  %34 = call i32 @CCTK_IsThornActive(i8* %33) #7, !dbg !113
  %35 = icmp eq i32 %34, 0, !dbg !113
  br i1 %35, label %36, label %38, !dbg !114

; <label>:36                                      ; preds = %32
  %37 = icmp eq i32 %found.0.i, 0, !dbg !115
  br i1 %37, label %55, label %.thread15.i, !dbg !117

; <label>:38                                      ; preds = %32
  call void @llvm.dbg.value(metadata i8** %param.i, i64 0, metadata !41, metadata !53) #3, !dbg !80
  %39 = load i8** %param.i, align 8, !dbg !118, !tbaa !85
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %40 = load i8** %imp.i, align 8, !dbg !120, !tbaa !85
  %41 = call i32 @CCTK_ParameterSet(i8* %39, i8* %40, i8* %value) #7, !dbg !121
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !37, metadata !53) #3, !dbg !76
  %42 = icmp eq i32 %found.0.i, 1, !dbg !122
  %43 = icmp sgt i32 %retval_imp.0.i, -1, !dbg !124
  %44 = or i32 %41, %retval_imp.0.i, !dbg !125
  %45 = icmp sgt i32 %44, -1, !dbg !125
  %46 = and i1 %42, %45, !dbg !125
  br i1 %46, label %55, label %47, !dbg !125

; <label>:47                                      ; preds = %38
  %48 = and i32 %41, %retval_imp.0.i, !dbg !126
  %49 = icmp slt i32 %48, 0, !dbg !126
  %50 = and i1 %42, %49, !dbg !126
  br i1 %50, label %55, label %51, !dbg !126

; <label>:51                                      ; preds = %47
  br i1 %42, label %52, label %.thread15.i, !dbg !128

; <label>:52                                      ; preds = %51
  %53 = select i1 %43, i32 %retval_imp.0.i, i32 %41, !dbg !129
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !36, metadata !53) #3, !dbg !79
  br label %55, !dbg !132

.thread15.i:                                      ; preds = %51, %36
  %retval_thorn.08121317.i = phi i32 [ %41, %51 ], [ 0, %36 ], !dbg !110
  %54 = add nsw i32 %retval_thorn.08121317.i, %retval_imp.0.i, !dbg !133
  call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !36, metadata !53) #3, !dbg !79
  br label %55, !dbg !136

; <label>:55                                      ; preds = %.thread15.i, %52, %47, %38, %36, %18
  %retval.0.i = phi i32 [ %53, %52 ], [ %19, %18 ], [ -5, %36 ], [ -4, %38 ], [ %retval_imp.0.i, %47 ], [ %54, %.thread15.i ], !dbg !110
  call void @llvm.dbg.value(metadata i8** %imp.i, i64 0, metadata !43, metadata !53) #3, !dbg !81
  %56 = load i8** %imp.i, align 8, !dbg !137, !tbaa !85
  call void @free(i8* %56) #7, !dbg !138
  call void @llvm.dbg.value(metadata i8** %param.i, i64 0, metadata !41, metadata !53) #3, !dbg !80
  %57 = load i8** %param.i, align 8, !dbg !139, !tbaa !85
  call void @free(i8* %57) #7, !dbg !140
  call void @llvm.lifetime.end(i64 8, i8* %12), !dbg !141
  call void @llvm.lifetime.end(i64 8, i8* %13), !dbg !141
  call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !18, metadata !53), !dbg !142
  switch i32 %retval.0.i, label %.thread [
    i32 -1, label %58
    i32 -2, label %62
    i32 -4, label %71
    i32 -5, label %80
  ], !dbg !143

; <label>:58                                      ; preds = %55
  %59 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 108, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter, i8* %value) #7, !dbg !144
  %60 = load i32* @num_0errors, align 4, !dbg !147, !tbaa !148
  %61 = add nsw i32 %60, 1, !dbg !147
  store i32 %61, i32* @num_0errors, align 4, !dbg !147, !tbaa !148
  br label %.thread, !dbg !150

; <label>:62                                      ; preds = %55
  %63 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 116, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #7, !dbg !151
  %64 = icmp eq i32 %2, 2, !dbg !154
  br i1 %64, label %65, label %68, !dbg !156

; <label>:65                                      ; preds = %62
  %66 = load i32* @num_1errors, align 4, !dbg !157, !tbaa !148
  %67 = add nsw i32 %66, 1, !dbg !157
  store i32 %67, i32* @num_1errors, align 4, !dbg !157, !tbaa !148
  br label %.thread, !dbg !159

; <label>:68                                      ; preds = %62
  %69 = load i32* @num_0errors, align 4, !dbg !160, !tbaa !148
  %70 = add nsw i32 %69, 1, !dbg !160
  store i32 %70, i32* @num_0errors, align 4, !dbg !160, !tbaa !148
  br label %.thread

; <label>:71                                      ; preds = %55
  %72 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 131, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str6, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #7, !dbg !162
  %73 = icmp eq i32 %2, 2, !dbg !165
  br i1 %73, label %74, label %77, !dbg !167

; <label>:74                                      ; preds = %71
  %75 = load i32* @num_1errors, align 4, !dbg !168, !tbaa !148
  %76 = add nsw i32 %75, 1, !dbg !168
  store i32 %76, i32* @num_1errors, align 4, !dbg !168, !tbaa !148
  br label %.thread, !dbg !170

; <label>:77                                      ; preds = %71
  %78 = load i32* @num_0errors, align 4, !dbg !171, !tbaa !148
  %79 = add nsw i32 %78, 1, !dbg !171
  store i32 %79, i32* @num_0errors, align 4, !dbg !171, !tbaa !148
  br label %.thread

; <label>:80                                      ; preds = %55
  %81 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 146, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), i8* %1, i32 %lineno, i8* %parameter) #7, !dbg !173
  switch i32 %2, label %.thread [
    i32 0, label %82
    i32 1, label %85
  ], !dbg !176

; <label>:82                                      ; preds = %80
  %83 = load i32* @num_0errors, align 4, !dbg !177, !tbaa !148
  %84 = add nsw i32 %83, 1, !dbg !177
  store i32 %84, i32* @num_0errors, align 4, !dbg !177, !tbaa !148
  br label %.thread, !dbg !180

; <label>:85                                      ; preds = %80
  %86 = load i32* @num_1errors, align 4, !dbg !181, !tbaa !148
  %87 = add nsw i32 %86, 1, !dbg !181
  store i32 %87, i32* @num_1errors, align 4, !dbg !181, !tbaa !148
  br label %.thread, !dbg !184

.thread:                                          ; preds = %9, %6, %80, %55, %68, %65, %85, %82, %74, %77, %58
  %retval.01 = phi i32 [ -5, %80 ], [ %retval.0.i, %55 ], [ -2, %68 ], [ -2, %65 ], [ -5, %85 ], [ -5, %82 ], [ -4, %74 ], [ -4, %77 ], [ -1, %58 ], [ 0, %6 ], [ 0, %9 ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #3, !dbg !185
  ret i32 %retval.01, !dbg !185
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterLevel() #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTKi_ActivateThorns(i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTKi_NumParameterFileErrors(i32 %level) #5 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !28, metadata !53), !dbg !186
  switch i32 %level, label %5 [
    i32 0, label %1
    i32 1, label %3
  ], !dbg !187

; <label>:1                                       ; preds = %0
  %2 = load i32* @num_0errors, align 4, !dbg !188, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !29, metadata !53), !dbg !191
  br label %5, !dbg !192

; <label>:3                                       ; preds = %0
  %4 = load i32* @num_1errors, align 4, !dbg !193, !tbaa !148
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !29, metadata !53), !dbg !191
  br label %5, !dbg !196

; <label>:5                                       ; preds = %0, %3, %1
  %retval.0 = phi i32 [ %2, %1 ], [ %4, %3 ], [ 0, %0 ]
  ret i32 %retval.0, !dbg !197
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterSet(i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_IsImplementationActive(i8*) #4

; Function Attrs: optsize
declare i8* @CCTK_ActivatingThorn(i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !44, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !24, !30}
!4 = !DISubprogram(name: "CCTKi_version_main_SetParams_c", scope: !1, file: !1, line: 29, type: !5, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_SetParams_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_SetParameter", scope: !1, file: !1, line: 83, type: !11, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @CCTKi_SetParameter, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !7, !7, !13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parameter", arg: 1, scope: !10, file: !1, line: 83, type: !7)
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !10, file: !1, line: 83, type: !7)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 3, scope: !10, file: !1, line: 83, type: !13)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !10, file: !1, line: 85, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parameter_check", scope: !10, file: !1, line: 85, type: !13)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "parfile", scope: !10, file: !1, line: 86, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, align: 8, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = !DISubprogram(name: "CCTKi_NumParameterFileErrors", scope: !1, file: !1, line: 183, type: !25, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTKi_NumParameterFileErrors, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !13}
!27 = !{!28, !29}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !24, file: !1, line: 183, type: !13)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !24, file: !1, line: 185, type: !13)
!30 = !DISubprogram(name: "ReallySetParameter", scope: !1, file: !1, line: 241, type: !31, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !7, !7}
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !43}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parameter", arg: 1, scope: !30, file: !1, line: 241, type: !7)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !30, file: !1, line: 241, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !30, file: !1, line: 243, type: !13)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval_thorn", scope: !30, file: !1, line: 244, type: !13)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !30, file: !1, line: 245, type: !13)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval_imp", scope: !30, file: !1, line: 246, type: !13)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !30, file: !1, line: 247, type: !7)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "param", scope: !30, file: !1, line: 248, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imp", scope: !30, file: !1, line: 248, type: !42)
!44 = !{!45, !46, !47}
!45 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 27, type: !7, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariable(name: "num_0errors", scope: !0, file: !1, line: 40, type: !13, isLocal: true, isDefinition: true, variable: i32* @num_0errors)
!47 = !DIGlobalVariable(name: "num_1errors", scope: !0, file: !1, line: 41, type: !13, isLocal: true, isDefinition: true, variable: i32* @num_1errors)
!48 = !{i32 2, !"Dwarf Version", i32 2}
!49 = !{i32 2, !"Debug Info Version", i32 700000003}
!50 = !{i32 1, !"PIC Level", i32 2}
!51 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!52 = !DILocation(line: 29, column: 1, scope: !4)
!53 = !DIExpression()
!54 = !DILocation(line: 83, column: 37, scope: !10)
!55 = !DILocation(line: 83, column: 60, scope: !10)
!56 = !DILocation(line: 83, column: 71, scope: !10)
!57 = !DILocation(line: 86, column: 3, scope: !10)
!58 = !DILocation(line: 86, column: 8, scope: !10)
!59 = !DILocation(line: 89, column: 21, scope: !10)
!60 = !DILocation(line: 85, column: 15, scope: !10)
!61 = !DILocation(line: 90, column: 3, scope: !10)
!62 = !DILocation(line: 92, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !10, file: !1, line: 92, column: 7)
!64 = !DILocation(line: 92, column: 7, scope: !10)
!65 = !DILocation(line: 94, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 94, column: 9)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 93, column: 3)
!68 = !DILocation(line: 94, column: 9, scope: !67)
!69 = !DILocation(line: 96, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 95, column: 5)
!71 = !DILocation(line: 98, column: 5, scope: !70)
!72 = !DILocation(line: 241, column: 43, scope: !30, inlinedAt: !73)
!73 = distinct !DILocation(line: 103, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 102, column: 3)
!75 = !DILocation(line: 241, column: 66, scope: !30, inlinedAt: !73)
!76 = !DILocation(line: 244, column: 7, scope: !30, inlinedAt: !73)
!77 = !DILocation(line: 245, column: 7, scope: !30, inlinedAt: !73)
!78 = !DILocation(line: 246, column: 7, scope: !30, inlinedAt: !73)
!79 = !DILocation(line: 243, column: 7, scope: !30, inlinedAt: !73)
!80 = !DILocation(line: 248, column: 9, scope: !30, inlinedAt: !73)
!81 = !DILocation(line: 248, column: 17, scope: !30, inlinedAt: !73)
!82 = !DILocation(line: 253, column: 3, scope: !30, inlinedAt: !73)
!83 = !DILocation(line: 255, column: 9, scope: !84, inlinedAt: !73)
!84 = distinct !DILexicalBlock(scope: !30, file: !1, line: 255, column: 7)
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !DILocation(line: 258, column: 44, scope: !90, inlinedAt: !73)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 256, column: 3)
!91 = !DILocation(line: 255, column: 7, scope: !30, inlinedAt: !73)
!92 = !DILocation(line: 258, column: 14, scope: !90, inlinedAt: !73)
!93 = !DILocation(line: 259, column: 3, scope: !90, inlinedAt: !73)
!94 = !DILocation(line: 263, column: 9, scope: !95, inlinedAt: !73)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 263, column: 9)
!96 = distinct !DILexicalBlock(scope: !84, file: !1, line: 261, column: 3)
!97 = !DILocation(line: 263, column: 9, scope: !96, inlinedAt: !73)
!98 = !DILocation(line: 265, column: 37, scope: !99, inlinedAt: !73)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 264, column: 5)
!100 = !DILocation(line: 265, column: 15, scope: !99, inlinedAt: !73)
!101 = !DILocation(line: 247, column: 15, scope: !30, inlinedAt: !73)
!102 = !DILocation(line: 267, column: 33, scope: !103, inlinedAt: !73)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 267, column: 11)
!104 = !DILocation(line: 267, column: 13, scope: !103, inlinedAt: !73)
!105 = !DILocation(line: 267, column: 11, scope: !99, inlinedAt: !73)
!106 = !DILocation(line: 270, column: 41, scope: !107, inlinedAt: !73)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 268, column: 7)
!108 = !DILocation(line: 270, column: 22, scope: !107, inlinedAt: !73)
!109 = !DILocation(line: 271, column: 7, scope: !107, inlinedAt: !73)
!110 = !DILocation(line: 103, column: 14, scope: !74)
!111 = !DILocation(line: 275, column: 29, scope: !112, inlinedAt: !73)
!112 = distinct !DILexicalBlock(scope: !96, file: !1, line: 275, column: 9)
!113 = !DILocation(line: 275, column: 9, scope: !112, inlinedAt: !73)
!114 = !DILocation(line: 275, column: 9, scope: !96, inlinedAt: !73)
!115 = !DILocation(line: 281, column: 11, scope: !116, inlinedAt: !73)
!116 = distinct !DILexicalBlock(scope: !96, file: !1, line: 281, column: 9)
!117 = !DILocation(line: 281, column: 9, scope: !96, inlinedAt: !73)
!118 = !DILocation(line: 278, column: 41, scope: !119, inlinedAt: !73)
!119 = distinct !DILexicalBlock(scope: !112, file: !1, line: 276, column: 5)
!120 = !DILocation(line: 278, column: 48, scope: !119, inlinedAt: !73)
!121 = !DILocation(line: 278, column: 22, scope: !119, inlinedAt: !73)
!122 = !DILocation(line: 286, column: 20, scope: !123, inlinedAt: !73)
!123 = distinct !DILexicalBlock(scope: !116, file: !1, line: 286, column: 14)
!124 = !DILocation(line: 286, column: 39, scope: !123, inlinedAt: !73)
!125 = !DILocation(line: 286, column: 25, scope: !123, inlinedAt: !73)
!126 = !DILocation(line: 291, column: 25, scope: !127, inlinedAt: !73)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 291, column: 14)
!128 = !DILocation(line: 297, column: 14, scope: !127, inlinedAt: !73)
!129 = !DILocation(line: 300, column: 16, scope: !130, inlinedAt: !73)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 298, column: 5)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 297, column: 14)
!132 = !DILocation(line: 301, column: 5, scope: !130, inlinedAt: !73)
!133 = !DILocation(line: 304, column: 27, scope: !134, inlinedAt: !73)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 303, column: 5)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 302, column: 14)
!136 = !DILocation(line: 302, column: 14, scope: !131, inlinedAt: !73)
!137 = !DILocation(line: 309, column: 9, scope: !30, inlinedAt: !73)
!138 = !DILocation(line: 309, column: 3, scope: !30, inlinedAt: !73)
!139 = !DILocation(line: 310, column: 9, scope: !30, inlinedAt: !73)
!140 = !DILocation(line: 310, column: 3, scope: !30, inlinedAt: !73)
!141 = !DILocation(line: 312, column: 3, scope: !30, inlinedAt: !73)
!142 = !DILocation(line: 85, column: 7, scope: !10)
!143 = !DILocation(line: 106, column: 7, scope: !10)
!144 = !DILocation(line: 108, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 107, column: 3)
!146 = distinct !DILexicalBlock(scope: !10, file: !1, line: 106, column: 7)
!147 = !DILocation(line: 111, column: 16, scope: !145)
!148 = !{!149, !149, i64 0}
!149 = !{!"int", !87, i64 0}
!150 = !DILocation(line: 112, column: 3, scope: !145)
!151 = !DILocation(line: 116, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 114, column: 3)
!153 = distinct !DILexicalBlock(scope: !146, file: !1, line: 113, column: 12)
!154 = !DILocation(line: 119, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 119, column: 9)
!156 = !DILocation(line: 119, column: 9, scope: !152)
!157 = !DILocation(line: 121, column: 18, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 120, column: 5)
!159 = !DILocation(line: 122, column: 5, scope: !158)
!160 = !DILocation(line: 125, column: 18, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 124, column: 5)
!162 = !DILocation(line: 131, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 129, column: 3)
!164 = distinct !DILexicalBlock(scope: !153, file: !1, line: 128, column: 12)
!165 = !DILocation(line: 134, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 134, column: 9)
!167 = !DILocation(line: 134, column: 9, scope: !163)
!168 = !DILocation(line: 136, column: 18, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 135, column: 5)
!170 = !DILocation(line: 137, column: 5, scope: !169)
!171 = !DILocation(line: 140, column: 18, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !1, line: 139, column: 5)
!173 = !DILocation(line: 146, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 144, column: 3)
!175 = distinct !DILexicalBlock(scope: !164, file: !1, line: 143, column: 12)
!176 = !DILocation(line: 149, column: 9, scope: !174)
!177 = !DILocation(line: 151, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 150, column: 5)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 149, column: 9)
!180 = !DILocation(line: 152, column: 5, scope: !178)
!181 = !DILocation(line: 155, column: 18, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 154, column: 5)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 153, column: 14)
!184 = !DILocation(line: 156, column: 5, scope: !182)
!185 = !DILocation(line: 160, column: 1, scope: !10)
!186 = !DILocation(line: 183, column: 39, scope: !24)
!187 = !DILocation(line: 188, column: 7, scope: !24)
!188 = !DILocation(line: 190, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 189, column: 3)
!190 = distinct !DILexicalBlock(scope: !24, file: !1, line: 188, column: 7)
!191 = !DILocation(line: 185, column: 7, scope: !24)
!192 = !DILocation(line: 191, column: 3, scope: !189)
!193 = !DILocation(line: 194, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 193, column: 3)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 192, column: 12)
!196 = !DILocation(line: 195, column: 3, scope: !194)
!197 = !DILocation(line: 201, column: 3, scope: !24)
