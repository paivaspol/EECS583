; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/preiter.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"error condition (0=good, 1=bad) = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"# of iterations = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @preiter(double* nocapture %ad, double** nocapture %aup, double* %b, i32** nocapture %icolp, i32** nocapture %irowp, i32* %neq, i32* nocapture %nzs, i32* nocapture %isolver, i32* nocapture %iperturb) #0 {
entry:
  %ad229 = bitcast double* %ad to i8*
  %niter = alloca i32, align 4
  %ndim = alloca i32, align 4
  %eps = alloca double, align 8
  store i32 5000000, i32* %niter, align 4, !tbaa !0
  store double 1.000000e-04, double* %eps, align 8, !tbaa !3
  %0 = load double** %aup, align 8, !tbaa !4
  %1 = load i32** %irowp, align 8, !tbaa !4
  %2 = load i32** %icolp, align 8, !tbaa !4
  %3 = load i32* %iperturb, align 4, !tbaa !0
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32* %neq, align 4, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32* %nzs, align 4, !tbaa !0
  %conv = sext i32 %4 to i64
  %call = call i8* @u_calloc(i64 %conv, i64 4) #4
  %5 = bitcast i8* %call to i32*
  %6 = load i32* %neq, align 4, !tbaa !0
  %conv1 = sext i32 %6 to i64
  %call2 = call i8* @u_calloc(i64 %conv1, i64 4) #4
  %7 = bitcast i8* %call2 to i32*
  %8 = load i32* %nzs, align 4, !tbaa !0
  %cmp3218 = icmp sgt i32 %8, 0
  br i1 %cmp3218, label %for.body, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body, %if.then
  %9 = load i32* %neq, align 4, !tbaa !0
  %cmp8216 = icmp sgt i32 %9, 0
  br i1 %cmp8216, label %for.body10, label %if.end

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv236
  %10 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32* %5, i64 %indvars.iv236
  store i32 %10, i32* %arrayidx6, align 4, !tbaa !0
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %11 = load i32* %nzs, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv.next237 to i32
  %cmp3 = icmp slt i32 %12, %11
  br i1 %cmp3, label %for.body, label %for.cond7.preheader

for.body10:                                       ; preds = %for.cond7.preheader, %for.body10
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %for.body10 ], [ 0, %for.cond7.preheader ]
  %arrayidx12 = getelementptr inbounds i32* %2, i64 %indvars.iv234
  %13 = load i32* %arrayidx12, align 4, !tbaa !0
  %arrayidx14 = getelementptr inbounds i32* %7, i64 %indvars.iv234
  store i32 %13, i32* %arrayidx14, align 4, !tbaa !0
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  %14 = load i32* %neq, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next235 to i32
  %cmp8 = icmp slt i32 %15, %14
  br i1 %cmp8, label %for.body10, label %if.end

if.end:                                           ; preds = %for.cond7.preheader, %for.body10, %entry.if.end_crit_edge
  %16 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %9, %for.cond7.preheader ], [ %14, %for.body10 ]
  %irow_save.0 = phi i32* [ null, %entry.if.end_crit_edge ], [ %5, %for.cond7.preheader ], [ %5, %for.body10 ]
  %icol_save.0 = phi i32* [ null, %entry.if.end_crit_edge ], [ %7, %for.cond7.preheader ], [ %7, %for.body10 ]
  %17 = load i32* %isolver, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %17, 2
  %. = select i1 %cmp18, i32 0, i32 3
  %18 = load i32* %nzs, align 4, !tbaa !0
  %add = add nsw i32 %18, %16
  store i32 %add, i32* %ndim, align 4, !tbaa !0
  %19 = bitcast double* %0 to i8*
  %conv22 = sext i32 %add to i64
  %mul = shl nsw i64 %conv22, 3
  %call23 = call i8* @realloc(i8* %19, i64 %mul) #4
  %20 = bitcast i8* %call23 to double*
  %21 = bitcast i32* %1 to i8*
  %22 = load i32* %ndim, align 4, !tbaa !0
  %conv24 = sext i32 %22 to i64
  %mul25 = shl nsw i64 %conv24, 2
  %call26 = call i8* @realloc(i8* %21, i64 %mul25) #4
  %23 = bitcast i8* %call26 to i32*
  %24 = bitcast i32* %2 to i8*
  %25 = load i32* %ndim, align 4, !tbaa !0
  %conv27 = sext i32 %25 to i64
  %mul28 = shl nsw i64 %conv27, 2
  %call29 = call i8* @realloc(i8* %24, i64 %mul28) #4
  %26 = bitcast i8* %call29 to i32*
  %27 = load i32* %neq, align 4, !tbaa !0
  %cmp31212 = icmp sgt i32 %27, 0
  br i1 %cmp31212, label %for.cond34.preheader.lr.ph, label %for.end65

