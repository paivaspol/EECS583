; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pargs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_pargs = type { i8*, i32, i32, %union.anon.2, i8* }
%union.anon.2 = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"[hidden]\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"bKeep\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pargs.c\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"-no%s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [35 x i8] c"Setting option %s more than once!\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"Invalid argument %s for option %s\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"%s: vector must have 1 or 3 real parameters\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Invalid type %d in pargs\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"No integer option %s in pargs\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"No boolean option %s in pargs\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"No real option %s in pargs\00", align 1
@.str12 = private unnamed_addr constant [29 x i8] c"No string option %s in pargs\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"No such option %s in pargs\00", align 1
@pa_val.buf = internal global [256 x i8] zeroinitializer, align 16
@.str14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"%6g\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"Argument too long: \22%d\22\0A\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"%g %g %g\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"-hidden\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"%12s %6s %6s  %s\0A\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str27 = private unnamed_addr constant [56 x i8] c"------------------------------------------------------\0A\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"-[no]%s\00", align 1
@argtp = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0)], align 16
@.str29 = private unnamed_addr constant [6 x i8] c"%12s\0A\00", align 1
@.str30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str31 = private unnamed_addr constant [18 x i8] c"%-14s%5s %6s  %s\0A\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"wdesc\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c" \22n/%s/(\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c")/\22\00", align 1
@.str37 = private unnamed_addr constant [31 x i8] c"%s) COMPREPLY=( $(compgen -W '\00", align 1
@.str38 = private unnamed_addr constant [15 x i8] c" ' -- $c ));;\0A\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"- 'c[-1,%s]' -s \22\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"enum\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_hidden(%struct.t_pargs* nocapture readonly %pa) #4 {
  %1 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 4
  %2 = load i8** %1, align 8, !tbaa !8
  %3 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #10
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #10
  %7 = icmp ne i8* %6, null
  br label %8

; <label>:8                                       ; preds = %0, %5
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @get_pargs(i32* nocapture %argc, i8** %argv, i32 %nparg, %struct.t_pargs* nocapture %pa, i32 %bKeepArgs) #6 {
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %1 = load i32* %argc, align 4, !tbaa !12
  %2 = add nsw i32 %1, 1
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 58, i32 %2, i32 4) #10
  %4 = bitcast i8* %3 to i32*
  store i32 1, i32* %4, align 4, !tbaa !12
  %5 = load i32* %argc, align 4, !tbaa !12
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32* %4, i64 %6
  store i32 1, i32* %7, align 4, !tbaa !12
  store i32 1, i32* %i, align 4, !tbaa !12
  %8 = load i32* %argc, align 4, !tbaa !12
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %0
  %10 = icmp sgt i32 %nparg, 0
  %11 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %12 = add i32 %nparg, -1
  br label %13

; <label>:13                                      ; preds = %.lr.ph19, %._crit_edge16
  %storemerge17 = phi i32 [ 1, %.lr.ph19 ], [ %190, %._crit_edge16 ]
  %14 = sext i32 %storemerge17 to i64
  %15 = getelementptr inbounds i32* %4, i64 %14
  store i32 1, i32* %15, align 4, !tbaa !12
  br i1 %10, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %13, %188
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %188 ], [ 0, %13 ]
  %16 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 2
  %17 = load i32* %16, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 4
  %19 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 0
  %20 = load i8** %19, align 8, !tbaa !14
  br i1 %18, label %21, label %50

; <label>:21                                      ; preds = %.lr.ph15
  %22 = getelementptr inbounds i8* %20, i64 1
  %23 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %11, i32 0, i64 32, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %22) #10
  %24 = load i8** %19, align 8, !tbaa !14
  %25 = load i32* %i, align 4, !tbaa !12
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8** %argv, i64 %26
  %28 = load i8** %27, align 8, !tbaa !15
  %29 = call i32 @strcmp(i8* %24, i8* %28) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %21
  %32 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %33 = bitcast %union.anon.2* %32 to i32**
  %34 = load i32** %33, align 8, !tbaa !15
  store i32 1, i32* %34, align 4, !tbaa !12
  %35 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1
  store i32 1, i32* %35, align 4, !tbaa !16
  %36 = load i32* %i, align 4, !tbaa !12
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32* %4, i64 %37
  store i32 0, i32* %38, align 4, !tbaa !12
  br label %188

