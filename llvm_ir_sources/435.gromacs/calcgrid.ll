; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcgrid.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@factor = global [6 x i32] [i32 2, i32 3, i32 5, i32 7, i32 11, i32 13], align 16
@.str = private unnamed_addr constant [33 x i8] c"invalid fourier grid spacing: %g\00", align 1
@ng = common global i32 0, align 4
@ng_max = common global i32 0, align 4
@n_list = common global i32 0, align 4
@n_list_alloc = common global i32 0, align 4
@list = common global i32* null, align 8
@decomp = common global [6 x i32] zeroinitializer, align 16
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [47 x i8] c"Calculating fourier grid dimensions for%s%s%s\0A\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c" Y\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c" Z\00", align 1
@debug = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [10 x i8] c"grid: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [84 x i8] c"the x or y grid spacing (nx %d, ny %d) is not divisible by the number of nodes (%d)\00", align 1
@.str8 = private unnamed_addr constant [83 x i8] c"could not find a grid spacing with nx and ny divisible by the number of nodes (%d)\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"Using a fourier grid of %dx%dx%d, spacing %.3f %.3f %.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str11 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcgrid.c\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_grid([3 x float]* nocapture readonly %box, float %gr_sp, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32 %nnodes) #3 {
  %n = alloca [3 x i32], align 4
  %nmin = alloca [3 x i32], align 4
  %box_size = alloca [3 x float], align 4
  %spacing = alloca [3 x float], align 4
  %1 = fcmp ugt float %gr_sp, 0.000000e+00
  br i1 %1, label %.preheader4, label %2

; <label>:2                                       ; preds = %0
  %3 = fpext float %gr_sp to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0), double %3) #7
  br label %.preheader4

.preheader4:                                      ; preds = %2, %0, %.preheader4
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.preheader4 ], [ 0, %0 ], [ 0, %2 ]
  %4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv28, i64 %indvars.iv28
  %5 = bitcast float* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv28
  %8 = bitcast float* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %9, label %.preheader4

; <label>:9                                       ; preds = %.preheader4
  %10 = load i32* %nx, align 4, !tbaa !16
  %11 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 0
  store i32 %10, i32* %11, align 4, !tbaa !16
  %12 = load i32* %ny, align 4, !tbaa !16
  %13 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 1
  store i32 %12, i32* %13, align 4, !tbaa !16
  %14 = load i32* %nz, align 4, !tbaa !16
  %15 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 2
  store i32 %14, i32* %15, align 4, !tbaa !16
  store i32 1, i32* @ng, align 4, !tbaa !16
  store i32 1, i32* @ng_max, align 4, !tbaa !16
  br label %16

; <label>:16                                      ; preds = %28, %9
  %17 = phi i32 [ 1, %9 ], [ %29, %28 ]
  %indvars.iv25 = phi i64 [ 0, %9 ], [ %indvars.iv.next26, %28 ]
  %18 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv25
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fdiv float %19, %gr_sp
  %21 = fpext float %20 to double
  %22 = fadd double %21, 9.990000e-01
  %23 = fptosi double %22 to i32
  %24 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv25
  store i32 %23, i32* %24, align 4, !tbaa !16
  %25 = shl nsw i32 %23, 1
  %26 = icmp sgt i32 %25, %17
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %16
  store i32 %25, i32* @ng_max, align 4, !tbaa !16
  br label %28

