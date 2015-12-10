; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/orires.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

@.str = private unnamed_addr constant [6 x i8] c"nr_ex\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/orires.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"od->S\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"od->Dinsl\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"od->Dins\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"od->Dtav\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"od->oinsl\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"od->oins\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"od->otav\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"od->tmp\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"od->TMP\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"od->TMP[ex]\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"od->TMP[ex][i]\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"od->mref\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"od->xref\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"od->xtmp\00", align 1
@.str16 = private unnamed_addr constant [34 x i8] c"Found %d orientation experiments\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"  experiment %d has %d restraints\0A\00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"  the fit group consists of %d atoms and has total mass %g\0A\00", align 1
@.str19 = private unnamed_addr constant [68 x i8] c"  the orientation restraints are ensemble averaged over %d systems\0A\00", align 1
@.str20 = private unnamed_addr constant [37 x i8] c"the number of orientation restraints\00", align 1
@.str21 = private unnamed_addr constant [52 x i8] c"the number of fit atoms for orientation restraining\00", align 1
@print_orires_log.M = internal unnamed_addr global double** null, align 8
@print_orires_log.eig = internal unnamed_addr global double* null, align 8
@print_orires_log.v = internal unnamed_addr global double** null, align 8
@.str22 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"M[i]\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"eig\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"  Orientation experiment %d:\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"    order parameter: %g\0A\00", align 1
@.str29 = private unnamed_addr constant [36 x i8] c"    eig: %6.3f   %6.3f %6.3f %6.3f\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_orires(%struct.__sFILE* %log, i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, [3 x float]* nocapture readonly %xref, %struct.t_mdatoms* nocapture readonly %md, %struct.t_inputrec* nocapture readonly %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* %fcd) #4 {
  %com = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %3 = bitcast float* %2 to i32*
  %4 = load i32* %3, align 4, !tbaa !18
  %5 = bitcast %struct.t_oriresdata* %1 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  store i32 0, i32* %6, align 4, !tbaa !23
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  store [3 x [3 x float]]* null, [3 x [3 x float]]** %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %9 = load float* %8, align 4, !tbaa !25
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %13 = load float* %12, align 4, !tbaa !26
  %14 = fsub float -0.000000e+00, %13
  %15 = fdiv float %14, %9
  %16 = fpext float %15 to double
  %17 = tail call double @exp(double %16) #10
  %18 = fptrunc double %17 to float
  br label %19

; <label>:19                                      ; preds = %0, %11
  %.sink = phi float [ %18, %11 ], [ 0.000000e+00, %0 ]
  %20 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  store float %.sink, float* %20, align 4
  %21 = fsub float 1.000000e+00, %.sink
  %22 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 2
  store float %21, float* %22, align 4, !tbaa !27
  %23 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  store float 1.000000e+00, float* %23, align 4, !tbaa !28
  %24 = sdiv i32 %nfa, 3
  %25 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  store i32 %24, i32* %25, align 4, !tbaa !29
  %nfa.off = add i32 %nfa, 2
  %26 = icmp ult i32 %nfa.off, 5
  br i1 %26, label %288, label %.preheader3

.preheader3:                                      ; preds = %19
  %27 = icmp sgt i32 %nfa, 0
  br i1 %27, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %.preheader3
  %28 = sext i32 %nfa to i64
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %52, %.lr.ph30
  %29 = phi i32 [ 0, %.lr.ph30 ], [ %.pre, %52 ]
  %indvars.iv49 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next50, %52 ]
  %nr_ex.028 = phi i32* [ null, %.lr.ph30 ], [ %nr_ex.1, %52 ]
  %30 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv49
  %31 = load i32* %30, align 4, !tbaa !30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %union.t_iparams* %ip, i64 %32
  %34 = bitcast %union.t_iparams* %33 to i32*
  %35 = load i32* %34, align 4, !tbaa !31
  %36 = icmp slt i32 %35, %29
  br i1 %36, label %52, label %37

; <label>:37                                      ; preds = %._crit_edge51
  %38 = bitcast i32* %nr_ex.028 to i8*
  %39 = add nsw i32 %35, 1
  %40 = shl i32 %39, 2
  %41 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %38, i32 %40) #8
  %42 = bitcast i8* %41 to i32*
  %43 = load i32* %6, align 4, !tbaa !23
  %44 = icmp slt i32 %43, %39
  br i1 %44, label %.lr.ph26, label %51

.lr.ph26:                                         ; preds = %37
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 2
  %scevgep = getelementptr i8* %41, i64 %46
  %47 = sub i32 %35, %43
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = add nuw nsw i64 %49, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %50, i32 4, i1 false)
  br label %51

; <label>:51                                      ; preds = %.lr.ph26, %37
  store i32 %39, i32* %6, align 4, !tbaa !23
  br label %52

; <label>:52                                      ; preds = %._crit_edge51, %51
  %nr_ex.1 = phi i32* [ %42, %51 ], [ %nr_ex.028, %._crit_edge51 ]
  %53 = sext i32 %35 to i64
  %54 = getelementptr inbounds i32* %nr_ex.1, i64 %53
  %55 = load i32* %54, align 4, !tbaa !30
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4, !tbaa !30
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 3
  %57 = icmp slt i64 %indvars.iv.next50, %28
  %.pre = load i32* %6, align 4, !tbaa !23
  br i1 %57, label %._crit_edge51, label %._crit_edge31

._crit_edge31:                                    ; preds = %52, %.preheader3
  %58 = phi i32 [ 0, %.preheader3 ], [ %.pre, %52 ]
  %nr_ex.0.lcssa = phi i32* [ null, %.preheader3 ], [ %nr_ex.1, %52 ]
  %59 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 79, i32 %58, i32 36) #8
  %60 = bitcast [3 x [3 x float]]** %7 to i8**
  store i8* %59, i8** %60, align 8, !tbaa !24
  %61 = load i32* %25, align 4, !tbaa !29
  %62 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 83, i32 %61, i32 20) #8
  %63 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 13
  %64 = bitcast [5 x float]** %63 to i8**
  store i8* %62, i8** %64, align 8, !tbaa !33
  %65 = icmp ne %struct.t_commrec* %mcr, null
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %._crit_edge31
  %67 = load i32* %25, align 4, !tbaa !29
  %68 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 85, i32 %67, i32 20) #8
  %69 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  %70 = bitcast [5 x float]** %69 to i8**
  store i8* %68, i8** %70, align 8, !tbaa !34
  br label %74

; <label>:71                                      ; preds = %._crit_edge31
  %72 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  %73 = bitcast [5 x float]** %72 to i8**
  store i8* %62, i8** %73, align 8, !tbaa !34
  br label %74

; <label>:74                                      ; preds = %71, %66
  %.in = phi i8* [ %62, %71 ], [ %68, %66 ]
  %75 = load float* %8, align 4, !tbaa !25
  %fabsf = tail call float @fabsf(float %75) #5
  %76 = fpext float %fabsf to double
  %77 = fcmp olt double %76, 1.200000e-38
  br i1 %77, label %78, label %82

; <label>:78                                      ; preds = %74
  %79 = ptrtoint i8* %.in to i64
  %80 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  %81 = bitcast [5 x float]** %80 to i64*
  store i64 %79, i64* %81, align 8, !tbaa !35
  br label %87

; <label>:82                                      ; preds = %74
  %83 = load i32* %25, align 4, !tbaa !29
  %84 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 91, i32 %83, i32 20) #8
  %85 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  %86 = bitcast [5 x float]** %85 to i8**
  store i8* %84, i8** %86, align 8, !tbaa !35
  br label %87

; <label>:87                                      ; preds = %82, %78
  %88 = load i32* %25, align 4, !tbaa !29
  %89 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %88, i32 4) #8
  %90 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %91 = bitcast float** %90 to i8**
  store i8* %89, i8** %91, align 8, !tbaa !36
  br i1 %65, label %92, label %97

; <label>:92                                      ; preds = %87
  %93 = load i32* %25, align 4, !tbaa !29
  %94 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 94, i32 %93, i32 4) #8
  %95 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %96 = bitcast float** %95 to i8**
  store i8* %94, i8** %96, align 8, !tbaa !37
  br label %100

; <label>:97                                      ; preds = %87
  %98 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %99 = bitcast float** %98 to i8**
  store i8* %89, i8** %99, align 8, !tbaa !37
  br label %100

; <label>:100                                     ; preds = %97, %92
  %.in56 = phi i8* [ %89, %97 ], [ %94, %92 ]
  %101 = load float* %8, align 4, !tbaa !25
  %fabsf1 = tail call float @fabsf(float %101) #5
  %102 = fpext float %fabsf1 to double
  %103 = fcmp olt double %102, 1.200000e-38
  br i1 %103, label %104, label %108

; <label>:104                                     ; preds = %100
  %105 = ptrtoint i8* %.in56 to i64
  %106 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %107 = bitcast float** %106 to i64*
  store i64 %105, i64* %107, align 8, !tbaa !38
  br label %113

; <label>:108                                     ; preds = %100
  %109 = load i32* %25, align 4, !tbaa !29
  %110 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %109, i32 4) #8
  %111 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %112 = bitcast float** %111 to i8**
  store i8* %110, i8** %112, align 8, !tbaa !38
  br label %113

; <label>:113                                     ; preds = %108, %104
  %114 = load i32* %6, align 4, !tbaa !23
  %115 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 101, i32 %114, i32 20) #8
  %116 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 20
  %117 = bitcast [5 x float]** %116 to i8**
  store i8* %115, i8** %117, align 8, !tbaa !39
  %118 = load i32* %6, align 4, !tbaa !23
  %119 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %118, i32 8) #8
  %120 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 21
  %121 = bitcast float**** %120 to i8**
  store i8* %119, i8** %121, align 8, !tbaa !40
  %122 = load i32* %6, align 4, !tbaa !23
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %113, %135
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %135 ], [ 0, %113 ]
  %124 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 104, i32 5, i32 8) #8
  %125 = load float**** %120, align 8, !tbaa !40
  %126 = getelementptr inbounds float*** %125, i64 %indvars.iv44
  %127 = bitcast float*** %126 to i8**
  store i8* %124, i8** %127, align 8, !tbaa !41
  br label %128

; <label>:128                                     ; preds = %128, %.lr.ph22
  %indvars.iv41 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next42, %128 ]
  %129 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 106, i32 5, i32 4) #8
  %130 = load float**** %120, align 8, !tbaa !40
  %131 = getelementptr inbounds float*** %130, i64 %indvars.iv44
  %132 = load float*** %131, align 8, !tbaa !41
  %133 = getelementptr inbounds float** %132, i64 %indvars.iv41
  %134 = bitcast float** %133 to i8**
  store i8* %129, i8** %134, align 8, !tbaa !41
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 5
  br i1 %exitcond43, label %135, label %128

; <label>:135                                     ; preds = %128
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %136 = load i32* %6, align 4, !tbaa !23
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %indvars.iv.next45, %137
  br i1 %138, label %.lr.ph22, label %._crit_edge23

._crit_edge23:                                    ; preds = %135, %113
  %139 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 6
  store i32 0, i32* %139, align 4, !tbaa !42
  %140 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %141 = load i32* %140, align 4, !tbaa !43
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %._crit_edge23
  %143 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %144 = load i16** %143, align 8, !tbaa !45
  %145 = sext i32 %141 to i64
  br label %146

; <label>:146                                     ; preds = %.lr.ph16, %153
  %147 = phi i32 [ 0, %.lr.ph16 ], [ %154, %153 ]
  %indvars.iv39 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next40, %153 ]
  %148 = getelementptr inbounds i16* %144, i64 %indvars.iv39
  %149 = load i16* %148, align 2, !tbaa !46
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %153

; <label>:151                                     ; preds = %146
  %152 = add nsw i32 %147, 1
  store i32 %152, i32* %139, align 4, !tbaa !42
  br label %153

; <label>:153                                     ; preds = %146, %151
  %154 = phi i32 [ %147, %146 ], [ %152, %151 ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %155 = icmp slt i64 %indvars.iv.next40, %145
  br i1 %155, label %146, label %._crit_edge17

._crit_edge17:                                    ; preds = %153, %._crit_edge23
  %156 = phi i32 [ 0, %._crit_edge23 ], [ %154, %153 ]
  %157 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %156, i32 4) #8
  %158 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 8
  %159 = bitcast float** %158 to i8**
  store i8* %157, i8** %159, align 8, !tbaa !47
  %160 = load i32* %139, align 4, !tbaa !42
  %161 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 114, i32 %160, i32 12) #8
  %162 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 9
  %163 = bitcast [3 x float]** %162 to i8**
  store i8* %161, i8** %163, align 8, !tbaa !48
  %164 = load i32* %139, align 4, !tbaa !42
  %165 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 115, i32 %164, i32 12) #8
  %166 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 10
  %167 = bitcast [3 x float]** %166 to i8**
  store i8* %165, i8** %167, align 8, !tbaa !49
  %168 = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  store float 0.000000e+00, float* %168, align 4, !tbaa !14
  %169 = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  store float 0.000000e+00, float* %169, align 4, !tbaa !14
  %170 = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  store float 0.000000e+00, float* %170, align 4, !tbaa !14
  %171 = load i32* %140, align 4, !tbaa !43
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %.lr.ph12, label %230

