; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/dummies.c'
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
%struct.t_nrnb = type { [129 x double] }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }

@interaction_function = external global [44 x %struct.t_interaction_function]
@.str = private unnamed_addr constant [37 x i8] c"No such dummy type %d in %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/dummies.c\00", align 1
@move_construct_x.bFirst = internal unnamed_addr global i1 false
@.str2 = private unnamed_addr constant [8 x i8] c"nextbuf\00", align 1
@nextbuf = internal unnamed_addr global [3 x float]* null, align 8
@.str3 = private unnamed_addr constant [8 x i8] c"prevbuf\00", align 1
@prevbuf = internal unnamed_addr global [3 x float]* null, align 8

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
  %3 = tail call float @llvm.fabs.f32(float %__x) #7
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #7
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @construct_dummies(%struct.__sFILE* nocapture readnone %log, [3 x float]* %x, %struct.t_nrnb* nocapture readnone %nrnb, float %dt, [3 x float]* %v, %struct.t_idef* nocapture readonly %idef, %struct.t_graph* %graph, %struct.t_commrec* nocapture readonly %cr, [3 x float]* %box, %struct.t_comm_dummies* readonly %dummycomm) #4 {
  %1 = icmp ne %struct.t_comm_dummies* %dummycomm, null
  br i1 %1, label %2, label %160

; <label>:2                                       ; preds = %0
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #8
  %.b.i = load i1* @move_construct_x.bFirst, align 1
  br i1 %.b.i, label %..preheader3_crit_edge.i, label %3

..preheader3_crit_edge.i:                         ; preds = %2
  %.pre24.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  br label %.preheader3.i

; <label>:3                                       ; preds = %2
  %4 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !8
  %6 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %7 = load i32* %6, align 4, !tbaa !12
  %8 = add nsw i32 %7, %5
  %9 = shl i32 %8, 1
  %10 = add nsw i32 %9, 100
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 71, i32 %10, i32 12) #8
  store i8* %11, i8** bitcast ([3 x float]** @nextbuf to i8**), align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %13 = load i32* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %15 = load i32* %14, align 4, !tbaa !15
  %16 = add nsw i32 %15, %13
  %17 = shl i32 %16, 1
  %18 = add nsw i32 %17, 100
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %18, i32 12) #8
  store i8* %19, i8** bitcast ([3 x float]** @prevbuf to i8**), align 8, !tbaa !13
  store i1 true, i1* @move_construct_x.bFirst, align 1
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %3, %..preheader3_crit_edge.i
  %.pre-phi25.i = phi i32* [ %.pre24.i, %..preheader3_crit_edge.i ], [ %14, %3 ]
  %20 = load i32* %.pre-phi25.i, align 4, !tbaa !15
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %.lr.ph14.i, label %.preheader2.i

.lr.ph14.i:                                       ; preds = %.preheader3.i
  %22 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  %23 = load i32** %22, align 8, !tbaa !16
  %24 = load [3 x float]** @prevbuf, align 8, !tbaa !13
  %25 = sext i32 %20 to i64
  %26 = add nsw i64 %25, -1
  br label %36

.preheader2.i:                                    ; preds = %36, %.preheader3.i
  %27 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %28 = load i32* %27, align 4, !tbaa !14
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %.lr.ph10.i, label %._crit_edge11.i

.lr.ph10.i:                                       ; preds = %.preheader2.i
  %30 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %31 = load i32** %30, align 8, !tbaa !17
  %32 = load [3 x float]** @prevbuf, align 8, !tbaa !13
  %33 = sext i32 %20 to i64
  %34 = sext i32 %28 to i64
  %35 = add nsw i64 %34, -1
  br label %55

; <label>:36                                      ; preds = %36, %.lr.ph14.i
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next21.i, %36 ]
  %37 = getelementptr inbounds i32* %23, i64 %indvars.iv20.i
  %38 = load i32* %37, align 4, !tbaa !18
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 0
  %41 = getelementptr inbounds [3 x float]* %24, i64 %indvars.iv20.i, i64 0
  %42 = bitcast float* %40 to i32*
  %43 = load i32* %42, align 4, !tbaa !2
  %44 = bitcast float* %41 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !2
  %45 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 1
  %46 = bitcast float* %45 to i32*
  %47 = load i32* %46, align 4, !tbaa !2
  %48 = getelementptr inbounds [3 x float]* %24, i64 %indvars.iv20.i, i64 1
  %49 = bitcast float* %48 to i32*
  store i32 %47, i32* %49, align 4, !tbaa !2
  %50 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 2
  %51 = bitcast float* %50 to i32*
  %52 = load i32* %51, align 4, !tbaa !2
  %53 = getelementptr inbounds [3 x float]* %24, i64 %indvars.iv20.i, i64 2
  %54 = bitcast float* %53 to i32*
  store i32 %52, i32* %54, align 4, !tbaa !2
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %exitcond14 = icmp eq i64 %indvars.iv20.i, %26
  br i1 %exitcond14, label %.preheader2.i, label %36

; <label>:55                                      ; preds = %55, %.lr.ph10.i
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next19.i, %55 ]
  %56 = getelementptr inbounds i32* %31, i64 %indvars.iv18.i
  %57 = load i32* %56, align 4, !tbaa !18
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 0
  %60 = add nsw i64 %indvars.iv18.i, %33
  %61 = getelementptr inbounds [3 x float]* %32, i64 %60, i64 0
  %62 = bitcast float* %59 to i32*
  %63 = load i32* %62, align 4, !tbaa !2
  %64 = bitcast float* %61 to i32*
  store i32 %63, i32* %64, align 4, !tbaa !2
  %65 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 1
  %66 = bitcast float* %65 to i32*
  %67 = load i32* %66, align 4, !tbaa !2
  %68 = getelementptr inbounds [3 x float]* %32, i64 %60, i64 1
  %69 = bitcast float* %68 to i32*
  store i32 %67, i32* %69, align 4, !tbaa !2
  %70 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 2
  %71 = bitcast float* %70 to i32*
  %72 = load i32* %71, align 4, !tbaa !2
  %73 = getelementptr inbounds [3 x float]* %32, i64 %60, i64 2
  %74 = bitcast float* %73 to i32*
  store i32 %72, i32* %74, align 4, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond13 = icmp eq i64 %indvars.iv18.i, %35
  br i1 %exitcond13, label %._crit_edge11.i, label %55

._crit_edge11.i:                                  ; preds = %55, %.preheader2.i
  %or.cond.i = or i1 %21, %29
  br i1 %or.cond.i, label %75, label %81

; <label>:75                                      ; preds = %._crit_edge11.i
  %76 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %77 = load i32* %76, align 4, !tbaa !19
  %78 = load i8** bitcast ([3 x float]** @prevbuf to i8**), align 8, !tbaa !13
  %79 = add nsw i32 %28, %20
  %80 = mul i32 %79, 12
  tail call void @gmx_tx(i32 %77, i8* %78, i32 %80) #8
  br label %81

; <label>:81                                      ; preds = %75, %._crit_edge11.i
  %82 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %83 = load i32* %82, align 4, !tbaa !12
  %84 = icmp sgt i32 %83, 0
  %.phi.trans.insert.i = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %.pre.i = load i32* %.phi.trans.insert.i, align 4, !tbaa !8
  %85 = icmp sgt i32 %.pre.i, 0
  %or.cond26.i = or i1 %84, %85
  br i1 %or.cond26.i, label %._crit_edge22.i, label %91

._crit_edge22.i:                                  ; preds = %81
  %86 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %87 = load i32* %86, align 4, !tbaa !21
  %88 = load i8** bitcast ([3 x float]** @nextbuf to i8**), align 8, !tbaa !13
  %89 = add nsw i32 %.pre.i, %83
  %90 = mul i32 %89, 12
  tail call void @gmx_rx(i32 %87, i8* %88, i32 %90) #8
  br label %91

; <label>:91                                      ; preds = %._crit_edge22.i, %81
  %92 = load i32* %.pre-phi25.i, align 4, !tbaa !15
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %97, label %94

; <label>:94                                      ; preds = %91
  %95 = load i32* %27, align 4, !tbaa !14
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

; <label>:97                                      ; preds = %94, %91
  %98 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %99 = load i32* %98, align 4, !tbaa !19
  tail call void @gmx_tx_wait(i32 %99) #8
  br label %100

; <label>:100                                     ; preds = %97, %94
  %101 = load i32* %82, align 4, !tbaa !12
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %.preheader1.i, label %103

; <label>:103                                     ; preds = %100
  %104 = load i32* %.phi.trans.insert.i, align 4, !tbaa !8
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %.preheader1.i, label %move_construct_x.exit

.preheader1.i:                                    ; preds = %103, %100
  %106 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %107 = load i32* %106, align 4, !tbaa !21
  tail call void @gmx_rx_wait(i32 %107) #8
  %.pre23.i = load i32* %82, align 4, !tbaa !12
  %108 = icmp sgt i32 %.pre23.i, 0
  br i1 %108, label %.lr.ph8.i, label %.preheader.i

.lr.ph8.i:                                        ; preds = %.preheader1.i
  %109 = load [3 x float]** @nextbuf, align 8, !tbaa !13
  %110 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %111 = load i32** %110, align 8, !tbaa !22
  %112 = sext i32 %.pre23.i to i64
  %113 = add nsw i64 %112, -1
  br label %121

.preheader.i:                                     ; preds = %121, %.preheader1.i
  %.pr = load i32* %.phi.trans.insert.i, align 4, !tbaa !8
  %114 = icmp sgt i32 %.pr, 0
  br i1 %114, label %.lr.ph.i, label %move_construct_x.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %115 = load [3 x float]** @nextbuf, align 8, !tbaa !13
  %116 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %117 = load i32** %116, align 8, !tbaa !23
  %118 = sext i32 %.pre23.i to i64
  %119 = sext i32 %.pr to i64
  %120 = add nsw i64 %119, -1
  br label %140

; <label>:121                                     ; preds = %121, %.lr.ph8.i
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next17.i, %121 ]
  %122 = getelementptr inbounds [3 x float]* %109, i64 %indvars.iv16.i, i64 0
  %123 = getelementptr inbounds i32* %111, i64 %indvars.iv16.i
  %124 = load i32* %123, align 4, !tbaa !18
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 0
  %127 = bitcast float* %122 to i32*
  %128 = load i32* %127, align 4, !tbaa !2
  %129 = bitcast float* %126 to i32*
  store i32 %128, i32* %129, align 4, !tbaa !2
  %130 = getelementptr inbounds [3 x float]* %109, i64 %indvars.iv16.i, i64 1
  %131 = bitcast float* %130 to i32*
  %132 = load i32* %131, align 4, !tbaa !2
  %133 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 1
  %134 = bitcast float* %133 to i32*
  store i32 %132, i32* %134, align 4, !tbaa !2
  %135 = getelementptr inbounds [3 x float]* %109, i64 %indvars.iv16.i, i64 2
  %136 = bitcast float* %135 to i32*
  %137 = load i32* %136, align 4, !tbaa !2
  %138 = getelementptr inbounds [3 x float]* %x, i64 %125, i64 2
  %139 = bitcast float* %138 to i32*
  store i32 %137, i32* %139, align 4, !tbaa !2
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond12 = icmp eq i64 %indvars.iv16.i, %113
  br i1 %exitcond12, label %.preheader.i, label %121

; <label>:140                                     ; preds = %140, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %140 ]
  %141 = add nsw i64 %indvars.iv.i, %118
  %142 = getelementptr inbounds [3 x float]* %115, i64 %141, i64 0
  %143 = getelementptr inbounds i32* %117, i64 %indvars.iv.i
  %144 = load i32* %143, align 4, !tbaa !18
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [3 x float]* %x, i64 %145, i64 0
  %147 = bitcast float* %142 to i32*
  %148 = load i32* %147, align 4, !tbaa !2
  %149 = bitcast float* %146 to i32*
  store i32 %148, i32* %149, align 4, !tbaa !2
  %150 = getelementptr inbounds [3 x float]* %115, i64 %141, i64 1
  %151 = bitcast float* %150 to i32*
  %152 = load i32* %151, align 4, !tbaa !2
  %153 = getelementptr inbounds [3 x float]* %x, i64 %145, i64 1
  %154 = bitcast float* %153 to i32*
  store i32 %152, i32* %154, align 4, !tbaa !2
  %155 = getelementptr inbounds [3 x float]* %115, i64 %141, i64 2
  %156 = bitcast float* %155 to i32*
  %157 = load i32* %156, align 4, !tbaa !2
  %158 = getelementptr inbounds [3 x float]* %x, i64 %145, i64 2
  %159 = bitcast float* %158 to i32*
  store i32 %157, i32* %159, align 4, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond11 = icmp eq i64 %indvars.iv.i, %120
  br i1 %exitcond11, label %move_construct_x.exit, label %140

move_construct_x.exit:                            ; preds = %140, %103, %.preheader.i
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #8
  br label %160