for.cond34.preheader.lr.ph:                       ; preds = %if.end
  %28 = load i32* %nzs, align 4, !tbaa !0
  %29 = sext i32 %27 to i64
  br label %for.cond34.preheader

for.cond30.loopexit:                              ; preds = %for.body39, %for.cond34.preheader
  %k.1.lcssa = phi i32 [ %k.0214, %for.cond34.preheader ], [ %dec, %for.body39 ]
  %30 = trunc i64 %indvars.iv.next233 to i32
  %cmp31 = icmp sgt i32 %30, 0
  br i1 %cmp31, label %for.cond34.preheader, label %for.end48

for.cond34.preheader:                             ; preds = %for.cond34.preheader.lr.ph, %for.cond30.loopexit
  %indvars.iv232 = phi i64 [ %29, %for.cond34.preheader.lr.ph ], [ %indvars.iv.next233, %for.cond30.loopexit ]
  %i.2215.in = phi i32 [ %27, %for.cond34.preheader.lr.ph ], [ %i.2215, %for.cond30.loopexit ]
  %k.0214 = phi i32 [ %28, %for.cond34.preheader.lr.ph ], [ %k.1.lcssa, %for.cond30.loopexit ]
  %indvars.iv.next233 = add i64 %indvars.iv232, -1
  %i.2215 = add nsw i32 %i.2215.in, -1
  %arrayidx36 = getelementptr inbounds i32* %26, i64 %indvars.iv.next233
  %31 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37208 = icmp sgt i32 %31, 0
  br i1 %cmp37208, label %for.body39.lr.ph, label %for.cond30.loopexit

for.body39.lr.ph:                                 ; preds = %for.cond34.preheader
  %32 = sext i32 %k.0214 to i64
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %indvars.iv230 = phi i64 [ %32, %for.body39.lr.ph ], [ %indvars.iv.next231, %for.body39 ]
  %k.1210 = phi i32 [ %k.0214, %for.body39.lr.ph ], [ %dec, %for.body39 ]
  %j.0209 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc44, %for.body39 ]
  %indvars.iv.next231 = add i64 %indvars.iv230, -1
  %dec = add nsw i32 %k.1210, -1
  %arrayidx42 = getelementptr inbounds i32* %26, i64 %indvars.iv.next231
  store i32 %i.2215.in, i32* %arrayidx42, align 4, !tbaa !0
  %inc44 = add nsw i32 %j.0209, 1
  %33 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp slt i32 %inc44, %33
  br i1 %cmp37, label %for.body39, label %for.cond30.loopexit

for.end48:                                        ; preds = %for.cond30.loopexit
  br i1 %cmp31212, label %for.body52.lr.ph, label %for.end65

for.body52.lr.ph:                                 ; preds = %for.end48
  %34 = load i32* %nzs, align 4, !tbaa !0
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  %scevgep = getelementptr i8* %call23, i64 %36
  %37 = icmp sgt i32 %27, 1
  %.op = add i32 %27, -1
  %38 = zext i32 %.op to i64
  %.op238 = shl nuw nsw i64 %38, 3
  %.op238.op = add i64 %.op238, 8
  %39 = select i1 %37, i64 %.op238.op, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep, i8* %ad229, i64 %39, i32 8, i1 false)
  br label %for.body52

for.body52:                                       ; preds = %for.body52.lr.ph, %for.body52
  %indvars.iv227 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next228, %for.body52 ]
  %indvars.iv225 = phi i64 [ %35, %for.body52.lr.ph ], [ %indvars.iv.next226, %for.body52 ]
  %j.1206 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc57, %for.body52 ]
  %inc57 = add nsw i32 %j.1206, 1
  %arrayidx59 = getelementptr inbounds i32* %23, i64 %indvars.iv225
  store i32 %inc57, i32* %arrayidx59, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %26, i64 %indvars.iv225
  store i32 %inc57, i32* %arrayidx61, align 4, !tbaa !0
  %indvars.iv.next226 = add i64 %indvars.iv225, 1
  %indvars.iv.next228 = add i64 %indvars.iv227, 1
  %40 = trunc i64 %indvars.iv.next228 to i32
  %cmp50 = icmp slt i32 %40, %27
  br i1 %cmp50, label %for.body52, label %for.end65

