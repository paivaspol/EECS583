; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shakef.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [51 x i8] c"Constraint between two massless particles %d and %\00", align 1
@vec_shakef.rij = internal unnamed_addr global [3 x float]* null, align 8
@vec_shakef.M2 = internal unnamed_addr global float* null, align 8
@vec_shakef.tt = internal unnamed_addr global float* null, align 8
@vec_shakef.dist2 = internal unnamed_addr global float* null, align 8
@vec_shakef.maxcon = internal unnamed_addr global i32 0, align 4
@.str1 = private unnamed_addr constant [4 x i8] c"rij\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shakef.c\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"dist2\00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"Shake did not converge in %d steps\0A\00", align 1
@.str7 = private unnamed_addr constant [81 x i8] c"Inner product between old and new vector <= 0.0!\0Aconstraint #%d atoms %u and %u\0A\00", align 1
@bshakef.bFirst = internal unnamed_addr global i1 false
@bshakef.lagr = internal unnamed_addr global float* null, align 8
@bshakef.delta = internal unnamed_addr global float 0x3FB99999A0000000, align 4
@bshakef.omega = internal unnamed_addr global float 1.000000e+00, align 4
@bshakef.gamma = internal unnamed_addr global i32 1000000, align 4
@.str8 = private unnamed_addr constant [9 x i8] c"Barth95a\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"lagr\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"    i     mi      j     mj      before       after   should be\0A\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"%5d  %5.2f  %5d  %5.2f  %10.5f  %10.5f  %10.5f\0A\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @cshake(i32* nocapture readonly %iatom, i32 %ncon, i32* nocapture %nnit, i32 %maxnit, float* nocapture readonly %dist2, float* nocapture %xp, float* nocapture readonly %rij, float* nocapture readonly %m2, float %omega, float* nocapture readonly %invmass, float* nocapture readonly %tt, float* nocapture %lagr, i32* nocapture %nerror) #3 {
  %1 = icmp sgt i32 %maxnit, 0
  br i1 %1, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %ncon, 0
  %3 = sext i32 %ncon to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge2
  %nit.017 = phi i32 [ 0, %.preheader.lr.ph ], [ %142, %.critedge2 ]
  br i1 %2, label %.lr.ph, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.preheader
  %4 = add nuw nsw i32 %nit.017, 1
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %139
  %indvars.iv = phi i64 [ %indvars.iv.next, %139 ], [ 0, %.preheader ]
  %nconv.115 = phi i32 [ %nconv.2, %139 ], [ 0, %.preheader ]
  %5 = mul nsw i64 %indvars.iv, 3
  %6 = getelementptr inbounds float* %rij, i64 %5
  %7 = load float* %6, align 4, !tbaa !14
  %8 = add nuw nsw i64 %5, 1
  %9 = getelementptr inbounds float* %rij, i64 %8
  %10 = load float* %9, align 4, !tbaa !14
  %11 = add nuw nsw i64 %5, 2
  %12 = getelementptr inbounds float* %rij, i64 %11
  %13 = load float* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds i32* %iatom, i64 %8
  %15 = load i32* %14, align 4, !tbaa !16
  %16 = getelementptr inbounds i32* %iatom, i64 %11
  %17 = load i32* %16, align 4, !tbaa !16
  %18 = mul nsw i32 %15, 3
  %19 = mul nsw i32 %17, 3
  %20 = add nsw i32 %18, 1
  %21 = add nsw i32 %18, 2
  %22 = add nsw i32 %19, 1
  %23 = add nsw i32 %19, 2
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds float* %xp, i64 %24
  %26 = load float* %25, align 4, !tbaa !14
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds float* %xp, i64 %27
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fsub float %26, %29
  %31 = sext i32 %20 to i64
  %32 = getelementptr inbounds float* %xp, i64 %31
  %33 = load float* %32, align 4, !tbaa !14
  %34 = sext i32 %22 to i64
  %35 = getelementptr inbounds float* %xp, i64 %34
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fsub float %33, %36
  %38 = sext i32 %21 to i64
  %39 = getelementptr inbounds float* %xp, i64 %38
  %40 = load float* %39, align 4, !tbaa !14
  %41 = sext i32 %23 to i64
  %42 = getelementptr inbounds float* %xp, i64 %41
  %43 = load float* %42, align 4, !tbaa !14
  %44 = fsub float %40, %43
  %45 = fmul float %30, %30
  %46 = fmul float %37, %37
  %47 = fadd float %45, %46
  %48 = fmul float %44, %44
  %49 = fadd float %47, %48
  %50 = getelementptr inbounds float* %dist2, i64 %indvars.iv
  %51 = load float* %50, align 4, !tbaa !14
  %52 = fsub float %51, %49
  %fabsf = tail call float @fabsf(float %52) #7
  %53 = fpext float %fabsf to double
  %54 = getelementptr inbounds float* %tt, i64 %indvars.iv
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fpext float %55 to double
  %57 = fmul double %53, %56
  %58 = fptosi double %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %139, label %60

