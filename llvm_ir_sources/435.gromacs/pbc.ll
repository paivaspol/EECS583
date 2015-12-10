; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pbc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [119 x i8] c"Only triclinic boxes with the first vector parallel to the x-axis and the second vector in the xy-plane are supported.\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Triclinic box is too skewed.\00", align 1
@init_pbc.nalloc = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [13 x i8] c"Warning: %s\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"         Box\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"         Can not fix pbc.\0A\00", align 1
@bSupported = internal unnamed_addr global i1 false
@gl_fbox = internal global [3 x float] zeroinitializer, align 4
@gl_hbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@gl_mhbox = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@bTriclinic = internal unnamed_addr global i32 0, align 4
@gl_box = internal global [3 x [3 x float]] zeroinitializer, align 16
@sure_dist2 = internal unnamed_addr global float 0.000000e+00, align 4
@ntric_vec = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [9 x i8] c"tric_vec\00", align 1
@.str6 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pbc.c\00", align 1
@tric_vec = internal unnamed_addr global [3 x float]* null, align 8
@bInit = internal unnamed_addr global i1 false
@.str7 = private unnamed_addr constant [30 x i8] c"pbc_dx called before init_pbc\00", align 1
@stdlog = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [15 x i8] c"n=%d, test=%d\0A\00", align 1
@compact_unitcell_edges.edge = internal global [72 x i32] zeroinitializer, align 16
@compact_unitcell_edges.hexcon = internal unnamed_addr constant [24 x i32] [i32 0, i32 9, i32 1, i32 19, i32 2, i32 15, i32 3, i32 21, i32 4, i32 17, i32 5, i32 11, i32 6, i32 23, i32 7, i32 13, i32 8, i32 20, i32 10, i32 18, i32 12, i32 16, i32 14, i32 22], align 16

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

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @check_box([3 x float]* nocapture readonly %box) #3 {
  %1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %2 = load float* %1, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %2) #8
  %3 = fpext float %fabsf to double
  %4 = fcmp ogt double %3, 1.200000e-38
  br i1 %4, label %39, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %7 = load float* %6, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %7) #8
  %8 = fpext float %fabsf1 to double
  %9 = fcmp ogt double %8, 1.200000e-38
  br i1 %9, label %39, label %10

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %12) #8
  %13 = fpext float %fabsf2 to double
  %14 = fcmp ogt double %13, 1.200000e-38
  br i1 %14, label %39, label %15

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %17 = load float* %16, align 4, !tbaa !14
  %fabsf3 = tail call float @fabsf(float %17) #8
  %18 = fpext float %fabsf3 to double
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %20 = load float* %19, align 4, !tbaa !14
  %21 = fpext float %20 to double
  %22 = fmul double %21, 5.001000e-01
  %23 = fcmp ogt double %18, %22
  br i1 %23, label %39, label %24

; <label>:24                                      ; preds = %15
  %25 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %26 = load float* %25, align 4, !tbaa !14
  %fabsf4 = tail call float @fabsf(float %26) #8
  %27 = fpext float %fabsf4 to double
  %28 = fcmp ogt double %27, %22
  br i1 %28, label %39, label %29

; <label>:29                                      ; preds = %24
  %30 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %31 = load float* %30, align 4, !tbaa !14
  %fabsf5 = tail call float @fabsf(float %31) #8
  %32 = fpext float %fabsf5 to double
  %33 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fpext float %34 to double
  %36 = fmul double %35, 5.001000e-01
  %37 = fcmp ogt double %32, %36
  br i1 %37, label %39, label %38

; <label>:38                                      ; preds = %29
  br label %39

; <label>:39                                      ; preds = %15, %24, %29, %0, %5, %10, %38
  %ptr.0 = phi i8* [ null, %38 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %10 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %5 ], [ getelementptr inbounds ([119 x i8]* @.str, i64 0, i64 0), %0 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %29 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %24 ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %15 ]
  ret i8* %ptr.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_pbc([3 x float]* %box) #4 {
  %try = alloca [3 x float], align 4
  %1 = tail call i8* @check_box([3 x float]* %box) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* %1) #7
  %6 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  tail call void @pr_rvecs(%struct.__sFILE* %6, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #7
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !16
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %7)
  store i1 false, i1* @bSupported, align 1
  br label %.loopexit

; <label>:9                                       ; preds = %0
  store i1 true, i1* @bSupported, align 1
  br label %10

; <label>:10                                      ; preds = %10, %9
  %indvars.iv16 = phi i64 [ 0, %9 ], [ %indvars.iv.next17, %10 ]
  %11 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv16, i64 %indvars.iv16
  %12 = load float* %11, align 4, !tbaa !14
  %13 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv16
  store float %12, float* %13, align 4, !tbaa !14
  %14 = fmul float %12, 5.000000e-01
  %15 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv16
  store float %14, float* %15, align 4, !tbaa !14
  %16 = fsub float -0.000000e+00, %14
  %17 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv16
  store float %16, float* %17, align 4, !tbaa !14
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3
  br i1 %exitcond18, label %18, label %10

; <label>:18                                      ; preds = %10
  %19 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %20 = load float* %19, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %20) #8
  %21 = fpext float %fabsf to double
  %22 = fcmp ogt double %21, 1.200000e-38
  br i1 %22, label %.thread, label %23

; <label>:23                                      ; preds = %18
  %24 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %25 = load float* %24, align 4, !tbaa !14
  %fabsf4 = tail call float @fabsf(float %25) #8
  %26 = fpext float %fabsf4 to double
  %27 = fcmp ogt double %26, 1.200000e-38
  br i1 %27, label %.thread, label %28

.thread:                                          ; preds = %23, %18
  store i32 1, i32* @bTriclinic, align 4, !tbaa !17
  %.pre20 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %.pre21 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  br label %34

; <label>:28                                      ; preds = %23
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %30 = load float* %29, align 4, !tbaa !14
  %fabsf5 = tail call float @fabsf(float %30) #8
  %31 = fpext float %fabsf5 to double
  %32 = fcmp ogt double %31, 1.200000e-38
  %33 = zext i1 %32 to i32
  store i32 %33, i32* @bTriclinic, align 4, !tbaa !17
  br i1 %32, label %34, label %.loopexit

; <label>:34                                      ; preds = %.thread, %28
  %.pre-phi22 = phi float* [ %.pre21, %.thread ], [ %29, %28 ]
  %.pre-phi = phi float* [ %.pre20, %.thread ], [ %24, %28 ]
  %35 = bitcast [3 x float]* %box to i32*
  %36 = load i32* %35, align 4, !tbaa !14
  store i32 %36, i32* bitcast ([3 x [3 x float]]* @gl_box to i32*), align 16, !tbaa !14
  %37 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %38 = bitcast float* %37 to i32*
  %39 = load i32* %38, align 4, !tbaa !14
  store i32 %39, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 1) to i32*), align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %41 = bitcast float* %40 to i32*
  %42 = load i32* %41, align 4, !tbaa !14
  store i32 %42, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 0, i64 2) to i32*), align 8, !tbaa !14
  %43 = bitcast float* %19 to i32*
  %44 = load i32* %43, align 4, !tbaa !14
  store i32 %44, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 0) to i32*), align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %46 = bitcast float* %45 to i32*
  %47 = load i32* %46, align 4, !tbaa !14
  store i32 %47, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 1) to i32*), align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %49 = bitcast float* %48 to i32*
  %50 = load i32* %49, align 4, !tbaa !14
  store i32 %50, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 1, i64 2) to i32*), align 4, !tbaa !14
  %51 = bitcast float* %.pre-phi to i32*
  %52 = load i32* %51, align 4, !tbaa !14
  store i32 %52, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 0) to i32*), align 8, !tbaa !14
  %53 = bitcast float* %.pre-phi22 to i32*
  %54 = load i32* %53, align 4, !tbaa !14
  store i32 %54, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 1) to i32*), align 4, !tbaa !14
  %55 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %56 = bitcast float* %55 to i32*
  %57 = load i32* %56, align 4, !tbaa !14
  store i32 %57, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @gl_box, i64 0, i64 2, i64 2) to i32*), align 8, !tbaa !14
  %58 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fmul float %59, %59
  %61 = load float* %45, align 4, !tbaa !14
  %62 = fmul float %61, %61
  %63 = load float* %55, align 4, !tbaa !14
  %64 = fmul float %63, %63
  %65 = fcmp olt float %62, %64
  %66 = select i1 %65, float %62, float %64
  %67 = fcmp olt float %60, %66
  %brmerge = or i1 %67, %65
  %.mux = select i1 %67, float %60, float %62
  %68 = select i1 %brmerge, float %.mux, float %64
  %69 = fmul float %68, 2.500000e-01
  store float %69, float* @sure_dist2, align 4, !tbaa !14
  %70 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 0), align 4, !tbaa !14
  %71 = fmul float %70, %70
  %72 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 1), align 4, !tbaa !14
  %73 = fmul float %72, %72
  %74 = fadd float %71, %73
  %75 = load float* getelementptr inbounds ([3 x float]* @gl_fbox, i64 0, i64 2), align 4, !tbaa !14
  %76 = fmul float %75, %75
  %77 = fadd float %74, %76
  store i32 0, i32* @ntric_vec, align 4, !tbaa !17
  %78 = getelementptr inbounds [3 x float]* %try, i64 0, i64 0
  %79 = getelementptr inbounds [3 x float]* %try, i64 0, i64 1
  %80 = getelementptr inbounds [3 x float]* %try, i64 0, i64 2
  %81 = bitcast float* %79 to i32*
  %82 = bitcast float* %80 to i32*
  br label %.preheader7

.preheader7:                                      ; preds = %142, %34
  %83 = phi i32 [ 0, %34 ], [ %138, %142 ]
  %i.111 = phi i32 [ -2, %34 ], [ %143, %142 ]
  %84 = sitofp i32 %i.111 to float
  br label %.preheader6

.preheader6:                                      ; preds = %140, %.preheader7
  %85 = phi i32 [ %83, %.preheader7 ], [ %138, %140 ]
  %j.010 = phi i32 [ -2, %.preheader7 ], [ %141, %140 ]
  %86 = or i32 %j.010, %i.111
  %87 = sitofp i32 %j.010 to float
  br label %88

; <label>:88                                      ; preds = %137, %.preheader6
  %89 = phi i32 [ %85, %.preheader6 ], [ %138, %137 ]
  %k.09 = phi i32 [ -2, %.preheader6 ], [ %139, %137 ]
  %90 = or i32 %86, %k.09
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %137, label %.preheader

.preheader:                                       ; preds = %88
  %92 = sitofp i32 %k.09 to float
  br label %93

; <label>:93                                      ; preds = %93, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %93 ]
  %94 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv
  %95 = load float* %94, align 4, !tbaa !14
  %96 = fmul float %84, %95
  %97 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv
  %98 = load float* %97, align 4, !tbaa !14
  %99 = fmul float %87, %98
  %100 = fadd float %96, %99
  %101 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv
  %102 = load float* %101, align 4, !tbaa !14
  %103 = fmul float %92, %102
  %104 = fadd float %100, %103
  %105 = getelementptr inbounds [3 x float]* %try, i64 0, i64 %indvars.iv
  store float %104, float* %105, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %106, label %93

