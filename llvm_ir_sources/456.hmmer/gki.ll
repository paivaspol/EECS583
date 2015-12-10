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
  %call = tail call fastcc %struct.GKI* @gki_alloc(i32 0) #6, !dbg !86
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %call}, i64 0, metadata !28), !dbg !86
  ret %struct.GKI* %call, !dbg !87
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.GKI* @gki_alloc(i32 %primelevel) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %primelevel}, i64 0, metadata !78), !dbg !88
  %0 = icmp ugt i32 %primelevel, 3, !dbg !89
  br i1 %0, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !90
  br label %if.end, !dbg !90

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 294, i64 24) #7, !dbg !91
  %1 = bitcast i8* %call to %struct.GKI*, !dbg !91
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %1}, i64 0, metadata !79), !dbg !91
  %primelevel2 = getelementptr inbounds i8* %call, i64 8, !dbg !92
  %2 = bitcast i8* %primelevel2 to i32*, !dbg !92
  store i32 %primelevel, i32* %2, align 4, !dbg !92, !tbaa !93
  %idxprom = sext i32 %primelevel to i64, !dbg !96
  %arrayidx = getelementptr inbounds [4 x i32]* @gki_primes, i64 0, i64 %idxprom, !dbg !96
  %3 = load i32* %arrayidx, align 4, !dbg !96, !tbaa !93
  %nhash = getelementptr inbounds i8* %call, i64 12, !dbg !96
  %4 = bitcast i8* %nhash to i32*, !dbg !96
  store i32 %3, i32* %4, align 4, !dbg !96, !tbaa !93
  %conv = sext i32 %3 to i64, !dbg !97
  %mul = mul i64 %conv, 24, !dbg !97
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 298, i64 %mul) #7, !dbg !97
  %5 = bitcast i8* %call5 to %struct.gki_elem**, !dbg !97
  %table = bitcast i8* %call to %struct.gki_elem***, !dbg !97
  store %struct.gki_elem** %5, %struct.gki_elem*** %table, align 8, !dbg !97, !tbaa !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !99
  %6 = load i32* %4, align 4, !dbg !99, !tbaa !93
  %cmp724 = icmp sgt i32 %6, 0, !dbg !99
  br i1 %cmp724, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %if.end, %for.body.for.body_crit_edge
  %7 = phi %struct.gki_elem** [ %.pre, %for.body.for.body_crit_edge ], [ %5, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end ]
  %arrayidx11 = getelementptr inbounds %struct.gki_elem** %7, i64 %indvars.iv, !dbg !101
  store %struct.gki_elem* null, %struct.gki_elem** %arrayidx11, align 8, !dbg !101, !tbaa !98
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !99
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !99
  %cmp7 = icmp slt i32 %8, %6, !dbg !99
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.end, !dbg !99

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.gki_elem*** %table, align 8, !dbg !101, !tbaa !98
  br label %for.body, !dbg !99

for.end:                                          ; preds = %for.body, %if.end
  %nkeys = getelementptr inbounds i8* %call, i64 16, !dbg !102
  %9 = bitcast i8* %nkeys to i32*, !dbg !102
  store i32 0, i32* %9, align 4, !dbg !102, !tbaa !93
  ret %struct.GKI* %1, !dbg !103
}

; Function Attrs: nounwind optsize uwtable
define void @GKIFree(%struct.GKI* %hash) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %hash}, i64 0, metadata !33), !dbg !104
  %cmp = icmp eq %struct.GKI* %hash, null, !dbg !105
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !105

for.cond.preheader:                               ; preds = %entry
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !106
  %0 = load i32* %nhash, align 4, !dbg !106, !tbaa !93
  %cmp140 = icmp sgt i32 %0, 0, !dbg !106
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !108
  %.pre = load %struct.gki_elem*** %table, align 8, !dbg !108, !tbaa !98
  br i1 %cmp140, label %while.cond.preheader, label %for.end, !dbg !106

while.cond.preheader:                             ; preds = %for.cond.preheader, %for.inc
  %1 = phi i32 [ %14, %for.inc ], [ %0, %for.cond.preheader ]
  %2 = phi %struct.gki_elem** [ %15, %for.inc ], [ %.pre, %for.cond.preheader ], !dbg !108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx38 = getelementptr inbounds %struct.gki_elem** %2, i64 %indvars.iv, !dbg !108
  %3 = load %struct.gki_elem** %arrayidx38, align 8, !dbg !108, !tbaa !98
  %cmp239 = icmp eq %struct.gki_elem* %3, null, !dbg !108
  br i1 %cmp239, label %for.inc, label %while.body, !dbg !108

while.body:                                       ; preds = %while.cond.preheader, %if.end15
  %4 = phi %struct.gki_elem** [ %12, %if.end15 ], [ %2, %while.cond.preheader ]
  %5 = phi %struct.gki_elem* [ %13, %if.end15 ], [ %3, %while.cond.preheader ]
  %nxt = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 2, !dbg !109
  %6 = load %struct.gki_elem** %nxt, align 8, !dbg !109, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{%struct.gki_elem* %6}, i64 0, metadata !34), !dbg !109
  %key = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 0, !dbg !111
  %7 = load i8** %key, align 8, !dbg !111, !tbaa !98
  %cmp9 = icmp eq i8* %7, null, !dbg !111
  br i1 %cmp9, label %if.end15, label %if.then10, !dbg !111

