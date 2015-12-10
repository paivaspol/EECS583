; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wnblist.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"EOF when looking for '%s' in logfile\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Neighborlist:\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"%*s%d%*s%d\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"Not enough arguments read line %d\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"%*s%d%*s%d%*s%d%*s%d\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"iatom = %d (max %d)\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"mat[%d][%d] changing from %d to %d\0A\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"nri = %d  nrj = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"il_code: %d solvent: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"nri: %d  nrj: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"i: %d shift: %d gid: %d nj: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"  j: %d\0A\00", align 1

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
define void @read_nblist(%struct.__sFILE* %in, %struct.__sFILE* nocapture %log, i32** nocapture readonly %mat, i32 %natoms) #4 {
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %nri = alloca i32, align 4
  %il_code = alloca i32, align 4
  %solv = alloca i32, align 4
  %iatom = alloca i32, align 4
  %nrj = alloca i32, align 4
  %nj = alloca i32, align 4
  %shift = alloca i32, align 4
  %gid = alloca i32, align 4
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #5
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %in) #9
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %2
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9
  br label %6

; <label>:6                                       ; preds = %2, %5
  %7 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9
  %8 = icmp eq i8* %7, null
  br i1 %8, label %2, label %.preheader2

.preheader2:                                      ; preds = %6
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #9
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %.preheader2, %._crit_edge6
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %nri, i32* %nrj) #9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %.preheader, label %13

; <label>:13                                      ; preds = %.lr.ph7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 77) #9
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph7, %13
  %14 = load i32* %nri, align 4, !tbaa !8
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %.preheader, %._crit_edge
  %ii.04 = phi i32 [ %61, %._crit_edge ], [ 0, %.preheader ]
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32* %iatom, i32* %gid, i32* %shift, i32* %nj) #9
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %.lr.ph5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 80) #9
  br label %19

; <label>:19                                      ; preds = %.lr.ph5, %18
  %20 = load i32* %shift, align 4, !tbaa !8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %shift, align 4, !tbaa !8
  %22 = load i32* %iatom, align 4, !tbaa !8
  %23 = icmp sgt i32 %22, -1
  %24 = icmp slt i32 %22, %natoms
  %or.cond = and i1 %23, %24
  br i1 %or.cond, label %26, label %25

; <label>:25                                      ; preds = %19
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %22, i32 %natoms) #9
  br label %26

; <label>:26                                      ; preds = %19, %25
  %27 = load i32* %nj, align 4, !tbaa !8
  %28 = load i32* %nrj, align 4, !tbaa !8
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %nrj, align 4, !tbaa !8
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %26, %52
  %i.03 = phi i32 [ %58, %52 ], [ 0, %26 ]
  %31 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32* %j) #9
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %.lr.ph
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 90) #9
  br label %34

; <label>:34                                      ; preds = %.lr.ph, %33
  %35 = load i32* %j, align 4, !tbaa !8
  %36 = icmp sgt i32 %35, -1
  %37 = icmp slt i32 %35, %natoms
  %or.cond1 = and i1 %36, %37
  br i1 %or.cond1, label %39, label %38

; <label>:38                                      ; preds = %34
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %35, i32 %natoms) #9
  %.pre = load i32* %j, align 4, !tbaa !8
  br label %39

; <label>:39                                      ; preds = %34, %38
  %40 = phi i32 [ %35, %34 ], [ %.pre, %38 ]
  %41 = sext i32 %40 to i64
  %42 = load i32* %iatom, align 4, !tbaa !8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32** %mat, i64 %43
  %45 = load i32** %44, align 8, !tbaa !10
  %46 = getelementptr inbounds i32* %45, i64 %41
  %47 = load i32* %46, align 4, !tbaa !8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

; <label>:49                                      ; preds = %39
  %50 = load i32* %shift, align 4, !tbaa !8
  %51 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %i.03, i32 %40, i32 %47, i32 %50) #9
  %.pre10 = load i32* %j, align 4, !tbaa !8
  %.pre11 = load i32* %iatom, align 4, !tbaa !8
  %.phi.trans.insert = sext i32 %.pre11 to i64
  %.phi.trans.insert12 = getelementptr inbounds i32** %mat, i64 %.phi.trans.insert
  %.pre13 = load i32** %.phi.trans.insert12, align 8, !tbaa !10
  br label %52

