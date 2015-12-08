; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/aligneval.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @ComparePairAlignments(i8* nocapture %known1, i8* nocapture %known2, i8* nocapture %calc1, i8* nocapture %calc2) #0 {
entry:
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  call fastcc void @make_alilist(i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #7
  call fastcc void @make_alilist(i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #7
  call fastcc void @make_alilist(i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #7
  call fastcc void @make_alilist(i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #7
  %0 = load i32** %klist1, align 8, !tbaa !0
  %1 = load i32** %klist2, align 8, !tbaa !0
  %2 = load i32** %tlist1, align 8, !tbaa !0
  %3 = load i32** %tlist2, align 8, !tbaa !0
  %4 = load i32* %len1, align 4, !tbaa !3
  %5 = load i32* %len2, align 4, !tbaa !3
  call fastcc void @compare_lists(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, float* %score) #7
  %6 = bitcast i32* %0 to i8*
  call void @free(i8* %6) #8
  %7 = bitcast i32* %1 to i8*
  call void @free(i8* %7) #8
  %8 = bitcast i32* %2 to i8*
  call void @free(i8* %8) #8
  %9 = bitcast i32* %3 to i8*
  call void @free(i8* %9) #8
  %10 = load float* %score, align 4, !tbaa !4
  ret float %10
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_alilist(i8* nocapture %s1, i8* nocapture %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s1) #9
  %mul = shl i64 %call, 2
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 179, i64 %mul) #8
  %0 = bitcast i8* %call1 to i32*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc ], [ 0, %entry ]
  %r2.0 = phi i32 [ %r2.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %s1, i64 %indvars.iv
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %1, label %if.then [
    i8 0, label %for.end
    i8 32, label %if.end
    i8 46, label %if.end
    i8 95, label %if.end
    i8 45, label %if.end
    i8 126, label %if.end
  ]

if.then:                                          ; preds = %for.cond
  %arrayidx32 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %2 = load i8* %arrayidx32, align 1, !tbaa !1
  switch i8 %2, label %lor.lhs.false54 [
    i8 32, label %cond.end
    i8 46, label %cond.end
    i8 95, label %cond.end
    i8 45, label %cond.end
  ]

lor.lhs.false54:                                  ; preds = %if.then
  %cmp58 = icmp eq i8 %2, 126
  %. = select i1 %cmp58, i32 -1, i32 %r2.0
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.then, %if.then, %if.then, %lor.lhs.false54
  %cond = phi i32 [ -1, %if.then ], [ %., %lor.lhs.false54 ], [ -1, %if.then ], [ -1, %if.then ], [ -1, %if.then ]
  %idxprom60 = sext i32 %r1.0 to i64
  %arrayidx61 = getelementptr inbounds i32* %0, i64 %idxprom60
  store i32 %cond, i32* %arrayidx61, align 4, !tbaa !3
  %inc = add nsw i32 %r1.0, 1
  br label %if.end

if.end:                                           ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %cond.end
  %r1.1 = phi i32 [ %inc, %cond.end ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ]
  %arrayidx63 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %3 = load i8* %arrayidx63, align 1, !tbaa !1
  switch i8 %3, label %if.then91 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then91:                                        ; preds = %if.end
  %inc92 = add nsw i32 %r2.0, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.then91
  %r2.1 = phi i32 [ %r2.0, %if.end ], [ %inc92, %if.then91 ], [ %r2.0, %if.end ], [ %r2.0, %if.end ], [ %r2.0, %if.end ], [ %r2.0, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 %r1.0, i32* %ret_listlen, align 4, !tbaa !3
  store i32* %0, i32** %ret_s1_list, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compare_lists(i32* nocapture %k1, i32* nocapture %k2, i32* nocapture %t1, i32* nocapture %t2, i32 %len1, i32 %len2, float* nocapture %ret_sc) #0 {
entry:
  %cmp6 = icmp sgt i32 %len1, 0
  br i1 %cmp6, label %for.body, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc, %entry
  %tot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %conv1, %for.inc ]
  %id.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %id.1, %for.inc ]
  %cmp101 = icmp sgt i32 %len2, 0
  br i1 %cmp101, label %for.body12, label %for.end29

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc ], [ 0, %entry ]
  %tot.08 = phi float [ %conv1, %for.inc ], [ 0.000000e+00, %entry ]
  %id.07 = phi float [ %id.1, %for.inc ], [ 0.000000e+00, %entry ]
  %conv1 = fadd float %tot.08, 1.000000e+00
  %arrayidx = getelementptr inbounds i32* %t1, i64 %indvars.iv12
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds i32* %k1, i64 %indvars.iv12
  %1 = load i32* %arrayidx3, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %0, %1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv8 = fadd float %id.07, 1.000000e+00
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %id.1 = phi float [ %conv8, %if.then ], [ %id.07, %for.body ]
  %indvars.iv.next13 = add i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %len1
  br i1 %exitcond15, label %for.cond9.preheader, label %for.body

for.body12:                                       ; preds = %for.cond9.preheader, %for.inc27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 0, %for.cond9.preheader ]
  %tot.13 = phi float [ %conv15, %for.inc27 ], [ %tot.0.lcssa, %for.cond9.preheader ]
  %id.22 = phi float [ %id.3, %for.inc27 ], [ %id.0.lcssa, %for.cond9.preheader ]
  %conv15 = fadd float %tot.13, 1.000000e+00
  %arrayidx17 = getelementptr inbounds i32* %k2, i64 %indvars.iv
  %2 = load i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %t2, i64 %indvars.iv
  %3 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %2, %3
  br i1 %cmp20, label %if.then22, label %for.inc27