if.then10:                                        ; preds = %while.body
  tail call void @free(i8* %7) #7, !dbg !111
  %.pre43 = load %struct.gki_elem*** %table, align 8, !dbg !112, !tbaa !98
  br label %if.end15, !dbg !111

if.end15:                                         ; preds = %while.body, %if.then10
  %8 = phi %struct.gki_elem** [ %4, %while.body ], [ %.pre43, %if.then10 ], !dbg !112
  %arrayidx18 = getelementptr inbounds %struct.gki_elem** %8, i64 %indvars.iv, !dbg !112
  %9 = load %struct.gki_elem** %arrayidx18, align 8, !dbg !112, !tbaa !98
  %10 = bitcast %struct.gki_elem* %9 to i8*, !dbg !112
  tail call void @free(i8* %10) #7, !dbg !112
  %11 = load %struct.gki_elem*** %table, align 8, !dbg !113, !tbaa !98
  %arrayidx21 = getelementptr inbounds %struct.gki_elem** %11, i64 %indvars.iv, !dbg !113
  store %struct.gki_elem* %6, %struct.gki_elem** %arrayidx21, align 8, !dbg !113, !tbaa !98
  %12 = load %struct.gki_elem*** %table, align 8, !dbg !108, !tbaa !98
  %arrayidx = getelementptr inbounds %struct.gki_elem** %12, i64 %indvars.iv, !dbg !108
  %13 = load %struct.gki_elem** %arrayidx, align 8, !dbg !108, !tbaa !98
  %cmp2 = icmp eq %struct.gki_elem* %13, null, !dbg !108
  br i1 %cmp2, label %while.cond.for.inc_crit_edge, label %while.body, !dbg !108

while.cond.for.inc_crit_edge:                     ; preds = %if.end15
  %.pre42 = load i32* %nhash, align 4, !dbg !106, !tbaa !93
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %while.cond.for.inc_crit_edge, %while.cond.preheader
  %14 = phi i32 [ %.pre42, %while.cond.for.inc_crit_edge ], [ %1, %while.cond.preheader ], !dbg !106
  %15 = phi %struct.gki_elem** [ %12, %while.cond.for.inc_crit_edge ], [ %2, %while.cond.preheader ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !106
  %16 = trunc i64 %indvars.iv.next to i32, !dbg !106
  %cmp1 = icmp slt i32 %16, %14, !dbg !106
  br i1 %cmp1, label %while.cond.preheader, label %for.end, !dbg !106

for.end:                                          ; preds = %for.cond.preheader, %for.inc
  %17 = phi %struct.gki_elem** [ %15, %for.inc ], [ %.pre, %for.cond.preheader ]
  %18 = bitcast %struct.gki_elem** %17 to i8*, !dbg !114
  tail call void @free(i8* %18) #7, !dbg !114
  %19 = bitcast %struct.GKI* %hash to i8*, !dbg !115
  tail call void @free(i8* %19) #7, !dbg !115
  br label %return, !dbg !115

return:                                           ; preds = %entry, %for.end
  ret void, !dbg !115
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @GKIStoreKey(%struct.GKI* nocapture %hash, i8* nocapture %key) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %hash}, i64 0, metadata !40), !dbg !116
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !41), !dbg !116
  %call = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #6, !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !42), !dbg !117
  %idxprom = sext i32 %call to i64, !dbg !118
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !118
  %0 = load %struct.gki_elem*** %table, align 8, !dbg !118, !tbaa !98
  %arrayidx = getelementptr inbounds %struct.gki_elem** %0, i64 %idxprom, !dbg !118
  %1 = load %struct.gki_elem** %arrayidx, align 8, !dbg !118, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{%struct.gki_elem* %1}, i64 0, metadata !43), !dbg !118
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 189, i64 24) #7, !dbg !119
  %2 = bitcast i8* %call1 to %struct.gki_elem*, !dbg !119
  %3 = load %struct.gki_elem*** %table, align 8, !dbg !119, !tbaa !98
  %arrayidx4 = getelementptr inbounds %struct.gki_elem** %3, i64 %idxprom, !dbg !119
  store %struct.gki_elem* %2, %struct.gki_elem** %arrayidx4, align 8, !dbg !119, !tbaa !98
  %call5 = tail call i64 @strlen(i8* %key) #8, !dbg !120
  %add = add i64 %call5, 1, !dbg !120
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i32 190, i64 %add) #7, !dbg !120
  %4 = load %struct.gki_elem*** %table, align 8, !dbg !120, !tbaa !98
  %arrayidx9 = getelementptr inbounds %struct.gki_elem** %4, i64 %idxprom, !dbg !120
  %5 = load %struct.gki_elem** %arrayidx9, align 8, !dbg !120, !tbaa !98
  %key10 = getelementptr inbounds %struct.gki_elem* %5, i64 0, i32 0, !dbg !120
  store i8* %call6, i8** %key10, align 8, !dbg !120, !tbaa !98
  %6 = load %struct.gki_elem*** %table, align 8, !dbg !121, !tbaa !98
  %arrayidx13 = getelementptr inbounds %struct.gki_elem** %6, i64 %idxprom, !dbg !121
  %7 = load %struct.gki_elem** %arrayidx13, align 8, !dbg !121, !tbaa !98
  %key14 = getelementptr inbounds %struct.gki_elem* %7, i64 0, i32 0, !dbg !121
  %8 = load i8** %key14, align 8, !dbg !121, !tbaa !98
  %call15 = tail call i8* @strcpy(i8* %8, i8* %key) #7, !dbg !121
  %nkeys = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3, !dbg !122
  %9 = load i32* %nkeys, align 4, !dbg !122, !tbaa !93
  %10 = load %struct.gki_elem*** %table, align 8, !dbg !122, !tbaa !98
  %arrayidx18 = getelementptr inbounds %struct.gki_elem** %10, i64 %idxprom, !dbg !122
  %11 = load %struct.gki_elem** %arrayidx18, align 8, !dbg !122, !tbaa !98
  %idx = getelementptr inbounds %struct.gki_elem* %11, i64 0, i32 1, !dbg !122
  store i32 %9, i32* %idx, align 4, !dbg !122, !tbaa !93
  %nxt = getelementptr inbounds %struct.gki_elem* %11, i64 0, i32 2, !dbg !123
  store %struct.gki_elem* %1, %struct.gki_elem** %nxt, align 8, !dbg !123, !tbaa !98
  %12 = load i32* %nkeys, align 4, !dbg !124, !tbaa !93
  %inc = add nsw i32 %12, 1, !dbg !124
  store i32 %inc, i32* %nkeys, align 4, !dbg !124, !tbaa !93
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !125
  %13 = load i32* %nhash, align 4, !dbg !125, !tbaa !93
  %mul24 = mul nsw i32 %13, 3, !dbg !125
  %cmp = icmp slt i32 %12, %mul24, !dbg !125
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !125

