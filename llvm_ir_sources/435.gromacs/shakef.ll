; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@.str2 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/shakef.c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define void @cshake(i32* nocapture %iatom, i32 %ncon, i32* nocapture %nnit, i32 %maxnit, float* nocapture %dist2, float* nocapture %xp, float* nocapture %rij, float* nocapture %m2, float %omega, float* nocapture %invmass, float* nocapture %tt, float* nocapture %lagr, i32* nocapture %nerror) #0 {
entry:
  %notlhs284 = icmp sgt i32 %maxnit, 0
  br i1 %notlhs284, label %for.cond3.preheader.lr.ph, label %for.end171

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %cmp4277 = icmp sgt i32 %ncon, 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc169
  %nit.0285 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc170, %for.inc169 ]
  br i1 %cmp4277, label %for.body8, label %for.inc169.thread

for.inc169.thread:                                ; preds = %for.cond3.preheader
  %inc170289 = add nsw i32 %nit.0285, 1
  br label %for.end171

for.body8:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond3.preheader ]
  %nconv.1282 = phi i32 [ %nconv.2, %for.inc ], [ 0, %for.cond3.preheader ]
  %0 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %0, 3
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds float* %rij, i64 %idxprom
  %1 = load float* %arrayidx, align 4, !tbaa !0
  %add9 = add nsw i32 %mul, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds float* %rij, i64 %idxprom10
  %2 = load float* %arrayidx11, align 4, !tbaa !0
  %add12 = add nsw i32 %mul, 2
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds float* %rij, i64 %idxprom13
  %3 = load float* %arrayidx14, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %iatom, i64 %idxprom10
  %4 = load i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds i32* %iatom, i64 %idxprom13
  %5 = load i32* %arrayidx20, align 4, !tbaa !3
  %mul21 = mul nsw i32 %4, 3
  %mul22 = mul nsw i32 %5, 3
  %add24 = add nsw i32 %mul21, 1
  %add25 = add nsw i32 %mul21, 2
  %add27 = add nsw i32 %mul22, 1
  %add28 = add nsw i32 %mul22, 2
  %idxprom29 = sext i32 %mul21 to i64
  %arrayidx30 = getelementptr inbounds float* %xp, i64 %idxprom29
  %6 = load float* %arrayidx30, align 4, !tbaa !0
  %idxprom31 = sext i32 %mul22 to i64
  %arrayidx32 = getelementptr inbounds float* %xp, i64 %idxprom31
  %7 = load float* %arrayidx32, align 4, !tbaa !0
  %sub = fsub float %6, %7
  %idxprom33 = sext i32 %add24 to i64
  %arrayidx34 = getelementptr inbounds float* %xp, i64 %idxprom33
  %8 = load float* %arrayidx34, align 4, !tbaa !0
  %idxprom35 = sext i32 %add27 to i64
  %arrayidx36 = getelementptr inbounds float* %xp, i64 %idxprom35
  %9 = load float* %arrayidx36, align 4, !tbaa !0
  %sub37 = fsub float %8, %9
  %idxprom38 = sext i32 %add25 to i64
  %arrayidx39 = getelementptr inbounds float* %xp, i64 %idxprom38
  %10 = load float* %arrayidx39, align 4, !tbaa !0
  %idxprom40 = sext i32 %add28 to i64
  %arrayidx41 = getelementptr inbounds float* %xp, i64 %idxprom40
  %11 = load float* %arrayidx41, align 4, !tbaa !0
  %sub42 = fsub float %10, %11
  %mul43 = fmul float %sub, %sub
  %mul44 = fmul float %sub37, %sub37
  %add45 = fadd float %mul43, %mul44
  %mul46 = fmul float %sub42, %sub42
  %add47 = fadd float %add45, %mul46
  %arrayidx49 = getelementptr inbounds float* %dist2, i64 %indvars.iv
  %12 = load float* %arrayidx49, align 4, !tbaa !0
  %sub50 = fsub float %12, %add47
  %fabsf = tail call float @fabsf(float %sub50) #4
  %13 = fpext float %fabsf to double
  %arrayidx52 = getelementptr inbounds float* %tt, i64 %indvars.iv
  %14 = load float* %arrayidx52, align 4, !tbaa !0
  %conv53 = fpext float %14 to double
  %mul54 = fmul double %13, %conv53
  %conv55 = fptosi double %mul54 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body8
  %add58 = add nsw i32 %conv55, %nconv.1282
  %mul59 = fmul float %1, %sub
  %mul60 = fmul float %2, %sub37
  %add61 = fadd float %mul59, %mul60
  %mul62 = fmul float %3, %sub42
  %add63 = fadd float %add61, %mul62
  %mul64 = fmul float %12, 0x3EB0C6F7A0000000
  %cmp65 = fcmp olt float %add63, %mul64
  br i1 %cmp65, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then
  %mul68 = fmul float %sub50, %omega
  %arrayidx70 = getelementptr inbounds float* %m2, i64 %indvars.iv
  %15 = load float* %arrayidx70, align 4, !tbaa !0
  %mul71 = fmul float %mul68, %15
  %div = fdiv float %mul71, %add63
  %arrayidx73 = getelementptr inbounds float* %lagr, i64 %indvars.iv
  %16 = load float* %arrayidx73, align 4, !tbaa !0
  %add74 = fadd float %div, %16
  store float %add74, float* %arrayidx73, align 4, !tbaa !0
  %mul75 = fmul float %1, %div
  %mul76 = fmul float %2, %div
  %mul77 = fmul float %3, %div
  %idxprom78 = sext i32 %4 to i64
  %arrayidx79 = getelementptr inbounds float* %invmass, i64 %idxprom78
  %17 = load float* %arrayidx79, align 4, !tbaa !0
  %idxprom80 = sext i32 %5 to i64
  %arrayidx81 = getelementptr inbounds float* %invmass, i64 %idxprom80
  %18 = load float* %arrayidx81, align 4, !tbaa !0
  %conv82 = fpext float %17 to double
  %fabsf271 = tail call float @fabsf(float %17) #4
  %19 = fpext float %fabsf271 to double
  %cmp84 = fcmp ogt double %19, 1.200000e-38
  br i1 %cmp84, label %land.lhs.true86, label %if.else116

