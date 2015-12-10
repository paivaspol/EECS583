; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/init_sh.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_shell = type { i32, i32, i32, i32, i32, float, float }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@.str = private unnamed_addr constant [12 x i8] c"shell_index\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/init_sh.c\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"Your number of shells %d is not equal to the number of shells %d\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"There are: %d %s\0A\00", align 1
@ptype_str = external global [6 x i8*]
@.str4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str5 = private unnamed_addr constant [43 x i8] c"nsi is %d should be within 0 - %d. a1 = %d\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"What is this?\00", align 1
@.str7 = private unnamed_addr constant [48 x i8] c"Can not handle more than three bonds per shell\0A\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"What is this? shell=%d, a1=%d\00", align 1
@.str9 = private unnamed_addr constant [65 x i8] c"Something weird with shells. They may not be bonded to something\00", align 1
@debug = external global %struct.__sFILE*
@.str10 = private unnamed_addr constant [12 x i8] c"SHELL DATA\0A\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"%5s  %8s  %5s  %5s  %5s\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"Shell\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"Force k\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"Nucl1\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"Nucl2\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"Nucl3\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"%5d  %8.3f  %5d\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"  %5d\0A\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"  %5d  %5d\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #7
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #7
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_shell* @init_shells(%struct.__sFILE* %log, i32 %start, i32 %homenr, %struct.t_idef* nocapture readonly %idef, %struct.t_mdatoms* nocapture readonly %md, i32* nocapture %nshell) #4 {
  %n = alloca [5 x i32], align 16
  %n52 = bitcast [5 x i32]* %n to i8*
  call void @llvm.memset.p0i8.i64(i8* %n52, i8 0, i64 20, i32 16, i1 false)
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %homenr, i32 4) #7
  %2 = bitcast i8* %1 to i32*
  %3 = icmp sgt i32 %homenr, 0
  br i1 %3, label %.lr.ph30, label %.thread

.thread:                                          ; preds = %0
  %.pre59 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2
  br label %26

.lr.ph30:                                         ; preds = %0
  %4 = add nsw i32 %homenr, %start
  %5 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %6 = load i16** %5, align 8, !tbaa !18
  %7 = sext i32 %start to i64
  %8 = sext i32 %4 to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph30, %21
  %indvars.iv47 = phi i64 [ %7, %.lr.ph30 ], [ %indvars.iv.next48, %21 ]
  %nsi.027 = phi i32 [ 0, %.lr.ph30 ], [ %nsi.1, %21 ]
  %10 = getelementptr inbounds i16* %6, i64 %indvars.iv47
  %11 = load i16* %10, align 2, !tbaa !20
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %12
  %14 = load i32* %13, align 4, !tbaa !21
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4, !tbaa !21
  %16 = icmp eq i16 %11, 2
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %9
  %18 = add nsw i32 %nsi.027, 1
  %19 = sub nsw i64 %indvars.iv47, %7
  %20 = getelementptr inbounds i32* %2, i64 %19
  store i32 %nsi.027, i32* %20, align 4, !tbaa !21
  br label %21

; <label>:21                                      ; preds = %9, %17
  %nsi.1 = phi i32 [ %18, %17 ], [ %nsi.027, %9 ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1
  %22 = icmp slt i64 %indvars.iv.next48, %8
  br i1 %22, label %9, label %23

; <label>:23                                      ; preds = %21
  %.phi.trans.insert = getelementptr inbounds [5 x i32]* %n, i64 0, i64 2
  %.pre = load i32* %.phi.trans.insert, align 8, !tbaa !21
  %24 = icmp eq i32 %nsi.1, %.pre
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %23
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i32 %nsi.1, i32 %.pre) #7
  br label %26

; <label>:26                                      ; preds = %.thread, %23, %25
  %.pre-phi60 = phi i32* [ %.pre59, %.thread ], [ %.phi.trans.insert, %23 ], [ %.phi.trans.insert, %25 ]
  %27 = icmp ne %struct.__sFILE* %log, null
  br i1 %27, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %26, %35
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %35 ], [ 0, %26 ]
  %28 = getelementptr inbounds [5 x i32]* %n, i64 0, i64 %indvars.iv44
  %29 = load i32* %28, align 4, !tbaa !21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