; <label>:106                                     ; preds = %93
  %107 = load float* %78, align 4, !tbaa !14
  %108 = fmul float %107, %107
  %109 = load float* %79, align 4, !tbaa !14
  %110 = fmul float %109, %109
  %111 = fadd float %108, %110
  %112 = load float* %80, align 4, !tbaa !14
  %113 = fmul float %112, %112
  %114 = fadd float %111, %113
  %115 = fcmp olt float %114, %77
  br i1 %115, label %116, label %137

; <label>:116                                     ; preds = %106
  %117 = load i32* @init_pbc.nalloc, align 4, !tbaa !17
  %118 = icmp slt i32 %89, %117
  br i1 %118, label %._crit_edge, label %119

._crit_edge:                                      ; preds = %116
  %.pre19 = load [3 x float]** @tric_vec, align 8, !tbaa !16
  br label %125

; <label>:119                                     ; preds = %116
  %120 = add nsw i32 %117, 20
  store i32 %120, i32* @init_pbc.nalloc, align 4, !tbaa !17
  %121 = load i8** bitcast ([3 x float]** @tric_vec to i8**), align 8, !tbaa !16
  %122 = mul i32 %120, 12
  %123 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str6, i64 0, i64 0), i32 119, i8* %121, i32 %122) #7
  store i8* %123, i8** bitcast ([3 x float]** @tric_vec to i8**), align 8, !tbaa !16
  %.pre = load i32* @ntric_vec, align 4, !tbaa !17
  %124 = bitcast i8* %123 to [3 x float]*
  br label %125

; <label>:125                                     ; preds = %._crit_edge, %119
  %126 = phi [3 x float]* [ %.pre19, %._crit_edge ], [ %124, %119 ]
  %127 = phi i32 [ %89, %._crit_edge ], [ %.pre, %119 ]
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x float]* %126, i64 %128, i64 0
  store float %107, float* %129, align 4, !tbaa !14
  %130 = load i32* %81, align 4, !tbaa !14
  %131 = getelementptr inbounds [3 x float]* %126, i64 %128, i64 1
  %132 = bitcast float* %131 to i32*
  store i32 %130, i32* %132, align 4, !tbaa !14
  %133 = load i32* %82, align 4, !tbaa !14
  %134 = getelementptr inbounds [3 x float]* %126, i64 %128, i64 2
  %135 = bitcast float* %134 to i32*
  store i32 %133, i32* %135, align 4, !tbaa !14
  %136 = add nsw i32 %127, 1
  store i32 %136, i32* @ntric_vec, align 4, !tbaa !17
  br label %137

; <label>:137                                     ; preds = %88, %125, %106
  %138 = phi i32 [ %89, %88 ], [ %136, %125 ], [ %89, %106 ]
  %139 = add nsw i32 %k.09, 1
  %exitcond13 = icmp eq i32 %139, 3
  br i1 %exitcond13, label %140, label %88

; <label>:140                                     ; preds = %137
  %141 = add nsw i32 %j.010, 1
  %exitcond14 = icmp eq i32 %141, 3
  br i1 %exitcond14, label %142, label %.preheader6

; <label>:142                                     ; preds = %140
  %143 = add nsw i32 %i.111, 1
  %exitcond15 = icmp eq i32 %143, 3
  br i1 %exitcond15, label %.loopexit, label %.preheader7

.loopexit:                                        ; preds = %142, %28, %3
  store i1 true, i1* @bInit, align 1
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @pbc_dx(float* nocapture readonly %x1, float* nocapture readonly %x2, float* nocapture %dx) #4 {
  %.b1 = load i1* @bInit, align 1
  br i1 %.b1, label %2, label %1

; <label>:1                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #7
  br label %2

; <label>:2                                       ; preds = %1, %0
  %3 = load float* %x1, align 4, !tbaa !14
  %4 = load float* %x2, align 4, !tbaa !14
  %5 = fsub float %3, %4
  %6 = getelementptr inbounds float* %x1, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds float* %x2, i64 1
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fsub float %7, %9
  %11 = getelementptr inbounds float* %x1, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %13 = getelementptr inbounds float* %x2, i64 2
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fsub float %12, %14
  store float %5, float* %dx, align 4, !tbaa !14
  %16 = getelementptr inbounds float* %dx, i64 1
  store float %10, float* %16, align 4, !tbaa !14
  %17 = getelementptr inbounds float* %dx, i64 2
  store float %15, float* %17, align 4, !tbaa !14
  %.b = load i1* @bSupported, align 1
  br i1 %.b, label %18, label %.critedge

; <label>:18                                      ; preds = %2
  %19 = load i32* @bTriclinic, align 4, !tbaa !17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %.preheader, label %.preheader7

.preheader7:                                      ; preds = %18, %._crit_edge
  %21 = phi float [ %.pre, %._crit_edge ], [ %15, %18 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %._crit_edge ], [ 2, %18 ]
  %22 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv27
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fcmp ogt float %21, %23
  br i1 %24, label %.lr.ph15.preheader, label %35

.lr.ph15.preheader:                               ; preds = %.preheader7
  %25 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv27, i64 %indvars.iv27
  %26 = load float* %25, align 4, !tbaa !14
  %27 = getelementptr inbounds float* %dx, i64 %indvars.iv27
  %28 = fsub float %21, %26
  store float %28, float* %27, align 4, !tbaa !14
  %29 = icmp sgt i64 %indvars.iv27, 0
  br i1 %29, label %._crit_edge32, label %.loopexit

._crit_edge32:                                    ; preds = %.lr.ph15.preheader, %._crit_edge32
  %indvars.iv.next2645.in = phi i64 [ %indvars.iv.next2645, %._crit_edge32 ], [ %indvars.iv27, %.lr.ph15.preheader ]
  %indvars.iv.next2645 = add nsw i64 %indvars.iv.next2645.in, -1
  %.phi.trans.insert33 = getelementptr inbounds float* %dx, i64 %indvars.iv.next2645
  %.pre34 = load float* %.phi.trans.insert33, align 4, !tbaa !14
  %30 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv27, i64 %indvars.iv.next2645
  %31 = load float* %30, align 4, !tbaa !14
  %32 = getelementptr inbounds float* %dx, i64 %indvars.iv.next2645
  %33 = fsub float %.pre34, %31
  store float %33, float* %32, align 4, !tbaa !14
  %34 = icmp sgt i64 %indvars.iv.next2645.in, 1
  br i1 %34, label %._crit_edge32, label %.loopexit

; <label>:35                                      ; preds = %.preheader7
  %36 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv27
  %37 = load float* %36, align 4, !tbaa !14
  %38 = fcmp ugt float %21, %37
  br i1 %38, label %.loopexit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %35
  %39 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv27, i64 %indvars.iv27
  %40 = load float* %39, align 4, !tbaa !14
  %41 = getelementptr inbounds float* %dx, i64 %indvars.iv27
  %42 = fadd float %40, %21
  store float %42, float* %41, align 4, !tbaa !14
  %43 = icmp sgt i64 %indvars.iv27, 0
  br i1 %43, label %._crit_edge29, label %.loopexit

._crit_edge29:                                    ; preds = %.lr.ph13.preheader, %._crit_edge29
  %indvars.iv.next2243.in = phi i64 [ %indvars.iv.next2243, %._crit_edge29 ], [ %indvars.iv27, %.lr.ph13.preheader ]
  %indvars.iv.next2243 = add nsw i64 %indvars.iv.next2243.in, -1
  %.phi.trans.insert30 = getelementptr inbounds float* %dx, i64 %indvars.iv.next2243
  %.pre31 = load float* %.phi.trans.insert30, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x [3 x float]]* @gl_box, i64 0, i64 %indvars.iv27, i64 %indvars.iv.next2243
  %45 = load float* %44, align 4, !tbaa !14
  %46 = getelementptr inbounds float* %dx, i64 %indvars.iv.next2243
  %47 = fadd float %45, %.pre31
  store float %47, float* %46, align 4, !tbaa !14
  %48 = icmp sgt i64 %indvars.iv.next2243.in, 1
  br i1 %48, label %._crit_edge29, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph13.preheader, %._crit_edge29, %.lr.ph15.preheader, %._crit_edge32, %35
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, -1
  %49 = icmp sgt i64 %indvars.iv27, 0
  br i1 %49, label %._crit_edge, label %50

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds float* %dx, i64 %indvars.iv.next28
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %.preheader7

; <label>:50                                      ; preds = %.loopexit
  %51 = load float* %dx, align 4, !tbaa !14
  %52 = load float* %16, align 4, !tbaa !14
  %53 = load float* %17, align 4, !tbaa !14
  %54 = fmul float %51, %51
  %55 = fmul float %52, %52
  %56 = fadd float %54, %55
  %57 = fmul float %53, %53
  %58 = fadd float %56, %57
  %59 = load float* @sure_dist2, align 4, !tbaa !14
  %60 = fcmp ogt float %58, %59
  %61 = load i32* @ntric_vec, align 4
  %62 = icmp sgt i32 %61, 0
  %or.cond9 = and i1 %60, %62
  br i1 %or.cond9, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %50
  %63 = load [3 x float]** @tric_vec, align 8, !tbaa !16
  br label %64

; <label>:64                                      ; preds = %.lr.ph, %83
  %65 = phi i32 [ %61, %.lr.ph ], [ %84, %83 ]
  %66 = phi float [ %59, %.lr.ph ], [ %85, %83 ]
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %83 ]
  %d2min.010 = phi float [ %58, %.lr.ph ], [ %d2min.1, %83 ]
  %67 = getelementptr inbounds [3 x float]* %63, i64 %indvars.iv17, i64 0
  %68 = load float* %67, align 4, !tbaa !14
  %69 = fadd float %51, %68
  %70 = getelementptr inbounds [3 x float]* %63, i64 %indvars.iv17, i64 1
  %71 = load float* %70, align 4, !tbaa !14
  %72 = fadd float %52, %71
  %73 = getelementptr inbounds [3 x float]* %63, i64 %indvars.iv17, i64 2
  %74 = load float* %73, align 4, !tbaa !14
  %75 = fadd float %53, %74
  %76 = fmul float %69, %69
  %77 = fmul float %72, %72
  %78 = fadd float %76, %77
  %79 = fmul float %75, %75
  %80 = fadd float %78, %79
  %81 = fcmp olt float %80, %d2min.010
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %64
  store float %69, float* %dx, align 4, !tbaa !14
  store float %72, float* %16, align 4, !tbaa !14
  store float %75, float* %17, align 4, !tbaa !14
  %.pre35 = load float* @sure_dist2, align 4, !tbaa !14
  %.pre36 = load i32* @ntric_vec, align 4
  br label %83

