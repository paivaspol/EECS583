; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mshift.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@.str = private unnamed_addr constant [12 x i8] c"graph:  %s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"maxbond:%d\0A\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"nnodes: %d\0A\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"nbound: %d\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"start:  %d\0A\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"end:    %d\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c" atom shiftx shifty shiftz nedg   e1   e2 etc.\0A\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"%5d%7d%7d%7d%5d\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"%5u\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mshift.c\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"g->ishift\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"g->nedge\00", align 1
@debug = external global %struct.__sFILE*
@.str14 = private unnamed_addr constant [31 x i8] c"MSHIFT: nnodes=%d, maxbond=%d\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"g->edge\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"g->edge[0]\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@mk_mshift.negc = internal unnamed_addr global i32 0, align 4
@mk_mshift.egc = internal unnamed_addr global i32* null, align 8
@.str17 = private unnamed_addr constant [4 x i8] c"egc\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"No WHITE nodes found while nW=%d\0A\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"No GREY nodes found while nG=%d\0A\00", align 1
@.str20 = private unnamed_addr constant [56 x i8] c"There were %d inconsistent shifts. Check your topology\0A\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"nbond\00", align 1
@stdlog = external global %struct.__sFILE*
@.str22 = private unnamed_addr constant [36 x i8] c"Max number of bonds per atom is %d\0A\00", align 1
@.str23 = private unnamed_addr constant [227 x i8] c"Molecule in topology has atom numbers below and above natoms (%d).\0AYou are probably trying to use a trajectory which does not match the first %d atoms of the run input file.\0AYou can make a matching run input file with tpbconv.\00", align 1
@.str24 = private unnamed_addr constant [39 x i8] c"More than %d bonds per atom (atom %d)\0A\00", align 1

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
define void @p_graph(%struct.__sFILE* %log, i8* %title, %struct.t_graph* nocapture readonly %g) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %65, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* %title) #7
  %4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %5) #7
  %7 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !20
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %8) #7
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !21
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %11) #7
  %13 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %14 = load i32* %13, align 4, !tbaa !22
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %14) #7
  %16 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4
  %17 = load i32* %16, align 4, !tbaa !23
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %17) #7
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %log)
  %20 = load i32* %7, align 4, !tbaa !20
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %2
  %22 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %23 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %24 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  br label %25

; <label>:25                                      ; preds = %.lr.ph4, %60
  %26 = phi i32 [ %20, %.lr.ph4 ], [ %61, %60 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7.pre-phi, %60 ]
  %27 = load i32** %22, align 8, !tbaa !24
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv6
  %29 = load i32* %28, align 4, !tbaa !25
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %._crit_edge8

._crit_edge8:                                     ; preds = %25
  %.pre9 = add nuw nsw i64 %indvars.iv6, 1
  br label %60

; <label>:31                                      ; preds = %25
  %32 = load i32* %13, align 4, !tbaa !22
  %33 = add nuw nsw i64 %indvars.iv6, 1
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, %32
  %36 = load [3 x i32]** %23, align 8, !tbaa !26
  %37 = getelementptr inbounds [3 x i32]* %36, i64 %indvars.iv6, i64 0
  %38 = load i32* %37, align 4, !tbaa !25
  %39 = getelementptr inbounds [3 x i32]* %36, i64 %indvars.iv6, i64 1
  %40 = load i32* %39, align 4, !tbaa !25
  %41 = getelementptr inbounds [3 x i32]* %36, i64 %indvars.iv6, i64 2
  %42 = load i32* %41, align 4, !tbaa !25
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i32 %35, i32 %38, i32 %40, i32 %42, i32 %29) #7
  %44 = load i32** %22, align 8, !tbaa !24
  %45 = getelementptr inbounds i32* %44, i64 %indvars.iv6
  %46 = load i32* %45, align 4, !tbaa !25
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %31 ]
  %48 = load i32*** %24, align 8, !tbaa !27
  %49 = getelementptr inbounds i32** %48, i64 %indvars.iv6
  %50 = load i32** %49, align 8, !tbaa !28
  %51 = getelementptr inbounds i32* %50, i64 %indvars.iv
  %52 = load i32* %51, align 4, !tbaa !25
  %53 = add nsw i32 %52, 1
  %54 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i32 %53) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %55 = load i32** %22, align 8, !tbaa !24
  %56 = getelementptr inbounds i32* %55, i64 %indvars.iv6
  %57 = load i32* %56, align 4, !tbaa !25
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %indvars.iv.next, %58
  br i1 %59, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %31
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %.pre = load i32* %7, align 4, !tbaa !20
  br label %60

; <label>:60                                      ; preds = %._crit_edge8, %._crit_edge
  %indvars.iv.next7.pre-phi = phi i64 [ %.pre9, %._crit_edge8 ], [ %33, %._crit_edge ]
  %61 = phi i32 [ %26, %._crit_edge8 ], [ %.pre, %._crit_edge ]
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %indvars.iv.next7.pre-phi, %62
  br i1 %63, label %25, label %._crit_edge5

._crit_edge5:                                     ; preds = %60, %2
  %64 = tail call i32 @fflush(%struct.__sFILE* %log) #7
  br label %65

; <label>:65                                      ; preds = %0, %._crit_edge5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_graph* @mk_graph(%struct.t_idef* nocapture readonly %idef, i32 %natoms, i32 %bShakeOnly, i32 %bSettle) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 234, i32 1, i32 48) #7
  %2 = getelementptr inbounds i8* %1, i64 12
  %3 = bitcast i8* %2 to i32*
  store i32 %natoms, i32* %3, align 4, !tbaa !22
  %4 = getelementptr inbounds i8* %1, i64 16
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 4, !tbaa !23
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 212, i32 %natoms, i32 2) #7
  %7 = bitcast i8* %6 to i16*
  %8 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %9

; <label>:9                                       ; preds = %calc_1se.exit.i, %0
  %indvars.iv4.i = phi i64 [ 0, %0 ], [ %indvars.iv.next5.i, %calc_1se.exit.i ]
  %10 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv4.i, i32 5
  %11 = load i64* %10, align 8, !tbaa !29
  %12 = and i64 %11, 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %calc_1se.exit.i, label %14

; <label>:14                                      ; preds = %9
  %15 = load i32** %8, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv4.i, i32 0
  %17 = load i32* %16, align 4, !tbaa !34
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.lr.ph8.i.i, label %calc_1se.exit.i

.lr.ph8.i.i:                                      ; preds = %14
  %19 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv4.i, i32 2
  %20 = load i32** %19, align 8, !tbaa !36
  br label %21

; <label>:21                                      ; preds = %.loopexit.i.i, %.lr.ph8.i.i
  %ia.05.i.i = phi i32* [ %20, %.lr.ph8.i.i ], [ %75, %.loopexit.i.i ]
  %j.04.i.i = phi i32 [ 0, %.lr.ph8.i.i ], [ %73, %.loopexit.i.i ]
  %22 = load i32* %ia.05.i.i, align 4, !tbaa !25
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32* %15, i64 %23
  %25 = load i32* %24, align 4, !tbaa !25
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %26, i32 2
  %28 = load i32* %27, align 8, !tbaa !37
  %29 = icmp eq i32 %25, 29
  br i1 %29, label %30, label %48

; <label>:30                                      ; preds = %21
  %31 = getelementptr inbounds i32* %ia.05.i.i, i64 1
  %32 = load i32* %31, align 4, !tbaa !25
  %33 = icmp slt i32 %32, %natoms
  br i1 %33, label %34, label %.loopexit.i.i

; <label>:34                                      ; preds = %30
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i16* %7, i64 %35
  store i16 2, i16* %36, align 2, !tbaa !38
  %37 = add nsw i32 %32, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16* %7, i64 %38
  store i16 2, i16* %39, align 2, !tbaa !38
  %40 = add nsw i32 %32, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16* %7, i64 %41
  store i16 2, i16* %42, align 2, !tbaa !38
  %43 = load i32* %3, align 4, !tbaa !22
  %44 = icmp slt i32 %43, %32
  %..i.i = select i1 %44, i32 %43, i32 %32
  store i32 %..i.i, i32* %3, align 4, !tbaa !22
  %45 = load i32* %5, align 4, !tbaa !23
  %46 = icmp sgt i32 %45, %40
  %47 = select i1 %46, i32 %45, i32 %40
  store i32 %47, i32* %5, align 4, !tbaa !23
  br label %.loopexit.i.i

; <label>:48                                      ; preds = %21
  %49 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %26, i32 5
  %50 = load i64* %49, align 8, !tbaa !29
  %51 = and i64 %50, 2
  %52 = icmp eq i64 %51, 0
  %.1.i.i = select i1 %52, i32 %28, i32 2
  %53 = icmp sgt i32 %.1.i.i, 0
  br i1 %53, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %48
  %54 = add i32 %.1.i.i, -1
  %55 = and i64 %50, 8
  %56 = icmp eq i64 %55, 0
  br label %57

