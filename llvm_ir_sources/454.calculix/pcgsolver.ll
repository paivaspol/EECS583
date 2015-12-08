; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/pcgsolver.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [10 x i8] c"alpha=%f\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"iteration= %d, error= %e, limit=%e\0A\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"*ERROR in PCG: no convergence;\00", align 1
@str5 = private unnamed_addr constant [26 x i8] c"Cholesky preconditioning\0A\00"
@str6 = private unnamed_addr constant [60 x i8] c"Solving the system of equations using the iterative solver\0A\00"

; Function Attrs: nounwind optsize uwtable
define i32 @cgsolver(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, i32 %precFlg) #0 {
entry:
  %cmp97 = icmp sgt i32 %neq, 0
  br i1 %cmp97, label %for.body, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body, %entry
  %cmp295 = icmp sgt i32 %len, 0
  br i1 %cmp295, label %for.body3, label %for.end9

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %iz, i64 %indvars.iv103
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %lftr.wideiv105 = trunc i64 %indvars.iv.next104 to i32
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %neq
  br i1 %exitcond106, label %for.cond1.preheader, label %for.body

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds i32* %ia, i64 %indvars.iv99
  %1 = load i32* %arrayidx5, align 4, !tbaa !0
  %dec6 = add nsw i32 %1, -1
  store i32 %dec6, i32* %arrayidx5, align 4, !tbaa !0
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %len
  br i1 %exitcond102, label %for.end9, label %for.body3

for.end9:                                         ; preds = %for.body3, %for.cond1.preheader
  %conv = sext i32 %neq to i64
  %call = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %2 = bitcast i8* %call to double*
  tail call void @Scaling(double* %A, double* %b, i32 %neq, i32* %ia, i32* %iz, double* %2) #6
  switch i32 %precFlg, label %for.cond30.preheader [
    i32 0, label %if.then
    i32 3, label %if.then18
  ]

if.then:                                          ; preds = %for.end9
  %call11 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %3 = bitcast i8* %call11 to double*
  %call13 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %4 = bitcast i8* %call13 to double*
  %call15 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %5 = bitcast i8* %call15 to double*
  tail call void @CG(double* %A, double* %x, double* %b, i32 %neq, i32 undef, i32* %ia, i32* %iz, double* %eps, i32* %niter, double* %3, double* %4, double* %5) #6
  tail call void @free(i8* %call11) #5
  tail call void @free(i8* %call13) #5
  tail call void @free(i8* %call15) #5
  br label %for.cond30.preheader

if.then18:                                        ; preds = %for.end9
  %call20 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %6 = bitcast i8* %call20 to double*
  %call22 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %7 = bitcast i8* %call22 to double*
  %call24 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %8 = bitcast i8* %call24 to double*
  %conv25 = sext i32 %len to i64
  %call26 = tail call i8* @u_calloc(i64 %conv25, i64 8) #5
  %9 = bitcast i8* %call26 to double*
  %call28 = tail call i8* @u_calloc(i64 %conv, i64 8) #5
  %10 = bitcast i8* %call28 to double*
  tail call void @PCG(double* %A, double* %x, double* %b, i32 %neq, i32 %len, i32* %ia, i32* %iz, double* %eps, i32* %niter, i32 3, double* %6, double* %7, double* %8, double* %9, double* %10) #6
  tail call void @free(i8* %call20) #5
  tail call void @free(i8* %call22) #5
  tail call void @free(i8* %call24) #5
  tail call void @free(i8* %call26) #5
  tail call void @free(i8* %call28) #5
  br label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.end9, %if.then18, %if.then
  br i1 %cmp97, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond30.preheader, %for.body33
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body33 ], [ 0, %for.cond30.preheader ]
  %arrayidx35 = getelementptr inbounds double* %2, i64 %indvars.iv
  %11 = load double* %arrayidx35, align 8, !tbaa !3
  %arrayidx37 = getelementptr inbounds double* %x, i64 %indvars.iv
  %12 = load double* %arrayidx37, align 8, !tbaa !3
  %mul = fmul double %11, %12
  store double %mul, double* %arrayidx37, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond, label %for.end40, label %for.body33

for.end40:                                        ; preds = %for.body33, %for.cond30.preheader
  tail call void @free(i8* %call) #5
  ret i32 0
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Scaling(double* nocapture %A, double* nocapture %b, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %d) #0 {
entry:
  %cmp82 = icmp sgt i32 %neq, 0
  br i1 %cmp82, label %for.body, label %for.end14

for.cond5.preheader:                              ; preds = %for.body
  br i1 %cmp82, label %for.body7, label %for.end14

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %iz, i64 %indvars.iv91
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds double* %A, i64 %idxprom1
  %1 = load double* %arrayidx2, align 8, !tbaa !3
  %call = tail call double @sqrt(double %1) #5
  %div = fdiv double 1.000000e+00, %call
  %arrayidx4 = getelementptr inbounds double* %d, i64 %indvars.iv91
  store double %div, double* %arrayidx4, align 8, !tbaa !3
  %indvars.iv.next92 = add i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv.next92 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %neq
  br i1 %exitcond94, label %for.cond5.preheader, label %for.body

for.body7:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body7 ], [ 0, %for.cond5.preheader ]
  %arrayidx9 = getelementptr inbounds double* %d, i64 %indvars.iv87
  %2 = load double* %arrayidx9, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds double* %b, i64 %indvars.iv87
  %3 = load double* %arrayidx11, align 8, !tbaa !3
  %4 = fmul double %2, %3
  %mul = fsub double -0.000000e+00, %4
  store double %mul, double* %arrayidx11, align 8, !tbaa !3
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next88 to i32
  %exitcond90 = icmp eq i32 %lftr.wideiv89, %neq
  br i1 %exitcond90, label %for.end14, label %for.body7

for.end14:                                        ; preds = %entry, %for.body7, %for.cond5.preheader
  %5 = load double* %d, align 8, !tbaa !3
  %mul17 = fmul double %5, %5
  %6 = load i32* %iz, align 4, !tbaa !0
  %idxprom19 = sext i32 %6 to i64
  %arrayidx20 = getelementptr inbounds double* %A, i64 %idxprom19
  %7 = load double* %arrayidx20, align 8, !tbaa !3
  %mul21 = fmul double %mul17, %7
  store double %mul21, double* %arrayidx20, align 8, !tbaa !3
  %cmp2378 = icmp sgt i32 %neq, 1
  br i1 %cmp2378, label %for.body24, label %for.end48

