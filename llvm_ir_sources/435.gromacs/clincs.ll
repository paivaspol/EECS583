; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/clincs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @clincsp([3 x float]* nocapture %x, [3 x float]* nocapture %f, [3 x float]* nocapture %fp, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, i32* nocapture %blnr, i32* nocapture %blbnb, float* nocapture %blc, float* nocapture %blcc, float* nocapture %blm, i32 %nrec, float* nocapture %invmass, [3 x float]* nocapture %r, float* nocapture %rhs1, float* nocapture %rhs2, float* nocapture %sol) #0 {
entry:
  %cmp416 = icmp sgt i32 %ncons, 0
  br i1 %cmp416, label %for.body, label %for.cond125.preheader

for.cond39.preheader:                             ; preds = %for.body
  br i1 %cmp416, label %for.body42.lr.ph, label %for.cond125.preheader

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %.pre435 = load i32* %blnr, align 4, !tbaa !0
  br label %for.body42

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv431
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %bla2, i64 %indvars.iv431
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 0
  %2 = load float* %arrayidx5, align 4, !tbaa !3
  %idxprom6 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 0
  %3 = load float* %arrayidx8, align 4, !tbaa !3
  %sub = fsub float %2, %3
  %arrayidx11 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 1
  %4 = load float* %arrayidx11, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 1
  %5 = load float* %arrayidx14, align 4, !tbaa !3
  %sub15 = fsub float %4, %5
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 2
  %6 = load float* %arrayidx18, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 2
  %7 = load float* %arrayidx21, align 4, !tbaa !3
  %sub22 = fsub float %6, %7
  %mul = fmul float %sub, %sub
  %mul23 = fmul float %sub15, %sub15
  %add = fadd float %mul, %mul23
  %mul24 = fmul float %sub22, %sub22
  %add25 = fadd float %add, %mul24
  %conv = fpext float %add25 to double
  %call = tail call double @sqrt(double %conv) #2
  %div = fdiv double 1.000000e+00, %call
  %conv26 = fptrunc double %div to float
  %mul27 = fmul float %sub, %conv26
  %arrayidx30 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv431, i64 0
  store float %mul27, float* %arrayidx30, align 4, !tbaa !3
  %mul31 = fmul float %sub15, %conv26
  %arrayidx34 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv431, i64 1
  store float %mul31, float* %arrayidx34, align 4, !tbaa !3
  %mul35 = fmul float %sub22, %conv26
  %arrayidx38 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv431, i64 2
  store float %mul35, float* %arrayidx38, align 4, !tbaa !3
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %lftr.wideiv433 = trunc i64 %indvars.iv.next432 to i32
  %exitcond434 = icmp eq i32 %lftr.wideiv433, %ncons
  br i1 %exitcond434, label %for.cond39.preheader, label %for.body

for.cond125.preheader:                            ; preds = %entry, %for.end88, %for.cond39.preheader
  %cmp126407 = icmp sgt i32 %nrec, 0
  br i1 %cmp126407, label %for.cond129.preheader, label %for.cond166.preheader

for.body42:                                       ; preds = %for.end88, %for.body42.lr.ph
  %8 = phi i32 [ %.pre435, %for.body42.lr.ph ], [ %14, %for.end88 ]
  %indvars.iv427 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next428, %for.end88 ]
  %arrayidx45 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv427, i64 0
  %9 = load float* %arrayidx45, align 4, !tbaa !3
  %arrayidx48 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv427, i64 1
  %10 = load float* %arrayidx48, align 4, !tbaa !3
  %arrayidx51 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv427, i64 2
  %11 = load float* %arrayidx51, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds i32* %bla1, i64 %indvars.iv427
  %12 = load i32* %arrayidx53, align 4, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %bla2, i64 %indvars.iv427
  %13 = load i32* %arrayidx55, align 4, !tbaa !0
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %arrayidx61 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next428
  %14 = load i32* %arrayidx61, align 4, !tbaa !0
  %cmp62411 = icmp slt i32 %8, %14
  br i1 %cmp62411, label %for.body64.lr.ph, label %for.end88

for.body64.lr.ph:                                 ; preds = %for.body42
  %15 = sext i32 %8 to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.body64
  %indvars.iv425 = phi i64 [ %15, %for.body64.lr.ph ], [ %indvars.iv.next426, %for.body64 ]
  %arrayidx66 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv425
  %16 = load i32* %arrayidx66, align 4, !tbaa !0
  %arrayidx68 = getelementptr inbounds float* %blcc, i64 %indvars.iv425
  %17 = load float* %arrayidx68, align 4, !tbaa !3
  %idxprom69 = sext i32 %16 to i64
  %arrayidx71 = getelementptr inbounds [3 x float]* %r, i64 %idxprom69, i64 0
  %18 = load float* %arrayidx71, align 4, !tbaa !3
  %mul72 = fmul float %9, %18
  %arrayidx75 = getelementptr inbounds [3 x float]* %r, i64 %idxprom69, i64 1
  %19 = load float* %arrayidx75, align 4, !tbaa !3
  %mul76 = fmul float %10, %19
  %add77 = fadd float %mul72, %mul76
  %arrayidx80 = getelementptr inbounds [3 x float]* %r, i64 %idxprom69, i64 2
  %20 = load float* %arrayidx80, align 4, !tbaa !3
  %mul81 = fmul float %11, %20
  %add82 = fadd float %add77, %mul81
  %mul83 = fmul float %17, %add82
  %arrayidx85 = getelementptr inbounds float* %blm, i64 %indvars.iv425
  store float %mul83, float* %arrayidx85, align 4, !tbaa !3
  %indvars.iv.next426 = add i64 %indvars.iv425, 1
  %21 = trunc i64 %indvars.iv.next426 to i32
  %cmp62 = icmp slt i32 %21, %14
  br i1 %cmp62, label %for.body64, label %for.end88