; <label>:160                                     ; preds = %move_construct_x.exit, %0
  %161 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %162 = load %union.t_iparams** %161, align 8, !tbaa !24
  %163 = icmp ne [3 x float]* %v, null
  br i1 %163, label %164, label %166

; <label>:164                                     ; preds = %160
  %165 = fdiv float 1.000000e+00, %dt
  br label %166

; <label>:166                                     ; preds = %160, %164
  %inv_dt.0 = phi float [ %165, %164 ], [ 1.000000e+00, %160 ]
  br label %167

; <label>:167                                     ; preds = %.loopexit, %166
  %indvars.iv = phi i64 [ 0, %166 ], [ %indvars.iv.next, %.loopexit ]
  %168 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %169 = load i64* %168, align 8, !tbaa !26
  %170 = and i64 %169, 2
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %.loopexit, label %172

; <label>:172                                     ; preds = %167
  %173 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %174 = load i32* %173, align 4, !tbaa !29
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %172
  %176 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %177 = load i32** %176, align 8, !tbaa !31
  %178 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %179 = load i32* %178, align 8, !tbaa !32
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  br label %182

; <label>:182                                     ; preds = %.lr.ph, %564
  %ia.07 = phi i32* [ %177, %.lr.ph ], [ %566, %564 ]
  %i.06 = phi i32 [ 0, %.lr.ph ], [ %565, %564 ]
  %183 = load i32* %ia.07, align 4, !tbaa !18
  %184 = getelementptr inbounds i32* %ia.07, i64 1
  %185 = load i32* %184, align 4, !tbaa !18
  %186 = getelementptr inbounds i32* %ia.07, i64 2
  %187 = load i32* %186, align 4, !tbaa !18
  %188 = getelementptr inbounds i32* %ia.07, i64 3
  %189 = load i32* %188, align 4, !tbaa !18
  %190 = sext i32 %183 to i64
  %191 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 0
  %192 = load float* %191, align 4, !tbaa !33
  %193 = sext i32 %185 to i64
  %194 = getelementptr inbounds [3 x float]* %x, i64 %193, i64 0
  %195 = load float* %194, align 4, !tbaa !2
  %196 = getelementptr inbounds [3 x float]* %x, i64 %193, i64 1
  %197 = load float* %196, align 4, !tbaa !2
  %198 = getelementptr inbounds [3 x float]* %x, i64 %193, i64 2
  %199 = load float* %198, align 4, !tbaa !2
  %200 = trunc i64 %indvars.iv to i32
  switch i32 %200, label %549 [
    i32 30, label %201
    i32 31, label %226
    i32 32, label %272
    i32 33, label %329
    i32 34, label %409
    i32 35, label %472
  ]

; <label>:201                                     ; preds = %182
  %202 = sext i32 %187 to i64
  %203 = getelementptr inbounds [3 x float]* %x, i64 %202, i64 0
  %204 = sext i32 %189 to i64
  %205 = getelementptr inbounds [3 x float]* %x, i64 %204, i64 0
  %206 = fsub float 1.000000e+00, %192
  %207 = load float* %203, align 4, !tbaa !2
  %208 = fmul float %206, %207
  %209 = load float* %205, align 4, !tbaa !2
  %210 = fmul float %192, %209
  %211 = fadd float %208, %210
  store float %211, float* %194, align 4, !tbaa !2
  %212 = getelementptr inbounds [3 x float]* %x, i64 %202, i64 1
  %213 = load float* %212, align 4, !tbaa !2
  %214 = fmul float %206, %213
  %215 = getelementptr inbounds [3 x float]* %x, i64 %204, i64 1
  %216 = load float* %215, align 4, !tbaa !2
  %217 = fmul float %192, %216
  %218 = fadd float %214, %217
  store float %218, float* %196, align 4, !tbaa !2
  %219 = getelementptr inbounds [3 x float]* %x, i64 %202, i64 2
  %220 = load float* %219, align 4, !tbaa !2
  %221 = fmul float %206, %220
  %222 = getelementptr inbounds [3 x float]* %x, i64 %204, i64 2
  %223 = load float* %222, align 4, !tbaa !2
  %224 = fmul float %192, %223
  %225 = fadd float %221, %224
  store float %225, float* %198, align 4, !tbaa !2
  br label %550

; <label>:226                                     ; preds = %182
  %227 = getelementptr inbounds i32* %ia.07, i64 4
  %228 = load i32* %227, align 4, !tbaa !18
  %229 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 1
  %230 = load float* %229, align 4, !tbaa !35
  %231 = sext i32 %187 to i64
  %232 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 0
  %233 = sext i32 %189 to i64
  %234 = getelementptr inbounds [3 x float]* %x, i64 %233, i64 0
  %235 = sext i32 %228 to i64
  %236 = getelementptr inbounds [3 x float]* %x, i64 %235, i64 0
  %237 = fpext float %192 to double
  %238 = fsub double 1.000000e+00, %237
  %239 = fpext float %230 to double
  %240 = fsub double %238, %239
  %241 = fptrunc double %240 to float
  %242 = load float* %232, align 4, !tbaa !2
  %243 = fmul float %242, %241
  %244 = load float* %234, align 4, !tbaa !2
  %245 = fmul float %192, %244
  %246 = fadd float %245, %243
  %247 = load float* %236, align 4, !tbaa !2
  %248 = fmul float %230, %247
  %249 = fadd float %248, %246
  store float %249, float* %194, align 4, !tbaa !2
  %250 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 1
  %251 = load float* %250, align 4, !tbaa !2
  %252 = fmul float %241, %251
  %253 = getelementptr inbounds [3 x float]* %x, i64 %233, i64 1
  %254 = load float* %253, align 4, !tbaa !2
  %255 = fmul float %192, %254
  %256 = fadd float %252, %255
  %257 = getelementptr inbounds [3 x float]* %x, i64 %235, i64 1
  %258 = load float* %257, align 4, !tbaa !2
  %259 = fmul float %230, %258
  %260 = fadd float %256, %259
  store float %260, float* %196, align 4, !tbaa !2
  %261 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 2
  %262 = load float* %261, align 4, !tbaa !2
  %263 = fmul float %241, %262
  %264 = getelementptr inbounds [3 x float]* %x, i64 %233, i64 2
  %265 = load float* %264, align 4, !tbaa !2
  %266 = fmul float %192, %265
  %267 = fadd float %263, %266
  %268 = getelementptr inbounds [3 x float]* %x, i64 %235, i64 2
  %269 = load float* %268, align 4, !tbaa !2
  %270 = fmul float %230, %269
  %271 = fadd float %267, %270
  store float %271, float* %198, align 4, !tbaa !2
  br label %550

; <label>:272                                     ; preds = %182
  %273 = getelementptr inbounds i32* %ia.07, i64 4
  %274 = load i32* %273, align 4, !tbaa !18
  %275 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 1
  %276 = load float* %275, align 4, !tbaa !35
  %277 = sext i32 %187 to i64
  %278 = getelementptr inbounds [3 x float]* %x, i64 %277, i64 0
  %279 = sext i32 %189 to i64
  %280 = getelementptr inbounds [3 x float]* %x, i64 %279, i64 0
  %281 = sext i32 %274 to i64
  %282 = getelementptr inbounds [3 x float]* %x, i64 %281, i64 0
  %283 = load float* %280, align 4, !tbaa !2
  %284 = load float* %278, align 4, !tbaa !2
  %285 = fsub float %283, %284
  %286 = getelementptr inbounds [3 x float]* %x, i64 %279, i64 1
  %287 = load float* %286, align 4, !tbaa !2
  %288 = getelementptr inbounds [3 x float]* %x, i64 %277, i64 1
  %289 = load float* %288, align 4, !tbaa !2
  %290 = fsub float %287, %289
  %291 = getelementptr inbounds [3 x float]* %x, i64 %279, i64 2
  %292 = load float* %291, align 4, !tbaa !2
  %293 = getelementptr inbounds [3 x float]* %x, i64 %277, i64 2
  %294 = load float* %293, align 4, !tbaa !2
  %295 = fsub float %292, %294
  %296 = load float* %282, align 4, !tbaa !2
  %297 = fsub float %296, %283
  %298 = getelementptr inbounds [3 x float]* %x, i64 %281, i64 1
  %299 = load float* %298, align 4, !tbaa !2
  %300 = fsub float %299, %287
  %301 = getelementptr inbounds [3 x float]* %x, i64 %281, i64 2
  %302 = load float* %301, align 4, !tbaa !2
  %303 = fsub float %302, %292
  %304 = fmul float %192, %297
  %305 = fadd float %285, %304
  %306 = fmul float %192, %300
  %307 = fadd float %290, %306
  %308 = fmul float %192, %303
  %309 = fadd float %295, %308
  %310 = fpext float %276 to double
  %311 = fmul float %305, %305
  %312 = fmul float %307, %307
  %313 = fadd float %311, %312
  %314 = fmul float %309, %309
  %315 = fadd float %313, %314
  %316 = fpext float %315 to double
  %317 = tail call double @sqrt(double %316) #9
  %318 = fdiv double 1.000000e+00, %317
  %319 = fmul double %310, %318
  %320 = fptrunc double %319 to float
  %321 = fmul float %305, %320
  %322 = fadd float %284, %321
  store float %322, float* %194, align 4, !tbaa !2
  %323 = load float* %288, align 4, !tbaa !2
  %324 = fmul float %307, %320
  %325 = fadd float %323, %324
  store float %325, float* %196, align 4, !tbaa !2
  %326 = load float* %293, align 4, !tbaa !2
  %327 = fmul float %309, %320
  %328 = fadd float %326, %327
  store float %328, float* %198, align 4, !tbaa !2
  br label %550

; <label>:329                                     ; preds = %182
  %330 = getelementptr inbounds i32* %ia.07, i64 4
  %331 = load i32* %330, align 4, !tbaa !18
  %332 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 1
  %333 = load float* %332, align 4, !tbaa !35
  %334 = sext i32 %187 to i64
  %335 = getelementptr inbounds [3 x float]* %x, i64 %334, i64 0
  %336 = sext i32 %189 to i64
  %337 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 0
  %338 = sext i32 %331 to i64
  %339 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 0
  %340 = load float* %337, align 4, !tbaa !2
  %341 = load float* %335, align 4, !tbaa !2
  %342 = fsub float %340, %341
  %343 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 1
  %344 = load float* %343, align 4, !tbaa !2
  %345 = getelementptr inbounds [3 x float]* %x, i64 %334, i64 1
  %346 = load float* %345, align 4, !tbaa !2
  %347 = fsub float %344, %346
  %348 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 2
  %349 = load float* %348, align 4, !tbaa !2
  %350 = getelementptr inbounds [3 x float]* %x, i64 %334, i64 2
  %351 = load float* %350, align 4, !tbaa !2
  %352 = fsub float %349, %351
  %353 = load float* %339, align 4, !tbaa !2
  %354 = fsub float %353, %340
  %355 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 1
  %356 = load float* %355, align 4, !tbaa !2
  %357 = fsub float %356, %344
  %358 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 2
  %359 = load float* %358, align 4, !tbaa !2
  %360 = fsub float %359, %349
  %361 = fmul float %342, %342
  %362 = fmul float %347, %347
  %363 = fadd float %361, %362
  %364 = fmul float %352, %352
  %365 = fadd float %363, %364
  %366 = fpext float %365 to double
  %367 = tail call double @sqrt(double %366) #9
  %368 = fdiv double 1.000000e+00, %367
  %369 = fptrunc double %368 to float
  %370 = fmul float %369, %369
  %371 = fmul float %342, %354
  %372 = fmul float %347, %357
  %373 = fadd float %371, %372
  %374 = fmul float %352, %360
  %375 = fadd float %373, %374
  %376 = fmul float %375, %370
  %377 = fmul float %342, %376
  %378 = fsub float %354, %377
  %379 = fmul float %347, %376
  %380 = fsub float %357, %379
  %381 = fmul float %352, %376
  %382 = fsub float %360, %381
  %383 = fmul float %192, %369
  %384 = fpext float %333 to double
  %385 = fmul float %378, %378
  %386 = fmul float %380, %380
  %387 = fadd float %385, %386
  %388 = fmul float %382, %382
  %389 = fadd float %388, %387
  %390 = fpext float %389 to double
  %391 = tail call double @sqrt(double %390) #9
  %392 = fdiv double 1.000000e+00, %391
  %393 = fmul double %384, %392
  %394 = fptrunc double %393 to float
  %395 = fmul float %342, %383
  %396 = fadd float %341, %395
  %397 = fmul float %394, %378
  %398 = fadd float %396, %397
  store float %398, float* %194, align 4, !tbaa !2
  %399 = load float* %345, align 4, !tbaa !2
  %400 = fmul float %347, %383
  %401 = fadd float %399, %400
  %402 = fmul float %394, %380
  %403 = fadd float %401, %402
  store float %403, float* %196, align 4, !tbaa !2
  %404 = load float* %350, align 4, !tbaa !2
  %405 = fmul float %352, %383
  %406 = fadd float %405, %404
  %407 = fmul float %394, %382
  %408 = fadd float %406, %407
  store float %408, float* %198, align 4, !tbaa !2
  br label %550

