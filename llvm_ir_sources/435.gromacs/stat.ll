; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/stat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_bin = type { i32, i32, double* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nrnb = type { [129 x double] }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@global_stat.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@global_stat.itc = internal unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"itc\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/stat.c\00", align 1
@write_traj.fp = internal unnamed_addr global i32 -1, align 4
@.str2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"vv\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@write_xtc_traj.bFirst = internal unnamed_addr global i1 false
@write_xtc_traj.x_sel = internal unnamed_addr global [3 x float]* null, align 8
@write_xtc_traj.natoms = internal unnamed_addr global i32 0, align 4
@xd = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [49 x i8] c"There are %d atoms in your xtc output selection\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"x_sel\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"XTC error\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"%s[%5d] before: (%8.3f,%8.3f,%8.3f) After: (%8.3f,%8.3f,%8.3f)\0A\00", align 1

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
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %fvir, [3 x float]* %svir, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* nocapture readonly %vcm, float* %terminate) #4 {
  %in = alloca [256 x i32], align 16
  %inn = alloca [7 x i32], align 16
  %1 = bitcast [256 x i32]* %in to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1) #5
  %2 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %3 = icmp eq %struct.t_bin* %2, null
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.t_bin* @mk_bin() #9
  store %struct.t_bin* %5, %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !10
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %7, i32 4) #9
  store i8* %8, i8** bitcast (i32** @global_stat.itc to i8**), align 8, !tbaa !8
  br label %.preheader2

; <label>:9                                       ; preds = %0
  tail call void @reset_bin(%struct.t_bin* %2) #9
  br label %.preheader2

.preheader2:                                      ; preds = %9, %4
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !13
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %.preheader2, %.lr.ph17
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph17 ], [ 0, %.preheader2 ]
  %13 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv31
  tail call void @init_nrnb(%struct.t_nrnb* %13) #9
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %14 = load i32* %10, align 4, !tbaa !13
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %indvars.iv.next32, %15
  br i1 %16, label %.lr.ph17, label %._crit_edge18

._crit_edge18:                                    ; preds = %.lr.ph17, %.preheader2
  %17 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %18 = load i32* %17, align 4, !tbaa !15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %19
  tail call void @cp_nrnb(%struct.t_nrnb* %20, %struct.t_nrnb* %mynrnb) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 89) #9
  %21 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %22 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %21, i32 44, float* %ener) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 91) #9
  %23 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %24 = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0
  %25 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %23, i32 9, float* %24) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 93) #9
  %26 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %27 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0
  %28 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %26, i32 9, float* %27) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 95) #9
  %29 = load i32* %10, align 4, !tbaa !13
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %._crit_edge18, %.lr.ph14
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph14 ], [ 0, %._crit_edge18 ]
  %31 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %32 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv29, i32 0, i64 0
  %33 = tail call i32 @add_bind(%struct.__sFILE* %log, %struct.t_bin* %31, i32 129, double* %32) #9
  %34 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv29
  store i32 %33, i32* %34, align 4, !tbaa !16
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %35 = load i32* %10, align 4, !tbaa !13
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %indvars.iv.next30, %36
  br i1 %37, label %.lr.ph14, label %._crit_edge15

._crit_edge15:                                    ; preds = %.lr.ph14, %._crit_edge18
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 98) #9
  %38 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %39 = load i32* %38, align 4, !tbaa !10
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %.lr.ph11, label %._crit_edge

.lr.ph11:                                         ; preds = %._crit_edge15
  %41 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  br label %42

; <label>:42                                      ; preds = %.lr.ph11, %42
  %indvars.iv27 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next28, %42 ]
  %43 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %44 = load %struct.t_grp_tcstat** %41, align 8, !tbaa !17
  %45 = getelementptr inbounds %struct.t_grp_tcstat* %44, i64 %indvars.iv27, i32 2, i64 0, i64 0
  %46 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %43, i32 9, float* %45) #9
  %47 = load i32** @global_stat.itc, align 8, !tbaa !8
  %48 = getelementptr inbounds i32* %47, i64 %indvars.iv27
  store i32 %46, i32* %48, align 4, !tbaa !16
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %49 = load i32* %38, align 4, !tbaa !10
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv.next28, %50
  br i1 %51, label %42, label %._crit_edge