; <label>:52                                      ; preds = %39, %49
  %53 = phi i32* [ %45, %39 ], [ %.pre13, %49 ]
  %54 = phi i32 [ %40, %39 ], [ %.pre10, %49 ]
  %55 = load i32* %shift, align 4, !tbaa !8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32* %53, i64 %56
  store i32 %55, i32* %57, align 4, !tbaa !8
  %58 = add nuw nsw i32 %i.03, 1
  %59 = load i32* %nj, align 4, !tbaa !8
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %52, %26
  %61 = add nuw nsw i32 %ii.04, 1
  %62 = load i32* %nri, align 4, !tbaa !8
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %.lr.ph5, label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %14, %.preheader ], [ %62, %._crit_edge ]
  %64 = load i32* %nrj, align 4, !tbaa !8
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i32 %.lcssa, i32 %64) #9
  %66 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #9
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %.lr.ph7, label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge6, %.preheader2
  call void @llvm.lifetime.end(i64 256, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_nblist(%struct.__sFILE* nocapture %out, %struct.t_forcerec* nocapture readonly %fr, i32 %nDNL) #4 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9
  br label %2

; <label>:2                                       ; preds = %write_nblist.exit, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %write_nblist.exit ]
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 0
  %4 = load i32* %3, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 6
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %6) #9
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 1
  %9 = load i32* %8, align 4, !tbaa !15
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 3
  %11 = load i32* %10, align 4, !tbaa !16
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i32 %9, i32 %11) #9
  %13 = load i32* %8, align 4, !tbaa !15
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph3.i, label %write_nblist.exit

.lr.ph3.i:                                        ; preds = %2
  %15 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 10
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 7
  %17 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 9
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 8
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 11
  %.pre.i = load i32** %15, align 8, !tbaa !17
  br label %24

.loopexit.i:                                      ; preds = %48, %24
  %20 = phi i32* [ %41, %24 ], [ %53, %48 ]
  %21 = load i32* %8, align 4, !tbaa !15
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %indvars.iv.next5.i, %22
  br i1 %23, label %24, label %write_nblist.exit

; <label>:24                                      ; preds = %.loopexit.i, %.lr.ph3.i
  %25 = phi i32* [ %.pre.i, %.lr.ph3.i ], [ %20, %.loopexit.i ]
  %indvars.iv4.i = phi i64 [ 0, %.lr.ph3.i ], [ %indvars.iv.next5.i, %.loopexit.i ]
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %26 = getelementptr inbounds i32* %25, i64 %indvars.iv.next5.i
  %27 = load i32* %26, align 4, !tbaa !8
  %28 = getelementptr inbounds i32* %25, i64 %indvars.iv4.i
  %29 = load i32* %28, align 4, !tbaa !8
  %30 = sub nsw i32 %27, %29
  %31 = load i32** %16, align 8, !tbaa !18
  %32 = getelementptr inbounds i32* %31, i64 %indvars.iv4.i
  %33 = load i32* %32, align 4, !tbaa !8
  %34 = load i32** %17, align 8, !tbaa !19
  %35 = getelementptr inbounds i32* %34, i64 %indvars.iv4.i
  %36 = load i32* %35, align 4, !tbaa !8
  %37 = load i32** %18, align 8, !tbaa !20
  %38 = getelementptr inbounds i32* %37, i64 %indvars.iv4.i
  %39 = load i32* %38, align 4, !tbaa !8
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %30) #9
  %41 = load i32** %15, align 8, !tbaa !17
  %42 = getelementptr inbounds i32* %41, i64 %indvars.iv4.i
  %43 = load i32* %42, align 4, !tbaa !8
  %44 = getelementptr inbounds i32* %41, i64 %indvars.iv.next5.i
  %45 = load i32* %44, align 4, !tbaa !8
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %24
  %47 = sext i32 %43 to i64
  br label %48

; <label>:48                                      ; preds = %48, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %47, %.lr.ph.i ], [ %indvars.iv.next.i, %48 ]
  %49 = load i32** %19, align 8, !tbaa !21
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv.i
  %51 = load i32* %50, align 4, !tbaa !8
  %52 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i32 %51) #9
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %53 = load i32** %15, align 8, !tbaa !17
  %54 = getelementptr inbounds i32* %53, i64 %indvars.iv.next5.i
  %55 = load i32* %54, align 4, !tbaa !8
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next.i, %56
  br i1 %57, label %48, label %.loopexit.i

write_nblist.exit:                                ; preds = %.loopexit.i, %2
  %58 = tail call i32 @fflush(%struct.__sFILE* %out) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %59, label %2

; <label>:59                                      ; preds = %write_nblist.exit
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }

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
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!13, !9, i64 0}
!13 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80, !11, i64 88}
!14 = !{!13, !9, i64 24}
!15 = !{!13, !9, i64 4}
!16 = !{!13, !9, i64 12}
!17 = !{!13, !11, i64 56}
!18 = !{!13, !11, i64 32}
!19 = !{!13, !11, i64 48}
!20 = !{!13, !11, i64 40}
!21 = !{!13, !11, i64 64}
