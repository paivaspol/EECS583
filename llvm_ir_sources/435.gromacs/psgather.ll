; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/psgather.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@ps_gather_f.bFirst = internal unnamed_addr global i1 false
@ps_gather_f.nnx = internal global i32* null, align 8
@ps_gather_f.nny = internal global i32* null, align 8
@ps_gather_f.nnz = internal global i32* null, align 8
@ps_gather_f.JCXYZ = internal global [81 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [57 x i8] c"Gathering Forces using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"beta = %10g,%10g,%10g\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"c1   = %10g,%10g,%10g\0A\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"c2   = %10g,%10g,%10g\0A\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @ps_gather_inner(i32* nocapture %JCXYZ, float* nocapture %WXYZ, i32* nocapture %ixw, i32* nocapture %iyw, i32* nocapture %izw, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float*** nocapture %ptr) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv243 = phi i64 [ 0, %entry ], [ %indvars.iv.next244, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %pi.0242 = phi float [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %fX.0241 = phi float [ 0.000000e+00, %entry ], [ %add62, %for.body ]
  %fY.0240 = phi float [ 0.000000e+00, %entry ], [ %add105, %for.body ]
  %fZ.0239 = phi float [ 0.000000e+00, %entry ], [ %add148, %for.body ]
  %arrayidx = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv243
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %1 = add nsw i64 %indvars.iv243, 1
  %arrayidx2 = getelementptr inbounds i32* %JCXYZ, i64 %1
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
  %3 = add nsw i64 %indvars.iv243, 2
  %arrayidx5 = getelementptr inbounds i32* %JCXYZ, i64 %3
  %4 = load i32* %arrayidx5, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv
  %5 = load float* %arrayidx7, align 4, !tbaa !3
  %idxprom8 = sext i32 %0 to i64
  %arrayidx9 = getelementptr inbounds i32* %ixw, i64 %idxprom8
  %6 = load i32* %arrayidx9, align 4, !tbaa !0
  %idxprom10 = sext i32 %2 to i64
  %arrayidx11 = getelementptr inbounds i32* %iyw, i64 %idxprom10
  %7 = load i32* %arrayidx11, align 4, !tbaa !0
  %idxprom12 = sext i32 %4 to i64
  %arrayidx13 = getelementptr inbounds i32* %izw, i64 %idxprom12
  %8 = load i32* %arrayidx13, align 4, !tbaa !0
  %idxprom14 = sext i32 %8 to i64
  %idxprom15 = sext i32 %7 to i64
  %idxprom16 = sext i32 %6 to i64
  %arrayidx17 = getelementptr inbounds float*** %ptr, i64 %idxprom16
  %9 = load float*** %arrayidx17, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds float** %9, i64 %idxprom15
  %10 = load float** %arrayidx18, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds float* %10, i64 %idxprom14
  %11 = load float* %arrayidx19, align 4, !tbaa !3
  %mul = fmul float %5, %11
  %add20 = fadd float %pi.0242, %mul
  %sub = add nsw i32 %0, -1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i32* %ixw, i64 %idxprom23
  %12 = load i32* %arrayidx24, align 4, !tbaa !0
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds float*** %ptr, i64 %idxprom25
  %13 = load float*** %arrayidx26, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds float** %13, i64 %idxprom15
  %14 = load float** %arrayidx27, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds float* %14, i64 %idxprom14
  %15 = load float* %arrayidx28, align 4, !tbaa !3
  %add31 = add nsw i32 %0, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i32* %ixw, i64 %idxprom32
  %16 = load i32* %arrayidx33, align 4, !tbaa !0
  %idxprom34 = sext i32 %16 to i64
  %arrayidx35 = getelementptr inbounds float*** %ptr, i64 %idxprom34
  %17 = load float*** %arrayidx35, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds float** %17, i64 %idxprom15
  %18 = load float** %arrayidx36, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds float* %18, i64 %idxprom14
  %19 = load float* %arrayidx37, align 4, !tbaa !3
  %sub38 = fsub float %15, %19
  %mul39 = fmul float %sub38, %c1x
  %sub42 = add nsw i32 %0, -2
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds i32* %ixw, i64 %idxprom43
  %20 = load i32* %arrayidx44, align 4, !tbaa !0
  %idxprom45 = sext i32 %20 to i64
  %arrayidx46 = getelementptr inbounds float*** %ptr, i64 %idxprom45
  %21 = load float*** %arrayidx46, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds float** %21, i64 %idxprom15
  %22 = load float** %arrayidx47, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds float* %22, i64 %idxprom14
  %23 = load float* %arrayidx48, align 4, !tbaa !3
  %add51 = add nsw i32 %0, 2
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds i32* %ixw, i64 %idxprom52
  %24 = load i32* %arrayidx53, align 4, !tbaa !0
  %idxprom54 = sext i32 %24 to i64
  %arrayidx55 = getelementptr inbounds float*** %ptr, i64 %idxprom54
  %25 = load float*** %arrayidx55, align 8, !tbaa !4
  %arrayidx56 = getelementptr inbounds float** %25, i64 %idxprom15
  %26 = load float** %arrayidx56, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds float* %26, i64 %idxprom14
  %27 = load float* %arrayidx57, align 4, !tbaa !3
  %sub58 = fsub float %23, %27
  %mul59 = fmul float %sub58, %c2x
  %add60 = fadd float %mul39, %mul59
  %mul61 = fmul float %5, %add60
  %add62 = fadd float %fX.0241, %mul61
  %sub64 = add nsw i32 %2, -1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds i32* %iyw, i64 %idxprom65
  %28 = load i32* %arrayidx66, align 4, !tbaa !0
  %idxprom67 = sext i32 %28 to i64
  %arrayidx70 = getelementptr inbounds float** %9, i64 %idxprom67
  %29 = load float** %arrayidx70, align 8, !tbaa !4
  %arrayidx71 = getelementptr inbounds float* %29, i64 %idxprom14
  %30 = load float* %arrayidx71, align 4, !tbaa !3
  %add73 = add nsw i32 %2, 1
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds i32* %iyw, i64 %idxprom74
  %31 = load i32* %arrayidx75, align 4, !tbaa !0
  %idxprom76 = sext i32 %31 to i64
  %arrayidx79 = getelementptr inbounds float** %9, i64 %idxprom76
  %32 = load float** %arrayidx79, align 8, !tbaa !4
  %arrayidx80 = getelementptr inbounds float* %32, i64 %idxprom14
  %33 = load float* %arrayidx80, align 4, !tbaa !3
  %sub81 = fsub float %30, %33
  %mul82 = fmul float %sub81, %c1y
  %sub84 = add nsw i32 %2, -2
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i32* %iyw, i64 %idxprom85
  %34 = load i32* %arrayidx86, align 4, !tbaa !0
  %idxprom87 = sext i32 %34 to i64
  %arrayidx90 = getelementptr inbounds float** %9, i64 %idxprom87
  %35 = load float** %arrayidx90, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds float* %35, i64 %idxprom14
  %36 = load float* %arrayidx91, align 4, !tbaa !3
  %add93 = add nsw i32 %2, 2
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i32* %iyw, i64 %idxprom94
  %37 = load i32* %arrayidx95, align 4, !tbaa !0
  %idxprom96 = sext i32 %37 to i64
  %arrayidx99 = getelementptr inbounds float** %9, i64 %idxprom96
  %38 = load float** %arrayidx99, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds float* %38, i64 %idxprom14
  %39 = load float* %arrayidx100, align 4, !tbaa !3
  %sub101 = fsub float %36, %39
  %mul102 = fmul float %sub101, %c2y
  %add103 = fadd float %mul82, %mul102
  %mul104 = fmul float %5, %add103
  %add105 = fadd float %fY.0240, %mul104
  %sub106 = add nsw i32 %4, -1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds i32* %izw, i64 %idxprom107
  %40 = load i32* %arrayidx108, align 4, !tbaa !0
  %idxprom109 = sext i32 %40 to i64
  %arrayidx114 = getelementptr inbounds float* %10, i64 %idxprom109
  %41 = load float* %arrayidx114, align 4, !tbaa !3
  %add115 = add nsw i32 %4, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds i32* %izw, i64 %idxprom116
  %42 = load i32* %arrayidx117, align 4, !tbaa !0
  %idxprom118 = sext i32 %42 to i64
  %arrayidx123 = getelementptr inbounds float* %10, i64 %idxprom118
  %43 = load float* %arrayidx123, align 4, !tbaa !3
  %sub124 = fsub float %41, %43
  %mul125 = fmul float %sub124, %c1z
  %sub126 = add nsw i32 %4, -2
  %idxprom127 = sext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds i32* %izw, i64 %idxprom127
  %44 = load i32* %arrayidx128, align 4, !tbaa !0
  %idxprom129 = sext i32 %44 to i64
  %arrayidx134 = getelementptr inbounds float* %10, i64 %idxprom129
  %45 = load float* %arrayidx134, align 4, !tbaa !3
  %add135 = add nsw i32 %4, 2
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds i32* %izw, i64 %idxprom136
  %46 = load i32* %arrayidx137, align 4, !tbaa !0
  %idxprom138 = sext i32 %46 to i64
  %arrayidx143 = getelementptr inbounds float* %10, i64 %idxprom138
  %47 = load float* %arrayidx143, align 4, !tbaa !3
  %sub144 = fsub float %45, %47
  %mul145 = fmul float %sub144, %c2z
  %add146 = fadd float %mul125, %mul145
  %mul147 = fmul float %5, %add146
  %add148 = fadd float %fZ.0239, %mul147
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next244 = add i64 %indvars.iv243, 3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 27
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %mul150 = fmul float %add62, %qi
  %48 = load float* %f, align 4, !tbaa !3
  %add152 = fadd float %mul150, %48
  store float %add152, float* %f, align 4, !tbaa !3
  %mul153 = fmul float %add105, %qi
  %arrayidx154 = getelementptr inbounds float* %f, i64 1
  %49 = load float* %arrayidx154, align 4, !tbaa !3
  %add155 = fadd float %mul153, %49
  store float %add155, float* %arrayidx154, align 4, !tbaa !3
  %mul156 = fmul float %add148, %qi
  %arrayidx157 = getelementptr inbounds float* %f, i64 2
  %50 = load float* %arrayidx157, align 4, !tbaa !3
  %add158 = fadd float %mul156, %50
  store float %add158, float* %arrayidx157, align 4, !tbaa !3
  ret float %add20
}

; Function Attrs: nounwind optsize uwtable
define float @ps_gather_f(%struct._IO_FILE* nocapture %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %f, float* nocapture %charge, float* %box, float* nocapture %pot, %struct.t_PSgrid* %grid, float* nocapture %beta, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %ixyz = alloca [3 x i32], align 4
  %invh = alloca [3 x float], align 4
  %c1 = alloca [3 x float], align 4
  %c2 = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixw = alloca [7 x i32], align 16
  %iyw = alloca [7 x i32], align 16
  %izw = alloca [7 x i32], align 16
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %ptr = alloca float***, align 8
  %0 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %0) #1
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %ptr) #4
  %1 = load i32* %nx, align 4, !tbaa !0
  %2 = load i32* %ny, align 4, !tbaa !0
  %3 = load i32* %nz, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %conv.i = sitofp i32 %1 to float
  %4 = load float* %box, align 4, !tbaa !3
  %div.i = fdiv float %conv.i, %4
  store float %div.i, float* %arraydecay, align 4, !tbaa !3
  %conv2.i = sitofp i32 %2 to float
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %5 = load float* %arrayidx3.i, align 4, !tbaa !3
  %div4.i = fdiv float %conv2.i, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %div4.i, float* %arrayidx5.i, align 4, !tbaa !3
  %conv6.i = sitofp i32 %3 to float
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2
  %6 = load float* %arrayidx7.i, align 4, !tbaa !3
  %div8.i = fdiv float %conv6.i, %6
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %div8.i, float* %arrayidx9.i, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %7 = phi float [ %div.i, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv220 = phi i64 [ 0, %entry ], [ %indvars.iv.next221, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds float* %beta, i64 %indvars.iv220
  %8 = load float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %8 to double
  %div = fmul double %conv, 5.000000e-01
  %conv4 = fpext float %7 to double
  %mul = fmul double %div, %conv4
  %conv5 = fptrunc double %mul to float
  %arrayidx7 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv220
  store float %conv5, float* %arrayidx7, align 4, !tbaa !3
  %sub = fsub double 1.000000e+00, %conv
  %div11 = fmul double %sub, 2.500000e-01
  %mul15 = fmul double %conv4, %div11
  %conv16 = fptrunc double %mul15 to float
  %arrayidx18 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv220
  store float %conv16, float* %arrayidx18, align 4, !tbaa !3
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32
  %exitcond223 = icmp eq i32 %lftr.wideiv222, 3
  br i1 %exitcond223, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx3.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next221
  %.pre = load float* %arrayidx3.phi.trans.insert, align 4, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body
  %ixw202 = bitcast [7 x i32]* %ixw to i8*
  %iyw205 = bitcast [7 x i32]* %iyw to i8*
  %izw209 = bitcast [7 x i32]* %izw to i8*
  %arrayidx19 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0
  %9 = load float* %arrayidx19, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1
  %10 = load float* %arrayidx20, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2
  %11 = load float* %arrayidx21, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0
  %12 = load float* %arrayidx22, align 4, !tbaa !3
  %arrayidx23 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1
  %13 = load float* %arrayidx23, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2
  %14 = load float* %arrayidx24, align 4, !tbaa !3
  %.b = load i1* @ps_gather_f.bFirst, align 1
  br i1 %.b, label %for.cond76.preheader, label %if.then

if.then:                                          ; preds = %for.end
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #4
  %15 = load float* %beta, align 4, !tbaa !3
  %conv26 = fpext float %15 to double
  %arrayidx27 = getelementptr inbounds float* %beta, i64 1
  %16 = load float* %arrayidx27, align 4, !tbaa !3
  %conv28 = fpext float %16 to double
  %arrayidx29 = getelementptr inbounds float* %beta, i64 2
  %17 = load float* %arrayidx29, align 4, !tbaa !3
  %conv30 = fpext float %17 to double
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), double %conv26, double %conv28, double %conv30) #4
  %conv33 = fpext float %9 to double
  %conv35 = fpext float %10 to double
  %conv37 = fpext float %11 to double
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %conv33, double %conv35, double %conv37) #4
  %conv40 = fpext float %12 to double
  %conv42 = fpext float %13 to double
  %conv44 = fpext float %14 to double
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %conv40, double %conv42, double %conv44) #4
  %18 = load float* %arraydecay, align 4, !tbaa !3
  %conv47 = fpext float %18 to double
  %19 = load float* %arrayidx5.i, align 4, !tbaa !3
  %conv49 = fpext float %19 to double
  %20 = load float* %arrayidx9.i, align 4, !tbaa !3
  %conv51 = fpext float %20 to double
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), double %conv47, double %conv49, double %conv51) #4
  %21 = load i32* %nx, align 4, !tbaa !0
  %22 = load i32* %ny, align 4, !tbaa !0
  %23 = load i32* %nz, align 4, !tbaa !0
  call void @calc_nxyz(i32 %21, i32 %22, i32 %23, i32** @ps_gather_f.nnx, i32** @ps_gather_f.nny, i32** @ps_gather_f.nnz) #4
  br label %for.body56