._crit_edge:                                      ; preds = %42, %._crit_edge15
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 101) #9
  %52 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  br label %53

; <label>:53                                      ; preds = %53, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next25, %53 ]
  %54 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %55 = load i32* %52, align 4, !tbaa !21
  %56 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv24
  %57 = load float** %56, align 8, !tbaa !8
  %58 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %54, i32 %55, float* %57) #9
  %59 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv24
  store i32 %58, i32* %59, align 4, !tbaa !16
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond26 = icmp eq i64 %indvars.iv.next25, 7
  br i1 %exitcond26, label %60, label %53

; <label>:60                                      ; preds = %53
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 104) #9
  %61 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %62 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %63 = load i32* %62, align 4, !tbaa !22
  %64 = mul nsw i32 %63, 3
  %65 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %66 = load [3 x float]** %65, align 8, !tbaa !24
  %67 = getelementptr inbounds [3 x float]* %66, i64 0, i64 0
  %68 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %61, i32 %64, float* %67) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 106) #9
  %69 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %70 = load i32* %62, align 4, !tbaa !22
  %71 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %72 = load float** %71, align 8, !tbaa !25
  %73 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %69, i32 %70, float* %72) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 108) #9
  %74 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %75 = load i32* %74, align 4, !tbaa !26
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %99

; <label>:77                                      ; preds = %60
  %78 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %79 = load i32* %62, align 4, !tbaa !22
  %80 = mul nsw i32 %79, 3
  %81 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %82 = load [3 x float]** %81, align 8, !tbaa !27
  %83 = getelementptr inbounds [3 x float]* %82, i64 0, i64 0
  %84 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %78, i32 %80, float* %83) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 111) #9
  %85 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %86 = load i32* %62, align 4, !tbaa !22
  %87 = mul nsw i32 %86, 3
  %88 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %89 = load [3 x float]** %88, align 8, !tbaa !28
  %90 = getelementptr inbounds [3 x float]* %89, i64 0, i64 0
  %91 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %85, i32 %87, float* %90) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 113) #9
  %92 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %93 = load i32* %62, align 4, !tbaa !22
  %94 = mul nsw i32 %93, 9
  %95 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %96 = load [3 x [3 x float]]** %95, align 8, !tbaa !29
  %97 = getelementptr inbounds [3 x [3 x float]]* %96, i64 0, i64 0, i64 0
  %98 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %92, i32 %94, float* %97) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 115) #9
  br label %99

; <label>:99                                      ; preds = %77, %60
  %icj.0 = phi i32 [ %84, %77 ], [ -1, %60 ]
  %ici.0 = phi i32 [ %98, %77 ], [ -1, %60 ]
  %icx.0 = phi i32 [ %91, %77 ], [ -1, %60 ]
  %100 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %101 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  %102 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %100, i32 1, float* %101) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 118) #9
  %103 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %104 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %103, i32 1, float* %terminate) #9
  %105 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @sum_bin(%struct.t_bin* %105, %struct.t_commrec* %cr) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 123) #9
  %106 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %106, i32 %22, i32 44, float* %ener) #9
  %107 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %107, i32 %25, i32 9, float* %24) #9
  %108 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %108, i32 %28, i32 9, float* %27) #9
  %109 = load i32* %10, align 4, !tbaa !13
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %.lr.ph8, label %.preheader1

.preheader1:                                      ; preds = %.lr.ph8, %99
  %111 = load i32* %38, align 4, !tbaa !10
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader1
  %113 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  br label %122

