; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.regmatch_t = type { i32, i32 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }

@.str = private unnamed_addr constant [73 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_Equals: First string null (2nd is %s)\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"CCTK_Equals: Second string null (1st is %s)\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"CCTK_Equals: Both strings null\00", align 1
@.str5 = private unnamed_addr constant [106 x i8] c"Null Terminating a string with length %d !!\0AThis is probably an error in calling a C routine from Fortran\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"(\5C[|\5C()?([^]):]*):?([^]):]*)?:?([^]):]*)?(\5C]|\5C))?\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"Flesh\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Invalid range\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str20 = private unnamed_addr constant [102 x i8] c"CCTK_FortranString: fortran string buffer is too short to hold C string '%s, string will be truncated\00", align 1
@.str21 = private unnamed_addr constant [79 x i8] c"$Header: /cactus/Cactus/src/util/Misc.c,v 1.61 2001/12/04 10:42:39 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Misc_c() #0 {
  ret i8* getelementptr inbounds ([79 x i8]* @.str21, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_Equals(i8* %string1, i8* %string2) #1 {
  %1 = icmp ne i8* %string1, null
  %2 = icmp ne i8* %string2, null
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %12, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp eq i8* %string1, null
  %or.cond3 = and i1 %4, %2
  br i1 %or.cond3, label %5, label %7

; <label>:5                                       ; preds = %3
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 128, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %string2) #7
  br label %15

; <label>:7                                       ; preds = %3
  %or.cond5 = or i1 %4, %2
  br i1 %or.cond5, label %10, label %8

; <label>:8                                       ; preds = %7
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 134, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i8* %string1) #7
  br label %15

; <label>:10                                      ; preds = %7
  %11 = tail call i32 @CCTK_Warn(i32 0, i32 139, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #7
  br label %15

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @Util_StrCmpi(i8* %string1, i8* %string2) #7
  %14 = icmp eq i32 %13, 0
  %. = zext i1 %14 to i32
  ret i32 %.

; <label>:15                                      ; preds = %5, %10, %8
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_equals_(i8** nocapture readonly %arg1, i8* nocapture readonly %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = load i8** %arg1, align 8, !tbaa !2
  %3 = tail call i32 @CCTK_Equals(i8* %2, i8* %1) #8
  tail call void @free(i8* %1) #8
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @Util_NullTerminateString(i8* nocapture readonly %instring, i32 %len) #1 {
  %1 = icmp ugt i32 %len, 100000
  br i1 %1, label %2, label %.preheader1

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 205, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str5, i64 0, i64 0), i32 %len) #7
  br label %.preheader1

.preheader1:                                      ; preds = %0, %2, %5
  %position.0 = phi i32 [ %6, %5 ], [ %len, %2 ], [ %len, %0 ]
  %4 = icmp eq i32 %position.0, 0
  br i1 %4, label %.critedge, label %5

; <label>:5                                       ; preds = %.preheader1
  %6 = add i32 %position.0, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds i8* %instring, i64 %7
  %9 = load i8* %8, align 1, !tbaa !6
  %10 = icmp eq i8 %9, 32
  br i1 %10, label %.preheader1, label %.critedge

.critedge:                                        ; preds = %.preheader1, %5
  %position.0.lcssa = phi i32 [ 0, %.preheader1 ], [ %position.0, %5 ]
  %11 = add i32 %position.0.lcssa, 1
  %12 = zext i32 %11 to i64
  %13 = tail call i8* @malloc(i64 %12) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %22, label %.preheader

.preheader:                                       ; preds = %.critedge
  %15 = icmp eq i32 %position.0.lcssa, 0
  br i1 %15, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %16 = add i32 %position.0.lcssa, -1
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %instring, i64 %18, i32 1, i1 false)
  br label %19

; <label>:19                                      ; preds = %.preheader, %.lr.ph
  %20 = zext i32 %position.0.lcssa to i64
  %21 = getelementptr inbounds i8* %13, i64 %20
  store i8 0, i8* %21, align 1, !tbaa !6
  br label %22

