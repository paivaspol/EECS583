; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@Eslicings = internal global %struct.cHandledData* null, align 8
@num_slicings = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/Slicing.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"cannot allocate memory for new slicing\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"New handle %s (%d) already in use\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"Could not obtain slicing structure for handle %d\00", align 1
@einsteinrest_ = external global %struct.anon
@.str5 = private unnamed_addr constant [32 x i8] c"Einstein::active_slicing_handle\00", align 1
@.str6 = private unnamed_addr constant [47 x i8] c"Cannot find grid scalar: active_slicing_handle\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"No slicing set. Probably fatal for evolution\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str11 = private unnamed_addr constant [31 x i8] c"Cannot register static slicing\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str13 = private unnamed_addr constant [33 x i8] c"Cannot register geodesic slicing\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"Cannot get handle for slicing %s\00", align 1
@.str15 = private unnamed_addr constant [32 x i8] c"Cannot access handle structure!\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str17 = private unnamed_addr constant [45 x i8] c"ERROR: You have specified a unique slicing (\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c") AND a condition-function is registered for that slicing.\0A \00", align 1
@.str19 = private unnamed_addr constant [69 x i8] c"Impossible, what should I do inbetween ? Rather set slicing -> mixed\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str23 = private unnamed_addr constant [31 x i8] c"No registered slicing for <%s>\00", align 1
@.str24 = private unnamed_addr constant [60 x i8] c"Einstein_GetSlicingHandle: cannot get handle for slicing %s\00", align 1
@.str25 = private unnamed_addr constant [62 x i8] c"Slicing parameter specifies non-activated/registered slicing!\00", align 1
@.str26 = private unnamed_addr constant [48 x i8] c"Slicing registry out of sync! No slicing found!\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"ERROR: no active slicing found: hyes/hegal/hno: %d %d %d \0A\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str29 = private unnamed_addr constant [27 x i8] c"Cannot find slicing handle\00", align 1
@.str30 = private unnamed_addr constant [22 x i8] c"Next slicing: %s (%d)\00", align 1
@.str31 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/Slicing.c,v 1.25 2002/01/05 18:58:18 allen Exp $\00", align 1
@str = private unnamed_addr constant [19 x i8] c"Registering Static\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_Slicing_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str31, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Einstein_RegisterSlicing(i8* %slice_name) #1 {
  %1 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %slice_name, i8** null) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %18

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @malloc(i64 24) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %16, label %7

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @Util_NewHandle(%struct.cHandledData** @Eslicings, i8* %slice_name, i8* %5) #7
  %9 = bitcast i8* %5 to i8**
  store i8* %slice_name, i8** %9, align 8, !tbaa !6
  %10 = getelementptr inbounds i8* %5, i64 16
  %11 = bitcast i8* %10 to i32 (%struct.cGH*)**
  store i32 (%struct.cGH*)* null, i32 (%struct.cGH*)** %11, align 8, !tbaa !9
  %12 = getelementptr inbounds i8* %5, i64 8
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 4, !tbaa !10
  %14 = load i32* @num_slicings, align 4, !tbaa !11
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @num_slicings, align 4, !tbaa !11
  br label %20

; <label>:16                                      ; preds = %4
  %17 = tail call i32 @CCTK_Warn(i32 0, i32 116, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0)) #7
  br label %20

; <label>:18                                      ; preds = %0
  %19 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 123, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %slice_name, i32 %2) #7
  br label %20

; <label>:20                                      ; preds = %7, %16, %18
  %handle.0 = phi i32 [ %8, %7 ], [ -2, %16 ], [ -1, %18 ]
  ret i32 %handle.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @einstein_registerslicing_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = tail call i32 @CCTK_VarIndex(i8* %1) #7
  tail call void @free(i8* %1) #8
  ret i32 %2
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Einstein_RegisterTimeToSlice(i32 %handle, i32 (%struct.cGH*)* %func) #1 {
  %1 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16
  %6 = bitcast i8* %5 to i32 (%struct.cGH*)**
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** %6, align 8, !tbaa !9
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 195, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), i32 %handle) #7
  br label %9

; <label>:9                                       ; preds = %7, %4
  %return_code.0 = phi i32 [ 1, %4 ], [ 0, %7 ]
  ret i32 %return_code.0
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @Einstein_ActivateSlicing(%struct.cGH* %GH) #1 {
  %item = alloca i8*, align 8
  %after = alloca i8*, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 10), align 8, !tbaa !12
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !tbaa !15
  store i8* null, i8** %item, align 8, !tbaa !2
  store i8* null, i8** %after, align 8, !tbaa !2
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0)) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_Warn(i32 0, i32 246, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0)) #7
  br label %7

