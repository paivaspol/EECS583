; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xvgr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"# This file was created by %s\0A\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"# which is part of G R O M A C S:\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"# All this happened at: %s\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"@    title \22%s\22\0A\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"@    xaxis  label \22%s\22\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"@    yaxis  label \22%s\22\0A\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"@TYPE xy\0A\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"@ view %g, %g, %g, %g\0A\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"@ world xmin %g\0A@ world ymin %g\0A@ world xmax %g\0A@ world ymax %g\0A\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"@ legend on\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"@ legend box on\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"@ legend loctype view\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"@ legend %g, %g\0A\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"@ legend length %d\0A\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"@ s%d legend \22%s\22\0A\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"@    with g0\0A\00", align 1
@.str21 = private unnamed_addr constant [23 x i8] c"@    s%d linestyle %d\0A\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"@    s%d color %d\0A\00", align 1
@.str23 = private unnamed_addr constant [11 x i8] c"@with box\0A\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"@    box on\0A\00", align 1
@.str25 = private unnamed_addr constant [21 x i8] c"@    box loctype %s\0A\00", align 1
@LocTypeStr = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str49, i32 0, i32 0)], align 16
@.str26 = private unnamed_addr constant [25 x i8] c"@    box %g, %g, %g, %g\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"@    box linestyle %d\0A\00", align 1
@.str28 = private unnamed_addr constant [23 x i8] c"@    box linewidth %d\0A\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"@    box color %d\0A\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c"@    box fill %s\0A\00", align 1
@BoxFillStr = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str52, i32 0, i32 0)], align 16
@.str31 = private unnamed_addr constant [24 x i8] c"@    box fill color %d\0A\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"@    box fill pattern %d\0A\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"@box def\0A\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str36 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xvgr.c\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"yy[k]\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str42 = private unnamed_addr constant [39 x i8] c"Only %d columns on line %d in file %s\0A\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@fgets3.ptr = internal unnamed_addr global i8* null, align 8
@fgets3.len = internal unnamed_addr global i32 4096, align 4
@.str53 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
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
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #10
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #10
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #10
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #10
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
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
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
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
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @xvgropen(i8* %fn, i8* %title, i8* %xaxis, i8* %yaxis) #4 {
  %t = alloca i64, align 8
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #9
  %2 = tail call i8* @Program() #9
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i8* %2) #9
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %1)
  %5 = tail call i8* @bromacs() #9
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* %5) #9
  %7 = call i64 @time(i64* %t) #9
  %8 = call i8* @ctime(i64* %t) #9
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i8* %8) #9
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %1)
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* %title) #9
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* %xaxis) #9
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i8* %yaxis) #9
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %1)
  ret %struct.__sFILE* %1
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: optsize
declare i8* @bromacs() #1

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: optsize
declare i8* @ctime(i64*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_view(%struct.__sFILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #4 {
  %1 = fpext float %xmin to double
  %2 = fpext float %ymin to double
  %3 = fpext float %xmax to double
  %4 = fpext float %ymax to double
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double %1, double %2, double %3, double %4) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_world(%struct.__sFILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #4 {
  %1 = fpext float %xmin to double
  %2 = fpext float %ymin to double
  %3 = fpext float %xmax to double
  %4 = fpext float %ymax to double
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0), double %1, double %2, double %3, double %4) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_legend(%struct.__sFILE* nocapture %out, i32 %nsets, i8** nocapture readonly %setname) #4 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double 0x3FC3333340000000, double 0x3FC3333340000000, double 7.500000e-01, double 0x3FEB333340000000) #9
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out)
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out)
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %out)
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), double 7.800000e-01, double 8.000000e-01) #9
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i32 2) #9
  %7 = icmp sgt i32 %nsets, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %8 = add i32 %nsets, -1
  br label %9

; <label>:9                                       ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %10 = getelementptr inbounds i8** %setname, i64 %indvars.iv
  %11 = load i8** %10, align 8, !tbaa !18
  %12 = icmp eq i8* %11, null
  %.pre = trunc i64 %indvars.iv to i32
  br i1 %12, label %._crit_edge2, label %13

