; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [12 x i8] c"INFO (%s): \00", align 1
@warning_level = internal unnamed_addr global i32 1, align 4
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [19 x i8] c"cctk_full_warnings\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@error_level = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [68 x i8] c"WARNING level %d in thorn %s processor %d\0A  (line %d of %s): \0A  -> \00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"WARNING[L%d,P%d] (%s): \00", align 1
@CCTK_Abort = external global i32 (%struct.cGH*, i32)*
@parameter_level = internal unnamed_addr global i32 1, align 4
@.str7 = private unnamed_addr constant [24 x i8] c"cctk_strong_param_check\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"PARAM %s (%s): %s\0A\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@param_errors = internal unnamed_addr global i32 0, align 4
@formatlist = internal global %struct.PKeyedData* null, align 8
@n_formats = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/WarnLevel.c\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"CCTKi_SetParameterLevel: Parameter checking level %d not recognised, level unchanged\00", align 1
@.str13 = private unnamed_addr constant [31 x i8] c"%s warning level from %d to %d\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"Increasing\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"Decreasing\00", align 1
@.str16 = private unnamed_addr constant [28 x i8] c"Warning level is already %d\00", align 1
@.str17 = private unnamed_addr constant [44 x i8] c"Decreasing error level to new warning level\00", align 1
@.str18 = private unnamed_addr constant [29 x i8] c"%s error level from %d to %d\00", align 1
@.str19 = private unnamed_addr constant [26 x i8] c"Error level is already %d\00", align 1
@.str20 = private unnamed_addr constant [57 x i8] c"Increasing warning level from %d to match error level %d\00", align 1
@.str21 = private unnamed_addr constant [38 x i8] c"\0AFailed parameter check (%d errors)\0A\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"\0AThere was 1 parameter warning\0A\0A\00", align 1
@.str23 = private unnamed_addr constant [36 x i8] c"\0AThere were %d parameter warnings\0A\0A\00", align 1
@.str24 = private unnamed_addr constant [28 x i8] c"%s: feature not implemented\00", align 1
@.str25 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/WarnLevel.c,v 1.56 2001/12/10 00:46:25 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_WarnLevel_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str25, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Info(i8* %thorn, i8* %message) #1 {
  %1 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #7
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VInfo(i8* %thorn, i8* nocapture readonly %format, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %2)
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* %thorn) #8
  %5 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %6 = call i32 @vfprintf(%struct.__sFILE* %5, i8* %format, %struct.__va_list_tag* %1) #8
  %7 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %7)
  %8 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %9 = call i32 @fflush(%struct.__sFILE* %8) #8
  call void @llvm.va_end(i8* %2)
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_info_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %2) #8
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, %struct.__va_list_tag*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Warn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #7
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VWarn(i32 %level, i32 %line, i8* %file, i8* %thorn, i8* nocapture readonly %format, ...) #1 {
  %param_type = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = load i32* @warning_level, align 4, !tbaa !6
  %2 = icmp slt i32 %1, %level
  br i1 %2, label %45, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %5 = tail call i32 %4(%struct.cGH* null) #8
  %6 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32* @error_level, align 4, !tbaa !6
  %9 = icmp slt i32 %8, %level
  br i1 %9, label %10, label %15

; <label>:10                                      ; preds = %3
  %11 = icmp eq i8* %6, null
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %10
  %13 = load i32* %7, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

; <label>:15                                      ; preds = %12, %3
  %16 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %17 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %5, i32 %line, i8* %file) #8
  %18 = icmp eq i32 %5, 0
  br i1 %18, label %29, label %19

; <label>:19                                      ; preds = %15
  %20 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([68 x i8]* @.str5, i64 0, i64 0), i32 %level, i8* %thorn, i32 %5, i32 %line, i8* %file) #8
  br label %29

; <label>:22                                      ; preds = %12, %10
  %23 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %5, i8* %thorn) #8
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %22
  %27 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %28 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %level, i32 %5, i8* %thorn) #8
  br label %29