; <label>:39                                      ; preds = %21
  %40 = call i32 @strcmp(i8* %11, i8* %28) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %188

; <label>:42                                      ; preds = %39
  %43 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %44 = bitcast %union.anon.2* %43 to i32**
  %45 = load i32** %44, align 8, !tbaa !15
  store i32 0, i32* %45, align 4, !tbaa !12
  %46 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1
  store i32 1, i32* %46, align 4, !tbaa !16
  %47 = load i32* %i, align 4, !tbaa !12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32* %4, i64 %48
  store i32 0, i32* %49, align 4, !tbaa !12
  br label %188

; <label>:50                                      ; preds = %.lr.ph15
  %51 = load i32* %i, align 4, !tbaa !12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8** %argv, i64 %52
  %54 = load i8** %53, align 8, !tbaa !15
  %55 = call i32 @strcmp(i8* %20, i8* %54) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %188

; <label>:57                                      ; preds = %50
  %58 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1
  %59 = load i32* %58, align 4, !tbaa !16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %57
  %62 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %63 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i8* %20) #10
  %.pre = load i32* %i, align 4, !tbaa !12
  br label %64

; <label>:64                                      ; preds = %57, %61
  %65 = phi i32 [ %51, %57 ], [ %.pre, %61 ]
  store i32 1, i32* %58, align 4, !tbaa !16
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32* %4, i64 %66
  store i32 0, i32* %67, align 4, !tbaa !12
  %68 = load i32* %16, align 4, !tbaa !13
  switch i32 %68, label %183 [
    i32 0, label %69
    i32 2, label %75
    i32 1, label %75
    i32 3, label %82
    i32 6, label %88
    i32 5, label %125
  ]

; <label>:69                                      ; preds = %64
  %70 = load i32* %argc, align 4, !tbaa !12
  %71 = call i32 @iscan(i32 %70, i8** %argv, i32* %i) #10
  %72 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %73 = bitcast %union.anon.2* %72 to i32**
  %74 = load i32** %73, align 8, !tbaa !15
  store i32 %71, i32* %74, align 4, !tbaa !12
  br label %184

; <label>:75                                      ; preds = %64, %64
  %76 = load i32* %argc, align 4, !tbaa !12
  %77 = call double @dscan(i32 %76, i8** %argv, i32* %i) #10
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %80 = bitcast %union.anon.2* %79 to float**
  %81 = load float** %80, align 8, !tbaa !15
  store float %78, float* %81, align 4, !tbaa !2
  br label %184

; <label>:82                                      ; preds = %64
  %83 = load i32* %argc, align 4, !tbaa !12
  %84 = call i8* @sscan(i32 %83, i8** %argv, i32* %i) #10
  %85 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %86 = bitcast %union.anon.2* %85 to i8***
  %87 = load i8*** %86, align 8, !tbaa !15
  store i8* %84, i8** %87, align 8, !tbaa !15
  br label %184

; <label>:88                                      ; preds = %64
  %89 = load i32* %argc, align 4, !tbaa !12
  %90 = call i8* @sscan(i32 %89, i8** %argv, i32* %i) #10
  %91 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %92 = bitcast %union.anon.2* %91 to i8***
  %93 = load i8*** %92, align 8, !tbaa !15
  %94 = getelementptr inbounds i8** %93, i64 1
  %95 = load i8** %94, align 8, !tbaa !15
  %96 = icmp eq i8* %95, null
  br i1 %96, label %._crit_edge10.thread, label %.lr.ph9

.lr.ph9:                                          ; preds = %88
  %97 = call i64 @strlen(i8* %90) #10
  br label %98