; <label>:13                                      ; preds = %9
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %.pre, i8* %11) #9
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %9, %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %.pre, %8
  br i1 %exitcond, label %._crit_edge, label %9

._crit_edge:                                      ; preds = %._crit_edge2, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_line_props(%struct.__sFILE* nocapture %out, i32 %NrSet, i32 %LineStyle, i32 %LineColor) #4 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out)
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str21, i64 0, i64 0), i32 %NrSet, i32 %LineStyle) #9
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), i32 %NrSet, i32 %LineColor) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_box(%struct.__sFILE* nocapture %out, i32 %LocType, float %xmin, float %ymin, float %xmax, float %ymax, i32 %LineStyle, i32 %LineWidth, i32 %LineColor, i32 %BoxFill, i32 %BoxColor, i32 %BoxPattern) #4 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %out)
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out)
  %3 = sext i32 %LocType to i64
  %4 = getelementptr inbounds [2 x i8*]* @LocTypeStr, i64 0, i64 %3
  %5 = load i8** %4, align 8, !tbaa !18
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %5) #9
  %7 = fpext float %xmin to double
  %8 = fpext float %ymin to double
  %9 = fpext float %xmax to double
  %10 = fpext float %ymax to double
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), double %7, double %8, double %9, double %10) #9
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %LineStyle) #9
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str28, i64 0, i64 0), i32 %LineWidth) #9
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i32 %LineColor) #9
  %15 = sext i32 %BoxFill to i64
  %16 = getelementptr inbounds [3 x i8*]* @BoxFillStr, i64 0, i64 %15
  %17 = load i8** %16, align 8, !tbaa !18
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i8* %17) #9
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i32 %BoxColor) #9
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %BoxPattern) #9
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @lsq_y_ax(i32 %n, float* nocapture readonly %x, float* nocapture readonly %y, float* nocapture %a) #4 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %15, %3 ]
  %5 = getelementptr inbounds float* %y, i64 %indvars.iv
  %6 = load float* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds float* %x, i64 %indvars.iv
  %8 = load float* %7, align 4, !tbaa !14
  %9 = insertelement <2 x float> undef, float %6, i32 0
  %10 = insertelement <2 x float> %9, float %8, i32 1
  %11 = insertelement <2 x float> undef, float %8, i32 0
  %12 = insertelement <2 x float> %11, float %8, i32 1
  %13 = fmul <2 x float> %10, %12
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fadd <2 x double> %4, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  %16 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %3 ]
  %17 = extractelement <2 x double> %16, i32 0
  %18 = extractelement <2 x double> %16, i32 1
  %19 = fdiv double %17, %18
  %20 = fptrunc double %19 to float
  store float %20, float* %a, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @lsq_y_ax_b(i32 %n, float* nocapture readonly %x, float* nocapture readonly %y, float* nocapture %a, float* nocapture %b) #4 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %2 = add i32 %n, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph9
  %indvars.iv19 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next20, %3 ]
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph9 ], [ %19, %3 ]
  %5 = phi <2 x double> [ zeroinitializer, %.lr.ph9 ], [ %15, %3 ]
  %6 = getelementptr inbounds float* %y, i64 %indvars.iv19
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds float* %x, i64 %indvars.iv19
  %9 = load float* %8, align 4, !tbaa !14
  %10 = insertelement <2 x float> undef, float %9, i32 0
  %11 = insertelement <2 x float> %10, float %9, i32 1
  %12 = insertelement <2 x float> %10, float %7, i32 1
  %13 = fmul <2 x float> %11, %12
  %14 = fpext <2 x float> %13 to <2 x double>
  %15 = fadd <2 x double> %5, %14
  %16 = insertelement <2 x float> undef, float %7, i32 0
  %17 = insertelement <2 x float> %16, float %9, i32 1
  %18 = fpext <2 x float> %17 to <2 x double>
  %19 = fadd <2 x double> %4, %18
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %2
  br i1 %exitcond22, label %._crit_edge10, label %3

