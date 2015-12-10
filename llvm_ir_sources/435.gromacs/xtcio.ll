; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xtcio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [62 x i8] c"\0AXTC error: read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"XTC read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xtcio.c\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"Frame contains more atoms (%d) than expected (%d)\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"natoms\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"Magic Number Error in XTC file (read %d, should be %d)\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #7
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #7
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_xtc(i8* %fn, i8* %mode) #4 {
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #6
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @close_xtc(i32 %fp) #4 {
  tail call void @gmx_fio_close(i32 %fp) #6
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xtc_check(i8* %str, i32 %bResult, i8* %file, i32 %line) #4 {
  %1 = icmp eq i32 %bResult, 0
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %4 = icmp eq %struct.__sFILE* %3, null
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #6
  br label %7

; <label>:7                                       ; preds = %0, %5, %2
  %.0 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @xtc_check_fat_err(i8* %str, i32 %bResult, i8* %file, i32 %line) #4 {
  %1 = icmp eq i32 %bResult, 0
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #6
  br label %3

; <label>:3                                       ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_xtc(i32 %fp, i32 %natoms, i32 %step, float %time, [3 x float]* %box, [3 x float]* %x, float %prec) #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %magic_number = alloca i32, align 4
  %bDum = alloca i32, align 4
  store i32 %natoms, i32* %1, align 4, !tbaa !19
  store i32 %step, i32* %2, align 4, !tbaa !19
  store float %time, float* %3, align 4, !tbaa !14
  store float %prec, float* %4, align 4, !tbaa !14
  store i32 1995, i32* %magic_number, align 4, !tbaa !19
  %5 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6
  %6 = call fastcc i32 @xtc_header(%struct.XDR* %5, i32* %magic_number, i32* %1, i32* %2, float* %3, i32* %bDum) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = call fastcc i32 @xtc_coord(%struct.XDR* %5, i32* %1, [3 x float]* %box, [3 x float]* %x, float* %4) #8
  br label %10

; <label>:10                                      ; preds = %0, %8
  %.0 = phi i32 [ %9, %8 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xtc_header(%struct.XDR* %xd, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* nocapture %bOK) #4 {
  %1 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %magic) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %27, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %natoms) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %3
  %7 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %8 = icmp eq %struct.__sFILE* %7, null
  br i1 %8, label %xtc_check.exit4, label %9

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 88) #6
  br label %xtc_check.exit4

; <label>:11                                      ; preds = %3
  %12 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %step) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

; <label>:14                                      ; preds = %11
  %15 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %16 = icmp eq %struct.__sFILE* %15, null
  br i1 %16, label %xtc_check.exit4, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 90) #6
  br label %xtc_check.exit4

; <label>:19                                      ; preds = %11
  %20 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %time) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %xtc_check.exit4

; <label>:22                                      ; preds = %19
  %23 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %24 = icmp eq %struct.__sFILE* %23, null
  br i1 %24, label %xtc_check.exit4, label %25

; <label>:25                                      ; preds = %22
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 92) #6
  br label %xtc_check.exit4

xtc_check.exit4:                                  ; preds = %9, %6, %17, %14, %25, %22, %19
  %result.1 = phi i32 [ 0, %22 ], [ 0, %25 ], [ 1, %19 ], [ 0, %14 ], [ 0, %17 ], [ 0, %6 ], [ 0, %9 ]
  store i32 %result.1, i32* %bOK, align 4, !tbaa !19
  br label %27

; <label>:27                                      ; preds = %0, %xtc_check.exit4
  %.0 = phi i32 [ %result.1, %xtc_check.exit4 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xtc_coord(%struct.XDR* %xd, i32* %natoms, [3 x float]* %box, [3 x float]* %x, float* %prec) #4 {
  br label %.preheader

.preheader:                                       ; preds = %0, %.critedge1
  %indvars.iv11 = phi i64 [ 0, %0 ], [ %indvars.iv.next12, %.critedge1 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %xtc_check.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %xtc_check.exit ], [ 0, %.preheader ]
  %1 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv11, i64 %indvars.iv
  %2 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %xtc_check.exit

; <label>:4                                       ; preds = %.lr.ph
  %5 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %6 = icmp eq %struct.__sFILE* %5, null
  br i1 %6, label %xtc_check.exit6, label %7

; <label>:7                                       ; preds = %4
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 106) #6
  br label %xtc_check.exit6