; <label>:7                                       ; preds = %5, %0
  %8 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %3) #7
  %9 = bitcast i8* %8 to i32*
  store i32 -1, i32* %9, align 4, !tbaa !11
  %10 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

; <label>:12                                      ; preds = %7
  %13 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %14 = tail call i32 @Util_GetHandle(%struct.cHandledData* %13, i8* %2, i8** null) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %39

; <label>:16                                      ; preds = %12
  %17 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

; <label>:19                                      ; preds = %16
  %20 = tail call i32 @CCTK_Warn(i32 2, i32 263, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0)) #7
  br label %110

; <label>:21                                      ; preds = %16
  %22 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

; <label>:24                                      ; preds = %21
  %25 = tail call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %110

; <label>:27                                      ; preds = %24
  %28 = tail call i32 @CCTK_Warn(i32 1, i32 270, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #7
  br label %110

; <label>:29                                      ; preds = %21
  %30 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

; <label>:32                                      ; preds = %29
  %33 = tail call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %110

; <label>:35                                      ; preds = %32
  %36 = tail call i32 @CCTK_Warn(i32 1, i32 278, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #7
  br label %110

; <label>:37                                      ; preds = %29
  %38 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 283, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i8* %2) #7
  br label %110

; <label>:39                                      ; preds = %12
  %40 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %41 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %40, i32 %14) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %39
  %44 = tail call i32 @CCTK_Warn(i32 0, i32 292, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str15, i64 0, i64 0)) #7
  br label %45

; <label>:45                                      ; preds = %39, %43
  %46 = getelementptr inbounds i8* %41, i64 8
  %47 = bitcast i8* %46 to i32*
  store i32 1, i32* %47, align 4, !tbaa !10
  %48 = getelementptr inbounds i8* %41, i64 16
  %49 = bitcast i8* %48 to i32 (%struct.cGH*)**
  %50 = load i32 (%struct.cGH*)** %49, align 8, !tbaa !9
  %51 = icmp eq i32 (%struct.cGH*)* %50, null
  br i1 %51, label %109, label %52

; <label>:52                                      ; preds = %45
  %53 = tail call i8* @malloc(i64 256) #7
  %54 = bitcast i8* %41 to i8**
  %55 = load i8** %54, align 8, !tbaa !6
  %56 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %53, i32 0, i64 256, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str17, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str19, i64 0, i64 0)) #7
  %57 = tail call i32 @CCTK_Warn(i32 0, i32 304, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %53) #7
  %58 = icmp eq i8* %53, null
  br i1 %58, label %109, label %59

; <label>:59                                      ; preds = %52
  tail call void @free(i8* %53) #8
  br label %109

; <label>:60                                      ; preds = %7
  %61 = tail call i64 @strlen(i8* %1) #7
  %62 = add i64 %61, 2
  %63 = tail call i8* @malloc(i64 %62) #7
  %64 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %63, i1 false)
  %65 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %63, i32 0, i64 %64, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* %1) #7
  %66 = call i32 @Util_SplitString(i8** %item, i8** %after, i8* %63, i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0)) #7
  %67 = load i8** %item, align 8, !tbaa !2
  %68 = icmp eq i8* %67, null
  br i1 %68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %60, %95
  %69 = phi i8* [ %101, %95 ], [ %67, %60 ]
  %priority.01 = phi i32 [ %98, %95 ], [ 1, %60 ]
  %70 = call i32 @CCTK_Equals(i8* %69, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

; <label>:72                                      ; preds = %.lr.ph
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str, i64 0, i64 0))
  %73 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %86

; <label>:75                                      ; preds = %72
  %76 = call i32 @CCTK_Warn(i32 1, i32 335, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str11, i64 0, i64 0)) #7
  br label %86

; <label>:77                                      ; preds = %.lr.ph
  %78 = load i8** %item, align 8, !tbaa !2
  %79 = call i32 @CCTK_Equals(i8* %78, i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

; <label>:81                                      ; preds = %77
  %82 = call i32 @Einstein_RegisterSlicing(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %81
  %85 = call i32 @CCTK_Warn(i32 1, i32 343, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str13, i64 0, i64 0)) #7
  br label %86

; <label>:86                                      ; preds = %77, %84, %81, %72, %75
  %87 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %88 = load i8** %item, align 8, !tbaa !2
  %89 = call i32 @Util_GetHandle(%struct.cHandledData* %87, i8* %88, i8** null) #7
  %90 = call i8* @Util_GetHandledData(%struct.cHandledData* %87, i32 %89) #7
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

; <label>:92                                      ; preds = %86
  %93 = load i8** %item, align 8, !tbaa !2
  %94 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 351, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0), i8* %93) #7
  br label %95