; <label>:83                                      ; preds = %82, %64
  %84 = phi i32 [ %.pre36, %82 ], [ %65, %64 ]
  %85 = phi float [ %.pre35, %82 ], [ %66, %64 ]
  %d2min.1 = phi float [ %80, %82 ], [ %d2min.010, %64 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %86 = fcmp ogt float %d2min.1, %85
  %87 = sext i32 %84 to i64
  %88 = icmp slt i64 %indvars.iv.next18, %87
  %or.cond = and i1 %86, %88
  br i1 %or.cond, label %64, label %.critedge

.preheader:                                       ; preds = %18, %._crit_edge37
  %89 = phi float [ %.pre39, %._crit_edge37 ], [ %5, %18 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge37 ], [ 0, %18 ]
  %90 = getelementptr inbounds float* %dx, i64 %indvars.iv
  %91 = getelementptr inbounds [3 x float]* @gl_hbox, i64 0, i64 %indvars.iv
  %92 = load float* %91, align 4, !tbaa !14
  %93 = fcmp ogt float %89, %92
  br i1 %93, label %94, label %98

; <label>:94                                      ; preds = %.preheader
  %95 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv
  %96 = load float* %95, align 4, !tbaa !14
  %97 = fsub float %89, %96
  store float %97, float* %90, align 4, !tbaa !14
  br label %106

; <label>:98                                      ; preds = %.preheader
  %99 = getelementptr inbounds [3 x float]* @gl_mhbox, i64 0, i64 %indvars.iv
  %100 = load float* %99, align 4, !tbaa !14
  %101 = fcmp ugt float %89, %100
  br i1 %101, label %106, label %102

; <label>:102                                     ; preds = %98
  %103 = getelementptr inbounds [3 x float]* @gl_fbox, i64 0, i64 %indvars.iv
  %104 = load float* %103, align 4, !tbaa !14
  %105 = fadd float %89, %104
  store float %105, float* %90, align 4, !tbaa !14
  br label %106

; <label>:106                                     ; preds = %98, %94, %102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.critedge, label %._crit_edge37

._crit_edge37:                                    ; preds = %106
  %.phi.trans.insert38 = getelementptr inbounds float* %dx, i64 %indvars.iv.next
  %.pre39 = load float* %.phi.trans.insert38, align 4, !tbaa !14
  br label %.preheader

.critedge:                                        ; preds = %83, %106, %50, %2
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @image_rect(i32* nocapture readonly %xi, i32* nocapture readonly %xj, i32* nocapture readonly %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #4 {
  br label %3

; <label>:1                                       ; preds = %24
  %2 = icmp slt i64 %indvars.iv.next, 3
  br i1 %2, label %3, label %29

; <label>:3                                       ; preds = %0, %1
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %rij2.05 = phi float [ 0.000000e+00, %0 ], [ %27, %1 ]
  %t.03 = phi i32 [ 0, %0 ], [ %t.1, %1 ]
  %4 = getelementptr inbounds i32* %xi, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !17
  %6 = getelementptr inbounds i32* %xj, i64 %indvars.iv
  %7 = load i32* %6, align 4, !tbaa !17
  %8 = sub nsw i32 %5, %7
  %9 = mul nsw i32 %t.03, 3
  %10 = getelementptr inbounds i32* %box_size, i64 %indvars.iv
  %11 = load i32* %10, align 4, !tbaa !17
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 0, %12
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %3
  %16 = add nsw i32 %9, 2
  %17 = add nsw i32 %8, %11
  br label %24

; <label>:18                                      ; preds = %3
  %19 = icmp sgt i32 %8, %12
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %18
  %21 = sub nsw i32 %8, %11
  br label %24

; <label>:22                                      ; preds = %18
  %23 = add nsw i32 %9, 1
  br label %24

; <label>:24                                      ; preds = %20, %22, %15
  %dx.0 = phi i32 [ %17, %15 ], [ %21, %20 ], [ %8, %22 ]
  %t.1 = phi i32 [ %16, %15 ], [ %9, %20 ], [ %23, %22 ]
  %25 = sitofp i32 %dx.0 to float
  %26 = fmul float %25, %25
  %27 = fadd float %rij2.05, %26
  %28 = fcmp ult float %27, %rlong2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %28, label %1, label %.loopexit

; <label>:29                                      ; preds = %1
  store i32 %t.1, i32* %shift, align 4, !tbaa !17
  store float %27, float* %r2, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %24, %29
  %.0 = phi i32 [ 1, %29 ], [ 0, %24 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @image_cylindric(i32* nocapture readonly %xi, i32* nocapture readonly %xj, i32* nocapture readonly %box_size, float %rlong2, i32* nocapture %shift, float* nocapture %r2) #4 {
  br label %3

; <label>:1                                       ; preds = %24
  %2 = icmp slt i64 %indvars.iv.next, 3
  br i1 %2, label %3, label %30

; <label>:3                                       ; preds = %0, %1
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %rij2.05 = phi float [ 0.000000e+00, %0 ], [ %27, %1 ]
  %t.03 = phi i32 [ 0, %0 ], [ %t.1, %1 ]
  %4 = getelementptr inbounds i32* %xi, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !17
  %6 = getelementptr inbounds i32* %xj, i64 %indvars.iv
  %7 = load i32* %6, align 4, !tbaa !17
  %8 = sub nsw i32 %5, %7
  %9 = mul nsw i32 %t.03, 3
  %10 = getelementptr inbounds i32* %box_size, i64 %indvars.iv
  %11 = load i32* %10, align 4, !tbaa !17
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 0, %12
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %3
  %16 = add nsw i32 %9, 2
  %17 = add nsw i32 %8, %11
  br label %24

; <label>:18                                      ; preds = %3
  %19 = icmp sgt i32 %8, %12
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %18
  %21 = sub nsw i32 %8, %11
  br label %24

; <label>:22                                      ; preds = %18
  %23 = add nsw i32 %9, 1
  br label %24

; <label>:24                                      ; preds = %20, %22, %15
  %dx.0 = phi i32 [ %17, %15 ], [ %21, %20 ], [ %8, %22 ]
  %t.1 = phi i32 [ %16, %15 ], [ %9, %20 ], [ %23, %22 ]
  %25 = sitofp i32 %dx.0 to float
  %26 = fmul float %25, %25
  %27 = fadd float %rij2.05, %26
  %28 = icmp sgt i64 %indvars.iv, 1
  %29 = fcmp ult float %27, %rlong2
  %or.cond = or i1 %28, %29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond, label %1, label %.loopexit

; <label>:30                                      ; preds = %1
  store i32 %t.1, i32* %shift, align 4, !tbaa !17
  store float %27, float* %r2, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %24, %30
  %.0 = phi i32 [ 1, %30 ], [ 0, %24 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_shifts([3 x float]* %box, float* nocapture %box_size, [3 x float]* nocapture %shift_vec) #4 {
  tail call void @init_pbc([3 x float]* %box) #9
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv18 = phi i64 [ 0, %0 ], [ %indvars.iv.next19, %1 ]
  %2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv18, i64 %indvars.iv18
  %3 = bitcast float* %2 to i32*
  %4 = load i32* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds float* %box_size, i64 %indvars.iv18
  %6 = bitcast float* %5 to i32*
  store i32 %4, i32* %6, align 4, !tbaa !14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 3
  br i1 %exitcond20, label %.preheader3, label %1

.preheader3:                                      ; preds = %1, %42
  %n.011 = phi i32 [ %43, %42 ], [ 0, %1 ]
  %m.110 = phi i32 [ %44, %42 ], [ -1, %1 ]
  %7 = mul i32 %m.110, 3
  %8 = add nsw i32 %7, 3
  %9 = sitofp i32 %m.110 to float
  br label %.preheader2

.preheader2:                                      ; preds = %39, %.preheader3
  %n.19 = phi i32 [ %n.011, %.preheader3 ], [ %40, %39 ]
  %l.08 = phi i32 [ -1, %.preheader3 ], [ %41, %39 ]
  %10 = add nsw i32 %8, %l.08
  %11 = mul i32 %10, 3
  %12 = add nsw i32 %11, 4
  %13 = sitofp i32 %l.08 to float
  %14 = sext i32 %n.19 to i64
  br label %15

; <label>:15                                      ; preds = %37, %.preheader2
  %indvars.iv13 = phi i64 [ %14, %.preheader2 ], [ %indvars.iv.next14, %37 ]
  %k.07 = phi i32 [ -1, %.preheader2 ], [ %38, %37 ]
  %16 = add nsw i32 %12, %k.07
  %17 = trunc i64 %indvars.iv13 to i32
  %18 = icmp ne i32 %17, %16
  %19 = load %struct.__sFILE** @stdlog, align 8
  %20 = icmp ne %struct.__sFILE* %19, null
  %or.cond = and i1 %18, %20
  br i1 %or.cond, label %21, label %.preheader

; <label>:21                                      ; preds = %15
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i32 %17, i32 %16) #7
  br label %.preheader

.preheader:                                       ; preds = %21, %15
  %23 = sitofp i32 %k.07 to float
  br label %24

; <label>:24                                      ; preds = %24, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %24 ]
  %25 = getelementptr inbounds [3 x float]* %box, i64 0, i64 %indvars.iv
  %26 = load float* %25, align 4, !tbaa !14
  %27 = fmul float %23, %26
  %28 = getelementptr inbounds [3 x float]* %box, i64 1, i64 %indvars.iv
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fmul float %13, %29
  %31 = fadd float %27, %30
  %32 = getelementptr inbounds [3 x float]* %box, i64 2, i64 %indvars.iv
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fmul float %9, %33
  %35 = fadd float %31, %34
  %36 = getelementptr inbounds [3 x float]* %shift_vec, i64 %indvars.iv13, i64 %indvars.iv
  store float %35, float* %36, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %37, label %24

; <label>:37                                      ; preds = %24
  %38 = add nsw i32 %k.07, 1
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i32 %38, 2
  br i1 %exitcond15, label %39, label %15

; <label>:39                                      ; preds = %37
  %40 = add i32 %n.19, 3
  %41 = add nsw i32 %l.08, 1
  %exitcond16 = icmp eq i32 %41, 2
  br i1 %exitcond16, label %42, label %.preheader2

; <label>:42                                      ; preds = %39
  %43 = add nuw nsw i32 %n.011, 9
  %44 = add nsw i32 %m.110, 1
  %exitcond17 = icmp eq i32 %44, 2
  br i1 %exitcond17, label %45, label %.preheader3

; <label>:45                                      ; preds = %42
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_cgcm(%struct.__sFILE* nocapture readnone %log, i32 %cg0, i32 %cg1, %struct.t_block* nocapture readonly %cgs, [3 x float]* nocapture readonly %pos, [3 x float]* nocapture %cg_cm) #4 {
  %cg = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4
  %2 = load i32** %1, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %4 = load i32** %3, align 8, !tbaa !20
  %5 = icmp slt i32 %cg0, %cg1
  br i1 %5, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %0
  %6 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0
  %7 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1
  %8 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2
  %9 = sext i32 %cg0 to i64
  %10 = add i32 %cg1, -1
  %.phi.trans.insert = getelementptr inbounds i32* %4, i64 %9
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !17
  br label %11

; <label>:11                                      ; preds = %.backedge, %.lr.ph5
  %12 = phi i32 [ %.pre, %.lr.ph5 ], [ %14, %.backedge ]
  %indvars.iv12 = phi i64 [ %9, %.lr.ph5 ], [ %indvars.iv.next13, %.backedge ]
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %13 = getelementptr inbounds i32* %4, i64 %indvars.iv.next13
  %14 = load i32* %13, align 4, !tbaa !17
  %15 = sub nsw i32 %14, %12
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %37

; <label>:17                                      ; preds = %11
  %18 = sext i32 %12 to i64
  %19 = getelementptr inbounds i32* %2, i64 %18
  %20 = load i32* %19, align 4, !tbaa !17
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x float]* %pos, i64 %21, i64 0
  %23 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv12, i64 0
  %24 = bitcast float* %22 to i32*
  %25 = load i32* %24, align 4, !tbaa !14
  %26 = bitcast float* %23 to i32*
  store i32 %25, i32* %26, align 4, !tbaa !14
  %27 = getelementptr inbounds [3 x float]* %pos, i64 %21, i64 1
  %28 = bitcast float* %27 to i32*
  %29 = load i32* %28, align 4, !tbaa !14
  %30 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv12, i64 1
  %31 = bitcast float* %30 to i32*
  store i32 %29, i32* %31, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float]* %pos, i64 %21, i64 2
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv12, i64 2
  %36 = bitcast float* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %.preheader, %17
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %10
  br i1 %exitcond15, label %._crit_edge, label %11