; <label>:31                                      ; preds = %.preheader1
  %32 = getelementptr inbounds [6 x i8*]* @ptype_str, i64 0, i64 %indvars.iv44
  %33 = load i8** %32, align 8, !tbaa !22
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i32 %29, i8* %33) #7
  br label %35

; <label>:35                                      ; preds = %.preheader1, %31
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 5
  br i1 %exitcond46, label %.loopexit, label %.preheader1

.loopexit:                                        ; preds = %35, %26
  %36 = load i32* %.pre-phi60, align 8, !tbaa !21
  store i32 %36, i32* %nshell, align 4, !tbaa !21
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %.lr.ph24, label %206

.lr.ph24:                                         ; preds = %.loopexit
  %38 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 90, i32 %36, i32 28) #7
  %39 = bitcast i8* %38 to %struct.t_shell*
  %40 = add i32 %36, -1
  br label %41

; <label>:41                                      ; preds = %41, %.lr.ph24
  %indvars.iv40 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next41, %41 ]
  %42 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv40, i32 1
  %43 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv40, i32 0
  %44 = bitcast i32* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 -1, i64 16, i32 4, i1 false)
  store i32 0, i32* %43, align 4, !tbaa !23
  %45 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv40, i32 6
  store float 0.000000e+00, float* %45, align 4, !tbaa !25
  %46 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv40, i32 5
  store float 0.000000e+00, float* %46, align 4, !tbaa !26
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %lftr.wideiv42 = trunc i64 %indvars.iv40 to i32
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %40
  br i1 %exitcond43, label %._crit_edge25, label %41

._crit_edge25:                                    ; preds = %41
  %47 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 0
  %48 = load i32* %47, align 4, !tbaa !27
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %.lr.ph14.lr.ph, label %.outer._crit_edge

.lr.ph14.lr.ph:                                   ; preds = %._crit_edge25
  %50 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 0, i32 2
  %51 = load i32** %50, align 8, !tbaa !29
  %52 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %53 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %54 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.lr.ph, %.outer
  %55 = phi i32 [ %48, %.lr.ph14.lr.ph ], [ %133, %.outer ]
  %ia.0.ph20 = phi i32* [ %51, %.lr.ph14.lr.ph ], [ %131, %.outer ]
  %i.4.ph19 = phi i32 [ 0, %.lr.ph14.lr.ph ], [ %132, %.outer ]
  %ns.0.ph18 = phi i32 [ 0, %.lr.ph14.lr.ph ], [ %ns.1, %.outer ]
  %56 = load i32** %52, align 8, !tbaa !30
  %57 = load i16** %53, align 8, !tbaa !18
  br label %58

; <label>:58                                      ; preds = %.lr.ph14, %79
  %ia.013 = phi i32* [ %ia.0.ph20, %.lr.ph14 ], [ %83, %79 ]
  %i.412 = phi i32 [ %i.4.ph19, %.lr.ph14 ], [ %81, %79 ]
  %59 = load i32* %ia.013, align 4, !tbaa !21
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32* %56, i64 %60
  %62 = load i32* %61, align 4, !tbaa !21
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %63, i32 2
  %65 = load i32* %64, align 8, !tbaa !32
  %66 = getelementptr inbounds i32* %ia.013, i64 1
  %67 = load i32* %66, align 4, !tbaa !21
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16* %57, i64 %68
  %70 = load i16* %69, align 2, !tbaa !20
  %71 = icmp eq i16 %70, 2
  %72 = getelementptr inbounds i32* %ia.013, i64 2
  %73 = load i32* %72, align 4, !tbaa !21
  br i1 %71, label %85, label %74

; <label>:74                                      ; preds = %58
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i16* %57, i64 %75
  %77 = load i16* %76, align 2, !tbaa !20
  %78 = icmp eq i16 %77, 2
  br i1 %78, label %85, label %79