; <label>:98                                      ; preds = %.lr.ph9, %113
  %indvars.iv = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next, %113 ]
  %99 = phi i8* [ %95, %.lr.ph9 ], [ %115, %113 ]
  %match.06 = phi i32 [ -12345, %.lr.ph9 ], [ %match.1, %113 ]
  %100 = call i32 @strncasecmp(i8* %90, i8* %99, i64 %97) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

; <label>:102                                     ; preds = %98
  %103 = icmp eq i32 %match.06, -12345
  br i1 %103, label %111, label %104

; <label>:104                                     ; preds = %102
  %105 = call i64 @strlen(i8* %99) #10
  %106 = sext i32 %match.06 to i64
  %107 = getelementptr inbounds i8** %93, i64 %106
  %108 = load i8** %107, align 8, !tbaa !15
  %109 = call i64 @strlen(i8* %108) #10
  %110 = icmp ult i64 %105, %109
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %104, %102
  %112 = trunc i64 %indvars.iv to i32
  br label %113

; <label>:113                                     ; preds = %98, %111, %104
  %match.1 = phi i32 [ %112, %111 ], [ %match.06, %104 ], [ %match.06, %98 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %114 = getelementptr inbounds i8** %93, i64 %indvars.iv.next
  %115 = load i8** %114, align 8, !tbaa !15
  %116 = icmp eq i8* %115, null
  br i1 %116, label %._crit_edge10, label %98

._crit_edge10:                                    ; preds = %113
  %117 = icmp eq i32 %match.1, -12345
  br i1 %117, label %._crit_edge10.thread, label %118

; <label>:118                                     ; preds = %._crit_edge10
  %119 = sext i32 %match.1 to i64
  %120 = getelementptr inbounds i8** %93, i64 %119
  %121 = bitcast i8** %120 to i64*
  %122 = load i64* %121, align 8, !tbaa !15
  %123 = bitcast i8** %93 to i64*
  store i64 %122, i64* %123, align 8, !tbaa !15
  br label %184

._crit_edge10.thread:                             ; preds = %88, %._crit_edge10
  %124 = load i8** %19, align 8, !tbaa !14
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i8* %90, i8* %124) #10
  br label %184

; <label>:125                                     ; preds = %64
  %126 = load i32* %argc, align 4, !tbaa !12
  %127 = call double @dscan(i32 %126, i8** %argv, i32* %i) #10
  %128 = fptrunc double %127 to float
  %129 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3
  %130 = bitcast %union.anon.2* %129 to [3 x float]**
  %131 = load [3 x float]** %130, align 8, !tbaa !15
  %132 = getelementptr inbounds [3 x float]* %131, i64 0, i64 0
  store float %128, float* %132, align 4, !tbaa !2
  %133 = load i32* %i, align 4, !tbaa !12
  %134 = add nsw i32 %133, 1
  %135 = load i32* %argc, align 4, !tbaa !12
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %147, label %137

; <label>:137                                     ; preds = %125
  %138 = sext i32 %134 to i64
  %139 = getelementptr inbounds i8** %argv, i64 %138
  %140 = load i8** %139, align 8, !tbaa !15
  %141 = load i8* %140, align 1, !tbaa !17
  %142 = icmp eq i8 %141, 45
  br i1 %142, label %143, label %150

; <label>:143                                     ; preds = %137
  %144 = getelementptr inbounds i8* %140, i64 1
  %145 = load i8* %144, align 1, !tbaa !17
  %146 = sext i8 %145 to i32
  %isdigittmp2 = add nsw i32 %146, -48
  %isdigit3 = icmp ult i32 %isdigittmp2, 10
  br i1 %isdigit3, label %150, label %147

; <label>:147                                     ; preds = %143, %125
  %148 = getelementptr inbounds [3 x float]* %131, i64 0, i64 2
  store float %128, float* %148, align 4, !tbaa !2
  %149 = getelementptr inbounds [3 x float]* %131, i64 0, i64 1
  store float %128, float* %149, align 4, !tbaa !2
  br label %184