; <label>:60                                      ; preds = %.lr.ph
  %61 = add nsw i32 %58, %nconv.115
  %62 = fmul float %7, %30
  %63 = fmul float %10, %37
  %64 = fadd float %62, %63
  %65 = fmul float %13, %44
  %66 = fadd float %64, %65
  %67 = fmul float %51, 0x3EB0C6F7A0000000
  %68 = fcmp olt float %66, %67
  %69 = trunc i64 %indvars.iv to i32
  br i1 %68, label %139, label %70

; <label>:70                                      ; preds = %60
  %71 = fmul float %52, %omega
  %72 = getelementptr inbounds float* %m2, i64 %indvars.iv
  %73 = load float* %72, align 4, !tbaa !14
  %74 = fmul float %71, %73
  %75 = fdiv float %74, %66
  %76 = getelementptr inbounds float* %lagr, i64 %indvars.iv
  %77 = load float* %76, align 4, !tbaa !14
  %78 = fadd float %75, %77
  store float %78, float* %76, align 4, !tbaa !14
  %79 = fmul float %7, %75
  %80 = fmul float %10, %75
  %81 = fmul float %13, %75
  %82 = sext i32 %15 to i64
  %83 = getelementptr inbounds float* %invmass, i64 %82
  %84 = load float* %83, align 4, !tbaa !14
  %85 = sext i32 %17 to i64
  %86 = getelementptr inbounds float* %invmass, i64 %85
  %87 = load float* %86, align 4, !tbaa !14
  %88 = fpext float %84 to double
  %fabsf7 = tail call float @fabsf(float %84) #7
  %89 = fpext float %fabsf7 to double
  %90 = fcmp ogt double %89, 1.200000e-38
  br i1 %90, label %91, label %113

; <label>:91                                      ; preds = %70
  %fabsf10 = tail call float @fabsf(float %87) #7
  %92 = fpext float %fabsf10 to double
  %93 = fcmp ogt double %92, 1.200000e-38
  br i1 %93, label %94, label %113

; <label>:94                                      ; preds = %91
  %95 = fmul float %79, %84
  %96 = load float* %25, align 4, !tbaa !14
  %97 = fadd float %95, %96
  store float %97, float* %25, align 4, !tbaa !14
  %98 = fmul float %80, %84
  %99 = load float* %32, align 4, !tbaa !14
  %100 = fadd float %98, %99
  store float %100, float* %32, align 4, !tbaa !14
  %101 = fmul float %81, %84
  %102 = load float* %39, align 4, !tbaa !14
  %103 = fadd float %101, %102
  store float %103, float* %39, align 4, !tbaa !14
  %104 = fmul float %79, %87
  %105 = load float* %28, align 4, !tbaa !14
  %106 = fsub float %105, %104
  store float %106, float* %28, align 4, !tbaa !14
  %107 = fmul float %80, %87
  %108 = load float* %35, align 4, !tbaa !14
  %109 = fsub float %108, %107
  store float %109, float* %35, align 4, !tbaa !14
  %110 = fmul float %81, %87
  %111 = load float* %42, align 4, !tbaa !14
  %112 = fsub float %111, %110
  store float %112, float* %42, align 4, !tbaa !14
  br label %139

; <label>:113                                     ; preds = %91, %70
  %114 = fcmp olt double %89, 1.200000e-38
  %fabsf9 = tail call float @fabsf(float %87) #7
  %115 = fpext float %fabsf9 to double
  %116 = fcmp ogt double %115, 1.200000e-38
  %or.cond25 = and i1 %114, %116
  br i1 %or.cond25, label %117, label %._crit_edge

