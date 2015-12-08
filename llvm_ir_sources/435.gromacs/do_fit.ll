; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@calc_fit_R.omega = internal unnamed_addr global double** null, align 8
@calc_fit_R.om = internal unnamed_addr global double** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/do_fit.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"om\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"omega[i]\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"om[i]\00", align 1
@debug = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [8 x i8] c"IROT=0\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_similar_ind(i32 %bRho, i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  %cmp67 = icmp sgt i32 %nind, 0
  br i1 %cmp67, label %for.body.lr.ph, label %for.end32

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null
  %tobool15 = icmp eq i32 %bRho, 0
  br label %for.body

for.body:                                         ; preds = %for.inc30, %for.body.lr.ph
  %indvars.iv74 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next75, %for.inc30 ]
  %rd.071 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add14, %for.inc30 ]
  %rs.070 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %rs.2, %for.inc30 ]
  %tm.069 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc30 ]
  %0 = trunc i64 %indvars.iv74 to i32
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv74
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %i.0 = phi i32 [ %1, %if.then ], [ %0, %for.body ]
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds float* %mass, i64 %idxprom1
  %2 = load float* %arrayidx2, align 4, !tbaa !3
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc ]
  %rd.166 = phi float [ %rd.071, %if.end ], [ %add14, %for.inc ]
  %rs.165 = phi float [ %rs.070, %if.end ], [ %rs.2, %for.inc ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 %indvars.iv
  %3 = load float* %arrayidx9, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom1, i64 %indvars.iv
  %4 = load float* %arrayidx13, align 4, !tbaa !3
  %sub = fsub float %3, %4
  %mul.i = fmul float %sub, %sub
  %mul = fmul float %2, %mul.i
  %add14 = fadd float %rd.166, %mul
  br i1 %tobool15, label %for.inc, label %if.then16

if.then16:                                        ; preds = %for.body5
  %add25 = fadd float %3, %4
  %mul.i63 = fmul float %add25, %add25
  %mul27 = fmul float %2, %mul.i63
  %add28 = fadd float %rs.165, %mul27
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then16
  %rs.2 = phi float [ %add28, %if.then16 ], [ %rs.165, %for.body5 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc30, label %for.body5

for.inc30:                                        ; preds = %for.inc
  %add = fadd float %tm.069, %2
  %indvars.iv.next75 = add i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %nind
  br i1 %exitcond77, label %for.end32, label %for.body

for.end32:                                        ; preds = %for.inc30, %entry
  %rd.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add14, %for.inc30 ]
  %rs.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %rs.2, %for.inc30 ]
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc30 ]
  %tobool33 = icmp eq i32 %bRho, 0
  br i1 %tobool33, label %if.else38, label %if.then34

if.then34:                                        ; preds = %for.end32
  %div = fdiv float %rd.0.lcssa, %rs.0.lcssa
  %conv = fpext float %div to double
  %call35 = tail call double @sqrt(double %conv) #4
  %mul36 = fmul double %call35, 2.000000e+00
  %conv37 = fptrunc double %mul36 to float
  br label %return

if.else38:                                        ; preds = %for.end32
  %div39 = fdiv float %rd.0.lcssa, %tm.0.lcssa
  %conv42 = tail call float @sqrtf(float %div39) #1
  br label %return

