; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pull.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@pull.x_s = internal unnamed_addr global [3 x float]* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"x_s\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pull.c\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [25 x i8] c"\0ACalling correct_t0_pbc\0A\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"dynacom: %8.3f%8.3f%8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"Calling calc_running_com\0A\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"I      :%9.6f %9.6f %9.6f\0A\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"dyna xref: unconstr. com:%9.6f %9.6f %9.6f\0A\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"xref: unconstr. com:%9.6f %9.6f %9.6f\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"ref: %8.3f %8.3f %8.3f\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"ref_t0: %8.3f %8.3f %8.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"undetermined runtype\00", align 1
@do_start.nout = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [46 x i8] c"Group %d goal:%8.3f%8.3f%8.3f from reference\0A\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"To go:%10.2e %10.2e %10.2e\0A\00", align 1
@.str13 = private unnamed_addr constant [38 x i8] c"New target position: %8.3f%8.3f%8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"ref_dr\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"rjnew\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"dr\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"rinew\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"group %d, iteration %d\0A\00", align 1
@.str20 = private unnamed_addr constant [63 x i8] c"\0Aax^2+bx+c=0: a=%e b=%e c=%e\0Ax1=%e x2=%e sum:%e,%e, lambda:%e\0A\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"Direction: %f\0A\00", align 1
@.str22 = private unnamed_addr constant [100 x i8] c"cur. i:%f %f %f j:%f %f %f d: %f\0Aref. i:%f %f %f j:%f %f %f d: %f\0Acor. i:%f %f %f j:%f %f %f d: %f\0A\00", align 1
@.str23 = private unnamed_addr constant [61 x i8] c"NOT CONVERGED YET: Group %d (%s):d_ref = %f, current d = %f\0A\00", align 1
@.str24 = private unnamed_addr constant [39 x i8] c"Too many iterations for constraint run\00", align 1
@.str25 = private unnamed_addr constant [31 x i8] c"Group %i: correction %e %e %e\0A\00", align 1
@.str26 = private unnamed_addr constant [34 x i8] c"Dyna grp %i: correction %e %e %e\0A\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"Reference: correction %e %e %e\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"Group %d - DR: %f %f %f\0A\00", align 1
@.str29 = private unnamed_addr constant [17 x i8] c"force: %f %f %f\0A\00", align 1
@.str30 = private unnamed_addr constant [20 x i8] c"curr pos: %f %f %f\0A\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"ref pos: %f %f %f\0A\00", align 1

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
define void @pull(%struct.t_pull* %pull, [3 x float]* %x, [3 x float]* %f, [3 x float]* %box, %struct.t_topology* %top, float %dt, i32 %step, i32 %natoms, %struct.t_mdatoms* %md) #4 {
  %unc_ij.i = alloca [3 x float], align 4
  %ref_ij.i = alloca [3 x float], align 4
  %tmp.i = alloca [3 x float], align 4
  %tmp2.i = alloca [3 x float], align 4
  %tmp3.i = alloca [3 x float], align 4
  %dr.i = alloca [3 x float], align 4
  %1 = icmp eq [3 x float]* %f, null
  %2 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  %3 = icmp eq [3 x float]* %2, null
  %4 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  br i1 %3, label %5, label %.preheader45

; <label>:5                                       ; preds = %0
  %6 = load i32* %4, align 4, !tbaa !19
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %6, i32 12) #9
  store i8* %7, i8** bitcast ([3 x float]** @pull.x_s to i8**), align 8, !tbaa !18
  %8 = bitcast i8* %7 to [3 x float]*
  br label %.preheader45

.preheader45:                                     ; preds = %0, %5
  %9 = phi [3 x float]* [ %8, %5 ], [ %2, %0 ]
  %10 = load i32* %4, align 4, !tbaa !19
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %.preheader45
  %12 = sext i32 %10 to i64
  br label %13

; <label>:13                                      ; preds = %.lr.ph111, %13
  %indvars.iv165 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next166, %13 ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv165, i64 0
  %15 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv165, i64 0
  %16 = bitcast float* %14 to i32*
  %17 = load i32* %16, align 4, !tbaa !14
  %18 = bitcast float* %15 to i32*
  store i32 %17, i32* %18, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv165, i64 1
  %20 = bitcast float* %19 to i32*
  %21 = load i32* %20, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv165, i64 1
  %23 = bitcast float* %22 to i32*
  store i32 %21, i32* %23, align 4, !tbaa !14
  %24 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv165, i64 2
  %25 = bitcast float* %24 to i32*
  %26 = load i32* %25, align 4, !tbaa !14
  %27 = getelementptr inbounds [3 x float]* %9, i64 %indvars.iv165, i64 2
  %28 = bitcast float* %27 to i32*
  store i32 %26, i32* %28, align 4, !tbaa !14
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %29 = icmp slt i64 %indvars.iv.next166, %12
  br i1 %29, label %13, label %._crit_edge112

._crit_edge112:                                   ; preds = %13, %.preheader45
  %30 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  %31 = load i32* %30, align 4, !tbaa !21
  switch i32 %31, label %2323 [
    i32 1, label %32
    i32 0, label %170
    i32 2, label %386
    i32 3, label %2086
    i32 4, label %2277
  ]

; <label>:32                                      ; preds = %._crit_edge112
  br i1 %1, label %2324, label %.preheader

.preheader:                                       ; preds = %32
  %33 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %34 = load i32* %33, align 4, !tbaa !24
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %36 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %36)
  br label %do_afm.exit

.lr.ph:                                           ; preds = %.preheader
  %37 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %38 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %39 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %40

; <label>:40                                      ; preds = %._crit_edge174, %.lr.ph
  %41 = phi [3 x float]* [ %9, %.lr.ph ], [ %.pre175, %._crit_edge174 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge174 ]
  %42 = load i32** %37, align 8, !tbaa !25
  %43 = getelementptr inbounds i32* %42, i64 %indvars.iv
  %44 = load i32* %43, align 4, !tbaa !26
  %45 = load i32*** %38, align 8, !tbaa !27
  %46 = getelementptr inbounds i32** %45, i64 %indvars.iv
  %47 = load i32** %46, align 8, !tbaa !18
  %48 = load [3 x float]** %39, align 8, !tbaa !28
  %49 = getelementptr inbounds [3 x float]* %48, i64 %indvars.iv, i64 0
  %50 = tail call float @calc_com([3 x float]* %41, i32 %44, i32* %47, %struct.t_mdatoms* %md, float* %49, [3 x float]* %box) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %51 = load i32* %33, align 4, !tbaa !24
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next, %52
  br i1 %53, label %._crit_edge174, label %._crit_edge

._crit_edge174:                                   ; preds = %40
  %.pre175 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  br label %40

._crit_edge:                                      ; preds = %40
  %54 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %54)
  %55 = icmp sgt i32 %51, 0
  br i1 %55, label %.preheader5.lr.ph.i, label %do_afm.exit

.preheader5.lr.ph.i:                              ; preds = %._crit_edge
  %56 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  %57 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %58 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %59 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %60 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %61 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  %62 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %64 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %65 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  %66 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %67 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %68 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %69 = sext i32 %51 to i64
  %70 = add nsw i64 %69, -1
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %168, %.preheader5.lr.ph.i
  %indvars.iv33.i = phi i64 [ 0, %.preheader5.lr.ph.i ], [ %indvars.iv.next34.i, %168 ]
  br label %.preheader1.i3

.preheader4.i:                                    ; preds = %._crit_edge.i
  %71 = load [3 x float]** %62, align 8, !tbaa !29
  br label %137

.preheader1.i3:                                   ; preds = %._crit_edge.i, %.preheader5.i
  %indvars.iv.i2 = phi i64 [ 2, %.preheader5.i ], [ %indvars.iv.next.i7, %._crit_edge.i ]
  %72 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.i2
  %73 = load float* %72, align 4, !tbaa !14
  %74 = fpext float %73 to double
  %75 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2
  %76 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2, i64 %indvars.iv.i2
  %77 = load float* %76, align 4, !tbaa !14
  %78 = fpext float %77 to double
  %79 = fmul double %78, 5.000000e-01
  %80 = fcmp ogt double %74, %79
  br i1 %80, label %.lr.ph.i5, label %.preheader.i6

.lr.ph.i5:                                        ; preds = %.preheader1.i3
  %81 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0
  %82 = load float* %81, align 4, !tbaa !14
  %83 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2, i64 1
  %84 = load float* %83, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2, i64 2
  %86 = load float* %85, align 4, !tbaa !14
  %.pre.i4 = load float* %58, align 4, !tbaa !14
  %.pre35.i = load float* %59, align 4, !tbaa !14
  %.pre36.i = load float* %60, align 4, !tbaa !14
  br label %94

.preheader.i6:                                    ; preds = %94, %.preheader1.i3
  %87 = phi float [ %73, %.preheader1.i3 ], [ %101, %94 ]
  %88 = fpext float %87 to double
  %89 = fmul double %78, -5.000000e-01
  %90 = fcmp olt double %88, %89
  br i1 %90, label %.lr.ph13.i, label %._crit_edge.i

.lr.ph13.i:                                       ; preds = %.preheader.i6
  %91 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0
  %92 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2, i64 1
  %93 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i2, i64 2
  %.pre37.i = load float* %58, align 4, !tbaa !14
  %.pre38.i = load float* %91, align 4, !tbaa !14
  %.pre39.i = load float* %59, align 4, !tbaa !14
  %.pre40.i = load float* %92, align 4, !tbaa !14
  %.pre41.i = load float* %60, align 4, !tbaa !14
  %.pre42.i = load float* %93, align 4, !tbaa !14
  br label %104

; <label>:94                                      ; preds = %94, %.lr.ph.i5
  %95 = phi float [ %.pre36.i, %.lr.ph.i5 ], [ %100, %94 ]
  %96 = phi float [ %.pre35.i, %.lr.ph.i5 ], [ %99, %94 ]
  %97 = phi float [ %.pre.i4, %.lr.ph.i5 ], [ %98, %94 ]
  %98 = fsub float %97, %82
  %99 = fsub float %96, %84
  %100 = fsub float %95, %86
  store float %98, float* %58, align 4, !tbaa !14
  store float %99, float* %59, align 4, !tbaa !14
  store float %100, float* %60, align 4, !tbaa !14
  %101 = load float* %72, align 4, !tbaa !14
  %102 = fpext float %101 to double
  %103 = fcmp ogt double %102, %79
  br i1 %103, label %94, label %.preheader.i6

; <label>:104                                     ; preds = %104, %.lr.ph13.i
  %105 = phi float [ %.pre41.i, %.lr.ph13.i ], [ %110, %104 ]
  %106 = phi float [ %.pre39.i, %.lr.ph13.i ], [ %109, %104 ]
  %107 = phi float [ %.pre37.i, %.lr.ph13.i ], [ %108, %104 ]
  %108 = fadd float %.pre38.i, %107
  %109 = fadd float %.pre40.i, %106
  %110 = fadd float %.pre42.i, %105
  store float %108, float* %58, align 4, !tbaa !14
  store float %109, float* %59, align 4, !tbaa !14
  store float %110, float* %60, align 4, !tbaa !14
  %111 = load float* %72, align 4, !tbaa !14
  %112 = fpext float %111 to double
  %113 = fcmp olt double %112, %89
  br i1 %113, label %104, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %104, %.preheader.i6
  %114 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.i2
  %115 = load float* %114, align 4, !tbaa !14
  %116 = load [3 x float]** %56, align 8, !tbaa !30
  %117 = getelementptr inbounds [3 x float]* %116, i64 %indvars.iv33.i, i64 %indvars.iv.i2
  %118 = load float* %117, align 4, !tbaa !14
  %119 = load [3 x float]** %57, align 8, !tbaa !28
  %120 = getelementptr inbounds [3 x float]* %119, i64 %indvars.iv33.i, i64 %indvars.iv.i2
  %121 = load float* %120, align 4, !tbaa !14
  %122 = fsub float %118, %121
  %123 = fmul float %115, %122
  store float %123, float* %72, align 4, !tbaa !14
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i2, -1
  %124 = icmp sgt i64 %indvars.iv.i2, 0
  br i1 %124, label %.preheader1.i3, label %.preheader4.i

.preheader3.i:                                    ; preds = %137
  %125 = load i32** %63, align 8, !tbaa !25
  %126 = getelementptr inbounds i32* %125, i64 %indvars.iv33.i
  %127 = load i32* %126, align 4, !tbaa !26
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %.lr.ph18.i, label %.preheader2.i

.lr.ph18.i:                                       ; preds = %.preheader3.i
  %129 = load i32*** %66, align 8, !tbaa !27
  %130 = getelementptr inbounds i32** %129, i64 %indvars.iv33.i
  %131 = load i32** %130, align 8, !tbaa !18
  %132 = load float** %67, align 8, !tbaa !31
  %133 = load float** %68, align 8, !tbaa !32
  %134 = getelementptr inbounds float* %133, i64 %indvars.iv33.i
  %135 = sext i32 %127 to i64
  %136 = add nsw i64 %135, -1
  br label %144

; <label>:137                                     ; preds = %137, %.preheader4.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next24.i, %137 ]
  %138 = load float* %61, align 4, !tbaa !33
  %139 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv23.i
  %140 = load float* %139, align 4, !tbaa !14
  %141 = fmul float %138, %140
  %142 = getelementptr inbounds [3 x float]* %71, i64 %indvars.iv33.i, i64 %indvars.iv23.i
  store float %141, float* %142, align 4, !tbaa !14
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %exitcond.i8 = icmp eq i64 %indvars.iv.next24.i, 3
  br i1 %exitcond.i8, label %.preheader3.i, label %137

.preheader2.i:                                    ; preds = %159, %.preheader3.i
  %143 = load [3 x float]** %64, align 8, !tbaa !34
  br label %160

; <label>:144                                     ; preds = %159, %.lr.ph18.i
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph18.i ], [ %indvars.iv.next29.i, %159 ]
  %145 = getelementptr inbounds i32* %131, i64 %indvars.iv28.i
  %146 = load i32* %145, align 4, !tbaa !26
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float* %132, i64 %147
  br label %149

; <label>:149                                     ; preds = %149, %144
  %indvars.iv25.i = phi i64 [ 0, %144 ], [ %indvars.iv.next26.i, %149 ]
  %150 = load float* %148, align 4, !tbaa !14
  %151 = getelementptr inbounds [3 x float]* %71, i64 %indvars.iv33.i, i64 %indvars.iv25.i
  %152 = load float* %151, align 4, !tbaa !14
  %153 = fmul float %150, %152
  %154 = load float* %134, align 4, !tbaa !14
  %155 = fdiv float %153, %154
  %156 = getelementptr inbounds [3 x float]* %f, i64 %147, i64 %indvars.iv25.i
  %157 = load float* %156, align 4, !tbaa !14
  %158 = fadd float %155, %157
  store float %158, float* %156, align 4, !tbaa !14
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond27.i = icmp eq i64 %indvars.iv.next26.i, 3
  br i1 %exitcond27.i, label %159, label %149

; <label>:159                                     ; preds = %149
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond = icmp eq i64 %indvars.iv28.i, %136
  br i1 %exitcond, label %.preheader2.i, label %144

; <label>:160                                     ; preds = %160, %.preheader2.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next31.i, %160 ]
  %161 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv33.i, i64 %indvars.iv30.i
  %162 = load float* %161, align 4, !tbaa !14
  %163 = load float* %65, align 4, !tbaa !35
  %164 = fmul float %162, %163
  %165 = getelementptr inbounds [3 x float]* %116, i64 %indvars.iv33.i, i64 %indvars.iv30.i
  %166 = load float* %165, align 4, !tbaa !14
  %167 = fadd float %164, %166
  store float %167, float* %165, align 4, !tbaa !14
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond32.i = icmp eq i64 %indvars.iv.next31.i, 3
  br i1 %exitcond32.i, label %168, label %160

; <label>:168                                     ; preds = %160
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond146 = icmp eq i64 %indvars.iv33.i, %70
  br i1 %exitcond146, label %do_afm.exit, label %.preheader5.i

do_afm.exit:                                      ; preds = %168, %._crit_edge.thread, %._crit_edge
  %169 = phi i8* [ %36, %._crit_edge.thread ], [ %54, %._crit_edge ], [ %54, %168 ]
  call void @llvm.lifetime.end(i64 12, i8* %169)
  tail call void @print_afm(%struct.t_pull* %pull, i32 %step) #9
  br label %2324

; <label>:170                                     ; preds = %._crit_edge112
  br i1 %1, label %2324, label %.preheader37

.preheader37:                                     ; preds = %170
  %171 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %172 = load i32* %171, align 4, !tbaa !24
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %.preheader37
  %174 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %175 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %176 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %._crit_edge170

._crit_edge170:                                   ; preds = %._crit_edge170, %.lr.ph73
  %177 = phi [3 x float]* [ %9, %.lr.ph73 ], [ %.pre171, %._crit_edge170 ]
  %indvars.iv148 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next149, %._crit_edge170 ]
  %178 = load i32** %174, align 8, !tbaa !25
  %179 = getelementptr inbounds i32* %178, i64 %indvars.iv148
  %180 = load i32* %179, align 4, !tbaa !26
  %181 = load i32*** %175, align 8, !tbaa !27
  %182 = getelementptr inbounds i32** %181, i64 %indvars.iv148
  %183 = load i32** %182, align 8, !tbaa !18
  %184 = load [3 x float]** %176, align 8, !tbaa !28
  %185 = getelementptr inbounds [3 x float]* %184, i64 %indvars.iv148, i64 0
  %186 = tail call float @calc_com([3 x float]* %177, i32 %180, i32* %183, %struct.t_mdatoms* %md, float* %185, [3 x float]* %box) #9
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  %187 = load i32* %171, align 4, !tbaa !24
  %188 = sext i32 %187 to i64
  %189 = icmp slt i64 %indvars.iv.next149, %188
  %.pre171 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  br i1 %189, label %._crit_edge170, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge170, %.preheader37
  %190 = phi [3 x float]* [ %9, %.preheader37 ], [ %.pre171, %._crit_edge170 ]
  %191 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %192 = load i32* %191, align 4, !tbaa !36
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

; <label>:194                                     ; preds = %._crit_edge74
  tail call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %190, %struct.t_mdatoms* %md) #9
  br label %206

; <label>:195                                     ; preds = %._crit_edge74
  %196 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %197 = load i32** %196, align 8, !tbaa !37
  %198 = load i32* %197, align 4, !tbaa !26
  %199 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %200 = load i32*** %199, align 8, !tbaa !38
  %201 = load i32** %200, align 8, !tbaa !18
  %202 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %203 = load [3 x float]** %202, align 8, !tbaa !39
  %204 = getelementptr inbounds [3 x float]* %203, i64 0, i64 0
  %205 = tail call float @calc_com([3 x float]* %190, i32 %198, i32* %201, %struct.t_mdatoms* %md, float* %204, [3 x float]* %box) #9
  br label %206

; <label>:206                                     ; preds = %195, %194
  %207 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %207)
  %208 = tail call fastcc i32 @check_convergence(%struct.t_pull* %pull) #9
  %209 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %210 = load i32* %209, align 4, !tbaa !40
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %.loopexit6.i, label %.preheader5.i10

.preheader5.i10:                                  ; preds = %206
  %212 = load i32* %171, align 4, !tbaa !24
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %.lr.ph15.i, label %.loopexit6.i

.lr.ph15.i:                                       ; preds = %.preheader5.i10
  %214 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  br label %215

; <label>:215                                     ; preds = %215, %.lr.ph15.i
  %indvars.iv25.i11 = phi i64 [ 0, %.lr.ph15.i ], [ %indvars.iv.next26.i12, %215 ]
  %216 = load [3 x float]** %214, align 8, !tbaa !41
  %217 = getelementptr inbounds [3 x float]* %216, i64 %indvars.iv25.i11, i64 0
  %218 = load float* %217, align 4, !tbaa !14
  %219 = getelementptr inbounds [3 x float]* %216, i64 %indvars.iv25.i11, i64 1
  %220 = load float* %219, align 4, !tbaa !14
  %221 = getelementptr inbounds [3 x float]* %216, i64 %indvars.iv25.i11, i64 2
  %222 = load float* %221, align 4, !tbaa !14
  %223 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %224 = fpext float %218 to double
  %225 = fpext float %220 to double
  %226 = fpext float %222 to double
  %227 = trunc i64 %indvars.iv25.i11 to i32
  %228 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %223, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), i32 %227, double %224, double %225, double %226) #9
  %indvars.iv.next26.i12 = add nuw nsw i64 %indvars.iv25.i11, 1
  %229 = load i32* %171, align 4, !tbaa !24
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %indvars.iv.next26.i12, %230
  br i1 %231, label %215, label %.loopexit6.i

.loopexit6.i:                                     ; preds = %215, %.preheader5.i10, %206
  %232 = icmp eq i32 %208, 0
  br i1 %232, label %.preheader4.i13, label %.loopexit.i

.preheader4.i13:                                  ; preds = %.loopexit6.i
  %233 = load i32* %171, align 4, !tbaa !24
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %.lr.ph13.i14, label %.loopexit.i

.lr.ph13.i14:                                     ; preds = %.preheader4.i13
  %235 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %236 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %237 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  %238 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %239 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %240 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %241 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 11
  %242 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %243 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %244 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  br label %245

; <label>:245                                     ; preds = %._crit_edge11.i, %.lr.ph13.i14
  %indvars.iv23.i15 = phi i64 [ 0, %.lr.ph13.i14 ], [ %indvars.iv.next24.i20, %._crit_edge11.i ]
  %246 = load [3 x float]** %235, align 8, !tbaa !39
  %247 = getelementptr inbounds [3 x float]* %246, i64 0, i64 0
  %248 = load [3 x float]** %236, align 8, !tbaa !28
  %249 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv23.i15, i64 0
  %250 = load float* %247, align 4, !tbaa !14
  %251 = load float* %249, align 4, !tbaa !14
  %252 = fsub float %250, %251
  %253 = getelementptr inbounds [3 x float]* %246, i64 0, i64 1
  %254 = load float* %253, align 4, !tbaa !14
  %255 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv23.i15, i64 1
  %256 = load float* %255, align 4, !tbaa !14
  %257 = fsub float %254, %256
  %258 = getelementptr inbounds [3 x float]* %246, i64 0, i64 2
  %259 = load float* %258, align 4, !tbaa !14
  %260 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv23.i15, i64 2
  %261 = load float* %260, align 4, !tbaa !14
  %262 = fsub float %259, %261
  %263 = load [3 x float]** %237, align 8, !tbaa !41
  %264 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv23.i15, i64 0
  %265 = load float* %264, align 4, !tbaa !14
  %266 = fadd float %252, %265
  %267 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv23.i15, i64 1
  %268 = load float* %267, align 4, !tbaa !14
  %269 = fadd float %257, %268
  %270 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv23.i15, i64 2
  %271 = load float* %270, align 4, !tbaa !14
  %272 = fadd float %262, %271
  store float %269, float* %239, align 4, !tbaa !14
  store float %272, float* %240, align 4, !tbaa !14
  %273 = load float* %244, align 4, !tbaa !14
  %274 = fmul float %266, %273
  store float %274, float* %238, align 4, !tbaa !14
  %.phi.trans.insert.i16216 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %275 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 1
  %276 = load float* %275, align 4, !tbaa !14
  %277 = fmul float %269, %276
  store float %277, float* %.phi.trans.insert.i16216, align 4, !tbaa !14
  br label %._crit_edge27.i.._crit_edge27.i_crit_edge

