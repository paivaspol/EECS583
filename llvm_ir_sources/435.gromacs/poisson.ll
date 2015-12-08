; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/poisson.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"ps->ptr\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"ps->ptr[i]\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"ps->ptr[i][j]\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Symmetrize_PSgrid: sum = %g, ming = %g(%d,%d,%d), maxg = %g(%d,%d,%d)\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"*nnx\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"*nny\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"*nnz\00", align 1
@do_poisson.bFirst = internal unnamed_addr global i1 false
@do_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.beta = internal global [3 x float] zeroinitializer, align 4
@.str9 = private unnamed_addr constant [55 x i8] c"Will use Poisson Solver for long-range electrostatics\0A\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Grid size is %d x %d x %d\0A\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"Grid must be at least 4 points in all directions\00", align 1
@debug = external global %struct._IO_FILE*
@do_optimize_poisson.bFirst = internal unnamed_addr global i1 false
@do_optimize_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_optimize_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_optimize_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@.str12 = private unnamed_addr constant [20 x i8] c"Poisson, beta = %g\0A\00", align 1
@.str13 = private unnamed_addr constant [40 x i8] c"Beta: %6.3f  %6.3f  %6.3f  RMSF: %8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Minimum RMSF %8.3f at Beta = %6.3f  %6.3f  %6.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_PSgrid* @mk_PSgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 24) #4
  %0 = bitcast i8* %call to %struct.t_PSgrid*
  %nx1 = bitcast i8* %call to i32*
  store i32 %nx, i32* %nx1, align 4, !tbaa !0
  %ny2 = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %ny2 to i32*
  store i32 %ny, i32* %1, align 4, !tbaa !0
  %nz3 = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %nz3 to i32*
  store i32 %nz, i32* %2, align 4, !tbaa !0
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %nx, i32 8) #4
  %3 = bitcast i8* %call4 to float***
  %ptr = getelementptr inbounds i8* %call, i64 16
  %4 = bitcast i8* %ptr to float****
  store float*** %3, float**** %4, align 8, !tbaa !3
  %cmp37 = icmp sgt i32 %nx, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.end18

for.body.lr.ph:                                   ; preds = %entry
  %cmp835 = icmp sgt i32 %ny, 0
  br label %for.body

for.body:                                         ; preds = %for.inc16, %for.body.lr.ph
  %indvars.iv39 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next40, %for.inc16 ]
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %ny, i32 8) #4
  %5 = bitcast i8* %call5 to float**
  %6 = load float**** %4, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float*** %6, i64 %indvars.iv39
  store float** %5, float*** %arrayidx, align 8, !tbaa !3
  br i1 %cmp835, label %for.body9, label %for.inc16

for.body9:                                        ; preds = %for.body, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.body ]
  %call10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %nz, i32 4) #4
  %7 = bitcast i8* %call10 to float*
  %8 = load float**** %4, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds float*** %8, i64 %indvars.iv39
  %9 = load float*** %arrayidx14, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds float** %9, i64 %indvars.iv
  store float* %7, float** %arrayidx15, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ny
  br i1 %exitcond, label %for.inc16, label %for.body9

for.inc16:                                        ; preds = %for.body9, %for.body
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %nx
  br i1 %exitcond42, label %for.end18, label %for.body

for.end18:                                        ; preds = %for.inc16, %entry
  ret %struct.t_PSgrid* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @unpack_PSgrid(%struct.t_PSgrid* nocapture %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, float**** nocapture %ptr) #0 {
entry:
  %nx1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %0 = load i32* %nx1, align 4, !tbaa !0
  store i32 %0, i32* %nx, align 4, !tbaa !0
  %ny2 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %1 = load i32* %ny2, align 4, !tbaa !0
  store i32 %1, i32* %ny, align 4, !tbaa !0
  %nz3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %2 = load i32* %nz3, align 4, !tbaa !0
  store i32 %2, i32* %nz, align 4, !tbaa !0
  %ptr4 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %3 = load float**** %ptr4, align 8, !tbaa !3
  store float*** %3, float**** %ptr, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @copy_PSgrid(%struct.t_PSgrid* nocapture %dest, %struct.t_PSgrid* nocapture %src) #0 {
entry:
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %dest, i64 0, i32 3
  %0 = load float**** %ptr4.i, align 8, !tbaa !3
  %nx1.i32 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 0
  %1 = load i32* %nx1.i32, align 4, !tbaa !0
  %ny2.i33 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 1
  %2 = load i32* %ny2.i33, align 4, !tbaa !0
  %nz3.i34 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 2
  %3 = load i32* %nz3.i34, align 4, !tbaa !0
  %ptr4.i35 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 3
  %4 = load float**** %ptr4.i35, align 8, !tbaa !3
  %cmp40 = icmp sgt i32 %1, 0
  br i1 %cmp40, label %for.cond1.preheader.lr.ph, label %for.end22

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp238 = icmp sgt i32 %2, 0
  %cmp536 = icmp sgt i32 %3, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc20, %for.cond1.preheader.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next47, %for.inc20 ]
  br i1 %cmp238, label %for.cond4.preheader.lr.ph, label %for.inc20

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %4, i64 %indvars.iv46
  %arrayidx14 = getelementptr inbounds float*** %0, i64 %indvars.iv46
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc17, %for.cond4.preheader.lr.ph
  %indvars.iv42 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next43, %for.inc17 ]
  br i1 %cmp536, label %for.body6.lr.ph, label %for.inc17

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %5 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %5, i64 %indvars.iv42
  %6 = load float** %arrayidx9, align 8, !tbaa !3
  %7 = load float*** %arrayidx14, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds float** %7, i64 %indvars.iv42
  %8 = load float** %arrayidx15, align 8, !tbaa !3
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx10 = getelementptr inbounds float* %6, i64 %indvars.iv
  %9 = load float* %arrayidx10, align 4, !tbaa !4
  %arrayidx16 = getelementptr inbounds float* %8, i64 %indvars.iv
  store float %9, float* %arrayidx16, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.inc17, label %for.body6

for.inc17:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv.next43 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %2
  br i1 %exitcond45, label %for.inc20, label %for.cond4.preheader

for.inc20:                                        ; preds = %for.inc17, %for.cond1.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %1
  br i1 %exitcond49, label %for.end22, label %for.cond1.preheader

