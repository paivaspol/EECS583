; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/cmn.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmn_mean = internal unnamed_addr global float* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/cmn.c\00", align 1
@cmn_var = internal unnamed_addr global float* null, align 8

; Function Attrs: nounwind optsize uwtable
define void @cmn(float** nocapture %mfc, i32 %varnorm, i32 %n_frame, i32 %veclen) #0 {
entry:
  %cmp = icmp slt i32 %n_frame, 1
  %cmp1 = icmp slt i32 %veclen, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end139, label %if.end

if.end:                                           ; preds = %entry
  %0 = load float** @cmn_mean, align 8, !tbaa !0
  %cmp2 = icmp eq float* %0, null
  br i1 %cmp2, label %if.then3, label %for.cond.preheader

if.then3:                                         ; preds = %if.end
  %conv = sext i32 %veclen to i64
  %call = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 83) #4
  %1 = bitcast i8* %call to float*
  store float* %1, float** @cmn_mean, align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then3, %if.end
  %2 = phi float* [ %1, %if.then3 ], [ %0, %if.end ]
  %cmp5229 = icmp sgt i32 %veclen, 0
  br i1 %cmp5229, label %for.body.lr.ph, label %for.cond7.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = bitcast float* %2 to i8*
  %4 = add i32 %veclen, -1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add i64 %6, 4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %7, i32 4, i1 false)
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body.lr.ph, %for.cond.preheader
  %cmp8227 = icmp sgt i32 %n_frame, 0
  br i1 %cmp8227, label %for.body10.lr.ph, label %for.cond27.preheader

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %8 = load float** @cmn_mean, align 8, !tbaa !0
  br label %for.body10

for.cond27.preheader:                             ; preds = %for.inc24, %for.cond7.preheader
  br i1 %cmp5229, label %for.body30.lr.ph, label %for.end36

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %conv31 = sitofp i32 %n_frame to float
  %9 = load float** @cmn_mean, align 8, !tbaa !0
  br label %for.body30

for.body10:                                       ; preds = %for.inc24, %for.body10.lr.ph
  %indvars.iv267 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next268, %for.inc24 ]
  %arrayidx12 = getelementptr inbounds float** %mfc, i64 %indvars.iv267
  %10 = load float** %arrayidx12, align 8, !tbaa !0
  br i1 %cmp5229, label %for.body16, label %for.inc24

for.body16:                                       ; preds = %for.body10, %for.body16
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %for.body16 ], [ 0, %for.body10 ]
  %arrayidx18 = getelementptr inbounds float* %10, i64 %indvars.iv263
  %11 = load float* %arrayidx18, align 4, !tbaa !3
  %arrayidx20 = getelementptr inbounds float* %8, i64 %indvars.iv263
  %12 = load float* %arrayidx20, align 4, !tbaa !3
  %add = fadd float %11, %12
  store float %add, float* %arrayidx20, align 4, !tbaa !3
  %indvars.iv.next264 = add i64 %indvars.iv263, 1
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32
  %exitcond266 = icmp eq i32 %lftr.wideiv265, %veclen
  br i1 %exitcond266, label %for.inc24, label %for.body16

for.inc24:                                        ; preds = %for.body16, %for.body10
  %indvars.iv.next268 = add i64 %indvars.iv267, 1
  %lftr.wideiv269 = trunc i64 %indvars.iv.next268 to i32
  %exitcond270 = icmp eq i32 %lftr.wideiv269, %n_frame
  br i1 %exitcond270, label %for.cond27.preheader, label %for.body10

for.body30:                                       ; preds = %for.body30, %for.body30.lr.ph
  %indvars.iv259 = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next260, %for.body30 ]
  %arrayidx33 = getelementptr inbounds float* %9, i64 %indvars.iv259
  %13 = load float* %arrayidx33, align 4, !tbaa !3
  %div = fdiv float %13, %conv31
  store float %div, float* %arrayidx33, align 4, !tbaa !3
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, %veclen
  br i1 %exitcond262, label %for.end36, label %for.body30

for.end36:                                        ; preds = %for.body30, %for.cond27.preheader
  %tobool = icmp eq i32 %varnorm, 0
  br i1 %tobool, label %for.cond38.preheader, label %if.else

for.cond38.preheader:                             ; preds = %for.end36
  br i1 %cmp8227, label %for.body41.lr.ph, label %if.end139