if.then22:                                        ; preds = %for.body12
  %conv25 = fadd float %id.22, 1.000000e+00
  br label %for.inc27

for.inc27:                                        ; preds = %for.body12, %if.then22
  %id.3 = phi float [ %conv25, %if.then22 ], [ %id.22, %for.body12 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len2
  br i1 %exitcond, label %for.end29, label %for.body12

for.end29:                                        ; preds = %for.inc27, %for.cond9.preheader
  %tot.1.lcssa = phi float [ %tot.0.lcssa, %for.cond9.preheader ], [ %conv15, %for.inc27 ]
  %id.2.lcssa = phi float [ %id.0.lcssa, %for.cond9.preheader ], [ %id.3, %for.inc27 ]
  %div = fdiv float %id.2.lcssa, %tot.1.lcssa
  store float %div, float* %ret_sc, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define float @CompareRefPairAlignments(i32* nocapture %ref, i8* nocapture %known1, i8* nocapture %known2, i8* nocapture %calc1, i8* nocapture %calc2) #0 {
entry:
  %klist1 = alloca i32*, align 8
  %klist2 = alloca i32*, align 8
  %tlist1 = alloca i32*, align 8
  %tlist2 = alloca i32*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %score = alloca float, align 4
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %calc1, i8* %calc2, i32** %tlist1, i32* %len1) #7
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %calc2, i8* %calc1, i32** %tlist2, i32* %len2) #7
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known1, i8* %known1, i8* %known2, i32** %klist1, i32* %len1) #7
  call fastcc void @make_ref_alilist(i32* %ref, i8* %known2, i8* %known2, i8* %known1, i32** %klist2, i32* %len2) #7
  %0 = load i32** %klist1, align 8, !tbaa !0
  %1 = load i32** %klist2, align 8, !tbaa !0
  %2 = load i32** %tlist1, align 8, !tbaa !0
  %3 = load i32** %tlist2, align 8, !tbaa !0
  %4 = load i32* %len1, align 4, !tbaa !3
  %5 = load i32* %len2, align 4, !tbaa !3
  call fastcc void @compare_lists(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, float* %score) #7
  %6 = bitcast i32* %0 to i8*
  call void @free(i8* %6) #8
  %7 = bitcast i32* %1 to i8*
  call void @free(i8* %7) #8
  %8 = bitcast i32* %2 to i8*
  call void @free(i8* %8) #8
  %9 = bitcast i32* %3 to i8*
  call void @free(i8* %9) #8
  %10 = load float* %score, align 4, !tbaa !4
  ret float %10
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @make_ref_alilist(i32* nocapture %ref, i8* nocapture %k1, i8* nocapture %s1, i8* nocapture %s2, i32** nocapture %ret_s1_list, i32* nocapture %ret_listlen) #0 {
entry:
  %call = tail call i64 @strlen(i8* %s1) #9
  %mul = shl i64 %call, 2
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 236, i64 %mul) #8
  %call2 = tail call i64 @strlen(i8* %s1) #9
  %mul3 = shl i64 %call2, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 237, i64 %mul3) #8
  %0 = bitcast i8* %call4 to i32*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc ], [ 0, %entry ]
  %r1.0 = phi i32 [ %r1.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8* %k1, i64 %indvars.iv1
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %1, label %if.then [
    i8 0, label %for.cond39.preheader
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

for.cond39.preheader:                             ; preds = %for.cond
  %2 = bitcast i8* %call1 to i32*
  br label %for.cond39

if.then:                                          ; preds = %for.cond
  %arrayidx35 = getelementptr inbounds i32* %ref, i64 %indvars.iv1
  %3 = load i32* %arrayidx35, align 4, !tbaa !3
  %tobool = icmp ne i32 %3, 0
  %cond = zext i1 %tobool to i32
  %idxprom36 = sext i32 %r1.0 to i64
  %arrayidx37 = getelementptr inbounds i32* %0, i64 %idxprom36
  store i32 %cond, i32* %arrayidx37, align 4, !tbaa !3
  %inc = add nsw i32 %r1.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %if.then
  %r1.1 = phi i32 [ %inc, %if.then ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ], [ %r1.0, %for.cond ]
  %indvars.iv.next2 = add i64 %indvars.iv1, 1
  br label %for.cond

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc177
  %indvars.iv = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next, %for.inc177 ]
  %r1.2 = phi i32 [ 0, %for.cond39.preheader ], [ %r1.3, %for.inc177 ]
  %r2.0 = phi i32 [ 0, %for.cond39.preheader ], [ %r2.1, %for.inc177 ]
  %lpos.0 = phi i32 [ 0, %for.cond39.preheader ], [ %lpos.1, %for.inc177 ]
  %arrayidx41 = getelementptr inbounds i8* %s1, i64 %indvars.iv
  %4 = load i8* %arrayidx41, align 1, !tbaa !1
  switch i8 %4, label %land.lhs.true [
    i8 0, label %for.end179
    i8 32, label %if.end112
    i8 46, label %if.end112
    i8 95, label %if.end112
    i8 45, label %if.end112
    i8 126, label %if.end112
  ]

land.lhs.true:                                    ; preds = %for.cond39
  %idxprom75 = sext i32 %r1.2 to i64
  %arrayidx76 = getelementptr inbounds i32* %0, i64 %idxprom75
  %5 = load i32* %arrayidx76, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %5, 0
  br i1 %tobool77, label %if.end112, label %if.then78

if.then78:                                        ; preds = %land.lhs.true
  %arrayidx80 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %6 = load i8* %arrayidx80, align 1, !tbaa !1
  switch i8 %6, label %lor.lhs.false102 [
    i8 32, label %cond.end
    i8 46, label %cond.end
    i8 95, label %cond.end
    i8 45, label %cond.end
  ]

lor.lhs.false102:                                 ; preds = %if.then78
  %cmp106 = icmp eq i8 %6, 126
  %. = select i1 %cmp106, i32 -1, i32 %r2.0
  br label %cond.end

cond.end:                                         ; preds = %if.then78, %if.then78, %if.then78, %if.then78, %lor.lhs.false102
  %cond108 = phi i32 [ -1, %if.then78 ], [ %., %lor.lhs.false102 ], [ -1, %if.then78 ], [ -1, %if.then78 ], [ -1, %if.then78 ]
  %idxprom109 = sext i32 %lpos.0 to i64
  %arrayidx110 = getelementptr inbounds i32* %2, i64 %idxprom109
  store i32 %cond108, i32* %arrayidx110, align 4, !tbaa !3
  %inc111 = add nsw i32 %lpos.0, 1
  %.pr.pre = load i8* %arrayidx41, align 1, !tbaa !1
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true, %cond.end, %for.cond39, %for.cond39, %for.cond39, %for.cond39, %for.cond39
  %7 = phi i8 [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %for.cond39 ], [ %4, %land.lhs.true ], [ %.pr.pre, %cond.end ]
  %lpos.1 = phi i32 [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %for.cond39 ], [ %lpos.0, %land.lhs.true ], [ %inc111, %cond.end ]
  switch i8 %7, label %if.then142 [
    i8 32, label %if.end144
    i8 46, label %if.end144
    i8 95, label %if.end144
    i8 45, label %if.end144
    i8 126, label %if.end144
  ]

if.then142:                                       ; preds = %if.end112
  %inc143 = add nsw i32 %r1.2, 1
  br label %if.end144

if.end144:                                        ; preds = %if.end112, %if.end112, %if.end112, %if.end112, %if.end112, %if.then142
  %r1.3 = phi i32 [ %r1.2, %if.end112 ], [ %inc143, %if.then142 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ], [ %r1.2, %if.end112 ]
  %arrayidx146 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %8 = load i8* %arrayidx146, align 1, !tbaa !1
  switch i8 %8, label %if.then174 [
    i8 32, label %for.inc177
    i8 46, label %for.inc177
    i8 95, label %for.inc177
    i8 45, label %for.inc177
    i8 126, label %for.inc177
  ]

if.then174:                                       ; preds = %if.end144
  %inc175 = add nsw i32 %r2.0, 1
  br label %for.inc177

for.inc177:                                       ; preds = %if.end144, %if.end144, %if.end144, %if.end144, %if.end144, %if.then174
  %r2.1 = phi i32 [ %r2.0, %if.end144 ], [ %inc175, %if.then174 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ], [ %r2.0, %if.end144 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.cond39

for.end179:                                       ; preds = %for.cond39
  tail call void @free(i8* %call4) #8
  store i32 %lpos.0, i32* %ret_listlen, align 4, !tbaa !3
  store i32* %2, i32** %ret_s1_list, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @CompareMultAlignments(i8** nocapture %kseqs, i8** nocapture %tseqs, i32 %N) #0 {
entry:
  %cmp41 = icmp sgt i32 %N, 0
  br i1 %cmp41, label %for.body, label %for.end15

for.cond.loopexit:                                ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp237, label %for.body, label %for.end15

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %tot_score.043 = phi float [ %add12, %for.cond.loopexit ], [ 0.000000e+00, %entry ]
  %i.042 = phi i32 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv.next49 = add i64 %indvars.iv48, 1
  %add = add nsw i32 %i.042, 1
  %0 = trunc i64 %indvars.iv.next49 to i32
  %cmp237 = icmp slt i32 %0, %N
  br i1 %cmp237, label %for.body3.lr.ph, label %for.end15

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i8** %kseqs, i64 %indvars.iv48
  %arrayidx7 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv48
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %if.end
  %indvars.iv45 = phi i64 [ %indvars.iv, %for.body3.lr.ph ], [ %indvars.iv.next46, %if.end ]
  %tot_score.139 = phi float [ %tot_score.043, %for.body3.lr.ph ], [ %add12, %if.end ]
  %j.038 = phi i32 [ %add, %for.body3.lr.ph ], [ %inc, %if.end ]
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv45
  %2 = load i8** %arrayidx5, align 8, !tbaa !0
  %3 = load i8** %arrayidx7, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv45
  %4 = load i8** %arrayidx9, align 8, !tbaa !0
  %call = tail call float @ComparePairAlignments(i8* %1, i8* %2, i8* %3, i8* %4) #7
  %cmp10 = fcmp olt float %call, 0.000000e+00
  br i1 %cmp10, label %return, label %if.end

if.end:                                           ; preds = %for.body3
  %add12 = fadd float %tot_score.139, %call
  %inc = add nsw i32 %j.038, 1
  %cmp2 = icmp slt i32 %inc, %N
  %indvars.iv.next46 = add i64 %indvars.iv45, 1
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit

for.end15:                                        ; preds = %for.cond.loopexit, %for.body, %entry
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.cond.loopexit ], [ %tot_score.043, %for.body ]
  %conv16 = fpext float %tot_score.0.lcssa to double
  %mul = fmul double %conv16, 2.000000e+00
  %conv17 = sitofp i32 %N to float
  %conv18 = fpext float %conv17 to double
  %sub = fadd double %conv18, -1.000000e+00
  %mul21 = fmul double %conv18, %sub
  %div = fdiv double %mul, %mul21
  %conv22 = fptrunc double %div to float
  br label %return

return:                                           ; preds = %for.body3, %for.end15
  %retval.0 = phi float [ %conv22, %for.end15 ], [ -1.000000e+00, %for.body3 ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @CompareRefMultAlignments(i32* nocapture %ref, i8** nocapture %kseqs, i8** nocapture %tseqs, i32 %N) #0 {
entry:
  %cmp42 = icmp sgt i32 %N, 0
  br i1 %cmp42, label %for.body, label %for.end15

for.cond.loopexit:                                ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp238, label %for.body, label %for.end15

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.loopexit ], [ 1, %entry ]
  %tot_score.044 = phi float [ %add12, %for.cond.loopexit ], [ 0.000000e+00, %entry ]
  %i.043 = phi i32 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv.next50 = add i64 %indvars.iv49, 1
  %add = add nsw i32 %i.043, 1
  %0 = trunc i64 %indvars.iv.next50 to i32
  %cmp238 = icmp slt i32 %0, %N
  br i1 %cmp238, label %for.body3.lr.ph, label %for.end15

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i8** %kseqs, i64 %indvars.iv49
  %arrayidx7 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv49
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %if.end
  %indvars.iv46 = phi i64 [ %indvars.iv, %for.body3.lr.ph ], [ %indvars.iv.next47, %if.end ]
  %tot_score.140 = phi float [ %tot_score.044, %for.body3.lr.ph ], [ %add12, %if.end ]
  %j.039 = phi i32 [ %add, %for.body3.lr.ph ], [ %inc, %if.end ]
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i8** %kseqs, i64 %indvars.iv46
  %2 = load i8** %arrayidx5, align 8, !tbaa !0
  %3 = load i8** %arrayidx7, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i8** %tseqs, i64 %indvars.iv46
  %4 = load i8** %arrayidx9, align 8, !tbaa !0
  %call = tail call float @CompareRefPairAlignments(i32* %ref, i8* %1, i8* %2, i8* %3, i8* %4) #7
  %cmp10 = fcmp olt float %call, 0.000000e+00
  br i1 %cmp10, label %return, label %if.end

if.end:                                           ; preds = %for.body3
  %add12 = fadd float %tot_score.140, %call
  %inc = add nsw i32 %j.039, 1
  %cmp2 = icmp slt i32 %inc, %N
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  br i1 %cmp2, label %for.body3, label %for.cond.loopexit

for.end15:                                        ; preds = %for.cond.loopexit, %for.body, %entry
  %tot_score.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add12, %for.cond.loopexit ], [ %tot_score.044, %for.body ]
  %conv16 = fpext float %tot_score.0.lcssa to double
  %mul = fmul double %conv16, 2.000000e+00
  %conv17 = sitofp i32 %N to float
  %conv18 = fpext float %conv17 to double
  %sub = fadd double %conv18, -1.000000e+00
  %mul21 = fmul double %conv18, %sub
  %div = fdiv double %mul, %mul21
  %conv22 = fptrunc double %div to float
  br label %return