; <label>:57                                      ; preds = %.backedge.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.backedge.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %58 = getelementptr inbounds i32* %ia.05.i.i, i64 %indvars.iv.next.i.i
  %59 = load i32* %58, align 4, !tbaa !25
  %60 = icmp slt i32 %59, %natoms
  br i1 %60, label %61, label %.backedge.i.i

; <label>:61                                      ; preds = %57
  %62 = load i32* %3, align 4, !tbaa !22
  %63 = icmp slt i32 %62, %59
  %.2.i.i = select i1 %63, i32 %62, i32 %59
  store i32 %.2.i.i, i32* %3, align 4, !tbaa !22
  %64 = load i32* %5, align 4, !tbaa !23
  %65 = icmp sgt i32 %64, %59
  %66 = select i1 %65, i32 %64, i32 %59
  store i32 %66, i32* %5, align 4, !tbaa !23
  br i1 %56, label %.backedge.i.i, label %67

.backedge.i.i:                                    ; preds = %67, %61, %57
  %lftr.wideiv = trunc i64 %indvars.iv.i.i to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv, %54
  br i1 %exitcond15, label %.loopexit.i.i, label %57

; <label>:67                                      ; preds = %61
  %68 = sext i32 %59 to i64
  %69 = getelementptr inbounds i16* %7, i64 %68
  %70 = load i16* %69, align 2, !tbaa !38
  %71 = add i16 %70, 1
  store i16 %71, i16* %69, align 2, !tbaa !38
  br label %.backedge.i.i

.loopexit.i.i:                                    ; preds = %.backedge.i.i, %48, %34, %30
  %72 = add nsw i32 %28, 1
  %73 = add nsw i32 %72, %j.04.i.i
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32* %ia.05.i.i, i64 %74
  %76 = icmp slt i32 %73, %17
  br i1 %76, label %21, label %calc_1se.exit.i

calc_1se.exit.i:                                  ; preds = %.loopexit.i.i, %14, %9
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond6.i = icmp eq i64 %indvars.iv.next5.i, 44
  br i1 %exitcond6.i, label %77, label %9

; <label>:77                                      ; preds = %calc_1se.exit.i
  %78 = bitcast i8* %1 to %struct.t_graph*
  %79 = load i32* %3, align 4, !tbaa !22
  %80 = load i32* %5, align 4, !tbaa !23
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %77
  %82 = sext i32 %79 to i64
  %83 = sext i32 %80 to i64
  br label %84

; <label>:84                                      ; preds = %84, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %84 ], [ %82, %.lr.ph.i ]
  %nnb.02.i = phi i32 [ %nnb.0..i, %84 ], [ 0, %.lr.ph.i ]
  %85 = getelementptr inbounds i16* %7, i64 %indvars.iv.i
  %86 = load i16* %85, align 2, !tbaa !38
  %87 = sext i16 %86 to i32
  %88 = icmp sgt i32 %nnb.02.i, %87
  %nnb.0..i = select i1 %88, i32 %nnb.02.i, i32 %87
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %89 = icmp slt i64 %indvars.iv.i, %83
  br i1 %89, label %84, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %84, %77
  %nnb.0.lcssa.i = phi i32 [ 0, %77 ], [ %nnb.0..i, %84 ]
  %90 = load %struct.__sFILE** @stdlog, align 8, !tbaa !28
  %91 = icmp eq %struct.__sFILE* %90, null
  br i1 %91, label %calc_start_end.exit, label %92

; <label>:92                                      ; preds = %._crit_edge.i
  %93 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %90, i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0), i32 %nnb.0.lcssa.i) #7
  br label %calc_start_end.exit

calc_start_end.exit:                              ; preds = %._crit_edge.i, %92
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 224, i8* %6) #7
  %94 = add nsw i32 %nnb.0.lcssa.i, 6
  %95 = bitcast i8* %1 to i32*
  store i32 %94, i32* %95, align 4, !tbaa !18
  %96 = load i32* %3, align 4, !tbaa !22
  %97 = load i32* %5, align 4, !tbaa !23
  %98 = icmp sgt i32 %97, %96
  br i1 %98, label %102, label %99

; <label>:99                                      ; preds = %calc_start_end.exit
  %100 = getelementptr inbounds i8* %1, i64 4
  %101 = bitcast i8* %100 to i32*
  store i32 0, i32* %101, align 4, !tbaa !20
  br label %.loopexit

; <label>:102                                     ; preds = %calc_start_end.exit
  %103 = sub nsw i32 %97, %96
  %104 = add nsw i32 %103, 1
  %105 = getelementptr inbounds i8* %1, i64 4
  %106 = bitcast i8* %105 to i32*
  store i32 %104, i32* %106, align 4, !tbaa !20
  %107 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 243, i32 %104, i32 12) #7
  %108 = getelementptr inbounds i8* %1, i64 40
  %109 = bitcast i8* %108 to i8**
  store i8* %107, i8** %109, align 8, !tbaa !26
  %110 = load i32* %106, align 4, !tbaa !20
  %111 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 244, i32 %110, i32 4) #7
  %112 = getelementptr inbounds i8* %1, i64 24
  %113 = bitcast i8* %112 to i32**
  %114 = bitcast i8* %112 to i8**
  store i8* %111, i8** %114, align 8, !tbaa !24
  %115 = load %struct.__sFILE** @debug, align 8, !tbaa !28
  %116 = icmp eq %struct.__sFILE* %115, null
  br i1 %116, label %121, label %117

; <label>:117                                     ; preds = %102
  %118 = load i32* %106, align 4, !tbaa !20
  %119 = load i32* %95, align 4, !tbaa !18
  %120 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %115, i8* getelementptr inbounds ([31 x i8]* @.str14, i64 0, i64 0), i32 %118, i32 %119) #7
  br label %121

; <label>:121                                     ; preds = %102, %117
  %122 = load i32* %106, align 4, !tbaa !20
  %123 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 252, i32 %122, i32 8) #7
  %124 = getelementptr inbounds i8* %1, i64 32
  %125 = bitcast i8* %124 to i32***
  %126 = bitcast i8* %124 to i8**
  store i8* %123, i8** %126, align 8, !tbaa !27
  %127 = load i32* %95, align 4, !tbaa !18
  %128 = load i32* %106, align 4, !tbaa !20
  %129 = mul nsw i32 %128, %127
  %130 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 253, i32 %129, i32 4) #7
  %131 = bitcast i8* %124 to i8***
  %132 = load i8*** %131, align 8, !tbaa !27
  store i8* %130, i8** %132, align 8, !tbaa !28
  %133 = load i32* %106, align 4, !tbaa !20
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %121
  %135 = load i32* %95, align 4, !tbaa !18
  %136 = sext i32 %135 to i64
  %137 = sext i32 %133 to i64
  br label %138

; <label>:138                                     ; preds = %.lr.ph7, %138
  %indvars.iv13 = phi i64 [ 1, %.lr.ph7 ], [ %indvars.iv.next14, %138 ]
  %139 = add nsw i64 %indvars.iv13, -1
  %140 = load i32*** %125, align 8, !tbaa !27
  %141 = getelementptr inbounds i32** %140, i64 %139
  %142 = load i32** %141, align 8, !tbaa !28
  %143 = getelementptr inbounds i32* %142, i64 %136
  %144 = getelementptr inbounds i32** %140, i64 %indvars.iv13
  store i32* %143, i32** %144, align 8, !tbaa !28
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %145 = icmp slt i64 %indvars.iv.next14, %137
  br i1 %145, label %138, label %._crit_edge

._crit_edge:                                      ; preds = %138, %121
  %146 = icmp eq i32 %bShakeOnly, 0
  br i1 %146, label %.preheader2, label %163

.preheader2:                                      ; preds = %._crit_edge, %154
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %154 ], [ 0, %._crit_edge ]
  %147 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv10, i32 5
  %148 = load i64* %147, align 8, !tbaa !29
  %149 = and i64 %148, 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %154, label %151

; <label>:151                                     ; preds = %.preheader2
  %152 = load i32** %8, align 8, !tbaa !32
  %153 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv10
  tail call fastcc void @mk_igraph(%struct.t_graph* %78, i32* %152, %struct.t_ilist* %153, i32 %natoms, i32 1) #9
  br label %154

; <label>:154                                     ; preds = %.preheader2, %151
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 44
  br i1 %exitcond12, label %.preheader, label %.preheader2

.preheader:                                       ; preds = %154, %162
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %162 ], [ 0, %154 ]
  %155 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv8, i32 5
  %156 = load i64* %155, align 8, !tbaa !29
  %157 = and i64 %156, 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

; <label>:159                                     ; preds = %.preheader
  %160 = load i32** %8, align 8, !tbaa !32
  %161 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv8
  tail call fastcc void @mk_igraph(%struct.t_graph* %78, i32* %160, %struct.t_ilist* %161, i32 %natoms, i32 0) #9
  br label %162

; <label>:162                                     ; preds = %.preheader, %159
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond = icmp eq i64 %indvars.iv.next9, 44
  br i1 %exitcond, label %.loopexit1, label %.preheader