; <label>:409                                     ; preds = %182
  %410 = getelementptr inbounds i32* %ia.07, i64 4
  %411 = load i32* %410, align 4, !tbaa !18
  %412 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 1
  %413 = load float* %412, align 4, !tbaa !35
  %414 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 2
  %415 = load float* %414, align 4, !tbaa !36
  %416 = sext i32 %187 to i64
  %417 = getelementptr inbounds [3 x float]* %x, i64 %416, i64 0
  %418 = sext i32 %189 to i64
  %419 = getelementptr inbounds [3 x float]* %x, i64 %418, i64 0
  %420 = sext i32 %411 to i64
  %421 = getelementptr inbounds [3 x float]* %x, i64 %420, i64 0
  %422 = load float* %419, align 4, !tbaa !2
  %423 = load float* %417, align 4, !tbaa !2
  %424 = fsub float %422, %423
  %425 = getelementptr inbounds [3 x float]* %x, i64 %418, i64 1
  %426 = load float* %425, align 4, !tbaa !2
  %427 = getelementptr inbounds [3 x float]* %x, i64 %416, i64 1
  %428 = load float* %427, align 4, !tbaa !2
  %429 = fsub float %426, %428
  %430 = getelementptr inbounds [3 x float]* %x, i64 %418, i64 2
  %431 = load float* %430, align 4, !tbaa !2
  %432 = getelementptr inbounds [3 x float]* %x, i64 %416, i64 2
  %433 = load float* %432, align 4, !tbaa !2
  %434 = fsub float %431, %433
  %435 = load float* %421, align 4, !tbaa !2
  %436 = fsub float %435, %423
  %437 = getelementptr inbounds [3 x float]* %x, i64 %420, i64 1
  %438 = load float* %437, align 4, !tbaa !2
  %439 = fsub float %438, %428
  %440 = getelementptr inbounds [3 x float]* %x, i64 %420, i64 2
  %441 = load float* %440, align 4, !tbaa !2
  %442 = fsub float %441, %433
  %443 = fmul float %429, %442
  %444 = fmul float %434, %439
  %445 = fsub float %443, %444
  %446 = fmul float %434, %436
  %447 = fmul float %424, %442
  %448 = fsub float %446, %447
  %449 = fmul float %424, %439
  %450 = fmul float %429, %436
  %451 = fsub float %449, %450
  %452 = fmul float %192, %424
  %453 = fadd float %423, %452
  %454 = fmul float %413, %436
  %455 = fadd float %453, %454
  %456 = fmul float %415, %445
  %457 = fadd float %455, %456
  store float %457, float* %194, align 4, !tbaa !2
  %458 = load float* %427, align 4, !tbaa !2
  %459 = fmul float %192, %429
  %460 = fadd float %459, %458
  %461 = fmul float %413, %439
  %462 = fadd float %461, %460
  %463 = fmul float %415, %448
  %464 = fadd float %462, %463
  store float %464, float* %196, align 4, !tbaa !2
  %465 = load float* %432, align 4, !tbaa !2
  %466 = fmul float %192, %434
  %467 = fadd float %466, %465
  %468 = fmul float %413, %442
  %469 = fadd float %468, %467
  %470 = fmul float %415, %451
  %471 = fadd float %470, %469
  store float %471, float* %198, align 4, !tbaa !2
  br label %550

; <label>:472                                     ; preds = %182
  %473 = getelementptr inbounds i32* %ia.07, i64 4
  %474 = load i32* %473, align 4, !tbaa !18
  %475 = getelementptr inbounds i32* %ia.07, i64 5
  %476 = load i32* %475, align 4, !tbaa !18
  %477 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 1
  %478 = load float* %477, align 4, !tbaa !35
  %479 = getelementptr inbounds %union.t_iparams* %162, i64 %190, i32 0, i32 2
  %480 = load float* %479, align 4, !tbaa !36
  %481 = sext i32 %187 to i64
  %482 = getelementptr inbounds [3 x float]* %x, i64 %481, i64 0
  %483 = sext i32 %189 to i64
  %484 = getelementptr inbounds [3 x float]* %x, i64 %483, i64 0
  %485 = sext i32 %474 to i64
  %486 = getelementptr inbounds [3 x float]* %x, i64 %485, i64 0
  %487 = sext i32 %476 to i64
  %488 = getelementptr inbounds [3 x float]* %x, i64 %487, i64 0
  %489 = load float* %484, align 4, !tbaa !2
  %490 = load float* %482, align 4, !tbaa !2
  %491 = fsub float %489, %490
  %492 = getelementptr inbounds [3 x float]* %x, i64 %483, i64 1
  %493 = load float* %492, align 4, !tbaa !2
  %494 = getelementptr inbounds [3 x float]* %x, i64 %481, i64 1
  %495 = load float* %494, align 4, !tbaa !2
  %496 = fsub float %493, %495
  %497 = getelementptr inbounds [3 x float]* %x, i64 %483, i64 2
  %498 = load float* %497, align 4, !tbaa !2
  %499 = getelementptr inbounds [3 x float]* %x, i64 %481, i64 2
  %500 = load float* %499, align 4, !tbaa !2
  %501 = fsub float %498, %500
  %502 = load float* %486, align 4, !tbaa !2
  %503 = fsub float %502, %489
  %504 = getelementptr inbounds [3 x float]* %x, i64 %485, i64 1
  %505 = load float* %504, align 4, !tbaa !2
  %506 = fsub float %505, %493
  %507 = getelementptr inbounds [3 x float]* %x, i64 %485, i64 2
  %508 = load float* %507, align 4, !tbaa !2
  %509 = fsub float %508, %498
  %510 = load float* %488, align 4, !tbaa !2
  %511 = fsub float %510, %489
  %512 = getelementptr inbounds [3 x float]* %x, i64 %487, i64 1
  %513 = load float* %512, align 4, !tbaa !2
  %514 = fsub float %513, %493
  %515 = getelementptr inbounds [3 x float]* %x, i64 %487, i64 2
  %516 = load float* %515, align 4, !tbaa !2
  %517 = fsub float %516, %498
  %518 = fmul float %192, %503
  %519 = fadd float %491, %518
  %520 = fmul float %478, %511
  %521 = fadd float %519, %520
  %522 = fmul float %192, %506
  %523 = fadd float %496, %522
  %524 = fmul float %478, %514
  %525 = fadd float %523, %524
  %526 = fmul float %192, %509
  %527 = fadd float %501, %526
  %528 = fmul float %478, %517
  %529 = fadd float %527, %528
  %530 = fpext float %480 to double
  %531 = fmul float %521, %521
  %532 = fmul float %525, %525
  %533 = fadd float %531, %532
  %534 = fmul float %529, %529
  %535 = fadd float %533, %534
  %536 = fpext float %535 to double
  %537 = tail call double @sqrt(double %536) #9
  %538 = fdiv double 1.000000e+00, %537
  %539 = fmul double %530, %538
  %540 = fptrunc double %539 to float
  %541 = fmul float %521, %540
  %542 = fadd float %490, %541
  store float %542, float* %194, align 4, !tbaa !2
  %543 = load float* %494, align 4, !tbaa !2
  %544 = fmul float %525, %540
  %545 = fadd float %543, %544
  store float %545, float* %196, align 4, !tbaa !2
  %546 = load float* %499, align 4, !tbaa !2
  %547 = fmul float %529, %540
  %548 = fadd float %546, %547
  store float %548, float* %198, align 4, !tbaa !2
  br label %550

; <label>:549                                     ; preds = %182
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %200, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 440) #8
  br label %550

; <label>:550                                     ; preds = %549, %472, %409, %329, %272, %226, %201
  br i1 %163, label %551, label %564

; <label>:551                                     ; preds = %550
  %552 = load float* %194, align 4, !tbaa !2
  %553 = fsub float %552, %195
  %554 = load float* %196, align 4, !tbaa !2
  %555 = fsub float %554, %197
  %556 = load float* %198, align 4, !tbaa !2
  %557 = fsub float %556, %199
  %558 = getelementptr inbounds [3 x float]* %v, i64 %193, i64 0
  %559 = fmul float %inv_dt.0, %553
  store float %559, float* %558, align 4, !tbaa !2
  %560 = fmul float %inv_dt.0, %555
  %561 = getelementptr inbounds [3 x float]* %v, i64 %193, i64 1
  store float %560, float* %561, align 4, !tbaa !2
  %562 = fmul float %inv_dt.0, %557
  %563 = getelementptr inbounds [3 x float]* %v, i64 %193, i64 2
  store float %562, float* %563, align 4, !tbaa !2
  br label %564

; <label>:564                                     ; preds = %551, %550
  %565 = add nsw i32 %i.06, %180
  %566 = getelementptr inbounds i32* %ia.07, i64 %181
  %567 = icmp slt i32 %565, %174
  br i1 %567, label %182, label %.loopexit

.loopexit:                                        ; preds = %564, %172, %167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond10, label %568, label %167

; <label>:568                                     ; preds = %.loopexit
  br i1 %1, label %569, label %646

; <label>:569                                     ; preds = %568
  tail call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #8
  %570 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %571 = load i32* %570, align 4, !tbaa !8
  %572 = mul i32 %571, 12
  %573 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %574 = load i32* %573, align 4, !tbaa !14
  %575 = mul i32 %574, 12
  %576 = icmp sgt i32 %571, 0
  br i1 %576, label %.lr.ph4.i, label %._crit_edge5.thread.i

.lr.ph4.i:                                        ; preds = %569
  %577 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %578 = load i32** %577, align 8, !tbaa !23
  %579 = load [3 x float]** @nextbuf, align 8, !tbaa !13
  %580 = sext i32 %571 to i64
  %581 = add nsw i64 %580, -1
  %582 = bitcast [3 x float]* %579 to i8*
  br label %583

; <label>:583                                     ; preds = %583, %.lr.ph4.i
  %indvars.iv6.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next7.i, %583 ]
  %584 = getelementptr inbounds i32* %578, i64 %indvars.iv6.i
  %585 = load i32* %584, align 4, !tbaa !18
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [3 x float]* %x, i64 %586, i64 0
  %588 = getelementptr inbounds [3 x float]* %579, i64 %indvars.iv6.i, i64 0
  %589 = bitcast float* %587 to i32*
  %590 = load i32* %589, align 4, !tbaa !2
  %591 = bitcast float* %588 to i32*
  store i32 %590, i32* %591, align 4, !tbaa !2
  %592 = getelementptr inbounds [3 x float]* %x, i64 %586, i64 1
  %593 = bitcast float* %592 to i32*
  %594 = load i32* %593, align 4, !tbaa !2
  %595 = getelementptr inbounds [3 x float]* %579, i64 %indvars.iv6.i, i64 1
  %596 = bitcast float* %595 to i32*
  store i32 %594, i32* %596, align 4, !tbaa !2
  %597 = getelementptr inbounds [3 x float]* %x, i64 %586, i64 2
  %598 = bitcast float* %597 to i32*
  %599 = load i32* %598, align 4, !tbaa !2
  %600 = getelementptr inbounds [3 x float]* %579, i64 %indvars.iv6.i, i64 2
  %601 = bitcast float* %600 to i32*
  store i32 %599, i32* %601, align 4, !tbaa !2
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond9 = icmp eq i64 %indvars.iv6.i, %581
  br i1 %exitcond9, label %._crit_edge5.i, label %583

._crit_edge5.i:                                   ; preds = %583
  %602 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %603 = load i32* %602, align 4, !tbaa !21
  tail call void @gmx_tx(i32 %603, i8* %582, i32 %572) #8
  %.pre.i1 = load i32* %573, align 4, !tbaa !14
  br label %._crit_edge5.thread.i

._crit_edge5.thread.i:                            ; preds = %._crit_edge5.i, %569
  %604 = phi i32 [ %.pre.i1, %._crit_edge5.i ], [ %574, %569 ]
  %605 = icmp sgt i32 %604, 0
  br i1 %605, label %606, label %610

; <label>:606                                     ; preds = %._crit_edge5.thread.i
  %607 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %608 = load i32* %607, align 4, !tbaa !19
  %609 = load i8** bitcast ([3 x float]** @prevbuf to i8**), align 8, !tbaa !13
  tail call void @gmx_rx(i32 %608, i8* %609, i32 %575) #8
  br label %610

; <label>:610                                     ; preds = %606, %._crit_edge5.thread.i
  %611 = load i32* %570, align 4, !tbaa !8
  %612 = icmp sgt i32 %611, 0
  br i1 %612, label %613, label %616

; <label>:613                                     ; preds = %610
  %614 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %615 = load i32* %614, align 4, !tbaa !21
  tail call void @gmx_tx_wait(i32 %615) #8
  br label %616

; <label>:616                                     ; preds = %613, %610
  %617 = load i32* %573, align 4, !tbaa !14
  %618 = icmp sgt i32 %617, 0
  br i1 %618, label %.preheader.i2, label %move_dummy_xv.exit