.lr.ph12:                                         ; preds = %._crit_edge17
  %173 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %174 = load i16** %173, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %176 = icmp eq %struct.t_commrec* %mcr, null
  %177 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %178 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 4
  %179 = sext i32 %171 to i64
  br label %180

; <label>:180                                     ; preds = %.lr.ph12, %228
  %indvars.iv37 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next38, %228 ]
  %mtot.09 = phi float [ 0.000000e+00, %.lr.ph12 ], [ %mtot.1, %228 ]
  %j.18 = phi i32 [ 0, %.lr.ph12 ], [ %j.2, %228 ]
  %181 = getelementptr inbounds i16* %174, i64 %indvars.iv37
  %182 = load i16* %181, align 2, !tbaa !46
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %228

; <label>:184                                     ; preds = %180
  %185 = load float** %175, align 8, !tbaa !50
  %186 = getelementptr inbounds float* %185, i64 %indvars.iv37
  %187 = bitcast float* %186 to i32*
  %188 = load i32* %187, align 4, !tbaa !14
  %189 = sext i32 %j.18 to i64
  %190 = load float** %158, align 8, !tbaa !47
  %191 = getelementptr inbounds float* %190, i64 %189
  %192 = bitcast float* %191 to i32*
  store i32 %188, i32* %192, align 4, !tbaa !14
  %193 = bitcast i32 %188 to float
  br i1 %176, label %200, label %194

; <label>:194                                     ; preds = %184
  %195 = load i32* %177, align 4, !tbaa !51
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %.loopexit2

; <label>:197                                     ; preds = %194
  %198 = load i32* %178, align 4, !tbaa !53
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %.loopexit2

; <label>:200                                     ; preds = %197, %184
  %201 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv37, i64 0
  %202 = load [3 x float]** %162, align 8, !tbaa !48
  %203 = getelementptr inbounds [3 x float]* %202, i64 %189, i64 0
  %204 = bitcast float* %201 to i32*
  %205 = load i32* %204, align 4, !tbaa !14
  %206 = bitcast float* %203 to i32*
  store i32 %205, i32* %206, align 4, !tbaa !14
  %207 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv37, i64 1
  %208 = bitcast float* %207 to i32*
  %209 = load i32* %208, align 4, !tbaa !14
  %210 = getelementptr inbounds [3 x float]* %202, i64 %189, i64 1
  %211 = bitcast float* %210 to i32*
  store i32 %209, i32* %211, align 4, !tbaa !14
  %212 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv37, i64 2
  %213 = bitcast float* %212 to i32*
  %214 = load i32* %213, align 4, !tbaa !14
  %215 = getelementptr inbounds [3 x float]* %202, i64 %189, i64 2
  %216 = bitcast float* %215 to i32*
  store i32 %214, i32* %216, align 4, !tbaa !14
  %217 = load float* %191, align 4, !tbaa !14
  br label %218

; <label>:218                                     ; preds = %218, %200
  %indvars.iv35 = phi i64 [ 0, %200 ], [ %indvars.iv.next36, %218 ]
  %219 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv37, i64 %indvars.iv35
  %220 = load float* %219, align 4, !tbaa !14
  %221 = fmul float %217, %220
  %222 = getelementptr inbounds [3 x float]* %com, i64 0, i64 %indvars.iv35
  %223 = load float* %222, align 4, !tbaa !14
  %224 = fadd float %223, %221
  store float %224, float* %222, align 4, !tbaa !14
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond = icmp eq i64 %indvars.iv.next36, 3
  br i1 %exitcond, label %.loopexit2, label %218

.loopexit2:                                       ; preds = %218, %197, %194
  %225 = phi float [ %193, %197 ], [ %193, %194 ], [ %217, %218 ]
  %226 = fadd float %mtot.09, %225
  %227 = add nsw i32 %j.18, 1
  br label %228

; <label>:228                                     ; preds = %180, %.loopexit2
  %j.2 = phi i32 [ %227, %.loopexit2 ], [ %j.18, %180 ]
  %mtot.1 = phi float [ %226, %.loopexit2 ], [ %mtot.09, %180 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %229 = icmp slt i64 %indvars.iv.next38, %179
  br i1 %229, label %180, label %._crit_edge13

._crit_edge13:                                    ; preds = %228
  %.pre53 = load float* %168, align 4, !tbaa !14
  %.pre54 = load float* %169, align 4, !tbaa !14
  %.pre55 = load float* %170, align 4, !tbaa !14
  br label %230

; <label>:230                                     ; preds = %._crit_edge13, %._crit_edge17
  %231 = phi float [ %.pre55, %._crit_edge13 ], [ 0.000000e+00, %._crit_edge17 ]
  %232 = phi float [ %.pre54, %._crit_edge13 ], [ 0.000000e+00, %._crit_edge17 ]
  %233 = phi float [ %.pre53, %._crit_edge13 ], [ 0.000000e+00, %._crit_edge17 ]
  %mtot.0.lcssa = phi float [ %mtot.1, %._crit_edge13 ], [ 0.000000e+00, %._crit_edge17 ]
  %234 = fpext float %mtot.0.lcssa to double
  %235 = fdiv float 1.000000e+00, %mtot.0.lcssa
  %236 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 7
  store float %235, float* %236, align 4, !tbaa !54
  %237 = fmul float %235, %233
  store float %237, float* %168, align 4, !tbaa !14
  %238 = fmul float %235, %232
  store float %238, float* %169, align 4, !tbaa !14
  %239 = fmul float %235, %231
  store float %239, float* %170, align 4, !tbaa !14
  %240 = icmp eq %struct.t_commrec* %mcr, null
  br i1 %240, label %.preheader, label %241

; <label>:241                                     ; preds = %230
  %242 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %243 = load i32* %242, align 4, !tbaa !51
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %.loopexit

; <label>:245                                     ; preds = %241
  %246 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 4
  %247 = load i32* %246, align 4, !tbaa !53
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %245, %230
  %249 = load i32* %139, align 4, !tbaa !42
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %.preheader
  %251 = load [3 x float]** %162, align 8, !tbaa !48
  %252 = sext i32 %249 to i64
  br label %253

; <label>:253                                     ; preds = %.lr.ph6, %253
  %indvars.iv33 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next34, %253 ]
  %254 = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv33, i64 0
  %255 = load float* %254, align 4, !tbaa !14
  %256 = fsub float %255, %237
  %257 = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv33, i64 1
  %258 = load float* %257, align 4, !tbaa !14
  %259 = fsub float %258, %238
  %260 = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv33, i64 2
  %261 = load float* %260, align 4, !tbaa !14
  %262 = fsub float %261, %239
  store float %256, float* %254, align 4, !tbaa !14
  store float %259, float* %257, align 4, !tbaa !14
  store float %262, float* %260, align 4, !tbaa !14
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %263 = icmp slt i64 %indvars.iv.next34, %252
  br i1 %263, label %253, label %.loopexit

.loopexit:                                        ; preds = %253, %.preheader, %245, %241
  %264 = load i32* %6, align 4, !tbaa !23
  %265 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str16, i64 0, i64 0), i32 %264) #8
  %266 = load i32* %6, align 4, !tbaa !23
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %268 = getelementptr inbounds i32* %nr_ex.0.lcssa, i64 %indvars.iv
  %269 = load i32* %268, align 4, !tbaa !30
  %270 = trunc i64 %indvars.iv.next to i32
  %271 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i32 %270, i32 %269) #8
  %272 = load i32* %6, align 4, !tbaa !23
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %indvars.iv.next, %273
  br i1 %274, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %275 = bitcast i32* %nr_ex.0.lcssa to i8*
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %275) #8
  %276 = load i32* %139, align 4, !tbaa !42
  %277 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i32 %276, double %234) #8
  br i1 %65, label %278, label %288

; <label>:278                                     ; preds = %._crit_edge
  %279 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %280 = load i32* %279, align 4, !tbaa !55
  %281 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([68 x i8]* @.str19, i64 0, i64 0), i32 %280) #8
  %282 = load i32* %25, align 4, !tbaa !56
  tail call void @check_multi_int(%struct.__sFILE* %log, %struct.t_commrec* %mcr, i32 %282, i8* getelementptr inbounds ([37 x i8]* @.str20, i64 0, i64 0)) #8
  %283 = load i32* %139, align 4, !tbaa !59
  tail call void @check_multi_int(%struct.__sFILE* %log, %struct.t_commrec* %mcr, i32 %283, i8* getelementptr inbounds ([52 x i8]* @.str21, i64 0, i64 0)) #8
  %284 = load i32* %139, align 4, !tbaa !59
  %285 = mul nsw i32 %284, 3
  %286 = load [3 x float]** %162, align 8, !tbaa !60
  %287 = getelementptr inbounds [3 x float]* %286, i64 0, i64 0
  tail call void @gmx_sumf(i32 %285, float* %287, %struct.t_commrec* %mcr) #8
  br label %288

; <label>:288                                     ; preds = %19, %278, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #5

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @check_multi_int(%struct.__sFILE*, %struct.t_commrec*, i32, i8*) #1

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @print_orires_log(%struct.__sFILE* nocapture %log, %struct.t_fcdata* nocapture readonly %fcd) #4 {
  %nrot = alloca i32, align 4
  %S = alloca [3 x [3 x float]], align 16
  %TMP = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %S to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #7
  %2 = bitcast [3 x [3 x float]]* %TMP to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #7
  %3 = load double*** @print_orires_log.M, align 8, !tbaa !41
  %4 = icmp eq double** %3, null
  br i1 %4, label %31, label %.preheader1

.preheader1:                                      ; preds = %41, %0
  %5 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  %6 = load i32* %5, align 4, !tbaa !23
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1
  %8 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0
  %9 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %10 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0
  %11 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 0
  %12 = getelementptr inbounds [3 x float]* %8, i64 0, i64 0
  %13 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 1
  %14 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 1
  %15 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 2
  %16 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 2
  %17 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 0
  %18 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 1
  %19 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 2
  %20 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 0
  %21 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 1
  %22 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 2
  %23 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 0
  %24 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 1
  %25 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 2
  %26 = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 1, i64 1
  %27 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 0
  %28 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 1
  %29 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 2
  %30 = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 2, i64 2
  br label %46

; <label>:31                                      ; preds = %0
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 174, i32 3, i32 8) #8
  store i8* %32, i8** bitcast (double*** @print_orires_log.M to i8**), align 8, !tbaa !41
  br label %33

; <label>:33                                      ; preds = %33, %31
  %indvars.iv24 = phi i64 [ 0, %31 ], [ %indvars.iv.next25, %33 ]
  %34 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 176, i32 3, i32 8) #8
  %35 = load double*** @print_orires_log.M, align 8, !tbaa !41
  %36 = getelementptr inbounds double** %35, i64 %indvars.iv24
  %37 = bitcast double** %36 to i8**
  store i8* %34, i8** %37, align 8, !tbaa !41
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond26 = icmp eq i64 %indvars.iv.next25, 3
  br i1 %exitcond26, label %38, label %33

; <label>:38                                      ; preds = %33
  %39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 177, i32 3, i32 8) #8
  store i8* %39, i8** bitcast (double** @print_orires_log.eig to i8**), align 8, !tbaa !41
  %40 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 178, i32 3, i32 8) #8
  store i8* %40, i8** bitcast (double*** @print_orires_log.v to i8**), align 8, !tbaa !41
  br label %41

; <label>:41                                      ; preds = %41, %38
  %indvars.iv21 = phi i64 [ 0, %38 ], [ %indvars.iv.next22, %41 ]
  %42 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 180, i32 3, i32 8) #8
  %43 = load double*** @print_orires_log.v, align 8, !tbaa !41
  %44 = getelementptr inbounds double** %43, i64 %indvars.iv21
  %45 = bitcast double** %44 to i8**
  store i8* %42, i8** %45, align 8, !tbaa !41
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 3
  br i1 %exitcond23, label %.preheader1, label %41