._crit_edge27.i.._crit_edge27.i_crit_edge:        ; preds = %245, %._crit_edge27.i.._crit_edge27.i_crit_edge
  %indvars.iv.next19.i217 = phi i64 [ 2, %245 ], [ %indvars.iv.next19.i, %._crit_edge27.i.._crit_edge27.i_crit_edge ]
  %.phi.trans.insert.i16.phi.trans.insert = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next19.i217
  %.pre.i17.pre = load float* %.phi.trans.insert.i16.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert.i16 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next19.i217
  %278 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.next19.i217
  %279 = load float* %278, align 4, !tbaa !14
  %280 = fmul float %.pre.i17.pre, %279
  store float %280, float* %.phi.trans.insert.i16, align 4, !tbaa !14
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv.next19.i217, 1
  %exitcond20.i = icmp eq i64 %indvars.iv.next19.i, 3
  br i1 %exitcond20.i, label %281, label %._crit_edge27.i.._crit_edge27.i_crit_edge

; <label>:281                                     ; preds = %._crit_edge27.i.._crit_edge27.i_crit_edge
  %282 = load float* %241, align 4, !tbaa !42
  %283 = load float* %238, align 4, !tbaa !14
  %284 = fmul float %283, %283
  %285 = load float* %239, align 4, !tbaa !14
  %286 = fmul float %285, %285
  %287 = fadd float %284, %286
  %288 = load float* %240, align 4, !tbaa !14
  %289 = fmul float %288, %288
  %290 = fadd float %287, %289
  %sqrtf.i1.i = tail call float @sqrtf(float %290) #7
  %291 = fdiv float %282, %sqrtf.i1.i
  %292 = fmul float %283, %291
  %293 = fmul float %285, %291
  %294 = fmul float %288, %291
  %295 = load i32* %209, align 4, !tbaa !40
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %.preheader3.i18, label %297

; <label>:297                                     ; preds = %281
  %298 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %299 = fpext float %283 to double
  %300 = fpext float %285 to double
  %301 = fpext float %288 to double
  %302 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %298, i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), double %299, double %300, double %301) #9
  br label %.preheader3.i18

.preheader3.i18:                                  ; preds = %297, %281
  %303 = load i32** %242, align 8, !tbaa !25
  %304 = getelementptr inbounds i32* %303, i64 %indvars.iv23.i15
  %305 = load i32* %304, align 4, !tbaa !26
  %306 = icmp sgt i32 %305, 0
  %307 = load i32*** %243, align 8, !tbaa !27
  %308 = getelementptr inbounds i32** %307, i64 %indvars.iv23.i15
  %309 = load i32** %308, align 8, !tbaa !18
  br i1 %306, label %.lr.ph.i19, label %._crit_edge11.i

.lr.ph.i19:                                       ; preds = %.preheader3.i18
  %310 = sext i32 %305 to i64
  %311 = add nsw i64 %310, -1
  br label %312

; <label>:312                                     ; preds = %312, %.lr.ph.i19
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next22.i, %312 ]
  %313 = getelementptr inbounds i32* %309, i64 %indvars.iv21.i
  %314 = load i32* %313, align 4, !tbaa !26
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [3 x float]* %x, i64 %315, i64 0
  %317 = load float* %316, align 4, !tbaa !14
  %318 = fadd float %292, %317
  %319 = getelementptr inbounds [3 x float]* %x, i64 %315, i64 1
  %320 = load float* %319, align 4, !tbaa !14
  %321 = fadd float %293, %320
  %322 = getelementptr inbounds [3 x float]* %x, i64 %315, i64 2
  %323 = load float* %322, align 4, !tbaa !14
  %324 = fadd float %294, %323
  store float %318, float* %316, align 4, !tbaa !14
  store float %321, float* %319, align 4, !tbaa !14
  store float %324, float* %322, align 4, !tbaa !14
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond147 = icmp eq i64 %indvars.iv21.i, %311
  br i1 %exitcond147, label %._crit_edge11.i, label %312

._crit_edge11.i:                                  ; preds = %312, %.preheader3.i18
  %325 = load [3 x float]** %236, align 8, !tbaa !28
  %326 = getelementptr inbounds [3 x float]* %325, i64 %indvars.iv23.i15, i64 0
  %327 = tail call float @calc_com([3 x float]* %x, i32 %305, i32* %309, %struct.t_mdatoms* %md, float* %326, [3 x float]* %box) #9
  %indvars.iv.next24.i20 = add nuw nsw i64 %indvars.iv23.i15, 1
  %328 = load i32* %171, align 4, !tbaa !24
  %329 = sext i32 %328 to i64
  %330 = icmp slt i64 %indvars.iv.next24.i20, %329
  br i1 %330, label %245, label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge11.i, %.preheader4.i13, %.loopexit6.i
  %331 = tail call fastcc i32 @check_convergence(%struct.t_pull* %pull) #9
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %do_start.exit, label %.preheader2.i21

.preheader2.i21:                                  ; preds = %.loopexit.i
  %333 = load i32* %171, align 4, !tbaa !24
  %334 = icmp sgt i32 %333, 0
  br i1 %334, label %.preheader.lr.ph.i, label %._crit_edge.i26

.preheader.lr.ph.i:                               ; preds = %.preheader2.i21
  %335 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %336 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 13
  %337 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  br label %.preheader.i22

.preheader.i22:                                   ; preds = %376, %.preheader.lr.ph.i
  %338 = phi i32 [ %333, %.preheader.lr.ph.i ], [ %377, %376 ]
  %indvars.iv16.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next17.i, %376 ]
  %339 = load [3 x float]** %335, align 8, !tbaa !34
  %340 = getelementptr inbounds [3 x float]* %339, i64 %indvars.iv16.i, i64 0
  %341 = getelementptr inbounds [3 x float]* %339, i64 %indvars.iv16.i, i64 1
  %342 = getelementptr inbounds [3 x float]* %339, i64 %indvars.iv16.i, i64 2
  %343 = load [3 x float]** %337, align 8, !tbaa !41
  br label %344

; <label>:344                                     ; preds = %344, %.preheader.i22
  %indvars.iv.i23 = phi i64 [ 0, %.preheader.i22 ], [ %indvars.iv.next.i24, %344 ]
  %345 = getelementptr inbounds [3 x float]* %339, i64 %indvars.iv16.i, i64 %indvars.iv.i23
  %346 = load float* %345, align 4, !tbaa !14
  %347 = load float* %336, align 4, !tbaa !43
  %348 = fmul float %346, %347
  %349 = load float* %340, align 4, !tbaa !14
  %350 = fmul float %349, %349
  %351 = load float* %341, align 4, !tbaa !14
  %352 = fmul float %351, %351
  %353 = fadd float %350, %352
  %354 = load float* %342, align 4, !tbaa !14
  %355 = fmul float %354, %354
  %356 = fadd float %353, %355
  %sqrtf.i.i = tail call float @sqrtf(float %356) #7
  %357 = fdiv float %348, %sqrtf.i.i
  %358 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv16.i, i64 %indvars.iv.i23
  %359 = load float* %358, align 4, !tbaa !14
  %360 = fadd float %357, %359
  store float %360, float* %358, align 4, !tbaa !14
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1
  %exitcond.i25 = icmp eq i64 %indvars.iv.next.i24, 3
  br i1 %exitcond.i25, label %361, label %344

; <label>:361                                     ; preds = %344
  %362 = load i32* %209, align 4, !tbaa !40
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %376, label %364

; <label>:364                                     ; preds = %361
  %365 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %366 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv16.i, i64 0
  %367 = load float* %366, align 4, !tbaa !14
  %368 = fpext float %367 to double
  %369 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv16.i, i64 1
  %370 = load float* %369, align 4, !tbaa !14
  %371 = fpext float %370 to double
  %372 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv16.i, i64 2
  %373 = load float* %372, align 4, !tbaa !14
  %374 = fpext float %373 to double
  %375 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %365, i8* getelementptr inbounds ([38 x i8]* @.str13, i64 0, i64 0), double %368, double %371, double %374) #9
  %.pre31.i = load i32* %171, align 4, !tbaa !24
  br label %376

; <label>:376                                     ; preds = %364, %361
  %377 = phi i32 [ %338, %361 ], [ %.pre31.i, %364 ]
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %378 = sext i32 %377 to i64
  %379 = icmp slt i64 %indvars.iv.next17.i, %378
  br i1 %379, label %.preheader.i22, label %._crit_edge.i26

._crit_edge.i26:                                  ; preds = %376, %.preheader2.i21
  %380 = load i32* @do_start.nout, align 4, !tbaa !26
  %381 = sitofp i32 %step to float
  %382 = fmul float %381, %dt
  %383 = fdiv float %382, 1.000000e+03
  tail call void @dump_conf(%struct.t_pull* %pull, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, i32 %380, float %383) #9
  %384 = load i32* @do_start.nout, align 4, !tbaa !26
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* @do_start.nout, align 4, !tbaa !26
  br label %do_start.exit

do_start.exit:                                    ; preds = %.loopexit.i, %._crit_edge.i26
  call void @llvm.lifetime.end(i64 12, i8* %207)
  tail call void @print_start(%struct.t_pull* %pull, i32 %step) #9
  br label %2324

; <label>:386                                     ; preds = %._crit_edge112
  %387 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  %388 = load i32* %387, align 4, !tbaa !44
  switch i32 %388, label %.preheader43 [
    i32 1, label %400
    i32 3, label %400
  ]

.preheader43:                                     ; preds = %386
  %389 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %390 = load i32** %389, align 8, !tbaa !37
  %391 = load i32* %390, align 4, !tbaa !26
  %392 = icmp sgt i32 %391, 0
  br i1 %392, label %.lr.ph105, label %.preheader42

.lr.ph105:                                        ; preds = %.preheader43
  %393 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %394 = load i32*** %393, align 8, !tbaa !38
  %395 = load i32** %394, align 8, !tbaa !18
  %396 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %397 = load [3 x float]*** %396, align 8, !tbaa !45
  %398 = load [3 x float]** %397, align 8, !tbaa !18
  %399 = sext i32 %391 to i64
  br label %415

; <label>:400                                     ; preds = %386, %386
  %401 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %402 = load i32* %401, align 4, !tbaa !40
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %407, label %404

; <label>:404                                     ; preds = %400
  %405 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %406 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %405)
  %.pre168 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  br label %407

; <label>:407                                     ; preds = %400, %404
  %408 = phi [3 x float]* [ %9, %400 ], [ %.pre168, %404 ]
  tail call void @correct_t0_pbc(%struct.t_pull* %pull, [3 x float]* %408, %struct.t_mdatoms* %md, [3 x float]* %box) #9
  br label %.preheader42

.preheader42:                                     ; preds = %415, %.preheader43, %407
  %409 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %410 = load i32* %409, align 4, !tbaa !24
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader42
  %412 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %413 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %414 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %435

; <label>:415                                     ; preds = %.lr.ph105, %415
  %indvars.iv161 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next162, %415 ]
  %416 = getelementptr inbounds i32* %395, i64 %indvars.iv161
  %417 = load i32* %416, align 4, !tbaa !26
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [3 x float]* %9, i64 %418, i64 0
  %420 = getelementptr inbounds [3 x float]* %398, i64 %indvars.iv161, i64 0
  %421 = bitcast float* %419 to i32*
  %422 = load i32* %421, align 4, !tbaa !14
  %423 = bitcast float* %420 to i32*
  store i32 %422, i32* %423, align 4, !tbaa !14
  %424 = getelementptr inbounds [3 x float]* %9, i64 %418, i64 1
  %425 = bitcast float* %424 to i32*
  %426 = load i32* %425, align 4, !tbaa !14
  %427 = getelementptr inbounds [3 x float]* %398, i64 %indvars.iv161, i64 1
  %428 = bitcast float* %427 to i32*
  store i32 %426, i32* %428, align 4, !tbaa !14
  %429 = getelementptr inbounds [3 x float]* %9, i64 %418, i64 2
  %430 = bitcast float* %429 to i32*
  %431 = load i32* %430, align 4, !tbaa !14
  %432 = getelementptr inbounds [3 x float]* %398, i64 %indvars.iv161, i64 2
  %433 = bitcast float* %432 to i32*
  store i32 %431, i32* %433, align 4, !tbaa !14
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %434 = icmp slt i64 %indvars.iv.next162, %399
  br i1 %434, label %415, label %.preheader42

; <label>:435                                     ; preds = %.lr.ph101, %435
  %indvars.iv159 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next160, %435 ]
  %436 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  %437 = load i32** %412, align 8, !tbaa !25
  %438 = getelementptr inbounds i32* %437, i64 %indvars.iv159
  %439 = load i32* %438, align 4, !tbaa !26
  %440 = load i32*** %413, align 8, !tbaa !27
  %441 = getelementptr inbounds i32** %440, i64 %indvars.iv159
  %442 = load i32** %441, align 8, !tbaa !18
  %443 = load [3 x float]** %414, align 8, !tbaa !28
  %444 = getelementptr inbounds [3 x float]* %443, i64 %indvars.iv159, i64 0
  %445 = tail call float @calc_com([3 x float]* %436, i32 %439, i32* %442, %struct.t_mdatoms* %md, float* %444, [3 x float]* %box) #9
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %446 = load i32* %409, align 4, !tbaa !24
  %447 = sext i32 %446 to i64
  %448 = icmp slt i64 %indvars.iv.next160, %447
  br i1 %448, label %435, label %._crit_edge102

._crit_edge102:                                   ; preds = %435, %.preheader42
  %449 = phi i32 [ %410, %.preheader42 ], [ %446, %435 ]
  %450 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %451 = load i32* %450, align 4, !tbaa !36
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %.thread, label %453

; <label>:453                                     ; preds = %._crit_edge102
  %454 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 23
  %455 = load i32* %454, align 4, !tbaa !46
  %456 = srem i32 %step, %455
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %464, label %.preheader40

.preheader40:                                     ; preds = %453
  %458 = icmp sgt i32 %449, 0
  br i1 %458, label %.lr.ph99, label %.loopexit41

.lr.ph99:                                         ; preds = %.preheader40
  %459 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %460 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %461 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %462 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %463 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %466

; <label>:464                                     ; preds = %453
  %465 = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  tail call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %465, %struct.t_mdatoms* %md) #9
  br label %.loopexit41

; <label>:466                                     ; preds = %.lr.ph99, %493
  %indvars.iv157 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next158, %493 ]
  %467 = load [3 x float]*** %459, align 8, !tbaa !45
  %468 = load [3 x float]** %467, align 8, !tbaa !18
  %469 = load i32** %460, align 8, !tbaa !47
  %470 = getelementptr inbounds i32* %469, i64 %indvars.iv157
  %471 = load i32* %470, align 4, !tbaa !26
  %472 = load i32*** %461, align 8, !tbaa !48
  %473 = getelementptr inbounds i32** %472, i64 %indvars.iv157
  %474 = load i32** %473, align 8, !tbaa !18
  %475 = load [3 x float]** %462, align 8, !tbaa !49
  %476 = getelementptr inbounds [3 x float]* %475, i64 %indvars.iv157, i64 0
  %477 = tail call float @calc_com2([3 x float]* %468, i32 %471, i32* %474, %struct.t_mdatoms* %md, float* %476, [3 x float]* %box) #9
  %478 = load i32* %463, align 4, !tbaa !40
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %493, label %480

; <label>:480                                     ; preds = %466
  %481 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %482 = load [3 x float]** %462, align 8, !tbaa !49
  %483 = getelementptr inbounds [3 x float]* %482, i64 %indvars.iv157, i64 0
  %484 = load float* %483, align 4, !tbaa !14
  %485 = fpext float %484 to double
  %486 = getelementptr inbounds [3 x float]* %482, i64 %indvars.iv157, i64 1
  %487 = load float* %486, align 4, !tbaa !14
  %488 = fpext float %487 to double
  %489 = getelementptr inbounds [3 x float]* %482, i64 %indvars.iv157, i64 2
  %490 = load float* %489, align 4, !tbaa !14
  %491 = fpext float %490 to double
  %492 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %481, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), double %485, double %488, double %491) #9
  br label %493

; <label>:493                                     ; preds = %466, %480
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1
  %494 = load i32* %409, align 4, !tbaa !24
  %495 = sext i32 %494 to i64
  %496 = icmp slt i64 %indvars.iv.next158, %495
  br i1 %496, label %466, label %.loopexit41

.loopexit41:                                      ; preds = %493, %.preheader40, %464
  %.pr = load i32* %450, align 4, !tbaa !36
  %497 = icmp eq i32 %.pr, 0
  br i1 %497, label %.thread, label %511

.thread:                                          ; preds = %._crit_edge102, %.loopexit41
  %498 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %499 = load [3 x float]*** %498, align 8, !tbaa !45
  %500 = load [3 x float]** %499, align 8, !tbaa !18
  %501 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %502 = load i32** %501, align 8, !tbaa !37
  %503 = load i32* %502, align 4, !tbaa !26
  %504 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %505 = load i32*** %504, align 8, !tbaa !38
  %506 = load i32** %505, align 8, !tbaa !18
  %507 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %508 = load [3 x float]** %507, align 8, !tbaa !39
  %509 = getelementptr inbounds [3 x float]* %508, i64 0, i64 0
  %510 = tail call float @calc_com2([3 x float]* %500, i32 %503, i32* %506, %struct.t_mdatoms* %md, float* %509, [3 x float]* %box) #9
  br label %511

; <label>:511                                     ; preds = %.loopexit41, %.thread
  %512 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %513 = load i32* %512, align 4, !tbaa !50
  %514 = icmp sgt i32 %513, 1
  %515 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br i1 %514, label %516, label %._crit_edge176

; <label>:516                                     ; preds = %511
  %517 = load i32* %515, align 4, !tbaa !40
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

; <label>:519                                     ; preds = %516
  %520 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %521 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %520)
  br label %522

; <label>:522                                     ; preds = %516, %519
  tail call void @calc_running_com(%struct.t_pull* %pull) #9
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %511, %522
  %523 = load i32* %515, align 4, !tbaa !40
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %.loopexit, label %525

; <label>:525                                     ; preds = %._crit_edge176
  %526 = load i32* %450, align 4, !tbaa !36
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %560, label %.preheader39

.preheader39:                                     ; preds = %525
  %528 = load i32* %409, align 4, !tbaa !24
  %529 = icmp sgt i32 %528, 0
  br i1 %529, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %.preheader39
  %530 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %531 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  br label %532

; <label>:532                                     ; preds = %.lr.ph97, %532
  %indvars.iv155 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next156, %532 ]
  %533 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %534 = load [3 x float]** %530, align 8, !tbaa !28
  %535 = getelementptr inbounds [3 x float]* %534, i64 %indvars.iv155, i64 0
  %536 = load float* %535, align 4, !tbaa !14
  %537 = fpext float %536 to double
  %538 = getelementptr inbounds [3 x float]* %534, i64 %indvars.iv155, i64 1
  %539 = load float* %538, align 4, !tbaa !14
  %540 = fpext float %539 to double
  %541 = getelementptr inbounds [3 x float]* %534, i64 %indvars.iv155, i64 2
  %542 = load float* %541, align 4, !tbaa !14
  %543 = fpext float %542 to double
  %544 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %533, i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0), double %537, double %540, double %543) #9
  %545 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %546 = load [3 x float]** %531, align 8, !tbaa !49
  %547 = getelementptr inbounds [3 x float]* %546, i64 %indvars.iv155, i64 0
  %548 = load float* %547, align 4, !tbaa !14
  %549 = fpext float %548 to double
  %550 = getelementptr inbounds [3 x float]* %546, i64 %indvars.iv155, i64 1
  %551 = load float* %550, align 4, !tbaa !14
  %552 = fpext float %551 to double
  %553 = getelementptr inbounds [3 x float]* %546, i64 %indvars.iv155, i64 2
  %554 = load float* %553, align 4, !tbaa !14
  %555 = fpext float %554 to double
  %556 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %545, i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), double %549, double %552, double %555) #9
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %557 = load i32* %409, align 4, !tbaa !24
  %558 = sext i32 %557 to i64
  %559 = icmp slt i64 %indvars.iv.next156, %558
  br i1 %559, label %532, label %.loopexit

; <label>:560                                     ; preds = %525
  %561 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %562 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %563 = load [3 x float]** %562, align 8, !tbaa !39
  %564 = getelementptr inbounds [3 x float]* %563, i64 0, i64 0
  %565 = load float* %564, align 4, !tbaa !14
  %566 = fpext float %565 to double
  %567 = getelementptr inbounds [3 x float]* %563, i64 0, i64 1
  %568 = load float* %567, align 4, !tbaa !14
  %569 = fpext float %568 to double
  %570 = getelementptr inbounds [3 x float]* %563, i64 0, i64 2
  %571 = load float* %570, align 4, !tbaa !14
  %572 = fpext float %571 to double
  %573 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %561, i8* getelementptr inbounds ([39 x i8]* @.str7, i64 0, i64 0), double %566, double %569, double %572) #9
  br label %.loopexit

.loopexit:                                        ; preds = %532, %.preheader39, %._crit_edge176, %560
  %574 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %574)
  %575 = bitcast [3 x float]* %unc_ij.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %575)
  %576 = bitcast [3 x float]* %ref_ij.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %576)
  %577 = bitcast [3 x float]* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %577)
  %578 = bitcast [3 x float]* %tmp2.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %578)
  %579 = bitcast [3 x float]* %tmp3.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %579)
  %580 = load i32* %450, align 4, !tbaa !36
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %587, label %582

; <label>:582                                     ; preds = %.loopexit
  %583 = load i32* %409, align 4, !tbaa !24
  %584 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 215, i32 %583, i32 12) #9
  %585 = load i32* %409, align 4, !tbaa !24
  %586 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 216, i32 %585, i32 12) #9
  br label %590

; <label>:587                                     ; preds = %.loopexit
  %588 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 218, i32 1, i32 12) #9
  %589 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 219, i32 1, i32 12) #9
  br label %590