; <label>:163                                     ; preds = %._crit_edge
  %164 = load i32** %8, align 8, !tbaa !32
  %165 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27
  tail call fastcc void @mk_igraph(%struct.t_graph* %78, i32* %164, %struct.t_ilist* %165, i32 %natoms, i32 1) #9
  %166 = icmp eq i32 %bSettle, 0
  br i1 %166, label %.loopexit1, label %167

; <label>:167                                     ; preds = %163
  %168 = load i32** %8, align 8, !tbaa !32
  %169 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 29
  tail call fastcc void @mk_igraph(%struct.t_graph* %78, i32* %168, %struct.t_ilist* %169, i32 %natoms, i32 1) #9
  br label %.loopexit1

.loopexit1:                                       ; preds = %162, %163, %167
  %170 = getelementptr inbounds i8* %1, i64 8
  %171 = bitcast i8* %170 to i32*
  store i32 0, i32* %171, align 4, !tbaa !21
  %172 = load i32* %106, align 4, !tbaa !20
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit1
  %174 = load i32** %113, align 8, !tbaa !24
  br label %175

; <label>:175                                     ; preds = %.lr.ph, %182
  %176 = phi i32 [ 0, %.lr.ph ], [ %183, %182 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %182 ]
  %177 = getelementptr inbounds i32* %174, i64 %indvars.iv
  %178 = load i32* %177, align 4, !tbaa !25
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %182

; <label>:180                                     ; preds = %175
  %181 = add nsw i32 %176, 1
  store i32 %181, i32* %171, align 4, !tbaa !21
  br label %182

; <label>:182                                     ; preds = %175, %180
  %183 = phi i32 [ %176, %175 ], [ %181, %180 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %184 = sext i32 %172 to i64
  %185 = icmp slt i64 %indvars.iv.next, %184
  br i1 %185, label %175, label %.loopexit

.loopexit:                                        ; preds = %182, %.loopexit1, %99
  ret %struct.t_graph* %78
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mk_igraph(%struct.t_graph* nocapture readonly %g, i32* nocapture readonly %ftype, %struct.t_ilist* nocapture readonly %il, i32 %natoms, i32 %bAll) #4 {
  %waterh = alloca [3 x i32], align 4
  %1 = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !34
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph4, label %._crit_edge

.lr.ph4:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.t_ilist* %il, i64 0, i32 2
  %5 = load i32** %4, align 8, !tbaa !36
  %6 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 0
  %7 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 1
  %8 = getelementptr inbounds [3 x i32]* %waterh, i64 0, i64 2
  %9 = icmp eq i32 %bAll, 0
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %11 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  br label %12

; <label>:12                                      ; preds = %.lr.ph4, %.critedge
  %ia.03 = phi i32* [ %5, %.lr.ph4 ], [ %65, %.critedge ]
  %i.02 = phi i32 [ 0, %.lr.ph4 ], [ %66, %.critedge ]
  %13 = load i32* %ia.03, align 4, !tbaa !25
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32* %ftype, i64 %14
  %16 = load i32* %15, align 4, !tbaa !25
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %17, i32 2
  %19 = load i32* %18, align 8, !tbaa !37
  %20 = getelementptr inbounds i32* %ia.03, i64 1
  %21 = load i32* %20, align 4, !tbaa !25
  %22 = icmp slt i32 %21, %natoms
  br i1 %22, label %23, label %.critedge

; <label>:23                                      ; preds = %12
  %24 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %17, i32 5
  %25 = load i64* %24, align 8, !tbaa !29
  %26 = and i64 %25, 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %.critedge, label %28

; <label>:28                                      ; preds = %23
  %29 = sext i32 %19 to i64
  %30 = getelementptr inbounds i32* %ia.03, i64 %29
  %31 = load i32* %30, align 4, !tbaa !25
  %32 = icmp slt i32 %31, %natoms
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %28
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([227 x i8]* @.str23, i64 0, i64 0), i32 %natoms, i32 %natoms) #7
  br label %34

; <label>:34                                      ; preds = %28, %33
  %35 = icmp eq i32 %16, 29
  br i1 %35, label %36, label %42

; <label>:36                                      ; preds = %34
  %37 = load i32* %20, align 4, !tbaa !25
  store i32 %37, i32* %6, align 4, !tbaa !25
  %38 = load i32* %20, align 4, !tbaa !25
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4, !tbaa !25
  %40 = load i32* %20, align 4, !tbaa !25
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %8, align 4, !tbaa !25
  br label %46

; <label>:42                                      ; preds = %34
  %43 = load i64* %24, align 8, !tbaa !29
  %44 = and i64 %43, 2
  %45 = icmp eq i64 %44, 0
  %. = select i1 %45, i32 %19, i32 2
  br label %46

; <label>:46                                      ; preds = %42, %36
  %iap.0 = phi i32* [ %6, %36 ], [ %20, %42 ]
  %nbonded.1 = phi i32 [ 3, %36 ], [ %., %42 ]
  br i1 %9, label %.preheader, label %51

.preheader:                                       ; preds = %46
  %47 = icmp sgt i32 %nbonded.1, 0
  br i1 %47, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %48 = load i32* %10, align 4, !tbaa !22
  %49 = load i32** %11, align 8, !tbaa !24
  %50 = sext i32 %nbonded.1 to i64
  br label %54

; <label>:51                                      ; preds = %46
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #9
  br label %.critedge

; <label>:52                                      ; preds = %54
  %53 = icmp slt i64 %indvars.iv.next, %50
  br i1 %53, label %54, label %.critedge

; <label>:54                                      ; preds = %.lr.ph, %52
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %52 ]
  %55 = getelementptr inbounds i32* %iap.0, i64 %indvars.iv
  %56 = load i32* %55, align 4, !tbaa !25
  %57 = sub nsw i32 %56, %48
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32* %49, i64 %58
  %60 = load i32* %59, align 4, !tbaa !25
  %61 = icmp eq i32 %60, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %61, label %62, label %52

; <label>:62                                      ; preds = %54
  call fastcc void @add_gbond(%struct.t_graph* %g, i32* %iap.0, i32 %nbonded.1) #9
  br label %.critedge

.critedge:                                        ; preds = %52, %.preheader, %23, %51, %62, %12
  %63 = add nsw i32 %19, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32* %ia.03, i64 %64
  %66 = add nsw i32 %63, %i.02
  %67 = icmp slt i32 %66, %2
  br i1 %67, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_graph(%struct.t_graph* nocapture readonly %g) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !20
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = bitcast [3 x i32]** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !26
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 294, i8* %7) #7
  %8 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %9 = bitcast i32** %8 to i8**
  %10 = load i8** %9, align 8, !tbaa !24
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 295, i8* %10) #7
  %11 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  %12 = bitcast i32*** %11 to i8***
  %13 = load i8*** %12, align 8, !tbaa !27
  %14 = load i8** %13, align 8, !tbaa !28
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 297, i8* %14) #7
  %15 = bitcast i32*** %11 to i8**
  %16 = load i8** %15, align 8, !tbaa !27
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 298, i8* %16) #7
  br label %17

; <label>:17                                      ; preds = %4, %0
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mk_mshift(%struct.__sFILE* %log, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %x) #4 {
  %dx.i.i = alloca [3 x float], align 4
  %hbox.i = alloca [3 x float], align 4
  %is_aj.i = alloca [3 x i32], align 4
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !20
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %5 = load [3 x i32]** %4, align 8, !tbaa !26
  br label %6

; <label>:6                                       ; preds = %.lr.ph42, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds [3 x i32]* %5, i64 %indvars.iv, i64 2
  store i32 0, i32* %7, align 4, !tbaa !25
  %8 = getelementptr inbounds [3 x i32]* %5, i64 %indvars.iv, i64 1
  store i32 0, i32* %8, align 4, !tbaa !25
  %9 = getelementptr inbounds [3 x i32]* %5, i64 %indvars.iv, i64 0
  store i32 0, i32* %9, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32* %1, align 4, !tbaa !20
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %indvars.iv.next, %11
  br i1 %12, label %6, label %._crit_edge43

._crit_edge43:                                    ; preds = %6, %0
  %.lcssa26 = phi i32 [ %2, %0 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %._crit_edge.thread, label %16

; <label>:16                                      ; preds = %._crit_edge43
  %17 = load i32* @mk_mshift.negc, align 4, !tbaa !25
  %18 = icmp sgt i32 %.lcssa26, %17
  br i1 %18, label %19, label %._crit_edge53

._crit_edge53:                                    ; preds = %16
  %.pre = load i8** bitcast (i32** @mk_mshift.egc to i8**), align 8, !tbaa !28
  br label %23

; <label>:19                                      ; preds = %16
  store i32 %.lcssa26, i32* @mk_mshift.negc, align 4, !tbaa !25
  %20 = load i8** bitcast (i32** @mk_mshift.egc to i8**), align 8, !tbaa !28
  %21 = shl i32 %.lcssa26, 2
  %22 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 435, i8* %20, i32 %21) #7
  store i8* %22, i8** bitcast (i32** @mk_mshift.egc to i8**), align 8, !tbaa !28
  br label %23