for.end22:                                        ; preds = %for.inc20, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @clear_PSgrid(%struct.t_PSgrid* nocapture %grid) #0 {
entry:
  %nx1.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %0 = load i32* %nx1.i, align 4, !tbaa !0
  %ny2.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %1 = load i32* %ny2.i, align 4, !tbaa !0
  %nz3.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %2 = load i32* %nz3.i, align 4, !tbaa !0
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %3 = load float**** %ptr4.i, align 8, !tbaa !3
  %cmp27 = icmp sgt i32 %0, 0
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %1, 0
  %cmp523 = icmp sgt i32 %2, 0
  %4 = add i32 %2, -1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add i64 %6, 4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %3, i64 %indvars.iv29
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next, %for.inc11 ]
  br i1 %cmp523, label %for.body6.lr.ph, label %for.inc11

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %8 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %8, i64 %indvars.iv
  %9 = load float** %arrayidx9, align 8, !tbaa !3
  %10 = bitcast float* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %7, i32 4, i1 false)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6.lr.ph, %for.cond4.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %0
  br i1 %exitcond32, label %for.end16, label %for.cond1.preheader

for.end16:                                        ; preds = %for.inc14, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @symmetrize_PSgrid(%struct._IO_FILE* %fp, %struct.t_PSgrid* nocapture %grid, float %sum) #0 {
entry:
  %nx1.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %0 = load i32* %nx1.i, align 4, !tbaa !0
  %ny2.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %1 = load i32* %ny2.i, align 4, !tbaa !0
  %nz3.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %2 = load i32* %nz3.i, align 4, !tbaa !0
  %ptr4.i = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %3 = load float**** %ptr4.i, align 8, !tbaa !3
  %fabsf = tail call float @fabsf(float %sum) #5
  %4 = fpext float %fabsf to double
  %cmp = fcmp olt double %4, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.end62

if.then:                                          ; preds = %entry
  %5 = load float*** %3, align 8, !tbaa !3
  %6 = load float** %5, align 8, !tbaa !3
  %7 = load float* %6, align 4, !tbaa !4
  %cmp4195 = icmp sgt i32 %0, 0
  br i1 %cmp4195, label %for.cond6.preheader.lr.ph, label %if.end62.thread

if.end62.thread:                                  ; preds = %if.then
  %mul236 = mul nsw i32 %1, %0
  %mul63237 = mul nsw i32 %mul236, %2
  %conv64238 = sitofp i32 %mul63237 to float
  %div239 = fdiv float 0.000000e+00, %conv64238
  br label %for.end91

for.cond6.preheader.lr.ph:                        ; preds = %if.then
  %cmp7174 = icmp sgt i32 %1, 0
  %cmp11155 = icmp sgt i32 %2, 0
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc59, %for.cond6.preheader.lr.ph
  %indvars.iv232 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next233, %for.inc59 ]
  %imax.sroa.0.0206 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.0.1.lcssa, %for.inc59 ]
  %imax.sroa.1.0205 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.1.1.lcssa, %for.inc59 ]
  %imax.sroa.2.0204 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imax.sroa.2.1.lcssa, %for.inc59 ]
  %imin.sroa.0.0203 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.0.1.lcssa, %for.inc59 ]
  %imin.sroa.1.0202 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.1.1.lcssa, %for.inc59 ]
  %imin.sroa.2.0201 = phi i32 [ -1, %for.cond6.preheader.lr.ph ], [ %imin.sroa.2.1.lcssa, %for.inc59 ]
  %maxg.0200 = phi float [ %7, %for.cond6.preheader.lr.ph ], [ %maxg.1.lcssa, %for.inc59 ]
  %ming.0199 = phi float [ %7, %for.cond6.preheader.lr.ph ], [ %ming.1.lcssa, %for.inc59 ]
  %i.0197 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc60, %for.inc59 ]
  %sum.addr.0196 = phi float [ 0.000000e+00, %for.cond6.preheader.lr.ph ], [ %sum.addr.1.lcssa, %for.inc59 ]
  br i1 %cmp7174, label %for.cond10.preheader.lr.ph, label %for.inc59

for.cond10.preheader.lr.ph:                       ; preds = %for.cond6.preheader
  %arrayidx16 = getelementptr inbounds float*** %3, i64 %indvars.iv232
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.inc56, %for.cond10.preheader.lr.ph
  %indvars.iv228 = phi i64 [ 0, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next229, %for.inc56 ]
  %imax.sroa.0.1185 = phi i32 [ %imax.sroa.0.0206, %for.cond10.preheader.lr.ph ], [ %imax.sroa.0.2.lcssa, %for.inc56 ]
  %imax.sroa.1.1184 = phi i32 [ %imax.sroa.1.0205, %for.cond10.preheader.lr.ph ], [ %imax.sroa.1.2.lcssa, %for.inc56 ]
  %imax.sroa.2.1183 = phi i32 [ %imax.sroa.2.0204, %for.cond10.preheader.lr.ph ], [ %imax.sroa.2.2.lcssa, %for.inc56 ]
  %imin.sroa.0.1182 = phi i32 [ %imin.sroa.0.0203, %for.cond10.preheader.lr.ph ], [ %imin.sroa.0.2.lcssa, %for.inc56 ]
  %imin.sroa.1.1181 = phi i32 [ %imin.sroa.1.0202, %for.cond10.preheader.lr.ph ], [ %imin.sroa.1.2.lcssa, %for.inc56 ]
  %imin.sroa.2.1180 = phi i32 [ %imin.sroa.2.0201, %for.cond10.preheader.lr.ph ], [ %imin.sroa.2.2.lcssa, %for.inc56 ]
  %maxg.1179 = phi float [ %maxg.0200, %for.cond10.preheader.lr.ph ], [ %maxg.2.lcssa, %for.inc56 ]
  %ming.1178 = phi float [ %ming.0199, %for.cond10.preheader.lr.ph ], [ %ming.2.lcssa, %for.inc56 ]
  %j.0176 = phi i32 [ 0, %for.cond10.preheader.lr.ph ], [ %inc57, %for.inc56 ]
  %sum.addr.1175 = phi float [ %sum.addr.0196, %for.cond10.preheader.lr.ph ], [ %sum.addr.2.lcssa, %for.inc56 ]
  br i1 %cmp11155, label %for.body13.lr.ph, label %for.inc56

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %8 = load float*** %arrayidx16, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds float** %8, i64 %indvars.iv228
  %9 = load float** %arrayidx17, align 8, !tbaa !3
  br label %for.body13