; <label>:590                                     ; preds = %587, %582
  %rjnew.0.in.i = phi i8* [ %589, %587 ], [ %586, %582 ]
  %ref_dr.0.in.i = phi i8* [ %588, %587 ], [ %584, %582 ]
  %ref_dr.0.i = bitcast i8* %ref_dr.0.in.i to [3 x float]*
  %rjnew.0.i = bitcast i8* %rjnew.0.in.i to [3 x float]*
  %591 = load i32* %409, align 4, !tbaa !24
  %592 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 221, i32 %591, i32 12) #9
  %593 = bitcast i8* %592 to [3 x float]*
  %594 = load i32* %409, align 4, !tbaa !24
  %595 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 222, i32 %594, i32 12) #9
  %596 = bitcast i8* %595 to [3 x float]*
  %597 = load i32* %409, align 4, !tbaa !24
  %598 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 223, i32 %597, i32 4) #9
  %599 = bitcast i8* %598 to float*
  %600 = load i32* %409, align 4, !tbaa !24
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %.lr.ph79.i, label %._crit_edge80.i

.lr.ph79.i:                                       ; preds = %590
  %602 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %603 = load [3 x float]** %602, align 8, !tbaa !28
  %604 = sext i32 %600 to i64
  %605 = add nsw i64 %604, -1
  br label %606

; <label>:606                                     ; preds = %606, %.lr.ph79.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph79.i ], [ %indvars.iv.next131.i, %606 ]
  %607 = getelementptr inbounds [3 x float]* %603, i64 %indvars.iv130.i, i64 0
  %608 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv130.i, i64 0
  %609 = bitcast float* %607 to i32*
  %610 = load i32* %609, align 4, !tbaa !14
  %611 = bitcast float* %608 to i32*
  store i32 %610, i32* %611, align 4, !tbaa !14
  %612 = getelementptr inbounds [3 x float]* %603, i64 %indvars.iv130.i, i64 1
  %613 = bitcast float* %612 to i32*
  %614 = load i32* %613, align 4, !tbaa !14
  %615 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv130.i, i64 1
  %616 = bitcast float* %615 to i32*
  store i32 %614, i32* %616, align 4, !tbaa !14
  %617 = getelementptr inbounds [3 x float]* %603, i64 %indvars.iv130.i, i64 2
  %618 = bitcast float* %617 to i32*
  %619 = load i32* %618, align 4, !tbaa !14
  %620 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv130.i, i64 2
  %621 = bitcast float* %620 to i32*
  store i32 %619, i32* %621, align 4, !tbaa !14
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1
  %exitcond154 = icmp eq i64 %indvars.iv130.i, %605
  br i1 %exitcond154, label %._crit_edge80.i, label %606

._crit_edge80.i:                                  ; preds = %606, %590
  %622 = load i32* %450, align 4, !tbaa !36
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %644, label %.preheader25.i

.preheader25.i:                                   ; preds = %._crit_edge80.i
  br i1 %601, label %.lr.ph76.i, label %.preheader24.loopexit.i

.lr.ph76.i:                                       ; preds = %.preheader25.i
  %624 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %625 = load [3 x float]** %624, align 8, !tbaa !49
  %626 = sext i32 %600 to i64
  %627 = add nsw i64 %626, -1
  br label %628

; <label>:628                                     ; preds = %628, %.lr.ph76.i
  %indvars.iv128.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next129.i, %628 ]
  %629 = getelementptr inbounds [3 x float]* %625, i64 %indvars.iv128.i, i64 0
  %630 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv128.i, i64 0
  %631 = bitcast float* %629 to i32*
  %632 = load i32* %631, align 4, !tbaa !14
  %633 = bitcast float* %630 to i32*
  store i32 %632, i32* %633, align 4, !tbaa !14
  %634 = getelementptr inbounds [3 x float]* %625, i64 %indvars.iv128.i, i64 1
  %635 = bitcast float* %634 to i32*
  %636 = load i32* %635, align 4, !tbaa !14
  %637 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv128.i, i64 1
  %638 = bitcast float* %637 to i32*
  store i32 %636, i32* %638, align 4, !tbaa !14
  %639 = getelementptr inbounds [3 x float]* %625, i64 %indvars.iv128.i, i64 2
  %640 = bitcast float* %639 to i32*
  %641 = load i32* %640, align 4, !tbaa !14
  %642 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv128.i, i64 2
  %643 = bitcast float* %642 to i32*
  store i32 %641, i32* %643, align 4, !tbaa !14
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1
  %exitcond153 = icmp eq i64 %indvars.iv128.i, %627
  br i1 %exitcond153, label %.preheader24.loopexit.i, label %628

; <label>:644                                     ; preds = %._crit_edge80.i
  %645 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %646 = load [3 x float]** %645, align 8, !tbaa !39
  %647 = bitcast [3 x float]* %646 to i32*
  %648 = load i32* %647, align 4, !tbaa !14
  %649 = bitcast i8* %rjnew.0.in.i to i32*
  store i32 %648, i32* %649, align 4, !tbaa !14
  %650 = getelementptr inbounds [3 x float]* %646, i64 0, i64 1
  %651 = bitcast float* %650 to i32*
  %652 = load i32* %651, align 4, !tbaa !14
  %653 = getelementptr inbounds i8* %rjnew.0.in.i, i64 4
  %654 = bitcast i8* %653 to i32*
  store i32 %652, i32* %654, align 4, !tbaa !14
  %655 = getelementptr inbounds [3 x float]* %646, i64 0, i64 2
  %656 = bitcast float* %655 to i32*
  %657 = load i32* %656, align 4, !tbaa !14
  %658 = getelementptr inbounds i8* %rjnew.0.in.i, i64 8
  %659 = bitcast i8* %658 to i32*
  store i32 %657, i32* %659, align 4, !tbaa !14
  br label %.preheader24.i

.preheader24.loopexit.i:                          ; preds = %628, %.preheader25.i
  %.pre180.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 4
  %.pre182.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 8
  br label %.preheader24.i

.preheader24.i:                                   ; preds = %.preheader24.loopexit.i, %644
  %.pre-phi183.i = phi i8* [ %.pre182.i, %.preheader24.loopexit.i ], [ %658, %644 ]
  %.pre-phi181.i = phi i8* [ %.pre180.i, %.preheader24.loopexit.i ], [ %653, %644 ]
  %660 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  %661 = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 0
  %662 = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 1
  %663 = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 2
  %664 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 0
  %665 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 1
  %666 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 2
  %667 = bitcast i8* %rjnew.0.in.i to float*
  %668 = bitcast i8* %.pre-phi181.i to float*
  %669 = bitcast i8* %.pre-phi183.i to float*
  %670 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %671 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %672 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %673 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 15
  %674 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %675 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %676 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %677 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %678 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %679 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %680 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %681 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 5
  %682 = fmul float %dt, %dt
  %683 = fsub float -0.000000e+00, %682
  %684 = fpext float %683 to double
  %685 = fpext float %682 to double
  %686 = bitcast i8* %ref_dr.0.in.i to float*
  %687 = getelementptr inbounds i8* %ref_dr.0.in.i, i64 4
  %688 = bitcast i8* %687 to float*
  %689 = getelementptr inbounds i8* %ref_dr.0.in.i, i64 8
  %690 = bitcast i8* %689 to float*
  %691 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %692 = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 0
  %693 = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 1
  %694 = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 2
  %695 = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 0
  %696 = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 1
  %697 = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 2
  %698 = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 0
  %699 = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 1
  %700 = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 2
  br i1 %601, label %.lr.ph66.i.preheader, label %.thread197.i

.lr.ph66.i.preheader:                             ; preds = %.preheader24.i, %..preheader23_crit_edge.i
  %n.074.i93 = phi i32 [ %1760, %..preheader23_crit_edge.i ], [ 0, %.preheader24.i ]
  br label %.lr.ph66.i

.preheader22.i:                                   ; preds = %.loopexit18.i
  %701 = icmp sgt i32 %1559, 0
  br i1 %701, label %.lr.ph70.i.preheader, label %.thread197.i

.lr.ph70.i.preheader:                             ; preds = %.preheader22.i
  %702 = icmp sgt i64 %1560, 1
  br label %.lr.ph70.i

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader, %.loopexit18.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.loopexit18.i ], [ 0, %.lr.ph66.i.preheader ]
  %703 = load i32* %515, align 4, !tbaa !40
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %709, label %705

; <label>:705                                     ; preds = %.lr.ph66.i
  %706 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %707 = trunc i64 %indvars.iv122.i to i32
  %708 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %706, i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0), i32 %707, i32 %n.074.i93) #9
  br label %709

; <label>:709                                     ; preds = %705, %.lr.ph66.i
  %710 = load i32* %450, align 4, !tbaa !36
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %762, label %712

; <label>:712                                     ; preds = %709
  %713 = load [3 x float]** %679, align 8, !tbaa !51
  %714 = getelementptr inbounds [3 x float]* %713, i64 %indvars.iv122.i, i64 0
  %715 = load [3 x float]** %675, align 8, !tbaa !52
  %716 = getelementptr inbounds [3 x float]* %715, i64 %indvars.iv122.i, i64 0
  %717 = load float* %714, align 4, !tbaa !14
  %718 = load float* %716, align 4, !tbaa !14
  %719 = fsub float %717, %718
  %720 = getelementptr inbounds [3 x float]* %713, i64 %indvars.iv122.i, i64 1
  %721 = load float* %720, align 4, !tbaa !14
  %722 = getelementptr inbounds [3 x float]* %715, i64 %indvars.iv122.i, i64 1
  %723 = load float* %722, align 4, !tbaa !14
  %724 = fsub float %721, %723
  %725 = getelementptr inbounds [3 x float]* %713, i64 %indvars.iv122.i, i64 2
  %726 = load float* %725, align 4, !tbaa !14
  %727 = getelementptr inbounds [3 x float]* %715, i64 %indvars.iv122.i, i64 2
  %728 = load float* %727, align 4, !tbaa !14
  %729 = fsub float %726, %728
  store float %719, float* %676, align 4, !tbaa !14
  store float %724, float* %677, align 4, !tbaa !14
  store float %729, float* %678, align 4, !tbaa !14
  %730 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 0
  %731 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %732 = load float* %730, align 4, !tbaa !14
  %733 = load float* %731, align 4, !tbaa !14
  %734 = fsub float %732, %733
  %735 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 1
  %736 = load float* %735, align 4, !tbaa !14
  %737 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %738 = load float* %737, align 4, !tbaa !14
  %739 = fsub float %736, %738
  %740 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 2
  %741 = load float* %740, align 4, !tbaa !14
  %742 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  %743 = load float* %742, align 4, !tbaa !14
  %744 = fsub float %741, %743
  store float %734, float* %664, align 4, !tbaa !14
  store float %739, float* %665, align 4, !tbaa !14
  store float %744, float* %666, align 4, !tbaa !14
  %745 = load [3 x float]** %672, align 8, !tbaa !53
  %746 = getelementptr inbounds [3 x float]* %745, i64 %indvars.iv122.i, i64 0
  %747 = load [3 x float]** %671, align 8, !tbaa !54
  %748 = getelementptr inbounds [3 x float]* %747, i64 %indvars.iv122.i, i64 0
  %749 = load float* %746, align 4, !tbaa !14
  %750 = load float* %748, align 4, !tbaa !14
  %751 = fsub float %749, %750
  %752 = getelementptr inbounds [3 x float]* %745, i64 %indvars.iv122.i, i64 1
  %753 = load float* %752, align 4, !tbaa !14
  %754 = getelementptr inbounds [3 x float]* %747, i64 %indvars.iv122.i, i64 1
  %755 = load float* %754, align 4, !tbaa !14
  %756 = fsub float %753, %755
  %757 = getelementptr inbounds [3 x float]* %745, i64 %indvars.iv122.i, i64 2
  %758 = load float* %757, align 4, !tbaa !14
  %759 = getelementptr inbounds [3 x float]* %747, i64 %indvars.iv122.i, i64 2
  %760 = load float* %759, align 4, !tbaa !14
  %761 = fsub float %758, %760
  br label %.preheader21.i

; <label>:762                                     ; preds = %709
  %763 = load [3 x float]** %674, align 8, !tbaa !55
  %764 = getelementptr inbounds [3 x float]* %763, i64 0, i64 0
  %765 = load [3 x float]** %675, align 8, !tbaa !52
  %766 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv122.i, i64 0
  %767 = load float* %764, align 4, !tbaa !14
  %768 = load float* %766, align 4, !tbaa !14
  %769 = fsub float %767, %768
  %770 = getelementptr inbounds [3 x float]* %763, i64 0, i64 1
  %771 = load float* %770, align 4, !tbaa !14
  %772 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv122.i, i64 1
  %773 = load float* %772, align 4, !tbaa !14
  %774 = fsub float %771, %773
  %775 = getelementptr inbounds [3 x float]* %763, i64 0, i64 2
  %776 = load float* %775, align 4, !tbaa !14
  %777 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv122.i, i64 2
  %778 = load float* %777, align 4, !tbaa !14
  %779 = fsub float %776, %778
  store float %769, float* %676, align 4, !tbaa !14
  store float %774, float* %677, align 4, !tbaa !14
  store float %779, float* %678, align 4, !tbaa !14
  %780 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %781 = load float* %667, align 4, !tbaa !14
  %782 = load float* %780, align 4, !tbaa !14
  %783 = fsub float %781, %782
  %784 = load float* %668, align 4, !tbaa !14
  %785 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %786 = load float* %785, align 4, !tbaa !14
  %787 = fsub float %784, %786
  %788 = load float* %669, align 4, !tbaa !14
  %789 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  %790 = load float* %789, align 4, !tbaa !14
  %791 = fsub float %788, %790
  store float %783, float* %664, align 4, !tbaa !14
  store float %787, float* %665, align 4, !tbaa !14
  store float %791, float* %666, align 4, !tbaa !14
  %792 = load [3 x float]** %670, align 8, !tbaa !56
  %793 = getelementptr inbounds [3 x float]* %792, i64 0, i64 0
  %794 = load [3 x float]** %671, align 8, !tbaa !54
  %795 = getelementptr inbounds [3 x float]* %794, i64 %indvars.iv122.i, i64 0
  %796 = load float* %793, align 4, !tbaa !14
  %797 = load float* %795, align 4, !tbaa !14
  %798 = fsub float %796, %797
  %799 = getelementptr inbounds [3 x float]* %792, i64 0, i64 1
  %800 = load float* %799, align 4, !tbaa !14
  %801 = getelementptr inbounds [3 x float]* %794, i64 %indvars.iv122.i, i64 1
  %802 = load float* %801, align 4, !tbaa !14
  %803 = fsub float %800, %802
  %804 = getelementptr inbounds [3 x float]* %792, i64 0, i64 2
  %805 = load float* %804, align 4, !tbaa !14
  %806 = getelementptr inbounds [3 x float]* %794, i64 %indvars.iv122.i, i64 2
  %807 = load float* %806, align 4, !tbaa !14
  %808 = fsub float %805, %807
  br label %.preheader21.i

.preheader21.i:                                   ; preds = %762, %712
  %storemerge194.i = phi float [ %751, %712 ], [ %798, %762 ]
  %storemerge192.i = phi float [ %756, %712 ], [ %803, %762 ]
  %storemerge191.i = phi float [ %761, %712 ], [ %808, %762 ]
  %809 = phi float [ %729, %712 ], [ %779, %762 ]
  store float %storemerge194.i, float* %661, align 4, !tbaa !14
  store float %storemerge192.i, float* %662, align 4, !tbaa !14
  store float %storemerge191.i, float* %663, align 4, !tbaa !14
  br label %810

; <label>:810                                     ; preds = %._crit_edge132.i, %.preheader21.i
  %811 = phi float [ %809, %.preheader21.i ], [ %.pre133.i, %._crit_edge132.i ]
  %indvars.iv114.i = phi i64 [ 2, %.preheader21.i ], [ %indvars.iv.next115.i, %._crit_edge132.i ]
  %812 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv114.i
  %813 = fpext float %811 to double
  %814 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i
  %815 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 %indvars.iv114.i
  %816 = load float* %815, align 4, !tbaa !14
  %817 = fpext float %816 to double
  %818 = fmul double %817, -5.000000e-01
  %819 = fcmp olt double %813, %818
  br i1 %819, label %820, label %833

; <label>:820                                     ; preds = %810
  %821 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %822 = load float* %676, align 4, !tbaa !14
  %823 = load float* %821, align 4, !tbaa !14
  %824 = fadd float %822, %823
  %825 = load float* %677, align 4, !tbaa !14
  %826 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %827 = load float* %826, align 4, !tbaa !14
  %828 = fadd float %825, %827
  %829 = load float* %678, align 4, !tbaa !14
  %830 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %831 = load float* %830, align 4, !tbaa !14
  %832 = fadd float %829, %831
  store float %824, float* %676, align 4, !tbaa !14
  store float %828, float* %677, align 4, !tbaa !14
  store float %832, float* %678, align 4, !tbaa !14
  %.pre134.i = load float* %812, align 4, !tbaa !14
  br label %833

; <label>:833                                     ; preds = %820, %810
  %834 = phi float [ %.pre134.i, %820 ], [ %811, %810 ]
  %835 = fpext float %834 to double
  %836 = fmul double %817, 5.000000e-01
  %837 = fcmp ogt double %835, %836
  br i1 %837, label %838, label %851

; <label>:838                                     ; preds = %833
  %839 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %840 = load float* %676, align 4, !tbaa !14
  %841 = load float* %839, align 4, !tbaa !14
  %842 = fsub float %840, %841
  %843 = load float* %677, align 4, !tbaa !14
  %844 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %845 = load float* %844, align 4, !tbaa !14
  %846 = fsub float %843, %845
  %847 = load float* %678, align 4, !tbaa !14
  %848 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %849 = load float* %848, align 4, !tbaa !14
  %850 = fsub float %847, %849
  store float %842, float* %676, align 4, !tbaa !14
  store float %846, float* %677, align 4, !tbaa !14
  store float %850, float* %678, align 4, !tbaa !14
  br label %851

; <label>:851                                     ; preds = %838, %833
  %852 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv114.i
  %853 = load float* %852, align 4, !tbaa !14
  %854 = fpext float %853 to double
  %855 = fcmp olt double %854, %818
  br i1 %855, label %856, label %869

; <label>:856                                     ; preds = %851
  %857 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %858 = load float* %664, align 4, !tbaa !14
  %859 = load float* %857, align 4, !tbaa !14
  %860 = fadd float %858, %859
  %861 = load float* %665, align 4, !tbaa !14
  %862 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %863 = load float* %862, align 4, !tbaa !14
  %864 = fadd float %861, %863
  %865 = load float* %666, align 4, !tbaa !14
  %866 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %867 = load float* %866, align 4, !tbaa !14
  %868 = fadd float %865, %867
  store float %860, float* %664, align 4, !tbaa !14
  store float %864, float* %665, align 4, !tbaa !14
  store float %868, float* %666, align 4, !tbaa !14
  %.pre135.i = load float* %852, align 4, !tbaa !14
  br label %869

; <label>:869                                     ; preds = %856, %851
  %870 = phi float [ %.pre135.i, %856 ], [ %853, %851 ]
  %871 = fpext float %870 to double
  %872 = fcmp ogt double %871, %836
  br i1 %872, label %873, label %886

; <label>:873                                     ; preds = %869
  %874 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %875 = load float* %664, align 4, !tbaa !14
  %876 = load float* %874, align 4, !tbaa !14
  %877 = fsub float %875, %876
  %878 = load float* %665, align 4, !tbaa !14
  %879 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %880 = load float* %879, align 4, !tbaa !14
  %881 = fsub float %878, %880
  %882 = load float* %666, align 4, !tbaa !14
  %883 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %884 = load float* %883, align 4, !tbaa !14
  %885 = fsub float %882, %884
  store float %877, float* %664, align 4, !tbaa !14
  store float %881, float* %665, align 4, !tbaa !14
  store float %885, float* %666, align 4, !tbaa !14
  br label %886

; <label>:886                                     ; preds = %873, %869
  %887 = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 %indvars.iv114.i
  %888 = load float* %887, align 4, !tbaa !14
  %889 = fpext float %888 to double
  %890 = fcmp olt double %889, %818
  br i1 %890, label %891, label %904

; <label>:891                                     ; preds = %886
  %892 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %893 = load float* %661, align 4, !tbaa !14
  %894 = load float* %892, align 4, !tbaa !14
  %895 = fadd float %893, %894
  %896 = load float* %662, align 4, !tbaa !14
  %897 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %898 = load float* %897, align 4, !tbaa !14
  %899 = fadd float %896, %898
  %900 = load float* %663, align 4, !tbaa !14
  %901 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %902 = load float* %901, align 4, !tbaa !14
  %903 = fadd float %900, %902
  store float %895, float* %661, align 4, !tbaa !14
  store float %899, float* %662, align 4, !tbaa !14
  store float %903, float* %663, align 4, !tbaa !14
  %.pre136.i = load float* %887, align 4, !tbaa !14
  br label %904

; <label>:904                                     ; preds = %891, %886
  %905 = phi float [ %.pre136.i, %891 ], [ %888, %886 ]
  %906 = fpext float %905 to double
  %907 = fcmp ogt double %906, %836
  br i1 %907, label %908, label %921

; <label>:908                                     ; preds = %904
  %909 = getelementptr inbounds [3 x float]* %814, i64 0, i64 0
  %910 = load float* %661, align 4, !tbaa !14
  %911 = load float* %909, align 4, !tbaa !14
  %912 = fsub float %910, %911
  %913 = load float* %662, align 4, !tbaa !14
  %914 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 1
  %915 = load float* %914, align 4, !tbaa !14
  %916 = fsub float %913, %915
  %917 = load float* %663, align 4, !tbaa !14
  %918 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv114.i, i64 2
  %919 = load float* %918, align 4, !tbaa !14
  %920 = fsub float %917, %919
  store float %912, float* %661, align 4, !tbaa !14
  store float %916, float* %662, align 4, !tbaa !14
  store float %920, float* %663, align 4, !tbaa !14
  %.pre137.i = load float* %887, align 4, !tbaa !14
  br label %921

; <label>:921                                     ; preds = %908, %904
  %922 = phi float [ %.pre137.i, %908 ], [ %905, %904 ]
  %923 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv114.i
  %924 = load float* %923, align 4, !tbaa !14
  %925 = load float* %812, align 4, !tbaa !14
  %926 = fmul float %924, %925
  store float %926, float* %812, align 4, !tbaa !14
  %927 = load float* %852, align 4, !tbaa !14
  %928 = fmul float %924, %927
  store float %928, float* %852, align 4, !tbaa !14
  %929 = fmul float %922, %924
  store float %929, float* %887, align 4, !tbaa !14
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, -1
  %930 = icmp sgt i64 %indvars.iv114.i, 0
  br i1 %930, label %._crit_edge132.i, label %931

._crit_edge132.i:                                 ; preds = %921
  %.phi.trans.insert.i27 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next115.i
  %.pre133.i = load float* %.phi.trans.insert.i27, align 4, !tbaa !14
  br label %810