.lr.ph8:                                          ; preds = %99, %.lr.ph8
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph8 ], [ 0, %99 ]
  %114 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %115 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv22
  %116 = load i32* %115, align 4, !tbaa !16
  %117 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv22, i32 0, i64 0
  tail call void @extract_bind(%struct.t_bin* %114, i32 %116, i32 129, double* %117) #9
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %118 = load i32* %10, align 4, !tbaa !13
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %indvars.iv.next23, %119
  br i1 %120, label %.lr.ph8, label %.preheader1

.preheader:                                       ; preds = %122, %.preheader1
  %121 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  br label %132

; <label>:122                                     ; preds = %.lr.ph, %122
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %122 ]
  %123 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %124 = load i32** @global_stat.itc, align 8, !tbaa !8
  %125 = getelementptr inbounds i32* %124, i64 %indvars.iv20
  %126 = load i32* %125, align 4, !tbaa !16
  %127 = load %struct.t_grp_tcstat** %113, align 8, !tbaa !17
  %128 = getelementptr inbounds %struct.t_grp_tcstat* %127, i64 %indvars.iv20, i32 2, i64 0, i64 0
  tail call void @extract_binr(%struct.t_bin* %123, i32 %126, i32 9, float* %128) #9
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %129 = load i32* %38, align 4, !tbaa !10
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %indvars.iv.next21, %130
  br i1 %131, label %122, label %.preheader

; <label>:132                                     ; preds = %132, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %132 ]
  %133 = phi %struct.t_bin* [ %121, %.preheader ], [ %139, %132 ]
  %134 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv
  %135 = load i32* %134, align 4, !tbaa !16
  %136 = load i32* %52, align 4, !tbaa !21
  %137 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv
  %138 = load float** %137, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %133, i32 %135, i32 %136, float* %138) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %139 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %exitcond = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond, label %140, label %132

; <label>:140                                     ; preds = %132
  %141 = load i32* %62, align 4, !tbaa !22
  %142 = mul nsw i32 %141, 3
  %143 = load [3 x float]** %65, align 8, !tbaa !24
  %144 = getelementptr inbounds [3 x float]* %143, i64 0, i64 0
  tail call void @extract_binr(%struct.t_bin* %139, i32 %68, i32 %142, float* %144) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 136) #9
  %145 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %146 = load i32* %62, align 4, !tbaa !22
  %147 = load float** %71, align 8, !tbaa !25
  tail call void @extract_binr(%struct.t_bin* %145, i32 %73, i32 %146, float* %147) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 138) #9
  %148 = load i32* %74, align 4, !tbaa !26
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %169

; <label>:150                                     ; preds = %140
  %151 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %152 = load i32* %62, align 4, !tbaa !22
  %153 = mul nsw i32 %152, 3
  %154 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %155 = load [3 x float]** %154, align 8, !tbaa !27
  %156 = getelementptr inbounds [3 x float]* %155, i64 0, i64 0
  tail call void @extract_binr(%struct.t_bin* %151, i32 %icj.0, i32 %153, float* %156) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 141) #9
  %157 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %158 = load i32* %62, align 4, !tbaa !22
  %159 = mul nsw i32 %158, 3
  %160 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %161 = load [3 x float]** %160, align 8, !tbaa !28
  %162 = getelementptr inbounds [3 x float]* %161, i64 0, i64 0
  tail call void @extract_binr(%struct.t_bin* %157, i32 %icx.0, i32 %159, float* %162) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 143) #9
  %163 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  %164 = load i32* %62, align 4, !tbaa !22
  %165 = mul nsw i32 %164, 9
  %166 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %167 = load [3 x [3 x float]]** %166, align 8, !tbaa !29
  %168 = getelementptr inbounds [3 x [3 x float]]* %167, i64 0, i64 0, i64 0
  tail call void @extract_binr(%struct.t_bin* %163, i32 %ici.0, i32 %165, float* %168) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 145) #9
  br label %169