land.lhs.true:                                    ; preds = %entry
  %primelevel = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 1, !dbg !125
  %14 = load i32* %primelevel, align 4, !dbg !125, !tbaa !93
  %cmp25 = icmp slt i32 %14, 3, !dbg !125
  br i1 %cmp25, label %if.end.i, label %if.end, !dbg !125

if.end.i:                                         ; preds = %land.lhs.true
  %add.i = add nsw i32 %14, 1, !dbg !126
  %call.i = tail call fastcc %struct.GKI* @gki_alloc(i32 %add.i) #7, !dbg !126
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %call.i}, i64 0, metadata !128) #9, !dbg !126
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !129) #9, !dbg !130
  %15 = load i32* %nhash, align 4, !dbg !130, !tbaa !93
  %cmp23.i = icmp sgt i32 %15, 0, !dbg !130
  %table6.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 0, !dbg !132
  br i1 %cmp23.i, label %for.body.i, label %gki_upsize.exit, !dbg !130

for.body.i:                                       ; preds = %for.inc.i, %if.end.i
  %indvars.iv.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %16 = load %struct.gki_elem*** %table, align 8, !dbg !135, !tbaa !98
  %arrayidx.i = getelementptr inbounds %struct.gki_elem** %16, i64 %indvars.iv.i, !dbg !135
  %17 = load %struct.gki_elem** %arrayidx.i, align 8, !dbg !135, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{%struct.gki_elem* %17}, i64 0, metadata !136) #9, !dbg !135
  %cmp31.i = icmp eq %struct.gki_elem* %17, null, !dbg !137
  br i1 %cmp31.i, label %for.inc.i, label %while.body.i, !dbg !137

while.body.i:                                     ; preds = %for.body.i, %while.body.i
  %optr.02.i = phi %struct.gki_elem* [ %21, %while.body.i ], [ %17, %for.body.i ]
  %key.i = getelementptr inbounds %struct.gki_elem* %optr.02.i, i64 0, i32 0, !dbg !138
  %18 = load i8** %key.i, align 8, !dbg !138, !tbaa !98
  %call4.i = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %call.i, i8* %18) #7, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %call4.i}, i64 0, metadata !139) #9, !dbg !138
  %idxprom5.i = sext i32 %call4.i to i64, !dbg !132
  %19 = load %struct.gki_elem*** %table6.i, align 8, !dbg !132, !tbaa !98
  %arrayidx7.i = getelementptr inbounds %struct.gki_elem** %19, i64 %idxprom5.i, !dbg !132
  %20 = load %struct.gki_elem** %arrayidx7.i, align 8, !dbg !132, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{%struct.gki_elem* %20}, i64 0, metadata !140) #9, !dbg !132
  store %struct.gki_elem* %optr.02.i, %struct.gki_elem** %arrayidx7.i, align 8, !dbg !141, !tbaa !98
  %nxt.i = getelementptr inbounds %struct.gki_elem* %optr.02.i, i64 0, i32 2, !dbg !142
  %21 = load %struct.gki_elem** %nxt.i, align 8, !dbg !142, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{%struct.gki_elem* %21}, i64 0, metadata !136) #9, !dbg !142
  %22 = load %struct.gki_elem*** %table6.i, align 8, !dbg !143, !tbaa !98
  %arrayidx13.i = getelementptr inbounds %struct.gki_elem** %22, i64 %idxprom5.i, !dbg !143
  %23 = load %struct.gki_elem** %arrayidx13.i, align 8, !dbg !143, !tbaa !98
  %nxt14.i = getelementptr inbounds %struct.gki_elem* %23, i64 0, i32 2, !dbg !143
  store %struct.gki_elem* %20, %struct.gki_elem** %nxt14.i, align 8, !dbg !143, !tbaa !98
  %cmp3.i = icmp eq %struct.gki_elem* %21, null, !dbg !137
  br i1 %cmp3.i, label %for.inc.i, label %while.body.i, !dbg !137