; <label>:931                                     ; preds = %921
  %932 = load float** %680, align 8, !tbaa !32
  %933 = getelementptr inbounds float* %932, i64 %indvars.iv122.i
  %934 = load float* %933, align 4, !tbaa !14
  %935 = fdiv float 1.000000e+00, %934
  br i1 %711, label %939, label %936

; <label>:936                                     ; preds = %931
  %937 = load float** %691, align 8, !tbaa !57
  %938 = getelementptr inbounds float* %937, i64 %indvars.iv122.i
  br label %941

; <label>:939                                     ; preds = %931
  %940 = load float** %681, align 8, !tbaa !58
  br label %941

; <label>:941                                     ; preds = %939, %936
  %.pn2.in.i = phi float* [ %938, %936 ], [ %940, %939 ]
  %.pn2.i = load float* %.pn2.in.i, align 4
  %.pn.i = fdiv float 1.000000e+00, %.pn2.i
  %rm.0.in.i = fadd float %935, %.pn.i
  %rm.0.i = fpext float %rm.0.in.i to double
  %942 = load float* %676, align 4, !tbaa !14
  %943 = fmul float %942, %942
  %944 = load float* %677, align 4, !tbaa !14
  %945 = fmul float %944, %944
  %946 = fadd float %943, %945
  %947 = load float* %678, align 4, !tbaa !14
  %948 = fmul float %947, %947
  %949 = fadd float %946, %948
  %950 = fmul float %949, %dt
  %951 = fmul float %950, %dt
  %952 = fmul float %951, %dt
  %953 = fmul float %952, %dt
  %954 = fpext float %953 to double
  %955 = fmul double %rm.0.i, %954
  %956 = fmul double %rm.0.i, %955
  %957 = load float* %664, align 4, !tbaa !14
  %958 = fmul float %942, %957
  %959 = load float* %665, align 4, !tbaa !14
  %960 = fmul float %944, %959
  %961 = fadd float %958, %960
  %962 = load float* %666, align 4, !tbaa !14
  %963 = fmul float %947, %962
  %964 = fadd float %961, %963
  %965 = fmul float %964, 2.000000e+00
  %966 = fmul float %965, %dt
  %967 = fmul float %966, %dt
  %968 = fpext float %967 to double
  %969 = fmul double %rm.0.i, %968
  %970 = fmul float %957, %957
  %971 = fmul float %959, %959
  %972 = fadd float %970, %971
  %973 = fmul float %962, %962
  %974 = fadd float %972, %973
  %975 = load float* %661, align 4, !tbaa !14
  %976 = fmul float %975, %975
  %977 = load float* %662, align 4, !tbaa !14
  %978 = fmul float %977, %977
  %979 = fadd float %976, %978
  %980 = load float* %663, align 4, !tbaa !14
  %981 = fmul float %980, %980
  %982 = fadd float %979, %981
  %983 = fsub float %974, %982
  %984 = fpext float %983 to double
  %985 = fcmp olt double %969, 0.000000e+00
  %986 = fmul double %969, %969
  %987 = fmul double %956, 4.000000e+00
  %988 = fmul double %987, %984
  %989 = fsub double %986, %988
  %990 = tail call double @sqrt(double %989) #11
  br i1 %985, label %991, label %993

; <label>:991                                     ; preds = %941
  %992 = fsub double %969, %990
  br label %995

; <label>:993                                     ; preds = %941
  %994 = fadd double %990, %969
  br label %995

; <label>:995                                     ; preds = %993, %991
  %q.0.in.i = phi double [ %992, %991 ], [ %994, %993 ]
  %q.0.i = fmul double %q.0.in.i, -5.000000e-01
  %996 = fdiv double %q.0.i, %956
  %997 = fdiv double %984, %q.0.i
  %998 = fcmp ogt double %996, 0.000000e+00
  %999 = select i1 %998, double %996, double %997
  %1000 = load i32* %515, align 4, !tbaa !40
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1015, label %1002

; <label>:1002                                    ; preds = %995
  %1003 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1004 = fmul double %956, %996
  %1005 = fmul double %996, %1004
  %1006 = fmul double %969, %996
  %1007 = fadd double %1006, %1005
  %1008 = fadd double %984, %1007
  %1009 = fmul double %956, %997
  %1010 = fmul double %997, %1009
  %1011 = fmul double %969, %997
  %1012 = fadd double %1011, %1010
  %1013 = fadd double %984, %1012
  %1014 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1003, i8* getelementptr inbounds ([63 x i8]* @.str20, i64 0, i64 0), double %956, double %969, double %984, double %996, double %997, double %1008, double %1013, double %999) #9
  %.pre138.i = load i32* %450, align 4, !tbaa !36
  %.pre139.i = load float** %680, align 8, !tbaa !32
  %.phi.trans.insert140.i = getelementptr inbounds float* %.pre139.i, i64 %indvars.iv122.i
  %.pre141.i = load float* %.phi.trans.insert140.i, align 4, !tbaa !14
  br label %1015

; <label>:1015                                    ; preds = %1002, %995
  %1016 = phi float [ %934, %995 ], [ %.pre141.i, %1002 ]
  %1017 = phi i32 [ %710, %995 ], [ %.pre138.i, %1002 ]
  %1018 = icmp eq i32 %1017, 0
  %1019 = fmul double %684, %999
  %1020 = fpext float %1016 to double
  %1021 = fdiv double %1019, %1020
  %1022 = fptrunc double %1021 to float
  %1023 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv122.i, i64 0
  %1024 = fmul float %942, %1022
  store float %1024, float* %1023, align 4, !tbaa !14
  %1025 = fmul float %944, %1022
  %1026 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv122.i, i64 1
  store float %1025, float* %1026, align 4, !tbaa !14
  %1027 = fmul float %947, %1022
  %1028 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv122.i, i64 2
  store float %1027, float* %1028, align 4, !tbaa !14
  %1029 = fmul double %685, %999
  br i1 %1018, label %1043, label %1030

; <label>:1030                                    ; preds = %1015
  %1031 = load float** %691, align 8, !tbaa !57
  %1032 = getelementptr inbounds float* %1031, i64 %indvars.iv122.i
  %1033 = load float* %1032, align 4, !tbaa !14
  %1034 = fpext float %1033 to double
  %1035 = fdiv double %1029, %1034
  %1036 = fptrunc double %1035 to float
  %1037 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 0
  %1038 = fmul float %942, %1036
  store float %1038, float* %1037, align 4, !tbaa !14
  %1039 = fmul float %944, %1036
  %1040 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 1
  store float %1039, float* %1040, align 4, !tbaa !14
  %1041 = fmul float %947, %1036
  %1042 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 2
  store float %1041, float* %1042, align 4, !tbaa !14
  br label %.preheader20.i.preheader

; <label>:1043                                    ; preds = %1015
  %1044 = load float** %681, align 8, !tbaa !58
  %1045 = load float* %1044, align 4, !tbaa !14
  %1046 = fpext float %1045 to double
  %1047 = fdiv double %1029, %1046
  %1048 = fptrunc double %1047 to float
  %1049 = fmul float %942, %1048
  store float %1049, float* %686, align 4, !tbaa !14
  %1050 = fmul float %944, %1048
  store float %1050, float* %688, align 4, !tbaa !14
  %1051 = fmul float %947, %1048
  store float %1051, float* %690, align 4, !tbaa !14
  br label %.preheader20.i.preheader

.preheader20.i.preheader:                         ; preds = %1030, %1043
  %1052 = load float* %1023, align 4, !tbaa !14
  %1053 = insertelement <2 x float> undef, float %1052, i32 0
  %1054 = insertelement <2 x float> %1053, float %942, i32 1
  %1055 = fpext <2 x float> %1054 to <2 x double>
  %1056 = extractelement <2 x double> %1055, i32 0
  %1057 = extractelement <2 x double> %1055, i32 1
  %1058 = fmul double %1057, %1056
  %1059 = fadd double %1058, 0.000000e+00
  %1060 = fmul <2 x double> %1055, %1055
  %1061 = fadd <2 x double> %1060, zeroinitializer
  br label %._crit_edge142.i

._crit_edge142.i:                                 ; preds = %.preheader20.i.preheader, %._crit_edge142.i
  %indvars.iv.next.i.i92 = phi i64 [ 1, %.preheader20.i.preheader ], [ %indvars.iv.next.i.i, %._crit_edge142.i ]
  %1062 = phi double [ %1059, %.preheader20.i.preheader ], [ %1072, %._crit_edge142.i ]
  %1063 = phi <2 x double> [ %1061, %.preheader20.i.preheader ], [ %1074, %._crit_edge142.i ]
  %.phi.trans.insert143.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next.i.i92
  %.pre144.i = load float* %.phi.trans.insert143.i, align 4, !tbaa !14
  %1064 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv122.i, i64 %indvars.iv.next.i.i92
  %1065 = load float* %1064, align 4, !tbaa !14
  %1066 = insertelement <2 x float> undef, float %1065, i32 0
  %1067 = insertelement <2 x float> %1066, float %.pre144.i, i32 1
  %1068 = fpext <2 x float> %1067 to <2 x double>
  %1069 = extractelement <2 x double> %1068, i32 0
  %1070 = extractelement <2 x double> %1068, i32 1
  %1071 = fmul double %1070, %1069
  %1072 = fadd double %1062, %1071
  %1073 = fmul <2 x double> %1068, %1068
  %1074 = fadd <2 x double> %1073, %1063
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i92, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 3
  br i1 %exitcond.i.i, label %1075, label %._crit_edge142.i

; <label>:1075                                    ; preds = %._crit_edge142.i
  %1076 = extractelement <2 x double> %1074, i32 0
  %1077 = extractelement <2 x double> %1074, i32 1
  %1078 = fmul double %1077, %1076
  %1079 = tail call double @sqrt(double %1078) #11
  %1080 = fdiv double 1.000000e+00, %1079
  %1081 = fmul double %1072, %1080
  %1082 = fptrunc double %1081 to float
  %1083 = fcmp ogt float %1082, 1.000000e+00
  br i1 %1083, label %cos_angle.exit.i, label %1084

; <label>:1084                                    ; preds = %1075
  %1085 = fcmp olt float %1082, -1.000000e+00
  %..i.i = select i1 %1085, float -1.000000e+00, float %1082
  br label %cos_angle.exit.i

cos_angle.exit.i:                                 ; preds = %1084, %1075
  %.0.i.i = phi float [ 1.000000e+00, %1075 ], [ %..i.i, %1084 ]
  %1086 = getelementptr inbounds float* %599, i64 %indvars.iv122.i
  store float %.0.i.i, float* %1086, align 4, !tbaa !14
  %1087 = load i32* %515, align 4, !tbaa !40
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %cos_angle.exit._crit_edge.i, label %1089

cos_angle.exit._crit_edge.i:                      ; preds = %cos_angle.exit.i
  %.pre184.i = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %.pre186.i = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %.pre188.i = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  br label %1415

; <label>:1089                                    ; preds = %cos_angle.exit.i
  %1090 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1091 = fpext float %.0.i.i to double
  %1092 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1090, i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), double %1091) #9
  %1093 = load i32* %450, align 4, !tbaa !36
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1128, label %1095

; <label>:1095                                    ; preds = %1089
  %1096 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %1097 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 0
  %1098 = load float* %1096, align 4, !tbaa !14
  %1099 = load float* %1097, align 4, !tbaa !14
  %1100 = fsub float %1098, %1099
  %1101 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %1102 = load float* %1101, align 4, !tbaa !14
  %1103 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 1
  %1104 = load float* %1103, align 4, !tbaa !14
  %1105 = fsub float %1102, %1104
  %1106 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  %1107 = load float* %1106, align 4, !tbaa !14
  %1108 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 2
  %1109 = load float* %1108, align 4, !tbaa !14
  %1110 = fsub float %1107, %1109
  store float %1100, float* %695, align 4, !tbaa !14
  store float %1105, float* %696, align 4, !tbaa !14
  store float %1110, float* %697, align 4, !tbaa !14
  %1111 = load [3 x float]** %671, align 8, !tbaa !54
  %1112 = getelementptr inbounds [3 x float]* %1111, i64 %indvars.iv122.i, i64 0
  %1113 = load [3 x float]** %672, align 8, !tbaa !53
  %1114 = getelementptr inbounds [3 x float]* %1113, i64 %indvars.iv122.i, i64 0
  %1115 = load float* %1112, align 4, !tbaa !14
  %1116 = load float* %1114, align 4, !tbaa !14
  %1117 = fsub float %1115, %1116
  %1118 = getelementptr inbounds [3 x float]* %1111, i64 %indvars.iv122.i, i64 1
  %1119 = load float* %1118, align 4, !tbaa !14
  %1120 = getelementptr inbounds [3 x float]* %1113, i64 %indvars.iv122.i, i64 1
  %1121 = load float* %1120, align 4, !tbaa !14
  %1122 = fsub float %1119, %1121
  %1123 = getelementptr inbounds [3 x float]* %1111, i64 %indvars.iv122.i, i64 2
  %1124 = load float* %1123, align 4, !tbaa !14
  %1125 = getelementptr inbounds [3 x float]* %1113, i64 %indvars.iv122.i, i64 2
  %1126 = load float* %1125, align 4, !tbaa !14
  %1127 = fsub float %1124, %1126
  store float %1117, float* %692, align 4, !tbaa !14
  store float %1122, float* %693, align 4, !tbaa !14
  store float %1127, float* %694, align 4, !tbaa !14
  br label %1158

; <label>:1128                                    ; preds = %1089
  %1129 = load [3 x float]** %671, align 8, !tbaa !54
  %1130 = getelementptr inbounds [3 x float]* %1129, i64 %indvars.iv122.i, i64 0
  %1131 = load [3 x float]** %670, align 8, !tbaa !56
  %1132 = getelementptr inbounds [3 x float]* %1131, i64 0, i64 0
  %1133 = load float* %1130, align 4, !tbaa !14
  %1134 = load float* %1132, align 4, !tbaa !14
  %1135 = fsub float %1133, %1134
  %1136 = getelementptr inbounds [3 x float]* %1129, i64 %indvars.iv122.i, i64 1
  %1137 = load float* %1136, align 4, !tbaa !14
  %1138 = getelementptr inbounds [3 x float]* %1131, i64 0, i64 1
  %1139 = load float* %1138, align 4, !tbaa !14
  %1140 = fsub float %1137, %1139
  %1141 = getelementptr inbounds [3 x float]* %1129, i64 %indvars.iv122.i, i64 2
  %1142 = load float* %1141, align 4, !tbaa !14
  %1143 = getelementptr inbounds [3 x float]* %1131, i64 0, i64 2
  %1144 = load float* %1143, align 4, !tbaa !14
  %1145 = fsub float %1142, %1144
  store float %1135, float* %692, align 4, !tbaa !14
  store float %1140, float* %693, align 4, !tbaa !14
  store float %1145, float* %694, align 4, !tbaa !14
  %1146 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %1147 = load float* %1146, align 4, !tbaa !14
  %1148 = load float* %667, align 4, !tbaa !14
  %1149 = fsub float %1147, %1148
  %1150 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %1151 = load float* %1150, align 4, !tbaa !14
  %1152 = load float* %668, align 4, !tbaa !14
  %1153 = fsub float %1151, %1152
  %1154 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  %1155 = load float* %1154, align 4, !tbaa !14
  %1156 = load float* %669, align 4, !tbaa !14
  %1157 = fsub float %1155, %1156
  store float %1149, float* %695, align 4, !tbaa !14
  store float %1153, float* %696, align 4, !tbaa !14
  store float %1157, float* %697, align 4, !tbaa !14
  br label %1158

; <label>:1158                                    ; preds = %1128, %1095
  %1159 = phi float [ %1142, %1128 ], [ %1124, %1095 ]
  %1160 = phi float [ %1137, %1128 ], [ %1119, %1095 ]
  %1161 = phi float [ %1133, %1128 ], [ %1115, %1095 ]
  %1162 = phi float [ %1155, %1128 ], [ %1107, %1095 ]
  %1163 = phi float [ %1151, %1128 ], [ %1102, %1095 ]
  %1164 = phi float [ %1147, %1128 ], [ %1098, %1095 ]
  %1165 = phi float [ %1157, %1128 ], [ %1110, %1095 ]
  %1166 = load float* %1023, align 4, !tbaa !14
  %1167 = load float* %686, align 4, !tbaa !14
  %1168 = fsub float %1166, %1167
  %1169 = load float* %1026, align 4, !tbaa !14
  %1170 = load float* %688, align 4, !tbaa !14
  %1171 = fsub float %1169, %1170
  %1172 = load float* %1028, align 4, !tbaa !14
  %1173 = load float* %690, align 4, !tbaa !14
  %1174 = fsub float %1172, %1173
  store float %1168, float* %698, align 4, !tbaa !14
  store float %1171, float* %699, align 4, !tbaa !14
  store float %1174, float* %700, align 4, !tbaa !14
  br label %1175

; <label>:1175                                    ; preds = %._crit_edge145.i, %1158
  %1176 = phi float [ %1165, %1158 ], [ %.pre147.i, %._crit_edge145.i ]
  %indvars.iv116.i = phi i64 [ 2, %1158 ], [ %indvars.iv.next117.i, %._crit_edge145.i ]
  %1177 = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 %indvars.iv116.i
  %1178 = fpext float %1176 to double
  %1179 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i
  %1180 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 %indvars.iv116.i
  %1181 = load float* %1180, align 4, !tbaa !14
  %1182 = fpext float %1181 to double
  %1183 = fmul double %1182, -5.000000e-01
  %1184 = fcmp olt double %1178, %1183
  br i1 %1184, label %1185, label %1198

; <label>:1185                                    ; preds = %1175
  %1186 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1187 = load float* %695, align 4, !tbaa !14
  %1188 = load float* %1186, align 4, !tbaa !14
  %1189 = fadd float %1187, %1188
  %1190 = load float* %696, align 4, !tbaa !14
  %1191 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1192 = load float* %1191, align 4, !tbaa !14
  %1193 = fadd float %1190, %1192
  %1194 = load float* %697, align 4, !tbaa !14
  %1195 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1196 = load float* %1195, align 4, !tbaa !14
  %1197 = fadd float %1194, %1196
  store float %1189, float* %695, align 4, !tbaa !14
  store float %1193, float* %696, align 4, !tbaa !14
  store float %1197, float* %697, align 4, !tbaa !14
  %.pre148.i = load float* %1177, align 4, !tbaa !14
  br label %1198

; <label>:1198                                    ; preds = %1185, %1175
  %1199 = phi float [ %.pre148.i, %1185 ], [ %1176, %1175 ]
  %1200 = fpext float %1199 to double
  %1201 = fmul double %1182, 5.000000e-01
  %1202 = fcmp ogt double %1200, %1201
  br i1 %1202, label %1203, label %1216

; <label>:1203                                    ; preds = %1198
  %1204 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1205 = load float* %695, align 4, !tbaa !14
  %1206 = load float* %1204, align 4, !tbaa !14
  %1207 = fsub float %1205, %1206
  %1208 = load float* %696, align 4, !tbaa !14
  %1209 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1210 = load float* %1209, align 4, !tbaa !14
  %1211 = fsub float %1208, %1210
  %1212 = load float* %697, align 4, !tbaa !14
  %1213 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1214 = load float* %1213, align 4, !tbaa !14
  %1215 = fsub float %1212, %1214
  store float %1207, float* %695, align 4, !tbaa !14
  store float %1211, float* %696, align 4, !tbaa !14
  store float %1215, float* %697, align 4, !tbaa !14
  br label %1216

; <label>:1216                                    ; preds = %1203, %1198
  %1217 = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 %indvars.iv116.i
  %1218 = load float* %1217, align 4, !tbaa !14
  %1219 = fpext float %1218 to double
  %1220 = fcmp olt double %1219, %1183
  br i1 %1220, label %1221, label %1234

; <label>:1221                                    ; preds = %1216
  %1222 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1223 = load float* %692, align 4, !tbaa !14
  %1224 = load float* %1222, align 4, !tbaa !14
  %1225 = fadd float %1223, %1224
  %1226 = load float* %693, align 4, !tbaa !14
  %1227 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1228 = load float* %1227, align 4, !tbaa !14
  %1229 = fadd float %1226, %1228
  %1230 = load float* %694, align 4, !tbaa !14
  %1231 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1232 = load float* %1231, align 4, !tbaa !14
  %1233 = fadd float %1230, %1232
  store float %1225, float* %692, align 4, !tbaa !14
  store float %1229, float* %693, align 4, !tbaa !14
  store float %1233, float* %694, align 4, !tbaa !14
  %.pre149.i = load float* %1217, align 4, !tbaa !14
  br label %1234

; <label>:1234                                    ; preds = %1221, %1216
  %1235 = phi float [ %.pre149.i, %1221 ], [ %1218, %1216 ]
  %1236 = fpext float %1235 to double
  %1237 = fcmp ogt double %1236, %1201
  br i1 %1237, label %1238, label %1251

; <label>:1238                                    ; preds = %1234
  %1239 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1240 = load float* %692, align 4, !tbaa !14
  %1241 = load float* %1239, align 4, !tbaa !14
  %1242 = fsub float %1240, %1241
  %1243 = load float* %693, align 4, !tbaa !14
  %1244 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1245 = load float* %1244, align 4, !tbaa !14
  %1246 = fsub float %1243, %1245
  %1247 = load float* %694, align 4, !tbaa !14
  %1248 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1249 = load float* %1248, align 4, !tbaa !14
  %1250 = fsub float %1247, %1249
  store float %1242, float* %692, align 4, !tbaa !14
  store float %1246, float* %693, align 4, !tbaa !14
  store float %1250, float* %694, align 4, !tbaa !14
  br label %1251

; <label>:1251                                    ; preds = %1238, %1234
  %1252 = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 %indvars.iv116.i
  %1253 = load float* %1252, align 4, !tbaa !14
  %1254 = fpext float %1253 to double
  %1255 = fcmp olt double %1254, %1183
  br i1 %1255, label %1256, label %1269

; <label>:1256                                    ; preds = %1251
  %1257 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1258 = load float* %698, align 4, !tbaa !14
  %1259 = load float* %1257, align 4, !tbaa !14
  %1260 = fadd float %1258, %1259
  %1261 = load float* %699, align 4, !tbaa !14
  %1262 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1263 = load float* %1262, align 4, !tbaa !14
  %1264 = fadd float %1261, %1263
  %1265 = load float* %700, align 4, !tbaa !14
  %1266 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1267 = load float* %1266, align 4, !tbaa !14
  %1268 = fadd float %1265, %1267
  store float %1260, float* %698, align 4, !tbaa !14
  store float %1264, float* %699, align 4, !tbaa !14
  store float %1268, float* %700, align 4, !tbaa !14
  %.pre150.i = load float* %1252, align 4, !tbaa !14
  br label %1269

; <label>:1269                                    ; preds = %1256, %1251
  %1270 = phi float [ %.pre150.i, %1256 ], [ %1253, %1251 ]
  %1271 = fpext float %1270 to double
  %1272 = fcmp ogt double %1271, %1201
  br i1 %1272, label %1273, label %1286