land.lhs.true86:                                  ; preds = %if.else
  %fabsf274 = tail call float @fabsf(float %18) #4
  %20 = fpext float %fabsf274 to double
  %cmp89 = fcmp ogt double %20, 1.200000e-38
  br i1 %cmp89, label %if.then91, label %if.else116

if.then91:                                        ; preds = %land.lhs.true86
  %mul92 = fmul float %mul75, %17
  %21 = load float* %arrayidx30, align 4, !tbaa !0
  %add95 = fadd float %mul92, %21
  store float %add95, float* %arrayidx30, align 4, !tbaa !0
  %mul96 = fmul float %mul76, %17
  %22 = load float* %arrayidx34, align 4, !tbaa !0
  %add99 = fadd float %mul96, %22
  store float %add99, float* %arrayidx34, align 4, !tbaa !0
  %mul100 = fmul float %mul77, %17
  %23 = load float* %arrayidx39, align 4, !tbaa !0
  %add103 = fadd float %mul100, %23
  store float %add103, float* %arrayidx39, align 4, !tbaa !0
  %mul104 = fmul float %mul75, %18
  %24 = load float* %arrayidx32, align 4, !tbaa !0
  %sub107 = fsub float %24, %mul104
  store float %sub107, float* %arrayidx32, align 4, !tbaa !0
  %mul108 = fmul float %mul76, %18
  %25 = load float* %arrayidx36, align 4, !tbaa !0
  %sub111 = fsub float %25, %mul108
  store float %sub111, float* %arrayidx36, align 4, !tbaa !0
  %mul112 = fmul float %mul77, %18
  %26 = load float* %arrayidx41, align 4, !tbaa !0
  %sub115 = fsub float %26, %mul112
  store float %sub115, float* %arrayidx41, align 4, !tbaa !0
  br label %for.inc

if.else116:                                       ; preds = %land.lhs.true86, %if.else
  %cmp119 = fcmp olt double %19, 1.200000e-38
  %fabsf273 = tail call float @fabsf(float %18) #4
  %27 = fpext float %fabsf273 to double
  %cmp124 = fcmp ogt double %27, 1.200000e-38
  %or.cond = and i1 %cmp119, %cmp124
  br i1 %or.cond, label %if.then126, label %if.else139

if.then126:                                       ; preds = %if.else116
  %mul127 = fmul float %mul75, %18
  %28 = load float* %arrayidx30, align 4, !tbaa !0
  %add130 = fadd float %mul127, %28
  store float %add130, float* %arrayidx30, align 4, !tbaa !0
  %mul131 = fmul float %mul76, %18
  %29 = load float* %arrayidx34, align 4, !tbaa !0
  %add134 = fadd float %mul131, %29
  store float %add134, float* %arrayidx34, align 4, !tbaa !0
  %mul135 = fmul float %mul77, %18
  %30 = load float* %arrayidx39, align 4, !tbaa !0
  %add138 = fadd float %mul135, %30
  store float %add138, float* %arrayidx39, align 4, !tbaa !0
  br label %for.inc