for.inc.i:                                        ; preds = %while.body.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !130
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !130
  %exitcond = icmp eq i32 %lftr.wideiv, %15, !dbg !130
  br i1 %exitcond, label %gki_upsize.exit, label %for.body.i, !dbg !130

gki_upsize.exit:                                  ; preds = %for.inc.i, %if.end.i
  %24 = load %struct.gki_elem*** %table, align 8, !dbg !144, !tbaa !98
  %25 = bitcast %struct.gki_elem** %24 to i8*, !dbg !144
  tail call void @free(i8* %25) #7, !dbg !144
  %primelevel16.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 1, !dbg !145
  %26 = load i32* %primelevel16.i, align 4, !dbg !145, !tbaa !93
  store i32 %26, i32* %primelevel, align 4, !dbg !145, !tbaa !93
  %nhash18.i = getelementptr inbounds %struct.GKI* %call.i, i64 0, i32 2, !dbg !146
  %27 = load i32* %nhash18.i, align 4, !dbg !146, !tbaa !93
  store i32 %27, i32* %nhash, align 4, !dbg !146, !tbaa !93
  %28 = load %struct.gki_elem*** %table6.i, align 8, !dbg !147, !tbaa !98
  store %struct.gki_elem** %28, %struct.gki_elem*** %table, align 8, !dbg !147, !tbaa !98
  %29 = bitcast %struct.GKI* %call.i to i8*, !dbg !148
  tail call void @free(i8* %29) #7, !dbg !148
  %.pre = load i32* %nkeys, align 4, !dbg !149, !tbaa !93
  br label %if.end, !dbg !127

if.end:                                           ; preds = %entry, %gki_upsize.exit, %land.lhs.true
  %30 = phi i32 [ %inc, %entry ], [ %.pre, %gki_upsize.exit ], [ %inc, %land.lhs.true ]
  %sub = add nsw i32 %30, -1, !dbg !149
  ret i32 %sub, !dbg !149
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @gki_hashvalue(%struct.GKI* nocapture %hash, i8* nocapture %key) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %hash}, i64 0, metadata !71), !dbg !150
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !72), !dbg !150
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !151
  %0 = load i8* %key, align 1, !dbg !152, !tbaa !94
  %cmp20 = icmp eq i8 %0, 0, !dbg !152
  br i1 %cmp20, label %for.end, label %for.body.lr.ph, !dbg !152

for.body.lr.ph:                                   ; preds = %entry
  %nhash9 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !154
  br label %for.body, !dbg !152

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %5, %if.end ]
  %val.022 = phi i32 [ 0, %for.body.lr.ph ], [ %rem10, %if.end ]
  %key.addr.021 = phi i8* [ %key, %for.body.lr.ph ], [ %incdec.ptr11, %if.end ]
  %conv = sext i8 %1 to i32, !dbg !152
  %mul = shl nsw i32 %val.022, 7, !dbg !156
  %add = add nsw i32 %conv, %mul, !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !73), !dbg !156
  %incdec.ptr = getelementptr inbounds i8* %key.addr.021, i64 1, !dbg !157
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !72), !dbg !157
  %2 = load i8* %incdec.ptr, align 1, !dbg !157, !tbaa !94
  %cmp4 = icmp eq i8 %2, 0, !dbg !157
  br i1 %cmp4, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %for.body
  %3 = load i32* %nhash9, align 4, !dbg !158, !tbaa !93
  %rem = srem i32 %add, %3, !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !73), !dbg !158
  br label %for.end, !dbg !158

if.end:                                           ; preds = %for.body
  %conv3 = sext i8 %2 to i32, !dbg !157
  %mul6 = shl i32 %add, 7, !dbg !154
  %add8 = add nsw i32 %conv3, %mul6, !dbg !154
  %4 = load i32* %nhash9, align 4, !dbg !154, !tbaa !93
  %rem10 = srem i32 %add8, %4, !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %rem10}, i64 0, metadata !73), !dbg !154
  %incdec.ptr11 = getelementptr inbounds i8* %key.addr.021, i64 2, !dbg !152
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !72), !dbg !152
  %5 = load i8* %incdec.ptr11, align 1, !dbg !152, !tbaa !94
  %cmp = icmp eq i8 %5, 0, !dbg !152
  br i1 %cmp, label %for.end, label %for.body, !dbg !152

