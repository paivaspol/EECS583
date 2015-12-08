; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [17 x i8] c"Cluster() failed\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"removing %12s -- fractional identity %.2f to %s\0A\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"chose %d: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GSCWeights(i8** %aseq, i32 %nseq, i32 %alen, float* nocapture %wgt) #0 {
entry:
  %dmx = alloca float**, align 8
  %tree = alloca %struct.phylo_s*, align 8
  %cmp = icmp eq i32 %nseq, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %wgt, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  call void @MakeDiffMx(i8** %aseq, i32 %nseq, float*** %dmx) #5
  %0 = load float*** %dmx, align 8, !tbaa !3
  %call = call i32 @Cluster(float** %0, i32 %nseq, i32 2, %struct.phylo_s** %tree) #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %mul = shl i32 %nseq, 1
  %sub = add nsw i32 %mul, -1
  %conv = sext i32 %sub to i64
  %mul3 = shl nsw i64 %conv, 2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 67, i64 %mul3) #5
  %1 = bitcast i8* %call4 to float*
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 68, i64 %mul3) #5
  %2 = bitcast i8* %call9 to float*
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 69, i64 %mul3) #5
  %3 = bitcast i8* %call14 to float*
  %cmp1567 = icmp sgt i32 %nseq, 0
  br i1 %cmp1567, label %for.body, label %for.end33.critedge

for.body:                                         ; preds = %if.end2, %for.body
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body ], [ 0, %if.end2 ]
  %arrayidx17 = getelementptr inbounds float* %2, i64 %indvars.iv70
  store float 0.000000e+00, float* %arrayidx17, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds float* %1, i64 %indvars.iv70
  store float 0.000000e+00, float* %arrayidx19, align 4, !tbaa !0
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %nseq
  br i1 %exitcond73, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %4 = load %struct.phylo_s** %tree, align 8, !tbaa !3
  call fastcc void @upweight(%struct.phylo_s* %4, i32 %nseq, float* %1, float* %2, i32 %nseq) #6
  %conv20 = sitofp i32 %nseq to float
  %idxprom21 = sext i32 %nseq to i64
  %arrayidx22 = getelementptr inbounds float* %3, i64 %idxprom21
  store float %conv20, float* %arrayidx22, align 4, !tbaa !0
  %5 = load %struct.phylo_s** %tree, align 8, !tbaa !3
  call fastcc void @downweight(%struct.phylo_s* %5, i32 %nseq, float* %1, float* %2, float* %3, i32 %nseq) #6
  br i1 %cmp1567, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.end, %for.body26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body26 ], [ 0, %for.end ]
  %arrayidx28 = getelementptr inbounds float* %3, i64 %indvars.iv
  %6 = load float* %arrayidx28, align 4, !tbaa !0
  %arrayidx30 = getelementptr inbounds float* %wgt, i64 %indvars.iv
  store float %6, float* %arrayidx30, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end33, label %for.body26

for.end33.critedge:                               ; preds = %if.end2
  %7 = load %struct.phylo_s** %tree, align 8, !tbaa !3
  call fastcc void @upweight(%struct.phylo_s* %7, i32 %nseq, float* %1, float* %2, i32 %nseq) #6
  %conv20.c = sitofp i32 %nseq to float
  %idxprom21.c = sext i32 %nseq to i64
  %arrayidx22.c = getelementptr inbounds float* %3, i64 %idxprom21.c
  store float %conv20.c, float* %arrayidx22.c, align 4, !tbaa !0
  %8 = load %struct.phylo_s** %tree, align 8, !tbaa !3
  call fastcc void @downweight(%struct.phylo_s* %8, i32 %nseq, float* %1, float* %2, float* %3, i32 %nseq) #6
  br label %for.end33

for.end33:                                        ; preds = %for.end33.critedge, %for.body26, %for.end
  %9 = load float*** %dmx, align 8, !tbaa !3
  call void @FMX2Free(float** %9) #5
  %10 = load %struct.phylo_s** %tree, align 8, !tbaa !3
  call void @FreePhylo(%struct.phylo_s* %10, i32 %nseq) #5
  call void @free(i8* %call4) #5
  call void @free(i8* %call9) #5
  call void @free(i8* %call14) #5
  br label %return

return:                                           ; preds = %for.end33, %if.then
  ret void
}

; Function Attrs: optsize
declare void @MakeDiffMx(i8**, i32, float***) #1

; Function Attrs: optsize
declare i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %node) #0 {
entry:
  %sub = sub nsw i32 %node, %nseq
  %idxprom = sext i32 %sub to i64
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 1
  %0 = load i32* %left, align 4, !tbaa !4
  %cmp = icmp slt i32 %0, %nseq
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 2
  %1 = load i32* %right, align 4, !tbaa !4
  %cmp4 = icmp slt i32 %1, %nseq
  br i1 %cmp4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %1) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then5
  %idxprom7 = sext i32 %0 to i64
  %arrayidx8 = getelementptr inbounds float* %lwt, i64 %idxprom7
  %2 = load float* %arrayidx8, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds float* %rwt, i64 %idxprom7
  %3 = load float* %arrayidx10, align 4, !tbaa !0
  %add = fadd float %2, %3
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 4
  %4 = load float* %lblen, align 4, !tbaa !0
  %add14 = fadd float %add, %4
  %idxprom15 = sext i32 %node to i64
  %arrayidx16 = getelementptr inbounds float* %lwt, i64 %idxprom15
  store float %add14, float* %arrayidx16, align 4, !tbaa !0
  %idxprom17 = sext i32 %1 to i64
  %arrayidx18 = getelementptr inbounds float* %lwt, i64 %idxprom17
  %5 = load float* %arrayidx18, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds float* %rwt, i64 %idxprom17
  %6 = load float* %arrayidx20, align 4, !tbaa !0
  %add21 = fadd float %5, %6
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 5
  %7 = load float* %rblen, align 4, !tbaa !0
  %add25 = fadd float %add21, %7
  %arrayidx27 = getelementptr inbounds float* %rwt, i64 %idxprom15
  store float %add25, float* %arrayidx27, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %node) #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end69, %entry
  %node.tr = phi i32 [ %node, %entry ], [ %1, %if.end69 ]
  %sub = sub nsw i32 %node.tr, %nseq
  %idxprom = sext i32 %sub to i64
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 1
  %0 = load i32* %left, align 4, !tbaa !4
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 2
  %1 = load i32* %right, align 4, !tbaa !4
  %idxprom4 = sext i32 %node.tr to i64
  %arrayidx5 = getelementptr inbounds float* %lwt, i64 %idxprom4
  %2 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds float* %rwt, i64 %idxprom4
  %3 = load float* %arrayidx7, align 4, !tbaa !0
  %add = fadd float %2, %3
  %cmp = fcmp ogt float %add, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %tailrecurse
  %arrayidx10 = getelementptr inbounds float* %fwt, i64 %idxprom4
  %4 = load float* %arrayidx10, align 4, !tbaa !0
  %div = fdiv float %2, %add
  %mul = fmul float %4, %div
  %idxprom18 = sext i32 %0 to i64
  %arrayidx19 = getelementptr inbounds float* %fwt, i64 %idxprom18
  store float %mul, float* %arrayidx19, align 4, !tbaa !0
  %5 = load float* %arrayidx10, align 4, !tbaa !0
  %6 = load float* %arrayidx7, align 4, !tbaa !0
  %7 = load float* %arrayidx5, align 4, !tbaa !0
  %add28 = fadd float %6, %7
  %div29 = fdiv float %6, %add28
  %mul30 = fmul float %5, %div29
  %idxprom31 = sext i32 %1 to i64
  %arrayidx32 = getelementptr inbounds float* %fwt, i64 %idxprom31
  store float %mul30, float* %arrayidx32, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %tailrecurse
  %cmp33 = icmp slt i32 %0, %nseq
  br i1 %cmp33, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.else
  %sub35 = sub nsw i32 %0, %nseq
  %idxprom36 = sext i32 %sub35 to i64
  %incnum = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom36, i32 7
  %8 = load i32* %incnum, align 4, !tbaa !4
  %conv38 = sitofp i32 %8 to double
  %phitmp = fptrunc double %conv38 to float
  br label %cond.end

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ 1.000000e+00, %if.else ]
  %cmp40 = icmp slt i32 %1, %nseq
  br i1 %cmp40, label %cond.end49, label %cond.true42