if.else139:                                       ; preds = %if.else116
  %cmp142.not = fcmp uge double %27, 1.200000e-38
  %cmp84.not = xor i1 %cmp84, true
  %brmerge = or i1 %cmp142.not, %cmp84.not
  br i1 %brmerge, label %if.else162, label %if.then149

if.then149:                                       ; preds = %if.else139
  %mul150 = fmul float %mul75, %17
  %31 = load float* %arrayidx32, align 4, !tbaa !0
  %sub153 = fsub float %31, %mul150
  store float %sub153, float* %arrayidx32, align 4, !tbaa !0
  %mul154 = fmul float %mul76, %17
  %32 = load float* %arrayidx36, align 4, !tbaa !0
  %sub157 = fsub float %32, %mul154
  store float %sub157, float* %arrayidx36, align 4, !tbaa !0
  %mul158 = fmul float %mul77, %17
  %33 = load float* %arrayidx41, align 4, !tbaa !0
  %sub161 = fsub float %33, %mul158
  store float %sub161, float* %arrayidx41, align 4, !tbaa !0
  br label %for.inc

if.else162:                                       ; preds = %if.else139
  %conv140 = fpext float %18 to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), double %conv82, double %conv140) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body8, %if.then91, %if.then149, %if.else162, %if.then126
  %error.2 = phi i32 [ 0, %if.then91 ], [ 0, %if.then126 ], [ 0, %if.then149 ], [ 0, %if.else162 ], [ 0, %for.body8 ], [ %0, %if.then ]
  %nconv.2 = phi i32 [ %add58, %if.then91 ], [ %add58, %if.then126 ], [ %add58, %if.then149 ], [ %add58, %if.else162 ], [ %nconv.1282, %for.body8 ], [ %add58, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %34 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %34, %ncon
  %cmp6 = icmp eq i32 %error.2, 0
  %or.cond276 = and i1 %cmp4, %cmp6
  br i1 %or.cond276, label %for.body8, label %for.inc169

for.inc169:                                       ; preds = %for.inc
  %inc170 = add nsw i32 %nit.0285, 1
  %notlhs = icmp slt i32 %inc170, %maxnit
  %notrhs = icmp ne i32 %nconv.2, 0
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp2 = icmp eq i32 %error.2, 0
  %or.cond275 = and i1 %or.cond.not, %cmp2
  br i1 %or.cond275, label %for.cond3.preheader, label %for.end171

for.end171:                                       ; preds = %for.inc169, %for.inc169.thread, %entry
  %error.0.lcssa = phi i32 [ 0, %entry ], [ 0, %for.inc169.thread ], [ %error.2, %for.inc169 ]
  %nit.0.lcssa = phi i32 [ 0, %entry ], [ %inc170289, %for.inc169.thread ], [ %inc170, %for.inc169 ]
  store i32 %nit.0.lcssa, i32* %nnit, align 4, !tbaa !3
  store i32 %error.0.lcssa, i32* %nerror, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @vec_shakef(%struct._IO_FILE* %log, i32 %natoms, float* nocapture %invmass, i32 %ncon, %union.t_iparams* nocapture %ip, i32* nocapture %iatom, float %tol, [3 x float]* nocapture %x, [3 x float]* nocapture %xp, float %omega, i32 %bFEP, float %lambda, float* nocapture %lagr) #0 {
entry:
  %nit = alloca i32, align 4
  %error = alloca i32, align 4
  %0 = load i32* @vec_shakef.maxcon, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %ncon
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load [3 x float]** @vec_shakef.rij, align 8, !tbaa !4
  %2 = bitcast [3 x float]* %1 to i8*
  %mul = mul i32 %ncon, 12
  %call = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 169, i8* %2, i32 %mul) #5
  %3 = bitcast i8* %call to [3 x float]*
  store [3 x float]* %3, [3 x float]** @vec_shakef.rij, align 8, !tbaa !4
  %4 = load float** @vec_shakef.M2, align 8, !tbaa !4
  %5 = bitcast float* %4 to i8*
  %mul3 = shl i32 %ncon, 2
  %call5 = call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 170, i8* %5, i32 %mul3) #5
  %6 = bitcast i8* %call5 to float*
  store float* %6, float** @vec_shakef.M2, align 8, !tbaa !4
  %7 = load float** @vec_shakef.tt, align 8, !tbaa !4
  %8 = bitcast float* %7 to i8*
  %call9 = call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 171, i8* %8, i32 %mul3) #5
  %9 = bitcast i8* %call9 to float*
  store float* %9, float** @vec_shakef.tt, align 8, !tbaa !4
  %10 = load float** @vec_shakef.dist2, align 8, !tbaa !4
  %11 = bitcast float* %10 to i8*
  %call13 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 172, i8* %11, i32 %mul3) #5
  %12 = bitcast i8* %call13 to float*
  store float* %12, float** @vec_shakef.dist2, align 8, !tbaa !4
  store i32 %ncon, i32* @vec_shakef.maxcon, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %conv15 = fsub float 1.000000e+00, %lambda
  %conv18 = fmul float %tol, 2.000000e+00
  %cmp19163 = icmp sgt i32 %ncon, 0
  br i1 %cmp19163, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  %.pre = load float** @vec_shakef.dist2, align 8, !tbaa !4
  %.pre166 = load [3 x float]** @vec_shakef.rij, align 8, !tbaa !4
  %.pre167 = load float** @vec_shakef.M2, align 8, !tbaa !4
  %.pre168 = load float** @vec_shakef.tt, align 8, !tbaa !4
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %13 = load [3 x float]** @vec_shakef.rij, align 8, !tbaa !4
  %14 = load float** @vec_shakef.M2, align 8, !tbaa !4
  %tobool = icmp eq i32 %bFEP, 0
  %15 = load float** @vec_shakef.dist2, align 8, !tbaa !4
  %16 = load float** @vec_shakef.tt, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %if.end76, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end76 ]
  %ia.0164 = phi i32* [ %iatom, %for.body.lr.ph ], [ %add.ptr, %if.end76 ]
  %17 = load i32* %ia.0164, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %ia.0164, i64 1
  %18 = load i32* %arrayidx21, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %ia.0164, i64 2
  %19 = load i32* %arrayidx22, align 4, !tbaa !3
  %idxprom = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds float* %invmass, i64 %idxprom
  %20 = load float* %arrayidx23, align 4, !tbaa !0
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds float* %invmass, i64 %idxprom24
  %21 = load float* %arrayidx25, align 4, !tbaa !0
  %add = fadd float %20, %21
  %mul26 = fmul float %add, 2.000000e+00
  %arrayidx29 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 0
  %22 = load float* %arrayidx29, align 4, !tbaa !0
  %arrayidx32 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 0
  %23 = load float* %arrayidx32, align 4, !tbaa !0
  %sub33 = fsub float %22, %23
  %arrayidx36 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 0
  store float %sub33, float* %arrayidx36, align 4, !tbaa !0
  %arrayidx39 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 1
  %24 = load float* %arrayidx39, align 4, !tbaa !0
  %arrayidx42 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 1
  %25 = load float* %arrayidx42, align 4, !tbaa !0
  %sub43 = fsub float %24, %25
  %arrayidx46 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 1
  store float %sub43, float* %arrayidx46, align 4, !tbaa !0
  %arrayidx49 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 2
  %26 = load float* %arrayidx49, align 4, !tbaa !0
  %arrayidx52 = getelementptr inbounds [3 x float]* %x, i64 %idxprom24, i64 2
  %27 = load float* %arrayidx52, align 4, !tbaa !0
  %sub53 = fsub float %26, %27
  %arrayidx56 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv, i64 2
  store float %sub53, float* %arrayidx56, align 4, !tbaa !0
  %conv58 = fdiv float 1.000000e+00, %mul26
  %arrayidx60 = getelementptr inbounds float* %14, i64 %indvars.iv
  store float %conv58, float* %arrayidx60, align 4, !tbaa !0
  %idxprom71 = sext i32 %17 to i64
  %dA74 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom71, i32 0, i32 0
  %28 = load float* %dA74, align 4, !tbaa !0
  br i1 %tobool, label %if.else, label %if.then61

