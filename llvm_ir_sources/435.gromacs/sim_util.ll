; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/sim_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }
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
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_mdebin = type { %struct.t_ebin*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }

@print_time.time_per_step = internal unnamed_addr global float 0.000000e+00, align 4
@print_time.end = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"\0Dstep %d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c", will finish at %s\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c", remaining runtime: %5d s               \00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"%s on node %d %s\0A\00", align 1
@do_force.box_size = internal global [3 x float] zeroinitializer, align 4
@do_force.dvdl_lr = internal global float 0.000000e+00, align 4
@do_force.mu_and_q = internal global [4 x float] zeroinitializer, align 16
@debug = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [5 x i8] c"cgcm\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"vir_shifts\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"virtest\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"pme_vir\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"vir_part\00", align 1
@cprev = internal unnamed_addr global i64 0, align 8
@runtime = internal unnamed_addr global double 0.000000e+00, align 8
@.str10 = private unnamed_addr constant [34 x i8] c"vcm: start=%d, homenr=%d, end=%d\0A\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"\0AConstraining the starting coordinates (step %d)\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0AConstraining the coordinates at t0-dt (step %d)\0A\00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"vcm: %8.3f  %8.3f  %8.3f, total mass = %12.5e\0A\00", align 1
@calc_dispcorr.bFirst = internal unnamed_addr global i1 false
@.str14 = private unnamed_addr constant [35 x i8] c"Long Range LJ corr. to Epot: %10g\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"Long Range LJ corr. to Epot: %10g, Pres: %10g, Vir: %10g\0A\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"Removing pbc first time\0A\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"Done rmpbc\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str19 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stdlog = external global %struct.__sFILE*
@.str20 = private unnamed_addr constant [4 x i8] c"fsr\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"flr\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @print_time(%struct.__sFILE* %out, i64 %start, i32 %step, %struct.t_inputrec* nocapture readonly %ir) #4 {
  %finish = alloca i64, align 8
  %buf = alloca [48 x i8], align 16
  %1 = getelementptr inbounds [48 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 48, i8* %1) #5
  %2 = icmp ne %struct.__sFILE* %out, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 %step) #10
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 3
  %7 = load i32* %6, align 4, !tbaa !8
  %8 = icmp sgt i32 %7, %step
  br i1 %8, label %46, label %9

; <label>:9                                       ; preds = %5
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %9
  %12 = srem i32 %step, %7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %11
  %.pre = load float* @print_time.time_per_step, align 4, !tbaa !2
  br label %23

; <label>:14                                      ; preds = %11, %9
  %15 = tail call i64 @time(i64* null) #10
  store i64 %15, i64* @print_time.end, align 8, !tbaa !13
  %16 = sitofp i64 %15 to double
  %17 = sitofp i64 %start to double
  %18 = fsub double %16, %17
  %19 = add nsw i32 %step, 1
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %18, %20
  %22 = fptrunc double %21 to float
  store float %22, float* @print_time.time_per_step, align 4, !tbaa !2
  br label %23

; <label>:23                                      ; preds = %._crit_edge, %14
  %24 = phi float [ %.pre, %._crit_edge ], [ %22, %14 ]
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 1
  %26 = load i32* %25, align 4, !tbaa !15
  %27 = sub nsw i32 %26, %step
  %28 = sitofp i32 %27 to float
  %29 = fmul float %24, %28
  %30 = fcmp ult float %29, 3.000000e+02
  br i1 %30, label %42, label %31

; <label>:31                                      ; preds = %23
  %32 = load i64* @print_time.end, align 8, !tbaa !13
  %33 = fptosi float %29 to i64
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %finish, align 8, !tbaa !13
  %35 = call i8* @ctime(i64* %finish) #10
  %36 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 48, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* %35) #10
  %37 = call i64 @strlen(i8* %1) #10
  %38 = add i64 %37, -1
  %39 = getelementptr inbounds [48 x i8]* %buf, i64 0, i64 %38
  store i8 0, i8* %39, align 1, !tbaa !16
  br i1 %2, label %40, label %46

; <label>:40                                      ; preds = %31
  %41 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i8* %1) #10
  br label %46

; <label>:42                                      ; preds = %23
  br i1 %2, label %43, label %46

; <label>:43                                      ; preds = %42
  %44 = fptosi float %29 to i32
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), i32 %44) #10
  br label %46

; <label>:46                                      ; preds = %5, %40, %31, %43, %42
  %47 = call i32 @fflush(%struct.__sFILE* %out) #10
  call void @llvm.lifetime.end(i64 48, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare i8* @ctime(i64*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i64 @print_date_and_time(%struct.__sFILE* %log, i32 %nodeid, i8* %title) #4 {
  %time_string = alloca [4096 x i8], align 16
  %now = alloca i64, align 8
  %1 = getelementptr inbounds [4096 x i8]* %time_string, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = tail call i64 @time(i64* null) #10
  store i64 %2, i64* %now, align 8, !tbaa !13
  %3 = call i8* @ctime(i64* %now) #10
  %4 = load i8* %3, align 1, !tbaa !16
  %5 = icmp sgt i8 %4, 31
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %6 = phi i8* [ %11, %.lr.ph ], [ %1, %0 ]
  %7 = phi i8 [ %9, %.lr.ph ], [ %4, %0 ]
  store i8 %7, i8* %6, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = getelementptr inbounds i8* %3, i64 %indvars.iv.next
  %9 = load i8* %8, align 1, !tbaa !16
  %10 = icmp sgt i8 %9, 31
  %11 = getelementptr inbounds [4096 x i8]* %time_string, i64 0, i64 %indvars.iv.next
  br i1 %10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i8* [ %1, %0 ], [ %11, %.lr.ph ]
  store i8 0, i8* %.lcssa, align 1, !tbaa !16
  %12 = icmp eq %struct.__sFILE* %log, null
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %._crit_edge
  %14 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i8* %title, i32 %nodeid, i8* %1) #10
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %13
  %16 = load i64* %now, align 8, !tbaa !13
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret i64 %16
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %vir_part, [3 x float]* %pme_vir, i32 %step, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* nocapture readnone %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %bVerbose, float %lambda, %struct.t_graph* %graph, i32 %bNS, i32 %bNBFonly, %struct.t_forcerec* %fr, float* %mu_tot, i32 %bGatherOnly) #4 {
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !17
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %3
  %5 = load i32* %4, align 4, !tbaa !19
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %3
  %7 = load i32* %6, align 4, !tbaa !19
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %14, label %9

; <label>:9                                       ; preds = %0
  %10 = add nsw i32 %2, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %11
  %13 = load i32* %12, align 4, !tbaa !19
  br label %14

; <label>:14                                      ; preds = %0, %9
  %15 = phi i32 [ %13, %9 ], [ 0, %0 ]
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %3
  %17 = load i32* %16, align 4, !tbaa !19
  %18 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @update_forcerec(%struct.__sFILE* %log, %struct.t_forcerec* %fr, [3 x float]* %18) #10
  %19 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 8
  %20 = load float** %19, align 8, !tbaa !20
  tail call void @calc_mu_and_q(%struct.t_nsborder* %nsb, [3 x float]* %x, float* %20, float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 0), float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 3)) #10
  %21 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %22 = load i32* %21, align 4, !tbaa !22
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %45, label %24

; <label>:24                                      ; preds = %14
  %25 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %26 = load i32* %25, align 4, !tbaa !24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %24
  %29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %30 = load [3 x float]** %29, align 8, !tbaa !26
  tail call void @calc_shifts([3 x float]* %18, float* getelementptr inbounds ([3 x float]* @do_force.box_size, i64 0, i64 0), [3 x float]* %30) #10
  br label %31

; <label>:31                                      ; preds = %24, %28
  %32 = icmp eq i32 %bNS, 0
  br i1 %32, label %41, label %33

; <label>:33                                      ; preds = %31
  %34 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %35 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %36 = load [3 x float]** %35, align 8, !tbaa !27
  tail call void @put_charge_groups_in_box(%struct.__sFILE* %log, i32 %15, i32 %17, [3 x float]* %18, float* getelementptr inbounds ([3 x float]* @do_force.box_size, i64 0, i64 0), %struct.t_block* %34, [3 x float]* %x, [3 x float]* %36) #10
  %37 = sitofp i32 %7 to double
  %38 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 88
  %39 = load double* %38, align 8, !tbaa !6
  %40 = fadd double %37, %39
  store double %40, double* %38, align 8, !tbaa !6
  br label %51

; <label>:41                                      ; preds = %31
  %42 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %43 = load i32* %42, align 4, !tbaa !28
  %.off = add i32 %43, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %44, label %.thread

; <label>:44                                      ; preds = %41
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %18, [3 x float]* %x) #10
  br label %.thread

; <label>:45                                      ; preds = %14
  %46 = icmp eq i32 %bNS, 0
  br i1 %46, label %.thread, label %47

; <label>:47                                      ; preds = %45
  %48 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %49 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %50 = load [3 x float]** %49, align 8, !tbaa !27
  tail call void @calc_cgcm(%struct.__sFILE* %log, i32 %15, i32 %17, %struct.t_block* %48, [3 x float]* %x, [3 x float]* %50) #10
  br label %51