for.body13:                                       ; preds = %for.inc, %for.body13.lr.ph
  %indvars.iv224 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next225, %for.inc ]
  %imax.sroa.0.2165 = phi i32 [ %imax.sroa.0.1185, %for.body13.lr.ph ], [ %imax.sroa.0.3, %for.inc ]
  %imax.sroa.1.2164 = phi i32 [ %imax.sroa.1.1184, %for.body13.lr.ph ], [ %imax.sroa.1.3, %for.inc ]
  %imax.sroa.2.2163 = phi i32 [ %imax.sroa.2.1183, %for.body13.lr.ph ], [ %imax.sroa.2.3, %for.inc ]
  %imin.sroa.0.2162 = phi i32 [ %imin.sroa.0.1182, %for.body13.lr.ph ], [ %imin.sroa.0.3, %for.inc ]
  %imin.sroa.1.2161 = phi i32 [ %imin.sroa.1.1181, %for.body13.lr.ph ], [ %imin.sroa.1.3, %for.inc ]
  %imin.sroa.2.2160 = phi i32 [ %imin.sroa.2.1180, %for.body13.lr.ph ], [ %imin.sroa.2.3, %for.inc ]
  %maxg.2159 = phi float [ %maxg.1179, %for.body13.lr.ph ], [ %maxg.3, %for.inc ]
  %ming.2158 = phi float [ %ming.1178, %for.body13.lr.ph ], [ %ming.3, %for.inc ]
  %sum.addr.2156 = phi float [ %sum.addr.1175, %for.body13.lr.ph ], [ %add, %for.inc ]
  %arrayidx18 = getelementptr inbounds float* %9, i64 %indvars.iv224
  %10 = load float* %arrayidx18, align 4, !tbaa !4
  %add = fadd float %sum.addr.2156, %10
  %cmp25 = fcmp olt float %10, %ming.2158
  %11 = trunc i64 %indvars.iv224 to i32
  br i1 %cmp25, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body13
  %cmp43 = fcmp ogt float %10, %maxg.2159
  br i1 %cmp43, label %if.then45, label %for.inc

if.then45:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %for.body13, %if.then45, %if.else
  %ming.3 = phi float [ %ming.2158, %if.then45 ], [ %ming.2158, %if.else ], [ %10, %for.body13 ]
  %maxg.3 = phi float [ %10, %if.then45 ], [ %maxg.2159, %if.else ], [ %maxg.2159, %for.body13 ]
  %imin.sroa.2.3 = phi i32 [ %imin.sroa.2.2160, %if.then45 ], [ %imin.sroa.2.2160, %if.else ], [ %11, %for.body13 ]
  %imin.sroa.1.3 = phi i32 [ %imin.sroa.1.2161, %if.then45 ], [ %imin.sroa.1.2161, %if.else ], [ %j.0176, %for.body13 ]
  %imin.sroa.0.3 = phi i32 [ %imin.sroa.0.2162, %if.then45 ], [ %imin.sroa.0.2162, %if.else ], [ %i.0197, %for.body13 ]
  %imax.sroa.2.3 = phi i32 [ %11, %if.then45 ], [ %imax.sroa.2.2163, %if.else ], [ %imax.sroa.2.2163, %for.body13 ]
  %imax.sroa.1.3 = phi i32 [ %j.0176, %if.then45 ], [ %imax.sroa.1.2164, %if.else ], [ %imax.sroa.1.2164, %for.body13 ]
  %imax.sroa.0.3 = phi i32 [ %i.0197, %if.then45 ], [ %imax.sroa.0.2165, %if.else ], [ %imax.sroa.0.2165, %for.body13 ]
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %2
  br i1 %exitcond227, label %for.inc56, label %for.body13

for.inc56:                                        ; preds = %for.inc, %for.cond10.preheader
  %imax.sroa.0.2.lcssa = phi i32 [ %imax.sroa.0.1185, %for.cond10.preheader ], [ %imax.sroa.0.3, %for.inc ]
  %imax.sroa.1.2.lcssa = phi i32 [ %imax.sroa.1.1184, %for.cond10.preheader ], [ %imax.sroa.1.3, %for.inc ]
  %imax.sroa.2.2.lcssa = phi i32 [ %imax.sroa.2.1183, %for.cond10.preheader ], [ %imax.sroa.2.3, %for.inc ]
  %imin.sroa.0.2.lcssa = phi i32 [ %imin.sroa.0.1182, %for.cond10.preheader ], [ %imin.sroa.0.3, %for.inc ]
  %imin.sroa.1.2.lcssa = phi i32 [ %imin.sroa.1.1181, %for.cond10.preheader ], [ %imin.sroa.1.3, %for.inc ]
  %imin.sroa.2.2.lcssa = phi i32 [ %imin.sroa.2.1180, %for.cond10.preheader ], [ %imin.sroa.2.3, %for.inc ]
  %maxg.2.lcssa = phi float [ %maxg.1179, %for.cond10.preheader ], [ %maxg.3, %for.inc ]
  %ming.2.lcssa = phi float [ %ming.1178, %for.cond10.preheader ], [ %ming.3, %for.inc ]
  %sum.addr.2.lcssa = phi float [ %sum.addr.1175, %for.cond10.preheader ], [ %add, %for.inc ]
  %indvars.iv.next229 = add i64 %indvars.iv228, 1
  %inc57 = add nsw i32 %j.0176, 1
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32
  %exitcond231 = icmp eq i32 %lftr.wideiv230, %1
  br i1 %exitcond231, label %for.inc59, label %for.cond10.preheader