if.then61:                                        ; preds = %for.body
  %mul64 = fmul float %conv15, %28
  %29 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom71, i32 0, i32 1
  %30 = load float* %29, align 4, !tbaa !0
  %mul68 = fmul float %30, %lambda
  %add69 = fadd float %mul64, %mul68
  %mul.i = fmul float %add69, %add69
  br label %if.end76

if.else:                                          ; preds = %for.body
  %mul.i162 = fmul float %28, %28
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then61
  %toler.0 = phi float [ %mul.i, %if.then61 ], [ %mul.i162, %if.else ]
  %arrayidx78 = getelementptr inbounds float* %15, i64 %indvars.iv
  store float %toler.0, float* %arrayidx78, align 4, !tbaa !0
  %mul79 = fmul float %conv18, %toler.0
  %conv82 = fdiv float 1.000000e+00, %mul79
  %arrayidx84 = getelementptr inbounds float* %16, i64 %indvars.iv
  store float %conv82, float* %arrayidx84, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add.ptr = getelementptr inbounds i32* %ia.0164, i64 3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ncon
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end76, %if.end.for.end_crit_edge
  %31 = phi float* [ %.pre168, %if.end.for.end_crit_edge ], [ %16, %if.end76 ]
  %32 = phi float* [ %.pre167, %if.end.for.end_crit_edge ], [ %14, %if.end76 ]
  %33 = phi [3 x float]* [ %.pre166, %if.end.for.end_crit_edge ], [ %13, %if.end76 ]
  %34 = phi float* [ %.pre, %if.end.for.end_crit_edge ], [ %15, %if.end76 ]
  %arraydecay = getelementptr inbounds [3 x float]* %xp, i64 0, i64 0
  %arraydecay87 = getelementptr inbounds [3 x float]* %33, i64 0, i64 0
  call void @cshake(i32* %iatom, i32 %ncon, i32* %nit, i32 1000, float* %34, float* %arraydecay, float* %arraydecay87, float* %32, float %omega, float* %invmass, float* %31, float* %lagr, i32* %error) #6
  %35 = load i32* %nit, align 4, !tbaa !3
  %cmp88 = icmp sgt i32 %35, 999
  br i1 %cmp88, label %if.then90, label %if.else95