; <label>:1273                                    ; preds = %1269
  %1274 = getelementptr inbounds [3 x float]* %1179, i64 0, i64 0
  %1275 = load float* %698, align 4, !tbaa !14
  %1276 = load float* %1274, align 4, !tbaa !14
  %1277 = fsub float %1275, %1276
  %1278 = load float* %699, align 4, !tbaa !14
  %1279 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 1
  %1280 = load float* %1279, align 4, !tbaa !14
  %1281 = fsub float %1278, %1280
  %1282 = load float* %700, align 4, !tbaa !14
  %1283 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv116.i, i64 2
  %1284 = load float* %1283, align 4, !tbaa !14
  %1285 = fsub float %1282, %1284
  store float %1277, float* %698, align 4, !tbaa !14
  store float %1281, float* %699, align 4, !tbaa !14
  store float %1285, float* %700, align 4, !tbaa !14
  %.pre151.i = load float* %1252, align 4, !tbaa !14
  br label %1286

; <label>:1286                                    ; preds = %1273, %1269
  %1287 = phi float [ %.pre151.i, %1273 ], [ %1270, %1269 ]
  %1288 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv116.i
  %1289 = load float* %1288, align 4, !tbaa !14
  %1290 = load float* %1177, align 4, !tbaa !14
  %1291 = fmul float %1289, %1290
  store float %1291, float* %1177, align 4, !tbaa !14
  %1292 = load float* %1217, align 4, !tbaa !14
  %1293 = fmul float %1289, %1292
  store float %1293, float* %1217, align 4, !tbaa !14
  %1294 = fmul float %1287, %1289
  store float %1294, float* %1252, align 4, !tbaa !14
  %indvars.iv.next117.i = add nsw i64 %indvars.iv116.i, -1
  %1295 = icmp sgt i64 %indvars.iv116.i, 0
  br i1 %1295, label %._crit_edge145.i, label %1296

._crit_edge145.i:                                 ; preds = %1286
  %.phi.trans.insert146.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 %indvars.iv.next117.i
  %.pre147.i = load float* %.phi.trans.insert146.i, align 4, !tbaa !14
  br label %1175

; <label>:1296                                    ; preds = %1286
  %1297 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1298 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 0
  %1299 = fpext float %1164 to double
  %1300 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 1
  %1301 = fpext float %1163 to double
  %1302 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv122.i, i64 2
  %1303 = fpext float %1162 to double
  br i1 %1094, label %1361, label %1304

; <label>:1304                                    ; preds = %1296
  %1305 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 0
  %1306 = load float* %1305, align 4, !tbaa !14
  %1307 = fpext float %1306 to double
  %1308 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 1
  %1309 = load float* %1308, align 4, !tbaa !14
  %1310 = fpext float %1309 to double
  %1311 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 2
  %1312 = load float* %1311, align 4, !tbaa !14
  %1313 = fpext float %1312 to double
  %1314 = load float* %695, align 4, !tbaa !14
  %1315 = fmul float %1314, %1314
  %1316 = load float* %696, align 4, !tbaa !14
  %1317 = fmul float %1316, %1316
  %1318 = fadd float %1315, %1317
  %1319 = load float* %697, align 4, !tbaa !14
  %1320 = fmul float %1319, %1319
  %1321 = fadd float %1318, %1320
  %sqrtf.i13.i = tail call float @sqrtf(float %1321) #7
  %1322 = fpext float %sqrtf.i13.i to double
  %1323 = fpext float %1161 to double
  %1324 = fpext float %1160 to double
  %1325 = fpext float %1159 to double
  %1326 = load [3 x float]** %672, align 8, !tbaa !53
  %1327 = getelementptr inbounds [3 x float]* %1326, i64 %indvars.iv122.i, i64 0
  %1328 = load float* %1327, align 4, !tbaa !14
  %1329 = fpext float %1328 to double
  %1330 = getelementptr inbounds [3 x float]* %1326, i64 %indvars.iv122.i, i64 1
  %1331 = load float* %1330, align 4, !tbaa !14
  %1332 = fpext float %1331 to double
  %1333 = getelementptr inbounds [3 x float]* %1326, i64 %indvars.iv122.i, i64 2
  %1334 = load float* %1333, align 4, !tbaa !14
  %1335 = fpext float %1334 to double
  %1336 = load float* %692, align 4, !tbaa !14
  %1337 = fmul float %1336, %1336
  %1338 = load float* %693, align 4, !tbaa !14
  %1339 = fmul float %1338, %1338
  %1340 = fadd float %1337, %1339
  %1341 = load float* %694, align 4, !tbaa !14
  %1342 = fmul float %1341, %1341
  %1343 = fadd float %1340, %1342
  %sqrtf.i12.i = tail call float @sqrtf(float %1343) #7
  %1344 = fpext float %sqrtf.i12.i to double
  %1345 = fpext float %1166 to double
  %1346 = fpext float %1169 to double
  %1347 = fpext float %1172 to double
  %1348 = fpext float %1167 to double
  %1349 = fpext float %1170 to double
  %1350 = fpext float %1173 to double
  %1351 = load float* %698, align 4, !tbaa !14
  %1352 = fmul float %1351, %1351
  %1353 = load float* %699, align 4, !tbaa !14
  %1354 = fmul float %1353, %1353
  %1355 = fadd float %1352, %1354
  %1356 = load float* %700, align 4, !tbaa !14
  %1357 = fmul float %1356, %1356
  %1358 = fadd float %1355, %1357
  %sqrtf.i11.i = tail call float @sqrtf(float %1358) #7
  %1359 = fpext float %sqrtf.i11.i to double
  %1360 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1297, i8* getelementptr inbounds ([100 x i8]* @.str22, i64 0, i64 0), double %1299, double %1301, double %1303, double %1307, double %1310, double %1313, double %1322, double %1323, double %1324, double %1325, double %1329, double %1332, double %1335, double %1344, double %1345, double %1346, double %1347, double %1348, double %1349, double %1350, double %1359) #9
  br label %1415

; <label>:1361                                    ; preds = %1296
  %1362 = load float* %667, align 4, !tbaa !14
  %1363 = fpext float %1362 to double
  %1364 = load float* %668, align 4, !tbaa !14
  %1365 = fpext float %1364 to double
  %1366 = load float* %669, align 4, !tbaa !14
  %1367 = fpext float %1366 to double
  %1368 = load float* %695, align 4, !tbaa !14
  %1369 = fmul float %1368, %1368
  %1370 = load float* %696, align 4, !tbaa !14
  %1371 = fmul float %1370, %1370
  %1372 = fadd float %1369, %1371
  %1373 = load float* %697, align 4, !tbaa !14
  %1374 = fmul float %1373, %1373
  %1375 = fadd float %1372, %1374
  %sqrtf.i10.i = tail call float @sqrtf(float %1375) #7
  %1376 = fpext float %sqrtf.i10.i to double
  %1377 = fpext float %1161 to double
  %1378 = fpext float %1160 to double
  %1379 = fpext float %1159 to double
  %1380 = load [3 x float]** %670, align 8, !tbaa !56
  %1381 = getelementptr inbounds [3 x float]* %1380, i64 0, i64 0
  %1382 = load float* %1381, align 4, !tbaa !14
  %1383 = fpext float %1382 to double
  %1384 = getelementptr inbounds [3 x float]* %1380, i64 0, i64 1
  %1385 = load float* %1384, align 4, !tbaa !14
  %1386 = fpext float %1385 to double
  %1387 = getelementptr inbounds [3 x float]* %1380, i64 0, i64 2
  %1388 = load float* %1387, align 4, !tbaa !14
  %1389 = fpext float %1388 to double
  %1390 = load float* %692, align 4, !tbaa !14
  %1391 = fmul float %1390, %1390
  %1392 = load float* %693, align 4, !tbaa !14
  %1393 = fmul float %1392, %1392
  %1394 = fadd float %1391, %1393
  %1395 = load float* %694, align 4, !tbaa !14
  %1396 = fmul float %1395, %1395
  %1397 = fadd float %1394, %1396
  %sqrtf.i9.i = tail call float @sqrtf(float %1397) #7
  %1398 = fpext float %sqrtf.i9.i to double
  %1399 = fpext float %1166 to double
  %1400 = fpext float %1169 to double
  %1401 = fpext float %1172 to double
  %1402 = fpext float %1167 to double
  %1403 = fpext float %1170 to double
  %1404 = fpext float %1173 to double
  %1405 = load float* %698, align 4, !tbaa !14
  %1406 = fmul float %1405, %1405
  %1407 = load float* %699, align 4, !tbaa !14
  %1408 = fmul float %1407, %1407
  %1409 = fadd float %1406, %1408
  %1410 = load float* %700, align 4, !tbaa !14
  %1411 = fmul float %1410, %1410
  %1412 = fadd float %1409, %1411
  %sqrtf.i8.i = tail call float @sqrtf(float %1412) #7
  %1413 = fpext float %sqrtf.i8.i to double
  %1414 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1297, i8* getelementptr inbounds ([100 x i8]* @.str22, i64 0, i64 0), double %1299, double %1301, double %1303, double %1363, double %1365, double %1367, double %1376, double %1377, double %1378, double %1379, double %1383, double %1386, double %1389, double %1398, double %1399, double %1400, double %1401, double %1402, double %1403, double %1404, double %1413) #9
  br label %1415

; <label>:1415                                    ; preds = %1361, %1304, %cos_angle.exit._crit_edge.i
  %.pre-phi189.i = phi float* [ %.pre188.i, %cos_angle.exit._crit_edge.i ], [ %1302, %1304 ], [ %1302, %1361 ]
  %.pre-phi187.i = phi float* [ %.pre186.i, %cos_angle.exit._crit_edge.i ], [ %1300, %1304 ], [ %1300, %1361 ]
  %.pre-phi185.i = phi float* [ %.pre184.i, %cos_angle.exit._crit_edge.i ], [ %1298, %1304 ], [ %1298, %1361 ]
  %1416 = load float* %.pre-phi185.i, align 4, !tbaa !14
  %1417 = load float* %1023, align 4, !tbaa !14
  %1418 = fadd float %1416, %1417
  %1419 = load float* %.pre-phi187.i, align 4, !tbaa !14
  %1420 = load float* %1026, align 4, !tbaa !14
  %1421 = fadd float %1419, %1420
  %1422 = load float* %.pre-phi189.i, align 4, !tbaa !14
  %1423 = load float* %1028, align 4, !tbaa !14
  %1424 = fadd float %1422, %1423
  store float %1418, float* %.pre-phi185.i, align 4, !tbaa !14
  store float %1421, float* %.pre-phi187.i, align 4, !tbaa !14
  store float %1424, float* %.pre-phi189.i, align 4, !tbaa !14
  %1425 = load i32* %450, align 4, !tbaa !36
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1496, label %1427

; <label>:1427                                    ; preds = %1415
  %1428 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 0
  %1429 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 0
  %1430 = load float* %1428, align 4, !tbaa !14
  %1431 = load float* %1429, align 4, !tbaa !14
  %1432 = fadd float %1430, %1431
  %1433 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 1
  %1434 = load float* %1433, align 4, !tbaa !14
  %1435 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 1
  %1436 = load float* %1435, align 4, !tbaa !14
  %1437 = fadd float %1434, %1436
  %1438 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv122.i, i64 2
  %1439 = load float* %1438, align 4, !tbaa !14
  %1440 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv122.i, i64 2
  %1441 = load float* %1440, align 4, !tbaa !14
  %1442 = fadd float %1439, %1441
  store float %1432, float* %1428, align 4, !tbaa !14
  store float %1437, float* %1433, align 4, !tbaa !14
  store float %1442, float* %1438, align 4, !tbaa !14
  %1443 = load float* %.pre-phi185.i, align 4, !tbaa !14
  %1444 = fsub float %1432, %1443
  %1445 = load float* %.pre-phi187.i, align 4, !tbaa !14
  %1446 = fsub float %1437, %1445
  %1447 = load float* %.pre-phi189.i, align 4, !tbaa !14
  %1448 = fsub float %1442, %1447
  store float %1444, float* %664, align 4, !tbaa !14
  store float %1446, float* %665, align 4, !tbaa !14
  store float %1448, float* %666, align 4, !tbaa !14
  br label %1449

; <label>:1449                                    ; preds = %._crit_edge152.i, %1427
  %1450 = phi float [ %1448, %1427 ], [ %.pre154.i, %._crit_edge152.i ]
  %indvars.iv118.i = phi i64 [ 2, %1427 ], [ %indvars.iv.next119.i, %._crit_edge152.i ]
  %1451 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv118.i
  %1452 = fpext float %1450 to double
  %1453 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i
  %1454 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i, i64 %indvars.iv118.i
  %1455 = load float* %1454, align 4, !tbaa !14
  %1456 = fpext float %1455 to double
  %1457 = fmul double %1456, -5.000000e-01
  %1458 = fcmp olt double %1452, %1457
  br i1 %1458, label %1459, label %1472

; <label>:1459                                    ; preds = %1449
  %1460 = getelementptr inbounds [3 x float]* %1453, i64 0, i64 0
  %1461 = load float* %664, align 4, !tbaa !14
  %1462 = load float* %1460, align 4, !tbaa !14
  %1463 = fadd float %1461, %1462
  %1464 = load float* %665, align 4, !tbaa !14
  %1465 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i, i64 1
  %1466 = load float* %1465, align 4, !tbaa !14
  %1467 = fadd float %1464, %1466
  %1468 = load float* %666, align 4, !tbaa !14
  %1469 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i, i64 2
  %1470 = load float* %1469, align 4, !tbaa !14
  %1471 = fadd float %1468, %1470
  store float %1463, float* %664, align 4, !tbaa !14
  store float %1467, float* %665, align 4, !tbaa !14
  store float %1471, float* %666, align 4, !tbaa !14
  %.pre155.i = load float* %1451, align 4, !tbaa !14
  br label %1472

; <label>:1472                                    ; preds = %1459, %1449
  %1473 = phi float [ %.pre155.i, %1459 ], [ %1450, %1449 ]
  %1474 = fpext float %1473 to double
  %1475 = fmul double %1456, 5.000000e-01
  %1476 = fcmp ogt double %1474, %1475
  br i1 %1476, label %1477, label %1490

; <label>:1477                                    ; preds = %1472
  %1478 = getelementptr inbounds [3 x float]* %1453, i64 0, i64 0
  %1479 = load float* %664, align 4, !tbaa !14
  %1480 = load float* %1478, align 4, !tbaa !14
  %1481 = fsub float %1479, %1480
  %1482 = load float* %665, align 4, !tbaa !14
  %1483 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i, i64 1
  %1484 = load float* %1483, align 4, !tbaa !14
  %1485 = fsub float %1482, %1484
  %1486 = load float* %666, align 4, !tbaa !14
  %1487 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv118.i, i64 2
  %1488 = load float* %1487, align 4, !tbaa !14
  %1489 = fsub float %1486, %1488
  store float %1481, float* %664, align 4, !tbaa !14
  store float %1485, float* %665, align 4, !tbaa !14
  store float %1489, float* %666, align 4, !tbaa !14
  %.pre156.i = load float* %1451, align 4, !tbaa !14
  br label %1490

; <label>:1490                                    ; preds = %1477, %1472
  %1491 = phi float [ %.pre156.i, %1477 ], [ %1473, %1472 ]
  %1492 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv118.i
  %1493 = load float* %1492, align 4, !tbaa !14
  %1494 = fmul float %1491, %1493
  store float %1494, float* %1451, align 4, !tbaa !14
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, -1
  %1495 = icmp sgt i64 %indvars.iv118.i, 0
  br i1 %1495, label %._crit_edge152.i, label %.loopexit18.i

._crit_edge152.i:                                 ; preds = %1490
  %.phi.trans.insert153.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next119.i
  %.pre154.i = load float* %.phi.trans.insert153.i, align 4, !tbaa !14
  br label %1449

; <label>:1496                                    ; preds = %1415
  %1497 = load float* %667, align 4, !tbaa !14
  %1498 = load float* %686, align 4, !tbaa !14
  %1499 = fadd float %1497, %1498
  %1500 = load float* %668, align 4, !tbaa !14
  %1501 = load float* %688, align 4, !tbaa !14
  %1502 = fadd float %1500, %1501
  %1503 = load float* %669, align 4, !tbaa !14
  %1504 = load float* %690, align 4, !tbaa !14
  %1505 = fadd float %1503, %1504
  store float %1499, float* %667, align 4, !tbaa !14
  store float %1502, float* %668, align 4, !tbaa !14
  store float %1505, float* %669, align 4, !tbaa !14
  %1506 = load float* %.pre-phi185.i, align 4, !tbaa !14
  %1507 = fsub float %1499, %1506
  %1508 = load float* %.pre-phi187.i, align 4, !tbaa !14
  %1509 = fsub float %1502, %1508
  %1510 = load float* %.pre-phi189.i, align 4, !tbaa !14
  %1511 = fsub float %1505, %1510
  store float %1507, float* %664, align 4, !tbaa !14
  store float %1509, float* %665, align 4, !tbaa !14
  store float %1511, float* %666, align 4, !tbaa !14
  br label %1512

; <label>:1512                                    ; preds = %._crit_edge157.i, %1496
  %1513 = phi float [ %1511, %1496 ], [ %.pre159.i, %._crit_edge157.i ]
  %indvars.iv120.i = phi i64 [ 2, %1496 ], [ %indvars.iv.next121.i, %._crit_edge157.i ]
  %1514 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv120.i
  %1515 = fpext float %1513 to double
  %1516 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i
  %1517 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i, i64 %indvars.iv120.i
  %1518 = load float* %1517, align 4, !tbaa !14
  %1519 = fpext float %1518 to double
  %1520 = fmul double %1519, -5.000000e-01
  %1521 = fcmp olt double %1515, %1520
  br i1 %1521, label %1522, label %1535

; <label>:1522                                    ; preds = %1512
  %1523 = getelementptr inbounds [3 x float]* %1516, i64 0, i64 0
  %1524 = load float* %664, align 4, !tbaa !14
  %1525 = load float* %1523, align 4, !tbaa !14
  %1526 = fadd float %1524, %1525
  %1527 = load float* %665, align 4, !tbaa !14
  %1528 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i, i64 1
  %1529 = load float* %1528, align 4, !tbaa !14
  %1530 = fadd float %1527, %1529
  %1531 = load float* %666, align 4, !tbaa !14
  %1532 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i, i64 2
  %1533 = load float* %1532, align 4, !tbaa !14
  %1534 = fadd float %1531, %1533
  store float %1526, float* %664, align 4, !tbaa !14
  store float %1530, float* %665, align 4, !tbaa !14
  store float %1534, float* %666, align 4, !tbaa !14
  %.pre160.i = load float* %1514, align 4, !tbaa !14
  br label %1535

; <label>:1535                                    ; preds = %1522, %1512
  %1536 = phi float [ %.pre160.i, %1522 ], [ %1513, %1512 ]
  %1537 = fpext float %1536 to double
  %1538 = fmul double %1519, 5.000000e-01
  %1539 = fcmp ogt double %1537, %1538
  br i1 %1539, label %1540, label %1553

; <label>:1540                                    ; preds = %1535
  %1541 = getelementptr inbounds [3 x float]* %1516, i64 0, i64 0
  %1542 = load float* %664, align 4, !tbaa !14
  %1543 = load float* %1541, align 4, !tbaa !14
  %1544 = fsub float %1542, %1543
  %1545 = load float* %665, align 4, !tbaa !14
  %1546 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i, i64 1
  %1547 = load float* %1546, align 4, !tbaa !14
  %1548 = fsub float %1545, %1547
  %1549 = load float* %666, align 4, !tbaa !14
  %1550 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv120.i, i64 2
  %1551 = load float* %1550, align 4, !tbaa !14
  %1552 = fsub float %1549, %1551
  store float %1544, float* %664, align 4, !tbaa !14
  store float %1548, float* %665, align 4, !tbaa !14
  store float %1552, float* %666, align 4, !tbaa !14
  %.pre161.i = load float* %1514, align 4, !tbaa !14
  br label %1553

; <label>:1553                                    ; preds = %1540, %1535
  %1554 = phi float [ %.pre161.i, %1540 ], [ %1536, %1535 ]
  %1555 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv120.i
  %1556 = load float* %1555, align 4, !tbaa !14
  %1557 = fmul float %1554, %1556
  store float %1557, float* %1514, align 4, !tbaa !14
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, -1
  %1558 = icmp sgt i64 %indvars.iv120.i, 0
  br i1 %1558, label %._crit_edge157.i, label %.loopexit18.i

._crit_edge157.i:                                 ; preds = %1553
  %.phi.trans.insert158.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next121.i
  %.pre159.i = load float* %.phi.trans.insert158.i, align 4, !tbaa !14
  br label %1512

.loopexit18.i:                                    ; preds = %1490, %1553
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %1559 = load i32* %409, align 4, !tbaa !24
  %1560 = sext i32 %1559 to i64
  %1561 = icmp slt i64 %indvars.iv.next123.i, %1560
  br i1 %1561, label %.lr.ph66.i, label %.preheader22.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.preheader, %1726
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i, %1726 ], [ 0, %.lr.ph70.i.preheader ]
  %bConverged.169.i = phi i32 [ %1728, %1726 ], [ 1, %.lr.ph70.i.preheader ]
  %1562 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv126.i, i64 0
  %1563 = load float* %1562, align 4
  %1564 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv126.i, i64 1
  %1565 = load float* %1564, align 4
  %1566 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv126.i, i64 2
  %1567 = load float* %1566, align 4
  br i1 %1426, label %1595, label %1568

; <label>:1568                                    ; preds = %.lr.ph70.i
  %1569 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv126.i, i64 0
  %1570 = load float* %1569, align 4, !tbaa !14
  %1571 = fsub float %1570, %1563
  %1572 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv126.i, i64 1
  %1573 = load float* %1572, align 4, !tbaa !14
  %1574 = fsub float %1573, %1565
  %1575 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv126.i, i64 2
  %1576 = load float* %1575, align 4, !tbaa !14
  %1577 = fsub float %1576, %1567
  store float %1571, float* %664, align 4, !tbaa !14
  store float %1574, float* %665, align 4, !tbaa !14
  store float %1577, float* %666, align 4, !tbaa !14
  %1578 = load [3 x float]** %672, align 8, !tbaa !53
  %1579 = getelementptr inbounds [3 x float]* %1578, i64 %indvars.iv126.i, i64 0
  %1580 = load [3 x float]** %671, align 8, !tbaa !54
  %1581 = getelementptr inbounds [3 x float]* %1580, i64 %indvars.iv126.i, i64 0
  %1582 = load float* %1579, align 4, !tbaa !14
  %1583 = load float* %1581, align 4, !tbaa !14
  %1584 = fsub float %1582, %1583
  %1585 = getelementptr inbounds [3 x float]* %1578, i64 %indvars.iv126.i, i64 1
  %1586 = load float* %1585, align 4, !tbaa !14
  %1587 = getelementptr inbounds [3 x float]* %1580, i64 %indvars.iv126.i, i64 1
  %1588 = load float* %1587, align 4, !tbaa !14
  %1589 = fsub float %1586, %1588
  %1590 = getelementptr inbounds [3 x float]* %1578, i64 %indvars.iv126.i, i64 2
  %1591 = load float* %1590, align 4, !tbaa !14
  %1592 = getelementptr inbounds [3 x float]* %1580, i64 %indvars.iv126.i, i64 2
  %1593 = load float* %1592, align 4, !tbaa !14
  %1594 = fsub float %1591, %1593
  br label %.preheader17.i