cond.true42:                                      ; preds = %cond.end
  %sub43 = sub nsw i32 %1, %nseq
  %idxprom44 = sext i32 %sub43 to i64
  %incnum46 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom44, i32 7
  %9 = load i32* %incnum46, align 4, !tbaa !4
  %conv47 = sitofp i32 %9 to double
  %phitmp134 = fptrunc double %conv47 to float
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end, %cond.true42
  %cond50 = phi float [ %phitmp134, %cond.true42 ], [ 1.000000e+00, %cond.end ]
  %arrayidx53 = getelementptr inbounds float* %fwt, i64 %idxprom4
  %10 = load float* %arrayidx53, align 4, !tbaa !0
  %mul54 = fmul float %cond, %10
  %add55 = fadd float %cond, %cond50
  %div56 = fdiv float %mul54, %add55
  %idxprom57 = sext i32 %0 to i64
  %arrayidx58 = getelementptr inbounds float* %fwt, i64 %idxprom57
  store float %div56, float* %arrayidx58, align 4, !tbaa !0
  %11 = load float* %arrayidx53, align 4, !tbaa !0
  %mul61 = fmul float %cond50, %11
  %div63 = fdiv float %mul61, %add55
  %idxprom64 = sext i32 %1 to i64
  %arrayidx65 = getelementptr inbounds float* %fwt, i64 %idxprom64
  store float %div63, float* %arrayidx65, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %cond.end49, %if.then
  %cmp66 = icmp slt i32 %0, %nseq
  br i1 %cmp66, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end
  tail call fastcc void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %0) #6
  br label %if.end69

if.end69:                                         ; preds = %if.end, %if.then68
  %cmp70 = icmp slt i32 %1, %nseq
  br i1 %cmp70, label %if.end73, label %tailrecurse

if.end73:                                         ; preds = %if.end69
  ret void
}

; Function Attrs: optsize
declare void @FMX2Free(float**) #1

; Function Attrs: optsize
declare void @FreePhylo(%struct.phylo_s*, i32) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @VoronoiWeights(i8** nocapture %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %symseen = alloca [27 x i32], align 16
  %0 = bitcast [27 x i32]* %symseen to i8*
  call void @llvm.lifetime.start(i64 108, i8* %0) #3
  %cmp = icmp eq i32 %nseq, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %wgt, align 4, !tbaa !0
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = sext i32 %nseq to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i = call noalias i8* @malloc(i64 %mul.i) #5
  %1 = bitcast i8* %call.i to float**
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

if.then.i:                                        ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i, %if.end
  %cmp25.i = icmp sgt i32 %nseq, 0
  %mul5.i = shl nsw i64 %conv.i, 2
  br i1 %cmp25.i, label %for.body.i, label %simple_diffmx.exit.thread

simple_diffmx.exit.thread:                        ; preds = %for.cond.preheader.i
  %call3443 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %mul5.i) #5
  %2 = bitcast i8* %call3443 to float*
  br label %for.end31

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %call6.i = call noalias i8* @malloc(i64 %mul5.i) #5
  %3 = bitcast i8* %call6.i to float*
  %arrayidx.i = getelementptr inbounds float** %1, i64 %indvars.iv.i
  store float* %3, float** %arrayidx.i, align 8, !tbaa !3
  %cmp7.i = icmp eq i8* %call6.i, null
  br i1 %cmp7.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv441 = trunc i64 %indvars.iv.next.i to i32
  %exitcond442 = icmp eq i32 %lftr.wideiv441, %nseq
  br i1 %exitcond442, label %for.body18.lr.ph.i, label %for.body.i

for.body18.lr.ph.i:                               ; preds = %for.inc.i, %for.inc35.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.inc35.i ], [ 0, %for.inc.i ]
  %arrayidx20.i = getelementptr inbounds i8** %aseq, i64 %indvars.iv9.i
  %arrayidx30.i = getelementptr inbounds float** %1, i64 %indvars.iv9.i
  %.pre.i = load i8** %arrayidx20.i, align 8, !tbaa !3
  br label %for.body18.i

for.body18.i:                                     ; preds = %simple_distance.exit.for.body18_crit_edge.i, %for.body18.lr.ph.i
  %4 = phi i8* [ %.pre.i, %for.body18.lr.ph.i ], [ %.pre15.i, %simple_distance.exit.for.body18_crit_edge.i ]
  %indvars.iv7.i = phi i64 [ %indvars.iv9.i, %for.body18.lr.ph.i ], [ %indvars.iv.next8.i, %simple_distance.exit.for.body18_crit_edge.i ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.body18.i
  %s1.addr.0.i.i = phi i8* [ %.pre.i, %for.body18.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %s2.addr.0.i.i = phi i8* [ %4, %for.body18.i ], [ %incdec.ptr47.i.i, %for.inc.i.i ]
  %diff.0.i.i = phi i32 [ 0, %for.body18.i ], [ %diff.2.i.i, %for.inc.i.i ]
  %valid.0.i.i = phi i32 [ 0, %for.body18.i ], [ %valid.1.i.i, %for.inc.i.i ]
  %5 = load i8* %s1.addr.0.i.i, align 1, !tbaa !1
  switch i8 %5, label %lor.lhs.false20.i.i [
    i8 0, label %for.end.i.i
    i8 32, label %for.inc.i.i
    i8 46, label %for.inc.i.i
    i8 95, label %for.inc.i.i
    i8 45, label %for.inc.i.i
    i8 126, label %for.inc.i.i
  ]

lor.lhs.false20.i.i:                              ; preds = %for.cond.i.i
  %6 = load i8* %s2.addr.0.i.i, align 1, !tbaa !1
  switch i8 %6, label %if.end.i.i [
    i8 32, label %for.inc.i.i
    i8 46, label %for.inc.i.i
    i8 95, label %for.inc.i.i
    i8 45, label %for.inc.i.i
    i8 126, label %for.inc.i.i
  ]

if.end.i.i:                                       ; preds = %lor.lhs.false20.i.i
  %not.cmp42.i.i = icmp ne i8 %5, %6
  %inc.i.i = zext i1 %not.cmp42.i.i to i32
  %diff.0.inc.i.i = add nsw i32 %inc.i.i, %diff.0.i.i
  %inc46.i.i = add nsw i32 %valid.0.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i
  %diff.2.i.i = phi i32 [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.inc.i.i, %if.end.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ]
  %valid.1.i.i = phi i32 [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %inc46.i.i, %if.end.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds i8* %s1.addr.0.i.i, i64 1
  %incdec.ptr47.i.i = getelementptr inbounds i8* %s2.addr.0.i.i, i64 1
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %cmp48.i.i = icmp sgt i32 %valid.0.i.i, 0
  br i1 %cmp48.i.i, label %cond.true.i.i, label %simple_distance.exit.i

cond.true.i.i:                                    ; preds = %for.end.i.i
  %conv50.i.i = sitofp i32 %diff.0.i.i to float
  %conv51.i.i = sitofp i32 %valid.0.i.i to float
  %div.i.i = fdiv float %conv50.i.i, %conv51.i.i
  br label %simple_distance.exit.i

simple_distance.exit.i:                           ; preds = %for.end.i.i, %cond.true.i.i
  %cond.i.i = phi float [ %div.i.i, %cond.true.i.i ], [ 0.000000e+00, %for.end.i.i ]
  %arrayidx26.i = getelementptr inbounds float** %1, i64 %indvars.iv7.i
  %7 = load float** %arrayidx26.i, align 8, !tbaa !3
  %arrayidx27.i = getelementptr inbounds float* %7, i64 %indvars.iv9.i
  store float %cond.i.i, float* %arrayidx27.i, align 4, !tbaa !0
  %8 = load float** %arrayidx30.i, align 8, !tbaa !3
  %arrayidx31.i = getelementptr inbounds float* %8, i64 %indvars.iv7.i
  store float %cond.i.i, float* %arrayidx31.i, align 4, !tbaa !0
  %indvars.iv.next8.i = add i64 %indvars.iv7.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next8.i to i32
  %exitcond.i = icmp eq i32 %lftr.wideiv.i, %nseq
  br i1 %exitcond.i, label %for.inc35.i, label %simple_distance.exit.for.body18_crit_edge.i

simple_distance.exit.for.body18_crit_edge.i:      ; preds = %simple_distance.exit.i
  %arrayidx22.phi.trans.insert.i = getelementptr inbounds i8** %aseq, i64 %indvars.iv.next8.i
  %.pre15.i = load i8** %arrayidx22.phi.trans.insert.i, align 8, !tbaa !3
  br label %for.body18.i

for.inc35.i:                                      ; preds = %simple_distance.exit.i
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1
  %lftr.wideiv439 = trunc i64 %indvars.iv.next10.i to i32
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %nseq
  br i1 %exitcond440, label %simple_diffmx.exit, label %for.body18.lr.ph.i

simple_diffmx.exit:                               ; preds = %for.inc35.i
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %mul5.i) #5
  %9 = bitcast i8* %call3 to float*
  br i1 %cmp25.i, label %for.body9.lr.ph, label %for.end31

for.body9.lr.ph:                                  ; preds = %for.end, %simple_diffmx.exit
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %for.end ], [ 0, %simple_diffmx.exit ]
  %arrayidx15 = getelementptr inbounds float** %1, i64 %indvars.iv435
  br label %for.body9

for.body9:                                        ; preds = %for.inc, %for.body9.lr.ph
  %indvars.iv431 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next432, %for.inc ]
  %min.0402 = phi float [ 1.000000e+00, %for.body9.lr.ph ], [ %min.1, %for.inc ]
  %10 = trunc i64 %indvars.iv431 to i32
  %11 = trunc i64 %indvars.iv435 to i32
  %cmp10 = icmp eq i32 %10, %11
  br i1 %cmp10, label %for.inc, label %if.end13