; <label>:51                                      ; preds = %33, %47
  %52 = sub nsw i32 %17, %15
  %53 = sitofp i32 %52 to double
  %54 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 90
  %55 = load double* %54, align 8, !tbaa !6
  %56 = fadd double %53, %55
  store double %56, double* %54, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %58 = load i32* %57, align 4, !tbaa !29
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %64, label %60

; <label>:60                                      ; preds = %51
  %61 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %62 = load i32* %61, align 4, !tbaa !31
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %68

; <label>:64                                      ; preds = %60, %51
  %65 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %66 = load [3 x float]** %65, align 8, !tbaa !27
  %67 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  tail call void @move_cgcm(%struct.__sFILE* %log, %struct.t_commrec* %cr, [3 x float]* %66, i32* %67) #10
  br label %68

; <label>:68                                      ; preds = %64, %60
  %69 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %70 = icmp eq %struct.__sFILE* %69, null
  br i1 %70, label %.thread, label %71

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %73 = load [3 x float]** %72, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %75 = load i32* %74, align 4, !tbaa !33
  tail call void @pr_rvecs(%struct.__sFILE* %69, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), [3 x float]* %73, i32 %75) #10
  br label %.thread

.thread:                                          ; preds = %44, %45, %41, %68, %71
  %76 = phi i1 [ true, %68 ], [ true, %71 ], [ false, %41 ], [ false, %45 ], [ false, %44 ]
  %77 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %78 = load i32* %77, align 4, !tbaa !29
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %84, label %80

; <label>:80                                      ; preds = %.thread
  %81 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %82 = load i32* %81, align 4, !tbaa !31
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %.preheader40

; <label>:84                                      ; preds = %80, %.thread
  %85 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %86 = load i32* %85, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %88 = load i32* %87, align 4, !tbaa !35
  tail call void @move_x(%struct.__sFILE* %log, i32 %86, i32 %88, [3 x float]* %x, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #10
  tail call void @gmx_sumf(i32 4, float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 0), %struct.t_commrec* %cr) #10
  br label %.preheader40

.preheader40:                                     ; preds = %80, %84, %.preheader40
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.preheader40 ], [ 0, %84 ], [ 0, %80 ]
  %89 = getelementptr inbounds [4 x float]* @do_force.mu_and_q, i64 0, i64 %indvars.iv53
  %90 = bitcast float* %89 to i32*
  %91 = load i32* %90, align 4, !tbaa !2
  %92 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv53
  %93 = bitcast float* %92 to i32*
  store i32 %91, i32* %93, align 4, !tbaa !2
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond55 = icmp eq i64 %indvars.iv.next54, 3
  br i1 %exitcond55, label %94, label %.preheader40

; <label>:94                                      ; preds = %.preheader40
  %95 = load float* getelementptr inbounds ([4 x float]* @do_force.mu_and_q, i64 0, i64 3), align 4, !tbaa !2
  %96 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %97 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %98 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  br label %99

; <label>:99                                      ; preds = %.loopexit.i, %94
  %indvars.iv.i = phi i64 [ 0, %94 ], [ %indvars.iv.next.i, %.loopexit.i ]
  %100 = add nuw nsw i64 %indvars.iv.i, 4294967293
  %101 = trunc i64 %100 to i32
  %i.0.cmp.i = icmp ugt i32 %101, 1
  br i1 %i.0.cmp.i, label %.preheader1.i, label %102

; <label>:102                                     ; preds = %99
  %103 = load i32* %97, align 4, !tbaa !36
  %104 = icmp eq i32 %103, 0
  %brmerge.i = or i1 %76, %104
  br i1 %brmerge.i, label %.preheader1.i, label %.loopexit.i

.preheader1.i:                                    ; preds = %102, %99
  %105 = load i32* %98, align 4, !tbaa !37
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %107 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i
  %108 = bitcast float** %107 to i8**
  %109 = load i8** %108, align 8, !tbaa !32
  %110 = icmp sgt i32 %105, 1
  %.op.i = add i32 %105, -1
  %111 = zext i32 %.op.i to i64
  %.op7.i = shl nuw nsw i64 %111, 2
  %.op7.op.i = add nuw nsw i64 %.op7.i, 4
  %112 = select i1 %110, i64 %.op7.op.i, i64 4
  tail call void @llvm.memset.p0i8.i64(i8* %109, i8 0, i64 %112, i32 4, i1 false) #5
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader1.i, %102
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.i, label %reset_energies.exit, label %99

reset_energies.exit:                              ; preds = %.loopexit.i
  %113 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %epot5.i = bitcast float* %ener to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %epot5.i, i8 0, i64 152, i32 4, i1 false) #5
  %114 = getelementptr inbounds float* %ener, i64 42
  store float 0.000000e+00, float* %114, align 4, !tbaa !2
  %115 = getelementptr inbounds float* %ener, i64 43
  store float 0.000000e+00, float* %115, align 4, !tbaa !2
  br i1 %76, label %116, label %140

; <label>:116                                     ; preds = %reset_energies.exit
  %117 = load i32* %21, align 4, !tbaa !22
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %120, label %119

; <label>:119                                     ; preds = %116
  tail call void @mk_mshift(%struct.__sFILE* %log, %struct.t_graph* %graph, [3 x float]* %18, [3 x float]* %x) #10
  br label %120

; <label>:120                                     ; preds = %116, %119
  %121 = load i32* %97, align 4, !tbaa !36
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %clear_rvecs.exit29, label %123

; <label>:123                                     ; preds = %120
  %124 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %125 = load i32* %124, align 4, !tbaa !41
  %126 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %127 = load [3 x float]** %126, align 8, !tbaa !42
  %128 = icmp sgt i32 %125, 0
  br i1 %128, label %.lr.ph.i30, label %clear_rvecs.exit35

.lr.ph.i30:                                       ; preds = %123
  %129 = add i32 %125, -1
  br label %130

; <label>:130                                     ; preds = %130, %.lr.ph.i30
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i32, %130 ]
  %131 = getelementptr inbounds [3 x float]* %127, i64 %indvars.iv.i31, i64 0
  store float 0.000000e+00, float* %131, align 4, !tbaa !2
  %132 = getelementptr inbounds [3 x float]* %127, i64 %indvars.iv.i31, i64 1
  store float 0.000000e+00, float* %132, align 4, !tbaa !2
  %133 = getelementptr inbounds [3 x float]* %127, i64 %indvars.iv.i31, i64 2
  store float 0.000000e+00, float* %133, align 4, !tbaa !2
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1
  %lftr.wideiv51 = trunc i64 %indvars.iv.i31 to i32
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %129
  br i1 %exitcond52, label %clear_rvecs.exit35, label %130

clear_rvecs.exit35:                               ; preds = %130, %123
  %134 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %135 = load [3 x float]** %134, align 8, !tbaa !43
  br label %136

; <label>:136                                     ; preds = %136, %clear_rvecs.exit35
  %indvars.iv.i25 = phi i64 [ 0, %clear_rvecs.exit35 ], [ %indvars.iv.next.i26, %136 ]
  %137 = getelementptr inbounds [3 x float]* %135, i64 %indvars.iv.i25, i64 0
  store float 0.000000e+00, float* %137, align 4, !tbaa !2
  %138 = getelementptr inbounds [3 x float]* %135, i64 %indvars.iv.i25, i64 1
  store float 0.000000e+00, float* %138, align 4, !tbaa !2
  %139 = getelementptr inbounds [3 x float]* %135, i64 %indvars.iv.i25, i64 2
  store float 0.000000e+00, float* %139, align 4, !tbaa !2
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1
  %exitcond50 = icmp eq i64 %indvars.iv.next.i26, 27
  br i1 %exitcond50, label %clear_rvecs.exit29, label %136

clear_rvecs.exit29:                               ; preds = %136, %120
  store float 0.000000e+00, float* @do_force.dvdl_lr, align 4, !tbaa !2
  tail call void @ns(%struct.__sFILE* %log, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, [3 x float]* %18, %struct.t_groups* %grps, %struct.t_grpopts* %113, %struct.t_topology* %top, %struct.t_mdatoms* %mdatoms, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_nsborder* %nsb, i32 %step, float %lambda, float* @do_force.dvdl_lr) #10
  br label %140

; <label>:140                                     ; preds = %clear_rvecs.exit29, %reset_energies.exit
  %141 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %142 = load i32* %141, align 4, !tbaa !44
  %.off1 = add i32 %142, -3
  %switch2 = icmp ult i32 %.off1, 4
  br i1 %switch2, label %143, label %clear_rvecs.exit23

; <label>:143                                     ; preds = %140
  %144 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %145 = load [3 x float]** %144, align 8, !tbaa !45
  %146 = sext i32 %5 to i64
  %147 = icmp sgt i32 %7, 0
  br i1 %147, label %.lr.ph.i18, label %clear_rvecs.exit23

.lr.ph.i18:                                       ; preds = %143
  %148 = add i32 %7, -1
  br label %149

