; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nsgrid.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_grid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"grid->cell_index\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nsgrid.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"grid->a\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"grid->index\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"grid->nra\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Grid: %d x %d x %d cells\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [48 x i8] c"Succesfully allocated memory for grid pointers.\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"Succesfully freed memory for grid pointers.\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"Not a valid cell entry at %d\0A\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"WARNING: your box is exploding! (ncells = %d)\0A\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"ci\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"ind\00", align 1
@.str13 = private unnamed_addr constant [39 x i8] c"Filling grid from %d to %d (total %d)\0A\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"nra=%d, grid->nra=%d, cci=%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"cci\00", align 1
@.str16 = private unnamed_addr constant [18 x i8] c"ci = %d, cci = %d\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"nr:    %d\0A\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"nrx:   %d\0A\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"nry:   %d\0A\00", align 1
@.str20 = private unnamed_addr constant [11 x i8] c"nrz:   %d\0A\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"delta: %d\0A\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"gmax:  %d\0A\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"    i  cell_index\0A\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"%5d  %5d\0A\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"cells\0A\00", align 1
@.str26 = private unnamed_addr constant [31 x i8] c" ix iy iz   nr  index  cgs...\0A\00", align 1
@.str27 = private unnamed_addr constant [16 x i8] c"%3d%3d%3d%5d%5d\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str30 = private unnamed_addr constant [48 x i8] c"%s = %d should be in 0 .. %d [FILE %s, LINE %d]\00", align 1
@.str31 = private unnamed_addr constant [34 x i8] c"calc_bor: cg0=%d, cg1=%d, ncg=%d\0A\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"CG0[%d]=%d, CG1[%d]=%d\0A\00", align 1
@.str33 = private unnamed_addr constant [35 x i8] c"Dividing by zero, file %s, line %d\00", align 1

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
define void @init_grid(%struct.__sFILE* %log, %struct.t_grid* nocapture %grid, i32 %delta, [3 x float]* nocapture readonly %box, float %rlistlong, i32 %ncg) #4 {
  %cx = alloca [3 x i32], align 4
  %1 = sitofp i32 %delta to float
  br label %2

; <label>:2                                       ; preds = %2, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %2 ]
  %3 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %1, %4
  %6 = fdiv float %5, %rlistlong
  %7 = fptosi float %6 to i32
  %8 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv
  store i32 %7, i32* %8, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %9, label %2

; <label>:9                                       ; preds = %2
  %10 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  store i32 %ncg, i32* %10, align 4, !tbaa !19
  %11 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0
  %12 = load i32* %11, align 4, !tbaa !18
  %13 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  store i32 %12, i32* %13, align 4, !tbaa !21
  %14 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1
  %15 = load i32* %14, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  store i32 %15, i32* %16, align 4, !tbaa !22
  %17 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2
  %18 = load i32* %17, align 4, !tbaa !18
  %19 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  store i32 %18, i32* %19, align 4, !tbaa !23
  %20 = mul nsw i32 %15, %12
  %21 = mul nsw i32 %20, %18
  %22 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  store i32 %21, i32* %22, align 4, !tbaa !24
  %23 = shl nsw i32 %21, 1
  %24 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5
  store i32 %23, i32* %24, align 4, !tbaa !25
  %25 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  store i32 %delta, i32* %25, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  store i32 0, i32* %26, align 4, !tbaa !27
  %27 = add nsw i32 %ncg, 1
  %28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 74, i32 %27, i32 4) #8
  %29 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %30 = bitcast i32** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !28
  %31 = load i32* %10, align 4, !tbaa !19
  %32 = add nsw i32 %31, 1
  %33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %32, i32 4) #8
  %34 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %35 = bitcast i32** %34 to i8**
  store i8* %33, i8** %35, align 8, !tbaa !29
  %36 = load i32* %24, align 4, !tbaa !25
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %36, i32 4) #8
  %38 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %39 = bitcast i32** %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !30
  %40 = load i32* %24, align 4, !tbaa !25
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 77, i32 %40, i32 4) #8
  %42 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %43 = bitcast i32** %42 to i8**
  store i8* %41, i8** %43, align 8, !tbaa !31
  %44 = icmp eq %struct.__sFILE* %log, null
  br i1 %44, label %50, label %45

; <label>:45                                      ; preds = %9
  %46 = load i32* %13, align 4, !tbaa !21
  %47 = load i32* %16, align 4, !tbaa !22
  %48 = load i32* %19, align 4, !tbaa !23
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %46, i32 %47, i32 %48) #8
  br label %50

; <label>:50                                      ; preds = %9, %45
  %51 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %52 = icmp eq %struct.__sFILE* %51, null
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %50
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %51)
  br label %55

; <label>:55                                      ; preds = %50, %53
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @done_grid(%struct.t_grid* nocapture %grid) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %2 = bitcast i32** %1 to i8**
  %3 = bitcast %struct.t_grid* %grid to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 4, i1 false)
  %4 = load i8** %2, align 8, !tbaa !28
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 97, i8* %4) #8
  %5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %6 = bitcast i32** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !29
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 98, i8* %7) #8
  %8 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %9 = bitcast i32** %8 to i8**
  %10 = load i8** %9, align 8, !tbaa !30
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 99, i8* %10) #8
  %11 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %12 = bitcast i32** %11 to i8**
  %13 = load i8** %12, align 8, !tbaa !31
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %13) #8
  %14 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %15 = icmp eq %struct.__sFILE* %14, null
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %0
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i64 43, i64 1, %struct.__sFILE* %14)
  br label %18