; <label>:28                                      ; preds = %16, %27
  %29 = phi i32 [ %17, %16 ], [ %25, %27 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %30, label %16

; <label>:30                                      ; preds = %28
  store i32 0, i32* @n_list, align 4, !tbaa !16
  store i32 0, i32* @n_list_alloc, align 4, !tbaa !16
  store i32* null, i32** @list, align 8, !tbaa !17
  call void @llvm.memset.p0i8.i64(i8* bitcast ([6 x i32]* @decomp to i8*), i8 0, i64 24, i32 16, i1 false)
  tail call fastcc void @make_list(i32 0) #8
  %31 = load i32* %nx, align 4, !tbaa !16
  %32 = icmp slt i32 %31, 1
  %.pre = load i32* %ny, align 4, !tbaa !16
  %33 = icmp slt i32 %.pre, 1
  %or.cond = or i1 %32, %33
  br i1 %or.cond, label %._crit_edge, label %34

; <label>:34                                      ; preds = %30
  %35 = load i32* %nz, align 4, !tbaa !16
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %._crit_edge, label %46

._crit_edge:                                      ; preds = %30, %34
  %37 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !17
  %38 = icmp sgt i32 %31, 0
  %39 = select i1 %38, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0)
  %40 = icmp sgt i32 %.pre, 0
  %41 = select i1 %40, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)
  %42 = load i32* %nz, align 4, !tbaa !16
  %43 = icmp sgt i32 %42, 0
  %44 = select i1 %43, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0), i8* %39, i8* %41, i8* %44) #7
  br label %46

; <label>:46                                      ; preds = %._crit_edge, %34
  %47 = load i8** bitcast (i32** @list to i8**), align 8, !tbaa !17
  %48 = load i32* @n_list, align 4, !tbaa !16
  %49 = sext i32 %48 to i64
  tail call void @qsort(i8* %47, i64 %49, i64 4, i32 (i8*, i8*)* @list_comp) #7
  %50 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %51 = icmp ne %struct.__sFILE* %50, null
  %52 = load i32* @n_list, align 4
  %53 = icmp sgt i32 %52, 0
  %or.cond38 = and i1 %51, %53
  br i1 %or.cond38, label %.lr.ph11.preheader, label %.loopexit

.lr.ph11.preheader:                               ; preds = %46
  %54 = load i32** @list, align 8, !tbaa !17
  %55 = load i32* %54, align 4, !tbaa !16
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %55) #7
  %57 = load i32* @n_list, align 4, !tbaa !16
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %._crit_edge31, label %.loopexit

._crit_edge31:                                    ; preds = %.lr.ph11.preheader, %._crit_edge31
  %indvars.iv.next2139 = phi i64 [ %indvars.iv.next21, %._crit_edge31 ], [ 1, %.lr.ph11.preheader ]
  %.pre32 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %59 = load i32** @list, align 8, !tbaa !17
  %60 = getelementptr inbounds i32* %59, i64 %indvars.iv.next2139
  %61 = load i32* %60, align 4, !tbaa !16
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %.pre32, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %61) #7
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv.next2139, 1
  %63 = load i32* @n_list, align 4, !tbaa !16
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %indvars.iv.next21, %64
  br i1 %65, label %._crit_edge31, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph11.preheader, %._crit_edge31, %46
  %66 = load i32* %nx, align 4, !tbaa !16
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68                                      ; preds = %.loopexit
  %69 = srem i32 %66, %nnodes
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %._crit_edge33

._crit_edge33:                                    ; preds = %68
  %.pre34 = load i32* %ny, align 4, !tbaa !16
  br label %77

; <label>:71                                      ; preds = %68, %.loopexit
  %72 = load i32* %ny, align 4, !tbaa !16
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %.preheader1

; <label>:74                                      ; preds = %71
  %75 = srem i32 %72, %nnodes
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %.preheader1, label %77

; <label>:77                                      ; preds = %._crit_edge33, %74
  %78 = phi i32 [ %.pre34, %._crit_edge33 ], [ %72, %74 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0), i32 %66, i32 %78, i32 %nnodes) #7
  br label %.preheader1

.preheader1:                                      ; preds = %71, %77, %74, %.critedge.thread
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.critedge.thread ], [ 0, %74 ], [ 0, %77 ], [ 0, %71 ]
  %79 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv17
  %80 = load i32* @n_list, align 4, !tbaa !16
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %.lr.ph, label %.preheader1..critedge_crit_edge