; <label>:149                                     ; preds = %149, %.lr.ph.i18
  %indvars.iv.i19 = phi i64 [ 0, %.lr.ph.i18 ], [ %indvars.iv.next.i20, %149 ]
  %.sum = add i64 %indvars.iv.i19, %146
  %150 = getelementptr inbounds [3 x float]* %145, i64 %.sum, i64 0
  store float 0.000000e+00, float* %150, align 4, !tbaa !2
  %151 = getelementptr inbounds [3 x float]* %145, i64 %.sum, i64 1
  store float 0.000000e+00, float* %151, align 4, !tbaa !2
  %152 = getelementptr inbounds [3 x float]* %145, i64 %.sum, i64 2
  store float 0.000000e+00, float* %152, align 4, !tbaa !2
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.i19 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %148
  br i1 %exitcond49, label %clear_rvecs.exit23, label %149

clear_rvecs.exit23:                               ; preds = %149, %143, %140
  %153 = load i32* %97, align 4, !tbaa !36
  %154 = icmp eq i32 %153, 0
  %155 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %156 = load i32* %155, align 4, !tbaa !41
  %157 = icmp sgt i32 %156, 0
  br i1 %154, label %198, label %.preheader39

.preheader39:                                     ; preds = %clear_rvecs.exit23
  br i1 %157, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader39
  %158 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %159 = load [3 x float]** %158, align 8, !tbaa !42
  %160 = sext i32 %156 to i64
  br label %165

.preheader:                                       ; preds = %165, %.preheader39
  %161 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %162 = load [3 x float]** %161, align 8, !tbaa !43
  %163 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %164 = load [3 x float]** %163, align 8, !tbaa !46
  br label %182

; <label>:165                                     ; preds = %.lr.ph, %165
  %indvars.iv46 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next47, %165 ]
  %166 = getelementptr inbounds [3 x float]* %159, i64 %indvars.iv46, i64 0
  %167 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv46, i64 0
  %168 = bitcast float* %166 to i32*
  %169 = load i32* %168, align 4, !tbaa !2
  %170 = bitcast float* %167 to i32*
  store i32 %169, i32* %170, align 4, !tbaa !2
  %171 = getelementptr inbounds [3 x float]* %159, i64 %indvars.iv46, i64 1
  %172 = bitcast float* %171 to i32*
  %173 = load i32* %172, align 4, !tbaa !2
  %174 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv46, i64 1
  %175 = bitcast float* %174 to i32*
  store i32 %173, i32* %175, align 4, !tbaa !2
  %176 = getelementptr inbounds [3 x float]* %159, i64 %indvars.iv46, i64 2
  %177 = bitcast float* %176 to i32*
  %178 = load i32* %177, align 4, !tbaa !2
  %179 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv46, i64 2
  %180 = bitcast float* %179 to i32*
  store i32 %178, i32* %180, align 4, !tbaa !2
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %181 = icmp slt i64 %indvars.iv.next47, %160
  br i1 %181, label %165, label %.preheader

; <label>:182                                     ; preds = %182, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %182 ]
  %183 = getelementptr inbounds [3 x float]* %162, i64 %indvars.iv, i64 0
  %184 = getelementptr inbounds [3 x float]* %164, i64 %indvars.iv, i64 0
  %185 = bitcast float* %183 to i32*
  %186 = load i32* %185, align 4, !tbaa !2
  %187 = bitcast float* %184 to i32*
  store i32 %186, i32* %187, align 4, !tbaa !2
  %188 = getelementptr inbounds [3 x float]* %162, i64 %indvars.iv, i64 1
  %189 = bitcast float* %188 to i32*
  %190 = load i32* %189, align 4, !tbaa !2
  %191 = getelementptr inbounds [3 x float]* %164, i64 %indvars.iv, i64 1
  %192 = bitcast float* %191 to i32*
  store i32 %190, i32* %192, align 4, !tbaa !2
  %193 = getelementptr inbounds [3 x float]* %162, i64 %indvars.iv, i64 2
  %194 = bitcast float* %193 to i32*
  %195 = load i32* %194, align 4, !tbaa !2
  %196 = getelementptr inbounds [3 x float]* %164, i64 %indvars.iv, i64 2
  %197 = bitcast float* %196 to i32*
  store i32 %195, i32* %197, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond45 = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond45, label %clear_rvecs.exit, label %182

; <label>:198                                     ; preds = %clear_rvecs.exit23
  br i1 %157, label %.lr.ph.i12, label %clear_rvecs.exit17

.lr.ph.i12:                                       ; preds = %198
  %199 = add i32 %156, -1
  br label %200

; <label>:200                                     ; preds = %200, %.lr.ph.i12
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i12 ], [ %indvars.iv.next.i14, %200 ]
  %201 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i13, i64 0
  store float 0.000000e+00, float* %201, align 4, !tbaa !2
  %202 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i13, i64 1
  store float 0.000000e+00, float* %202, align 4, !tbaa !2
  %203 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i13, i64 2
  store float 0.000000e+00, float* %203, align 4, !tbaa !2
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i13 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv, %199
  br i1 %exitcond44, label %clear_rvecs.exit17, label %200

clear_rvecs.exit17:                               ; preds = %200, %198
  %204 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %205 = load [3 x float]** %204, align 8, !tbaa !46
  br label %206

; <label>:206                                     ; preds = %206, %clear_rvecs.exit17
  %indvars.iv.i9 = phi i64 [ 0, %clear_rvecs.exit17 ], [ %indvars.iv.next.i10, %206 ]
  %207 = getelementptr inbounds [3 x float]* %205, i64 %indvars.iv.i9, i64 0
  store float 0.000000e+00, float* %207, align 4, !tbaa !2
  %208 = getelementptr inbounds [3 x float]* %205, i64 %indvars.iv.i9, i64 1
  store float 0.000000e+00, float* %208, align 4, !tbaa !2
  %209 = getelementptr inbounds [3 x float]* %205, i64 %indvars.iv.i9, i64 2
  store float 0.000000e+00, float* %209, align 4, !tbaa !2
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i10, 27
  br i1 %exitcond, label %clear_rvecs.exit, label %206

clear_rvecs.exit:                                 ; preds = %182, %206
  %.pre-phi = phi [3 x float]** [ %204, %206 ], [ %163, %182 ]
  %210 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %211 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 1, i32 0
  %212 = load i32* %211, align 4, !tbaa !47
  %213 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  tail call void @force(%struct.__sFILE* %log, i32 %step, %struct.t_forcerec* %fr, %struct.t_inputrec* %96, %struct.t_idef* %210, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_nrnb* %nrnb, %struct.t_groups* %grps, %struct.t_mdatoms* %mdatoms, i32 %212, %struct.t_grpopts* %113, [3 x float]* %x, [3 x float]* %f, float* %ener, %struct.t_fcdata* %fcd, i32 %bVerbose, [3 x float]* %18, float %lambda, %struct.t_graph* %graph, %struct.t_block* %213, i32 %bNBFonly, [3 x float]* %pme_vir, float* %mu_tot, float %95, i32 %bGatherOnly) #10
  %214 = load float* @do_force.dvdl_lr, align 4, !tbaa !2
  %215 = load float* %114, align 4, !tbaa !2
  %216 = fadd float %214, %215
  store float %216, float* %114, align 4, !tbaa !2
  %217 = bitcast [3 x float]* %vir_part to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %217, i8 0, i64 36, i32 4, i1 false) #5
  %218 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %219 = load [3 x float]** %218, align 8, !tbaa !26
  %220 = load [3 x float]** %.pre-phi, align 8, !tbaa !46
  tail call void @calc_vir(%struct.__sFILE* %log, i32 27, [3 x float]* %219, [3 x float]* %220, [3 x float]* %vir_part) #10
  %221 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 107
  %222 = load double* %221, align 8, !tbaa !6
  %223 = fadd double %222, 2.700000e+01
  store double %223, double* %221, align 8, !tbaa !6
  %224 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %225 = icmp eq %struct.__sFILE* %224, null
  br i1 %225, label %227, label %226

; <label>:226                                     ; preds = %clear_rvecs.exit
  tail call void @pr_rvecs(%struct.__sFILE* %224, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str6, i64 0, i64 0), [3 x float]* %vir_part, i32 3) #10
  br label %227

; <label>:227                                     ; preds = %clear_rvecs.exit, %226
  %228 = load float** %19, align 8, !tbaa !20
  %229 = add nsw i32 %7, %5
  %230 = icmp sgt i32 %7, 0
  %231 = sext i32 %5 to i64
  %232 = sext i32 %229 to i64
  br label %233

; <label>:233                                     ; preds = %.loopexit.i7, %227
  %indvars.iv3.i = phi i64 [ 0, %227 ], [ %indvars.iv.next4.i, %.loopexit.i7 ]
  %234 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv3.i, i32 0
  %235 = load i32* %234, align 4, !tbaa !49
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %.loopexit.i7, label %237

; <label>:237                                     ; preds = %233
  %238 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv3.i, i32 1
  %239 = load float** %238, align 8, !tbaa !51
  %240 = load float* %239, align 4, !tbaa !2
  %241 = fpext float %240 to double
  %242 = fmul double %241, 0x40581F0F4D6F1034
  %243 = fptrunc double %242 to float
  br i1 %230, label %.lr.ph.i5, label %.loopexit.i7