for.inc59:                                        ; preds = %for.inc56, %for.cond6.preheader
  %imax.sroa.0.1.lcssa = phi i32 [ %imax.sroa.0.0206, %for.cond6.preheader ], [ %imax.sroa.0.2.lcssa, %for.inc56 ]
  %imax.sroa.1.1.lcssa = phi i32 [ %imax.sroa.1.0205, %for.cond6.preheader ], [ %imax.sroa.1.2.lcssa, %for.inc56 ]
  %imax.sroa.2.1.lcssa = phi i32 [ %imax.sroa.2.0204, %for.cond6.preheader ], [ %imax.sroa.2.2.lcssa, %for.inc56 ]
  %imin.sroa.0.1.lcssa = phi i32 [ %imin.sroa.0.0203, %for.cond6.preheader ], [ %imin.sroa.0.2.lcssa, %for.inc56 ]
  %imin.sroa.1.1.lcssa = phi i32 [ %imin.sroa.1.0202, %for.cond6.preheader ], [ %imin.sroa.1.2.lcssa, %for.inc56 ]
  %imin.sroa.2.1.lcssa = phi i32 [ %imin.sroa.2.0201, %for.cond6.preheader ], [ %imin.sroa.2.2.lcssa, %for.inc56 ]
  %maxg.1.lcssa = phi float [ %maxg.0200, %for.cond6.preheader ], [ %maxg.2.lcssa, %for.inc56 ]
  %ming.1.lcssa = phi float [ %ming.0199, %for.cond6.preheader ], [ %ming.2.lcssa, %for.inc56 ]
  %sum.addr.1.lcssa = phi float [ %sum.addr.0196, %for.cond6.preheader ], [ %sum.addr.2.lcssa, %for.inc56 ]
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %inc60 = add nsw i32 %i.0197, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %0
  br i1 %exitcond235, label %if.end62, label %for.cond6.preheader

if.end62:                                         ; preds = %for.inc59, %entry
  %sum.addr.3 = phi float [ %sum, %entry ], [ %sum.addr.1.lcssa, %for.inc59 ]
  %ming.4 = phi float [ 0.000000e+00, %entry ], [ %ming.1.lcssa, %for.inc59 ]
  %maxg.4 = phi float [ 0.000000e+00, %entry ], [ %maxg.1.lcssa, %for.inc59 ]
  %imin.sroa.2.4 = phi i32 [ -1, %entry ], [ %imin.sroa.2.1.lcssa, %for.inc59 ]
  %imin.sroa.1.4 = phi i32 [ -1, %entry ], [ %imin.sroa.1.1.lcssa, %for.inc59 ]
  %imin.sroa.0.4 = phi i32 [ -1, %entry ], [ %imin.sroa.0.1.lcssa, %for.inc59 ]
  %imax.sroa.2.4 = phi i32 [ -1, %entry ], [ %imax.sroa.2.1.lcssa, %for.inc59 ]
  %imax.sroa.1.4 = phi i32 [ -1, %entry ], [ %imax.sroa.1.1.lcssa, %for.inc59 ]
  %imax.sroa.0.4 = phi i32 [ -1, %entry ], [ %imax.sroa.0.1.lcssa, %for.inc59 ]
  %mul = mul nsw i32 %1, %0
  %mul63 = mul nsw i32 %mul, %2
  %conv64 = sitofp i32 %mul63 to float
  %div = fdiv float %sum.addr.3, %conv64
  %cmp66153 = icmp sgt i32 %0, 0
  br i1 %cmp66153, label %for.cond69.preheader.lr.ph, label %for.end91

for.cond69.preheader.lr.ph:                       ; preds = %if.end62
  %cmp70151 = icmp sgt i32 %1, 0
  %cmp74149 = icmp sgt i32 %2, 0
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.inc89, %for.cond69.preheader.lr.ph
  %indvars.iv220 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next221, %for.inc89 ]
  br i1 %cmp70151, label %for.cond73.preheader.lr.ph, label %for.inc89

for.cond73.preheader.lr.ph:                       ; preds = %for.cond69.preheader
  %arrayidx80 = getelementptr inbounds float*** %3, i64 %indvars.iv220
  br label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.inc86, %for.cond73.preheader.lr.ph
  %indvars.iv216 = phi i64 [ 0, %for.cond73.preheader.lr.ph ], [ %indvars.iv.next217, %for.inc86 ]
  br i1 %cmp74149, label %for.body76.lr.ph, label %for.inc86

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %12 = load float*** %arrayidx80, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds float** %12, i64 %indvars.iv216
  %13 = load float** %arrayidx81, align 8, !tbaa !3
  br label %for.body76

for.body76:                                       ; preds = %for.body76, %for.body76.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %arrayidx82 = getelementptr inbounds float* %13, i64 %indvars.iv
  %14 = load float* %arrayidx82, align 4, !tbaa !4
  %sub = fsub float %14, %div
  store float %sub, float* %arrayidx82, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.inc86, label %for.body76

for.inc86:                                        ; preds = %for.body76, %for.cond73.preheader
  %indvars.iv.next217 = add i64 %indvars.iv216, 1
  %lftr.wideiv218 = trunc i64 %indvars.iv.next217 to i32
  %exitcond219 = icmp eq i32 %lftr.wideiv218, %1
  br i1 %exitcond219, label %for.inc89, label %for.cond73.preheader

for.inc89:                                        ; preds = %for.inc86, %for.cond69.preheader
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32
  %exitcond223 = icmp eq i32 %lftr.wideiv222, %0
  br i1 %exitcond223, label %for.end91, label %for.cond69.preheader

for.end91:                                        ; preds = %for.inc89, %if.end62.thread, %if.end62
  %div249 = phi float [ %div239, %if.end62.thread ], [ %div, %if.end62 ], [ %div, %for.inc89 ]
  %imax.sroa.0.4248 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.0.4, %if.end62 ], [ %imax.sroa.0.4, %for.inc89 ]
  %imax.sroa.1.4247 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.1.4, %if.end62 ], [ %imax.sroa.1.4, %for.inc89 ]
  %imax.sroa.2.4246 = phi i32 [ -1, %if.end62.thread ], [ %imax.sroa.2.4, %if.end62 ], [ %imax.sroa.2.4, %for.inc89 ]
  %imin.sroa.0.4245 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.0.4, %if.end62 ], [ %imin.sroa.0.4, %for.inc89 ]
  %imin.sroa.1.4244 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.1.4, %if.end62 ], [ %imin.sroa.1.4, %for.inc89 ]
  %imin.sroa.2.4243 = phi i32 [ -1, %if.end62.thread ], [ %imin.sroa.2.4, %if.end62 ], [ %imin.sroa.2.4, %for.inc89 ]
  %maxg.4242 = phi float [ %7, %if.end62.thread ], [ %maxg.4, %if.end62 ], [ %maxg.4, %for.inc89 ]
  %ming.4241 = phi float [ %7, %if.end62.thread ], [ %ming.4, %if.end62 ], [ %ming.4, %for.inc89 ]
  %tobool = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.end103, label %if.then92