xtc_check.exit:                                   ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = icmp slt i64 %indvars.iv.next, 3
  br i1 %9, label %.lr.ph, label %.critedge1

.critedge1:                                       ; preds = %xtc_check.exit
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %10 = icmp slt i64 %indvars.iv.next12, 3
  br i1 %10, label %.preheader, label %.critedge

.critedge:                                        ; preds = %.critedge1
  %11 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %12 = tail call i32 @xdr3drcoord(%struct.XDR* %xd, float* %11, i32* %natoms, float* %prec) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %xtc_check.exit6

; <label>:14                                      ; preds = %.critedge
  %15 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %16 = icmp eq %struct.__sFILE* %15, null
  br i1 %16, label %xtc_check.exit6, label %17

; <label>:17                                      ; preds = %14
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 110) #6
  br label %xtc_check.exit6

xtc_check.exit6:                                  ; preds = %4, %7, %17, %14, %.critedge
  %result.2 = phi i32 [ 0, %14 ], [ 0, %17 ], [ 1, %.critedge ], [ 0, %7 ], [ 0, %4 ]
  ret i32 %result.2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_xtc(i32 %fp, i32* %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]** nocapture %x, float* %prec, i32* nocapture %bOK) #4 {
  %magic = alloca i32, align 4
  store i32 1, i32* %bOK, align 4, !tbaa !19
  %1 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6
  %2 = call fastcc i32 @xtc_header(%struct.XDR* %1, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* %bOK) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = load i32* %magic, align 4, !tbaa !19
  %6 = icmp eq i32 %5, 1995
  br i1 %6, label %check_xtc_magic.exit, label %7

; <label>:7                                       ; preds = %4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), i32 %5, i32 1995) #6
  br label %check_xtc_magic.exit

check_xtc_magic.exit:                             ; preds = %4, %7
  %8 = load i32* %natoms, align 4, !tbaa !19
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 157, i32 %8, i32 12) #6
  %10 = bitcast i8* %9 to [3 x float]*
  %11 = bitcast [3 x float]** %x to i8**
  store i8* %9, i8** %11, align 8, !tbaa !18
  %12 = call fastcc i32 @xtc_coord(%struct.XDR* %1, i32* %natoms, [3 x float]* %box, [3 x float]* %10, float* %prec) #8
  store i32 %12, i32* %bOK, align 4, !tbaa !19
  br label %13

; <label>:13                                      ; preds = %0, %check_xtc_magic.exit
  %.0 = phi i32 [ %12, %check_xtc_magic.exit ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_xtc(i32 %fp, i32 %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]* %x, float* %prec, i32* nocapture %bOK) #4 {
  %1 = alloca i32, align 4
  %magic = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %natoms, i32* %1, align 4, !tbaa !19
  store i32 1, i32* %bOK, align 4, !tbaa !19
  %2 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6
  %3 = call fastcc i32 @xtc_header(%struct.XDR* %2, i32* %magic, i32* %n, i32* %step, float* %time, i32* %bOK) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %n, align 4, !tbaa !19
  %7 = icmp sgt i32 %6, %natoms
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), i32 %6, i32 %natoms) #6
  br label %9

; <label>:9                                       ; preds = %8, %5
  %10 = load i32* %magic, align 4, !tbaa !19
  %11 = icmp eq i32 %10, 1995
  br i1 %11, label %check_xtc_magic.exit, label %12

; <label>:12                                      ; preds = %9
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), i32 %10, i32 1995) #6
  br label %check_xtc_magic.exit

check_xtc_magic.exit:                             ; preds = %9, %12
  %13 = call fastcc i32 @xtc_coord(%struct.XDR* %2, i32* %1, [3 x float]* %box, [3 x float]* %x, float* %prec) #8
  store i32 %13, i32* %bOK, align 4, !tbaa !19
  br label %14

; <label>:14                                      ; preds = %0, %check_xtc_magic.exit
  %.0 = phi i32 [ %13, %check_xtc_magic.exit ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #1

; Function Attrs: optsize
declare i32 @xdr_real(%struct.XDR*, float*) #1

; Function Attrs: optsize
declare i32 @xdr3drcoord(%struct.XDR*, float*, i32*, float*) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { optsize }

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