; <label>:46                                      ; preds = %.lr.ph, %192
  %indvars.iv19 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next20, %192 ]
  %47 = load [3 x [3 x float]]** %9, align 8, !tbaa !24
  %48 = getelementptr inbounds [3 x [3 x float]]* %47, i64 %indvars.iv19, i64 0
  call fastcc void @mmul([3 x float]* %8, [3 x float]* %48, [3 x float]* %10) #11
  %49 = load float* %11, align 16, !tbaa !14
  %50 = load float* %12, align 4, !tbaa !14
  %51 = load float* %13, align 4, !tbaa !14
  %52 = load float* %14, align 4, !tbaa !14
  %53 = load float* %15, align 8, !tbaa !14
  %54 = load float* %16, align 4, !tbaa !14
  %55 = load float* %17, align 4, !tbaa !14
  %56 = load float* %18, align 4, !tbaa !14
  %57 = load float* %19, align 4, !tbaa !14
  %58 = load float* %20, align 4, !tbaa !14
  %59 = load float* %21, align 4, !tbaa !14
  %60 = load float* %22, align 4, !tbaa !14
  %61 = load float* %23, align 4, !tbaa !14
  %62 = insertelement <4 x float> undef, float %49, i32 0
  %63 = insertelement <4 x float> %62, float %49, i32 1
  %64 = insertelement <4 x float> %63, float %49, i32 2
  %65 = insertelement <4 x float> %64, float %61, i32 3
  %66 = insertelement <4 x float> undef, float %50, i32 0
  %67 = insertelement <4 x float> %66, float %55, i32 1
  %68 = insertelement <4 x float> %67, float %58, i32 2
  %69 = insertelement <4 x float> %68, float %50, i32 3
  %70 = fmul <4 x float> %65, %69
  %71 = load float* %24, align 4, !tbaa !14
  %72 = insertelement <4 x float> undef, float %51, i32 0
  %73 = insertelement <4 x float> %72, float %51, i32 1
  %74 = insertelement <4 x float> %73, float %51, i32 2
  %75 = insertelement <4 x float> %74, float %71, i32 3
  %76 = insertelement <4 x float> undef, float %52, i32 0
  %77 = insertelement <4 x float> %76, float %56, i32 1
  %78 = insertelement <4 x float> %77, float %59, i32 2
  %79 = insertelement <4 x float> %78, float %52, i32 3
  %80 = fmul <4 x float> %75, %79
  %81 = fadd <4 x float> %70, %80
  %82 = load float* %25, align 4, !tbaa !14
  %83 = insertelement <4 x float> undef, float %53, i32 0
  %84 = insertelement <4 x float> %83, float %53, i32 1
  %85 = insertelement <4 x float> %84, float %53, i32 2
  %86 = insertelement <4 x float> %85, float %82, i32 3
  %87 = insertelement <4 x float> undef, float %54, i32 0
  %88 = insertelement <4 x float> %87, float %57, i32 1
  %89 = insertelement <4 x float> %88, float %60, i32 2
  %90 = insertelement <4 x float> %89, float %54, i32 3
  %91 = fmul <4 x float> %86, %90
  %92 = fadd <4 x float> %81, %91
  %93 = bitcast [3 x [3 x float]]* %S to <4 x float>*
  store <4 x float> %92, <4 x float>* %93, align 16, !tbaa !14
  %94 = load float* %27, align 8, !tbaa !14
  %95 = load float* %28, align 4, !tbaa !14
  %96 = load float* %29, align 8, !tbaa !14
  %97 = insertelement <4 x float> undef, float %61, i32 0
  %98 = insertelement <4 x float> %97, float %61, i32 1
  %99 = insertelement <4 x float> %98, float %94, i32 2
  %100 = insertelement <4 x float> %99, float %94, i32 3
  %101 = insertelement <4 x float> undef, float %55, i32 0
  %102 = insertelement <4 x float> %101, float %58, i32 1
  %103 = insertelement <4 x float> %102, float %50, i32 2
  %104 = insertelement <4 x float> %103, float %55, i32 3
  %105 = fmul <4 x float> %100, %104
  %106 = insertelement <4 x float> undef, float %71, i32 0
  %107 = insertelement <4 x float> %106, float %71, i32 1
  %108 = insertelement <4 x float> %107, float %95, i32 2
  %109 = insertelement <4 x float> %108, float %95, i32 3
  %110 = insertelement <4 x float> undef, float %56, i32 0
  %111 = insertelement <4 x float> %110, float %59, i32 1
  %112 = insertelement <4 x float> %111, float %52, i32 2
  %113 = insertelement <4 x float> %112, float %56, i32 3
  %114 = fmul <4 x float> %109, %113
  %115 = fadd <4 x float> %105, %114
  %116 = insertelement <4 x float> undef, float %82, i32 0
  %117 = insertelement <4 x float> %116, float %82, i32 1
  %118 = insertelement <4 x float> %117, float %96, i32 2
  %119 = insertelement <4 x float> %118, float %96, i32 3
  %120 = insertelement <4 x float> undef, float %57, i32 0
  %121 = insertelement <4 x float> %120, float %60, i32 1
  %122 = insertelement <4 x float> %121, float %54, i32 2
  %123 = insertelement <4 x float> %122, float %57, i32 3
  %124 = fmul <4 x float> %119, %123
  %125 = fadd <4 x float> %115, %124
  %126 = bitcast float* %26 to <4 x float>*
  store <4 x float> %125, <4 x float>* %126, align 4, !tbaa !14
  %127 = fmul float %94, %58
  %128 = fmul float %95, %59
  %129 = fadd float %127, %128
  %130 = fmul float %96, %60
  %131 = fadd float %129, %130
  store float %131, float* %30, align 8, !tbaa !14
  %132 = load double*** @print_orires_log.M, align 8, !tbaa !41
  br label %.preheader

.preheader:                                       ; preds = %140, %46
  %indvars.iv10 = phi i64 [ 0, %46 ], [ %indvars.iv.next11, %140 ]
  %133 = getelementptr inbounds double** %132, i64 %indvars.iv10
  %134 = load double** %133, align 8, !tbaa !41
  br label %135

; <label>:135                                     ; preds = %135, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %135 ]
  %136 = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %137 = load float* %136, align 4, !tbaa !14
  %138 = fpext float %137 to double
  %139 = getelementptr inbounds double* %134, i64 %indvars.iv
  store double %138, double* %139, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %140, label %135

; <label>:140                                     ; preds = %135
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 3
  br i1 %exitcond12, label %141, label %.preheader

; <label>:141                                     ; preds = %140
  %142 = load double** @print_orires_log.eig, align 8, !tbaa !41
  %143 = load double*** @print_orires_log.v, align 8, !tbaa !41
  call void @jacobi(double** %132, i32 3, double* %142, double** %143, i32* %nrot) #8
  %144 = load double** @print_orires_log.eig, align 8, !tbaa !41
  br label %145

; <label>:145                                     ; preds = %145, %141
  %indvars.iv13 = phi i64 [ 1, %141 ], [ %indvars.iv.next14, %145 ]
  %j.15 = phi i32 [ 0, %141 ], [ %j.2, %145 ]
  %146 = getelementptr inbounds double* %144, i64 %indvars.iv13
  %147 = load double* %146, align 8, !tbaa !16
  %148 = sext i32 %j.15 to i64
  %149 = getelementptr inbounds double* %144, i64 %148
  %150 = load double* %149, align 8, !tbaa !16
  %151 = insertelement <2 x double> undef, double %147, i32 0
  %152 = insertelement <2 x double> %151, double %150, i32 1
  %153 = fptrunc <2 x double> %152 to <2 x float>
  %154 = fmul <2 x float> %153, %153
  %155 = extractelement <2 x float> %154, i32 0
  %156 = extractelement <2 x float> %154, i32 1
  %157 = fcmp ogt float %155, %156
  %158 = trunc i64 %indvars.iv13 to i32
  %j.2 = select i1 %157, i32 %158, i32 %j.15
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond15, label %159, label %145

; <label>:159                                     ; preds = %145
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %160 = trunc i64 %indvars.iv.next20 to i32
  %161 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0), i32 %160) #8
  %162 = sext i32 %j.2 to i64
  %163 = load double** @print_orires_log.eig, align 8, !tbaa !41
  %164 = getelementptr inbounds double* %163, i64 %162
  %165 = load double* %164, align 8, !tbaa !16
  %166 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0), double %165) #8
  br label %167

; <label>:167                                     ; preds = %177, %159
  %indvars.iv16 = phi i64 [ 0, %159 ], [ %indvars.iv.next17, %177 ]
  %168 = load double** @print_orires_log.eig, align 8, !tbaa !41
  %169 = getelementptr inbounds double* %168, i64 %162
  %170 = load double* %169, align 8, !tbaa !16
  %171 = call double @fabs(double %170) #10
  %172 = fcmp ogt double %171, 1.200000e-38
  br i1 %172, label %173, label %177

; <label>:173                                     ; preds = %167
  %174 = getelementptr inbounds double* %168, i64 %indvars.iv16
  %175 = load double* %174, align 8, !tbaa !16
  %176 = fdiv double %175, %170
  br label %177

; <label>:177                                     ; preds = %167, %173
  %178 = phi double [ %176, %173 ], [ 0.000000e+00, %167 ]
  %179 = load double*** @print_orires_log.v, align 8, !tbaa !41
  %180 = load double** %179, align 8, !tbaa !41
  %181 = getelementptr inbounds double* %180, i64 %indvars.iv16
  %182 = load double* %181, align 8, !tbaa !16
  %183 = getelementptr inbounds double** %179, i64 1
  %184 = load double** %183, align 8, !tbaa !41
  %185 = getelementptr inbounds double* %184, i64 %indvars.iv16
  %186 = load double* %185, align 8, !tbaa !16
  %187 = getelementptr inbounds double** %179, i64 2
  %188 = load double** %187, align 8, !tbaa !41
  %189 = getelementptr inbounds double* %188, i64 %indvars.iv16
  %190 = load double* %189, align 8, !tbaa !16
  %191 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str29, i64 0, i64 0), double %178, double %182, double %186, double %190) #8
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3
  br i1 %exitcond18, label %192, label %167

; <label>:192                                     ; preds = %177
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %193 = load i32* %5, align 4, !tbaa !23
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %indvars.iv.next20, %194
  br i1 %195, label %46, label %._crit_edge