for.body24:                                       ; preds = %for.end14, %for.inc46
  %8 = phi i32 [ %9, %for.inc46 ], [ %6, %for.end14 ]
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc46 ], [ 1, %for.end14 ]
  %arrayidx29 = getelementptr inbounds i32* %iz, i64 %indvars.iv84
  %9 = load i32* %arrayidx29, align 4, !tbaa !0
  %cmp3176 = icmp slt i32 %8, %9
  br i1 %cmp3176, label %for.body32.lr.ph, label %for.inc46

for.body32.lr.ph:                                 ; preds = %for.body24
  %arrayidx34 = getelementptr inbounds double* %d, i64 %indvars.iv84
  %10 = sext i32 %8 to i64
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv = phi i64 [ %10, %for.body32.lr.ph ], [ %indvars.iv.next, %for.body32 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = load double* %arrayidx34, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next
  %12 = load i32* %arrayidx36, align 4, !tbaa !0
  %idxprom37 = sext i32 %12 to i64
  %arrayidx38 = getelementptr inbounds double* %d, i64 %idxprom37
  %13 = load double* %arrayidx38, align 8, !tbaa !3
  %mul39 = fmul double %11, %13
  %arrayidx41 = getelementptr inbounds double* %A, i64 %indvars.iv.next
  %14 = load double* %arrayidx41, align 8, !tbaa !3
  %mul42 = fmul double %14, %mul39
  store double %mul42, double* %arrayidx41, align 8, !tbaa !3
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp31 = icmp slt i32 %15, %9
  br i1 %cmp31, label %for.body32, label %for.inc46

for.inc46:                                        ; preds = %for.body32, %for.body24
  %indvars.iv.next85 = add i64 %indvars.iv84, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next85 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond, label %for.end48, label %for.body24

for.end48:                                        ; preds = %for.inc46, %for.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CG(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, double* nocapture %r, double* nocapture %p, double* nocapture %z) #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([60 x i8]* @str6, i64 0, i64 0))
  %cmp184 = icmp sgt i32 %neq, 0
  br i1 %cmp184, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.inc ], [ 0, %entry ]
  %qam.0187 = phi double [ %qam.1, %for.inc ], [ 0.000000e+00, %entry ]
  %iam.0185 = phi i32 [ %iam.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv201
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv201
  %0 = load double* %arrayidx2, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds double* %r, i64 %indvars.iv201
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %sub = fsub double -0.000000e+00, %0
  %arrayidx8 = getelementptr inbounds double* %p, i64 %indvars.iv201
  store double %sub, double* %arrayidx8, align 8, !tbaa !3
  %1 = load double* %arrayidx4, align 8, !tbaa !3
  %call11 = tail call double @fabs(double %1) #7
  %cmp12 = fcmp ogt double %call11, 1.000000e-20
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %add = fadd double %qam.0187, %call11
  %inc = add nsw i32 %iam.0185, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %iam.1 = phi i32 [ %inc, %if.then ], [ %iam.0185, %for.body ]
  %qam.1 = phi double [ %add, %if.then ], [ %qam.0187, %for.body ]
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %lftr.wideiv203 = trunc i64 %indvars.iv.next202 to i32
  %exitcond204 = icmp eq i32 %lftr.wideiv203, %neq
  br i1 %exitcond204, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp14 = icmp sgt i32 %iam.1, 0
  br i1 %cmp14, label %if.then15, label %return

if.then15:                                        ; preds = %for.end
  %2 = load i32* %niter, align 4, !tbaa !0
  %cmp18176 = icmp slt i32 %2, 1
  br i1 %cmp18176, label %for.end83, label %for.body20.lr.ph

for.body20.lr.ph:                                 ; preds = %if.then15
  %conv = sitofp i32 %neq to double
  %div = fdiv double %qam.1, %conv
  %mul = fmul double %div, 5.000000e-03
  br label %for.body20

for.body20:                                       ; preds = %for.end79, %for.body20.lr.ph
  %ram.0180 = phi double [ 0.000000e+00, %for.body20.lr.ph ], [ %ram.1.lcssa, %for.end79 ]
  %ncg.0179 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc82, %for.end79 ]
  %k.0178 = phi i32 [ 1, %for.body20.lr.ph ], [ %inc81, %for.end79 ]
  %add.i169177 = phi double [ 0.000000e+00, %for.body20.lr.ph ], [ %add.i170, %for.end79 ]
  br i1 %cmp184, label %for.body.i, label %InnerProduct.exit

for.body.i:                                       ; preds = %for.body20, %for.body.i
  %3 = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %for.body20 ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body20 ]
  %arrayidx.i = getelementptr inbounds double* %r, i64 %indvars.iv.i
  %4 = load double* %arrayidx.i, align 8, !tbaa !3
  %mul.i = fmul double %4, %4
  %add.i = fadd double %3, %mul.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond, label %InnerProduct.exit, label %for.body.i

InnerProduct.exit:                                ; preds = %for.body.i, %for.body20
  %add.i170 = phi double [ 0.000000e+00, %for.body20 ], [ %add.i, %for.body.i ]
  %call21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i32 %ncg.0179, double %ram.0180, double %mul) #5
  %cmp22 = icmp ne i32 %k.0178, 1
  %cmp22.not = xor i1 %cmp22, true
  %cmp25 = fcmp ugt double %ram.0180, %mul
  %or.cond = or i1 %cmp25, %cmp22.not
  br i1 %or.cond, label %if.end28, label %for.end83split

if.end28:                                         ; preds = %InnerProduct.exit
  br i1 %cmp22, label %if.then31, label %if.end48

if.then31:                                        ; preds = %if.end28
  %div32 = fdiv double %add.i170, %add.i169177
  br i1 %cmp184, label %for.body36, label %if.end48.thread

if.end48.thread:                                  ; preds = %if.then31
  tail call void @MatVecProduct(double* %A, double* %p, i32 %neq, i32* %ia, i32* %iz, double* %z) #6
  br label %for.end79