for.end88:                                        ; preds = %for.body64, %for.body42
  %arrayidx90 = getelementptr inbounds float* %blc, i64 %indvars.iv427
  %22 = load float* %arrayidx90, align 4, !tbaa !3
  %idxprom91 = sext i32 %12 to i64
  %arrayidx93 = getelementptr inbounds [3 x float]* %f, i64 %idxprom91, i64 0
  %23 = load float* %arrayidx93, align 4, !tbaa !3
  %idxprom94 = sext i32 %13 to i64
  %arrayidx96 = getelementptr inbounds [3 x float]* %f, i64 %idxprom94, i64 0
  %24 = load float* %arrayidx96, align 4, !tbaa !3
  %sub97 = fsub float %23, %24
  %mul98 = fmul float %9, %sub97
  %arrayidx101 = getelementptr inbounds [3 x float]* %f, i64 %idxprom91, i64 1
  %25 = load float* %arrayidx101, align 4, !tbaa !3
  %arrayidx104 = getelementptr inbounds [3 x float]* %f, i64 %idxprom94, i64 1
  %26 = load float* %arrayidx104, align 4, !tbaa !3
  %sub105 = fsub float %25, %26
  %mul106 = fmul float %10, %sub105
  %add107 = fadd float %mul98, %mul106
  %arrayidx110 = getelementptr inbounds [3 x float]* %f, i64 %idxprom91, i64 2
  %27 = load float* %arrayidx110, align 4, !tbaa !3
  %arrayidx113 = getelementptr inbounds [3 x float]* %f, i64 %idxprom94, i64 2
  %28 = load float* %arrayidx113, align 4, !tbaa !3
  %sub114 = fsub float %27, %28
  %mul115 = fmul float %11, %sub114
  %add116 = fadd float %add107, %mul115
  %mul117 = fmul float %22, %add116
  %arrayidx119 = getelementptr inbounds float* %rhs1, i64 %indvars.iv427
  store float %mul117, float* %arrayidx119, align 4, !tbaa !3
  %arrayidx121 = getelementptr inbounds float* %sol, i64 %indvars.iv427
  store float %mul117, float* %arrayidx121, align 4, !tbaa !3
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32
  %exitcond430 = icmp eq i32 %lftr.wideiv429, %ncons
  br i1 %exitcond430, label %for.cond125.preheader, label %for.body42

for.cond129.preheader:                            ; preds = %for.cond125.preheader, %for.end162
  %rhs1.addr.0410 = phi float* [ %rhs2.addr.0409, %for.end162 ], [ %rhs1, %for.cond125.preheader ]
  %rhs2.addr.0409 = phi float* [ %rhs1.addr.0410, %for.end162 ], [ %rhs2, %for.cond125.preheader ]
  %rec.0408 = phi i32 [ %inc164, %for.end162 ], [ 0, %for.cond125.preheader ]
  br i1 %cmp416, label %for.body132.lr.ph, label %for.end162

for.body132.lr.ph:                                ; preds = %for.cond129.preheader
  %.pre = load i32* %blnr, align 4, !tbaa !0
  br label %for.body132

for.cond166.preheader:                            ; preds = %for.end162, %for.cond125.preheader
  br i1 %cmp416, label %for.body169, label %for.end245

for.body132:                                      ; preds = %for.end152, %for.body132.lr.ph
  %29 = phi i32 [ %.pre, %for.body132.lr.ph ], [ %30, %for.end152 ]
  %indvars.iv420 = phi i64 [ 0, %for.body132.lr.ph ], [ %indvars.iv.next421, %for.end152 ]
  %indvars.iv.next421 = add i64 %indvars.iv420, 1
  %arrayidx138 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next421
  %30 = load i32* %arrayidx138, align 4, !tbaa !0
  %cmp139401 = icmp slt i32 %29, %30
  br i1 %cmp139401, label %for.body141.lr.ph, label %for.end152

for.body141.lr.ph:                                ; preds = %for.body132
  %31 = sext i32 %29 to i64
  br label %for.body141

for.body141:                                      ; preds = %for.body141.lr.ph, %for.body141
  %indvars.iv418 = phi i64 [ %31, %for.body141.lr.ph ], [ %indvars.iv.next419, %for.body141 ]
  %mvb.0402 = phi float [ 0.000000e+00, %for.body141.lr.ph ], [ %add149, %for.body141 ]
  %arrayidx143 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv418
  %32 = load i32* %arrayidx143, align 4, !tbaa !0
  %arrayidx145 = getelementptr inbounds float* %blm, i64 %indvars.iv418
  %33 = load float* %arrayidx145, align 4, !tbaa !3
  %idxprom146 = sext i32 %32 to i64
  %arrayidx147 = getelementptr inbounds float* %rhs1.addr.0410, i64 %idxprom146
  %34 = load float* %arrayidx147, align 4, !tbaa !3
  %mul148 = fmul float %33, %34
  %add149 = fadd float %mvb.0402, %mul148
  %indvars.iv.next419 = add i64 %indvars.iv418, 1
  %35 = trunc i64 %indvars.iv.next419 to i32
  %cmp139 = icmp slt i32 %35, %30
  br i1 %cmp139, label %for.body141, label %for.end152

for.end152:                                       ; preds = %for.body141, %for.body132
  %mvb.0.lcssa = phi float [ 0.000000e+00, %for.body132 ], [ %add149, %for.body141 ]
  %arrayidx154 = getelementptr inbounds float* %rhs2.addr.0409, i64 %indvars.iv420
  store float %mvb.0.lcssa, float* %arrayidx154, align 4, !tbaa !3
  %arrayidx156 = getelementptr inbounds float* %sol, i64 %indvars.iv420
  %36 = load float* %arrayidx156, align 4, !tbaa !3
  %add157 = fadd float %mvb.0.lcssa, %36
  store float %add157, float* %arrayidx156, align 4, !tbaa !3
  %lftr.wideiv422 = trunc i64 %indvars.iv.next421 to i32
  %exitcond423 = icmp eq i32 %lftr.wideiv422, %ncons
  br i1 %exitcond423, label %for.end162, label %for.body132

