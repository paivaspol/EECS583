; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vcm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
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
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@.str = private unnamed_addr constant [4 x i8] c"vcm\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vcm.c\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"vcm->group_j\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"vcm->group_x\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"vcm->group_i\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"vcm->group_w\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"vcm->group_p\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"vcm->group_v\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"vcm->group_mass\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"vcm->group_name\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"mass\00", align 1
@.str11 = private unnamed_addr constant [42 x i8] c"Center of mass motion removal mode is %s\0A\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@ecm_names = external global [4 x i8*]
@.str13 = private unnamed_addr constant [65 x i8] c"We have the following groups for center of mass motion removal:\0A\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"%3d:  %s, initial mass: %g\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str15 = private unnamed_addr constant [62 x i8] c"Large VCM(group %s): %12.5f, %12.5f, %12.5f, ekin-cm: %12.5f\0A\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"Group %s with mass %12.5f, Ekrot %12.5f Det(I) = %12.5f\0A\00", align 1
@.str17 = private unnamed_addr constant [31 x i8] c"  COM: %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str18 = private unnamed_addr constant [31 x i8] c"  P:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"  V:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"  J:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"  w:   %12.5f  %12.5f  %12.5f\0A\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"Inertia tensor\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"Determinant = %f\00", align 1

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
define %struct.t_vcm* @init_vcm(%struct.__sFILE* %fp, %struct.t_topology* nocapture readonly %top, %struct.t_commrec* %cr, %struct.t_mdatoms* nocapture readonly %md, i32 %start, i32 %homenr, i32 %nstcomm) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 80) #7
  %2 = bitcast i8* %1 to %struct.t_vcm*
  %3 = icmp slt i32 %nstcomm, 0
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp sgt i32 %nstcomm, 0
  %6 = getelementptr inbounds i8* %1, i64 4
  %7 = bitcast i8* %6 to i32*
  br i1 %5, label %9, label %8

; <label>:8                                       ; preds = %4
  store i32 2, i32* %7, align 4, !tbaa !18
  br label %143

; <label>:9                                       ; preds = %4
  store i32 0, i32* %7, align 4, !tbaa !18
  %10 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0
  %11 = load i32* %10, align 4, !tbaa !20
  %12 = bitcast i8* %1 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !22
  br label %34

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds i8* %1, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 1, i32* %15, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 0
  %17 = load i32* %16, align 4, !tbaa !20
  %18 = bitcast i8* %1 to i32*
  store i32 %17, i32* %18, align 4, !tbaa !22
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %17, i32 12) #7
  %20 = getelementptr inbounds i8* %1, i64 32
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !23
  %22 = load i32* %18, align 4, !tbaa !22
  %23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %22, i32 12) #7
  %24 = getelementptr inbounds i8* %1, i64 24
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !24
  %26 = load i32* %18, align 4, !tbaa !22
  %27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %26, i32 36) #7
  %28 = getelementptr inbounds i8* %1, i64 48
  %29 = bitcast i8* %28 to i8**
  store i8* %27, i8** %29, align 8, !tbaa !25
  %30 = load i32* %18, align 4, !tbaa !22
  %31 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %30, i32 12) #7
  %32 = getelementptr inbounds i8* %1, i64 40
  %33 = bitcast i8* %32 to i8**
  store i8* %31, i8** %33, align 8, !tbaa !26
  %.pre = load i32* %18, align 4, !tbaa !22
  br label %34

; <label>:34                                      ; preds = %9, %13
  %35 = phi i32* [ %18, %13 ], [ %12, %9 ]
  %.pre-phi15.ph17 = phi i32* [ %15, %13 ], [ %7, %9 ]
  %36 = phi i32 [ %.pre, %13 ], [ %11, %9 ]
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %36, i32 12) #7
  %38 = getelementptr inbounds i8* %1, i64 8
  %39 = bitcast i8* %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !27
  %40 = load i32* %35, align 4, !tbaa !22
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %40, i32 12) #7
  %42 = getelementptr inbounds i8* %1, i64 16
  %43 = bitcast i8* %42 to i8**
  store i8* %41, i8** %43, align 8, !tbaa !28
  %44 = load i32* %35, align 4, !tbaa !22
  %45 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %44, i32 4) #7
  %46 = getelementptr inbounds i8* %1, i64 56
  %47 = bitcast i8* %46 to float**
  %48 = bitcast i8* %46 to i8**
  store i8* %45, i8** %48, align 8, !tbaa !29
  %49 = load i32* %35, align 4, !tbaa !22
  %50 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %49, i32 8) #7
  %51 = getelementptr inbounds i8* %1, i64 64
  %52 = bitcast i8* %51 to i8***
  %53 = bitcast i8* %51 to i8**
  store i8* %50, i8** %53, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %55 = bitcast i16** %54 to i64*
  %56 = load i64* %55, align 8, !tbaa !31
  %57 = getelementptr inbounds i8* %1, i64 72
  %58 = bitcast i8* %57 to i64*
  store i64 %56, i64* %58, align 8, !tbaa !33
  %59 = icmp sgt i32 %homenr, 0
  %60 = inttoptr i64 %56 to i16*
  br i1 %59, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %34
  %61 = add nsw i32 %homenr, %start
  %62 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %63 = load float** %62, align 8, !tbaa !34
  %64 = load float** %47, align 8, !tbaa !29
  %65 = sext i32 %start to i64
  %66 = sext i32 %61 to i64
  br label %67

; <label>:67                                      ; preds = %.lr.ph8, %67
  %indvars.iv12 = phi i64 [ %65, %.lr.ph8 ], [ %indvars.iv.next13, %67 ]
  %68 = getelementptr inbounds i16* %60, i64 %indvars.iv12
  %69 = load i16* %68, align 2, !tbaa !35
  %70 = getelementptr inbounds float* %63, i64 %indvars.iv12
  %71 = load float* %70, align 4, !tbaa !14
  %72 = zext i16 %69 to i64
  %73 = getelementptr inbounds float* %64, i64 %72
  %74 = load float* %73, align 4, !tbaa !14
  %75 = fadd float %71, %74
  store float %75, float* %73, align 4, !tbaa !14
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %76 = icmp slt i64 %indvars.iv.next13, %66
  br i1 %76, label %67, label %._crit_edge9