; <label>:23                                      ; preds = %._crit_edge53, %19
  %24 = phi i8* [ %.pre, %._crit_edge53 ], [ %22, %19 ]
  %25 = sext i32 %.lcssa26 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %24, i1 false)
  %28 = tail call i8* @__memset_chk(i8* %24, i32 0, i64 %26, i64 %27) #7
  %29 = load i32* %13, align 4, !tbaa !21
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph38, label %._crit_edge.thread

.lr.ph38:                                         ; preds = %23
  %31 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %32 = bitcast [3 x float]* %hbox.i to i8*
  %33 = bitcast [3 x i32]* %is_aj.i to i8*
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %35 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %36 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  %37 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %38 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 0
  %39 = bitcast [3 x float]* %dx.i.i to i8*
  %40 = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 0
  %41 = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 2
  %43 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 1
  %44 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 2
  %45 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  br label %48

.loopexit:                                        ; preds = %mk_grey.exit, %68
  %nG.1.lcssa = phi i32 [ %72, %68 ], [ %247, %mk_grey.exit ]
  %nW.1.lcssa = phi i32 [ %73, %68 ], [ %248, %mk_grey.exit ]
  %.lcssa23 = phi i32 [ %49, %68 ], [ %246, %mk_grey.exit ]
  %47 = icmp sgt i32 %nW.1.lcssa, 0
  br i1 %47, label %48, label %._crit_edge

; <label>:48                                      ; preds = %.lr.ph38, %.loopexit
  %fW.037 = phi i32 [ 0, %.lr.ph38 ], [ %.0.i16, %.loopexit ]
  %nG.035 = phi i32 [ 0, %.lr.ph38 ], [ %nG.1.lcssa, %.loopexit ]
  %nW.034 = phi i32 [ %29, %.lr.ph38 ], [ %nW.1.lcssa, %.loopexit ]
  %49 = phi i32 [ 0, %.lr.ph38 ], [ %.lcssa23, %.loopexit ]
  %50 = load i32** @mk_mshift.egc, align 8, !tbaa !28
  %51 = load i32* %1, align 4, !tbaa !20
  %52 = icmp sgt i32 %51, %fW.037
  br i1 %52, label %.lr.ph.i, label %first_colour.exit.thread

.lr.ph.i:                                         ; preds = %48
  %53 = load i32** %31, align 8, !tbaa !24
  %54 = sext i32 %fW.037 to i64
  %55 = sext i32 %51 to i64
  br label %56

; <label>:56                                      ; preds = %64, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %54, %.lr.ph.i ], [ %indvars.iv.next.i, %64 ]
  %57 = getelementptr inbounds i32* %53, i64 %indvars.iv.i
  %58 = load i32* %57, align 4, !tbaa !25
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %56
  %61 = getelementptr inbounds i32* %50, i64 %indvars.iv.i
  %62 = load i32* %61, align 4, !tbaa !13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %first_colour.exit, label %64

; <label>:64                                      ; preds = %60, %56
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %65 = icmp slt i64 %indvars.iv.next.i, %55
  br i1 %65, label %56, label %first_colour.exit.thread

first_colour.exit:                                ; preds = %60
  %66 = trunc i64 %indvars.iv.i to i32
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %first_colour.exit.thread, label %68

first_colour.exit.thread:                         ; preds = %64, %48, %first_colour.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0), i32 %nW.034) #7
  %.pre54 = load i32** @mk_mshift.egc, align 8, !tbaa !28
  br label %68

; <label>:68                                      ; preds = %first_colour.exit.thread, %first_colour.exit
  %69 = phi i32* [ %.pre54, %first_colour.exit.thread ], [ %50, %first_colour.exit ]
  %.0.i16 = phi i32 [ -1, %first_colour.exit.thread ], [ %66, %first_colour.exit ]
  %70 = sext i32 %.0.i16 to i64
  %71 = getelementptr inbounds i32* %69, i64 %70
  store i32 1, i32* %71, align 4, !tbaa !13
  %72 = add nsw i32 %nG.035, 1
  %73 = add nsw i32 %nW.034, -1
  %74 = icmp sgt i32 %nG.035, -1
  br i1 %74, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %68, %mk_grey.exit
  %nG.129 = phi i32 [ %247, %mk_grey.exit ], [ %72, %68 ]
  %nW.128 = phi i32 [ %248, %mk_grey.exit ], [ %73, %68 ]
  %75 = phi i32 [ %246, %mk_grey.exit ], [ %49, %68 ]
  %.0.i1127 = phi i32 [ %.0.i12, %mk_grey.exit ], [ %.0.i16, %68 ]
  %76 = load i32** @mk_mshift.egc, align 8, !tbaa !28
  %77 = load i32* %1, align 4, !tbaa !20
  %78 = icmp sgt i32 %77, %.0.i1127
  br i1 %78, label %.lr.ph.i5, label %first_colour.exit10.thread

.lr.ph.i5:                                        ; preds = %.lr.ph
  %79 = load i32** %31, align 8, !tbaa !24
  %80 = sext i32 %.0.i1127 to i64
  %81 = sext i32 %77 to i64
  br label %82

; <label>:82                                      ; preds = %90, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ %80, %.lr.ph.i5 ], [ %indvars.iv.next.i7, %90 ]
  %83 = getelementptr inbounds i32* %79, i64 %indvars.iv.i6
  %84 = load i32* %83, align 4, !tbaa !25
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

; <label>:86                                      ; preds = %82
  %87 = getelementptr inbounds i32* %76, i64 %indvars.iv.i6
  %88 = load i32* %87, align 4, !tbaa !13
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %first_colour.exit10, label %90

; <label>:90                                      ; preds = %86, %82
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i6, 1
  %91 = icmp slt i64 %indvars.iv.next.i7, %81
  br i1 %91, label %82, label %first_colour.exit10.thread

first_colour.exit10:                              ; preds = %86
  %92 = trunc i64 %indvars.iv.i6 to i32
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %first_colour.exit10.thread, label %94

first_colour.exit10.thread:                       ; preds = %90, %.lr.ph, %first_colour.exit10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str19, i64 0, i64 0), i32 %nG.129) #7
  %.pre55 = load i32** @mk_mshift.egc, align 8, !tbaa !28
  br label %94

; <label>:94                                      ; preds = %first_colour.exit10.thread, %first_colour.exit10
  %95 = phi i32* [ %.pre55, %first_colour.exit10.thread ], [ %76, %first_colour.exit10 ]
  %.0.i918 = phi i32 [ -1, %first_colour.exit10.thread ], [ %92, %first_colour.exit10 ]
  %96 = sext i32 %.0.i918 to i64
  %97 = getelementptr inbounds i32* %95, i64 %96
  store i32 2, i32* %97, align 4, !tbaa !13
  %98 = load i32** @mk_mshift.egc, align 8, !tbaa !28
  call void @llvm.lifetime.start(i64 12, i8* %32)
  call void @llvm.lifetime.start(i64 12, i8* %33)
  br label %99

; <label>:99                                      ; preds = %99, %94
  %indvars.iv12.i = phi i64 [ 0, %94 ], [ %indvars.iv.next13.i, %99 ]
  %100 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv12.i, i64 %indvars.iv12.i
  %101 = load float* %100, align 4, !tbaa !14
  %102 = fmul float %101, 5.000000e-01
  %103 = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv12.i
  store float %102, float* %103, align 4, !tbaa !14
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next13.i, 3
  br i1 %exitcond.i, label %104, label %99

; <label>:104                                     ; preds = %99
  %105 = add nsw i32 %nG.129, -1
  %106 = load float* %34, align 4, !tbaa !14
  %fabsf.i = tail call float @fabsf(float %106) #10
  %107 = fpext float %fabsf.i to double
  %108 = fcmp ogt double %107, 1.200000e-38
  br i1 %108, label %117, label %109

; <label>:109                                     ; preds = %104
  %110 = load float* %45, align 4, !tbaa !14
  %fabsf1.i = tail call float @fabsf(float %110) #10
  %111 = fpext float %fabsf1.i to double
  %112 = fcmp ogt double %111, 1.200000e-38
  br i1 %112, label %117, label %113

; <label>:113                                     ; preds = %109
  %114 = load float* %46, align 4, !tbaa !14
  %fabsf2.i = tail call float @fabsf(float %114) #10
  %115 = fpext float %fabsf2.i to double
  %116 = fcmp ogt double %115, 1.200000e-38
  br label %117

; <label>:117                                     ; preds = %113, %109, %104
  %118 = phi i1 [ true, %109 ], [ true, %104 ], [ %116, %113 ]
  %119 = load i32* %35, align 4, !tbaa !22
  %120 = load i32** %31, align 8, !tbaa !24
  %121 = getelementptr inbounds i32* %120, i64 %96
  %122 = load i32* %121, align 4, !tbaa !25
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %.lr.ph.i2, label %mk_grey.exit

.lr.ph.i2:                                        ; preds = %117
  %124 = add nsw i32 %119, %.0.i918
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 0
  %127 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 1
  %128 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 2
  %.pre.i = load [3 x i32]** %37, align 8, !tbaa !26
  br label %129