for.end162:                                       ; preds = %for.end152, %for.cond129.preheader
  %inc164 = add nsw i32 %rec.0408, 1
  %exitcond424 = icmp eq i32 %inc164, %nrec
  br i1 %exitcond424, label %for.cond166.preheader, label %for.cond129.preheader

for.body169:                                      ; preds = %for.cond166.preheader, %for.body169
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body169 ], [ 0, %for.cond166.preheader ]
  %arrayidx171 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %37 = load i32* %arrayidx171, align 4, !tbaa !0
  %arrayidx173 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %38 = load i32* %arrayidx173, align 4, !tbaa !0
  %arrayidx175 = getelementptr inbounds float* %blc, i64 %indvars.iv
  %39 = load float* %arrayidx175, align 4, !tbaa !3
  %arrayidx177 = getelementptr inbounds float* %sol, i64 %indvars.iv
  %40 = load float* %arrayidx177, align 4, !tbaa !3
  %mul178 = fmul float %39, %40
  %idxprom179 = sext i32 %37 to i64
  %arrayidx180 = getelementptr inbounds float* %invmass, i64 %idxprom179
  %41 = load float* %arrayidx180, align 4, !tbaa !3
  %idxprom181 = sext i32 %38 to i64
  %arrayidx182 = getelementptr inbounds float* %invmass, i64 %idxprom181
  %42 = load float* %arrayidx182, align 4, !tbaa !3
  %arrayidx185 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 0
  %43 = load float* %arrayidx185, align 4, !tbaa !3
  %mul186 = fmul float %mul178, %43
  %arrayidx189 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 1
  %44 = load float* %arrayidx189, align 4, !tbaa !3
  %mul190 = fmul float %mul178, %44
  %arrayidx193 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv, i64 2
  %45 = load float* %arrayidx193, align 4, !tbaa !3
  %mul194 = fmul float %mul178, %45
  %arrayidx197 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom179, i64 0
  %46 = load float* %arrayidx197, align 4, !tbaa !3
  %mul198 = fmul float %41, %mul186
  %sub199 = fsub float %46, %mul198
  %arrayidx202 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom179, i64 1
  %47 = load float* %arrayidx202, align 4, !tbaa !3
  %mul203 = fmul float %41, %mul190
  %sub204 = fsub float %47, %mul203
  %arrayidx207 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom179, i64 2
  %48 = load float* %arrayidx207, align 4, !tbaa !3
  %mul208 = fmul float %41, %mul194
  %sub209 = fsub float %48, %mul208
  %arrayidx212 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom181, i64 0
  %49 = load float* %arrayidx212, align 4, !tbaa !3
  %mul213 = fmul float %42, %mul186
  %add214 = fadd float %mul213, %49
  %arrayidx217 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom181, i64 1
  %50 = load float* %arrayidx217, align 4, !tbaa !3
  %mul218 = fmul float %42, %mul190
  %add219 = fadd float %mul218, %50
  %arrayidx222 = getelementptr inbounds [3 x float]* %fp, i64 %idxprom181, i64 2
  %51 = load float* %arrayidx222, align 4, !tbaa !3
  %mul223 = fmul float %42, %mul194
  %add224 = fadd float %mul223, %51
  store float %sub199, float* %arrayidx197, align 4, !tbaa !3
  store float %sub204, float* %arrayidx202, align 4, !tbaa !3
  store float %sub209, float* %arrayidx207, align 4, !tbaa !3
  store float %add214, float* %arrayidx212, align 4, !tbaa !3
  store float %add219, float* %arrayidx217, align 4, !tbaa !3
  store float %add224, float* %arrayidx222, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons
  br i1 %exitcond, label %for.end245, label %for.body169

for.end245:                                       ; preds = %for.body169, %for.cond166.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @clincs([3 x float]* nocapture %x, [3 x float]* %xp, i32 %ncons, i32* nocapture %bla1, i32* nocapture %bla2, i32* nocapture %blnr, i32* nocapture %blbnb, float* nocapture %bllen, float* nocapture %blc, float* nocapture %blcc, float* nocapture %blm, i32 %nit, i32 %nrec, float* nocapture %invmass, [3 x float]* nocapture %r, float* nocapture %rhs1, float* nocapture %rhs2, float* nocapture %sol, float %wangle, i32* nocapture %warn, float* nocapture %lambda) #0 {
entry:
  store i32 0, i32* %warn, align 4, !tbaa !0
  %cmp801 = icmp sgt i32 %ncons, 0
  br i1 %cmp801, label %for.body, label %for.cond128.preheader