for.body36:                                       ; preds = %if.then31, %for.body36
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body36 ], [ 0, %if.then31 ]
  %arrayidx38 = getelementptr inbounds double* %p, i64 %indvars.iv
  %5 = load double* %arrayidx38, align 8, !tbaa !3
  %mul39 = fmul double %div32, %5
  %arrayidx41 = getelementptr inbounds double* %r, i64 %indvars.iv
  %6 = load double* %arrayidx41, align 8, !tbaa !3
  %sub42 = fsub double %mul39, %6
  store double %sub42, double* %arrayidx38, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv190 = trunc i64 %indvars.iv.next to i32
  %exitcond191 = icmp eq i32 %lftr.wideiv190, %neq
  br i1 %exitcond191, label %if.end48, label %for.body36

if.end48:                                         ; preds = %for.body36, %if.end28
  tail call void @MatVecProduct(double* %A, double* %p, i32 %neq, i32* %ia, i32* %iz, double* %z) #6
  br i1 %cmp184, label %for.body.i162, label %for.end79

for.body.i162:                                    ; preds = %if.end48, %for.body.i162
  %7 = phi double [ %add.i158, %for.body.i162 ], [ 0.000000e+00, %if.end48 ]
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i159, %for.body.i162 ], [ 0, %if.end48 ]
  %arrayidx.i155 = getelementptr inbounds double* %p, i64 %indvars.iv.i154
  %8 = load double* %arrayidx.i155, align 8, !tbaa !3
  %arrayidx2.i156 = getelementptr inbounds double* %z, i64 %indvars.iv.i154
  %9 = load double* %arrayidx2.i156, align 8, !tbaa !3
  %mul.i157 = fmul double %8, %9
  %add.i158 = fadd double %7, %mul.i157
  %indvars.iv.next.i159 = add i64 %indvars.iv.i154, 1
  %lftr.wideiv192 = trunc i64 %indvars.iv.next.i159 to i32
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %neq
  br i1 %exitcond193, label %InnerProduct.exit163, label %for.body.i162

InnerProduct.exit163:                             ; preds = %for.body.i162
  %div49 = fdiv double %add.i170, %add.i158
  br i1 %cmp184, label %for.body53, label %for.end79

for.body53:                                       ; preds = %InnerProduct.exit163, %for.body53
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %for.body53 ], [ 0, %InnerProduct.exit163 ]
  %ram.1175 = phi double [ %ram.2, %for.body53 ], [ 0.000000e+00, %InnerProduct.exit163 ]
  %arrayidx55 = getelementptr inbounds double* %x, i64 %indvars.iv194
  %10 = load double* %arrayidx55, align 8, !tbaa !3
  %arrayidx57 = getelementptr inbounds double* %p, i64 %indvars.iv194
  %11 = load double* %arrayidx57, align 8, !tbaa !3
  %mul58 = fmul double %div49, %11
  %add59 = fadd double %10, %mul58
  store double %add59, double* %arrayidx55, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds double* %r, i64 %indvars.iv194
  %12 = load double* %arrayidx63, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds double* %z, i64 %indvars.iv194
  %13 = load double* %arrayidx65, align 8, !tbaa !3
  %mul66 = fmul double %div49, %13
  %add67 = fadd double %12, %mul66
  store double %add67, double* %arrayidx63, align 8, !tbaa !3
  %call72 = tail call double @fabs(double %add67) #7
  %cmp73 = fcmp ogt double %call72, %ram.1175
  %ram.2 = select i1 %cmp73, double %call72, double %ram.1175
  %indvars.iv.next195 = add i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %neq
  br i1 %exitcond197, label %for.end79, label %for.body53

for.end79:                                        ; preds = %if.end48, %if.end48.thread, %for.body53, %InnerProduct.exit163
  %ram.1.lcssa = phi double [ 0.000000e+00, %InnerProduct.exit163 ], [ %ram.2, %for.body53 ], [ 0.000000e+00, %if.end48.thread ], [ 0.000000e+00, %if.end48 ]
  %inc81 = add nsw i32 %k.0178, 1
  %inc82 = add nsw i32 %ncg.0179, 1
  %14 = load i32* %niter, align 4, !tbaa !0
  %cmp18 = icmp slt i32 %k.0178, %14
  br i1 %cmp18, label %for.body20, label %for.end83

for.end83split:                                   ; preds = %InnerProduct.exit
  %.pre = load i32* %niter, align 4, !tbaa !0
  br label %for.end83

for.end83:                                        ; preds = %for.end79, %for.end83split, %if.then15
  %15 = phi i32 [ %2, %if.then15 ], [ %.pre, %for.end83split ], [ %14, %for.end79 ]
  %ncg.0.lcssa = phi i32 [ 0, %if.then15 ], [ %ncg.0179, %for.end83split ], [ %inc82, %for.end79 ]
  %k.0.lcssa = phi i32 [ 1, %if.then15 ], [ %k.0178, %for.end83split ], [ %inc81, %for.end79 ]
  %add.i168 = phi double [ 0.000000e+00, %if.then15 ], [ %add.i170, %for.end83split ], [ %add.i170, %for.end79 ]
  %cmp84 = icmp eq i32 %k.0.lcssa, %15
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %for.end83
  %call87 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #5
  tail call void (...)* @stop_() #5
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %for.end83
  store double %add.i168, double* %eps, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %for.end, %if.end88
  %storemerge = phi i32 [ %ncg.0.lcssa, %if.end88 ], [ 0, %for.end ], [ 0, %entry ]
  store i32 %storemerge, i32* %niter, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @PCG(double* nocapture %A, double* nocapture %x, double* nocapture %b, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %eps, i32* nocapture %niter, i32 %precFlg, double* nocapture %rho, double* nocapture %r, double* nocapture %g, double* nocapture %C, double* nocapture %z) #0 {