return:                                           ; preds = %for.body3, %for.end15
  %retval.0 = phi float [ %conv22, %for.end15 ], [ -1.000000e+00, %for.body3 ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define float @PairwiseIdentity(i8* nocapture %s1, i8* nocapture %s2) #2 {
entry:
  %0 = load i8* %s1, align 1, !tbaa !1
  %cmp121 = icmp eq i8 %0, 0
  br i1 %cmp121, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = phi i8 [ %3, %for.inc ], [ %0, %entry ]
  %len2.0124 = phi i32 [ %len2.1, %for.inc ], [ 0, %entry ]
  %len1.0123 = phi i32 [ %len1.1, %for.inc ], [ 0, %entry ]
  %idents.0122 = phi i32 [ %idents.1, %for.inc ], [ 0, %entry ]
  %arrayidx3 = getelementptr inbounds i8* %s2, i64 %indvars.iv
  %2 = load i8* %arrayidx3, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %2, 0
  br i1 %cmp5, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  switch i8 %1, label %if.then [
    i8 32, label %if.end45
    i8 46, label %if.end45
    i8 95, label %if.end45
    i8 45, label %if.end45
    i8 126, label %if.end45
  ]

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %len1.0123, 1
  %cmp41 = icmp eq i8 %1, %2
  %inc44 = zext i1 %cmp41 to i32
  %inc44.idents.0 = add nsw i32 %inc44, %idents.0122
  br label %if.end45

if.end45:                                         ; preds = %if.then, %for.body, %for.body, %for.body, %for.body, %for.body
  %idents.1 = phi i32 [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %idents.0122, %for.body ], [ %inc44.idents.0, %if.then ]
  %len1.1 = phi i32 [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %len1.0123, %for.body ], [ %inc, %if.then ]
  switch i8 %2, label %if.then75 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then75:                                        ; preds = %if.end45
  %inc76 = add nsw i32 %len2.0124, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %if.end45, %if.end45, %if.end45, %if.end45, %if.then75
  %len2.1 = phi i32 [ %len2.0124, %if.end45 ], [ %inc76, %if.then75 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ], [ %len2.0124, %if.end45 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8* %s1, i64 %indvars.iv.next
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %land.rhs, %entry
  %len2.0.lcssa = phi i32 [ 0, %entry ], [ %len2.0124, %land.rhs ], [ %len2.1, %for.inc ]
  %len1.0.lcssa = phi i32 [ 0, %entry ], [ %len1.0123, %land.rhs ], [ %len1.1, %for.inc ]
  %idents.0.lcssa = phi i32 [ 0, %entry ], [ %idents.0122, %land.rhs ], [ %idents.1, %for.inc ]
  %cmp79 = icmp slt i32 %len2.0.lcssa, %len1.0.lcssa
  %len2.0.len1.0 = select i1 %cmp79, i32 %len2.0.lcssa, i32 %len1.0.lcssa
  %cmp83 = icmp eq i32 %len2.0.len1.0, 0
  br i1 %cmp83, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.end
  %conv85 = sitofp i32 %idents.0.lcssa to float
  %conv86 = sitofp i32 %len2.0.len1.0 to float
  %div = fdiv float %conv85, %conv86
  br label %cond.end

cond.end:                                         ; preds = %for.end, %cond.false
  %cond = phi float [ %div, %cond.false ], [ 0.000000e+00, %for.end ]
  ret float %cond
}

; Function Attrs: nounwind optsize uwtable
define float @AlignmentIdentityBySampling(i8** nocapture %aseq, i32 %L, i32 %N, i32 %nsample) #0 {
entry:
  %cmp = icmp slt i32 %N, 2
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp121 = icmp sgt i32 %nsample, 0
  br i1 %cmp121, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = sitofp i32 %N to double
  br label %for.body

for.body:                                         ; preds = %do.end, %for.body.lr.ph
  %sum.023 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %do.end ]
  %x.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end ]
  %call = tail call double @sre_random() #8
  %mul = fmul double %conv, %call
  %conv2 = fptosi double %mul to i32
  br label %do.body