._crit_edge:                                      ; preds = %192, %.preheader1
  call void @llvm.lifetime.end(i64 36, i8* %2) #7
  call void @llvm.lifetime.end(i64 36, i8* %1) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mmul([3 x float]* nocapture readonly %a, [3 x float]* nocapture readonly %b, [3 x float]* nocapture %dest) #4 {
  %1 = getelementptr inbounds [3 x float]* %a, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds [3 x float]* %b, i64 0, i64 0
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %2, %4
  %6 = getelementptr inbounds [3 x float]* %a, i64 0, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds [3 x float]* %b, i64 1, i64 0
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fmul float %7, %9
  %11 = fadd float %5, %10
  %12 = getelementptr inbounds [3 x float]* %a, i64 0, i64 2
  %13 = load float* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds [3 x float]* %b, i64 2, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fmul float %13, %15
  %17 = fadd float %11, %16
  %18 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 0
  store float %17, float* %18, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %a, i64 1, i64 0
  %20 = load float* %19, align 4, !tbaa !14
  %21 = load float* %3, align 4, !tbaa !14
  %22 = fmul float %20, %21
  %23 = getelementptr inbounds [3 x float]* %a, i64 1, i64 1
  %24 = load float* %23, align 4, !tbaa !14
  %25 = load float* %8, align 4, !tbaa !14
  %26 = fmul float %24, %25
  %27 = fadd float %22, %26
  %28 = getelementptr inbounds [3 x float]* %a, i64 1, i64 2
  %29 = load float* %28, align 4, !tbaa !14
  %30 = load float* %14, align 4, !tbaa !14
  %31 = fmul float %29, %30
  %32 = fadd float %27, %31
  %33 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 0
  store float %32, float* %33, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %a, i64 2, i64 0
  %35 = load float* %34, align 4, !tbaa !14
  %36 = load float* %3, align 4, !tbaa !14
  %37 = fmul float %35, %36
  %38 = getelementptr inbounds [3 x float]* %a, i64 2, i64 1
  %39 = load float* %38, align 4, !tbaa !14
  %40 = load float* %8, align 4, !tbaa !14
  %41 = fmul float %39, %40
  %42 = fadd float %37, %41
  %43 = getelementptr inbounds [3 x float]* %a, i64 2, i64 2
  %44 = load float* %43, align 4, !tbaa !14
  %45 = load float* %14, align 4, !tbaa !14
  %46 = fmul float %44, %45
  %47 = fadd float %42, %46
  %48 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 0
  store float %47, float* %48, align 4, !tbaa !14
  %49 = load float* %1, align 4, !tbaa !14
  %50 = getelementptr inbounds [3 x float]* %b, i64 0, i64 1
  %51 = load float* %50, align 4, !tbaa !14
  %52 = fmul float %49, %51
  %53 = load float* %6, align 4, !tbaa !14
  %54 = getelementptr inbounds [3 x float]* %b, i64 1, i64 1
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fmul float %53, %55
  %57 = fadd float %52, %56
  %58 = load float* %12, align 4, !tbaa !14
  %59 = getelementptr inbounds [3 x float]* %b, i64 2, i64 1
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fmul float %58, %60
  %62 = fadd float %57, %61
  %63 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 1
  store float %62, float* %63, align 4, !tbaa !14
  %64 = load float* %19, align 4, !tbaa !14
  %65 = load float* %50, align 4, !tbaa !14
  %66 = fmul float %64, %65
  %67 = load float* %23, align 4, !tbaa !14
  %68 = load float* %54, align 4, !tbaa !14
  %69 = fmul float %67, %68
  %70 = fadd float %66, %69
  %71 = load float* %28, align 4, !tbaa !14
  %72 = load float* %59, align 4, !tbaa !14
  %73 = fmul float %71, %72
  %74 = fadd float %70, %73
  %75 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 1
  store float %74, float* %75, align 4, !tbaa !14
  %76 = load float* %34, align 4, !tbaa !14
  %77 = load float* %50, align 4, !tbaa !14
  %78 = fmul float %76, %77
  %79 = load float* %38, align 4, !tbaa !14
  %80 = load float* %54, align 4, !tbaa !14
  %81 = fmul float %79, %80
  %82 = fadd float %78, %81
  %83 = load float* %43, align 4, !tbaa !14
  %84 = load float* %59, align 4, !tbaa !14
  %85 = fmul float %83, %84
  %86 = fadd float %82, %85
  %87 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 1
  store float %86, float* %87, align 4, !tbaa !14
  %88 = load float* %1, align 4, !tbaa !14
  %89 = getelementptr inbounds [3 x float]* %b, i64 0, i64 2
  %90 = load float* %89, align 4, !tbaa !14
  %91 = fmul float %88, %90
  %92 = load float* %6, align 4, !tbaa !14
  %93 = getelementptr inbounds [3 x float]* %b, i64 1, i64 2
  %94 = load float* %93, align 4, !tbaa !14
  %95 = fmul float %92, %94
  %96 = fadd float %91, %95
  %97 = load float* %12, align 4, !tbaa !14
  %98 = getelementptr inbounds [3 x float]* %b, i64 2, i64 2
  %99 = load float* %98, align 4, !tbaa !14
  %100 = fmul float %97, %99
  %101 = fadd float %96, %100
  %102 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 2
  store float %101, float* %102, align 4, !tbaa !14
  %103 = load float* %19, align 4, !tbaa !14
  %104 = load float* %89, align 4, !tbaa !14
  %105 = fmul float %103, %104
  %106 = load float* %23, align 4, !tbaa !14
  %107 = load float* %93, align 4, !tbaa !14
  %108 = fmul float %106, %107
  %109 = fadd float %105, %108
  %110 = load float* %28, align 4, !tbaa !14
  %111 = load float* %98, align 4, !tbaa !14
  %112 = fmul float %110, %111
  %113 = fadd float %109, %112
  %114 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 2
  store float %113, float* %114, align 4, !tbaa !14
  %115 = load float* %34, align 4, !tbaa !14
  %116 = load float* %89, align 4, !tbaa !14
  %117 = fmul float %115, %116
  %118 = load float* %38, align 4, !tbaa !14
  %119 = load float* %93, align 4, !tbaa !14
  %120 = fmul float %118, %119
  %121 = fadd float %117, %120
  %122 = load float* %43, align 4, !tbaa !14
  %123 = load float* %98, align 4, !tbaa !14
  %124 = fmul float %122, %123
  %125 = fadd float %121, %124
  %126 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 2
  store float %125, float* %126, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_orires_dev(%struct.t_commrec* %mcr, i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, %struct.t_mdatoms* nocapture readonly %md, [3 x float]* nocapture readonly %x, %struct.t_fcdata* %fcd) #4 {
  %R = alloca [3 x [3 x float]], align 16
  %TMP = alloca [3 x [3 x float]], align 16
  %com = alloca [3 x float], align 4
  %1 = bitcast [3 x [3 x float]]* %R to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #7
  %2 = bitcast [3 x [3 x float]]* %TMP to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #7
  %3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  %4 = load float* %3, align 4, !tbaa !61
  %fabsf = tail call float @fabsf(float %4) #5
  %5 = fpext float %fabsf to double
  %6 = fcmp ogt double %5, 1.200000e-38
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 2
  %8 = load float* %7, align 4, !tbaa !27
  %9 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %10 = load [3 x [3 x float]]** %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 13
  %12 = load [5 x float]** %11, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  %14 = load [5 x float]** %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  %16 = load [5 x float]** %15, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 21
  %18 = load float**** %17, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 20
  %20 = load [5 x float]** %19, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 6
  %22 = load i32* %21, align 4, !tbaa !42
  %23 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 8
  %24 = load float** %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 9
  %26 = load [3 x float]** %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 10
  %28 = load [3 x float]** %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  %30 = load float* %29, align 4, !tbaa !28
  %31 = fmul float %4, %30
  store float %31, float* %29, align 4, !tbaa !28
  %32 = icmp ne %struct.t_commrec* %mcr, null
  br i1 %32, label %33, label %39

; <label>:33                                      ; preds = %0
  %34 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %35 = load i32* %34, align 4, !tbaa !55
  %36 = sitofp i32 %35 to double
  %37 = fdiv double 1.000000e+00, %36
  %38 = fptrunc double %37 to float
  br label %39

; <label>:39                                      ; preds = %0, %33
  %invn.0 = phi float [ %38, %33 ], [ 1.000000e+00, %0 ]
  %40 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %41 = load i32* %40, align 4, !tbaa !43
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %.lr.ph59, label %._crit_edge143

._crit_edge143:                                   ; preds = %39
  %.pre144 = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %.pre145 = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %.pre147 = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  br label %80

.lr.ph59:                                         ; preds = %39
  %43 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %44 = load i16** %43, align 8, !tbaa !45
  %45 = sext i32 %41 to i64
  br label %46

; <label>:46                                      ; preds = %.lr.ph59, %78
  %indvars.iv121 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next122, %78 ]
  %j.056 = phi i32 [ 0, %.lr.ph59 ], [ %j.1, %78 ]
  %47 = getelementptr inbounds i16* %44, i64 %indvars.iv121
  %48 = load i16* %47, align 2, !tbaa !46
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %78

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 0
  %52 = sext i32 %j.056 to i64
  %53 = getelementptr inbounds [3 x float]* %28, i64 %52, i64 0
  %54 = bitcast float* %51 to i32*
  %55 = load i32* %54, align 4, !tbaa !14
  %56 = bitcast float* %53 to i32*
  store i32 %55, i32* %56, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 1
  %58 = bitcast float* %57 to i32*
  %59 = load i32* %58, align 4, !tbaa !14
  %60 = getelementptr inbounds [3 x float]* %28, i64 %52, i64 1
  %61 = bitcast float* %60 to i32*
  store i32 %59, i32* %61, align 4, !tbaa !14
  %62 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv121, i64 2
  %63 = bitcast float* %62 to i32*
  %64 = load i32* %63, align 4, !tbaa !14
  %65 = getelementptr inbounds [3 x float]* %28, i64 %52, i64 2
  %66 = bitcast float* %65 to i32*
  store i32 %64, i32* %66, align 4, !tbaa !14
  %67 = getelementptr inbounds float* %24, i64 %52
  %68 = load float* %67, align 4, !tbaa !14
  br label %69

; <label>:69                                      ; preds = %69, %50
  %indvars.iv118 = phi i64 [ 0, %50 ], [ %indvars.iv.next119, %69 ]
  %70 = getelementptr inbounds [3 x float]* %26, i64 %52, i64 %indvars.iv118
  %71 = load float* %70, align 4, !tbaa !14
  %72 = fmul float %68, %71
  %73 = getelementptr inbounds [3 x float]* %com, i64 0, i64 %indvars.iv118
  %74 = load float* %73, align 4, !tbaa !14
  %75 = fadd float %74, %72
  store float %75, float* %73, align 4, !tbaa !14
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond120 = icmp eq i64 %indvars.iv.next119, 3
  br i1 %exitcond120, label %76, label %69

; <label>:76                                      ; preds = %69
  %77 = add nsw i32 %j.056, 1
  br label %78

; <label>:78                                      ; preds = %46, %76
  %j.1 = phi i32 [ %77, %76 ], [ %j.056, %46 ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %79 = icmp slt i64 %indvars.iv.next122, %45
  br i1 %79, label %46, label %._crit_edge60

._crit_edge60:                                    ; preds = %78
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert123 = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %.pre124 = load float* %.phi.trans.insert123, align 4, !tbaa !14
  %.phi.trans.insert125 = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  %.pre126 = load float* %.phi.trans.insert125, align 4, !tbaa !14
  br label %80

; <label>:80                                      ; preds = %._crit_edge143, %._crit_edge60
  %.pre-phi148 = phi float* [ %.pre147, %._crit_edge143 ], [ %.phi.trans.insert125, %._crit_edge60 ]
  %.pre-phi146 = phi float* [ %.pre145, %._crit_edge143 ], [ %.phi.trans.insert123, %._crit_edge60 ]
  %.pre-phi = phi float* [ %.pre144, %._crit_edge143 ], [ %.phi.trans.insert, %._crit_edge60 ]
  %81 = phi float [ undef, %._crit_edge143 ], [ %.pre126, %._crit_edge60 ]
  %82 = phi float [ undef, %._crit_edge143 ], [ %.pre124, %._crit_edge60 ]
  %83 = phi float [ undef, %._crit_edge143 ], [ %.pre, %._crit_edge60 ]
  %84 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 7
  %85 = load float* %84, align 4, !tbaa !54
  %86 = fmul float %85, %83
  store float %86, float* %.pre-phi, align 4, !tbaa !14
  %87 = fmul float %85, %82
  store float %87, float* %.pre-phi146, align 4, !tbaa !14
  %88 = fmul float %85, %81
  store float %88, float* %.pre-phi148, align 4, !tbaa !14
  %89 = icmp sgt i32 %22, 0
  br i1 %89, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %80
  %90 = add i32 %22, -1
  br label %91

; <label>:91                                      ; preds = %91, %.lr.ph53
  %indvars.iv114 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next115, %91 ]
  %92 = getelementptr inbounds [3 x float]* %28, i64 %indvars.iv114, i64 0
  %93 = load float* %92, align 4, !tbaa !14
  %94 = fsub float %93, %86
  %95 = getelementptr inbounds [3 x float]* %28, i64 %indvars.iv114, i64 1
  %96 = load float* %95, align 4, !tbaa !14
  %97 = fsub float %96, %87
  %98 = getelementptr inbounds [3 x float]* %28, i64 %indvars.iv114, i64 2
  %99 = load float* %98, align 4, !tbaa !14
  %100 = fsub float %99, %88
  store float %94, float* %92, align 4, !tbaa !14
  store float %97, float* %95, align 4, !tbaa !14
  store float %100, float* %98, align 4, !tbaa !14
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %lftr.wideiv116 = trunc i64 %indvars.iv114 to i32
  %exitcond117 = icmp eq i32 %lftr.wideiv116, %90
  br i1 %exitcond117, label %._crit_edge54, label %91

._crit_edge54:                                    ; preds = %91, %80
  %101 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0
  call void @calc_fit_R(i32 %22, float* %24, [3 x float]* %26, [3 x float]* %28, [3 x float]* %101) #8
  %102 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0
  %103 = bitcast [3 x [3 x float]]* %R to i64*
  %104 = load i64* %103, align 16
  %105 = trunc i64 %104 to i32
  %106 = bitcast [3 x float]* %102 to i32*
  store i32 %105, i32* %106, align 4, !tbaa !14
  %107 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 1
  %108 = lshr i64 %104, 32
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 1
  %111 = bitcast float* %110 to i32*
  store i32 %109, i32* %111, align 4, !tbaa !14
  %112 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 2
  %113 = bitcast float* %112 to i64*
  %114 = load i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 2
  %117 = bitcast float* %116 to i32*
  store i32 %115, i32* %117, align 4, !tbaa !14
  %118 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 0
  %119 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 0
  %120 = lshr i64 %114, 32
  %121 = trunc i64 %120 to i32
  %122 = bitcast float* %119 to i32*
  store i32 %121, i32* %122, align 4, !tbaa !14
  %123 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 1
  %124 = bitcast float* %123 to i32*
  %125 = load i32* %124, align 4, !tbaa !14
  %126 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 1
  %127 = bitcast float* %126 to i32*
  store i32 %125, i32* %127, align 4, !tbaa !14
  %128 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 2
  %129 = bitcast float* %128 to i32*
  %130 = load i32* %129, align 4, !tbaa !14
  %131 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 2
  %132 = bitcast float* %131 to i32*
  store i32 %130, i32* %132, align 4, !tbaa !14
  %133 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 0
  %134 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 0
  %135 = bitcast float* %133 to i64*
  %136 = load i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = bitcast float* %134 to i32*
  store i32 %137, i32* %138, align 4, !tbaa !14
  %139 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 1
  %140 = lshr i64 %136, 32
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 1
  %143 = bitcast float* %142 to i32*
  store i32 %141, i32* %143, align 4, !tbaa !14
  %144 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 2
  %145 = bitcast float* %144 to i32*
  %146 = load i32* %145, align 8, !tbaa !14
  %147 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 2
  %148 = bitcast float* %147 to i32*
  store i32 %146, i32* %148, align 4, !tbaa !14
  %149 = icmp sgt i32 %nfa, 0
  br i1 %149, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %._crit_edge54
  %150 = bitcast i32 %146 to float
  %151 = bitcast i32 %141 to float
  %152 = bitcast i32 %137 to float
  %153 = bitcast i32 %130 to float
  %154 = bitcast i32 %125 to float
  %155 = bitcast i32 %121 to float
  %156 = bitcast i32 %115 to float
  %157 = bitcast i32 %109 to float
  %158 = bitcast i32 %105 to float
  %159 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 0
  %160 = sext i32 %nfa to i64
  br label %161