entry:
  %ier = alloca i32, align 4
  store i32 0, i32* %ier, align 4, !tbaa !0
  %cmp225 = icmp sgt i32 %neq, 0
  br i1 %cmp225, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.inc ], [ 0, %entry ]
  %qam.0228 = phi double [ %qam.1, %for.inc ], [ 0.000000e+00, %entry ]
  %iam.0226 = phi i32 [ %iam.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv246
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv246
  %0 = load double* %arrayidx2, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds double* %r, i64 %indvars.iv246
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %call = call double @fabs(double %0) #7
  %cmp7 = fcmp ogt double %call, 1.000000e-20
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %add = fadd double %qam.0228, %call
  %inc = add nsw i32 %iam.0226, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %iam.1 = phi i32 [ %inc, %if.then ], [ %iam.0226, %for.body ]
  %qam.1 = phi double [ %add, %if.then ], [ %qam.0228, %for.body ]
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  %lftr.wideiv248 = trunc i64 %indvars.iv.next247 to i32
  %exitcond249 = icmp eq i32 %lftr.wideiv248, %neq
  br i1 %exitcond249, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %cmp9 = icmp sgt i32 %iam.1, 0
  br i1 %cmp9, label %if.then10, label %return

if.then10:                                        ; preds = %for.end
  %conv = sitofp i32 %iam.1 to double
  %div = fdiv double %qam.1, %conv
  %puts = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str5, i64 0, i64 0))
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), double 0.000000e+00) #5
  call void @PreConditioning(double* %A, i32 %neq, i32 undef, i32* %ia, i32* %iz, double 0.000000e+00, i32 undef, double* %C, i32* %ier) #6
  %1 = load i32* %ier, align 4, !tbaa !0
  %cmp14223 = icmp eq i32 %1, 0
  br i1 %cmp14223, label %while.body, label %while.end

while.body:                                       ; preds = %if.then10, %while.body
  %alpha.0224 = phi double [ %add20, %while.body ], [ 0.000000e+00, %if.then10 ]
  %cmp16 = fcmp ugt double %alpha.0224, 0.000000e+00
  %alpha.1 = select i1 %cmp16, double %alpha.0224, double 5.000000e-03
  %add20 = fadd double %alpha.1, %alpha.1
  %call21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), double %add20) #5
  call void @PreConditioning(double* %A, i32 %neq, i32 undef, i32* %ia, i32* %iz, double %add20, i32 undef, double* %C, i32* %ier) #6
  %2 = load i32* %ier, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %2, 0
  br i1 %cmp14, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.then10
  %puts188 = call i32 @puts(i8* getelementptr inbounds ([60 x i8]* @str6, i64 0, i64 0))
  %3 = load i32* %niter, align 4, !tbaa !0
  %cmp24215 = icmp slt i32 %3, 1
  br i1 %cmp24215, label %for.end97, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %while.end
  %mul = fmul double %div, 5.000000e-03
  br label %for.body26

for.body26:                                       ; preds = %for.end93, %for.body26.lr.ph
  %ram.0219 = phi double [ 0.000000e+00, %for.body26.lr.ph ], [ %ram.1.lcssa, %for.end93 ]
  %ncg.0218 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc96, %for.end93 ]
  %k.0217 = phi i32 [ 1, %for.body26.lr.ph ], [ %inc95, %for.end93 ]
  %add.i205216 = phi double [ 0.000000e+00, %for.body26.lr.ph ], [ %add.i206, %for.end93 ]
  call void @Mrhor(double* %C, i32 %neq, i32* %ia, i32* %iz, double* %r, double* %rho) #6
  br i1 %cmp225, label %for.body.i, label %InnerProduct.exit

for.body.i:                                       ; preds = %for.body26, %for.body.i
  %4 = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %for.body26 ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body26 ]
  %arrayidx.i = getelementptr inbounds double* %r, i64 %indvars.iv.i
  %5 = load double* %arrayidx.i, align 8, !tbaa !3
  %arrayidx2.i = getelementptr inbounds double* %rho, i64 %indvars.iv.i
  %6 = load double* %arrayidx2.i, align 8, !tbaa !3
  %mul.i = fmul double %5, %6
  %add.i = fadd double %4, %mul.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond, label %InnerProduct.exit, label %for.body.i

InnerProduct.exit:                                ; preds = %for.body.i, %for.body26
  %add.i206 = phi double [ 0.000000e+00, %for.body26 ], [ %add.i, %for.body.i ]
  %call27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i32 %ncg.0218, double %ram.0219, double %mul) #5
  %cmp28 = icmp ne i32 %k.0217, 1
  %cmp28.not = xor i1 %cmp28, true
  %cmp31 = fcmp ugt double %ram.0219, %mul
  %or.cond = or i1 %cmp31, %cmp28.not
  br i1 %or.cond, label %if.end34, label %for.end97split

if.end34:                                         ; preds = %InnerProduct.exit
  br i1 %cmp28, label %if.then37, label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %if.end34
  br i1 %cmp225, label %for.body57, label %if.end66.thread

if.then37:                                        ; preds = %if.end34
  %div38 = fdiv double %add.i206, %add.i205216
  br i1 %cmp225, label %for.body42, label %if.end66.thread

for.body42:                                       ; preds = %if.then37, %for.body42
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body42 ], [ 0, %if.then37 ]
  %arrayidx44 = getelementptr inbounds double* %g, i64 %indvars.iv233
  %7 = load double* %arrayidx44, align 8, !tbaa !3
  %mul45 = fmul double %div38, %7
  %arrayidx47 = getelementptr inbounds double* %rho, i64 %indvars.iv233
  %8 = load double* %arrayidx47, align 8, !tbaa !3
  %sub = fsub double %mul45, %8
  store double %sub, double* %arrayidx44, align 8, !tbaa !3
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %lftr.wideiv235 = trunc i64 %indvars.iv.next234 to i32
  %exitcond236 = icmp eq i32 %lftr.wideiv235, %neq
  br i1 %exitcond236, label %if.end66, label %for.body42

for.body57:                                       ; preds = %for.cond54.preheader, %for.body57
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body57 ], [ 0, %for.cond54.preheader ]
  %arrayidx59 = getelementptr inbounds double* %rho, i64 %indvars.iv
  %9 = load double* %arrayidx59, align 8, !tbaa !3
  %sub60 = fsub double -0.000000e+00, %9
  %arrayidx62 = getelementptr inbounds double* %g, i64 %indvars.iv
  store double %sub60, double* %arrayidx62, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv231 = trunc i64 %indvars.iv.next to i32
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %neq
  br i1 %exitcond232, label %if.end66, label %for.body57