; <label>:150                                     ; preds = %143, %137
  %151 = sext i32 %133 to i64
  %152 = getelementptr inbounds i32* %4, i64 %151
  store i32 0, i32* %152, align 4, !tbaa !12
  %153 = load i32* %argc, align 4, !tbaa !12
  %154 = call double @dscan(i32 %153, i8** %argv, i32* %i) #10
  %155 = fptrunc double %154 to float
  %156 = load [3 x float]** %130, align 8, !tbaa !15
  %157 = getelementptr inbounds [3 x float]* %156, i64 0, i64 1
  store float %155, float* %157, align 4, !tbaa !2
  %158 = load i32* %i, align 4, !tbaa !12
  %159 = add nsw i32 %158, 1
  %160 = load i32* %argc, align 4, !tbaa !12
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %172, label %162

; <label>:162                                     ; preds = %150
  %163 = sext i32 %159 to i64
  %164 = getelementptr inbounds i8** %argv, i64 %163
  %165 = load i8** %164, align 8, !tbaa !15
  %166 = load i8* %165, align 1, !tbaa !17
  %167 = icmp eq i8 %166, 45
  br i1 %167, label %168, label %174

; <label>:168                                     ; preds = %162
  %169 = getelementptr inbounds i8* %165, i64 1
  %170 = load i8* %169, align 1, !tbaa !17
  %171 = sext i8 %170 to i32
  %isdigittmp = add nsw i32 %171, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %174, label %172

; <label>:172                                     ; preds = %168, %150
  %173 = load i8** %19, align 8, !tbaa !14
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i8* %173) #10
  %.pre23 = load i32* %i, align 4, !tbaa !12
  br label %174

; <label>:174                                     ; preds = %172, %168, %162
  %175 = phi i32 [ %.pre23, %172 ], [ %158, %168 ], [ %158, %162 ]
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32* %4, i64 %176
  store i32 0, i32* %177, align 4, !tbaa !12
  %178 = load i32* %argc, align 4, !tbaa !12
  %179 = call double @dscan(i32 %178, i8** %argv, i32* %i) #10
  %180 = fptrunc double %179 to float
  %181 = load [3 x float]** %130, align 8, !tbaa !15
  %182 = getelementptr inbounds [3 x float]* %181, i64 0, i64 2
  store float %180, float* %182, align 4, !tbaa !2
  br label %184

; <label>:183                                     ; preds = %64
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %68) #10
  br label %184

; <label>:184                                     ; preds = %147, %174, %118, %._crit_edge10.thread, %183, %82, %75, %69
  %185 = load i32* %i, align 4, !tbaa !12
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32* %4, i64 %186
  store i32 0, i32* %187, align 4, !tbaa !12
  br label %188

; <label>:188                                     ; preds = %39, %42, %31, %184, %50
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %lftr.wideiv = trunc i64 %indvars.iv21 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %._crit_edge16, label %.lr.ph15

._crit_edge16:                                    ; preds = %188, %13
  %189 = load i32* %i, align 4, !tbaa !12
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4, !tbaa !12
  %191 = load i32* %argc, align 4, !tbaa !12
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %13, label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge16, %0
  %193 = phi i32 [ %8, %0 ], [ %191, %._crit_edge16 ]
  %194 = icmp eq i32 %bKeepArgs, 0
  br i1 %194, label %.preheader, label %213

.preheader:                                       ; preds = %._crit_edge20
  store i32 0, i32* %i, align 4, !tbaa !12
  %195 = icmp slt i32 %193, 0
  br i1 %195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %209
  %j.15 = phi i32 [ %j.2, %209 ], [ 0, %.preheader ]
  %196 = phi i32 [ %210, %209 ], [ 0, %.preheader ]
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32* %4, i64 %197
  %199 = load i32* %198, align 4, !tbaa !12
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %209, label %201