if.then90:                                        ; preds = %for.end
  %tobool91 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool91, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.then90
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 1000) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.then92
  store i32 0, i32* %nit, align 4, !tbaa !3
  br label %if.end117

if.else95:                                        ; preds = %for.end
  %36 = load i32* %error, align 4, !tbaa !3
  %cmp96 = icmp eq i32 %36, 0
  br i1 %cmp96, label %if.end117, label %if.then98

if.then98:                                        ; preds = %if.else95
  %tobool99 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool99, label %if.end115, label %if.then100

if.then100:                                       ; preds = %if.then98
  %sub101 = add nsw i32 %36, -1
  %mul103 = mul nsw i32 %sub101, 3
  %add104 = add nsw i32 %mul103, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds i32* %iatom, i64 %idxprom105
  %37 = load i32* %arrayidx106, align 4, !tbaa !3
  %add107 = add nsw i32 %37, 1
  %add110 = add nsw i32 %mul103, 2
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i32* %iatom, i64 %idxprom111
  %38 = load i32* %arrayidx112, align 4, !tbaa !3
  %add113 = add nsw i32 %38, 1
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([81 x i8]* @.str7, i64 0, i64 0), i32 %sub101, i32 %add107, i32 %add113) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then98, %if.then100
  store i32 0, i32* %nit, align 4, !tbaa !3
  br label %if.end117

if.end117:                                        ; preds = %if.else95, %if.end115, %if.end94
  %39 = phi i32 [ %35, %if.else95 ], [ 0, %if.end115 ], [ 0, %if.end94 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @bshakef(%struct._IO_FILE* %log, i32 %natoms, float* nocapture %invmass, i32 %nblocks, i32* nocapture %sblock, %struct.t_idef* nocapture %idef, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %box, [3 x float]* nocapture %x_s, [3 x float]* nocapture %xp, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* nocapture %dvdlambda, i32 %bDumpOnError) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %div = sdiv i32 %0, 3
  %.b = load i1* @bshakef.bFirst, align 1
  br i1 %.b, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %bShakeSOR = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %1 = load i32* %bShakeSOR, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 280, i32 %div, i32 4) #5
  %2 = bitcast i8* %call to float*
  store float* %2, float** @bshakef.lagr, align 8, !tbaa !4
  store i1 true, i1* @bshakef.bFirst, align 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end
  %cmp150 = icmp sgt i32 %0, 2
  br i1 %cmp150, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load float** @bshakef.lagr, align 8, !tbaa !4
  %4 = bitcast float* %3 to i8*
  %5 = icmp sgt i32 %0, 5
  %div.op = add i32 %div, -1
  %6 = zext i32 %div.op to i64
  %.op = shl nuw nsw i64 %6, 2
  %.op.op = add i64 %.op, 4
  %7 = select i1 %5, i64 %.op.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %7, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %for.cond.preheader
  %iatoms9 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 2
  %cmp12142 = icmp sgt i32 %nblocks, 0
  br i1 %cmp12142, label %for.body13.lr.ph, label %for.end.for.end35_crit_edge

for.end.for.end35_crit_edge:                      ; preds = %for.end
  %efep36.pre = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  br label %for.end35