._crit_edge9:                                     ; preds = %67, %34
  %77 = load i32* %35, align 4, !tbaa !22
  %78 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %77, i32 4) #7
  %79 = bitcast i8* %78 to float*
  %80 = load i32* %35, align 4, !tbaa !22
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %._crit_edge9
  %82 = load float** %47, align 8, !tbaa !29
  %83 = sext i32 %80 to i64
  br label %84

; <label>:84                                      ; preds = %.lr.ph4, %84
  %indvars.iv10 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next11, %84 ]
  %85 = getelementptr inbounds float* %82, i64 %indvars.iv10
  %86 = bitcast float* %85 to i32*
  %87 = load i32* %86, align 4, !tbaa !14
  %88 = getelementptr inbounds float* %79, i64 %indvars.iv10
  %89 = bitcast float* %88 to i32*
  store i32 %87, i32* %89, align 4, !tbaa !14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %90 = icmp slt i64 %indvars.iv.next11, %83
  br i1 %90, label %84, label %._crit_edge5

._crit_edge5:                                     ; preds = %84, %._crit_edge9
  %91 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %92 = load i32* %91, align 4, !tbaa !36
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %98, label %94

; <label>:94                                      ; preds = %._crit_edge5
  %95 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %96 = load i32* %95, align 4, !tbaa !38
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %94, %._crit_edge5
  tail call void @gmx_sumf(i32 %80, float* %79, %struct.t_commrec* %cr) #7
  br label %99

; <label>:99                                      ; preds = %98, %94
  %100 = icmp ne %struct.__sFILE* %fp, null
  br i1 %100, label %101, label %.preheader

; <label>:101                                     ; preds = %99
  %102 = load i32* %.pre-phi15.ph17, align 4, !tbaa !18
  %103 = icmp ugt i32 %102, 2
  br i1 %103, label %108, label %104

; <label>:104                                     ; preds = %101
  %105 = sext i32 %102 to i64
  %106 = getelementptr inbounds [4 x i8*]* @ecm_names, i64 0, i64 %105
  %107 = load i8** %106, align 8, !tbaa !39
  br label %108

; <label>:108                                     ; preds = %101, %104
  %109 = phi i8* [ %107, %104 ], [ getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), %101 ]
  %110 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str11, i64 0, i64 0), i8* %109) #7
  %111 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i64 64, i64 1, %struct.__sFILE* %fp)
  br label %.preheader

.preheader:                                       ; preds = %108, %99
  %112 = load i32* %35, align 4, !tbaa !22
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %114 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 6, i32 1
  %115 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  br label %116

; <label>:116                                     ; preds = %.lr.ph, %139
  %117 = phi i32 [ %112, %.lr.ph ], [ %140, %139 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %139 ]
  %118 = load i32** %114, align 8, !tbaa !40
  %119 = getelementptr inbounds i32* %118, i64 %indvars.iv
  %120 = load i32* %119, align 4, !tbaa !41
  %121 = sext i32 %120 to i64
  %122 = load i8**** %115, align 8, !tbaa !42
  %123 = getelementptr inbounds i8*** %122, i64 %121
  %124 = bitcast i8*** %123 to i64**
  %125 = load i64** %124, align 8, !tbaa !39
  %126 = load i64* %125, align 8, !tbaa !39
  %127 = load i8*** %52, align 8, !tbaa !30
  %128 = getelementptr inbounds i8** %127, i64 %indvars.iv
  %129 = bitcast i8** %128 to i64*
  store i64 %126, i64* %129, align 8, !tbaa !39
  br i1 %100, label %130, label %139

; <label>:130                                     ; preds = %116
  %131 = load i8*** %52, align 8, !tbaa !30
  %132 = getelementptr inbounds i8** %131, i64 %indvars.iv
  %133 = load i8** %132, align 8, !tbaa !39
  %134 = getelementptr inbounds float* %79, i64 %indvars.iv
  %135 = load float* %134, align 4, !tbaa !14
  %136 = fpext float %135 to double
  %137 = trunc i64 %indvars.iv to i32
  %138 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i32 %137, i8* %133, double %136) #7
  %.pre14 = load i32* %35, align 4, !tbaa !22
  br label %139

; <label>:139                                     ; preds = %116, %130
  %140 = phi i32 [ %117, %116 ], [ %.pre14, %130 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %indvars.iv.next, %141
  br i1 %142, label %116, label %._crit_edge

._crit_edge:                                      ; preds = %139, %.preheader
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 95, i8* %78) #7
  br label %143

; <label>:143                                     ; preds = %8, %._crit_edge
  ret %struct.t_vcm* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_vcm_grp(%struct.__sFILE* nocapture readnone %fp, i32 %start, i32 %homenr, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %v, %struct.t_vcm* nocapture readonly %vcm) #4 {
  %j0 = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %.loopexit, label %.preheader1

.preheader1:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !22
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph6, label %.preheader

.lr.ph6:                                          ; preds = %.preheader1
  %7 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %8 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %9 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %10 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %11 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %12 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  br label %26

.preheader:                                       ; preds = %52, %.preheader1
  %13 = icmp sgt i32 %homenr, 0
  br i1 %13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %14 = add nsw i32 %homenr, %start
  %15 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %16 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %17 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %18 = getelementptr inbounds [3 x float]* %j0, i64 0, i64 0
  %19 = getelementptr inbounds [3 x float]* %j0, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float]* %j0, i64 0, i64 2
  %21 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %22 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %23 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %24 = sext i32 %start to i64
  %25 = sext i32 %14 to i64
  br label %56

; <label>:26                                      ; preds = %._crit_edge, %.lr.ph6
  %27 = phi i32 [ %5, %.lr.ph6 ], [ %53, %._crit_edge ]
  %28 = phi i32 [ %2, %.lr.ph6 ], [ %.pre, %._crit_edge ]
  %indvars.iv12 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next13, %._crit_edge ]
  %29 = load float** %7, align 8, !tbaa !29
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv12
  store float 0.000000e+00, float* %30, align 4, !tbaa !14
  %31 = load [3 x float]** %8, align 8, !tbaa !27
  %32 = getelementptr inbounds [3 x float]* %31, i64 %indvars.iv12, i64 0
  store float 0.000000e+00, float* %32, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %31, i64 %indvars.iv12, i64 1
  store float 0.000000e+00, float* %33, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %31, i64 %indvars.iv12, i64 2
  store float 0.000000e+00, float* %34, align 4, !tbaa !14
  %35 = icmp eq i32 %28, 1
  br i1 %35, label %36, label %52