; <label>:29                                      ; preds = %15, %22, %26, %19
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %31 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %31)
  %32 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %33 = call i32 @vfprintf(%struct.__sFILE* %32, i8* %format, %struct.__va_list_tag* %30) #8
  %34 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %34)
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %36 = call i32 @fflush(%struct.__sFILE* %35) #8
  %37 = icmp eq i32 %5, 0
  br i1 %37, label %44, label %38

; <label>:38                                      ; preds = %29
  %39 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %40 = call i32 @vfprintf(%struct.__sFILE* %39, i8* %format, %struct.__va_list_tag* %30) #8
  %41 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %fputc3 = call i32 @fputc(i32 10, %struct.__sFILE* %41)
  %42 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %43 = call i32 @fflush(%struct.__sFILE* %42) #8
  br label %44

; <label>:44                                      ; preds = %29, %38
  call void @llvm.va_end(i8* %31)
  br label %45

; <label>:45                                      ; preds = %0, %44
  %46 = load i32* @error_level, align 4, !tbaa !6
  %47 = icmp slt i32 %46, %level
  br i1 %47, label %51, label %48

; <label>:48                                      ; preds = %45
  %49 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !tbaa !2
  %50 = call i32 %49(%struct.cGH* null, i32 0) #8
  br label %51

; <label>:51                                      ; preds = %45, %48
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_warn_(i32* nocapture readonly %level, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #8
  %4 = load i32* %level, align 4, !tbaa !6
  %5 = load i32* %line, align 4, !tbaa !6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %4, i32 %5, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #8
  tail call void @free(i8* %2) #7
  tail call void @free(i8* %3) #7
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_ParameterLevel() #5 {
  %1 = load i32* @parameter_level, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParamWarn(i8* %thorn, i8* %message) #1 {
  %param_type = alloca i32, align 4
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #8
  %2 = bitcast i8* %1 to i32*
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %4 = load i32* %2, align 4, !tbaa !6
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0)
  %7 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* %6, i8* %thorn, i8* %message) #8
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %9 = call i32 @fflush(%struct.__sFILE* %8) #8
  %10 = load i32* @param_errors, align 4, !tbaa !6
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @param_errors, align 4, !tbaa !6
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_paramwarn_(i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i32 @CCTK_ParamWarn(i8* %1, i8* %2) #7
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_messageformat_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = load i32* @n_formats, align 4, !tbaa !6
  %3 = tail call i32 @StoreKeyedData(%struct.PKeyedData** @formatlist, i32 %2, i8* %1) #8
  %4 = load i32* @n_formats, align 4, !tbaa !6
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @n_formats, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @StoreKeyedData(%struct.PKeyedData**, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetParameterLevel(i32 %level) #1 {
  %1 = icmp ult i32 %level, 3
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 %level, i32* @parameter_level, align 4, !tbaa !6
  br label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 487, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i32 %level) #7
  %.pre = load i32* @parameter_level, align 4, !tbaa !6
  br label %5

; <label>:5                                       ; preds = %3, %2
  %6 = phi i32 [ %.pre, %3 ], [ %level, %2 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetWarnLevel(i32 %level) #1 {
  %1 = load i32* @warning_level, align 4, !tbaa !6
  %2 = icmp eq i32 %1, %level
  br i1 %2, label %8, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %1, %level
  %5 = select i1 %4, i32 1, i32 -1
  %6 = select i1 %4, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0)
  %7 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str13, i64 0, i64 0), i8* %6, i32 %1, i32 %level) #7
  store i32 %level, i32* @warning_level, align 4, !tbaa !6
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %level) #7
  %.pre = load i32* @warning_level, align 4, !tbaa !6
  br label %10

; <label>:10                                      ; preds = %8, %3
  %11 = phi i32 [ %level, %3 ], [ %.pre, %8 ]
  %retval.0 = phi i32 [ %5, %3 ], [ 0, %8 ]
  %12 = load i32* @error_level, align 4, !tbaa !6
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %10
  store i32 %11, i32* @error_level, align 4, !tbaa !6
  %15 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 541, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str17, i64 0, i64 0), i32 %11) #7
  br label %16