; <label>:18                                      ; preds = %0, %16
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @xyz2ci_(i32 %nry, i32 %nrz, i32 %x, i32 %y, i32 %z) #6 {
  %1 = mul i32 %x, %nry
  %tmp = add i32 %1, %y
  %tmp1 = mul i32 %tmp, %nrz
  %2 = add i32 %tmp1, %z
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ci2xyz(%struct.t_grid* nocapture readonly %grid, i32 %i, i32* nocapture %x, i32* nocapture %y, i32* nocapture %z) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !19
  %3 = icmp sgt i32 %i, -1
  %4 = icmp sgt i32 %2, %i
  %or.cond.i = and i1 %3, %4
  br i1 %or.cond.i, label %_range_check.exit, label %5

; <label>:5                                       ; preds = %0
  %6 = add nsw i32 %2, -1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i32 %i, i32 %6, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 117) #8
  br label %_range_check.exit

_range_check.exit:                                ; preds = %0, %5
  %7 = sext i32 %i to i64
  %8 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %9 = load i32** %8, align 8, !tbaa !28
  %10 = getelementptr inbounds i32* %9, i64 %7
  %11 = load i32* %10, align 4, !tbaa !18
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %_range_check.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i32 %i) #8
  br label %14

; <label>:14                                      ; preds = %13, %_range_check.exit
  %15 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !22
  %17 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %18 = load i32* %17, align 4, !tbaa !23
  %19 = mul nsw i32 %18, %16
  %20 = sdiv i32 %11, %19
  store i32 %20, i32* %x, align 4, !tbaa !18
  %21 = load i32* %15, align 4, !tbaa !22
  %22 = mul nsw i32 %21, %20
  %23 = load i32* %17, align 4, !tbaa !23
  %24 = mul nsw i32 %22, %23
  %25 = sub nsw i32 %11, %24
  %26 = sdiv i32 %25, %23
  store i32 %26, i32* %y, align 4, !tbaa !18
  %27 = load i32* %17, align 4, !tbaa !23
  %28 = mul nsw i32 %27, %26
  %29 = sub nsw i32 %25, %28
  store i32 %29, i32* %z, align 4, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @grid_first(%struct.__sFILE* %log, %struct.t_grid* nocapture %grid, [3 x float]* nocapture readonly %box, float %rlistlong) #4 {
  %cx = alloca [3 x i32], align 4
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %2 = load i32** %1, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  %4 = load i32* %3, align 4, !tbaa !26
  %5 = sitofp i32 %4 to float
  br label %6

; <label>:6                                       ; preds = %6, %0
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %6 ]
  %7 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv10, i64 %indvars.iv10
  %8 = load float* %7, align 4, !tbaa !14
  %9 = fmul float %5, %8
  %10 = fdiv float %9, %rlistlong
  %11 = fptosi float %10 to i32
  %12 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 %indvars.iv10
  store i32 %11, i32* %12, align 4, !tbaa !18
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 3
  br i1 %exitcond12, label %13, label %6

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 0
  %15 = load i32* %14, align 4, !tbaa !18
  %16 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  store i32 %15, i32* %16, align 4, !tbaa !21
  %17 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 1
  %18 = load i32* %17, align 4, !tbaa !18
  %19 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  store i32 %18, i32* %19, align 4, !tbaa !22
  %20 = getelementptr inbounds [3 x i32]* %cx, i64 0, i64 2
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  store i32 %21, i32* %22, align 4, !tbaa !23
  %23 = mul i32 %18, %15
  %24 = mul i32 %23, %21
  %25 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %26 = load i32* %25, align 4, !tbaa !24
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %59, label %28

; <label>:28                                      ; preds = %13
  %29 = icmp ne %struct.__sFILE* %log, null
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %28
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i32 %15, i32 %18, i32 %21) #8
  br label %32

; <label>:32                                      ; preds = %30, %28
  %33 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 5
  %34 = load i32* %33, align 4, !tbaa !25
  %35 = icmp sgt i32 %24, %34
  br i1 %35, label %36, label %57

; <label>:36                                      ; preds = %32
  %37 = bitcast i32** %1 to i8**
  %38 = load i8** %37, align 8, !tbaa !31
  %39 = shl i32 %24, 2
  %40 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %38, i32 %39) #8
  store i8* %40, i8** %37, align 8, !tbaa !31
  %41 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %42 = bitcast i32** %41 to i8**
  %43 = load i8** %42, align 8, !tbaa !30
  %44 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 149, i8* %43, i32 %39) #8
  store i8* %44, i8** %42, align 8, !tbaa !30
  %45 = load i32* %33, align 4, !tbaa !25
  %46 = icmp slt i32 %45, %24
  %47 = bitcast i8* %44 to i32*
  br i1 %46, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %36
  %48 = load i32** %1, align 8, !tbaa !31
  %49 = sext i32 %45 to i64
  %50 = add i32 %24, -1
  br label %51

; <label>:51                                      ; preds = %51, %.lr.ph4
  %indvars.iv = phi i64 [ %49, %.lr.ph4 ], [ %indvars.iv.next, %51 ]
  %52 = getelementptr inbounds i32* %48, i64 %indvars.iv
  store i32 0, i32* %52, align 4, !tbaa !18
  %53 = getelementptr inbounds i32* %47, i64 %indvars.iv
  store i32 0, i32* %53, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %50
  br i1 %exitcond, label %._crit_edge5, label %51

._crit_edge5:                                     ; preds = %51, %36
  br i1 %29, label %54, label %56

; <label>:54                                      ; preds = %._crit_edge5
  %55 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i32 %24) #8
  br label %56

; <label>:56                                      ; preds = %54, %._crit_edge5
  store i32 %24, i32* %33, align 4, !tbaa !25
  br label %57

; <label>:57                                      ; preds = %56, %32
  store i32 %24, i32* %25, align 4, !tbaa !24
  %58 = load i32** %1, align 8, !tbaa !31
  br label %59

; <label>:59                                      ; preds = %13, %57
  %nra.0 = phi i32* [ %58, %57 ], [ %2, %13 ]
  %60 = icmp sgt i32 %24, 0
  br i1 %60, label %.lr.ph, label %65