if.end66.thread:                                  ; preds = %if.then37, %for.cond54.preheader
  call void @MatVecProduct(double* %A, double* %g, i32 %neq, i32* %ia, i32* %iz, double* %z) #6
  br label %InnerProduct.exit199

if.end66:                                         ; preds = %for.body42, %for.body57
  call void @MatVecProduct(double* %A, double* %g, i32 %neq, i32* %ia, i32* %iz, double* %z) #6
  br i1 %cmp225, label %for.body.i198, label %for.end93

for.body.i198:                                    ; preds = %if.end66, %for.body.i198
  %10 = phi double [ %add.i194, %for.body.i198 ], [ 0.000000e+00, %if.end66 ]
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i195, %for.body.i198 ], [ 0, %if.end66 ]
  %arrayidx.i191 = getelementptr inbounds double* %g, i64 %indvars.iv.i190
  %11 = load double* %arrayidx.i191, align 8, !tbaa !3
  %arrayidx2.i192 = getelementptr inbounds double* %z, i64 %indvars.iv.i190
  %12 = load double* %arrayidx2.i192, align 8, !tbaa !3
  %mul.i193 = fmul double %11, %12
  %add.i194 = fadd double %10, %mul.i193
  %indvars.iv.next.i195 = add i64 %indvars.iv.i190, 1
  %lftr.wideiv237 = trunc i64 %indvars.iv.next.i195 to i32
  %exitcond238 = icmp eq i32 %lftr.wideiv237, %neq
  br i1 %exitcond238, label %InnerProduct.exit199, label %for.body.i198

InnerProduct.exit199:                             ; preds = %for.body.i198, %if.end66.thread
  %add.i194203 = phi double [ 0.000000e+00, %if.end66.thread ], [ %add.i194, %for.body.i198 ]
  %div67 = fdiv double %add.i206, %add.i194203
  br i1 %cmp225, label %for.body71, label %for.end93

for.body71:                                       ; preds = %InnerProduct.exit199, %for.body71
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.body71 ], [ 0, %InnerProduct.exit199 ]
  %ram.1214 = phi double [ %ram.2, %for.body71 ], [ 0.000000e+00, %InnerProduct.exit199 ]
  %arrayidx73 = getelementptr inbounds double* %g, i64 %indvars.iv239
  %13 = load double* %arrayidx73, align 8, !tbaa !3
  %mul74 = fmul double %div67, %13
  %arrayidx76 = getelementptr inbounds double* %x, i64 %indvars.iv239
  %14 = load double* %arrayidx76, align 8, !tbaa !3
  %add77 = fadd double %14, %mul74
  store double %add77, double* %arrayidx76, align 8, !tbaa !3
  %arrayidx79 = getelementptr inbounds double* %z, i64 %indvars.iv239
  %15 = load double* %arrayidx79, align 8, !tbaa !3
  %mul80 = fmul double %div67, %15
  %arrayidx82 = getelementptr inbounds double* %r, i64 %indvars.iv239
  %16 = load double* %arrayidx82, align 8, !tbaa !3
  %add83 = fadd double %16, %mul80
  store double %add83, double* %arrayidx82, align 8, !tbaa !3
  %call86 = call double @fabs(double %add83) #7
  %cmp87 = fcmp ogt double %call86, %ram.1214
  %ram.2 = select i1 %cmp87, double %call86, double %ram.1214
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %neq
  br i1 %exitcond242, label %for.end93, label %for.body71

for.end93:                                        ; preds = %if.end66, %for.body71, %InnerProduct.exit199
  %ram.1.lcssa = phi double [ 0.000000e+00, %InnerProduct.exit199 ], [ %ram.2, %for.body71 ], [ 0.000000e+00, %if.end66 ]
  %inc95 = add nsw i32 %k.0217, 1
  %inc96 = add nsw i32 %ncg.0218, 1
  %17 = load i32* %niter, align 4, !tbaa !0
  %cmp24 = icmp slt i32 %k.0217, %17
  br i1 %cmp24, label %for.body26, label %for.end97

for.end97split:                                   ; preds = %InnerProduct.exit
  %.pre = load i32* %niter, align 4, !tbaa !0
  br label %for.end97

for.end97:                                        ; preds = %for.end93, %for.end97split, %while.end
  %18 = phi i32 [ %3, %while.end ], [ %.pre, %for.end97split ], [ %17, %for.end93 ]
  %ncg.0.lcssa = phi i32 [ 0, %while.end ], [ %ncg.0218, %for.end97split ], [ %inc96, %for.end93 ]
  %k.0.lcssa = phi i32 [ 1, %while.end ], [ %k.0217, %for.end97split ], [ %inc95, %for.end93 ]
  %add.i204 = phi double [ 0.000000e+00, %while.end ], [ %add.i206, %for.end97split ], [ %add.i206, %for.end93 ]
  %cmp98 = icmp eq i32 %k.0.lcssa, %18
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %for.end97
  %call101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #5
  call void (...)* @stop_() #5
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %for.end97
  store double %add.i204, double* %eps, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %for.end, %if.end102
  %storemerge = phi i32 [ %ncg.0.lcssa, %if.end102 ], [ 0, %for.end ], [ 0, %entry ]
  store i32 %storemerge, i32* %niter, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @PreConditioning(double* nocapture %A, i32 %neq, i32 %len, i32* nocapture %ia, i32* nocapture %iz, double %alpha, i32 %precFlg, double* nocapture %C, i32* nocapture %ier) #0 {
entry:
  %add = fadd double %alpha, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  %0 = load double* %A, align 8, !tbaa !3
  store double %0, double* %C, align 8, !tbaa !3
  %cmp167 = icmp sgt i32 %neq, 1
  br i1 %cmp167, label %for.body.lr.ph, label %for.end98

for.body.lr.ph:                                   ; preds = %entry
  %.pre = load i32* %iz, align 4, !tbaa !0
  br label %for.body

for.cond20.preheader:                             ; preds = %for.inc17
  br i1 %cmp167, label %for.body22, label %for.end98