; <label>:79                                      ; preds = %74
  %80 = add nsw i32 %65, 1
  %81 = add nsw i32 %80, %i.412
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32* %ia.013, i64 %82
  %84 = icmp slt i32 %81, %55
  br i1 %84, label %58, label %.outer._crit_edge

; <label>:85                                      ; preds = %74, %58
  %a1.0 = phi i32 [ %67, %58 ], [ %73, %74 ]
  %a2.0 = phi i32 [ %73, %58 ], [ %67, %74 ]
  %86 = sub nsw i32 %a1.0, %start
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32* %2, i64 %87
  %89 = load i32* %88, align 4, !tbaa !21
  %90 = icmp sgt i32 %89, -1
  %.pre55 = load i32* %nshell, align 4, !tbaa !21
  %91 = icmp slt i32 %89, %.pre55
  %or.cond = and i1 %90, %91
  br i1 %or.cond, label %92, label %._crit_edge54

._crit_edge54:                                    ; preds = %85
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %89, i32 %.pre55, i32 %a1.0) #7
  br label %92

; <label>:92                                      ; preds = %85, %._crit_edge54
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 1
  %95 = load i32* %94, align 4, !tbaa !35
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

; <label>:97                                      ; preds = %92
  store i32 %a1.0, i32* %94, align 4, !tbaa !35
  %98 = add nsw i32 %ns.0.ph18, 1
  br label %102

; <label>:99                                      ; preds = %92
  %100 = icmp eq i32 %95, %a1.0
  br i1 %100, label %102, label %101

; <label>:101                                     ; preds = %99
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #7
  br label %102

; <label>:102                                     ; preds = %99, %101, %97
  %ns.1 = phi i32 [ %98, %97 ], [ %ns.0.ph18, %101 ], [ %ns.0.ph18, %99 ]
  %103 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 2
  %104 = load i32* %103, align 4, !tbaa !36
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %102
  store i32 %a2.0, i32* %103, align 4, !tbaa !36
  br label %.outer

; <label>:107                                     ; preds = %102
  %108 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 3
  %109 = load i32* %108, align 4, !tbaa !37
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %107
  store i32 %a2.0, i32* %108, align 4, !tbaa !37
  br label %.outer

; <label>:112                                     ; preds = %107
  %113 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 4
  %114 = load i32* %113, align 4, !tbaa !38
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %112
  store i32 %a2.0, i32* %113, align 4, !tbaa !38
  br label %.outer

; <label>:117                                     ; preds = %112
  br i1 %27, label %118, label %119

; <label>:118                                     ; preds = %117
  tail call fastcc void @pr_shell(%struct.__sFILE* %log, i32 %ns.1, %struct.t_shell* %39) #9
  br label %119

; <label>:119                                     ; preds = %118, %117
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str7, i64 0, i64 0)) #7
  br label %.outer

.outer:                                           ; preds = %111, %119, %116, %106
  %120 = load %union.t_iparams** %54, align 8, !tbaa !39
  %121 = getelementptr inbounds %union.t_iparams* %120, i64 %60, i32 0, i32 1
  %122 = load float* %121, align 4, !tbaa !40
  %123 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 5
  %124 = load float* %123, align 4, !tbaa !26
  %125 = fadd float %122, %124
  store float %125, float* %123, align 4, !tbaa !26
  %126 = getelementptr inbounds %struct.t_shell* %39, i64 %93, i32 0
  %127 = load i32* %126, align 4, !tbaa !23
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4, !tbaa !23
  %129 = add nsw i32 %65, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32* %ia.013, i64 %130
  %132 = add nsw i32 %129, %i.412
  %133 = load i32* %47, align 4, !tbaa !27
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %.lr.ph14, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %79, %._crit_edge25
  %ns.0.ph.lcssa = phi i32 [ 0, %._crit_edge25 ], [ %ns.0.ph18, %79 ], [ %ns.1, %.outer ]
  %135 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 0
  %136 = load i32* %135, align 4, !tbaa !27
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %.lr.ph10, label %._crit_edge11