; <label>:129                                     ; preds = %238, %.lr.ph.i2
  %.0.i13 = phi i32 [ %.0.i918, %.lr.ph.i2 ], [ %.0.i14, %238 ]
  %130 = phi i32 [ %75, %.lr.ph.i2 ], [ %239, %238 ]
  %131 = phi i32* [ %120, %.lr.ph.i2 ], [ %240, %238 ]
  %132 = phi [3 x i32]* [ %.pre.i, %.lr.ph.i2 ], [ %241, %238 ]
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next.i4, %238 ]
  %ng.09.i = phi i32 [ 0, %.lr.ph.i2 ], [ %ng.1.i, %238 ]
  %133 = load i32*** %36, align 8, !tbaa !27
  %134 = getelementptr inbounds i32** %133, i64 %96
  %135 = load i32** %134, align 8, !tbaa !28
  %136 = getelementptr inbounds i32* %135, i64 %indvars.iv.i3
  %137 = load i32* %136, align 4, !tbaa !25
  %138 = sub nsw i32 %137, %119
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds [3 x float]* %x, i64 %139, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %39) #6
  %141 = load float* %126, align 4, !tbaa !14
  %142 = load float* %140, align 4, !tbaa !14
  %143 = fsub float %141, %142
  %144 = load float* %127, align 4, !tbaa !14
  %145 = getelementptr inbounds [3 x float]* %x, i64 %139, i64 1
  %146 = load float* %145, align 4, !tbaa !14
  %147 = fsub float %144, %146
  %148 = load float* %128, align 4, !tbaa !14
  %149 = getelementptr inbounds [3 x float]* %x, i64 %139, i64 2
  %150 = load float* %149, align 4, !tbaa !14
  %151 = fsub float %148, %150
  store float %143, float* %40, align 4, !tbaa !14
  store float %147, float* %41, align 4, !tbaa !14
  store float %151, float* %42, align 4, !tbaa !14
  br i1 %118, label %.preheader.i, label %.preheader8.i

.preheader.i:                                     ; preds = %129, %._crit_edge.i.i
  %152 = phi float [ %.pre.i.i, %._crit_edge.i.i ], [ %151, %129 ]
  %indvars.iv14.i.i = phi i64 [ %indvars.iv.next15.i.i, %._crit_edge.i.i ], [ 2, %129 ]
  %153 = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv14.i.i
  %154 = load float* %153, align 4, !tbaa !14
  %155 = fsub float -0.000000e+00, %154
  %156 = fcmp olt float %152, %155
  br i1 %156, label %157, label %169

; <label>:157                                     ; preds = %.preheader.i
  %158 = getelementptr inbounds [3 x i32]* %132, i64 %96, i64 %indvars.iv14.i.i
  %159 = load i32* %158, align 4, !tbaa !25
  %160 = add nsw i32 %159, -1
  %161 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv14.i.i
  store i32 %160, i32* %161, align 4, !tbaa !25
  %162 = icmp sgt i64 %indvars.iv14.i.i, 0
  br i1 %162, label %.lr.ph6.i.i, label %mk_1shift_tric.exit.i

.lr.ph6.i.i:                                      ; preds = %157, %.lr.ph6.i.i
  %indvars.iv12.i.i = phi i64 [ %indvars.iv.next13.i.i, %.lr.ph6.i.i ], [ %indvars.iv14.i.i, %157 ]
  %indvars.iv.next13.i.i = add nsw i64 %indvars.iv12.i.i, -1
  %163 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv14.i.i, i64 %indvars.iv.next13.i.i
  %164 = load float* %163, align 4, !tbaa !14
  %165 = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next13.i.i
  %166 = load float* %165, align 4, !tbaa !14
  %167 = fadd float %164, %166
  store float %167, float* %165, align 4, !tbaa !14
  %168 = icmp sgt i64 %indvars.iv12.i.i, 1
  br i1 %168, label %.lr.ph6.i.i, label %.loopexit.i.i

; <label>:169                                     ; preds = %.preheader.i
  %170 = fcmp ult float %152, %154
  %171 = getelementptr inbounds [3 x i32]* %132, i64 %96, i64 %indvars.iv14.i.i
  %172 = load i32* %171, align 4, !tbaa !25
  br i1 %170, label %183, label %173

; <label>:173                                     ; preds = %169
  %174 = add nsw i32 %172, 1
  %175 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv14.i.i
  store i32 %174, i32* %175, align 4, !tbaa !25
  %176 = icmp sgt i64 %indvars.iv14.i.i, 0
  br i1 %176, label %.lr.ph.i.i, label %mk_1shift_tric.exit.i

.lr.ph.i.i:                                       ; preds = %173, %.lr.ph.i.i
  %indvars.iv8.i.i = phi i64 [ %indvars.iv.next9.i.i, %.lr.ph.i.i ], [ %indvars.iv14.i.i, %173 ]
  %indvars.iv.next9.i.i = add nsw i64 %indvars.iv8.i.i, -1
  %177 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv14.i.i, i64 %indvars.iv.next9.i.i
  %178 = load float* %177, align 4, !tbaa !14
  %179 = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next9.i.i
  %180 = load float* %179, align 4, !tbaa !14
  %181 = fsub float %180, %178
  store float %181, float* %179, align 4, !tbaa !14
  %182 = icmp sgt i64 %indvars.iv8.i.i, 1
  br i1 %182, label %.lr.ph.i.i, label %.loopexit.i.i

; <label>:183                                     ; preds = %169
  %184 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv14.i.i
  store i32 %172, i32* %184, align 4, !tbaa !25
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph6.i.i, %183
  %indvars.iv.next15.i.i = add nsw i64 %indvars.iv14.i.i, -1
  %185 = icmp sgt i64 %indvars.iv14.i.i, 0
  br i1 %185, label %._crit_edge.i.i, label %mk_1shift_tric.exit.i

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next15.i.i
  %.pre.i.i = load float* %.phi.trans.insert.i.i, align 4, !tbaa !14
  br label %.preheader.i

mk_1shift_tric.exit.i:                            ; preds = %.loopexit.i.i, %173, %157
  call void @llvm.lifetime.end(i64 12, i8* %39) #6
  br label %206

.preheader8.i:                                    ; preds = %129, %._crit_edge.i6.i
  %186 = phi float [ %.pre.i5.i, %._crit_edge.i6.i ], [ %143, %129 ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge.i6.i ], [ 0, %129 ]
  %187 = getelementptr inbounds [3 x float]* %hbox.i, i64 0, i64 %indvars.iv.i.i
  %188 = load float* %187, align 4, !tbaa !14
  %189 = fsub float -0.000000e+00, %188
  %190 = fcmp olt float %186, %189
  br i1 %190, label %191, label %196

; <label>:191                                     ; preds = %.preheader8.i
  %192 = getelementptr inbounds [3 x i32]* %132, i64 %96, i64 %indvars.iv.i.i
  %193 = load i32* %192, align 4, !tbaa !25
  %194 = add nsw i32 %193, -1
  %195 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %194, i32* %195, align 4, !tbaa !25
  br label %205

; <label>:196                                     ; preds = %.preheader8.i
  %197 = fcmp ult float %186, %188
  %198 = getelementptr inbounds [3 x i32]* %132, i64 %96, i64 %indvars.iv.i.i
  %199 = load i32* %198, align 4, !tbaa !25
  br i1 %197, label %203, label %200

; <label>:200                                     ; preds = %196
  %201 = add nsw i32 %199, 1
  %202 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %201, i32* %202, align 4, !tbaa !25
  br label %205

; <label>:203                                     ; preds = %196
  %204 = getelementptr inbounds [3 x i32]* %is_aj.i, i64 0, i64 %indvars.iv.i.i
  store i32 %199, i32* %204, align 4, !tbaa !25
  br label %205

; <label>:205                                     ; preds = %203, %200, %191
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 3
  br i1 %exitcond.i.i, label %mk_1shift.exit.i, label %._crit_edge.i6.i

._crit_edge.i6.i:                                 ; preds = %205
  %.phi.trans.insert.i4.i = getelementptr inbounds [3 x float]* %dx.i.i, i64 0, i64 %indvars.iv.next.i.i
  %.pre.i5.i = load float* %.phi.trans.insert.i4.i, align 4, !tbaa !14
  br label %.preheader8.i

mk_1shift.exit.i:                                 ; preds = %205
  call void @llvm.lifetime.end(i64 12, i8* %39) #6
  br label %206

; <label>:206                                     ; preds = %mk_1shift.exit.i, %mk_1shift_tric.exit.i
  %207 = sext i32 %138 to i64
  %208 = getelementptr inbounds i32* %98, i64 %207
  %209 = load i32* %208, align 4, !tbaa !13
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %221

