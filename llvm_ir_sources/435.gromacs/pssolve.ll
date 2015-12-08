; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pssolve.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@solve_poisson.bFirst = internal unnamed_addr global i1 false
@solve_poisson.nnx = internal global i32* null, align 8
@solve_poisson.nny = internal global i32* null, align 8
@solve_poisson.nnz = internal global i32* null, align 8
@solve_poisson.fac = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dx_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dy_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dz_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.fac_1 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.omega = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [43 x i8] c"Solving Poisson Equation on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"xi = %g, omega = %g\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [35 x i8] c"\0Dnit: %5d  dev: %8.3f  sum: %8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"Poisson Solver did *not* converge in %d iterations\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @solve_poisson(%struct._IO_FILE* nocapture %log, %struct.t_PSgrid* %pot, %struct.t_PSgrid* %rho, i32 %bVerbose, %struct.t_nrnb* nocapture %nrnb, i32 %maxnit, float %tol, float* nocapture %box) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %pot_ptr = alloca float***, align 8
  %rho_ptr = alloca float***, align 8
  call void @unpack_PSgrid(%struct.t_PSgrid* %pot, i32* %nx, i32* %ny, i32* %nz, float**** %pot_ptr) #4
  call void @unpack_PSgrid(%struct.t_PSgrid* %rho, i32* %nx, i32* %ny, i32* %nz, float**** %rho_ptr) #4
  %.b = load i1* @solve_poisson.bFirst, align 1
  br i1 %.b, label %do.body.preheader, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i32* %nx, align 4, !tbaa !0
  %1 = load i32* %ny, align 4, !tbaa !0
  %2 = load i32* %nz, align 4, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2) #4
  %3 = load i32* %nx, align 4, !tbaa !0
  %4 = load i32* %ny, align 4, !tbaa !0
  %5 = load i32* %nz, align 4, !tbaa !0
  call void @calc_nxyz(i32 %3, i32 %4, i32 %5, i32** @solve_poisson.nnx, i32** @solve_poisson.nny, i32** @solve_poisson.nnz) #4
  %6 = load float* %box, align 4, !tbaa !3
  %7 = load i32* %nx, align 4, !tbaa !0
  %conv = sitofp i32 %7 to float
  %div = fdiv float %6, %conv
  %mul.i = fmul float %div, %div
  %arrayidx2 = getelementptr inbounds float* %box, i64 1
  %8 = load float* %arrayidx2, align 4, !tbaa !3
  %9 = load i32* %ny, align 4, !tbaa !0
  %conv3 = sitofp i32 %9 to float
  %div4 = fdiv float %8, %conv3
  %mul.i237 = fmul float %div4, %div4
  %arrayidx6 = getelementptr inbounds float* %box, i64 2
  %10 = load float* %arrayidx6, align 4, !tbaa !3
  %11 = load i32* %nz, align 4, !tbaa !0
  %conv7 = sitofp i32 %11 to float
  %div8 = fdiv float %10, %conv7
  %mul.i236 = fmul float %div8, %div8
  %conv12 = fdiv float 1.000000e+00, %mul.i
  store float %conv12, float* @solve_poisson.dx_2, align 4, !tbaa !3
  %conv15 = fdiv float 1.000000e+00, %mul.i237
  store float %conv15, float* @solve_poisson.dy_2, align 4, !tbaa !3
  %conv18 = fdiv float 1.000000e+00, %mul.i236
  store float %conv18, float* @solve_poisson.dz_2, align 4, !tbaa !3
  %add = fadd float %conv12, %conv15
  %add19 = fadd float %add, %conv18
  %conv21 = fmul float %add19, 2.000000e+00
  store float %conv21, float* @solve_poisson.fac_1, align 4, !tbaa !3
  %conv24 = fdiv float 1.000000e+00, %conv21
  store float %conv24, float* @solve_poisson.fac, align 4, !tbaa !3
  %mul25 = shl nsw i32 %7, 1
  %conv26 = sitofp i32 %mul25 to double
  %div27 = fdiv double 0x400921FB54442D18, %conv26
  %call28 = call double @sin(double %div27) #4
  %conv29 = fptrunc double %call28 to float
  %mul.i235 = fmul float %conv29, %conv29
  %mul31 = fmul float %mul.i235, 2.000000e+00
  %sub = fsub float 1.000000e+00, %mul31
  %mul32 = fmul float %sub, %sub
  %sub33 = fsub float 1.000000e+00, %mul32
  %conv34 = fpext float %sub33 to double
  %call35 = call double @sqrt(double %conv34) #4
  %add36 = fadd double %call35, 1.000000e+00
  %div37 = fdiv double 2.000000e+00, %add36
  %conv38 = fptrunc double %div37 to float
  store float %conv38, float* @solve_poisson.omega, align 4, !tbaa !3
  %conv39 = fpext float %sub to double
  %conv40 = fpext float %conv38 to double
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0), double %conv39, double %conv40) #4
  store i1 true, i1* @solve_poisson.bFirst, align 1
  br label %do.body.preheader