for.cond39.preheader:                             ; preds = %for.body
  br i1 %cmp801, label %for.body42.lr.ph, label %for.cond128.preheader

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %.pre837 = load i32* %blnr, align 4, !tbaa !0
  br label %for.body42

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %bla1, i64 %indvars.iv832
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %bla2, i64 %indvars.iv832
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 0
  %2 = load float* %arrayidx5, align 4, !tbaa !3
  %idxprom6 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 0
  %3 = load float* %arrayidx8, align 4, !tbaa !3
  %sub = fsub float %2, %3
  %arrayidx11 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 1
  %4 = load float* %arrayidx11, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 1
  %5 = load float* %arrayidx14, align 4, !tbaa !3
  %sub15 = fsub float %4, %5
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom3, i64 2
  %6 = load float* %arrayidx18, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom6, i64 2
  %7 = load float* %arrayidx21, align 4, !tbaa !3
  %sub22 = fsub float %6, %7
  %mul = fmul float %sub, %sub
  %mul23 = fmul float %sub15, %sub15
  %add = fadd float %mul, %mul23
  %mul24 = fmul float %sub22, %sub22
  %add25 = fadd float %add, %mul24
  %conv = fpext float %add25 to double
  %call = tail call double @sqrt(double %conv) #2
  %div = fdiv double 1.000000e+00, %call
  %conv26 = fptrunc double %div to float
  %mul27 = fmul float %sub, %conv26
  %arrayidx30 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv832, i64 0
  store float %mul27, float* %arrayidx30, align 4, !tbaa !3
  %mul31 = fmul float %sub15, %conv26
  %arrayidx34 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv832, i64 1
  store float %mul31, float* %arrayidx34, align 4, !tbaa !3
  %mul35 = fmul float %sub22, %conv26
  %arrayidx38 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv832, i64 2
  store float %mul35, float* %arrayidx38, align 4, !tbaa !3
  %indvars.iv.next833 = add i64 %indvars.iv832, 1
  %lftr.wideiv834 = trunc i64 %indvars.iv.next833 to i32
  %exitcond835 = icmp eq i32 %lftr.wideiv834, %ncons
  br i1 %exitcond835, label %for.cond39.preheader, label %for.body

for.cond128.preheader:                            ; preds = %entry, %for.end90, %for.cond39.preheader
  %cmp129790 = icmp sgt i32 %nrec, 0
  br i1 %cmp129790, label %for.cond132.preheader, label %for.cond169.preheader

for.body42:                                       ; preds = %for.end90, %for.body42.lr.ph
  %8 = phi i32 [ %.pre837, %for.body42.lr.ph ], [ %15, %for.end90 ]
  %indvars.iv828 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next829, %for.end90 ]
  %arrayidx45 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv828, i64 0
  %9 = load float* %arrayidx45, align 4, !tbaa !3
  %arrayidx48 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv828, i64 1
  %10 = load float* %arrayidx48, align 4, !tbaa !3
  %arrayidx51 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv828, i64 2
  %11 = load float* %arrayidx51, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds float* %bllen, i64 %indvars.iv828
  %12 = load float* %arrayidx53, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32* %bla1, i64 %indvars.iv828
  %13 = load i32* %arrayidx55, align 4, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %bla2, i64 %indvars.iv828
  %14 = load i32* %arrayidx57, align 4, !tbaa !0
  %indvars.iv.next829 = add i64 %indvars.iv828, 1
  %arrayidx63 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next829
  %15 = load i32* %arrayidx63, align 4, !tbaa !0
  %cmp64796 = icmp slt i32 %8, %15
  br i1 %cmp64796, label %for.body66.lr.ph, label %for.end90

for.body66.lr.ph:                                 ; preds = %for.body42
  %16 = sext i32 %8 to i64
  br label %for.body66

for.body66:                                       ; preds = %for.body66.lr.ph, %for.body66
  %indvars.iv826 = phi i64 [ %16, %for.body66.lr.ph ], [ %indvars.iv.next827, %for.body66 ]
  %arrayidx68 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv826
  %17 = load i32* %arrayidx68, align 4, !tbaa !0
  %arrayidx70 = getelementptr inbounds float* %blcc, i64 %indvars.iv826
  %18 = load float* %arrayidx70, align 4, !tbaa !3
  %idxprom71 = sext i32 %17 to i64
  %arrayidx73 = getelementptr inbounds [3 x float]* %r, i64 %idxprom71, i64 0
  %19 = load float* %arrayidx73, align 4, !tbaa !3
  %mul74 = fmul float %9, %19
  %arrayidx77 = getelementptr inbounds [3 x float]* %r, i64 %idxprom71, i64 1
  %20 = load float* %arrayidx77, align 4, !tbaa !3
  %mul78 = fmul float %10, %20
  %add79 = fadd float %mul74, %mul78
  %arrayidx82 = getelementptr inbounds [3 x float]* %r, i64 %idxprom71, i64 2
  %21 = load float* %arrayidx82, align 4, !tbaa !3
  %mul83 = fmul float %11, %21
  %add84 = fadd float %add79, %mul83
  %mul85 = fmul float %18, %add84
  %arrayidx87 = getelementptr inbounds float* %blm, i64 %indvars.iv826
  store float %mul85, float* %arrayidx87, align 4, !tbaa !3
  %indvars.iv.next827 = add i64 %indvars.iv826, 1
  %22 = trunc i64 %indvars.iv.next827 to i32
  %cmp64 = icmp slt i32 %22, %15
  br i1 %cmp64, label %for.body66, label %for.end90

for.end90:                                        ; preds = %for.body66, %for.body42
  %arrayidx92 = getelementptr inbounds float* %blc, i64 %indvars.iv828
  %23 = load float* %arrayidx92, align 4, !tbaa !3
  %idxprom93 = sext i32 %13 to i64
  %arrayidx95 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom93, i64 0
  %24 = load float* %arrayidx95, align 4, !tbaa !3
  %idxprom96 = sext i32 %14 to i64
  %arrayidx98 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom96, i64 0
  %25 = load float* %arrayidx98, align 4, !tbaa !3
  %sub99 = fsub float %24, %25
  %mul100 = fmul float %9, %sub99
  %arrayidx103 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom93, i64 1
  %26 = load float* %arrayidx103, align 4, !tbaa !3
  %arrayidx106 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom96, i64 1
  %27 = load float* %arrayidx106, align 4, !tbaa !3
  %sub107 = fsub float %26, %27
  %mul108 = fmul float %10, %sub107
  %add109 = fadd float %mul100, %mul108
  %arrayidx112 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom93, i64 2
  %28 = load float* %arrayidx112, align 4, !tbaa !3
  %arrayidx115 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom96, i64 2
  %29 = load float* %arrayidx115, align 4, !tbaa !3
  %sub116 = fsub float %28, %29
  %mul117 = fmul float %11, %sub116
  %add118 = fadd float %add109, %mul117
  %sub119 = fsub float %add118, %12
  %mul120 = fmul float %23, %sub119
  %arrayidx122 = getelementptr inbounds float* %rhs1, i64 %indvars.iv828
  store float %mul120, float* %arrayidx122, align 4, !tbaa !3
  %arrayidx124 = getelementptr inbounds float* %sol, i64 %indvars.iv828
  store float %mul120, float* %arrayidx124, align 4, !tbaa !3
  %lftr.wideiv830 = trunc i64 %indvars.iv.next829 to i32
  %exitcond831 = icmp eq i32 %lftr.wideiv830, %ncons
  br i1 %exitcond831, label %for.cond128.preheader, label %for.body42