if.then92:                                        ; preds = %for.end91
  %conv93 = fpext float %div249 to double
  %conv94 = fpext float %ming.4241 to double
  %conv98 = fpext float %maxg.4242 to double
  %call102 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), double %conv93, double %conv94, i32 %imin.sroa.0.4245, i32 %imin.sroa.1.4244, i32 %imin.sroa.2.4243, double %conv98, i32 %imax.sroa.0.4248, i32 %imax.sroa.1.4247, i32 %imax.sroa.2.4246) #4
  br label %if.end103

if.end103:                                        ; preds = %for.end91, %if.then92
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #0 {
entry:
  %mul = mul nsw i32 %nx, 3
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 148, i32 %mul, i32 4) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %nnx, align 8, !tbaa !3
  %mul1 = mul nsw i32 %ny, 3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 149, i32 %mul1, i32 4) #4
  %1 = bitcast i8* %call2 to i32*
  store i32* %1, i32** %nny, align 8, !tbaa !3
  %mul3 = mul nsw i32 %nz, 3
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 150, i32 %mul3, i32 4) #4
  %2 = bitcast i8* %call4 to i32*
  store i32* %2, i32** %nnz, align 8, !tbaa !3
  %cmp50 = icmp sgt i32 %nx, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %entry
  %3 = load i32** %nnx, align 8, !tbaa !3
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body, %entry
  %cmp848 = icmp sgt i32 %ny, 0
  br i1 %cmp848, label %for.body9.lr.ph, label %for.cond16.preheader

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %4 = load i32** %nny, align 8, !tbaa !3
  br label %for.body9

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %5 = trunc i64 %indvars.iv54 to i32
  %rem = srem i32 %5, %nx
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv54
  store i32 %rem, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next55 = add i64 %indvars.iv54, 1
  %6 = trunc i64 %indvars.iv.next55 to i32
  %cmp = icmp slt i32 %6, %mul
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond16.preheader:                             ; preds = %for.body9, %for.cond6.preheader
  %cmp1846 = icmp sgt i32 %nz, 0
  br i1 %cmp1846, label %for.body19, label %for.end25

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv52 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next53, %for.body9 ]
  %7 = trunc i64 %indvars.iv52 to i32
  %rem10 = srem i32 %7, %ny
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %indvars.iv52
  store i32 %rem10, i32* %arrayidx12, align 4, !tbaa !0
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %8 = trunc i64 %indvars.iv.next53 to i32
  %cmp8 = icmp slt i32 %8, %mul1
  br i1 %cmp8, label %for.body9, label %for.cond16.preheader

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond16.preheader ]
  %9 = trunc i64 %indvars.iv to i32
  %rem20 = srem i32 %9, %nz
  %arrayidx22 = getelementptr inbounds i32* %2, i64 %indvars.iv
  store i32 %rem20, i32* %arrayidx22, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %10, %mul3
  br i1 %cmp18, label %for.body19, label %for.end25

for.end25:                                        ; preds = %for.body19, %for.cond16.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @do_poisson(%struct._IO_FILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture %cr, %struct.t_nrnb* %nrnb, i32* nocapture %nit, i32 %bOld) #0 {
entry:
  %.b53 = load i1* @do_poisson.bFirst, align 1
  br i1 %.b53, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  %.pre57 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  br label %if.end18

if.then:                                          ; preds = %entry
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %0 = load i32* %userint1, align 4, !tbaa !0
  store i32 %0, i32* @do_poisson.maxnit, align 4, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %log)
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %2 = load i32* %nkx, align 4, !tbaa !0
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %3 = load i32* %nky, align 4, !tbaa !0
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %4 = load i32* %nkz, align 4, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #4
  %5 = load i32* %nkx, align 4, !tbaa !0
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32* %nky, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %6, 4
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load i32* %nkz, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %7, 4
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #4
  %.pre = load i32* %nkx, align 4, !tbaa !0
  %.pre55 = load i32* %nky, align 4, !tbaa !0
  %.pre56 = load i32* %nkz, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then8, %lor.lhs.false5
  %8 = phi i32 [ %.pre56, %if.then8 ], [ %7, %lor.lhs.false5 ]
  %9 = phi i32 [ %.pre55, %if.then8 ], [ %6, %lor.lhs.false5 ]
  %10 = phi i32 [ %.pre, %if.then8 ], [ %5, %lor.lhs.false5 ]
  %call12 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %10, i32 %9, i32 %8) #6
  store %struct.t_PSgrid* %call12, %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !3
  %11 = load i32* %nkx, align 4, !tbaa !0
  %12 = load i32* %nky, align 4, !tbaa !0
  %13 = load i32* %nkz, align 4, !tbaa !0
  %call16 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %11, i32 %12, i32 %13) #6
  store %struct.t_PSgrid* %call16, %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %14 = load float* %rcoulomb_switch, align 4, !tbaa !4
  store float %14, float* @do_poisson.r1, align 4, !tbaa !4
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %15 = load float* %rcoulomb, align 4, !tbaa !4
  store float %15, float* @do_poisson.rc, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [3 x float]* @do_poisson.beta, i64 0, i64 %indvars.iv
  store float 0x3FFD9999A0000000, float* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end18, label %for.body