for.body56:                                       ; preds = %for.body56, %if.then
  %indvars.iv213 = phi i64 [ 0, %if.then ], [ %indvars.iv.next214, %for.body56 ]
  %24 = trunc i64 %indvars.iv213 to i32
  %div57 = sdiv i32 %24, 9
  %add = add nsw i32 %div57, 2
  %25 = mul nsw i64 %indvars.iv213, 3
  %arrayidx60 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %25
  store i32 %add, i32* %arrayidx60, align 4, !tbaa !0
  %div61 = sdiv i32 %24, 3
  %rem = srem i32 %div61, 3
  %add62 = add nsw i32 %rem, 2
  %26 = add nsw i64 %25, 1
  %arrayidx66 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %26
  store i32 %add62, i32* %arrayidx66, align 4, !tbaa !0
  %rem67 = srem i32 %24, 3
  %add68 = add nsw i32 %rem67, 2
  %27 = add nsw i64 %25, 2
  %arrayidx72 = getelementptr inbounds [81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 %27
  store i32 %add68, i32* %arrayidx72, align 4, !tbaa !0
  %indvars.iv.next214 = add i64 %indvars.iv213, 1
  %lftr.wideiv218 = trunc i64 %indvars.iv.next214 to i32
  %exitcond219 = icmp eq i32 %lftr.wideiv218, 27
  br i1 %exitcond219, label %for.end75, label %for.body56

for.end75:                                        ; preds = %for.body56
  store i1 true, i1* @ps_gather_f.bFirst, align 1
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %for.end, %for.end75
  %cmp77190 = icmp sgt i32 %natoms, 0
  br i1 %cmp77190, label %for.body79.lr.ph, label %for.end133

for.body79.lr.ph:                                 ; preds = %for.cond76.preheader
  %arraydecay84 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %arraydecay85 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %arrayidx106 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %arraydecay120 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0
  %arraydecay121 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0
  %arraydecay122 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0
  br label %for.body79

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next, %for.body79 ]
  %energy.0191 = phi float [ 0.000000e+00, %for.body79.lr.ph ], [ %add128, %for.body79 ]
  %28 = load i32* %nx, align 4, !tbaa !0
  %29 = load i32* %ny, align 4, !tbaa !0
  %30 = load i32* %nz, align 4, !tbaa !0
  %arraydecay82 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %31 = trunc i64 %indvars.iv to i32
  call void @calc_weights(i32 %31, i32 %28, i32 %29, i32 %30, float* %arraydecay82, float* %box, float* %arraydecay, i32* %arraydecay84, float* %arraydecay85) #4
  %32 = load i32* %arraydecay84, align 4, !tbaa !0
  %33 = load i32* %nx, align 4, !tbaa !0
  %34 = load i32** @ps_gather_f.nnx, align 8, !tbaa !4
  %35 = load i32* %arrayidx98, align 4, !tbaa !0
  %36 = load i32* %ny, align 4, !tbaa !0
  %37 = load i32** @ps_gather_f.nny, align 8, !tbaa !4
  %38 = load i32* %arrayidx106, align 4, !tbaa !0
  %39 = load i32* %nz, align 4, !tbaa !0
  %40 = load i32** @ps_gather_f.nnz, align 8, !tbaa !4
  %41 = sext i32 %32 to i64
  %42 = sext i32 %33 to i64
  %43 = add i64 %41, %42
  %scevgep.sum = add i64 %43, -3
  %scevgep203 = getelementptr i32* %34, i64 %scevgep.sum
  %scevgep203204 = bitcast i32* %scevgep203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw202, i8* %scevgep203204, i64 28, i32 4, i1 false)
  %44 = sext i32 %35 to i64
  %45 = sext i32 %36 to i64
  %46 = add i64 %44, %45
  %scevgep206.sum = add i64 %46, -3
  %scevgep207 = getelementptr i32* %37, i64 %scevgep206.sum
  %scevgep207208 = bitcast i32* %scevgep207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw205, i8* %scevgep207208, i64 28, i32 4, i1 false)
  %47 = sext i32 %38 to i64
  %48 = sext i32 %39 to i64
  %49 = add i64 %47, %48
  %scevgep210.sum = add i64 %49, -3
  %scevgep211 = getelementptr i32* %40, i64 %scevgep210.sum
  %scevgep211212 = bitcast i32* %scevgep211 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw209, i8* %scevgep211212, i64 28, i32 4, i1 false)
  %arrayidx118 = getelementptr inbounds float* %charge, i64 %indvars.iv
  %50 = load float* %arrayidx118, align 4, !tbaa !3
  %arraydecay125 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %51 = load float**** %ptr, align 8, !tbaa !4
  %call126 = call float @ps_gather_inner(i32* getelementptr inbounds ([81 x i32]* @ps_gather_f.JCXYZ, i64 0, i64 0), float* %arraydecay85, i32* %arraydecay120, i32* %arraydecay121, i32* %arraydecay122, float %9, float %10, float %11, float %12, float %13, float %14, float %50, float* %arraydecay125, float*** %51) #5
  %mul127 = fmul float %50, %call126
  %add128 = fadd float %energy.0191, %mul127
  %arrayidx130 = getelementptr inbounds float* %pot, i64 %indvars.iv
  store float %call126, float* %arrayidx130, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.cond76.for.end133_crit_edge, label %for.body79

for.cond76.for.end133_crit_edge:                  ; preds = %for.body79
  %phitmp = fmul float %add128, 5.000000e-01
  br label %for.end133

for.end133:                                       ; preds = %for.cond76.for.end133_crit_edge, %for.cond76.preheader
  %energy.0.lcssa = phi float [ %phitmp, %for.cond76.for.end133_crit_edge ], [ 0.000000e+00, %for.cond76.preheader ]
  %mul134 = mul nsw i32 %natoms, 27
  %conv135 = sitofp i32 %mul134 to double
  %arrayidx136 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82
  %52 = load double* %arrayidx136, align 8, !tbaa !5
  %add137 = fadd double %conv135, %52
  store double %add137, double* %arrayidx136, align 8, !tbaa !5
  %mul138 = mul nsw i32 %natoms, 3
  %conv139 = sitofp i32 %mul138 to double
  %arrayidx141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %53 = load double* %arrayidx141, align 8, !tbaa !5
  %add142 = fadd double %conv139, %53
  store double %add142, double* %arrayidx141, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 108, i8* %0) #1
  ret float %energy.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #2

; Function Attrs: optsize
declare void @calc_weights(i32, i32, i32, i32, float*, float*, float*, i32*, float*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