; <label>:117                                     ; preds = %113
  %118 = fmul float %79, %87
  %119 = load float* %25, align 4, !tbaa !14
  %120 = fadd float %118, %119
  store float %120, float* %25, align 4, !tbaa !14
  %121 = fmul float %80, %87
  %122 = load float* %32, align 4, !tbaa !14
  %123 = fadd float %121, %122
  store float %123, float* %32, align 4, !tbaa !14
  %124 = fmul float %81, %87
  %125 = load float* %39, align 4, !tbaa !14
  %126 = fadd float %124, %125
  store float %126, float* %39, align 4, !tbaa !14
  br label %139

._crit_edge:                                      ; preds = %113
  %.not = fcmp uge double %115, 1.200000e-38
  %.not11 = xor i1 %90, true
  %brmerge = or i1 %.not, %.not11
  br i1 %brmerge, label %137, label %127

; <label>:127                                     ; preds = %._crit_edge
  %128 = fmul float %79, %84
  %129 = load float* %28, align 4, !tbaa !14
  %130 = fsub float %129, %128
  store float %130, float* %28, align 4, !tbaa !14
  %131 = fmul float %80, %84
  %132 = load float* %35, align 4, !tbaa !14
  %133 = fsub float %132, %131
  store float %133, float* %35, align 4, !tbaa !14
  %134 = fmul float %81, %84
  %135 = load float* %42, align 4, !tbaa !14
  %136 = fsub float %135, %134
  store float %136, float* %42, align 4, !tbaa !14
  br label %139

; <label>:137                                     ; preds = %._crit_edge
  %138 = fpext float %87 to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), double %88, double %138) #6
  br label %139

; <label>:139                                     ; preds = %60, %.lr.ph, %94, %127, %137, %117
  %error.2 = phi i32 [ 0, %94 ], [ 0, %117 ], [ 0, %127 ], [ 0, %137 ], [ 0, %.lr.ph ], [ %69, %60 ]
  %nconv.2 = phi i32 [ %61, %94 ], [ %61, %117 ], [ %61, %127 ], [ %61, %137 ], [ %nconv.115, %.lr.ph ], [ %61, %60 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %140 = icmp slt i64 %indvars.iv.next, %3
  %141 = icmp eq i32 %error.2, 0
  %or.cond6 = and i1 %141, %140
  br i1 %or.cond6, label %.lr.ph, label %.critedge2

.critedge2:                                       ; preds = %139
  %142 = add nuw nsw i32 %nit.017, 1
  %143 = icmp slt i32 %142, %maxnit
  %144 = icmp ne i32 %nconv.2, 0
  %or.cond = and i1 %143, %144
  %145 = icmp eq i32 %error.2, 0
  %or.cond4 = and i1 %145, %or.cond
  br i1 %or.cond4, label %.preheader, label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge2.thread, %0
  %error.0.lcssa = phi i32 [ 0, %0 ], [ 0, %.critedge2.thread ], [ %error.2, %.critedge2 ]
  %nit.0.lcssa = phi i32 [ 0, %0 ], [ %4, %.critedge2.thread ], [ %142, %.critedge2 ]
  store i32 %nit.0.lcssa, i32* %nnit, align 4, !tbaa !16
  store i32 %error.0.lcssa, i32* %nerror, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @vec_shakef(%struct.__sFILE* %log, i32 %natoms, float* %invmass, i32 %ncon, %union.t_iparams* nocapture readonly %ip, i32* %iatom, float %tol, [3 x float]* nocapture readonly %x, [3 x float]* %xp, float %omega, i32 %bFEP, float %lambda, float* %lagr) #3 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %maxnit = alloca i32, align 4
  %nit = alloca i32, align 4
  %error = alloca i32, align 4
  store i32 %ncon, i32* %1, align 4, !tbaa !16
  store float %omega, float* %2, align 4, !tbaa !14
  store i32 1000, i32* %maxnit, align 4, !tbaa !16
  %3 = load i32* @vec_shakef.maxcon, align 4, !tbaa !16
  %4 = icmp slt i32 %3, %ncon
  br i1 %4, label %5, label %16

; <label>:5                                       ; preds = %0
  %6 = load i8** bitcast ([3 x float]** @vec_shakef.rij to i8**), align 8, !tbaa !17
  %7 = mul i32 %ncon, 12
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 169, i8* %6, i32 %7) #6
  store i8* %8, i8** bitcast ([3 x float]** @vec_shakef.rij to i8**), align 8, !tbaa !17
  %9 = load i8** bitcast (float** @vec_shakef.M2 to i8**), align 8, !tbaa !17
  %10 = shl i32 %ncon, 2
  %11 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 170, i8* %9, i32 %10) #6
  store i8* %11, i8** bitcast (float** @vec_shakef.M2 to i8**), align 8, !tbaa !17
  %12 = load i8** bitcast (float** @vec_shakef.tt to i8**), align 8, !tbaa !17
  %13 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 171, i8* %12, i32 %10) #6
  store i8* %13, i8** bitcast (float** @vec_shakef.tt to i8**), align 8, !tbaa !17
  %14 = load i8** bitcast (float** @vec_shakef.dist2 to i8**), align 8, !tbaa !17
  %15 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 172, i8* %14, i32 %10) #6
  store i8* %15, i8** bitcast (float** @vec_shakef.dist2 to i8**), align 8, !tbaa !17
  store i32 %ncon, i32* @vec_shakef.maxcon, align 4, !tbaa !16
  br label %16