.preheader1..critedge_crit_edge:                  ; preds = %.preheader1
  %.pre36 = load i32* %79, align 4, !tbaa !16
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader1
  %82 = load i32** @list, align 8, !tbaa !17
  %83 = getelementptr inbounds [3 x i32]* %nmin, i64 0, i64 %indvars.iv17
  %84 = trunc i64 %indvars.iv17 to i32
  %85 = icmp eq i32 %84, 2
  %86 = sext i32 %80 to i64
  %.pre35 = load i32* %79, align 4, !tbaa !16
  br label %87

; <label>:87                                      ; preds = %.lr.ph, %100
  %88 = phi i32 [ %.pre35, %.lr.ph ], [ %101, %100 ]
  %indvars.iv15 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next16, %100 ]
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %.critedge.thread

; <label>:90                                      ; preds = %87
  %91 = getelementptr inbounds i32* %82, i64 %indvars.iv15
  %92 = load i32* %91, align 4, !tbaa !16
  %93 = load i32* %83, align 4, !tbaa !16
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %100, label %95

; <label>:95                                      ; preds = %90
  br i1 %85, label %99, label %96

; <label>:96                                      ; preds = %95
  %97 = srem i32 %92, %nnodes
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %96, %95
  store i32 %92, i32* %79, align 4, !tbaa !16
  br label %100

; <label>:100                                     ; preds = %90, %96, %99
  %101 = phi i32 [ %88, %90 ], [ %88, %96 ], [ %92, %99 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %102 = icmp slt i64 %indvars.iv.next16, %86
  br i1 %102, label %87, label %.critedge

.critedge:                                        ; preds = %100, %.preheader1..critedge_crit_edge
  %103 = phi i32 [ %.pre36, %.preheader1..critedge_crit_edge ], [ %101, %100 ]
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %.critedge.thread

; <label>:105                                     ; preds = %.critedge
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([83 x i8]* @.str8, i64 0, i64 0), i32 %nnodes) #7
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %87, %.critedge, %105
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond19 = icmp eq i64 %indvars.iv.next18, 3
  br i1 %exitcond19, label %.preheader, label %.preheader1

.preheader:                                       ; preds = %.critedge.thread, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.critedge.thread ]
  %max_spacing.06 = phi float [ %max_spacing.1, %.preheader ], [ 0.000000e+00, %.critedge.thread ]
  %106 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv
  %107 = load float* %106, align 4, !tbaa !14
  %108 = getelementptr inbounds [3 x i32]* %n, i64 0, i64 %indvars.iv
  %109 = load i32* %108, align 4, !tbaa !16
  %110 = sitofp i32 %109 to float
  %111 = fdiv float %107, %110
  %112 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv
  store float %111, float* %112, align 4, !tbaa !14
  %113 = fcmp ogt float %111, %max_spacing.06
  %max_spacing.1 = select i1 %113, float %111, float %max_spacing.06
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %114, label %.preheader

; <label>:114                                     ; preds = %.preheader
  %115 = load i32* %11, align 4, !tbaa !16
  store i32 %115, i32* %nx, align 4, !tbaa !16
  %116 = load i32* %13, align 4, !tbaa !16
  store i32 %116, i32* %ny, align 4, !tbaa !16
  %117 = load i32* %15, align 4, !tbaa !16
  store i32 %117, i32* %nz, align 4, !tbaa !16
  %118 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !17
  %119 = load i32* %nx, align 4, !tbaa !16
  %120 = load i32* %ny, align 4, !tbaa !16
  %121 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0
  %122 = load float* %121, align 4, !tbaa !14
  %123 = fpext float %122 to double
  %124 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 1
  %125 = load float* %124, align 4, !tbaa !14
  %126 = fpext float %125 to double
  %127 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 2
  %128 = load float* %127, align 4, !tbaa !14
  %129 = fpext float %128 to double
  %130 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %118, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %119, i32 %120, i32 %117, double %123, double %126, double %129) #7
  ret float %max_spacing.1
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @make_list(i32 %start_fac) #3 {
  %1 = load i32* @ng, align 4, !tbaa !16
  %2 = load i32* @ng_max, align 4, !tbaa !16
  %3 = icmp slt i32 %1, %2
  br i1 %3, label %4, label %.loopexit