return:                                           ; preds = %if.else38, %if.then34
  %retval.0 = phi float [ %conv37, %if.then34 ], [ %conv42, %if.else38 ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define float @rmsdev_ind(i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  %call = tail call float @calc_similar_ind(i32 0, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #5
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define float @rmsdev(i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  %call = tail call float @calc_similar_ind(i32 0, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #5
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define float @rhodev_ind(i32 %nind, i32* %index, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  %call = tail call float @calc_similar_ind(i32 1, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #5
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define float @rhodev(i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %xp) #0 {
entry:
  %call = tail call float @calc_similar_ind(i32 1, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #5
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define void @calc_fit_R(i32 %natoms, float* nocapture %w_rls, [3 x float]* nocapture %xp, [3 x float]* nocapture %x, [3 x float]* nocapture %R) #0 {
entry:
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %0 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = bitcast [3 x [3 x float]]* %vh to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #2
  %2 = bitcast [3 x [3 x float]]* %vk to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #2
  %3 = bitcast [3 x [3 x float]]* %u to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #2
  %4 = load double*** @calc_fit_R.omega, align 8, !tbaa !4
  %cmp = icmp eq double** %4, null
  br i1 %cmp, label %if.then, label %for.cond7.preheader

for.cond7.preheader.loopexit:                     ; preds = %for.body
  %.pre = load double*** @calc_fit_R.omega, align 8, !tbaa !4
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.loopexit, %entry
  %5 = phi double** [ %.pre, %for.cond7.preheader.loopexit ], [ %4, %entry ]
  %6 = load double*** @calc_fit_R.om, align 8, !tbaa !4
  br label %for.body9

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 105, i32 6, i32 8) #4
  %7 = bitcast i8* %call to double**
  store double** %7, double*** @calc_fit_R.omega, align 8, !tbaa !4
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 106, i32 6, i32 8) #4
  %8 = bitcast i8* %call1 to double**
  store double** %8, double*** @calc_fit_R.om, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv383 = phi i64 [ 0, %if.then ], [ %indvars.iv.next384, %for.body ]
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 108, i32 6, i32 8) #4
  %9 = bitcast i8* %call3 to double*
  %10 = load double*** @calc_fit_R.omega, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double** %10, i64 %indvars.iv383
  store double* %9, double** %arrayidx, align 8, !tbaa !4
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 109, i32 6, i32 8) #4
  %11 = bitcast i8* %call4 to double*
  %12 = load double*** @calc_fit_R.om, align 8, !tbaa !4
  %arrayidx6 = getelementptr inbounds double** %12, i64 %indvars.iv383
  store double* %11, double** %arrayidx6, align 8, !tbaa !4
  %indvars.iv.next384 = add i64 %indvars.iv383, 1
  %lftr.wideiv385 = trunc i64 %indvars.iv.next384 to i32
  %exitcond386 = icmp eq i32 %lftr.wideiv385, 6
  br i1 %exitcond386, label %for.cond7.preheader.loopexit, label %for.body

for.body9:                                        ; preds = %for.inc26, %for.cond7.preheader
  %indvars.iv379 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next380, %for.inc26 ]
  %arrayidx11 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv379
  store double 0.000000e+00, double* %arrayidx11, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds double** %5, i64 %indvars.iv379
  %13 = load double** %arrayidx17, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double** %6, i64 %indvars.iv379
  %14 = load double** %arrayidx21, align 8, !tbaa !4
  br label %for.body14

for.body14:                                       ; preds = %for.body14, %for.body9
  %indvars.iv375 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next376, %for.body14 ]
  %arrayidx18 = getelementptr inbounds double* %13, i64 %indvars.iv375
  store double 0.000000e+00, double* %arrayidx18, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds double* %14, i64 %indvars.iv375
  store double 0.000000e+00, double* %arrayidx22, align 8, !tbaa !5
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %lftr.wideiv377 = trunc i64 %indvars.iv.next376 to i32
  %exitcond378 = icmp eq i32 %lftr.wideiv377, 6
  br i1 %exitcond378, label %for.inc26, label %for.body14

for.inc26:                                        ; preds = %for.body14
  %indvars.iv.next380 = add i64 %indvars.iv379, 1
  %lftr.wideiv381 = trunc i64 %indvars.iv.next380 to i32
  %exitcond382 = icmp eq i32 %lftr.wideiv381, 6
  br i1 %exitcond382, label %for.end28, label %for.body9

for.end28:                                        ; preds = %for.inc26
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #2
  %cmp30330 = icmp sgt i32 %natoms, 0
  br i1 %cmp30330, label %for.body31, label %for.body81.lr.ph

for.body31:                                       ; preds = %for.end28, %for.inc71
  %indvars.iv371 = phi i64 [ %indvars.iv.next372, %for.inc71 ], [ 0, %for.end28 ]
  %arrayidx33 = getelementptr inbounds float* %w_rls, i64 %indvars.iv371
  %15 = load float* %arrayidx33, align 4, !tbaa !3
  %conv = fpext float %15 to double
  %fabsf = call float @fabsf(float %15) #6
  %16 = fpext float %fabsf to double
  %cmp35 = fcmp ogt double %16, 1.200000e-38
  br i1 %cmp35, label %for.body41, label %for.inc71

for.body41:                                       ; preds = %for.body31, %for.inc67
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %for.inc67 ], [ 0, %for.body31 ]
  %arrayidx45 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv371, i64 %indvars.iv367
  %17 = load float* %arrayidx45, align 4, !tbaa !3
  %conv46 = fpext float %17 to double
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %for.body41
  %indvars.iv363 = phi i64 [ 0, %for.body41 ], [ %indvars.iv.next364, %for.body50 ]
  %arrayidx54 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv371, i64 %indvars.iv363
  %18 = load float* %arrayidx54, align 4, !tbaa !3
  %conv55 = fpext float %18 to double
  %mul = fmul double %conv, %conv55
  %mul57 = fmul double %conv46, %mul
  %arrayidx61 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv367, i64 %indvars.iv363
  %19 = load float* %arrayidx61, align 4, !tbaa !3
  %conv62 = fpext float %19 to double
  %add = fadd double %conv62, %mul57
  %conv63 = fptrunc double %add to float
  store float %conv63, float* %arrayidx61, align 4, !tbaa !3
  %indvars.iv.next364 = add i64 %indvars.iv363, 1
  %lftr.wideiv365 = trunc i64 %indvars.iv.next364 to i32
  %exitcond366 = icmp eq i32 %lftr.wideiv365, 3
  br i1 %exitcond366, label %for.inc67, label %for.body50

for.inc67:                                        ; preds = %for.body50
  %indvars.iv.next368 = add i64 %indvars.iv367, 1
  %lftr.wideiv369 = trunc i64 %indvars.iv.next368 to i32
  %exitcond370 = icmp eq i32 %lftr.wideiv369, 3
  br i1 %exitcond370, label %for.inc71, label %for.body41

for.inc71:                                        ; preds = %for.inc67, %for.body31
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %lftr.wideiv373 = trunc i64 %indvars.iv.next372 to i32
  %exitcond374 = icmp eq i32 %lftr.wideiv373, %natoms
  br i1 %exitcond374, label %for.body81.lr.ph, label %for.body31

for.body81.lr.ph:                                 ; preds = %for.inc118, %for.inc71, %for.end28
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %for.inc118 ], [ 0, %for.inc71 ], [ 0, %for.end28 ]
  %indvars.iv354 = phi i32 [ %indvars.iv.next355, %for.inc118 ], [ 1, %for.inc71 ], [ 1, %for.end28 ]
  %20 = trunc i64 %indvars.iv358 to i32
  %cmp82 = icmp sgt i32 %20, 2
  %21 = add nsw i64 %indvars.iv358, -3
  %arrayidx94 = getelementptr inbounds double** %5, i64 %indvars.iv358
  br label %for.body81