.lr.ph.i5:                                        ; preds = %237, %.lr.ph.i5
  %indvars.iv.i3 = phi i64 [ %indvars.iv.next.i4, %.lr.ph.i5 ], [ %231, %237 ]
  %244 = getelementptr inbounds float* %228, i64 %indvars.iv.i3
  %245 = load float* %244, align 4, !tbaa !2
  %246 = fmul float %243, %245
  %247 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i3, i64 %indvars.iv3.i
  %248 = load float* %247, align 4, !tbaa !2
  %249 = fadd float %248, %246
  store float %249, float* %247, align 4, !tbaa !2
  %indvars.iv.next.i4 = add nsw i64 %indvars.iv.i3, 1
  %250 = icmp slt i64 %indvars.iv.next.i4, %232
  br i1 %250, label %.lr.ph.i5, label %.loopexit.i7

.loopexit.i7:                                     ; preds = %.lr.ph.i5, %237, %233
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond.i6 = icmp eq i64 %indvars.iv.next4.i, 3
  br i1 %exitcond.i6, label %calc_f_el.exit, label %233

calc_f_el.exit:                                   ; preds = %.loopexit.i7
  %251 = load i32* %77, align 4, !tbaa !29
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %257, label %253

; <label>:253                                     ; preds = %calc_f_el.exit
  %254 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %255 = load i32* %254, align 4, !tbaa !31
  %256 = icmp sgt i32 %255, 1
  br i1 %256, label %257, label %262

; <label>:257                                     ; preds = %253, %calc_f_el.exit
  %258 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %259 = load i32* %258, align 4, !tbaa !34
  %260 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %261 = load i32* %260, align 4, !tbaa !35
  tail call void @move_f(%struct.__sFILE* %log, i32 %259, i32 %261, [3 x float]* %f, [3 x float]* %buf, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #10
  br label %262

; <label>:262                                     ; preds = %257, %253
  ret void
}

; Function Attrs: optsize
declare void @update_forcerec(%struct.__sFILE*, %struct.t_forcerec*, [3 x float]*) #3

; Function Attrs: optsize
declare void @calc_mu_and_q(%struct.t_nsborder*, [3 x float]*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #3

; Function Attrs: optsize
declare void @put_charge_groups_in_box(%struct.__sFILE*, i32, i32, [3 x float]*, float*, %struct.t_block*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @calc_cgcm(%struct.__sFILE*, i32, i32, %struct.t_block*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @move_cgcm(%struct.__sFILE*, %struct.t_commrec*, [3 x float]*, i32*) #3

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #3

; Function Attrs: optsize
declare void @move_x(%struct.__sFILE*, i32, i32, [3 x float]*, %struct.t_nsborder*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @mk_mshift(%struct.__sFILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @ns(%struct.__sFILE*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, %struct.t_grpopts*, %struct.t_topology*, %struct.t_mdatoms*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_nsborder*, i32, float, float*) #3

; Function Attrs: optsize
declare void @force(%struct.__sFILE*, i32, %struct.t_forcerec*, %struct.t_inputrec*, %struct.t_idef*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_nrnb*, %struct.t_groups*, %struct.t_mdatoms*, i32, %struct.t_grpopts*, [3 x float]*, [3 x float]*, float*, %struct.t_fcdata*, i32, [3 x float]*, float, %struct.t_graph*, %struct.t_block*, i32, [3 x float]*, float*, float, i32) #3

; Function Attrs: optsize
declare void @calc_vir(%struct.__sFILE*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @move_f(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_nsborder*, %struct.t_nrnb*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_lrforces([3 x float]* %f, %struct.t_forcerec* nocapture readonly %fr, i32 %start, i32 %homenr) #4 {
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %2 = load i32* %1, align 4, !tbaa !44
  %.off = add i32 %2, -3
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %3, label %sum_forces.exit

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %5 = load [3 x float]** %4, align 8, !tbaa !45
  %6 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %7 = icmp eq %struct.__sFILE* %6, null
  br i1 %7, label %.preheader.i, label %8

; <label>:8                                       ; preds = %3
  %9 = sext i32 %start to i64
  %10 = getelementptr inbounds [3 x float]* %f, i64 %9
  tail call void @pr_rvecs(%struct.__sFILE* %6, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), [3 x float]* %10, i32 %homenr) #10
  %11 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %12 = getelementptr inbounds [3 x float]* %5, i64 %9
  tail call void @pr_rvecs(%struct.__sFILE* %11, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), [3 x float]* %12, i32 %homenr) #10
  br label %.preheader.i

.preheader.i:                                     ; preds = %8, %3
  %13 = icmp sgt i32 %homenr, 0
  br i1 %13, label %.lr.ph.i, label %sum_forces.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %14 = sext i32 %start to i64
  %15 = add i32 %start, -1
  %16 = add i32 %15, %homenr
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %14, %.lr.ph.i ], [ %indvars.iv.next.i, %17 ]
  %18 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 0
  %19 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 0
  %20 = load float* %18, align 4, !tbaa !2
  %21 = load float* %19, align 4, !tbaa !2
  %22 = fadd float %20, %21
  %23 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 1
  %24 = load float* %23, align 4, !tbaa !2
  %25 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 1
  %26 = load float* %25, align 4, !tbaa !2
  %27 = fadd float %24, %26
  %28 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 2
  %29 = load float* %28, align 4, !tbaa !2
  %30 = getelementptr inbounds [3 x float]* %5, i64 %indvars.iv.i, i64 2
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fadd float %29, %31
  store float %22, float* %18, align 4, !tbaa !2
  store float %27, float* %23, align 4, !tbaa !2
  store float %32, float* %28, align 4, !tbaa !2
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.i to i32
  %exitcond.i = icmp eq i32 %lftr.wideiv.i, %16
  br i1 %exitcond.i, label %sum_forces.exit, label %17

sum_forces.exit:                                  ; preds = %17, %.preheader.i, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_virial(%struct.__sFILE* %log, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %f, [3 x float]* %vir_part, [3 x float]* %pme_vir, %struct.t_graph* %graph, [3 x float]* %box, %struct.t_nrnb* nocapture %nrnb, %struct.t_forcerec* nocapture readonly %fr, i32 %bTweak) #4 {
  %virtest = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %virtest to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = add nsw i32 %homenr, %start
  tail call void @f_calc_vir(%struct.__sFILE* %log, i32 %start, i32 %2, [3 x float]* %x, [3 x float]* %f, [3 x float]* %vir_part, %struct.t_graph* %graph, [3 x float]* %box) #10
  %3 = sitofp i32 %homenr to double
  %4 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 107
  %5 = load double* %4, align 8, !tbaa !6
  %6 = fadd double %3, %5
  store double %6, double* %4, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %8 = load i32* %7, align 4, !tbaa !44
  %.off = add i32 %8, -3
  %switch = icmp ugt i32 %.off, 3
  %9 = icmp eq i32 %8, 5
  %or.cond2 = or i1 %9, %switch
  br i1 %or.cond2, label %.loopexit, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %12 = icmp ne %struct.__sFILE* %11, null
  %13 = icmp ne i32 %bTweak, 0
  %or.cond = and i1 %13, %12
  br i1 %or.cond, label %14, label %20

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds [3 x [3 x float]]* %virtest, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %17 = load [3 x float]** %16, align 8, !tbaa !45
  call void @f_calc_vir(%struct.__sFILE* %log, i32 %start, i32 %2, [3 x float]* %x, [3 x float]* %17, [3 x float]* %15, %struct.t_graph* %graph, [3 x float]* %box) #10
  %18 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  call void @pr_rvecs(%struct.__sFILE* %18, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0), [3 x float]* %15, i32 3) #10
  %19 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  call void @pr_rvecs(%struct.__sFILE* %19, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), [3 x float]* %pme_vir, i32 3) #10
  br label %20

; <label>:20                                      ; preds = %14, %10
  br i1 %13, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %20, %27
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %27 ], [ 0, %20 ]
  br label %21

; <label>:21                                      ; preds = %21, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %21 ]
  %22 = getelementptr inbounds [3 x float]* %pme_vir, i64 %indvars.iv6, i64 %indvars.iv
  %23 = load float* %22, align 4, !tbaa !2
  %24 = getelementptr inbounds [3 x float]* %vir_part, i64 %indvars.iv6, i64 %indvars.iv
  %25 = load float* %24, align 4, !tbaa !2
  %26 = fadd float %23, %25
  store float %26, float* %24, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %27, label %21

; <label>:27                                      ; preds = %21
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 3
  br i1 %exitcond8, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %27, %0, %20
  %28 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %29 = icmp eq %struct.__sFILE* %28, null
  br i1 %29, label %31, label %30

; <label>:30                                      ; preds = %.loopexit
  call void @pr_rvecs(%struct.__sFILE* %28, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), [3 x float]* %vir_part, i32 3) #10
  br label %31