.lr.ph:                                           ; preds = %59
  %nra.07 = bitcast i32* %nra.0 to i8*
  %61 = add i32 %24, -1
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 2
  %64 = add nuw nsw i64 %63, 4
  call void @llvm.memset.p0i8.i64(i8* %nra.07, i8 0, i64 %64, i32 4, i1 false)
  br label %65

; <label>:65                                      ; preds = %.lr.ph, %59
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_elemnr(%struct.__sFILE* %log, i32 %bDD, i32* nocapture readnone %cg_index, %struct.t_grid* nocapture readonly %grid, i32 %cg0, i32 %cg1, i32 %ncg) #4 {
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %2 = load i32** %1, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %4 = load i32** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %6 = load i32* %5, align 4, !tbaa !24
  %7 = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0
  %8 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0
  call fastcc void @calc_bor(%struct.__sFILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %7, i32* %8) #10
  %9 = add nsw i32 %6, -1
  br label %10

; <label>:10                                      ; preds = %._crit_edge, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %._crit_edge ]
  %11 = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv3
  %12 = load i32* %11, align 4, !tbaa !18
  %13 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv3
  %14 = load i32* %13, align 4, !tbaa !18
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %10
  %16 = sext i32 %12 to i64
  %17 = sext i32 %14 to i64
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %_range_check.exit
  %indvars.iv = phi i64 [ %16, %.lr.ph ], [ %indvars.iv.next, %_range_check.exit ]
  %19 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %20 = load i32* %19, align 4, !tbaa !18
  %21 = icmp sgt i32 %20, -1
  %22 = icmp slt i32 %20, %6
  %or.cond.i = and i1 %21, %22
  br i1 %or.cond.i, label %_range_check.exit, label %23

; <label>:23                                      ; preds = %18
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %20, i32 %9, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 217) #8
  br label %_range_check.exit

_range_check.exit:                                ; preds = %18, %23
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds i32* %4, i64 %24
  %26 = load i32* %25, align 4, !tbaa !18
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %28 = icmp slt i64 %indvars.iv.next, %17
  br i1 %28, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %_range_check.exit, %10
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp eq i64 %indvars.iv.next4, 2
  br i1 %exitcond, label %29, label %10

; <label>:29                                      ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_bor(%struct.__sFILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* nocapture %CG0, i32* nocapture %CG1) #4 {
  %1 = icmp eq i32 %bDD, 0
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  store i32 %cg0, i32* %CG0, align 4, !tbaa !18
  %3 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %3, align 4, !tbaa !18
  store i32 %cg1, i32* %CG1, align 4, !tbaa !18
  %4 = getelementptr inbounds i32* %CG1, i64 1
  store i32 0, i32* %4, align 4, !tbaa !18
  br label %14

; <label>:5                                       ; preds = %0
  %6 = icmp sgt i32 %cg1, %ncg
  store i32 %cg0, i32* %CG0, align 4, !tbaa !18
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %5
  store i32 %ncg, i32* %CG1, align 4, !tbaa !18
  %8 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %8, align 4, !tbaa !18
  %9 = sub nsw i32 %cg1, %ncg
  %10 = getelementptr inbounds i32* %CG1, i64 1
  store i32 %9, i32* %10, align 4, !tbaa !18
  br label %14

; <label>:11                                      ; preds = %5
  store i32 %cg1, i32* %CG1, align 4, !tbaa !18
  %12 = getelementptr inbounds i32* %CG0, i64 1
  store i32 0, i32* %12, align 4, !tbaa !18
  %13 = getelementptr inbounds i32* %CG1, i64 1
  store i32 0, i32* %13, align 4, !tbaa !18
  br label %14

; <label>:14                                      ; preds = %7, %11, %2
  %15 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %16 = icmp ne %struct.__sFILE* %15, null
  %17 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %17, %16
  br i1 %or.cond, label %18, label %.loopexit

; <label>:18                                      ; preds = %14
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str31, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #8
  br label %20

; <label>:20                                      ; preds = %20, %18
  %indvars.iv = phi i64 [ 0, %18 ], [ %indvars.iv.next, %20 ]
  %21 = getelementptr inbounds i32* %CG0, i64 %indvars.iv
  %22 = load i32* %21, align 4, !tbaa !18
  %23 = getelementptr inbounds i32* %CG1, i64 %indvars.iv
  %24 = load i32* %23, align 4, !tbaa !18
  %25 = trunc i64 %indvars.iv to i32
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i32 %25, i32 %22, i32 %25, i32 %24) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %.loopexit, label %20

.loopexit:                                        ; preds = %20, %14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_ptrs(%struct.t_grid* nocapture %grid) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %2 = load i32** %1, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %4 = load i32** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %6 = load i32* %5, align 4, !tbaa !24
  %7 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !21
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.preheader1.lr.ph, label %._crit_edge20