; <label>:161                                     ; preds = %._crit_edge127, %.lr.ph49
  %162 = phi float [ %150, %.lr.ph49 ], [ %.pre136, %._crit_edge127 ]
  %163 = phi float [ %151, %.lr.ph49 ], [ %.pre135, %._crit_edge127 ]
  %164 = phi float [ %152, %.lr.ph49 ], [ %.pre134, %._crit_edge127 ]
  %165 = phi float [ %153, %.lr.ph49 ], [ %.pre133, %._crit_edge127 ]
  %166 = phi float [ %154, %.lr.ph49 ], [ %.pre132, %._crit_edge127 ]
  %167 = phi float [ %155, %.lr.ph49 ], [ %.pre131, %._crit_edge127 ]
  %168 = phi float [ %156, %.lr.ph49 ], [ %.pre130, %._crit_edge127 ]
  %169 = phi float [ %157, %.lr.ph49 ], [ %.pre129, %._crit_edge127 ]
  %170 = phi float [ %158, %.lr.ph49 ], [ %.pre128, %._crit_edge127 ]
  %indvars.iv112 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next113, %._crit_edge127 ]
  %indvars.iv110 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next111, %._crit_edge127 ]
  %171 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv110
  %172 = load i32* %171, align 4, !tbaa !30
  %173 = add nuw nsw i64 %indvars.iv110, 1
  %174 = getelementptr inbounds i32* %forceatoms, i64 %173
  %175 = load i32* %174, align 4, !tbaa !30
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x float]* %x, i64 %176, i64 0
  %178 = add nuw nsw i64 %indvars.iv110, 2
  %179 = getelementptr inbounds i32* %forceatoms, i64 %178
  %180 = load i32* %179, align 4, !tbaa !30
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x float]* %x, i64 %181, i64 0
  %183 = load float* %177, align 4, !tbaa !14
  %184 = load float* %182, align 4, !tbaa !14
  %185 = fsub float %183, %184
  %186 = getelementptr inbounds [3 x float]* %x, i64 %176, i64 1
  %187 = load float* %186, align 4, !tbaa !14
  %188 = getelementptr inbounds [3 x float]* %x, i64 %181, i64 1
  %189 = load float* %188, align 4, !tbaa !14
  %190 = fsub float %187, %189
  %191 = getelementptr inbounds [3 x float]* %x, i64 %176, i64 2
  %192 = load float* %191, align 4, !tbaa !14
  %193 = getelementptr inbounds [3 x float]* %x, i64 %181, i64 2
  %194 = load float* %193, align 4, !tbaa !14
  %195 = fsub float %192, %194
  %196 = fmul float %185, %170
  %197 = fmul float %190, %169
  %198 = fadd float %196, %197
  %199 = fmul float %195, %168
  %200 = fadd float %198, %199
  %201 = fmul float %185, %167
  %202 = fmul float %190, %166
  %203 = fadd float %201, %202
  %204 = fmul float %195, %165
  %205 = fadd float %203, %204
  %206 = fmul float %185, %164
  %207 = fmul float %190, %163
  %208 = fadd float %206, %207
  %209 = fmul float %195, %162
  %210 = fadd float %208, %209
  %211 = fmul float %200, %200
  %212 = fmul float %205, %205
  %213 = fadd float %211, %212
  %214 = fmul float %210, %210
  %215 = fadd float %213, %214
  %216 = fpext float %215 to double
  %217 = call double @sqrt(double %216) #10
  %218 = fdiv double 1.000000e+00, %217
  %219 = fptrunc double %218 to float
  %220 = sext i32 %172 to i64
  %221 = getelementptr inbounds %union.t_iparams* %ip, i64 %220, i32 0, i32 3
  %222 = load float* %221, align 4, !tbaa !62
  %223 = fmul float %222, %219
  %224 = fmul float %219, %223
  %225 = fmul float %224, 3.000000e+00
  %226 = getelementptr inbounds %union.t_iparams* %ip, i64 %220, i32 0, i32 1
  %227 = bitcast float* %226 to i32*
  %228 = load i32* %227, align 4, !tbaa !63
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %161, %.lr.ph42
  %i.140 = phi i32 [ %231, %.lr.ph42 ], [ 0, %161 ]
  %pfac.039 = phi float [ %230, %.lr.ph42 ], [ %225, %161 ]
  %230 = fmul float %219, %pfac.039
  %231 = add nuw nsw i32 %i.140, 1
  %232 = icmp slt i32 %231, %228
  br i1 %232, label %.lr.ph42, label %._crit_edge43

._crit_edge43:                                    ; preds = %.lr.ph42, %161
  %pfac.0.lcssa = phi float [ %225, %161 ], [ %230, %.lr.ph42 ]
  %233 = fmul float %200, 2.000000e+00
  %234 = fmul float %200, %233
  %235 = fadd float %234, %212
  %236 = fsub float %235, %215
  %237 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv112, i64 0
  %238 = fmul float %233, %205
  %239 = fmul float %233, %210
  %240 = fmul float %205, 2.000000e+00
  %241 = fmul float %205, %240
  %242 = fadd float %211, %241
  %243 = fsub float %242, %215
  %244 = insertelement <4 x float> undef, float %236, i32 0
  %245 = insertelement <4 x float> %244, float %238, i32 1
  %246 = insertelement <4 x float> %245, float %239, i32 2
  %247 = insertelement <4 x float> %246, float %243, i32 3
  %248 = insertelement <4 x float> undef, float %pfac.0.lcssa, i32 0
  %249 = insertelement <4 x float> %248, float %pfac.0.lcssa, i32 1
  %250 = insertelement <4 x float> %249, float %pfac.0.lcssa, i32 2
  %251 = insertelement <4 x float> %250, float %pfac.0.lcssa, i32 3
  %252 = fmul <4 x float> %247, %251
  %253 = bitcast float* %237 to <4 x float>*
  store <4 x float> %252, <4 x float>* %253, align 4, !tbaa !14
  %254 = fmul float %240, %210
  %255 = fmul float %254, %pfac.0.lcssa
  %256 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv112, i64 4
  store float %255, float* %256, align 4, !tbaa !14
  br i1 %32, label %.preheader6.preheader, label %.loopexit7

.preheader6.preheader:                            ; preds = %._crit_edge43
  %257 = extractelement <4 x float> %252, i32 0
  %258 = fmul float %invn.0, %257
  %259 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv112, i64 0
  store float %258, float* %259, align 4, !tbaa !14
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.preheader6.preheader, %._crit_edge137
  %indvars.iv.next108157 = phi i64 [ 1, %.preheader6.preheader ], [ %indvars.iv.next108, %._crit_edge137 ]
  %.phi.trans.insert138 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv112, i64 %indvars.iv.next108157
  %.pre139 = load float* %.phi.trans.insert138, align 4, !tbaa !14
  %260 = fmul float %invn.0, %.pre139
  %261 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv112, i64 %indvars.iv.next108157
  store float %260, float* %261, align 4, !tbaa !14
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv.next108157, 1
  %exitcond109 = icmp eq i64 %indvars.iv.next108, 5
  br i1 %exitcond109, label %.loopexit7, label %._crit_edge137

.loopexit7:                                       ; preds = %._crit_edge137, %._crit_edge43
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 3
  %262 = icmp slt i64 %indvars.iv.next111, %160
  br i1 %262, label %._crit_edge127, label %._crit_edge50

._crit_edge127:                                   ; preds = %.loopexit7
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %.pre128 = load float* %159, align 16, !tbaa !14
  %.pre129 = load float* %107, align 4, !tbaa !14
  %.pre130 = load float* %112, align 8, !tbaa !14
  %.pre131 = load float* %118, align 4, !tbaa !14
  %.pre132 = load float* %123, align 4, !tbaa !14
  %.pre133 = load float* %128, align 4, !tbaa !14
  %.pre134 = load float* %133, align 8, !tbaa !14
  %.pre135 = load float* %139, align 4, !tbaa !14
  %.pre136 = load float* %144, align 8, !tbaa !14
  br label %161

._crit_edge50:                                    ; preds = %.loopexit7, %._crit_edge54
  br i1 %32, label %263, label %268

; <label>:263                                     ; preds = %._crit_edge50
  %264 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %265 = load i32* %264, align 4, !tbaa !29
  %266 = mul nsw i32 %265, 5
  %267 = getelementptr inbounds [5 x float]* %14, i64 0, i64 0
  call void @gmx_sumf(i32 %266, float* %267, %struct.t_commrec* %mcr) #8
  br label %268

; <label>:268                                     ; preds = %263, %._crit_edge50
  %269 = load float* %29, align 4, !tbaa !28
  %270 = fpext float %269 to double
  %271 = fsub double 1.000000e+00, %270
  %272 = fdiv double 1.000000e+00, %271
  %273 = fptrunc double %272 to float
  %274 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  %275 = load i32* %274, align 4, !tbaa !23
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %.preheader5.lr.ph, label %.preheader4

.preheader5.lr.ph:                                ; preds = %268
  %277 = sext i32 %275 to i64
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5.lr.ph, %288
  %indvars.iv105 = phi i64 [ 0, %.preheader5.lr.ph ], [ %indvars.iv.next106, %288 ]
  %278 = getelementptr inbounds float*** %18, i64 %indvars.iv105
  br label %280

.preheader4:                                      ; preds = %288, %268
  br i1 %149, label %.lr.ph31, label %.preheader2

.lr.ph31:                                         ; preds = %.preheader4
  %279 = sext i32 %nfa to i64
  br label %293

; <label>:280                                     ; preds = %280, %.preheader5
  %indvars.iv101 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next102, %280 ]
  %281 = getelementptr inbounds [5 x float]* %20, i64 %indvars.iv105, i64 %indvars.iv101
  store float 0.000000e+00, float* %281, align 4, !tbaa !14
  %282 = shl i64 %indvars.iv101, 2
  %283 = add nuw nsw i64 %282, 4
  %284 = load float*** %278, align 8, !tbaa !41
  %285 = getelementptr inbounds float** %284, i64 %indvars.iv101
  %286 = bitcast float** %285 to i8**
  %287 = load i8** %286, align 8, !tbaa !41
  call void @llvm.memset.p0i8.i64(i8* %287, i8 0, i64 %283, i32 4, i1 false)
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond103 = icmp eq i64 %indvars.iv.next102, 5
  br i1 %exitcond103, label %288, label %280

; <label>:288                                     ; preds = %280
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %289 = icmp slt i64 %indvars.iv.next106, %277
  br i1 %289, label %.preheader5, label %.preheader4

.preheader2:                                      ; preds = %332, %.preheader4
  %290 = load i32* %274, align 4, !tbaa !23
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %.preheader1.lr.ph, label %.preheader

.preheader1.lr.ph:                                ; preds = %.preheader2
  %292 = fmul float %273, %273
  br label %.preheader1

; <label>:293                                     ; preds = %.lr.ph31, %332
  %indvars.iv93 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next94, %332 ]
  %indvars.iv91 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next92, %332 ]
  br i1 %6, label %.preheader3, label %.loopexit

.preheader3:                                      ; preds = %293, %.preheader3
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.preheader3 ], [ 0, %293 ]
  %294 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv93, i64 %indvars.iv79
  %295 = load float* %294, align 4, !tbaa !14
  %296 = fmul float %4, %295
  %297 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv93, i64 %indvars.iv79
  %298 = load float* %297, align 4, !tbaa !14
  %299 = fmul float %8, %298
  %300 = fadd float %296, %299
  store float %300, float* %294, align 4, !tbaa !14
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond81 = icmp eq i64 %indvars.iv.next80, 5
  br i1 %exitcond81, label %.loopexit, label %.preheader3