if.end18:                                         ; preds = %for.body, %entry.if.end18_crit_edge
  %16 = phi %struct.t_PSgrid* [ %.pre57, %entry.if.end18_crit_edge ], [ %call16, %for.body ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %16) #6
  %17 = load float* @do_poisson.rc, align 4, !tbaa !4
  %18 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  %19 = load float* @do_poisson.r1, align 4, !tbaa !4
  tail call void @spread_q_poisson(%struct._IO_FILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %17, %struct.t_PSgrid* %18, %struct.t_nrnb* %nrnb, i32 %bOld, float %19) #4
  %20 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %21 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  tail call void @symmetrize_PSgrid(%struct._IO_FILE* %20, %struct.t_PSgrid* %21, float 0.000000e+00) #6
  %.b = load i1* @do_poisson.bFirst, align 1
  br i1 %.b, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end18
  %22 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !3
  %23 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  tail call void @copy_PSgrid(%struct.t_PSgrid* %22, %struct.t_PSgrid* %23) #6
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %if.then20
  %24 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !3
  %25 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !3
  %26 = load i32* @do_poisson.maxnit, align 4, !tbaa !0
  %call22 = tail call i32 @solve_poisson(%struct._IO_FILE* %log, %struct.t_PSgrid* %24, %struct.t_PSgrid* %25, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %26, float 0x3F847AE140000000, float* %box) #4
  store i32 %call22, i32* %nit, align 4, !tbaa !0
  %27 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %28 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !3
  tail call void @symmetrize_PSgrid(%struct._IO_FILE* %27, %struct.t_PSgrid* %28, float 0.000000e+00) #6
  %29 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !3
  %call23 = tail call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %29, float* getelementptr inbounds ([3 x float]* @do_poisson.beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #4
  store i1 true, i1* @do_poisson.bFirst, align 1
  ret float %call23
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @spread_q_poisson(%struct._IO_FILE*, i32, i32, i32, [3 x float]*, float*, float*, float, %struct.t_PSgrid*, %struct.t_nrnb*, i32, float) #1

; Function Attrs: optsize
declare i32 @solve_poisson(%struct._IO_FILE*, %struct.t_PSgrid*, %struct.t_PSgrid*, i32, %struct.t_nrnb*, i32, float, float*) #1

; Function Attrs: optsize
declare float @ps_gather_f(%struct._IO_FILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_PSgrid*, float*, %struct.t_nrnb*) #1

; Function Attrs: nounwind optsize uwtable
define float @do_optimize_poisson(%struct._IO_FILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture %cr, %struct.t_nrnb* %nrnb, [3 x float]* %f_ref, float* %phi_ref, float* %beta, i32 %bOld) #0 {
entry:
  %rmsf = alloca [21 x [21 x [21 x float]]], align 16
  %buf = alloca [128 x i8], align 16
  %0 = bitcast [21 x [21 x [21 x float]]]* %rmsf to i8*
  call void @llvm.lifetime.start(i64 37044, i8* %0) #3
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #3
  %.b = load i1* @do_optimize_poisson.bFirst, align 1
  br i1 %.b, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  %.pre346 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  br label %if.end18

if.then:                                          ; preds = %entry
  %userint1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %2 = load i32* %userint1, align 4, !tbaa !0
  store i32 %2, i32* @do_optimize_poisson.maxnit, align 4, !tbaa !0
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %log)
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %4 = load i32* %nkx, align 4, !tbaa !0
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %5 = load i32* %nky, align 4, !tbaa !0
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %6 = load i32* %nkz, align 4, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %5, i32 %6) #4
  %7 = load i32* %nkx, align 4, !tbaa !0
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i32* %nky, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %8, 4
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i32* %nkz, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %9, 4
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #4
  %.pre = load i32* %nkx, align 4, !tbaa !0
  %.pre344 = load i32* %nky, align 4, !tbaa !0
  %.pre345 = load i32* %nkz, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then8, %lor.lhs.false5
  %10 = phi i32 [ %.pre345, %if.then8 ], [ %9, %lor.lhs.false5 ]
  %11 = phi i32 [ %.pre344, %if.then8 ], [ %8, %lor.lhs.false5 ]
  %12 = phi i32 [ %.pre, %if.then8 ], [ %7, %lor.lhs.false5 ]
  %call12 = call %struct.t_PSgrid* @mk_PSgrid(i32 %12, i32 %11, i32 %10) #6
  store %struct.t_PSgrid* %call12, %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  %13 = load i32* %nkx, align 4, !tbaa !0
  %14 = load i32* %nky, align 4, !tbaa !0
  %15 = load i32* %nkz, align 4, !tbaa !0
  %call16 = call %struct.t_PSgrid* @mk_PSgrid(i32 %13, i32 %14, i32 %15) #6
  store %struct.t_PSgrid* %call16, %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %16 = load float* %rcoulomb_switch, align 4, !tbaa !4
  store float %16, float* @do_optimize_poisson.r1, align 4, !tbaa !4
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %17 = load float* %rcoulomb, align 4, !tbaa !4
  store float %17, float* @do_optimize_poisson.rc, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv340 = phi i64 [ 0, %if.end ], [ %indvars.iv.next341, %for.body ]
  %arrayidx = getelementptr inbounds float* %beta, i64 %indvars.iv340
  store float 0x3FF5555560000000, float* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next341 = add i64 %indvars.iv340, 1
  %lftr.wideiv342 = trunc i64 %indvars.iv.next341 to i32
  %exitcond343 = icmp eq i32 %lftr.wideiv342, 3
  br i1 %exitcond343, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i1 true, i1* @do_optimize_poisson.bFirst, align 1
  br label %if.end18

if.end18:                                         ; preds = %entry.if.end18_crit_edge, %for.end
  %18 = phi %struct.t_PSgrid* [ %.pre346, %entry.if.end18_crit_edge ], [ %call16, %for.end ]
  call void @clear_PSgrid(%struct.t_PSgrid* %18) #6
  %19 = load float* @do_optimize_poisson.rc, align 4, !tbaa !4
  %20 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  %21 = load float* @do_optimize_poisson.r1, align 4, !tbaa !4
  call void @spread_q_poisson(%struct._IO_FILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %19, %struct.t_PSgrid* %20, %struct.t_nrnb* %nrnb, i32 %bOld, float %21) #4
  %22 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  call void @symmetrize_PSgrid(%struct._IO_FILE* %log, %struct.t_PSgrid* %22, float 0.000000e+00) #6
  %23 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  %24 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  call void @copy_PSgrid(%struct.t_PSgrid* %23, %struct.t_PSgrid* %24) #6
  %25 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  %26 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !3
  %27 = load i32* @do_optimize_poisson.maxnit, align 4, !tbaa !0
  %call22 = call i32 @solve_poisson(%struct._IO_FILE* %log, %struct.t_PSgrid* %25, %struct.t_PSgrid* %26, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %27, float 0x3F847AE140000000, float* %box) #4
  %28 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  call void @symmetrize_PSgrid(%struct._IO_FILE* %log, %struct.t_PSgrid* %28, float 0.000000e+00) #6
  %arrayidx36 = getelementptr inbounds float* %beta, i64 1
  %arrayidx45 = getelementptr inbounds float* %beta, i64 2
  %cmp47304 = icmp sgt i32 %natoms, 0
  br label %for.body25