; <label>:22                                      ; preds = %.critedge, %19
  ret i8* %13
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_InList(i8* %string1, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = icmp sgt i32 %n_elements, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %8

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements
  br i1 %7, label %8, label %._crit_edge

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16
  %13 = sext i32 %9 to i64
  %14 = getelementptr i8* %12, i64 %13
  %15 = add i32 %9, 8
  store i32 %15, i32* %3, align 16
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8
  %18 = getelementptr i8* %17, i64 8
  store i8* %18, i8** %5, align 8
  br label %19

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**
  %21 = load i8** %20, align 8
  %22 = call i32 @CCTK_Equals(i8* %string1, i8* %21) #8
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %arg.01, 1
  br i1 %23, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1)
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_IntInRange(i32 %inval, i8* %range) #1 {
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  %1 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #4
  %2 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %3 = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %78, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 1, i32 0
  %7 = load i32* %6, align 8, !tbaa !7
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %13, label %9

; <label>:9                                       ; preds = %5
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i8* %range, i64 %10
  %12 = load i8* %11, align 1, !tbaa !6
  %cond = icmp eq i8 %12, 40
  %. = zext i1 %cond to i32
  br label %13

; <label>:13                                      ; preds = %5, %9
  %start_closed.0 = phi i32 [ %., %9 ], [ 0, %5 ]
  %14 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0
  %15 = bitcast i32* %14 to i64*
  %16 = load i64* %15, align 16
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %30, label %19

; <label>:19                                      ; preds = %13
  %20 = lshr i64 %16, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, %17
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %19
  %sext6 = shl i64 %16, 32
  %24 = ashr exact i64 %sext6, 32
  %25 = getelementptr inbounds i8* %range, i64 %24
  %26 = load i8* %25, align 1, !tbaa !6
  %27 = icmp eq i8 %26, 42
  br i1 %27, label %30, label %28

; <label>:28                                      ; preds = %23
  %29 = call i32 @atoi(i8* %25) #7
  br label %30

; <label>:30                                      ; preds = %19, %13, %23, %28
  %start.0 = phi i32 [ %29, %28 ], [ -2147483648, %23 ], [ -2147483648, %13 ], [ -2147483648, %19 ]
  %31 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0
  %32 = bitcast i32* %31 to i64*
  %33 = load i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %47, label %36

; <label>:36                                      ; preds = %30
  %37 = lshr i64 %33, 32
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %38, %34
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %36
  %sext5 = shl i64 %33, 32
  %41 = ashr exact i64 %sext5, 32
  %42 = getelementptr inbounds i8* %range, i64 %41
  %43 = load i8* %42, align 1, !tbaa !6
  %44 = icmp eq i8 %43, 42
  br i1 %44, label %47, label %45

; <label>:45                                      ; preds = %40
  %46 = call i32 @atoi(i8* %42) #7
  br label %47

; <label>:47                                      ; preds = %36, %30, %40, %45
  %end.0 = phi i32 [ %46, %45 ], [ 2147483647, %40 ], [ 2147483647, %30 ], [ 2147483647, %36 ]
  %48 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 4, i32 0
  %49 = bitcast i32* %48 to i64*
  %50 = load i64* %49, align 16
  %51 = trunc i64 %50 to i32
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %61, label %53

; <label>:53                                      ; preds = %47
  %54 = lshr i64 %50, 32
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, %51
  br i1 %56, label %57, label %61

; <label>:57                                      ; preds = %53
  %sext = shl i64 %50, 32
  %58 = ashr exact i64 %sext, 32
  %59 = getelementptr inbounds i8* %range, i64 %58
  %60 = call i32 @atoi(i8* %59) #7
  br label %61

; <label>:61                                      ; preds = %53, %47, %57
  %step.0 = phi i32 [ %60, %57 ], [ 1, %47 ], [ 1, %53 ]
  %62 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 5, i32 0
  %63 = load i32* %62, align 8, !tbaa !7
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %69, label %65

; <label>:65                                      ; preds = %61
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds i8* %range, i64 %66
  %68 = load i8* %67, align 1, !tbaa !6
  %cond1 = icmp eq i8 %68, 41
  %.2 = zext i1 %cond1 to i32
  br label %69

; <label>:69                                      ; preds = %61, %65
  %end_closed.0 = phi i32 [ %.2, %65 ], [ 0, %61 ]
  %70 = add nsw i32 %start.0, %start_closed.0
  %71 = icmp sgt i32 %70, %inval
  %72 = sub nsw i32 %end.0, %end_closed.0
  %73 = icmp slt i32 %72, %inval
  %or.cond = or i1 %71, %73
  br i1 %or.cond, label %80, label %74