; <label>:37                                      ; preds = %11
  %38 = sitofp i32 %15 to double
  %39 = fdiv double 1.000000e+00, %38
  %40 = fptrunc double %39 to float
  store float 0.000000e+00, float* %6, align 4, !tbaa !14
  store float 0.000000e+00, float* %7, align 4, !tbaa !14
  store float 0.000000e+00, float* %8, align 4, !tbaa !14
  %41 = icmp sgt i32 %14, %12
  br i1 %41, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %37
  %42 = sext i32 %12 to i64
  %43 = add i32 %14, -1
  br label %44

; <label>:44                                      ; preds = %54, %.lr.ph
  %indvars.iv6 = phi i64 [ %42, %.lr.ph ], [ %indvars.iv.next7, %54 ]
  %45 = getelementptr inbounds i32* %2, i64 %indvars.iv6
  %46 = load i32* %45, align 4, !tbaa !17
  %47 = sext i32 %46 to i64
  br label %48

; <label>:48                                      ; preds = %48, %44
  %indvars.iv = phi i64 [ 0, %44 ], [ %indvars.iv.next, %48 ]
  %49 = getelementptr inbounds [3 x float]* %pos, i64 %47, i64 %indvars.iv
  %50 = load float* %49, align 4, !tbaa !14
  %51 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv
  %52 = load float* %51, align 4, !tbaa !14
  %53 = fadd float %50, %52
  store float %53, float* %51, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %54, label %48

; <label>:54                                      ; preds = %48
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv, %43
  br i1 %exitcond8, label %.preheader, label %44

.preheader:                                       ; preds = %37, %54, %.preheader
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.preheader ], [ 0, %54 ], [ 0, %37 ]
  %55 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv9
  %56 = load float* %55, align 4, !tbaa !14
  %57 = fmul float %40, %56
  %58 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv12, i64 %indvars.iv9
  store float %57, float* %58, align 4, !tbaa !14
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 3
  br i1 %exitcond11, label %.backedge, label %.preheader

._crit_edge:                                      ; preds = %.backedge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_charge_groups_in_box(%struct.__sFILE* nocapture readnone %log, i32 %cg0, i32 %cg1, [3 x float]* nocapture readonly %box, float* nocapture readnone %box_size, %struct.t_block* nocapture readonly %cgs, [3 x float]* nocapture %pos, [3 x float]* nocapture %cg_cm) #4 {
  %cg = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 4
  %2 = load i32** %1, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %4 = load i32** %3, align 8, !tbaa !20
  %5 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %6 = load float* %5, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %6) #8
  %7 = fpext float %fabsf to double
  %8 = fcmp ogt double %7, 1.200000e-38
  br i1 %8, label %19, label %9

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %11 = load float* %10, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %11) #8
  %12 = fpext float %fabsf1 to double
  %13 = fcmp ogt double %12, 1.200000e-38
  br i1 %13, label %19, label %14

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %16 = load float* %15, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %16) #8
  %17 = fpext float %fabsf2 to double
  %18 = fcmp ogt double %17, 1.200000e-38
  br label %19

; <label>:19                                      ; preds = %14, %9, %0
  %20 = phi i1 [ true, %9 ], [ true, %0 ], [ %18, %14 ]
  %21 = icmp slt i32 %cg0, %cg1
  br i1 %21, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %19
  %22 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 1
  %24 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 2
  %25 = sext i32 %cg0 to i64
  %26 = add i32 %cg1, -1
  %.phi.trans.insert = getelementptr inbounds i32* %4, i64 %25
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !17
  br label %27

.backedge:                                        ; preds = %._crit_edge32, %._crit_edge49
  %lftr.wideiv93 = trunc i64 %indvars.iv91 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %26
  br i1 %exitcond94, label %._crit_edge56, label %27

; <label>:27                                      ; preds = %.backedge, %.lr.ph55
  %28 = phi i32 [ %.pre, %.lr.ph55 ], [ %30, %.backedge ]
  %indvars.iv91 = phi i64 [ %25, %.lr.ph55 ], [ %indvars.iv.next92, %.backedge ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %29 = getelementptr inbounds i32* %4, i64 %indvars.iv.next92
  %30 = load i32* %29, align 4, !tbaa !17
  %31 = sub nsw i32 %30, %28
  %32 = sitofp i32 %31 to double
  %33 = fdiv double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  store float 0.000000e+00, float* %22, align 4, !tbaa !14
  store float 0.000000e+00, float* %23, align 4, !tbaa !14
  store float 0.000000e+00, float* %24, align 4, !tbaa !14
  %35 = icmp sgt i32 %30, %28
  br i1 %35, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %27
  %36 = sext i32 %28 to i64
  %37 = add i32 %30, -1
  br label %38

; <label>:38                                      ; preds = %49, %.lr.ph
  %indvars.iv59 = phi i64 [ %36, %.lr.ph ], [ %indvars.iv.next60, %49 ]
  %39 = getelementptr inbounds i32* %2, i64 %indvars.iv59
  %40 = load i32* %39, align 4, !tbaa !17
  %41 = sext i32 %40 to i64
  br label %42

; <label>:42                                      ; preds = %42, %38
  %indvars.iv = phi i64 [ 0, %38 ], [ %indvars.iv.next, %42 ]
  %43 = getelementptr inbounds [3 x float]* %pos, i64 %41, i64 %indvars.iv
  %44 = load float* %43, align 4, !tbaa !14
  %45 = fmul float %34, %44
  %46 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv
  %47 = load float* %46, align 4, !tbaa !14
  %48 = fadd float %47, %45
  store float %48, float* %46, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %49, label %42

; <label>:49                                      ; preds = %42
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1
  %lftr.wideiv = trunc i64 %indvars.iv59 to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv, %37
  br i1 %exitcond61, label %._crit_edge, label %38

._crit_edge:                                      ; preds = %49, %27
  %50 = sext i32 %28 to i64
  %51 = add i32 %30, -1
  br i1 %20, label %.preheader8, label %.preheader10

.preheader8:                                      ; preds = %._crit_edge, %._crit_edge49
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge49 ], [ 2, %._crit_edge ]
  %52 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv89
  %53 = load float* %52, align 4, !tbaa !14
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %.lr.ph40, label %.preheader7

.loopexit4:                                       ; preds = %._crit_edge38
  %.pre105 = load float* %52, align 4, !tbaa !14
  %55 = fcmp olt float %.pre105, 0.000000e+00
  br i1 %55, label %.lr.ph40, label %.preheader7

.preheader7:                                      ; preds = %.loopexit4, %.preheader8
  %56 = phi float [ %53, %.preheader8 ], [ %.pre105, %.loopexit4 ]
  %57 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv89, i64 %indvars.iv89
  %58 = load float* %57, align 4, !tbaa !14
  %59 = fcmp ult float %56, %58
  br i1 %59, label %._crit_edge49, label %.lr.ph48

.lr.ph40:                                         ; preds = %.loopexit4, %._crit_edge100, %.preheader8
  %60 = phi float [ %53, %.preheader8 ], [ %.pre102, %._crit_edge100 ], [ %.pre105, %.loopexit4 ]
  %indvars.iv79 = phi i64 [ %indvars.iv89, %.preheader8 ], [ %indvars.iv.next80, %._crit_edge100 ], [ %indvars.iv89, %.loopexit4 ]
  %61 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv89, i64 %indvars.iv79
  %62 = load float* %61, align 4, !tbaa !14
  %63 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv79
  %64 = fadd float %62, %60
  store float %64, float* %63, align 4, !tbaa !14
  br i1 %35, label %.lr.ph37.preheader, label %._crit_edge38

.lr.ph37.preheader:                               ; preds = %.lr.ph40
  %65 = getelementptr inbounds i32* %2, i64 %50
  %66 = load i32* %65, align 4, !tbaa !17
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x float]* %pos, i64 %67, i64 %indvars.iv79
  %69 = load float* %68, align 4, !tbaa !14
  %70 = fadd float %62, %69
  store float %70, float* %68, align 4, !tbaa !14
  %exitcond76127 = icmp eq i32 %28, %51
  br i1 %exitcond76127, label %._crit_edge38, label %._crit_edge103

._crit_edge103:                                   ; preds = %.lr.ph37.preheader, %._crit_edge103
  %indvars.iv73128 = phi i64 [ %indvars.iv.next74, %._crit_edge103 ], [ %50, %.lr.ph37.preheader ]
  %indvars.iv.next74 = add nsw i64 %indvars.iv73128, 1
  %.pre104 = load float* %61, align 4, !tbaa !14
  %71 = getelementptr inbounds i32* %2, i64 %indvars.iv.next74
  %72 = load i32* %71, align 4, !tbaa !17
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x float]* %pos, i64 %73, i64 %indvars.iv79
  %75 = load float* %74, align 4, !tbaa !14
  %76 = fadd float %.pre104, %75
  store float %76, float* %74, align 4, !tbaa !14
  %lftr.wideiv75 = trunc i64 %indvars.iv.next74 to i32
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %51
  br i1 %exitcond76, label %._crit_edge38, label %._crit_edge103

._crit_edge38:                                    ; preds = %.lr.ph37.preheader, %._crit_edge103, %.lr.ph40
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %77 = icmp sgt i64 %indvars.iv79, 0
  br i1 %77, label %._crit_edge100, label %.loopexit4