; <label>:211                                     ; preds = %206
  %212 = icmp slt i32 %138, %.0.i13
  %..0.i13 = select i1 %212, i32 %138, i32 %.0.i13
  store i32 1, i32* %208, align 4, !tbaa !13
  %213 = load [3 x i32]** %37, align 8, !tbaa !26
  %214 = getelementptr inbounds [3 x i32]* %213, i64 %207, i64 0
  %215 = load i32* %38, align 4, !tbaa !25
  store i32 %215, i32* %214, align 4, !tbaa !25
  %216 = load i32* %43, align 4, !tbaa !25
  %217 = getelementptr inbounds [3 x i32]* %213, i64 %207, i64 1
  store i32 %216, i32* %217, align 4, !tbaa !25
  %218 = load i32* %44, align 4, !tbaa !25
  %219 = getelementptr inbounds [3 x i32]* %213, i64 %207, i64 2
  store i32 %218, i32* %219, align 4, !tbaa !25
  %220 = add nsw i32 %ng.09.i, 1
  %.pre14.i = load i32** %31, align 8, !tbaa !24
  br label %238

; <label>:221                                     ; preds = %206
  %222 = load i32* %38, align 4, !tbaa !25
  %223 = getelementptr inbounds [3 x i32]* %132, i64 %207, i64 0
  %224 = load i32* %223, align 4, !tbaa !25
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %236

; <label>:226                                     ; preds = %221
  %227 = load i32* %43, align 4, !tbaa !25
  %228 = getelementptr inbounds [3 x i32]* %132, i64 %207, i64 1
  %229 = load i32* %228, align 4, !tbaa !25
  %230 = icmp eq i32 %227, %229
  br i1 %230, label %231, label %236

; <label>:231                                     ; preds = %226
  %232 = load i32* %44, align 4, !tbaa !25
  %233 = getelementptr inbounds [3 x i32]* %132, i64 %207, i64 2
  %234 = load i32* %233, align 4, !tbaa !25
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %238, label %236

; <label>:236                                     ; preds = %231, %226, %221
  %237 = add nsw i32 %130, 1
  br label %238

; <label>:238                                     ; preds = %236, %231, %211
  %.0.i14 = phi i32 [ %..0.i13, %211 ], [ %.0.i13, %236 ], [ %.0.i13, %231 ]
  %239 = phi i32 [ %130, %211 ], [ %237, %236 ], [ %130, %231 ]
  %240 = phi i32* [ %.pre14.i, %211 ], [ %131, %236 ], [ %131, %231 ]
  %241 = phi [3 x i32]* [ %213, %211 ], [ %132, %236 ], [ %132, %231 ]
  %ng.1.i = phi i32 [ %220, %211 ], [ %ng.09.i, %236 ], [ %ng.09.i, %231 ]
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1
  %242 = getelementptr inbounds i32* %240, i64 %96
  %243 = load i32* %242, align 4, !tbaa !25
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %indvars.iv.next.i4, %244
  br i1 %245, label %129, label %mk_grey.exit

mk_grey.exit:                                     ; preds = %238, %117
  %.0.i12 = phi i32 [ %.0.i918, %117 ], [ %.0.i14, %238 ]
  %246 = phi i32 [ %75, %117 ], [ %239, %238 ]
  %ng.0.lcssa.i = phi i32 [ 0, %117 ], [ %ng.1.i, %238 ]
  call void @llvm.lifetime.end(i64 12, i8* %32)
  call void @llvm.lifetime.end(i64 12, i8* %33)
  %247 = add nsw i32 %105, %ng.0.lcssa.i
  %248 = sub nsw i32 %nW.128, %ng.0.lcssa.i
  %249 = icmp sgt i32 %247, 0
  br i1 %249, label %.lr.ph, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit
  %250 = icmp sgt i32 %.lcssa23, 0
  %251 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %251, %250
  br i1 %or.cond, label %252, label %._crit_edge.thread

; <label>:252                                     ; preds = %._crit_edge
  %253 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([56 x i8]* @.str20, i64 0, i64 0), i32 %.lcssa23) #7
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %23, %._crit_edge43, %252, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @shift_atom(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %x_s, i32 %ai) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = sub nsw i32 %ai, %2
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 0
  %8 = load i32* %7, align 4, !tbaa !25
  %9 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 1
  %10 = load i32* %9, align 4, !tbaa !25
  %11 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 2
  %12 = load i32* %11, align 4, !tbaa !25
  %13 = sext i32 %ai to i64
  %14 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = sitofp i32 %8 to float
  %17 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fmul float %16, %18
  %20 = fadd float %15, %19
  %21 = sitofp i32 %10 to float
  %22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %21, %23
  %25 = fadd float %20, %24
  %26 = sitofp i32 %12 to float
  %27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fmul float %26, %28
  %30 = fadd float %25, %29
  %31 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 0
  store float %30, float* %31, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 1
  %33 = load float* %32, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fmul float %21, %35
  %37 = fadd float %33, %36
  %38 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fmul float %26, %39
  %41 = fadd float %37, %40
  %42 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 1
  store float %41, float* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 2
  %44 = load float* %43, align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fmul float %26, %46
  %48 = fadd float %44, %47
  %49 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 2
  store float %48, float* %49, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unshift_atom(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %x_s, i32 %ai) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = sub nsw i32 %ai, %2
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 0
  %8 = load i32* %7, align 4, !tbaa !25
  %9 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 1
  %10 = load i32* %9, align 4, !tbaa !25
  %11 = getelementptr inbounds [3 x i32]* %6, i64 %4, i64 2
  %12 = load i32* %11, align 4, !tbaa !25
  %13 = sext i32 %ai to i64
  %14 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = sitofp i32 %8 to float
  %17 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fmul float %16, %18
  %20 = fsub float %15, %19
  %21 = sitofp i32 %10 to float
  %22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %21, %23
  %25 = fsub float %20, %24
  %26 = sitofp i32 %12 to float
  %27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fmul float %26, %28
  %30 = fsub float %25, %29
  %31 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 0
  store float %30, float* %31, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 1
  %33 = load float* %32, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fmul float %21, %35
  %37 = fsub float %33, %36
  %38 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fmul float %26, %39
  %41 = fsub float %37, %40
  %42 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 1
  store float %41, float* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 2
  %44 = load float* %43, align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fmul float %26, %46
  %48 = fsub float %44, %47
  %49 = getelementptr inbounds [3 x float]* %x_s, i64 %13, i64 2
  store float %48, float* %49, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @shift_x(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %x_s) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %8 = load float* %7, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %8) #10
  %9 = fpext float %fabsf to double
  %10 = fcmp ogt double %9, 1.200000e-38
  br i1 %10, label %.preheader, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %13 = load float* %12, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %13) #10
  %14 = fpext float %fabsf1 to double
  %15 = fcmp ogt double %14, 1.200000e-38
  br i1 %15, label %.preheader, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %18) #10
  %19 = fpext float %fabsf2 to double
  %20 = fcmp ogt double %19, 1.200000e-38
  br i1 %20, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %16
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader3
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %24 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %25 = sext i32 %2 to i64
  %26 = add i32 %4, -1
  br label %72

.preheader:                                       ; preds = %16, %11, %0
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %28 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %31 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %32 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %33 = sext i32 %2 to i64
  %34 = add i32 %4, -1
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.lr.ph
  %36 = phi float [ %8, %.lr.ph ], [ %.pre, %._crit_edge ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %._crit_edge ]
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ]
  %37 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 0
  %38 = load i32* %37, align 4, !tbaa !25
  %39 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 1
  %40 = load i32* %39, align 4, !tbaa !25
  %41 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 2
  %42 = load i32* %41, align 4, !tbaa !25
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %44 = load float* %43, align 4, !tbaa !14
  %45 = sitofp i32 %38 to float
  %46 = load float* %28, align 4, !tbaa !14
  %47 = fmul float %45, %46
  %48 = fadd float %44, %47
  %49 = sitofp i32 %40 to float
  %50 = fmul float %49, %36
  %51 = fadd float %48, %50
  %52 = sitofp i32 %42 to float
  %53 = load float* %29, align 4, !tbaa !14
  %54 = fmul float %52, %53
  %55 = fadd float %51, %54
  %56 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  store float %55, float* %56, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %58 = load float* %57, align 4, !tbaa !14
  %59 = load float* %30, align 4, !tbaa !14
  %60 = fmul float %49, %59
  %61 = fadd float %58, %60
  %62 = load float* %31, align 4, !tbaa !14
  %63 = fmul float %52, %62
  %64 = fadd float %61, %63
  %65 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  store float %64, float* %65, align 4, !tbaa !14
  %66 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %67 = load float* %66, align 4, !tbaa !14
  %68 = load float* %32, align 4, !tbaa !14
  %69 = fmul float %52, %68
  %70 = fadd float %67, %69
  %71 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  store float %70, float* %71, align 4, !tbaa !14
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %34
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load float* %7, align 4, !tbaa !14
  br label %35