; <label>:36                                      ; preds = %26
  %37 = load [3 x float]** %9, align 8, !tbaa !23
  %38 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv12, i64 0
  store float 0.000000e+00, float* %38, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv12, i64 1
  store float 0.000000e+00, float* %39, align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %37, i64 %indvars.iv12, i64 2
  store float 0.000000e+00, float* %40, align 4, !tbaa !14
  %41 = load [3 x float]** %10, align 8, !tbaa !24
  %42 = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv12, i64 0
  store float 0.000000e+00, float* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv12, i64 1
  store float 0.000000e+00, float* %43, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv12, i64 2
  store float 0.000000e+00, float* %44, align 4, !tbaa !14
  %45 = load [3 x float]** %11, align 8, !tbaa !26
  %46 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv12, i64 0
  store float 0.000000e+00, float* %46, align 4, !tbaa !14
  %47 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv12, i64 1
  store float 0.000000e+00, float* %47, align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %45, i64 %indvars.iv12, i64 2
  store float 0.000000e+00, float* %48, align 4, !tbaa !14
  %49 = load [3 x [3 x float]]** %12, align 8, !tbaa !25
  %50 = getelementptr inbounds [3 x [3 x float]]* %49, i64 %indvars.iv12, i64 0
  %51 = bitcast [3 x float]* %50 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 36, i32 4, i1 false) #6
  %.pre14 = load i32* %4, align 4, !tbaa !22
  br label %52

; <label>:52                                      ; preds = %26, %36
  %53 = phi i32 [ %27, %26 ], [ %.pre14, %36 ]
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %indvars.iv.next13, %54
  br i1 %55, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %52
  %.pre = load i32* %1, align 4, !tbaa !18
  br label %26

; <label>:56                                      ; preds = %.lr.ph, %125
  %indvars.iv10 = phi i64 [ %24, %.lr.ph ], [ %indvars.iv.next11, %125 ]
  %57 = getelementptr inbounds float* %mass, i64 %indvars.iv10
  %58 = load float* %57, align 4, !tbaa !14
  %59 = load i16** %15, align 8, !tbaa !33
  %60 = getelementptr inbounds i16* %59, i64 %indvars.iv10
  %61 = load i16* %60, align 2, !tbaa !35
  %62 = zext i16 %61 to i64
  %63 = load float** %16, align 8, !tbaa !29
  %64 = getelementptr inbounds float* %63, i64 %62
  %65 = load float* %64, align 4, !tbaa !14
  %66 = fadd float %58, %65
  store float %66, float* %64, align 4, !tbaa !14
  %67 = load [3 x float]** %17, align 8, !tbaa !27
  br label %68

; <label>:68                                      ; preds = %68, %56
  %indvars.iv = phi i64 [ 0, %56 ], [ %indvars.iv.next, %68 ]
  %69 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv10, i64 %indvars.iv
  %70 = load float* %69, align 4, !tbaa !14
  %71 = fmul float %58, %70
  %72 = getelementptr inbounds [3 x float]* %67, i64 %62, i64 %indvars.iv
  %73 = load float* %72, align 4, !tbaa !14
  %74 = fadd float %71, %73
  store float %74, float* %72, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %75, label %68

; <label>:75                                      ; preds = %68
  %76 = load i32* %1, align 4, !tbaa !18
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %125

; <label>:78                                      ; preds = %75
  %79 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 0
  %80 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv10, i64 0
  %81 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 1
  %82 = load float* %81, align 4, !tbaa !14
  %83 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv10, i64 2
  %84 = load float* %83, align 4, !tbaa !14
  %85 = fmul float %82, %84
  %86 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 2
  %87 = load float* %86, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv10, i64 1
  %89 = load float* %88, align 4, !tbaa !14
  %90 = fmul float %87, %89
  %91 = fsub float %85, %90
  store float %91, float* %18, align 4, !tbaa !14
  %92 = load float* %80, align 4, !tbaa !14
  %93 = fmul float %87, %92
  %94 = load float* %79, align 4, !tbaa !14
  %95 = fmul float %94, %84
  %96 = fsub float %93, %95
  store float %96, float* %19, align 4, !tbaa !14
  %97 = fmul float %94, %89
  %98 = fmul float %82, %92
  %99 = fsub float %97, %98
  store float %99, float* %20, align 4, !tbaa !14
  %100 = load [3 x float]** %21, align 8, !tbaa !23
  %101 = load [3 x float]** %22, align 8, !tbaa !24
  %102 = fmul float %58, %91
  %103 = getelementptr inbounds [3 x float]* %100, i64 %62, i64 0
  %104 = load float* %103, align 4, !tbaa !14
  %105 = fadd float %102, %104
  store float %105, float* %103, align 4, !tbaa !14
  %106 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 0
  %107 = load float* %106, align 4, !tbaa !14
  %108 = fmul float %58, %107
  %109 = getelementptr inbounds [3 x float]* %101, i64 %62, i64 0
  %110 = load float* %109, align 4, !tbaa !14
  %111 = fadd float %108, %110
  store float %111, float* %109, align 4, !tbaa !14
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %78, %._crit_edge15
  %indvars.iv.next817 = phi i64 [ 1, %78 ], [ %indvars.iv.next8, %._crit_edge15 ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %j0, i64 0, i64 %indvars.iv.next817
  %.pre16 = load float* %.phi.trans.insert, align 4, !tbaa !14
  %112 = fmul float %58, %.pre16
  %113 = getelementptr inbounds [3 x float]* %100, i64 %62, i64 %indvars.iv.next817
  %114 = load float* %113, align 4, !tbaa !14
  %115 = fadd float %112, %114
  store float %115, float* %113, align 4, !tbaa !14
  %116 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 %indvars.iv.next817
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fmul float %58, %117
  %119 = getelementptr inbounds [3 x float]* %101, i64 %62, i64 %indvars.iv.next817
  %120 = load float* %119, align 4, !tbaa !14
  %121 = fadd float %118, %120
  store float %121, float* %119, align 4, !tbaa !14
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv.next817, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 3
  br i1 %exitcond9, label %122, label %._crit_edge15

; <label>:122                                     ; preds = %._crit_edge15
  %123 = load [3 x [3 x float]]** %23, align 8, !tbaa !25
  %124 = getelementptr inbounds [3 x [3 x float]]* %123, i64 %62, i64 0
  tail call fastcc void @update_tensor(float* %79, float %58, [3 x float]* %124) #9
  br label %125

; <label>:125                                     ; preds = %75, %122
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %126 = icmp slt i64 %indvars.iv.next11, %25
  br i1 %126, label %56, label %.loopexit

.loopexit:                                        ; preds = %125, %.preheader, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @update_tensor(float* nocapture readonly %x, float %m0, [3 x float]* nocapture %I) #4 {
  %1 = load float* %x, align 4, !tbaa !14
  %2 = getelementptr inbounds float* %x, i64 1
  %3 = load float* %2, align 4, !tbaa !14
  %4 = fmul float %1, %3
  %5 = fmul float %4, %m0
  %6 = getelementptr inbounds float* %x, i64 2
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fmul float %1, %7
  %9 = fmul float %8, %m0
  %10 = fmul float %3, %7
  %11 = fmul float %10, %m0
  %12 = fmul float %1, %1
  %13 = fmul float %12, %m0
  %14 = getelementptr inbounds [3 x float]* %I, i64 0, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fadd float %13, %15
  store float %16, float* %14, align 4, !tbaa !14
  %17 = load float* %2, align 4, !tbaa !14
  %18 = fmul float %17, %17
  %19 = fmul float %18, %m0
  %20 = getelementptr inbounds [3 x float]* %I, i64 1, i64 1
  %21 = load float* %20, align 4, !tbaa !14
  %22 = fadd float %21, %19
  store float %22, float* %20, align 4, !tbaa !14
  %23 = load float* %6, align 4, !tbaa !14
  %24 = fmul float %23, %23
  %25 = fmul float %24, %m0
  %26 = getelementptr inbounds [3 x float]* %I, i64 0, i64 1
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fadd float %5, %27
  store float %28, float* %26, align 4, !tbaa !14
  %29 = getelementptr inbounds [3 x float]* %I, i64 1, i64 0
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fadd float %5, %30
  store float %31, float* %29, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float]* %I, i64 0, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fadd float %9, %33
  store float %34, float* %32, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %I, i64 1, i64 2
  %36 = bitcast float* %35 to <4 x float>*
  %37 = load <4 x float>* %36, align 4, !tbaa !14
  %38 = insertelement <4 x float> undef, float %11, i32 0
  %39 = insertelement <4 x float> %38, float %9, i32 1
  %40 = insertelement <4 x float> %39, float %11, i32 2
  %41 = insertelement <4 x float> %40, float %25, i32 3
  %42 = fadd <4 x float> %41, %37
  %43 = bitcast float* %35 to <4 x float>*
  store <4 x float> %42, <4 x float>* %43, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_stopcm_grp(%struct.__sFILE* nocapture readnone %fp, i32 %start, i32 %homenr, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %v, %struct.t_vcm* nocapture readonly %vcm) #4 {
  %1 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %.loopexit, label %.preheader1

