; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [49 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"Total keys:        %d\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"Hash table size:   %d\0A\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"Average occupancy: %.1f\0A\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"Unoccupied slots:  %d\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Most in one slot:  %d\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Least in one slot: %d\0A\00", align 1
@.str7 = private unnamed_addr constant [30 x i8] c"bad primelevel in gki_alloc()\00", align 1
@gki_primes = internal unnamed_addr constant [4 x i32] [i32 101, i32 1009, i32 10007, i32 100003], align 16

; Function Attrs: nounwind optsize uwtable
define %struct.GKI* @GKIInit() #0 {
entry:
  %call = tail call fastcc %struct.GKI* @gki_alloc(i32 0) #5
  ret %struct.GKI* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.GKI* @gki_alloc(i32 %primelevel) #0 {
entry:
  %0 = icmp ugt i32 %primelevel, 3
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 294, i64 24) #6
  %1 = bitcast i8* %call to %struct.GKI*
  %primelevel2 = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %primelevel2 to i32*
  store i32 %primelevel, i32* %2, align 4, !tbaa !0
  %idxprom = sext i32 %primelevel to i64
  %arrayidx = getelementptr inbounds [4 x i32]* @gki_primes, i64 0, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %nhash = getelementptr inbounds i8* %call, i64 12
  %4 = bitcast i8* %nhash to i32*
  store i32 %3, i32* %4, align 4, !tbaa !0
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 24
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 298, i64 %mul) #6
  %5 = bitcast i8* %call5 to %struct.gki_elem**
  %table = bitcast i8* %call to %struct.gki_elem***
  store %struct.gki_elem** %5, %struct.gki_elem*** %table, align 8, !tbaa !3
  %6 = load i32* %4, align 4, !tbaa !0
  %cmp724 = icmp sgt i32 %6, 0
  br i1 %cmp724, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body.for.body_crit_edge
  %7 = phi %struct.gki_elem** [ %.pre, %for.body.for.body_crit_edge ], [ %5, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end ]
  %arrayidx11 = getelementptr inbounds %struct.gki_elem** %7, i64 %indvars.iv
  store %struct.gki_elem* null, %struct.gki_elem** %arrayidx11, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %8, %6
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.gki_elem*** %table, align 8, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %nkeys = getelementptr inbounds i8* %call, i64 16
  %9 = bitcast i8* %nkeys to i32*
  store i32 0, i32* %9, align 4, !tbaa !0
  ret %struct.GKI* %1
}

; Function Attrs: nounwind optsize uwtable
define void @GKIFree(%struct.GKI* %hash) #0 {
entry:
  %cmp = icmp eq %struct.GKI* %hash, null
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2
  %0 = load i32* %nhash, align 4, !tbaa !0
  %cmp140 = icmp sgt i32 %0, 0
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0
  %.pre = load %struct.gki_elem*** %table, align 8, !tbaa !3
  br i1 %cmp140, label %while.cond.preheader, label %for.end