; <label>:72                                      ; preds = %72, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %72 ]
  %indvars.iv12 = phi i64 [ %25, %.lr.ph9 ], [ %indvars.iv.next13, %72 ]
  %73 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 0
  %74 = load i32* %73, align 4, !tbaa !25
  %75 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 1
  %76 = load i32* %75, align 4, !tbaa !25
  %77 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 2
  %78 = load i32* %77, align 4, !tbaa !25
  %79 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 0
  %80 = load float* %79, align 4, !tbaa !14
  %81 = sitofp i32 %74 to float
  %82 = load float* %22, align 4, !tbaa !14
  %83 = fmul float %81, %82
  %84 = fadd float %80, %83
  %85 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 0
  store float %84, float* %85, align 4, !tbaa !14
  %86 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 1
  %87 = load float* %86, align 4, !tbaa !14
  %88 = sitofp i32 %76 to float
  %89 = load float* %23, align 4, !tbaa !14
  %90 = fmul float %88, %89
  %91 = fadd float %87, %90
  %92 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 1
  store float %91, float* %92, align 4, !tbaa !14
  %93 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 2
  %94 = load float* %93, align 4, !tbaa !14
  %95 = sitofp i32 %78 to float
  %96 = load float* %24, align 4, !tbaa !14
  %97 = fmul float %95, %96
  %98 = fadd float %94, %97
  %99 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 2
  store float %98, float* %99, align 4, !tbaa !14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %26
  br i1 %exitcond17, label %.loopexit, label %72

.loopexit:                                        ; preds = %72, %35, %.preheader3, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @shift_self(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %x) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %8 = load float* %7, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %8) #10
  %9 = fpext float %fabsf to double
  %10 = fcmp ogt double %9, 1.200000e-38
  br i1 %10, label %.preheader, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %13 = load float* %12, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %13) #10
  %14 = fpext float %fabsf1 to double
  %15 = fcmp ogt double %14, 1.200000e-38
  br i1 %15, label %.preheader, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %18) #10
  %19 = fpext float %fabsf2 to double
  %20 = fcmp ogt double %19, 1.200000e-38
  br i1 %20, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %16
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader3
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %24 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %25 = sext i32 %2 to i64
  %26 = add i32 %4, -1
  br label %69

.preheader:                                       ; preds = %16, %11, %0
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %28 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %31 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %32 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %33 = sext i32 %2 to i64
  %34 = add i32 %4, -1
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.lr.ph
  %36 = phi float [ %8, %.lr.ph ], [ %.pre, %._crit_edge ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %._crit_edge ]
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ]
  %37 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 0
  %38 = load i32* %37, align 4, !tbaa !25
  %39 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 1
  %40 = load i32* %39, align 4, !tbaa !25
  %41 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 2
  %42 = load i32* %41, align 4, !tbaa !25
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %44 = load float* %43, align 4, !tbaa !14
  %45 = sitofp i32 %38 to float
  %46 = load float* %28, align 4, !tbaa !14
  %47 = fmul float %45, %46
  %48 = fadd float %44, %47
  %49 = sitofp i32 %40 to float
  %50 = fmul float %49, %36
  %51 = fadd float %48, %50
  %52 = sitofp i32 %42 to float
  %53 = load float* %29, align 4, !tbaa !14
  %54 = fmul float %52, %53
  %55 = fadd float %51, %54
  store float %55, float* %43, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %57 = load float* %56, align 4, !tbaa !14
  %58 = load float* %30, align 4, !tbaa !14
  %59 = fmul float %49, %58
  %60 = fadd float %57, %59
  %61 = load float* %31, align 4, !tbaa !14
  %62 = fmul float %52, %61
  %63 = fadd float %60, %62
  store float %63, float* %56, align 4, !tbaa !14
  %64 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %65 = load float* %64, align 4, !tbaa !14
  %66 = load float* %32, align 4, !tbaa !14
  %67 = fmul float %52, %66
  %68 = fadd float %65, %67
  store float %68, float* %64, align 4, !tbaa !14
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %34
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load float* %7, align 4, !tbaa !14
  br label %35

; <label>:69                                      ; preds = %69, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %69 ]
  %indvars.iv12 = phi i64 [ %25, %.lr.ph9 ], [ %indvars.iv.next13, %69 ]
  %70 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 0
  %71 = load i32* %70, align 4, !tbaa !25
  %72 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 1
  %73 = load i32* %72, align 4, !tbaa !25
  %74 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 2
  %75 = load i32* %74, align 4, !tbaa !25
  %76 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 0
  %77 = load float* %76, align 4, !tbaa !14
  %78 = sitofp i32 %71 to float
  %79 = load float* %22, align 4, !tbaa !14
  %80 = fmul float %78, %79
  %81 = fadd float %77, %80
  store float %81, float* %76, align 4, !tbaa !14
  %82 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 1
  %83 = load float* %82, align 4, !tbaa !14
  %84 = sitofp i32 %73 to float
  %85 = load float* %23, align 4, !tbaa !14
  %86 = fmul float %84, %85
  %87 = fadd float %83, %86
  store float %87, float* %82, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 2
  %89 = load float* %88, align 4, !tbaa !14
  %90 = sitofp i32 %75 to float
  %91 = load float* %24, align 4, !tbaa !14
  %92 = fmul float %90, %91
  %93 = fadd float %89, %92
  store float %93, float* %88, align 4, !tbaa !14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %26
  br i1 %exitcond17, label %.loopexit, label %69

.loopexit:                                        ; preds = %69, %35, %.preheader3, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unshift_x(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %x, [3 x float]* nocapture readonly %x_s) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %8 = load float* %7, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %8) #10
  %9 = fpext float %fabsf to double
  %10 = fcmp ogt double %9, 1.200000e-38
  br i1 %10, label %.preheader, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %13 = load float* %12, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %13) #10
  %14 = fpext float %fabsf1 to double
  %15 = fcmp ogt double %14, 1.200000e-38
  br i1 %15, label %.preheader, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %18) #10
  %19 = fpext float %fabsf2 to double
  %20 = fcmp ogt double %19, 1.200000e-38
  br i1 %20, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %16
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader3
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %24 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %25 = sext i32 %2 to i64
  %26 = add i32 %4, -1
  br label %72

.preheader:                                       ; preds = %16, %11, %0
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %28 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %31 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %32 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %33 = sext i32 %2 to i64
  %34 = add i32 %4, -1
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.lr.ph
  %36 = phi float [ %8, %.lr.ph ], [ %.pre, %._crit_edge ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %._crit_edge ]
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ]
  %37 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 0
  %38 = load i32* %37, align 4, !tbaa !25
  %39 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 1
  %40 = load i32* %39, align 4, !tbaa !25
  %41 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 2
  %42 = load i32* %41, align 4, !tbaa !25
  %43 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  %44 = load float* %43, align 4, !tbaa !14
  %45 = sitofp i32 %38 to float
  %46 = load float* %28, align 4, !tbaa !14
  %47 = fmul float %45, %46
  %48 = fsub float %44, %47
  %49 = sitofp i32 %40 to float
  %50 = fmul float %49, %36
  %51 = fsub float %48, %50
  %52 = sitofp i32 %42 to float
  %53 = load float* %29, align 4, !tbaa !14
  %54 = fmul float %52, %53
  %55 = fsub float %51, %54
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  store float %55, float* %56, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  %58 = load float* %57, align 4, !tbaa !14
  %59 = load float* %30, align 4, !tbaa !14
  %60 = fmul float %49, %59
  %61 = fsub float %58, %60
  %62 = load float* %31, align 4, !tbaa !14
  %63 = fmul float %52, %62
  %64 = fsub float %61, %63
  %65 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  store float %64, float* %65, align 4, !tbaa !14
  %66 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  %67 = load float* %66, align 4, !tbaa !14
  %68 = load float* %32, align 4, !tbaa !14
  %69 = fmul float %52, %68
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  store float %70, float* %71, align 4, !tbaa !14
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %34
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load float* %7, align 4, !tbaa !14
  br label %35

; <label>:72                                      ; preds = %72, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %72 ]
  %indvars.iv12 = phi i64 [ %25, %.lr.ph9 ], [ %indvars.iv.next13, %72 ]
  %73 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 0
  %74 = load i32* %73, align 4, !tbaa !25
  %75 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 1
  %76 = load i32* %75, align 4, !tbaa !25
  %77 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 2
  %78 = load i32* %77, align 4, !tbaa !25
  %79 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 0
  %80 = load float* %79, align 4, !tbaa !14
  %81 = sitofp i32 %74 to float
  %82 = load float* %22, align 4, !tbaa !14
  %83 = fmul float %81, %82
  %84 = fsub float %80, %83
  %85 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 0
  store float %84, float* %85, align 4, !tbaa !14
  %86 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 1
  %87 = load float* %86, align 4, !tbaa !14
  %88 = sitofp i32 %76 to float
  %89 = load float* %23, align 4, !tbaa !14
  %90 = fmul float %88, %89
  %91 = fsub float %87, %90
  %92 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 1
  store float %91, float* %92, align 4, !tbaa !14
  %93 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv12, i64 2
  %94 = load float* %93, align 4, !tbaa !14
  %95 = sitofp i32 %78 to float
  %96 = load float* %24, align 4, !tbaa !14
  %97 = fmul float %95, %96
  %98 = fsub float %94, %97
  %99 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 2
  store float %98, float* %99, align 4, !tbaa !14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %26
  br i1 %exitcond17, label %.loopexit, label %72