for.body81:                                       ; preds = %for.inc115, %for.body81.lr.ph
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %for.inc115 ], [ 0, %for.body81.lr.ph ]
  %22 = trunc i64 %indvars.iv352 to i32
  %cmp84 = icmp slt i32 %22, 3
  %or.cond = and i1 %cmp82, %cmp84
  br i1 %or.cond, label %if.then86, label %if.else

if.then86:                                        ; preds = %for.body81
  %arrayidx90 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %21, i64 %indvars.iv352
  %23 = load float* %arrayidx90, align 4, !tbaa !3
  %conv91 = fpext float %23 to double
  %24 = load double** %arrayidx94, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds double* %24, i64 %indvars.iv352
  store double %conv91, double* %arrayidx95, align 8, !tbaa !5
  %arrayidx104 = getelementptr inbounds double** %5, i64 %indvars.iv352
  %25 = load double** %arrayidx104, align 8, !tbaa !4
  %arrayidx105 = getelementptr inbounds double* %25, i64 %indvars.iv358
  store double %conv91, double* %arrayidx105, align 8, !tbaa !5
  br label %for.inc115

if.else:                                          ; preds = %for.body81
  %26 = load double** %arrayidx94, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds double* %26, i64 %indvars.iv352
  store double 0.000000e+00, double* %arrayidx109, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds double** %5, i64 %indvars.iv352
  %27 = load double** %arrayidx112, align 8, !tbaa !4
  %arrayidx113 = getelementptr inbounds double* %27, i64 %indvars.iv358
  store double 0.000000e+00, double* %arrayidx113, align 8, !tbaa !5
  br label %for.inc115