._crit_edge100:                                   ; preds = %._crit_edge38
  %.phi.trans.insert101 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next80
  %.pre102 = load float* %.phi.trans.insert101, align 4, !tbaa !14
  br label %.lr.ph40

.loopexit:                                        ; preds = %._crit_edge46
  %.pre113 = load float* %52, align 4, !tbaa !14
  %.pre114 = load float* %57, align 4, !tbaa !14
  %78 = fcmp ult float %.pre113, %.pre114
  br i1 %78, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %.loopexit, %._crit_edge106, %.preheader7
  %79 = phi float [ %56, %.preheader7 ], [ %.pre110, %._crit_edge106 ], [ %.pre113, %.loopexit ]
  %80 = phi float [ %58, %.preheader7 ], [ %.pre108, %._crit_edge106 ], [ %.pre114, %.loopexit ]
  %indvars.iv87 = phi i64 [ %indvars.iv89, %.preheader7 ], [ %indvars.iv.next88, %._crit_edge106 ], [ %indvars.iv89, %.loopexit ]
  %81 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv89, i64 %indvars.iv87
  %82 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv87
  %83 = fsub float %79, %80
  store float %83, float* %82, align 4, !tbaa !14
  br i1 %35, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %.lr.ph48
  %84 = getelementptr inbounds i32* %2, i64 %50
  %85 = load i32* %84, align 4, !tbaa !17
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x float]* %pos, i64 %86, i64 %indvars.iv87
  %88 = load float* %87, align 4, !tbaa !14
  %89 = fsub float %88, %80
  store float %89, float* %87, align 4, !tbaa !14
  %exitcond84130 = icmp eq i32 %28, %51
  br i1 %exitcond84130, label %._crit_edge46, label %._crit_edge111

._crit_edge111:                                   ; preds = %.lr.ph45.preheader, %._crit_edge111
  %indvars.iv81131 = phi i64 [ %indvars.iv.next82, %._crit_edge111 ], [ %50, %.lr.ph45.preheader ]
  %indvars.iv.next82 = add nsw i64 %indvars.iv81131, 1
  %.pre112 = load float* %81, align 4, !tbaa !14
  %90 = getelementptr inbounds i32* %2, i64 %indvars.iv.next82
  %91 = load i32* %90, align 4, !tbaa !17
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x float]* %pos, i64 %92, i64 %indvars.iv87
  %94 = load float* %93, align 4, !tbaa !14
  %95 = fsub float %94, %.pre112
  store float %95, float* %93, align 4, !tbaa !14
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %51
  br i1 %exitcond84, label %._crit_edge46, label %._crit_edge111

._crit_edge46:                                    ; preds = %.lr.ph45.preheader, %._crit_edge111, %.lr.ph48
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1
  %96 = icmp sgt i64 %indvars.iv87, 0
  br i1 %96, label %._crit_edge106, label %.loopexit

._crit_edge106:                                   ; preds = %._crit_edge46
  %.phi.trans.insert107 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv89, i64 %indvars.iv.next88
  %.pre108 = load float* %.phi.trans.insert107, align 4, !tbaa !14
  %.phi.trans.insert109 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv.next88
  %.pre110 = load float* %.phi.trans.insert109, align 4, !tbaa !14
  br label %.lr.ph48

._crit_edge49:                                    ; preds = %.loopexit, %.preheader7
  %.lcssa19 = phi float [ %56, %.preheader7 ], [ %.pre113, %.loopexit ]
  %97 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv91, i64 %indvars.iv89
  store float %.lcssa19, float* %97, align 4, !tbaa !14
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1
  %98 = icmp sgt i64 %indvars.iv89, 0
  br i1 %98, label %.preheader8, label %.backedge

.preheader10:                                     ; preds = %._crit_edge, %._crit_edge32
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge32 ], [ 0, %._crit_edge ]
  %99 = getelementptr inbounds [3 x float]* %cg, i64 0, i64 %indvars.iv70
  %100 = load float* %99, align 4, !tbaa !14
  %101 = fcmp olt float %100, 0.000000e+00
  %102 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv70, i64 %indvars.iv70
  br i1 %101, label %.lr.ph25, label %.preheader9

.loopexit6:                                       ; preds = %.lr.ph24.preheader, %._crit_edge95, %.lr.ph25
  %103 = fcmp olt float %109, 0.000000e+00
  br i1 %103, label %.lr.ph25, label %..preheader9_crit_edge

..preheader9_crit_edge:                           ; preds = %.loopexit6
  store float %109, float* %99, align 4, !tbaa !14
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader10, %..preheader9_crit_edge
  %104 = phi float [ %109, %..preheader9_crit_edge ], [ %100, %.preheader10 ]
  %105 = load float* %102, align 4, !tbaa !14
  %106 = fcmp ult float %104, %105
  br i1 %106, label %._crit_edge32, label %.lr.ph31

.lr.ph25:                                         ; preds = %.preheader10, %.loopexit6
  %107 = phi float [ %109, %.loopexit6 ], [ %100, %.preheader10 ]
  %108 = load float* %102, align 4, !tbaa !14
  %109 = fadd float %107, %108
  br i1 %35, label %.lr.ph24.preheader, label %.loopexit6

.lr.ph24.preheader:                               ; preds = %.lr.ph25
  %110 = getelementptr inbounds i32* %2, i64 %50
  %111 = load i32* %110, align 4, !tbaa !17
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x float]* %pos, i64 %112, i64 %indvars.iv70
  %114 = load float* %113, align 4, !tbaa !14
  %115 = fadd float %108, %114
  store float %115, float* %113, align 4, !tbaa !14
  %exitcond65121 = icmp eq i32 %28, %51
  br i1 %exitcond65121, label %.loopexit6, label %._crit_edge95

._crit_edge95:                                    ; preds = %.lr.ph24.preheader, %._crit_edge95
  %indvars.iv62122 = phi i64 [ %indvars.iv.next63, %._crit_edge95 ], [ %50, %.lr.ph24.preheader ]
  %indvars.iv.next63 = add nsw i64 %indvars.iv62122, 1
  %.pre96 = load float* %102, align 4, !tbaa !14
  %116 = getelementptr inbounds i32* %2, i64 %indvars.iv.next63
  %117 = load i32* %116, align 4, !tbaa !17
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x float]* %pos, i64 %118, i64 %indvars.iv70
  %120 = load float* %119, align 4, !tbaa !14
  %121 = fadd float %.pre96, %120
  store float %121, float* %119, align 4, !tbaa !14
  %lftr.wideiv64 = trunc i64 %indvars.iv.next63 to i32
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %51
  br i1 %exitcond65, label %.loopexit6, label %._crit_edge95

..loopexit5_crit_edge:                            ; preds = %._crit_edge97, %.lr.ph30.preheader
  %.pre99 = load float* %102, align 4, !tbaa !14
  br label %.loopexit5

.loopexit5:                                       ; preds = %..loopexit5_crit_edge, %.lr.ph31
  %122 = phi float [ %.pre99, %..loopexit5_crit_edge ], [ %124, %.lr.ph31 ]
  %123 = fcmp ult float %126, %122
  br i1 %123, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %.preheader9, %.loopexit5
  %124 = phi float [ %122, %.loopexit5 ], [ %105, %.preheader9 ]
  %125 = phi float [ %126, %.loopexit5 ], [ %104, %.preheader9 ]
  %126 = fsub float %125, %124
  store float %126, float* %99, align 4, !tbaa !14
  br i1 %35, label %.lr.ph30.preheader, label %.loopexit5

.lr.ph30.preheader:                               ; preds = %.lr.ph31
  %127 = getelementptr inbounds i32* %2, i64 %50
  %128 = load i32* %127, align 4, !tbaa !17
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [3 x float]* %pos, i64 %129, i64 %indvars.iv70
  %131 = load float* %130, align 4, !tbaa !14
  %132 = fsub float %131, %124
  store float %132, float* %130, align 4, !tbaa !14
  %exitcond69124 = icmp eq i32 %28, %51
  br i1 %exitcond69124, label %..loopexit5_crit_edge, label %._crit_edge97

._crit_edge97:                                    ; preds = %.lr.ph30.preheader, %._crit_edge97
  %indvars.iv66125 = phi i64 [ %indvars.iv.next67, %._crit_edge97 ], [ %50, %.lr.ph30.preheader ]
  %indvars.iv.next67 = add nsw i64 %indvars.iv66125, 1
  %.pre98 = load float* %102, align 4, !tbaa !14
  %133 = getelementptr inbounds i32* %2, i64 %indvars.iv.next67
  %134 = load i32* %133, align 4, !tbaa !17
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [3 x float]* %pos, i64 %135, i64 %indvars.iv70
  %137 = load float* %136, align 4, !tbaa !14
  %138 = fsub float %137, %.pre98
  store float %138, float* %136, align 4, !tbaa !14
  %lftr.wideiv68 = trunc i64 %indvars.iv.next67 to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %51
  br i1 %exitcond69, label %..loopexit5_crit_edge, label %._crit_edge97

._crit_edge32:                                    ; preds = %.loopexit5, %.preheader9
  %.lcssa16 = phi float [ %104, %.preheader9 ], [ %126, %.loopexit5 ]
  %139 = getelementptr inbounds [3 x float]* %cg_cm, i64 %indvars.iv91, i64 %indvars.iv70
  store float %.lcssa16, float* %139, align 4, !tbaa !14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond72 = icmp eq i64 %indvars.iv.next71, 3
  br i1 %exitcond72, label %.backedge, label %.preheader10

._crit_edge56:                                    ; preds = %.backedge, %19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_box_center([3 x float]* nocapture readonly %box, float* nocapture %box_center) #4 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %3 = load float* %2, align 4, !tbaa !14
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds float* %box_center, i64 %indvars.iv
  store float %4, float* %5, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %6, label %1

; <label>:6                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_triclinic_images([3 x float]* nocapture readonly %box, [3 x float]* nocapture %img) #4 {
  %1 = bitcast [3 x float]* %box to i32*
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = bitcast [3 x float]* %img to i32*
  store i32 %2, i32* %3, align 4, !tbaa !14
  %4 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %5 = bitcast float* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds [3 x float]* %img, i64 0, i64 1
  %8 = bitcast float* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !14
  %9 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %10 = bitcast float* %9 to i32*
  %11 = load i32* %10, align 4, !tbaa !14
  %12 = getelementptr inbounds [3 x float]* %img, i64 0, i64 2
  %13 = bitcast float* %12 to i32*
  store i32 %11, i32* %13, align 4, !tbaa !14
  %14 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %15 = getelementptr inbounds [3 x float]* %img, i64 1, i64 0
  %16 = bitcast float* %14 to i32*
  %17 = load i32* %16, align 4, !tbaa !14
  %18 = bitcast float* %15 to i32*
  store i32 %17, i32* %18, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %20 = bitcast float* %19 to i32*
  %21 = load i32* %20, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %img, i64 1, i64 1
  %23 = bitcast float* %22 to i32*
  store i32 %21, i32* %23, align 4, !tbaa !14
  %24 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %25 = bitcast float* %24 to i32*
  %26 = load i32* %25, align 4, !tbaa !14
  %27 = getelementptr inbounds [3 x float]* %img, i64 1, i64 2
  %28 = bitcast float* %27 to i32*
  store i32 %26, i32* %28, align 4, !tbaa !14
  %29 = bitcast i32 %17 to float
  %30 = fcmp olt float %29, 0.000000e+00
  %31 = bitcast i32 %21 to float
  %32 = bitcast i32 %26 to float
  %33 = bitcast i32 %2 to float
  %34 = bitcast i32 %6 to float
  %35 = bitcast i32 %11 to float
  br i1 %30, label %36, label %40