; <label>:169                                     ; preds = %150, %140
  %170 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %170, i32 %102, i32 1, float* %101) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 148) #9
  %171 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !8
  tail call void @extract_binr(%struct.t_bin* %171, i32 %104, i32 1, float* %terminate) #9
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 150) #9
  %172 = load i32* %10, align 4, !tbaa !13
  %173 = sitofp i32 %172 to float
  %174 = getelementptr inbounds float* %ener, i64 40
  %175 = load float* %174, align 4, !tbaa !2
  %176 = fdiv float %175, %173
  store float %176, float* %174, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 1024, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #3

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #3

; Function Attrs: optsize
declare i32 @add_binr(%struct.__sFILE*, %struct.t_bin*, i32, float*) #3

; Function Attrs: optsize
declare i32 @add_bind(%struct.__sFILE*, %struct.t_bin*, i32, double*) #3

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #3

; Function Attrs: optsize
declare void @extract_bind(%struct.t_bin*, i32, i32, double*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @do_per_step(i32 %step, i32 %nstep) #6 {
  %1 = icmp eq i32 %nstep, 0
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = srem i32 %step, %nstep
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  br label %6

; <label>:6                                       ; preds = %0, %2
  %.0 = phi i32 [ %5, %2 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, i8* %traj, %struct.t_nsborder* %nsb, i32 %step, float %t, float %lambda, %struct.t_nrnb* nocapture readnone %nrnb, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff, [3 x float]* %box) #4 {
  %1 = load i32* @write_traj.fp, align 4, !tbaa !16
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %9 = load i32* %8, align 4, !tbaa !30
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @open_trn(i8* %traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #9
  store i32 %12, i32* @write_traj.fp, align 4, !tbaa !16
  br label %13

; <label>:13                                      ; preds = %11, %7, %3, %0
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !13
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %26

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %19 = load i32* %18, align 4, !tbaa !31
  %20 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %21 = load i32* %20, align 4, !tbaa !32
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %19, i32 %21, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #10
  %22 = load i32* %18, align 4, !tbaa !31
  %23 = load i32* %20, align 4, !tbaa !32
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %22, i32 %23, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), [3 x float]* %vv, %struct.t_nsborder* %nsb) #10
  %24 = load i32* %18, align 4, !tbaa !31
  %25 = load i32* %20, align 4, !tbaa !32
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %24, i32 %25, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), [3 x float]* %ff, %struct.t_nsborder* %nsb) #10
  br label %26

; <label>:26                                      ; preds = %17, %13
  %27 = icmp ne [3 x float]* %xx, null
  %28 = icmp ne [3 x float]* %vv, null
  %or.cond = or i1 %27, %28
  %29 = icmp ne [3 x float]* %ff, null
  %or.cond3 = or i1 %or.cond, %29
  br i1 %or.cond3, label %30, label %41

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %32 = load i32* %31, align 4, !tbaa !15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

; <label>:34                                      ; preds = %30
  %35 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %36 = load i32* %35, align 4, !tbaa !30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %34
  %39 = load i32* @write_traj.fp, align 4, !tbaa !16
  tail call void @fwrite_trn(i32 %39, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff) #9
  %40 = load i32* @write_traj.fp, align 4, !tbaa !16
  tail call void @gmx_fio_flush(i32 %40) #9
  br label %41

; <label>:41                                      ; preds = %26, %38, %34, %30
  %42 = load i32* @write_traj.fp, align 4, !tbaa !16
  ret i32 %42
}

; Function Attrs: optsize
declare i32 @open_trn(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @moveit(%struct.__sFILE* %log, i32 %left, i32 %right, i8* %s, [3 x float]* %xx, %struct.t_nsborder* %nsb) #4 {
  %1 = icmp eq [3 x float]* %xx, null
  br i1 %1, label %74, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !33
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %5
  %7 = load i32* %6, align 4, !tbaa !16
  %8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %5
  %9 = load i32* %8, align 4, !tbaa !16
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 179, i32 %9, i32 12) #9
  %11 = bitcast i8* %10 to [3 x float]*
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %.lr.ph, label %._crit_edge.critedge

.lr.ph:                                           ; preds = %2
  %13 = sext i32 %7 to i64
  %14 = add i32 %9, -1
  br label %15