.preheader1:                                      ; preds = %0
  %4 = add nsw i32 %homenr, %start
  %5 = icmp sgt i32 %homenr, 0
  br i1 %5, label %.lr.ph4, label %._crit_edge

.lr.ph4:                                          ; preds = %.preheader1
  %6 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %7 = load i16** %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %9 = load [3 x float]** %8, align 8, !tbaa !28
  %10 = sext i32 %start to i64
  %11 = sext i32 %4 to i64
  br label %12

; <label>:12                                      ; preds = %.lr.ph4, %12
  %indvars.iv5 = phi i64 [ %10, %.lr.ph4 ], [ %indvars.iv.next6, %12 ]
  %13 = getelementptr inbounds i16* %7, i64 %indvars.iv5
  %14 = load i16* %13, align 2, !tbaa !35
  %15 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv5, i64 0
  %16 = zext i16 %14 to i64
  %17 = getelementptr inbounds [3 x float]* %9, i64 %16, i64 0
  %18 = load float* %15, align 4, !tbaa !14
  %19 = load float* %17, align 4, !tbaa !14
  %20 = fsub float %18, %19
  %21 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv5, i64 1
  %22 = load float* %21, align 4, !tbaa !14
  %23 = getelementptr inbounds [3 x float]* %9, i64 %16, i64 1
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fsub float %22, %24
  %26 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv5, i64 2
  %27 = load float* %26, align 4, !tbaa !14
  %28 = getelementptr inbounds [3 x float]* %9, i64 %16, i64 2
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fsub float %27, %29
  store float %20, float* %15, align 4, !tbaa !14
  store float %25, float* %21, align 4, !tbaa !14
  store float %30, float* %26, align 4, !tbaa !14
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %31 = icmp slt i64 %indvars.iv.next6, %11
  br i1 %31, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %12, %.preheader1
  %.not = icmp ne i32 %2, 1
  %.not7 = xor i1 %5, true
  %brmerge = or i1 %.not, %.not7
  br i1 %brmerge, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge
  %32 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 10
  %33 = load i16** %32, align 8, !tbaa !33
  %34 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %35 = load [3 x float]** %34, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %37 = load [3 x float]** %36, align 8, !tbaa !26
  %38 = sext i32 %start to i64
  %39 = sext i32 %4 to i64
  br label %40

; <label>:40                                      ; preds = %.lr.ph, %40
  %indvars.iv = phi i64 [ %38, %.lr.ph ], [ %indvars.iv.next, %40 ]
  %41 = getelementptr inbounds i16* %33, i64 %indvars.iv
  %42 = load i16* %41, align 2, !tbaa !35
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %44 = zext i16 %42 to i64
  %45 = getelementptr inbounds [3 x float]* %35, i64 %44, i64 0
  %46 = load float* %43, align 4, !tbaa !14
  %47 = load float* %45, align 4, !tbaa !14
  %48 = fsub float %46, %47
  %49 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %50 = load float* %49, align 4, !tbaa !14
  %51 = getelementptr inbounds [3 x float]* %35, i64 %44, i64 1
  %52 = load float* %51, align 4, !tbaa !14
  %53 = fsub float %50, %52
  %54 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %55 = load float* %54, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %35, i64 %44, i64 2
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds [3 x float]* %37, i64 %44, i64 0
  %60 = getelementptr inbounds [3 x float]* %37, i64 %44, i64 1
  %61 = load float* %60, align 4, !tbaa !14
  %62 = fmul float %58, %61
  %63 = getelementptr inbounds [3 x float]* %37, i64 %44, i64 2
  %64 = load float* %63, align 4, !tbaa !14
  %65 = fmul float %53, %64
  %66 = fsub float %62, %65
  %67 = fmul float %48, %64
  %68 = load float* %59, align 4, !tbaa !14
  %69 = fmul float %58, %68
  %70 = fsub float %67, %69
  %71 = fmul float %53, %68
  %72 = fmul float %48, %61
  %73 = fsub float %71, %72
  %74 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 0
  %75 = load float* %74, align 4, !tbaa !14
  %76 = fsub float %75, %66
  %77 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 1
  %78 = load float* %77, align 4, !tbaa !14
  %79 = fsub float %78, %70
  %80 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv, i64 2
  %81 = load float* %80, align 4, !tbaa !14
  %82 = fsub float %81, %73
  store float %76, float* %74, align 4, !tbaa !14
  store float %79, float* %77, align 4, !tbaa !14
  store float %82, float* %80, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %83 = icmp slt i64 %indvars.iv.next, %39
  br i1 %83, label %40, label %.loopexit