.preheader.i2:                                    ; preds = %616
  %619 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %620 = load i32* %619, align 4, !tbaa !19
  tail call void @gmx_rx_wait(i32 %620) #8
  %.pre8.i = load i32* %573, align 4, !tbaa !14
  %621 = icmp sgt i32 %.pre8.i, 0
  br i1 %621, label %.lr.ph.i3, label %move_dummy_xv.exit

.lr.ph.i3:                                        ; preds = %.preheader.i2
  %622 = load [3 x float]** @prevbuf, align 8, !tbaa !13
  %623 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %624 = load i32** %623, align 8, !tbaa !17
  %625 = sext i32 %.pre8.i to i64
  %626 = add nsw i64 %625, -1
  br label %627

; <label>:627                                     ; preds = %627, %.lr.ph.i3
  %indvars.iv.i4 = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i5, %627 ]
  %628 = getelementptr inbounds [3 x float]* %622, i64 %indvars.iv.i4, i64 0
  %629 = getelementptr inbounds i32* %624, i64 %indvars.iv.i4
  %630 = load i32* %629, align 4, !tbaa !18
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [3 x float]* %x, i64 %631, i64 0
  %633 = bitcast float* %628 to i32*
  %634 = load i32* %633, align 4, !tbaa !2
  %635 = bitcast float* %632 to i32*
  store i32 %634, i32* %635, align 4, !tbaa !2
  %636 = getelementptr inbounds [3 x float]* %622, i64 %indvars.iv.i4, i64 1
  %637 = bitcast float* %636 to i32*
  %638 = load i32* %637, align 4, !tbaa !2
  %639 = getelementptr inbounds [3 x float]* %x, i64 %631, i64 1
  %640 = bitcast float* %639 to i32*
  store i32 %638, i32* %640, align 4, !tbaa !2
  %641 = getelementptr inbounds [3 x float]* %622, i64 %indvars.iv.i4, i64 2
  %642 = bitcast float* %641 to i32*
  %643 = load i32* %642, align 4, !tbaa !2
  %644 = getelementptr inbounds [3 x float]* %x, i64 %631, i64 2
  %645 = bitcast float* %644 to i32*
  store i32 %643, i32* %645, align 4, !tbaa !2
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1
  %exitcond = icmp eq i64 %indvars.iv.i4, %626
  br i1 %exitcond, label %move_dummy_xv.exit, label %627

move_dummy_xv.exit:                               ; preds = %627, %616, %.preheader.i2
  tail call void @shift_self(%struct.t_graph* %graph, [3 x float]* %box, [3 x float]* %x) #8
  br label %646

; <label>:646                                     ; preds = %move_dummy_xv.exit, %568
  ret void
}

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @spread_dummy_f(%struct.__sFILE* nocapture readnone %log, [3 x float]* nocapture readonly %x, [3 x float]* %f, %struct.t_nrnb* nocapture %nrnb, %struct.t_idef* nocapture readonly %idef, %struct.t_comm_dummies* readonly %dummycomm, %struct.t_commrec* nocapture readonly %cr) #4 {
  %f1.i = alloca [3 x float], align 4
  %f2.i = alloca [3 x float], align 4
  %1 = icmp ne %struct.t_comm_dummies* %dummycomm, null
  br i1 %1, label %2, label %move_dummy_f.exit

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !14
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph8.i, label %._crit_edge9.thread.i

.lr.ph8.i:                                        ; preds = %2
  %6 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %7 = load i32** %6, align 8, !tbaa !17
  %8 = load [3 x float]** @prevbuf, align 8, !tbaa !13
  %9 = sext i32 %4 to i64
  %10 = add nsw i64 %9, -1
  %11 = bitcast [3 x float]* %8 to i8*
  br label %12

; <label>:12                                      ; preds = %12, %.lr.ph8.i
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next14.i, %12 ]
  %13 = getelementptr inbounds i32* %7, i64 %indvars.iv13.i
  %14 = load i32* %13, align 4, !tbaa !18
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x float]* %f, i64 %15, i64 0
  %17 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv13.i, i64 0
  %18 = bitcast float* %16 to i32*
  %19 = load i32* %18, align 4, !tbaa !2
  %20 = bitcast float* %17 to i32*
  store i32 %19, i32* %20, align 4, !tbaa !2
  %21 = getelementptr inbounds [3 x float]* %f, i64 %15, i64 1
  %22 = bitcast float* %21 to i32*
  %23 = load i32* %22, align 4, !tbaa !2
  %24 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv13.i, i64 1
  %25 = bitcast float* %24 to i32*
  store i32 %23, i32* %25, align 4, !tbaa !2
  %26 = getelementptr inbounds [3 x float]* %f, i64 %15, i64 2
  %27 = bitcast float* %26 to i32*
  %28 = load i32* %27, align 4, !tbaa !2
  %29 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv13.i, i64 2
  %30 = bitcast float* %29 to i32*
  store i32 %28, i32* %30, align 4, !tbaa !2
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond52 = icmp eq i64 %indvars.iv13.i, %10
  br i1 %exitcond52, label %._crit_edge9.i, label %12

._crit_edge9.i:                                   ; preds = %12
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %32 = load i32* %31, align 4, !tbaa !19
  %33 = mul i32 %4, 12
  tail call void @gmx_tx(i32 %32, i8* %11, i32 %33) #8
  br label %._crit_edge9.thread.i

._crit_edge9.thread.i:                            ; preds = %._crit_edge9.i, %2
  %34 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %35 = load i32* %34, align 4, !tbaa !8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

; <label>:37                                      ; preds = %._crit_edge9.thread.i
  %38 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %39 = load i32* %38, align 4, !tbaa !21
  %40 = load i8** bitcast ([3 x float]** @nextbuf to i8**), align 8, !tbaa !13
  %41 = mul i32 %35, 12
  tail call void @gmx_rx(i32 %39, i8* %40, i32 %41) #8
  br label %42

; <label>:42                                      ; preds = %37, %._crit_edge9.thread.i
  %43 = load i32* %3, align 4, !tbaa !14
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %47 = load i32* %46, align 4, !tbaa !19
  tail call void @gmx_tx_wait(i32 %47) #8
  br label %48

; <label>:48                                      ; preds = %45, %42
  %49 = load i32* %34, align 4, !tbaa !8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %.preheader1.i, label %.preheader.i

.preheader1.i:                                    ; preds = %48
  %51 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %52 = load i32* %51, align 4, !tbaa !21
  tail call void @gmx_rx_wait(i32 %52) #8
  %.pre.i = load i32* %34, align 4, !tbaa !8
  %53 = icmp sgt i32 %.pre.i, 0
  br i1 %53, label %.lr.ph5.i, label %.preheader.i

.lr.ph5.i:                                        ; preds = %.preheader1.i
  %54 = load [3 x float]** @nextbuf, align 8, !tbaa !13
  %55 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  %56 = load i32** %55, align 8, !tbaa !23
  %57 = sext i32 %.pre.i to i64
  %58 = add nsw i64 %57, -1
  br label %66

.preheader.i:                                     ; preds = %66, %.preheader1.i, %48
  %59 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %60 = load i32* %59, align 4, !tbaa !12
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %.lr.ph.i, label %move_dummy_f.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %62 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %63 = load i32** %62, align 8, !tbaa !22
  %64 = sext i32 %60 to i64
  %65 = add nsw i64 %64, -1
  br label %85

; <label>:66                                      ; preds = %66, %.lr.ph5.i
  %indvars.iv11.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next12.i, %66 ]
  %67 = getelementptr inbounds [3 x float]* %54, i64 %indvars.iv11.i, i64 0
  %68 = getelementptr inbounds i32* %56, i64 %indvars.iv11.i
  %69 = load i32* %68, align 4, !tbaa !18
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x float]* %f, i64 %70, i64 0
  %72 = bitcast float* %67 to i32*
  %73 = load i32* %72, align 4, !tbaa !2
  %74 = bitcast float* %71 to i32*
  store i32 %73, i32* %74, align 4, !tbaa !2
  %75 = getelementptr inbounds [3 x float]* %54, i64 %indvars.iv11.i, i64 1
  %76 = bitcast float* %75 to i32*
  %77 = load i32* %76, align 4, !tbaa !2
  %78 = getelementptr inbounds [3 x float]* %f, i64 %70, i64 1
  %79 = bitcast float* %78 to i32*
  store i32 %77, i32* %79, align 4, !tbaa !2
  %80 = getelementptr inbounds [3 x float]* %54, i64 %indvars.iv11.i, i64 2
  %81 = bitcast float* %80 to i32*
  %82 = load i32* %81, align 4, !tbaa !2
  %83 = getelementptr inbounds [3 x float]* %f, i64 %70, i64 2
  %84 = bitcast float* %83 to i32*
  store i32 %82, i32* %84, align 4, !tbaa !2
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond51 = icmp eq i64 %indvars.iv11.i, %58
  br i1 %exitcond51, label %.preheader.i, label %66

; <label>:85                                      ; preds = %85, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %85 ]
  %86 = getelementptr inbounds i32* %63, i64 %indvars.iv.i
  %87 = load i32* %86, align 4, !tbaa !18
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 0
  store float 0.000000e+00, float* %89, align 4, !tbaa !2
  %90 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 1
  store float 0.000000e+00, float* %90, align 4, !tbaa !2
  %91 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 2
  store float 0.000000e+00, float* %91, align 4, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond50 = icmp eq i64 %indvars.iv.i, %65
  br i1 %exitcond50, label %move_dummy_f.exit, label %85

move_dummy_f.exit:                                ; preds = %85, %.preheader.i, %0
  %92 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %93 = load %union.t_iparams** %92, align 8, !tbaa !24
  %94 = bitcast [3 x float]* %f1.i to i8*
  %95 = bitcast [3 x float]* %f2.i to i8*
  %96 = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 0
  %97 = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 1
  %98 = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 2
  %99 = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 0
  %100 = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 1
  %101 = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 2
  br label %102

; <label>:102                                     ; preds = %move_dummy_f.exit, %.loopexit
  %indvars.iv = phi i64 [ 43, %move_dummy_f.exit ], [ %indvars.iv.next, %.loopexit ]
  %nd2.046 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd2.3, %.loopexit ]
  %nd4FD.045 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd4FD.3, %.loopexit ]
  %nd3OUT.044 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd3OUT.3, %.loopexit ]
  %nd3FAD.043 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd3FAD.3, %.loopexit ]
  %nd3FD.042 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd3FD.3, %.loopexit ]
  %nd3.041 = phi i32 [ 0, %move_dummy_f.exit ], [ %nd3.3, %.loopexit ]
  %103 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %104 = load i64* %103, align 8, !tbaa !26
  %105 = and i64 %104, 2
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %.loopexit, label %107

; <label>:107                                     ; preds = %102
  %108 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %109 = load i32* %108, align 4, !tbaa !29
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %107
  %111 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %112 = load i32** %111, align 8, !tbaa !31
  %113 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %114 = load i32* %113, align 8, !tbaa !32
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  br label %117

; <label>:117                                     ; preds = %.lr.ph, %729
  %ia.035 = phi i32* [ %112, %.lr.ph ], [ %731, %729 ]
  %i.034 = phi i32 [ 0, %.lr.ph ], [ %730, %729 ]
  %nd2.133 = phi i32 [ %nd2.046, %.lr.ph ], [ %nd2.2, %729 ]
  %nd4FD.132 = phi i32 [ %nd4FD.045, %.lr.ph ], [ %nd4FD.2, %729 ]
  %nd3OUT.131 = phi i32 [ %nd3OUT.044, %.lr.ph ], [ %nd3OUT.2, %729 ]
  %nd3FAD.130 = phi i32 [ %nd3FAD.043, %.lr.ph ], [ %nd3FAD.2, %729 ]
  %nd3FD.129 = phi i32 [ %nd3FD.042, %.lr.ph ], [ %nd3FD.2, %729 ]
  %nd3.128 = phi i32 [ %nd3.041, %.lr.ph ], [ %nd3.2, %729 ]
  %118 = load i32* %ia.035, align 4, !tbaa !18
  %119 = getelementptr inbounds i32* %ia.035, i64 1
  %120 = load i32* %119, align 4, !tbaa !18
  %121 = getelementptr inbounds i32* %ia.035, i64 2
  %122 = load i32* %121, align 4, !tbaa !18
  %123 = getelementptr inbounds i32* %ia.035, i64 3
  %124 = load i32* %123, align 4, !tbaa !18
  %125 = sext i32 %118 to i64
  %126 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 0
  %127 = load float* %126, align 4, !tbaa !33
  %128 = trunc i64 %indvars.iv to i32
  switch i32 %128, label %728 [
    i32 30, label %129
    i32 31, label %165
    i32 32, label %222
    i32 33, label %331
    i32 34, label %496
    i32 35, label %586
  ]