if.end13:                                         ; preds = %for.body9
  %12 = load float** %arrayidx15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds float* %12, i64 %indvars.iv431
  %13 = load float* %arrayidx16, align 4, !tbaa !0
  %cmp17 = fcmp olt float %13, %min.0402
  br i1 %cmp17, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.end13
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then19, %for.body9
  %min.1 = phi float [ %min.0402, %for.body9 ], [ %13, %if.then19 ], [ %min.0402, %if.end13 ]
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %lftr.wideiv433 = trunc i64 %indvars.iv.next432 to i32
  %exitcond434 = icmp eq i32 %lftr.wideiv433, %nseq
  br i1 %exitcond434, label %for.end, label %for.body9

for.end:                                          ; preds = %for.inc
  %conv26 = fmul float %min.1, 5.000000e-01
  %arrayidx28 = getelementptr inbounds float* %9, i64 %indvars.iv435
  store float %conv26, float* %arrayidx28, align 4, !tbaa !0
  %indvars.iv.next436 = add i64 %indvars.iv435, 1
  %lftr.wideiv437 = trunc i64 %indvars.iv.next436 to i32
  %exitcond438 = icmp eq i32 %lftr.wideiv437, %nseq
  br i1 %exitcond438, label %for.end31, label %for.body9.lr.ph

for.end31:                                        ; preds = %for.end, %simple_diffmx.exit.thread, %simple_diffmx.exit
  %14 = phi float* [ %2, %simple_diffmx.exit.thread ], [ %9, %simple_diffmx.exit ], [ %9, %for.end ]
  %call3444 = phi i8* [ %call3443, %simple_diffmx.exit.thread ], [ %call3, %simple_diffmx.exit ], [ %call3, %for.end ]
  %15 = bitcast i8* %call.i to i8**
  call void @Free2DArray(i8** %15, i32 %nseq) #5
  %conv32 = sext i32 %alen to i64
  %mul33 = shl nsw i64 %conv32, 3
  %call34 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 198, i64 %mul33) #5
  %16 = bitcast i8* %call34 to i8**
  %mul36 = shl nsw i64 %conv32, 2
  %call37 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 199, i64 %mul36) #5
  %17 = bitcast i8* %call37 to i32*
  %cmp39398 = icmp sgt i32 %alen, 0
  br i1 %cmp39398, label %for.body41, label %for.end171

for.cond48.preheader:                             ; preds = %for.body41
  br i1 %cmp39398, label %for.body51.lr.ph, label %for.end171

for.body51.lr.ph:                                 ; preds = %for.cond48.preheader
  %arrayidx156 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 26
  br label %for.body51

for.body41:                                       ; preds = %for.end31, %for.body41
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %for.body41 ], [ 0, %for.end31 ]
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 201, i64 27) #5
  %arrayidx44 = getelementptr inbounds i8** %16, i64 %indvars.iv427
  store i8* %call42, i8** %arrayidx44, align 8, !tbaa !3
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32
  %exitcond430 = icmp eq i32 %lftr.wideiv429, %alen
  br i1 %exitcond430, label %for.cond48.preheader, label %for.body41

for.body51:                                       ; preds = %for.inc169, %for.body51.lr.ph
  %indvars.iv423 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next424, %for.inc169 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 108, i32 16, i1 false)
  br i1 %cmp25.i, label %for.body55, label %for.end131

for.body55:                                       ; preds = %for.body51, %for.inc129
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc129 ], [ 0, %for.body51 ]
  %arrayidx58 = getelementptr inbounds i8** %aseq, i64 %indvars.iv414
  %18 = load i8** %arrayidx58, align 8, !tbaa !3
  %arrayidx59 = getelementptr inbounds i8* %18, i64 %indvars.iv423
  %19 = load i8* %arrayidx59, align 1, !tbaa !1
  switch i8 %19, label %if.then94 [
    i8 32, label %if.else126
    i8 46, label %if.else126
    i8 95, label %if.else126
    i8 45, label %if.else126
    i8 126, label %if.else126
  ]

if.then94:                                        ; preds = %for.body55
  %conv60 = sext i8 %19 to i32
  %idxprom100 = sext i8 %19 to i64
  %call101 = call i16** @__ctype_b_loc() #7
  %20 = load i16** %call101, align 8, !tbaa !3
  %arrayidx102 = getelementptr inbounds i16* %20, i64 %idxprom100
  %21 = load i16* %arrayidx102, align 2, !tbaa !5
  %and = and i16 %21, 256
  %tobool104 = icmp eq i16 %and, 0
  %symidx.0.v = select i1 %tobool104, i32 -97, i32 -65
  %symidx.0 = add i32 %symidx.0.v, %conv60
  %22 = icmp ult i32 %symidx.0, 26
  br i1 %22, label %if.then122, label %for.inc129

if.then122:                                       ; preds = %if.then94
  %idxprom123 = sext i32 %symidx.0 to i64
  %arrayidx124 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %idxprom123
  store i32 1, i32* %arrayidx124, align 4, !tbaa !4
  br label %for.inc129

if.else126:                                       ; preds = %for.body55, %for.body55, %for.body55, %for.body55, %for.body55
  store i32 1, i32* %arrayidx156, align 8, !tbaa !4
  br label %for.inc129

for.inc129:                                       ; preds = %if.else126, %if.then122, %if.then94
  %indvars.iv.next415 = add i64 %indvars.iv414, 1
  %lftr.wideiv416 = trunc i64 %indvars.iv.next415 to i32
  %exitcond417 = icmp eq i32 %lftr.wideiv416, %nseq
  br i1 %exitcond417, label %for.end131, label %for.body55