for.inc115:                                       ; preds = %if.then86, %if.else
  %indvars.iv.next353 = add i64 %indvars.iv352, 1
  %lftr.wideiv356 = trunc i64 %indvars.iv.next353 to i32
  %exitcond357 = icmp eq i32 %lftr.wideiv356, %indvars.iv354
  br i1 %exitcond357, label %for.inc118, label %for.body81

for.inc118:                                       ; preds = %for.inc115
  %indvars.iv.next359 = add i64 %indvars.iv358, 1
  %indvars.iv.next355 = add i32 %indvars.iv354, 1
  %lftr.wideiv361 = trunc i64 %indvars.iv.next359 to i32
  %exitcond362 = icmp eq i32 %lftr.wideiv361, 6
  br i1 %exitcond362, label %for.end120, label %for.body81.lr.ph

for.end120:                                       ; preds = %for.inc118
  %arraydecay121 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0
  call void @jacobi(double** %5, i32 6, double* %arraydecay121, double** %6, i32* %irot) #4
  %28 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %28, null
  br i1 %tobool, label %for.cond128.preheader, label %land.lhs.true122

land.lhs.true122:                                 ; preds = %for.end120
  %29 = load i32* %irot, align 4, !tbaa !0
  %cmp123 = icmp eq i32 %29, 0
  br i1 %cmp123, label %if.then125, label %for.cond128.preheader

if.then125:                                       ; preds = %land.lhs.true122
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %28)
  br label %for.cond128.preheader

for.cond128.preheader:                            ; preds = %for.end120, %if.then125, %land.lhs.true122
  %31 = load double*** @calc_fit_R.om, align 8, !tbaa !4
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.inc179, %for.cond128.preheader
  %indvars.iv348 = phi i64 [ 0, %for.cond128.preheader ], [ %indvars.iv.next349, %for.inc179 ]
  %index.0324 = phi i32 [ 0, %for.cond128.preheader ], [ %index.2, %for.inc179 ]
  br label %for.body135

for.body135:                                      ; preds = %for.inc146, %for.cond132.preheader
  %indvars.iv339 = phi i64 [ 0, %for.cond132.preheader ], [ %indvars.iv.next340, %for.inc146 ]
  %max_d.0321 = phi float [ -1.000000e+03, %for.cond132.preheader ], [ %max_d.1, %for.inc146 ]
  %index.1320 = phi i32 [ %index.0324, %for.cond132.preheader ], [ %index.2, %for.inc146 ]
  %arrayidx137 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv339
  %32 = load double* %arrayidx137, align 8, !tbaa !5
  %conv138 = fpext float %max_d.0321 to double
  %cmp139 = fcmp ogt double %32, %conv138
  br i1 %cmp139, label %if.then141, label %for.inc146

if.then141:                                       ; preds = %for.body135
  %conv144 = fptrunc double %32 to float
  %33 = trunc i64 %indvars.iv339 to i32
  br label %for.inc146