.preheader1.lr.ph:                                ; preds = %0
  %10 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %11 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %12 = add nsw i32 %6, -1
  %13 = sext i32 %6 to i64
  %.pre = load i32* %10, align 4, !tbaa !22
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %41
  %14 = phi i32 [ %8, %.preheader1.lr.ph ], [ %42, %41 ]
  %15 = phi i32 [ %.pre, %.preheader1.lr.ph ], [ %43, %41 ]
  %gmax.019 = phi i32 [ 0, %.preheader1.lr.ph ], [ %gmax.1.lcssa, %41 ]
  %ix.018 = phi i32 [ 0, %.preheader1.lr.ph ], [ %44, %41 ]
  %nr.017 = phi i32 [ 0, %.preheader1.lr.ph ], [ %nr.1.lcssa, %41 ]
  %ci.016 = phi i32 [ 0, %.preheader1.lr.ph ], [ %ci.1.lcssa, %41 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.preheader.lr.ph, label %41

.preheader.lr.ph:                                 ; preds = %.preheader1
  %.pre24 = load i32* %11, align 4, !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %36
  %17 = phi i32 [ %15, %.preheader.lr.ph ], [ %37, %36 ]
  %18 = phi i32 [ %.pre24, %.preheader.lr.ph ], [ %38, %36 ]
  %gmax.111 = phi i32 [ %gmax.019, %.preheader.lr.ph ], [ %gmax.2.lcssa, %36 ]
  %iy.010 = phi i32 [ 0, %.preheader.lr.ph ], [ %39, %36 ]
  %nr.19 = phi i32 [ %nr.017, %.preheader.lr.ph ], [ %nr.2.lcssa, %36 ]
  %ci.18 = phi i32 [ %ci.016, %.preheader.lr.ph ], [ %ci.2.lcssa, %36 ]
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %.preheader
  %20 = sext i32 %ci.18 to i64
  br label %21

; <label>:21                                      ; preds = %.lr.ph, %_range_check.exit
  %indvars.iv = phi i64 [ %20, %.lr.ph ], [ %indvars.iv.next, %_range_check.exit ]
  %gmax.25 = phi i32 [ %gmax.111, %.lr.ph ], [ %31, %_range_check.exit ]
  %nr.24 = phi i32 [ %nr.19, %.lr.ph ], [ %29, %_range_check.exit ]
  %iz.02 = phi i32 [ 0, %.lr.ph ], [ %32, %_range_check.exit ]
  %22 = icmp sgt i64 %indvars.iv, -1
  %23 = icmp slt i64 %indvars.iv, %13
  %or.cond.i = and i1 %22, %23
  br i1 %or.cond.i, label %_range_check.exit, label %24

; <label>:24                                      ; preds = %21
  %25 = trunc i64 %indvars.iv to i32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %25, i32 %12, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 235) #8
  br label %_range_check.exit

_range_check.exit:                                ; preds = %21, %24
  %26 = getelementptr inbounds i32* %2, i64 %indvars.iv
  store i32 %nr.24, i32* %26, align 4, !tbaa !18
  %27 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %28 = load i32* %27, align 4, !tbaa !18
  %29 = add nsw i32 %28, %nr.24
  %30 = icmp sgt i32 %gmax.25, %28
  %31 = select i1 %30, i32 %gmax.25, i32 %28
  store i32 0, i32* %27, align 4, !tbaa !18
  %32 = add nuw nsw i32 %iz.02, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %33 = load i32* %11, align 4, !tbaa !23
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %21, label %._crit_edge

._crit_edge:                                      ; preds = %_range_check.exit
  %35 = trunc i64 %indvars.iv.next to i32
  %.pre25 = load i32* %10, align 4, !tbaa !22
  br label %36

; <label>:36                                      ; preds = %._crit_edge, %.preheader
  %37 = phi i32 [ %.pre25, %._crit_edge ], [ %17, %.preheader ]
  %38 = phi i32 [ %33, %._crit_edge ], [ %18, %.preheader ]
  %gmax.2.lcssa = phi i32 [ %31, %._crit_edge ], [ %gmax.111, %.preheader ]
  %nr.2.lcssa = phi i32 [ %29, %._crit_edge ], [ %nr.19, %.preheader ]
  %ci.2.lcssa = phi i32 [ %35, %._crit_edge ], [ %ci.18, %.preheader ]
  %39 = add nuw nsw i32 %iy.010, 1
  %40 = icmp slt i32 %39, %37
  br i1 %40, label %.preheader, label %._crit_edge12

._crit_edge12:                                    ; preds = %36
  %.pre26 = load i32* %7, align 4, !tbaa !21
  br label %41

; <label>:41                                      ; preds = %._crit_edge12, %.preheader1
  %42 = phi i32 [ %.pre26, %._crit_edge12 ], [ %14, %.preheader1 ]
  %43 = phi i32 [ %37, %._crit_edge12 ], [ %15, %.preheader1 ]
  %gmax.1.lcssa = phi i32 [ %gmax.2.lcssa, %._crit_edge12 ], [ %gmax.019, %.preheader1 ]
  %nr.1.lcssa = phi i32 [ %nr.2.lcssa, %._crit_edge12 ], [ %nr.017, %.preheader1 ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %._crit_edge12 ], [ %ci.016, %.preheader1 ]
  %44 = add nuw nsw i32 %ix.018, 1
  %45 = icmp slt i32 %44, %42
  br i1 %45, label %.preheader1, label %._crit_edge20

._crit_edge20:                                    ; preds = %41, %0
  %gmax.0.lcssa = phi i32 [ 0, %0 ], [ %gmax.1.lcssa, %41 ]
  %46 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  store i32 %gmax.0.lcssa, i32* %46, align 4, !tbaa !27
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @grid_last(%struct.__sFILE* %log, i32 %bDD, i32* nocapture readonly %cg_index, %struct.t_grid* nocapture readonly %grid, i32 %cg0, i32 %cg1, i32 %ncg) #4 {
  %CG0 = alloca [2 x i32], align 4
  %CG1 = alloca [2 x i32], align 4
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %2 = load i32** %1, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %4 = load i32** %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %6 = load i32** %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %8 = load i32** %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %10 = load i32* %9, align 4, !tbaa !24
  %11 = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 0
  call fastcc void @calc_bor(%struct.__sFILE* %log, i32 %bDD, i32 %cg0, i32 %cg1, i32 %ncg, i32* %11, i32* %12) #10
  %13 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  %14 = add nsw i32 %10, -1
  br label %15