for.end131:                                       ; preds = %for.inc129, %for.body51
  %arrayidx133 = getelementptr inbounds i32* %17, i64 %indvars.iv423
  store i32 0, i32* %arrayidx133, align 4, !tbaa !4
  %arrayidx147 = getelementptr inbounds i8** %16, i64 %indvars.iv423
  br label %for.body137

for.body137:                                      ; preds = %for.inc153, %for.end131
  %23 = phi i32 [ 0, %for.end131 ], [ %27, %for.inc153 ]
  %indvars.iv418 = phi i64 [ 0, %for.end131 ], [ %indvars.iv.next419, %for.inc153 ]
  %i.1395 = phi i32 [ 0, %for.end131 ], [ %inc154, %for.inc153 ]
  %arrayidx139 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %indvars.iv418
  %24 = load i32* %arrayidx139, align 4, !tbaa !4
  %tobool140 = icmp eq i32 %24, 0
  br i1 %tobool140, label %for.inc153, label %if.then141

if.then141:                                       ; preds = %for.body137
  %add = add nsw i32 %i.1395, 65
  %conv142 = trunc i32 %add to i8
  %idxprom145 = sext i32 %23 to i64
  %25 = load i8** %arrayidx147, align 8, !tbaa !3
  %arrayidx148 = getelementptr inbounds i8* %25, i64 %idxprom145
  store i8 %conv142, i8* %arrayidx148, align 1, !tbaa !1
  %26 = load i32* %arrayidx133, align 4, !tbaa !4
  %inc151 = add nsw i32 %26, 1
  store i32 %inc151, i32* %arrayidx133, align 4, !tbaa !4
  br label %for.inc153

for.inc153:                                       ; preds = %for.body137, %if.then141
  %27 = phi i32 [ %23, %for.body137 ], [ %inc151, %if.then141 ]
  %indvars.iv.next419 = add i64 %indvars.iv418, 1
  %inc154 = add nsw i32 %i.1395, 1
  %lftr.wideiv421 = trunc i64 %indvars.iv.next419 to i32
  %exitcond422 = icmp eq i32 %lftr.wideiv421, 26
  br i1 %exitcond422, label %for.end155, label %for.body137

for.end155:                                       ; preds = %for.inc153
  %28 = load i32* %arrayidx156, align 8, !tbaa !4
  %tobool157 = icmp eq i32 %28, 0
  br i1 %tobool157, label %for.inc169, label %if.then158

if.then158:                                       ; preds = %for.end155
  %idxprom161 = sext i32 %27 to i64
  %29 = load i8** %arrayidx147, align 8, !tbaa !3
  %arrayidx164 = getelementptr inbounds i8* %29, i64 %idxprom161
  store i8 32, i8* %arrayidx164, align 1, !tbaa !1
  %30 = load i32* %arrayidx133, align 4, !tbaa !4
  %inc167 = add nsw i32 %30, 1
  store i32 %inc167, i32* %arrayidx133, align 4, !tbaa !4
  br label %for.inc169

for.inc169:                                       ; preds = %for.end155, %if.then158
  %indvars.iv.next424 = add i64 %indvars.iv423, 1
  %lftr.wideiv425 = trunc i64 %indvars.iv.next424 to i32
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %alen
  br i1 %exitcond426, label %for.end171, label %for.body51

for.end171:                                       ; preds = %for.end31, %for.inc169, %for.cond48.preheader
  %add172 = add nsw i32 %alen, 1
  %conv173 = sext i32 %add172 to i64
  %call175 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 268, i64 %conv173) #5
  call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #5
  %mul177 = mul nsw i32 %nseq, 50
  br i1 %cmp25.i, label %for.cond181.preheader.lr.ph, label %for.end263

for.cond181.preheader.lr.ph:                      ; preds = %for.end171
  %31 = add i32 %alen, -1
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, 1
  br label %for.cond181.preheader

for.cond181.preheader:                            ; preds = %for.cond181.preheader.lr.ph, %for.end242
  %best.0391 = phi i32 [ 42, %for.cond181.preheader.lr.ph ], [ %best.3, %for.end242 ]
  %iteration.0390 = phi i32 [ 0, %for.cond181.preheader.lr.ph ], [ %inc249, %for.end242 ]
  br i1 %cmp39398, label %for.body184, label %for.body213.lr.ph

for.cond251.preheader:                            ; preds = %for.end242
  br i1 %cmp25.i, label %for.body254, label %for.end263

for.body184:                                      ; preds = %for.cond181.preheader, %cond.end
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %cond.end ], [ 0, %for.cond181.preheader ]
  %arrayidx186 = getelementptr inbounds i32* %17, i64 %indvars.iv407
  %34 = load i32* %arrayidx186, align 4, !tbaa !4
  %cmp187 = icmp eq i32 %34, 0
  br i1 %cmp187, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body184
  %call189 = call double @sre_random() #5
  %35 = load i32* %arrayidx186, align 4, !tbaa !4
  %conv192 = sitofp i32 %35 to double
  %mul193 = fmul double %call189, %conv192
  %conv194 = fptosi double %mul193 to i32
  %idxprom195 = sext i32 %conv194 to i64
  %arrayidx197 = getelementptr inbounds i8** %16, i64 %indvars.iv407
  %36 = load i8** %arrayidx197, align 8, !tbaa !3
  %arrayidx198 = getelementptr inbounds i8* %36, i64 %idxprom195
  %37 = load i8* %arrayidx198, align 1, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %for.body184, %cond.false
  %cond = phi i8 [ %37, %cond.false ], [ 32, %for.body184 ]
  %arrayidx202 = getelementptr inbounds i8* %call175, i64 %indvars.iv407
  store i8 %cond, i8* %arrayidx202, align 1, !tbaa !1
  %indvars.iv.next408 = add i64 %indvars.iv407, 1
  %lftr.wideiv409 = trunc i64 %indvars.iv.next408 to i32
  %exitcond410 = icmp eq i32 %lftr.wideiv409, %alen
  br i1 %exitcond410, label %for.body213.lr.ph, label %for.body184

for.body213.lr.ph:                                ; preds = %for.cond181.preheader, %cond.end
  %idxprom185.lcssa = phi i64 [ 0, %for.cond181.preheader ], [ %33, %cond.end ]
  %arrayidx207 = getelementptr inbounds i8* %call175, i64 %idxprom185.lcssa
  store i8 0, i8* %arrayidx207, align 1, !tbaa !1
  %call208 = call double @sre_random() #5
  %conv209 = fptrunc double %call208 to float
  br label %for.body213

for.body213:                                      ; preds = %for.body213.lr.ph, %for.inc240
  %indvars.iv412 = phi i64 [ 0, %for.body213.lr.ph ], [ %indvars.iv.next413, %for.inc240 ]
  %best.1387 = phi i32 [ %best.0391, %for.body213.lr.ph ], [ %best.2, %for.inc240 ]
  %champion.0386 = phi float [ %conv209, %for.body213.lr.ph ], [ %champion.1, %for.inc240 ]
  %idx.2385 = phi i32 [ 0, %for.body213.lr.ph ], [ %inc241, %for.inc240 ]
  %min.2384 = phi float [ 1.000000e+00, %for.body213.lr.ph ], [ %min.3, %for.inc240 ]
  %arrayidx215 = getelementptr inbounds i8** %aseq, i64 %indvars.iv412
  %38 = load i8** %arrayidx215, align 8, !tbaa !3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i376, %for.body213
  %s1.addr.0.i = phi i8* [ %38, %for.body213 ], [ %incdec.ptr.i, %for.inc.i376 ]
  %s2.addr.0.i = phi i8* [ %call175, %for.body213 ], [ %incdec.ptr47.i, %for.inc.i376 ]
  %diff.0.i = phi i32 [ 0, %for.body213 ], [ %diff.2.i, %for.inc.i376 ]
  %valid.0.i = phi i32 [ 0, %for.body213 ], [ %valid.1.i, %for.inc.i376 ]
  %39 = load i8* %s1.addr.0.i, align 1, !tbaa !1
  switch i8 %39, label %lor.lhs.false20.i [
    i8 0, label %for.end.i
    i8 32, label %for.inc.i376
    i8 46, label %for.inc.i376
    i8 95, label %for.inc.i376
    i8 45, label %for.inc.i376
    i8 126, label %for.inc.i376
  ]