for.body41.lr.ph:                                 ; preds = %for.cond38.preheader
  %14 = load float** @cmn_mean, align 8, !tbaa !0
  br label %for.body41

for.body41:                                       ; preds = %for.inc55, %for.body41.lr.ph
  %indvars.iv231 = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next232, %for.inc55 ]
  %arrayidx43 = getelementptr inbounds float** %mfc, i64 %indvars.iv231
  %15 = load float** %arrayidx43, align 8, !tbaa !0
  br i1 %cmp5229, label %for.body47, label %for.inc55

for.body47:                                       ; preds = %for.body41, %for.body47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body47 ], [ 0, %for.body41 ]
  %arrayidx49 = getelementptr inbounds float* %14, i64 %indvars.iv
  %16 = load float* %arrayidx49, align 4, !tbaa !3
  %arrayidx51 = getelementptr inbounds float* %15, i64 %indvars.iv
  %17 = load float* %arrayidx51, align 4, !tbaa !3
  %sub = fsub float %17, %16
  store float %sub, float* %arrayidx51, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %veclen
  br i1 %exitcond, label %for.inc55, label %for.body47

for.inc55:                                        ; preds = %for.body47, %for.body41
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  %lftr.wideiv233 = trunc i64 %indvars.iv.next232 to i32
  %exitcond234 = icmp eq i32 %lftr.wideiv233, %n_frame
  br i1 %exitcond234, label %if.end139, label %for.body41

if.else:                                          ; preds = %for.end36
  %18 = load float** @cmn_var, align 8, !tbaa !0
  %cmp58 = icmp eq float* %18, null
  br i1 %cmp58, label %if.then60, label %for.cond64.preheader

if.then60:                                        ; preds = %if.else
  %conv61 = sext i32 %veclen to i64
  %call62 = tail call i8* @__ckd_calloc__(i64 %conv61, i64 4, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 106) #4
  %19 = bitcast i8* %call62 to float*
  store float* %19, float** @cmn_var, align 8, !tbaa !0
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.then60, %if.else
  %20 = phi float* [ %19, %if.then60 ], [ %18, %if.else ]
  br i1 %cmp5229, label %for.body67.lr.ph, label %for.cond73.preheader

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %21 = bitcast float* %20 to i8*
  %22 = add i32 %veclen, -1
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 2
  %25 = add i64 %24, 4
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %25, i32 4, i1 false)
  br label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.body67.lr.ph, %for.cond64.preheader
  br i1 %cmp8227, label %for.body76.lr.ph, label %for.cond97.preheader

for.body76.lr.ph:                                 ; preds = %for.cond73.preheader
  %26 = load float** @cmn_mean, align 8, !tbaa !0
  %27 = load float** @cmn_var, align 8, !tbaa !0
  br label %for.body76

for.cond97.preheader:                             ; preds = %for.inc94, %for.cond73.preheader
  br i1 %cmp5229, label %for.body100.lr.ph, label %for.cond113.preheader

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %conv101 = sitofp i32 %n_frame to double
  %.pre = load float** @cmn_var, align 8, !tbaa !0
  br label %for.body100

for.body76:                                       ; preds = %for.inc94, %for.body76.lr.ph
  %indvars.iv251 = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next252, %for.inc94 ]
  %arrayidx78 = getelementptr inbounds float** %mfc, i64 %indvars.iv251
  %28 = load float** %arrayidx78, align 8, !tbaa !0
  br i1 %cmp5229, label %for.body82, label %for.inc94

for.body82:                                       ; preds = %for.body76, %for.body82
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body82 ], [ 0, %for.body76 ]
  %arrayidx84 = getelementptr inbounds float* %28, i64 %indvars.iv247
  %29 = load float* %arrayidx84, align 4, !tbaa !3
  %arrayidx86 = getelementptr inbounds float* %26, i64 %indvars.iv247
  %30 = load float* %arrayidx86, align 4, !tbaa !3
  %sub87 = fsub float %29, %30
  %mul = fmul float %sub87, %sub87
  %arrayidx89 = getelementptr inbounds float* %27, i64 %indvars.iv247
  %31 = load float* %arrayidx89, align 4, !tbaa !3
  %add90 = fadd float %31, %mul
  store float %add90, float* %arrayidx89, align 4, !tbaa !3
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %lftr.wideiv249 = trunc i64 %indvars.iv.next248 to i32
  %exitcond250 = icmp eq i32 %lftr.wideiv249, %veclen
  br i1 %exitcond250, label %for.inc94, label %for.body82