; <label>:31                                      ; preds = %.loopexit, %30
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare void @f_calc_vir(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_graph*, [3 x float]*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @start_time() #4 {
  %1 = tail call i64 @"\01_clock"() #10
  store i64 %1, i64* @cprev, align 8, !tbaa !13
  store double 0.000000e+00, double* @runtime, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare i64 @"\01_clock"() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @update_time() #4 {
  %1 = tail call i64 @"\01_clock"() #10
  %2 = load i64* @cprev, align 8, !tbaa !13
  %3 = sub i64 %1, %2
  %4 = uitofp i64 %3 to double
  %5 = fdiv double %4, 1.000000e+06
  %6 = load double* @runtime, align 8, !tbaa !6
  %7 = fadd double %5, %6
  store double %7, double* @runtime, align 8, !tbaa !6
  store i64 %1, i64* @cprev, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define double @node_time() #8 {
  %1 = load double* @runtime, align 8, !tbaa !6
  ret double %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_shakefirst(%struct.__sFILE* %log, i32 %bTYZ, float %lambda, float* %ener, %struct.t_parm* %parm, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_mdatoms* %md, [3 x float]* %x, [3 x float]* %vold, [3 x float]* %buf, [3 x float]* %f, [3 x float]* nocapture %v, %struct.t_graph* %graph, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, %struct.t_groups* %grps, %struct.t_forcerec* nocapture readnone %fr, %struct.t_topology* %top, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata) #4 {
  %shake_vir = alloca [3 x [3 x float]], align 16
  %vcm = alloca [4 x double], align 16
  %vcm25 = bitcast [4 x double]* %vcm to i8*
  %1 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %3 = load float* %2, align 4, !tbaa !52
  %4 = tail call i32 @count_constraints(%struct.t_topology* %top, %struct.t_commrec* %cr) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.loopexit, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %8 = load i32* %7, align 4, !tbaa !17
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %9
  %11 = load i32* %10, align 4, !tbaa !19
  %12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %9
  %13 = load i32* %12, align 4, !tbaa !19
  %14 = add nsw i32 %13, %11
  %15 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %16 = icmp eq %struct.__sFILE* %15, null
  br i1 %16, label %19, label %17

; <label>:17                                      ; preds = %6
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0), i32 %11, i32 %13, i32 %14) #10
  br label %19

; <label>:19                                      ; preds = %6, %17
  %20 = icmp ne %struct.__sFILE* %log, null
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %19
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), i32 -2) #10
  br label %23

; <label>:23                                      ; preds = %21, %19
  %24 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  %25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %26 = load i32* %25, align 4, !tbaa !41
  %27 = getelementptr inbounds float* %ener, i64 42
  call void @update(i32 %26, i32 %11, i32 %13, i32 -2, float %lambda, float* %27, %struct.t_parm* %parm, float 1.000000e+00, %struct.t_mdatoms* %md, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* null, [3 x float]* null, [3 x float]* %vold, [3 x float]* null, [3 x float]* %x, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %24, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 0, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 0) #10
  %28 = icmp sgt i32 %13, 0
  br i1 %28, label %.preheader2.lr.ph, label %._crit_edge11

.preheader2.lr.ph:                                ; preds = %23
  %29 = sext i32 %11 to i64
  %30 = sext i32 %14 to i64
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %43
  %indvars.iv30 = phi i64 [ %29, %.preheader2.lr.ph ], [ %indvars.iv.next31, %43 ]
  br label %31

; <label>:31                                      ; preds = %31, %.preheader2
  %indvars.iv26 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next27, %31 ]
  %32 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv30, i64 %indvars.iv26
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !2
  %35 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv30, i64 %indvars.iv26
  %36 = bitcast float* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !2
  %37 = load float* %32, align 4, !tbaa !2
  %38 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv30, i64 %indvars.iv26
  %39 = load float* %38, align 4, !tbaa !2
  %40 = fmul float %3, %39
  %41 = fsub float %37, %40
  %42 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv30, i64 %indvars.iv26
  store float %41, float* %42, align 4, !tbaa !2
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 3
  br i1 %exitcond28, label %43, label %31

; <label>:43                                      ; preds = %31
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1
  %44 = icmp slt i64 %indvars.iv.next31, %30
  br i1 %44, label %.preheader2, label %._crit_edge11

._crit_edge11:                                    ; preds = %43, %23
  br i1 %20, label %45, label %47

; <label>:45                                      ; preds = %._crit_edge11
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), i32 -1) #10
  br label %47

; <label>:47                                      ; preds = %45, %._crit_edge11
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  %48 = load i32* %25, align 4, !tbaa !41
  call void @update(i32 %48, i32 %11, i32 %13, i32 -1, float %lambda, float* %27, %struct.t_parm* %parm, float 1.000000e+00, %struct.t_mdatoms* %md, [3 x float]* %f, %struct.t_graph* %graph, [3 x float]* null, [3 x float]* null, [3 x float]* %vold, [3 x float]* null, [3 x float]* %buf, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %24, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 0, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 0) #10
  call void @llvm.memset.p0i8.i64(i8* %vcm25, i8 0, i64 32, i32 16, i1 false)
  %49 = fdiv float 1.000000e+00, %3
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %47
  %50 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %51 = load float** %50, align 8, !tbaa !53
  %52 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 3
  %53 = sext i32 %11 to i64
  %54 = sext i32 %14 to i64
  br label %55

; <label>:55                                      ; preds = %.lr.ph, %72
  %indvars.iv20 = phi i64 [ %53, %.lr.ph ], [ %indvars.iv.next21, %72 ]
  %56 = getelementptr inbounds float* %51, i64 %indvars.iv20
  %57 = load float* %56, align 4, !tbaa !2
  %58 = fpext float %57 to double
  br label %59

; <label>:59                                      ; preds = %59, %55
  %indvars.iv17 = phi i64 [ 0, %55 ], [ %indvars.iv.next18, %59 ]
  %60 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv20, i64 %indvars.iv17
  %61 = load float* %60, align 4, !tbaa !2
  %62 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv20, i64 %indvars.iv17
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fsub float %61, %63
  %65 = fmul float %49, %64
  %66 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv20, i64 %indvars.iv17
  store float %65, float* %66, align 4, !tbaa !2
  %67 = fpext float %65 to double
  %68 = fmul double %58, %67
  %69 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv17
  %70 = load double* %69, align 8, !tbaa !6
  %71 = fadd double %70, %68
  store double %71, double* %69, align 8, !tbaa !6
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 3
  br i1 %exitcond19, label %72, label %59

; <label>:72                                      ; preds = %59
  %73 = load double* %52, align 8, !tbaa !6
  %74 = fadd double %58, %73
  store double %74, double* %52, align 8, !tbaa !6
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  %75 = icmp slt i64 %indvars.iv.next21, %54
  br i1 %75, label %55, label %._crit_edge

._crit_edge:                                      ; preds = %72, %47
  %76 = phi double [ 0.000000e+00, %47 ], [ %74, %72 ]
  %77 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %78 = icmp eq %struct.__sFILE* %77, null
  br i1 %78, label %87, label %79

; <label>:79                                      ; preds = %._crit_edge
  %80 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  %81 = load double* %80, align 16, !tbaa !6
  %82 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 1
  %83 = load double* %82, align 8, !tbaa !6
  %84 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 2
  %85 = load double* %84, align 16, !tbaa !6
  %86 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %77, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), double %81, double %83, double %85, double %76) #10
  br label %87

; <label>:87                                      ; preds = %._crit_edge, %79
  %88 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %89 = load i32* %88, align 4, !tbaa !29
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %95, label %91

; <label>:91                                      ; preds = %87
  %92 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %93 = load i32* %92, align 4, !tbaa !31
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %97

; <label>:95                                      ; preds = %91, %87
  %96 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  call void @gmx_sumd(i32 4, double* %96, %struct.t_commrec* %cr) #10
  br label %97

; <label>:97                                      ; preds = %95, %91
  %98 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 3
  %99 = load double* %98, align 8, !tbaa !6
  br label %100

; <label>:100                                     ; preds = %100, %97
  %indvars.iv14 = phi i64 [ 0, %97 ], [ %indvars.iv.next15, %100 ]
  %101 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv14
  %102 = load double* %101, align 8, !tbaa !6
  %103 = fdiv double %102, %99
  store double %103, double* %101, align 8, !tbaa !6
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond16, label %104, label %100

; <label>:104                                     ; preds = %100
  %105 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %106 = icmp eq %struct.__sFILE* %105, null
  br i1 %106, label %.preheader1, label %107

; <label>:107                                     ; preds = %104
  %108 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 0
  %109 = load double* %108, align 16, !tbaa !6
  %110 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 1
  %111 = load double* %110, align 8, !tbaa !6
  %112 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 2
  %113 = load double* %112, align 16, !tbaa !6
  %114 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %105, i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), double %109, double %111, double %113, double %99) #10
  br label %.preheader1

.preheader1:                                      ; preds = %104, %107
  br i1 %28, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader1
  %115 = sext i32 %11 to i64
  %116 = sext i32 %14 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %125
  %indvars.iv12 = phi i64 [ %115, %.preheader.lr.ph ], [ %indvars.iv.next13, %125 ]
  br label %117

; <label>:117                                     ; preds = %117, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %117 ]
  %118 = getelementptr inbounds [4 x double]* %vcm, i64 0, i64 %indvars.iv
  %119 = load double* %118, align 8, !tbaa !6
  %120 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv12, i64 %indvars.iv
  %121 = load float* %120, align 4, !tbaa !2
  %122 = fpext float %121 to double
  %123 = fsub double %122, %119
  %124 = fptrunc double %123 to float
  store float %124, float* %120, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %125, label %117