.loopexit:                                        ; preds = %.preheader3, %293
  %301 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv91
  %302 = load i32* %301, align 4, !tbaa !30
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %union.t_iparams* %ip, i64 %303
  %305 = bitcast %union.t_iparams* %304 to i32*
  %306 = load i32* %305, align 4, !tbaa !31
  %307 = getelementptr inbounds %union.t_iparams* %ip, i64 %303, i32 0, i32 5
  %308 = load float* %307, align 4, !tbaa !64
  %309 = getelementptr inbounds %union.t_iparams* %ip, i64 %303, i32 0, i32 4
  %310 = sext i32 %306 to i64
  %311 = getelementptr inbounds float*** %18, i64 %310
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.loopexit, %._crit_edge27
  %indvars.iv88 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next89, %._crit_edge27 ]
  %indvars.iv84 = phi i32 [ 1, %.loopexit ], [ %indvars.iv.next85, %._crit_edge27 ]
  %312 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv93, i64 %indvars.iv88
  %313 = load float* %312, align 4, !tbaa !14
  %314 = load float* %309, align 4, !tbaa !65
  %315 = fmul float %313, %314
  %316 = fmul float %308, %315
  %317 = getelementptr inbounds [5 x float]* %20, i64 %310, i64 %indvars.iv88
  %318 = load float* %317, align 4, !tbaa !14
  %319 = fadd float %318, %316
  store float %319, float* %317, align 4, !tbaa !14
  %320 = load float*** %311, align 8, !tbaa !41
  %321 = getelementptr inbounds float** %320, i64 %indvars.iv88
  %322 = load float** %321, align 8, !tbaa !41
  br label %323

; <label>:323                                     ; preds = %323, %.lr.ph26
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %323 ], [ 0, %.lr.ph26 ]
  %324 = load float* %312, align 4, !tbaa !14
  %325 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv93, i64 %indvars.iv82
  %326 = load float* %325, align 4, !tbaa !14
  %327 = fmul float %324, %326
  %328 = fmul float %308, %327
  %329 = getelementptr inbounds float* %322, i64 %indvars.iv82
  %330 = load float* %329, align 4, !tbaa !14
  %331 = fadd float %328, %330
  store float %331, float* %329, align 4, !tbaa !14
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next83 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %indvars.iv84
  br i1 %exitcond87, label %._crit_edge27, label %323

._crit_edge27:                                    ; preds = %323
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %indvars.iv.next85 = add nuw nsw i32 %indvars.iv84, 1
  %exitcond90 = icmp eq i64 %indvars.iv.next89, 5
  br i1 %exitcond90, label %332, label %.lr.ph26

; <label>:332                                     ; preds = %._crit_edge27
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 3
  %333 = icmp slt i64 %indvars.iv.next92, %279
  br i1 %333, label %293, label %.preheader2

.preheader1:                                      ; preds = %.preheader1.lr.ph, %433
  %indvars.iv77 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next78, %433 ]
  %334 = getelementptr inbounds float*** %18, i64 %indvars.iv77
  %335 = load float*** %334, align 8, !tbaa !41
  br label %343

.preheader:                                       ; preds = %433, %.preheader2
  %336 = phi i32 [ %290, %.preheader2 ], [ %440, %433 ]
  br i1 %149, label %.lr.ph13, label %._crit_edge14

.lr.ph13:                                         ; preds = %.preheader
  %337 = fmul float %273, 0x3FE5555560000000
  %338 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %339 = load float** %338, align 8, !tbaa !38
  %340 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %341 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %342 = sext i32 %nfa to i64
  br label %443

; <label>:343                                     ; preds = %._crit_edge19, %.preheader1
  %indvars.iv71 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next72, %._crit_edge19 ]
  %indvars.iv69 = phi i32 [ -1, %.preheader1 ], [ %indvars.iv.next70, %._crit_edge19 ]
  %344 = getelementptr inbounds [5 x float]* %20, i64 %indvars.iv77, i64 %indvars.iv71
  %345 = load float* %344, align 4, !tbaa !14
  %346 = fmul float %273, %345
  store float %346, float* %344, align 4, !tbaa !14
  %347 = getelementptr inbounds float** %335, i64 %indvars.iv71
  %348 = load float** %347, align 8, !tbaa !41
  %349 = getelementptr inbounds float* %348, i64 %indvars.iv71
  %350 = load float* %349, align 4, !tbaa !14
  %351 = fmul float %292, %350
  store float %351, float* %349, align 4, !tbaa !14
  %352 = icmp sgt i64 %indvars.iv71, 0
  br i1 %352, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %343, %.lr.ph18
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %.lr.ph18 ], [ 0, %343 ]
  %353 = getelementptr inbounds float* %348, i64 %indvars.iv67
  %354 = load float* %353, align 4, !tbaa !14
  %355 = fmul float %292, %354
  store float %355, float* %353, align 4, !tbaa !14
  %356 = getelementptr inbounds float** %335, i64 %indvars.iv67
  %357 = load float** %356, align 8, !tbaa !41
  %358 = getelementptr inbounds float* %357, i64 %indvars.iv71
  store float %355, float* %358, align 4, !tbaa !14
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %lftr.wideiv = trunc i64 %indvars.iv67 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv69
  br i1 %exitcond, label %._crit_edge19, label %.lr.ph18

._crit_edge19:                                    ; preds = %.lr.ph18, %343
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %indvars.iv.next70 = add nsw i32 %indvars.iv69, 1
  %exitcond73 = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond73, label %359, label %343

; <label>:359                                     ; preds = %._crit_edge19
  %360 = call i32 @m_inv_gen(float** %335, i32 5, float** %335) #8
  %361 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 0, i64 0
  store float 0.000000e+00, float* %361, align 4, !tbaa !14
  %362 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 0, i64 1
  store float 0.000000e+00, float* %362, align 4, !tbaa !14
  %363 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 0, i64 2
  store float 0.000000e+00, float* %363, align 4, !tbaa !14
  %364 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 1, i64 1
  store float 0.000000e+00, float* %364, align 4, !tbaa !14
  %365 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 1, i64 2
  store float 0.000000e+00, float* %365, align 4, !tbaa !14
  %366 = load float*** %334, align 8, !tbaa !41
  %367 = load float** %366, align 8, !tbaa !41
  %368 = getelementptr inbounds float** %366, i64 1
  %369 = load float** %368, align 8, !tbaa !41
  %370 = getelementptr inbounds float** %366, i64 2
  %371 = load float** %370, align 8, !tbaa !41
  %372 = getelementptr inbounds float** %366, i64 3
  %373 = load float** %372, align 8, !tbaa !41
  %374 = getelementptr inbounds float** %366, i64 4
  %375 = load float** %374, align 8, !tbaa !41
  br label %376

; <label>:376                                     ; preds = %376, %359
  %377 = phi float [ 0.000000e+00, %359 ], [ %432, %376 ]
  %378 = phi float [ 0.000000e+00, %359 ], [ %422, %376 ]
  %379 = phi float [ 0.000000e+00, %359 ], [ %412, %376 ]
  %380 = phi float [ 0.000000e+00, %359 ], [ %402, %376 ]
  %381 = phi float [ 0.000000e+00, %359 ], [ %392, %376 ]
  %indvars.iv74 = phi i64 [ 0, %359 ], [ %indvars.iv.next75, %376 ]
  %382 = getelementptr inbounds float* %367, i64 %indvars.iv74
  %383 = load float* %382, align 4, !tbaa !14
  %384 = fpext float %383 to double
  %385 = fmul double %384, 1.500000e+00
  %386 = getelementptr inbounds [5 x float]* %20, i64 %indvars.iv77, i64 %indvars.iv74
  %387 = load float* %386, align 4, !tbaa !14
  %388 = fpext float %387 to double
  %389 = fmul double %385, %388
  %390 = fpext float %381 to double
  %391 = fadd double %390, %389
  %392 = fptrunc double %391 to float
  store float %392, float* %361, align 4, !tbaa !14
  %393 = getelementptr inbounds float* %369, i64 %indvars.iv74
  %394 = load float* %393, align 4, !tbaa !14
  %395 = fpext float %394 to double
  %396 = fmul double %395, 1.500000e+00
  %397 = load float* %386, align 4, !tbaa !14
  %398 = fpext float %397 to double
  %399 = fmul double %396, %398
  %400 = fpext float %380 to double
  %401 = fadd double %400, %399
  %402 = fptrunc double %401 to float
  store float %402, float* %362, align 4, !tbaa !14
  %403 = getelementptr inbounds float* %371, i64 %indvars.iv74
  %404 = load float* %403, align 4, !tbaa !14
  %405 = fpext float %404 to double
  %406 = fmul double %405, 1.500000e+00
  %407 = load float* %386, align 4, !tbaa !14
  %408 = fpext float %407 to double
  %409 = fmul double %406, %408
  %410 = fpext float %379 to double
  %411 = fadd double %410, %409
  %412 = fptrunc double %411 to float
  store float %412, float* %363, align 4, !tbaa !14
  %413 = getelementptr inbounds float* %373, i64 %indvars.iv74
  %414 = load float* %413, align 4, !tbaa !14
  %415 = fpext float %414 to double
  %416 = fmul double %415, 1.500000e+00
  %417 = load float* %386, align 4, !tbaa !14
  %418 = fpext float %417 to double
  %419 = fmul double %416, %418
  %420 = fpext float %378 to double
  %421 = fadd double %420, %419
  %422 = fptrunc double %421 to float
  store float %422, float* %364, align 4, !tbaa !14
  %423 = getelementptr inbounds float* %375, i64 %indvars.iv74
  %424 = load float* %423, align 4, !tbaa !14
  %425 = fpext float %424 to double
  %426 = fmul double %425, 1.500000e+00
  %427 = load float* %386, align 4, !tbaa !14
  %428 = fpext float %427 to double
  %429 = fmul double %426, %428
  %430 = fpext float %377 to double
  %431 = fadd double %430, %429
  %432 = fptrunc double %431 to float
  store float %432, float* %365, align 4, !tbaa !14
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond76 = icmp eq i64 %indvars.iv.next75, 5
  br i1 %exitcond76, label %433, label %376

; <label>:433                                     ; preds = %376
  %434 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 1, i64 0
  store float %402, float* %434, align 4, !tbaa !14
  %435 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 2, i64 0
  store float %412, float* %435, align 4, !tbaa !14
  %436 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 2, i64 1
  store float %432, float* %436, align 4, !tbaa !14
  %437 = fsub float -0.000000e+00, %392
  %438 = fsub float %437, %422
  %439 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv77, i64 2, i64 2
  store float %438, float* %439, align 4, !tbaa !14
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %440 = load i32* %274, align 4, !tbaa !23
  %441 = sext i32 %440 to i64
  %442 = icmp slt i64 %indvars.iv.next78, %441
  br i1 %442, label %.preheader1, label %.preheader

; <label>:443                                     ; preds = %.lr.ph13, %539
  %indvars.iv65 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next66, %539 ]
  %indvars.iv63 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next64, %539 ]
  %wsv2.010 = phi float [ 0.000000e+00, %.lr.ph13 ], [ %548, %539 ]
  %sw.09 = phi float [ 0.000000e+00, %.lr.ph13 ], [ %549, %539 ]
  %444 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv63
  %445 = load i32* %444, align 4, !tbaa !30
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %union.t_iparams* %ip, i64 %446
  %448 = bitcast %union.t_iparams* %447 to i32*
  %449 = load i32* %448, align 4, !tbaa !31
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %450, i64 0, i64 0
  %452 = load float* %451, align 4, !tbaa !14
  %453 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv65, i64 0
  %454 = load float* %453, align 4, !tbaa !14
  %455 = fmul float %452, %454
  %456 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %450, i64 0, i64 1
  %457 = load float* %456, align 4, !tbaa !14
  %458 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv65, i64 1
  %459 = load float* %458, align 4, !tbaa !14
  %460 = fmul float %457, %459
  %461 = fadd float %455, %460
  %462 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %450, i64 0, i64 2
  %463 = load float* %462, align 4, !tbaa !14
  %464 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv65, i64 2
  %465 = load float* %464, align 4, !tbaa !14
  %466 = fmul float %463, %465
  %467 = fadd float %461, %466
  %468 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %450, i64 1, i64 1
  %469 = load float* %468, align 4, !tbaa !14
  %470 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv65, i64 3
  %471 = load float* %470, align 4, !tbaa !14
  %472 = fmul float %469, %471
  %473 = fadd float %467, %472
  %474 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %450, i64 1, i64 2
  %475 = load float* %474, align 4, !tbaa !14
  %476 = getelementptr inbounds [5 x float]* %16, i64 %indvars.iv65, i64 4
  %477 = load float* %476, align 4, !tbaa !14
  %478 = fmul float %475, %477
  %479 = fadd float %473, %478
  %480 = fmul float %337, %479
  %481 = getelementptr inbounds float* %339, i64 %indvars.iv65
  store float %480, float* %481, align 4, !tbaa !14
  br i1 %6, label %482, label %510