; <label>:201                                     ; preds = %.lr.ph
  %202 = getelementptr inbounds i8** %argv, i64 %197
  %203 = bitcast i8** %202 to i64*
  %204 = load i64* %203, align 8, !tbaa !15
  %205 = add nsw i32 %j.15, 1
  %206 = sext i32 %j.15 to i64
  %207 = getelementptr inbounds i8** %argv, i64 %206
  %208 = bitcast i8** %207 to i64*
  store i64 %204, i64* %208, align 8, !tbaa !15
  br label %209

; <label>:209                                     ; preds = %.lr.ph, %201
  %j.2 = phi i32 [ %205, %201 ], [ %j.15, %.lr.ph ]
  %210 = add nsw i32 %196, 1
  store i32 %210, i32* %i, align 4, !tbaa !12
  %211 = icmp slt i32 %196, %193
  br i1 %211, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %209, %.preheader
  %j.1.lcssa = phi i32 [ 0, %.preheader ], [ %j.2, %209 ]
  %212 = add nsw i32 %j.1.lcssa, -1
  store i32 %212, i32* %argc, align 4, !tbaa !12
  br label %213

; <label>:213                                     ; preds = %._crit_edge20, %._crit_edge
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 140, i8* %3) #10
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i32 @iscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare double @dscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare i8* @sscan(i32, i8**, i32*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_int(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %12 = bitcast %union.anon.2* %11 to i32**
  %13 = load i32** %12, align 8, !tbaa !15
  %14 = load i32* %13, align 4, !tbaa !12
  br label %15

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %option) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %14, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_bool(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %12 = bitcast %union.anon.2* %11 to i32**
  %13 = load i32** %12, align 8, !tbaa !15
  %14 = load i32* %13, align 4, !tbaa !12
  br label %15

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i8* %option) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %14, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define float @opt2parg_real(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %12 = bitcast %union.anon.2* %11 to float**
  %13 = load float** %12, align 8, !tbaa !15
  %14 = load float* %13, align 4, !tbaa !2
  br label %15

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i8* %option) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi float [ %14, %10 ], [ 0.000000e+00, %._crit_edge ]
  ret float %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2parg_str(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %12 = bitcast %union.anon.2* %11 to i8***
  %13 = load i8*** %12, align 8, !tbaa !15
  %14 = load i8** %13, align 8, !tbaa !15
  br label %15

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str12, i64 0, i64 0), i8* %option) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i8* [ %14, %10 ], [ null, %._crit_edge ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_bSet(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 1
  %12 = load i32* %11, align 4, !tbaa !16
  br label %13

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #10
  br label %13

; <label>:13                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %12, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2parg_enum(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  %1 = icmp sgt i32 %nparg, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64
  br label %5

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2
  br i1 %4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %7 = load i8** %6, align 8, !tbaa !14
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10
  %9 = icmp eq i32 %8, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %3

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3
  %12 = bitcast %union.anon.2* %11 to i8***
  %13 = load i8*** %12, align 8, !tbaa !15
  %14 = load i8** %13, align 8, !tbaa !15
  br label %15

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i8* [ %14, %10 ], [ null, %._crit_edge ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @pa_val(%struct.t_pargs* nocapture readonly %pa) #6 {
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), align 16, !tbaa !17
  %1 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !13
  switch i32 %2, label %56 [
    i32 0, label %3
    i32 2, label %9
    i32 1, label %9
    i32 4, label %16
    i32 3, label %24
    i32 6, label %36
    i32 5, label %42
  ]

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %5 = bitcast %union.anon.2* %4 to i32**
  %6 = load i32** %5, align 8, !tbaa !15
  %7 = load i32* %6, align 4, !tbaa !12
  %8 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i32 %7) #10
  br label %56

; <label>:9                                       ; preds = %0, %0
  %10 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %11 = bitcast %union.anon.2* %10 to float**
  %12 = load float** %11, align 8, !tbaa !15
  %13 = load float* %12, align 4, !tbaa !2
  %14 = fpext float %13 to double
  %15 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), double %14) #10
  br label %56

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %18 = bitcast %union.anon.2* %17 to i32**
  %19 = load i32** %18, align 8, !tbaa !15
  %20 = load i32* %19, align 4, !tbaa !12
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %21, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)
  %23 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %22) #10
  br label %56

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %26 = bitcast %union.anon.2* %25 to i8***
  %27 = load i8*** %26, align 8, !tbaa !15
  %28 = load i8** %27, align 8, !tbaa !15
  %29 = icmp eq i8* %28, null
  br i1 %29, label %56, label %30