._crit_edge10:                                    ; preds = %3, %0
  %20 = phi <2 x double> [ zeroinitializer, %0 ], [ %19, %3 ]
  %21 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %3 ]
  %22 = sitofp i32 %n to double
  %23 = extractelement <2 x double> %21, i32 1
  %24 = fmul double %22, %23
  %25 = extractelement <2 x double> %20, i32 0
  %26 = extractelement <2 x double> %20, i32 1
  %27 = fmul double %26, %25
  %28 = fsub double %24, %27
  %29 = extractelement <2 x double> %21, i32 0
  %30 = fmul double %22, %29
  %31 = fmul double %26, %26
  %32 = fsub double %30, %31
  %33 = fdiv double %28, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %a, align 4, !tbaa !14
  %35 = fpext float %34 to double
  %36 = fmul double %26, %35
  %37 = fsub double %25, %36
  %38 = fdiv double %37, %22
  %39 = fptrunc double %38 to float
  store float %39, float* %b, align 4, !tbaa !14
  br i1 %1, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %._crit_edge10
  %40 = load float* %a, align 4, !tbaa !14
  %41 = add i32 %n, -1
  br label %42

; <label>:42                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ]
  %chi2.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %52, %42 ]
  %43 = getelementptr inbounds float* %y, i64 %indvars.iv
  %44 = load float* %43, align 4, !tbaa !14
  %45 = getelementptr inbounds float* %x, i64 %indvars.iv
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fmul float %40, %46
  %48 = fadd float %47, %39
  %49 = fsub float %44, %48
  %50 = fmul float %49, %49
  %51 = fpext float %50 to double
  %52 = fadd double %chi2.02, %51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %41
  br i1 %exitcond, label %._crit_edge, label %42

._crit_edge:                                      ; preds = %42
  %53 = icmp sgt i32 %n, 2
  br i1 %53, label %54, label %._crit_edge.thread

; <label>:54                                      ; preds = %._crit_edge
  %55 = add nsw i32 %n, -2
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %52, %56
  %58 = tail call double @sqrt(double %57) #11
  %59 = fptrunc double %58 to float
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge10, %._crit_edge, %54
  %.0 = phi float [ %59, %54 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge10 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_xvg(i8* %fn, float*** nocapture %y, i32* nocapture %ny) #4 {
  %is.i = alloca [2 x i32], align 4
  %lf = alloca double, align 8
  store i32 0, i32* %ny, align 4, !tbaa !19
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #9
  %2 = bitcast [2 x i32]* %is.i to i8*
  br label %.outer

.outer:                                           ; preds = %.loopexit, %0
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit ], [ 0, %0 ]
  %base.0.ph = phi i8* [ %base.2.lcssa, %.loopexit ], [ null, %0 ]
  %fmt.0.ph = phi i8* [ %fmt.2.lcssa, %.loopexit ], [ null, %0 ]
  %line.0.ph = phi i32 [ %42, %.loopexit ], [ 0, %0 ]
  %nny.0.ph = phi i32 [ %nny.1, %.loopexit ], [ 0, %0 ]
  %maxx.0.ph = phi i32 [ %maxx.156, %.loopexit ], [ 0, %0 ]
  %yy.0.ph = phi float** [ %yy.1, %.loopexit ], [ null, %0 ]
  br label %.backedge

.backedge:                                        ; preds = %41, %41, %.outer
  %line.0 = phi i32 [ %line.0.ph, %.outer ], [ %42, %41 ], [ %42, %41 ]
  %3 = load i8** @fgets3.ptr, align 8, !tbaa !18
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %.backedge
  %6 = load i32* @fgets3.len, align 4, !tbaa !19
  %7 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 187, i32 %6, i32 1) #9
  store i8* %7, i8** @fgets3.ptr, align 8, !tbaa !18
  br label %8

