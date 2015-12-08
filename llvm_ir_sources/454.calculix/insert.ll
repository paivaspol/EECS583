; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/insert.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"reallocation: nzs_=%d\0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @insert(i32* nocapture %ipointer, i32** nocapture %mast1p, i32** nocapture %mast2p, i32* nocapture %i1, i32* nocapture %i2, i32* nocapture %ifree, i32* nocapture %nzs_) #0 {
entry:
  %0 = load i32** %mast1p, align 8, !tbaa !0
  %1 = load i32** %mast2p, align 8, !tbaa !0
  %2 = load i32* %i1, align 4, !tbaa !3
  %3 = load i32* %i2, align 4, !tbaa !3
  %cmp = icmp slt i32 %2, %3
  %. = select i1 %cmp, i32 %2, i32 %3
  %.116 = select i1 %cmp, i32 %3, i32 %2
  %sub = add nsw i32 %.116, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32* %ipointer, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then2, label %while.body

if.then2:                                         ; preds = %entry
  %5 = load i32* %ifree, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %ifree, align 4, !tbaa !3
  %6 = load i32* %nzs_, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.then2
  %conv = sitofp i32 %6 to double
  %mul = fmul double %conv, 1.100000e+00
  %conv5 = fptosi double %mul to i32
  store i32 %conv5, i32* %nzs_, align 4, !tbaa !3
  %7 = bitcast i32* %0 to i8*
  %conv6 = sext i32 %conv5 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call = tail call i8* @realloc(i8* %7, i64 %mul7) #2
  %8 = bitcast i8* %call to i32*
  %9 = bitcast i32* %1 to i8*
  %10 = load i32* %nzs_, align 4, !tbaa !3
  %conv8 = sext i32 %10 to i64
  %mul9 = shl nsw i64 %conv8, 2
  %call10 = tail call i8* @realloc(i8* %9, i64 %mul9) #2
  %11 = bitcast i8* %call10 to i32*
  %12 = load i32* %nzs_, align 4, !tbaa !3
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %12) #2
  %.pre = load i32* %ifree, align 4, !tbaa !3
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.then4
  %13 = phi i32 [ %.pre, %if.then4 ], [ %inc, %if.then2 ]
  %mast1.0 = phi i32* [ %8, %if.then4 ], [ %0, %if.then2 ]
  %mast2.0 = phi i32* [ %11, %if.then4 ], [ %1, %if.then2 ]
  store i32 %13, i32* %arrayidx, align 4, !tbaa !3
  %14 = load i32* %ifree, align 4, !tbaa !3
  %sub16 = add nsw i32 %14, -1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i32* %mast1.0, i64 %idxprom17
  store i32 %., i32* %arrayidx18, align 4, !tbaa !3
  %15 = load i32* %ifree, align 4, !tbaa !3
  %sub19 = add nsw i32 %15, -1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32* %mast2.0, i64 %idxprom20
  store i32 0, i32* %arrayidx21, align 4, !tbaa !3
  br label %if.end68

while.body:                                       ; preds = %entry, %if.end32
  %istart.0 = phi i32 [ %17, %if.end32 ], [ %4, %entry ]
  %sub26 = add nsw i32 %istart.0, -1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i32* %0, i64 %idxprom27
  %16 = load i32* %arrayidx28, align 4, !tbaa !3
  %cmp29 = icmp eq i32 %16, %.
  br i1 %cmp29, label %if.end68, label %if.end32

if.end32:                                         ; preds = %while.body
  %arrayidx35 = getelementptr inbounds i32* %1, i64 %idxprom27
  %17 = load i32* %arrayidx35, align 4, !tbaa !3
  %cmp36 = icmp eq i32 %17, 0
  br i1 %cmp36, label %if.then38, label %while.body

if.then38:                                        ; preds = %if.end32
  %18 = load i32* %ifree, align 4, !tbaa !3
  %inc39 = add nsw i32 %18, 1
  store i32 %inc39, i32* %ifree, align 4, !tbaa !3
  %19 = load i32* %nzs_, align 4, !tbaa !3
  %cmp40 = icmp slt i32 %18, %19
  br i1 %cmp40, label %if.end53, label %if.then42

if.then42:                                        ; preds = %if.then38
  %conv43 = sitofp i32 %19 to double
  %mul44 = fmul double %conv43, 1.100000e+00
  %conv45 = fptosi double %mul44 to i32
  store i32 %conv45, i32* %nzs_, align 4, !tbaa !3
  %20 = bitcast i32* %0 to i8*
  %conv46 = sext i32 %conv45 to i64
  %mul47 = shl nsw i64 %conv46, 2
  %call48 = tail call i8* @realloc(i8* %20, i64 %mul47) #2
  %21 = bitcast i8* %call48 to i32*
  %22 = bitcast i32* %1 to i8*
  %23 = load i32* %nzs_, align 4, !tbaa !3
  %conv49 = sext i32 %23 to i64
  %mul50 = shl nsw i64 %conv49, 2
  %call51 = tail call i8* @realloc(i8* %22, i64 %mul50) #2
  %24 = bitcast i8* %call51 to i32*
  %25 = load i32* %nzs_, align 4, !tbaa !3
  %call52 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i32 %25) #2
  %.pre119 = load i32* %ifree, align 4, !tbaa !3
  br label %if.end53

if.end53:                                         ; preds = %if.then38, %if.then42
  %26 = phi i32 [ %.pre119, %if.then42 ], [ %inc39, %if.then38 ]
  %mast1.1 = phi i32* [ %21, %if.then42 ], [ %0, %if.then38 ]
  %mast2.1 = phi i32* [ %24, %if.then42 ], [ %1, %if.then38 ]
  %arrayidx56 = getelementptr inbounds i32* %mast2.1, i64 %idxprom27
  store i32 %26, i32* %arrayidx56, align 4, !tbaa !3
  %27 = load i32* %ifree, align 4, !tbaa !3
  %sub57 = add nsw i32 %27, -1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds i32* %mast1.1, i64 %idxprom58
  store i32 %., i32* %arrayidx59, align 4, !tbaa !3
  %28 = load i32* %ifree, align 4, !tbaa !3
  %sub60 = add nsw i32 %28, -1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds i32* %mast2.1, i64 %idxprom61
  store i32 0, i32* %arrayidx62, align 4, !tbaa !3
  br label %if.end68

if.end68:                                         ; preds = %while.body, %if.end53, %if.end12
  %mast1.2 = phi i32* [ %mast1.0, %if.end12 ], [ %mast1.1, %if.end53 ], [ %0, %while.body ]
  %mast2.2 = phi i32* [ %mast2.0, %if.end12 ], [ %mast2.1, %if.end53 ], [ %1, %while.body ]
  store i32* %mast1.2, i32** %mast1p, align 8, !tbaa !0
  store i32* %mast2.2, i32** %mast2p, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