.loopexit:                                        ; preds = %72, %35, %.preheader3, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unshift_self(%struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %x) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = load [3 x i32]** %5, align 8, !tbaa !26
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %8 = load float* %7, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %8) #10
  %9 = fpext float %fabsf to double
  %10 = fcmp ogt double %9, 1.200000e-38
  br i1 %10, label %.preheader, label %11

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %13 = load float* %12, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %13) #10
  %14 = fpext float %fabsf1 to double
  %15 = fcmp ogt double %14, 1.200000e-38
  br i1 %15, label %.preheader, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %18) #10
  %19 = fpext float %fabsf2 to double
  %20 = fcmp ogt double %19, 1.200000e-38
  br i1 %20, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %16
  %21 = icmp sgt i32 %4, 0
  br i1 %21, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %.preheader3
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %24 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %25 = sext i32 %2 to i64
  %26 = add i32 %4, -1
  br label %69

.preheader:                                       ; preds = %16, %11, %0
  %27 = icmp sgt i32 %4, 0
  br i1 %27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %28 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %31 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %32 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %33 = sext i32 %2 to i64
  %34 = add i32 %4, -1
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.lr.ph
  %36 = phi float [ %8, %.lr.ph ], [ %.pre, %._crit_edge ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %._crit_edge ]
  %indvars.iv = phi i64 [ %33, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ]
  %37 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 0
  %38 = load i32* %37, align 4, !tbaa !25
  %39 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 1
  %40 = load i32* %39, align 4, !tbaa !25
  %41 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv10, i64 2
  %42 = load i32* %41, align 4, !tbaa !25
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %44 = load float* %43, align 4, !tbaa !14
  %45 = sitofp i32 %38 to float
  %46 = load float* %28, align 4, !tbaa !14
  %47 = fmul float %45, %46
  %48 = fsub float %44, %47
  %49 = sitofp i32 %40 to float
  %50 = fmul float %49, %36
  %51 = fsub float %48, %50
  %52 = sitofp i32 %42 to float
  %53 = load float* %29, align 4, !tbaa !14
  %54 = fmul float %52, %53
  %55 = fsub float %51, %54
  store float %55, float* %43, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %57 = load float* %56, align 4, !tbaa !14
  %58 = load float* %30, align 4, !tbaa !14
  %59 = fmul float %49, %58
  %60 = fsub float %57, %59
  %61 = load float* %31, align 4, !tbaa !14
  %62 = fmul float %52, %61
  %63 = fsub float %60, %62
  store float %63, float* %56, align 4, !tbaa !14
  %64 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %65 = load float* %64, align 4, !tbaa !14
  %66 = load float* %32, align 4, !tbaa !14
  %67 = fmul float %52, %66
  %68 = fsub float %65, %67
  store float %68, float* %64, align 4, !tbaa !14
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %34
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load float* %7, align 4, !tbaa !14
  br label %35

; <label>:69                                      ; preds = %69, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %69 ]
  %indvars.iv12 = phi i64 [ %25, %.lr.ph9 ], [ %indvars.iv.next13, %69 ]
  %70 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 0
  %71 = load i32* %70, align 4, !tbaa !25
  %72 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 1
  %73 = load i32* %72, align 4, !tbaa !25
  %74 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv14, i64 2
  %75 = load i32* %74, align 4, !tbaa !25
  %76 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 0
  %77 = load float* %76, align 4, !tbaa !14
  %78 = sitofp i32 %71 to float
  %79 = load float* %22, align 4, !tbaa !14
  %80 = fmul float %78, %79
  %81 = fsub float %77, %80
  store float %81, float* %76, align 4, !tbaa !14
  %82 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 1
  %83 = load float* %82, align 4, !tbaa !14
  %84 = sitofp i32 %73 to float
  %85 = load float* %23, align 4, !tbaa !14
  %86 = fmul float %84, %85
  %87 = fsub float %83, %86
  store float %87, float* %82, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 2
  %89 = load float* %88, align 4, !tbaa !14
  %90 = sitofp i32 %75 to float
  %91 = load float* %24, align 4, !tbaa !14
  %92 = fmul float %90, %91
  %93 = fsub float %89, %92
  store float %93, float* %88, align 4, !tbaa !14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %26
  br i1 %exitcond17, label %.loopexit, label %69

.loopexit:                                        ; preds = %69, %35, %.preheader3, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_gbond(%struct.t_graph* nocapture readonly %g, i32* nocapture readonly %ia, i32 %np) #4 {
  %1 = icmp sgt i32 %np, 0
  br i1 %1, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %0
  %2 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %3 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 5
  %4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 0
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 6
  %6 = add i32 %np, -1
  br label %.lr.ph11

.lr.ph11:                                         ; preds = %.lr.ph15, %._crit_edge12
  %indvars.iv20 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next21, %._crit_edge12 ]
  %7 = getelementptr inbounds i32* %ia, i64 %indvars.iv20
  %8 = load i32* %7, align 4, !tbaa !25
  %9 = load i32* %2, align 4, !tbaa !22
  %10 = sub nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i32 %8, 1
  br label %13

; <label>:13                                      ; preds = %53, %.lr.ph11
  %indvars.iv18 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next19, %53 ]
  %14 = trunc i64 %indvars.iv18 to i32
  %15 = trunc i64 %indvars.iv20 to i32
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %53, label %.preheader

.preheader:                                       ; preds = %13
  %17 = load i32** %3, align 8, !tbaa !24
  %18 = getelementptr inbounds i32* %17, i64 %11
  %19 = load i32* %18, align 4, !tbaa !25
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %.preheader
  %21 = load i32*** %5, align 8, !tbaa !27
  %22 = getelementptr inbounds i32** %21, i64 %11
  %23 = load i32** %22, align 8, !tbaa !28
  %24 = getelementptr inbounds i32* %ia, i64 %indvars.iv18
  %25 = load i32* %24, align 4, !tbaa !25
  br label %26

; <label>:26                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %27 = getelementptr inbounds i32* %23, i64 %indvars.iv
  %28 = load i32* %27, align 4, !tbaa !25
  %29 = icmp eq i32 %28, %25
  br i1 %29, label %._crit_edge, label %30

; <label>:30                                      ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = sext i32 %19 to i64
  %32 = icmp slt i64 %indvars.iv.next, %31
  br i1 %32, label %26, label %._crit_edge5

._crit_edge:                                      ; preds = %26
  %33 = trunc i64 %indvars.iv to i32
  br label %35

._crit_edge5:                                     ; preds = %30
  %34 = trunc i64 %indvars.iv.next to i32
  br label %35

; <label>:35                                      ; preds = %._crit_edge5, %._crit_edge, %.preheader
  %l.0.lcssa = phi i32 [ %33, %._crit_edge ], [ %34, %._crit_edge5 ], [ 0, %.preheader ]
  %36 = icmp eq i32 %l.0.lcssa, %19
  br i1 %36, label %37, label %53

; <label>:37                                      ; preds = %35
  %38 = load i32* %4, align 4, !tbaa !18
  %39 = icmp eq i32 %19, %38
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str24, i64 0, i64 0), i32 %19, i32 %12) #7
  %.pre = load i32** %3, align 8, !tbaa !24
  %.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 %11
  %.pre25 = load i32* %.phi.trans.insert, align 4, !tbaa !25
  br label %41

; <label>:41                                      ; preds = %40, %37
  %42 = phi i32 [ %.pre25, %40 ], [ %19, %37 ]
  %43 = phi i32* [ %.pre, %40 ], [ %17, %37 ]
  %44 = getelementptr inbounds i32* %ia, i64 %indvars.iv18
  %45 = load i32* %44, align 4, !tbaa !25
  %46 = getelementptr inbounds i32* %43, i64 %11
  %47 = add nsw i32 %42, 1
  store i32 %47, i32* %46, align 4, !tbaa !25
  %48 = sext i32 %42 to i64
  %49 = load i32*** %5, align 8, !tbaa !27
  %50 = getelementptr inbounds i32** %49, i64 %11
  %51 = load i32** %50, align 8, !tbaa !28
  %52 = getelementptr inbounds i32* %51, i64 %48
  store i32 %45, i32* %52, align 4, !tbaa !25
  br label %53

; <label>:53                                      ; preds = %13, %41, %35
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond = icmp eq i32 %14, %6
  br i1 %exitcond, label %._crit_edge12, label %13

._crit_edge12:                                    ; preds = %53
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp eq i32 %15, %6
  br i1 %exitcond23, label %._crit_edge16, label %.lr.ph11

._crit_edge16:                                    ; preds = %._crit_edge12, %0
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

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
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!20 = !{!19, !7, i64 4}
!21 = !{!19, !7, i64 8}
!22 = !{!19, !7, i64 12}
!23 = !{!19, !7, i64 16}
!24 = !{!19, !4, i64 24}
!25 = !{!7, !7, i64 0}
!26 = !{!19, !4, i64 40}
!27 = !{!19, !4, i64 32}
!28 = !{!4, !4, i64 0}
!29 = !{!30, !31, i64 32}
!30 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !31, i64 32, !7, i64 40, !4, i64 48}
!31 = !{!"long", !5, i64 0}
!32 = !{!33, !4, i64 16}
!33 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!34 = !{!35, !7, i64 0}
!35 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!36 = !{!35, !4, i64 1032}
!37 = !{!30, !7, i64 16}
!38 = !{!8, !8, i64 0}