; <label>:8                                       ; preds = %5, %.backedge
  %9 = phi i8* [ %7, %5 ], [ %3, %.backedge ]
  %10 = load i32* @fgets3.len, align 4, !tbaa !19
  %11 = add nsw i32 %10, -1
  %12 = call i8* @fgets(i8* %9, i32 %11, %struct.__sFILE* %1) #9
  %13 = icmp eq i8* %12, null
  %14 = trunc i64 %indvars.iv54 to i32
  br i1 %13, label %fgets3.exit.thread, label %15

; <label>:15                                      ; preds = %8
  %16 = load i8** @fgets3.ptr, align 8, !tbaa !18
  %17 = call i8* @strchr(i8* %16, i32 10) #9
  %18 = icmp eq i8* %17, null
  br i1 %18, label %.lr.ph, label %.critedge.i

.lr.ph:                                           ; preds = %15, %._crit_edge.i
  %p.0.i13 = phi i8* [ %29, %._crit_edge.i ], [ %16, %15 ]
  %19 = call i32 @feof(%struct.__sFILE* %1) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %.critedge.i

; <label>:21                                      ; preds = %.lr.ph
  %22 = load i32* @fgets3.len, align 4, !tbaa !19
  %23 = add nsw i32 %22, 4096
  store i32 %23, i32* @fgets3.len, align 4, !tbaa !19
  %24 = load i8** @fgets3.ptr, align 8, !tbaa !18
  %25 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 196, i8* %24, i32 %23) #9
  store i8* %25, i8** @fgets3.ptr, align 8, !tbaa !18
  %26 = getelementptr inbounds i8* %p.0.i13, i64 4095
  %27 = call i8* @fgets(i8* %26, i32 4096, %struct.__sFILE* %1) #9
  %28 = icmp eq i8* %27, null
  br i1 %28, label %.critedge.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %21
  %29 = getelementptr inbounds i8* %p.0.i13, i64 4096
  %.pre.i = load i8** @fgets3.ptr, align 8, !tbaa !18
  %30 = call i8* @strchr(i8* %.pre.i, i32 10) #9
  %31 = icmp eq i8* %30, null
  br i1 %31, label %.lr.ph, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.i, %.lr.ph, %21, %15
  %32 = load i8** @fgets3.ptr, align 8, !tbaa !18
  %33 = call i64 @strlen(i8* %32) #9
  %34 = shl i64 %33, 32
  %sext.i = add i64 %34, -4294967296
  %35 = ashr exact i64 %sext.i, 32
  %36 = getelementptr inbounds i8* %32, i64 %35
  %37 = load i8* %36, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 10
  br i1 %38, label %39, label %fgets3.exit

; <label>:39                                      ; preds = %.critedge.i
  store i8 0, i8* %36, align 1, !tbaa !13
  %.pre1.i = load i8** @fgets3.ptr, align 8, !tbaa !18
  br label %fgets3.exit

fgets3.exit:                                      ; preds = %.critedge.i, %39
  %.0.i = phi i8* [ %.pre1.i, %39 ], [ %32, %.critedge.i ]
  %40 = icmp eq i8* %.0.i, null
  br i1 %40, label %fgets3.exit.thread, label %41

; <label>:41                                      ; preds = %fgets3.exit
  %42 = add nsw i32 %line.0, 1
  call void @trim(i8* %.0.i) #9
  %43 = load i8* %.0.i, align 1, !tbaa !13
  switch i8 %43, label %44 [
    i8 64, label %.backedge
    i8 35, label %.backedge
  ]

; <label>:44                                      ; preds = %41
  %45 = icmp eq i32 %nny.0.ph, 0
  br i1 %45, label %46, label %79

; <label>:46                                      ; preds = %44
  call void @llvm.lifetime.start(i64 8, i8* %2)
  %47 = icmp eq i8 %43, 0
  br i1 %47, label %wordcount.exit.thread, label %.lr.ph.i

wordcount.exit.thread:                            ; preds = %46
  call void @llvm.lifetime.end(i64 8, i8* %2)
  store i32 0, i32* %ny, align 4, !tbaa !19
  br label %.loopexit5