; <label>:482                                     ; preds = %443
  %483 = load float* %451, align 4, !tbaa !14
  %484 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv65, i64 0
  %485 = load float* %484, align 4, !tbaa !14
  %486 = fmul float %483, %485
  %487 = load float* %456, align 4, !tbaa !14
  %488 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv65, i64 1
  %489 = load float* %488, align 4, !tbaa !14
  %490 = fmul float %487, %489
  %491 = fadd float %486, %490
  %492 = load float* %462, align 4, !tbaa !14
  %493 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv65, i64 2
  %494 = load float* %493, align 4, !tbaa !14
  %495 = fmul float %492, %494
  %496 = fadd float %491, %495
  %497 = load float* %468, align 4, !tbaa !14
  %498 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv65, i64 3
  %499 = load float* %498, align 4, !tbaa !14
  %500 = fmul float %497, %499
  %501 = fadd float %496, %500
  %502 = load float* %474, align 4, !tbaa !14
  %503 = getelementptr inbounds [5 x float]* %14, i64 %indvars.iv65, i64 4
  %504 = load float* %503, align 4, !tbaa !14
  %505 = fmul float %502, %504
  %506 = fadd float %501, %505
  %507 = fmul float %506, 0x3FE5555560000000
  %508 = load float** %340, align 8, !tbaa !37
  %509 = getelementptr inbounds float* %508, i64 %indvars.iv65
  store float %507, float* %509, align 4, !tbaa !14
  br label %510

; <label>:510                                     ; preds = %482, %443
  br i1 %32, label %511, label %539

; <label>:511                                     ; preds = %510
  %512 = load float* %451, align 4, !tbaa !14
  %513 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv65, i64 0
  %514 = load float* %513, align 4, !tbaa !14
  %515 = fmul float %512, %514
  %516 = load float* %456, align 4, !tbaa !14
  %517 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv65, i64 1
  %518 = load float* %517, align 4, !tbaa !14
  %519 = fmul float %516, %518
  %520 = fadd float %515, %519
  %521 = load float* %462, align 4, !tbaa !14
  %522 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv65, i64 2
  %523 = load float* %522, align 4, !tbaa !14
  %524 = fmul float %521, %523
  %525 = fadd float %520, %524
  %526 = load float* %468, align 4, !tbaa !14
  %527 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv65, i64 3
  %528 = load float* %527, align 4, !tbaa !14
  %529 = fmul float %526, %528
  %530 = fadd float %525, %529
  %531 = load float* %474, align 4, !tbaa !14
  %532 = getelementptr inbounds [5 x float]* %12, i64 %indvars.iv65, i64 4
  %533 = load float* %532, align 4, !tbaa !14
  %534 = fmul float %531, %533
  %535 = fadd float %530, %534
  %536 = fmul float %535, 0x3FE5555560000000
  %537 = load float** %341, align 8, !tbaa !36
  %538 = getelementptr inbounds float* %537, i64 %indvars.iv65
  store float %536, float* %538, align 4, !tbaa !14
  br label %539

; <label>:539                                     ; preds = %511, %510
  %540 = load float* %481, align 4, !tbaa !14
  %541 = getelementptr inbounds %union.t_iparams* %ip, i64 %446, i32 0, i32 4
  %542 = load float* %541, align 4, !tbaa !65
  %543 = fsub float %540, %542
  %544 = getelementptr inbounds %union.t_iparams* %ip, i64 %446, i32 0, i32 5
  %545 = load float* %544, align 4, !tbaa !64
  %546 = fmul float %543, %543
  %547 = fmul float %545, %546
  %548 = fadd float %wsv2.010, %547
  %549 = fadd float %sw.09, %545
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 3
  %550 = icmp slt i64 %indvars.iv.next64, %342
  br i1 %550, label %443, label %._crit_edge14

._crit_edge14:                                    ; preds = %539, %.preheader
  %wsv2.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %548, %539 ]
  %sw.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %549, %539 ]
  %551 = fdiv float %wsv2.0.lcssa, %sw.0.lcssa
  %sqrtf = call float @sqrtf(float %551) #5
  %552 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 19
  store float %sqrtf, float* %552, align 4, !tbaa !66
  %553 = icmp sgt i32 %336, 0
  br i1 %553, label %.lr.ph, label %655

.lr.ph:                                           ; preds = %._crit_edge14
  %554 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0
  %555 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 0
  %556 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 1
  %557 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 2
  br label %558

; <label>:558                                     ; preds = %.lr.ph, %558
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %558 ]
  %559 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 0
  %560 = load float* %555, align 16, !tbaa !14
  %561 = getelementptr inbounds [3 x float]* %559, i64 0, i64 0
  %562 = load float* %561, align 4, !tbaa !14
  %563 = load float* %118, align 4, !tbaa !14
  %564 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 1, i64 0
  %565 = load float* %564, align 4, !tbaa !14
  %566 = load float* %133, align 8, !tbaa !14
  %567 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 2, i64 0
  %568 = load float* %567, align 4, !tbaa !14
  %569 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 0, i64 1
  %570 = load float* %569, align 4, !tbaa !14
  %571 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 1, i64 1
  %572 = load float* %571, align 4, !tbaa !14
  %573 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 2, i64 1
  %574 = load float* %573, align 4, !tbaa !14
  %575 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 0, i64 2
  %576 = load float* %575, align 4, !tbaa !14
  %577 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 1, i64 2
  %578 = load float* %577, align 4, !tbaa !14
  %579 = getelementptr inbounds [3 x [3 x float]]* %10, i64 %indvars.iv, i64 2, i64 2
  %580 = load float* %579, align 4, !tbaa !14
  %581 = load float* %107, align 4, !tbaa !14
  %582 = insertelement <4 x float> undef, float %560, i32 0
  %583 = insertelement <4 x float> %582, float %560, i32 1
  %584 = insertelement <4 x float> %583, float %560, i32 2
  %585 = insertelement <4 x float> %584, float %581, i32 3
  %586 = insertelement <4 x float> undef, float %562, i32 0
  %587 = insertelement <4 x float> %586, float %570, i32 1
  %588 = insertelement <4 x float> %587, float %576, i32 2
  %589 = insertelement <4 x float> %588, float %562, i32 3
  %590 = fmul <4 x float> %585, %589
  %591 = load float* %123, align 4, !tbaa !14
  %592 = insertelement <4 x float> undef, float %563, i32 0
  %593 = insertelement <4 x float> %592, float %563, i32 1
  %594 = insertelement <4 x float> %593, float %563, i32 2
  %595 = insertelement <4 x float> %594, float %591, i32 3
  %596 = insertelement <4 x float> undef, float %565, i32 0
  %597 = insertelement <4 x float> %596, float %572, i32 1
  %598 = insertelement <4 x float> %597, float %578, i32 2
  %599 = insertelement <4 x float> %598, float %565, i32 3
  %600 = fmul <4 x float> %595, %599
  %601 = fadd <4 x float> %590, %600
  %602 = load float* %139, align 4, !tbaa !14
  %603 = insertelement <4 x float> undef, float %566, i32 0
  %604 = insertelement <4 x float> %603, float %566, i32 1
  %605 = insertelement <4 x float> %604, float %566, i32 2
  %606 = insertelement <4 x float> %605, float %602, i32 3
  %607 = insertelement <4 x float> undef, float %568, i32 0
  %608 = insertelement <4 x float> %607, float %574, i32 1
  %609 = insertelement <4 x float> %608, float %580, i32 2
  %610 = insertelement <4 x float> %609, float %568, i32 3
  %611 = fmul <4 x float> %606, %610
  %612 = fadd <4 x float> %601, %611
  %613 = bitcast [3 x [3 x float]]* %TMP to <4 x float>*
  store <4 x float> %612, <4 x float>* %613, align 16, !tbaa !14
  %614 = load float* %112, align 8, !tbaa !14
  %615 = load float* %128, align 4, !tbaa !14
  %616 = load float* %144, align 8, !tbaa !14
  %617 = insertelement <4 x float> undef, float %581, i32 0
  %618 = insertelement <4 x float> %617, float %581, i32 1
  %619 = insertelement <4 x float> %618, float %614, i32 2
  %620 = insertelement <4 x float> %619, float %614, i32 3
  %621 = insertelement <4 x float> undef, float %570, i32 0
  %622 = insertelement <4 x float> %621, float %576, i32 1
  %623 = insertelement <4 x float> %622, float %562, i32 2
  %624 = insertelement <4 x float> %623, float %570, i32 3
  %625 = fmul <4 x float> %620, %624
  %626 = insertelement <4 x float> undef, float %591, i32 0
  %627 = insertelement <4 x float> %626, float %591, i32 1
  %628 = insertelement <4 x float> %627, float %615, i32 2
  %629 = insertelement <4 x float> %628, float %615, i32 3
  %630 = insertelement <4 x float> undef, float %572, i32 0
  %631 = insertelement <4 x float> %630, float %578, i32 1
  %632 = insertelement <4 x float> %631, float %565, i32 2
  %633 = insertelement <4 x float> %632, float %572, i32 3
  %634 = fmul <4 x float> %629, %633
  %635 = fadd <4 x float> %625, %634
  %636 = insertelement <4 x float> undef, float %602, i32 0
  %637 = insertelement <4 x float> %636, float %602, i32 1
  %638 = insertelement <4 x float> %637, float %616, i32 2
  %639 = insertelement <4 x float> %638, float %616, i32 3
  %640 = insertelement <4 x float> undef, float %574, i32 0
  %641 = insertelement <4 x float> %640, float %580, i32 1
  %642 = insertelement <4 x float> %641, float %568, i32 2
  %643 = insertelement <4 x float> %642, float %574, i32 3
  %644 = fmul <4 x float> %639, %643
  %645 = fadd <4 x float> %635, %644
  %646 = bitcast float* %556 to <4 x float>*
  store <4 x float> %645, <4 x float>* %646, align 4, !tbaa !14
  %647 = fmul float %614, %576
  %648 = fmul float %615, %578
  %649 = fadd float %647, %648
  %650 = fmul float %616, %580
  %651 = fadd float %649, %650
  store float %651, float* %557, align 8, !tbaa !14
  call fastcc void @mmul([3 x float]* %554, [3 x float]* %101, [3 x float]* %559) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %652 = load i32* %274, align 4, !tbaa !23
  %653 = sext i32 %652 to i64
  %654 = icmp slt i64 %indvars.iv.next, %653
  br i1 %654, label %558, label %._crit_edge

._crit_edge:                                      ; preds = %558
  %.pre142 = load float* %552, align 4, !tbaa !66
  br label %655

; <label>:655                                     ; preds = %._crit_edge, %._crit_edge14
  %656 = phi float [ %.pre142, %._crit_edge ], [ %sqrtf, %._crit_edge14 ]
  call void @llvm.lifetime.end(i64 36, i8* %2) #7
  call void @llvm.lifetime.end(i64 36, i8* %1) #7
  ret float %656
}

; Function Attrs: optsize
declare void @calc_fit_R(i32, float*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: optsize
declare i32 @m_inv_gen(float**, i32, float**) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @orires(i32 %nfa, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %ip, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readonly %fcd) #4 {
  %r = alloca [3 x float], align 4
  %Sr = alloca [3 x float], align 4
  %fij = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 0
  %2 = load float* %1, align 4, !tbaa !21
  %fabsf = tail call float @fabsf(float %2) #5
  %3 = fpext float %fabsf to double
  %4 = fcmp ogt double %3, 1.200000e-38
  br i1 %4, label %5, label %.loopexit

; <label>:5                                       ; preds = %0
  %6 = fpext float %2 to double
  %7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  %8 = load float* %7, align 4, !tbaa !61
  %fabsf1 = tail call float @fabsf(float %8) #5
  %9 = fpext float %fabsf1 to double
  %10 = fcmp ogt double %9, 1.200000e-38
  %11 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  %12 = load float* %11, align 4, !tbaa !28
  %13 = fpext float %12 to double
  %14 = fsub double 1.000000e+00, %13
  %15 = fmul double %6, %14
  %16 = fptrunc double %15 to float
  %17 = icmp sgt i32 %nfa, 0
  br i1 %17, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %5
  %18 = getelementptr inbounds [3 x float]* %r, i64 0, i64 0
  %19 = getelementptr inbounds [3 x float]* %r, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float]* %r, i64 0, i64 2
  %21 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %22 = load float** %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %24 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %25 = load [3 x [3 x float]]** %24, align 8, !tbaa !24
  %26 = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 0
  %27 = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 2
  %29 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %30 = load i32* %29, align 4, !tbaa !67
  %31 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %32 = load [3 x i32]** %31, align 8, !tbaa !69
  %33 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %34 = load [3 x float]** %33, align 8, !tbaa !70
  %35 = sext i32 %nfa to i64
  br label %36