; <label>:15                                      ; preds = %._crit_edge, %0
  %indvars.iv5 = phi i64 [ 0, %0 ], [ %indvars.iv.next6, %._crit_edge ]
  %16 = getelementptr inbounds [2 x i32]* %CG0, i64 0, i64 %indvars.iv5
  %17 = load i32* %16, align 4, !tbaa !18
  %18 = getelementptr inbounds [2 x i32]* %CG1, i64 0, i64 %indvars.iv5
  %19 = load i32* %18, align 4, !tbaa !18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %15
  %21 = sext i32 %17 to i64
  %22 = sext i32 %19 to i64
  br label %23

; <label>:23                                      ; preds = %.lr.ph, %_range_check.exit2
  %indvars.iv = phi i64 [ %21, %.lr.ph ], [ %indvars.iv.next, %_range_check.exit2 ]
  %24 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %25 = load i32* %24, align 4, !tbaa !18
  %26 = icmp sgt i32 %25, -1
  %27 = icmp slt i32 %25, %10
  %or.cond.i = and i1 %26, %27
  br i1 %or.cond.i, label %_range_check.exit, label %28

; <label>:28                                      ; preds = %23
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i32 %25, i32 %14, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 261) #8
  br label %_range_check.exit

_range_check.exit:                                ; preds = %23, %28
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i32* %6, i64 %29
  %31 = load i32* %30, align 4, !tbaa !18
  %32 = getelementptr inbounds i32* %4, i64 %29
  %33 = load i32* %32, align 4, !tbaa !18
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4, !tbaa !18
  %35 = add nsw i32 %33, %31
  %36 = load i32* %13, align 4, !tbaa !19
  %37 = icmp sgt i32 %35, -1
  %38 = icmp slt i32 %35, %36
  %or.cond.i1 = and i1 %37, %38
  br i1 %or.cond.i1, label %_range_check.exit2, label %39

; <label>:39                                      ; preds = %_range_check.exit
  %40 = add nsw i32 %36, -1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i32 %35, i32 %40, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 263) #8
  br label %_range_check.exit2

_range_check.exit2:                               ; preds = %_range_check.exit, %39
  %41 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv
  %42 = load i32* %41, align 4, !tbaa !18
  %43 = sext i32 %35 to i64
  %44 = getelementptr inbounds i32* %8, i64 %43
  store i32 %42, i32* %44, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %45 = icmp slt i64 %indvars.iv.next, %22
  br i1 %45, label %23, label %._crit_edge

._crit_edge:                                      ; preds = %_range_check.exit2, %15
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp eq i64 %indvars.iv.next6, 2
  br i1 %exitcond, label %46, label %15

; <label>:46                                      ; preds = %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fill_grid(%struct.__sFILE* nocapture readnone %log, i32 %bDD, i32* nocapture readonly %cg_index, %struct.t_grid* nocapture readonly %grid, [3 x float]* nocapture readonly %box, i32 %ncg, i32 %cg0, i32 %cg1, [3 x float]* nocapture readonly %cg_cm) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %2 = load i32** %1, align 8, !tbaa !28
  %3 = bitcast i32* %2 to i8*
  %4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !22
  %8 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %9 = load i32* %8, align 4, !tbaa !23
  %10 = sitofp i32 %5 to float
  %11 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.200000e-38
  br i1 %14, label %15, label %_divide.exit

; <label>:15                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 282) #8
  br label %_divide.exit

_divide.exit:                                     ; preds = %0, %15
  %16 = fdiv float %10, %12
  %17 = sitofp i32 %7 to float
  %18 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.200000e-38
  br i1 %21, label %22, label %_divide.exit2

; <label>:22                                      ; preds = %_divide.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 283) #8
  br label %_divide.exit2

_divide.exit2:                                    ; preds = %_divide.exit, %22
  %23 = fdiv float %17, %19
  %24 = sitofp i32 %9 to float
  %25 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %26 = load float* %25, align 4, !tbaa !14
  %27 = fpext float %26 to double
  %28 = fcmp olt double %27, 1.200000e-38
  br i1 %28, label %29, label %_divide.exit3

; <label>:29                                      ; preds = %_divide.exit2
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 284) #8
  br label %_divide.exit3

_divide.exit3:                                    ; preds = %_divide.exit2, %29
  %30 = fdiv float %24, %26
  %31 = icmp sgt i32 %cg0, 0
  br i1 %31, label %.lr.ph10, label %36

.lr.ph10:                                         ; preds = %_divide.exit3
  %32 = add i32 %cg0, -1
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 2
  %35 = add nuw nsw i64 %34, 4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 -1, i64 %35, i32 4, i1 false)
  br label %36

; <label>:36                                      ; preds = %.lr.ph10, %_divide.exit3
  %37 = load %struct.__sFILE** @debug, align 8, !tbaa !32
  %38 = icmp eq %struct.__sFILE* %37, null
  br i1 %38, label %.preheader5, label %39

; <label>:39                                      ; preds = %36
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([39 x i8]* @.str13, i64 0, i64 0), i32 %cg0, i32 %cg1, i32 %ncg) #8
  br label %.preheader5

.preheader5:                                      ; preds = %36, %39
  %41 = icmp slt i32 %cg0, %cg1
  br i1 %41, label %.lr.ph8, label %.preheader

.lr.ph8:                                          ; preds = %.preheader5
  %42 = add nsw i32 %5, -1
  %43 = add nsw i32 %7, -1
  %44 = add nsw i32 %9, -1
  %45 = sext i32 %cg0 to i64
  %46 = add i32 %cg1, -1
  br label %54

.preheader:                                       ; preds = %54, %.preheader5
  %i.1.lcssa = phi i32 [ %cg0, %.preheader5 ], [ %cg1, %54 ]
  %47 = icmp slt i32 %i.1.lcssa, %ncg
  br i1 %47, label %.lr.ph, label %76

.lr.ph:                                           ; preds = %.preheader
  %48 = sext i32 %i.1.lcssa to i64
  %49 = add i32 %ncg, -1
  %scevgep = getelementptr i32* %2, i64 %48
  %scevgep12 = bitcast i32* %scevgep to i8*
  %50 = sub i32 %49, %i.1.lcssa
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 2
  %53 = add nuw nsw i64 %52, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep12, i8 -1, i64 %53, i32 4, i1 false)
  br label %76