.lr.ph.i:                                         ; preds = %46, %isspace.exit._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %isspace.exit._crit_edge.i ], [ 0, %46 ]
  %48 = phi i8 [ %69, %isspace.exit._crit_edge.i ], [ %43, %46 ]
  %cur.04.i = phi i32 [ %.pre.i2, %isspace.exit._crit_edge.i ], [ 0, %46 ]
  %n.03.i = phi i32 [ %n.1.i, %isspace.exit._crit_edge.i ], [ 1, %46 ]
  %isascii.i.i1.i = icmp sgt i8 %48, -1
  br i1 %isascii.i.i1.i, label %49, label %54

; <label>:49                                      ; preds = %.lr.ph.i
  %50 = sext i8 %48 to i64
  %51 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %50
  %52 = load i32* %51, align 4, !tbaa !19
  %53 = and i32 %52, 16384
  br label %isspace.exit.i

; <label>:54                                      ; preds = %.lr.ph.i
  %55 = sext i8 %48 to i32
  %56 = call i32 @__maskrune(i32 %55, i64 16384) #9
  br label %isspace.exit.i

isspace.exit.i:                                   ; preds = %54, %49
  %.sink.i.in.i.i = phi i32 [ %53, %49 ], [ %56, %54 ]
  %.sink.i.i.i = icmp ne i32 %.sink.i.in.i.i, 0
  %57 = zext i1 %.sink.i.i.i to i32
  %58 = sext i32 %cur.04.i to i64
  %59 = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %58
  store i32 %57, i32* %59, align 4, !tbaa !19
  %60 = icmp slt i64 %indvars.iv.i, 1
  %61 = xor i1 %.sink.i.i.i, true
  %or.cond.i = or i1 %60, %61
  %.pre.i2 = sub nsw i32 1, %cur.04.i
  br i1 %or.cond.i, label %isspace.exit._crit_edge.i, label %62

; <label>:62                                      ; preds = %isspace.exit.i
  %63 = sext i32 %.pre.i2 to i64
  %64 = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %63
  %65 = load i32* %64, align 4, !tbaa !19
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %.n.0.i = add nsw i32 %67, %n.03.i
  br label %isspace.exit._crit_edge.i

isspace.exit._crit_edge.i:                        ; preds = %62, %isspace.exit.i
  %n.1.i = phi i32 [ %.n.0.i, %62 ], [ %n.03.i, %isspace.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %68 = getelementptr inbounds i8* %.0.i, i64 %indvars.iv.next.i
  %69 = load i8* %68, align 1, !tbaa !13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %wordcount.exit, label %.lr.ph.i

wordcount.exit:                                   ; preds = %isspace.exit._crit_edge.i
  call void @llvm.lifetime.end(i64 8, i8* %2)
  store i32 %n.1.i, i32* %ny, align 4, !tbaa !19
  %71 = icmp eq i32 %n.1.i, 0
  br i1 %71, label %.loopexit5, label %72

; <label>:72                                      ; preds = %wordcount.exit
  %73 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 249, i32 %n.1.i, i32 8) #9
  %74 = bitcast i8* %73 to float**
  %75 = mul nsw i32 %n.1.i, 3
  %76 = add nsw i32 %75, 1
  %77 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 250, i32 %76, i32 1) #9
  %78 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 251, i32 %76, i32 1) #9
  br label %79

; <label>:79                                      ; preds = %72, %44
  %base.1 = phi i8* [ %78, %72 ], [ %base.0.ph, %44 ]
  %fmt.1 = phi i8* [ %77, %72 ], [ %fmt.0.ph, %44 ]
  %nny.1 = phi i32 [ %n.1.i, %72 ], [ %nny.0.ph, %44 ]
  %yy.1 = phi float** [ %74, %72 ], [ %yy.0.ph, %44 ]
  %80 = sext i32 %maxx.0.ph to i64
  %81 = icmp slt i64 %indvars.iv54, %80
  br i1 %81, label %.loopexit4, label %82