.loopexit:                                        ; preds = %40, %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @check_cm_grp(%struct.__sFILE* %fp, %struct.t_vcm* %vcm) #4 {
  %jcm = alloca [3 x float], align 4
  %Icm = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %Icm to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  %2 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %3 = load i32* %2, align 4, !tbaa !18
  %4 = icmp eq i32 %3, 2
  %.phi.trans.insert37 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %.pre38 = load i32* %.phi.trans.insert37, align 4, !tbaa !22
  br i1 %4, label %.preheader10, label %.preheader12

.preheader12:                                     ; preds = %0
  %5 = icmp sgt i32 %.pre38, 0
  br i1 %5, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %.preheader12
  %6 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %7 = load float** %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %9 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %10 = sext i32 %.pre38 to i64
  br label %11

; <label>:11                                      ; preds = %.lr.ph21, %32
  %indvars.iv33 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next34, %32 ]
  %12 = getelementptr inbounds float* %7, i64 %indvars.iv33
  %13 = load float* %12, align 4, !tbaa !14
  %fabsf9 = tail call float @fabsf(float %13) #10
  %14 = fpext float %fabsf9 to double
  %15 = fcmp ogt double %14, 1.200000e-38
  br i1 %15, label %16, label %32

; <label>:16                                      ; preds = %11
  %17 = fdiv float 1.000000e+00, %13
  %18 = load [3 x float]** %8, align 8, !tbaa !27
  %19 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv33, i64 0
  %20 = load [3 x float]** %9, align 8, !tbaa !28
  %21 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv33, i64 0
  %22 = load float* %19, align 4, !tbaa !14
  %23 = fmul float %17, %22
  store float %23, float* %21, align 4, !tbaa !14
  %24 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv33, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = fmul float %17, %25
  %27 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv33, i64 1
  store float %26, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv33, i64 2
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fmul float %17, %29
  %31 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv33, i64 2
  store float %30, float* %31, align 4, !tbaa !14
  br label %32

; <label>:32                                      ; preds = %11, %16
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %33 = icmp slt i64 %indvars.iv.next34, %10
  br i1 %33, label %11, label %._crit_edge22

._crit_edge22:                                    ; preds = %32, %.preheader12
  %34 = icmp eq i32 %3, 1
  br i1 %34, label %.preheader11, label %.preheader10

.preheader11:                                     ; preds = %._crit_edge22
  br i1 %5, label %.lr.ph19, label %._crit_edge

.lr.ph19:                                         ; preds = %.preheader11
  %35 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %36 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %37 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %38 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 0
  %39 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 1
  %40 = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 2
  %41 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %42 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0
  %43 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %44 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 0
  %45 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 1
  %46 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 0, i64 2
  %47 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 0
  %48 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 1
  %49 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 1, i64 2
  %50 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 0
  %51 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 1
  %52 = getelementptr inbounds [3 x [3 x float]]* %Icm, i64 0, i64 2, i64 2
  %53 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  br label %65

.preheader10:                                     ; preds = %210, %0, %._crit_edge22
  %54 = phi i32 [ %.pre38, %._crit_edge22 ], [ %.pre38, %0 ], [ %211, %210 ]
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader10
  %56 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %57 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 3
  %58 = icmp ne %struct.__sFILE* %fp, null
  %59 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 9
  %60 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %61 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 6
  %62 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %63 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %64 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  br label %214

; <label>:65                                      ; preds = %.lr.ph19, %210
  %66 = phi i32 [ %.pre38, %.lr.ph19 ], [ %211, %210 ]
  %indvars.iv31 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next32, %210 ]
  %67 = load float** %35, align 8, !tbaa !29
  %68 = getelementptr inbounds float* %67, i64 %indvars.iv31
  %69 = load float* %68, align 4, !tbaa !14
  %fabsf8 = tail call float @fabsf(float %69) #10
  %70 = fpext float %fabsf8 to double
  %71 = fcmp ogt double %70, 1.200000e-38
  br i1 %71, label %72, label %210

; <label>:72                                      ; preds = %65
  %73 = fdiv float 1.000000e+00, %69
  %74 = load [3 x float]** %36, align 8, !tbaa !24
  br label %75

; <label>:75                                      ; preds = %75, %72
  %indvars.iv25 = phi i64 [ 0, %72 ], [ %indvars.iv.next26, %75 ]
  %76 = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv31, i64 %indvars.iv25
  %77 = load float* %76, align 4, !tbaa !14
  %78 = fmul float %73, %77
  store float %78, float* %76, align 4, !tbaa !14
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %79, label %75