; <label>:16                                      ; preds = %5, %0
  %17 = fsub float 1.000000e+00, %lambda
  %18 = fmul float %tol, 2.000000e+00
  %19 = icmp sgt i32 %ncon, 0
  br i1 %19, label %.lr.ph, label %._crit_edge3

._crit_edge3:                                     ; preds = %16
  %.pre = load float** @vec_shakef.dist2, align 8, !tbaa !17
  %.pre4 = load [3 x float]** @vec_shakef.rij, align 8, !tbaa !17
  %.pre5 = load float** @vec_shakef.M2, align 8, !tbaa !17
  %.pre6 = load float** @vec_shakef.tt, align 8, !tbaa !17
  br label %._crit_edge

.lr.ph:                                           ; preds = %16
  %20 = load [3 x float]** @vec_shakef.rij, align 8, !tbaa !17
  %21 = load float** @vec_shakef.M2, align 8, !tbaa !17
  %22 = icmp eq i32 %bFEP, 0
  %23 = load float** @vec_shakef.dist2, align 8, !tbaa !17
  %24 = load float** @vec_shakef.tt, align 8, !tbaa !17
  %25 = sext i32 %ncon to i64
  br label %26

; <label>:26                                      ; preds = %.lr.ph, %72
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %72 ]
  %ia.01 = phi i32* [ %iatom, %.lr.ph ], [ %77, %72 ]
  %27 = load i32* %ia.01, align 4, !tbaa !16
  %28 = getelementptr inbounds i32* %ia.01, i64 1
  %29 = load i32* %28, align 4, !tbaa !16
  %30 = getelementptr inbounds i32* %ia.01, i64 2
  %31 = load i32* %30, align 4, !tbaa !16
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds float* %invmass, i64 %32
  %34 = load float* %33, align 4, !tbaa !14
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds float* %invmass, i64 %35
  %37 = load float* %36, align 4, !tbaa !14
  %38 = fadd float %34, %37
  %39 = fmul float %38, 2.000000e+00
  %40 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0
  %41 = load float* %40, align 4, !tbaa !14
  %42 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 0
  %43 = load float* %42, align 4, !tbaa !14
  %44 = fsub float %41, %43
  %45 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 0
  store float %44, float* %45, align 4, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1
  %47 = load float* %46, align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 1
  %49 = load float* %48, align 4, !tbaa !14
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 1
  store float %50, float* %51, align 4, !tbaa !14
  %52 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2
  %53 = load float* %52, align 4, !tbaa !14
  %54 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 2
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fsub float %53, %55
  %57 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 2
  store float %56, float* %57, align 4, !tbaa !14
  %58 = fdiv float 1.000000e+00, %39
  %59 = getelementptr inbounds float* %21, i64 %indvars.iv
  store float %58, float* %59, align 4, !tbaa !14
  %60 = sext i32 %27 to i64
  %61 = getelementptr inbounds %union.t_iparams* %ip, i64 %60, i32 0, i32 0
  %62 = load float* %61, align 4, !tbaa !18
  br i1 %22, label %70, label %63