; <label>:4                                       ; preds = %0
  %5 = load i32* @n_list, align 4, !tbaa !16
  %6 = load i32* @n_list_alloc, align 4, !tbaa !16
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %4
  %.pre3 = load i32** @list, align 8, !tbaa !17
  br label %14

; <label>:8                                       ; preds = %4
  %9 = add nsw i32 %6, 100
  store i32 %9, i32* @n_list_alloc, align 4, !tbaa !16
  %10 = load i8** bitcast (i32** @list to i8**), align 8, !tbaa !17
  %11 = shl i32 %9, 2
  %12 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str11, i64 0, i64 0), i32 50, i8* %10, i32 %11) #7
  store i8* %12, i8** bitcast (i32** @list to i8**), align 8, !tbaa !17
  %.pre = load i32* @ng, align 4, !tbaa !16
  %.pre2 = load i32* @n_list, align 4, !tbaa !16
  %13 = bitcast i8* %12 to i32*
  br label %14

; <label>:14                                      ; preds = %._crit_edge, %8
  %15 = phi i32* [ %.pre3, %._crit_edge ], [ %13, %8 ]
  %16 = phi i32 [ %5, %._crit_edge ], [ %.pre2, %8 ]
  %17 = phi i32 [ %1, %._crit_edge ], [ %.pre, %8 ]
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32* %15, i64 %18
  store i32 %17, i32* %19, align 4, !tbaa !16
  %20 = load i32* @n_list, align 4, !tbaa !16
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @n_list, align 4, !tbaa !16
  %22 = icmp slt i32 %start_fac, 6
  br i1 %22, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %14
  %23 = sext i32 %start_fac to i64
  br label %24

; <label>:24                                      ; preds = %47, %.lr.ph
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %25 = icmp slt i64 %indvars.iv, 4
  br i1 %25, label %33, label %26

; <label>:26                                      ; preds = %24
  %27 = load i64* bitcast (i32* getelementptr inbounds ([6 x i32]* @decomp, i64 0, i64 4) to i64*), align 16
  %28 = trunc i64 %27 to i32
  %29 = lshr i64 %27, 32
  %30 = trunc i64 %29 to i32
  %31 = sub i32 0, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %._crit_edge4

._crit_edge4:                                     ; preds = %26
  %.pre5 = trunc i64 %indvars.iv to i32
  br label %47

; <label>:33                                      ; preds = %26, %24
  %34 = getelementptr inbounds [6 x i32]* @factor, i64 0, i64 %indvars.iv
  %35 = load i32* %34, align 4, !tbaa !16
  %36 = load i32* @ng, align 4, !tbaa !16
  %37 = mul nsw i32 %36, %35
  store i32 %37, i32* @ng, align 4, !tbaa !16
  %38 = getelementptr inbounds [6 x i32]* @decomp, i64 0, i64 %indvars.iv
  %39 = load i32* %38, align 4, !tbaa !16
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4, !tbaa !16
  %41 = trunc i64 %indvars.iv to i32
  tail call fastcc void @make_list(i32 %41) #8
  %42 = load i32* %34, align 4, !tbaa !16
  %43 = load i32* @ng, align 4, !tbaa !16
  %44 = sdiv i32 %43, %42
  store i32 %44, i32* @ng, align 4, !tbaa !16
  %45 = load i32* %38, align 4, !tbaa !16
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %38, align 4, !tbaa !16
  br label %47

; <label>:47                                      ; preds = %._crit_edge4, %33
  %lftr.wideiv.pre-phi = phi i32 [ %.pre5, %._crit_edge4 ], [ %41, %33 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, 5
  br i1 %exitcond, label %.loopexit, label %24

.loopexit:                                        ; preds = %47, %14, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @list_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #5 {
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !16
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !16
  %5 = sub nsw i32 %2, %4
  ret i32 %5
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

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
!16 = !{!7, !7, i64 0}
!17 = !{!4, !4, i64 0}