; <label>:54                                      ; preds = %54, %.lr.ph8
  %indvars.iv = phi i64 [ %45, %.lr.ph8 ], [ %indvars.iv.next, %54 ]
  %55 = getelementptr inbounds i32* %cg_index, i64 %indvars.iv
  %56 = load i32* %55, align 4, !tbaa !18
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x float]* %cg_cm, i64 %57, i64 0
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fmul float %16, %59
  %61 = fptosi float %60 to i32
  %62 = getelementptr inbounds [3 x float]* %cg_cm, i64 %57, i64 1
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fmul float %23, %63
  %65 = fptosi float %64 to i32
  %66 = getelementptr inbounds [3 x float]* %cg_cm, i64 %57, i64 2
  %67 = load float* %66, align 4, !tbaa !14
  %68 = fmul float %30, %67
  %69 = fptosi float %68 to i32
  %70 = icmp slt i32 %61, %5
  %. = select i1 %70, i32 %61, i32 %42
  %71 = icmp slt i32 %65, %7
  %iy.0 = select i1 %71, i32 %65, i32 %43
  %72 = icmp slt i32 %69, %9
  %.1 = select i1 %72, i32 %69, i32 %44
  %73 = mul i32 %., %7
  %tmp = add i32 %iy.0, %73
  %tmp4 = mul i32 %tmp, %9
  %74 = add i32 %tmp4, %.1
  %75 = getelementptr inbounds i32* %2, i64 %indvars.iv
  store i32 %74, i32* %75, align 4, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %46
  br i1 %exitcond, label %.preheader, label %54

; <label>:76                                      ; preds = %.lr.ph, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @check_grid(%struct.__sFILE* nocapture readnone %log, %struct.t_grid* nocapture readonly %grid) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.preheader2.lr.ph, label %._crit_edge18

.preheader2.lr.ph:                                ; preds = %0
  %4 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %5 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %6 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %7 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %8 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 4
  %.pre = load i32* %4, align 4, !tbaa !22
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %._crit_edge11
  %9 = phi i32 [ %.pre, %.preheader2.lr.ph ], [ %54, %._crit_edge11 ]
  %ix.016 = phi i32 [ 0, %.preheader2.lr.ph ], [ %55, %._crit_edge11 ]
  %cci.015 = phi i32 [ 0, %.preheader2.lr.ph ], [ %cci.1.lcssa, %._crit_edge11 ]
  %ci.014 = phi i32 [ 0, %.preheader2.lr.ph ], [ %ci.1.lcssa, %._crit_edge11 ]
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge11

.preheader.lr.ph:                                 ; preds = %.preheader2
  %.pre20 = load i32* %5, align 4, !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %49
  %11 = phi i32 [ %9, %.preheader.lr.ph ], [ %50, %49 ]
  %12 = phi i32 [ %.pre20, %.preheader.lr.ph ], [ %51, %49 ]
  %cci.110 = phi i32 [ %cci.015, %.preheader.lr.ph ], [ %cci.2.lcssa, %49 ]
  %ci.19 = phi i32 [ %ci.014, %.preheader.lr.ph ], [ %ci.2.lcssa, %49 ]
  %iy.07 = phi i32 [ 0, %.preheader.lr.ph ], [ %52, %49 ]
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %.preheader
  %14 = sext i32 %ci.19 to i64
  br label %15

; <label>:15                                      ; preds = %.lr.ph, %44
  %16 = phi i32 [ %12, %.lr.ph ], [ %46, %44 ]
  %indvars.iv = phi i64 [ %14, %.lr.ph ], [ %indvars.iv.next, %44 ]
  %cci.25 = phi i32 [ %cci.110, %.lr.ph ], [ %35, %44 ]
  %iz.03 = phi i32 [ 0, %.lr.ph ], [ %45, %44 ]
  %17 = icmp sgt i64 %indvars.iv, 0
  br i1 %17, label %18, label %31

; <label>:18                                      ; preds = %15
  %19 = load i32** %6, align 8, !tbaa !30
  %20 = getelementptr inbounds i32* %19, i64 %indvars.iv
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = sext i32 %cci.25 to i64
  %23 = getelementptr inbounds i32* %19, i64 %22
  %24 = load i32* %23, align 4, !tbaa !18
  %25 = sub nsw i32 %21, %24
  %26 = load i32** %7, align 8, !tbaa !31
  %27 = getelementptr inbounds i32* %26, i64 %22
  %28 = load i32* %27, align 4, !tbaa !18
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %31, label %30

; <label>:30                                      ; preds = %18
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i32 %25, i32 %28, i32 %cci.25) #8
  %.pre21 = load i32* %5, align 4, !tbaa !23
  br label %31

; <label>:31                                      ; preds = %18, %30, %15
  %32 = phi i32 [ %16, %18 ], [ %.pre21, %30 ], [ %16, %15 ]
  %33 = load i32* %4, align 4, !tbaa !22
  %34 = mul i32 %33, %ix.016
  %tmp = add i32 %34, %iy.07
  %tmp1 = mul i32 %tmp, %32
  %35 = add i32 %tmp1, %iz.03
  %36 = load i32* %8, align 4, !tbaa !24
  %37 = icmp sgt i32 %35, -1
  %38 = icmp slt i32 %35, %36
  %or.cond.i = and i1 %37, %38
  br i1 %or.cond.i, label %_range_check.exit, label %39

; <label>:39                                      ; preds = %31
  %40 = add nsw i32 %36, -1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i32 %35, i32 %40, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 340) #8
  br label %_range_check.exit

_range_check.exit:                                ; preds = %31, %39
  %41 = trunc i64 %indvars.iv to i32
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %44, label %43