; <label>:30                                      ; preds = %24
  %31 = tail call i64 @strlen(i8* %28) #10
  %32 = icmp ugt i64 %31, 255
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %30
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i8* %28) #10
  br label %56

; <label>:34                                      ; preds = %30
  %35 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %28, i64 256) #10
  br label %56

; <label>:36                                      ; preds = %0
  %37 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %38 = bitcast %union.anon.2* %37 to i8***
  %39 = load i8*** %38, align 8, !tbaa !15
  %40 = load i8** %39, align 8, !tbaa !15
  %41 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %40, i64 256) #10
  br label %56

; <label>:42                                      ; preds = %0
  %43 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3
  %44 = bitcast %union.anon.2* %43 to [3 x float]**
  %45 = load [3 x float]** %44, align 8, !tbaa !15
  %46 = getelementptr inbounds [3 x float]* %45, i64 0, i64 0
  %47 = load float* %46, align 4, !tbaa !2
  %48 = fpext float %47 to double
  %49 = getelementptr inbounds [3 x float]* %45, i64 0, i64 1
  %50 = load float* %49, align 4, !tbaa !2
  %51 = fpext float %50 to double
  %52 = getelementptr inbounds [3 x float]* %45, i64 0, i64 2
  %53 = load float* %52, align 4, !tbaa !2
  %54 = fpext float %53 to double
  %55 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %48, double %51, double %54) #10
  br label %56

; <label>:56                                      ; preds = %24, %34, %33, %0, %42, %36, %16, %9, %3
  ret i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0)
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @print_pargs(%struct.__sFILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture readonly %pa) #6 {
  %buf = alloca [32 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #8
  %2 = icmp sgt i32 %npargs, 0
  br i1 %2, label %.lr.ph5, label %._crit_edge6.thread

.lr.ph5:                                          ; preds = %0
  %3 = add i32 %npargs, -1
  br label %4

; <label>:4                                       ; preds = %13, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %13 ]
  %bShowHidden.02 = phi i32 [ 0, %.lr.ph5 ], [ %bShowHidden.1, %13 ]
  %5 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv7, i32 0
  %6 = load i8** %5, align 8, !tbaa !14
  %7 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv7, i32 1
  %11 = load i32* %10, align 4, !tbaa !16
  %12 = icmp eq i32 %11, 0
  %bShowHidden.0. = select i1 %12, i32 %bShowHidden.02, i32 1
  br label %13

; <label>:13                                      ; preds = %9, %4
  %bShowHidden.1 = phi i32 [ %bShowHidden.02, %4 ], [ %bShowHidden.0., %9 ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %3
  br i1 %exitcond10, label %._crit_edge6, label %4

._crit_edge6:                                     ; preds = %13
  br i1 %2, label %.lr.ph, label %._crit_edge6.thread

.lr.ph:                                           ; preds = %._crit_edge6
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #10
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp)
  %16 = icmp eq i32 %bShowHidden.1, 0
  %17 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0
  %18 = add i32 %npargs, -1
  br label %19

; <label>:19                                      ; preds = %69, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %69 ]
  %20 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv
  br i1 %16, label %21, label %._crit_edge12

; <label>:21                                      ; preds = %19
  %22 = call i32 @is_hidden(%struct.t_pargs* %20) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %._crit_edge12, label %69

._crit_edge12:                                    ; preds = %19, %21
  %24 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2
  %25 = load i32* %24, align 4, !tbaa !13
  %26 = icmp eq i32 %25, 4
  %27 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0
  %28 = load i8** %27, align 8, !tbaa !14
  br i1 %26, label %29, label %32