for.end:                                          ; preds = %entry, %if.end, %if.then
  %val.1 = phi i32 [ %rem, %if.then ], [ 0, %entry ], [ %rem10, %if.end ]
  ret i32 %val.1, !dbg !160
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
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %hash}, i64 0, metadata !46), !dbg !161
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !47), !dbg !161
  %call = tail call fastcc i32 @gki_hashvalue(%struct.GKI* %hash, i8* %key) #6, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !49), !dbg !162
  %idxprom = sext i32 %call to i64, !dbg !163
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !163
  %0 = load %struct.gki_elem*** %table, align 8, !dbg !163, !tbaa !98
  %arrayidx = getelementptr inbounds %struct.gki_elem** %0, i64 %idxprom, !dbg !163
  %ptr.09 = load %struct.gki_elem** %arrayidx, align 8, !dbg !163
  %cmp10 = icmp eq %struct.gki_elem* %ptr.09, null, !dbg !163
  br i1 %cmp10, label %return, label %for.body, !dbg !163

for.cond:                                         ; preds = %for.body
  %nxt = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 2, !dbg !163
  %ptr.0 = load %struct.gki_elem** %nxt, align 8, !dbg !163
  %cmp = icmp eq %struct.gki_elem* %ptr.0, null, !dbg !163
  br i1 %cmp, label %return, label %for.body, !dbg !163

for.body:                                         ; preds = %entry, %for.cond
  %ptr.011 = phi %struct.gki_elem* [ %ptr.0, %for.cond ], [ %ptr.09, %entry ]
  %key1 = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 0, !dbg !165
  %1 = load i8** %key1, align 8, !dbg !165, !tbaa !98
  %call2 = tail call i32 @strcmp(i8* %key, i8* %1) #8, !dbg !165
  %cmp3 = icmp eq i32 %call2, 0, !dbg !165
  br i1 %cmp3, label %if.then, label %for.cond, !dbg !165

if.then:                                          ; preds = %for.body
  %idx = getelementptr inbounds %struct.gki_elem* %ptr.011, i64 0, i32 1, !dbg !165
  %2 = load i32* %idx, align 4, !dbg !165, !tbaa !93
  br label %return, !dbg !165

return:                                           ; preds = %entry, %for.cond, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -1, %for.cond ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !166
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @GKIStatus(%struct.GKI* nocapture %hash) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.GKI* %hash}, i64 0, metadata !52), !dbg !167
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !56), !dbg !168
  tail call void @llvm.dbg.value(metadata !169, i64 0, metadata !57), !dbg !170
  tail call void @llvm.dbg.value(metadata !171, i64 0, metadata !58), !dbg !172
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !173
  %nhash = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 2, !dbg !173
  %0 = load i32* %nhash, align 4, !dbg !173, !tbaa !93
  %cmp45 = icmp sgt i32 %0, 0, !dbg !173
  br i1 %cmp45, label %for.body.lr.ph, label %for.end14, !dbg !173

for.body.lr.ph:                                   ; preds = %entry
  %table = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 0, !dbg !175
  %1 = load %struct.gki_elem*** %table, align 8, !dbg !175, !tbaa !98
  br label %for.body, !dbg !173

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %minkeys.049 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %nkeys.0.minkeys.0, %for.end ]
  %maxkeys.048 = phi i32 [ -1, %for.body.lr.ph ], [ %maxkeys.1, %for.end ]
  %nempty.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5.nempty.0, %for.end ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !55), !dbg !178
  %arrayidx = getelementptr inbounds %struct.gki_elem** %1, i64 %indvars.iv, !dbg !175
  %ptr.041 = load %struct.gki_elem** %arrayidx, align 8, !dbg !175
  %cmp242 = icmp eq %struct.gki_elem* %ptr.041, null, !dbg !175
  br i1 %cmp242, label %for.end, label %for.body3, !dbg !175

for.body3:                                        ; preds = %for.body, %for.body3
  %ptr.044 = phi %struct.gki_elem* [ %ptr.0, %for.body3 ], [ %ptr.041, %for.body ]
  %nkeys.043 = phi i32 [ %inc, %for.body3 ], [ 0, %for.body ]
  %inc = add nsw i32 %nkeys.043, 1, !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !55), !dbg !179
  %nxt = getelementptr inbounds %struct.gki_elem* %ptr.044, i64 0, i32 2, !dbg !175
  %ptr.0 = load %struct.gki_elem** %nxt, align 8, !dbg !175
  %cmp2 = icmp eq %struct.gki_elem* %ptr.0, null, !dbg !175
  br i1 %cmp2, label %for.end, label %for.body3, !dbg !175

