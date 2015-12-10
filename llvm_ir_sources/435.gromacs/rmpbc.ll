; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rmpbc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.multi_graph = type { i32, %struct.t_graph* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@rm_pbc.ngraph = internal unnamed_addr global i32 0, align 4
@rm_pbc.mgraph = internal unnamed_addr global %struct.multi_graph* null, align 8
@rm_pbc.bFirst = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [7 x i8] c"mgraph\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rmpbc.c\00", align 1
@__stdoutp = external global %struct.__sFILE*
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [133 x i8] c"\0AWarning: can not make broken molecules whole without a run input file,\0A         don't worry, mdrun doesn't write broken molecules\0A\0A\00", align 1

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
define void @rm_pbc(%struct.t_idef* %idef, i32 %natoms, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #4 {
  %sv = alloca [27 x [3 x float]], align 16
  %box_size = alloca [3 x float], align 4
  %1 = bitcast [27 x [3 x float]]* %sv to i8*
  call void @llvm.lifetime.start(i64 324, i8* %1) #5
  %2 = icmp ne [3 x float]* %x, %x_s
  %3 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %4 = load float* %3, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %4) #8
  %5 = fpext float %fabsf to double
  %6 = fcmp ogt double %5, 1.200000e-38
  br i1 %6, label %7, label %46

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !18
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %42, label %.preheader1

.preheader1:                                      ; preds = %7
  %11 = load i32* @rm_pbc.ngraph, align 4, !tbaa !20
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph5, label %._crit_edge.thread

.lr.ph5:                                          ; preds = %.preheader1
  %13 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !21
  %14 = sext i32 %11 to i64
  br label %15

; <label>:15                                      ; preds = %.lr.ph5, %15
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %15 ]
  %n.03 = phi i32 [ -1, %.lr.ph5 ], [ %i.0.n.0, %15 ]
  %16 = getelementptr inbounds %struct.multi_graph* %13, i64 %indvars.iv7, i32 0
  %17 = load i32* %16, align 4, !tbaa !22
  %18 = icmp eq i32 %17, %natoms
  %19 = trunc i64 %indvars.iv7 to i32
  %i.0.n.0 = select i1 %18, i32 %19, i32 %n.03
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %20 = icmp slt i64 %indvars.iv.next8, %14
  br i1 %20, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %15
  %21 = icmp eq i32 %i.0.n.0, -1
  br i1 %21, label %._crit_edge.thread, label %.thread

._crit_edge.thread:                               ; preds = %.preheader1, %._crit_edge
  %22 = add nsw i32 %11, 1
  store i32 %22, i32* @rm_pbc.ngraph, align 4, !tbaa !20
  %23 = load i8** bitcast (%struct.multi_graph** @rm_pbc.mgraph to i8**), align 8, !tbaa !21
  %24 = shl i32 %22, 4
  %25 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %23, i32 %24) #6
  %26 = bitcast i8* %25 to %struct.multi_graph*
  store i8* %25, i8** bitcast (%struct.multi_graph** @rm_pbc.mgraph to i8**), align 8, !tbaa !21
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds %struct.multi_graph* %26, i64 %27, i32 0
  store i32 %natoms, i32* %28, align 4, !tbaa !22
  %29 = tail call %struct.t_graph* @mk_graph(%struct.t_idef* %idef, i32 %natoms, i32 0, i32 0) #6
  %30 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.multi_graph* %30, i64 %27, i32 1
  store %struct.t_graph* %29, %struct.t_graph** %31, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge.thread
  %n.2 = phi i32 [ %11, %._crit_edge.thread ], [ %i.0.n.0, %._crit_edge ]
  %32 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !21
  %33 = sext i32 %n.2 to i64
  %34 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.multi_graph* %34, i64 %33, i32 1
  %36 = load %struct.t_graph** %35, align 8, !tbaa !24
  tail call void @mk_mshift(%struct.__sFILE* %32, %struct.t_graph* %36, [3 x float]* %box, [3 x float]* %x) #6
  %37 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %38 = getelementptr inbounds [27 x [3 x float]]* %sv, i64 0, i64 0
  call void @calc_shifts([3 x float]* %box, float* %37, [3 x float]* %38) #6
  %39 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.multi_graph* %39, i64 %33, i32 1
  %41 = load %struct.t_graph** %40, align 8, !tbaa !24
  call void @shift_x(%struct.t_graph* %41, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #6
  br label %.loopexit

; <label>:42                                      ; preds = %7
  %.b = load i1* @rm_pbc.bFirst, align 1
  br i1 %.b, label %46, label %43

; <label>:43                                      ; preds = %42
  %44 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !21
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([133 x i8]* @.str2, i64 0, i64 0), i64 132, i64 1, %struct.__sFILE* %44)
  store i1 true, i1* @rm_pbc.bFirst, align 1
  br label %46

; <label>:46                                      ; preds = %42, %43, %0
  %47 = icmp sgt i32 %natoms, 0
  %or.cond = and i1 %2, %47
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %46
  %48 = add i32 %natoms, -1
  br label %49

; <label>:49                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %51 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  %52 = bitcast float* %50 to i32*
  %53 = load i32* %52, align 4, !tbaa !14
  %54 = bitcast float* %51 to i32*
  store i32 %53, i32* %54, align 4, !tbaa !14
  %55 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %56 = bitcast float* %55 to i32*
  %57 = load i32* %56, align 4, !tbaa !14
  %58 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  %59 = bitcast float* %58 to i32*
  store i32 %57, i32* %59, align 4, !tbaa !14
  %60 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %61 = bitcast float* %60 to i32*
  %62 = load i32* %61, align 4, !tbaa !14
  %63 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  %64 = bitcast float* %63 to i32*
  store i32 %62, i32* %64, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %48
  br i1 %exitcond, label %.loopexit, label %49

.loopexit:                                        ; preds = %49, %46, %.thread
  call void @llvm.lifetime.end(i64 324, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @mk_mshift(%struct.__sFILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @shift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!20 = !{!7, !7, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0, !4, i64 8}
!24 = !{!23, !4, i64 8}