for.body13.lr.ph:                                 ; preds = %for.end
  %8 = load i32* %sblock, align 4, !tbaa !3
  %9 = load i32** %iatoms9, align 8, !tbaa !4
  %idxprom6 = sext i32 %8 to i64
  %10 = load float** @bshakef.lagr, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i32* %9, i64 %idxprom6
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %shake_tol = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 44
  %efep = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  br label %for.body13

for.body13:                                       ; preds = %if.end28.for.body13_crit_edge, %for.body13.lr.ph
  %11 = phi i32 [ %8, %for.body13.lr.ph ], [ %.pre159, %if.end28.for.body13_crit_edge ]
  %indvars.iv155 = phi i64 [ 1, %for.body13.lr.ph ], [ %phitmp160, %if.end28.for.body13_crit_edge ]
  %trij.0147 = phi i32 [ 0, %for.body13.lr.ph ], [ %add30, %if.end28.for.body13_crit_edge ]
  %tnit.0146 = phi i32 [ 0, %for.body13.lr.ph ], [ %add29, %if.end28.for.body13_crit_edge ]
  %iatoms.0145 = phi i32* [ %arrayidx10, %for.body13.lr.ph ], [ %add.ptr, %if.end28.for.body13_crit_edge ]
  %lam.0144 = phi float* [ %10, %for.body13.lr.ph ], [ %add.ptr33, %if.end28.for.body13_crit_edge ]
  %arrayidx15 = getelementptr inbounds i32* %sblock, i64 %indvars.iv155
  %12 = load i32* %arrayidx15, align 4, !tbaa !3
  %sub = sub nsw i32 %12, %11
  %div18 = sdiv i32 %sub, 3
  %13 = load %union.t_iparams** %iparams, align 8, !tbaa !4
  %14 = load float* %shake_tol, align 4, !tbaa !0
  %15 = load float* @bshakef.omega, align 4, !tbaa !0
  %16 = load i32* %efep, align 4, !tbaa !3
  %cmp19 = icmp ne i32 %16, 0
  %conv = zext i1 %cmp19 to i32
  %call20 = tail call i32 @vec_shakef(%struct._IO_FILE* %log, i32 undef, float* %invmass, i32 %div18, %union.t_iparams* %13, i32* %iatoms.0145, float %14, [3 x float]* %x_s, [3 x float]* %xp, float %15, i32 %conv, float %lambda, float* %lam.0144) #6
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end28

if.then23:                                        ; preds = %for.body13
  %tobool24 = icmp eq i32 %bDumpOnError, 0
  br i1 %tobool24, label %return, label %if.then25

if.then25:                                        ; preds = %if.then23
  %17 = load %union.t_iparams** %iparams, align 8, !tbaa !4
  %tobool.i = icmp ne %struct._IO_FILE* %log, null
  br i1 %tobool.i, label %if.then.i, label %for.cond.preheader.i

if.then.i:                                        ; preds = %if.then25
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %log) #3
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i, %if.then25
  %cmp73.i = icmp sgt i32 %sub, 2
  br i1 %cmp73.i, label %for.body.i, label %return

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %ia.075.i = phi i32* [ %add.ptr.i, %for.inc.i ], [ %iatoms.0145, %for.cond.preheader.i ]
  %i.074.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i32* %ia.075.i, i64 1
  %19 = load i32* %arrayidx.i, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds i32* %ia.075.i, i64 2
  %20 = load i32* %arrayidx1.i, align 4, !tbaa !3
  %idxprom.i = sext i32 %19 to i64
  %arraydecay.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 0
  %idxprom3.i = sext i32 %20 to i64
  %arraydecay5.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 0
  %21 = load float* %arraydecay.i, align 4, !tbaa !0
  %22 = load float* %arraydecay5.i, align 4, !tbaa !0
  %sub.i.i = fsub float %21, %22
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 1
  %23 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 1
  %24 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %23, %24
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom.i, i64 2
  %25 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x_s, i64 %idxprom3.i, i64 2
  %26 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %25, %26
  %mul.i53.i = fmul float %sub.i.i, %sub.i.i
  %mul4.i55.i = fmul float %sub4.i.i, %sub4.i.i
  %add.i56.i = fadd float %mul.i53.i, %mul4.i55.i
  %mul7.i58.i = fmul float %sub7.i.i, %sub7.i.i
  %add8.i59.i = fadd float %add.i56.i, %mul7.i58.i
  %conv9.i60.i = tail call float @sqrtf(float %add8.i59.i) #2
  %arraydecay11.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 0
  %arraydecay14.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 0
  %27 = load float* %arraydecay11.i, align 4, !tbaa !0
  %28 = load float* %arraydecay14.i, align 4, !tbaa !0
  %sub.i61.i = fsub float %27, %28
  %arrayidx2.i62.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 1
  %29 = load float* %arrayidx2.i62.i, align 4, !tbaa !0
  %arrayidx3.i63.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 1
  %30 = load float* %arrayidx3.i63.i, align 4, !tbaa !0
  %sub4.i64.i = fsub float %29, %30
  %arrayidx5.i65.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom.i, i64 2
  %31 = load float* %arrayidx5.i65.i, align 4, !tbaa !0
  %arrayidx6.i66.i = getelementptr inbounds [3 x float]* %xp, i64 %idxprom3.i, i64 2
  %32 = load float* %arrayidx6.i66.i, align 4, !tbaa !0
  %sub7.i67.i = fsub float %31, %32
  %mul.i.i = fmul float %sub.i61.i, %sub.i61.i
  %mul4.i.i = fmul float %sub4.i64.i, %sub4.i64.i
  %add.i.i = fadd float %mul.i.i, %mul4.i.i
  %mul7.i.i = fmul float %sub7.i67.i, %sub7.i67.i
  %add8.i.i = fadd float %add.i.i, %mul7.i.i
  %conv9.i.i = tail call float @sqrtf(float %add8.i.i) #2
  br i1 %tobool.i, label %if.then19.i, label %for.inc.i