; <label>:29                                      ; preds = %._crit_edge12
  %30 = getelementptr inbounds i8* %28, i64 1
  %31 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %17, i32 0, i64 32, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), i8* %30) #10
  br label %34

; <label>:32                                      ; preds = %._crit_edge12
  %33 = call i8* @__strcpy_chk(i8* %17, i8* %28, i64 32) #10
  br label %34

; <label>:34                                      ; preds = %32, %29
  %35 = call i64 @strlen(i8* %17) #10
  %36 = load i32* %24, align 4, !tbaa !13
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %37
  %39 = load i8** %38, align 8, !tbaa !15
  %40 = call i64 @strlen(i8* %39) #10
  %41 = icmp ugt i64 %40, 4
  %.op = sub i64 18, %40
  %42 = select i1 %41, i64 %.op, i64 14
  %43 = icmp ugt i64 %35, %42
  br i1 %43, label %44, label %55

; <label>:44                                      ; preds = %34
  %45 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i8* %17) #10
  %46 = load i32* %24, align 4, !tbaa !13
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %47
  %49 = load i8** %48, align 8, !tbaa !15
  %50 = call i8* @pa_val(%struct.t_pargs* %20) #11
  %51 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4
  %52 = load i8** %51, align 8, !tbaa !8
  %53 = call i8* @check_tty(i8* %52) #10
  %54 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str30, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %53) #10
  br label %66

; <label>:55                                      ; preds = %34
  %56 = call i64 @strlen(i8* %17) #10
  %57 = icmp ugt i64 %56, 12
  %58 = call i8* @pa_val(%struct.t_pargs* %20) #11
  %59 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4
  %60 = load i8** %59, align 8, !tbaa !8
  %61 = call i8* @check_tty(i8* %60) #10
  br i1 %57, label %62, label %64

; <label>:62                                      ; preds = %55
  %63 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i8* %17, i8* %39, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %61) #10
  br label %66

; <label>:64                                      ; preds = %55
  %65 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* %17, i8* %39, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %61) #10
  br label %66

; <label>:66                                      ; preds = %62, %64, %44
  %67 = call i8* @wrap_lines(i8* %1, i32 80, i32 28) #10
  %68 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* %67) #10
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 294, i8* %67) #10
  br label %69

; <label>:69                                      ; preds = %21, %66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %18
  br i1 %exitcond, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %69
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %._crit_edge6.thread

._crit_edge6.thread:                              ; preds = %0, %._crit_edge, %._crit_edge6
  call void @llvm.lifetime.end(i64 256, i8* %1) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: optsize
declare i8* @check_tty(i8*) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_enums(%struct.__sFILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture readonly %pa, i32 %shell) #6 {
  switch i32 %shell, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader1
    i32 2, label %.preheader3
  ]

.preheader3:                                      ; preds = %0
  %1 = icmp sgt i32 %npargs, 0
  br i1 %1, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %.preheader3
  %2 = add i32 %npargs, -1
  br label %51

.preheader1:                                      ; preds = %0
  %3 = icmp sgt i32 %npargs, 0
  br i1 %3, label %.lr.ph13, label %.loopexit

.lr.ph13:                                         ; preds = %.preheader1
  %4 = add i32 %npargs, -1
  br label %29

.preheader:                                       ; preds = %0
  %5 = icmp sgt i32 %npargs, 0
  br i1 %5, label %.lr.ph7, label %.loopexit

.lr.ph7:                                          ; preds = %.preheader
  %6 = add i32 %npargs, -1
  br label %7