lor.lhs.false20.i:                                ; preds = %for.cond.i
  %40 = load i8* %s2.addr.0.i, align 1, !tbaa !1
  switch i8 %40, label %if.end.i [
    i8 32, label %for.inc.i376
    i8 46, label %for.inc.i376
    i8 95, label %for.inc.i376
    i8 45, label %for.inc.i376
    i8 126, label %for.inc.i376
  ]

if.end.i:                                         ; preds = %lor.lhs.false20.i
  %not.cmp42.i = icmp ne i8 %39, %40
  %inc.i = zext i1 %not.cmp42.i to i32
  %diff.0.inc.i = add nsw i32 %inc.i, %diff.0.i
  %inc46.i = add nsw i32 %valid.0.i, 1
  br label %for.inc.i376

for.inc.i376:                                     ; preds = %if.end.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %diff.2.i = phi i32 [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.inc.i, %if.end.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ]
  %valid.1.i = phi i32 [ %valid.0.i, %lor.lhs.false20.i ], [ %inc46.i, %if.end.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %s1.addr.0.i, i64 1
  %incdec.ptr47.i = getelementptr inbounds i8* %s2.addr.0.i, i64 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %cmp48.i = icmp sgt i32 %valid.0.i, 0
  br i1 %cmp48.i, label %cond.true.i, label %simple_distance.exit

cond.true.i:                                      ; preds = %for.end.i
  %conv50.i = sitofp i32 %diff.0.i to float
  %conv51.i = sitofp i32 %valid.0.i to float
  %div.i = fdiv float %conv50.i, %conv51.i
  br label %simple_distance.exit

simple_distance.exit:                             ; preds = %for.end.i, %cond.true.i
  %cond.i = phi float [ %div.i, %cond.true.i ], [ 0.000000e+00, %for.end.i ]
  %arrayidx218 = getelementptr inbounds float* %14, i64 %indvars.iv412
  %41 = load float* %arrayidx218, align 4, !tbaa !0
  %cmp219 = fcmp olt float %cond.i, %41
  br i1 %cmp219, label %for.end242, label %if.end222

if.end222:                                        ; preds = %simple_distance.exit
  %cmp223 = fcmp olt float %cond.i, %min.2384
  %42 = trunc i64 %indvars.iv412 to i32
  br i1 %cmp223, label %if.then225, label %if.else228

if.then225:                                       ; preds = %if.end222
  %call226 = call double @sre_random() #5
  %conv227 = fptrunc double %call226 to float
  br label %for.inc240

if.else228:                                       ; preds = %if.end222
  %cmp229 = fcmp oeq float %cond.i, %min.2384
  br i1 %cmp229, label %if.then231, label %for.inc240

if.then231:                                       ; preds = %if.else228
  %call232 = call double @sre_random() #5
  %conv233 = fptrunc double %call232 to float
  %cmp234 = fcmp ogt float %conv233, %champion.0386
  br i1 %cmp234, label %if.then236, label %for.inc240

if.then236:                                       ; preds = %if.then231
  br label %for.inc240

for.inc240:                                       ; preds = %if.then225, %if.then231, %if.then236, %if.else228
  %min.3 = phi float [ %cond.i, %if.then225 ], [ %cond.i, %if.then236 ], [ %min.2384, %if.then231 ], [ %min.2384, %if.else228 ]
  %champion.1 = phi float [ %conv227, %if.then225 ], [ %conv233, %if.then236 ], [ %champion.0386, %if.then231 ], [ %champion.0386, %if.else228 ]
  %best.2 = phi i32 [ %42, %if.then225 ], [ %42, %if.then236 ], [ %best.1387, %if.then231 ], [ %best.1387, %if.else228 ]
  %indvars.iv.next413 = add i64 %indvars.iv412, 1
  %inc241 = add nsw i32 %idx.2385, 1
  %43 = trunc i64 %indvars.iv.next413 to i32
  %cmp211 = icmp slt i32 %43, %nseq
  br i1 %cmp211, label %for.body213, label %for.end242

for.end242:                                       ; preds = %for.inc240, %simple_distance.exit
  %best.3 = phi i32 [ %idx.2385, %simple_distance.exit ], [ %best.2, %for.inc240 ]
  %idxprom243 = sext i32 %best.3 to i64
  %arrayidx244 = getelementptr inbounds float* %wgt, i64 %idxprom243
  %44 = load float* %arrayidx244, align 4, !tbaa !0
  %conv247 = fadd float %44, 1.000000e+00
  store float %conv247, float* %arrayidx244, align 4, !tbaa !0
  %inc249 = add nsw i32 %iteration.0390, 1
  %cmp178 = icmp slt i32 %inc249, %mul177
  br i1 %cmp178, label %for.cond181.preheader, label %for.cond251.preheader

for.body254:                                      ; preds = %for.cond251.preheader, %for.body254
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body254 ], [ 0, %for.cond251.preheader ]
  %arrayidx256 = getelementptr inbounds float* %wgt, i64 %indvars.iv
  %45 = load float* %arrayidx256, align 4, !tbaa !0
  %div258 = fdiv float %45, 5.000000e+01
  store float %div258, float* %arrayidx256, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end263, label %for.body254

for.end263:                                       ; preds = %for.end171, %for.body254, %for.cond251.preheader
  call void @free(i8* %call175) #5
  call void @free(i8* %call37) #5
  call void @free(i8* %call3444) #5
  call void @Free2DArray(i8** %16, i32 %alen) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end263, %if.then
  call void @llvm.lifetime.end(i64 108, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: optsize
declare double @sre_random() #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @BlosumWeights(i8** nocapture %aseqs, i32 %nseq, i32 %alen, float %maxid, float* %wgt) #0 {
entry:
  %c = alloca i32*, align 8
  %nc = alloca i32, align 4
  call void @SingleLinkCluster(i8** %aseqs, i32 %nseq, i32 undef, float %maxid, i32** %c, i32* %nc) #6
  call void @FSet(float* %wgt, i32 %nseq, float 1.000000e+00) #5
  %0 = load i32* %nc, align 4, !tbaa !4
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 403, i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  %cmp50 = icmp sgt i32 %0, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %2 = icmp sgt i32 %0, 1
  %.op = add i32 %0, -1
  %3 = zext i32 %.op to i64
  %.op58 = shl nuw nsw i64 %3, 2
  %.op58.op = add i64 %.op58, 4
  %4 = select i1 %2, i64 %.op58.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %4, i32 4, i1 false)
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body.lr.ph, %entry
  %cmp348 = icmp sgt i32 %nseq, 0
  br i1 %cmp348, label %for.body5.lr.ph, label %for.cond14.preheader.for.end29_crit_edge

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %5 = load i32** %c, align 8, !tbaa !3
  br label %for.body5

for.cond14.preheader:                             ; preds = %for.body5
  br i1 %cmp348, label %for.body17.lr.ph, label %for.cond14.preheader.for.end29_crit_edge

for.cond14.preheader.for.end29_crit_edge:         ; preds = %for.cond2.preheader, %for.cond14.preheader
  %.pre = load i32** %c, align 8, !tbaa !3
  br label %for.end29

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %6 = load i32** %c, align 8, !tbaa !3
  br label %for.body17

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next53, %for.body5 ]
  %arrayidx7 = getelementptr inbounds i32* %5, i64 %indvars.iv52
  %7 = load i32* %arrayidx7, align 4, !tbaa !4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %idxprom8
  %8 = load i32* %arrayidx9, align 4, !tbaa !4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %arrayidx9, align 4, !tbaa !4
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %nseq
  br i1 %exitcond55, label %for.cond14.preheader, label %for.body5

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %9 = load i32* %arrayidx19, align 4, !tbaa !4
  %idxprom20 = sext i32 %9 to i64
  %arrayidx21 = getelementptr inbounds i32* %1, i64 %idxprom20
  %10 = load i32* %arrayidx21, align 4, !tbaa !4
  %conv22 = sitofp i32 %10 to float
  %conv24 = fdiv float 1.000000e+00, %conv22
  %arrayidx26 = getelementptr inbounds float* %wgt, i64 %indvars.iv
  store float %conv24, float* %arrayidx26, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end29, label %for.body17