; <label>:125                                     ; preds = %117
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %126 = icmp slt i64 %indvars.iv.next13, %116
  br i1 %126, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %125, %.preheader1, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @count_constraints(%struct.t_topology*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @update(i32, i32, i32, i32, float, float*, %struct.t_parm*, float, %struct.t_mdatoms*, [3 x float]*, %struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, %struct.t_commrec*, %struct.t_nrnb*, i32, i32, %struct.t_edsamyn*, %struct.t_pull*, i32) #3

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_dispcorr(%struct.__sFILE* %log, i32 %eDispCorr, %struct.t_forcerec* nocapture readonly %fr, i32 %natoms, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %pres, [3 x float]* nocapture %virial, float* nocapture %ener) #4 {
  %1 = getelementptr inbounds float* %ener, i64 16
  store float 0.000000e+00, float* %1, align 4, !tbaa !2
  %2 = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  %3 = load float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %5 = load float* %4, align 4, !tbaa !2
  %6 = fadd float %3, %5
  %7 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %8 = load float* %7, align 4, !tbaa !2
  %9 = fadd float %6, %8
  %10 = fdiv float %9, 3.000000e+00
  %11 = getelementptr inbounds float* %ener, i64 41
  store float %10, float* %11, align 4, !tbaa !2
  %12 = icmp eq i32 %eDispCorr, 0
  br i1 %12, label %94, label %13

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %15 = load float* %14, align 4, !tbaa !2
  %16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %17 = load float* %16, align 4, !tbaa !2
  %18 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %19 = load float* %18, align 4, !tbaa !2
  %20 = fmul float %17, %19
  %21 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %22 = load float* %21, align 4, !tbaa !2
  %23 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %24 = load float* %23, align 4, !tbaa !2
  %25 = fmul float %22, %24
  %26 = fsub float %20, %25
  %27 = fmul float %15, %26
  %28 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %29 = load float* %28, align 4, !tbaa !2
  %30 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %31 = load float* %30, align 4, !tbaa !2
  %32 = fmul float %19, %31
  %33 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %34 = load float* %33, align 4, !tbaa !2
  %35 = fmul float %22, %34
  %36 = fsub float %32, %35
  %37 = fmul float %29, %36
  %38 = fsub float %27, %37
  %39 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %40 = load float* %39, align 4, !tbaa !2
  %41 = fmul float %24, %31
  %42 = fmul float %17, %34
  %43 = fsub float %41, %42
  %44 = fmul float %40, %43
  %45 = fadd float %44, %38
  %46 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %47 = load float* %46, align 4, !tbaa !54
  %48 = fmul float %47, %47
  %49 = fmul float %47, %48
  %50 = sitofp i32 %natoms to double
  %51 = fmul double %50, -2.000000e+00
  %52 = fmul double %50, %51
  %53 = fmul double %52, 0x400921FB54442D18
  %54 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 11
  %55 = load float* %54, align 4, !tbaa !55
  %56 = fpext float %55 to double
  %57 = fmul double %53, %56
  %58 = fpext float %45 to double
  %59 = fmul double %58, 3.000000e+00
  %60 = fpext float %49 to double
  %61 = fmul double %60, %59
  %62 = fdiv double %57, %61
  %63 = fptrunc double %62 to float
  store float %63, float* %1, align 4, !tbaa !2
  %64 = icmp eq i32 %eDispCorr, 1
  br i1 %64, label %65, label %80

; <label>:65                                      ; preds = %13
  %66 = fpext float %63 to double
  %67 = fmul double %66, 2.000000e+00
  %68 = fmul double %67, 1.660540e+01
  %69 = fdiv double %68, %58
  %70 = fptrunc double %69 to float
  %71 = fmul float %63, -6.000000e+00
  %72 = fadd float %10, %70
  store float %72, float* %11, align 4, !tbaa !2
  br label %73

; <label>:73                                      ; preds = %73, %65
  %indvars.iv = phi i64 [ 0, %65 ], [ %indvars.iv.next, %73 ]
  %74 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv, i64 %indvars.iv
  %75 = load float* %74, align 4, !tbaa !2
  %76 = fadd float %70, %75
  store float %76, float* %74, align 4, !tbaa !2
  %77 = getelementptr inbounds [3 x float]* %virial, i64 %indvars.iv, i64 %indvars.iv
  %78 = load float* %77, align 4, !tbaa !2
  %79 = fadd float %71, %78
  store float %79, float* %77, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %73

.loopexit:                                        ; preds = %73
  %phitmp = fpext float %70 to double
  %phitmp2 = fpext float %71 to double
  br label %80

; <label>:80                                      ; preds = %.loopexit, %13
  %spres.0 = phi double [ 0.000000e+00, %13 ], [ %phitmp, %.loopexit ]
  %svir.0 = phi double [ 0.000000e+00, %13 ], [ %phitmp2, %.loopexit ]
  %.b = load i1* @calc_dispcorr.bFirst, align 1
  br i1 %.b, label %94, label %81

; <label>:81                                      ; preds = %80
  store i1 true, i1* @calc_dispcorr.bFirst, align 1
  %82 = icmp eq %struct.__sFILE* %log, null
  br i1 %82, label %94, label %83

; <label>:83                                      ; preds = %81
  %84 = icmp eq i32 %eDispCorr, 2
  br i1 %84, label %85, label %89

; <label>:85                                      ; preds = %83
  %86 = load float* %1, align 4, !tbaa !2
  %87 = fpext float %86 to double
  %88 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str14, i64 0, i64 0), double %87) #10
  br label %94

; <label>:89                                      ; preds = %83
  br i1 %64, label %90, label %94

; <label>:90                                      ; preds = %89
  %91 = load float* %1, align 4, !tbaa !2
  %92 = fpext float %91 to double
  %93 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), double %92, double %spres.0, double %svir.0) #10
  br label %94

; <label>:94                                      ; preds = %81, %80, %0, %85, %90, %89
  %95 = load float* %1, align 4, !tbaa !2
  %96 = getelementptr inbounds float* %ener, i64 37
  %97 = load float* %96, align 4, !tbaa !2
  %98 = fadd float %95, %97
  store float %98, float* %96, align 4, !tbaa !2
  %99 = getelementptr inbounds float* %ener, i64 39
  %100 = load float* %99, align 4, !tbaa !2
  %101 = fadd float %95, %100
  store float %101, float* %99, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_pbc_first(%struct.__sFILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* %graph, [3 x float]* %x) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %.critedge, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %log)
  %4 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %6 = load [3 x float]** %5, align 8, !tbaa !26
  tail call void @calc_shifts([3 x float]* %4, float* %box_size, [3 x float]* %6) #10
  tail call void @mk_mshift(%struct.__sFILE* %log, %struct.t_graph* %graph, [3 x float]* %4, [3 x float]* %x) #10
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %4, [3 x float]* %x) #10
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %log)
  br label %11

.critedge:                                        ; preds = %0
  %8 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %9 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %10 = load [3 x float]** %9, align 8, !tbaa !26
  tail call void @calc_shifts([3 x float]* %8, float* %box_size, [3 x float]* %10) #10
  tail call void @mk_mshift(%struct.__sFILE* null, %struct.t_graph* %graph, [3 x float]* %8, [3 x float]* %x) #10
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %8, [3 x float]* %x) #10
  br label %11

; <label>:11                                      ; preds = %.critedge, %2
  ret void
}

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @set_pot_bools(%struct.t_inputrec* nocapture readonly %ir, %struct.t_topology* nocapture readonly %top, i32* nocapture %bLR, i32* nocapture %bLJLR, i32* nocapture %bBHAM, i32* nocapture %b14) #4 {
  %1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %2 = load float* %1, align 4, !tbaa !56
  %3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %4 = load float* %3, align 4, !tbaa !57
  %5 = fcmp ogt float %2, %4
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %8 = load i32* %7, align 4, !tbaa !58
  %switch.tableidx = add i32 %8, -3
  %9 = icmp ult i32 %switch.tableidx, 4
  br label %10

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %bLR, align 4, !tbaa !19
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %14 = load float* %13, align 4, !tbaa !59
  %15 = fcmp ogt float %14, %4
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %bLJLR, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %18 = load i32** %17, align 8, !tbaa !60
  %19 = load i32* %18, align 4, !tbaa !19
  %20 = icmp eq i32 %19, 14
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %bBHAM, align 4, !tbaa !19
  %22 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 11, i32 0
  %23 = load i32* %22, align 4, !tbaa !65
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %b14, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @finish_run(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, i8* nocapture readnone %confout, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_topology* nocapture readnone %top, %struct.t_parm* nocapture readonly %parm, %struct.t_nrnb* %nrnb, double %nodetime, double %realtime, i32 %step, i32 %bWriteStat) #4 {
.preheader1:
  %ntot = alloca %struct.t_nrnb, align 8
  %0 = bitcast %struct.t_nrnb* %ntot to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %0) #5
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1032, i32 8, i1 false)
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !67
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader1
  %4 = sext i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %11
  %indvars.iv5 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next6, %11 ]
  br label %5