; <label>:1595                                    ; preds = %.lr.ph70.i
  %1596 = load float* %667, align 4, !tbaa !14
  %1597 = fsub float %1596, %1563
  %1598 = load float* %668, align 4, !tbaa !14
  %1599 = fsub float %1598, %1565
  %1600 = load float* %669, align 4, !tbaa !14
  %1601 = fsub float %1600, %1567
  store float %1597, float* %664, align 4, !tbaa !14
  store float %1599, float* %665, align 4, !tbaa !14
  store float %1601, float* %666, align 4, !tbaa !14
  %1602 = load [3 x float]** %670, align 8, !tbaa !56
  %1603 = getelementptr inbounds [3 x float]* %1602, i64 0, i64 0
  %1604 = load [3 x float]** %671, align 8, !tbaa !54
  %1605 = getelementptr inbounds [3 x float]* %1604, i64 %indvars.iv126.i, i64 0
  %1606 = load float* %1603, align 4, !tbaa !14
  %1607 = load float* %1605, align 4, !tbaa !14
  %1608 = fsub float %1606, %1607
  %1609 = getelementptr inbounds [3 x float]* %1602, i64 0, i64 1
  %1610 = load float* %1609, align 4, !tbaa !14
  %1611 = getelementptr inbounds [3 x float]* %1604, i64 %indvars.iv126.i, i64 1
  %1612 = load float* %1611, align 4, !tbaa !14
  %1613 = fsub float %1610, %1612
  %1614 = getelementptr inbounds [3 x float]* %1602, i64 0, i64 2
  %1615 = load float* %1614, align 4, !tbaa !14
  %1616 = getelementptr inbounds [3 x float]* %1604, i64 %indvars.iv126.i, i64 2
  %1617 = load float* %1616, align 4, !tbaa !14
  %1618 = fsub float %1615, %1617
  br label %.preheader17.i

.preheader17.i:                                   ; preds = %1595, %1568
  %storemerge193.i = phi float [ %1584, %1568 ], [ %1608, %1595 ]
  %storemerge190.i = phi float [ %1589, %1568 ], [ %1613, %1595 ]
  %storemerge.i = phi float [ %1594, %1568 ], [ %1618, %1595 ]
  %1619 = phi float [ %1577, %1568 ], [ %1601, %1595 ]
  store float %storemerge193.i, float* %661, align 4, !tbaa !14
  store float %storemerge190.i, float* %662, align 4, !tbaa !14
  store float %storemerge.i, float* %663, align 4, !tbaa !14
  br label %1620

; <label>:1620                                    ; preds = %._crit_edge162.i, %.preheader17.i
  %1621 = phi float [ %1619, %.preheader17.i ], [ %.pre164.i, %._crit_edge162.i ]
  %indvars.iv124.i = phi i64 [ 2, %.preheader17.i ], [ %indvars.iv.next125.i, %._crit_edge162.i ]
  %1622 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv124.i
  %1623 = fpext float %1621 to double
  %1624 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i
  %1625 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 %indvars.iv124.i
  %1626 = load float* %1625, align 4, !tbaa !14
  %1627 = fpext float %1626 to double
  %1628 = fmul double %1627, -5.000000e-01
  %1629 = fcmp olt double %1623, %1628
  br i1 %1629, label %1630, label %1643

; <label>:1630                                    ; preds = %1620
  %1631 = getelementptr inbounds [3 x float]* %1624, i64 0, i64 0
  %1632 = load float* %664, align 4, !tbaa !14
  %1633 = load float* %1631, align 4, !tbaa !14
  %1634 = fadd float %1632, %1633
  %1635 = load float* %665, align 4, !tbaa !14
  %1636 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 1
  %1637 = load float* %1636, align 4, !tbaa !14
  %1638 = fadd float %1635, %1637
  %1639 = load float* %666, align 4, !tbaa !14
  %1640 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 2
  %1641 = load float* %1640, align 4, !tbaa !14
  %1642 = fadd float %1639, %1641
  store float %1634, float* %664, align 4, !tbaa !14
  store float %1638, float* %665, align 4, !tbaa !14
  store float %1642, float* %666, align 4, !tbaa !14
  %.pre165.i = load float* %1622, align 4, !tbaa !14
  br label %1643

; <label>:1643                                    ; preds = %1630, %1620
  %1644 = phi float [ %.pre165.i, %1630 ], [ %1621, %1620 ]
  %1645 = fpext float %1644 to double
  %1646 = fmul double %1627, 5.000000e-01
  %1647 = fcmp ogt double %1645, %1646
  br i1 %1647, label %1648, label %1661

; <label>:1648                                    ; preds = %1643
  %1649 = getelementptr inbounds [3 x float]* %1624, i64 0, i64 0
  %1650 = load float* %664, align 4, !tbaa !14
  %1651 = load float* %1649, align 4, !tbaa !14
  %1652 = fsub float %1650, %1651
  %1653 = load float* %665, align 4, !tbaa !14
  %1654 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 1
  %1655 = load float* %1654, align 4, !tbaa !14
  %1656 = fsub float %1653, %1655
  %1657 = load float* %666, align 4, !tbaa !14
  %1658 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 2
  %1659 = load float* %1658, align 4, !tbaa !14
  %1660 = fsub float %1657, %1659
  store float %1652, float* %664, align 4, !tbaa !14
  store float %1656, float* %665, align 4, !tbaa !14
  store float %1660, float* %666, align 4, !tbaa !14
  br label %1661

; <label>:1661                                    ; preds = %1648, %1643
  %1662 = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 %indvars.iv124.i
  %1663 = load float* %1662, align 4, !tbaa !14
  %1664 = fpext float %1663 to double
  %1665 = fcmp olt double %1664, %1628
  br i1 %1665, label %1666, label %1679

; <label>:1666                                    ; preds = %1661
  %1667 = getelementptr inbounds [3 x float]* %1624, i64 0, i64 0
  %1668 = load float* %661, align 4, !tbaa !14
  %1669 = load float* %1667, align 4, !tbaa !14
  %1670 = fadd float %1668, %1669
  %1671 = load float* %662, align 4, !tbaa !14
  %1672 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 1
  %1673 = load float* %1672, align 4, !tbaa !14
  %1674 = fadd float %1671, %1673
  %1675 = load float* %663, align 4, !tbaa !14
  %1676 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 2
  %1677 = load float* %1676, align 4, !tbaa !14
  %1678 = fadd float %1675, %1677
  store float %1670, float* %661, align 4, !tbaa !14
  store float %1674, float* %662, align 4, !tbaa !14
  store float %1678, float* %663, align 4, !tbaa !14
  %.pre166.i = load float* %1662, align 4, !tbaa !14
  br label %1679

; <label>:1679                                    ; preds = %1666, %1661
  %1680 = phi float [ %.pre166.i, %1666 ], [ %1663, %1661 ]
  %1681 = fpext float %1680 to double
  %1682 = fcmp ogt double %1681, %1646
  br i1 %1682, label %1683, label %1696

; <label>:1683                                    ; preds = %1679
  %1684 = getelementptr inbounds [3 x float]* %1624, i64 0, i64 0
  %1685 = load float* %661, align 4, !tbaa !14
  %1686 = load float* %1684, align 4, !tbaa !14
  %1687 = fsub float %1685, %1686
  %1688 = load float* %662, align 4, !tbaa !14
  %1689 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 1
  %1690 = load float* %1689, align 4, !tbaa !14
  %1691 = fsub float %1688, %1690
  %1692 = load float* %663, align 4, !tbaa !14
  %1693 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv124.i, i64 2
  %1694 = load float* %1693, align 4, !tbaa !14
  %1695 = fsub float %1692, %1694
  store float %1687, float* %661, align 4, !tbaa !14
  store float %1691, float* %662, align 4, !tbaa !14
  store float %1695, float* %663, align 4, !tbaa !14
  %.pre167.i = load float* %1662, align 4, !tbaa !14
  br label %1696

; <label>:1696                                    ; preds = %1683, %1679
  %1697 = phi float [ %.pre167.i, %1683 ], [ %1680, %1679 ]
  %1698 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv124.i
  %1699 = load float* %1698, align 4, !tbaa !14
  %1700 = fmul float %1697, %1699
  store float %1700, float* %1662, align 4, !tbaa !14
  %1701 = load float* %1622, align 4, !tbaa !14
  %1702 = fmul float %1699, %1701
  store float %1702, float* %1622, align 4, !tbaa !14
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, -1
  %1703 = icmp sgt i64 %indvars.iv124.i, 0
  br i1 %1703, label %._crit_edge162.i, label %1704

._crit_edge162.i:                                 ; preds = %1696
  %.phi.trans.insert163.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next125.i
  %.pre164.i = load float* %.phi.trans.insert163.i, align 4, !tbaa !14
  br label %1620

; <label>:1704                                    ; preds = %1696
  %1705 = icmp eq i32 %bConverged.169.i, 0
  br i1 %1705, label %1726, label %1706

; <label>:1706                                    ; preds = %1704
  %1707 = load float* %664, align 4, !tbaa !14
  %1708 = fmul float %1707, %1707
  %1709 = load float* %665, align 4, !tbaa !14
  %1710 = fmul float %1709, %1709
  %1711 = fadd float %1708, %1710
  %1712 = load float* %666, align 4, !tbaa !14
  %1713 = fmul float %1712, %1712
  %1714 = fadd float %1711, %1713
  %sqrtf.i7.i = tail call float @sqrtf(float %1714) #7
  %1715 = load float* %661, align 4, !tbaa !14
  %1716 = fmul float %1715, %1715
  %1717 = load float* %662, align 4, !tbaa !14
  %1718 = fmul float %1717, %1717
  %1719 = fadd float %1716, %1718
  %1720 = load float* %663, align 4, !tbaa !14
  %1721 = fmul float %1720, %1720
  %1722 = fadd float %1719, %1721
  %sqrtf.i6.i = tail call float @sqrtf(float %1722) #7
  %1723 = fsub float %sqrtf.i7.i, %sqrtf.i6.i
  %fabsf.i = tail call float @fabsf(float %1723) #7
  %1724 = load float* %673, align 4, !tbaa !59
  %1725 = fcmp olt float %fabsf.i, %1724
  br label %1726

; <label>:1726                                    ; preds = %1706, %1704
  %1727 = phi i1 [ false, %1704 ], [ %1725, %1706 ]
  %1728 = zext i1 %1727 to i32
  %indvars.iv.next127.i = add nuw nsw i64 %indvars.iv126.i, 1
  %1729 = icmp slt i64 %indvars.iv.next127.i, %1560
  br i1 %1729, label %.lr.ph70.i, label %1731

.thread197.i:                                     ; preds = %..preheader23_crit_edge.i, %.preheader22.i, %.preheader24.i
  %n.074.i.lcssa = phi i32 [ 0, %.preheader24.i ], [ %1760, %..preheader23_crit_edge.i ], [ %n.074.i93, %.preheader22.i ]
  %1730 = add nuw nsw i32 %n.074.i.lcssa, 1
  br label %.critedge.i

; <label>:1731                                    ; preds = %1726
  %smax = select i1 %702, i64 %1560, i64 1
  %1732 = load i32* %515, align 4, !tbaa !40
  %1733 = icmp eq i32 %1732, 0
  %or.cond.i = or i1 %1727, %1733
  br i1 %or.cond.i, label %1759, label %1734

; <label>:1734                                    ; preds = %1731
  %1735 = trunc i64 %smax to i32
  %1736 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1737 = load i8*** %660, align 8, !tbaa !60
  %1738 = getelementptr inbounds i8** %1737, i64 %smax
  %1739 = load i8** %1738, align 8, !tbaa !18
  %1740 = load float* %661, align 4, !tbaa !14
  %1741 = fmul float %1740, %1740
  %1742 = load float* %662, align 4, !tbaa !14
  %1743 = fmul float %1742, %1742
  %1744 = fadd float %1741, %1743
  %1745 = load float* %663, align 4, !tbaa !14
  %1746 = fmul float %1745, %1745
  %1747 = fadd float %1744, %1746
  %sqrtf.i5.i = tail call float @sqrtf(float %1747) #7
  %1748 = fpext float %sqrtf.i5.i to double
  %1749 = load float* %664, align 4, !tbaa !14
  %1750 = fmul float %1749, %1749
  %1751 = load float* %665, align 4, !tbaa !14
  %1752 = fmul float %1751, %1751
  %1753 = fadd float %1750, %1752
  %1754 = load float* %666, align 4, !tbaa !14
  %1755 = fmul float %1754, %1754
  %1756 = fadd float %1753, %1755
  %sqrtf.i4.i = tail call float @sqrtf(float %1756) #7
  %1757 = fpext float %sqrtf.i4.i to double
  %1758 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1736, i8* getelementptr inbounds ([61 x i8]* @.str23, i64 0, i64 0), i32 %1735, i8* %1739, double %1748, double %1757) #9
  br label %1759

; <label>:1759                                    ; preds = %1734, %1731
  %1760 = add nuw nsw i32 %n.074.i93, 1
  %1761 = xor i1 %1727, true
  %1762 = icmp slt i32 %1760, 1000
  %or.cond3.i = and i1 %1762, %1761
  br i1 %or.cond3.i, label %..preheader23_crit_edge.i, label %.critedge.i

..preheader23_crit_edge.i:                        ; preds = %1759
  %.pre.i28 = load i32* %409, align 4, !tbaa !24
  %1763 = icmp sgt i32 %.pre.i28, 0
  br i1 %1763, label %.lr.ph66.i.preheader, label %.thread197.i

.critedge.i:                                      ; preds = %1759, %.thread197.i
  %n.074.i66 = phi i32 [ %n.074.i.lcssa, %.thread197.i ], [ %n.074.i93, %1759 ]
  %1764 = phi i32 [ %1730, %.thread197.i ], [ %1760, %1759 ]
  %1765 = icmp sgt i32 %n.074.i66, 999
  br i1 %1765, label %1766, label %.preheader16.i

; <label>:1766                                    ; preds = %.critedge.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str24, i64 0, i64 0)) #9
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %1766, %.critedge.i
  %1767 = load i32* %409, align 4, !tbaa !24
  %1768 = icmp sgt i32 %1767, 0
  br i1 %1768, label %.lr.ph59.i, label %._crit_edge60.i

.lr.ph59.i:                                       ; preds = %.preheader16.i
  %1769 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %1770 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %1771 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %1772 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %1773 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %1774 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  br label %1775

; <label>:1775                                    ; preds = %1888, %.lr.ph59.i
  %1776 = phi i32 [ %1767, %.lr.ph59.i ], [ %1889, %1888 ]
  %indvars.iv112.i = phi i64 [ 0, %.lr.ph59.i ], [ %indvars.iv.next113.i, %1888 ]
  %1777 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv112.i, i64 0
  %1778 = load [3 x float]** %1769, align 8, !tbaa !28
  %1779 = getelementptr inbounds [3 x float]* %1778, i64 %indvars.iv112.i, i64 0
  %1780 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 0
  %1781 = load float* %1777, align 4, !tbaa !14
  %1782 = load float* %1779, align 4, !tbaa !14
  %1783 = fsub float %1781, %1782
  %1784 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv112.i, i64 1
  %1785 = load float* %1784, align 4, !tbaa !14
  %1786 = getelementptr inbounds [3 x float]* %1778, i64 %indvars.iv112.i, i64 1
  %1787 = load float* %1786, align 4, !tbaa !14
  %1788 = fsub float %1785, %1787
  %1789 = getelementptr inbounds [3 x float]* %596, i64 %indvars.iv112.i, i64 2
  %1790 = load float* %1789, align 4, !tbaa !14
  %1791 = getelementptr inbounds [3 x float]* %1778, i64 %indvars.iv112.i, i64 2
  %1792 = load float* %1791, align 4, !tbaa !14
  %1793 = fsub float %1790, %1792
  store float %1783, float* %1780, align 4, !tbaa !14
  %1794 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 1
  store float %1788, float* %1794, align 4, !tbaa !14
  %1795 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 2
  store float %1793, float* %1795, align 4, !tbaa !14
  %1796 = load float* %1774, align 4, !tbaa !14
  %1797 = fmul float %1783, %1796
  store float %1797, float* %1780, align 4, !tbaa !14
  %.phi.trans.insert169.i218 = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 1
  %1798 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 1
  %1799 = load float* %1798, align 4, !tbaa !14
  %1800 = fmul float %1788, %1799
  store float %1800, float* %.phi.trans.insert169.i218, align 4, !tbaa !14
  br label %._crit_edge168.i.._crit_edge168.i_crit_edge

._crit_edge168.i.._crit_edge168.i_crit_edge:      ; preds = %1775, %._crit_edge168.i.._crit_edge168.i_crit_edge
  %indvars.iv.next108.i219 = phi i64 [ 2, %1775 ], [ %indvars.iv.next108.i, %._crit_edge168.i.._crit_edge168.i_crit_edge ]
  %.phi.trans.insert169.i.phi.trans.insert = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 %indvars.iv.next108.i219
  %.pre170.i.pre = load float* %.phi.trans.insert169.i.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert169.i = getelementptr inbounds [3 x float]* %593, i64 %indvars.iv112.i, i64 %indvars.iv.next108.i219
  %1801 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.next108.i219
  %1802 = load float* %1801, align 4, !tbaa !14
  %1803 = fmul float %.pre170.i.pre, %1802
  store float %1803, float* %.phi.trans.insert169.i, align 4, !tbaa !14
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv.next108.i219, 1
  %exitcond109.i = icmp eq i64 %indvars.iv.next108.i, 3
  br i1 %exitcond109.i, label %1804, label %._crit_edge168.i.._crit_edge168.i_crit_edge

; <label>:1804                                    ; preds = %._crit_edge168.i.._crit_edge168.i_crit_edge
  %1805 = load float** %680, align 8, !tbaa !32
  %1806 = getelementptr inbounds float* %1805, i64 %indvars.iv112.i
  %1807 = load float* %1806, align 4, !tbaa !14
  %1808 = fdiv float %1807, %682
  %1809 = load float* %1780, align 4, !tbaa !14
  %1810 = fmul float %1808, %1809
  %1811 = load float* %1794, align 4, !tbaa !14
  %1812 = fmul float %1808, %1811
  %1813 = load float* %1795, align 4, !tbaa !14
  %1814 = fmul float %1808, %1813
  %1815 = fmul float %1810, %1810
  %1816 = fmul float %1812, %1812
  %1817 = fadd float %1815, %1816
  %1818 = fmul float %1814, %1814
  %1819 = fadd float %1818, %1817
  %sqrtf.i.i29 = tail call float @sqrtf(float %1819) #7
  %1820 = getelementptr inbounds float* %599, i64 %indvars.iv112.i
  %1821 = load float* %1820, align 4, !tbaa !14
  %1822 = fmul float %sqrtf.i.i29, %1821
  %1823 = fsub float -0.000000e+00, %1822
  %1824 = load [3 x float]** %1770, align 8, !tbaa !29
  %1825 = getelementptr inbounds [3 x float]* %1824, i64 %indvars.iv112.i, i64 2
  store float %1823, float* %1825, align 4, !tbaa !14
  %1826 = load [3 x float]** %675, align 8, !tbaa !52
  %1827 = getelementptr inbounds [3 x float]* %1826, i64 %indvars.iv112.i, i64 0
  %1828 = bitcast float* %1777 to i32*
  %1829 = load i32* %1828, align 4, !tbaa !14
  %1830 = bitcast float* %1827 to i32*
  store i32 %1829, i32* %1830, align 4, !tbaa !14
  %1831 = bitcast float* %1784 to i32*
  %1832 = load i32* %1831, align 4, !tbaa !14
  %1833 = getelementptr inbounds [3 x float]* %1826, i64 %indvars.iv112.i, i64 1
  %1834 = bitcast float* %1833 to i32*
  store i32 %1832, i32* %1834, align 4, !tbaa !14
  %1835 = bitcast float* %1789 to i32*
  %1836 = load i32* %1835, align 4, !tbaa !14
  %1837 = getelementptr inbounds [3 x float]* %1826, i64 %indvars.iv112.i, i64 2
  %1838 = bitcast float* %1837 to i32*
  store i32 %1836, i32* %1838, align 4, !tbaa !14
  %1839 = load i32** %1771, align 8, !tbaa !25
  %1840 = getelementptr inbounds i32* %1839, i64 %indvars.iv112.i
  %1841 = load i32* %1840, align 4, !tbaa !26
  %1842 = icmp sgt i32 %1841, 0
  br i1 %1842, label %.lr.ph53.i, label %._crit_edge54.i

.lr.ph53.i:                                       ; preds = %1804
  %1843 = load i32*** %1772, align 8, !tbaa !27
  %1844 = getelementptr inbounds i32** %1843, i64 %indvars.iv112.i
  %1845 = load i32** %1844, align 8, !tbaa !18
  %1846 = load float** %1773, align 8, !tbaa !31
  %.pre171.i = load float* %1780, align 4, !tbaa !14
  %.pre172.i = load float* %1794, align 4, !tbaa !14
  %.pre173.i = load float* %1795, align 4, !tbaa !14
  %1847 = sext i32 %1841 to i64
  %1848 = add nsw i64 %1847, -1
  br label %1849