for.inc146:                                       ; preds = %for.body135, %if.then141
  %index.2 = phi i32 [ %33, %if.then141 ], [ %index.1320, %for.body135 ]
  %max_d.1 = phi float [ %conv144, %if.then141 ], [ %max_d.0321, %for.body135 ]
  %indvars.iv.next340 = add i64 %indvars.iv339, 1
  %lftr.wideiv341 = trunc i64 %indvars.iv.next340 to i32
  %exitcond342 = icmp eq i32 %lftr.wideiv341, 6
  br i1 %exitcond342, label %for.end148, label %for.body135

for.end148:                                       ; preds = %for.inc146
  %idxprom149 = sext i32 %index.2 to i64
  %arrayidx150 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %idxprom149
  store double -1.000000e+04, double* %arrayidx150, align 8, !tbaa !5
  br label %for.body154

for.body154:                                      ; preds = %for.body154, %for.end148
  %indvars.iv343 = phi i64 [ 0, %for.end148 ], [ %indvars.iv.next344, %for.body154 ]
  %arrayidx157 = getelementptr inbounds double** %31, i64 %indvars.iv343
  %34 = load double** %arrayidx157, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds double* %34, i64 %idxprom149
  %35 = load double* %arrayidx158, align 8, !tbaa !5
  %mul159 = fmul double %35, 0x3FF6A09E667F3BCD
  %conv160 = fptrunc double %mul159 to float
  %arrayidx164 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv348, i64 %indvars.iv343
  store float %conv160, float* %arrayidx164, align 4, !tbaa !3
  %36 = add nsw i64 %indvars.iv343, 3
  %arrayidx168 = getelementptr inbounds double** %31, i64 %36
  %37 = load double** %arrayidx168, align 8, !tbaa !4
  %arrayidx169 = getelementptr inbounds double* %37, i64 %idxprom149
  %38 = load double* %arrayidx169, align 8, !tbaa !5
  %mul170 = fmul double %38, 0x3FF6A09E667F3BCD
  %conv171 = fptrunc double %mul170 to float
  %arrayidx175 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv348, i64 %indvars.iv343
  store float %conv171, float* %arrayidx175, align 4, !tbaa !3
  %indvars.iv.next344 = add i64 %indvars.iv343, 1
  %lftr.wideiv346 = trunc i64 %indvars.iv.next344 to i32
  %exitcond347 = icmp eq i32 %lftr.wideiv346, 3
  br i1 %exitcond347, label %for.inc179, label %for.body154

for.inc179:                                       ; preds = %for.body154
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32
  %exitcond351 = icmp eq i32 %lftr.wideiv350, 2
  br i1 %exitcond351, label %for.end181, label %for.cond132.preheader