do.body.preheader:                                ; preds = %entry, %if.then
  %tobool164 = icmp ne i32 %bVerbose, 0
  br label %do.body

do.body:                                          ; preds = %if.end169, %do.body.preheader
  %nit.0 = phi i32 [ 0, %do.body.preheader ], [ %inc170, %if.end169 ]
  %12 = load i32* %nx, align 4, !tbaa !0
  %cmp249 = icmp sgt i32 %12, 0
  br i1 %cmp249, label %for.body.lr.ph, label %for.end159

for.body.lr.ph:                                   ; preds = %do.body
  %13 = load i32** @solve_poisson.nnx, align 8, !tbaa !4
  %14 = load i32* %ny, align 4, !tbaa !0
  %cmp51243 = icmp sgt i32 %14, 0
  %15 = load i32** @solve_poisson.nny, align 8, !tbaa !4
  %16 = load i32* %nz, align 4, !tbaa !0
  %cmp63238 = icmp sgt i32 %16, 0
  %17 = load i32** @solve_poisson.nnz, align 8, !tbaa !4
  %18 = load float**** %rho_ptr, align 8, !tbaa !4
  %19 = load float**** %pot_ptr, align 8, !tbaa !4
  %20 = sext i32 %16 to i64
  %21 = sext i32 %14 to i64
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond50.loopexit, %for.body.for.cond.loopexit_crit_edge
  %.pre-phi = phi i32 [ %.pre, %for.body.for.cond.loopexit_crit_edge ], [ %23, %for.cond50.loopexit ]
  %deviation.1.lcssa = phi float [ %deviation.0252, %for.body.for.cond.loopexit_crit_edge ], [ %deviation.2.lcssa, %for.cond50.loopexit ]
  %sum.1.lcssa = phi float [ %sum.0251, %for.body.for.cond.loopexit_crit_edge ], [ %sum.2.lcssa, %for.cond50.loopexit ]
  %cmp = icmp slt i32 %.pre-phi, %12
  br i1 %cmp, label %for.body, label %for.end159

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %indvars.iv265 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next266, %for.cond.loopexit ]
  %deviation.0252 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %deviation.1.lcssa, %for.cond.loopexit ]
  %sum.0251 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %sum.1.lcssa, %for.cond.loopexit ]
  %indvars.iv.next266 = add i64 %indvars.iv265, 1
  br i1 %cmp51243, label %for.body53.lr.ph, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  %.pre = trunc i64 %indvars.iv.next266 to i32
  br label %for.cond.loopexit

for.body53.lr.ph:                                 ; preds = %for.body
  %22 = add nsw i64 %indvars.iv265, 4294967295
  %23 = trunc i64 %indvars.iv.next266 to i32
  %add47 = add nsw i32 %12, %23
  %24 = trunc i64 %22 to i32
  %add44 = add nsw i32 %24, %12
  %idxprom48 = sext i32 %add47 to i64
  %idxprom = sext i32 %add44 to i64
  %arrayidx49 = getelementptr inbounds i32* %13, i64 %idxprom48
  %arrayidx45 = getelementptr inbounds i32* %13, i64 %idxprom
  %25 = load i32* %arrayidx49, align 4, !tbaa !0
  %26 = load i32* %arrayidx45, align 4, !tbaa !0
  %arrayidx77 = getelementptr inbounds float*** %18, i64 %indvars.iv265
  %arrayidx83 = getelementptr inbounds float*** %19, i64 %indvars.iv265
  %idxprom88 = sext i32 %26 to i64
  %arrayidx89 = getelementptr inbounds float*** %19, i64 %idxprom88
  %idxprom94 = sext i32 %25 to i64
  %arrayidx95 = getelementptr inbounds float*** %19, i64 %idxprom94
  br label %for.body53