.lr.ph10:                                         ; preds = %.outer._crit_edge
  %138 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 19, i32 2
  %139 = load i32** %138, align 8, !tbaa !29
  %140 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %141 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %142

; <label>:142                                     ; preds = %.lr.ph10, %171
  %ia.18 = phi i32* [ %139, %.lr.ph10 ], [ %189, %171 ]
  %i.57 = phi i32 [ 0, %.lr.ph10 ], [ %190, %171 ]
  %ns.26 = phi i32 [ %ns.0.ph.lcssa, %.lr.ph10 ], [ %ns.3, %171 ]
  %143 = load i32* %ia.18, align 4, !tbaa !21
  %144 = sext i32 %143 to i64
  %145 = load i32** %140, align 8, !tbaa !30
  %146 = getelementptr inbounds i32* %145, i64 %144
  %147 = load i32* %146, align 4, !tbaa !21
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %148, i32 2
  %150 = load i32* %149, align 8, !tbaa !32
  %151 = getelementptr inbounds i32* %ia.18, i64 1
  %152 = load i32* %151, align 4, !tbaa !21
  %153 = add nsw i32 %152, 4
  %154 = add nsw i32 %152, 3
  %155 = sub nsw i32 %153, %start
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32* %2, i64 %156
  %158 = load i32* %157, align 4, !tbaa !21
  %159 = icmp sgt i32 %158, -1
  %.pre57 = load i32* %nshell, align 4, !tbaa !21
  %160 = icmp slt i32 %158, %.pre57
  %or.cond61 = and i1 %159, %160
  br i1 %or.cond61, label %161, label %._crit_edge56

._crit_edge56:                                    ; preds = %142
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %158, i32 %.pre57, i32 %153) #7
  br label %161

; <label>:161                                     ; preds = %142, %._crit_edge56
  %162 = sext i32 %158 to i64
  %163 = getelementptr inbounds %struct.t_shell* %39, i64 %162, i32 1
  %164 = load i32* %163, align 4, !tbaa !35
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %168

; <label>:166                                     ; preds = %161
  store i32 %153, i32* %163, align 4, !tbaa !35
  %167 = add nsw i32 %ns.26, 1
  br label %171

; <label>:168                                     ; preds = %161
  %169 = icmp eq i32 %164, %153
  br i1 %169, label %171, label %170

; <label>:170                                     ; preds = %168
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 %164, i32 %153) #7
  br label %171

; <label>:171                                     ; preds = %168, %170, %166
  %ns.3 = phi i32 [ %167, %166 ], [ %ns.26, %170 ], [ %ns.26, %168 ]
  %172 = getelementptr inbounds %struct.t_shell* %39, i64 %162, i32 2
  store i32 %154, i32* %172, align 4, !tbaa !36
  %173 = load %union.t_iparams** %141, align 8, !tbaa !39
  %174 = getelementptr inbounds %union.t_iparams* %173, i64 %144, i32 0, i32 0
  %175 = load float* %174, align 4, !tbaa !42
  %176 = getelementptr inbounds %union.t_iparams* %173, i64 %144, i32 0, i32 1
  %177 = load float* %176, align 4, !tbaa !44
  %178 = fadd float %175, %177
  %179 = getelementptr inbounds %union.t_iparams* %173, i64 %144, i32 0, i32 2
  %180 = load float* %179, align 4, !tbaa !45
  %181 = fadd float %178, %180
  %182 = fdiv float %181, 3.000000e+00
  %183 = getelementptr inbounds %struct.t_shell* %39, i64 %162, i32 5
  store float %182, float* %183, align 4, !tbaa !26
  %184 = getelementptr inbounds %struct.t_shell* %39, i64 %162, i32 0
  %185 = load i32* %184, align 4, !tbaa !23
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4, !tbaa !23
  %187 = add nsw i32 %150, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32* %ia.18, i64 %188
  %190 = add nsw i32 %187, %i.57
  %191 = load i32* %135, align 4, !tbaa !27
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %142, label %._crit_edge11