; <label>:63                                      ; preds = %26
  %64 = fmul float %17, %62
  %65 = getelementptr inbounds %union.t_iparams* %ip, i64 %60, i32 0, i32 1
  %66 = load float* %65, align 4, !tbaa !20
  %67 = fmul float %66, %lambda
  %68 = fadd float %64, %67
  %69 = fmul float %68, %68
  br label %72

; <label>:70                                      ; preds = %26
  %71 = fmul float %62, %62
  br label %72

; <label>:72                                      ; preds = %70, %63
  %toler.0 = phi float [ %69, %63 ], [ %71, %70 ]
  %73 = getelementptr inbounds float* %23, i64 %indvars.iv
  store float %toler.0, float* %73, align 4, !tbaa !14
  %74 = fmul float %18, %toler.0
  %75 = fdiv float 1.000000e+00, %74
  %76 = getelementptr inbounds float* %24, i64 %indvars.iv
  store float %75, float* %76, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %77 = getelementptr inbounds i32* %ia.01, i64 3
  %78 = icmp slt i64 %indvars.iv.next, %25
  br i1 %78, label %26, label %._crit_edge

._crit_edge:                                      ; preds = %72, %._crit_edge3
  %79 = phi float* [ %.pre6, %._crit_edge3 ], [ %24, %72 ]
  %80 = phi float* [ %.pre5, %._crit_edge3 ], [ %21, %72 ]
  %81 = phi [3 x float]* [ %.pre4, %._crit_edge3 ], [ %20, %72 ]
  %82 = phi float* [ %.pre, %._crit_edge3 ], [ %23, %72 ]
  %83 = getelementptr inbounds [3 x float]* %xp, i64 0, i64 0
  %84 = getelementptr inbounds [3 x float]* %81, i64 0, i64 0
  call void @fshake_(i32* %iatom, i32* %1, i32* %nit, i32* %maxnit, float* %82, float* %83, float* %84, float* %80, float* %2, float* %invmass, float* %79, float* %lagr, i32* %error) #6
  %85 = load i32* %nit, align 4, !tbaa !16
  %86 = load i32* %maxnit, align 4, !tbaa !16
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %93, label %88

; <label>:88                                      ; preds = %._crit_edge
  %89 = icmp eq %struct.__sFILE* %log, null
  br i1 %89, label %92, label %90

; <label>:90                                      ; preds = %88
  %91 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 %86) #6
  br label %92

; <label>:92                                      ; preds = %88, %90
  store i32 0, i32* %nit, align 4, !tbaa !16
  br label %113

; <label>:93                                      ; preds = %._crit_edge
  %94 = load i32* %error, align 4, !tbaa !16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %113, label %96

; <label>:96                                      ; preds = %93
  %97 = icmp eq %struct.__sFILE* %log, null
  br i1 %97, label %112, label %98

; <label>:98                                      ; preds = %96
  %99 = add nsw i32 %94, -1
  %100 = mul nsw i32 %99, 3
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32* %iatom, i64 %102
  %104 = load i32* %103, align 4, !tbaa !16
  %105 = add nsw i32 %104, 1
  %106 = add nsw i32 %100, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32* %iatom, i64 %107
  %109 = load i32* %108, align 4, !tbaa !16
  %110 = add nsw i32 %109, 1
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %99, i32 %105, i32 %110) #6
  br label %112

; <label>:112                                     ; preds = %96, %98
  store i32 0, i32* %nit, align 4, !tbaa !16
  br label %113

; <label>:113                                     ; preds = %93, %112, %92
  %114 = phi i32 [ %85, %93 ], [ 0, %112 ], [ 0, %92 ]
  ret i32 %114
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @fshake_(i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @bshakef(%struct.__sFILE* %log, i32 %natoms, float* %invmass, i32 %nblocks, i32* nocapture readonly %sblock, %struct.t_idef* nocapture readonly %idef, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readnone %box, [3 x float]* nocapture readonly %x_s, [3 x float]* %xp, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* nocapture %dvdlambda, i32 %bDumpOnError) #3 {
  %1 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = sdiv i32 %2, 3
  %.b = load i1* @bshakef.bFirst, align 1
  br i1 %.b, label %.preheader, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %6 = load i32* %5, align 4, !tbaa !23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %4
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #6
  br label %9

; <label>:9                                       ; preds = %4, %8
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), i32 280, i32 %3, i32 4) #6
  store i8* %10, i8** bitcast (float** @bshakef.lagr to i8**), align 8, !tbaa !17
  store i1 true, i1* @bshakef.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %0, %9
  %11 = icmp sgt i32 %2, 2
  br i1 %11, label %.lr.ph19, label %16