for.cond50.loopexit:                              ; preds = %for.body65, %for.body53
  %deviation.2.lcssa = phi float [ %deviation.1246, %for.body53 ], [ %conv137, %for.body65 ]
  %sum.2.lcssa = phi float [ %sum.1245, %for.body53 ], [ %add153, %for.body65 ]
  %lftr.wideiv263 = trunc i64 %indvars.iv.next259 to i32
  %exitcond264 = icmp eq i32 %lftr.wideiv263, %14
  br i1 %exitcond264, label %for.cond.loopexit, label %for.body53

for.body53:                                       ; preds = %for.cond50.loopexit, %for.body53.lr.ph
  %indvars.iv258 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next259, %for.cond50.loopexit ]
  %deviation.1246 = phi float [ %deviation.0252, %for.body53.lr.ph ], [ %deviation.2.lcssa, %for.cond50.loopexit ]
  %sum.1245 = phi float [ %sum.0251, %for.body53.lr.ph ], [ %sum.2.lcssa, %for.cond50.loopexit ]
  %indvars.iv.next259 = add i64 %indvars.iv258, 1
  br i1 %cmp63238, label %for.body65.lr.ph, label %for.cond50.loopexit

for.body65.lr.ph:                                 ; preds = %for.body53
  %27 = add nsw i64 %indvars.iv258, -1
  %28 = add nsw i64 %21, %indvars.iv.next259
  %29 = add nsw i64 %27, %21
  %arrayidx61 = getelementptr inbounds i32* %15, i64 %28
  %arrayidx57 = getelementptr inbounds i32* %15, i64 %29
  %30 = load i32* %arrayidx61, align 4, !tbaa !0
  %31 = load i32* %arrayidx57, align 4, !tbaa !0
  %32 = load float*** %arrayidx77, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds float** %32, i64 %indvars.iv258
  %33 = load float** %arrayidx78, align 8, !tbaa !4
  %34 = load float*** %arrayidx83, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds float** %34, i64 %indvars.iv258
  %35 = load float** %arrayidx84, align 8, !tbaa !4
  %36 = load float*** %arrayidx89, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds float** %36, i64 %indvars.iv258
  %37 = load float** %arrayidx90, align 8, !tbaa !4
  %38 = load float*** %arrayidx95, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds float** %38, i64 %indvars.iv258
  %39 = load float** %arrayidx96, align 8, !tbaa !4
  %idxprom101 = sext i32 %31 to i64
  %arrayidx104 = getelementptr inbounds float** %34, i64 %idxprom101
  %40 = load float** %arrayidx104, align 8, !tbaa !4
  %idxprom107 = sext i32 %30 to i64
  %arrayidx110 = getelementptr inbounds float** %34, i64 %idxprom107
  %41 = load float** %arrayidx110, align 8, !tbaa !4
  br label %for.body65