; <label>:1849                                    ; preds = %1849, %.lr.ph53.i
  %1850 = phi float [ %.pre173.i, %.lr.ph53.i ], [ %1874, %1849 ]
  %1851 = phi float [ %.pre172.i, %.lr.ph53.i ], [ %1872, %1849 ]
  %1852 = phi float [ %.pre171.i, %.lr.ph53.i ], [ %1870, %1849 ]
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph53.i ], [ %indvars.iv.next111.i, %1849 ]
  %1853 = phi float [ 0.000000e+00, %.lr.ph53.i ], [ %1876, %1849 ]
  %1854 = phi float [ 0.000000e+00, %.lr.ph53.i ], [ %1877, %1849 ]
  %1855 = phi float [ 0.000000e+00, %.lr.ph53.i ], [ %1878, %1849 ]
  %1856 = getelementptr inbounds i32* %1845, i64 %indvars.iv110.i
  %1857 = load i32* %1856, align 4, !tbaa !26
  %1858 = sext i32 %1857 to i64
  %1859 = getelementptr inbounds [3 x float]* %x, i64 %1858, i64 0
  %1860 = load float* %1859, align 4, !tbaa !14
  %1861 = fadd float %1852, %1860
  %1862 = getelementptr inbounds [3 x float]* %x, i64 %1858, i64 1
  %1863 = load float* %1862, align 4, !tbaa !14
  %1864 = fadd float %1851, %1863
  %1865 = getelementptr inbounds [3 x float]* %x, i64 %1858, i64 2
  %1866 = load float* %1865, align 4, !tbaa !14
  %1867 = fadd float %1850, %1866
  store float %1861, float* %1859, align 4, !tbaa !14
  store float %1864, float* %1862, align 4, !tbaa !14
  store float %1867, float* %1865, align 4, !tbaa !14
  %1868 = getelementptr inbounds float* %1846, i64 %1858
  %1869 = load float* %1868, align 4, !tbaa !14
  %1870 = load float* %1780, align 4, !tbaa !14
  %1871 = fmul float %1869, %1870
  %1872 = load float* %1794, align 4, !tbaa !14
  %1873 = fmul float %1869, %1872
  %1874 = load float* %1795, align 4, !tbaa !14
  %1875 = fmul float %1869, %1874
  %1876 = fadd float %1853, %1871
  %1877 = fadd float %1854, %1873
  %1878 = fadd float %1855, %1875
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  %exitcond152 = icmp eq i64 %indvars.iv110.i, %1848
  br i1 %exitcond152, label %._crit_edge54.i, label %1849

._crit_edge54.i:                                  ; preds = %1849, %1804
  %.lcssa8891 = phi float [ %1814, %1804 ], [ %1875, %1849 ]
  %.lcssa8790 = phi float [ %1812, %1804 ], [ %1873, %1849 ]
  %.lcssa8689 = phi float [ %1810, %1804 ], [ %1871, %1849 ]
  %.lcssa33.i = phi float [ 0.000000e+00, %1804 ], [ %1876, %1849 ]
  %.lcssa32.i = phi float [ 0.000000e+00, %1804 ], [ %1877, %1849 ]
  %.lcssa31.i = phi float [ 0.000000e+00, %1804 ], [ %1878, %1849 ]
  %1879 = load i32* %515, align 4, !tbaa !40
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1888, label %1881

; <label>:1881                                    ; preds = %._crit_edge54.i
  %1882 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1883 = fpext float %.lcssa33.i to double
  %1884 = fpext float %.lcssa32.i to double
  %1885 = fpext float %.lcssa31.i to double
  %1886 = trunc i64 %indvars.iv112.i to i32
  %1887 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1882, i8* getelementptr inbounds ([31 x i8]* @.str25, i64 0, i64 0), i32 %1886, double %1883, double %1884, double %1885) #9
  %.pre174.i = load i32* %409, align 4, !tbaa !24
  br label %1888

; <label>:1888                                    ; preds = %1881, %._crit_edge54.i
  %1889 = phi i32 [ %1776, %._crit_edge54.i ], [ %.pre174.i, %1881 ]
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1
  %1890 = sext i32 %1889 to i64
  %1891 = icmp slt i64 %indvars.iv.next113.i, %1890
  br i1 %1891, label %1775, label %._crit_edge60.i.loopexit

._crit_edge60.i.loopexit:                         ; preds = %1888
  store float %.lcssa8689, float* %695, align 4, !tbaa !14
  store float %.lcssa8790, float* %696, align 4, !tbaa !14
  store float %.lcssa8891, float* %697, align 4, !tbaa !14
  br label %._crit_edge60.i

._crit_edge60.i:                                  ; preds = %._crit_edge60.i.loopexit, %.preheader16.i
  %1892 = phi i32 [ %1767, %.preheader16.i ], [ %1889, %._crit_edge60.i.loopexit ]
  %1893 = load i32* %450, align 4, !tbaa !36
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1999, label %.preheader15.i

.preheader15.i:                                   ; preds = %._crit_edge60.i
  %1895 = icmp sgt i32 %1892, 0
  br i1 %1895, label %.lr.ph49.i, label %do_constraint.exit

.lr.ph49.i:                                       ; preds = %.preheader15.i
  %1896 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %1897 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %1898 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  %1899 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %1900 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  br label %1901

; <label>:1901                                    ; preds = %1995, %.lr.ph49.i
  %1902 = phi i32 [ %1892, %.lr.ph49.i ], [ %1996, %1995 ]
  %indvars.iv105.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next106.i, %1995 ]
  %1903 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv105.i, i64 0
  %1904 = load [3 x float]** %1896, align 8, !tbaa !49
  %1905 = getelementptr inbounds [3 x float]* %1904, i64 %indvars.iv105.i, i64 0
  %1906 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv105.i, i64 0
  %1907 = load float* %1903, align 4, !tbaa !14
  %1908 = load float* %1905, align 4, !tbaa !14
  %1909 = fsub float %1907, %1908
  %1910 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv105.i, i64 1
  %1911 = load float* %1910, align 4, !tbaa !14
  %1912 = getelementptr inbounds [3 x float]* %1904, i64 %indvars.iv105.i, i64 1
  %1913 = load float* %1912, align 4, !tbaa !14
  %1914 = fsub float %1911, %1913
  %1915 = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv105.i, i64 2
  %1916 = load float* %1915, align 4, !tbaa !14
  %1917 = getelementptr inbounds [3 x float]* %1904, i64 %indvars.iv105.i, i64 2
  %1918 = load float* %1917, align 4, !tbaa !14
  %1919 = fsub float %1916, %1918
  store float %1909, float* %1906, align 4, !tbaa !14
  %1920 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv105.i, i64 1
  store float %1914, float* %1920, align 4, !tbaa !14
  %1921 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv105.i, i64 2
  store float %1919, float* %1921, align 4, !tbaa !14
  %1922 = load [3 x float]** %679, align 8, !tbaa !51
  %1923 = getelementptr inbounds [3 x float]* %1922, i64 %indvars.iv105.i, i64 0
  %1924 = bitcast float* %1903 to i32*
  %1925 = load i32* %1924, align 4, !tbaa !14
  %1926 = bitcast float* %1923 to i32*
  store i32 %1925, i32* %1926, align 4, !tbaa !14
  %1927 = bitcast float* %1910 to i32*
  %1928 = load i32* %1927, align 4, !tbaa !14
  %1929 = getelementptr inbounds [3 x float]* %1922, i64 %indvars.iv105.i, i64 1
  %1930 = bitcast float* %1929 to i32*
  store i32 %1928, i32* %1930, align 4, !tbaa !14
  %1931 = bitcast float* %1915 to i32*
  %1932 = load i32* %1931, align 4, !tbaa !14
  %1933 = getelementptr inbounds [3 x float]* %1922, i64 %indvars.iv105.i, i64 2
  %1934 = bitcast float* %1933 to i32*
  store i32 %1932, i32* %1934, align 4, !tbaa !14
  br label %1948

.preheader14.i:                                   ; preds = %1948
  %1935 = load i32** %1897, align 8, !tbaa !47
  %1936 = getelementptr inbounds i32* %1935, i64 %indvars.iv105.i
  %1937 = load i32* %1936, align 4, !tbaa !26
  %1938 = icmp sgt i32 %1937, 0
  br i1 %1938, label %.lr.ph43.i, label %._crit_edge44.i

.lr.ph43.i:                                       ; preds = %.preheader14.i
  %1939 = load float*** %1898, align 8, !tbaa !61
  %1940 = getelementptr inbounds float** %1939, i64 %indvars.iv105.i
  %1941 = load float** %1940, align 8, !tbaa !18
  %1942 = load i32*** %1899, align 8, !tbaa !48
  %1943 = getelementptr inbounds i32** %1942, i64 %indvars.iv105.i
  %1944 = load i32** %1943, align 8, !tbaa !18
  %1945 = load float** %1900, align 8, !tbaa !31
  %1946 = sext i32 %1937 to i64
  %1947 = add nsw i64 %1946, -1
  br label %1954

; <label>:1948                                    ; preds = %1948, %1901
  %indvars.iv100.i = phi i64 [ 0, %1901 ], [ %indvars.iv.next101.i, %1948 ]
  %1949 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv100.i
  %1950 = load float* %1949, align 4, !tbaa !14
  %1951 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  %1952 = load float* %1951, align 4, !tbaa !14
  %1953 = fmul float %1950, %1952
  store float %1953, float* %1951, align 4, !tbaa !14
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  %exitcond102.i = icmp eq i64 %indvars.iv.next101.i, 3
  br i1 %exitcond102.i, label %.preheader14.i, label %1948

; <label>:1954                                    ; preds = %1954, %.lr.ph43.i
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next104.i, %1954 ]
  %1955 = phi float [ 0.000000e+00, %.lr.ph43.i ], [ %1983, %1954 ]
  %1956 = phi float [ 0.000000e+00, %.lr.ph43.i ], [ %1984, %1954 ]
  %1957 = phi float [ 0.000000e+00, %.lr.ph43.i ], [ %1985, %1954 ]
  %1958 = getelementptr inbounds float* %1941, i64 %indvars.iv103.i
  %1959 = load float* %1958, align 4, !tbaa !14
  %1960 = load float* %1906, align 4, !tbaa !14
  %1961 = fmul float %1959, %1960
  %1962 = load float* %1920, align 4, !tbaa !14
  %1963 = fmul float %1959, %1962
  %1964 = load float* %1921, align 4, !tbaa !14
  %1965 = fmul float %1959, %1964
  %1966 = getelementptr inbounds i32* %1944, i64 %indvars.iv103.i
  %1967 = load i32* %1966, align 4, !tbaa !26
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds [3 x float]* %x, i64 %1968, i64 0
  %1970 = load float* %1969, align 4, !tbaa !14
  %1971 = fadd float %1961, %1970
  %1972 = getelementptr inbounds [3 x float]* %x, i64 %1968, i64 1
  %1973 = load float* %1972, align 4, !tbaa !14
  %1974 = fadd float %1963, %1973
  %1975 = getelementptr inbounds [3 x float]* %x, i64 %1968, i64 2
  %1976 = load float* %1975, align 4, !tbaa !14
  %1977 = fadd float %1965, %1976
  store float %1971, float* %1969, align 4, !tbaa !14
  store float %1974, float* %1972, align 4, !tbaa !14
  store float %1977, float* %1975, align 4, !tbaa !14
  %1978 = getelementptr inbounds float* %1945, i64 %1968
  %1979 = load float* %1978, align 4, !tbaa !14
  %1980 = fmul float %1961, %1979
  %1981 = fmul float %1963, %1979
  %1982 = fmul float %1965, %1979
  %1983 = fadd float %1955, %1980
  %1984 = fadd float %1956, %1981
  %1985 = fadd float %1957, %1982
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond151 = icmp eq i64 %indvars.iv103.i, %1947
  br i1 %exitcond151, label %._crit_edge44.i.loopexit, label %1954

._crit_edge44.i.loopexit:                         ; preds = %1954
  store float %1961, float* %695, align 4, !tbaa !14
  store float %1963, float* %696, align 4, !tbaa !14
  store float %1965, float* %697, align 4, !tbaa !14
  store float %1980, float* %692, align 4, !tbaa !14
  store float %1981, float* %693, align 4, !tbaa !14
  store float %1982, float* %694, align 4, !tbaa !14
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %._crit_edge44.i.loopexit, %.preheader14.i
  %.lcssa30.i = phi float [ 0.000000e+00, %.preheader14.i ], [ %1983, %._crit_edge44.i.loopexit ]
  %.lcssa29.i = phi float [ 0.000000e+00, %.preheader14.i ], [ %1984, %._crit_edge44.i.loopexit ]
  %.lcssa28.i = phi float [ 0.000000e+00, %.preheader14.i ], [ %1985, %._crit_edge44.i.loopexit ]
  %1986 = load i32* %515, align 4, !tbaa !40
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %1995, label %1988

; <label>:1988                                    ; preds = %._crit_edge44.i
  %1989 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %1990 = fpext float %.lcssa30.i to double
  %1991 = fpext float %.lcssa29.i to double
  %1992 = fpext float %.lcssa28.i to double
  %1993 = trunc i64 %indvars.iv105.i to i32
  %1994 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1989, i8* getelementptr inbounds ([34 x i8]* @.str26, i64 0, i64 0), i32 %1993, double %1990, double %1991, double %1992) #9
  %.pre175.i = load i32* %409, align 4, !tbaa !24
  br label %1995

; <label>:1995                                    ; preds = %1988, %._crit_edge44.i
  %1996 = phi i32 [ %1902, %._crit_edge44.i ], [ %.pre175.i, %1988 ]
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  %1997 = sext i32 %1996 to i64
  %1998 = icmp slt i64 %indvars.iv.next106.i, %1997
  br i1 %1998, label %1901, label %do_constraint.exit

; <label>:1999                                    ; preds = %._crit_edge60.i
  %2000 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %2001 = load [3 x float]** %2000, align 8, !tbaa !39
  %2002 = getelementptr inbounds [3 x float]* %2001, i64 0, i64 0
  %2003 = load float* %667, align 4, !tbaa !14
  %2004 = load float* %2002, align 4, !tbaa !14
  %2005 = fsub float %2003, %2004
  %2006 = load float* %668, align 4, !tbaa !14
  %2007 = getelementptr inbounds [3 x float]* %2001, i64 0, i64 1
  %2008 = load float* %2007, align 4, !tbaa !14
  %2009 = fsub float %2006, %2008
  %2010 = load float* %669, align 4, !tbaa !14
  %2011 = getelementptr inbounds [3 x float]* %2001, i64 0, i64 2
  %2012 = load float* %2011, align 4, !tbaa !14
  %2013 = fsub float %2010, %2012
  store float %2005, float* %686, align 4, !tbaa !14
  store float %2009, float* %688, align 4, !tbaa !14
  store float %2013, float* %690, align 4, !tbaa !14
  %2014 = load [3 x float]** %674, align 8, !tbaa !55
  %2015 = bitcast i8* %rjnew.0.in.i to i32*
  %2016 = load i32* %2015, align 4, !tbaa !14
  %2017 = bitcast [3 x float]* %2014 to i32*
  store i32 %2016, i32* %2017, align 4, !tbaa !14
  %2018 = bitcast i8* %.pre-phi181.i to i32*
  %2019 = load i32* %2018, align 4, !tbaa !14
  %2020 = getelementptr inbounds [3 x float]* %2014, i64 0, i64 1
  %2021 = bitcast float* %2020 to i32*
  store i32 %2019, i32* %2021, align 4, !tbaa !14
  %2022 = bitcast i8* %.pre-phi183.i to i32*
  %2023 = load i32* %2022, align 4, !tbaa !14
  %2024 = getelementptr inbounds [3 x float]* %2014, i64 0, i64 2
  %2025 = bitcast float* %2024 to i32*
  store i32 %2023, i32* %2025, align 4, !tbaa !14
  br label %2037

.preheader.i30:                                   ; preds = %2037
  %2026 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %2027 = load i32** %2026, align 8, !tbaa !37
  %2028 = load i32* %2027, align 4, !tbaa !26
  %2029 = icmp sgt i32 %2028, 0
  br i1 %2029, label %.lr.ph.i31, label %2077

.lr.ph.i31:                                       ; preds = %.preheader.i30
  %2030 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %2031 = load i32*** %2030, align 8, !tbaa !38
  %2032 = load i32** %2031, align 8, !tbaa !18
  %2033 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %2034 = load float** %2033, align 8, !tbaa !31
  %.pre176.i = load float* %686, align 4, !tbaa !14
  %.pre177.i = load float* %688, align 4, !tbaa !14
  %.pre178.i = load float* %690, align 4, !tbaa !14
  %2035 = sext i32 %2028 to i64
  %2036 = add nsw i64 %2035, -1
  br label %2043

; <label>:2037                                    ; preds = %2037, %1999
  %indvars.iv98.i = phi i64 [ 0, %1999 ], [ %indvars.iv.next99.i, %2037 ]
  %2038 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv98.i
  %2039 = load float* %2038, align 4, !tbaa !14
  %2040 = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 0, i64 %indvars.iv98.i
  %2041 = load float* %2040, align 4, !tbaa !14
  %2042 = fmul float %2039, %2041
  store float %2042, float* %2040, align 4, !tbaa !14
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1
  %exitcond.i32 = icmp eq i64 %indvars.iv.next99.i, 3
  br i1 %exitcond.i32, label %.preheader.i30, label %2037

; <label>:2043                                    ; preds = %2043, %.lr.ph.i31
  %2044 = phi float [ %.pre178.i, %.lr.ph.i31 ], [ %2068, %2043 ]
  %2045 = phi float [ %.pre177.i, %.lr.ph.i31 ], [ %2073, %2043 ]
  %2046 = phi float [ %.pre176.i, %.lr.ph.i31 ], [ %2072, %2043 ]
  %indvars.iv.i33 = phi i64 [ 0, %.lr.ph.i31 ], [ %indvars.iv.next.i34, %2043 ]
  %2047 = phi float [ 0.000000e+00, %.lr.ph.i31 ], [ %2071, %2043 ]
  %2048 = phi <2 x float> [ zeroinitializer, %.lr.ph.i31 ], [ %2070, %2043 ]
  %2049 = getelementptr inbounds i32* %2032, i64 %indvars.iv.i33
  %2050 = load i32* %2049, align 4, !tbaa !26
  %2051 = sext i32 %2050 to i64
  %2052 = getelementptr inbounds [3 x float]* %x, i64 %2051, i64 0
  %2053 = load float* %2052, align 4, !tbaa !14
  %2054 = fadd float %2046, %2053
  %2055 = getelementptr inbounds [3 x float]* %x, i64 %2051, i64 1
  %2056 = load float* %2055, align 4, !tbaa !14
  %2057 = fadd float %2045, %2056
  %2058 = getelementptr inbounds [3 x float]* %x, i64 %2051, i64 2
  %2059 = load float* %2058, align 4, !tbaa !14
  %2060 = fadd float %2044, %2059
  store float %2054, float* %2052, align 4, !tbaa !14
  store float %2057, float* %2055, align 4, !tbaa !14
  store float %2060, float* %2058, align 4, !tbaa !14
  %2061 = getelementptr inbounds float* %2034, i64 %2051
  %2062 = load float* %2061, align 4, !tbaa !14
  %2063 = bitcast i8* %ref_dr.0.in.i to <2 x float>*
  %2064 = load <2 x float>* %2063, align 4, !tbaa !14
  %2065 = insertelement <2 x float> undef, float %2062, i32 0
  %2066 = insertelement <2 x float> %2065, float %2062, i32 1
  %2067 = fmul <2 x float> %2066, %2064
  %2068 = load float* %690, align 4, !tbaa !14
  %2069 = fmul float %2062, %2068
  %2070 = fadd <2 x float> %2048, %2067
  %2071 = fadd float %2047, %2069
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1
  %exitcond150 = icmp eq i64 %indvars.iv.i33, %2036
  %2072 = extractelement <2 x float> %2064, i32 0
  %2073 = extractelement <2 x float> %2064, i32 1
  br i1 %exitcond150, label %._crit_edge.i35, label %2043

._crit_edge.i35:                                  ; preds = %2043
  %2074 = extractelement <2 x float> %2067, i32 0
  store float %2074, float* %695, align 4, !tbaa !14
  %2075 = extractelement <2 x float> %2067, i32 1
  store float %2075, float* %696, align 4, !tbaa !14
  store float %2069, float* %697, align 4, !tbaa !14
  %2076 = fpext <2 x float> %2070 to <2 x double>
  %phitmp82.i = fpext float %2071 to double
  br label %2077

; <label>:2077                                    ; preds = %._crit_edge.i35, %.preheader.i30
  %.lcssa.i = phi double [ %phitmp82.i, %._crit_edge.i35 ], [ 0.000000e+00, %.preheader.i30 ]
  %2078 = phi <2 x double> [ %2076, %._crit_edge.i35 ], [ zeroinitializer, %.preheader.i30 ]
  %2079 = load i32* %515, align 4, !tbaa !40
  %2080 = icmp eq i32 %2079, 0
  br i1 %2080, label %do_constraint.exit, label %2081

; <label>:2081                                    ; preds = %2077
  %2082 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2083 = extractelement <2 x double> %2078, i32 0
  %2084 = extractelement <2 x double> %2078, i32 1
  %2085 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2082, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), double %2083, double %2084, double %.lcssa.i) #9
  br label %do_constraint.exit

do_constraint.exit:                               ; preds = %1995, %.preheader15.i, %2077, %2081
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 499, i8* %ref_dr.0.in.i) #9
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 500, i8* %595) #9
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 501, i8* %rjnew.0.in.i) #9
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 502, i8* %592) #9
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 503, i8* %598) #9
  call void @llvm.lifetime.end(i64 12, i8* %574)
  call void @llvm.lifetime.end(i64 12, i8* %575)
  call void @llvm.lifetime.end(i64 12, i8* %576)
  call void @llvm.lifetime.end(i64 12, i8* %577)
  call void @llvm.lifetime.end(i64 12, i8* %578)
  call void @llvm.lifetime.end(i64 12, i8* %579)
  tail call void @print_constraint(%struct.t_pull* %pull, [3 x float]* %f, i32 %step, [3 x float]* %box, i32 %1764) #9
  br label %2324

; <label>:2086                                    ; preds = %._crit_edge112
  br i1 %1, label %2324, label %.preheader44

.preheader44:                                     ; preds = %2086
  %2087 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2088 = load i32* %2087, align 4, !tbaa !24
  %2089 = icmp sgt i32 %2088, 0
  br i1 %2089, label %.lr.ph107, label %._crit_edge108.thread

._crit_edge108.thread:                            ; preds = %.preheader44
  %2090 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2090)
  br label %do_umbrella.exit

.lr.ph107:                                        ; preds = %.preheader44
  %2091 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %2092 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %2093 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %2094

; <label>:2094                                    ; preds = %._crit_edge167, %.lr.ph107
  %2095 = phi [3 x float]* [ %9, %.lr.ph107 ], [ %.pre, %._crit_edge167 ]
  %indvars.iv163 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next164, %._crit_edge167 ]
  %2096 = load i32** %2091, align 8, !tbaa !25
  %2097 = getelementptr inbounds i32* %2096, i64 %indvars.iv163
  %2098 = load i32* %2097, align 4, !tbaa !26
  %2099 = load i32*** %2092, align 8, !tbaa !27
  %2100 = getelementptr inbounds i32** %2099, i64 %indvars.iv163
  %2101 = load i32** %2100, align 8, !tbaa !18
  %2102 = load [3 x float]** %2093, align 8, !tbaa !28
  %2103 = getelementptr inbounds [3 x float]* %2102, i64 %indvars.iv163, i64 0
  %2104 = tail call float @calc_com([3 x float]* %2095, i32 %2098, i32* %2101, %struct.t_mdatoms* %md, float* %2103, [3 x float]* %box) #9
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  %2105 = load i32* %2087, align 4, !tbaa !24
  %2106 = sext i32 %2105 to i64
  %2107 = icmp slt i64 %indvars.iv.next164, %2106
  br i1 %2107, label %._crit_edge167, label %._crit_edge108