; <label>:7                                       ; preds = %28, %.lr.ph7
  %indvars.iv20 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next21, %28 ]
  %8 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 2
  %9 = load i32* %8, align 4, !tbaa !13
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %28

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 0
  %13 = load i8** %12, align 8, !tbaa !14
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* %13) #10
  %15 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 3
  %16 = bitcast %union.anon.2* %15 to i8***
  %17 = load i8*** %16, align 8, !tbaa !15
  %18 = getelementptr inbounds i8** %17, i64 1
  %19 = load i8** %18, align 8, !tbaa !15
  %20 = icmp eq i8* %19, null
  br i1 %20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %11 ]
  %21 = phi i8* [ %25, %.lr.ph ], [ %19, %11 ]
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %21) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %23 = load i8*** %16, align 8, !tbaa !15
  %24 = getelementptr inbounds i8** %23, i64 %indvars.iv.next
  %25 = load i8** %24, align 8, !tbaa !15
  %26 = icmp eq i8* %25, null
  br i1 %26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %11
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp)
  br label %28

; <label>:28                                      ; preds = %7, %._crit_edge
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %lftr.wideiv = trunc i64 %indvars.iv20 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %.loopexit, label %7

; <label>:29                                      ; preds = %50, %.lr.ph13
  %indvars.iv24 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next25, %50 ]
  %30 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 2
  %31 = load i32* %30, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %50

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 0
  %35 = load i8** %34, align 8, !tbaa !14
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i8* %35) #10
  %37 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 3
  %38 = bitcast %union.anon.2* %37 to i8***
  %39 = load i8*** %38, align 8, !tbaa !15
  %40 = getelementptr inbounds i8** %39, i64 1
  %41 = load i8** %40, align 8, !tbaa !15
  %42 = icmp eq i8* %41, null
  br i1 %42, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %33, %.lr.ph10
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph10 ], [ 1, %33 ]
  %43 = phi i8* [ %47, %.lr.ph10 ], [ %41, %33 ]
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %43) #10
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %45 = load i8*** %38, align 8, !tbaa !15
  %46 = getelementptr inbounds i8** %45, i64 %indvars.iv.next23
  %47 = load i8** %46, align 8, !tbaa !15
  %48 = icmp eq i8* %47, null
  br i1 %48, label %._crit_edge11, label %.lr.ph10

._crit_edge11:                                    ; preds = %.lr.ph10, %33
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str38, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %fp)
  br label %50

; <label>:50                                      ; preds = %29, %._crit_edge11
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %4
  br i1 %exitcond27, label %.loopexit, label %29

; <label>:51                                      ; preds = %72, %.lr.ph19
  %indvars.iv30 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next31, %72 ]
  %52 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 2
  %53 = load i32* %52, align 4, !tbaa !13
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %72

; <label>:55                                      ; preds = %51
  %56 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 0
  %57 = load i8** %56, align 8, !tbaa !14
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0), i8* %57) #10
  %59 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 3
  %60 = bitcast %union.anon.2* %59 to i8***
  %61 = load i8*** %60, align 8, !tbaa !15
  %62 = getelementptr inbounds i8** %61, i64 1
  %63 = load i8** %62, align 8, !tbaa !15
  %64 = icmp eq i8* %63, null
  br i1 %64, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %55, %.lr.ph16
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph16 ], [ 1, %55 ]
  %65 = phi i8* [ %69, %.lr.ph16 ], [ %63, %55 ]
  %66 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %65) #10
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %67 = load i8*** %60, align 8, !tbaa !15
  %68 = getelementptr inbounds i8** %67, i64 %indvars.iv.next29
  %69 = load i8** %68, align 8, !tbaa !15
  %70 = icmp eq i8* %69, null
  br i1 %70, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %.lr.ph16, %55
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp)
  br label %72

; <label>:72                                      ; preds = %51, %._crit_edge17
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %2
  br i1 %exitcond33, label %.loopexit, label %51

.loopexit:                                        ; preds = %72, %50, %28, %.preheader3, %.preheader1, %.preheader, %0
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !10, i64 24}
!9 = !{!"", !10, i64 0, !11, i64 8, !11, i64 12, !4, i64 16, !10, i64 24}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!9, !11, i64 12}
!14 = !{!9, !10, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!9, !11, i64 8}
!17 = !{!4, !4, i64 0}