; <label>:74                                      ; preds = %69
  %75 = sub nsw i32 %inval, %start.0
  %76 = srem i32 %75, %step.0
  %77 = icmp eq i32 %76, 0
  %.4 = zext i1 %77 to i32
  br label %80

; <label>:78                                      ; preds = %0
  %79 = call i32 @CCTK_Warn(i32 1, i32 444, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7
  br label %80

; <label>:80                                      ; preds = %74, %69, %78
  %retval.0 = phi i32 [ 0, %69 ], [ 0, %78 ], [ %.4, %74 ]
  call void @llvm.lifetime.end(i64 48, i8* %1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegexMatch(i8* %string, i8* %pattern, i32 %nmatch, %struct.regmatch_t* %pmatch) #1 {
  %re = alloca %struct.re_pattern_buffer, align 8
  %1 = bitcast %struct.re_pattern_buffer* %re to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #4
  %2 = call i32 @regcomp(%struct.re_pattern_buffer* %re, i8* %pattern, i32 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = sext i32 %nmatch to i64
  %6 = call i32 @regexec(%struct.re_pattern_buffer* %re, i8* %string, i64 %5, %struct.regmatch_t* %pmatch, i32 0) #7
  call void @regfree(%struct.re_pattern_buffer* %re) #7
  %7 = icmp eq i32 %6, 0
  %. = zext i1 %7 to i32
  br label %8

; <label>:8                                       ; preds = %0, %4
  %retval.0 = phi i32 [ %., %4 ], [ 0, %0 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DoubleInRange(double %inval, i8* %range) #1 {
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  %1 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #4
  %2 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0
  %3 = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %2) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0
  %7 = bitcast i32* %6 to i64*
  %8 = load i64* %7, align 16
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %22, label %11

; <label>:11                                      ; preds = %5
  %12 = lshr i64 %8, 32
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %9
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %11
  %sext1 = shl i64 %8, 32
  %16 = ashr exact i64 %sext1, 32
  %17 = getelementptr inbounds i8* %range, i64 %16
  %18 = load i8* %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 42
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %15
  %21 = call double @atof(i8* %17) #7
  br label %22

; <label>:22                                      ; preds = %11, %5, %15, %20
  %start.0 = phi double [ %21, %20 ], [ 0xC7EFFFFFE0000000, %15 ], [ 0xC7EFFFFFE0000000, %5 ], [ 0xC7EFFFFFE0000000, %11 ]
  %23 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0
  %24 = bitcast i32* %23 to i64*
  %25 = load i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %39, label %28

; <label>:28                                      ; preds = %22
  %29 = lshr i64 %25, 32
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %30, %26
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %28
  %sext = shl i64 %25, 32
  %33 = ashr exact i64 %sext, 32
  %34 = getelementptr inbounds i8* %range, i64 %33
  %35 = load i8* %34, align 1, !tbaa !6
  %36 = icmp eq i8 %35, 42
  br i1 %36, label %39, label %37

; <label>:37                                      ; preds = %32
  %38 = call double @atof(i8* %34) #7
  br label %39

; <label>:39                                      ; preds = %28, %22, %32, %37
  %end.0 = phi double [ %38, %37 ], [ 0x47EFFFFFE0000000, %32 ], [ 0x47EFFFFFE0000000, %22 ], [ 0x47EFFFFFE0000000, %28 ]
  %40 = fcmp ugt double %start.0, %inval
  %41 = fcmp ult double %end.0, %inval
  %or.cond = or i1 %40, %41
  %42 = zext i1 %or.cond to i32
  %. = xor i32 %42, 1
  br label %45

; <label>:43                                      ; preds = %0
  %44 = call i32 @CCTK_Warn(i32 1, i32 595, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7
  br label %45

; <label>:45                                      ; preds = %39, %43
  %retval.0 = phi i32 [ 0, %43 ], [ %., %39 ]
  call void @llvm.lifetime.end(i64 48, i8* %1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_IntInRangeList(i32 %inval, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = icmp sgt i32 %n_elements, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %8

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements
  br i1 %7, label %8, label %._crit_edge

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16
  %13 = sext i32 %9 to i64
  %14 = getelementptr i8* %12, i64 %13
  %15 = add i32 %9, 8
  store i32 %15, i32* %3, align 16
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8
  %18 = getelementptr i8* %17, i64 8
  store i8* %18, i8** %5, align 8
  br label %19

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**
  %21 = load i8** %20, align 8
  %22 = call i32 @Util_IntInRange(i32 %inval, i8* %21) #8
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %arg.01, 1
  br i1 %23, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DoubleInRangeList(double %inval, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = icmp sgt i32 %n_elements, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %8

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements
  br i1 %7, label %8, label %._crit_edge

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16
  %13 = sext i32 %9 to i64
  %14 = getelementptr i8* %12, i64 %13
  %15 = add i32 %9, 8
  store i32 %15, i32* %3, align 16
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8
  %18 = getelementptr i8* %17, i64 8
  store i8* %18, i8** %5, align 8
  br label %19

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**
  %21 = load i8** %20, align 8
  %22 = call i32 @Util_DoubleInRange(double %inval, i8* %21) #8
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %arg.01, 1
  br i1 %23, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %19, %0
  %retval.0 = phi i32 [ 0, %0 ], [ 0, %6 ], [ 1, %19 ]
  call void @llvm.va_end(i8* %1)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetDoubleInRangeList(double* nocapture %data, i8* nocapture readonly %value, i32 %n_elements, ...) #1 {
  %temp = alloca [1001 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1001, i8* %1) #4
  %strncpy = call i8* @strncpy(i8* %1, i8* %value, i64 1000)
  %strlenfirst = load i8* %1, align 16
  %2 = icmp eq i8 %strlenfirst, 0
  br i1 %2, label %.loopexit1, label %.lr.ph4

.lr.ph4:                                          ; preds = %0, %._crit_edge
  %3 = phi i8 [ %.pre, %._crit_edge ], [ %strlenfirst, %0 ]
  %4 = phi i64 [ %9, %._crit_edge ], [ 0, %0 ]
  %p.03 = phi i32 [ %8, %._crit_edge ], [ 0, %0 ]
  %5 = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %4
  switch i8 %3, label %7 [
    i8 69, label %6
    i8 100, label %6
    i8 68, label %6
  ]

; <label>:6                                       ; preds = %.lr.ph4, %.lr.ph4, %.lr.ph4
  store i8 101, i8* %5, align 1, !tbaa !6
  br label %.loopexit1

; <label>:7                                       ; preds = %.lr.ph4
  %8 = add i32 %p.03, 1
  %9 = zext i32 %8 to i64
  %10 = call i64 @strlen(i8* %1) #7
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %._crit_edge, label %.loopexit1

._crit_edge:                                      ; preds = %7
  %.phi.trans.insert = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %9
  %.pre = load i8* %.phi.trans.insert, align 1, !tbaa !6
  br label %.lr.ph4

.loopexit1:                                       ; preds = %7, %0, %6
  %12 = call double @atof(i8* %1) #7
  %13 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %13)
  %14 = icmp sgt i32 %n_elements, 0
  br i1 %14, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit1
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %20

; <label>:18                                      ; preds = %31
  %19 = icmp slt i32 %36, %n_elements
  br i1 %19, label %20, label %.loopexit

; <label>:20                                      ; preds = %.lr.ph, %18
  %arg.02 = phi i32 [ 0, %.lr.ph ], [ %36, %18 ]
  %21 = load i32* %15, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %28

; <label>:23                                      ; preds = %20
  %24 = load i8** %16, align 16
  %25 = sext i32 %21 to i64
  %26 = getelementptr i8* %24, i64 %25
  %27 = add i32 %21, 8
  store i32 %27, i32* %15, align 16
  br label %31

; <label>:28                                      ; preds = %20
  %29 = load i8** %17, align 8
  %30 = getelementptr i8* %29, i64 8
  store i8* %30, i8** %17, align 8
  br label %31

; <label>:31                                      ; preds = %28, %23
  %.in = phi i8* [ %26, %23 ], [ %29, %28 ]
  %32 = bitcast i8* %.in to i8**
  %33 = load i8** %32, align 8
  %34 = call i32 @Util_DoubleInRange(double %12, i8* %33) #8
  %35 = icmp eq i32 %34, 0
  %36 = add nuw nsw i32 %arg.02, 1
  br i1 %35, label %18, label %37

; <label>:37                                      ; preds = %31
  store double %12, double* %data, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %18, %.loopexit1, %37
  %retval.0 = phi i32 [ 0, %37 ], [ 1, %.loopexit1 ], [ 1, %18 ]
  call void @llvm.va_end(i8* %13)
  call void @llvm.lifetime.end(i64 1001, i8* %1) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetIntInRangeList(i32* nocapture %data, i8* nocapture readonly %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = tail call i32 @atoi(i8* %value) #7
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %2)
  %3 = icmp sgt i32 %n_elements, 0
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %9

; <label>:7                                       ; preds = %20
  %8 = icmp slt i32 %25, %n_elements
  br i1 %8, label %9, label %.loopexit

; <label>:9                                       ; preds = %.lr.ph, %7
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %25, %7 ]
  %10 = load i32* %4, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %9
  %13 = load i8** %5, align 16
  %14 = sext i32 %10 to i64
  %15 = getelementptr i8* %13, i64 %14
  %16 = add i32 %10, 8
  store i32 %16, i32* %4, align 16
  br label %20

; <label>:17                                      ; preds = %9
  %18 = load i8** %6, align 8
  %19 = getelementptr i8* %18, i64 8
  store i8* %19, i8** %6, align 8
  br label %20

; <label>:20                                      ; preds = %17, %12
  %.in = phi i8* [ %15, %12 ], [ %18, %17 ]
  %21 = bitcast i8* %.in to i8**
  %22 = load i8** %21, align 8
  %23 = call i32 @Util_IntInRange(i32 %1, i8* %22) #8
  %24 = icmp eq i32 %23, 0
  %25 = add nuw nsw i32 %arg.01, 1
  br i1 %24, label %7, label %26

; <label>:26                                      ; preds = %20
  store i32 %1, i32* %data, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %7, %0, %26
  %retval.0 = phi i32 [ 0, %26 ], [ 1, %0 ], [ 1, %7 ]
  call void @llvm.va_end(i8* %2)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetKeywordInRangeList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = icmp sgt i32 %n_elements, 0
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %8

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements
  br i1 %7, label %8, label %.loopexit

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16
  %13 = sext i32 %9 to i64
  %14 = getelementptr i8* %12, i64 %13
  %15 = add i32 %9, 8
  store i32 %15, i32* %3, align 16
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8
  %18 = getelementptr i8* %17, i64 8
  store i8* %18, i8** %5, align 8
  br label %19

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**
  %21 = load i8** %20, align 8
  %22 = call i32 @CCTK_Equals(i8* %value, i8* %21) #8
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %arg.01, 1
  br i1 %23, label %6, label %25

; <label>:25                                      ; preds = %19
  %26 = load i8** %data, align 8, !tbaa !2
  %27 = icmp eq i8* %26, null
  br i1 %27, label %29, label %28

; <label>:28                                      ; preds = %25
  call void @free(i8* %26) #8
  br label %29

; <label>:29                                      ; preds = %25, %28
  %30 = call i64 @strlen(i8* %value) #7
  %31 = add i64 %30, 1
  %32 = call i8* @malloc(i64 %31) #7
  store i8* %32, i8** %data, align 8, !tbaa !2
  %33 = icmp eq i8* %32, null
  br i1 %33, label %.loopexit, label %34

; <label>:34                                      ; preds = %29
  %35 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false)
  %36 = call i8* @__strcpy_chk(i8* %32, i8* %value, i64 %35) #7
  br label %.loopexit

.loopexit:                                        ; preds = %6, %0, %29, %34
  %retval.0 = phi i32 [ 0, %34 ], [ -1, %29 ], [ 1, %0 ], [ 1, %6 ]
  call void @llvm.va_end(i8* %1)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetStringInRegexList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = icmp sgt i32 %n_elements, 0
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %8

; <label>:6                                       ; preds = %19
  %7 = icmp slt i32 %24, %n_elements
  br i1 %7, label %8, label %.loopexit

; <label>:8                                       ; preds = %.lr.ph, %6
  %arg.01 = phi i32 [ 0, %.lr.ph ], [ %24, %6 ]
  %9 = load i32* %3, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %8
  %12 = load i8** %4, align 16
  %13 = sext i32 %9 to i64
  %14 = getelementptr i8* %12, i64 %13
  %15 = add i32 %9, 8
  store i32 %15, i32* %3, align 16
  br label %19

; <label>:16                                      ; preds = %8
  %17 = load i8** %5, align 8
  %18 = getelementptr i8* %17, i64 8
  store i8* %18, i8** %5, align 8
  br label %19

; <label>:19                                      ; preds = %16, %11
  %.in = phi i8* [ %14, %11 ], [ %17, %16 ]
  %20 = bitcast i8* %.in to i8**
  %21 = load i8** %20, align 8
  %22 = call i32 @CCTK_RegexMatch(i8* %value, i8* %21, i32 0, %struct.regmatch_t* null) #8
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i32 %arg.01, 1
  br i1 %23, label %6, label %25

; <label>:25                                      ; preds = %19
  %26 = call i32 @CCTK_SetString(i8** %data, i8* %value) #8
  br label %.loopexit

.loopexit:                                        ; preds = %6, %0, %25
  %retval.0 = phi i32 [ %26, %25 ], [ 1, %0 ], [ 1, %6 ]
  call void @llvm.va_end(i8* %1)
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetString(i8** nocapture %data, i8* %value) #1 {
  %1 = load i8** %data, align 8, !tbaa !2
  %2 = icmp eq i8* %1, null
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call void @free(i8* %1) #8
  br label %4

; <label>:4                                       ; preds = %0, %3
  %5 = tail call i64 @strlen(i8* %value) #7
  %6 = add i64 %5, 1
  %7 = tail call i8* @malloc(i64 %6) #7
  store i8* %7, i8** %data, align 8, !tbaa !2
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %4
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %11 = tail call i8* @__strcpy_chk(i8* %7, i8* %value, i64 %10) #7
  br label %12

; <label>:12                                      ; preds = %4, %9
  %retval.0 = phi i32 [ 0, %9 ], [ -1, %4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SetBoolean(i32* nocapture %data, i8* %value) #1 {
  %1 = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  store i32 1, i32* %data, align 4, !tbaa !12
  br label %8

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7                                       ; preds = %4
  store i32 0, i32* %data, align 4, !tbaa !12
  br label %8

; <label>:8                                       ; preds = %4, %7, %3
  %retval.0 = phi i32 [ 0, %3 ], [ 0, %7 ], [ -1, %4 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) #2

; Function Attrs: optsize
declare void @regfree(%struct.re_pattern_buffer*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_PrintString(i8* nocapture readonly %data) #1 {
  %puts = tail call i32 @puts(i8* %data)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_printstring_(i8** nocapture readonly %arg1) #1 {
  %1 = load i8** %arg1, align 8, !tbaa !2
  %puts.i = tail call i32 @puts(i8* %1) #4
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_fortranstring_(i32* nocapture %nchars, i8** nocapture readonly %c_string, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = load i8** %c_string, align 8, !tbaa !2
  %3 = tail call i64 @strlen(i8* %2) #7
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %nchars, align 4, !tbaa !12
  %5 = zext i32 %cctk_strlen1 to i64
  %6 = icmp ugt i64 %3, %5
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1370, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str20, i64 0, i64 0), i8* %2) #7
  %.pre = load i8** %c_string, align 8, !tbaa !2
  br label %9

; <label>:9                                       ; preds = %7, %0
  %10 = phi i8* [ %.pre, %7 ], [ %2, %0 ]
  %c_strlen.0 = phi i64 [ %5, %7 ], [ %3, %0 ]
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %cctk_str1, i1 false)
  %12 = tail call i8* @__memcpy_chk(i8* %cctk_str1, i8* %10, i64 %c_strlen.0, i64 %11) #7
  %13 = getelementptr inbounds i8* %cctk_str1, i64 %c_strlen.0
  %14 = sub i64 %5, %c_strlen.0
  %15 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %16 = tail call i8* @__memset_chk(i8* %13, i32 32, i64 %14, i64 %15) #7
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 4}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!9, !9, i64 0}