._crit_edge167:                                   ; preds = %2094
  %.pre = load [3 x float]** @pull.x_s, align 8, !tbaa !18
  br label %2094

._crit_edge108:                                   ; preds = %2094
  %2108 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %2108)
  %2109 = icmp sgt i32 %2105, 0
  br i1 %2109, label %.lr.ph10.i, label %do_umbrella.exit

.lr.ph10.i:                                       ; preds = %._crit_edge108
  %2110 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %2111 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %2112 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %2113 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %2114 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %2115 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 22
  %2116 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %2117 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %2118 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %2119 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %2120 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %2121 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  br label %2122

; <label>:2122                                    ; preds = %2272, %.lr.ph10.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next14.i, %2272 ]
  %ii.08.i = phi i32 [ 0, %.lr.ph10.i ], [ %ii.1.lcssa.i, %2272 ]
  %2123 = load [3 x float]** %2110, align 8, !tbaa !54
  %2124 = getelementptr inbounds [3 x float]* %2123, i64 %indvars.iv13.i, i64 0
  %2125 = load [3 x float]** %2111, align 8, !tbaa !28
  %2126 = getelementptr inbounds [3 x float]* %2125, i64 %indvars.iv13.i, i64 0
  %2127 = load float* %2124, align 4, !tbaa !14
  %2128 = load float* %2126, align 4, !tbaa !14
  %2129 = fsub float %2127, %2128
  %2130 = getelementptr inbounds [3 x float]* %2123, i64 %indvars.iv13.i, i64 1
  %2131 = load float* %2130, align 4, !tbaa !14
  %2132 = getelementptr inbounds [3 x float]* %2125, i64 %indvars.iv13.i, i64 1
  %2133 = load float* %2132, align 4, !tbaa !14
  %2134 = fsub float %2131, %2133
  %2135 = getelementptr inbounds [3 x float]* %2123, i64 %indvars.iv13.i, i64 2
  %2136 = load float* %2135, align 4, !tbaa !14
  %2137 = getelementptr inbounds [3 x float]* %2125, i64 %indvars.iv13.i, i64 2
  %2138 = load float* %2137, align 4, !tbaa !14
  %2139 = fsub float %2136, %2138
  store float %2129, float* %2112, align 4, !tbaa !14
  store float %2134, float* %2113, align 4, !tbaa !14
  store float %2139, float* %2114, align 4, !tbaa !14
  br label %2140

; <label>:2140                                    ; preds = %._crit_edge15.i, %2122
  %2141 = phi float [ %2139, %2122 ], [ %.pre.i, %._crit_edge15.i ]
  %indvars.iv.i = phi i64 [ 2, %2122 ], [ %indvars.iv.next.i, %._crit_edge15.i ]
  %2142 = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.i
  %2143 = fpext float %2141 to double
  %2144 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i
  %2145 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %2146 = load float* %2145, align 4, !tbaa !14
  %2147 = fpext float %2146 to double
  %2148 = fmul double %2147, 5.000000e-01
  %2149 = fcmp ogt double %2143, %2148
  br i1 %2149, label %2150, label %2163

; <label>:2150                                    ; preds = %2140
  %2151 = getelementptr inbounds [3 x float]* %2144, i64 0, i64 0
  %2152 = load float* %2112, align 4, !tbaa !14
  %2153 = load float* %2151, align 4, !tbaa !14
  %2154 = fsub float %2152, %2153
  %2155 = load float* %2113, align 4, !tbaa !14
  %2156 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 1
  %2157 = load float* %2156, align 4, !tbaa !14
  %2158 = fsub float %2155, %2157
  %2159 = load float* %2114, align 4, !tbaa !14
  %2160 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 2
  %2161 = load float* %2160, align 4, !tbaa !14
  %2162 = fsub float %2159, %2161
  store float %2154, float* %2112, align 4, !tbaa !14
  store float %2158, float* %2113, align 4, !tbaa !14
  store float %2162, float* %2114, align 4, !tbaa !14
  %.pre16.i = load float* %2142, align 4, !tbaa !14
  br label %2163

; <label>:2163                                    ; preds = %2150, %2140
  %2164 = phi float [ %.pre16.i, %2150 ], [ %2141, %2140 ]
  %2165 = fpext float %2164 to double
  %2166 = fmul double %2147, -5.000000e-01
  %2167 = fcmp olt double %2165, %2166
  br i1 %2167, label %2168, label %2181

; <label>:2168                                    ; preds = %2163
  %2169 = getelementptr inbounds [3 x float]* %2144, i64 0, i64 0
  %2170 = load float* %2112, align 4, !tbaa !14
  %2171 = load float* %2169, align 4, !tbaa !14
  %2172 = fadd float %2170, %2171
  %2173 = load float* %2113, align 4, !tbaa !14
  %2174 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 1
  %2175 = load float* %2174, align 4, !tbaa !14
  %2176 = fadd float %2173, %2175
  %2177 = load float* %2114, align 4, !tbaa !14
  %2178 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 2
  %2179 = load float* %2178, align 4, !tbaa !14
  %2180 = fadd float %2177, %2179
  store float %2172, float* %2112, align 4, !tbaa !14
  store float %2176, float* %2113, align 4, !tbaa !14
  store float %2180, float* %2114, align 4, !tbaa !14
  %.pre17.i = load float* %2142, align 4, !tbaa !14
  br label %2181

; <label>:2181                                    ; preds = %2168, %2163
  %2182 = phi float [ %.pre17.i, %2168 ], [ %2164, %2163 ]
  %2183 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.i
  %2184 = load float* %2183, align 4, !tbaa !14
  %2185 = fmul float %2182, %2184
  store float %2185, float* %2142, align 4, !tbaa !14
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %2186 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %2186, label %._crit_edge15.i, label %2187

._crit_edge15.i:                                  ; preds = %2181
  %.phi.trans.insert.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next.i
  %.pre.i = load float* %.phi.trans.insert.i, align 4, !tbaa !14
  br label %2140

; <label>:2187                                    ; preds = %2181
  %2188 = load float* %2115, align 4, !tbaa !62
  %2189 = load [3 x float]** %2116, align 8, !tbaa !29
  %2190 = getelementptr inbounds [3 x float]* %2189, i64 %indvars.iv13.i, i64 0
  %2191 = load float* %2112, align 4, !tbaa !14
  %2192 = fmul float %2188, %2191
  store float %2192, float* %2190, align 4, !tbaa !14
  %2193 = load float* %2113, align 4, !tbaa !14
  %2194 = fmul float %2188, %2193
  %2195 = getelementptr inbounds [3 x float]* %2189, i64 %indvars.iv13.i, i64 1
  store float %2194, float* %2195, align 4, !tbaa !14
  %2196 = load float* %2114, align 4, !tbaa !14
  %2197 = fmul float %2188, %2196
  %2198 = getelementptr inbounds [3 x float]* %2189, i64 %indvars.iv13.i, i64 2
  store float %2197, float* %2198, align 4, !tbaa !14
  %2199 = load i32* %2117, align 4, !tbaa !40
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %.preheader1.i, label %2201

; <label>:2201                                    ; preds = %2187
  %2202 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2203 = fpext float %2191 to double
  %2204 = fpext float %2193 to double
  %2205 = fpext float %2196 to double
  %2206 = trunc i64 %indvars.iv13.i to i32
  %2207 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2202, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0), i32 %2206, double %2203, double %2204, double %2205) #9
  %2208 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2209 = load [3 x float]** %2116, align 8, !tbaa !29
  %2210 = getelementptr inbounds [3 x float]* %2209, i64 %indvars.iv13.i, i64 0
  %2211 = load float* %2210, align 4, !tbaa !14
  %2212 = fpext float %2211 to double
  %2213 = getelementptr inbounds [3 x float]* %2209, i64 %indvars.iv13.i, i64 1
  %2214 = load float* %2213, align 4, !tbaa !14
  %2215 = fpext float %2214 to double
  %2216 = getelementptr inbounds [3 x float]* %2209, i64 %indvars.iv13.i, i64 2
  %2217 = load float* %2216, align 4, !tbaa !14
  %2218 = fpext float %2217 to double
  %2219 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2208, i8* getelementptr inbounds ([17 x i8]* @.str29, i64 0, i64 0), double %2212, double %2215, double %2218) #9
  %2220 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2221 = load [3 x float]** %2111, align 8, !tbaa !28
  %2222 = getelementptr inbounds [3 x float]* %2221, i64 %indvars.iv13.i, i64 0
  %2223 = load float* %2222, align 4, !tbaa !14
  %2224 = fpext float %2223 to double
  %2225 = getelementptr inbounds [3 x float]* %2221, i64 %indvars.iv13.i, i64 1
  %2226 = load float* %2225, align 4, !tbaa !14
  %2227 = fpext float %2226 to double
  %2228 = getelementptr inbounds [3 x float]* %2221, i64 %indvars.iv13.i, i64 2
  %2229 = load float* %2228, align 4, !tbaa !14
  %2230 = fpext float %2229 to double
  %2231 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2220, i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0), double %2224, double %2227, double %2230) #9
  %2232 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2233 = load [3 x float]** %2110, align 8, !tbaa !54
  %2234 = getelementptr inbounds [3 x float]* %2233, i64 %indvars.iv13.i, i64 0
  %2235 = load float* %2234, align 4, !tbaa !14
  %2236 = fpext float %2235 to double
  %2237 = getelementptr inbounds [3 x float]* %2233, i64 %indvars.iv13.i, i64 1
  %2238 = load float* %2237, align 4, !tbaa !14
  %2239 = fpext float %2238 to double
  %2240 = getelementptr inbounds [3 x float]* %2233, i64 %indvars.iv13.i, i64 2
  %2241 = load float* %2240, align 4, !tbaa !14
  %2242 = fpext float %2241 to double
  %2243 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2232, i8* getelementptr inbounds ([19 x i8]* @.str31, i64 0, i64 0), double %2236, double %2239, double %2242) #9
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %2201, %2187
  %2244 = load i32** %2118, align 8, !tbaa !25
  %2245 = getelementptr inbounds i32* %2244, i64 %indvars.iv13.i
  %2246 = load i32* %2245, align 4, !tbaa !26
  %2247 = icmp sgt i32 %2246, 0
  br i1 %2247, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %2248 = icmp sgt i32 %2246, 1
  %.op.i = add i32 %2246, -1
  %2249 = sext i32 %.op.i to i64
  %2250 = select i1 %2248, i64 %2249, i64 0
  %2251 = load i32*** %2121, align 8, !tbaa !27
  %2252 = getelementptr inbounds i32** %2251, i64 %indvars.iv13.i
  %2253 = load i32** %2252, align 8, !tbaa !18
  %2254 = getelementptr inbounds i32* %2253, i64 %2250
  %2255 = load i32* %2254, align 4, !tbaa !26
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader1.i
  %ii.1.lcssa.i = phi i32 [ %2255, %.lr.ph.i ], [ %ii.08.i, %.preheader1.i ]
  %2256 = sext i32 %ii.1.lcssa.i to i64
  %2257 = load float** %2119, align 8, !tbaa !31
  %2258 = getelementptr inbounds float* %2257, i64 %2256
  %2259 = load [3 x float]** %2116, align 8, !tbaa !29
  %2260 = load float** %2120, align 8, !tbaa !32
  %2261 = getelementptr inbounds float* %2260, i64 %indvars.iv13.i
  br label %2262

; <label>:2262                                    ; preds = %2262, %.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next12.i, %2262 ]
  %2263 = load float* %2258, align 4, !tbaa !14
  %2264 = getelementptr inbounds [3 x float]* %2259, i64 %indvars.iv13.i, i64 %indvars.iv11.i
  %2265 = load float* %2264, align 4, !tbaa !14
  %2266 = fmul float %2263, %2265
  %2267 = load float* %2261, align 4, !tbaa !14
  %2268 = fdiv float %2266, %2267
  %2269 = getelementptr inbounds [3 x float]* %f, i64 %2256, i64 %indvars.iv11.i
  %2270 = load float* %2269, align 4, !tbaa !14
  %2271 = fadd float %2268, %2270
  store float %2271, float* %2269, align 4, !tbaa !14
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next12.i, 3
  br i1 %exitcond.i, label %2272, label %2262

; <label>:2272                                    ; preds = %2262
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %2273 = load i32* %2087, align 4, !tbaa !24
  %2274 = sext i32 %2273 to i64
  %2275 = icmp slt i64 %indvars.iv.next14.i, %2274
  br i1 %2275, label %2122, label %do_umbrella.exit

do_umbrella.exit:                                 ; preds = %2272, %._crit_edge108.thread, %._crit_edge108
  %2276 = phi i8* [ %2090, %._crit_edge108.thread ], [ %2108, %._crit_edge108 ], [ %2108, %2272 ]
  call void @llvm.lifetime.end(i64 12, i8* %2276)
  tail call void @print_umbrella(%struct.t_pull* %pull, i32 %step) #9
  br label %2324

; <label>:2277                                    ; preds = %._crit_edge112
  br i1 %1, label %2324, label %2278

; <label>:2278                                    ; preds = %2277
  %2279 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %2280 = load i32** %2279, align 8, !tbaa !37
  %2281 = load i32* %2280, align 4, !tbaa !26
  %2282 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %2283 = load i32*** %2282, align 8, !tbaa !38
  %2284 = load i32** %2283, align 8, !tbaa !18
  %2285 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %2286 = load [3 x float]** %2285, align 8, !tbaa !39
  %2287 = getelementptr inbounds [3 x float]* %2286, i64 0, i64 0
  %2288 = tail call float @calc_com([3 x float]* %x, i32 %2281, i32* %2284, %struct.t_mdatoms* %md, float* %2287, [3 x float]* %box) #9
  %2289 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2290 = load [3 x float]** %2285, align 8, !tbaa !39
  %2291 = getelementptr inbounds [3 x float]* %2290, i64 0, i64 0
  %2292 = load float* %2291, align 4, !tbaa !14
  %2293 = fpext float %2292 to double
  %2294 = getelementptr inbounds [3 x float]* %2290, i64 0, i64 1
  %2295 = load float* %2294, align 4, !tbaa !14
  %2296 = fpext float %2295 to double
  %2297 = getelementptr inbounds [3 x float]* %2290, i64 0, i64 2
  %2298 = load float* %2297, align 4, !tbaa !14
  %2299 = fpext float %2298 to double
  %2300 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2289, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), double %2293, double %2296, double %2299) #9
  tail call void @correct_t0_pbc(%struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md, [3 x float]* %box) #9
  %2301 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %2302 = load [3 x float]*** %2301, align 8, !tbaa !45
  %2303 = load [3 x float]** %2302, align 8, !tbaa !18
  %2304 = load i32** %2279, align 8, !tbaa !37
  %2305 = load i32* %2304, align 4, !tbaa !26
  %2306 = load i32*** %2282, align 8, !tbaa !38
  %2307 = load i32** %2306, align 8, !tbaa !18
  %2308 = load [3 x float]** %2285, align 8, !tbaa !39
  %2309 = getelementptr inbounds [3 x float]* %2308, i64 0, i64 0
  %2310 = tail call float @calc_com2([3 x float]* %2303, i32 %2305, i32* %2307, %struct.t_mdatoms* %md, float* %2309, [3 x float]* %box) #9
  %2311 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %2312 = load [3 x float]** %2285, align 8, !tbaa !39
  %2313 = getelementptr inbounds [3 x float]* %2312, i64 0, i64 0
  %2314 = load float* %2313, align 4, !tbaa !14
  %2315 = fpext float %2314 to double
  %2316 = getelementptr inbounds [3 x float]* %2312, i64 0, i64 1
  %2317 = load float* %2316, align 4, !tbaa !14
  %2318 = fpext float %2317 to double
  %2319 = getelementptr inbounds [3 x float]* %2312, i64 0, i64 2
  %2320 = load float* %2319, align 4, !tbaa !14
  %2321 = fpext float %2320 to double
  %2322 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2311, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), double %2315, double %2318, double %2321) #9
  br label %2324

; <label>:2323                                    ; preds = %._crit_edge112
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0)) #9
  br label %2324

; <label>:2324                                    ; preds = %2277, %2278, %2086, %do_umbrella.exit, %170, %do_start.exit, %32, %do_afm.exit, %2323, %do_constraint.exit
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @calc_com([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @print_afm(%struct.t_pull*, i32) #1

; Function Attrs: optsize
declare void @make_refgrps(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare void @print_start(%struct.t_pull*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @correct_t0_pbc(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*) #1

; Function Attrs: optsize
declare float @calc_com2([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @calc_running_com(%struct.t_pull*) #1

; Function Attrs: optsize
declare void @print_constraint(%struct.t_pull*, [3 x float]*, i32, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @print_umbrella(%struct.t_pull*, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @check_convergence(%struct.t_pull* nocapture readonly %pull) #6 {
  %dr = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 14
  %2 = load float* %1, align 4, !tbaa !63
  %3 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %4 = load i32* %3, align 4, !tbaa !24
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %7 = load [3 x float]** %6, align 8, !tbaa !39
  %8 = getelementptr inbounds [3 x float]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %10 = load [3 x float]** %9, align 8, !tbaa !28
  %11 = load float* %8, align 4, !tbaa !14
  %12 = getelementptr inbounds [3 x float]* %7, i64 0, i64 1
  %13 = load float* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds [3 x float]* %7, i64 0, i64 2
  %15 = load float* %14, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  %17 = load [3 x float]** %16, align 8, !tbaa !41
  %18 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 0
  %19 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 2
  %21 = sext i32 %4 to i64
  br label %22

; <label>:22                                      ; preds = %.lr.ph, %61
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next5, %61 ]
  %bTest.02 = phi i32 [ 1, %.lr.ph ], [ %63, %61 ]
  %23 = getelementptr inbounds [3 x float]* %10, i64 %indvars.iv4, i64 0
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fsub float %11, %24
  %26 = getelementptr inbounds [3 x float]* %10, i64 %indvars.iv4, i64 1
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fsub float %13, %27
  %29 = getelementptr inbounds [3 x float]* %10, i64 %indvars.iv4, i64 2
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fsub float %15, %30
  %32 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv4, i64 0
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fadd float %25, %33
  %35 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv4, i64 1
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fadd float %28, %36
  %38 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv4, i64 2
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fadd float %31, %39
  store float %34, float* %18, align 4, !tbaa !14
  store float %37, float* %19, align 4, !tbaa !14
  store float %40, float* %20, align 4, !tbaa !14
  %41 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  %42 = load float* %41, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 0
  %44 = fmul float %42, %34
  store float %44, float* %43, align 4, !tbaa !14
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %22, %._crit_edge6
  %indvars.iv.next7 = phi i64 [ 1, %22 ], [ %indvars.iv.next, %._crit_edge6 ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dr, i64 0, i64 %indvars.iv.next7
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %45 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.next7
  %46 = load float* %45, align 4, !tbaa !14
  %47 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 %indvars.iv.next7
  %48 = fmul float %46, %.pre
  store float %48, float* %47, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next7, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %49, label %._crit_edge6

; <label>:49                                      ; preds = %._crit_edge6
  %50 = icmp eq i32 %bTest.02, 0
  br i1 %50, label %61, label %51

; <label>:51                                      ; preds = %49
  %52 = load float* %18, align 4, !tbaa !14
  %53 = fmul float %52, %52
  %54 = load float* %19, align 4, !tbaa !14
  %55 = fmul float %54, %54
  %56 = fadd float %53, %55
  %57 = load float* %20, align 4, !tbaa !14
  %58 = fmul float %57, %57
  %59 = fadd float %56, %58
  %sqrtf.i = tail call float @sqrtf(float %59) #7
  %60 = fcmp olt float %sqrtf.i, %2
  br label %61

; <label>:61                                      ; preds = %49, %51
  %62 = phi i1 [ false, %49 ], [ %60, %51 ]
  %63 = zext i1 %62 to i32
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %64 = icmp slt i64 %indvars.iv.next5, %21
  br i1 %64, label %22, label %._crit_edge

._crit_edge:                                      ; preds = %61, %0
  %bTest.0.lcssa = phi i32 [ 1, %0 ], [ %63, %61 ]
  ret i32 %bTest.0.lcssa
}

; Function Attrs: optsize
declare void @dump_conf(%struct.t_pull*, [3 x float]*, [3 x float]*, %struct.t_topology*, i32, float) #1

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

declare float @fabsf(float)

declare float @sqrtf(float)

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
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { nounwind optsize readnone }

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
!19 = !{!20, !7, i64 4}
!20 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!21 = !{!22, !5, i64 432}
!22 = !{!"", !23, i64 0, !23, i64 144, !23, i64 288, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 452, !15, i64 464, !15, i64 468, !5, i64 472, !15, i64 484, !15, i64 488, !7, i64 492, !15, i64 496, !15, i64 500, !15, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !15, i64 528, !15, i64 532, !15, i64 536, !7, i64 540, !7, i64 544, !7, i64 548}
!23 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!24 = !{!22, !7, i64 144}
!25 = !{!22, !4, i64 168}
!26 = !{!7, !7, i64 0}
!27 = !{!22, !4, i64 152}
!28 = !{!22, !4, i64 216}
!29 = !{!22, !4, i64 240}
!30 = !{!22, !4, i64 248}
!31 = !{!20, !4, i64 24}
!32 = !{!22, !4, i64 184}
!33 = !{!22, !15, i64 528}
!34 = !{!22, !4, i64 256}
!35 = !{!22, !15, i64 532}
!36 = !{!22, !7, i64 512}
!37 = !{!22, !4, i64 312}
!38 = !{!22, !4, i64 296}
!39 = !{!22, !4, i64 360}
!40 = !{!22, !7, i64 548}
!41 = !{!22, !4, i64 272}
!42 = !{!22, !15, i64 488}
!43 = !{!22, !15, i64 496}
!44 = !{!22, !5, i64 436}
!45 = !{!22, !4, i64 336}
!46 = !{!22, !7, i64 540}
!47 = !{!22, !4, i64 24}
!48 = !{!22, !4, i64 8}
!49 = !{!22, !4, i64 72}
!50 = !{!22, !7, i64 544}
!51 = !{!22, !4, i64 80}
!52 = !{!22, !4, i64 224}
!53 = !{!22, !4, i64 64}
!54 = !{!22, !4, i64 208}
!55 = !{!22, !4, i64 368}
!56 = !{!22, !4, i64 352}
!57 = !{!22, !4, i64 40}
!58 = !{!22, !4, i64 328}
!59 = !{!22, !15, i64 504}
!60 = !{!22, !4, i64 176}
!61 = !{!22, !4, i64 16}
!62 = !{!22, !15, i64 536}
!63 = !{!22, !15, i64 500}