for.body:                                         ; preds = %for.inc17, %for.body.lr.ph
  %1 = phi i32 [ %.pre, %for.body.lr.ph ], [ %2, %for.inc17 ]
  %indvars.iv184 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next185, %for.inc17 ]
  %arrayidx5 = getelementptr inbounds i32* %iz, i64 %indvars.iv184
  %2 = load i32* %arrayidx5, align 4, !tbaa !0
  %idxprom6 = sext i32 %2 to i64
  %arrayidx7 = getelementptr inbounds double* %A, i64 %idxprom6
  %3 = load double* %arrayidx7, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds double* %C, i64 %idxprom6
  store double %3, double* %arrayidx9, align 8, !tbaa !3
  %j.0164 = add i32 %1, 1
  %cmp11165 = icmp slt i32 %j.0164, %2
  br i1 %cmp11165, label %for.body12.lr.ph, label %for.inc17

for.body12.lr.ph:                                 ; preds = %for.body
  %4 = sext i32 %j.0164 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %indvars.iv180 = phi i64 [ %4, %for.body12.lr.ph ], [ %indvars.iv.next181, %for.body12 ]
  %j.0166 = phi i32 [ %j.0164, %for.body12.lr.ph ], [ %j.0, %for.body12 ]
  %arrayidx14 = getelementptr inbounds double* %A, i64 %indvars.iv180
  %5 = load double* %arrayidx14, align 8, !tbaa !3
  %mul = fmul double %div, %5
  %arrayidx16 = getelementptr inbounds double* %C, i64 %indvars.iv180
  store double %mul, double* %arrayidx16, align 8, !tbaa !3
  %j.0 = add nsw i32 %j.0166, 1
  %indvars.iv.next181 = add i64 %indvars.iv180, 1
  %exitcond183 = icmp eq i32 %j.0, %2
  br i1 %exitcond183, label %for.inc17, label %for.body12

for.inc17:                                        ; preds = %for.body12, %for.body
  %indvars.iv.next185 = add i64 %indvars.iv184, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next185 to i32
  %exitcond187 = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond187, label %for.cond20.preheader, label %for.body

for.body22:                                       ; preds = %if.end91, %for.cond20.preheader
  %indvars.iv177 = phi i64 [ 1, %for.cond20.preheader ], [ %indvars.iv.next178, %if.end91 ]
  %6 = add nsw i64 %indvars.iv177, -1
  %arrayidx25 = getelementptr inbounds i32* %iz, i64 %6
  %7 = load i32* %arrayidx25, align 4, !tbaa !0
  %add26 = add i32 %7, 1
  %arrayidx28 = getelementptr inbounds i32* %iz, i64 %indvars.iv177
  %8 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp30160 = icmp slt i32 %add26, %8
  br i1 %cmp30160, label %for.body31.lr.ph, label %for.end84

for.body31.lr.ph:                                 ; preds = %for.body22
  %9 = add i32 %7, 2
  %10 = sext i32 %9 to i64
  %11 = sext i32 %add26 to i64
  br label %for.body44.lr.ph

for.cond29.loopexit:                              ; preds = %for.inc79
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %indvars.iv.next175 = add i64 %indvars.iv174, 1
  %exitcond = icmp eq i32 %add41, %8
  br i1 %exitcond, label %for.end84, label %for.body44.lr.ph

for.body44.lr.ph:                                 ; preds = %for.body31.lr.ph, %for.cond29.loopexit
  %indvars.iv174 = phi i64 [ %11, %for.body31.lr.ph ], [ %indvars.iv.next175, %for.cond29.loopexit ]
  %indvars.iv169 = phi i64 [ %10, %for.body31.lr.ph ], [ %indvars.iv.next170, %for.cond29.loopexit ]
  %j.1161 = phi i32 [ %add26, %for.body31.lr.ph ], [ %add41, %for.cond29.loopexit ]
  %arrayidx33 = getelementptr inbounds i32* %ia, i64 %indvars.iv174
  %12 = load i32* %arrayidx33, align 4, !tbaa !0
  %idxprom34 = sext i32 %12 to i64
  %arrayidx35 = getelementptr inbounds i32* %iz, i64 %idxprom34
  %13 = load i32* %arrayidx35, align 4, !tbaa !0
  %idxprom36 = sext i32 %13 to i64
  %arrayidx37 = getelementptr inbounds double* %C, i64 %idxprom36
  %14 = load double* %arrayidx37, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds double* %C, i64 %indvars.iv174
  %15 = load double* %arrayidx39, align 8, !tbaa !3
  %div40 = fdiv double %15, %14
  store double %div40, double* %arrayidx39, align 8, !tbaa !3
  %add41 = add nsw i32 %j.1161, 1
  br label %for.body44

for.body44:                                       ; preds = %for.inc79, %for.body44.lr.ph
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.inc79 ], [ %indvars.iv169, %for.body44.lr.ph ]
  %arrayidx46 = getelementptr inbounds i32* %ia, i64 %indvars.iv171
  %16 = load i32* %arrayidx46, align 4, !tbaa !0
  %sub47 = add nsw i32 %16, -1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds i32* %iz, i64 %idxprom48
  %17 = load i32* %arrayidx49, align 4, !tbaa !0
  %idxprom51 = sext i32 %16 to i64
  %arrayidx52 = getelementptr inbounds i32* %iz, i64 %idxprom51
  %18 = load i32* %arrayidx52, align 4, !tbaa !0
  %19 = sext i32 %17 to i64
  br label %for.cond53

for.cond53:                                       ; preds = %if.end, %for.body44
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %19, %for.body44 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = trunc i64 %indvars.iv to i32
  %cmp54 = icmp slt i32 %20, %18
  br i1 %cmp54, label %for.body55, label %for.inc79

for.body55:                                       ; preds = %for.cond53
  %arrayidx57 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next
  %21 = load i32* %arrayidx57, align 4, !tbaa !0
  %cmp60 = icmp sgt i32 %21, %12
  br i1 %cmp60, label %for.inc79, label %if.end

if.end:                                           ; preds = %for.body55
  %cmp65 = icmp slt i32 %21, %12
  br i1 %cmp65, label %for.cond53, label %if.end67