for.end181:                                       ; preds = %for.inc179
  %arraydecay183 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 0
  %arraydecay185 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 0
  %arraydecay187 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 0
  %arrayidx.i302 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 1
  %39 = load float* %arrayidx.i302, align 4, !tbaa !3
  %arrayidx1.i303 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 2
  %40 = load float* %arrayidx1.i303, align 4, !tbaa !3
  %mul.i304 = fmul float %39, %40
  %arrayidx2.i305 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 2
  %41 = load float* %arrayidx2.i305, align 8, !tbaa !3
  %arrayidx3.i306 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 1
  %42 = load float* %arrayidx3.i306, align 4, !tbaa !3
  %mul4.i307 = fmul float %41, %42
  %sub.i308 = fsub float %mul.i304, %mul4.i307
  store float %sub.i308, float* %arraydecay187, align 8, !tbaa !3
  %43 = load float* %arraydecay185, align 4, !tbaa !3
  %mul8.i309 = fmul float %41, %43
  %44 = load float* %arraydecay183, align 16, !tbaa !3
  %mul11.i310 = fmul float %44, %40
  %sub12.i311 = fsub float %mul8.i309, %mul11.i310
  %arrayidx13.i312 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 1
  store float %sub12.i311, float* %arrayidx13.i312, align 4, !tbaa !3
  %mul16.i313 = fmul float %44, %42
  %mul19.i314 = fmul float %39, %43
  %sub20.i315 = fsub float %mul16.i313, %mul19.i314
  %arrayidx21.i316 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 2
  store float %sub20.i315, float* %arrayidx21.i316, align 8, !tbaa !3
  %arraydecay189 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 0
  %arraydecay191 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 0
  %arraydecay193 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 0
  %arrayidx.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 1
  %45 = load float* %arrayidx.i, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 2
  %46 = load float* %arrayidx1.i, align 4, !tbaa !3
  %mul.i = fmul float %45, %46
  %arrayidx2.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 2
  %47 = load float* %arrayidx2.i, align 8, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 1
  %48 = load float* %arrayidx3.i, align 4, !tbaa !3
  %mul4.i = fmul float %47, %48
  %sub.i = fsub float %mul.i, %mul4.i
  store float %sub.i, float* %arraydecay193, align 8, !tbaa !3
  %49 = load float* %arraydecay191, align 4, !tbaa !3
  %mul8.i = fmul float %47, %49
  %50 = load float* %arraydecay189, align 16, !tbaa !3
  %mul11.i = fmul float %50, %46
  %sub12.i = fsub float %mul8.i, %mul11.i
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 1
  store float %sub12.i, float* %arrayidx13.i, align 4, !tbaa !3
  %mul16.i = fmul float %50, %48
  %mul19.i = fmul float %45, %49
  %sub20.i = fsub float %mul16.i, %mul19.i
  %arrayidx21.i = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 2
  store float %sub20.i, float* %arrayidx21.i, align 8, !tbaa !3
  br label %for.cond198.preheader

for.cond198.preheader:                            ; preds = %for.inc232.for.cond198.preheader_crit_edge, %for.end181
  %51 = phi float [ %sub.i, %for.end181 ], [ %.pre389, %for.inc232.for.cond198.preheader_crit_edge ]
  %52 = phi float [ %49, %for.end181 ], [ %.pre388, %for.inc232.for.cond198.preheader_crit_edge ]
  %53 = phi float [ %50, %for.end181 ], [ %.pre387, %for.inc232.for.cond198.preheader_crit_edge ]
  %indvars.iv335 = phi i64 [ 0, %for.end181 ], [ %indvars.iv.next336, %for.inc232.for.cond198.preheader_crit_edge ]
  br label %for.body201

for.body201:                                      ; preds = %for.body201, %for.cond198.preheader
  %indvars.iv = phi i64 [ 0, %for.cond198.preheader ], [ %indvars.iv.next, %for.body201 ]
  %arrayidx207 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv
  %54 = load float* %arrayidx207, align 4, !tbaa !3
  %mul208 = fmul float %53, %54
  %arrayidx214 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv
  %55 = load float* %arrayidx214, align 4, !tbaa !3
  %mul215 = fmul float %52, %55
  %add216 = fadd float %mul208, %mul215
  %arrayidx222 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv
  %56 = load float* %arrayidx222, align 4, !tbaa !3
  %mul223 = fmul float %51, %56
  %add224 = fadd float %add216, %mul223
  %arrayidx228 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv335, i64 %indvars.iv
  store float %add224, float* %arrayidx228, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc232, label %for.body201

for.inc232:                                       ; preds = %for.body201
  %indvars.iv.next336 = add i64 %indvars.iv335, 1
  %lftr.wideiv337 = trunc i64 %indvars.iv.next336 to i32
  %exitcond338 = icmp eq i32 %lftr.wideiv337, 3
  br i1 %exitcond338, label %for.end234, label %for.inc232.for.cond198.preheader_crit_edge

for.inc232.for.cond198.preheader_crit_edge:       ; preds = %for.inc232
  %arrayidx204.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv.next336
  %.pre387 = load float* %arrayidx204.phi.trans.insert, align 4, !tbaa !3
  %arrayidx211.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv.next336
  %.pre388 = load float* %arrayidx211.phi.trans.insert, align 4, !tbaa !3
  %arrayidx219.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv.next336
  %.pre389 = load float* %arrayidx219.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond198.preheader

