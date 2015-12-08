; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calcvir.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

; Function Attrs: nounwind optsize uwtable
define void @calc_vir(%struct._IO_FILE* nocapture %log, i32 %nxf, [3 x float]* nocapture %x, [3 x float]* nocapture %f, [3 x float]* nocapture %vir) #0 {
entry:
  %cmp154 = icmp sgt i32 %nxf, 0
  br i1 %cmp154, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %dvzz.0164 = phi float [ %add68, %for.body ], [ 0.000000e+00, %entry ]
  %dvzy.0163 = phi float [ %add60, %for.body ], [ 0.000000e+00, %entry ]
  %dvzx.0162 = phi float [ %add52, %for.body ], [ 0.000000e+00, %entry ]
  %dvyz.0161 = phi float [ %add44, %for.body ], [ 0.000000e+00, %entry ]
  %dvyy.0160 = phi float [ %add36, %for.body ], [ 0.000000e+00, %entry ]
  %dvyx.0159 = phi float [ %add28, %for.body ], [ 0.000000e+00, %entry ]
  %dvxz.0158 = phi float [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %dvxy.0157 = phi float [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %dvxx.0156 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx1 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %1 = load float* %arrayidx4, align 4, !tbaa !0
  %mul = fmul float %0, %1
  %add = fadd float %dvxx.0156, %mul
  %arrayidx10 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %2 = load float* %arrayidx10, align 4, !tbaa !0
  %mul11 = fmul float %0, %2
  %add12 = fadd float %dvxy.0157, %mul11
  %arrayidx18 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  %3 = load float* %arrayidx18, align 4, !tbaa !0
  %mul19 = fmul float %0, %3
  %add20 = fadd float %dvxz.0158, %mul19
  %arrayidx23 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %4 = load float* %arrayidx23, align 4, !tbaa !0
  %mul27 = fmul float %1, %4
  %add28 = fadd float %dvyx.0159, %mul27
  %mul35 = fmul float %2, %4
  %add36 = fadd float %dvyy.0160, %mul35
  %mul43 = fmul float %3, %4
  %add44 = fadd float %dvyz.0161, %mul43
  %arrayidx47 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %5 = load float* %arrayidx47, align 4, !tbaa !0
  %mul51 = fmul float %1, %5
  %add52 = fadd float %dvzx.0162, %mul51
  %mul59 = fmul float %2, %5
  %add60 = fadd float %dvzy.0163, %mul59
  %mul67 = fmul float %3, %5
  %add68 = fadd float %dvzz.0164, %mul67
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nxf
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = fpext float %add to double
  %phitmp173 = fmul double %phitmp, 5.000000e-01
  %phitmp174 = fpext float %add12 to double
  %phitmp175 = fmul double %phitmp174, 5.000000e-01
  %phitmp176 = fpext float %add20 to double
  %phitmp177 = fmul double %phitmp176, 5.000000e-01
  %phitmp178 = fpext float %add28 to double
  %phitmp179 = fmul double %phitmp178, 5.000000e-01
  %phitmp180 = fpext float %add36 to double
  %phitmp181 = fmul double %phitmp180, 5.000000e-01
  %phitmp182 = fpext float %add44 to double
  %phitmp183 = fmul double %phitmp182, 5.000000e-01
  %phitmp184 = fpext float %add52 to double
  %phitmp185 = fmul double %phitmp184, 5.000000e-01
  %phitmp186 = fpext float %add60 to double
  %phitmp187 = fmul double %phitmp186, 5.000000e-01
  %phitmp188 = fpext float %add68 to double
  %phitmp189 = fmul double %phitmp188, 5.000000e-01
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %dvzz.0.lcssa = phi double [ %phitmp189, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvzy.0.lcssa = phi double [ %phitmp187, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvzx.0.lcssa = phi double [ %phitmp185, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyz.0.lcssa = phi double [ %phitmp183, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyy.0.lcssa = phi double [ %phitmp181, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvyx.0.lcssa = phi double [ %phitmp179, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxz.0.lcssa = phi double [ %phitmp177, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxy.0.lcssa = phi double [ %phitmp175, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %dvxx.0.lcssa = phi double [ %phitmp173, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %arraydecay = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  %6 = load float* %arraydecay, align 4, !tbaa !0
  %conv1.i = fpext float %6 to double
  %sub.i = fsub double %conv1.i, %dvxx.0.lcssa
  %conv2.i = fptrunc double %sub.i to float
  store float %conv2.i, float* %arraydecay, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1
  %7 = load float* %arrayidx5.i, align 4, !tbaa !0
  %conv6.i = fpext float %7 to double
  %sub7.i = fsub double %conv6.i, %dvxy.0.lcssa
  %conv8.i = fptrunc double %sub7.i to float
  store float %conv8.i, float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx11.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2
  %8 = load float* %arrayidx11.i, align 4, !tbaa !0
  %conv12.i = fpext float %8 to double
  %sub13.i = fsub double %conv12.i, %dvxz.0.lcssa
  %conv14.i = fptrunc double %sub13.i to float
  store float %conv14.i, float* %arrayidx11.i, align 4, !tbaa !0
  %arraydecay71 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0
  %9 = load float* %arraydecay71, align 4, !tbaa !0
  %conv1.i139 = fpext float %9 to double
  %sub.i140 = fsub double %conv1.i139, %dvyx.0.lcssa
  %conv2.i141 = fptrunc double %sub.i140 to float
  store float %conv2.i141, float* %arraydecay71, align 4, !tbaa !0
  %arrayidx5.i144 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1
  %10 = load float* %arrayidx5.i144, align 4, !tbaa !0
  %conv6.i145 = fpext float %10 to double
  %sub7.i146 = fsub double %conv6.i145, %dvyy.0.lcssa
  %conv8.i147 = fptrunc double %sub7.i146 to float
  store float %conv8.i147, float* %arrayidx5.i144, align 4, !tbaa !0
  %arrayidx11.i150 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2
  %11 = load float* %arrayidx11.i150, align 4, !tbaa !0
  %conv12.i151 = fpext float %11 to double
  %sub13.i152 = fsub double %conv12.i151, %dvyz.0.lcssa
  %conv14.i153 = fptrunc double %sub13.i152 to float
  store float %conv14.i153, float* %arrayidx11.i150, align 4, !tbaa !0
  %arraydecay73 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0
  %12 = load float* %arraydecay73, align 4, !tbaa !0
  %conv1.i122 = fpext float %12 to double
  %sub.i123 = fsub double %conv1.i122, %dvzx.0.lcssa
  %conv2.i124 = fptrunc double %sub.i123 to float
  store float %conv2.i124, float* %arraydecay73, align 4, !tbaa !0
  %arrayidx5.i127 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1
  %13 = load float* %arrayidx5.i127, align 4, !tbaa !0
  %conv6.i128 = fpext float %13 to double
  %sub7.i129 = fsub double %conv6.i128, %dvzy.0.lcssa
  %conv8.i130 = fptrunc double %sub7.i129 to float
  store float %conv8.i130, float* %arrayidx5.i127, align 4, !tbaa !0
  %arrayidx11.i133 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  %14 = load float* %arrayidx11.i133, align 4, !tbaa !0
  %conv12.i134 = fpext float %14 to double
  %sub13.i135 = fsub double %conv12.i134, %dvzz.0.lcssa
  %conv14.i136 = fptrunc double %sub13.i135 to float
  store float %conv14.i136, float* %arrayidx11.i133, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @f_calc_vir(%struct._IO_FILE* nocapture %log, i32 %i0, i32 %i1, [3 x float]* nocapture %x, [3 x float]* nocapture %f, [3 x float]* nocapture %vir, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box) #0 {
entry:
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %start1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %1 = load i32* %start1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %i0
  %i0. = select i1 %cmp2, i32 %i0, i32 %1
  %end4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4
  %2 = load i32* %end4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %2, %i1
  %add = add nsw i32 %2, 1
  %cond11 = select i1 %cmp5, i32 %add, i32 %i1
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %3 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay17 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %4 = load float* %arrayidx19, align 4, !tbaa !0
  %fabsf = tail call float @fabsf(float %4) #1
  %5 = fpext float %fabsf to double
  %cmp20 = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp20, label %lor.end.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx23 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %6 = load float* %arrayidx23, align 4, !tbaa !0
  %fabsf91 = tail call float @fabsf(float %6) #1
  %7 = fpext float %fabsf91 to double
  %cmp26 = fcmp ogt double %7, 1.200000e-38
  br i1 %cmp26, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %lor.lhs.false, %if.then
  %cmp8635.i97 = icmp slt i32 %i0., %cond11
  br i1 %cmp8635.i97, label %for.body.lr.ph.i, label %lo_fcv.exit

lor.end:                                          ; preds = %lor.lhs.false
  %arrayidx29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %8 = load float* %arrayidx29, align 4, !tbaa !0
  %fabsf92 = tail call float @fabsf(float %8) #1
  %9 = fpext float %fabsf92 to double
  %cmp32 = fcmp ogt double %9, 1.200000e-38
  %cmp8635.i = icmp slt i32 %i0., %cond11
  br i1 %cmp32, label %for.cond.preheader.i, label %for.cond85.preheader.i

for.cond.preheader.i:                             ; preds = %lor.end
  br i1 %cmp8635.i, label %for.body.lr.ph.i, label %lo_fcv.exit

for.body.lr.ph.i:                                 ; preds = %lor.end.thread, %for.cond.preheader.i
  %10 = load float* %arraydecay17, align 4, !tbaa !0
  %arrayidx18.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 6
  %11 = load float* %arrayidx18.i, align 4, !tbaa !0
  %arrayidx40.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 4
  %12 = load float* %arrayidx40.i, align 4, !tbaa !0
  %arrayidx44.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 7
  %13 = load float* %arrayidx44.i, align 4, !tbaa !0
  %arrayidx66.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 8
  %14 = load float* %arrayidx66.i, align 4, !tbaa !0
  %15 = sext i32 %i0. to i64
  %16 = icmp sgt i32 %1, %i0
  %smax = select i1 %16, i32 %1, i32 %i0
  %17 = sub i32 %cond11, %smax
  br label %for.body.i

for.cond85.preheader.i:                           ; preds = %lor.end
  br i1 %cmp8635.i, label %for.body88.lr.ph.i, label %lo_fcv.exit

for.body88.lr.ph.i:                               ; preds = %for.cond85.preheader.i
  %18 = load float* %arraydecay17, align 4, !tbaa !0
  %arrayidx126.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 4
  %19 = load float* %arrayidx126.i, align 4, !tbaa !0
  %arrayidx148.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 8
  %20 = load float* %arrayidx148.i, align 4, !tbaa !0
  %21 = sext i32 %i0. to i64
  %22 = icmp sgt i32 %1, %i0
  %smax94 = select i1 %22, i32 %1, i32 %i0
  %23 = sub i32 %cond11, %smax94
  br label %for.body88.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv81.i = phi i64 [ %15, %for.body.lr.ph.i ], [ %indvars.iv.next82.i, %for.body.i ]
  %indvars.iv79.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next80.i, %for.body.i ]
  %dvzz.067.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add83.i, %for.body.i ]
  %dvzy.066.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add78.i, %for.body.i ]
  %dvzx.065.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add73.i, %for.body.i ]
  %dvyz.064.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add61.i, %for.body.i ]
  %dvyy.063.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add56.i, %for.body.i ]
  %dvyx.062.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add51.i, %for.body.i ]
  %dvxz.061.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add35.i, %for.body.i ]
  %dvxy.060.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add30.i, %for.body.i ]
  %dvxx.059.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add25.i, %for.body.i ]
  %24 = trunc i64 %indvars.iv81.i to i32
  %mul.i = mul nsw i32 %24, 3
  %25 = trunc i64 %indvars.iv79.i to i32
  %mul1.i = mul nsw i32 %25, 3
  %idxprom.i = sext i32 %mul1.i to i64
  %arrayidx.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom.i
  %26 = load i32* %arrayidx.i, align 4, !tbaa !3
  %add2.i = add nsw i32 %mul1.i, 1
  %idxprom3.i = sext i32 %add2.i to i64
  %arrayidx4.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom3.i
  %27 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %add5.i = add nsw i32 %mul1.i, 2
  %idxprom6.i = sext i32 %add5.i to i64
  %arrayidx7.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom6.i
  %28 = load i32* %arrayidx7.i, align 4, !tbaa !3
  %idxprom9.i = sext i32 %mul.i to i64
  %arrayidx10.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom9.i
  %29 = load float* %arrayidx10.i, align 4, !tbaa !0
  %conv.i = sitofp i32 %26 to float
  %mul12.i = fmul float %10, %conv.i
  %sub.i = fsub float %29, %mul12.i
  %conv13.i = sitofp i32 %27 to float
  %mul15.i = fmul float %4, %conv13.i
  %sub16.i = fsub float %sub.i, %mul15.i
  %conv17.i = sitofp i32 %28 to float
  %mul19.i = fmul float %11, %conv17.i
  %sub20.i = fsub float %sub16.i, %mul19.i
  %arrayidx23.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom9.i
  %30 = load float* %arrayidx23.i, align 4, !tbaa !0
  %mul24.i = fmul float %30, %sub20.i
  %add25.i = fadd float %dvxx.059.i, %mul24.i
  %add26.i = add nsw i32 %mul.i, 1
  %idxprom27.i = sext i32 %add26.i to i64
  %arrayidx28.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom27.i
  %31 = load float* %arrayidx28.i, align 4, !tbaa !0
  %mul29.i = fmul float %31, %sub20.i
  %add30.i = fadd float %dvxy.060.i, %mul29.i
  %add31.i = add nsw i32 %mul.i, 2
  %idxprom32.i = sext i32 %add31.i to i64
  %arrayidx33.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom32.i
  %32 = load float* %arrayidx33.i, align 4, !tbaa !0
  %mul34.i = fmul float %sub20.i, %32
  %add35.i = fadd float %dvxz.061.i, %mul34.i
  %arrayidx38.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom27.i
  %33 = load float* %arrayidx38.i, align 4, !tbaa !0
  %mul41.i = fmul float %12, %conv13.i
  %sub42.i = fsub float %33, %mul41.i
  %mul45.i = fmul float %13, %conv17.i
  %sub46.i = fsub float %sub42.i, %mul45.i
  %mul50.i = fmul float %30, %sub46.i
  %add51.i = fadd float %dvyx.062.i, %mul50.i
  %mul55.i = fmul float %31, %sub46.i
  %add56.i = fadd float %dvyy.063.i, %mul55.i
  %mul60.i = fmul float %32, %sub46.i
  %add61.i = fadd float %dvyz.064.i, %mul60.i
  %arrayidx64.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom32.i
  %34 = load float* %arrayidx64.i, align 4, !tbaa !0
  %mul67.i = fmul float %14, %conv17.i
  %sub68.i = fsub float %34, %mul67.i
  %mul72.i = fmul float %30, %sub68.i
  %add73.i = fadd float %dvzx.065.i, %mul72.i
  %mul77.i = fmul float %31, %sub68.i
  %add78.i = fadd float %dvzy.066.i, %mul77.i
  %mul82.i = fmul float %32, %sub68.i
  %add83.i = fadd float %dvzz.067.i, %mul82.i
  %indvars.iv.next82.i = add i64 %indvars.iv81.i, 1
  %indvars.iv.next80.i = add i64 %indvars.iv79.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next80.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %17
  br i1 %exitcond, label %lo_fcv.exit, label %for.body.i

for.body88.i:                                     ; preds = %for.body88.i, %for.body88.lr.ph.i
  %indvars.iv77.i = phi i64 [ %21, %for.body88.lr.ph.i ], [ %indvars.iv.next78.i, %for.body88.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body88.lr.ph.i ], [ %indvars.iv.next.i, %for.body88.i ]
  %dvzz.146.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add165.i, %for.body88.i ]
  %dvzy.145.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add160.i, %for.body88.i ]
  %dvzx.144.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add155.i, %for.body88.i ]
  %dvyz.143.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add143.i, %for.body88.i ]
  %dvyy.142.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add138.i, %for.body88.i ]
  %dvyx.141.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add133.i, %for.body88.i ]
  %dvxz.140.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add121.i, %for.body88.i ]
  %dvxy.139.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add116.i, %for.body88.i ]
  %dvxx.138.i = phi float [ 0.000000e+00, %for.body88.lr.ph.i ], [ %add111.i, %for.body88.i ]
  %35 = trunc i64 %indvars.iv77.i to i32
  %mul89.i = mul nsw i32 %35, 3
  %36 = trunc i64 %indvars.iv.i to i32
  %mul90.i = mul nsw i32 %36, 3
  %idxprom92.i = sext i32 %mul90.i to i64
  %arrayidx93.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom92.i
  %37 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %add94.i = add nsw i32 %mul90.i, 1
  %idxprom95.i = sext i32 %add94.i to i64
  %arrayidx96.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom95.i
  %38 = load i32* %arrayidx96.i, align 4, !tbaa !3
  %add97.i = add nsw i32 %mul90.i, 2
  %idxprom98.i = sext i32 %add97.i to i64
  %arrayidx99.i = getelementptr inbounds [3 x i32]* %3, i64 0, i64 %idxprom98.i
  %39 = load i32* %arrayidx99.i, align 4, !tbaa !3
  %idxprom101.i = sext i32 %mul89.i to i64
  %arrayidx102.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom101.i
  %40 = load float* %arrayidx102.i, align 4, !tbaa !0
  %conv103.i = sitofp i32 %37 to float
  %mul105.i = fmul float %18, %conv103.i
  %sub106.i = fsub float %40, %mul105.i
  %arrayidx109.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom101.i
  %41 = load float* %arrayidx109.i, align 4, !tbaa !0
  %mul110.i = fmul float %41, %sub106.i
  %add111.i = fadd float %dvxx.138.i, %mul110.i
  %add112.i = add nsw i32 %mul89.i, 1
  %idxprom113.i = sext i32 %add112.i to i64
  %arrayidx114.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom113.i
  %42 = load float* %arrayidx114.i, align 4, !tbaa !0
  %mul115.i = fmul float %sub106.i, %42
  %add116.i = fadd float %dvxy.139.i, %mul115.i
  %add117.i = add nsw i32 %mul89.i, 2
  %idxprom118.i = sext i32 %add117.i to i64
  %arrayidx119.i = getelementptr inbounds [3 x float]* %f, i64 0, i64 %idxprom118.i
  %43 = load float* %arrayidx119.i, align 4, !tbaa !0
  %mul120.i = fmul float %sub106.i, %43
  %add121.i = fadd float %dvxz.140.i, %mul120.i
  %arrayidx124.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom113.i
  %44 = load float* %arrayidx124.i, align 4, !tbaa !0
  %conv125.i = sitofp i32 %38 to float
  %mul127.i = fmul float %19, %conv125.i
  %sub128.i = fsub float %44, %mul127.i
  %mul132.i = fmul float %41, %sub128.i
  %add133.i = fadd float %dvyx.141.i, %mul132.i
  %mul137.i = fmul float %42, %sub128.i
  %add138.i = fadd float %dvyy.142.i, %mul137.i
  %mul142.i = fmul float %43, %sub128.i
  %add143.i = fadd float %dvyz.143.i, %mul142.i
  %arrayidx146.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 %idxprom118.i
  %45 = load float* %arrayidx146.i, align 4, !tbaa !0
  %conv147.i = sitofp i32 %39 to float
  %mul149.i = fmul float %20, %conv147.i
  %sub150.i = fsub float %45, %mul149.i
  %mul154.i = fmul float %41, %sub150.i
  %add155.i = fadd float %dvzx.144.i, %mul154.i
  %mul159.i = fmul float %42, %sub150.i
  %add160.i = fadd float %dvzy.145.i, %mul159.i
  %mul164.i = fmul float %43, %sub150.i
  %add165.i = fadd float %dvzz.146.i, %mul164.i
  %indvars.iv.next78.i = add i64 %indvars.iv77.i, 1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv95 = trunc i64 %indvars.iv.next.i to i32
  %exitcond96 = icmp eq i32 %lftr.wideiv95, %23
  br i1 %exitcond96, label %lo_fcv.exit, label %for.body88.i