for.end65:                                        ; preds = %if.end, %for.body52, %for.end48
  call void @rearrange_(double* %20, i32* %23, i32* %26, i32* %ndim, i32* %neq) #4
  %41 = load i32* %neq, align 4, !tbaa !0
  %conv66 = sext i32 %41 to i64
  %mul67 = shl nsw i64 %conv66, 2
  %call68 = call i8* @realloc(i8* %call26, i64 %mul67) #4
  %42 = bitcast i8* %call68 to i32*
  %43 = load i32* %neq, align 4, !tbaa !0
  %conv69 = sext i32 %43 to i64
  %call70 = call i8* @u_calloc(i64 %conv69, i64 8) #4
  %44 = bitcast i8* %call70 to double*
  %45 = load i32* %neq, align 4, !tbaa !0
  %46 = load i32* %ndim, align 4, !tbaa !0
  %call71 = call i32 @cgsolver(double* %20, double* %44, double* %b, i32 %45, i32 %46, i32* %26, i32* %42, double* %eps, i32* %niter, i32 %.) #4
  %call72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %call71) #4
  %47 = load i32* %niter, align 4, !tbaa !0
  %call73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %47) #4
  %48 = load i32* %neq, align 4, !tbaa !0
  %cmp75202 = icmp sgt i32 %48, 0
  br i1 %cmp75202, label %for.body77, label %for.end84

for.body77:                                       ; preds = %for.end65, %for.body77
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.body77 ], [ 0, %for.end65 ]
  %arrayidx79 = getelementptr inbounds double* %44, i64 %indvars.iv222
  %49 = load double* %arrayidx79, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds double* %b, i64 %indvars.iv222
  store double %49, double* %arrayidx81, align 8, !tbaa !3
  %indvars.iv.next223 = add i64 %indvars.iv222, 1
  %50 = trunc i64 %indvars.iv.next223 to i32
  %cmp75 = icmp slt i32 %50, %48
  br i1 %cmp75, label %for.body77, label %for.end84

for.end84:                                        ; preds = %for.body77, %for.end65
  call void @free(i8* %call70) #4
  %51 = load i32* %iperturb, align 4, !tbaa !0
  %cmp85 = icmp sgt i32 %51, 1
  br i1 %cmp85, label %if.then87, label %if.end116

if.then87:                                        ; preds = %for.end84
  %52 = load i32* %nzs, align 4, !tbaa !0
  %conv88 = sext i32 %52 to i64
  %mul89 = shl nsw i64 %conv88, 2
  %call90 = call i8* @realloc(i8* %call68, i64 %mul89) #4
  %53 = bitcast i8* %call90 to i32*
  %54 = load i32* %neq, align 4, !tbaa !0
  %conv91 = sext i32 %54 to i64
  %mul92 = shl nsw i64 %conv91, 2
  %call93 = call i8* @realloc(i8* %call29, i64 %mul92) #4
  %55 = bitcast i8* %call93 to i32*
  %56 = load i32* %nzs, align 4, !tbaa !0
  %cmp95200 = icmp sgt i32 %56, 0
  br i1 %cmp95200, label %for.body97, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.body97, %if.then87
  %57 = load i32* %neq, align 4, !tbaa !0
  %cmp106198 = icmp sgt i32 %57, 0
  br i1 %cmp106198, label %for.body108, label %for.end115

for.body97:                                       ; preds = %if.then87, %for.body97
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %for.body97 ], [ 0, %if.then87 ]
  %arrayidx99 = getelementptr inbounds i32* %irow_save.0, i64 %indvars.iv220
  %58 = load i32* %arrayidx99, align 4, !tbaa !0
  %arrayidx101 = getelementptr inbounds i32* %53, i64 %indvars.iv220
  store i32 %58, i32* %arrayidx101, align 4, !tbaa !0
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %59 = trunc i64 %indvars.iv.next221 to i32
  %cmp95 = icmp slt i32 %59, %56
  br i1 %cmp95, label %for.body97, label %for.cond105.preheader

for.body108:                                      ; preds = %for.cond105.preheader, %for.body108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body108 ], [ 0, %for.cond105.preheader ]
  %arrayidx110 = getelementptr inbounds i32* %icol_save.0, i64 %indvars.iv
  %60 = load i32* %arrayidx110, align 4, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %55, i64 %indvars.iv
  store i32 %60, i32* %arrayidx112, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %61 = trunc i64 %indvars.iv.next to i32
  %cmp106 = icmp slt i32 %61, %57
  br i1 %cmp106, label %for.body108, label %for.end115

for.end115:                                       ; preds = %for.body108, %for.cond105.preheader
  %62 = bitcast i32* %irow_save.0 to i8*
  call void @free(i8* %62) #4
  %63 = bitcast i32* %icol_save.0 to i8*
  call void @free(i8* %63) #4
  br label %if.end116

if.end116:                                        ; preds = %for.end115, %for.end84
  %icol.0 = phi i32* [ %55, %for.end115 ], [ %26, %for.end84 ]
  %irow.0 = phi i32* [ %53, %for.end115 ], [ %42, %for.end84 ]
  store double* %20, double** %aup, align 8, !tbaa !4
  store i32* %irow.0, i32** %irowp, align 8, !tbaa !4
  store i32* %icol.0, i32** %icolp, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: optsize
declare void @rearrange_(double*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @cgsolver(double*, double*, double*, i32, i32, i32*, i32*, double*, i32*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