; <label>:5                                       ; preds = %5, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %5 ]
  %6 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv5, i32 0, i64 %indvars.iv
  %7 = load double* %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.t_nrnb* %ntot, i64 0, i32 0, i64 %indvars.iv
  %9 = load double* %8, align 8, !tbaa !6
  %10 = fadd double %7, %9
  store double %10, double* %8, align 8, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 129
  br i1 %exitcond, label %11, label %5

; <label>:11                                      ; preds = %5
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %12 = icmp slt i64 %indvars.iv.next6, %4
  br i1 %12, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %11, %.preheader1
  %13 = icmp eq i32 %bWriteStat, 0
  br i1 %13, label %._crit_edge10, label %14

._crit_edge10:                                    ; preds = %._crit_edge
  %.pre = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %38

; <label>:14                                      ; preds = %._crit_edge
  %15 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %16 = load i32* %15, align 4, !tbaa !68
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %19 = load float* %18, align 4, !tbaa !52
  %20 = fmul float %17, %19
  %21 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %22 = load i32* %21, align 4, !tbaa !69
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

; <label>:24                                      ; preds = %14
  %25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %26 = load i32* %25, align 4, !tbaa !70
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %24
  %29 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !32
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %29)
  %31 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !32
  %32 = load i32* %1, align 4, !tbaa !67
  call void @print_perf(%struct.__sFILE* %31, double %nodetime, double %realtime, float %20, %struct.t_nrnb* %ntot, i32 %32) #10
  br label %38

; <label>:33                                      ; preds = %24, %14
  %34 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %35 = load i32* %34, align 4, !tbaa !17
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %36
  tail call void @print_nrnb(%struct.__sFILE* %log, %struct.t_nrnb* %37) #10
  br label %38

; <label>:38                                      ; preds = %._crit_edge10, %28, %33
  %.pre-phi = phi i32* [ %.pre, %._crit_edge10 ], [ %21, %28 ], [ %21, %33 ]
  %runtime.0 = phi float [ 0.000000e+00, %._crit_edge10 ], [ %20, %28 ], [ %20, %33 ]
  %39 = load i32* %.pre-phi, align 4, !tbaa !69
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

; <label>:41                                      ; preds = %38
  %42 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %43 = load i32* %42, align 4, !tbaa !70
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %41
  %46 = load i32* %1, align 4, !tbaa !67
  call void @print_perf(%struct.__sFILE* %log, double %nodetime, double %realtime, float %runtime.0, %struct.t_nrnb* %ntot, i32 %46) #10
  %47 = load i32* %1, align 4, !tbaa !67
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %45
  call void @pr_load(%struct.__sFILE* %log, i32 %47, %struct.t_nrnb* %nrnb) #10
  br label %50

; <label>:50                                      ; preds = %45, %49, %41, %38
  call void @llvm.lifetime.end(i64 1032, i8* %0) #5
  ret void
}

; Function Attrs: optsize
declare void @print_perf(%struct.__sFILE*, double, double, float, %struct.t_nrnb*, i32) #3

; Function Attrs: optsize
declare void @print_nrnb(%struct.__sFILE*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @pr_load(%struct.__sFILE*, i32, %struct.t_nrnb*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @init_md(%struct.t_commrec* %cr, %struct.t_inputrec* %ir, [3 x float]* nocapture readonly %box, float* nocapture %t, float* nocapture %t0, float* nocapture %lambda, float* nocapture %lam0, float* nocapture %SAfactor, %struct.t_nrnb* %mynrnb, i32* nocapture %bTYZ, %struct.t_topology* %top, i32 %nfile, %struct.t_filenm* %fnm, i8** nocapture %traj, i8** nocapture %xtc_traj, i32* nocapture %fp_ene, %struct.__sFILE** nocapture readnone %fp_dgdl, %struct.t_mdebin** nocapture %mdebin, %struct.t_groups* %grps, [3 x float]* nocapture %force_vir, [3 x float]* nocapture %pme_vir, [3 x float]* nocapture %shake_vir, %struct.t_mdatoms* %mdatoms, float* nocapture %mu_tot, i32* nocapture %bNEMD, %struct.t_vcm** nocapture %vcm, %struct.t_nsborder* nocapture readonly %nsb) #4 {
  %1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %2 = bitcast float* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !71
  %4 = bitcast float* %t0 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !2
  %5 = bitcast float* %t to i32*
  store i32 %3, i32* %5, align 4, !tbaa !2
  %6 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %7 = load i32* %6, align 4, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 47
  %11 = load float* %10, align 4, !tbaa !73
  br label %12

; <label>:12                                      ; preds = %0, %9
  %storemerge6 = phi float [ %11, %9 ], [ 0.000000e+00, %0 ]
  store float %storemerge6, float* %lam0, align 4, !tbaa !2
  store float %storemerge6, float* %lambda, align 4, !tbaa !2
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 33
  %14 = load i32* %13, align 4, !tbaa !74
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

; <label>:16                                      ; preds = %12
  %17 = load float* %t0, align 4, !tbaa !2
  %18 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 34
  %19 = load float* %18, align 4, !tbaa !75
  %20 = fdiv float %17, %19
  %21 = fsub float 1.000000e+00, %20
  store float %21, float* %SAfactor, align 4, !tbaa !2
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %16
  store float 0.000000e+00, float* %SAfactor, align 4, !tbaa !2
  br label %25

; <label>:24                                      ; preds = %12
  store float 1.000000e+00, float* %SAfactor, align 4, !tbaa !2
  br label %25

; <label>:25                                      ; preds = %16, %23, %24
  tail call void @init_nrnb(%struct.t_nrnb* %mynrnb) #10
  store i32 0, i32* %bTYZ, align 4, !tbaa !19
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %27 = load float* %26, align 4, !tbaa !56
  %28 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 35
  %29 = load float* %28, align 4, !tbaa !57
  %30 = fcmp ogt float %27, %29
  br i1 %30, label %set_pot_bools.exit, label %31

; <label>:31                                      ; preds = %25
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 36
  %33 = load i32* %32, align 4, !tbaa !58
  %switch.tableidx.i = add i32 %33, -3
  %34 = icmp ult i32 %switch.tableidx.i, 4
  br label %set_pot_bools.exit

set_pot_bools.exit:                               ; preds = %25, %31
  %35 = phi i1 [ true, %25 ], [ %34, %31 ]
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 41
  %38 = load float* %37, align 4, !tbaa !59
  %39 = fcmp ogt float %38, %29
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %42 = load i32** %41, align 8, !tbaa !60
  %43 = load i32* %42, align 4, !tbaa !19
  %44 = icmp eq i32 %43, 14
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 11, i32 0
  %47 = load i32* %46, align 4, !tbaa !65
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %nfile, -1
  br i1 %50, label %100, label %51

; <label>:51                                      ; preds = %set_pot_bools.exit
  %52 = tail call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #10
  store i8* %52, i8** %traj, align 8, !tbaa !32
  %53 = tail call i8* @ftp2fn(i32 6, i32 %nfile, %struct.t_filenm* %fnm) #10
  store i8* %53, i8** %xtc_traj, align 8, !tbaa !32
  store i32 -1, i32* %fp_ene, align 4, !tbaa !19
  %54 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %55 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %56 = load i32* %6, align 4, !tbaa !72
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %60 = load i32* %59, align 4, !tbaa !76
  %61 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %62 = load i32* %61, align 4, !tbaa !77
  %63 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 1, i64 0
  %64 = load float* %63, align 4, !tbaa !2
  %fabsf = tail call float @fabsf(float %64) #11
  %65 = fpext float %fabsf to double
  %66 = fcmp ogt double %65, 1.200000e-38
  br i1 %66, label %92, label %67

; <label>:67                                      ; preds = %51
  %68 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 0
  %69 = load float* %68, align 4, !tbaa !2
  %fabsf1 = tail call float @fabsf(float %69) #11
  %70 = fpext float %fabsf1 to double
  %71 = fcmp ogt double %70, 1.200000e-38
  br i1 %71, label %92, label %72

; <label>:72                                      ; preds = %67
  %73 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 1
  %74 = load float* %73, align 4, !tbaa !2
  %fabsf2 = tail call float @fabsf(float %74) #11
  %75 = fpext float %fabsf2 to double
  %76 = fcmp ogt double %75, 1.200000e-38
  br i1 %76, label %92, label %77

; <label>:77                                      ; preds = %72
  %78 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %79 = load float* %78, align 4, !tbaa !2
  %fabsf3 = tail call float @fabsf(float %79) #11
  %80 = fpext float %fabsf3 to double
  %81 = fcmp ogt double %80, 1.200000e-38
  br i1 %81, label %92, label %82

; <label>:82                                      ; preds = %77
  %83 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %84 = load float* %83, align 4, !tbaa !2
  %fabsf4 = tail call float @fabsf(float %84) #11
  %85 = fpext float %fabsf4 to double
  %86 = fcmp ogt double %85, 1.200000e-38
  br i1 %86, label %92, label %87

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %89 = load float* %88, align 4, !tbaa !2
  %fabsf5 = tail call float @fabsf(float %89) #11
  %90 = fpext float %fabsf5 to double
  %91 = fcmp ogt double %90, 1.200000e-38
  br label %92

; <label>:92                                      ; preds = %77, %82, %87, %72, %67, %51
  %93 = phi i1 [ true, %72 ], [ true, %67 ], [ true, %51 ], [ true, %82 ], [ true, %77 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %96 = load i32* %95, align 4, !tbaa !78
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i32
  %99 = tail call %struct.t_mdebin* @init_mdebin(i32 -1, %struct.t_groups* %grps, %struct.t_atoms* %54, %struct.t_idef* %55, i32 %36, i32 %40, i32 %45, i32 %49, i32 %58, i32 %60, i32 %62, i32 %94, i32 %98, %struct.t_commrec* %cr) #10
  store %struct.t_mdebin* %99, %struct.t_mdebin** %mdebin, align 8, !tbaa !32
  br label %100

; <label>:100                                     ; preds = %set_pot_bools.exit, %92
  %101 = bitcast [3 x float]* %force_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %101, i8 0, i64 36, i32 4, i1 false) #5
  %102 = bitcast [3 x float]* %pme_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %102, i8 0, i64 36, i32 4, i1 false) #5
  %103 = bitcast [3 x float]* %shake_vir to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %103, i8 0, i64 36, i32 4, i1 false) #5
  store float 0.000000e+00, float* %mu_tot, align 4, !tbaa !2
  %104 = getelementptr inbounds float* %mu_tot, i64 1
  store float 0.000000e+00, float* %104, align 4, !tbaa !2
  %105 = getelementptr inbounds float* %mu_tot, i64 2
  store float 0.000000e+00, float* %105, align 4, !tbaa !2
  %106 = load float* %lambda, align 4, !tbaa !2
  tail call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %106, i32 1) #10
  %107 = load %struct.__sFILE** @stdlog, align 8, !tbaa !32
  %108 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %109 = load i32* %108, align 4, !tbaa !17
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %110
  %112 = load i32* %111, align 4, !tbaa !19
  %113 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %110
  %114 = load i32* %113, align 4, !tbaa !19
  %115 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 7
  %116 = load i32* %115, align 4, !tbaa !79
  %117 = tail call %struct.t_vcm* @init_vcm(%struct.__sFILE* %107, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_mdatoms* %mdatoms, i32 %112, i32 %114, i32 %116) #10
  store %struct.t_vcm* %117, %struct.t_vcm** %vcm, align 8, !tbaa !32
  %118 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 1
  %119 = load i32* %118, align 4, !tbaa !80
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %136, label %121