; <label>:129                                     ; preds = %117
  %130 = sext i32 %122 to i64
  %131 = getelementptr inbounds [3 x float]* %f, i64 %130, i64 0
  %132 = sext i32 %124 to i64
  %133 = getelementptr inbounds [3 x float]* %f, i64 %132, i64 0
  %134 = sext i32 %120 to i64
  %135 = getelementptr inbounds [3 x float]* %f, i64 %134, i64 0
  %136 = fsub float 1.000000e+00, %127
  %137 = load float* %135, align 4, !tbaa !2
  %138 = getelementptr inbounds [3 x float]* %f, i64 %134, i64 1
  %139 = load float* %138, align 4, !tbaa !2
  %140 = getelementptr inbounds [3 x float]* %f, i64 %134, i64 2
  %141 = load float* %140, align 4, !tbaa !2
  %142 = fmul float %136, %137
  %143 = load float* %131, align 4, !tbaa !2
  %144 = fadd float %142, %143
  store float %144, float* %131, align 4, !tbaa !2
  %145 = fmul float %136, %139
  %146 = getelementptr inbounds [3 x float]* %f, i64 %130, i64 1
  %147 = load float* %146, align 4, !tbaa !2
  %148 = fadd float %145, %147
  store float %148, float* %146, align 4, !tbaa !2
  %149 = fmul float %136, %141
  %150 = getelementptr inbounds [3 x float]* %f, i64 %130, i64 2
  %151 = load float* %150, align 4, !tbaa !2
  %152 = fadd float %149, %151
  store float %152, float* %150, align 4, !tbaa !2
  %153 = fmul float %127, %137
  %154 = load float* %133, align 4, !tbaa !2
  %155 = fadd float %153, %154
  store float %155, float* %133, align 4, !tbaa !2
  %156 = fmul float %127, %139
  %157 = getelementptr inbounds [3 x float]* %f, i64 %132, i64 1
  %158 = load float* %157, align 4, !tbaa !2
  %159 = fadd float %156, %158
  store float %159, float* %157, align 4, !tbaa !2
  %160 = fmul float %127, %141
  %161 = getelementptr inbounds [3 x float]* %f, i64 %132, i64 2
  %162 = load float* %161, align 4, !tbaa !2
  %163 = fadd float %160, %162
  store float %163, float* %161, align 4, !tbaa !2
  %164 = add nsw i32 %nd2.133, 1
  br label %729

; <label>:165                                     ; preds = %117
  %166 = getelementptr inbounds i32* %ia.035, i64 4
  %167 = load i32* %166, align 4, !tbaa !18
  %168 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 1
  %169 = load float* %168, align 4, !tbaa !35
  %170 = sext i32 %122 to i64
  %171 = getelementptr inbounds [3 x float]* %f, i64 %170, i64 0
  %172 = sext i32 %124 to i64
  %173 = getelementptr inbounds [3 x float]* %f, i64 %172, i64 0
  %174 = sext i32 %167 to i64
  %175 = getelementptr inbounds [3 x float]* %f, i64 %174, i64 0
  %176 = sext i32 %120 to i64
  %177 = getelementptr inbounds [3 x float]* %f, i64 %176, i64 0
  %178 = fpext float %127 to double
  %179 = fsub double 1.000000e+00, %178
  %180 = fpext float %169 to double
  %181 = fsub double %179, %180
  %182 = fptrunc double %181 to float
  %183 = load float* %177, align 4, !tbaa !2
  %184 = getelementptr inbounds [3 x float]* %f, i64 %176, i64 1
  %185 = load float* %184, align 4, !tbaa !2
  %186 = getelementptr inbounds [3 x float]* %f, i64 %176, i64 2
  %187 = load float* %186, align 4, !tbaa !2
  %188 = fmul float %183, %182
  %189 = load float* %171, align 4, !tbaa !2
  %190 = fadd float %188, %189
  store float %190, float* %171, align 4, !tbaa !2
  %191 = fmul float %185, %182
  %192 = getelementptr inbounds [3 x float]* %f, i64 %170, i64 1
  %193 = load float* %192, align 4, !tbaa !2
  %194 = fadd float %191, %193
  store float %194, float* %192, align 4, !tbaa !2
  %195 = fmul float %182, %187
  %196 = getelementptr inbounds [3 x float]* %f, i64 %170, i64 2
  %197 = load float* %196, align 4, !tbaa !2
  %198 = fadd float %195, %197
  store float %198, float* %196, align 4, !tbaa !2
  %199 = fmul float %127, %183
  %200 = load float* %173, align 4, !tbaa !2
  %201 = fadd float %199, %200
  store float %201, float* %173, align 4, !tbaa !2
  %202 = fmul float %127, %185
  %203 = getelementptr inbounds [3 x float]* %f, i64 %172, i64 1
  %204 = load float* %203, align 4, !tbaa !2
  %205 = fadd float %202, %204
  store float %205, float* %203, align 4, !tbaa !2
  %206 = fmul float %127, %187
  %207 = getelementptr inbounds [3 x float]* %f, i64 %172, i64 2
  %208 = load float* %207, align 4, !tbaa !2
  %209 = fadd float %206, %208
  store float %209, float* %207, align 4, !tbaa !2
  %210 = fmul float %169, %183
  %211 = load float* %175, align 4, !tbaa !2
  %212 = fadd float %210, %211
  store float %212, float* %175, align 4, !tbaa !2
  %213 = fmul float %169, %185
  %214 = getelementptr inbounds [3 x float]* %f, i64 %174, i64 1
  %215 = load float* %214, align 4, !tbaa !2
  %216 = fadd float %213, %215
  store float %216, float* %214, align 4, !tbaa !2
  %217 = fmul float %169, %187
  %218 = getelementptr inbounds [3 x float]* %f, i64 %174, i64 2
  %219 = load float* %218, align 4, !tbaa !2
  %220 = fadd float %217, %219
  store float %220, float* %218, align 4, !tbaa !2
  %221 = add nsw i32 %nd3.128, 1
  br label %729

; <label>:222                                     ; preds = %117
  %223 = getelementptr inbounds i32* %ia.035, i64 4
  %224 = load i32* %223, align 4, !tbaa !18
  %225 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 1
  %226 = load float* %225, align 4, !tbaa !35
  %227 = sext i32 %122 to i64
  %228 = getelementptr inbounds [3 x float]* %x, i64 %227, i64 0
  %229 = sext i32 %124 to i64
  %230 = getelementptr inbounds [3 x float]* %x, i64 %229, i64 0
  %231 = sext i32 %224 to i64
  %232 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 0
  %233 = getelementptr inbounds [3 x float]* %f, i64 %227, i64 0
  %234 = getelementptr inbounds [3 x float]* %f, i64 %229, i64 0
  %235 = getelementptr inbounds [3 x float]* %f, i64 %231, i64 0
  %236 = sext i32 %120 to i64
  %237 = getelementptr inbounds [3 x float]* %f, i64 %236, i64 0
  %238 = load float* %230, align 4, !tbaa !2
  %239 = load float* %228, align 4, !tbaa !2
  %240 = fsub float %238, %239
  %241 = getelementptr inbounds [3 x float]* %x, i64 %229, i64 1
  %242 = load float* %241, align 4, !tbaa !2
  %243 = getelementptr inbounds [3 x float]* %x, i64 %227, i64 1
  %244 = load float* %243, align 4, !tbaa !2
  %245 = fsub float %242, %244
  %246 = getelementptr inbounds [3 x float]* %x, i64 %229, i64 2
  %247 = load float* %246, align 4, !tbaa !2
  %248 = getelementptr inbounds [3 x float]* %x, i64 %227, i64 2
  %249 = load float* %248, align 4, !tbaa !2
  %250 = fsub float %247, %249
  %251 = load float* %232, align 4, !tbaa !2
  %252 = fsub float %251, %238
  %253 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 1
  %254 = load float* %253, align 4, !tbaa !2
  %255 = fsub float %254, %242
  %256 = getelementptr inbounds [3 x float]* %x, i64 %231, i64 2
  %257 = load float* %256, align 4, !tbaa !2
  %258 = fsub float %257, %247
  %259 = fmul float %127, %252
  %260 = fadd float %240, %259
  %261 = fmul float %127, %255
  %262 = fadd float %245, %261
  %263 = fmul float %127, %258
  %264 = fadd float %250, %263
  %265 = fmul float %260, %260
  %266 = fmul float %262, %262
  %267 = fadd float %265, %266
  %268 = fmul float %264, %264
  %269 = fadd float %267, %268
  %270 = fpext float %269 to double
  %271 = tail call double @sqrt(double %270) #9
  %272 = fdiv double 1.000000e+00, %271
  %273 = fptrunc double %272 to float
  %274 = fmul float %226, %273
  %275 = load float* %237, align 4, !tbaa !2
  %276 = fmul float %260, %275
  %277 = getelementptr inbounds [3 x float]* %f, i64 %236, i64 1
  %278 = load float* %277, align 4, !tbaa !2
  %279 = fmul float %262, %278
  %280 = fadd float %276, %279
  %281 = getelementptr inbounds [3 x float]* %f, i64 %236, i64 2
  %282 = load float* %281, align 4, !tbaa !2
  %283 = fmul float %264, %282
  %284 = fadd float %280, %283
  %285 = fmul float %273, %284
  %286 = fmul float %273, %285
  %287 = fmul float %260, %286
  %288 = fsub float %275, %287
  %289 = fmul float %274, %288
  %290 = fmul float %262, %286
  %291 = fsub float %278, %290
  %292 = fmul float %274, %291
  %293 = fmul float %264, %286
  %294 = fsub float %282, %293
  %295 = fmul float %274, %294
  %296 = fsub float 1.000000e+00, %127
  %297 = fsub float %275, %289
  %298 = load float* %233, align 4, !tbaa !2
  %299 = fadd float %298, %297
  store float %299, float* %233, align 4, !tbaa !2
  %300 = fsub float %278, %292
  %301 = getelementptr inbounds [3 x float]* %f, i64 %227, i64 1
  %302 = load float* %301, align 4, !tbaa !2
  %303 = fadd float %302, %300
  store float %303, float* %301, align 4, !tbaa !2
  %304 = fsub float %282, %295
  %305 = getelementptr inbounds [3 x float]* %f, i64 %227, i64 2
  %306 = load float* %305, align 4, !tbaa !2
  %307 = fadd float %306, %304
  store float %307, float* %305, align 4, !tbaa !2
  %308 = fmul float %296, %289
  %309 = load float* %234, align 4, !tbaa !2
  %310 = fadd float %309, %308
  store float %310, float* %234, align 4, !tbaa !2
  %311 = fmul float %296, %292
  %312 = getelementptr inbounds [3 x float]* %f, i64 %229, i64 1
  %313 = load float* %312, align 4, !tbaa !2
  %314 = fadd float %313, %311
  store float %314, float* %312, align 4, !tbaa !2
  %315 = fmul float %296, %295
  %316 = getelementptr inbounds [3 x float]* %f, i64 %229, i64 2
  %317 = load float* %316, align 4, !tbaa !2
  %318 = fadd float %317, %315
  store float %318, float* %316, align 4, !tbaa !2
  %319 = fmul float %127, %289
  %320 = load float* %235, align 4, !tbaa !2
  %321 = fadd float %320, %319
  store float %321, float* %235, align 4, !tbaa !2
  %322 = fmul float %127, %292
  %323 = getelementptr inbounds [3 x float]* %f, i64 %231, i64 1
  %324 = load float* %323, align 4, !tbaa !2
  %325 = fadd float %324, %322
  store float %325, float* %323, align 4, !tbaa !2
  %326 = fmul float %127, %295
  %327 = getelementptr inbounds [3 x float]* %f, i64 %231, i64 2
  %328 = load float* %327, align 4, !tbaa !2
  %329 = fadd float %326, %328
  store float %329, float* %327, align 4, !tbaa !2
  %330 = add nsw i32 %nd3FD.129, 1
  br label %729