if.then19.i:                                      ; preds = %for.body.i
  %add.i = add nsw i32 %19, 1
  %arrayidx21.i = getelementptr inbounds float* %invmass, i64 %idxprom.i
  %33 = load float* %arrayidx21.i, align 4, !tbaa !0
  %conv.i = fpext float %33 to double
  %div.i = fdiv double 1.000000e+00, %conv.i
  %add22.i = add nsw i32 %20, 1
  %arrayidx24.i = getelementptr inbounds float* %invmass, i64 %idxprom3.i
  %34 = load float* %arrayidx24.i, align 4, !tbaa !0
  %conv25.i = fpext float %34 to double
  %div26.i = fdiv double 1.000000e+00, %conv25.i
  %conv27.i = fpext float %conv9.i60.i to double
  %conv28.i = fpext float %conv9.i.i to double
  %35 = load i32* %ia.075.i, align 4, !tbaa !3
  %idxprom30.i = sext i32 %35 to i64
  %dA.i = getelementptr inbounds %union.t_iparams* %17, i64 %idxprom30.i, i32 0, i32 0
  %36 = load float* %dA.i, align 4, !tbaa !0
  %conv32.i = fpext float %36 to double
  %call33.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %add.i, double %div.i, i32 %add22.i, double %div26.i, double %conv27.i, double %conv28.i, double %conv32.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then19.i, %for.body.i
  %inc.i = add nsw i32 %i.074.i, 1
  %add.ptr.i = getelementptr inbounds i32* %ia.075.i, i64 3
  %exitcond.i = icmp eq i32 %inc.i, %div18
  br i1 %exitcond.i, label %return, label %for.body.i

if.end28:                                         ; preds = %for.body13
  %mul = mul nsw i32 %call20, %div18
  %add29 = add nsw i32 %mul, %tnit.0146
  %add30 = add nsw i32 %div18, %trij.0147
  %37 = trunc i64 %indvars.iv155 to i32
  %cmp12 = icmp slt i32 %37, %nblocks
  br i1 %cmp12, label %if.end28.for.body13_crit_edge, label %for.cond11.for.end35_crit_edge

if.end28.for.body13_crit_edge:                    ; preds = %if.end28
  %mul31 = mul nsw i32 %div18, 3
  %idx.ext32 = sext i32 %div18 to i64
  %idx.ext = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds float* %lam.0144, i64 %idx.ext32
  %add.ptr = getelementptr inbounds i32* %iatoms.0145, i64 %idx.ext
  %.pre159 = load i32* %arrayidx15, align 4, !tbaa !3
  %phitmp160 = add i64 %indvars.iv155, 1
  br label %for.body13

for.cond11.for.end35_crit_edge:                   ; preds = %if.end28
  %phitmp = sitofp i32 %add30 to double
  br label %for.end35

for.end35:                                        ; preds = %for.end.for.end35_crit_edge, %for.cond11.for.end35_crit_edge
  %efep36.pre-phi = phi i32* [ %efep36.pre, %for.end.for.end35_crit_edge ], [ %efep, %for.cond11.for.end35_crit_edge ]
  %trij.0.lcssa = phi double [ 0.000000e+00, %for.end.for.end35_crit_edge ], [ %phitmp, %for.cond11.for.end35_crit_edge ]
  %tnit.0.lcssa = phi i32 [ 0, %for.end.for.end35_crit_edge ], [ %add29, %for.cond11.for.end35_crit_edge ]
  %38 = load i32* %efep36.pre-phi, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %38, 0
  br i1 %cmp37, label %if.end69, label %if.then39