do.body:                                          ; preds = %do.body, %for.body
  %call3 = tail call double @sre_random() #8
  %mul5 = fmul double %conv, %call3
  %conv6 = fptosi double %mul5 to i32
  %cmp7 = icmp eq i32 %conv6, %conv2
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %idxprom = sext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %idxprom
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %idxprom9 = sext i32 %conv6 to i64
  %arrayidx10 = getelementptr inbounds i8** %aseq, i64 %idxprom9
  %1 = load i8** %arrayidx10, align 8, !tbaa !0
  %call11 = tail call float @PairwiseIdentity(i8* %0, i8* %1) #7
  %add = fadd float %sum.023, %call11
  %inc = add nsw i32 %x.022, 1
  %exitcond = icmp eq i32 %inc, %nsample
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %do.end, %for.cond.preheader
  %sum.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %add, %do.end ]
  %conv12 = sitofp i32 %nsample to float
  %div = fdiv float %sum.0.lcssa, %conv12
  br label %return

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi float [ %div, %for.end ], [ 1.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: optsize
declare double @sre_random() #3

; Function Attrs: nounwind optsize uwtable
define i8* @MajorityRuleConsensus(i8** nocapture %aseq, i32 %nseq, i32 %alen) #0 {
entry:
  %count = alloca [27 x i32], align 16
  %0 = bitcast [27 x i32]* %count to i8*
  call void @llvm.lifetime.start(i64 108, i8* %0) #4
  %add = add nsw i32 %alen, 1
  %conv = sext i32 %add to i64
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 485, i64 %conv) #8
  %cmp91 = icmp sgt i32 %alen, 0
  br i1 %cmp91, label %for.cond2.preheader.lr.ph, label %for.end63

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %cmp786 = icmp sgt i32 %nseq, 0
  %arrayidx33 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 26
  %conv35 = sitofp i32 %nseq to float
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc61, %for.cond2.preheader.lr.ph
  %indvars.iv98 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next99, %for.inc61 ]
  %spos.092 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %spos.1, %for.inc61 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 108, i32 16, i1 false)
  br i1 %cmp786, label %for.body9.lr.ph, label %for.end32