for.cond132.preheader:                            ; preds = %for.cond128.preheader, %for.end165
  %rhs1.addr.0793 = phi float* [ %rhs2.addr.0792, %for.end165 ], [ %rhs1, %for.cond128.preheader ]
  %rhs2.addr.0792 = phi float* [ %rhs1.addr.0793, %for.end165 ], [ %rhs2, %for.cond128.preheader ]
  %rec.0791 = phi i32 [ %inc167, %for.end165 ], [ 0, %for.cond128.preheader ]
  br i1 %cmp801, label %for.body135.lr.ph, label %for.end165

for.body135.lr.ph:                                ; preds = %for.cond132.preheader
  %.pre836 = load i32* %blnr, align 4, !tbaa !0
  br label %for.body135

for.cond169.preheader:                            ; preds = %for.end165, %for.cond128.preheader
  %rhs1.addr.0.lcssa = phi float* [ %rhs1, %for.cond128.preheader ], [ %rhs2.addr.0792, %for.end165 ]
  %rhs2.addr.0.lcssa = phi float* [ %rhs2, %for.cond128.preheader ], [ %rhs1.addr.0793, %for.end165 ]
  br i1 %cmp801, label %for.body172, label %for.end251

for.body135:                                      ; preds = %for.end155, %for.body135.lr.ph
  %30 = phi i32 [ %.pre836, %for.body135.lr.ph ], [ %31, %for.end155 ]
  %indvars.iv821 = phi i64 [ 0, %for.body135.lr.ph ], [ %indvars.iv.next822, %for.end155 ]
  %indvars.iv.next822 = add i64 %indvars.iv821, 1
  %arrayidx141 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next822
  %31 = load i32* %arrayidx141, align 4, !tbaa !0
  %cmp142783 = icmp slt i32 %30, %31
  br i1 %cmp142783, label %for.body144.lr.ph, label %for.end155

for.body144.lr.ph:                                ; preds = %for.body135
  %32 = sext i32 %30 to i64
  br label %for.body144

for.body144:                                      ; preds = %for.body144.lr.ph, %for.body144
  %indvars.iv819 = phi i64 [ %32, %for.body144.lr.ph ], [ %indvars.iv.next820, %for.body144 ]
  %mvb.0785 = phi float [ 0.000000e+00, %for.body144.lr.ph ], [ %add152, %for.body144 ]
  %arrayidx146 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv819
  %33 = load i32* %arrayidx146, align 4, !tbaa !0
  %arrayidx148 = getelementptr inbounds float* %blm, i64 %indvars.iv819
  %34 = load float* %arrayidx148, align 4, !tbaa !3
  %idxprom149 = sext i32 %33 to i64
  %arrayidx150 = getelementptr inbounds float* %rhs1.addr.0793, i64 %idxprom149
  %35 = load float* %arrayidx150, align 4, !tbaa !3
  %mul151 = fmul float %34, %35
  %add152 = fadd float %mvb.0785, %mul151
  %indvars.iv.next820 = add i64 %indvars.iv819, 1
  %36 = trunc i64 %indvars.iv.next820 to i32
  %cmp142 = icmp slt i32 %36, %31
  br i1 %cmp142, label %for.body144, label %for.end155

for.end155:                                       ; preds = %for.body144, %for.body135
  %mvb.0.lcssa = phi float [ 0.000000e+00, %for.body135 ], [ %add152, %for.body144 ]
  %arrayidx157 = getelementptr inbounds float* %rhs2.addr.0792, i64 %indvars.iv821
  store float %mvb.0.lcssa, float* %arrayidx157, align 4, !tbaa !3
  %arrayidx159 = getelementptr inbounds float* %sol, i64 %indvars.iv821
  %37 = load float* %arrayidx159, align 4, !tbaa !3
  %add160 = fadd float %mvb.0.lcssa, %37
  store float %add160, float* %arrayidx159, align 4, !tbaa !3
  %lftr.wideiv823 = trunc i64 %indvars.iv.next822 to i32
  %exitcond824 = icmp eq i32 %lftr.wideiv823, %ncons
  br i1 %exitcond824, label %for.end165, label %for.body135

for.end165:                                       ; preds = %for.end155, %for.cond132.preheader
  %inc167 = add nsw i32 %rec.0791, 1
  %exitcond825 = icmp eq i32 %inc167, %nrec
  br i1 %exitcond825, label %for.cond169.preheader, label %for.cond132.preheader