; <label>:331                                     ; preds = %117
  %332 = getelementptr inbounds i32* %ia.035, i64 4
  %333 = load i32* %332, align 4, !tbaa !18
  %334 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 1
  %335 = load float* %334, align 4, !tbaa !35
  %336 = sext i32 %122 to i64
  %337 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 0
  %338 = sext i32 %124 to i64
  %339 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 0
  %340 = sext i32 %333 to i64
  %341 = getelementptr inbounds [3 x float]* %x, i64 %340, i64 0
  %342 = getelementptr inbounds [3 x float]* %f, i64 %338, i64 0
  %343 = sext i32 %120 to i64
  %344 = getelementptr inbounds [3 x float]* %f, i64 %343, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %94)
  call void @llvm.lifetime.start(i64 12, i8* %95)
  %345 = load float* %339, align 4, !tbaa !2
  %346 = load float* %337, align 4, !tbaa !2
  %347 = fsub float %345, %346
  %348 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 1
  %349 = load float* %348, align 4, !tbaa !2
  %350 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 1
  %351 = load float* %350, align 4, !tbaa !2
  %352 = fsub float %349, %351
  %353 = getelementptr inbounds [3 x float]* %x, i64 %338, i64 2
  %354 = load float* %353, align 4, !tbaa !2
  %355 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 2
  %356 = load float* %355, align 4, !tbaa !2
  %357 = fsub float %354, %356
  %358 = load float* %341, align 4, !tbaa !2
  %359 = fsub float %358, %345
  %360 = getelementptr inbounds [3 x float]* %x, i64 %340, i64 1
  %361 = load float* %360, align 4, !tbaa !2
  %362 = fsub float %361, %349
  %363 = getelementptr inbounds [3 x float]* %x, i64 %340, i64 2
  %364 = load float* %363, align 4, !tbaa !2
  %365 = fsub float %364, %354
  %366 = fmul float %347, %347
  %367 = fmul float %352, %352
  %368 = fadd float %366, %367
  %369 = fmul float %357, %357
  %370 = fadd float %368, %369
  %371 = fpext float %370 to double
  %372 = tail call double @sqrt(double %371) #9
  %373 = fdiv double 1.000000e+00, %372
  %374 = fptrunc double %373 to float
  %375 = fmul float %374, %374
  %376 = fmul float %347, %359
  %377 = fmul float %352, %362
  %378 = fadd float %376, %377
  %379 = fmul float %357, %365
  %380 = fadd float %378, %379
  %381 = fmul float %380, %375
  %382 = fmul float %347, %381
  %383 = fsub float %359, %382
  %384 = fmul float %352, %381
  %385 = fsub float %362, %384
  %386 = fmul float %357, %381
  %387 = fsub float %365, %386
  %388 = fmul float %383, %383
  %389 = fmul float %385, %385
  %390 = fadd float %388, %389
  %391 = fmul float %387, %387
  %392 = fadd float %391, %390
  %393 = fpext float %392 to double
  %394 = tail call double @sqrt(double %393) #9
  %395 = fdiv double 1.000000e+00, %394
  %396 = fptrunc double %395 to float
  %397 = fmul float %127, %374
  %398 = fmul float %335, %396
  %399 = load float* %344, align 4, !tbaa !2
  %400 = fmul float %347, %399
  %401 = getelementptr inbounds [3 x float]* %f, i64 %343, i64 1
  %402 = load float* %401, align 4, !tbaa !2
  %403 = fmul float %352, %402
  %404 = fadd float %400, %403
  %405 = getelementptr inbounds [3 x float]* %f, i64 %343, i64 2
  %406 = load float* %405, align 4, !tbaa !2
  %407 = fmul float %357, %406
  %408 = fadd float %404, %407
  %409 = fmul float %375, %408
  %410 = fmul float %347, %409
  %411 = fmul float %352, %409
  %412 = fmul float %357, %409
  %413 = fmul float %399, %383
  %414 = fmul float %402, %385
  %415 = fadd float %413, %414
  %416 = fmul float %387, %406
  %417 = fadd float %416, %415
  %418 = fmul float %396, %417
  %419 = fmul float %396, %418
  %420 = fmul float %383, %419
  %421 = fmul float %385, %419
  %422 = fmul float %387, %419
  %423 = fmul float %398, %409
  %424 = fsub float %399, %410
  %425 = fsub float %402, %411
  %426 = fsub float %406, %412
  store float %425, float* %97, align 4, !tbaa !2
  store float %426, float* %98, align 4, !tbaa !2
  %427 = fsub float %424, %420
  %428 = fsub float %425, %421
  %429 = fsub float %426, %422
  store float %428, float* %100, align 4, !tbaa !2
  store float %429, float* %101, align 4, !tbaa !2
  %430 = fmul float %397, %424
  store float %430, float* %96, align 4, !tbaa !2
  %431 = fmul float %398, %427
  store float %431, float* %99, align 4, !tbaa !2
  %.phi.trans.insert.i61 = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 1
  %.phi.trans.insert2.i62 = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 1
  %432 = fmul float %397, %425
  store float %432, float* %.phi.trans.insert.i61, align 4, !tbaa !2
  %433 = fmul float %398, %428
  store float %433, float* %.phi.trans.insert2.i62, align 4, !tbaa !2
  br label %._crit_edge.i.._crit_edge.i_crit_edge

._crit_edge.i.._crit_edge.i_crit_edge:            ; preds = %331, %._crit_edge.i.._crit_edge.i_crit_edge
  %indvars.iv.next.i263 = phi i64 [ 2, %331 ], [ %indvars.iv.next.i2, %._crit_edge.i.._crit_edge.i_crit_edge ]
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i263
  %.pre.i3.pre = load float* %.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !2
  %.phi.trans.insert2.i.phi.trans.insert = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i263
  %.pre3.i.pre = load float* %.phi.trans.insert2.i.phi.trans.insert, align 4, !tbaa !2
  %.phi.trans.insert.i = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i263
  %.phi.trans.insert2.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i263
  %434 = fmul float %397, %.pre.i3.pre
  store float %434, float* %.phi.trans.insert.i, align 4, !tbaa !2
  %435 = fmul float %398, %.pre3.i.pre
  store float %435, float* %.phi.trans.insert2.i, align 4, !tbaa !2
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.next.i263, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i2, 3
  br i1 %exitcond.i, label %spread_dum3FAD.exit, label %._crit_edge.i.._crit_edge.i_crit_edge

spread_dum3FAD.exit:                              ; preds = %._crit_edge.i.._crit_edge.i_crit_edge
  %436 = getelementptr inbounds [3 x float]* %f, i64 %336, i64 0
  %437 = getelementptr inbounds [3 x float]* %f, i64 %340, i64 0
  %438 = fmul float %385, %423
  %439 = fmul float %383, %423
  %440 = fmul float %387, %423
  %441 = fadd float %381, 1.000000e+00
  %442 = load float* %96, align 4, !tbaa !2
  %443 = fsub float %399, %442
  %444 = load float* %99, align 4, !tbaa !2
  %445 = fmul float %381, %444
  %446 = fadd float %443, %445
  %447 = fadd float %439, %446
  %448 = load float* %436, align 4, !tbaa !2
  %449 = fadd float %448, %447
  store float %449, float* %436, align 4, !tbaa !2
  %450 = load float* %401, align 4, !tbaa !2
  %451 = load float* %97, align 4, !tbaa !2
  %452 = fsub float %450, %451
  %453 = load float* %100, align 4, !tbaa !2
  %454 = fmul float %381, %453
  %455 = fadd float %452, %454
  %456 = fadd float %438, %455
  %457 = getelementptr inbounds [3 x float]* %f, i64 %336, i64 1
  %458 = load float* %457, align 4, !tbaa !2
  %459 = fadd float %458, %456
  store float %459, float* %457, align 4, !tbaa !2
  %460 = load float* %405, align 4, !tbaa !2
  %461 = load float* %98, align 4, !tbaa !2
  %462 = fsub float %460, %461
  %463 = load float* %101, align 4, !tbaa !2
  %464 = fmul float %381, %463
  %465 = fadd float %462, %464
  %466 = fadd float %440, %465
  %467 = getelementptr inbounds [3 x float]* %f, i64 %336, i64 2
  %468 = load float* %467, align 4, !tbaa !2
  %469 = fadd float %468, %466
  store float %469, float* %467, align 4, !tbaa !2
  %470 = fmul float %441, %444
  %471 = fsub float %442, %470
  %472 = fsub float %471, %439
  %473 = load float* %342, align 4, !tbaa !2
  %474 = fadd float %472, %473
  store float %474, float* %342, align 4, !tbaa !2
  %475 = fmul float %441, %453
  %476 = fsub float %451, %475
  %477 = fsub float %476, %438
  %478 = getelementptr inbounds [3 x float]* %f, i64 %338, i64 1
  %479 = load float* %478, align 4, !tbaa !2
  %480 = fadd float %477, %479
  store float %480, float* %478, align 4, !tbaa !2
  %481 = fmul float %441, %463
  %482 = fsub float %461, %481
  %483 = fsub float %482, %440
  %484 = getelementptr inbounds [3 x float]* %f, i64 %338, i64 2
  %485 = load float* %484, align 4, !tbaa !2
  %486 = fadd float %483, %485
  store float %486, float* %484, align 4, !tbaa !2
  %487 = load float* %437, align 4, !tbaa !2
  %488 = fadd float %444, %487
  store float %488, float* %437, align 4, !tbaa !2
  %489 = getelementptr inbounds [3 x float]* %f, i64 %340, i64 1
  %490 = load float* %489, align 4, !tbaa !2
  %491 = fadd float %453, %490
  store float %491, float* %489, align 4, !tbaa !2
  %492 = getelementptr inbounds [3 x float]* %f, i64 %340, i64 2
  %493 = load float* %492, align 4, !tbaa !2
  %494 = fadd float %463, %493
  store float %494, float* %492, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 12, i8* %94)
  call void @llvm.lifetime.end(i64 12, i8* %95)
  %495 = add nsw i32 %nd3FAD.130, 1
  br label %729

; <label>:496                                     ; preds = %117
  %497 = getelementptr inbounds i32* %ia.035, i64 4
  %498 = load i32* %497, align 4, !tbaa !18
  %499 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 1
  %500 = load float* %499, align 4, !tbaa !35
  %501 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 2
  %502 = load float* %501, align 4, !tbaa !36
  %503 = sext i32 %122 to i64
  %504 = getelementptr inbounds [3 x float]* %x, i64 %503, i64 0
  %505 = sext i32 %124 to i64
  %506 = getelementptr inbounds [3 x float]* %x, i64 %505, i64 0
  %507 = sext i32 %498 to i64
  %508 = getelementptr inbounds [3 x float]* %x, i64 %507, i64 0
  %509 = sext i32 %120 to i64
  %510 = getelementptr inbounds [3 x float]* %f, i64 %509, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %94)
  call void @llvm.lifetime.start(i64 12, i8* %95)
  %511 = load float* %506, align 4, !tbaa !2
  %512 = load float* %504, align 4, !tbaa !2
  %513 = fsub float %511, %512
  %514 = getelementptr inbounds [3 x float]* %x, i64 %505, i64 1
  %515 = load float* %514, align 4, !tbaa !2
  %516 = getelementptr inbounds [3 x float]* %x, i64 %503, i64 1
  %517 = load float* %516, align 4, !tbaa !2
  %518 = fsub float %515, %517
  %519 = getelementptr inbounds [3 x float]* %x, i64 %505, i64 2
  %520 = load float* %519, align 4, !tbaa !2
  %521 = getelementptr inbounds [3 x float]* %x, i64 %503, i64 2
  %522 = load float* %521, align 4, !tbaa !2
  %523 = fsub float %520, %522
  %524 = load float* %508, align 4, !tbaa !2
  %525 = fsub float %524, %512
  %526 = getelementptr inbounds [3 x float]* %x, i64 %507, i64 1
  %527 = load float* %526, align 4, !tbaa !2
  %528 = fsub float %527, %517
  %529 = getelementptr inbounds [3 x float]* %x, i64 %507, i64 2
  %530 = load float* %529, align 4, !tbaa !2
  %531 = fsub float %530, %522
  %532 = load float* %510, align 4, !tbaa !2
  %533 = fmul float %502, %532
  %534 = getelementptr inbounds [3 x float]* %f, i64 %509, i64 1
  %535 = load float* %534, align 4, !tbaa !2
  %536 = fmul float %502, %535
  %537 = getelementptr inbounds [3 x float]* %f, i64 %509, i64 2
  %538 = load float* %537, align 4, !tbaa !2
  %539 = fmul float %502, %538
  %540 = fmul float %127, %532
  %541 = fmul float %531, %536
  %542 = fsub float %540, %541
  %543 = fmul float %528, %539
  %544 = fadd float %542, %543
  store float %544, float* %96, align 4, !tbaa !2
  %545 = fmul float %531, %533
  %546 = fmul float %127, %535
  %547 = fadd float %545, %546
  %548 = fmul float %525, %539
  %549 = fsub float %547, %548
  store float %549, float* %97, align 4, !tbaa !2
  %550 = fmul float %528, %533
  %551 = fmul float %525, %536
  %552 = fsub float %551, %550
  %553 = fmul float %127, %538
  %554 = fadd float %553, %552
  store float %554, float* %98, align 4, !tbaa !2
  %555 = fmul float %500, %532
  %556 = fmul float %523, %536
  %557 = fadd float %555, %556
  %558 = fmul float %518, %539
  %559 = fsub float %557, %558
  store float %559, float* %99, align 4, !tbaa !2
  %560 = fmul float %523, %533
  %561 = fmul float %500, %535
  %562 = fsub float %561, %560
  %563 = fmul float %513, %539
  %564 = fadd float %562, %563
  store float %564, float* %100, align 4, !tbaa !2
  %565 = fmul float %518, %533
  %566 = fmul float %513, %536
  %567 = fsub float %565, %566
  %568 = fmul float %500, %538
  %569 = fadd float %568, %567
  store float %569, float* %101, align 4, !tbaa !2
  br label %570