for.body9.lr.ph:                                  ; preds = %for.cond2.preheader
  %call16 = call i16** @__ctype_b_loc() #10
  br label %for.body9

for.body9:                                        ; preds = %for.inc30, %for.body9.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc30 ]
  %arrayidx12 = getelementptr inbounds i8** %aseq, i64 %indvars.iv
  %1 = load i8** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i8* %1, i64 %indvars.iv98
  %2 = load i8* %arrayidx13, align 1, !tbaa !1
  %idxprom15 = sext i8 %2 to i64
  %3 = load i16** %call16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i16* %3, i64 %idxprom15
  %4 = load i16* %arrayidx17, align 2, !tbaa !5
  %and = and i16 %4, 1024
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body9
  %conv14 = sext i8 %2 to i32
  %call24 = call i32 @toupper(i32 %conv14) #8
  %sub = add nsw i32 %call24, -65
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %idxprom25
  %5 = load i32* %arrayidx26, align 4, !tbaa !3
  %inc27 = add nsw i32 %5, 1
  store i32 %inc27, i32* %arrayidx26, align 4, !tbaa !3
  br label %for.inc30

if.else:                                          ; preds = %for.body9
  %6 = load i32* %arrayidx33, align 8, !tbaa !3
  %inc29 = add nsw i32 %6, 1
  store i32 %inc29, i32* %arrayidx33, align 8, !tbaa !3
  br label %for.inc30