; <label>:15                                      ; preds = %15, %.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next12, %15 ]
  %16 = add nsw i64 %indvars.iv11, %13
  %17 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 0
  %18 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 0
  %19 = bitcast float* %17 to i32*
  %20 = load i32* %19, align 4, !tbaa !2
  %21 = bitcast float* %18 to i32*
  store i32 %20, i32* %21, align 4, !tbaa !2
  %22 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 1
  %23 = bitcast float* %22 to i32*
  %24 = load i32* %23, align 4, !tbaa !2
  %25 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 1
  %26 = bitcast float* %25 to i32*
  store i32 %24, i32* %26, align 4, !tbaa !2
  %27 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 2
  %28 = bitcast float* %27 to i32*
  %29 = load i32* %28, align 4, !tbaa !2
  %30 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 2
  %31 = bitcast float* %30 to i32*
  store i32 %29, i32* %31, align 4, !tbaa !2
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %14
  br i1 %exitcond14, label %._crit_edge7, label %15

._crit_edge7:                                     ; preds = %15
  %32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %33 = load i32* %32, align 4, !tbaa !35
  %34 = add nsw i32 %33, -1
  tail call void @move_rvecs(%struct.__sFILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %34, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #9
  br i1 %12, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %._crit_edge7
  %35 = icmp ne %struct.__sFILE* %log, null
  %36 = sext i32 %7 to i64
  %37 = add i32 %9, -1
  br label %.preheader

.preheader:                                       ; preds = %70, %.preheader.lr.ph
  %indvars.iv8 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next9, %70 ]
  %38 = add nsw i64 %indvars.iv8, %36
  br label %39

; <label>:39                                      ; preds = %39, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %39 ]
  %bP.02 = phi i32 [ 0, %.preheader ], [ %bP.1, %39 ]
  %40 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 %indvars.iv
  %41 = load float* %40, align 4, !tbaa !2
  %42 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 %indvars.iv
  %43 = load float* %42, align 4, !tbaa !2
  %44 = fsub float %41, %43
  %fabsf = tail call float @fabsf(float %44) #11
  %45 = fpext float %fabsf to double
  %46 = fcmp ogt double %45, 1.200000e-38
  %bP.1 = select i1 %46, i32 1, i32 %bP.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %47, label %39

; <label>:47                                      ; preds = %39
  %48 = icmp ne i32 %bP.1, 0
  %or.cond = and i1 %35, %48
  br i1 %or.cond, label %49, label %70

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 0
  %51 = load float* %50, align 4, !tbaa !2
  %52 = fpext float %51 to double
  %53 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 1
  %54 = load float* %53, align 4, !tbaa !2
  %55 = fpext float %54 to double
  %56 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 2
  %57 = load float* %56, align 4, !tbaa !2
  %58 = fpext float %57 to double
  %59 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 0
  %60 = load float* %59, align 4, !tbaa !2
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 1
  %63 = load float* %62, align 4, !tbaa !2
  %64 = fpext float %63 to double
  %65 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 2
  %66 = load float* %65, align 4, !tbaa !2
  %67 = fpext float %66 to double
  %68 = trunc i64 %38 to i32
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i8* %s, i32 %68, double %52, double %55, double %58, double %61, double %64, double %67) #9
  br label %70

; <label>:70                                      ; preds = %47, %49
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %lftr.wideiv = trunc i64 %indvars.iv8 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv, %37
  br i1 %exitcond10, label %._crit_edge, label %.preheader

._crit_edge.critedge:                             ; preds = %2
  %71 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %72 = load i32* %71, align 4, !tbaa !35
  %73 = add nsw i32 %72, -1
  tail call void @move_rvecs(%struct.__sFILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %73, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #9
  br label %._crit_edge

._crit_edge:                                      ; preds = %70, %._crit_edge.critedge, %._crit_edge7
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 196, i8* %10) #9
  br label %74