lo_fcv.exit:                                      ; preds = %for.body88.i, %for.body.i, %lor.end.thread, %for.cond.preheader.i, %for.cond85.preheader.i
  %dvxx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add25.i, %for.body.i ], [ %add111.i, %for.body88.i ]
  %dvxy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add30.i, %for.body.i ], [ %add116.i, %for.body88.i ]
  %dvxz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add35.i, %for.body.i ], [ %add121.i, %for.body88.i ]
  %dvyx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add51.i, %for.body.i ], [ %add133.i, %for.body88.i ]
  %dvyy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add56.i, %for.body.i ], [ %add138.i, %for.body88.i ]
  %dvyz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add61.i, %for.body.i ], [ %add143.i, %for.body88.i ]
  %dvzx.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add73.i, %for.body.i ], [ %add155.i, %for.body88.i ]
  %dvzy.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add78.i, %for.body.i ], [ %add160.i, %for.body88.i ]
  %dvzz.2.i = phi float [ 0.000000e+00, %for.cond85.preheader.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %lor.end.thread ], [ %add83.i, %for.body.i ], [ %add165.i, %for.body88.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  %conv.i.i = fpext float %dvxx.2.i to double
  %mul.i.i = fmul double %conv.i.i, 5.000000e-01
  %46 = load float* %arraydecay.i, align 4, !tbaa !0
  %conv1.i.i = fpext float %46 to double
  %sub.i.i = fsub double %conv1.i.i, %mul.i.i
  %conv2.i.i = fptrunc double %sub.i.i to float
  store float %conv2.i.i, float* %arraydecay.i, align 4, !tbaa !0
  %conv3.i.i = fpext float %dvxy.2.i to double
  %mul4.i.i = fmul double %conv3.i.i, 5.000000e-01
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1
  %47 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %conv6.i.i = fpext float %47 to double
  %sub7.i.i = fsub double %conv6.i.i, %mul4.i.i
  %conv8.i.i = fptrunc double %sub7.i.i to float
  store float %conv8.i.i, float* %arrayidx5.i.i, align 4, !tbaa !0
  %conv9.i.i = fpext float %dvxz.2.i to double
  %mul10.i.i = fmul double %conv9.i.i, 5.000000e-01
  %arrayidx11.i.i = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2
  %48 = load float* %arrayidx11.i.i, align 4, !tbaa !0
  %conv12.i.i = fpext float %48 to double
  %sub13.i.i = fsub double %conv12.i.i, %mul10.i.i
  %conv14.i.i = fptrunc double %sub13.i.i to float
  store float %conv14.i.i, float* %arrayidx11.i.i, align 4, !tbaa !0
  %arraydecay172.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0
  %conv.i18.i = fpext float %dvyx.2.i to double
  %mul.i19.i = fmul double %conv.i18.i, 5.000000e-01
  %49 = load float* %arraydecay172.i, align 4, !tbaa !0
  %conv1.i20.i = fpext float %49 to double
  %sub.i21.i = fsub double %conv1.i20.i, %mul.i19.i
  %conv2.i22.i = fptrunc double %sub.i21.i to float
  store float %conv2.i22.i, float* %arraydecay172.i, align 4, !tbaa !0
  %conv3.i23.i = fpext float %dvyy.2.i to double
  %mul4.i24.i = fmul double %conv3.i23.i, 5.000000e-01
  %arrayidx5.i25.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1
  %50 = load float* %arrayidx5.i25.i, align 4, !tbaa !0
  %conv6.i26.i = fpext float %50 to double
  %sub7.i27.i = fsub double %conv6.i26.i, %mul4.i24.i
  %conv8.i28.i = fptrunc double %sub7.i27.i to float
  store float %conv8.i28.i, float* %arrayidx5.i25.i, align 4, !tbaa !0
  %conv9.i29.i = fpext float %dvyz.2.i to double
  %mul10.i30.i = fmul double %conv9.i29.i, 5.000000e-01
  %arrayidx11.i31.i = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2
  %51 = load float* %arrayidx11.i31.i, align 4, !tbaa !0
  %conv12.i32.i = fpext float %51 to double
  %sub13.i33.i = fsub double %conv12.i32.i, %mul10.i30.i
  %conv14.i34.i = fptrunc double %sub13.i33.i to float
  store float %conv14.i34.i, float* %arrayidx11.i31.i, align 4, !tbaa !0
  %arraydecay174.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0
  %conv.i1.i = fpext float %dvzx.2.i to double
  %mul.i2.i = fmul double %conv.i1.i, 5.000000e-01
  %52 = load float* %arraydecay174.i, align 4, !tbaa !0
  %conv1.i3.i = fpext float %52 to double
  %sub.i4.i = fsub double %conv1.i3.i, %mul.i2.i
  %conv2.i5.i = fptrunc double %sub.i4.i to float
  store float %conv2.i5.i, float* %arraydecay174.i, align 4, !tbaa !0
  %conv3.i6.i = fpext float %dvzy.2.i to double
  %mul4.i7.i = fmul double %conv3.i6.i, 5.000000e-01
  %arrayidx5.i8.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1
  %53 = load float* %arrayidx5.i8.i, align 4, !tbaa !0
  %conv6.i9.i = fpext float %53 to double
  %sub7.i10.i = fsub double %conv6.i9.i, %mul4.i7.i
  %conv8.i11.i = fptrunc double %sub7.i10.i to float
  store float %conv8.i11.i, float* %arrayidx5.i8.i, align 4, !tbaa !0
  %conv9.i12.i = fpext float %dvzz.2.i to double
  %mul10.i13.i = fmul double %conv9.i12.i, 5.000000e-01
  %arrayidx11.i14.i = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  %54 = load float* %arrayidx11.i14.i, align 4, !tbaa !0
  %conv12.i15.i = fpext float %54 to double
  %sub13.i16.i = fsub double %conv12.i15.i, %mul10.i13.i
  %conv14.i17.i = fptrunc double %sub13.i16.i to float
  store float %conv14.i17.i, float* %arrayidx11.i14.i, align 4, !tbaa !0
  %cmp34 = icmp sgt i32 %i0., %i0
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %lo_fcv.exit
  %sub = sub nsw i32 %i0., %i0
  %idx.ext = sext i32 %i0 to i64
  %add.ptr = getelementptr inbounds [3 x float]* %x, i64 %idx.ext
  %add.ptr38 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub, [3 x float]* %add.ptr, [3 x float]* %add.ptr38, [3 x float]* %vir) #2
  br label %if.end

if.end:                                           ; preds = %if.then36, %lo_fcv.exit
  %cmp39 = icmp slt i32 %cond11, %i1
  br i1 %cmp39, label %if.then41, label %if.end53

if.then41:                                        ; preds = %if.end
  %sub42 = sub nsw i32 %i1, %cond11
  %idx.ext43 = sext i32 %cond11 to i64
  %add.ptr44 = getelementptr inbounds [3 x float]* %x, i64 %idx.ext43
  %add.ptr46 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext43
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub42, [3 x float]* %add.ptr44, [3 x float]* %add.ptr46, [3 x float]* %vir) #2
  br label %if.end53

if.else:                                          ; preds = %entry
  %sub48 = sub nsw i32 %i1, %i0
  %idx.ext49 = sext i32 %i0 to i64
  %add.ptr50 = getelementptr inbounds [3 x float]* %x, i64 %idx.ext49
  %add.ptr52 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext49
  tail call void @calc_vir(%struct._IO_FILE* undef, i32 %sub48, [3 x float]* %add.ptr50, [3 x float]* %add.ptr52, [3 x float]* %vir) #2
  br label %if.end53

if.end53:                                         ; preds = %if.end, %if.then41, %if.else
  ret void
}

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
