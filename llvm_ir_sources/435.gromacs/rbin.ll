; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_bin = type { i32, i32, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"b->rbuf\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_bin* @mk_bin() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 43, i32 1, i32 16) #3
  %0 = bitcast i8* %call to %struct.t_bin*
  ret %struct.t_bin* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @reset_bin(%struct.t_bin* nocapture %b) #0 {
entry:
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  store i32 0, i32* %nreal, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @add_binr(%struct._IO_FILE* nocapture %log, %struct.t_bin* nocapture %b, i32 %nr, float* nocapture %r) #0 {
entry:
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %0 = load i32* %nreal, align 4, !tbaa !0
  %add = add nsw i32 %0, %nr
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %1 = load i32* %maxreal, align 4, !tbaa !0
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  %rbuf14.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre45 = load double** %rbuf14.phi.trans.insert, align 8, !tbaa !3
  br label %if.end13

if.then:                                          ; preds = %entry
  %rem = srem i32 %add, 4
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %sub = add i32 %add, 4
  %add8 = sub i32 %sub, %rem
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  %storemerge = phi i32 [ %add8, %if.then6 ], [ %add, %if.then ]
  store i32 %storemerge, i32* %maxreal, align 4, !tbaa !0
  %rbuf9 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %2 = load double** %rbuf9, align 8, !tbaa !3
  %3 = bitcast double* %2 to i8*
  %mul = shl i32 %storemerge, 3
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %3, i32 %mul) #3
  %4 = bitcast i8* %call to double*
  store double* %4, double** %rbuf9, align 8, !tbaa !3
  %.pre = load i32* %nreal, align 4, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.end
  %5 = phi double* [ %4, %if.end ], [ %.pre45, %entry.if.end13_crit_edge ]
  %6 = phi i32 [ %.pre, %if.end ], [ %0, %entry.if.end13_crit_edge ]
  %idx.ext = sext i32 %6 to i64
  %cmp1643 = icmp sgt i32 %nr, 0
  br i1 %cmp1643, label %for.body, label %for.end

for.body:                                         ; preds = %if.end13, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end13 ]
  %arrayidx = getelementptr inbounds float* %r, i64 %indvars.iv
  %7 = load float* %arrayidx, align 4, !tbaa !4
  %conv18 = fpext float %7 to double
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext
  %arrayidx20 = getelementptr inbounds double* %5, i64 %add.ptr.sum
  store double %conv18, double* %arrayidx20, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end13
  %add23 = add nsw i32 %6, %nr
  store i32 %add23, i32* %nreal, align 4, !tbaa !0
  ret i32 %6
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @add_bind(%struct._IO_FILE* nocapture %log, %struct.t_bin* nocapture %b, i32 %nr, double* nocapture %r) #0 {
entry:
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %0 = load i32* %nreal, align 4, !tbaa !0
  %add = add nsw i32 %0, %nr
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %1 = load i32* %maxreal, align 4, !tbaa !0
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  %rbuf14.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre45 = load double** %rbuf14.phi.trans.insert, align 8, !tbaa !3
  br label %if.end13

if.then:                                          ; preds = %entry
  %rem = srem i32 %add, 4
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %sub = add i32 %add, 4
  %add8 = sub i32 %sub, %rem
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  %storemerge = phi i32 [ %add8, %if.then6 ], [ %add, %if.then ]
  store i32 %storemerge, i32* %maxreal, align 4, !tbaa !0
  %rbuf9 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %2 = load double** %rbuf9, align 8, !tbaa !3
  %3 = bitcast double* %2 to i8*
  %mul = shl i32 %storemerge, 3
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %3, i32 %mul) #3
  %4 = bitcast i8* %call to double*
  store double* %4, double** %rbuf9, align 8, !tbaa !3
  %.pre = load i32* %nreal, align 4, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.end
  %5 = phi double* [ %4, %if.end ], [ %.pre45, %entry.if.end13_crit_edge ]
  %6 = phi i32 [ %.pre, %if.end ], [ %0, %entry.if.end13_crit_edge ]
  %idx.ext = sext i32 %6 to i64
  %cmp1642 = icmp sgt i32 %nr, 0
  br i1 %cmp1642, label %for.body, label %for.end

for.body:                                         ; preds = %if.end13, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end13 ]
  %arrayidx = getelementptr inbounds double* %r, i64 %indvars.iv
  %7 = load double* %arrayidx, align 8, !tbaa !5
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext
  %arrayidx19 = getelementptr inbounds double* %5, i64 %add.ptr.sum
  store double %7, double* %arrayidx19, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end13
  %add22 = add nsw i32 %6, %nr
  store i32 %add22, i32* %nreal, align 4, !tbaa !0
  ret i32 %6
}

; Function Attrs: nounwind optsize uwtable
define void @sum_bin(%struct.t_bin* nocapture %b, %struct.t_commrec* %cr) #0 {
entry:
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %0 = load i32* %nreal, align 4, !tbaa !0
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %1 = load i32* %maxreal, align 4, !tbaa !0
  %cmp9 = icmp slt i32 %0, %1
  %rbuf = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  br i1 %cmp9, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load double** %rbuf, align 8, !tbaa !3
  %3 = sext i32 %0 to i64
  %scevgep = getelementptr double* %2, i64 %3
  %scevgep11 = bitcast double* %scevgep to i8*
  %4 = add i32 %0, 1
  %5 = icmp sgt i32 %1, %4
  %smax = select i1 %5, i32 %1, i32 %4
  %6 = add i32 %smax, -1
  %7 = sub i32 %6, %0
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = add i64 %9, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep11, i8 0, i64 %10, i32 8, i1 false)
  br label %for.end

for.end:                                          ; preds = %entry, %for.body.lr.ph
  %11 = load double** %rbuf, align 8, !tbaa !3
  tail call void @gmx_sumd(i32 %1, double* %11, %struct.t_commrec* %cr) #3
  ret void
}

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize uwtable
define void @extract_binr(%struct.t_bin* nocapture %b, i32 %index, i32 %nr, float* nocapture %r) #0 {
entry:
  %rbuf1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %0 = load double** %rbuf1, align 8, !tbaa !3
  %idx.ext = sext i32 %index to i64
  %cmp7 = icmp sgt i32 %nr, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %1 = load double* %arrayidx, align 8, !tbaa !5
  %conv = fptrunc double %1 to float
  %arrayidx3 = getelementptr inbounds float* %r, i64 %indvars.iv
  store float %conv, float* %arrayidx3, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @extract_bind(%struct.t_bin* nocapture %b, i32 %index, i32 %nr, double* nocapture %r) #0 {
entry:
  %rbuf1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %0 = load double** %rbuf1, align 8, !tbaa !3
  %idx.ext = sext i32 %index to i64
  %cmp7 = icmp sgt i32 %nr, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum
  %1 = load double* %arrayidx, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds double* %r, i64 %indvars.iv
  store double %1, double* %arrayidx3, align 8, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
