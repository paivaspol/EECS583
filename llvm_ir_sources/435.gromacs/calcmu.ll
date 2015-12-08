; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/calcmu.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind optsize uwtable
define void @calc_mu_and_q(%struct.t_nsborder* nocapture %nsb, [3 x float]* nocapture %x, float* nocapture %q, float* nocapture %mu, float* nocapture %qsum) #0 {
entry:
  %tmpmu = alloca [3 x double], align 16
  %tmpmu79 = bitcast [3 x double]* %tmpmu to i8*
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %2 = load i32* %arrayidx3, align 4, !tbaa !0
  call void @llvm.memset.p0i8.i64(i8* %tmpmu79, i8 0, i64 24, i32 16, i1 false)
  %add = add nsw i32 %2, %1
  %cmp765 = icmp sgt i32 %2, 0
  br i1 %cmp765, label %for.cond9.preheader.lr.ph, label %for.cond31.preheader

for.cond9.preheader.lr.ph:                        ; preds = %entry
  %3 = sext i32 %1 to i64
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond9.preheader.lr.ph, %for.end23
  %indvars.iv73 = phi i64 [ %3, %for.cond9.preheader.lr.ph ], [ %indvars.iv.next74, %for.end23 ]
  %tmpq.067 = phi double [ 0.000000e+00, %for.cond9.preheader.lr.ph ], [ %add27, %for.end23 ]
  %arrayidx13 = getelementptr inbounds float* %q, i64 %indvars.iv73
  %4 = load float* %arrayidx13, align 4, !tbaa !3
  br label %for.body11

for.cond6.for.cond31.preheader_crit_edge:         ; preds = %for.end23
  %phitmp = fptrunc double %add27 to float
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond6.for.cond31.preheader_crit_edge, %entry
  %tmpq.0.lcssa = phi float [ %phitmp, %for.cond6.for.cond31.preheader_crit_edge ], [ 0.000000e+00, %entry ]
  br label %for.body34

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %indvars.iv69 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next70, %for.body11 ]
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv73, i64 %indvars.iv69
  %5 = load float* %arrayidx17, align 4, !tbaa !3
  %mul = fmul float %4, %5
  %conv = fpext float %mul to double
  %arrayidx19 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv69
  %6 = load double* %arrayidx19, align 8, !tbaa !4
  %add20 = fadd double %6, %conv
  store double %add20, double* %arrayidx19, align 8, !tbaa !4
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, 3
  br i1 %exitcond72, label %for.end23, label %for.body11

for.end23:                                        ; preds = %for.body11
  %conv26 = fpext float %4 to double
  %add27 = fadd double %tmpq.067, %conv26
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %7 = trunc i64 %indvars.iv.next74 to i32
  %cmp7 = icmp slt i32 %7, %add
  br i1 %cmp7, label %for.cond9.preheader, label %for.cond6.for.cond31.preheader_crit_edge

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next, %for.body34 ]
  %arrayidx36 = getelementptr inbounds [3 x double]* %tmpmu, i64 0, i64 %indvars.iv
  %8 = load double* %arrayidx36, align 8, !tbaa !4
  %mul37 = fmul double %8, 4.803210e+01
  %conv38 = fptrunc double %mul37 to float
  %arrayidx40 = getelementptr inbounds float* %mu, i64 %indvars.iv
  store float %conv38, float* %arrayidx40, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end43, label %for.body34

for.end43:                                        ; preds = %for.body34
  store float %tmpq.0.lcssa, float* %qsum, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_mu(%struct._IO_FILE* nocapture %fp, float* nocapture %mu, float* nocapture %vol) #0 {
entry:
  %mmm = alloca [4 x float], align 16
  %0 = bitcast [4 x float]* %mmm to i8*
  %call = call i64 @fread(i8* %0, i64 64, i64 1, %struct._IO_FILE* %fp) #3
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 0
  %1 = load float* %arraydecay, align 16, !tbaa !3
  store float %1, float* %mu, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds float* %mu, i64 1
  store float %2, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 2
  %3 = load float* %arrayidx4.i, align 8, !tbaa !3
  %arrayidx5.i = getelementptr inbounds float* %mu, i64 2
  store float %3, float* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [4 x float]* %mmm, i64 0, i64 3
  %4 = load float* %arrayidx, align 4, !tbaa !3
  store float %4, float* %vol, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