; <label>:16                                      ; preds = %14, %10
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetErrorLevel(i32 %level) #1 {
  %1 = load i32* @warning_level, align 4, !tbaa !6
  %2 = icmp slt i32 %1, %level
  br i1 %2, label %13, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32* @error_level, align 4, !tbaa !6
  %5 = icmp eq i32 %4, %level
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %3
  %7 = icmp slt i32 %4, %level
  %8 = select i1 %7, i32 1, i32 -1
  %9 = select i1 %7, i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0)
  %10 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str18, i64 0, i64 0), i8* %9, i32 %4, i32 %level) #7
  store i32 %level, i32* @error_level, align 4, !tbaa !6
  br label %15

; <label>:11                                      ; preds = %3
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 587, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0), i32 %level) #7
  br label %15

; <label>:13                                      ; preds = %0
  store i32 %level, i32* @error_level, align 4, !tbaa !6
  %14 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str20, i64 0, i64 0), i32 %1, i32 %level) #7
  store i32 %level, i32* @warning_level, align 4, !tbaa !6
  br label %15

; <label>:15                                      ; preds = %6, %11, %13
  %retval.0 = phi i32 [ %8, %6 ], [ 0, %11 ], [ 0, %13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ExpectError(i32 %in, i32 %err, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  %1 = icmp eq i32 %in, %err
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8
  br label %4

; <label>:4                                       ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_expecterror_(i32* nocapture readonly %in, i32* nocapture readonly %err, i32* nocapture readonly %warnonerr, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #8
  %4 = load i32* %in, align 4, !tbaa !6
  %5 = load i32* %err, align 4, !tbaa !6
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %CCTKi_ExpectError.exit

; <label>:7                                       ; preds = %0
  %8 = load i32* %line, align 4, !tbaa !6
  %9 = load i32* %warnonerr, align 4, !tbaa !6
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %9, i32 %8, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #8
  br label %CCTKi_ExpectError.exit

CCTKi_ExpectError.exit:                           ; preds = %0, %7
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  tail call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ExpectOK(i32 %in, i32 %ok, i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* %message) #1 {
  %1 = icmp eq i32 %in, %ok
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %warnonerr, i32 %line, i8* %file, i8* %thorn, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %message) #8
  br label %4

; <label>:4                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_expectok_(i32* nocapture readonly %in, i32* nocapture readonly %ok, i32* nocapture readonly %warnonerr, i32* nocapture readonly %line, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #8
  %4 = load i32* %in, align 4, !tbaa !6
  %5 = load i32* %ok, align 4, !tbaa !6
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %CCTKi_ExpectOK.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = load i32* %line, align 4, !tbaa !6
  %9 = load i32* %warnonerr, align 4, !tbaa !6
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 %9, i32 %8, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* %3) #8
  br label %CCTKi_ExpectOK.exit

CCTKi_ExpectOK.exit:                              ; preds = %0, %7
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  tail call void @free(i8* %3) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_FinaliseParamWarn() #1 {
  %param_type = alloca i32, align 4
  %1 = load i32* @param_errors, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %25, label %3

; <label>:3                                       ; preds = %0
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32* %param_type) #8
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %3
  %9 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %10 = load i32* @param_errors, align 4, !tbaa !6
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([38 x i8]* @.str21, i64 0, i64 0), i32 %10) #8
  %12 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %13 = call i32 @fflush(%struct.__sFILE* %12) #8
  call void @exit(i32 99) #9
  unreachable

; <label>:14                                      ; preds = %3
  %15 = load i32* @param_errors, align 4, !tbaa !6
  %16 = icmp eq i32 %15, 1
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  br i1 %16, label %18, label %20

; <label>:18                                      ; preds = %14
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %17)
  br label %22

; <label>:20                                      ; preds = %14
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i32 %15) #8
  br label %22

; <label>:22                                      ; preds = %20, %18
  %23 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %24 = call i32 @fflush(%struct.__sFILE* %23) #8
  br label %25

; <label>:25                                      ; preds = %0, %22
  ret void
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_NotYetImplemented(i8* %message) #1 {
  %1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %message) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_notyetimplemented_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 823, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str24, i64 0, i64 0), i8* %1) #8
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