; <label>:95                                      ; preds = %86, %92
  %96 = getelementptr inbounds i8* %90, i64 8
  %97 = bitcast i8* %96 to i32*
  store i32 %priority.01, i32* %97, align 4, !tbaa !10
  %98 = add nuw nsw i32 %priority.01, 1
  %99 = load i8** %after, align 8, !tbaa !2
  %100 = call i32 @Util_SplitString(i8** %item, i8** %after, i8* %99, i8* getelementptr inbounds ([2 x i8]* @.str21, i64 0, i64 0)) #7
  %101 = load i8** %item, align 8, !tbaa !2
  %102 = icmp eq i8* %101, null
  br i1 %102, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %95, %60
  %split_string.0.lcssa = phi i8* [ %63, %60 ], [ %99, %95 ]
  %103 = load i8** %after, align 8, !tbaa !2
  %104 = icmp eq i8* %103, null
  br i1 %104, label %106, label %105

; <label>:105                                     ; preds = %._crit_edge
  call void @free(i8* %103) #8
  br label %106

; <label>:106                                     ; preds = %._crit_edge, %105
  %107 = icmp eq i8* %split_string.0.lcssa, null
  br i1 %107, label %109, label %108

; <label>:108                                     ; preds = %106
  call void @free(i8* %split_string.0.lcssa) #8
  br label %109

; <label>:109                                     ; preds = %106, %52, %45, %108, %59
  call void @Einstein_SetNextSlicing(%struct.cGH* %GH) #8
  br label %110

; <label>:110                                     ; preds = %19, %37, %35, %32, %24, %27, %109
  ret void
}

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Einstein_SetNextSlicing(%struct.cGH* %GH) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !tbaa !15
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 13), align 8, !tbaa !16
  %3 = load i32* @num_slicings, align 4, !tbaa !11
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0)) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_Warn(i32 0, i32 481, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str6, i64 0, i64 0)) #7
  br label %8

; <label>:8                                       ; preds = %6, %0
  %9 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %4) #7
  %10 = bitcast i8* %9 to i32*
  %11 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %.preheader

.preheader:                                       ; preds = %8
  %13 = load i32* @num_slicings, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph, label %.loopexit

; <label>:15                                      ; preds = %8
  %16 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %17 = tail call i32 @Util_GetHandle(%struct.cHandledData* %16, i8* %1, i8** null) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %15
  %20 = tail call i32 @CCTK_Warn(i32 0, i32 490, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str25, i64 0, i64 0)) #7
  br label %21

; <label>:21                                      ; preds = %19, %15
  %22 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %23 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %22, i32 %17) #7
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %.loopexit

; <label>:25                                      ; preds = %21
  %26 = tail call i32 @CCTK_Warn(i32 0, i32 496, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0)) #7
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.thread8
  %h_egal.013 = phi i32 [ %h_egal.2, %.thread8 ], [ %3, %.preheader ]
  %h_no.012 = phi i32 [ %h_no.1, %.thread8 ], [ %3, %.preheader ]
  %h_yes.011 = phi i32 [ %h_yes.2, %.thread8 ], [ %3, %.preheader ]
  %h.09 = phi i32 [ %51, %.thread8 ], [ 0, %.preheader ]
  %27 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %28 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %27, i32 %h.09) #7
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %.lr.ph
  %31 = tail call i32 @CCTK_Warn(i32 0, i32 517, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0)) #7
  br label %.thread8

; <label>:32                                      ; preds = %.lr.ph
  %33 = getelementptr inbounds i8* %28, i64 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32* %34, align 4, !tbaa !10
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %.thread8

; <label>:37                                      ; preds = %32
  %38 = getelementptr inbounds i8* %28, i64 16
  %39 = bitcast i8* %38 to i32 (%struct.cGH*)**
  %40 = load i32 (%struct.cGH*)** %39, align 8, !tbaa !9
  %41 = icmp eq i32 (%struct.cGH*)* %40, null
  br i1 %41, label %.thread2, label %42

; <label>:42                                      ; preds = %37
  %43 = tail call i32 %40(%struct.cGH* %GH) #7
  switch i32 %43, label %.thread8 [
    i32 1, label %.thread7
    i32 0, label %..thread2_crit_edge
    i32 -1, label %48
  ]

..thread2_crit_edge:                              ; preds = %42
  %.pre = load i32* %34, align 4, !tbaa !10
  br label %.thread2

.thread7:                                         ; preds = %42
  %44 = load i32* %34, align 4, !tbaa !10
  %45 = icmp slt i32 %44, %h_yes.011
  %h.0.h_yes.0 = select i1 %45, i32 %h.09, i32 %h_yes.011
  br label %.thread8

.thread2:                                         ; preds = %..thread2_crit_edge, %37
  %46 = phi i32 [ %.pre, %..thread2_crit_edge ], [ %35, %37 ]
  %47 = icmp slt i32 %46, %h_egal.013
  %h.0.h_egal.0 = select i1 %47, i32 %h.09, i32 %h_egal.013
  br label %.thread8