for.body172:                                      ; preds = %for.cond169.preheader, %for.body172
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %for.body172 ], [ 0, %for.cond169.preheader ]
  %arrayidx174 = getelementptr inbounds i32* %bla1, i64 %indvars.iv815
  %38 = load i32* %arrayidx174, align 4, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %bla2, i64 %indvars.iv815
  %39 = load i32* %arrayidx176, align 4, !tbaa !0
  %arrayidx178 = getelementptr inbounds float* %blc, i64 %indvars.iv815
  %40 = load float* %arrayidx178, align 4, !tbaa !3
  %arrayidx180 = getelementptr inbounds float* %sol, i64 %indvars.iv815
  %41 = load float* %arrayidx180, align 4, !tbaa !3
  %mul181 = fmul float %40, %41
  %sub182 = fsub float -0.000000e+00, %mul181
  %arrayidx184 = getelementptr inbounds float* %lambda, i64 %indvars.iv815
  store float %sub182, float* %arrayidx184, align 4, !tbaa !3
  %idxprom185 = sext i32 %38 to i64
  %arrayidx186 = getelementptr inbounds float* %invmass, i64 %idxprom185
  %42 = load float* %arrayidx186, align 4, !tbaa !3
  %idxprom187 = sext i32 %39 to i64
  %arrayidx188 = getelementptr inbounds float* %invmass, i64 %idxprom187
  %43 = load float* %arrayidx188, align 4, !tbaa !3
  %arrayidx191 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv815, i64 0
  %44 = load float* %arrayidx191, align 4, !tbaa !3
  %mul192 = fmul float %mul181, %44
  %arrayidx195 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv815, i64 1
  %45 = load float* %arrayidx195, align 4, !tbaa !3
  %mul196 = fmul float %mul181, %45
  %arrayidx199 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv815, i64 2
  %46 = load float* %arrayidx199, align 4, !tbaa !3
  %mul200 = fmul float %mul181, %46
  %arrayidx203 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom185, i64 0
  %47 = load float* %arrayidx203, align 4, !tbaa !3
  %mul204 = fmul float %42, %mul192
  %sub205 = fsub float %47, %mul204
  %arrayidx208 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom185, i64 1
  %48 = load float* %arrayidx208, align 4, !tbaa !3
  %mul209 = fmul float %42, %mul196
  %sub210 = fsub float %48, %mul209
  %arrayidx213 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom185, i64 2
  %49 = load float* %arrayidx213, align 4, !tbaa !3
  %mul214 = fmul float %42, %mul200
  %sub215 = fsub float %49, %mul214
  %arrayidx218 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom187, i64 0
  %50 = load float* %arrayidx218, align 4, !tbaa !3
  %mul219 = fmul float %43, %mul192
  %add220 = fadd float %mul219, %50
  %arrayidx223 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom187, i64 1
  %51 = load float* %arrayidx223, align 4, !tbaa !3
  %mul224 = fmul float %43, %mul196
  %add225 = fadd float %mul224, %51
  %arrayidx228 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom187, i64 2
  %52 = load float* %arrayidx228, align 4, !tbaa !3
  %mul229 = fmul float %43, %mul200
  %add230 = fadd float %mul229, %52
  store float %sub205, float* %arrayidx203, align 4, !tbaa !3
  store float %sub210, float* %arrayidx208, align 4, !tbaa !3
  store float %sub215, float* %arrayidx213, align 4, !tbaa !3
  store float %add220, float* %arrayidx218, align 4, !tbaa !3
  store float %add225, float* %arrayidx223, align 4, !tbaa !3
  store float %add230, float* %arrayidx228, align 4, !tbaa !3
  %indvars.iv.next816 = add i64 %indvars.iv815, 1
  %lftr.wideiv817 = trunc i64 %indvars.iv.next816 to i32
  %exitcond818 = icmp eq i32 %lftr.wideiv817, %ncons
  br i1 %exitcond818, label %for.end251, label %for.body172

for.end251:                                       ; preds = %for.body172, %for.cond169.preheader
  %conv252 = fpext float %wangle to double
  %mul253 = fmul double %conv252, 0x3F91DF46A2529D39
  %call254 = tail call double @cos(double %mul253) #2
  %conv255 = fptrunc double %call254 to float
  %mul256 = fmul float %conv255, %conv255
  %cmp258777 = icmp sgt i32 %nit, 0
  br i1 %cmp258777, label %for.cond261.preheader, label %for.end454

for.cond261.preheader:                            ; preds = %for.end251, %for.inc452
  %rhs1.addr.1780 = phi float* [ %rhs1.addr.2.lcssa, %for.inc452 ], [ %rhs1.addr.0.lcssa, %for.end251 ]
  %rhs2.addr.1779 = phi float* [ %rhs2.addr.2.lcssa, %for.inc452 ], [ %rhs2.addr.0.lcssa, %for.end251 ]
  %it.0778 = phi i32 [ %inc453, %for.inc452 ], [ 0, %for.end251 ]
  br i1 %cmp801, label %for.body264, label %for.cond326.loopexit

for.body264:                                      ; preds = %for.cond261.preheader, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.cond261.preheader ]
  %arrayidx266 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %53 = load float* %arrayidx266, align 4, !tbaa !3
  %arrayidx268 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %54 = load i32* %arrayidx268, align 4, !tbaa !0
  %arrayidx270 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %55 = load i32* %arrayidx270, align 4, !tbaa !0
  %idxprom271 = sext i32 %54 to i64
  %arrayidx273 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom271, i64 0
  %56 = load float* %arrayidx273, align 4, !tbaa !3
  %idxprom274 = sext i32 %55 to i64
  %arrayidx276 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom274, i64 0
  %57 = load float* %arrayidx276, align 4, !tbaa !3
  %sub277 = fsub float %56, %57
  %arrayidx280 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom271, i64 1
  %58 = load float* %arrayidx280, align 4, !tbaa !3
  %arrayidx283 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom274, i64 1
  %59 = load float* %arrayidx283, align 4, !tbaa !3
  %sub284 = fsub float %58, %59
  %arrayidx287 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom271, i64 2
  %60 = load float* %arrayidx287, align 4, !tbaa !3
  %arrayidx290 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom274, i64 2
  %61 = load float* %arrayidx290, align 4, !tbaa !3
  %sub291 = fsub float %60, %61
  %mul292 = fmul float %53, %53
  %conv293 = fpext float %mul292 to double
  %mul294 = fmul double %conv293, 2.000000e+00
  %mul295 = fmul float %sub277, %sub277
  %mul296 = fmul float %sub284, %sub284
  %add297 = fadd float %mul295, %mul296
  %mul298 = fmul float %sub291, %sub291
  %add299 = fadd float %add297, %mul298
  %conv300 = fpext float %add299 to double
  %sub301 = fsub double %mul294, %conv300
  %conv302 = fptrunc double %sub301 to float
  %mul303 = fmul float %mul256, %mul292
  %cmp304 = fcmp olt float %conv302, %mul303
  br i1 %cmp304, label %if.then, label %if.end