; <label>:36                                      ; preds = %0
  %37 = fsub float -0.000000e+00, %29
  store float %37, float* %15, align 4, !tbaa !14
  %38 = fsub float -0.000000e+00, %31
  store float %38, float* %22, align 4, !tbaa !14
  %39 = fsub float -0.000000e+00, %32
  store float %39, float* %27, align 4, !tbaa !14
  br label %40

; <label>:40                                      ; preds = %36, %0
  %41 = phi float [ %39, %36 ], [ %32, %0 ]
  %42 = phi float [ %38, %36 ], [ %31, %0 ]
  %43 = phi float [ %37, %36 ], [ %29, %0 ]
  %44 = getelementptr inbounds [3 x float]* %img, i64 2, i64 0
  %45 = insertelement <4 x float> undef, float %43, i32 0
  %46 = insertelement <4 x float> %45, float %42, i32 1
  %47 = insertelement <4 x float> %46, float %41, i32 2
  %48 = insertelement <4 x float> %47, float -0.000000e+00, i32 3
  %49 = insertelement <4 x float> undef, float %33, i32 0
  %50 = insertelement <4 x float> %49, float %34, i32 1
  %51 = insertelement <4 x float> %50, float %35, i32 2
  %52 = insertelement <4 x float> %51, float %33, i32 3
  %53 = fsub <4 x float> %48, %52
  %54 = bitcast float* %44 to <4 x float>*
  store <4 x float> %53, <4 x float>* %54, align 4, !tbaa !14
  %55 = fsub float -0.000000e+00, %34
  %56 = getelementptr inbounds [3 x float]* %img, i64 3, i64 1
  store float %55, float* %56, align 4, !tbaa !14
  %57 = fsub float -0.000000e+00, %35
  %58 = getelementptr inbounds [3 x float]* %img, i64 3, i64 2
  store float %57, float* %58, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %40, %._crit_edge
  %indvars.iv.next921 = phi i64 [ 1, %40 ], [ %indvars.iv.next9, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next921, i64 0
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert11 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next921, i64 1
  %.pre12 = load float* %.phi.trans.insert11, align 4, !tbaa !14
  %.phi.trans.insert13 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next921, i64 2
  %.pre14 = load float* %.phi.trans.insert13, align 4, !tbaa !14
  %59 = add nuw nsw i64 %indvars.iv.next921, 3
  %60 = getelementptr inbounds [3 x float]* %img, i64 %59, i64 0
  %61 = fsub float -0.000000e+00, %.pre
  store float %61, float* %60, align 4, !tbaa !14
  %62 = fsub float -0.000000e+00, %.pre12
  %63 = getelementptr inbounds [3 x float]* %img, i64 %59, i64 1
  store float %62, float* %63, align 4, !tbaa !14
  %64 = fsub float -0.000000e+00, %.pre14
  %65 = getelementptr inbounds [3 x float]* %img, i64 %59, i64 2
  store float %64, float* %65, align 4, !tbaa !14
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv.next921, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3
  br i1 %exitcond10, label %66, label %._crit_edge

; <label>:66                                      ; preds = %._crit_edge
  %67 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %68 = getelementptr inbounds [3 x float]* %img, i64 6, i64 0
  %69 = bitcast float* %67 to i32*
  %70 = load i32* %69, align 4, !tbaa !14
  %71 = bitcast float* %68 to i32*
  store i32 %70, i32* %71, align 4, !tbaa !14
  %72 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %73 = bitcast float* %72 to i32*
  %74 = load i32* %73, align 4, !tbaa !14
  %75 = getelementptr inbounds [3 x float]* %img, i64 6, i64 1
  %76 = bitcast float* %75 to i32*
  store i32 %74, i32* %76, align 4, !tbaa !14
  %77 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %78 = bitcast float* %77 to i32*
  %79 = load i32* %78, align 4, !tbaa !14
  %80 = getelementptr inbounds [3 x float]* %img, i64 6, i64 2
  %81 = bitcast float* %80 to i32*
  store i32 %79, i32* %81, align 4, !tbaa !14
  %82 = bitcast i32 %70 to float
  %83 = fcmp olt float %82, 0.000000e+00
  %84 = bitcast i32 %74 to float
  %85 = bitcast i32 %79 to float
  br i1 %83, label %86, label %.preheader1

; <label>:86                                      ; preds = %66
  %87 = fsub float -0.000000e+00, %82
  store float %87, float* %68, align 4, !tbaa !14
  %88 = fsub float -0.000000e+00, %84
  store float %88, float* %75, align 4, !tbaa !14
  %89 = fsub float -0.000000e+00, %85
  store float %89, float* %80, align 4, !tbaa !14
  br label %.preheader1

.preheader1:                                      ; preds = %66, %86, %._crit_edge15
  %90 = phi float [ %.pre18, %._crit_edge15 ], [ %85, %66 ], [ %89, %86 ]
  %91 = phi float [ %.pre17, %._crit_edge15 ], [ %84, %66 ], [ %88, %86 ]
  %92 = phi float [ %.pre16, %._crit_edge15 ], [ %82, %66 ], [ %87, %86 ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %._crit_edge15 ], [ 0, %66 ], [ 0, %86 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %93 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next6, i64 0
  %94 = add nuw nsw i64 %indvars.iv5, 7
  %95 = getelementptr inbounds [3 x float]* %img, i64 %94, i64 0
  %96 = load float* %93, align 4, !tbaa !14
  %97 = fadd float %92, %96
  %98 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next6, i64 1
  %99 = load float* %98, align 4, !tbaa !14
  %100 = fadd float %91, %99
  %101 = getelementptr inbounds [3 x float]* %img, i64 %indvars.iv.next6, i64 2
  %102 = load float* %101, align 4, !tbaa !14
  %103 = fadd float %90, %102
  store float %97, float* %95, align 4, !tbaa !14
  %104 = getelementptr inbounds [3 x float]* %img, i64 %94, i64 1
  store float %100, float* %104, align 4, !tbaa !14
  %105 = getelementptr inbounds [3 x float]* %img, i64 %94, i64 2
  store float %103, float* %105, align 4, !tbaa !14
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 3
  br i1 %exitcond7, label %.preheader, label %._crit_edge15

._crit_edge15:                                    ; preds = %.preheader1
  %.pre16 = load float* %68, align 4, !tbaa !14
  %.pre17 = load float* %75, align 4, !tbaa !14
  %.pre18 = load float* %80, align 4, !tbaa !14
  br label %.preheader1

.preheader:                                       ; preds = %.preheader1, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.preheader1 ]
  %106 = add nuw nsw i64 %indvars.iv, 2
  %107 = trunc i64 %106 to i32
  %108 = srem i32 %107, 4
  %109 = add nsw i32 %108, 6
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float]* %img, i64 %110, i64 0
  %112 = add nuw nsw i64 %indvars.iv, 10
  %113 = getelementptr inbounds [3 x float]* %img, i64 %112, i64 0
  %114 = load float* %111, align 4, !tbaa !14
  %115 = fsub float -0.000000e+00, %114
  store float %115, float* %113, align 4, !tbaa !14
  %116 = getelementptr inbounds [3 x float]* %img, i64 %110, i64 1
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fsub float -0.000000e+00, %117
  %119 = getelementptr inbounds [3 x float]* %img, i64 %112, i64 1
  store float %118, float* %119, align 4, !tbaa !14
  %120 = getelementptr inbounds [3 x float]* %img, i64 %110, i64 2
  %121 = load float* %120, align 4, !tbaa !14
  %122 = fsub float -0.000000e+00, %121
  %123 = getelementptr inbounds [3 x float]* %img, i64 %112, i64 2
  store float %122, float* %123, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %124, label %.preheader

; <label>:124                                     ; preds = %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_compact_unitcell_vertices([3 x float]* nocapture readonly %box, [3 x float]* nocapture %vert) #4 {
  %img = alloca [14 x [3 x float]], align 16
  %box_center = alloca [3 x float], align 4
  %tmp = alloca [4 x i32], align 16
  %1 = bitcast [14 x [3 x float]]* %img to i8*
  call void @llvm.lifetime.start(i64 168, i8* %1) #6
  %2 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 0
  call void @calc_triclinic_images([3 x float]* %box, [3 x float]* %2) #9
  %3 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 0
  %4 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 1
  %5 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 2
  %6 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 3
  br label %7

; <label>:7                                       ; preds = %0, %36
  %indvars.iv68 = phi i64 [ 0, %0 ], [ %indvars.iv.next69, %36 ]
  %indvars.iv66 = phi i64 [ 2, %0 ], [ %indvars.iv.next67, %36 ]
  %8 = add i64 %indvars.iv66, 4294967295
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 16, !tbaa !17
  %10 = trunc i64 %indvars.iv66 to i32
  %11 = icmp eq i32 %10, 2
  %. = select i1 %11, i32 8, i32 6
  store i32 %., i32* %4, align 4, !tbaa !17
  %12 = add nuw nsw i64 %indvars.iv66, 1
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 6
  %tmp65 = select i1 %14, i32 0, i32 %13
  store i32 %tmp65, i32* %5, align 8, !tbaa !17
  %15 = add nuw nsw i32 %., 4
  store i32 %15, i32* %6, align 4, !tbaa !17
  br label %.preheader11

.preheader11:                                     ; preds = %..preheader11_crit_edge, %7
  %16 = phi i32 [ %9, %7 ], [ %.pre, %..preheader11_crit_edge ]
  %indvars.iv62 = phi i64 [ %indvars.iv68, %7 ], [ %indvars.iv.next63, %..preheader11_crit_edge ]
  %indvars.iv60 = phi i64 [ 0, %7 ], [ %indvars.iv.next61, %..preheader11_crit_edge ]
  %17 = sext i32 %16 to i64
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %18 = trunc i64 %indvars.iv.next61 to i32
  %19 = icmp eq i32 %18, 4
  %sext = shl i64 %indvars.iv.next61, 32
  %20 = ashr exact i64 %sext, 32
  %21 = select i1 %19, i64 0, i64 %20
  %22 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %21
  %23 = load i32* %22, align 4, !tbaa !17
  %24 = sext i32 %23 to i64
  br label %25