for.end29:                                        ; preds = %for.body17, %for.cond14.preheader.for.end29_crit_edge
  %11 = phi i32* [ %.pre, %for.cond14.preheader.for.end29_crit_edge ], [ %6, %for.body17 ]
  call void @free(i8* %call) #5
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SingleLinkCluster(i8** nocapture %aseq, i32 %nseq, i32 %alen, float %maxid, i32** nocapture %ret_c, i32* nocapture %ret_nc) #0 {
entry:
  %conv = sext i32 %nseq to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 716, i64 %mul) #5
  %0 = bitcast i8* %call to i32*
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 717, i64 %mul) #5
  %1 = bitcast i8* %call3 to i32*
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 718, i64 %mul) #5
  %2 = bitcast i8* %call6 to i32*
  %cmp106 = icmp sgt i32 %nseq, 0
  br i1 %cmp106, label %for.body, label %while.end57

while.cond.preheader:                             ; preds = %for.body
  br i1 %cmp106, label %while.body.lr.ph, label %while.end57

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv38 = fpext float %maxid to double
  %sub39 = fsub double 1.000000e+00, %conv38
  br label %while.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv114
  %3 = trunc i64 %indvars.iv114 to i32
  store i32 %3, i32* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next115 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.body.lr.ph, %while.end
  %na.0104 = phi i32 [ %nseq, %while.body.lr.ph ], [ %na.1.lcssa, %while.end ]
  %nc.0103 = phi i32 [ 0, %while.body.lr.ph ], [ %inc56, %while.end ]
  %nb.0102 = phi i32 [ 0, %while.body.lr.ph ], [ %nb.1.lcssa, %while.end ]
  %sub = add nsw i32 %na.0104, -1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds i32* %0, i64 %idxprom10
  %4 = load i32* %arrayidx11, align 4, !tbaa !4
  %idxprom12 = sext i32 %nb.0102 to i64
  %arrayidx13 = getelementptr inbounds i32* %1, i64 %idxprom12
  store i32 %4, i32* %arrayidx13, align 4, !tbaa !4
  %inc14 = add nsw i32 %nb.0102, 1
  %cmp1697 = icmp sgt i32 %nb.0102, -1
  br i1 %cmp1697, label %while.body18, label %while.end

while.cond15.loopexit:                            ; preds = %for.cond26
  %cmp16 = icmp sgt i32 %nb.2.ph, 0
  br i1 %cmp16, label %while.body18, label %while.end

while.body18:                                     ; preds = %while.cond15.loopexit, %while.body
  %na.199 = phi i32 [ %sub, %while.body ], [ %na.2.ph, %while.cond15.loopexit ]
  %nb.198 = phi i32 [ %inc14, %while.body ], [ %nb.2.ph, %while.cond15.loopexit ]
  %sub19 = add i32 %nb.198, -1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32* %1, i64 %idxprom20
  %5 = load i32* %arrayidx21, align 4, !tbaa !4
  %idxprom23 = sext i32 %5 to i64
  %arrayidx24 = getelementptr inbounds i32* %2, i64 %idxprom23
  store i32 %nc.0103, i32* %arrayidx24, align 4, !tbaa !4
  %arrayidx31 = getelementptr inbounds i8** %aseq, i64 %idxprom23
  %6 = sext i32 %na.199 to i64
  br label %for.cond26.outer

for.cond26.outer:                                 ; preds = %if.then, %while.body18
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %if.then ], [ %6, %while.body18 ]
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %if.then ], [ %idxprom20, %while.body18 ]
  %nb.2.ph = phi i32 [ %inc52, %if.then ], [ %sub19, %while.body18 ]
  %na.2.ph = phi i32 [ %sub44, %if.then ], [ %na.199, %while.body18 ]
  %i.1.in.ph = phi i32 [ %i.1, %if.then ], [ %na.199, %while.body18 ]
  %7 = sext i32 %i.1.in.ph to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.outer, %simple_distance.exit
  %indvars.iv = phi i64 [ %7, %for.cond26.outer ], [ %indvars.iv.next, %simple_distance.exit ]
  %i.1.in = phi i32 [ %i.1.in.ph, %for.cond26.outer ], [ %i.1, %simple_distance.exit ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %i.1 = add nsw i32 %i.1.in, -1
  %8 = trunc i64 %indvars.iv to i32
  %cmp27 = icmp sgt i32 %8, 0
  br i1 %cmp27, label %for.body29, label %while.cond15.loopexit

for.body29:                                       ; preds = %for.cond26
  %9 = load i8** %arrayidx31, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %0, i64 %indvars.iv.next
  %10 = load i32* %arrayidx33, align 4, !tbaa !4
  %idxprom34 = sext i32 %10 to i64
  %arrayidx35 = getelementptr inbounds i8** %aseq, i64 %idxprom34
  %11 = load i8** %arrayidx35, align 8, !tbaa !3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %for.body29
  %s1.addr.0.i = phi i8* [ %9, %for.body29 ], [ %incdec.ptr.i, %for.inc.i ]
  %s2.addr.0.i = phi i8* [ %11, %for.body29 ], [ %incdec.ptr47.i, %for.inc.i ]
  %diff.0.i = phi i32 [ 0, %for.body29 ], [ %diff.2.i, %for.inc.i ]
  %valid.0.i = phi i32 [ 0, %for.body29 ], [ %valid.1.i, %for.inc.i ]
  %12 = load i8* %s1.addr.0.i, align 1, !tbaa !1
  switch i8 %12, label %lor.lhs.false20.i [
    i8 0, label %for.end.i
    i8 32, label %for.inc.i
    i8 46, label %for.inc.i
    i8 95, label %for.inc.i
    i8 45, label %for.inc.i
    i8 126, label %for.inc.i
  ]

lor.lhs.false20.i:                                ; preds = %for.cond.i
  %13 = load i8* %s2.addr.0.i, align 1, !tbaa !1
  switch i8 %13, label %if.end.i [
    i8 32, label %for.inc.i
    i8 46, label %for.inc.i
    i8 95, label %for.inc.i
    i8 45, label %for.inc.i
    i8 126, label %for.inc.i
  ]

if.end.i:                                         ; preds = %lor.lhs.false20.i
  %not.cmp42.i = icmp ne i8 %12, %13
  %inc.i = zext i1 %not.cmp42.i to i32
  %diff.0.inc.i = add nsw i32 %inc.i, %diff.0.i
  %inc46.i = add nsw i32 %valid.0.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %diff.2.i = phi i32 [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.inc.i, %if.end.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ]
  %valid.1.i = phi i32 [ %valid.0.i, %lor.lhs.false20.i ], [ %inc46.i, %if.end.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %s1.addr.0.i, i64 1
  %incdec.ptr47.i = getelementptr inbounds i8* %s2.addr.0.i, i64 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %cmp48.i = icmp sgt i32 %valid.0.i, 0
  br i1 %cmp48.i, label %cond.true.i, label %simple_distance.exit

cond.true.i:                                      ; preds = %for.end.i
  %conv50.i = sitofp i32 %diff.0.i to float
  %conv51.i = sitofp i32 %valid.0.i to float
  %div.i = fdiv float %conv50.i, %conv51.i
  %phitmp = fpext float %div.i to double
  br label %simple_distance.exit

simple_distance.exit:                             ; preds = %for.end.i, %cond.true.i
  %cond.i = phi double [ %phitmp, %cond.true.i ], [ 0.000000e+00, %for.end.i ]
  %cmp40 = fcmp ugt double %cond.i, %sub39
  br i1 %cmp40, label %for.cond26, label %if.then

if.then:                                          ; preds = %simple_distance.exit
  %indvars.iv.next113 = add i64 %indvars.iv112, -1
  %sub44 = add nsw i32 %na.2.ph, -1
  %arrayidx46 = getelementptr inbounds i32* %0, i64 %indvars.iv.next113
  %14 = load i32* %arrayidx46, align 4, !tbaa !4
  store i32 %14, i32* %arrayidx33, align 4, !tbaa !4
  %arrayidx51 = getelementptr inbounds i32* %1, i64 %indvars.iv109
  store i32 %10, i32* %arrayidx51, align 4, !tbaa !4
  %inc52 = add nsw i32 %nb.2.ph, 1
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  br label %for.cond26.outer

while.end:                                        ; preds = %while.cond15.loopexit, %while.body
  %na.1.lcssa = phi i32 [ %sub, %while.body ], [ %na.2.ph, %while.cond15.loopexit ]
  %nb.1.lcssa = phi i32 [ %inc14, %while.body ], [ %nb.2.ph, %while.cond15.loopexit ]
  %inc56 = add nsw i32 %nc.0103, 1
  %cmp8 = icmp sgt i32 %na.1.lcssa, 0
  br i1 %cmp8, label %while.body, label %while.end57

while.end57:                                      ; preds = %entry, %while.end, %while.cond.preheader
  %nc.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc56, %while.end ], [ 0, %entry ]
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call3) #5
  store i32* %2, i32** %ret_c, align 8, !tbaa !3
  store i32 %nc.0.lcssa, i32* %ret_nc, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PositionBasedWeights(i8** nocapture %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %rescount = alloca [26 x i32], align 16
  %0 = bitcast [26 x i32]* %rescount to i8*
  call void @llvm.lifetime.start(i64 104, i8* %0) #3
  call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #5
  %cmp141 = icmp sgt i32 %alen, 0
  br i1 %cmp141, label %for.cond1.preheader.lr.ph, label %for.cond79.preheader

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp5135 = icmp sgt i32 %nseq, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc76, %for.cond1.preheader.lr.ph
  %indvars.iv159 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next160, %for.inc76 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 104, i32 16, i1 false)
  br i1 %cmp5135, label %for.body6.lr.ph, label %for.body29