if.then:                                          ; preds = %for.body264
  %62 = trunc i64 %indvars.iv to i32
  store i32 %62, i32* %warn, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body264
  %cmp306 = fcmp olt float %conv302, 0.000000e+00
  %arrayidx311 = getelementptr inbounds float* %blc, i64 %indvars.iv
  %63 = load float* %arrayidx311, align 4, !tbaa !3
  %conv312 = fpext float %63 to double
  %conv313 = fpext float %53 to double
  %64 = fpext float %conv302 to double
  %conv314 = select i1 %cmp306, double 0.000000e+00, double %64
  %call315 = tail call double @sqrt(double %conv314) #2
  %sub316 = fsub double %conv313, %call315
  %mul317 = fmul double %conv312, %sub316
  %conv318 = fptrunc double %mul317 to float
  %arrayidx320 = getelementptr inbounds float* %rhs1.addr.1780, i64 %indvars.iv
  store float %conv318, float* %arrayidx320, align 4, !tbaa !3
  %arrayidx322 = getelementptr inbounds float* %sol, i64 %indvars.iv
  store float %conv318, float* %arrayidx322, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ncons
  br i1 %exitcond, label %for.cond326.loopexit, label %for.body264

for.cond326.loopexit:                             ; preds = %if.end, %for.cond261.preheader
  br i1 %cmp129790, label %for.cond330.preheader, label %for.cond367.loopexit

for.cond330.preheader:                            ; preds = %for.cond326.loopexit, %for.end363
  %rhs1.addr.2772 = phi float* [ %rhs2.addr.2771, %for.end363 ], [ %rhs1.addr.1780, %for.cond326.loopexit ]
  %rhs2.addr.2771 = phi float* [ %rhs1.addr.2772, %for.end363 ], [ %rhs2.addr.1779, %for.cond326.loopexit ]
  %rec.1770 = phi i32 [ %inc365, %for.end363 ], [ 0, %for.cond326.loopexit ]
  br i1 %cmp801, label %for.body333.lr.ph, label %for.end363

for.body333.lr.ph:                                ; preds = %for.cond330.preheader
  %.pre = load i32* %blnr, align 4, !tbaa !0
  br label %for.body333

for.body333:                                      ; preds = %for.end353, %for.body333.lr.ph
  %65 = phi i32 [ %.pre, %for.body333.lr.ph ], [ %66, %for.end353 ]
  %indvars.iv805 = phi i64 [ 0, %for.body333.lr.ph ], [ %indvars.iv.next806, %for.end353 ]
  %indvars.iv.next806 = add i64 %indvars.iv805, 1
  %arrayidx339 = getelementptr inbounds i32* %blnr, i64 %indvars.iv.next806
  %66 = load i32* %arrayidx339, align 4, !tbaa !0
  %cmp340763 = icmp slt i32 %65, %66
  br i1 %cmp340763, label %for.body342.lr.ph, label %for.end353

for.body342.lr.ph:                                ; preds = %for.body333
  %67 = sext i32 %65 to i64
  br label %for.body342

for.body342:                                      ; preds = %for.body342.lr.ph, %for.body342
  %indvars.iv803 = phi i64 [ %67, %for.body342.lr.ph ], [ %indvars.iv.next804, %for.body342 ]
  %mvb.1765 = phi float [ 0.000000e+00, %for.body342.lr.ph ], [ %add350, %for.body342 ]
  %arrayidx344 = getelementptr inbounds i32* %blbnb, i64 %indvars.iv803
  %68 = load i32* %arrayidx344, align 4, !tbaa !0
  %arrayidx346 = getelementptr inbounds float* %blm, i64 %indvars.iv803
  %69 = load float* %arrayidx346, align 4, !tbaa !3
  %idxprom347 = sext i32 %68 to i64
  %arrayidx348 = getelementptr inbounds float* %rhs1.addr.2772, i64 %idxprom347
  %70 = load float* %arrayidx348, align 4, !tbaa !3
  %mul349 = fmul float %69, %70
  %add350 = fadd float %mvb.1765, %mul349
  %indvars.iv.next804 = add i64 %indvars.iv803, 1
  %71 = trunc i64 %indvars.iv.next804 to i32
  %cmp340 = icmp slt i32 %71, %66
  br i1 %cmp340, label %for.body342, label %for.end353

for.end353:                                       ; preds = %for.body342, %for.body333
  %mvb.1.lcssa = phi float [ 0.000000e+00, %for.body333 ], [ %add350, %for.body342 ]
  %arrayidx355 = getelementptr inbounds float* %rhs2.addr.2771, i64 %indvars.iv805
  store float %mvb.1.lcssa, float* %arrayidx355, align 4, !tbaa !3
  %arrayidx357 = getelementptr inbounds float* %sol, i64 %indvars.iv805
  %72 = load float* %arrayidx357, align 4, !tbaa !3
  %add358 = fadd float %mvb.1.lcssa, %72
  store float %add358, float* %arrayidx357, align 4, !tbaa !3
  %lftr.wideiv807 = trunc i64 %indvars.iv.next806 to i32
  %exitcond808 = icmp eq i32 %lftr.wideiv807, %ncons
  br i1 %exitcond808, label %for.end363, label %for.body333