for.body65:                                       ; preds = %for.body65, %for.body65.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next, %for.body65 ]
  %deviation.2241 = phi float [ %deviation.1246, %for.body65.lr.ph ], [ %conv137, %for.body65 ]
  %sum.2240 = phi float [ %sum.1245, %for.body65.lr.ph ], [ %add153, %for.body65 ]
  %42 = add nsw i64 %indvars.iv, -1
  %43 = add nsw i64 %42, %20
  %arrayidx69 = getelementptr inbounds i32* %17, i64 %43
  %44 = load i32* %arrayidx69, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = add nsw i64 %20, %indvars.iv.next
  %arrayidx73 = getelementptr inbounds i32* %17, i64 %45
  %46 = load i32* %arrayidx73, align 4, !tbaa !0
  %arrayidx79 = getelementptr inbounds float* %33, i64 %indvars.iv
  %47 = load float* %arrayidx79, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds float* %35, i64 %indvars.iv
  %48 = load float* %arrayidx85, align 4, !tbaa !3
  %49 = load float* @solve_poisson.dx_2, align 4, !tbaa !3
  %arrayidx91 = getelementptr inbounds float* %37, i64 %indvars.iv
  %50 = load float* %arrayidx91, align 4, !tbaa !3
  %arrayidx97 = getelementptr inbounds float* %39, i64 %indvars.iv
  %51 = load float* %arrayidx97, align 4, !tbaa !3
  %add98 = fadd float %50, %51
  %mul99 = fmul float %49, %add98
  %52 = load float* @solve_poisson.dy_2, align 4, !tbaa !3
  %arrayidx105 = getelementptr inbounds float* %40, i64 %indvars.iv
  %53 = load float* %arrayidx105, align 4, !tbaa !3
  %arrayidx111 = getelementptr inbounds float* %41, i64 %indvars.iv
  %54 = load float* %arrayidx111, align 4, !tbaa !3
  %add112 = fadd float %53, %54
  %mul113 = fmul float %52, %add112
  %add114 = fadd float %mul99, %mul113
  %55 = load float* @solve_poisson.dz_2, align 4, !tbaa !3
  %idxprom115 = sext i32 %44 to i64
  %arrayidx120 = getelementptr inbounds float* %35, i64 %idxprom115
  %56 = load float* %arrayidx120, align 4, !tbaa !3
  %idxprom121 = sext i32 %46 to i64
  %arrayidx126 = getelementptr inbounds float* %35, i64 %idxprom121
  %57 = load float* %arrayidx126, align 4, !tbaa !3
  %add127 = fadd float %56, %57
  %mul128 = fmul float %55, %add127
  %add129 = fadd float %add114, %mul128
  %58 = load float* @solve_poisson.fac_1, align 4, !tbaa !3
  %mul130 = fmul float %48, %58
  %sub131 = fsub float %add129, %mul130
  %add132 = fadd float %47, %sub131
  %fabsf = call float @fabsf(float %add132) #5
  %conv137 = fadd float %deviation.2241, %fabsf
  %59 = load float* @solve_poisson.omega, align 4, !tbaa !3
  %60 = load float* @solve_poisson.fac, align 4, !tbaa !3
  %mul138 = fmul float %59, %60
  %mul139 = fmul float %mul138, %add132
  %add146 = fadd float %48, %mul139
  store float %add146, float* %arrayidx85, align 4, !tbaa !3
  %add153 = fadd float %sum.2240, %add146
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond, label %for.cond50.loopexit, label %for.body65

for.end159:                                       ; preds = %for.cond.loopexit, %do.body
  %deviation.0.lcssa = phi float [ 0.000000e+00, %do.body ], [ %deviation.1.lcssa, %for.cond.loopexit ]
  %sum.0.lcssa = phi float [ 0.000000e+00, %do.body ], [ %sum.1.lcssa, %for.cond.loopexit ]
  call void @symmetrize_PSgrid(%struct._IO_FILE* null, %struct.t_PSgrid* %pot, float %sum.0.lcssa) #4
  %61 = load i32* %nx, align 4, !tbaa !0
  %62 = load i32* %ny, align 4, !tbaa !0
  %mul160 = mul nsw i32 %62, %61
  %63 = load i32* %nz, align 4, !tbaa !0
  %mul161 = mul nsw i32 %mul160, %63
  %conv162 = sitofp i32 %mul161 to float
  %div163 = fdiv float %deviation.0.lcssa, %conv162
  br i1 %tobool164, label %if.then165, label %if.end169

if.then165:                                       ; preds = %for.end159
  %64 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %conv166 = fpext float %div163 to double
  %conv167 = fpext float %sum.0.lcssa to double
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i32 %nit.0, double %conv166, double %conv167) #4
  br label %if.end169

if.end169:                                        ; preds = %if.then165, %for.end159
  %inc170 = add nsw i32 %nit.0, 1
  %cmp171 = icmp slt i32 %inc170, %maxnit
  %cmp173 = fcmp ogt float %div163, %tol
  %or.cond = and i1 %cmp171, %cmp173
  br i1 %or.cond, label %do.body, label %do.end

do.end:                                           ; preds = %if.end169
  br i1 %tobool164, label %if.then176, label %if.end178

if.then176:                                       ; preds = %do.end
  %65 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %65)
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %do.end
  %cmp179 = icmp eq i32 %inc170, %maxnit
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end178
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 %maxnit) #4
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end178
  ret i32 %inc170
}

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #1

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare void @symmetrize_PSgrid(%struct._IO_FILE*, %struct.t_PSgrid*, float) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