; <label>:36                                      ; preds = %.lr.ph11, %215
  %indvars.iv20 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next21, %215 ]
  %indvars.iv18 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next19, %215 ]
  %vtot.07 = phi float [ 0.000000e+00, %.lr.ph11 ], [ %94, %215 ]
  %37 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv18
  %38 = load i32* %37, align 4, !tbaa !30
  %39 = add nuw nsw i64 %indvars.iv18, 1
  %40 = getelementptr inbounds i32* %forceatoms, i64 %39
  %41 = load i32* %40, align 4, !tbaa !30
  %42 = add nuw nsw i64 %indvars.iv18, 2
  %43 = getelementptr inbounds i32* %forceatoms, i64 %42
  %44 = load i32* %43, align 4, !tbaa !30
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds [3 x float]* %x, i64 %45, i64 0
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 0
  %49 = load float* %46, align 4, !tbaa !14
  %50 = load float* %48, align 4, !tbaa !14
  %51 = fsub float %49, %50
  %52 = getelementptr inbounds [3 x float]* %x, i64 %45, i64 1
  %53 = load float* %52, align 4, !tbaa !14
  %54 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 1
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fsub float %53, %55
  %57 = getelementptr inbounds [3 x float]* %x, i64 %45, i64 2
  %58 = load float* %57, align 4, !tbaa !14
  %59 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 2
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fsub float %58, %60
  store float %51, float* %18, align 4, !tbaa !14
  store float %56, float* %19, align 4, !tbaa !14
  store float %61, float* %20, align 4, !tbaa !14
  %62 = fmul float %51, %51
  %63 = fmul float %56, %56
  %64 = fadd float %62, %63
  %65 = fmul float %61, %61
  %66 = fadd float %65, %64
  %67 = fpext float %66 to double
  %68 = tail call double @sqrt(double %67) #10
  %69 = fdiv double 1.000000e+00, %68
  %70 = fptrunc double %69 to float
  %71 = fmul float %70, %70
  %72 = sext i32 %38 to i64
  %73 = getelementptr inbounds %union.t_iparams* %ip, i64 %72
  %74 = bitcast %union.t_iparams* %73 to i32*
  %75 = load i32* %74, align 4, !tbaa !31
  %76 = getelementptr inbounds %union.t_iparams* %ip, i64 %72, i32 0, i32 1
  %77 = bitcast float* %76 to i32*
  %78 = load i32* %77, align 4, !tbaa !63
  %79 = getelementptr inbounds %union.t_iparams* %ip, i64 %72, i32 0, i32 5
  %80 = load float* %79, align 4, !tbaa !64
  %81 = fmul float %16, %80
  %82 = getelementptr inbounds float* %22, i64 %indvars.iv20
  %83 = load float* %82, align 4, !tbaa !14
  %84 = getelementptr inbounds %union.t_iparams* %ip, i64 %72, i32 0, i32 4
  %85 = load float* %84, align 4, !tbaa !65
  %86 = fsub float %83, %85
  %87 = fpext float %81 to double
  %88 = fmul double %87, 5.000000e-01
  %89 = fmul float %86, %86
  %90 = fpext float %89 to double
  %91 = fmul double %88, %90
  %92 = fpext float %vtot.07 to double
  %93 = fadd double %92, %91
  %94 = fptrunc double %93 to float
  br i1 %10, label %95, label %106

; <label>:95                                      ; preds = %36
  %96 = load float** %23, align 8, !tbaa !37
  %97 = getelementptr inbounds float* %96, i64 %indvars.iv20
  %98 = load float* %97, align 4, !tbaa !14
  %99 = fsub float %98, %85
  %100 = fmul float %86, %99
  %101 = fcmp ugt float %100, 0.000000e+00
  br i1 %101, label %102, label %106

; <label>:102                                     ; preds = %95
  %sqrtf = tail call float @sqrtf(float %100) #5
  %103 = fcmp olt float %99, 0.000000e+00
  br i1 %103, label %104, label %106

; <label>:104                                     ; preds = %102
  %105 = fsub float -0.000000e+00, %sqrtf
  br label %106

; <label>:106                                     ; preds = %95, %104, %102, %36
  %dev.0 = phi float [ %105, %104 ], [ %sqrtf, %102 ], [ %86, %36 ], [ 0.000000e+00, %95 ]
  %107 = getelementptr inbounds %union.t_iparams* %ip, i64 %72, i32 0, i32 3
  %108 = load float* %107, align 4, !tbaa !62
  %109 = fmul float %81, %108
  %110 = fmul float %71, %109
  %111 = icmp sgt i32 %78, 0
  br i1 %111, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %106
  %112 = add i32 %78, -1
  br label %113

; <label>:113                                     ; preds = %113, %.lr.ph
  %pfac.04 = phi float [ %110, %.lr.ph ], [ %114, %113 ]
  %i.03 = phi i32 [ 0, %.lr.ph ], [ %115, %113 ]
  %114 = fmul float %70, %pfac.04
  %115 = add nuw nsw i32 %i.03, 1
  %exitcond = icmp eq i32 %i.03, %112
  br i1 %exitcond, label %._crit_edge, label %113

._crit_edge:                                      ; preds = %113, %106
  %pfac.0.lcssa = phi float [ %110, %106 ], [ %114, %113 ]
  %116 = sext i32 %75 to i64
  %117 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 0, i64 0
  %118 = load float* %117, align 4, !tbaa !14
  %119 = fmul float %118, %51
  %120 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 0, i64 1
  %121 = load float* %120, align 4, !tbaa !14
  %122 = fmul float %121, %56
  %123 = fadd float %119, %122
  %124 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 0, i64 2
  %125 = load float* %124, align 4, !tbaa !14
  %126 = fmul float %125, %61
  %127 = fadd float %123, %126
  store float %127, float* %26, align 4, !tbaa !14
  %128 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 1, i64 0
  %129 = load float* %128, align 4, !tbaa !14
  %130 = fmul float %129, %51
  %131 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 1, i64 1
  %132 = load float* %131, align 4, !tbaa !14
  %133 = fmul float %132, %56
  %134 = fadd float %130, %133
  %135 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 1, i64 2
  %136 = load float* %135, align 4, !tbaa !14
  %137 = fmul float %136, %61
  %138 = fadd float %134, %137
  store float %138, float* %27, align 4, !tbaa !14
  %139 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 2, i64 0
  %140 = load float* %139, align 4, !tbaa !14
  %141 = fmul float %140, %51
  %142 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 2, i64 1
  %143 = load float* %142, align 4, !tbaa !14
  %144 = fmul float %143, %56
  %145 = fadd float %141, %144
  %146 = getelementptr inbounds [3 x [3 x float]]* %25, i64 %116, i64 2, i64 2
  %147 = load float* %146, align 4, !tbaa !14
  %148 = fmul float %147, %61
  %149 = fadd float %145, %148
  store float %149, float* %28, align 4, !tbaa !14
  %150 = fmul float %dev.0, %pfac.0.lcssa
  %151 = shl i32 %78, 1
  %152 = add i32 %151, 4
  %153 = sitofp i32 %152 to float
  %154 = fmul float %71, %153
  %155 = fmul float %127, %51
  %156 = fmul float %138, %56
  %157 = fadd float %155, %156
  %158 = fmul float %149, %61
  %159 = fadd float %157, %158
  %160 = fmul float %154, %159
  %161 = fmul float %127, 4.000000e+00
  %162 = fmul float %51, %160
  %163 = fsub float %161, %162
  %164 = fmul float %150, %163
  %165 = fsub float -0.000000e+00, %164
  %166 = getelementptr inbounds [3 x float]* %fij, i64 0, i64 0
  store float %165, float* %166, align 4, !tbaa !14
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge, %._crit_edge22
  %indvars.iv.next26 = phi i64 [ 1, %._crit_edge ], [ %indvars.iv.next, %._crit_edge22 ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 %indvars.iv.next26
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert23 = getelementptr inbounds [3 x float]* %r, i64 0, i64 %indvars.iv.next26
  %.pre24 = load float* %.phi.trans.insert23, align 4, !tbaa !14
  %167 = fmul float %.pre, 4.000000e+00
  %168 = fmul float %.pre24, %160
  %169 = fsub float %167, %168
  %170 = fmul float %150, %169
  %171 = fsub float -0.000000e+00, %170
  %172 = getelementptr inbounds [3 x float]* %fij, i64 0, i64 %indvars.iv.next26
  store float %171, float* %172, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next26, 1
  %exitcond14 = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond14, label %173, label %._crit_edge22

; <label>:173                                     ; preds = %._crit_edge22
  %174 = sub nsw i32 %41, %30
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x i32]* %32, i64 %175, i64 0
  %177 = sub nsw i32 %44, %30
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [3 x i32]* %32, i64 %178, i64 0
  %180 = load i32* %176, align 4, !tbaa !30
  %181 = load i32* %179, align 4, !tbaa !30
  %182 = getelementptr inbounds [3 x i32]* %32, i64 %175, i64 1
  %183 = load i32* %182, align 4, !tbaa !30
  %184 = getelementptr inbounds [3 x i32]* %32, i64 %178, i64 1
  %185 = load i32* %184, align 4, !tbaa !30
  %186 = getelementptr inbounds [3 x i32]* %32, i64 %175, i64 2
  %187 = load i32* %186, align 4, !tbaa !30
  %188 = getelementptr inbounds [3 x i32]* %32, i64 %178, i64 2
  %189 = load i32* %188, align 4, !tbaa !30
  %190 = sub nsw i32 %187, %189
  %191 = mul i32 %190, 3
  %192 = add i32 %183, 3
  %193 = sub i32 %192, %185
  %194 = add i32 %193, %191
  %195 = mul i32 %194, 3
  %196 = add i32 %180, 4
  %197 = sub i32 %196, %181
  %198 = add i32 %197, %195
  %199 = sext i32 %198 to i64
  br label %200

; <label>:200                                     ; preds = %200, %173
  %indvars.iv15 = phi i64 [ 0, %173 ], [ %indvars.iv.next16, %200 ]
  %201 = getelementptr inbounds [3 x float]* %fij, i64 0, i64 %indvars.iv15
  %202 = load float* %201, align 4, !tbaa !14
  %203 = getelementptr inbounds [3 x float]* %f, i64 %45, i64 %indvars.iv15
  %204 = load float* %203, align 4, !tbaa !14
  %205 = fadd float %202, %204
  store float %205, float* %203, align 4, !tbaa !14
  %206 = getelementptr inbounds [3 x float]* %f, i64 %47, i64 %indvars.iv15
  %207 = load float* %206, align 4, !tbaa !14
  %208 = fsub float %207, %202
  store float %208, float* %206, align 4, !tbaa !14
  %209 = getelementptr inbounds [3 x float]* %34, i64 %199, i64 %indvars.iv15
  %210 = load float* %209, align 4, !tbaa !14
  %211 = fadd float %202, %210
  store float %211, float* %209, align 4, !tbaa !14
  %212 = getelementptr inbounds [3 x float]* %34, i64 13, i64 %indvars.iv15
  %213 = load float* %212, align 4, !tbaa !14
  %214 = fsub float %213, %202
  store float %214, float* %212, align 4, !tbaa !14
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond17 = icmp eq i64 %indvars.iv.next16, 3
  br i1 %exitcond17, label %215, label %200

; <label>:215                                     ; preds = %200
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 3
  %216 = icmp slt i64 %indvars.iv.next19, %35
  br i1 %216, label %36, label %.loopexit

.loopexit:                                        ; preds = %215, %5, %0
  %vtot.1 = phi float [ 0.000000e+00, %0 ], [ 0.000000e+00, %5 ], [ %94, %215 ]
  ret float %vtot.1
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

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
!18 = !{!19, !15, i64 288}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !20, i64 384, !5, i64 448, !5, i64 520}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!21 = !{!22, !15, i64 0}
!22 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !15, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 168}
!23 = !{!22, !7, i64 20}
!24 = !{!22, !4, i64 96}
!25 = !{!19, !15, i64 292}
!26 = !{!19, !15, i64 60}
!27 = !{!22, !15, i64 8}
!28 = !{!22, !15, i64 12}
!29 = !{!22, !7, i64 16}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !7, i64 0}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!33 = !{!22, !4, i64 104}
!34 = !{!22, !4, i64 112}
!35 = !{!22, !4, i64 120}
!36 = !{!22, !4, i64 128}
!37 = !{!22, !4, i64 136}
!38 = !{!22, !4, i64 144}
!39 = !{!22, !4, i64 160}
!40 = !{!22, !4, i64 168}
!41 = !{!4, !4, i64 0}
!42 = !{!22, !7, i64 24}
!43 = !{!44, !7, i64 4}
!44 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!45 = !{!44, !4, i64 168}
!46 = !{!8, !8, i64 0}
!47 = !{!22, !4, i64 32}
!48 = !{!22, !4, i64 40}
!49 = !{!22, !4, i64 48}
!50 = !{!44, !4, i64 24}
!51 = !{!52, !7, i64 0}
!52 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!53 = !{!52, !7, i64 16}
!54 = !{!22, !15, i64 28}
!55 = !{!52, !7, i64 4}
!56 = !{!57, !7, i64 96}
!57 = !{!"", !58, i64 0, !22, i64 80}
!58 = !{!"", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !7, i64 32, !15, i64 36, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!59 = !{!57, !7, i64 104}
!60 = !{!57, !4, i64 120}
!61 = !{!22, !15, i64 4}
!62 = !{!32, !15, i64 12}
!63 = !{!32, !7, i64 4}
!64 = !{!32, !15, i64 20}
!65 = !{!32, !15, i64 16}
!66 = !{!22, !15, i64 152}
!67 = !{!68, !7, i64 12}
!68 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!69 = !{!68, !4, i64 40}
!70 = !{!71, !4, i64 2776}
!71 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