; <label>:570                                     ; preds = %._crit_edge.i11, %496
  %571 = phi float [ %559, %496 ], [ %.pre5.i, %._crit_edge.i11 ]
  %572 = phi float [ %544, %496 ], [ %.pre3.i10, %._crit_edge.i11 ]
  %573 = phi float [ %532, %496 ], [ %.pre.i8, %._crit_edge.i11 ]
  %indvars.iv.i4 = phi i64 [ 0, %496 ], [ %indvars.iv.next.i5, %._crit_edge.i11 ]
  %574 = fsub float %573, %572
  %575 = fsub float %574, %571
  %576 = getelementptr inbounds [3 x float]* %f, i64 %503, i64 %indvars.iv.i4
  %577 = load float* %576, align 4, !tbaa !2
  %578 = fadd float %577, %575
  store float %578, float* %576, align 4, !tbaa !2
  %579 = getelementptr inbounds [3 x float]* %f, i64 %505, i64 %indvars.iv.i4
  %580 = load float* %579, align 4, !tbaa !2
  %581 = fadd float %572, %580
  store float %581, float* %579, align 4, !tbaa !2
  %582 = getelementptr inbounds [3 x float]* %f, i64 %507, i64 %indvars.iv.i4
  %583 = load float* %582, align 4, !tbaa !2
  %584 = fadd float %571, %583
  store float %584, float* %582, align 4, !tbaa !2
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1
  %exitcond.i6 = icmp eq i64 %indvars.iv.next.i5, 3
  br i1 %exitcond.i6, label %spread_dum3OUT.exit, label %._crit_edge.i11

._crit_edge.i11:                                  ; preds = %570
  %.phi.trans.insert.i7 = getelementptr inbounds [3 x float]* %f, i64 %509, i64 %indvars.iv.next.i5
  %.pre.i8 = load float* %.phi.trans.insert.i7, align 4, !tbaa !2
  %.phi.trans.insert2.i9 = getelementptr inbounds [3 x float]* %f1.i, i64 0, i64 %indvars.iv.next.i5
  %.pre3.i10 = load float* %.phi.trans.insert2.i9, align 4, !tbaa !2
  %.phi.trans.insert4.i = getelementptr inbounds [3 x float]* %f2.i, i64 0, i64 %indvars.iv.next.i5
  %.pre5.i = load float* %.phi.trans.insert4.i, align 4, !tbaa !2
  br label %570

spread_dum3OUT.exit:                              ; preds = %570
  call void @llvm.lifetime.end(i64 12, i8* %94)
  call void @llvm.lifetime.end(i64 12, i8* %95)
  %585 = add nsw i32 %nd3OUT.131, 1
  br label %729

; <label>:586                                     ; preds = %117
  %587 = getelementptr inbounds i32* %ia.035, i64 4
  %588 = load i32* %587, align 4, !tbaa !18
  %589 = getelementptr inbounds i32* %ia.035, i64 5
  %590 = load i32* %589, align 4, !tbaa !18
  %591 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 1
  %592 = load float* %591, align 4, !tbaa !35
  %593 = getelementptr inbounds %union.t_iparams* %93, i64 %125, i32 0, i32 2
  %594 = load float* %593, align 4, !tbaa !36
  %595 = sext i32 %122 to i64
  %596 = getelementptr inbounds [3 x float]* %x, i64 %595, i64 0
  %597 = sext i32 %124 to i64
  %598 = getelementptr inbounds [3 x float]* %x, i64 %597, i64 0
  %599 = sext i32 %588 to i64
  %600 = getelementptr inbounds [3 x float]* %x, i64 %599, i64 0
  %601 = sext i32 %590 to i64
  %602 = getelementptr inbounds [3 x float]* %x, i64 %601, i64 0
  %603 = getelementptr inbounds [3 x float]* %f, i64 %595, i64 0
  %604 = getelementptr inbounds [3 x float]* %f, i64 %597, i64 0
  %605 = getelementptr inbounds [3 x float]* %f, i64 %599, i64 0
  %606 = getelementptr inbounds [3 x float]* %f, i64 %601, i64 0
  %607 = sext i32 %120 to i64
  %608 = getelementptr inbounds [3 x float]* %f, i64 %607, i64 0
  %609 = load float* %598, align 4, !tbaa !2
  %610 = load float* %596, align 4, !tbaa !2
  %611 = fsub float %609, %610
  %612 = getelementptr inbounds [3 x float]* %x, i64 %597, i64 1
  %613 = load float* %612, align 4, !tbaa !2
  %614 = getelementptr inbounds [3 x float]* %x, i64 %595, i64 1
  %615 = load float* %614, align 4, !tbaa !2
  %616 = fsub float %613, %615
  %617 = getelementptr inbounds [3 x float]* %x, i64 %597, i64 2
  %618 = load float* %617, align 4, !tbaa !2
  %619 = getelementptr inbounds [3 x float]* %x, i64 %595, i64 2
  %620 = load float* %619, align 4, !tbaa !2
  %621 = fsub float %618, %620
  %622 = load float* %600, align 4, !tbaa !2
  %623 = fsub float %622, %609
  %624 = getelementptr inbounds [3 x float]* %x, i64 %599, i64 1
  %625 = load float* %624, align 4, !tbaa !2
  %626 = fsub float %625, %613
  %627 = getelementptr inbounds [3 x float]* %x, i64 %599, i64 2
  %628 = load float* %627, align 4, !tbaa !2
  %629 = fsub float %628, %618
  %630 = load float* %602, align 4, !tbaa !2
  %631 = fsub float %630, %609
  %632 = getelementptr inbounds [3 x float]* %x, i64 %601, i64 1
  %633 = load float* %632, align 4, !tbaa !2
  %634 = fsub float %633, %613
  %635 = getelementptr inbounds [3 x float]* %x, i64 %601, i64 2
  %636 = load float* %635, align 4, !tbaa !2
  %637 = fsub float %636, %618
  %638 = fmul float %127, %623
  %639 = fadd float %611, %638
  %640 = fmul float %592, %631
  %641 = fadd float %639, %640
  %642 = fmul float %127, %626
  %643 = fadd float %616, %642
  %644 = fmul float %592, %634
  %645 = fadd float %643, %644
  %646 = fmul float %127, %629
  %647 = fadd float %621, %646
  %648 = fmul float %592, %637
  %649 = fadd float %647, %648
  %650 = fmul float %641, %641
  %651 = fmul float %645, %645
  %652 = fadd float %650, %651
  %653 = fmul float %649, %649
  %654 = fadd float %652, %653
  %655 = fpext float %654 to double
  %656 = tail call double @sqrt(double %655) #9
  %657 = fdiv double 1.000000e+00, %656
  %658 = fptrunc double %657 to float
  %659 = fmul float %594, %658
  %660 = load float* %608, align 4, !tbaa !2
  %661 = fmul float %641, %660
  %662 = getelementptr inbounds [3 x float]* %f, i64 %607, i64 1
  %663 = load float* %662, align 4, !tbaa !2
  %664 = fmul float %645, %663
  %665 = fadd float %661, %664
  %666 = getelementptr inbounds [3 x float]* %f, i64 %607, i64 2
  %667 = load float* %666, align 4, !tbaa !2
  %668 = fmul float %649, %667
  %669 = fadd float %665, %668
  %670 = fmul float %658, %669
  %671 = fmul float %658, %670
  %672 = fmul float %641, %671
  %673 = fsub float %660, %672
  %674 = fmul float %659, %673
  %675 = fmul float %645, %671
  %676 = fsub float %663, %675
  %677 = fmul float %659, %676
  %678 = fmul float %649, %671
  %679 = fsub float %667, %678
  %680 = fmul float %659, %679
  %681 = fsub float 1.000000e+00, %127
  %682 = fsub float %681, %592
  %683 = fsub float %660, %674
  %684 = load float* %603, align 4, !tbaa !2
  %685 = fadd float %684, %683
  store float %685, float* %603, align 4, !tbaa !2
  %686 = fsub float %663, %677
  %687 = getelementptr inbounds [3 x float]* %f, i64 %595, i64 1
  %688 = load float* %687, align 4, !tbaa !2
  %689 = fadd float %688, %686
  store float %689, float* %687, align 4, !tbaa !2
  %690 = fsub float %667, %680
  %691 = getelementptr inbounds [3 x float]* %f, i64 %595, i64 2
  %692 = load float* %691, align 4, !tbaa !2
  %693 = fadd float %692, %690
  store float %693, float* %691, align 4, !tbaa !2
  %694 = fmul float %682, %674
  %695 = load float* %604, align 4, !tbaa !2
  %696 = fadd float %695, %694
  store float %696, float* %604, align 4, !tbaa !2
  %697 = fmul float %682, %677
  %698 = getelementptr inbounds [3 x float]* %f, i64 %597, i64 1
  %699 = load float* %698, align 4, !tbaa !2
  %700 = fadd float %699, %697
  store float %700, float* %698, align 4, !tbaa !2
  %701 = fmul float %682, %680
  %702 = getelementptr inbounds [3 x float]* %f, i64 %597, i64 2
  %703 = load float* %702, align 4, !tbaa !2
  %704 = fadd float %703, %701
  store float %704, float* %702, align 4, !tbaa !2
  %705 = fmul float %127, %674
  %706 = load float* %605, align 4, !tbaa !2
  %707 = fadd float %706, %705
  store float %707, float* %605, align 4, !tbaa !2
  %708 = fmul float %127, %677
  %709 = getelementptr inbounds [3 x float]* %f, i64 %599, i64 1
  %710 = load float* %709, align 4, !tbaa !2
  %711 = fadd float %710, %708
  store float %711, float* %709, align 4, !tbaa !2
  %712 = fmul float %127, %680
  %713 = getelementptr inbounds [3 x float]* %f, i64 %599, i64 2
  %714 = load float* %713, align 4, !tbaa !2
  %715 = fadd float %712, %714
  store float %715, float* %713, align 4, !tbaa !2
  %716 = fmul float %592, %674
  %717 = load float* %606, align 4, !tbaa !2
  %718 = fadd float %716, %717
  store float %718, float* %606, align 4, !tbaa !2
  %719 = fmul float %592, %677
  %720 = getelementptr inbounds [3 x float]* %f, i64 %601, i64 1
  %721 = load float* %720, align 4, !tbaa !2
  %722 = fadd float %719, %721
  store float %722, float* %720, align 4, !tbaa !2
  %723 = fmul float %592, %680
  %724 = getelementptr inbounds [3 x float]* %f, i64 %601, i64 2
  %725 = load float* %724, align 4, !tbaa !2
  %726 = fadd float %723, %725
  store float %726, float* %724, align 4, !tbaa !2
  %727 = add nsw i32 %nd4FD.132, 1
  br label %729

; <label>:728                                     ; preds = %117
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i32 %128, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 783) #8
  %.pre = sext i32 %120 to i64
  %.pre55 = getelementptr inbounds [3 x float]* %f, i64 %.pre, i64 0
  %.pre57 = getelementptr inbounds [3 x float]* %f, i64 %.pre, i64 1
  %.pre59 = getelementptr inbounds [3 x float]* %f, i64 %.pre, i64 2
  br label %729

; <label>:729                                     ; preds = %728, %586, %spread_dum3OUT.exit, %spread_dum3FAD.exit, %222, %165, %129
  %.pre-phi60 = phi float* [ %.pre59, %728 ], [ %666, %586 ], [ %537, %spread_dum3OUT.exit ], [ %405, %spread_dum3FAD.exit ], [ %281, %222 ], [ %186, %165 ], [ %140, %129 ]
  %.pre-phi58 = phi float* [ %.pre57, %728 ], [ %662, %586 ], [ %534, %spread_dum3OUT.exit ], [ %401, %spread_dum3FAD.exit ], [ %277, %222 ], [ %184, %165 ], [ %138, %129 ]
  %.pre-phi56 = phi float* [ %.pre55, %728 ], [ %608, %586 ], [ %510, %spread_dum3OUT.exit ], [ %344, %spread_dum3FAD.exit ], [ %237, %222 ], [ %177, %165 ], [ %135, %129 ]
  %nd3.2 = phi i32 [ %nd3.128, %728 ], [ %nd3.128, %586 ], [ %nd3.128, %spread_dum3OUT.exit ], [ %nd3.128, %spread_dum3FAD.exit ], [ %nd3.128, %222 ], [ %221, %165 ], [ %nd3.128, %129 ]
  %nd3FD.2 = phi i32 [ %nd3FD.129, %728 ], [ %nd3FD.129, %586 ], [ %nd3FD.129, %spread_dum3OUT.exit ], [ %nd3FD.129, %spread_dum3FAD.exit ], [ %330, %222 ], [ %nd3FD.129, %165 ], [ %nd3FD.129, %129 ]
  %nd3FAD.2 = phi i32 [ %nd3FAD.130, %728 ], [ %nd3FAD.130, %586 ], [ %nd3FAD.130, %spread_dum3OUT.exit ], [ %495, %spread_dum3FAD.exit ], [ %nd3FAD.130, %222 ], [ %nd3FAD.130, %165 ], [ %nd3FAD.130, %129 ]
  %nd3OUT.2 = phi i32 [ %nd3OUT.131, %728 ], [ %nd3OUT.131, %586 ], [ %585, %spread_dum3OUT.exit ], [ %nd3OUT.131, %spread_dum3FAD.exit ], [ %nd3OUT.131, %222 ], [ %nd3OUT.131, %165 ], [ %nd3OUT.131, %129 ]
  %nd4FD.2 = phi i32 [ %nd4FD.132, %728 ], [ %727, %586 ], [ %nd4FD.132, %spread_dum3OUT.exit ], [ %nd4FD.132, %spread_dum3FAD.exit ], [ %nd4FD.132, %222 ], [ %nd4FD.132, %165 ], [ %nd4FD.132, %129 ]
  %nd2.2 = phi i32 [ %nd2.133, %728 ], [ %nd2.133, %586 ], [ %nd2.133, %spread_dum3OUT.exit ], [ %nd2.133, %spread_dum3FAD.exit ], [ %nd2.133, %222 ], [ %nd2.133, %165 ], [ %164, %129 ]
  store float 0.000000e+00, float* %.pre-phi56, align 4, !tbaa !2
  store float 0.000000e+00, float* %.pre-phi58, align 4, !tbaa !2
  store float 0.000000e+00, float* %.pre-phi60, align 4, !tbaa !2
  %730 = add nsw i32 %i.034, %115
  %731 = getelementptr inbounds i32* %ia.035, i64 %116
  %732 = icmp slt i32 %730, %109
  br i1 %732, label %117, label %.loopexit