; <label>:79                                      ; preds = %75
  %80 = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv31, i64 0
  %81 = load [3 x float]** %37, align 8, !tbaa !28
  %82 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv31, i64 0
  %83 = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv31, i64 1
  %84 = load float* %83, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv31, i64 2
  %86 = load float* %85, align 4, !tbaa !14
  %87 = fmul float %84, %86
  %88 = getelementptr inbounds [3 x float]* %74, i64 %indvars.iv31, i64 2
  %89 = load float* %88, align 4, !tbaa !14
  %90 = getelementptr inbounds [3 x float]* %81, i64 %indvars.iv31, i64 1
  %91 = load float* %90, align 4, !tbaa !14
  %92 = fmul float %89, %91
  %93 = fsub float %87, %92
  store float %93, float* %38, align 4, !tbaa !14
  %94 = load float* %82, align 4, !tbaa !14
  %95 = fmul float %89, %94
  %96 = load float* %80, align 4, !tbaa !14
  %97 = fmul float %96, %86
  %98 = fsub float %95, %97
  store float %98, float* %39, align 4, !tbaa !14
  %99 = fmul float %96, %91
  %100 = fmul float %84, %94
  %101 = fsub float %99, %100
  store float %101, float* %40, align 4, !tbaa !14
  %102 = load [3 x float]** %41, align 8, !tbaa !23
  %103 = fmul float %69, %93
  %104 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv31, i64 0
  %105 = load float* %104, align 4, !tbaa !14
  %106 = fsub float %105, %103
  store float %106, float* %104, align 4, !tbaa !14
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %79, %._crit_edge35
  %indvars.iv.next2940 = phi i64 [ 1, %79 ], [ %indvars.iv.next29, %._crit_edge35 ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %jcm, i64 0, i64 %indvars.iv.next2940
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %107 = fmul float %69, %.pre
  %108 = getelementptr inbounds [3 x float]* %102, i64 %indvars.iv31, i64 %indvars.iv.next2940
  %109 = load float* %108, align 4, !tbaa !14
  %110 = fsub float %109, %107
  store float %110, float* %108, align 4, !tbaa !14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv.next2940, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %111, label %._crit_edge35

; <label>:111                                     ; preds = %._crit_edge35
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #6
  call fastcc void @update_tensor(float* %80, float %69, [3 x float]* %42) #9
  %112 = load [3 x [3 x float]]** %43, align 8, !tbaa !25
  %113 = getelementptr inbounds [3 x [3 x float]]* %112, i64 %indvars.iv31, i64 0, i64 0
  %114 = bitcast float* %113 to <4 x float>*
  %115 = load <4 x float>* %114, align 4, !tbaa !14
  %116 = bitcast [3 x [3 x float]]* %Icm to <4 x float>*
  %117 = load <4 x float>* %116, align 16, !tbaa !14
  %118 = fsub <4 x float> %115, %117
  %119 = bitcast float* %113 to <4 x float>*
  store <4 x float> %118, <4 x float>* %119, align 4, !tbaa !14
  %120 = getelementptr inbounds [3 x [3 x float]]* %112, i64 %indvars.iv31, i64 1, i64 1
  %121 = bitcast float* %120 to <4 x float>*
  %122 = load <4 x float>* %121, align 4, !tbaa !14
  %123 = bitcast float* %48 to <4 x float>*
  %124 = load <4 x float>* %123, align 4, !tbaa !14
  %125 = fsub <4 x float> %122, %124
  %126 = bitcast float* %120 to <4 x float>*
  store <4 x float> %125, <4 x float>* %126, align 4, !tbaa !14
  %127 = getelementptr inbounds [3 x [3 x float]]* %112, i64 %indvars.iv31, i64 2, i64 2
  %128 = load float* %127, align 4, !tbaa !14
  %129 = load float* %52, align 8, !tbaa !14
  %130 = fsub float %128, %129
  store float %130, float* %127, align 4, !tbaa !14
  %131 = extractelement <4 x float> %125, i32 0
  %132 = fadd float %131, %130
  %133 = extractelement <4 x float> %118, i32 1
  %134 = fsub float -0.000000e+00, %133
  %135 = extractelement <4 x float> %118, i32 2
  %136 = fsub float -0.000000e+00, %135
  %137 = extractelement <4 x float> %118, i32 0
  %138 = fadd float %130, %137
  %139 = fadd float %131, %137
  %140 = fmul float %138, %139
  %141 = extractelement <4 x float> %125, i32 1
  %142 = fmul float %141, %141
  %143 = fsub float %140, %142
  %144 = fmul float %132, %143
  %145 = fmul float %139, %134
  %146 = fmul float %135, %141
  %147 = fsub float %145, %146
  %148 = fmul float %147, %134
  %149 = fsub float %144, %148
  %150 = fmul float %133, %141
  %151 = fmul float %138, %136
  %152 = fsub float %150, %151
  %153 = fmul float %152, %136
  %154 = fadd float %153, %149
  %155 = fdiv float 1.000000e+00, %154
  %fabsf.i.i = tail call float @fabsf(float %155) #10
  %156 = fcmp ole float %fabsf.i.i, 0x3C32725DE0000000
  %157 = fcmp oge float %fabsf.i.i, 0x43ABC16D60000000
  %or.cond.i.i = or i1 %156, %157
  br i1 %or.cond.i.i, label %158, label %get_minv.exit

; <label>:158                                     ; preds = %111
  %159 = fpext float %155 to double
  %160 = fdiv double 1.000000e+00, %159
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), double %160) #7
  br label %get_minv.exit

get_minv.exit:                                    ; preds = %111, %158
  %161 = fmul float %155, %143
  store float %161, float* %44, align 16, !tbaa !14
  %162 = fsub float -0.000000e+00, %155
  %163 = fmul float %147, %162
  store float %163, float* %45, align 4, !tbaa !14
  %164 = fmul float %155, %152
  store float %164, float* %46, align 8, !tbaa !14
  store float %163, float* %47, align 4, !tbaa !14
  %165 = fmul float %132, %139
  %166 = fmul float %135, %135
  %167 = fsub float %165, %166
  %168 = fmul float %155, %167
  store float %168, float* %48, align 4, !tbaa !14
  %169 = fmul float %132, %141
  %170 = fsub float -0.000000e+00, %169
  %171 = fmul float %133, %135
  %172 = fsub float %170, %171
  %173 = fmul float %172, %162
  store float %173, float* %49, align 4, !tbaa !14
  store float %164, float* %50, align 8, !tbaa !14
  store float %173, float* %51, align 4, !tbaa !14
  %174 = fmul float %132, %138
  %175 = fmul float %133, %133
  %176 = fsub float %174, %175
  %177 = fmul float %155, %176
  store float %177, float* %52, align 8, !tbaa !14
  %178 = load [3 x float]** %41, align 8, !tbaa !23
  %179 = getelementptr inbounds [3 x float]* %178, i64 %indvars.iv31, i64 0
  %180 = load [3 x float]** %53, align 8, !tbaa !26
  %181 = getelementptr inbounds [3 x float]* %180, i64 %indvars.iv31, i64 0
  %182 = load float* %179, align 4, !tbaa !14
  %183 = fmul float %161, %182
  %184 = getelementptr inbounds [3 x float]* %178, i64 %indvars.iv31, i64 1
  %185 = load float* %184, align 4, !tbaa !14
  %186 = fmul float %163, %185
  %187 = fadd float %183, %186
  %188 = getelementptr inbounds [3 x float]* %178, i64 %indvars.iv31, i64 2
  %189 = load float* %188, align 4, !tbaa !14
  %190 = fmul float %164, %189
  %191 = fadd float %187, %190
  store float %191, float* %181, align 4, !tbaa !14
  %192 = load float* %179, align 4, !tbaa !14
  %193 = fmul float %163, %192
  %194 = load float* %184, align 4, !tbaa !14
  %195 = fmul float %168, %194
  %196 = fadd float %193, %195
  %197 = load float* %188, align 4, !tbaa !14
  %198 = fmul float %173, %197
  %199 = fadd float %196, %198
  %200 = getelementptr inbounds [3 x float]* %180, i64 %indvars.iv31, i64 1
  store float %199, float* %200, align 4, !tbaa !14
  %201 = load float* %179, align 4, !tbaa !14
  %202 = fmul float %164, %201
  %203 = load float* %184, align 4, !tbaa !14
  %204 = fmul float %173, %203
  %205 = fadd float %202, %204
  %206 = load float* %188, align 4, !tbaa !14
  %207 = fmul float %177, %206
  %208 = fadd float %205, %207
  %209 = getelementptr inbounds [3 x float]* %180, i64 %indvars.iv31, i64 2
  store float %208, float* %209, align 4, !tbaa !14
  %.pre36 = load i32* %.phi.trans.insert37, align 4, !tbaa !22
  br label %210