.lr.ph19:                                         ; preds = %.preheader
  %12 = load i8** bitcast (float** @bshakef.lagr to i8**), align 8, !tbaa !17
  %13 = icmp sgt i32 %2, 5
  %.op = add nsw i32 %3, -1
  %14 = zext i32 %.op to i64
  %.op37 = shl nuw nsw i64 %14, 2
  %.op37.op = add nuw nsw i64 %.op37, 4
  %15 = select i1 %13, i64 %.op37.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %15, i32 4, i1 false)
  br label %16

; <label>:16                                      ; preds = %.lr.ph19, %.preheader
  %17 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 2
  %18 = icmp sgt i32 %nblocks, 0
  br i1 %18, label %.lr.ph14, label %._crit_edge35

._crit_edge35:                                    ; preds = %16
  %.pre36 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  br label %130

.lr.ph14:                                         ; preds = %16
  %19 = load float** @bshakef.lagr, align 8, !tbaa !17
  %20 = load i32** %17, align 8, !tbaa !26
  %21 = load i32* %sblock, align 4, !tbaa !16
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32* %20, i64 %22
  %24 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %26 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %27 = sext i32 %nblocks to i64
  br label %28

; <label>:28                                      ; preds = %._crit_edge32, %.lr.ph14
  %29 = phi i32 [ %21, %.lr.ph14 ], [ %.pre, %._crit_edge32 ]
  %indvars.iv28 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next29, %._crit_edge32 ]
  %trij.012 = phi i32 [ 0, %.lr.ph14 ], [ %123, %._crit_edge32 ]
  %tnit.011 = phi i32 [ 0, %.lr.ph14 ], [ %122, %._crit_edge32 ]
  %iatoms.010 = phi i32* [ %23, %.lr.ph14 ], [ %129, %._crit_edge32 ]
  %lam.09 = phi float* [ %19, %.lr.ph14 ], [ %126, %._crit_edge32 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %30 = getelementptr inbounds i32* %sblock, i64 %indvars.iv.next29
  %31 = load i32* %30, align 4, !tbaa !16
  %32 = sub nsw i32 %31, %29
  %33 = sdiv i32 %32, 3
  %34 = load %union.t_iparams** %24, align 8, !tbaa !27
  %35 = load float* %25, align 4, !tbaa !29
  %36 = load float* @bshakef.omega, align 4, !tbaa !14
  %37 = load i32* %26, align 4, !tbaa !30
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = tail call i32 @vec_shakef(%struct.__sFILE* %log, i32 undef, float* %invmass, i32 %33, %union.t_iparams* %34, i32* %iatoms.010, float %35, [3 x float]* %x_s, [3 x float]* %xp, float %36, i32 %39, float %lambda, float* %lam.09) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %120

; <label>:42                                      ; preds = %28
  %43 = icmp eq i32 %bDumpOnError, 0
  br i1 %43, label %check_cons.exit, label %44

; <label>:44                                      ; preds = %42
  %45 = load %union.t_iparams** %24, align 8, !tbaa !27
  %46 = icmp ne %struct.__sFILE* %log, null
  br i1 %46, label %47, label %.preheader.i

; <label>:47                                      ; preds = %44
  %48 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %log) #5
  br label %.preheader.i

.preheader.i:                                     ; preds = %47, %44
  %49 = icmp sgt i32 %32, 2
  br i1 %49, label %.lr.ph.i, label %check_cons.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %50 = add nsw i32 %33, -1
  br label %51