for.end234:                                       ; preds = %for.inc232
  call void @llvm.lifetime.end(i64 36, i8* %3) #2
  call void @llvm.lifetime.end(i64 36, i8* %2) #2
  call void @llvm.lifetime.end(i64 36, i8* %1) #2
  call void @llvm.lifetime.end(i64 48, i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @do_fit(i32 %natoms, float* nocapture %w_rls, [3 x float]* nocapture %xp, [3 x float]* nocapture %x) #0 {
entry:
  %R = alloca [3 x [3 x float]], align 16
  %x_old = alloca [3 x float], align 4
  %x_old60 = bitcast [3 x float]* %x_old to i8*
  %0 = bitcast [3 x [3 x float]]* %R to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #2
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0
  call void @calc_fit_R(i32 %natoms, float* %w_rls, [3 x float]* %xp, [3 x float]* %x, [3 x float]* %arraydecay) #5
  %cmp58 = icmp sgt i32 %natoms, 0
  br i1 %cmp58, label %for.cond1.preheader, label %for.end36

for.cond1.preheader:                              ; preds = %entry, %for.inc34
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc34 ], [ 0, %entry ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv68, i64 0
  %scevgep61 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old60, i8* %scevgep61, i64 12, i32 4, i1 false)
  br label %for.body10

for.body10:                                       ; preds = %for.inc31, %for.cond1.preheader
  %indvars.iv62 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next63, %for.inc31 ]
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv68, i64 %indvars.iv62
  store float 0.000000e+00, float* %arrayidx14, align 4, !tbaa !3
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body10
  %indvars.iv = phi i64 [ 0, %for.body10 ], [ %indvars.iv.next, %for.body17 ]
  %1 = phi float [ 0.000000e+00, %for.body10 ], [ %add, %for.body17 ]
  %arrayidx21 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 %indvars.iv62, i64 %indvars.iv
  %2 = load float* %arrayidx21, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv
  %3 = load float* %arrayidx23, align 4, !tbaa !3
  %mul = fmul float %2, %3
  %add = fadd float %1, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc31, label %for.body17

for.inc31:                                        ; preds = %for.body17
  store float %add, float* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next63 = add i64 %indvars.iv62, 1
  %lftr.wideiv64 = trunc i64 %indvars.iv.next63 to i32
  %exitcond65 = icmp eq i32 %lftr.wideiv64, 3
  br i1 %exitcond65, label %for.inc34, label %for.body10

for.inc34:                                        ; preds = %for.inc31
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %lftr.wideiv70 = trunc i64 %indvars.iv.next69 to i32
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %natoms
  br i1 %exitcond71, label %for.end36, label %for.cond1.preheader