; <label>:43                                      ; preds = %_range_check.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i32 %41, i32 %35) #8
  br label %44

; <label>:44                                      ; preds = %_range_check.exit, %43
  %45 = add nuw nsw i32 %iz.03, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %46 = load i32* %5, align 4, !tbaa !23
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %44
  %48 = trunc i64 %indvars.iv.next to i32
  %.pre22 = load i32* %4, align 4, !tbaa !22
  br label %49

; <label>:49                                      ; preds = %._crit_edge, %.preheader
  %50 = phi i32 [ %.pre22, %._crit_edge ], [ %11, %.preheader ]
  %51 = phi i32 [ %46, %._crit_edge ], [ %12, %.preheader ]
  %cci.2.lcssa = phi i32 [ %35, %._crit_edge ], [ %cci.110, %.preheader ]
  %ci.2.lcssa = phi i32 [ %48, %._crit_edge ], [ %ci.19, %.preheader ]
  %52 = add nuw nsw i32 %iy.07, 1
  %53 = icmp slt i32 %52, %50
  br i1 %53, label %.preheader, label %._crit_edge11

._crit_edge11:                                    ; preds = %49, %.preheader2
  %54 = phi i32 [ %9, %.preheader2 ], [ %50, %49 ]
  %cci.1.lcssa = phi i32 [ %cci.015, %.preheader2 ], [ %cci.2.lcssa, %49 ]
  %ci.1.lcssa = phi i32 [ %ci.014, %.preheader2 ], [ %ci.2.lcssa, %49 ]
  %55 = add nuw nsw i32 %ix.016, 1
  %56 = load i32* %1, align 4, !tbaa !21
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %.preheader2, label %._crit_edge18

._crit_edge18:                                    ; preds = %._crit_edge11, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_grid(%struct.__sFILE* %log, %struct.t_grid* nocapture readonly %grid, i32 %bDD, i32* nocapture readnone %cg_index) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %80, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !19
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i32 %4) #8
  %6 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !21
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str18, i64 0, i64 0), i32 %7) #8
  %9 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 2
  %10 = load i32* %9, align 4, !tbaa !22
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i32 %10) #8
  %12 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 3
  %13 = load i32* %12, align 4, !tbaa !23
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0), i32 %13) #8
  %15 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 6
  %16 = load i32* %15, align 4, !tbaa !26
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str21, i64 0, i64 0), i32 %16) #8
  %18 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 7
  %19 = load i32* %18, align 4, !tbaa !27
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %19) #8
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %log)
  %22 = load i32* %3, align 4, !tbaa !19
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %2
  %24 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  br label %25

; <label>:25                                      ; preds = %.lr.ph16, %25
  %indvars.iv20 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next21, %25 ]
  %26 = load i32** %24, align 8, !tbaa !28
  %27 = getelementptr inbounds i32* %26, i64 %indvars.iv20
  %28 = load i32* %27, align 4, !tbaa !18
  %29 = trunc i64 %indvars.iv20 to i32
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i32 %29, i32 %28) #8
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %31 = load i32* %3, align 4, !tbaa !19
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %indvars.iv.next21, %32
  br i1 %33, label %25, label %._crit_edge17

._crit_edge17:                                    ; preds = %25, %2
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %log)
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %log)
  %36 = load i32* %6, align 4, !tbaa !21
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %.preheader1.lr.ph, label %._crit_edge13

.preheader1.lr.ph:                                ; preds = %._crit_edge17
  %38 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 9
  %39 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 10
  %40 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 11
  %.pre = load i32* %9, align 4, !tbaa !22
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %74
  %41 = phi i32 [ %36, %.preheader1.lr.ph ], [ %75, %74 ]
  %42 = phi i32 [ %.pre, %.preheader1.lr.ph ], [ %76, %74 ]
  %ci.012 = phi i32 [ 0, %.preheader1.lr.ph ], [ %ci.1.lcssa, %74 ]
  %ix.011 = phi i32 [ 0, %.preheader1.lr.ph ], [ %77, %74 ]
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %.preheader.lr.ph, label %74

.preheader.lr.ph:                                 ; preds = %.preheader1
  %.pre22 = load i32* %12, align 4, !tbaa !23
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %69
  %44 = phi i32 [ %42, %.preheader.lr.ph ], [ %70, %69 ]
  %45 = phi i32 [ %.pre22, %.preheader.lr.ph ], [ %71, %69 ]
  %ci.18 = phi i32 [ %ci.012, %.preheader.lr.ph ], [ %ci.2.lcssa, %69 ]
  %iy.07 = phi i32 [ 0, %.preheader.lr.ph ], [ %72, %69 ]
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %.lr.ph5, label %69

.lr.ph5:                                          ; preds = %.preheader
  %47 = sext i32 %ci.18 to i64
  br label %48

; <label>:48                                      ; preds = %.lr.ph5, %._crit_edge
  %indvars.iv18 = phi i64 [ %47, %.lr.ph5 ], [ %indvars.iv.next19, %._crit_edge ]
  %iz.03 = phi i32 [ 0, %.lr.ph5 ], [ %65, %._crit_edge ]
  %49 = load i32** %38, align 8, !tbaa !30
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv18
  %51 = load i32* %50, align 4, !tbaa !18
  %52 = load i32** %39, align 8, !tbaa !31
  %53 = getelementptr inbounds i32* %52, i64 %indvars.iv18
  %54 = load i32* %53, align 4, !tbaa !18
  %55 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str27, i64 0, i64 0), i32 %ix.011, i32 %iy.07, i32 %iz.03, i32 %54, i32 %51) #8
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %48
  %57 = sext i32 %51 to i64
  %58 = add i32 %54, -1
  br label %59