; <label>:210                                     ; preds = %65, %get_minv.exit
  %211 = phi i32 [ %66, %65 ], [ %.pre36, %get_minv.exit ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %indvars.iv.next32, %212
  br i1 %213, label %65, label %.preheader10

; <label>:214                                     ; preds = %.lr.ph, %378
  %indvars.iv23 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next24, %378 ]
  %215 = load float** %56, align 8, !tbaa !29
  %216 = getelementptr inbounds float* %215, i64 %indvars.iv23
  %217 = load float* %216, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %217) #10
  %218 = fpext float %fabsf to double
  %219 = fcmp ogt double %218, 1.200000e-38
  br i1 %219, label %.preheader, label %378

.preheader:                                       ; preds = %214
  %220 = load [3 x float]** %57, align 8, !tbaa !28
  br label %221

; <label>:221                                     ; preds = %221, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %221 ]
  %ekcm.013 = phi float [ 0.000000e+00, %.preheader ], [ %225, %221 ]
  %222 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv23, i64 %indvars.iv
  %223 = load float* %222, align 4, !tbaa !14
  %224 = fmul float %223, %223
  %225 = fadd float %ekcm.013, %224
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %226, label %221

; <label>:226                                     ; preds = %221
  %227 = fpext float %217 to double
  %228 = fmul double %227, 5.000000e-01
  %229 = fpext float %225 to double
  %230 = fmul double %229, %228
  %231 = fptrunc double %230 to float
  %232 = fcmp ogt float %231, 1.000000e+00
  %233 = load %struct.__sFILE** @debug, align 8
  %234 = icmp ne %struct.__sFILE* %233, null
  %or.cond = or i1 %234, %232
  %or.cond5 = and i1 %58, %or.cond
  br i1 %or.cond5, label %235, label %250

; <label>:235                                     ; preds = %226
  %236 = load i8*** %59, align 8, !tbaa !30
  %237 = getelementptr inbounds i8** %236, i64 %indvars.iv23
  %238 = load i8** %237, align 8, !tbaa !39
  %239 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv23, i64 0
  %240 = load float* %239, align 4, !tbaa !14
  %241 = fpext float %240 to double
  %242 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv23, i64 1
  %243 = load float* %242, align 4, !tbaa !14
  %244 = fpext float %243 to double
  %245 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv23, i64 2
  %246 = load float* %245, align 4, !tbaa !14
  %247 = fpext float %246 to double
  %248 = fpext float %231 to double
  %249 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([62 x i8]* @.str15, i64 0, i64 0), i8* %238, double %241, double %244, double %247, double %248) #7
  br label %250

; <label>:250                                     ; preds = %235, %226
  %251 = load i32* %2, align 4, !tbaa !18
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %378

; <label>:253                                     ; preds = %250
  %254 = load [3 x float]** %60, align 8, !tbaa !23
  %255 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv23, i64 0
  %256 = load [3 x float]** %61, align 8, !tbaa !26
  %257 = getelementptr inbounds [3 x float]* %256, i64 %indvars.iv23, i64 0
  %258 = load float* %255, align 4, !tbaa !14
  %259 = load float* %257, align 4, !tbaa !14
  %260 = fmul float %258, %259
  %261 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv23, i64 1
  %262 = load float* %261, align 4, !tbaa !14
  %263 = getelementptr inbounds [3 x float]* %256, i64 %indvars.iv23, i64 1
  %264 = load float* %263, align 4, !tbaa !14
  %265 = fmul float %262, %264
  %266 = fadd float %260, %265
  %267 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv23, i64 2
  %268 = load float* %267, align 4, !tbaa !14
  %269 = getelementptr inbounds [3 x float]* %256, i64 %indvars.iv23, i64 2
  %270 = load float* %269, align 4, !tbaa !14
  %271 = fmul float %268, %270
  %272 = fadd float %266, %271
  %273 = fmul float %272, 5.000000e-01
  %274 = fcmp ogt float %273, 1.000000e+00
  %275 = load %struct.__sFILE** @debug, align 8
  %276 = icmp ne %struct.__sFILE* %275, null
  %or.cond3 = or i1 %276, %274
  %or.cond7 = and i1 %58, %or.cond3
  br i1 %or.cond7, label %277, label %378