; <label>:74                                      ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @gmx_fio_flush(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xtc_traj(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, i8* %xtc_traj, %struct.t_nsborder* %nsb, %struct.t_mdatoms* nocapture readonly %md, i32 %step, float %t, [3 x float]* %xx, [3 x float]* %box, float %prec) #4 {
  %.b = load i1* @write_xtc_traj.bFirst, align 1
  br i1 %.b, label %41, label %1

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %41

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %7 = load i32* %6, align 4, !tbaa !30
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @open_xtc(i8* %xtc_traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #9
  store i32 %10, i32* @xd, align 4, !tbaa !16
  store i32 0, i32* @write_xtc_traj.natoms, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !36
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph4, label %._crit_edge

.lr.ph4:                                          ; preds = %9
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %15 = load i16** %14, align 8, !tbaa !38
  br label %16

; <label>:16                                      ; preds = %.lr.ph4, %24
  %17 = phi i32 [ %12, %.lr.ph4 ], [ %25, %24 ]
  %18 = phi i32 [ 0, %.lr.ph4 ], [ %26, %24 ]
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %24 ]
  %19 = getelementptr inbounds i16* %15, i64 %indvars.iv5
  %20 = load i16* %19, align 2, !tbaa !39
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %16
  %23 = add nsw i32 %18, 1
  store i32 %23, i32* @write_xtc_traj.natoms, align 4, !tbaa !16
  %.pre = load i32* %11, align 4, !tbaa !36
  br label %24

; <label>:24                                      ; preds = %16, %22
  %25 = phi i32 [ %17, %16 ], [ %.pre, %22 ]
  %26 = phi i32 [ %18, %16 ], [ %23, %22 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %indvars.iv.next6, %27
  br i1 %28, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %24, %9
  %29 = phi i32 [ %12, %9 ], [ %25, %24 ]
  %30 = phi i32 [ 0, %9 ], [ %26, %24 ]
  %31 = icmp eq %struct.__sFILE* %log, null
  br i1 %31, label %34, label %32

; <label>:32                                      ; preds = %._crit_edge
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %30) #9
  %.pre7 = load i32* @write_xtc_traj.natoms, align 4, !tbaa !16
  %.pre8 = load i32* %11, align 4, !tbaa !36
  br label %34

; <label>:34                                      ; preds = %._crit_edge, %32
  %35 = phi i32 [ %29, %._crit_edge ], [ %.pre8, %32 ]
  %36 = phi i32 [ %30, %._crit_edge ], [ %.pre7, %32 ]
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %40, label %38

; <label>:38                                      ; preds = %34
  %39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %36, i32 12) #9
  store i8* %39, i8** bitcast ([3 x float]** @write_xtc_traj.x_sel to i8**), align 8, !tbaa !8
  br label %40

; <label>:40                                      ; preds = %34, %38
  store i1 true, i1* @write_xtc_traj.bFirst, align 1
  br label %41

; <label>:41                                      ; preds = %0, %40, %5, %1
  %42 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %43 = load i32* %42, align 4, !tbaa !13
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %41
  %46 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %47 = load i32* %46, align 4, !tbaa !31
  %48 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %49 = load i32* %48, align 4, !tbaa !32
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %47, i32 %49, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #10
  br label %50

; <label>:50                                      ; preds = %45, %41
  %51 = icmp eq [3 x float]* %xx, null
  br i1 %51, label %100, label %52

; <label>:52                                      ; preds = %50
  %53 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %54 = load i32* %53, align 4, !tbaa !15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %100

; <label>:56                                      ; preds = %52
  %57 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %58 = load i32* %57, align 4, !tbaa !30
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %100

; <label>:60                                      ; preds = %56
  %61 = load i32* @write_xtc_traj.natoms, align 4, !tbaa !16
  %62 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %63 = load i32* %62, align 4, !tbaa !36
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %70, label %.preheader

.preheader:                                       ; preds = %60
  %65 = icmp sgt i32 %63, 0
  br i1 %65, label %.lr.ph, label %.preheader..loopexit_crit_edge