for.inc94:                                        ; preds = %for.body82, %for.body76
  %indvars.iv.next252 = add i64 %indvars.iv251, 1
  %lftr.wideiv253 = trunc i64 %indvars.iv.next252 to i32
  %exitcond254 = icmp eq i32 %lftr.wideiv253, %n_frame
  br i1 %exitcond254, label %for.cond97.preheader, label %for.body76

for.cond113.preheader:                            ; preds = %for.body100, %for.cond97.preheader
  br i1 %cmp8227, label %for.body116.lr.ph, label %if.end139

for.body116.lr.ph:                                ; preds = %for.cond113.preheader
  %32 = load float** @cmn_mean, align 8, !tbaa !0
  %33 = load float** @cmn_var, align 8, !tbaa !0
  br label %for.body116

for.body100:                                      ; preds = %for.body100, %for.body100.lr.ph
  %34 = phi float* [ %.pre, %for.body100.lr.ph ], [ %36, %for.body100 ]
  %indvars.iv243 = phi i64 [ 0, %for.body100.lr.ph ], [ %indvars.iv.next244, %for.body100 ]
  %arrayidx103 = getelementptr inbounds float* %34, i64 %indvars.iv243
  %35 = load float* %arrayidx103, align 4, !tbaa !3
  %conv104 = fpext float %35 to double
  %div105 = fdiv double %conv101, %conv104
  %call106 = tail call double @sqrt(double %div105) #4
  %conv107 = fptrunc double %call106 to float
  %36 = load float** @cmn_var, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds float* %36, i64 %indvars.iv243
  store float %conv107, float* %arrayidx109, align 4, !tbaa !3
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  %lftr.wideiv245 = trunc i64 %indvars.iv.next244 to i32
  %exitcond246 = icmp eq i32 %lftr.wideiv245, %veclen
  br i1 %exitcond246, label %for.cond113.preheader, label %for.body100

for.body116:                                      ; preds = %for.inc136, %for.body116.lr.ph
  %indvars.iv239 = phi i64 [ 0, %for.body116.lr.ph ], [ %indvars.iv.next240, %for.inc136 ]
  %arrayidx118 = getelementptr inbounds float** %mfc, i64 %indvars.iv239
  %37 = load float** %arrayidx118, align 8, !tbaa !0
  br i1 %cmp5229, label %for.body122, label %for.inc136

for.body122:                                      ; preds = %for.body116, %for.body122
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %for.body122 ], [ 0, %for.body116 ]
  %arrayidx124 = getelementptr inbounds float* %37, i64 %indvars.iv235
  %38 = load float* %arrayidx124, align 4, !tbaa !3
  %arrayidx126 = getelementptr inbounds float* %32, i64 %indvars.iv235
  %39 = load float* %arrayidx126, align 4, !tbaa !3
  %sub127 = fsub float %38, %39
  %arrayidx129 = getelementptr inbounds float* %33, i64 %indvars.iv235
  %40 = load float* %arrayidx129, align 4, !tbaa !3
  %mul130 = fmul float %sub127, %40
  store float %mul130, float* %arrayidx124, align 4, !tbaa !3
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %lftr.wideiv237 = trunc i64 %indvars.iv.next236 to i32
  %exitcond238 = icmp eq i32 %lftr.wideiv237, %veclen
  br i1 %exitcond238, label %for.inc136, label %for.body122

for.inc136:                                       ; preds = %for.body122, %for.body116
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %lftr.wideiv241 = trunc i64 %indvars.iv.next240 to i32
  %exitcond242 = icmp eq i32 %lftr.wideiv241, %n_frame
  br i1 %exitcond242, label %if.end139, label %for.body116

if.end139:                                        ; preds = %for.cond113.preheader, %for.inc136, %for.cond38.preheader, %for.inc55, %entry
  ret void
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define void @cmn_free() #0 {
entry:
  %0 = load float** @cmn_var, align 8, !tbaa !0
  %1 = bitcast float* %0 to i8*
  tail call void @ckd_free(i8* %1) #4
  %2 = load float** @cmn_mean, align 8, !tbaa !0
  %3 = bitcast float* %2 to i8*
  tail call void @ckd_free(i8* %3) #4
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