for.inc30:                                        ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.cond6.for.end32_crit_edge, label %for.body9

for.cond6.for.end32_crit_edge:                    ; preds = %for.inc30
  %.pre = load i32* %arrayidx33, align 8, !tbaa !3
  %phitmp = sitofp i32 %.pre to float
  br label %for.end32

for.end32:                                        ; preds = %for.cond6.for.end32_crit_edge, %for.cond2.preheader
  %7 = phi float [ %phitmp, %for.cond6.for.end32_crit_edge ], [ 0.000000e+00, %for.cond2.preheader ]
  %div = fdiv float %7, %conv35
  %cmp37 = fcmp ugt float %div, 5.000000e-01
  br i1 %cmp37, label %for.inc61, label %for.body43

for.body43:                                       ; preds = %for.end32, %for.body43
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body43 ], [ 0, %for.end32 ]
  %bestx.090 = phi i32 [ %x.1.bestx.0, %for.body43 ], [ -1, %for.end32 ]
  %max.089 = phi i32 [ %.max.0, %for.body43 ], [ -1, %for.end32 ]
  %arrayidx45 = getelementptr inbounds [27 x i32]* %count, i64 0, i64 %indvars.iv94
  %8 = load i32* %arrayidx45, align 4, !tbaa !3
  %cmp46 = icmp sgt i32 %8, %max.089
  %.max.0 = select i1 %cmp46, i32 %8, i32 %max.089
  %9 = trunc i64 %indvars.iv94 to i32
  %x.1.bestx.0 = select i1 %cmp46, i32 %9, i32 %bestx.090
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, 26
  br i1 %exitcond97, label %for.end54, label %for.body43

for.end54:                                        ; preds = %for.body43
  %add55 = add nsw i32 %x.1.bestx.0, 65
  %conv56 = trunc i32 %add55 to i8
  %inc57 = add nsw i32 %spos.092, 1
  %idxprom58 = sext i32 %spos.092 to i64
  %arrayidx59 = getelementptr inbounds i8* %call, i64 %idxprom58
  store i8 %conv56, i8* %arrayidx59, align 1, !tbaa !1
  br label %for.inc61

for.inc61:                                        ; preds = %for.end32, %for.end54
  %spos.1 = phi i32 [ %inc57, %for.end54 ], [ %spos.092, %for.end32 ]
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %lftr.wideiv100 = trunc i64 %indvars.iv.next99 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %alen
  br i1 %exitcond101, label %for.end63, label %for.cond2.preheader

for.end63:                                        ; preds = %for.inc61, %entry
  %spos.0.lcssa = phi i32 [ 0, %entry ], [ %spos.1, %for.inc61 ]
  %idxprom64 = sext i32 %spos.0.lcssa to i64
  %arrayidx65 = getelementptr inbounds i8* %call, i64 %idxprom64
  store i8 0, i8* %arrayidx65, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 108, i8* %0) #4
  ret i8* %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