; <label>:121                                     ; preds = %100
  %122 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %123 = load [3 x float]** %122, align 8, !tbaa !81
  %124 = getelementptr inbounds [3 x float]* %123, i64 0, i64 0
  %125 = load float* %124, align 4, !tbaa !2
  %126 = fmul float %125, %125
  %127 = getelementptr inbounds [3 x float]* %123, i64 0, i64 1
  %128 = load float* %127, align 4, !tbaa !2
  %129 = fmul float %128, %128
  %130 = fadd float %126, %129
  %131 = getelementptr inbounds [3 x float]* %123, i64 0, i64 2
  %132 = load float* %131, align 4, !tbaa !2
  %133 = fmul float %132, %132
  %134 = fadd float %130, %133
  %sqrtf.i = tail call float @sqrtf(float %134) #11
  %135 = fcmp ogt float %sqrtf.i, 0.000000e+00
  br label %136

; <label>:136                                     ; preds = %121, %100
  %137 = phi i1 [ true, %100 ], [ %135, %121 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %bNEMD, align 4, !tbaa !19
  %139 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %140 = load i32* %139, align 4, !tbaa !82
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %149

; <label>:142                                     ; preds = %136
  %143 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %144 = load i32* %143, align 4, !tbaa !83
  %145 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  %146 = load float** %145, align 8, !tbaa !84
  %147 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %148 = load float* %147, align 4, !tbaa !85
  tail call void @init_sd_consts(i32 %144, float* %146, float %148) #10
  br label %149

; <label>:149                                     ; preds = %142, %136
  ret void
}

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #3

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #3

; Function Attrs: optsize
declare %struct.t_mdebin* @init_mdebin(i32, %struct.t_groups*, %struct.t_atoms*, %struct.t_idef*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #3

; Function Attrs: optsize
declare %struct.t_vcm* @init_vcm(%struct.__sFILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @init_sd_consts(i32, float*, float) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!8 = !{!9, !10, i64 12}
!9 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !3, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !3, i64 120, !4, i64 124, !4, i64 160, !10, i64 196, !3, i64 200, !3, i64 204, !10, i64 208, !3, i64 212, !3, i64 216, !10, i64 220, !3, i64 224, !3, i64 228, !3, i64 232, !10, i64 236, !3, i64 240, !3, i64 244, !10, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !3, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !3, i64 284, !3, i64 288, !3, i64 292, !10, i64 296, !3, i64 300, !3, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !3, i64 328, !10, i64 332, !3, i64 336, !3, i64 340, !10, i64 344, !3, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !3, i64 368, !3, i64 372, !3, i64 376, !3, i64 380, !11, i64 384, !4, i64 448, !4, i64 520}
!10 = !{!"int", !4, i64 0}
!11 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!4, !4, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
!19 = !{!10, !10, i64 0}
!20 = !{!21, !12, i64 56}
!21 = !{!"", !3, i64 0, !10, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168}
!22 = !{!23, !10, i64 0}
!23 = !{!"", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !10, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !10, i64 52, !10, i64 56, !3, i64 60, !10, i64 64, !3, i64 68, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !3, i64 104, !3, i64 108, !12, i64 112, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !10, i64 136, !3, i64 140, !3, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !4, i64 180, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !4, i64 240, !4, i64 1488, !10, i64 2736, !10, i64 2740, !12, i64 2744, !12, i64 2752, !12, i64 2760, !10, i64 2768, !3, i64 2772, !12, i64 2776, !10, i64 2784, !12, i64 2792, !12, i64 2800, !10, i64 2808, !10, i64 2812, !10, i64 2816, !12, i64 2824, !12, i64 2832, !3, i64 2840}
!24 = !{!25, !10, i64 112}
!25 = !{!"", !9, i64 0, !4, i64 592, !4, i64 628, !4, i64 664, !4, i64 700, !4, i64 736}
!26 = !{!23, !12, i64 232}
!27 = !{!23, !12, i64 224}
!28 = !{!25, !10, i64 0}
!29 = !{!30, !10, i64 4}
!30 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!31 = !{!30, !10, i64 20}
!32 = !{!12, !12, i64 0}
!33 = !{!18, !10, i64 8}
!34 = !{!30, !10, i64 8}
!35 = !{!30, !10, i64 12}
!36 = !{!23, !10, i64 2736}
!37 = !{!38, !10, i64 0}
!38 = !{!"", !39, i64 0, !12, i64 64, !12, i64 72, !40, i64 80}
!39 = !{!"", !10, i64 0, !4, i64 8}
!40 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8}
!41 = !{!18, !10, i64 12}
!42 = !{!23, !12, i64 2744}
!43 = !{!23, !12, i64 2752}
!44 = !{!23, !10, i64 152}
!45 = !{!23, !12, i64 2760}
!46 = !{!23, !12, i64 2776}
!47 = !{!48, !10, i64 0}
!48 = !{!"", !10, i64 0, !12, i64 8}
!49 = !{!50, !10, i64 0}
!50 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16}
!51 = !{!50, !12, i64 8}
!52 = !{!25, !3, i64 60}
!53 = !{!21, !12, i64 8}
!54 = !{!23, !3, i64 124}
!55 = !{!23, !3, i64 44}
!56 = !{!9, !3, i64 216}
!57 = !{!9, !3, i64 204}
!58 = !{!9, !10, i64 208}
!59 = !{!9, !3, i64 228}
!60 = !{!61, !12, i64 24}
!61 = !{!"", !12, i64 0, !62, i64 8, !63, i64 45800, !4, i64 47080, !48, i64 50248}
!62 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !12, i64 16, !12, i64 24, !4, i64 32}
!63 = !{!"", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !10, i64 40, !12, i64 48, !10, i64 56, !12, i64 64, !64, i64 72, !4, i64 1128, !12, i64 1272}
!64 = !{!"", !4, i64 0, !10, i64 1024, !12, i64 1032, !10, i64 1040, !12, i64 1048}
!65 = !{!66, !10, i64 0}
!66 = !{!"", !10, i64 0, !4, i64 4, !12, i64 1032}
!67 = !{!18, !10, i64 4}
!68 = !{!25, !10, i64 4}
!69 = !{!30, !10, i64 0}
!70 = !{!30, !10, i64 16}
!71 = !{!9, !3, i64 56}
!72 = !{!9, !10, i64 248}
!73 = !{!9, !3, i64 252}
!74 = !{!9, !10, i64 196}
!75 = !{!9, !3, i64 200}
!76 = !{!9, !10, i64 112}
!77 = !{!9, !10, i64 236}
!78 = !{!9, !10, i64 108}
!79 = !{!9, !10, i64 28}
!80 = !{!9, !10, i64 388}
!81 = !{!9, !12, i64 424}
!82 = !{!9, !10, i64 0}
!83 = !{!9, !10, i64 384}
!84 = !{!9, !12, i64 416}
!85 = !{!9, !3, i64 60}