for.cond79.preheader:                             ; preds = %for.inc76, %entry
  %cmp80132 = icmp sgt i32 %nseq, 0
  br i1 %cmp80132, label %for.body82, label %for.end92

for.body6.lr.ph:                                  ; preds = %for.cond1.preheader
  %call = call i16** @__ctype_b_loc() #7
  br label %for.body6

for.body6:                                        ; preds = %for.inc23, %for.body6.lr.ph
  %indvars.iv147 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next148, %for.inc23 ]
  %arrayidx9 = getelementptr inbounds i8** %aseq, i64 %indvars.iv147
  %1 = load i8** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i8* %1, i64 %indvars.iv159
  %2 = load i8* %arrayidx10, align 1, !tbaa !1
  %idxprom11 = sext i8 %2 to i64
  %3 = load i16** %call, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i16* %3, i64 %idxprom11
  %4 = load i16* %arrayidx12, align 2, !tbaa !5
  %and = and i16 %4, 1024
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %for.inc23, label %if.then

if.then:                                          ; preds = %for.body6
  %conv = sext i8 %2 to i32
  %call19 = call i32 @toupper(i32 %conv) #5
  %sub = add nsw i32 %call19, -65
  %idxprom20 = sext i32 %sub to i64
  %arrayidx21 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %idxprom20
  %5 = load i32* %arrayidx21, align 4, !tbaa !4
  %inc22 = add nsw i32 %5, 1
  store i32 %inc22, i32* %arrayidx21, align 4, !tbaa !4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body6, %if.then
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %lftr.wideiv149 = trunc i64 %indvars.iv.next148 to i32
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %nseq
  br i1 %exitcond150, label %for.body29, label %for.body6

for.body29:                                       ; preds = %for.cond1.preheader, %for.inc23, %for.body29
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.body29 ], [ 0, %for.inc23 ], [ 0, %for.cond1.preheader ]
  %nres.0138 = phi i32 [ %inc35.nres.0, %for.body29 ], [ 0, %for.inc23 ], [ 0, %for.cond1.preheader ]
  %arrayidx31 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %indvars.iv151
  %6 = load i32* %arrayidx31, align 4, !tbaa !4
  %cmp32 = icmp sgt i32 %6, 0
  %inc35 = zext i1 %cmp32 to i32
  %inc35.nres.0 = add nsw i32 %inc35, %nres.0138
  %indvars.iv.next152 = add i64 %indvars.iv151, 1
  %lftr.wideiv153 = trunc i64 %indvars.iv.next152 to i32
  %exitcond154 = icmp eq i32 %lftr.wideiv153, 26
  br i1 %exitcond154, label %for.cond40.loopexit, label %for.body29

for.cond40.loopexit:                              ; preds = %for.body29
  br i1 %cmp5135, label %for.body43.lr.ph, label %for.inc76

for.body43.lr.ph:                                 ; preds = %for.cond40.loopexit
  %call50 = call i16** @__ctype_b_loc() #7
  br label %for.body43

for.body43:                                       ; preds = %for.inc73, %for.body43.lr.ph
  %indvars.iv155 = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next156, %for.inc73 ]
  %arrayidx46 = getelementptr inbounds i8** %aseq, i64 %indvars.iv155
  %7 = load i8** %arrayidx46, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds i8* %7, i64 %indvars.iv159
  %8 = load i8* %arrayidx47, align 1, !tbaa !1
  %idxprom49 = sext i8 %8 to i64
  %9 = load i16** %call50, align 8, !tbaa !3
  %arrayidx51 = getelementptr inbounds i16* %9, i64 %idxprom49
  %10 = load i16* %arrayidx51, align 2, !tbaa !5
  %and53 = and i16 %10, 1024
  %tobool54 = icmp eq i16 %and53, 0
  br i1 %tobool54, label %for.inc73, label %if.then55

if.then55:                                        ; preds = %for.body43
  %conv48 = sext i8 %8 to i32
  %call62 = call i32 @toupper(i32 %conv48) #5
  %sub63 = add nsw i32 %call62, -65
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %idxprom64
  %11 = load i32* %arrayidx65, align 4, !tbaa !4
  %mul = mul nsw i32 %11, %inc35.nres.0
  %conv66 = sitofp i32 %mul to float
  %conv67 = fpext float %conv66 to double
  %div = fdiv double 1.000000e+00, %conv67
  %arrayidx69 = getelementptr inbounds float* %wgt, i64 %indvars.iv155
  %12 = load float* %arrayidx69, align 4, !tbaa !0
  %conv70 = fpext float %12 to double
  %add = fadd double %div, %conv70
  %conv71 = fptrunc double %add to float
  store float %conv71, float* %arrayidx69, align 4, !tbaa !0
  br label %for.inc73

for.inc73:                                        ; preds = %for.body43, %if.then55
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %lftr.wideiv157 = trunc i64 %indvars.iv.next156 to i32
  %exitcond158 = icmp eq i32 %lftr.wideiv157, %nseq
  br i1 %exitcond158, label %for.inc76, label %for.body43

for.inc76:                                        ; preds = %for.inc73, %for.cond40.loopexit
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %alen
  br i1 %exitcond162, label %for.cond79.preheader, label %for.cond1.preheader