for.end:                                          ; preds = %for.body3, %for.body
  %nkeys.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body3 ]
  %cmp4 = icmp eq i32 %nkeys.0.lcssa, 0, !dbg !180
  %inc5 = zext i1 %cmp4 to i32, !dbg !180
  %inc5.nempty.0 = add nsw i32 %inc5, %nempty.047, !dbg !180
  %cmp6 = icmp sgt i32 %nkeys.0.lcssa, %maxkeys.048, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32 %nkeys.0.lcssa}, i64 0, metadata !57), !dbg !181
  %maxkeys.1 = select i1 %cmp6, i32 %nkeys.0.lcssa, i32 %maxkeys.048, !dbg !181
  %cmp9 = icmp slt i32 %nkeys.0.lcssa, %minkeys.049, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32 %nkeys.0.lcssa}, i64 0, metadata !58), !dbg !182
  %nkeys.0.minkeys.0 = select i1 %cmp9, i32 %nkeys.0.lcssa, i32 %minkeys.049, !dbg !182
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !173
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !173
  %cmp = icmp slt i32 %2, %0, !dbg !173
  br i1 %cmp, label %for.body, label %for.end14, !dbg !173

for.end14:                                        ; preds = %for.end, %entry
  %minkeys.0.lcssa = phi i32 [ 2147483647, %entry ], [ %nkeys.0.minkeys.0, %for.end ]
  %maxkeys.0.lcssa = phi i32 [ -1, %entry ], [ %maxkeys.1, %for.end ]
  %nempty.0.lcssa = phi i32 [ 0, %entry ], [ %inc5.nempty.0, %for.end ]
  %nkeys15 = getelementptr inbounds %struct.GKI* %hash, i64 0, i32 3, !dbg !183
  %3 = load i32* %nkeys15, align 4, !dbg !183, !tbaa !93
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i32 %3) #7, !dbg !183
  %4 = load i32* %nhash, align 4, !dbg !184, !tbaa !93
  %call17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), i32 %4) #7, !dbg !184
  %5 = load i32* %nkeys15, align 4, !dbg !185, !tbaa !93
  %conv = sitofp i32 %5 to float, !dbg !185
  %6 = load i32* %nhash, align 4, !dbg !185, !tbaa !93
  %conv20 = sitofp i32 %6 to float, !dbg !185
  %div = fdiv float %conv, %conv20, !dbg !185
  %conv21 = fpext float %div to double, !dbg !185
  %call22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0), double %conv21) #7, !dbg !185
  %call23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), i32 %nempty.0.lcssa) #7, !dbg !186
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), i32 %maxkeys.0.lcssa) #7, !dbg !187
  %call25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %minkeys.0.lcssa) #7, !dbg !188
  ret void, !dbg !189
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !81, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !29, metadata !36, metadata !44, metadata !50, metadata !59, metadata !69, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GKIInit", metadata !"GKIInit", metadata !"", i32 117, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.GKI* ()* @GKIInit, null, null, metadata !27, i32 118} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 118] [GKIInit]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !24, metadata !25, metadata !26}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!16 = metadata !{i32 786451, metadata !11, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !21, metadata !23}
!18 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !11, metadata !16, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786688, metadata !4, metadata !"hash", metadata !5, i32 119, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 119]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GKIFree", metadata !"GKIFree", metadata !"", i32 135, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.GKI*)* @GKIFree, null, null, metadata !32, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [GKIFree]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !8}
!32 = metadata !{metadata !33, metadata !34, metadata !35}
!33 = metadata !{i32 786689, metadata !29, metadata !"hash", metadata !5, i32 16777351, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 135]
!34 = metadata !{i32 786688, metadata !29, metadata !"ptr", metadata !5, i32 137, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 137]
!35 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !5, i32 138, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 138]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GKIStoreKey", metadata !"GKIStoreKey", metadata !"", i32 181, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.GKI*, i8*)* @GKIStoreKey, null, null, metadata !39, i32 182} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 182] [GKIStoreKey]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !22, metadata !8, metadata !19}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786689, metadata !36, metadata !"hash", metadata !5, i32 16777397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 181]
!41 = metadata !{i32 786689, metadata !36, metadata !"key", metadata !5, i32 33554613, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 181]
!42 = metadata !{i32 786688, metadata !36, metadata !"val", metadata !5, i32 183, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 183]
!43 = metadata !{i32 786688, metadata !36, metadata !"ptr", metadata !5, i32 184, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 184]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GKIKeyIndex", metadata !"GKIKeyIndex", metadata !"", i32 219, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.GKI*, i8*)* @GKIKeyIndex, null, null, metadata !45, i32 220} ; [ DW_TAG_subprogram ] [line 219] [def] [scope 220] [GKIKeyIndex]
!45 = metadata !{metadata !46, metadata !47, metadata !48, metadata !49}
!46 = metadata !{i32 786689, metadata !44, metadata !"hash", metadata !5, i32 16777435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 219]
!47 = metadata !{i32 786689, metadata !44, metadata !"key", metadata !5, i32 33554651, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 219]
!48 = metadata !{i32 786688, metadata !44, metadata !"ptr", metadata !5, i32 221, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 221]
!49 = metadata !{i32 786688, metadata !44, metadata !"val", metadata !5, i32 222, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 222]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GKIStatus", metadata !"GKIStatus", metadata !"", i32 243, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.GKI*)* @GKIStatus, null, null, metadata !51, i32 244} ; [ DW_TAG_subprogram ] [line 243] [def] [scope 244] [GKIStatus]
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!52 = metadata !{i32 786689, metadata !50, metadata !"hash", metadata !5, i32 16777459, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 243]
!53 = metadata !{i32 786688, metadata !50, metadata !"ptr", metadata !5, i32 245, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 245]
!54 = metadata !{i32 786688, metadata !50, metadata !"i", metadata !5, i32 246, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 246]
!55 = metadata !{i32 786688, metadata !50, metadata !"nkeys", metadata !5, i32 247, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nkeys] [line 247]
!56 = metadata !{i32 786688, metadata !50, metadata !"nempty", metadata !5, i32 248, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nempty] [line 248]
!57 = metadata !{i32 786688, metadata !50, metadata !"maxkeys", metadata !5, i32 249, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxkeys] [line 249]
!58 = metadata !{i32 786688, metadata !50, metadata !"minkeys", metadata !5, i32 250, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minkeys] [line 250]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gki_upsize", metadata !"gki_upsize", metadata !"", i32 350, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !62, i32 351} ; [ DW_TAG_subprogram ] [line 350] [local] [def] [scope 351] [gki_upsize]
!60 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !22, metadata !8}
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!63 = metadata !{i32 786689, metadata !59, metadata !"old", metadata !5, i32 16777566, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [old] [line 350]
!64 = metadata !{i32 786688, metadata !59, metadata !"new", metadata !5, i32 352, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 352]
!65 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !5, i32 353, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 353]
!66 = metadata !{i32 786688, metadata !59, metadata !"optr", metadata !5, i32 354, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optr] [line 354]
!67 = metadata !{i32 786688, metadata !59, metadata !"nptr", metadata !5, i32 355, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nptr] [line 355]
!68 = metadata !{i32 786688, metadata !59, metadata !"val", metadata !5, i32 356, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 356]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gki_hashvalue", metadata !"gki_hashvalue", metadata !"", i32 325, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.GKI*, i8*)* @gki_hashvalue, null, null, metadata !70, i32 326} ; [ DW_TAG_subprogram ] [line 325] [local] [def] [scope 326] [gki_hashvalue]
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !69, metadata !"hash", metadata !5, i32 16777541, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 325]
!72 = metadata !{i32 786689, metadata !69, metadata !"key", metadata !5, i32 33554757, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 325]
!73 = metadata !{i32 786688, metadata !69, metadata !"val", metadata !5, i32 327, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 327]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gki_alloc", metadata !"gki_alloc", metadata !"", i32 287, metadata !75, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.GKI* (i32)* @gki_alloc, null, null, metadata !77, i32 288} ; [ DW_TAG_subprogram ] [line 287] [local] [def] [scope 288] [gki_alloc]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !8, metadata !22}
!77 = metadata !{metadata !78, metadata !79, metadata !80}
!78 = metadata !{i32 786689, metadata !74, metadata !"primelevel", metadata !5, i32 16777503, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [primelevel] [line 287]
!79 = metadata !{i32 786688, metadata !74, metadata !"hash", metadata !5, i32 289, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 289]
!80 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !5, i32 290, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 290]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786484, i32 0, null, metadata !"gki_primes", metadata !"gki_primes", metadata !"", metadata !5, i32 96, metadata !83, i32 1, i32 1, [4 x i32]* @gki_primes, null} ; [ DW_TAG_variable ] [gki_primes] [line 96] [local] [def]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !22, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!86 = metadata !{i32 120, i32 0, metadata !4, null}
!87 = metadata !{i32 121, i32 0, metadata !4, null}
!88 = metadata !{i32 287, i32 0, metadata !74, null}
!89 = metadata !{i32 292, i32 0, metadata !74, null}
!90 = metadata !{i32 293, i32 0, metadata !74, null}
!91 = metadata !{i32 294, i32 0, metadata !74, null}
!92 = metadata !{i32 296, i32 0, metadata !74, null}
!93 = metadata !{metadata !"int", metadata !94}
!94 = metadata !{metadata !"omnipotent char", metadata !95}
!95 = metadata !{metadata !"Simple C/C++ TBAA"}
!96 = metadata !{i32 297, i32 0, metadata !74, null}
!97 = metadata !{i32 298, i32 0, metadata !74, null}
!98 = metadata !{metadata !"any pointer", metadata !94}
!99 = metadata !{i32 299, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !74, i32 299, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!101 = metadata !{i32 300, i32 0, metadata !100, null}
!102 = metadata !{i32 301, i32 0, metadata !74, null}
!103 = metadata !{i32 302, i32 0, metadata !74, null}
!104 = metadata !{i32 135, i32 0, metadata !29, null}
!105 = metadata !{i32 140, i32 0, metadata !29, null}
!106 = metadata !{i32 142, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !29, i32 142, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!108 = metadata !{i32 143, i32 0, metadata !107, null}
!109 = metadata !{i32 145, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !107, i32 144, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!111 = metadata !{i32 147, i32 0, metadata !110, null}
!112 = metadata !{i32 148, i32 0, metadata !110, null}
!113 = metadata !{i32 149, i32 0, metadata !110, null}
!114 = metadata !{i32 151, i32 0, metadata !29, null}
!115 = metadata !{i32 152, i32 0, metadata !29, null}
!116 = metadata !{i32 181, i32 0, metadata !36, null}
!117 = metadata !{i32 186, i32 0, metadata !36, null}
!118 = metadata !{i32 188, i32 0, metadata !36, null}
!119 = metadata !{i32 189, i32 0, metadata !36, null}
!120 = metadata !{i32 190, i32 0, metadata !36, null}
!121 = metadata !{i32 191, i32 0, metadata !36, null}
!122 = metadata !{i32 193, i32 0, metadata !36, null}
!123 = metadata !{i32 194, i32 0, metadata !36, null}
!124 = metadata !{i32 196, i32 0, metadata !36, null}
!125 = metadata !{i32 198, i32 0, metadata !36, null}
!126 = metadata !{i32 359, i32 0, metadata !59, metadata !127}
!127 = metadata !{i32 199, i32 0, metadata !36, null}
!128 = metadata !{i32 786688, metadata !59, metadata !"new", metadata !5, i32 352, metadata !8, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [new] [line 352]
!129 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !5, i32 353, metadata !22, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [i] [line 353]
!130 = metadata !{i32 366, i32 0, metadata !131, metadata !127}
!131 = metadata !{i32 786443, metadata !1, metadata !59, i32 366, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!132 = metadata !{i32 373, i32 0, metadata !133, metadata !127}
!133 = metadata !{i32 786443, metadata !1, metadata !134, i32 370, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!134 = metadata !{i32 786443, metadata !1, metadata !131, i32 367, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!135 = metadata !{i32 368, i32 0, metadata !134, metadata !127}
!136 = metadata !{i32 786688, metadata !59, metadata !"optr", metadata !5, i32 354, metadata !15, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [optr] [line 354]
!137 = metadata !{i32 369, i32 0, metadata !134, metadata !127}
!138 = metadata !{i32 371, i32 0, metadata !133, metadata !127}
!139 = metadata !{i32 786688, metadata !59, metadata !"val", metadata !5, i32 356, metadata !22, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [val] [line 356]
!140 = metadata !{i32 786688, metadata !59, metadata !"nptr", metadata !5, i32 355, metadata !15, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [nptr] [line 355]
!141 = metadata !{i32 374, i32 0, metadata !133, metadata !127}
!142 = metadata !{i32 375, i32 0, metadata !133, metadata !127}
!143 = metadata !{i32 376, i32 0, metadata !133, metadata !127}
!144 = metadata !{i32 379, i32 0, metadata !59, metadata !127}
!145 = metadata !{i32 385, i32 0, metadata !59, metadata !127}
!146 = metadata !{i32 386, i32 0, metadata !59, metadata !127}
!147 = metadata !{i32 387, i32 0, metadata !59, metadata !127}
!148 = metadata !{i32 388, i32 0, metadata !59, metadata !127}
!149 = metadata !{i32 201, i32 0, metadata !36, null}
!150 = metadata !{i32 325, i32 0, metadata !69, null}
!151 = metadata !{i32 327, i32 0, metadata !69, null}
!152 = metadata !{i32 329, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !69, i32 329, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!154 = metadata !{i32 333, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 330, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!156 = metadata !{i32 331, i32 0, metadata !155, null}
!157 = metadata !{i32 332, i32 0, metadata !155, null}
!158 = metadata !{i32 332, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !155, i32 332, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!160 = metadata !{i32 335, i32 0, metadata !69, null}
!161 = metadata !{i32 219, i32 0, metadata !44, null}
!162 = metadata !{i32 224, i32 0, metadata !44, null}
!163 = metadata !{i32 225, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !44, i32 225, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!165 = metadata !{i32 226, i32 0, metadata !164, null}
!166 = metadata !{i32 228, i32 0, metadata !44, null}
!167 = metadata !{i32 243, i32 0, metadata !50, null}
!168 = metadata !{i32 248, i32 0, metadata !50, null}
!169 = metadata !{i32 -1}
!170 = metadata !{i32 249, i32 0, metadata !50, null}
!171 = metadata !{i32 2147483647}
!172 = metadata !{i32 250, i32 0, metadata !50, null}
!173 = metadata !{i32 252, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !50, i32 252, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!175 = metadata !{i32 255, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 255, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!177 = metadata !{i32 786443, metadata !1, metadata !174, i32 253, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.c]
!178 = metadata !{i32 254, i32 0, metadata !177, null}
!179 = metadata !{i32 256, i32 0, metadata !176, null}
!180 = metadata !{i32 258, i32 0, metadata !177, null}
!181 = metadata !{i32 259, i32 0, metadata !177, null}
!182 = metadata !{i32 260, i32 0, metadata !177, null}
!183 = metadata !{i32 263, i32 0, metadata !50, null}
!184 = metadata !{i32 264, i32 0, metadata !50, null}
!185 = metadata !{i32 265, i32 0, metadata !50, null}
!186 = metadata !{i32 266, i32 0, metadata !50, null}
!187 = metadata !{i32 267, i32 0, metadata !50, null}
!188 = metadata !{i32 268, i32 0, metadata !50, null}
!189 = metadata !{i32 270, i32 0, metadata !50, null}