while.cond.preheader:                             ; preds = %for.cond.preheader, %for.inc
  %1 = phi i32 [ %14, %for.inc ], [ %0, %for.cond.preheader ]
  %2 = phi %struct.gki_elem** [ %15, %for.inc ], [ %.pre, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx38 = getelementptr inbounds %struct.gki_elem** %2, i64 %indvars.iv
  %3 = load %struct.gki_elem** %arrayidx38, align 8, !tbaa !3
  %cmp239 = icmp eq %struct.gki_elem* %3, null
  br i1 %cmp239, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end15
  %4 = phi %struct.gki_elem** [ %12, %if.end15 ], [ %2, %while.cond.preheader ]
  %5 = phi %struct.gki_elem* [ %13, %if.end15 ], [ %3, %while.cond.preheader ]
  %nxt = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 2
  %6 = load %struct.gki_elem** %nxt, align 8, !tbaa !3
  %key = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 0
  %7 = load i8** %key, align 8, !tbaa !3
  %cmp9 = icmp eq i8* %7, null
  br i1 %cmp9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %while.body
  tail call void @free(i8* %7) #6
  %.pre43 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %while.body, %if.then10
  %8 = phi %struct.gki_elem** [ %4, %while.body ], [ %.pre43, %if.then10 ]
  %arrayidx18 = getelementptr inbounds %struct.gki_elem** %8, i64 %indvars.iv
  %9 = load %struct.gki_elem** %arrayidx18, align 8, !tbaa !3
  %10 = bitcast %struct.gki_elem* %9 to i8*
  tail call void @free(i8* %10) #6
  %11 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds %struct.gki_elem** %11, i64 %indvars.iv
  store %struct.gki_elem* %6, %struct.gki_elem** %arrayidx21, align 8, !tbaa !3
  %12 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.gki_elem** %12, i64 %indvars.iv
  %13 = load %struct.gki_elem** %arrayidx, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.gki_elem* %13, null
  br i1 %cmp2, label %while.cond.for.inc_crit_edge, label %while.body

while.cond.for.inc_crit_edge:                     ; preds = %if.end15
  %.pre42 = load i32* %nhash, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %while.cond.for.inc_crit_edge, %while.cond.preheader
  %14 = phi i32 [ %.pre42, %while.cond.for.inc_crit_edge ], [ %1, %while.cond.preheader ]
  %15 = phi %struct.gki_elem** [ %12, %while.cond.for.inc_crit_edge ], [ %2, %while.cond.preheader ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %16, %14
  br i1 %cmp1, label %while.cond.preheader, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.inc
  %17 = phi %struct.gki_elem** [ %15, %for.inc ], [ %.pre, %for.cond.preheader ]
  %18 = bitcast %struct.gki_elem** %17 to i8*
  tail call void @free(i8* %18) #6
  %19 = bitcast %struct.GKI* %hash to i8*
  tail call void @free(i8* %19) #6
  br label %return

return:                                           ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @GKIStoreKey(%struct.GKI* nocapture %hash, i8* nocapture %key) #0 {
entry:
  %call = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #5
  %idxprom = sext i32 %call to i64
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0
  %0 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.gki_elem** %0, i64 %idxprom
  %1 = load %struct.gki_elem** %arrayidx, align 8, !tbaa !3
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 189, i64 24) #6
  %2 = bitcast i8* %call1 to %struct.gki_elem*
  %3 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.gki_elem** %3, i64 %idxprom
  store %struct.gki_elem* %2, %struct.gki_elem** %arrayidx4, align 8, !tbaa !3
  %call5 = tail call i64 @strlen(i8* %key) #7
  %add = add i64 %call5, 1
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 190, i64 %add) #6
  %4 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.gki_elem** %4, i64 %idxprom
  %5 = load %struct.gki_elem** %arrayidx9, align 8, !tbaa !3
  %key10 = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 0
  store i8* %call6, i8** %key10, align 8, !tbaa !3
  %6 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds %struct.gki_elem** %6, i64 %idxprom
  %7 = load %struct.gki_elem** %arrayidx13, align 8, !tbaa !3
  %key14 = getelementptr inbounds %struct.gki_elem* %7, i64 0, i32 0
  %8 = load i8** %key14, align 8, !tbaa !3
  %call15 = tail call i8* @strcpy(i8* %8, i8* %key) #6
  %nkeys = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3
  %9 = load i32* %nkeys, align 4, !tbaa !0
  %10 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds %struct.gki_elem** %10, i64 %idxprom
  %11 = load %struct.gki_elem** %arrayidx18, align 8, !tbaa !3
  %idx = getelementptr inbounds %struct.gki_elem* %11, i64 0, i32 1
  store i32 %9, i32* %idx, align 4, !tbaa !0
  %nxt = getelementptr inbounds %struct.gki_elem* %11, i64 0, i32 2
  store %struct.gki_elem* %1, %struct.gki_elem** %nxt, align 8, !tbaa !3
  %12 = load i32* %nkeys, align 4, !tbaa !0
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %nkeys, align 4, !tbaa !0
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2
  %13 = load i32* %nhash, align 4, !tbaa !0
  %mul24 = mul nsw i32 %13, 3
  %cmp = icmp slt i32 %12, %mul24
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %primelevel = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 1
  %14 = load i32* %primelevel, align 4, !tbaa !0
  %cmp25 = icmp slt i32 %14, 3
  br i1 %cmp25, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %land.lhs.true
  %add.i = add nsw i32 %14, 1
  %call.i = tail call fastcc %struct.GKI* @gki_alloc(i32 %add.i) #6
  %15 = load i32* %nhash, align 4, !tbaa !0
  %cmp23.i = icmp sgt i32 %15, 0
  %table6.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 0
  br i1 %cmp23.i, label %for.body.i, label %gki_upsize.exit

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %indvars.iv.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %16 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds %struct.gki_elem** %16, i64 %indvars.iv.i
  %17 = load %struct.gki_elem** %arrayidx.i, align 8, !tbaa !3
  %cmp31.i = icmp eq %struct.gki_elem* %17, null
  br i1 %cmp31.i, label %for.inc.i, label %while.body.i