; <label>:48                                      ; preds = %42
  %49 = load i32* %34, align 4, !tbaa !10
  %50 = icmp slt i32 %49, %h_no.012
  %h.0.h_no.0 = select i1 %50, i32 %h.09, i32 %h_no.012
  br label %.thread8

.thread8:                                         ; preds = %42, %.thread7, %.thread2, %48, %30, %32
  %h_yes.2 = phi i32 [ %h_yes.011, %32 ], [ %h_yes.011, %30 ], [ %h_yes.011, %48 ], [ %h.0.h_yes.0, %.thread7 ], [ %h_yes.011, %.thread2 ], [ %h_yes.011, %42 ]
  %h_no.1 = phi i32 [ %h_no.012, %32 ], [ %h_no.012, %30 ], [ %h.0.h_no.0, %48 ], [ %h_no.012, %.thread7 ], [ %h_no.012, %.thread2 ], [ %h_no.012, %42 ]
  %h_egal.2 = phi i32 [ %h_egal.013, %32 ], [ %h_egal.013, %30 ], [ %h_egal.013, %48 ], [ %h_egal.013, %.thread7 ], [ %h.0.h_egal.0, %.thread2 ], [ %h_egal.013, %42 ]
  %51 = add nuw nsw i32 %h.09, 1
  %52 = load i32* @num_slicings, align 4, !tbaa !11
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.thread8, %.preheader, %25, %21
  %h_yes.3 = phi i32 [ %17, %21 ], [ %17, %25 ], [ %3, %.preheader ], [ %h_yes.2, %.thread8 ]
  %h_no.2 = phi i32 [ %3, %21 ], [ %3, %25 ], [ %3, %.preheader ], [ %h_no.1, %.thread8 ]
  %h_egal.3 = phi i32 [ %3, %21 ], [ %3, %25 ], [ %3, %.preheader ], [ %h_egal.2, %.thread8 ]
  %54 = load i32* @num_slicings, align 4, !tbaa !11
  %55 = icmp eq i32 %h_yes.3, %54
  br i1 %55, label %57, label %56

; <label>:56                                      ; preds = %.loopexit
  store i32 %h_yes.3, i32* %10, align 4, !tbaa !11
  br label %62

; <label>:57                                      ; preds = %.loopexit
  %58 = icmp eq i32 %h_egal.3, %h_yes.3
  br i1 %58, label %60, label %59

; <label>:59                                      ; preds = %57
  store i32 %h_egal.3, i32* %10, align 4, !tbaa !11
  br label %62

; <label>:60                                      ; preds = %57
  %61 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), i32 %h_yes.3, i32 %h_yes.3, i32 %h_no.2) #7
  br label %62

; <label>:62                                      ; preds = %59, %60, %56
  %63 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0)) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

; <label>:65                                      ; preds = %62
  %66 = tail call i8* @malloc(i64 256) #7
  %67 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %68 = load i32* %10, align 4, !tbaa !11
  %69 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %67, i32 %68) #7
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %65
  %72 = tail call i32 @CCTK_Warn(i32 0, i32 586, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str29, i64 0, i64 0)) #7
  br label %73

; <label>:73                                      ; preds = %65, %71
  %74 = bitcast i8* %69 to i8**
  %75 = load i8** %74, align 8, !tbaa !6
  %76 = load i32* %10, align 4, !tbaa !11
  %77 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %66, i32 0, i64 256, i8* getelementptr inbounds ([22 x i8]* @.str30, i64 0, i64 0), i8* %75, i32 %76) #7
  %78 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %66) #7
  %79 = icmp eq i8* %66, null
  br i1 %79, label %81, label %80

; <label>:80                                      ; preds = %73
  tail call void @free(i8* %66) #8
  br label %81

; <label>:81                                      ; preds = %73, %62, %80
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Einstein_GetSlicingHandle(i8* %name) #1 {
  %1 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 427, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str24, i64 0, i64 0), i8* %name) #7
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @einstein_getslicinghandle_(i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load %struct.cHandledData** @Eslicings, align 8, !tbaa !2
  %3 = tail call i32 @Util_GetHandle(%struct.cHandledData* %2, i8* %1, i8** null) #7
  tail call void @free(i8* %1) #8
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
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
!6 = !{!7, !3, i64 0}
!7 = !{!"Einstein_slicing", !3, i64 0, !8, i64 8, !3, i64 16}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 16}
!10 = !{!7, !8, i64 8}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !3, i64 80}
!13 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136}
!14 = !{!"double", !4, i64 0}
!15 = !{!13, !3, i64 96}
!16 = !{!13, !3, i64 104}