for.body25:                                       ; preds = %for.inc76, %if.end18
  %indvars.iv336 = phi i64 [ 0, %if.end18 ], [ %indvars.iv.next337, %for.inc76 ]
  %29 = trunc i64 %indvars.iv336 to i32
  %conv = sitofp i32 %29 to double
  %mul = fmul double %conv, 2.500000e-02
  %add = fadd double %mul, 1.600000e+00
  %conv26 = fptrunc double %add to float
  store float %conv26, float* %beta, align 4, !tbaa !4
  br label %for.body31

for.body31:                                       ; preds = %for.inc73, %for.body25
  %indvars.iv332 = phi i64 [ 0, %for.body25 ], [ %indvars.iv.next333, %for.inc73 ]
  %30 = trunc i64 %indvars.iv332 to i32
  %conv32 = sitofp i32 %30 to double
  %mul33 = fmul double %conv32, 2.500000e-02
  %add34 = fadd double %mul33, 1.600000e+00
  %conv35 = fptrunc double %add34 to float
  store float %conv35, float* %arrayidx36, align 4, !tbaa !4
  br label %for.body40

for.body40:                                       ; preds = %for.end56, %for.body31
  %indvars.iv328 = phi i64 [ 0, %for.body31 ], [ %indvars.iv.next329, %for.end56 ]
  %31 = trunc i64 %indvars.iv328 to i32
  %conv41 = sitofp i32 %31 to double
  %mul42 = fmul double %conv41, 2.500000e-02
  %add43 = fadd double %mul42, 1.600000e+00
  %conv44 = fptrunc double %add43 to float
  store float %conv44, float* %arrayidx45, align 4, !tbaa !4
  br i1 %cmp47304, label %for.body49, label %for.end56

for.body49:                                       ; preds = %for.body40, %for.body49
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %for.body49 ], [ 0, %for.body40 ]
  %arrayidx51 = getelementptr inbounds float* %phi, i64 %indvars.iv323
  store float 0.000000e+00, float* %arrayidx51, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !4
  %arrayidx1.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv323, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !4
  %indvars.iv.next324 = add i64 %indvars.iv323, 1
  %lftr.wideiv325 = trunc i64 %indvars.iv.next324 to i32
  %exitcond326 = icmp eq i32 %lftr.wideiv325, %natoms
  br i1 %exitcond326, label %for.end56, label %for.body49

for.end56:                                        ; preds = %for.body49, %for.body40
  %32 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  %call57 = call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %32, float* %beta, %struct.t_nrnb* %nrnb) #4
  %33 = load float* %beta, align 4, !tbaa !4
  %conv60 = fpext float %33 to double
  %call61 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), double %conv60) #4
  %call63 = call float @analyse_diff(%struct._IO_FILE* %log, i8* %1, i32 %natoms, [3 x float]* %f_ref, [3 x float]* %f, float* %phi_ref, float* %phi, float* null, i8* null, i8* null, i8* null, i8* null) #4
  %arrayidx69 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv336, i64 %indvars.iv332, i64 %indvars.iv328
  store float %call63, float* %arrayidx69, align 4, !tbaa !4
  %indvars.iv.next329 = add i64 %indvars.iv328, 1
  %lftr.wideiv330 = trunc i64 %indvars.iv.next329 to i32
  %exitcond331 = icmp eq i32 %lftr.wideiv330, 21
  br i1 %exitcond331, label %for.inc73, label %for.body40

for.inc73:                                        ; preds = %for.end56
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %lftr.wideiv334 = trunc i64 %indvars.iv.next333 to i32
  %exitcond335 = icmp eq i32 %lftr.wideiv334, 21
  br i1 %exitcond335, label %for.inc76, label %for.body31

for.inc76:                                        ; preds = %for.inc73
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %lftr.wideiv338 = trunc i64 %indvars.iv.next337 to i32
  %exitcond339 = icmp eq i32 %lftr.wideiv338, 21
  br i1 %exitcond339, label %for.end78, label %for.body25

for.end78:                                        ; preds = %for.inc76
  %arrayidx81 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 0, i64 0, i64 0
  %34 = load float* %arrayidx81, align 16, !tbaa !4
  br label %for.body88

for.body88:                                       ; preds = %for.inc139, %for.end78
  %indvars.iv319 = phi i64 [ 0, %for.end78 ], [ %indvars.iv.next320, %for.inc139 ]
  %rmsf_min.0303 = phi float [ %34, %for.end78 ], [ %rmsf_min.3, %for.inc139 ]
  %bx.1302 = phi i32 [ 0, %for.end78 ], [ %inc140, %for.inc139 ]
  %minimum.sroa.2.0301 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.2.3, %for.inc139 ]
  %minimum.sroa.0.0300 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.0.3, %for.inc139 ]
  %minimum.sroa.1.0299 = phi i32 [ 0, %for.end78 ], [ %minimum.sroa.1.3, %for.inc139 ]
  %35 = trunc i64 %indvars.iv319 to i32
  %conv89 = sitofp i32 %35 to double
  %mul90 = fmul double %conv89, 2.500000e-02
  %add91 = fadd double %mul90, 1.600000e+00
  %conv92 = fptrunc double %add91 to float
  store float %conv92, float* %beta, align 4, !tbaa !4
  br label %for.body97

for.body97:                                       ; preds = %for.inc136, %for.body88
  %indvars.iv315 = phi i64 [ 0, %for.body88 ], [ %indvars.iv.next316, %for.inc136 ]
  %rmsf_min.1298 = phi float [ %rmsf_min.0303, %for.body88 ], [ %rmsf_min.3, %for.inc136 ]
  %by.1297 = phi i32 [ 0, %for.body88 ], [ %inc137, %for.inc136 ]
  %minimum.sroa.2.1296 = phi i32 [ %minimum.sroa.2.0301, %for.body88 ], [ %minimum.sroa.2.3, %for.inc136 ]
  %minimum.sroa.0.1295 = phi i32 [ %minimum.sroa.0.0300, %for.body88 ], [ %minimum.sroa.0.3, %for.inc136 ]
  %minimum.sroa.1.1294 = phi i32 [ %minimum.sroa.1.0299, %for.body88 ], [ %minimum.sroa.1.3, %for.inc136 ]
  %36 = trunc i64 %indvars.iv315 to i32
  %conv98 = sitofp i32 %36 to double
  %mul99 = fmul double %conv98, 2.500000e-02
  %add100 = fadd double %mul99, 1.600000e+00
  %conv101 = fptrunc double %add100 to float
  store float %conv101, float* %arrayidx36, align 4, !tbaa !4
  br label %for.body106