while.body.i:                                     ; preds = %for.body.i, %while.body.i
  %optr.02.i = phi %struct.gki_elem* [ %21, %while.body.i ], [ %17, %for.body.i ]
  %key.i = getelementptr inbounds %struct.gki_elem* %optr.02.i, i64 0, i32 0
  %18 = load i8** %key.i, align 8, !tbaa !3
  %call4.i = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %call.i, i8* %18) #6
  %idxprom5.i = sext i32 %call4.i to i64
  %19 = load %struct.gki_elem*** %table6.i, align 8, !tbaa !3
  %arrayidx7.i = getelementptr inbounds %struct.gki_elem** %19, i64 %idxprom5.i
  %20 = load %struct.gki_elem** %arrayidx7.i, align 8, !tbaa !3
  store %struct.gki_elem* %optr.02.i, %struct.gki_elem** %arrayidx7.i, align 8, !tbaa !3
  %nxt.i = getelementptr inbounds %struct.gki_elem* %optr.02.i, i64 0, i32 2
  %21 = load %struct.gki_elem** %nxt.i, align 8, !tbaa !3
  %22 = load %struct.gki_elem*** %table6.i, align 8, !tbaa !3
  %arrayidx13.i = getelementptr inbounds %struct.gki_elem** %22, i64 %idxprom5.i
  %23 = load %struct.gki_elem** %arrayidx13.i, align 8, !tbaa !3
  %nxt14.i = getelementptr inbounds %struct.gki_elem* %23, i64 0, i32 2
  store %struct.gki_elem* %20, %struct.gki_elem** %nxt14.i, align 8, !tbaa !3
  %cmp3.i = icmp eq %struct.gki_elem* %21, null
  br i1 %cmp3.i, label %for.inc.i, label %while.body.i

for.inc.i:                                        ; preds = %while.body.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %15
  br i1 %exitcond, label %gki_upsize.exit, label %for.body.i

gki_upsize.exit:                                  ; preds = %for.inc.i, %if.end.i
  %24 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %25 = bitcast %struct.gki_elem** %24 to i8*
  tail call void @free(i8* %25) #6
  %primelevel16.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 1
  %26 = load i32* %primelevel16.i, align 4, !tbaa !0
  store i32 %26, i32* %primelevel, align 4, !tbaa !0
  %nhash18.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 2
  %27 = load i32* %nhash18.i, align 4, !tbaa !0
  store i32 %27, i32* %nhash, align 4, !tbaa !0
  %28 = load %struct.gki_elem*** %table6.i, align 8, !tbaa !3
  store %struct.gki_elem** %28, %struct.gki_elem*** %table, align 8, !tbaa !3
  %29 = bitcast %struct.GKI* %call.i to i8*
  tail call void @free(i8* %29) #6
  %.pre = load i32* %nkeys, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %gki_upsize.exit, %land.lhs.true
  %30 = phi i32 [ %inc, %entry ], [ %.pre, %gki_upsize.exit ], [ %inc, %land.lhs.true ]
  %sub = add nsw i32 %30, -1
  ret i32 %sub
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @gki_hashvalue(%struct.GKI* nocapture %hash, i8* nocapture %key) #2 {
entry:
  %0 = load i8* %key, align 1, !tbaa !1
  %cmp20 = icmp eq i8 %0, 0
  br i1 %cmp20, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %nhash9 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %5, %if.end ]
  %val.022 = phi i32 [ 0, %for.body.lr.ph ], [ %rem10, %if.end ]
  %key.addr.021 = phi i8* [ %key, %for.body.lr.ph ], [ %incdec.ptr11, %if.end ]
  %conv = sext i8 %1 to i32
  %mul = shl nsw i32 %val.022, 7
  %add = add nsw i32 %conv, %mul
  %incdec.ptr = getelementptr inbounds i8* %key.addr.021, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %2, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32* %nhash9, align 4, !tbaa !0
  %rem = srem i32 %add, %3
  br label %for.end