if.then39:                                        ; preds = %for.end35
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %39 = load float* %delta_t, align 4, !tbaa !0
  %mul.i = fmul float %39, %39
  %div41 = fdiv float 1.000000e+00, %mul.i
  br i1 %cmp150, label %for.body45.lr.ph, label %for.end67

for.body45.lr.ph:                                 ; preds = %if.then39
  %40 = load i32** %iatoms9, align 8, !tbaa !4
  %41 = load float** @bshakef.lagr, align 8, !tbaa !4
  %iparams56 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %42 = load %union.t_iparams** %iparams56, align 8, !tbaa !4
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %indvars.iv = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next, %for.body45 ]
  %dvdl.0137 = phi float [ 0.000000e+00, %for.body45.lr.ph ], [ %add64, %for.body45 ]
  %sext = mul i64 %indvars.iv, 12884901888
  %idxprom47 = ashr exact i64 %sext, 32
  %arrayidx51 = getelementptr inbounds i32* %40, i64 %idxprom47
  %43 = load i32* %arrayidx51, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds float* %41, i64 %indvars.iv
  %44 = load float* %arrayidx53, align 4, !tbaa !0
  %mul54 = fmul float %div41, %44
  %idxprom55 = sext i32 %43 to i64
  %45 = getelementptr inbounds %union.t_iparams* %42, i64 %idxprom55, i32 0, i32 1
  %46 = load float* %45, align 4, !tbaa !0
  %dA = getelementptr inbounds %union.t_iparams* %42, i64 %idxprom55, i32 0, i32 0
  %47 = load float* %dA, align 4, !tbaa !0
  %sub62 = fsub float %46, %47
  %mul63 = fmul float %mul54, %sub62
  %add64 = fadd float %dvdl.0137, %mul63
  %indvars.iv.next = add i64 %indvars.iv, 1
  %48 = trunc i64 %indvars.iv.next to i32
  %cmp43 = icmp slt i32 %48, %div
  br i1 %cmp43, label %for.body45, label %for.end67

for.end67:                                        ; preds = %for.body45, %if.then39
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %if.then39 ], [ %add64, %for.body45 ]
  %49 = load float* %dvdlambda, align 4, !tbaa !0
  %add68 = fadd float %dvdl.0.lcssa, %49
  store float %add68, float* %dvdlambda, align 4, !tbaa !0
  br label %if.end69

if.end69:                                         ; preds = %for.end35, %for.end67
  %bShakeSOR70 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 67
  %50 = load i32* %bShakeSOR70, align 4, !tbaa !3
  %tobool71 = icmp eq i32 %50, 0
  br i1 %tobool71, label %if.end81, label %if.then72

if.then72:                                        ; preds = %if.end69
  %51 = load i32* @bshakef.gamma, align 4, !tbaa !3
  %cmp73 = icmp sgt i32 %tnit.0.lcssa, %51
  %52 = load float* @bshakef.delta, align 4, !tbaa !0
  br i1 %cmp73, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.then72
  %conv78 = fmul float %52, -5.000000e-01
  store float %conv78, float* @bshakef.delta, align 4, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %if.then75
  %53 = phi float [ %conv78, %if.then75 ], [ %52, %if.then72 ]
  %54 = load float* @bshakef.omega, align 4, !tbaa !0
  %add80 = fadd float %54, %53
  store float %add80, float* @bshakef.omega, align 4, !tbaa !0
  store i32 %tnit.0.lcssa, i32* @bshakef.gamma, align 4, !tbaa !3
  br label %if.end81

if.end81:                                         ; preds = %if.end69, %if.end79
  %conv82 = sitofp i32 %tnit.0.lcssa to double
  %arrayidx83 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 115
  %55 = load double* %arrayidx83, align 8, !tbaa !5
  %add84 = fadd double %conv82, %55
  store double %add84, double* %arrayidx83, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 117
  %56 = load double* %arrayidx87, align 8, !tbaa !5
  %add88 = fadd double %trij.0.lcssa, %56
  store double %add88, double* %arrayidx87, align 8, !tbaa !5
  br label %return

return:                                           ; preds = %for.inc.i, %for.cond.preheader.i, %if.then23, %if.end81
  %retval.0 = phi i32 [ 1, %if.end81 ], [ 0, %if.then23 ], [ 0, %for.cond.preheader.i ], [ 0, %for.inc.i ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