.loopexit:                                        ; preds = %729, %107, %102
  %nd3.3 = phi i32 [ %nd3.041, %102 ], [ %nd3.041, %107 ], [ %nd3.2, %729 ]
  %nd3FD.3 = phi i32 [ %nd3FD.042, %102 ], [ %nd3FD.042, %107 ], [ %nd3FD.2, %729 ]
  %nd3FAD.3 = phi i32 [ %nd3FAD.043, %102 ], [ %nd3FAD.043, %107 ], [ %nd3FAD.2, %729 ]
  %nd3OUT.3 = phi i32 [ %nd3OUT.044, %102 ], [ %nd3OUT.044, %107 ], [ %nd3OUT.2, %729 ]
  %nd4FD.3 = phi i32 [ %nd4FD.045, %102 ], [ %nd4FD.045, %107 ], [ %nd4FD.2, %729 ]
  %nd2.3 = phi i32 [ %nd2.046, %102 ], [ %nd2.046, %107 ], [ %nd2.2, %729 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %733 = icmp sgt i64 %indvars.iv, 0
  br i1 %733, label %102, label %734

; <label>:734                                     ; preds = %.loopexit
  %735 = sitofp i32 %nd2.3 to double
  %736 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 123
  %737 = load double* %736, align 8, !tbaa !6
  %738 = fadd double %735, %737
  store double %738, double* %736, align 8, !tbaa !6
  %739 = sitofp i32 %nd3.3 to double
  %740 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 124
  %741 = load double* %740, align 8, !tbaa !6
  %742 = fadd double %739, %741
  store double %742, double* %740, align 8, !tbaa !6
  %743 = sitofp i32 %nd3FD.3 to double
  %744 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 125
  %745 = load double* %744, align 8, !tbaa !6
  %746 = fadd double %743, %745
  store double %746, double* %744, align 8, !tbaa !6
  %747 = sitofp i32 %nd3FAD.3 to double
  %748 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 126
  %749 = load double* %748, align 8, !tbaa !6
  %750 = fadd double %747, %749
  store double %750, double* %748, align 8, !tbaa !6
  %751 = sitofp i32 %nd3OUT.3 to double
  %752 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 127
  %753 = load double* %752, align 8, !tbaa !6
  %754 = fadd double %751, %753
  store double %754, double* %752, align 8, !tbaa !6
  %755 = sitofp i32 %nd4FD.3 to double
  %756 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 128
  %757 = load double* %756, align 8, !tbaa !6
  %758 = fadd double %755, %757
  store double %758, double* %756, align 8, !tbaa !6
  br i1 %1, label %759, label %move_construct_f.exit

; <label>:759                                     ; preds = %734
  %760 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %761 = load i32* %760, align 4, !tbaa !12
  %762 = icmp sgt i32 %761, 0
  br i1 %762, label %.lr.ph8.i12, label %._crit_edge9.thread.i16

.lr.ph8.i12:                                      ; preds = %759
  %763 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  %764 = load i32** %763, align 8, !tbaa !22
  %765 = load [3 x float]** @nextbuf, align 8, !tbaa !13
  %766 = sext i32 %761 to i64
  %767 = add nsw i64 %766, -1
  %768 = bitcast [3 x float]* %765 to i8*
  br label %769

; <label>:769                                     ; preds = %769, %.lr.ph8.i12
  %indvars.iv13.i13 = phi i64 [ 0, %.lr.ph8.i12 ], [ %indvars.iv.next14.i14, %769 ]
  %770 = getelementptr inbounds i32* %764, i64 %indvars.iv13.i13
  %771 = load i32* %770, align 4, !tbaa !18
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [3 x float]* %f, i64 %772, i64 0
  %774 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv13.i13, i64 0
  %775 = bitcast float* %773 to i32*
  %776 = load i32* %775, align 4, !tbaa !2
  %777 = bitcast float* %774 to i32*
  store i32 %776, i32* %777, align 4, !tbaa !2
  %778 = getelementptr inbounds [3 x float]* %f, i64 %772, i64 1
  %779 = bitcast float* %778 to i32*
  %780 = load i32* %779, align 4, !tbaa !2
  %781 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv13.i13, i64 1
  %782 = bitcast float* %781 to i32*
  store i32 %780, i32* %782, align 4, !tbaa !2
  %783 = getelementptr inbounds [3 x float]* %f, i64 %772, i64 2
  %784 = bitcast float* %783 to i32*
  %785 = load i32* %784, align 4, !tbaa !2
  %786 = getelementptr inbounds [3 x float]* %765, i64 %indvars.iv13.i13, i64 2
  %787 = bitcast float* %786 to i32*
  store i32 %785, i32* %787, align 4, !tbaa !2
  %indvars.iv.next14.i14 = add nuw nsw i64 %indvars.iv13.i13, 1
  %exitcond49 = icmp eq i64 %indvars.iv13.i13, %767
  br i1 %exitcond49, label %._crit_edge9.i15, label %769

._crit_edge9.i15:                                 ; preds = %769
  %788 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %789 = load i32* %788, align 4, !tbaa !21
  %790 = mul i32 %761, 12
  tail call void @gmx_tx(i32 %789, i8* %768, i32 %790) #8
  br label %._crit_edge9.thread.i16

._crit_edge9.thread.i16:                          ; preds = %._crit_edge9.i15, %759
  %791 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %792 = load i32* %791, align 4, !tbaa !15
  %793 = icmp sgt i32 %792, 0
  br i1 %793, label %794, label %799

; <label>:794                                     ; preds = %._crit_edge9.thread.i16
  %795 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %796 = load i32* %795, align 4, !tbaa !19
  %797 = load i8** bitcast ([3 x float]** @prevbuf to i8**), align 8, !tbaa !13
  %798 = mul i32 %792, 12
  tail call void @gmx_rx(i32 %796, i8* %797, i32 %798) #8
  br label %799

; <label>:799                                     ; preds = %794, %._crit_edge9.thread.i16
  %800 = load i32* %760, align 4, !tbaa !12
  %801 = icmp sgt i32 %800, 0
  br i1 %801, label %802, label %805

; <label>:802                                     ; preds = %799
  %803 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %804 = load i32* %803, align 4, !tbaa !21
  tail call void @gmx_tx_wait(i32 %804) #8
  br label %805

; <label>:805                                     ; preds = %802, %799
  %806 = load i32* %791, align 4, !tbaa !15
  %807 = icmp sgt i32 %806, 0
  br i1 %807, label %.preheader1.i18, label %.preheader.i20

.preheader1.i18:                                  ; preds = %805
  %808 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %809 = load i32* %808, align 4, !tbaa !19
  tail call void @gmx_rx_wait(i32 %809) #8
  %.pre.i17 = load i32* %791, align 4, !tbaa !15
  %810 = icmp sgt i32 %.pre.i17, 0
  br i1 %810, label %.lr.ph5.i19, label %.preheader.i20

.lr.ph5.i19:                                      ; preds = %.preheader1.i18
  %811 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  %812 = load i32** %811, align 8, !tbaa !16
  %813 = load [3 x float]** @prevbuf, align 8, !tbaa !13
  %814 = sext i32 %.pre.i17 to i64
  %815 = add nsw i64 %814, -1
  br label %823

.preheader.i20:                                   ; preds = %823, %.preheader1.i18, %805
  %816 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %817 = load i32* %816, align 4, !tbaa !14
  %818 = icmp sgt i32 %817, 0
  br i1 %818, label %.lr.ph.i21, label %move_construct_f.exit

.lr.ph.i21:                                       ; preds = %.preheader.i20
  %819 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  %820 = load i32** %819, align 8, !tbaa !17
  %821 = sext i32 %817 to i64
  %822 = add nsw i64 %821, -1
  br label %842

; <label>:823                                     ; preds = %823, %.lr.ph5.i19
  %indvars.iv11.i22 = phi i64 [ 0, %.lr.ph5.i19 ], [ %indvars.iv.next12.i23, %823 ]
  %824 = getelementptr inbounds i32* %812, i64 %indvars.iv11.i22
  %825 = load i32* %824, align 4, !tbaa !18
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [3 x float]* %f, i64 %826, i64 0
  %828 = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv11.i22, i64 0
  %829 = load float* %827, align 4, !tbaa !2
  %830 = load float* %828, align 4, !tbaa !2
  %831 = fadd float %829, %830
  %832 = getelementptr inbounds [3 x float]* %f, i64 %826, i64 1
  %833 = load float* %832, align 4, !tbaa !2
  %834 = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv11.i22, i64 1
  %835 = load float* %834, align 4, !tbaa !2
  %836 = fadd float %833, %835
  %837 = getelementptr inbounds [3 x float]* %f, i64 %826, i64 2
  %838 = load float* %837, align 4, !tbaa !2
  %839 = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv11.i22, i64 2
  %840 = load float* %839, align 4, !tbaa !2
  %841 = fadd float %838, %840
  store float %831, float* %827, align 4, !tbaa !2
  store float %836, float* %832, align 4, !tbaa !2
  store float %841, float* %837, align 4, !tbaa !2
  %indvars.iv.next12.i23 = add nuw nsw i64 %indvars.iv11.i22, 1
  %exitcond48 = icmp eq i64 %indvars.iv11.i22, %815
  br i1 %exitcond48, label %.preheader.i20, label %823

; <label>:842                                     ; preds = %842, %.lr.ph.i21
  %indvars.iv.i24 = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i25, %842 ]
  %843 = getelementptr inbounds i32* %820, i64 %indvars.iv.i24
  %844 = load i32* %843, align 4, !tbaa !18
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [3 x float]* %f, i64 %845, i64 0
  store float 0.000000e+00, float* %846, align 4, !tbaa !2
  %847 = getelementptr inbounds [3 x float]* %f, i64 %845, i64 1
  store float 0.000000e+00, float* %847, align 4, !tbaa !2
  %848 = getelementptr inbounds [3 x float]* %f, i64 %845, i64 2
  store float 0.000000e+00, float* %848, align 4, !tbaa !2
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1
  %exitcond = icmp eq i64 %indvars.iv.i24, %822
  br i1 %exitcond, label %move_construct_f.exit, label %842

move_construct_f.exit:                            ; preds = %842, %.preheader.i20, %734
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #3

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #3

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #3

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone }

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
!8 = !{!9, !10, i64 4}
!9 = !{!"", !10, i64 0, !10, i64 4, !11, i64 8, !11, i64 16, !10, i64 24, !10, i64 28, !11, i64 32, !11, i64 40}
!10 = !{!"int", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!9, !10, i64 28}
!13 = !{!11, !11, i64 0}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 24}
!16 = !{!9, !11, i64 32}
!17 = !{!9, !11, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !10, i64 8}
!20 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!21 = !{!20, !10, i64 12}
!22 = !{!9, !11, i64 40}
!23 = !{!9, !11, i64 16}
!24 = !{!25, !11, i64 24}
!25 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !4, i64 32}
!26 = !{!27, !28, i64 32}
!27 = !{!"", !11, i64 0, !11, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !28, i64 32, !10, i64 40, !11, i64 48}
!28 = !{!"long", !4, i64 0}
!29 = !{!30, !10, i64 0}
!30 = !{!"", !10, i64 0, !4, i64 4, !11, i64 1032}
!31 = !{!30, !11, i64 1032}
!32 = !{!27, !10, i64 16}
!33 = !{!34, !3, i64 0}
!34 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20}
!35 = !{!34, !3, i64 4}
!36 = !{!34, !3, i64 8}