for.body82:                                       ; preds = %for.cond79.preheader, %for.body82
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body82 ], [ 0, %for.cond79.preheader ]
  %arrayidx84 = getelementptr inbounds i8** %aseq, i64 %indvars.iv
  %13 = load i8** %arrayidx84, align 8, !tbaa !3
  %call85 = call i32 @DealignedLength(i8* %13) #5
  %conv86 = sitofp i32 %call85 to float
  %arrayidx88 = getelementptr inbounds float* %wgt, i64 %indvars.iv
  %14 = load float* %arrayidx88, align 4, !tbaa !0
  %div89 = fdiv float %14, %conv86
  store float %div89, float* %arrayidx88, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end92, label %for.body82

for.end92:                                        ; preds = %for.body82, %for.cond79.preheader
  %conv93 = sitofp i32 %nseq to float
  %call94 = call float @FSum(float* %wgt, i32 %nseq) #5
  %div95 = fdiv float %conv93, %call94
  call void @FScale(float* %wgt, i32 %nseq, float %div95) #5
  call void @llvm.lifetime.end(i64 104, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind optsize uwtable
define void @FilterAlignment(%struct.msa_struct* %msa, float %cutoff, %struct.msa_struct** %ret_new) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !4
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 532, i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %nseq, align 4, !tbaa !4
  %conv2 = sext i32 %2 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 533, i64 %mul3) #5
  %3 = bitcast i8* %call4 to i32*
  %4 = load i32* %nseq, align 4, !tbaa !4
  %cmp83 = icmp sgt i32 %4, 0
  br i1 %cmp83, label %for.body, label %for.end49

for.cond7.preheader:                              ; preds = %for.body
  %cmp979 = icmp sgt i32 %5, 0
  br i1 %cmp979, label %for.cond12.preheader.lr.ph, label %for.end49

for.cond12.preheader.lr.ph:                       ; preds = %for.cond7.preheader
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.cond12.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv89
  store i32 0, i32* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %5 = load i32* %nseq, align 4, !tbaa !4
  %6 = trunc i64 %indvars.iv.next90 to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.cond7.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader.lr.ph, %for.inc47
  %indvars.iv87 = phi i64 [ 0, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next88, %for.inc47 ]
  %nnew.080 = phi i32 [ 0, %for.cond12.preheader.lr.ph ], [ %nnew.1, %for.inc47 ]
  %cmp1377 = icmp sgt i32 %nnew.080, 0
  br i1 %cmp1377, label %for.body15, label %if.then40

for.cond12:                                       ; preds = %for.body15
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp slt i32 %7, %nnew.080
  br i1 %cmp13, label %for.body15, label %if.then40

for.body15:                                       ; preds = %for.cond12.preheader, %for.cond12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond12 ], [ 0, %for.cond12.preheader ]
  %8 = load i8*** %aseq, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i8** %8, i64 %indvars.iv87
  %9 = load i8** %arrayidx17, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %1, i64 %indvars.iv
  %10 = load i32* %arrayidx19, align 4, !tbaa !4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds i8** %8, i64 %idxprom20
  %11 = load i8** %arrayidx22, align 8, !tbaa !3
  %call23 = tail call float @PairwiseIdentity(i8* %9, i8* %11) #5
  %cmp24 = fcmp ogt float %call23, %cutoff
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp24, label %if.then, label %for.cond12

if.then:                                          ; preds = %for.body15
  %12 = load i8*** %sqname, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i8** %12, i64 %indvars.iv87
  %13 = load i8** %arrayidx27, align 8, !tbaa !3
  %conv28 = fpext float %call23 to double
  %14 = load i32* %arrayidx19, align 4, !tbaa !4
  %idxprom31 = sext i32 %14 to i64
  %arrayidx33 = getelementptr inbounds i8** %12, i64 %idxprom31
  %15 = load i8** %arrayidx33, align 8, !tbaa !3
  %call34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), i8* %13, double %conv28, i8* %15) #5
  br label %for.inc47

if.then40:                                        ; preds = %for.cond12, %for.cond12.preheader
  %inc41 = add nsw i32 %nnew.080, 1
  %idxprom42 = sext i32 %nnew.080 to i64
  %arrayidx43 = getelementptr inbounds i32* %1, i64 %idxprom42
  %16 = trunc i64 %indvars.iv87 to i32
  store i32 %16, i32* %arrayidx43, align 4, !tbaa !4
  %arrayidx45 = getelementptr inbounds i32* %3, i64 %indvars.iv87
  store i32 1, i32* %arrayidx45, align 4, !tbaa !4
  br label %for.inc47

for.inc47:                                        ; preds = %if.then, %if.then40
  %nnew.1 = phi i32 [ %inc41, %if.then40 ], [ %nnew.080, %if.then ]
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %17 = load i32* %nseq, align 4, !tbaa !4
  %18 = trunc i64 %indvars.iv.next88 to i32
  %cmp9 = icmp slt i32 %18, %17
  br i1 %cmp9, label %for.cond12.preheader, label %for.end49

for.end49:                                        ; preds = %entry, %for.inc47, %for.cond7.preheader
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %3, %struct.msa_struct** %ret_new) #5
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call4) #5
  ret void
}

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #1

; Function Attrs: nounwind optsize uwtable
define void @SampleAlignment(%struct.msa_struct* %msa, i32 %sample, %struct.msa_struct** %ret_new) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !4
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 596, i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  %2 = load i32* %nseq, align 4, !tbaa !4
  %conv2 = sext i32 %2 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 597, i64 %mul3) #5
  %3 = bitcast i8* %call4 to i32*
  %4 = load i32* %nseq, align 4, !tbaa !4
  %cmp70 = icmp sgt i32 %4, 0
  br i1 %cmp70, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv73
  %5 = trunc i64 %indvars.iv73 to i32
  store i32 %5, i32* %arrayidx, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds i32* %3, i64 %indvars.iv73
  store i32 0, i32* %arrayidx8, align 4, !tbaa !4
  %indvars.iv.next74 = add i64 %indvars.iv73, 1
  %6 = load i32* %nseq, align 4, !tbaa !4
  %7 = trunc i64 %indvars.iv.next74 to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %4, %entry ], [ %6, %for.body ]
  %cmp10 = icmp sgt i32 %.lcssa, %sample
  %sample. = select i1 %cmp10, i32 %sample, i32 %.lcssa
  %cmp1567 = icmp sgt i32 %sample., 0
  br i1 %cmp1567, label %for.body17.lr.ph, label %for.end39

for.body17.lr.ph:                                 ; preds = %for.end
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %8 = sext i32 %.lcssa to i64
  %9 = xor i32 %.lcssa, -1
  %10 = xor i32 %sample, -1
  %11 = icmp sgt i32 %9, %10
  %smax = select i1 %11, i32 %9, i32 %10
  %12 = xor i32 %smax, -1
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv = phi i64 [ %8, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %i.168 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc38, %for.body17 ]
  %call18 = tail call double @sre_random() #5
  %13 = trunc i64 %indvars.iv to i32
  %conv19 = sitofp i32 %13 to double
  %mul20 = fmul double %conv19, %call18
  %conv21 = fptosi double %mul20 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds i32* %1, i64 %idxprom22
  %14 = load i32* %arrayidx23, align 4, !tbaa !4
  %idxprom26 = sext i32 %14 to i64
  %15 = load i8*** %sqname, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i8** %15, i64 %idxprom26
  %16 = load i8** %arrayidx27, align 8, !tbaa !3
  %call28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i32 %14, i8* %16) #5
  %17 = load i32* %arrayidx23, align 4, !tbaa !4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds i32* %3, i64 %idxprom31
  store i32 1, i32* %arrayidx32, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx34 = getelementptr inbounds i32* %1, i64 %indvars.iv.next
  %18 = load i32* %arrayidx34, align 4, !tbaa !4
  store i32 %18, i32* %arrayidx23, align 4, !tbaa !4
  %inc38 = add nsw i32 %i.168, 1
  %exitcond = icmp eq i32 %inc38, %12
  br i1 %exitcond, label %for.end39, label %for.body17

for.end39:                                        ; preds = %for.body17, %for.end
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %3, %struct.msa_struct** %ret_new) #5
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call4) #5
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