; <label>:51                                      ; preds = %117, %.lr.ph.i
  %ia.03.i = phi i32* [ %iatoms.010, %.lr.ph.i ], [ %119, %117 ]
  %i.02.i = phi i32 [ 0, %.lr.ph.i ], [ %118, %117 ]
  %52 = getelementptr inbounds i32* %ia.03.i, i64 1
  %53 = load i32* %52, align 4, !tbaa !16
  %54 = getelementptr inbounds i32* %ia.03.i, i64 2
  %55 = load i32* %54, align 4, !tbaa !16
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 0
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 0
  %60 = load float* %57, align 4, !tbaa !14
  %61 = load float* %59, align 4, !tbaa !14
  %62 = fsub float %60, %61
  %63 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 1
  %64 = load float* %63, align 4, !tbaa !14
  %65 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 1
  %66 = load float* %65, align 4, !tbaa !14
  %67 = fsub float %64, %66
  %68 = getelementptr inbounds [3 x float]* %x_s, i64 %56, i64 2
  %69 = load float* %68, align 4, !tbaa !14
  %70 = getelementptr inbounds [3 x float]* %x_s, i64 %58, i64 2
  %71 = load float* %70, align 4, !tbaa !14
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 0
  %74 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 0
  %75 = load float* %73, align 4, !tbaa !14
  %76 = load float* %74, align 4, !tbaa !14
  %77 = fsub float %75, %76
  %78 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 1
  %79 = load float* %78, align 4, !tbaa !14
  %80 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 1
  %81 = load float* %80, align 4, !tbaa !14
  %82 = fsub float %79, %81
  %83 = getelementptr inbounds [3 x float]* %xp, i64 %56, i64 2
  %84 = load float* %83, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %xp, i64 %58, i64 2
  %86 = load float* %85, align 4, !tbaa !14
  %87 = fsub float %84, %86
  br i1 %46, label %88, label %117

; <label>:88                                      ; preds = %51
  %89 = fmul float %77, %77
  %90 = fmul float %82, %82
  %91 = fadd float %89, %90
  %92 = fmul float %87, %87
  %93 = fadd float %91, %92
  %sqrtf.i.i = tail call float @sqrtf(float %93) #7
  %94 = fmul float %62, %62
  %95 = fmul float %67, %67
  %96 = fadd float %94, %95
  %97 = fmul float %72, %72
  %98 = fadd float %96, %97
  %sqrtf.i1.i = tail call float @sqrtf(float %98) #7
  %99 = add nsw i32 %53, 1
  %100 = getelementptr inbounds float* %invmass, i64 %56
  %101 = load float* %100, align 4, !tbaa !14
  %102 = fpext float %101 to double
  %103 = fdiv double 1.000000e+00, %102
  %104 = add nsw i32 %55, 1
  %105 = getelementptr inbounds float* %invmass, i64 %58
  %106 = load float* %105, align 4, !tbaa !14
  %107 = fpext float %106 to double
  %108 = fdiv double 1.000000e+00, %107
  %109 = fpext float %sqrtf.i1.i to double
  %110 = fpext float %sqrtf.i.i to double
  %111 = load i32* %ia.03.i, align 4, !tbaa !16
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %union.t_iparams* %45, i64 %112, i32 0, i32 0
  %114 = load float* %113, align 4, !tbaa !18
  %115 = fpext float %114 to double
  %116 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %99, double %103, i32 %104, double %108, double %109, double %110, double %115) #6
  br label %117

; <label>:117                                     ; preds = %88, %51
  %118 = add nuw nsw i32 %i.02.i, 1
  %119 = getelementptr inbounds i32* %ia.03.i, i64 3
  %exitcond.i = icmp eq i32 %i.02.i, %50
  br i1 %exitcond.i, label %check_cons.exit, label %51

; <label>:120                                     ; preds = %28
  %121 = mul nsw i32 %40, %33
  %122 = add nsw i32 %121, %tnit.011
  %123 = add nsw i32 %33, %trij.012
  %124 = icmp slt i64 %indvars.iv.next29, %27
  br i1 %124, label %._crit_edge32, label %._crit_edge15

._crit_edge32:                                    ; preds = %120
  %125 = sext i32 %33 to i64
  %126 = getelementptr inbounds float* %lam.09, i64 %125
  %127 = mul nsw i32 %33, 3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32* %iatoms.010, i64 %128
  %.pre = load i32* %30, align 4, !tbaa !16
  br label %28

._crit_edge15:                                    ; preds = %120
  %phitmp = sitofp i32 %123 to double
  br label %130

; <label>:130                                     ; preds = %._crit_edge35, %._crit_edge15
  %.pre-phi = phi i32* [ %.pre36, %._crit_edge35 ], [ %26, %._crit_edge15 ]
  %trij.0.lcssa = phi double [ 0.000000e+00, %._crit_edge35 ], [ %phitmp, %._crit_edge15 ]
  %tnit.0.lcssa = phi i32 [ 0, %._crit_edge35 ], [ %122, %._crit_edge15 ]
  %131 = load i32* %.pre-phi, align 4, !tbaa !30
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %161, label %133