; <label>:25                                      ; preds = %25, %.preheader11
  %indvars.iv56 = phi i64 [ 0, %.preheader11 ], [ %indvars.iv.next57, %25 ]
  %26 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv66, i64 %indvars.iv56
  %27 = load float* %26, align 4, !tbaa !14
  %28 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %17, i64 %indvars.iv56
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %24, i64 %indvars.iv56
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv62, i64 %indvars.iv56
  store float %33, float* %34, align 4, !tbaa !14
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond58 = icmp eq i64 %indvars.iv.next57, 3
  br i1 %exitcond58, label %35, label %25

; <label>:35                                      ; preds = %25
  %exitcond64 = icmp eq i64 %indvars.iv.next61, 4
  br i1 %exitcond64, label %36, label %..preheader11_crit_edge

..preheader11_crit_edge:                          ; preds = %35
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  %.phi.trans.insert = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv.next61
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !17
  br label %.preheader11

; <label>:36                                      ; preds = %35
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 3
  %37 = icmp slt i64 %indvars.iv.next67, 6
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 4
  br i1 %37, label %7, label %.preheader10

.preheader10:                                     ; preds = %36, %67
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %67 ], [ 7, %36 ]
  %n.222 = phi i64 [ %68, %67 ], [ 8, %36 ]
  %38 = add i64 %indvars.iv54, 4294967289
  %39 = trunc i64 %38 to i32
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %3, align 16, !tbaa !17
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4, !tbaa !17
  %42 = trunc i64 %indvars.iv54 to i32
  %43 = icmp eq i32 %42, 7
  %.4 = select i1 %43, i32 8, i32 10
  store i32 %.4, i32* %5, align 8, !tbaa !17
  %44 = add i64 %indvars.iv54, 4294967295
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4, !tbaa !17
  %sext74 = shl i64 %n.222, 32
  %46 = ashr exact i64 %sext74, 32
  br label %.preheader9

.preheader9:                                      ; preds = %..preheader9_crit_edge, %.preheader10
  %47 = phi i32 [ %40, %.preheader10 ], [ %.pre71, %..preheader9_crit_edge ]
  %indvars.iv51 = phi i64 [ %46, %.preheader10 ], [ %indvars.iv.next52, %..preheader9_crit_edge ]
  %indvars.iv49 = phi i64 [ 0, %.preheader10 ], [ %indvars.iv.next50, %..preheader9_crit_edge ]
  %48 = sext i32 %47 to i64
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %49 = trunc i64 %indvars.iv.next50 to i32
  %50 = icmp eq i32 %49, 4
  %sext75 = shl i64 %indvars.iv.next50, 32
  %51 = ashr exact i64 %sext75, 32
  %52 = select i1 %50, i64 0, i64 %51
  %53 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %52
  %54 = load i32* %53, align 4, !tbaa !17
  %55 = sext i32 %54 to i64
  br label %56

; <label>:56                                      ; preds = %56, %.preheader9
  %indvars.iv45 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next46, %56 ]
  %57 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv54, i64 %indvars.iv45
  %58 = load float* %57, align 4, !tbaa !14
  %59 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %48, i64 %indvars.iv45
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fadd float %58, %60
  %62 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %55, i64 %indvars.iv45
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fadd float %61, %63
  %65 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv51, i64 %indvars.iv45
  store float %64, float* %65, align 4, !tbaa !14
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 3
  br i1 %exitcond47, label %66, label %56

; <label>:66                                      ; preds = %56
  %exitcond53 = icmp eq i64 %indvars.iv.next50, 4
  br i1 %exitcond53, label %67, label %..preheader9_crit_edge

..preheader9_crit_edge:                           ; preds = %66
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1
  %.phi.trans.insert70 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv.next50
  %.pre71 = load i32* %.phi.trans.insert70, align 4, !tbaa !17
  br label %.preheader9

; <label>:67                                      ; preds = %66
  %68 = add nsw i64 %46, 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 6
  %69 = icmp slt i64 %indvars.iv.next55, 14
  br i1 %69, label %.preheader10, label %.preheader8

.preheader8:                                      ; preds = %67, %96
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %96 ], [ 9, %67 ]
  %n.417 = phi i64 [ %97, %96 ], [ 16, %67 ]
  %70 = trunc i64 %indvars.iv43 to i32
  %71 = icmp eq i32 %70, 9
  %.5 = select i1 %71, i32 3, i32 0
  store i32 %.5, i32* %3, align 16, !tbaa !17
  %72 = add nuw nsw i32 %.5, 1
  store i32 %72, i32* %4, align 4, !tbaa !17
  %storemerge = select i1 %71, i32 6, i32 12
  store i32 %storemerge, i32* %5, align 8, !tbaa !17
  %73 = add i64 %indvars.iv43, 4294967295
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4, !tbaa !17
  %sext76 = shl i64 %n.417, 32
  %75 = ashr exact i64 %sext76, 32
  br label %.preheader7

.preheader7:                                      ; preds = %..preheader7_crit_edge, %.preheader8
  %76 = phi i32 [ %.5, %.preheader8 ], [ %.pre73, %..preheader7_crit_edge ]
  %indvars.iv40 = phi i64 [ %75, %.preheader8 ], [ %indvars.iv.next41, %..preheader7_crit_edge ]
  %indvars.iv38 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next39, %..preheader7_crit_edge ]
  %77 = sext i32 %76 to i64
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %78 = trunc i64 %indvars.iv.next39 to i32
  %79 = icmp eq i32 %78, 4
  %sext77 = shl i64 %indvars.iv.next39, 32
  %80 = ashr exact i64 %sext77, 32
  %81 = select i1 %79, i64 0, i64 %80
  %82 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %81
  %83 = load i32* %82, align 4, !tbaa !17
  %84 = sext i32 %83 to i64
  br label %85

; <label>:85                                      ; preds = %85, %.preheader7
  %indvars.iv34 = phi i64 [ 0, %.preheader7 ], [ %indvars.iv.next35, %85 ]
  %86 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %indvars.iv43, i64 %indvars.iv34
  %87 = load float* %86, align 4, !tbaa !14
  %88 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %77, i64 %indvars.iv34
  %89 = load float* %88, align 4, !tbaa !14
  %90 = fadd float %87, %89
  %91 = getelementptr inbounds [14 x [3 x float]]* %img, i64 0, i64 %84, i64 %indvars.iv34
  %92 = load float* %91, align 4, !tbaa !14
  %93 = fadd float %90, %92
  %94 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv40, i64 %indvars.iv34
  store float %93, float* %94, align 4, !tbaa !14
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3
  br i1 %exitcond36, label %95, label %85

; <label>:95                                      ; preds = %85
  %exitcond42 = icmp eq i64 %indvars.iv.next39, 4
  br i1 %exitcond42, label %96, label %..preheader7_crit_edge

..preheader7_crit_edge:                           ; preds = %95
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 1
  %.phi.trans.insert72 = getelementptr inbounds [4 x i32]* %tmp, i64 0, i64 %indvars.iv.next39
  %.pre73 = load i32* %.phi.trans.insert72, align 4, !tbaa !17
  br label %.preheader7

; <label>:96                                      ; preds = %95
  %97 = add nsw i64 %75, 4
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 2
  %98 = icmp slt i64 %indvars.iv.next44, 12
  br i1 %98, label %.preheader8, label %.preheader6

.preheader6:                                      ; preds = %96, %.preheader6
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader6 ], [ 0, %96 ]
  %99 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %100 = load float* %99, align 4, !tbaa !14
  %101 = fmul float %100, 5.000000e-01
  %102 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %101, float* %102, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %.preheader, label %.preheader6

.preheader:                                       ; preds = %.preheader6, %calc_box_center.exit
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %calc_box_center.exit ], [ 0, %.preheader6 ]
  br label %103

; <label>:103                                     ; preds = %103, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %103 ]
  %104 = getelementptr inbounds [3 x float]* %vert, i64 %indvars.iv31, i64 %indvars.iv
  %105 = load float* %104, align 4, !tbaa !14
  %106 = fpext float %105 to double
  %107 = fmul double %106, 2.500000e-01
  %108 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv
  %109 = load float* %108, align 4, !tbaa !14
  %110 = fpext float %109 to double
  %111 = fadd double %107, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %104, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %calc_box_center.exit, label %103

calc_box_center.exit:                             ; preds = %103
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 24
  br i1 %exitcond33, label %113, label %.preheader

; <label>:113                                     ; preds = %calc_box_center.exit
  call void @llvm.lifetime.end(i64 168, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32* @compact_unitcell_edges() #4 {
  br label %.preheader1

.preheader1:                                      ; preds = %10, %0
  %indvars.iv11 = phi i64 [ 0, %0 ], [ %indvars.iv.next12, %10 ]
  %i.07 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %1 = shl nsw i32 %i.07, 2
  br label %2

.preheader:                                       ; preds = %10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 48) to i8*), i8* bitcast ([24 x i32]* @compact_unitcell_edges.hexcon to i8*), i64 96, i32 16, i1 false)
  ret i32* getelementptr inbounds ([72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 0)

; <label>:2                                       ; preds = %2, %.preheader1
  %indvars.iv = phi i64 [ %indvars.iv11, %.preheader1 ], [ %indvars.iv.next, %2 ]
  %j.05 = phi i32 [ 0, %.preheader1 ], [ %6, %2 ]
  %3 = add nuw nsw i32 %j.05, %1
  %4 = or i64 %indvars.iv, 1
  %5 = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %indvars.iv
  store i32 %3, i32* %5, align 8, !tbaa !17
  %6 = add nuw nsw i32 %j.05, 1
  %7 = icmp eq i32 %6, 4
  %tmp = select i1 %7, i32 0, i32 %6
  %8 = add nsw i32 %tmp, %1
  %indvars.iv.next = add nsw i64 %indvars.iv, 2
  %9 = getelementptr inbounds [72 x i32]* @compact_unitcell_edges.edge, i64 0, i64 %4
  store i32 %8, i32* %9, align 4, !tbaa !17
  %exitcond = icmp eq i32 %6, 4
  br i1 %exitcond, label %10, label %2

; <label>:10                                      ; preds = %2
  %11 = add nuw nsw i32 %i.07, 1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 8
  %exitcond13 = icmp eq i32 %11, 6
  br i1 %exitcond13, label %.preheader, label %.preheader1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_atoms_in_box([3 x float]* nocapture readonly %box, i32 %natoms, [3 x float]* nocapture %x) #4 {
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.preheader5.lr.ph, label %._crit_edge15

.preheader5.lr.ph:                                ; preds = %0
  %2 = add i32 %natoms, -1
  br label %.preheader5

.preheader5:                                      ; preds = %23, %.preheader5.lr.ph
  %indvars.iv26 = phi i64 [ 0, %.preheader5.lr.ph ], [ %indvars.iv.next27, %23 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %._crit_edge
  %indvars.iv24 = phi i64 [ 2, %.preheader5 ], [ %indvars.iv.next25, %._crit_edge ]
  %indvars.iv20 = phi i32 [ 3, %.preheader5 ], [ %indvars.iv.next21, %._crit_edge ]
  %3 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv26, i64 %indvars.iv24
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %.lr.ph, label %.preheader3

.loopexit2:                                       ; preds = %.lr.ph
  %.pre = load float* %3, align 4, !tbaa !14
  %6 = fcmp olt float %.pre, 0.000000e+00
  br i1 %6, label %.lr.ph, label %.preheader3

.preheader3:                                      ; preds = %.loopexit2, %.preheader4
  %7 = phi float [ %4, %.preheader4 ], [ %.pre, %.loopexit2 ]
  %8 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv24, i64 %indvars.iv24
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fcmp ult float %7, %9
  br i1 %10, label %._crit_edge, label %.lr.ph12

.lr.ph:                                           ; preds = %.loopexit2, %.lr.ph, %.preheader4
  %indvars.iv = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next, %.lr.ph ], [ 0, %.loopexit2 ]
  %11 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv24, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !14
  %13 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv26, i64 %indvars.iv
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fadd float %12, %14
  store float %15, float* %13, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv20
  br i1 %exitcond, label %.loopexit2, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph12
  %.pre30 = load float* %3, align 4, !tbaa !14
  %.pre31 = load float* %8, align 4, !tbaa !14
  %16 = fcmp ult float %.pre30, %.pre31
  br i1 %16, label %._crit_edge, label %.lr.ph12

.lr.ph12:                                         ; preds = %.loopexit, %.lr.ph12, %.preheader3
  %indvars.iv18 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next19, %.lr.ph12 ], [ 0, %.loopexit ]
  %17 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv24, i64 %indvars.iv18
  %18 = load float* %17, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv26, i64 %indvars.iv18
  %20 = load float* %19, align 4, !tbaa !14
  %21 = fsub float %20, %18
  store float %21, float* %19, align 4, !tbaa !14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %lftr.wideiv22 = trunc i64 %indvars.iv.next19 to i32
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %indvars.iv20
  br i1 %exitcond23, label %.loopexit, label %.lr.ph12

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, -1
  %22 = icmp sgt i64 %indvars.iv24, 0
  %indvars.iv.next21 = add nsw i32 %indvars.iv20, -1
  br i1 %22, label %.preheader4, label %23