; <label>:277                                     ; preds = %253
  %278 = load float** %56, align 8, !tbaa !29
  %279 = getelementptr inbounds float* %278, i64 %indvars.iv23
  %280 = load float* %279, align 4, !tbaa !14
  %281 = load i8*** %59, align 8, !tbaa !30
  %282 = getelementptr inbounds i8** %281, i64 %indvars.iv23
  %283 = load i8** %282, align 8, !tbaa !39
  %284 = fpext float %280 to double
  %285 = fpext float %273 to double
  %286 = load [3 x [3 x float]]** %62, align 8, !tbaa !25
  %287 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 0, i64 0
  %288 = load float* %287, align 4, !tbaa !14
  %289 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 1, i64 1
  %290 = load float* %289, align 4, !tbaa !14
  %291 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 2, i64 2
  %292 = load float* %291, align 4, !tbaa !14
  %293 = fmul float %290, %292
  %294 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 2, i64 1
  %295 = load float* %294, align 4, !tbaa !14
  %296 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 1, i64 2
  %297 = load float* %296, align 4, !tbaa !14
  %298 = fmul float %295, %297
  %299 = fsub float %293, %298
  %300 = fmul float %288, %299
  %301 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 1, i64 0
  %302 = load float* %301, align 4, !tbaa !14
  %303 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 0, i64 1
  %304 = load float* %303, align 4, !tbaa !14
  %305 = fmul float %292, %304
  %306 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 0, i64 2
  %307 = load float* %306, align 4, !tbaa !14
  %308 = fmul float %295, %307
  %309 = fsub float %305, %308
  %310 = fmul float %302, %309
  %311 = fsub float %300, %310
  %312 = getelementptr inbounds [3 x [3 x float]]* %286, i64 %indvars.iv23, i64 2, i64 0
  %313 = load float* %312, align 4, !tbaa !14
  %314 = fmul float %297, %304
  %315 = fmul float %290, %307
  %316 = fsub float %314, %315
  %317 = fmul float %313, %316
  %318 = fadd float %317, %311
  %319 = fpext float %318 to double
  %320 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), i8* %283, double %284, double %285, double %319) #7
  %321 = load [3 x float]** %63, align 8, !tbaa !24
  %322 = getelementptr inbounds [3 x float]* %321, i64 %indvars.iv23, i64 0
  %323 = load float* %322, align 4, !tbaa !14
  %324 = fpext float %323 to double
  %325 = getelementptr inbounds [3 x float]* %321, i64 %indvars.iv23, i64 1
  %326 = load float* %325, align 4, !tbaa !14
  %327 = fpext float %326 to double
  %328 = getelementptr inbounds [3 x float]* %321, i64 %indvars.iv23, i64 2
  %329 = load float* %328, align 4, !tbaa !14
  %330 = fpext float %329 to double
  %331 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str17, i64 0, i64 0), double %324, double %327, double %330) #7
  %332 = load [3 x float]** %64, align 8, !tbaa !27
  %333 = getelementptr inbounds [3 x float]* %332, i64 %indvars.iv23, i64 0
  %334 = load float* %333, align 4, !tbaa !14
  %335 = fpext float %334 to double
  %336 = getelementptr inbounds [3 x float]* %332, i64 %indvars.iv23, i64 1
  %337 = load float* %336, align 4, !tbaa !14
  %338 = fpext float %337 to double
  %339 = getelementptr inbounds [3 x float]* %332, i64 %indvars.iv23, i64 2
  %340 = load float* %339, align 4, !tbaa !14
  %341 = fpext float %340 to double
  %342 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str18, i64 0, i64 0), double %335, double %338, double %341) #7
  %343 = load [3 x float]** %57, align 8, !tbaa !28
  %344 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv23, i64 0
  %345 = load float* %344, align 4, !tbaa !14
  %346 = fpext float %345 to double
  %347 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv23, i64 1
  %348 = load float* %347, align 4, !tbaa !14
  %349 = fpext float %348 to double
  %350 = getelementptr inbounds [3 x float]* %343, i64 %indvars.iv23, i64 2
  %351 = load float* %350, align 4, !tbaa !14
  %352 = fpext float %351 to double
  %353 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), double %346, double %349, double %352) #7
  %354 = load [3 x float]** %60, align 8, !tbaa !23
  %355 = getelementptr inbounds [3 x float]* %354, i64 %indvars.iv23, i64 0
  %356 = load float* %355, align 4, !tbaa !14
  %357 = fpext float %356 to double
  %358 = getelementptr inbounds [3 x float]* %354, i64 %indvars.iv23, i64 1
  %359 = load float* %358, align 4, !tbaa !14
  %360 = fpext float %359 to double
  %361 = getelementptr inbounds [3 x float]* %354, i64 %indvars.iv23, i64 2
  %362 = load float* %361, align 4, !tbaa !14
  %363 = fpext float %362 to double
  %364 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), double %357, double %360, double %363) #7
  %365 = load [3 x float]** %61, align 8, !tbaa !26
  %366 = getelementptr inbounds [3 x float]* %365, i64 %indvars.iv23, i64 0
  %367 = load float* %366, align 4, !tbaa !14
  %368 = fpext float %367 to double
  %369 = getelementptr inbounds [3 x float]* %365, i64 %indvars.iv23, i64 1
  %370 = load float* %369, align 4, !tbaa !14
  %371 = fpext float %370 to double
  %372 = getelementptr inbounds [3 x float]* %365, i64 %indvars.iv23, i64 2
  %373 = load float* %372, align 4, !tbaa !14
  %374 = fpext float %373 to double
  %375 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0), double %368, double %371, double %374) #7
  %376 = load [3 x [3 x float]]** %62, align 8, !tbaa !25
  %377 = getelementptr inbounds [3 x [3 x float]]* %376, i64 %indvars.iv23, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %fp, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), [3 x float]* %377, i32 3) #7
  br label %378

; <label>:378                                     ; preds = %214, %253, %277, %250
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %379 = load i32* %.phi.trans.insert37, align 4, !tbaa !22
  %380 = sext i32 %379 to i64
  %381 = icmp slt i64 %indvars.iv.next24, %380
  br i1 %381, label %214, label %._crit_edge

._crit_edge:                                      ; preds = %378, %.preheader11, %.preheader10
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

declare float @fabsf(float)

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
!18 = !{!19, !7, i64 4}
!19 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!20 = !{!21, !7, i64 0}
!21 = !{!"", !7, i64 0, !4, i64 8}
!22 = !{!19, !7, i64 0}
!23 = !{!19, !4, i64 32}
!24 = !{!19, !4, i64 24}
!25 = !{!19, !4, i64 48}
!26 = !{!19, !4, i64 40}
!27 = !{!19, !4, i64 8}
!28 = !{!19, !4, i64 16}
!29 = !{!19, !4, i64 56}
!30 = !{!19, !4, i64 64}
!31 = !{!32, !4, i64 144}
!32 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!33 = !{!19, !4, i64 72}
!34 = !{!32, !4, i64 24}
!35 = !{!8, !8, i64 0}
!36 = !{!37, !7, i64 4}
!37 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!38 = !{!37, !7, i64 20}
!39 = !{!4, !4, i64 0}
!40 = !{!21, !4, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !4, i64 45864}
!43 = !{!"", !4, i64 0, !44, i64 8, !45, i64 45800, !5, i64 47080, !21, i64 50248}
!44 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!45 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !46, i64 72, !5, i64 1128, !4, i64 1272}
!46 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