; <label>:133                                     ; preds = %130
  %134 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %135 = load float* %134, align 4, !tbaa !31
  %136 = fmul float %135, %135
  %137 = fdiv float 1.000000e+00, %136
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %133
  %138 = load i32** %17, align 8, !tbaa !26
  %139 = load float** @bshakef.lagr, align 8, !tbaa !17
  %140 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %141 = load %union.t_iparams** %140, align 8, !tbaa !27
  %142 = sext i32 %3 to i64
  br label %143

; <label>:143                                     ; preds = %.lr.ph, %143
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %143 ]
  %dvdl.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %157, %143 ]
  %144 = mul nsw i64 %indvars.iv, 3
  %145 = getelementptr inbounds i32* %138, i64 %144
  %146 = load i32* %145, align 4, !tbaa !16
  %147 = getelementptr inbounds float* %139, i64 %indvars.iv
  %148 = load float* %147, align 4, !tbaa !14
  %149 = fmul float %137, %148
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds %union.t_iparams* %141, i64 %150, i32 0, i32 1
  %152 = load float* %151, align 4, !tbaa !20
  %153 = getelementptr inbounds %union.t_iparams* %141, i64 %150, i32 0, i32 0
  %154 = load float* %153, align 4, !tbaa !18
  %155 = fsub float %152, %154
  %156 = fmul float %149, %155
  %157 = fadd float %dvdl.06, %156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %158 = icmp slt i64 %indvars.iv.next, %142
  br i1 %158, label %143, label %._crit_edge

._crit_edge:                                      ; preds = %143, %133
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %133 ], [ %157, %143 ]
  %159 = load float* %dvdlambda, align 4, !tbaa !14
  %160 = fadd float %dvdl.0.lcssa, %159
  store float %160, float* %dvdlambda, align 4, !tbaa !14
  br label %161

; <label>:161                                     ; preds = %130, %._crit_edge
  %162 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %163 = load i32* %162, align 4, !tbaa !23
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

; <label>:165                                     ; preds = %161
  %166 = load i32* @bshakef.gamma, align 4, !tbaa !16
  %167 = icmp sgt i32 %tnit.0.lcssa, %166
  %168 = load float* @bshakef.delta, align 4, !tbaa !14
  br i1 %167, label %169, label %._crit_edge33

; <label>:169                                     ; preds = %165
  %170 = fmul float %168, -5.000000e-01
  store float %170, float* @bshakef.delta, align 4, !tbaa !14
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %165, %169
  %171 = phi float [ %170, %169 ], [ %168, %165 ]
  %172 = load float* @bshakef.omega, align 4, !tbaa !14
  %173 = fadd float %172, %171
  store float %173, float* @bshakef.omega, align 4, !tbaa !14
  store i32 %tnit.0.lcssa, i32* @bshakef.gamma, align 4, !tbaa !16
  br label %174

; <label>:174                                     ; preds = %161, %._crit_edge33
  %175 = sitofp i32 %tnit.0.lcssa to double
  %176 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 115
  %177 = load double* %176, align 8, !tbaa !32
  %178 = fadd double %175, %177
  store double %178, double* %176, align 8, !tbaa !32
  %179 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 117
  %180 = load double* %179, align 8, !tbaa !32
  %181 = fadd double %trij.0.lcssa, %180
  store double %181, double* %179, align 8, !tbaa !32
  br label %check_cons.exit

check_cons.exit:                                  ; preds = %117, %.preheader.i, %42, %174
  %.0 = phi i32 [ 1, %174 ], [ 0, %42 ], [ 0, %.preheader.i ], [ 0, %117 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!18 = !{!19, !15, i64 0}
!19 = !{!"", !15, i64 0, !15, i64 4}
!20 = !{!19, !15, i64 4}
!21 = !{!22, !7, i64 0}
!22 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!23 = !{!24, !7, i64 332}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !25, i64 384, !5, i64 448, !5, i64 520}
!25 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!26 = !{!22, !4, i64 1032}
!27 = !{!28, !4, i64 24}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!29 = !{!24, !15, i64 240}
!30 = !{!24, !7, i64 248}
!31 = !{!24, !15, i64 60}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !5, i64 0}