; <label>:82                                      ; preds = %79
  %83 = add nsw i32 %maxx.0.ph, 1024
  %84 = icmp sgt i32 %nny.1, 0
  br i1 %84, label %.lr.ph17, label %.loopexit4.thread

.loopexit4.thread:                                ; preds = %82
  store i8 0, i8* %fmt.1, align 1, !tbaa !13
  store i8 0, i8* %base.1, align 1, !tbaa !13
  br label %116

.lr.ph17:                                         ; preds = %82
  %85 = shl i32 %83, 2
  %86 = add i32 %nny.1, -1
  br label %87

; <label>:87                                      ; preds = %87, %.lr.ph17
  %indvars.iv = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next, %87 ]
  %88 = getelementptr inbounds float** %yy.1, i64 %indvars.iv
  %89 = bitcast float** %88 to i8**
  %90 = load i8** %89, align 8, !tbaa !18
  %91 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 257, i8* %90, i32 %85) #9
  store i8* %91, i8** %89, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %86
  br i1 %exitcond, label %.loopexit4, label %87

.loopexit4:                                       ; preds = %87, %79
  %maxx.1 = phi i32 [ %maxx.0.ph, %79 ], [ %83, %87 ]
  store i8 0, i8* %fmt.1, align 1, !tbaa !13
  store i8 0, i8* %base.1, align 1, !tbaa !13
  %92 = icmp sgt i32 %nny.1, 0
  br i1 %92, label %.lr.ph21, label %116

.lr.ph21:                                         ; preds = %.loopexit4
  %93 = mul i32 %nny.1, 3
  %94 = add i32 %93, 4
  %95 = add nsw i32 %93, 1
  %96 = sext i32 %nny.1 to i64
  br label %97

; <label>:97                                      ; preds = %.lr.ph21, %102
  %indvars.iv48 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next49, %102 ]
  %fmt.219 = phi i8* [ %fmt.1, %.lr.ph21 ], [ %108, %102 ]
  %base.218 = phi i8* [ %base.1, %.lr.ph21 ], [ %109, %102 ]
  %98 = call i64 @llvm.objectsize.i64.p0i8(i8* %fmt.219, i1 false)
  %99 = call i8* @__strcpy_chk(i8* %fmt.219, i8* %base.218, i64 %98) #9
  %100 = call i8* @__strcat_chk(i8* %fmt.219, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i64 %98) #9
  %101 = call i32 (i8*, i8*, ...)* @sscanf(i8* %.0.i, i8* %fmt.219, double* %lf) #9
  switch i32 %101, label %102 [
    i32 -1, label %._crit_edge
    i32 0, label %._crit_edge24
  ]

; <label>:102                                     ; preds = %97
  %103 = load double* %lf, align 8, !tbaa !16
  %104 = fptrunc double %103 to float
  %105 = getelementptr inbounds float** %yy.1, i64 %indvars.iv48
  %106 = load float** %105, align 8, !tbaa !18
  %107 = getelementptr inbounds float* %106, i64 %indvars.iv54
  store float %104, float* %107, align 4, !tbaa !14
  %108 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 272, i8* %fmt.219, i32 %94) #9
  %109 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 273, i8* %base.218, i32 %95) #9
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* %109, i1 false)
  %111 = call i8* @__strcat_chk(i8* %109, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i64 %110) #9
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %112 = icmp slt i64 %indvars.iv.next49, %96
  br i1 %112, label %97, label %._crit_edge28

._crit_edge:                                      ; preds = %97
  %113 = trunc i64 %indvars.iv48 to i32
  br label %116

._crit_edge24:                                    ; preds = %97
  %114 = trunc i64 %indvars.iv48 to i32
  br label %116

._crit_edge28:                                    ; preds = %102
  %115 = trunc i64 %indvars.iv.next49 to i32
  br label %116