; <label>:59                                      ; preds = %59, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ]
  %60 = add nsw i64 %indvars.iv, %57
  %61 = load i32** %40, align 8, !tbaa !29
  %62 = getelementptr inbounds i32* %61, i64 %60
  %63 = load i32* %62, align 4, !tbaa !18
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i32 %63) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %58
  br i1 %exitcond, label %._crit_edge, label %59

._crit_edge:                                      ; preds = %59, %48
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %65 = add nuw nsw i32 %iz.03, 1
  %indvars.iv.next19 = add i64 %indvars.iv18, 1
  %66 = load i32* %12, align 4, !tbaa !23
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %48, label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge
  %68 = trunc i64 %indvars.iv.next19 to i32
  %.pre23 = load i32* %9, align 4, !tbaa !22
  br label %69

; <label>:69                                      ; preds = %._crit_edge6, %.preheader
  %70 = phi i32 [ %.pre23, %._crit_edge6 ], [ %44, %.preheader ]
  %71 = phi i32 [ %66, %._crit_edge6 ], [ %45, %.preheader ]
  %ci.2.lcssa = phi i32 [ %68, %._crit_edge6 ], [ %ci.18, %.preheader ]
  %72 = add nuw nsw i32 %iy.07, 1
  %73 = icmp slt i32 %72, %70
  br i1 %73, label %.preheader, label %._crit_edge9

._crit_edge9:                                     ; preds = %69
  %.pre24 = load i32* %6, align 4, !tbaa !21
  br label %74

; <label>:74                                      ; preds = %._crit_edge9, %.preheader1
  %75 = phi i32 [ %.pre24, %._crit_edge9 ], [ %41, %.preheader1 ]
  %76 = phi i32 [ %70, %._crit_edge9 ], [ %42, %.preheader1 ]
  %ci.1.lcssa = phi i32 [ %ci.2.lcssa, %._crit_edge9 ], [ %ci.012, %.preheader1 ]
  %77 = add nuw nsw i32 %ix.011, 1
  %78 = icmp slt i32 %77, %75
  br i1 %78, label %.preheader1, label %._crit_edge13

._crit_edge13:                                    ; preds = %74, %._crit_edge17
  %79 = tail call i32 @fflush(%struct.__sFILE* %log) #8
  br label %80

; <label>:80                                      ; preds = %0, %._crit_edge13
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @mv_grid(%struct.t_commrec* nocapture readonly %cr, i32 %bDD, i32* nocapture readnone %cg_index, %struct.t_grid* nocapture readonly %grid, i32* nocapture readonly %cgload) #4 {
  %1 = getelementptr inbounds %struct.t_grid* %grid, i64 0, i32 8
  %2 = load i32** %1, align 8, !tbaa !28
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !33
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %37
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %52, %37 ]
  %cur.01 = phi i32 [ %7, %.lr.ph ], [ %51, %37 ]
  %11 = icmp eq i32 %cur.01, 0
  br i1 %11, label %17, label %12

; <label>:12                                      ; preds = %10
  %13 = add nsw i32 %cur.01, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32* %cgload, i64 %14
  %16 = load i32* %15, align 4, !tbaa !18
  br label %17

; <label>:17                                      ; preds = %10, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %10 ]
  %19 = sext i32 %cur.01 to i64
  %20 = getelementptr inbounds i32* %cgload, i64 %19
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = sub nsw i32 %21, %18
  %23 = load i32* %8, align 4, !tbaa !36
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds i32* %2, i64 %24
  %26 = bitcast i32* %25 to i8*
  %27 = shl i32 %22, 2
  tail call void @gmx_tx(i32 %23, i8* %26, i32 %27) #8
  %28 = add nsw i32 %cur.01, 1
  %29 = load i32* %3, align 4, !tbaa !33
  %30 = srem i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

; <label>:32                                      ; preds = %17
  %33 = add nsw i32 %30, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32* %cgload, i64 %34
  %36 = load i32* %35, align 4, !tbaa !18
  br label %37

; <label>:37                                      ; preds = %17, %32
  %38 = phi i32 [ %36, %32 ], [ 0, %17 ]
  %39 = sext i32 %30 to i64
  %40 = getelementptr inbounds i32* %cgload, i64 %39
  %41 = load i32* %40, align 4, !tbaa !18
  %42 = sub nsw i32 %41, %38
  %43 = load i32* %9, align 4, !tbaa !37
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds i32* %2, i64 %44
  %46 = bitcast i32* %45 to i8*
  %47 = shl i32 %42, 2
  tail call void @gmx_rx(i32 %43, i8* %46, i32 %47) #8
  %48 = load i32* %8, align 4, !tbaa !36
  tail call void @gmx_tx_wait(i32 %48) #8
  %49 = load i32* %9, align 4, !tbaa !37
  tail call void @gmx_rx_wait(i32 %49) #8
  %50 = load i32* %3, align 4, !tbaa !33
  %51 = srem i32 %28, %50
  %52 = add nuw nsw i32 %i.02, 1
  %53 = add nsw i32 %50, -1
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %10, label %._crit_edge

._crit_edge:                                      ; preds = %37, %0
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #1

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }

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
!18 = !{!7, !7, i64 0}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!21 = !{!20, !7, i64 4}
!22 = !{!20, !7, i64 8}
!23 = !{!20, !7, i64 12}
!24 = !{!20, !7, i64 16}
!25 = !{!20, !7, i64 20}
!26 = !{!20, !7, i64 24}
!27 = !{!20, !7, i64 28}
!28 = !{!20, !4, i64 32}
!29 = !{!20, !4, i64 56}
!30 = !{!20, !4, i64 40}
!31 = !{!20, !4, i64 48}
!32 = !{!4, !4, i64 0}
!33 = !{!34, !7, i64 4}
!34 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!35 = !{!34, !7, i64 0}
!36 = !{!34, !7, i64 8}
!37 = !{!34, !7, i64 12}