.preheader..loopexit_crit_edge:                   ; preds = %.preheader
  %.pre9.pre = load [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %66 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %67 = load i16** %66, align 8, !tbaa !38
  %68 = load [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !8
  %69 = sext i32 %63 to i64
  br label %71

; <label>:70                                      ; preds = %60
  store [3 x float]* %xx, [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !8
  br label %.loopexit

; <label>:71                                      ; preds = %.lr.ph, %93
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %93 ]
  %j.02 = phi i32 [ 0, %.lr.ph ], [ %j.1, %93 ]
  %72 = getelementptr inbounds i16* %67, i64 %indvars.iv
  %73 = load i16* %72, align 2, !tbaa !39
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %93

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 0
  %77 = sext i32 %j.02 to i64
  %78 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 0
  %79 = bitcast float* %76 to i32*
  %80 = load i32* %79, align 4, !tbaa !2
  %81 = bitcast float* %78 to i32*
  store i32 %80, i32* %81, align 4, !tbaa !2
  %82 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 1
  %83 = bitcast float* %82 to i32*
  %84 = load i32* %83, align 4, !tbaa !2
  %85 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 1
  %86 = bitcast float* %85 to i32*
  store i32 %84, i32* %86, align 4, !tbaa !2
  %87 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 2
  %88 = bitcast float* %87 to i32*
  %89 = load i32* %88, align 4, !tbaa !2
  %90 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 2
  %91 = bitcast float* %90 to i32*
  store i32 %89, i32* %91, align 4, !tbaa !2
  %92 = add nsw i32 %j.02, 1
  br label %93

; <label>:93                                      ; preds = %71, %75
  %j.1 = phi i32 [ %92, %75 ], [ %j.02, %71 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %94 = icmp slt i64 %indvars.iv.next, %69
  br i1 %94, label %71, label %.loopexit

.loopexit:                                        ; preds = %93, %.preheader..loopexit_crit_edge, %70
  %95 = phi [3 x float]* [ %xx, %70 ], [ %.pre9.pre, %.preheader..loopexit_crit_edge ], [ %68, %93 ]
  %96 = load i32* @xd, align 4, !tbaa !16
  %97 = tail call i32 @write_xtc(i32 %96, i32 %61, i32 %step, float %t, [3 x float]* %box, [3 x float]* %95, float %prec) #9
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %.loopexit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #9
  br label %100

; <label>:100                                     ; preds = %50, %.loopexit, %99, %56, %52
  ret void
}

; Function Attrs: optsize
declare i32 @open_xtc(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @close_xtc_traj() #4 {
  %1 = load i32* @xd, align 4, !tbaa !16
  tail call void @close_xtc(i32 %1) #9
  ret void
}

; Function Attrs: optsize
declare void @close_xtc(i32) #3

; Function Attrs: optsize
declare void @move_rvecs(%struct.__sFILE*, i32, i32, i32, i32, [3 x float]*, [3 x float]*, i32, %struct.t_nsborder*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!12 = !{!"int", !4, i64 0}
!13 = !{!14, !12, i64 4}
!14 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!15 = !{!14, !12, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!18, !9, i64 64}
!18 = !{!"", !19, i64 0, !9, i64 64, !9, i64 72, !20, i64 80}
!19 = !{!"", !12, i64 0, !4, i64 8}
!20 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8}
!21 = !{!18, !12, i64 0}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!24 = !{!23, !9, i64 8}
!25 = !{!23, !9, i64 56}
!26 = !{!23, !12, i64 4}
!27 = !{!23, !9, i64 32}
!28 = !{!23, !9, i64 24}
!29 = !{!23, !9, i64 48}
!30 = !{!14, !12, i64 16}
!31 = !{!14, !12, i64 8}
!32 = !{!14, !12, i64 12}
!33 = !{!34, !12, i64 0}
!34 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
!35 = !{!34, !12, i64 4}
!36 = !{!37, !12, i64 4}
!37 = !{!"", !3, i64 0, !12, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168}
!38 = !{!37, !9, i64 136}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !4, i64 0}