if.end:                                           ; preds = %for.body
  %conv3 = sext i8 %2 to i32
  %mul6 = shl i32 %add, 7
  %add8 = add nsw i32 %conv3, %mul6
  %4 = load i32* %nhash9, align 4, !tbaa !0
  %rem10 = srem i32 %add8, %4
  %incdec.ptr11 = getelementptr inbounds i8* %key.addr.021, i64 2
  %5 = load i8* %incdec.ptr11, align 1, !tbaa !1
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %entry, %if.end, %if.then
  %val.1 = phi i32 [ %rem, %if.then ], [ 0, %entry ], [ %rem10, %if.end ]
  ret i32 %val.1
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @GKIKeyIndex(%struct.GKI* nocapture %hash, i8* nocapture %key) #2 {
entry:
  %call = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #5
  %idxprom = sext i32 %call to i64
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0
  %0 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.gki_elem** %0, i64 %idxprom
  %ptr.09 = load %struct.gki_elem** %arrayidx, align 8
  %cmp10 = icmp eq %struct.gki_elem* %ptr.09, null
  br i1 %cmp10, label %return, label %for.body

for.cond:                                         ; preds = %for.body
  %nxt = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 2
  %ptr.0 = load %struct.gki_elem** %nxt, align 8
  %cmp = icmp eq %struct.gki_elem* %ptr.0, null
  br i1 %cmp, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %ptr.011 = phi %struct.gki_elem* [ %ptr.0, %for.cond ], [ %ptr.09, %entry ]
  %key1 = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 0
  %1 = load i8** %key1, align 8, !tbaa !3
  %call2 = tail call i32 @strcmp(i8* %key, i8* %1) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %idx = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 1
  %2 = load i32* %idx, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %for.cond, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -1, %for.cond ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @GKIStatus(%struct.GKI* nocapture %hash) #0 {
entry:
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2
  %0 = load i32* %nhash, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %0, 0
  br i1 %cmp45, label %for.body.lr.ph, label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0
  %1 = load %struct.gki_elem*** %table, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %minkeys.049 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %nkeys.0.minkeys.0, %for.end ]
  %maxkeys.048 = phi i32 [ -1, %for.body.lr.ph ], [ %maxkeys.1, %for.end ]
  %nempty.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5.nempty.0, %for.end ]
  %arrayidx = getelementptr inbounds %struct.gki_elem** %1, i64 %indvars.iv
  %ptr.041 = load %struct.gki_elem** %arrayidx, align 8
  %cmp242 = icmp eq %struct.gki_elem* %ptr.041, null
  br i1 %cmp242, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %ptr.044 = phi %struct.gki_elem* [ %ptr.0, %for.body3 ], [ %ptr.041, %for.body ]
  %nkeys.043 = phi i32 [ %inc, %for.body3 ], [ 0, %for.body ]
  %inc = add nsw i32 %nkeys.043, 1
  %nxt = getelementptr inbounds %struct.gki_elem* %ptr.044, i64 0, i32 2
  %ptr.0 = load %struct.gki_elem** %nxt, align 8
  %cmp2 = icmp eq %struct.gki_elem* %ptr.0, null
  br i1 %cmp2, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3, %for.body
  %nkeys.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %cmp4 = icmp eq i32 %nkeys.0.lcssa, 0
  %inc5 = zext i1 %cmp4 to i32
  %inc5.nempty.0 = add nsw i32 %inc5, %nempty.047
  %cmp6 = icmp sgt i32 %nkeys.0.lcssa, %maxkeys.048
  %maxkeys.1 = select i1 %cmp6, i32 %nkeys.0.lcssa, i32 %maxkeys.048
  %cmp9 = icmp slt i32 %nkeys.0.lcssa, %minkeys.049
  %nkeys.0.minkeys.0 = select i1 %cmp9, i32 %nkeys.0.lcssa, i32 %minkeys.049
  %indvars.iv.next = add i64 %indvars.iv, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end14

for.end14:                                        ; preds = %for.end, %entry
  %minkeys.0.lcssa = phi i32 [ 2147483647, %entry ], [ %nkeys.0.minkeys.0, %for.end ]
  %maxkeys.0.lcssa = phi i32 [ -1, %entry ], [ %maxkeys.1, %for.end ]
  %nempty.0.lcssa = phi i32 [ 0, %entry ], [ %inc5.nempty.0, %for.end ]
  %nkeys15 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3
  %3 = load i32* %nkeys15, align 4, !tbaa !0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 %3) #6
  %4 = load i32* %nhash, align 4, !tbaa !0
  %call17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %4) #6
  %5 = load i32* %nkeys15, align 4, !tbaa !0
  %conv = sitofp i32 %5 to float
  %6 = load i32* %nhash, align 4, !tbaa !0
  %conv20 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv20
  %conv21 = fpext float %div to double
  %call22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0), double %conv21) #6
  %call23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %nempty.0.lcssa) #6
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i32 %maxkeys.0.lcssa) #6
  %call25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %minkeys.0.lcssa) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