._crit_edge11:                                    ; preds = %171, %.outer._crit_edge
  %ns.2.lcssa = phi i32 [ %ns.0.ph.lcssa, %.outer._crit_edge ], [ %ns.3, %171 ]
  %193 = load i32* %nshell, align 4, !tbaa !21
  %194 = icmp eq i32 %ns.2.lcssa, %193
  br i1 %194, label %.preheader, label %195

; <label>:195                                     ; preds = %._crit_edge11
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([65 x i8]* @.str9, i64 0, i64 0)) #7
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge11, %195
  %196 = icmp sgt i32 %ns.2.lcssa, 0
  br i1 %196, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %197 = add i32 %ns.2.lcssa, -1
  br label %198

; <label>:198                                     ; preds = %198, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %198 ]
  %199 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv, i32 5
  %200 = load float* %199, align 4, !tbaa !26
  %201 = fdiv float 1.000000e+00, %200
  %202 = getelementptr inbounds %struct.t_shell* %39, i64 %indvars.iv, i32 6
  store float %201, float* %202, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %197
  br i1 %exitcond, label %._crit_edge, label %198

._crit_edge:                                      ; preds = %198, %.preheader
  %203 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %204 = icmp eq %struct.__sFILE* %203, null
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %._crit_edge
  tail call fastcc void @pr_shell(%struct.__sFILE* %203, i32 %ns.2.lcssa, %struct.t_shell* %39) #9
  br label %206

; <label>:206                                     ; preds = %._crit_edge, %205, %.loopexit
  %shell.0 = phi %struct.t_shell* [ %39, %205 ], [ %39, %._crit_edge ], [ null, %.loopexit ]
  ret %struct.t_shell* %shell.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_shell(%struct.__sFILE* %log, i32 %ns, %struct.t_shell* nocapture readonly %s) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %log)
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0)) #7
  %5 = icmp sgt i32 %ns, 0
  br i1 %5, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  %6 = add i32 %ns, -1
  br label %7

; <label>:7                                       ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %8 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 1
  %9 = load i32* %8, align 4, !tbaa !35
  %10 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 6
  %11 = load float* %10, align 4, !tbaa !25
  %12 = fpext float %11 to double
  %13 = fdiv double 1.000000e+00, %12
  %14 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 2
  %15 = load i32* %14, align 4, !tbaa !36
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 %9, double %13, i32 %15) #7
  %17 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 0
  %18 = load i32* %17, align 4, !tbaa !23
  switch i32 %18, label %29 [
    i32 2, label %19
    i32 3, label %23
  ]

; <label>:19                                      ; preds = %7
  %20 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3
  %21 = load i32* %20, align 4, !tbaa !37
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i32 %21) #7
  br label %30

; <label>:23                                      ; preds = %7
  %24 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 3
  %25 = load i32* %24, align 4, !tbaa !37
  %26 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 4
  %27 = load i32* %26, align 4, !tbaa !38
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i32 %25, i32 %27) #7
  br label %30

; <label>:29                                      ; preds = %7
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %30

; <label>:30                                      ; preds = %19, %29, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %.loopexit, label %7

.loopexit:                                        ; preds = %30, %2, %0
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { optsize }

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
!18 = !{!19, !4, i64 96}
!19 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!20 = !{!8, !8, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !15, i64 20, !15, i64 24}
!25 = !{!24, !15, i64 24}
!26 = !{!24, !15, i64 20}
!27 = !{!28, !7, i64 0}
!28 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!29 = !{!28, !4, i64 1032}
!30 = !{!31, !4, i64 16}
!31 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!32 = !{!33, !7, i64 16}
!33 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !34, i64 32, !7, i64 40, !4, i64 48}
!34 = !{!"long", !5, i64 0}
!35 = !{!24, !7, i64 4}
!36 = !{!24, !7, i64 8}
!37 = !{!24, !7, i64 12}
!38 = !{!24, !7, i64 16}
!39 = !{!31, !4, i64 24}
!40 = !{!41, !15, i64 4}
!41 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!42 = !{!43, !15, i64 0}
!43 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!44 = !{!43, !15, i64 4}
!45 = !{!43, !15, i64 8}