for.body106:                                      ; preds = %for.inc133.for.body106_crit_edge, %for.body97
  %37 = phi float [ %conv101, %for.body97 ], [ %.pre347, %for.inc133.for.body106_crit_edge ]
  %indvars.iv311 = phi i64 [ 0, %for.body97 ], [ %indvars.iv.next312, %for.inc133.for.body106_crit_edge ]
  %rmsf_min.2293 = phi float [ %rmsf_min.1298, %for.body97 ], [ %rmsf_min.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.2.2291 = phi i32 [ %minimum.sroa.2.1296, %for.body97 ], [ %minimum.sroa.2.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.0.2290 = phi i32 [ %minimum.sroa.0.1295, %for.body97 ], [ %minimum.sroa.0.3, %for.inc133.for.body106_crit_edge ]
  %minimum.sroa.1.2289 = phi i32 [ %minimum.sroa.1.1294, %for.body97 ], [ %minimum.sroa.1.3, %for.inc133.for.body106_crit_edge ]
  %38 = trunc i64 %indvars.iv311 to i32
  %conv107 = sitofp i32 %38 to double
  %mul108 = fmul double %conv107, 2.500000e-02
  %add109 = fadd double %mul108, 1.600000e+00
  %conv110 = fptrunc double %add109 to float
  store float %conv110, float* %arrayidx45, align 4, !tbaa !4
  %arrayidx117 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv319, i64 %indvars.iv315, i64 %indvars.iv311
  %39 = load float* %arrayidx117, align 4, !tbaa !4
  %40 = load float* %beta, align 4, !tbaa !4
  %conv119 = fpext float %40 to double
  %conv121 = fpext float %37 to double
  %conv123 = fpext float %conv110 to double
  %conv124 = fpext float %39 to double
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), double %conv119, double %conv121, double %conv123, double %conv124) #4
  %cmp126 = fcmp olt float %39, %rmsf_min.2293
  br i1 %cmp126, label %if.then128, label %for.inc133

if.then128:                                       ; preds = %for.body106
  br label %for.inc133

for.inc133:                                       ; preds = %for.body106, %if.then128
  %minimum.sroa.1.3 = phi i32 [ %by.1297, %if.then128 ], [ %minimum.sroa.1.2289, %for.body106 ]
  %minimum.sroa.0.3 = phi i32 [ %bx.1302, %if.then128 ], [ %minimum.sroa.0.2290, %for.body106 ]
  %minimum.sroa.2.3 = phi i32 [ %38, %if.then128 ], [ %minimum.sroa.2.2291, %for.body106 ]
  %rmsf_min.3 = phi float [ %39, %if.then128 ], [ %rmsf_min.2293, %for.body106 ]
  %indvars.iv.next312 = add i64 %indvars.iv311, 1
  %lftr.wideiv313 = trunc i64 %indvars.iv.next312 to i32
  %exitcond314 = icmp eq i32 %lftr.wideiv313, 21
  br i1 %exitcond314, label %for.inc136, label %for.inc133.for.body106_crit_edge

for.inc133.for.body106_crit_edge:                 ; preds = %for.inc133
  %.pre347 = load float* %arrayidx36, align 4, !tbaa !4
  br label %for.body106

for.inc136:                                       ; preds = %for.inc133
  %indvars.iv.next316 = add i64 %indvars.iv315, 1
  %inc137 = add nsw i32 %by.1297, 1
  %lftr.wideiv317 = trunc i64 %indvars.iv.next316 to i32
  %exitcond318 = icmp eq i32 %lftr.wideiv317, 21
  br i1 %exitcond318, label %for.inc139, label %for.body97

for.inc139:                                       ; preds = %for.inc136
  %indvars.iv.next320 = add i64 %indvars.iv319, 1
  %inc140 = add nsw i32 %bx.1302, 1
  %lftr.wideiv321 = trunc i64 %indvars.iv.next320 to i32
  %exitcond322 = icmp eq i32 %lftr.wideiv321, 21
  br i1 %exitcond322, label %for.end141, label %for.body88

for.end141:                                       ; preds = %for.inc139
  %conv143 = sitofp i32 %minimum.sroa.0.3 to double
  %mul144 = fmul double %conv143, 2.500000e-02
  %add145 = fadd double %mul144, 1.600000e+00
  %conv146 = fptrunc double %add145 to float
  store float %conv146, float* %beta, align 4, !tbaa !4
  %conv149 = sitofp i32 %minimum.sroa.1.3 to double
  %mul150 = fmul double %conv149, 2.500000e-02
  %add151 = fadd double %mul150, 1.600000e+00
  %conv152 = fptrunc double %add151 to float
  store float %conv152, float* %arrayidx36, align 4, !tbaa !4
  %conv155 = sitofp i32 %minimum.sroa.2.3 to double
  %mul156 = fmul double %conv155, 2.500000e-02
  %add157 = fadd double %mul156, 1.600000e+00
  %conv158 = fptrunc double %add157 to float
  store float %conv158, float* %arrayidx45, align 4, !tbaa !4
  %conv160 = fpext float %rmsf_min.3 to double
  %conv162 = fpext float %conv146 to double
  %conv164 = fpext float %conv152 to double
  %conv166 = fpext float %conv158 to double
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %conv160, double %conv162, double %conv164, double %conv166) #4
  br i1 %cmp47304, label %for.body171, label %for.end179

for.body171:                                      ; preds = %for.end141, %for.body171
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body171 ], [ 0, %for.end141 ]
  %arrayidx173 = getelementptr inbounds float* %phi, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx173, align 4, !tbaa !4
  %arraydecay176 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  store float 0.000000e+00, float* %arraydecay176, align 4, !tbaa !4
  %arrayidx1.i285 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  store float 0.000000e+00, float* %arrayidx1.i285, align 4, !tbaa !4
  %arrayidx2.i286 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  store float 0.000000e+00, float* %arrayidx2.i286, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end179, label %for.body171

for.end179:                                       ; preds = %for.body171, %for.end141
  %41 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !3
  %call180 = call float @ps_gather_f(%struct._IO_FILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %41, float* %beta, %struct.t_nrnb* %nrnb) #4
  call void @llvm.lifetime.end(i64 128, i8* %1) #3
  call void @llvm.lifetime.end(i64 37044, i8* %0) #3
  ret float %call180
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare float @analyse_diff(%struct._IO_FILE*, i8*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