for.end363:                                       ; preds = %for.end353, %for.cond330.preheader
  %inc365 = add nsw i32 %rec.1770, 1
  %exitcond809 = icmp eq i32 %inc365, %nrec
  br i1 %exitcond809, label %for.cond367.loopexit, label %for.cond330.preheader

for.cond367.loopexit:                             ; preds = %for.end363, %for.cond326.loopexit
  %rhs1.addr.2.lcssa = phi float* [ %rhs1.addr.1780, %for.cond326.loopexit ], [ %rhs2.addr.2771, %for.end363 ]
  %rhs2.addr.2.lcssa = phi float* [ %rhs2.addr.1779, %for.cond326.loopexit ], [ %rhs1.addr.2772, %for.end363 ]
  br i1 %cmp801, label %for.body370, label %for.inc452

for.body370:                                      ; preds = %for.cond367.loopexit, %for.body370
  %indvars.iv810 = phi i64 [ %indvars.iv.next811, %for.body370 ], [ 0, %for.cond367.loopexit ]
  %arrayidx372 = getelementptr inbounds i32* %bla1, i64 %indvars.iv810
  %73 = load i32* %arrayidx372, align 4, !tbaa !0
  %arrayidx374 = getelementptr inbounds i32* %bla2, i64 %indvars.iv810
  %74 = load i32* %arrayidx374, align 4, !tbaa !0
  %arrayidx376 = getelementptr inbounds float* %lambda, i64 %indvars.iv810
  %75 = load float* %arrayidx376, align 4, !tbaa !3
  %arrayidx378 = getelementptr inbounds float* %blc, i64 %indvars.iv810
  %76 = load float* %arrayidx378, align 4, !tbaa !3
  %arrayidx380 = getelementptr inbounds float* %sol, i64 %indvars.iv810
  %77 = load float* %arrayidx380, align 4, !tbaa !3
  %mul381 = fmul float %76, %77
  %sub382 = fsub float %75, %mul381
  store float %sub382, float* %arrayidx376, align 4, !tbaa !3
  %idxprom385 = sext i32 %73 to i64
  %arrayidx386 = getelementptr inbounds float* %invmass, i64 %idxprom385
  %78 = load float* %arrayidx386, align 4, !tbaa !3
  %idxprom387 = sext i32 %74 to i64
  %arrayidx388 = getelementptr inbounds float* %invmass, i64 %idxprom387
  %79 = load float* %arrayidx388, align 4, !tbaa !3
  %arrayidx391 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv810, i64 0
  %80 = load float* %arrayidx391, align 4, !tbaa !3
  %mul392 = fmul float %mul381, %80
  %arrayidx395 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv810, i64 1
  %81 = load float* %arrayidx395, align 4, !tbaa !3
  %mul396 = fmul float %mul381, %81
  %arrayidx399 = getelementptr inbounds [3 x float]* %r, i64 %indvars.iv810, i64 2
  %82 = load float* %arrayidx399, align 4, !tbaa !3
  %mul400 = fmul float %mul381, %82
  %arrayidx403 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom385, i64 0
  %83 = load float* %arrayidx403, align 4, !tbaa !3
  %mul404 = fmul float %78, %mul392
  %sub405 = fsub float %83, %mul404
  %arrayidx408 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom385, i64 1
  %84 = load float* %arrayidx408, align 4, !tbaa !3
  %mul409 = fmul float %78, %mul396
  %sub410 = fsub float %84, %mul409
  %arrayidx413 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom385, i64 2
  %85 = load float* %arrayidx413, align 4, !tbaa !3
  %mul414 = fmul float %78, %mul400
  %sub415 = fsub float %85, %mul414
  %arrayidx418 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom387, i64 0
  %86 = load float* %arrayidx418, align 4, !tbaa !3
  %mul419 = fmul float %79, %mul392
  %add420 = fadd float %mul419, %86
  %arrayidx423 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom387, i64 1
  %87 = load float* %arrayidx423, align 4, !tbaa !3
  %mul424 = fmul float %79, %mul396
  %add425 = fadd float %mul424, %87
  %arrayidx428 = getelementptr inbounds [3 x float]* %xp, i64 %idxprom387, i64 2
  %88 = load float* %arrayidx428, align 4, !tbaa !3
  %mul429 = fmul float %79, %mul400
  %add430 = fadd float %mul429, %88
  store float %sub405, float* %arrayidx403, align 4, !tbaa !3
  store float %sub410, float* %arrayidx408, align 4, !tbaa !3
  store float %sub415, float* %arrayidx413, align 4, !tbaa !3
  store float %add420, float* %arrayidx418, align 4, !tbaa !3
  store float %add425, float* %arrayidx423, align 4, !tbaa !3
  store float %add430, float* %arrayidx428, align 4, !tbaa !3
  %indvars.iv.next811 = add i64 %indvars.iv810, 1
  %lftr.wideiv812 = trunc i64 %indvars.iv.next811 to i32
  %exitcond813 = icmp eq i32 %lftr.wideiv812, %ncons
  br i1 %exitcond813, label %for.inc452, label %for.body370

for.inc452:                                       ; preds = %for.body370, %for.cond367.loopexit
  %inc453 = add nsw i32 %it.0778, 1
  %exitcond814 = icmp eq i32 %inc453, %nit
  br i1 %exitcond814, label %for.end454, label %for.cond261.preheader

for.end454:                                       ; preds = %for.inc452, %for.end251
  ret void
}

; Function Attrs: nounwind optsize
declare double @cos(double) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