for.end36:                                        ; preds = %for.inc34, %entry
  call void @llvm.lifetime.end(i64 36, i8* %0) #2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reset_x(i32 %ncm, i32* nocapture %ind_cm, i32 %nreset, i32* %ind_reset, [3 x float]* nocapture %x, float* nocapture %mass) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  %arraydecay = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !3
  %cmp81 = icmp sgt i32 %ncm, 0
  br i1 %cmp81, label %for.body, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end, %entry
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.end ]
  br label %for.body18

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.end ], [ 0, %entry ]
  %tm.082 = phi float [ %add12, %for.end ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds i32* %ind_cm, i64 %indvars.iv96
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds float* %mass, i64 %idxprom1
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv92 = phi i64 [ 0, %for.body ], [ %indvars.iv.next93, %for.body5 ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 %indvars.iv92
  %2 = load float* %arrayidx9, align 4, !tbaa !3
  %mul = fmul float %1, %2
  %arrayidx11 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv92
  %3 = load float* %arrayidx11, align 4, !tbaa !3
  %add = fadd float %3, %mul
  store float %add, float* %arrayidx11, align 4, !tbaa !3
  %indvars.iv.next93 = add i64 %indvars.iv92, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next93 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, 3
  br i1 %exitcond95, label %for.end, label %for.body5

for.end:                                          ; preds = %for.body5
  %add12 = fadd float %tm.082, %1
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %lftr.wideiv98 = trunc i64 %indvars.iv.next97 to i32
  %exitcond99 = icmp eq i32 %lftr.wideiv98, %ncm
  br i1 %exitcond99, label %for.cond16.preheader, label %for.body

for.body18:                                       ; preds = %for.body18, %for.cond16.preheader
  %indvars.iv88 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next89, %for.body18 ]
  %arrayidx20 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv88
  %4 = load float* %arrayidx20, align 4, !tbaa !3
  %div = fdiv float %4, %tm.0.lcssa
  store float %div, float* %arrayidx20, align 4, !tbaa !3
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, 3
  br i1 %exitcond91, label %for.end23, label %for.body18

for.end23:                                        ; preds = %for.body18
  %tobool = icmp eq i32* %ind_reset, null
  %cmp3774 = icmp sgt i32 %nreset, 0
  br i1 %tobool, label %for.cond36.preheader, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.end23
  br i1 %cmp3774, label %for.body26.lr.ph, label %if.end

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %5 = load float* %arraydecay, align 4, !tbaa !3
  %6 = load float* %arrayidx1.i, align 4, !tbaa !3
  %7 = load float* %arrayidx2.i, align 4, !tbaa !3
  br label %for.body26

for.cond36.preheader:                             ; preds = %for.end23
  br i1 %cmp3774, label %for.body38.lr.ph, label %if.end

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %8 = load float* %arraydecay, align 4, !tbaa !3
  %9 = load float* %arrayidx1.i, align 4, !tbaa !3
  %10 = load float* %arrayidx2.i, align 4, !tbaa !3
  br label %for.body38

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv84 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next85, %for.body26 ]
  %arrayidx28 = getelementptr inbounds i32* %ind_reset, i64 %indvars.iv84
  %11 = load i32* %arrayidx28, align 4, !tbaa !0
  %idxprom29 = sext i32 %11 to i64
  %arraydecay31 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 0
  %12 = load float* %arraydecay31, align 4, !tbaa !3
  %sub.i67 = fsub float %12, %5
  %arrayidx2.i68 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 1
  %13 = load float* %arrayidx2.i68, align 4, !tbaa !3
  %sub4.i70 = fsub float %13, %6
  %arrayidx5.i71 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 2
  %14 = load float* %arrayidx5.i71, align 4, !tbaa !3
  %sub7.i73 = fsub float %14, %7
  store float %sub.i67, float* %arraydecay31, align 4, !tbaa !3
  store float %sub4.i70, float* %arrayidx2.i68, align 4, !tbaa !3
  store float %sub7.i73, float* %arrayidx5.i71, align 4, !tbaa !3
  %indvars.iv.next85 = add i64 %indvars.iv84, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next85 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %nreset
  br i1 %exitcond87, label %if.end, label %for.body26

for.body38:                                       ; preds = %for.body38, %for.body38.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next, %for.body38 ]
  %arraydecay41 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %15 = load float* %arraydecay41, align 4, !tbaa !3
  %sub.i = fsub float %15, %8
  %arrayidx2.i66 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %16 = load float* %arrayidx2.i66, align 4, !tbaa !3
  %sub4.i = fsub float %16, %9
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %17 = load float* %arrayidx5.i, align 4, !tbaa !3
  %sub7.i = fsub float %17, %10
  store float %sub.i, float* %arraydecay41, align 4, !tbaa !3
  store float %sub4.i, float* %arrayidx2.i66, align 4, !tbaa !3
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nreset
  br i1 %exitcond, label %if.end, label %for.body38

if.end:                                           ; preds = %for.cond24.preheader, %for.body26, %for.cond36.preheader, %for.body38
  ret void
}

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