if.end67:                                         ; preds = %if.end
  %22 = load double* %arrayidx39, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds double* %C, i64 %indvars.iv.next
  %23 = load double* %arrayidx71, align 8, !tbaa !3
  %mul72 = fmul double %22, %23
  %arrayidx74 = getelementptr inbounds double* %C, i64 %indvars.iv171
  %24 = load double* %arrayidx74, align 8, !tbaa !3
  %sub75 = fsub double %24, %mul72
  store double %sub75, double* %arrayidx74, align 8, !tbaa !3
  br label %for.inc79

for.inc79:                                        ; preds = %for.cond53, %for.body55, %if.end67
  %25 = trunc i64 %indvars.iv171 to i32
  %cmp43 = icmp slt i32 %25, %8
  %indvars.iv.next172 = add i64 %indvars.iv171, 1
  br i1 %cmp43, label %for.body44, label %for.cond29.loopexit

for.end84:                                        ; preds = %for.cond29.loopexit, %for.body22
  %idxprom87 = sext i32 %8 to i64
  %arrayidx88 = getelementptr inbounds double* %C, i64 %idxprom87
  %26 = load double* %arrayidx88, align 8, !tbaa !3
  %cmp89 = fcmp olt double %26, 1.000000e-06
  br i1 %cmp89, label %return, label %if.end91

if.end91:                                         ; preds = %for.end84
  %call = tail call double @sqrt(double %26) #5
  store double %call, double* %arrayidx88, align 8, !tbaa !3
  %indvars.iv.next178 = add i64 %indvars.iv177, 1
  %27 = trunc i64 %indvars.iv.next178 to i32
  %cmp21 = icmp slt i32 %27, %neq
  br i1 %cmp21, label %for.body22, label %for.end98

for.end98:                                        ; preds = %entry, %if.end91, %for.cond20.preheader
  store i32 1, i32* %ier, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end84, %for.end98
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Mrhor(double* nocapture %C, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %r, double* nocapture %rho) #0 {
entry:
  %0 = load double* %r, align 8, !tbaa !3
  store double %0, double* %rho, align 8, !tbaa !3
  %cmp110 = icmp sgt i32 %neq, 1
  br i1 %cmp110, label %for.body.lr.ph, label %for.cond26.preheader

for.body.lr.ph:                                   ; preds = %entry
  %.pre = load i32* %iz, align 4, !tbaa !0
  br label %for.body

for.cond26.preheader:                             ; preds = %for.end, %entry
  %i.1102 = add i32 %neq, -1
  %cmp27103 = icmp sgt i32 %i.1102, 0
  br i1 %cmp27103, label %for.body28.lr.ph, label %for.end60

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %1 = sext i32 %i.1102 to i64
  br label %for.body28

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.end ]
  %indvars.iv118 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next119, %for.end ]
  %arrayidx4 = getelementptr inbounds i32* %iz, i64 %indvars.iv118
  %3 = load i32* %arrayidx4, align 4, !tbaa !0
  %j.0106 = add i32 %2, 1
  %cmp6107 = icmp slt i32 %j.0106, %3
  br i1 %cmp6107, label %for.body7.lr.ph, label %for.end

for.body7.lr.ph:                                  ; preds = %for.body
  %4 = sext i32 %j.0106 to i64
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv115 = phi i64 [ %4, %for.body7.lr.ph ], [ %indvars.iv.next116, %for.body7 ]
  %j.0109 = phi i32 [ %j.0106, %for.body7.lr.ph ], [ %j.0, %for.body7 ]
  %s.0108 = phi double [ 0.000000e+00, %for.body7.lr.ph ], [ %add14, %for.body7 ]
  %arrayidx9 = getelementptr inbounds double* %C, i64 %indvars.iv115
  %5 = load double* %arrayidx9, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %ia, i64 %indvars.iv115
  %6 = load i32* %arrayidx11, align 4, !tbaa !0
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds double* %rho, i64 %idxprom12
  %7 = load double* %arrayidx13, align 8, !tbaa !3
  %mul = fmul double %5, %7
  %add14 = fadd double %s.0108, %mul
  %j.0 = add nsw i32 %j.0109, 1
  %indvars.iv.next116 = add i64 %indvars.iv115, 1
  %exitcond = icmp eq i32 %j.0, %3
  br i1 %exitcond, label %for.end, label %for.body7

for.end:                                          ; preds = %for.body7, %for.body
  %s.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %add14, %for.body7 ]
  %arrayidx16 = getelementptr inbounds double* %r, i64 %indvars.iv118
  %8 = load double* %arrayidx16, align 8, !tbaa !3
  %sub17 = fsub double %8, %s.0.lcssa
  %idxprom18 = sext i32 %3 to i64
  %arrayidx19 = getelementptr inbounds double* %C, i64 %idxprom18
  %9 = load double* %arrayidx19, align 8, !tbaa !3
  %div = fdiv double %sub17, %9
  %arrayidx21 = getelementptr inbounds double* %rho, i64 %indvars.iv118
  store double %div, double* %arrayidx21, align 8, !tbaa !3
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32
  %exitcond121 = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond121, label %for.cond26.preheader, label %for.body

for.cond26.loopexit:                              ; preds = %for.body45, %for.body28
  %i.1 = add nsw i32 %i.1105, -1
  %cmp27 = icmp sgt i32 %i.1, 0
  %indvars.iv.next113 = add i64 %indvars.iv112, -1
  %10 = trunc i64 %indvars.iv112 to i32
  br i1 %cmp27, label %for.body28, label %for.end60