; <label>:23                                      ; preds = %._crit_edge
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %2
  br i1 %exitcond29, label %._crit_edge15, label %.preheader5

._crit_edge15:                                    ; preds = %23, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_atoms_in_triclinic_unitcell([3 x float]* nocapture readonly %box, i32 %natoms, [3 x float]* nocapture %x) #4 {
  %box_center = alloca [3 x float], align 4
  %shift_mat = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %shift_mat to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  br label %2

; <label>:2                                       ; preds = %2, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %2 ]
  %3 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %4, 5.000000e-01
  %6 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %5, float* %6, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %.preheader8, label %2

.preheader8:                                      ; preds = %2, %calc_box_center.exit
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %calc_box_center.exit ], [ 2, %2 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %calc_box_center.exit ], [ 3, %2 ]
  %7 = add nuw nsw i64 %indvars.iv56, 1
  %8 = icmp slt i64 %7, 3
  br i1 %8, label %.lr.ph26, label %calc_box_center.exit

.preheader7:                                      ; preds = %calc_box_center.exit
  %9 = icmp sgt i32 %natoms, 0
  br i1 %9, label %.preheader6.lr.ph, label %._crit_edge23

.preheader6.lr.ph:                                ; preds = %.preheader7
  %10 = add i32 %natoms, -1
  br label %.preheader6

.lr.ph26:                                         ; preds = %.preheader8, %.lr.ph26
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph26 ], [ %indvars.iv50, %.preheader8 ]
  %11 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv52, i64 %indvars.iv56
  %12 = load float* %11, align 4, !tbaa !14
  %13 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv52, i64 %indvars.iv52
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fdiv float %12, %14
  %16 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv52, i64 %indvars.iv56
  store float %15, float* %16, align 4, !tbaa !14
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv52 to i32
  %exitcond55 = icmp eq i32 %lftr.wideiv54, 2
  br i1 %exitcond55, label %calc_box_center.exit, label %.lr.ph26

calc_box_center.exit:                             ; preds = %.lr.ph26, %.preheader8
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  %17 = icmp sgt i64 %indvars.iv56, 0
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  br i1 %17, label %.preheader8, label %.preheader7

.preheader6:                                      ; preds = %53, %.preheader6.lr.ph
  %indvars.iv46 = phi i64 [ 0, %.preheader6.lr.ph ], [ %indvars.iv.next47, %53 ]
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader6, %._crit_edge
  %indvars.iv43 = phi i64 [ 2, %.preheader6 ], [ %indvars.iv.next44, %._crit_edge ]
  %indvars.iv39 = phi i32 [ 3, %.preheader6 ], [ %indvars.iv.next40, %._crit_edge ]
  %indvars.iv = phi i64 [ 3, %.preheader6 ], [ %indvars.iv.next, %._crit_edge ]
  %18 = add nuw nsw i64 %indvars.iv43, 1
  %19 = icmp slt i64 %18, 3
  br i1 %19, label %.lr.ph, label %.preheader4

.preheader4:                                      ; preds = %.lr.ph, %.preheader5
  %shift.0.lcssa = phi float [ 0.000000e+00, %.preheader5 ], [ %32, %.lr.ph ]
  %20 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv46, i64 %indvars.iv43
  %21 = load float* %20, align 4, !tbaa !14
  %22 = fsub float %21, %shift.0.lcssa
  %23 = fcmp olt float %22, 0.000000e+00
  br i1 %23, label %.lr.ph15, label %.preheader3

.lr.ph:                                           ; preds = %.preheader5, %.lr.ph
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph ], [ %indvars.iv, %.preheader5 ]
  %shift.012 = phi float [ %32, %.lr.ph ], [ 0.000000e+00, %.preheader5 ]
  %24 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv46, i64 %indvars.iv29
  %25 = load float* %24, align 4, !tbaa !14
  %26 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv29
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds [3 x [3 x float]]* %shift_mat, i64 0, i64 %indvars.iv29, i64 %indvars.iv43
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fmul float %28, %30
  %32 = fadd float %shift.012, %31
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %lftr.wideiv = trunc i64 %indvars.iv29 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %.preheader4, label %.lr.ph

.loopexit2:                                       ; preds = %.lr.ph15
  %.pre = load float* %20, align 4, !tbaa !14
  %33 = fsub float %.pre, %shift.0.lcssa
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %.lr.ph15, label %.preheader3

.preheader3:                                      ; preds = %.loopexit2, %.preheader4
  %35 = phi float [ %21, %.preheader4 ], [ %.pre, %.loopexit2 ]
  %36 = fsub float %35, %shift.0.lcssa
  %37 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv43, i64 %indvars.iv43
  %38 = load float* %37, align 4, !tbaa !14
  %39 = fcmp ult float %36, %38
  br i1 %39, label %._crit_edge, label %.lr.ph20

.lr.ph15:                                         ; preds = %.loopexit2, %.lr.ph15, %.preheader4
  %indvars.iv31 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next32, %.lr.ph15 ], [ 0, %.loopexit2 ]
  %40 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv43, i64 %indvars.iv31
  %41 = load float* %40, align 4, !tbaa !14
  %42 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv46, i64 %indvars.iv31
  %43 = load float* %42, align 4, !tbaa !14
  %44 = fadd float %41, %43
  store float %44, float* %42, align 4, !tbaa !14
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next32 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %indvars.iv39
  br i1 %exitcond36, label %.loopexit2, label %.lr.ph15

.loopexit:                                        ; preds = %.lr.ph20
  %.pre59 = load float* %20, align 4, !tbaa !14
  %.pre60 = load float* %37, align 4, !tbaa !14
  %45 = fsub float %.pre59, %shift.0.lcssa
  %46 = fcmp ult float %45, %.pre60
  br i1 %46, label %._crit_edge, label %.lr.ph20

.lr.ph20:                                         ; preds = %.loopexit, %.lr.ph20, %.preheader3
  %indvars.iv37 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next38, %.lr.ph20 ], [ 0, %.loopexit ]
  %47 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv43, i64 %indvars.iv37
  %48 = load float* %47, align 4, !tbaa !14
  %49 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv46, i64 %indvars.iv37
  %50 = load float* %49, align 4, !tbaa !14
  %51 = fsub float %50, %48
  store float %51, float* %49, align 4, !tbaa !14
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next38 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %indvars.iv39
  br i1 %exitcond42, label %.loopexit, label %.lr.ph20

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  %52 = icmp sgt i64 %indvars.iv43, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next40 = add nsw i32 %indvars.iv39, -1
  br i1 %52, label %.preheader5, label %53

; <label>:53                                      ; preds = %._crit_edge
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv46 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %10
  br i1 %exitcond49, label %._crit_edge23, label %.preheader6

._crit_edge23:                                    ; preds = %53, %.preheader7
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_atoms_in_compact_unitcell([3 x float]* %box, i32 %natoms, [3 x float]* nocapture %x) #4 {
  %box_center = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  tail call void @init_pbc([3 x float]* %box) #9
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %1 ]
  %2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %3 = load float* %2, align 4, !tbaa !14
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 %indvars.iv.i
  store float %4, float* %5, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %calc_box_center.exit.preheader, label %1

calc_box_center.exit.preheader:                   ; preds = %1
  %6 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 0
  %7 = icmp sgt i32 %natoms, 0
  br i1 %7, label %.lr.ph, label %calc_box_center.exit._crit_edge

.lr.ph:                                           ; preds = %calc_box_center.exit.preheader
  %8 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %9 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 1
  %10 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %11 = getelementptr inbounds [3 x float]* %box_center, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %13 = add i32 %natoms, -1
  %.pre = load float* %6, align 4, !tbaa !14
  %.pre2 = load float* %9, align 4, !tbaa !14
  %.pre3 = load float* %11, align 4, !tbaa !14
  br label %calc_box_center.exit

calc_box_center.exit:                             ; preds = %calc_box_center.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %calc_box_center.exit ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  call void @pbc_dx(float* %14, float* %6, float* %8) #9
  %15 = load float* %8, align 4, !tbaa !14
  %16 = fadd float %.pre, %15
  %17 = load float* %10, align 4, !tbaa !14
  %18 = fadd float %.pre2, %17
  %19 = load float* %12, align 4, !tbaa !14
  %20 = fadd float %.pre3, %19
  store float %16, float* %14, align 4, !tbaa !14
  %21 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  store float %18, float* %21, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  store float %20, float* %22, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %calc_box_center.exit._crit_edge, label %calc_box_center.exit

calc_box_center.exit._crit_edge:                  ; preds = %calc_box_center.exit, %calc_box_center.exit.preheader
  ret void
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

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
!16 = !{!4, !4, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !4, i64 1048}
!19 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!20 = !{!19, !4, i64 1032}