; <label>:116                                     ; preds = %.loopexit4.thread, %._crit_edge28, %._crit_edge24, %._crit_edge, %.loopexit4
  %maxx.156 = phi i32 [ %maxx.1, %._crit_edge ], [ %maxx.1, %._crit_edge24 ], [ %maxx.1, %._crit_edge28 ], [ %maxx.1, %.loopexit4 ], [ %83, %.loopexit4.thread ]
  %k.1.lcssa = phi i32 [ %113, %._crit_edge ], [ %114, %._crit_edge24 ], [ %115, %._crit_edge28 ], [ 0, %.loopexit4 ], [ 0, %.loopexit4.thread ]
  %fmt.2.lcssa = phi i8* [ %fmt.219, %._crit_edge ], [ %fmt.219, %._crit_edge24 ], [ %108, %._crit_edge28 ], [ %fmt.1, %.loopexit4 ], [ %fmt.1, %.loopexit4.thread ]
  %base.2.lcssa = phi i8* [ %base.218, %._crit_edge ], [ %base.218, %._crit_edge24 ], [ %109, %._crit_edge28 ], [ %base.1, %.loopexit4 ], [ %base.1, %.loopexit4.thread ]
  %117 = icmp eq i32 %k.1.lcssa, %nny.1
  br i1 %117, label %.loopexit, label %118

; <label>:118                                     ; preds = %116
  %119 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %120 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %119, i8* getelementptr inbounds ([39 x i8]* @.str42, i64 0, i64 0), i32 %k.1.lcssa, i32 %42, i8* %fn) #9
  %121 = icmp slt i32 %k.1.lcssa, %nny.1
  br i1 %121, label %.lr.ph34, label %.loopexit

.lr.ph34:                                         ; preds = %118
  %122 = sext i32 %k.1.lcssa to i64
  %123 = add i32 %nny.1, -1
  br label %124

; <label>:124                                     ; preds = %124, %.lr.ph34
  %indvars.iv50 = phi i64 [ %122, %.lr.ph34 ], [ %indvars.iv.next51, %124 ]
  %125 = getelementptr inbounds float** %yy.1, i64 %indvars.iv50
  %126 = load float** %125, align 8, !tbaa !18
  %127 = getelementptr inbounds float* %126, i64 %indvars.iv54
  store float 0.000000e+00, float* %127, align 4, !tbaa !14
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %123
  br i1 %exitcond53, label %.loopexit, label %124

.loopexit:                                        ; preds = %124, %118, %116
  %indvars.iv.next55 = add nuw i64 %indvars.iv54, 1
  br label %.outer

fgets3.exit.thread:                               ; preds = %8, %fgets3.exit
  call void @ffclose(%struct.__sFILE* %1) #9
  store float** %yy.0.ph, float*** %y, align 8, !tbaa !18
  br label %.loopexit5

.loopexit5:                                       ; preds = %wordcount.exit, %wordcount.exit.thread, %fgets3.exit.thread
  %.0 = phi i32 [ %14, %fgets3.exit.thread ], [ 0, %wordcount.exit.thread ], [ 0, %wordcount.exit ]
  ret i32 %.0
}

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xvg(i8* %fn, i8* %title, i32 %nx, i32 %ny, float** nocapture readonly %y, i8** readonly %leg) #4 {
  %1 = tail call %struct.__sFILE* @xvgropen(i8* %fn, i8* %title, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #12
  %2 = icmp eq i8** %leg, null
  br i1 %2, label %.preheader1, label %3

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %ny, -1
  tail call void @xvgr_legend(%struct.__sFILE* %1, i32 %4, i8** %leg) #12
  br label %.preheader1

.preheader1:                                      ; preds = %0, %3
  %5 = icmp sgt i32 %nx, 0
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %6 = icmp sgt i32 %ny, 0
  %7 = add i32 %ny, -1
  %8 = add i32 %nx, -1
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv5 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next6, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %9 = getelementptr inbounds float** %y, i64 %indvars.iv
  %10 = load float** %9, align 8, !tbaa !18
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv5
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fpext float %12 to double
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), double %13) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %lftr.wideiv7 = trunc i64 %indvars.iv5 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %8
  br i1 %exitcond8, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  tail call void @ffclose(%struct.__sFILE* %1) #9
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!4, !4, i64 0}
!19 = !{!7, !7, i64 0}