for.body28:                                       ; preds = %for.body28.lr.ph, %for.cond26.loopexit
  %indvars.iv112 = phi i64 [ %1, %for.body28.lr.ph ], [ %indvars.iv.next113, %for.cond26.loopexit ]
  %i.1105 = phi i32 [ %i.1102, %for.body28.lr.ph ], [ %i.1, %for.cond26.loopexit ]
  %i.1.in104 = phi i32 [ %neq, %for.body28.lr.ph ], [ %10, %for.cond26.loopexit ]
  %arrayidx30 = getelementptr inbounds i32* %iz, i64 %indvars.iv112
  %11 = load i32* %arrayidx30, align 4, !tbaa !0
  %idxprom31 = sext i32 %11 to i64
  %arrayidx32 = getelementptr inbounds double* %C, i64 %idxprom31
  %12 = load double* %arrayidx32, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds double* %rho, i64 %indvars.iv112
  %13 = load double* %arrayidx34, align 8, !tbaa !3
  %div35 = fdiv double %13, %12
  store double %div35, double* %arrayidx34, align 8, !tbaa !3
  %sub36 = add nsw i32 %i.1.in104, -2
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds i32* %iz, i64 %idxprom37
  %14 = load i32* %arrayidx38, align 4, !tbaa !0
  %sub42 = add nsw i32 %11, -1
  %cmp44100 = icmp slt i32 %14, %sub42
  br i1 %cmp44100, label %for.body45.lr.ph, label %for.cond26.loopexit

for.body45.lr.ph:                                 ; preds = %for.body28
  %15 = sext i32 %14 to i64
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.body45.lr.ph
  %16 = phi double [ %div35, %for.body45.lr.ph ], [ %.pre122, %for.body45.for.body45_crit_edge ]
  %indvars.iv = phi i64 [ %15, %for.body45.lr.ph ], [ %indvars.iv.next, %for.body45.for.body45_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx47 = getelementptr inbounds double* %C, i64 %indvars.iv.next
  %17 = load double* %arrayidx47, align 8, !tbaa !3
  %mul50 = fmul double %17, %16
  %arrayidx52 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next
  %18 = load i32* %arrayidx52, align 4, !tbaa !0
  %idxprom53 = sext i32 %18 to i64
  %arrayidx54 = getelementptr inbounds double* %rho, i64 %idxprom53
  %19 = load double* %arrayidx54, align 8, !tbaa !3
  %sub55 = fsub double %19, %mul50
  store double %sub55, double* %arrayidx54, align 8, !tbaa !3
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp44 = icmp slt i32 %20, %sub42
  br i1 %cmp44, label %for.body45.for.body45_crit_edge, label %for.cond26.loopexit

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  %.pre122 = load double* %arrayidx34, align 8, !tbaa !3
  br label %for.body45

for.end60:                                        ; preds = %for.cond26.loopexit, %for.cond26.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InnerProduct(double* nocapture %a, double* nocapture %b, i32 %n, double* nocapture %Sum) #0 {
entry:
  store double 0.000000e+00, double* %Sum, align 8, !tbaa !3
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %0 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %a, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds double* %b, i64 %indvars.iv
  %2 = load double* %arrayidx2, align 8, !tbaa !3
  %mul = fmul double %1, %2
  %add = fadd double %0, %mul
  store double %add, double* %Sum, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MatVecProduct(double* nocapture %A, double* nocapture %p, i32 %neq, i32* nocapture %ia, i32* nocapture %iz, double* nocapture %z) #0 {
entry:
  %0 = load i32* %iz, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %arrayidx1 = getelementptr inbounds double* %A, i64 %idxprom
  %1 = load double* %arrayidx1, align 8, !tbaa !3
  %2 = load double* %p, align 8, !tbaa !3
  %mul = fmul double %1, %2
  store double %mul, double* %z, align 8, !tbaa !3
  %cmp70 = icmp sgt i32 %neq, 1
  br i1 %cmp70, label %for.body, label %for.end41

for.body:                                         ; preds = %entry, %for.inc39
  %3 = phi i32 [ %4, %for.inc39 ], [ %0, %entry ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc39 ], [ 1, %entry ]
  %arrayidx5 = getelementptr inbounds i32* %iz, i64 %indvars.iv72
  %4 = load i32* %arrayidx5, align 4, !tbaa !0
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds double* %A, i64 %idxprom6
  %5 = load double* %arrayidx7, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds double* %p, i64 %indvars.iv72
  %6 = load double* %arrayidx9, align 8, !tbaa !3
  %mul10 = fmul double %5, %6
  %arrayidx12 = getelementptr inbounds double* %z, i64 %indvars.iv72
  store double %mul10, double* %arrayidx12, align 8, !tbaa !3
  %sub17 = add nsw i32 %4, -1
  %cmp1968 = icmp slt i32 %3, %sub17
  br i1 %cmp1968, label %for.body20.lr.ph, label %for.inc39

for.body20.lr.ph:                                 ; preds = %for.body
  %7 = sext i32 %3 to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %8 = phi double [ %mul10, %for.body20.lr.ph ], [ %.pre, %for.body20.for.body20_crit_edge ]
  %indvars.iv = phi i64 [ %7, %for.body20.lr.ph ], [ %indvars.iv.next, %for.body20.for.body20_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx22 = getelementptr inbounds i32* %ia, i64 %indvars.iv.next
  %9 = load i32* %arrayidx22, align 4, !tbaa !0
  %arrayidx24 = getelementptr inbounds double* %A, i64 %indvars.iv.next
  %10 = load double* %arrayidx24, align 8, !tbaa !3
  %idxprom25 = sext i32 %9 to i64
  %arrayidx26 = getelementptr inbounds double* %p, i64 %idxprom25
  %11 = load double* %arrayidx26, align 8, !tbaa !3
  %mul27 = fmul double %10, %11
  %add30 = fadd double %8, %mul27
  store double %add30, double* %arrayidx12, align 8, !tbaa !3
  %12 = load double* %arrayidx24, align 8, !tbaa !3
  %13 = load double* %arrayidx9, align 8, !tbaa !3
  %mul35 = fmul double %12, %13
  %arrayidx37 = getelementptr inbounds double* %z, i64 %idxprom25
  %14 = load double* %arrayidx37, align 8, !tbaa !3
  %add38 = fadd double %14, %mul35
  store double %add38, double* %arrayidx37, align 8, !tbaa !3
  %15 = trunc i64 %indvars.iv.next to i32
  %cmp19 = icmp slt i32 %15, %sub17
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.inc39

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  %.pre = load double* %arrayidx12, align 8, !tbaa !3
  br label %for.body20

for.inc39:                                        ; preds = %for.body20, %for.body
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next73 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %neq
  br i1 %exitcond, label %for.end41, label %for.body

for.end41:                                        ; preds = %for.inc39, %entry
  ret void
}

; Function Attrs: optsize
declare void @stop_(...) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
