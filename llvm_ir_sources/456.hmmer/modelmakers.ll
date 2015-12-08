; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.p7prior_s = type { i32, i32, [200 x float], [200 x [7 x float]], i32, [200 x float], [200 x [20 x float]], i32, [200 x float], [200 x [20 x float]] }

@.str = private unnamed_addr constant [55 x i8] c"Alignment must have RF annotation to hand-build an HMM\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c\00", align 1
@Alphabet_size = external global i32
@.str2 = private unnamed_addr constant [302 x i8] c"No conserved consensus columns found; aborting construction!\0AThis is an unusual situation. Reexamine your sequence alignment. It is\0Aprobably unusually full of gaps, or lots of sequence fragments. You may be\0Aable to force HMMER to model it; see the --fast (and --gapmax), or --hand\0Aoptions to hmmbuild.\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"X-PRM\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"X-PRI\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"X-PRT\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @P7Handmodelmaker(%struct.msa_struct* %msa, i8** nocapture %dsq, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %0 = load i8** %rf, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %1 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 111, i64 %mul) #5
  %2 = bitcast i8* %call to i32*
  store i32 0, i32* %2, align 4, !tbaa !3
  %3 = load i32* %alen, align 4, !tbaa !3
  %cmp270 = icmp sgt i32 %3, 0
  br i1 %cmp270, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %.pre = load i8** %rf, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx5, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8* %.pre, i64 %indvars.iv
  %4 = load i8* %arrayidx8, align 1, !tbaa !1
  switch i8 %4, label %for.inc [
    i8 32, label %if.else
    i8 46, label %if.else
    i8 95, label %if.else
    i8 45, label %if.else
    i8 126, label %if.else
  ]

if.else:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else
  %storemerge = phi i32 [ 8, %if.else ], [ 1, %for.body ]
  store i32 %storemerge, i32* %arrayidx5, align 4, !tbaa !3
  %5 = load i32* %alen, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %6, %5
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  tail call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %2, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #6
  tail call void @free(i8* %call) #5
  ret void
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** nocapture %dsq, i32* nocapture %matassign, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %cmp210 = icmp slt i32 %0, 1
  br i1 %cmp210, label %if.then3, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.body ], [ 1, %entry ]
  %M.0211 = phi i32 [ %M.0.inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %matassign, i64 %indvars.iv232
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %and = and i32 %1, 1
  %M.0.inc = add nsw i32 %and, %M.0211
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %2 = trunc i64 %indvars.iv232 to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp2 = icmp eq i32 %M.0.inc, 0
  br i1 %cmp2, label %if.then3, label %for.cond5.preheader

if.then3:                                         ; preds = %entry, %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([302 x i8]* @.str2, i64 0, i64 0)) #5
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %if.then3, %for.end
  %M.0.lcssa252 = phi i32 [ 0, %if.then3 ], [ %M.0.inc, %for.end ]
  %arrayidx7203 = getelementptr inbounds i32* %matassign, i64 1
  %3 = load i32* %arrayidx7203, align 4, !tbaa !3
  %and8204 = and i32 %3, 8
  %tobool9205 = icmp eq i32 %and8204, 0
  br i1 %tobool9205, label %for.end17, label %land.rhs

land.rhs:                                         ; preds = %for.body12, %for.cond5.preheader
  %indvars.iv230 = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next231, %for.body12 ]
  %4 = phi i32 [ %3, %for.cond5.preheader ], [ %7, %for.body12 ]
  %arrayidx7207 = phi i32* [ %arrayidx7203, %for.cond5.preheader ], [ %arrayidx7, %for.body12 ]
  %apos.1206 = phi i32 [ 1, %for.cond5.preheader ], [ %inc16, %for.body12 ]
  %5 = load i32* %alen, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv230 to i32
  %cmp11 = icmp sgt i32 %6, %5
  br i1 %cmp11, label %for.end17, label %for.body12

for.body12:                                       ; preds = %land.rhs
  %or = or i32 %4, 16
  store i32 %or, i32* %arrayidx7207, align 4, !tbaa !3
  %indvars.iv.next231 = add i64 %indvars.iv230, 1
  %inc16 = add nsw i32 %apos.1206, 1
  %arrayidx7 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next231
  %7 = load i32* %arrayidx7, align 4, !tbaa !3
  %and8 = and i32 %7, 8
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %for.end17, label %land.rhs

for.end17:                                        ; preds = %for.body12, %land.rhs, %for.cond5.preheader
  %8 = phi i32 [ %3, %for.cond5.preheader ], [ %4, %land.rhs ], [ %7, %for.body12 ]
  %arrayidx7.lcssa = phi i32* [ %arrayidx7203, %for.cond5.preheader ], [ %arrayidx7207, %land.rhs ], [ %arrayidx7, %for.body12 ]
  %apos.1.lcssa = phi i32 [ 1, %for.cond5.preheader ], [ %apos.1206, %land.rhs ], [ %inc16, %for.body12 ]
  %9 = load i32* %alen, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %apos.1.lcssa, %9
  br i1 %cmp19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %for.end17
  %or23 = or i32 %8, 2
  store i32 %or23, i32* %arrayidx7.lcssa, align 4, !tbaa !3
  %.pre = load i32* %alen, align 4, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %for.end17, %if.then20
  %10 = phi i32 [ %9, %for.end17 ], [ %.pre, %if.then20 ]
  %idxprom27192 = sext i32 %10 to i64
  %arrayidx28193 = getelementptr inbounds i32* %matassign, i64 %idxprom27192
  %11 = load i32* %arrayidx28193, align 4, !tbaa !3
  %and29194 = and i32 %11, 8
  %cmp32195 = icmp sgt i32 %10, 0
  %not.tobool30196 = icmp ne i32 %and29194, 0
  %.cmp32197 = and i1 %cmp32195, %not.tobool30196
  br i1 %.cmp32197, label %for.body34, label %for.end39

for.body34:                                       ; preds = %if.end24, %for.body34
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.body34 ], [ %idxprom27192, %if.end24 ]
  %12 = phi i32 [ %13, %for.body34 ], [ %11, %if.end24 ]
  %arrayidx28199 = phi i32* [ %arrayidx28, %for.body34 ], [ %arrayidx28193, %if.end24 ]
  %or37 = or i32 %12, 32
  store i32 %or37, i32* %arrayidx28199, align 4, !tbaa !3
  %indvars.iv.next226 = add i64 %indvars.iv225, -1
  %arrayidx28 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next226
  %13 = load i32* %arrayidx28, align 4, !tbaa !3
  %and29 = and i32 %13, 8
  %14 = trunc i64 %indvars.iv.next226 to i32
  %cmp32 = icmp sgt i32 %14, 0
  %not.tobool30 = icmp ne i32 %and29, 0
  %.cmp32 = and i1 %cmp32, %not.tobool30
  br i1 %.cmp32, label %for.body34, label %for.end39

for.end39:                                        ; preds = %for.body34, %if.end24
  %cmp32.lcssa = phi i1 [ %cmp32195, %if.end24 ], [ %cmp32, %for.body34 ]
  %.lcssa191 = phi i32 [ %11, %if.end24 ], [ %13, %for.body34 ]
  %arrayidx28.lcssa = phi i32* [ %arrayidx28193, %if.end24 ], [ %arrayidx28, %for.body34 ]
  br i1 %cmp32.lcssa, label %if.then41, label %if.end45

if.then41:                                        ; preds = %for.end39
  %or44 = or i32 %.lcssa191, 4
  store i32 %or44, i32* %arrayidx28.lcssa, align 4, !tbaa !3
  br label %if.end45

if.end45:                                         ; preds = %for.end39, %if.then41
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %15 = load i8*** %aseq, align 8, !tbaa !0
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %16 = load i32* %nseq, align 4, !tbaa !3
  %17 = load i32* %alen, align 4, !tbaa !3
  %conv.i = sext i32 %16 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 607, i64 %mul.i) #5
  %18 = bitcast i8* %call.i to %struct.p7trace_s**
  %cmp619.i = icmp sgt i32 %16, 0
  br i1 %cmp619.i, label %for.body.lr.ph.i, label %fake_tracebacks.exit

for.body.lr.ph.i:                                 ; preds = %if.end45
  %add.i = add nsw i32 %17, 6
  %cmp24607.i = icmp sgt i32 %17, 0
  br label %for.body.i

for.body.i:                                       ; preds = %trace_doctor.exit.i, %for.body.lr.ph.i
  %indvars.iv625.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next626.i, %trace_doctor.exit.i ]
  %arrayidx.i = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv625.i
  tail call void @P7AllocTrace(i32 %add.i, %struct.p7trace_s** %arrayidx.i) #5
  %19 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %19, i64 0, i32 1
  %20 = load i8** %statetype.i, align 8, !tbaa !0
  store i8 4, i8* %20, align 1, !tbaa !1
  %21 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 2
  %22 = load i32** %nodeidx.i, align 8, !tbaa !0
  store i32 0, i32* %22, align 4, !tbaa !3
  %pos.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 3
  %23 = load i32** %pos.i, align 8, !tbaa !0
  store i32 0, i32* %23, align 4, !tbaa !3
  %statetype13.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1
  %24 = load i8** %statetype13.i, align 8, !tbaa !0
  %arrayidx14.i = getelementptr inbounds i8* %24, i64 1
  store i8 5, i8* %arrayidx14.i, align 1, !tbaa !1
  %25 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx17.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 2
  %26 = load i32** %nodeidx17.i, align 8, !tbaa !0
  %arrayidx18.i = getelementptr inbounds i32* %26, i64 1
  store i32 0, i32* %arrayidx18.i, align 4, !tbaa !3
  %pos21.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 3
  %27 = load i32** %pos21.i, align 8, !tbaa !0
  %arrayidx22.i = getelementptr inbounds i32* %27, i64 1
  store i32 0, i32* %arrayidx22.i, align 4, !tbaa !3
  %statetype30608.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 1
  %28 = load i8** %statetype30608.i, align 8, !tbaa !0
  %arrayidx31609.i = getelementptr inbounds i8* %28, i64 2
  br i1 %cmp24607.i, label %for.body26.lr.ph.i, label %for.end.i

for.body26.lr.ph.i:                               ; preds = %for.body.i
  %arrayidx276.i = getelementptr inbounds i8** %15, i64 %indvars.iv625.i
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.cond23.backedge.i, %for.body26.lr.ph.i
  %indvars.iv623.i = phi i64 [ 0, %for.body26.lr.ph.i ], [ %indvars.iv.next624.i, %for.cond23.backedge.i ]
  %arrayidx31615.i = phi i8* [ %arrayidx31609.i, %for.body26.lr.ph.i ], [ %arrayidx31.i, %for.cond23.backedge.i ]
  %idxprom27614.i = phi i64 [ 2, %for.body26.lr.ph.i ], [ %idxprom27.i, %for.cond23.backedge.i ]
  %tpos.0613.i = phi i32 [ 2, %for.body26.lr.ph.i ], [ %tpos.0.be.i, %for.cond23.backedge.i ]
  %k.0611.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %k.1.i, %for.cond23.backedge.i ]
  %i.0610.i = phi i32 [ 1, %for.body26.lr.ph.i ], [ %i.1.i, %for.cond23.backedge.i ]
  store i8 0, i8* %arrayidx31615.i, align 1, !tbaa !1
  %indvars.iv.next624.i = add i64 %indvars.iv623.i, 1
  %arrayidx34.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next624.i
  %29 = load i32* %arrayidx34.i, align 4, !tbaa !3
  %and.i = and i32 %29, 2
  %tobool.i = icmp eq i32 %and.i, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body26.i
  %30 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype38.i = getelementptr inbounds %struct.p7trace_s* %30, i64 0, i32 1
  %31 = load i8** %statetype38.i, align 8, !tbaa !0
  %arrayidx39.i = getelementptr inbounds i8* %31, i64 %idxprom27614.i
  store i8 6, i8* %arrayidx39.i, align 1, !tbaa !1
  %32 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx43.i = getelementptr inbounds %struct.p7trace_s* %32, i64 0, i32 2
  %33 = load i32** %nodeidx43.i, align 8, !tbaa !0
  %arrayidx44.i = getelementptr inbounds i32* %33, i64 %idxprom27614.i
  store i32 0, i32* %arrayidx44.i, align 4, !tbaa !3
  %pos48.i = getelementptr inbounds %struct.p7trace_s* %32, i64 0, i32 3
  %34 = load i32** %pos48.i, align 8, !tbaa !0
  %arrayidx49.i = getelementptr inbounds i32* %34, i64 %idxprom27614.i
  store i32 0, i32* %arrayidx49.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %tpos.0613.i, 1
  %.pre.i = load i32* %arrayidx34.i, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body26.i
  %35 = phi i32 [ %.pre.i, %if.then.i ], [ %29, %for.body26.i ]
  %tpos.1.i = phi i32 [ %inc.i, %if.then.i ], [ %tpos.0613.i, %for.body26.i ]
  %and53.i = and i32 %35, 1
  %tobool54.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.i, label %if.else145.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %36 = load i8** %arrayidx276.i, align 8, !tbaa !0
  %arrayidx58.i = getelementptr inbounds i8* %36, i64 %indvars.iv623.i
  %37 = load i8* %arrayidx58.i, align 1, !tbaa !1
  switch i8 %37, label %if.then93.i [
    i8 32, label %if.then117.i
    i8 46, label %if.then117.i
    i8 95, label %if.then117.i
    i8 45, label %if.then117.i
    i8 126, label %if.then117.i
  ]

if.then93.i:                                      ; preds = %land.lhs.true.i
  %inc94.i = add nsw i32 %k.0611.i, 1
  %idxprom95.i = sext i32 %tpos.1.i to i64
  %38 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype98.i = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 1
  %39 = load i8** %statetype98.i, align 8, !tbaa !0
  %arrayidx99.i = getelementptr inbounds i8* %39, i64 %idxprom95.i
  store i8 1, i8* %arrayidx99.i, align 1, !tbaa !1
  %40 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx103.i = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 2
  %41 = load i32** %nodeidx103.i, align 8, !tbaa !0
  %arrayidx104.i = getelementptr inbounds i32* %41, i64 %idxprom95.i
  store i32 %inc94.i, i32* %arrayidx104.i, align 4, !tbaa !3
  %pos108.i = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 3
  %42 = load i32** %pos108.i, align 8, !tbaa !0
  %arrayidx109.i = getelementptr inbounds i32* %42, i64 %idxprom95.i
  store i32 %i.0610.i, i32* %arrayidx109.i, align 4, !tbaa !3
  %inc110.i = add nsw i32 %i.0610.i, 1
  %inc111.i = add nsw i32 %tpos.1.i, 1
  br label %if.end335.i

if.then117.i:                                     ; preds = %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i
  %inc118.i = add nsw i32 %k.0611.i, 1
  %sub.i = add nsw i32 %tpos.1.i, -1
  %idxprom119.i = sext i32 %sub.i to i64
  %43 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype122.i = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 1
  %44 = load i8** %statetype122.i, align 8, !tbaa !0
  %arrayidx123.i = getelementptr inbounds i8* %44, i64 %idxprom119.i
  %45 = load i8* %arrayidx123.i, align 1, !tbaa !1
  %cmp125.i = icmp eq i8 %45, 6
  br i1 %cmp125.i, label %if.end335.i, label %if.then127.i

if.then127.i:                                     ; preds = %if.then117.i
  %idxprom128.i = sext i32 %tpos.1.i to i64
  %arrayidx132.i = getelementptr inbounds i8* %44, i64 %idxprom128.i
  store i8 2, i8* %arrayidx132.i, align 1, !tbaa !1
  %46 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx136.i = getelementptr inbounds %struct.p7trace_s* %46, i64 0, i32 2
  %47 = load i32** %nodeidx136.i, align 8, !tbaa !0
  %arrayidx137.i = getelementptr inbounds i32* %47, i64 %idxprom128.i
  store i32 %inc118.i, i32* %arrayidx137.i, align 4, !tbaa !3
  %pos141.i = getelementptr inbounds %struct.p7trace_s* %46, i64 0, i32 3
  %48 = load i32** %pos141.i, align 8, !tbaa !0
  %arrayidx142.i = getelementptr inbounds i32* %48, i64 %idxprom128.i
  store i32 0, i32* %arrayidx142.i, align 4, !tbaa !3
  %inc143.i = add nsw i32 %tpos.1.i, 1
  br label %if.end335.i

if.else145.i:                                     ; preds = %if.end.i
  %and149.i = and i32 %35, 16
  %tobool150.i = icmp eq i32 %and149.i, 0
  %.pre629.i.pre = load i8** %arrayidx276.i, align 8, !tbaa !0
  %arrayidx277.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds i8* %.pre629.i.pre, i64 %indvars.iv623.i
  %.pre630.i.pre = load i8* %arrayidx277.phi.trans.insert.i.phi.trans.insert, align 1, !tbaa !1
  br i1 %tobool150.i, label %if.else209.i, label %land.lhs.true151.i

land.lhs.true151.i:                               ; preds = %if.else145.i
  switch i8 %.pre630.i.pre, label %if.then191.i [
    i8 32, label %if.else209.i
    i8 46, label %if.else209.i
    i8 95, label %if.else209.i
    i8 45, label %if.else209.i
    i8 126, label %if.else209.i
  ]

if.then191.i:                                     ; preds = %land.lhs.true151.i
  %idxprom192.i = sext i32 %tpos.1.i to i64
  %49 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype195.i = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1
  %50 = load i8** %statetype195.i, align 8, !tbaa !0
  %arrayidx196.i = getelementptr inbounds i8* %50, i64 %idxprom192.i
  store i8 5, i8* %arrayidx196.i, align 1, !tbaa !1
  %51 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx200.i = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 2
  %52 = load i32** %nodeidx200.i, align 8, !tbaa !0
  %arrayidx201.i = getelementptr inbounds i32* %52, i64 %idxprom192.i
  store i32 0, i32* %arrayidx201.i, align 4, !tbaa !3
  %pos205.i = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 3
  %53 = load i32** %pos205.i, align 8, !tbaa !0
  %arrayidx206.i = getelementptr inbounds i32* %53, i64 %idxprom192.i
  store i32 %i.0610.i, i32* %arrayidx206.i, align 4, !tbaa !3
  %inc207.i = add nsw i32 %i.0610.i, 1
  %inc208.i = add nsw i32 %tpos.1.i, 1
  br label %if.end335.i

if.else209.i:                                     ; preds = %if.else145.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i
  %and213.i = and i32 %35, 32
  %tobool214.i = icmp eq i32 %and213.i, 0
  br i1 %tobool214.i, label %if.else273.i, label %land.lhs.true215.i

land.lhs.true215.i:                               ; preds = %if.else209.i
  switch i8 %.pre630.i.pre, label %if.then255.i [
    i8 32, label %if.end335.i
    i8 46, label %if.end335.i
    i8 95, label %if.end335.i
    i8 45, label %if.end335.i
    i8 126, label %if.end335.i
  ]

if.then255.i:                                     ; preds = %land.lhs.true215.i
  %idxprom256.i = sext i32 %tpos.1.i to i64
  %54 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype259.i = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 1
  %55 = load i8** %statetype259.i, align 8, !tbaa !0
  %arrayidx260.i = getelementptr inbounds i8* %55, i64 %idxprom256.i
  store i8 8, i8* %arrayidx260.i, align 1, !tbaa !1
  %56 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx264.i = getelementptr inbounds %struct.p7trace_s* %56, i64 0, i32 2
  %57 = load i32** %nodeidx264.i, align 8, !tbaa !0
  %arrayidx265.i = getelementptr inbounds i32* %57, i64 %idxprom256.i
  store i32 0, i32* %arrayidx265.i, align 4, !tbaa !3
  %pos269.i = getelementptr inbounds %struct.p7trace_s* %56, i64 0, i32 3
  %58 = load i32** %pos269.i, align 8, !tbaa !0
  %arrayidx270.i = getelementptr inbounds i32* %58, i64 %idxprom256.i
  store i32 %i.0610.i, i32* %arrayidx270.i, align 4, !tbaa !3
  %inc271.i = add nsw i32 %i.0610.i, 1
  %inc272.i = add nsw i32 %tpos.1.i, 1
  br label %if.end335.i

if.else273.i:                                     ; preds = %if.else209.i
  switch i8 %.pre630.i.pre, label %if.then313.i [
    i8 32, label %if.end335.i
    i8 46, label %if.end335.i
    i8 95, label %if.end335.i
    i8 45, label %if.end335.i
    i8 126, label %if.end335.i
  ]

if.then313.i:                                     ; preds = %if.else273.i
  %idxprom314.i = sext i32 %tpos.1.i to i64
  %59 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %statetype317.i = getelementptr inbounds %struct.p7trace_s* %59, i64 0, i32 1
  %60 = load i8** %statetype317.i, align 8, !tbaa !0
  %arrayidx318.i = getelementptr inbounds i8* %60, i64 %idxprom314.i
  store i8 3, i8* %arrayidx318.i, align 1, !tbaa !1
  %61 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx322.i = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 2
  %62 = load i32** %nodeidx322.i, align 8, !tbaa !0
  %arrayidx323.i = getelementptr inbounds i32* %62, i64 %idxprom314.i
  store i32 %k.0611.i, i32* %arrayidx323.i, align 4, !tbaa !3
  %pos327.i = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 3
  %63 = load i32** %pos327.i, align 8, !tbaa !0
  %arrayidx328.i = getelementptr inbounds i32* %63, i64 %idxprom314.i
  store i32 %i.0610.i, i32* %arrayidx328.i, align 4, !tbaa !3
  %inc329.i = add nsw i32 %i.0610.i, 1
  %inc330.i = add nsw i32 %tpos.1.i, 1
  br label %if.end335.i

if.end335.i:                                      ; preds = %if.else273.i, %if.else273.i, %if.else273.i, %if.else273.i, %if.else273.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %if.then313.i, %if.then255.i, %if.then191.i, %if.then127.i, %if.then117.i, %if.then93.i
  %i.1.i = phi i32 [ %i.0610.i, %if.then127.i ], [ %i.0610.i, %if.then117.i ], [ %inc329.i, %if.then313.i ], [ %inc271.i, %if.then255.i ], [ %inc207.i, %if.then191.i ], [ %inc110.i, %if.then93.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ]
  %k.1.i = phi i32 [ %inc118.i, %if.then127.i ], [ %inc118.i, %if.then117.i ], [ %k.0611.i, %if.then313.i ], [ %k.0611.i, %if.then255.i ], [ %k.0611.i, %if.then191.i ], [ %inc94.i, %if.then93.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ]
  %tpos.2.i = phi i32 [ %inc143.i, %if.then127.i ], [ %tpos.1.i, %if.then117.i ], [ %inc330.i, %if.then313.i ], [ %inc272.i, %if.then255.i ], [ %inc208.i, %if.then191.i ], [ %inc111.i, %if.then93.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ]
  %64 = load i32* %arrayidx34.i, align 4, !tbaa !3
  %and339.i = and i32 %64, 4
  %tobool340.i = icmp eq i32 %and339.i, 0
  %.pre631.i = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  br i1 %tobool340.i, label %for.cond23.backedge.i, label %while.cond.preheader.i

for.cond23.backedge.i:                            ; preds = %while.end.i, %if.end335.i
  %65 = phi %struct.p7trace_s* [ %74, %while.end.i ], [ %.pre631.i, %if.end335.i ]
  %tpos.0.be.i = phi i32 [ %inc382.i, %while.end.i ], [ %tpos.2.i, %if.end335.i ]
  %idxprom27.i = sext i32 %tpos.0.be.i to i64
  %statetype30.i = getelementptr inbounds %struct.p7trace_s* %65, i64 0, i32 1
  %66 = load i8** %statetype30.i, align 8, !tbaa !0
  %arrayidx31.i = getelementptr inbounds i8* %66, i64 %idxprom27.i
  %lftr.wideiv = trunc i64 %indvars.iv.next624.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %17
  br i1 %exitcond, label %for.end.i, label %for.body26.i

while.cond.preheader.i:                           ; preds = %if.end335.i
  %statetype346.i = getelementptr inbounds %struct.p7trace_s* %.pre631.i, i64 0, i32 1
  %67 = load i8** %statetype346.i, align 8, !tbaa !0
  %68 = sext i32 %tpos.2.i to i64
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.preheader.i
  %indvars.iv.i = phi i64 [ %68, %while.cond.preheader.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %tpos.3.i = phi i32 [ %tpos.2.i, %while.cond.preheader.i ], [ %sub342.i, %while.cond.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %sub342.i = add nsw i32 %tpos.3.i, -1
  %arrayidx347.i = getelementptr inbounds i8* %67, i64 %indvars.iv.next.i
  %69 = load i8* %arrayidx347.i, align 1, !tbaa !1
  %cmp349.i = icmp eq i8 %69, 2
  br i1 %cmp349.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %idxprom351.i = sext i32 %tpos.3.i to i64
  %arrayidx355.i = getelementptr inbounds i8* %67, i64 %idxprom351.i
  store i8 7, i8* %arrayidx355.i, align 1, !tbaa !1
  %70 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx359.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 2
  %71 = load i32** %nodeidx359.i, align 8, !tbaa !0
  %arrayidx360.i = getelementptr inbounds i32* %71, i64 %idxprom351.i
  store i32 0, i32* %arrayidx360.i, align 4, !tbaa !3
  %pos364.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 3
  %72 = load i32** %pos364.i, align 8, !tbaa !0
  %arrayidx365.i = getelementptr inbounds i32* %72, i64 %idxprom351.i
  store i32 0, i32* %arrayidx365.i, align 4, !tbaa !3
  %inc366.i = add nsw i32 %tpos.3.i, 1
  %idxprom367.i = sext i32 %inc366.i to i64
  %statetype370.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 1
  %73 = load i8** %statetype370.i, align 8, !tbaa !0
  %arrayidx371.i = getelementptr inbounds i8* %73, i64 %idxprom367.i
  store i8 8, i8* %arrayidx371.i, align 1, !tbaa !1
  %74 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx375.i = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 2
  %75 = load i32** %nodeidx375.i, align 8, !tbaa !0
  %arrayidx376.i = getelementptr inbounds i32* %75, i64 %idxprom367.i
  store i32 0, i32* %arrayidx376.i, align 4, !tbaa !3
  %pos380.i = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 3
  %76 = load i32** %pos380.i, align 8, !tbaa !0
  %arrayidx381.i = getelementptr inbounds i32* %76, i64 %idxprom367.i
  store i32 0, i32* %arrayidx381.i, align 4, !tbaa !3
  %inc382.i = add nsw i32 %tpos.3.i, 2
  br label %for.cond23.backedge.i

for.end.i:                                        ; preds = %for.cond23.backedge.i, %for.body.i
  %arrayidx31.lcssa.i = phi i8* [ %arrayidx31609.i, %for.body.i ], [ %arrayidx31.i, %for.cond23.backedge.i ]
  %idxprom27.lcssa.i = phi i64 [ 2, %for.body.i ], [ %idxprom27.i, %for.cond23.backedge.i ]
  %tpos.0.lcssa.i = phi i32 [ 2, %for.body.i ], [ %tpos.0.be.i, %for.cond23.backedge.i ]
  %k.0.lcssa.i = phi i32 [ 0, %for.body.i ], [ %k.1.i, %for.cond23.backedge.i ]
  store i8 9, i8* %arrayidx31.lcssa.i, align 1, !tbaa !1
  %77 = load %struct.p7trace_s** %arrayidx.i, align 8, !tbaa !0
  %nodeidx393.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 2
  %78 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx394.i = getelementptr inbounds i32* %78, i64 %idxprom27.lcssa.i
  store i32 0, i32* %arrayidx394.i, align 4, !tbaa !3
  %pos398.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 3
  %79 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx399.i = getelementptr inbounds i32* %79, i64 %idxprom27.lcssa.i
  store i32 0, i32* %arrayidx399.i, align 4, !tbaa !3
  %inc400.i = add nsw i32 %tpos.0.lcssa.i, 1
  %tlen.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 0
  store i32 %inc400.i, i32* %tlen.i, align 4, !tbaa !3
  %cmp142536.i.i = icmp sgt i32 %tpos.0.lcssa.i, -1
  br i1 %cmp142536.i.i, label %while.body.lr.ph.lr.ph.lr.ph.i.i, label %trace_doctor.exit.i

while.body.lr.ph.lr.ph.lr.ph.i.i:                 ; preds = %for.end.i
  %statetype.i.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i, %if.then39.i.i, %if.then.i.i, %while.body.lr.ph.lr.ph.lr.ph.i.i
  %80 = phi i32* [ %79, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %104, %while.cond.backedge.i.i ], [ %92, %if.then39.i.i ], [ %86, %if.then.i.i ]
  %npos.016.i.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %npos.0.be.i.i, %while.cond.backedge.i.i ], [ %add57.i.i, %if.then39.i.i ], [ %add24.i.i, %if.then.i.i ]
  %opos.015.i.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %opos.0.be.i.i, %while.cond.backedge.i.i ], [ %add56.i.i, %if.then39.i.i ], [ %add23.i.i, %if.then.i.i ]
  %idxprom.i.i = sext i32 %opos.015.i.i to i64
  %81 = load i8** %statetype.i.i, align 8, !tbaa !0
  %arrayidx.i.i = getelementptr inbounds i8* %81, i64 %idxprom.i.i
  %82 = load i8* %arrayidx.i.i, align 1, !tbaa !1
  switch i8 %82, label %if.else254.i.i [
    i8 2, label %land.lhs.true.i.i
    i8 3, label %land.lhs.true31.i.i
    i8 6, label %land.lhs.true132.i.i
    i8 7, label %land.lhs.true190.i.i
  ]

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %add.i.i = add nsw i32 %opos.015.i.i, 1
  %idxprom3.i.i = sext i32 %add.i.i to i64
  %arrayidx5.i.i = getelementptr inbounds i8* %81, i64 %idxprom3.i.i
  %83 = load i8* %arrayidx5.i.i, align 1, !tbaa !1
  %cmp7.i.i = icmp eq i8 %83, 3
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.else254.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %idxprom9.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx11.i.i = getelementptr inbounds i8* %81, i64 %idxprom9.i.i
  store i8 1, i8* %arrayidx11.i.i, align 1, !tbaa !1
  %84 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx13.i.i = getelementptr inbounds i32* %84, i64 %idxprom.i.i
  %85 = load i32* %arrayidx13.i.i, align 4, !tbaa !3
  %arrayidx16.i.i = getelementptr inbounds i32* %84, i64 %idxprom9.i.i
  store i32 %85, i32* %arrayidx16.i.i, align 4, !tbaa !3
  %86 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx19.i.i = getelementptr inbounds i32* %86, i64 %idxprom3.i.i
  %87 = load i32* %arrayidx19.i.i, align 4, !tbaa !3
  %arrayidx22.i.i = getelementptr inbounds i32* %86, i64 %idxprom9.i.i
  store i32 %87, i32* %arrayidx22.i.i, align 4, !tbaa !3
  %add23.i.i = add nsw i32 %opos.015.i.i, 2
  %add24.i.i = add nsw i32 %npos.016.i.i, 1
  %88 = load i32* %tlen.i, align 4, !tbaa !3
  %cmp1425.i.i = icmp slt i32 %add23.i.i, %88
  br i1 %cmp1425.i.i, label %while.body.i.i, label %trace_doctor.exit.i

land.lhs.true31.i.i:                              ; preds = %while.body.i.i
  %add32.i.i = add nsw i32 %opos.015.i.i, 1
  %idxprom33.i.i = sext i32 %add32.i.i to i64
  %arrayidx35.i.i = getelementptr inbounds i8* %81, i64 %idxprom33.i.i
  %89 = load i8* %arrayidx35.i.i, align 1, !tbaa !1
  %cmp37.i.i = icmp eq i8 %89, 2
  br i1 %cmp37.i.i, label %if.then39.i.i, label %land.lhs.true66.i.i

if.then39.i.i:                                    ; preds = %land.lhs.true31.i.i
  %idxprom40.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx42.i.i = getelementptr inbounds i8* %81, i64 %idxprom40.i.i
  store i8 1, i8* %arrayidx42.i.i, align 1, !tbaa !1
  %90 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx46.i.i = getelementptr inbounds i32* %90, i64 %idxprom33.i.i
  %91 = load i32* %arrayidx46.i.i, align 4, !tbaa !3
  %arrayidx49.i.i = getelementptr inbounds i32* %90, i64 %idxprom40.i.i
  store i32 %91, i32* %arrayidx49.i.i, align 4, !tbaa !3
  %92 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx52.i.i = getelementptr inbounds i32* %92, i64 %idxprom.i.i
  %93 = load i32* %arrayidx52.i.i, align 4, !tbaa !3
  %arrayidx55.i.i = getelementptr inbounds i32* %92, i64 %idxprom40.i.i
  store i32 %93, i32* %arrayidx55.i.i, align 4, !tbaa !3
  %add56.i.i = add nsw i32 %opos.015.i.i, 2
  %add57.i.i = add nsw i32 %npos.016.i.i, 1
  %94 = load i32* %tlen.i, align 4, !tbaa !3
  %cmp14.i.i = icmp slt i32 %add56.i.i, %94
  br i1 %cmp14.i.i, label %while.body.i.i, label %trace_doctor.exit.i

land.lhs.true66.i.i:                              ; preds = %land.lhs.true31.i.i
  %sub.i.i = add nsw i32 %opos.015.i.i, -1
  %idxprom67.i.i = sext i32 %sub.i.i to i64
  %arrayidx69.i.i = getelementptr inbounds i8* %81, i64 %idxprom67.i.i
  %95 = load i8* %arrayidx69.i.i, align 1, !tbaa !1
  %cmp71.i.i = icmp eq i8 %95, 6
  br i1 %cmp71.i.i, label %if.then73.i.i, label %land.lhs.true98.i.i

if.then73.i.i:                                    ; preds = %land.lhs.true66.i.i
  %idxprom74.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx76.i.i = getelementptr inbounds i8* %81, i64 %idxprom74.i.i
  store i8 1, i8* %arrayidx76.i.i, align 1, !tbaa !1
  %96 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx79.i.i = getelementptr inbounds i32* %96, i64 %idxprom.i.i
  %97 = load i32* %arrayidx79.i.i, align 4, !tbaa !3
  %arrayidx82.i.i = getelementptr inbounds i32* %96, i64 %idxprom74.i.i
  store i32 %97, i32* %arrayidx82.i.i, align 4, !tbaa !3
  %98 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx85.i.i = getelementptr inbounds i32* %98, i64 %idxprom.i.i
  %99 = load i32* %arrayidx85.i.i, align 4, !tbaa !3
  %arrayidx88.i.i = getelementptr inbounds i32* %98, i64 %idxprom74.i.i
  store i32 %99, i32* %arrayidx88.i.i, align 4, !tbaa !3
  %inc90.i.i = add nsw i32 %npos.016.i.i, 1
  br label %while.cond.backedge.i.i

land.lhs.true98.i.i:                              ; preds = %land.lhs.true66.i.i
  %cmp104.i.i = icmp eq i8 %89, 7
  br i1 %cmp104.i.i, label %if.then106.i.i, label %if.else254.i.i

if.then106.i.i:                                   ; preds = %land.lhs.true98.i.i
  %idxprom107.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx109.i.i = getelementptr inbounds i8* %81, i64 %idxprom107.i.i
  store i8 1, i8* %arrayidx109.i.i, align 1, !tbaa !1
  %100 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx112.i.i = getelementptr inbounds i32* %100, i64 %idxprom.i.i
  %101 = load i32* %arrayidx112.i.i, align 4, !tbaa !3
  %add113.i.i = add nsw i32 %101, 1
  %arrayidx116.i.i = getelementptr inbounds i32* %100, i64 %idxprom107.i.i
  store i32 %add113.i.i, i32* %arrayidx116.i.i, align 4, !tbaa !3
  %102 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx119.i.i = getelementptr inbounds i32* %102, i64 %idxprom.i.i
  %103 = load i32* %arrayidx119.i.i, align 4, !tbaa !3
  %arrayidx122.i.i = getelementptr inbounds i32* %102, i64 %idxprom107.i.i
  store i32 %103, i32* %arrayidx122.i.i, align 4, !tbaa !3
  %inc124.i.i = add nsw i32 %npos.016.i.i, 1
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %if.else254.i.i, %if.then214.i.i, %if.then155.i.i, %if.then106.i.i, %if.then73.i.i
  %104 = phi i32* [ %98, %if.then73.i.i ], [ %102, %if.then106.i.i ], [ %114, %if.then155.i.i ], [ %125, %if.then214.i.i ], [ %128, %if.else254.i.i ]
  %opos.0.be.i.i = phi i32 [ %add32.i.i, %if.then73.i.i ], [ %add32.i.i, %if.then106.i.i ], [ %add133.i.pre.i, %if.then155.i.i ], [ %add252.i.i, %if.then214.i.i ], [ %inc273.i.i, %if.else254.i.i ]
  %npos.0.be.i.i = phi i32 [ %inc90.i.i, %if.then73.i.i ], [ %inc124.i.i, %if.then106.i.i ], [ %inc182.i.i, %if.then155.i.i ], [ %add253.i.i, %if.then214.i.i ], [ %inc274.i.i, %if.else254.i.i ]
  %105 = load i32* %tlen.i, align 4, !tbaa !3
  %cmp.i.i = icmp slt i32 %opos.0.be.i.i, %105
  br i1 %cmp.i.i, label %while.body.i.i, label %trace_doctor.exit.i

land.lhs.true132.i.i:                             ; preds = %while.body.i.i
  %add133.i.pre.i = add nsw i32 %opos.015.i.i, 1
  %idxprom134.i.pre.i = sext i32 %add133.i.pre.i to i64
  %arrayidx136.i.pre.i = getelementptr inbounds i8* %81, i64 %idxprom134.i.pre.i
  %106 = load i8* %arrayidx136.i.pre.i, align 1, !tbaa !1
  %cmp138.i.i = icmp eq i8 %106, 7
  br i1 %cmp138.i.i, label %land.lhs.true140.i.i, label %if.else254.i.i

land.lhs.true140.i.i:                             ; preds = %land.lhs.true132.i.i
  %sub141.i.i = add nsw i32 %opos.015.i.i, -1
  %idxprom142.i.i = sext i32 %sub141.i.i to i64
  %arrayidx144.i.i = getelementptr inbounds i8* %81, i64 %idxprom142.i.i
  %107 = load i8* %arrayidx144.i.i, align 1, !tbaa !1
  %cmp146.i.i = icmp eq i8 %107, 5
  br i1 %cmp146.i.i, label %land.lhs.true148.i.i, label %if.else254.i.i

land.lhs.true148.i.i:                             ; preds = %land.lhs.true140.i.i
  %arrayidx152.i.i = getelementptr inbounds i32* %80, i64 %idxprom142.i.i
  %108 = load i32* %arrayidx152.i.i, align 4, !tbaa !3
  %cmp153.i.i = icmp sgt i32 %108, 0
  br i1 %cmp153.i.i, label %if.then155.i.i, label %if.else254.i.i

if.then155.i.i:                                   ; preds = %land.lhs.true148.i.i
  %idxprom156.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx158.i.i = getelementptr inbounds i8* %81, i64 %idxprom156.i.i
  store i8 1, i8* %arrayidx158.i.i, align 1, !tbaa !1
  %109 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx161.i.i = getelementptr inbounds i32* %109, i64 %idxprom156.i.i
  store i32 1, i32* %arrayidx161.i.i, align 4, !tbaa !3
  %110 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx165.i.i = getelementptr inbounds i32* %110, i64 %idxprom142.i.i
  %111 = load i32* %arrayidx165.i.i, align 4, !tbaa !3
  %arrayidx168.i.i = getelementptr inbounds i32* %110, i64 %idxprom156.i.i
  store i32 %111, i32* %arrayidx168.i.i, align 4, !tbaa !3
  %sub169.i.i = add nsw i32 %npos.016.i.i, -1
  %idxprom170.i.i = sext i32 %sub169.i.i to i64
  %112 = load i8** %statetype.i.i, align 8, !tbaa !0
  %arrayidx172.i.i = getelementptr inbounds i8* %112, i64 %idxprom170.i.i
  store i8 6, i8* %arrayidx172.i.i, align 1, !tbaa !1
  %113 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx176.i.i = getelementptr inbounds i32* %113, i64 %idxprom170.i.i
  store i32 0, i32* %arrayidx176.i.i, align 4, !tbaa !3
  %114 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx180.i.i = getelementptr inbounds i32* %114, i64 %idxprom170.i.i
  store i32 0, i32* %arrayidx180.i.i, align 4, !tbaa !3
  %inc182.i.i = add nsw i32 %npos.016.i.i, 1
  br label %while.cond.backedge.i.i

land.lhs.true190.i.i:                             ; preds = %while.body.i.i
  %sub191.i.pre.i = add nsw i32 %opos.015.i.i, -1
  %idxprom192.i.pre.i = sext i32 %sub191.i.pre.i to i64
  %arrayidx194.i.pre.i = getelementptr inbounds i8* %81, i64 %idxprom192.i.pre.i
  %.pre234 = load i8* %arrayidx194.i.pre.i, align 1, !tbaa !1
  %cmp196.i.i = icmp eq i8 %.pre234, 6
  br i1 %cmp196.i.i, label %land.lhs.true198.i.i, label %if.else254.i.i

land.lhs.true198.i.i:                             ; preds = %land.lhs.true190.i.i
  %add199.i.i = add nsw i32 %opos.015.i.i, 1
  %idxprom200.i.i = sext i32 %add199.i.i to i64
  %arrayidx202.i.i = getelementptr inbounds i8* %81, i64 %idxprom200.i.i
  %115 = load i8* %arrayidx202.i.i, align 1, !tbaa !1
  %cmp204.i.i = icmp eq i8 %115, 8
  br i1 %cmp204.i.i, label %land.lhs.true206.i.i, label %if.else254.i.i

land.lhs.true206.i.i:                             ; preds = %land.lhs.true198.i.i
  %add207.i.i = add nsw i32 %opos.015.i.i, 2
  %idxprom208.i.i = sext i32 %add207.i.i to i64
  %arrayidx210.i.i = getelementptr inbounds i8* %81, i64 %idxprom208.i.i
  %116 = load i8* %arrayidx210.i.i, align 1, !tbaa !1
  %cmp212.i.i = icmp eq i8 %116, 8
  br i1 %cmp212.i.i, label %if.then214.i.i, label %if.else254.i.i

if.then214.i.i:                                   ; preds = %land.lhs.true206.i.i
  %idxprom215.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx217.i.i = getelementptr inbounds i8* %81, i64 %idxprom215.i.i
  store i8 1, i8* %arrayidx217.i.i, align 1, !tbaa !1
  %117 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx220.i.i = getelementptr inbounds i32* %117, i64 %idxprom215.i.i
  store i32 %k.0.lcssa.i, i32* %arrayidx220.i.i, align 4, !tbaa !3
  %118 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx224.i.i = getelementptr inbounds i32* %118, i64 %idxprom208.i.i
  %119 = load i32* %arrayidx224.i.i, align 4, !tbaa !3
  %arrayidx227.i.i = getelementptr inbounds i32* %118, i64 %idxprom215.i.i
  store i32 %119, i32* %arrayidx227.i.i, align 4, !tbaa !3
  %add228.i.i = add nsw i32 %npos.016.i.i, 1
  %idxprom229.i.i = sext i32 %add228.i.i to i64
  %120 = load i8** %statetype.i.i, align 8, !tbaa !0
  %arrayidx231.i.i = getelementptr inbounds i8* %120, i64 %idxprom229.i.i
  store i8 7, i8* %arrayidx231.i.i, align 1, !tbaa !1
  %121 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx235.i.i = getelementptr inbounds i32* %121, i64 %idxprom229.i.i
  store i32 0, i32* %arrayidx235.i.i, align 4, !tbaa !3
  %122 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx239.i.i = getelementptr inbounds i32* %122, i64 %idxprom229.i.i
  store i32 0, i32* %arrayidx239.i.i, align 4, !tbaa !3
  %add240.i.i = add nsw i32 %npos.016.i.i, 2
  %idxprom241.i.i = sext i32 %add240.i.i to i64
  %123 = load i8** %statetype.i.i, align 8, !tbaa !0
  %arrayidx243.i.i = getelementptr inbounds i8* %123, i64 %idxprom241.i.i
  store i8 8, i8* %arrayidx243.i.i, align 1, !tbaa !1
  %124 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx247.i.i = getelementptr inbounds i32* %124, i64 %idxprom241.i.i
  store i32 0, i32* %arrayidx247.i.i, align 4, !tbaa !3
  %125 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx251.i.i = getelementptr inbounds i32* %125, i64 %idxprom241.i.i
  store i32 0, i32* %arrayidx251.i.i, align 4, !tbaa !3
  %add252.i.i = add nsw i32 %opos.015.i.i, 3
  %add253.i.i = add nsw i32 %npos.016.i.i, 3
  br label %while.cond.backedge.i.i

if.else254.i.i:                                   ; preds = %land.lhs.true140.i.i, %land.lhs.true148.i.i, %land.lhs.true206.i.i, %land.lhs.true198.i.i, %land.lhs.true190.i.i, %land.lhs.true132.i.i, %land.lhs.true98.i.i, %land.lhs.true.i.i, %while.body.i.i
  %idxprom258.i.i = sext i32 %npos.016.i.i to i64
  %arrayidx260.i.i = getelementptr inbounds i8* %81, i64 %idxprom258.i.i
  store i8 %82, i8* %arrayidx260.i.i, align 1, !tbaa !1
  %126 = load i32** %nodeidx393.i, align 8, !tbaa !0
  %arrayidx263.i.i = getelementptr inbounds i32* %126, i64 %idxprom.i.i
  %127 = load i32* %arrayidx263.i.i, align 4, !tbaa !3
  %arrayidx266.i.i = getelementptr inbounds i32* %126, i64 %idxprom258.i.i
  store i32 %127, i32* %arrayidx266.i.i, align 4, !tbaa !3
  %128 = load i32** %pos398.i, align 8, !tbaa !0
  %arrayidx269.i.i = getelementptr inbounds i32* %128, i64 %idxprom.i.i
  %129 = load i32* %arrayidx269.i.i, align 4, !tbaa !3
  %arrayidx272.i.i = getelementptr inbounds i32* %128, i64 %idxprom258.i.i
  store i32 %129, i32* %arrayidx272.i.i, align 4, !tbaa !3
  %inc273.i.i = add nsw i32 %opos.015.i.i, 1
  %inc274.i.i = add nsw i32 %npos.016.i.i, 1
  br label %while.cond.backedge.i.i

trace_doctor.exit.i:                              ; preds = %while.cond.backedge.i.i, %if.then39.i.i, %if.then.i.i, %for.end.i
  %npos.0.lcssa.i.i = phi i32 [ 0, %for.end.i ], [ %npos.0.be.i.i, %while.cond.backedge.i.i ], [ %add57.i.i, %if.then39.i.i ], [ %add24.i.i, %if.then.i.i ]
  store i32 %npos.0.lcssa.i.i, i32* %tlen.i, align 4, !tbaa !3
  %indvars.iv.next626.i = add i64 %indvars.iv625.i, 1
  %lftr.wideiv220 = trunc i64 %indvars.iv.next626.i to i32
  %exitcond221 = icmp eq i32 %lftr.wideiv220, %16
  br i1 %exitcond221, label %fake_tracebacks.exit, label %for.body.i

fake_tracebacks.exit:                             ; preds = %trace_doctor.exit.i, %if.end45
  %call = tail call %struct.plan7_s* @AllocPlan7(i32 %M.0.lcssa252) #5
  tail call void @ZeroPlan7(%struct.plan7_s* %call) #5
  %130 = load i32* %nseq, align 4, !tbaa !3
  %cmp49189 = icmp sgt i32 %130, 0
  br i1 %cmp49189, label %for.body50.lr.ph, label %for.end59

for.body50.lr.ph:                                 ; preds = %fake_tracebacks.exit
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  br label %for.body50

for.body50:                                       ; preds = %for.body50.lr.ph, %for.body50
  %indvars.iv218 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next219, %for.body50 ]
  %arrayidx52 = getelementptr inbounds i8** %dsq, i64 %indvars.iv218
  %131 = load i8** %arrayidx52, align 8, !tbaa !0
  %132 = load float** %wgt, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds float* %132, i64 %indvars.iv218
  %133 = load float* %arrayidx54, align 4, !tbaa !4
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv218
  %134 = load %struct.p7trace_s** %arrayidx56, align 8, !tbaa !0
  tail call void @P7TraceCount(%struct.plan7_s* %call, i8* %131, float %133, %struct.p7trace_s* %134) #5
  %indvars.iv.next219 = add i64 %indvars.iv218, 1
  %135 = load i32* %nseq, align 4, !tbaa !3
  %136 = trunc i64 %indvars.iv.next219 to i32
  %cmp49 = icmp slt i32 %136, %135
  br i1 %cmp49, label %for.body50, label %for.end59

for.end59:                                        ; preds = %for.body50, %fake_tracebacks.exit
  %rf.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %137 = load i8** %rf.i, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %137, null
  br i1 %cmp.i, label %if.end23.i, label %if.then.i163

if.then.i163:                                     ; preds = %for.end59
  %rf1.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 3
  %138 = load i8** %rf1.i, align 8, !tbaa !0
  store i8 32, i8* %138, align 1, !tbaa !1
  %139 = load i32* %alen, align 4, !tbaa !3
  %cmp2555.i = icmp slt i32 %139, 1
  br i1 %cmp2555.i, label %for.end.i172, label %for.body.i166

for.body.i166:                                    ; preds = %if.then.i163, %for.inc.i
  %140 = phi i32 [ %146, %for.inc.i ], [ %139, %if.then.i163 ]
  %indvars.iv574.i = phi i64 [ %indvars.iv.next575.i, %for.inc.i ], [ 1, %if.then.i163 ]
  %k.0557.i = phi i32 [ %k.1.i169, %for.inc.i ], [ 1, %if.then.i163 ]
  %arrayidx3.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv574.i
  %141 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %and.i164 = and i32 %141, 1
  %tobool.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.i165, label %for.inc.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i166
  %142 = add nsw i64 %indvars.iv574.i, -1
  %143 = load i8** %rf.i, align 8, !tbaa !0
  %arrayidx7.i = getelementptr inbounds i8* %143, i64 %142
  %144 = load i8* %arrayidx7.i, align 1, !tbaa !1
  %cmp8.i = icmp eq i8 %144, 32
  %..i = select i1 %cmp8.i, i8 46, i8 %144
  %inc.i167 = add nsw i32 %k.0557.i, 1
  %idxprom16.i = sext i32 %k.0557.i to i64
  %145 = load i8** %rf1.i, align 8, !tbaa !0
  %arrayidx18.i168 = getelementptr inbounds i8* %145, i64 %idxprom16.i
  store i8 %..i, i8* %arrayidx18.i168, align 1, !tbaa !1
  %.pre582.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i166
  %146 = phi i32 [ %.pre582.i, %if.then4.i ], [ %140, %for.body.i166 ]
  %k.1.i169 = phi i32 [ %inc.i167, %if.then4.i ], [ %k.0557.i, %for.body.i166 ]
  %indvars.iv.next575.i = add i64 %indvars.iv574.i, 1
  %147 = trunc i64 %indvars.iv574.i to i32
  %cmp2.i = icmp slt i32 %147, %146
  br i1 %cmp2.i, label %for.body.i166, label %for.end.i172

for.end.i172:                                     ; preds = %for.inc.i, %if.then.i163
  %k.0.lcssa.i170 = phi i32 [ 1, %if.then.i163 ], [ %k.1.i169, %for.inc.i ]
  %idxprom20.i = sext i32 %k.0.lcssa.i170 to i64
  %148 = load i8** %rf1.i, align 8, !tbaa !0
  %arrayidx22.i171 = getelementptr inbounds i8* %148, i64 %idxprom20.i
  store i8 0, i8* %arrayidx22.i171, align 1, !tbaa !1
  %flags.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %149 = load i32* %flags.i, align 4, !tbaa !3
  %or.i = or i32 %149, 4
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !3
  br label %if.end23.i

if.end23.i:                                       ; preds = %for.end.i172, %for.end59
  %ss_cons.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %150 = load i8** %ss_cons.i, align 8, !tbaa !0
  %cmp24.i = icmp eq i8* %150, null
  br i1 %cmp24.i, label %if.end68.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end23.i
  %cs.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 4
  %151 = load i8** %cs.i, align 8, !tbaa !0
  store i8 32, i8* %151, align 1, !tbaa !1
  %152 = load i32* %alen, align 4, !tbaa !3
  %cmp30551.i = icmp slt i32 %152, 1
  br i1 %cmp30551.i, label %for.end62.i, label %for.body32.i

for.body32.i:                                     ; preds = %if.then26.i, %for.inc60.i
  %153 = phi i32 [ %159, %for.inc60.i ], [ %152, %if.then26.i ]
  %indvars.iv571.i = phi i64 [ %indvars.iv.next572.i, %for.inc60.i ], [ 1, %if.then26.i ]
  %k.2553.i = phi i32 [ %k.3.i, %for.inc60.i ], [ 1, %if.then26.i ]
  %arrayidx34.i173 = getelementptr inbounds i32* %matassign, i64 %indvars.iv571.i
  %154 = load i32* %arrayidx34.i173, align 4, !tbaa !3
  %and35.i = and i32 %154, 1
  %tobool36.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.i, label %for.inc60.i, label %if.then37.i

if.then37.i:                                      ; preds = %for.body32.i
  %155 = add nsw i64 %indvars.iv571.i, -1
  %156 = load i8** %ss_cons.i, align 8, !tbaa !0
  %arrayidx41.i = getelementptr inbounds i8* %156, i64 %155
  %157 = load i8* %arrayidx41.i, align 1, !tbaa !1
  %cmp43.i = icmp eq i8 %157, 32
  %.533.i = select i1 %cmp43.i, i8 46, i8 %157
  %inc55.i = add nsw i32 %k.2553.i, 1
  %idxprom56.i = sext i32 %k.2553.i to i64
  %158 = load i8** %cs.i, align 8, !tbaa !0
  %arrayidx58.i174 = getelementptr inbounds i8* %158, i64 %idxprom56.i
  store i8 %.533.i, i8* %arrayidx58.i174, align 1, !tbaa !1
  %.pre581.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.then37.i, %for.body32.i
  %159 = phi i32 [ %.pre581.i, %if.then37.i ], [ %153, %for.body32.i ]
  %k.3.i = phi i32 [ %inc55.i, %if.then37.i ], [ %k.2553.i, %for.body32.i ]
  %indvars.iv.next572.i = add i64 %indvars.iv571.i, 1
  %160 = trunc i64 %indvars.iv571.i to i32
  %cmp30.i = icmp slt i32 %160, %159
  br i1 %cmp30.i, label %for.body32.i, label %for.end62.i

for.end62.i:                                      ; preds = %for.inc60.i, %if.then26.i
  %k.2.lcssa.i = phi i32 [ 1, %if.then26.i ], [ %k.3.i, %for.inc60.i ]
  %idxprom63.i = sext i32 %k.2.lcssa.i to i64
  %161 = load i8** %cs.i, align 8, !tbaa !0
  %arrayidx65.i = getelementptr inbounds i8* %161, i64 %idxprom63.i
  store i8 0, i8* %arrayidx65.i, align 1, !tbaa !1
  %flags66.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %162 = load i32* %flags66.i, align 4, !tbaa !3
  %or67.i = or i32 %162, 8
  store i32 %or67.i, i32* %flags66.i, align 4, !tbaa !3
  br label %if.end68.i

if.end68.i:                                       ; preds = %for.end62.i, %if.end23.i
  %sa_cons.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %163 = load i8** %sa_cons.i, align 8, !tbaa !0
  %cmp69.i = icmp eq i8* %163, null
  br i1 %cmp69.i, label %for.cond114.preheader.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end68.i
  %ca.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 5
  %164 = load i8** %ca.i, align 8, !tbaa !0
  store i8 32, i8* %164, align 1, !tbaa !1
  %165 = load i32* %alen, align 4, !tbaa !3
  %cmp75547.i = icmp slt i32 %165, 1
  br i1 %cmp75547.i, label %for.end107.i, label %for.body77.i

for.body77.i:                                     ; preds = %if.then71.i, %for.inc105.i
  %166 = phi i32 [ %172, %for.inc105.i ], [ %165, %if.then71.i ]
  %indvars.iv568.i = phi i64 [ %indvars.iv.next569.i, %for.inc105.i ], [ 1, %if.then71.i ]
  %k.4549.i = phi i32 [ %k.5.i, %for.inc105.i ], [ 1, %if.then71.i ]
  %arrayidx79.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv568.i
  %167 = load i32* %arrayidx79.i, align 4, !tbaa !3
  %and80.i = and i32 %167, 1
  %tobool81.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.i, label %for.inc105.i, label %if.then82.i

if.then82.i:                                      ; preds = %for.body77.i
  %168 = add nsw i64 %indvars.iv568.i, -1
  %169 = load i8** %sa_cons.i, align 8, !tbaa !0
  %arrayidx86.i = getelementptr inbounds i8* %169, i64 %168
  %170 = load i8* %arrayidx86.i, align 1, !tbaa !1
  %cmp88.i = icmp eq i8 %170, 32
  %.534.i = select i1 %cmp88.i, i8 46, i8 %170
  %inc100.i = add nsw i32 %k.4549.i, 1
  %idxprom101.i = sext i32 %k.4549.i to i64
  %171 = load i8** %ca.i, align 8, !tbaa !0
  %arrayidx103.i = getelementptr inbounds i8* %171, i64 %idxprom101.i
  store i8 %.534.i, i8* %arrayidx103.i, align 1, !tbaa !1
  %.pre.i175 = load i32* %alen, align 4, !tbaa !3
  br label %for.inc105.i

for.inc105.i:                                     ; preds = %if.then82.i, %for.body77.i
  %172 = phi i32 [ %.pre.i175, %if.then82.i ], [ %166, %for.body77.i ]
  %k.5.i = phi i32 [ %inc100.i, %if.then82.i ], [ %k.4549.i, %for.body77.i ]
  %indvars.iv.next569.i = add i64 %indvars.iv568.i, 1
  %173 = trunc i64 %indvars.iv568.i to i32
  %cmp75.i = icmp slt i32 %173, %172
  br i1 %cmp75.i, label %for.body77.i, label %for.end107.i

for.end107.i:                                     ; preds = %for.inc105.i, %if.then71.i
  %k.4.lcssa.i = phi i32 [ 1, %if.then71.i ], [ %k.5.i, %for.inc105.i ]
  %idxprom108.i = sext i32 %k.4.lcssa.i to i64
  %174 = load i8** %ca.i, align 8, !tbaa !0
  %arrayidx110.i = getelementptr inbounds i8* %174, i64 %idxprom108.i
  store i8 0, i8* %arrayidx110.i, align 1, !tbaa !1
  %flags111.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %175 = load i32* %flags111.i, align 4, !tbaa !3
  %or112.i = or i32 %175, 8192
  store i32 %or112.i, i32* %flags111.i, align 4, !tbaa !3
  br label %for.cond114.preheader.i

for.cond114.preheader.i:                          ; preds = %if.end68.i, %for.end107.i
  %176 = load i32* %alen, align 4, !tbaa !3
  %cmp116544.i = icmp slt i32 %176, 1
  br i1 %cmp116544.i, label %for.end130.i, label %for.body118.lr.ph.i

for.body118.lr.ph.i:                              ; preds = %for.cond114.preheader.i
  %map.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 9
  br label %for.body118.i

for.body118.i:                                    ; preds = %for.inc128.i, %for.body118.lr.ph.i
  %177 = phi i32 [ %181, %for.inc128.i ], [ %176, %for.body118.lr.ph.i ]
  %indvars.iv566.i = phi i64 [ %indvars.iv.next567.i, %for.inc128.i ], [ 1, %for.body118.lr.ph.i ]
  %k.6546.i = phi i32 [ %k.7.i, %for.inc128.i ], [ 1, %for.body118.lr.ph.i ]
  %arrayidx120.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv566.i
  %178 = load i32* %arrayidx120.i, align 4, !tbaa !3
  %and121.i = and i32 %178, 1
  %tobool122.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.i, label %for.body118.for.inc128_crit_edge.i, label %if.then123.i

for.body118.for.inc128_crit_edge.i:               ; preds = %for.body118.i
  %.pre583.i = trunc i64 %indvars.iv566.i to i32
  br label %for.inc128.i

if.then123.i:                                     ; preds = %for.body118.i
  %inc124.i = add nsw i32 %k.6546.i, 1
  %idxprom125.i = sext i32 %k.6546.i to i64
  %179 = load i32** %map.i, align 8, !tbaa !0
  %arrayidx126.i = getelementptr inbounds i32* %179, i64 %idxprom125.i
  %180 = trunc i64 %indvars.iv566.i to i32
  store i32 %180, i32* %arrayidx126.i, align 4, !tbaa !3
  %.pre580.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc128.i

for.inc128.i:                                     ; preds = %if.then123.i, %for.body118.for.inc128_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre583.i, %for.body118.for.inc128_crit_edge.i ], [ %180, %if.then123.i ]
  %181 = phi i32 [ %177, %for.body118.for.inc128_crit_edge.i ], [ %.pre580.i, %if.then123.i ]
  %k.7.i = phi i32 [ %k.6546.i, %for.body118.for.inc128_crit_edge.i ], [ %inc124.i, %if.then123.i ]
  %indvars.iv.next567.i = add i64 %indvars.iv566.i, 1
  %cmp116.i = icmp slt i32 %.pre-phi.i, %181
  br i1 %cmp116.i, label %for.body118.i, label %for.end130.i

for.end130.i:                                     ; preds = %for.inc128.i, %for.cond114.preheader.i
  %flags131.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47
  %182 = load i32* %flags131.i, align 4, !tbaa !3
  %or132.i = or i32 %182, 256
  store i32 %or132.i, i32* %flags131.i, align 4, !tbaa !3
  %call.i176 = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp133.i = icmp eq i8* %call.i176, null
  br i1 %cmp133.i, label %if.end220.i, label %if.then135.i

if.then135.i:                                     ; preds = %for.end130.i
  %M.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20
  %183 = load i32* %M.i, align 4, !tbaa !3
  %add.i177 = add nsw i32 %183, 1
  %conv136.i = sext i32 %add.i177 to i64
  %mul.i178 = shl nsw i64 %conv136.i, 2
  %call137.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 896, i64 %mul.i178) #5
  %184 = bitcast i8* %call137.i to i32*
  %mpri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 12
  store i32* %184, i32** %mpri.i, align 8, !tbaa !0
  %185 = load i32* %alen, align 4, !tbaa !3
  %cmp140541.i = icmp slt i32 %185, 1
  br i1 %cmp140541.i, label %if.end220.i, label %for.body142.i

for.body142.i:                                    ; preds = %if.then135.i, %for.inc217.i
  %186 = phi i32 [ %192, %for.inc217.i ], [ %185, %if.then135.i ]
  %indvars.iv563.i = phi i64 [ %indvars.iv.next564.i, %for.inc217.i ], [ 1, %if.then135.i ]
  %k.8543.i = phi i32 [ %k.9.i, %for.inc217.i ], [ 1, %if.then135.i ]
  %arrayidx144.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv563.i
  %187 = load i32* %arrayidx144.i, align 4, !tbaa !3
  %and145.i = and i32 %187, 1
  %tobool146.i = icmp eq i32 %and145.i, 0
  br i1 %tobool146.i, label %for.inc217.i, label %if.then147.i

if.then147.i:                                     ; preds = %for.body142.i
  %188 = add nsw i64 %indvars.iv563.i, -1
  %arrayidx150.i = getelementptr inbounds i8* %call.i176, i64 %188
  %189 = load i8* %arrayidx150.i, align 1, !tbaa !1
  %conv151.i = sext i8 %189 to i32
  %idxprom152.i = sext i8 %189 to i64
  %call153.i = tail call i16** @__ctype_b_loc() #7
  %190 = load i16** %call153.i, align 8, !tbaa !0
  %arrayidx154.i = getelementptr inbounds i16* %190, i64 %idxprom152.i
  %191 = load i16* %arrayidx154.i, align 2, !tbaa !5
  %conv155.i = zext i16 %191 to i32
  %and156.i = and i32 %conv155.i, 2048
  %tobool157.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.i, label %if.else.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.then147.i
  %sub163.i = add nsw i32 %conv151.i, -48
  %idxprom164.i = sext i32 %k.8543.i to i64
  %arrayidx166.i = getelementptr inbounds i32* %184, i64 %idxprom164.i
  store i32 %sub163.i, i32* %arrayidx166.i, align 4, !tbaa !3
  br label %if.end214.i

if.else.i:                                        ; preds = %if.then147.i
  %and175.i = and i32 %conv155.i, 512
  %tobool176.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.i, label %if.else187.i, label %if.then177.i

if.then177.i:                                     ; preds = %if.else.i
  %add183.i = add nsw i32 %conv151.i, -87
  %idxprom184.i = sext i32 %k.8543.i to i64
  %arrayidx186.i = getelementptr inbounds i32* %184, i64 %idxprom184.i
  store i32 %add183.i, i32* %arrayidx186.i, align 4, !tbaa !3
  br label %if.end214.i

if.else187.i:                                     ; preds = %if.else.i
  %and196.i = and i32 %conv155.i, 256
  %tobool197.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.i, label %if.else208.i, label %if.then198.i

if.then198.i:                                     ; preds = %if.else187.i
  %add204.i = add nsw i32 %conv151.i, -55
  %idxprom205.i = sext i32 %k.8543.i to i64
  %arrayidx207.i = getelementptr inbounds i32* %184, i64 %idxprom205.i
  store i32 %add204.i, i32* %arrayidx207.i, align 4, !tbaa !3
  br label %if.end214.i

if.else208.i:                                     ; preds = %if.else187.i
  %idxprom209.i = sext i32 %k.8543.i to i64
  %arrayidx211.i = getelementptr inbounds i32* %184, i64 %idxprom209.i
  store i32 -1, i32* %arrayidx211.i, align 4, !tbaa !3
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.else208.i, %if.then198.i, %if.then177.i, %if.then158.i
  %inc215.i = add nsw i32 %k.8543.i, 1
  %.pre579.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc217.i

for.inc217.i:                                     ; preds = %if.end214.i, %for.body142.i
  %192 = phi i32 [ %.pre579.i, %if.end214.i ], [ %186, %for.body142.i ]
  %k.9.i = phi i32 [ %inc215.i, %if.end214.i ], [ %k.8543.i, %for.body142.i ]
  %indvars.iv.next564.i = add i64 %indvars.iv563.i, 1
  %193 = trunc i64 %indvars.iv563.i to i32
  %cmp140.i = icmp slt i32 %193, %192
  br i1 %cmp140.i, label %for.body142.i, label %if.end220.i

if.end220.i:                                      ; preds = %for.inc217.i, %if.then135.i, %for.end130.i
  %call221.i = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #5
  %cmp222.i = icmp eq i8* %call221.i, null
  br i1 %cmp222.i, label %if.end313.i, label %if.then224.i

if.then224.i:                                     ; preds = %if.end220.i
  %M225.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20
  %194 = load i32* %M225.i, align 4, !tbaa !3
  %add226.i = add nsw i32 %194, 1
  %conv227.i = sext i32 %add226.i to i64
  %mul228.i = shl nsw i64 %conv227.i, 2
  %call229.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 911, i64 %mul228.i) #5
  %195 = bitcast i8* %call229.i to i32*
  %ipri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 13
  store i32* %195, i32** %ipri.i, align 8, !tbaa !0
  %196 = load i32* %alen, align 4, !tbaa !3
  %cmp232538.i = icmp slt i32 %196, 1
  br i1 %cmp232538.i, label %if.end313.i, label %for.body234.i

for.body234.i:                                    ; preds = %if.then224.i, %for.inc310.i
  %197 = phi i32 [ %203, %for.inc310.i ], [ %196, %if.then224.i ]
  %indvars.iv560.i = phi i64 [ %indvars.iv.next561.i, %for.inc310.i ], [ 1, %if.then224.i ]
  %k.10540.i = phi i32 [ %k.11.i, %for.inc310.i ], [ 1, %if.then224.i ]
  %arrayidx236.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv560.i
  %198 = load i32* %arrayidx236.i, align 4, !tbaa !3
  %and237.i = and i32 %198, 1
  %tobool238.i = icmp eq i32 %and237.i, 0
  br i1 %tobool238.i, label %for.inc310.i, label %if.then239.i

if.then239.i:                                     ; preds = %for.body234.i
  %199 = add nsw i64 %indvars.iv560.i, -1
  %arrayidx242.i = getelementptr inbounds i8* %call221.i, i64 %199
  %200 = load i8* %arrayidx242.i, align 1, !tbaa !1
  %conv243.i = sext i8 %200 to i32
  %idxprom244.i = sext i8 %200 to i64
  %call245.i = tail call i16** @__ctype_b_loc() #7
  %201 = load i16** %call245.i, align 8, !tbaa !0
  %arrayidx246.i = getelementptr inbounds i16* %201, i64 %idxprom244.i
  %202 = load i16* %arrayidx246.i, align 2, !tbaa !5
  %conv247.i = zext i16 %202 to i32
  %and248.i = and i32 %conv247.i, 2048
  %tobool249.i = icmp eq i32 %and248.i, 0
  br i1 %tobool249.i, label %if.else259.i, label %if.then250.i

if.then250.i:                                     ; preds = %if.then239.i
  %sub255.i = add nsw i32 %conv243.i, -48
  %idxprom256.i179 = sext i32 %k.10540.i to i64
  %arrayidx258.i = getelementptr inbounds i32* %195, i64 %idxprom256.i179
  store i32 %sub255.i, i32* %arrayidx258.i, align 4, !tbaa !3
  br label %if.end307.i

if.else259.i:                                     ; preds = %if.then239.i
  %and268.i = and i32 %conv247.i, 512
  %tobool269.i = icmp eq i32 %and268.i, 0
  br i1 %tobool269.i, label %if.else280.i, label %if.then270.i

if.then270.i:                                     ; preds = %if.else259.i
  %add276.i = add nsw i32 %conv243.i, -87
  %idxprom277.i = sext i32 %k.10540.i to i64
  %arrayidx279.i = getelementptr inbounds i32* %195, i64 %idxprom277.i
  store i32 %add276.i, i32* %arrayidx279.i, align 4, !tbaa !3
  br label %if.end307.i

if.else280.i:                                     ; preds = %if.else259.i
  %and289.i = and i32 %conv247.i, 256
  %tobool290.i = icmp eq i32 %and289.i, 0
  br i1 %tobool290.i, label %if.else301.i, label %if.then291.i

if.then291.i:                                     ; preds = %if.else280.i
  %add297.i = add nsw i32 %conv243.i, -55
  %idxprom298.i = sext i32 %k.10540.i to i64
  %arrayidx300.i = getelementptr inbounds i32* %195, i64 %idxprom298.i
  store i32 %add297.i, i32* %arrayidx300.i, align 4, !tbaa !3
  br label %if.end307.i

if.else301.i:                                     ; preds = %if.else280.i
  %idxprom302.i = sext i32 %k.10540.i to i64
  %arrayidx304.i = getelementptr inbounds i32* %195, i64 %idxprom302.i
  store i32 -1, i32* %arrayidx304.i, align 4, !tbaa !3
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.else301.i, %if.then291.i, %if.then270.i, %if.then250.i
  %inc308.i = add nsw i32 %k.10540.i, 1
  %.pre578.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc310.i

for.inc310.i:                                     ; preds = %if.end307.i, %for.body234.i
  %203 = phi i32 [ %.pre578.i, %if.end307.i ], [ %197, %for.body234.i ]
  %k.11.i = phi i32 [ %inc308.i, %if.end307.i ], [ %k.10540.i, %for.body234.i ]
  %indvars.iv.next561.i = add i64 %indvars.iv560.i, 1
  %204 = trunc i64 %indvars.iv560.i to i32
  %cmp232.i = icmp slt i32 %204, %203
  br i1 %cmp232.i, label %for.body234.i, label %if.end313.i

if.end313.i:                                      ; preds = %for.inc310.i, %if.then224.i, %if.end220.i
  %call314.i = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #5
  %cmp315.i = icmp eq i8* %call314.i, null
  br i1 %cmp315.i, label %annotate_model.exit, label %if.then317.i

if.then317.i:                                     ; preds = %if.end313.i
  %M318.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20
  %205 = load i32* %M318.i, align 4, !tbaa !3
  %add319.i = add nsw i32 %205, 1
  %conv320.i = sext i32 %add319.i to i64
  %mul321.i = shl nsw i64 %conv320.i, 2
  %call322.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 926, i64 %mul321.i) #5
  %206 = bitcast i8* %call322.i to i32*
  %tpri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 11
  store i32* %206, i32** %tpri.i, align 8, !tbaa !0
  %207 = load i32* %alen, align 4, !tbaa !3
  %cmp325535.i = icmp slt i32 %207, 1
  br i1 %cmp325535.i, label %annotate_model.exit, label %for.body327.i

for.body327.i:                                    ; preds = %if.then317.i, %for.inc403.i
  %208 = phi i32 [ %214, %for.inc403.i ], [ %207, %if.then317.i ]
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i181, %for.inc403.i ], [ 1, %if.then317.i ]
  %k.12537.i = phi i32 [ %k.13.i, %for.inc403.i ], [ 1, %if.then317.i ]
  %arrayidx329.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv.i180
  %209 = load i32* %arrayidx329.i, align 4, !tbaa !3
  %and330.i = and i32 %209, 1
  %tobool331.i = icmp eq i32 %and330.i, 0
  br i1 %tobool331.i, label %for.inc403.i, label %if.then332.i

if.then332.i:                                     ; preds = %for.body327.i
  %210 = add nsw i64 %indvars.iv.i180, -1
  %arrayidx335.i = getelementptr inbounds i8* %call314.i, i64 %210
  %211 = load i8* %arrayidx335.i, align 1, !tbaa !1
  %conv336.i = sext i8 %211 to i32
  %idxprom337.i = sext i8 %211 to i64
  %call338.i = tail call i16** @__ctype_b_loc() #7
  %212 = load i16** %call338.i, align 8, !tbaa !0
  %arrayidx339.i = getelementptr inbounds i16* %212, i64 %idxprom337.i
  %213 = load i16* %arrayidx339.i, align 2, !tbaa !5
  %conv340.i = zext i16 %213 to i32
  %and341.i = and i32 %conv340.i, 2048
  %tobool342.i = icmp eq i32 %and341.i, 0
  br i1 %tobool342.i, label %if.else352.i, label %if.then343.i

if.then343.i:                                     ; preds = %if.then332.i
  %sub348.i = add nsw i32 %conv336.i, -48
  %idxprom349.i = sext i32 %k.12537.i to i64
  %arrayidx351.i = getelementptr inbounds i32* %206, i64 %idxprom349.i
  store i32 %sub348.i, i32* %arrayidx351.i, align 4, !tbaa !3
  br label %if.end400.i

if.else352.i:                                     ; preds = %if.then332.i
  %and361.i = and i32 %conv340.i, 512
  %tobool362.i = icmp eq i32 %and361.i, 0
  br i1 %tobool362.i, label %if.else373.i, label %if.then363.i

if.then363.i:                                     ; preds = %if.else352.i
  %add369.i = add nsw i32 %conv336.i, -87
  %idxprom370.i = sext i32 %k.12537.i to i64
  %arrayidx372.i = getelementptr inbounds i32* %206, i64 %idxprom370.i
  store i32 %add369.i, i32* %arrayidx372.i, align 4, !tbaa !3
  br label %if.end400.i

if.else373.i:                                     ; preds = %if.else352.i
  %and382.i = and i32 %conv340.i, 256
  %tobool383.i = icmp eq i32 %and382.i, 0
  br i1 %tobool383.i, label %if.else394.i, label %if.then384.i

if.then384.i:                                     ; preds = %if.else373.i
  %add390.i = add nsw i32 %conv336.i, -55
  %idxprom391.i = sext i32 %k.12537.i to i64
  %arrayidx393.i = getelementptr inbounds i32* %206, i64 %idxprom391.i
  store i32 %add390.i, i32* %arrayidx393.i, align 4, !tbaa !3
  br label %if.end400.i

if.else394.i:                                     ; preds = %if.else373.i
  %idxprom395.i = sext i32 %k.12537.i to i64
  %arrayidx397.i = getelementptr inbounds i32* %206, i64 %idxprom395.i
  store i32 -1, i32* %arrayidx397.i, align 4, !tbaa !3
  br label %if.end400.i

if.end400.i:                                      ; preds = %if.else394.i, %if.then384.i, %if.then363.i, %if.then343.i
  %inc401.i = add nsw i32 %k.12537.i, 1
  %.pre577.i = load i32* %alen, align 4, !tbaa !3
  br label %for.inc403.i

for.inc403.i:                                     ; preds = %if.end400.i, %for.body327.i
  %214 = phi i32 [ %.pre577.i, %if.end400.i ], [ %208, %for.body327.i ]
  %k.13.i = phi i32 [ %inc401.i, %if.end400.i ], [ %k.12537.i, %for.body327.i ]
  %indvars.iv.next.i181 = add i64 %indvars.iv.i180, 1
  %215 = trunc i64 %indvars.iv.i180 to i32
  %cmp325.i = icmp slt i32 %215, %214
  br i1 %cmp325.i, label %for.body327.i, label %annotate_model.exit

annotate_model.exit:                              ; preds = %for.inc403.i, %if.end313.i, %if.then317.i
  %216 = load i8** %rf.i, align 8, !tbaa !0
  %cmp60 = icmp eq i8* %216, null
  br i1 %cmp60, label %if.end63, label %if.then61

if.then61:                                        ; preds = %annotate_model.exit
  tail call void @free(i8* %216) #5
  br label %if.end63

if.end63:                                         ; preds = %annotate_model.exit, %if.then61
  %217 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %217, 1
  %conv = sext i32 %add to i64
  %call65 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 564, i64 %conv) #5
  store i8* %call65, i8** %rf.i, align 8, !tbaa !0
  %218 = load i32* %alen, align 4, !tbaa !3
  %cmp69187 = icmp sgt i32 %218, 0
  br i1 %cmp69187, label %for.body71, label %for.end83

for.body71:                                       ; preds = %for.body71, %if.end63
  %219 = phi i8* [ %call65, %if.end63 ], [ %.pre238, %for.body71 ]
  %indvars.iv216 = phi i64 [ 0, %if.end63 ], [ %indvars.iv.next217, %for.body71 ]
  %indvars.iv.next217 = add i64 %indvars.iv216, 1
  %arrayidx74 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next217
  %220 = load i32* %arrayidx74, align 4, !tbaa !3
  %and75 = and i32 %220, 1
  %tobool76 = icmp ne i32 %and75, 0
  %conv77 = select i1 %tobool76, i8 120, i8 46
  %arrayidx80 = getelementptr inbounds i8* %219, i64 %indvars.iv216
  store i8 %conv77, i8* %arrayidx80, align 1, !tbaa !1
  %221 = load i32* %alen, align 4, !tbaa !3
  %222 = trunc i64 %indvars.iv.next217 to i32
  %cmp69 = icmp slt i32 %222, %221
  %.pre238 = load i8** %rf.i, align 8, !tbaa !0
  br i1 %cmp69, label %for.body71, label %for.end83

for.end83:                                        ; preds = %for.body71, %if.end63
  %223 = phi i8* [ %call65, %if.end63 ], [ %.pre238, %for.body71 ]
  %.lcssa = phi i32 [ %218, %if.end63 ], [ %221, %for.body71 ]
  %idxprom85 = sext i32 %.lcssa to i64
  %arrayidx87 = getelementptr inbounds i8* %223, i64 %idxprom85
  store i8 0, i8* %arrayidx87, align 1, !tbaa !1
  %cmp88 = icmp eq %struct.p7trace_s*** %ret_tr, null
  br i1 %cmp88, label %for.cond91.preheader, label %if.then90

for.cond91.preheader:                             ; preds = %for.end83
  %224 = load i32* %nseq, align 4, !tbaa !3
  %cmp93185 = icmp sgt i32 %224, 0
  br i1 %cmp93185, label %for.body95, label %for.end100

if.then90:                                        ; preds = %for.end83
  store %struct.p7trace_s** %18, %struct.p7trace_s*** %ret_tr, align 8, !tbaa !0
  br label %if.end101

for.body95:                                       ; preds = %for.cond91.preheader, %for.body95
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body95 ], [ 0, %for.cond91.preheader ]
  %arrayidx97 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv
  %225 = load %struct.p7trace_s** %arrayidx97, align 8, !tbaa !0
  tail call void @P7FreeTrace(%struct.p7trace_s* %225) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %226 = load i32* %nseq, align 4, !tbaa !3
  %227 = trunc i64 %indvars.iv.next to i32
  %cmp93 = icmp slt i32 %227, %226
  br i1 %cmp93, label %for.body95, label %for.end100

for.end100:                                       ; preds = %for.body95, %for.cond91.preheader
  tail call void @free(i8* %call.i) #5
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %if.then90
  %cmp102 = icmp eq %struct.plan7_s** %ret_hmm, null
  br i1 %cmp102, label %if.else105, label %if.then104

if.then104:                                       ; preds = %if.end101
  store %struct.plan7_s* %call, %struct.plan7_s** %ret_hmm, align 8, !tbaa !0
  br label %if.end106

if.else105:                                       ; preds = %if.end101
  tail call void @FreePlan7(%struct.plan7_s* %call) #5
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @P7Fastmodelmaker(%struct.msa_struct* %msa, i8** nocapture %dsq, float %maxgap, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 172, i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  store i32 0, i32* %1, align 4, !tbaa !3
  %2 = load i32* %alen, align 4, !tbaa !3
  %cmp101 = icmp sgt i32 %2, 0
  br i1 %cmp101, label %for.body.lr.ph, label %for.end68

for.body.lr.ph:                                   ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv103 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next104, %for.end ]
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %arrayidx4 = getelementptr inbounds i32* %1, i64 %indvars.iv.next104
  store i32 0, i32* %arrayidx4, align 4, !tbaa !3
  %3 = load i32* %nseq, align 4, !tbaa !3
  %cmp697 = icmp sgt i32 %3, 0
  br i1 %cmp697, label %for.body8.lr.ph, label %for.end

for.body8.lr.ph:                                  ; preds = %for.body
  %4 = load i8*** %aseq, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %ngap.099 = phi i32 [ 0, %for.body8.lr.ph ], [ %ngap.1, %for.inc ]
  %arrayidx11 = getelementptr inbounds i8** %4, i64 %indvars.iv
  %5 = load i8** %arrayidx11, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i8* %5, i64 %indvars.iv103
  %6 = load i8* %arrayidx12, align 1, !tbaa !1
  switch i8 %6, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ]

if.then:                                          ; preds = %for.body8, %for.body8, %for.body8, %for.body8, %for.body8
  %inc = add nsw i32 %ngap.099, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %if.then
  %ngap.1 = phi i32 [ %inc, %if.then ], [ %ngap.099, %for.body8 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %7, %3
  br i1 %cmp6, label %for.body8, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %ngap.0.lcssa = phi i32 [ 0, %for.body ], [ %ngap.1, %for.inc ]
  %conv52 = sitofp i32 %ngap.0.lcssa to float
  %conv54 = sitofp i32 %3 to float
  %div = fdiv float %conv52, %conv54
  %cmp55 = fcmp ogt float %div, %maxgap
  %storemerge.v = select i1 %cmp55, i32 8, i32 1
  store i32 %storemerge.v, i32* %arrayidx4, align 4, !tbaa !3
  %8 = load i32* %alen, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next104 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.end68

for.end68:                                        ; preds = %for.end, %entry
  tail call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %1, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #6
  tail call void @free(i8* %call) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7Maxmodelmaker(%struct.msa_struct* %msa, i8** nocapture %dsq, float %maxgap, %struct.p7prior_s* %prior, float* nocapture %null, float %null_p1, float %mpri, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %cij = alloca [8 x float], align 16
  %tij = alloca [8 x float], align 16
  %matp = alloca [20 x float], align 16
  %insp = alloca [20 x float], align 16
  %insc = alloca [20 x float], align 16
  %0 = bitcast [20 x float]* %matp to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  %1 = bitcast [20 x float]* %insp to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #3
  %2 = bitcast [20 x float]* %insc to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #3
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %3 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 255, i64 %mul) #5
  %4 = bitcast i8* %call to float**
  %5 = load i32* %alen, align 4, !tbaa !3
  %add2 = add nsw i32 %5, 2
  %conv3 = sext i32 %add2 to i64
  %mul4 = shl nsw i64 %conv3, 2
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 256, i64 %mul4) #5
  %6 = bitcast i8* %call5 to float*
  %7 = load i32* %alen, align 4, !tbaa !3
  %add7 = add nsw i32 %7, 2
  %conv8 = sext i32 %add7 to i64
  %mul9 = shl nsw i64 %conv8, 2
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 257, i64 %mul9) #5
  %8 = bitcast i8* %call10 to i32*
  %9 = load i32* %alen, align 4, !tbaa !3
  %add12 = add nsw i32 %9, 1
  %conv13 = sext i32 %add12 to i64
  %mul14 = shl nsw i64 %conv13, 2
  %call15 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 258, i64 %mul14) #5
  %10 = bitcast i8* %call15 to i32*
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %11 = load i32* %nseq, align 4, !tbaa !3
  %conv16 = sext i32 %11 to i64
  %mul17 = shl nsw i64 %conv16, 2
  %call18 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 259, i64 %mul17) #5
  %12 = bitcast i8* %call18 to i32*
  %13 = load i32* %alen, align 4, !tbaa !3
  %cmp1014 = icmp sgt i32 %13, 0
  br i1 %cmp1014, label %for.body, label %for.end97

for.cond28.preheader:                             ; preds = %for.body
  %cmp301012 = icmp sgt i32 %17, 0
  br i1 %cmp301012, label %for.cond33.preheader.lr.ph, label %for.end97

for.cond33.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %.pre1063 = load i32* %nseq, align 4, !tbaa !3
  br label %for.cond33.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %for.body ], [ 0, %entry ]
  %14 = load i32* @Alphabet_size, align 4, !tbaa !3
  %conv21 = sext i32 %14 to i64
  %mul22 = shl nsw i64 %conv21, 2
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 261, i64 %mul22) #5
  %15 = bitcast i8* %call23 to float*
  %indvars.iv.next1059 = add i64 %indvars.iv1058, 1
  %arrayidx = getelementptr inbounds float** %4, i64 %indvars.iv.next1059
  store float* %15, float** %arrayidx, align 8, !tbaa !0
  %16 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FSet(float* %15, i32 %16, float 0.000000e+00) #5
  %17 = load i32* %alen, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv.next1059 to i32
  %cmp = icmp slt i32 %18, %17
  br i1 %cmp, label %for.body, label %for.cond28.preheader

for.cond33.preheader:                             ; preds = %for.cond33.preheader.lr.ph, %for.inc95
  %19 = phi i32 [ %17, %for.cond33.preheader.lr.ph ], [ %31, %for.inc95 ]
  %20 = phi i32 [ %.pre1063, %for.cond33.preheader.lr.ph ], [ %32, %for.inc95 ]
  %indvars.iv1055 = phi i64 [ 0, %for.cond33.preheader.lr.ph ], [ %21, %for.inc95 ]
  %cmp351010 = icmp sgt i32 %20, 0
  %21 = add i64 %indvars.iv1055, 1
  br i1 %cmp351010, label %for.body37.lr.ph, label %for.inc95

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %arrayidx82 = getelementptr inbounds float** %4, i64 %21
  br label %for.body37

for.body37:                                       ; preds = %for.inc92, %for.body37.lr.ph
  %22 = phi i32 [ %20, %for.body37.lr.ph ], [ %29, %for.inc92 ]
  %indvars.iv1053 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next1054, %for.inc92 ]
  %23 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx40 = getelementptr inbounds i8** %23, i64 %indvars.iv1053
  %24 = load i8** %arrayidx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i8* %24, i64 %indvars.iv1055
  %25 = load i8* %arrayidx41, align 1, !tbaa !1
  switch i8 %25, label %if.then [
    i8 32, label %for.inc92
    i8 46, label %for.inc92
    i8 95, label %for.inc92
    i8 45, label %for.inc92
    i8 126, label %for.inc92
  ]

if.then:                                          ; preds = %for.body37
  %26 = load float** %arrayidx82, align 8, !tbaa !0
  %call88 = call i32 @SymbolIndex(i8 signext %25) #5
  %conv89 = trunc i32 %call88 to i8
  %27 = load float** %wgt, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds float* %27, i64 %indvars.iv1053
  %28 = load float* %arrayidx91, align 4, !tbaa !4
  call void @P7CountSymbol(float* %26, i8 signext %conv89, float %28) #5
  %.pre1064 = load i32* %nseq, align 4, !tbaa !3
  br label %for.inc92

for.inc92:                                        ; preds = %for.body37, %for.body37, %for.body37, %for.body37, %for.body37, %if.then
  %29 = phi i32 [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %.pre1064, %if.then ]
  %indvars.iv.next1054 = add i64 %indvars.iv1053, 1
  %30 = trunc i64 %indvars.iv.next1054 to i32
  %cmp35 = icmp slt i32 %30, %29
  br i1 %cmp35, label %for.body37, label %for.cond33.for.inc95_crit_edge

for.cond33.for.inc95_crit_edge:                   ; preds = %for.inc92
  %.pre1065 = load i32* %alen, align 4, !tbaa !3
  br label %for.inc95

for.inc95:                                        ; preds = %for.cond33.preheader, %for.cond33.for.inc95_crit_edge
  %31 = phi i32 [ %.pre1065, %for.cond33.for.inc95_crit_edge ], [ %19, %for.cond33.preheader ]
  %32 = phi i32 [ %29, %for.cond33.for.inc95_crit_edge ], [ %20, %for.cond33.preheader ]
  %33 = trunc i64 %21 to i32
  %cmp30 = icmp slt i32 %33, %31
  br i1 %cmp30, label %for.cond33.preheader, label %for.end97

for.end97:                                        ; preds = %entry, %for.inc95, %for.cond28.preheader
  %cmp98 = fcmp ogt float %mpri, 0.000000e+00
  br i1 %cmp98, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.end97
  %conv100 = fpext float %mpri to double
  %call101 = call double @log(double %conv100) #5
  %mul102 = fmul double %call101, 0x3FF7154764EE6C2F
  %phitmp = fptrunc double %mul102 to float
  br label %cond.end

cond.end:                                         ; preds = %for.end97, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.999000e+03, %for.end97 ]
  %arraydecay = getelementptr inbounds [20 x float]* %insp, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 9, i64 0, i64 0
  %34 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FCopy(float* %arraydecay, float* %arraydecay106, i32 %34) #5
  %35 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FNorm(float* %arraydecay, i32 %35) #5
  %wgt108 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %36 = load float** %wgt108, align 8, !tbaa !0
  %37 = load i32* %nseq, align 4, !tbaa !3
  %call110 = call float @FSum(float* %36, i32 %37) #5
  %38 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp1121008 = icmp sgt i32 %38, 0
  br i1 %cmp1121008, label %for.body114, label %for.end138

for.body114:                                      ; preds = %cond.end, %cond.end131
  %39 = phi i32 [ %42, %cond.end131 ], [ %38, %cond.end ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %cond.end131 ], [ 0, %cond.end ]
  %arrayidx116 = getelementptr inbounds [20 x float]* %insp, i64 0, i64 %indvars.iv1051
  %40 = load float* %arrayidx116, align 4, !tbaa !4
  %arrayidx118 = getelementptr inbounds float* %null, i64 %indvars.iv1051
  %41 = load float* %arrayidx118, align 4, !tbaa !4
  %div = fdiv float %40, %41
  %cmp119 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp119, label %cond.true121, label %cond.end131

cond.true121:                                     ; preds = %for.body114
  %conv127 = fpext float %div to double
  %call128 = call double @log(double %conv127) #5
  %mul129 = fmul double %call128, 0x3FF7154764EE6C2F
  %phitmp953 = fptrunc double %mul129 to float
  %.pre1062 = load i32* @Alphabet_size, align 4, !tbaa !3
  br label %cond.end131

cond.end131:                                      ; preds = %for.body114, %cond.true121
  %42 = phi i32 [ %.pre1062, %cond.true121 ], [ %39, %for.body114 ]
  %cond132 = phi float [ %phitmp953, %cond.true121 ], [ -9.999000e+03, %for.body114 ]
  store float %cond132, float* %arrayidx116, align 4, !tbaa !4
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1
  %43 = trunc i64 %indvars.iv.next1052 to i32
  %cmp112 = icmp slt i32 %43, %42
  br i1 %cmp112, label %for.body114, label %for.end138

for.end138:                                       ; preds = %cond.end131, %cond.end
  %44 = load i32* %nseq, align 4, !tbaa !3
  %cmp17.i = icmp sgt i32 %44, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %estimate_model_length.exit

for.body.lr.ph.i:                                 ; preds = %for.end138
  %aseq.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %.pre.i = load float** %wgt108, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %45 = phi float* [ %.pre.i, %for.body.lr.ph.i ], [ %49, %for.body.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %wgtsum.020.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add6.i, %for.body.i ]
  %total.019.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds float* %45, i64 %indvars.iv.i
  %46 = load float* %arrayidx.i, align 4, !tbaa !4
  %47 = load i8*** %aseq.i, align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds i8** %47, i64 %indvars.iv.i
  %48 = load i8** %arrayidx2.i, align 8, !tbaa !0
  %call.i = call i32 @DealignedLength(i8* %48) #5
  %conv.i = sitofp i32 %call.i to float
  %mul.i = fmul float %46, %conv.i
  %add.i = fadd float %total.019.i, %mul.i
  %49 = load float** %wgt108, align 8, !tbaa !0
  %arrayidx5.i = getelementptr inbounds float* %49, i64 %indvars.iv.i
  %50 = load float* %arrayidx5.i, align 4, !tbaa !4
  %add6.i = fadd float %wgtsum.020.i, %50
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %51 = load i32* %nseq, align 4, !tbaa !3
  %52 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %52, %51
  br i1 %cmp.i, label %for.body.i, label %estimate_model_length.exit

estimate_model_length.exit:                       ; preds = %for.body.i, %for.end138
  %wgtsum.0.lcssa.i = phi float [ 0.000000e+00, %for.end138 ], [ %add6.i, %for.body.i ]
  %total.0.lcssa.i = phi float [ 0.000000e+00, %for.end138 ], [ %add.i, %for.body.i ]
  %div.i = fdiv float %total.0.lcssa.i, %wgtsum.0.lcssa.i
  %conv7.i = fptosi float %div.i to i32
  %sub = add nsw i32 %conv7.i, -1
  %conv140 = sitofp i32 %sub to float
  %conv148 = fdiv float 5.000000e-01, %conv140
  %div149 = fdiv float 5.000000e-01, %null_p1
  %cmp150 = fcmp ogt float %div149, 0.000000e+00
  br i1 %cmp150, label %cond.true152, label %cond.end158

cond.true152:                                     ; preds = %estimate_model_length.exit
  %conv154 = fpext float %div149 to double
  %call155 = call double @log(double %conv154) #5
  %mul156 = fmul double %call155, 0x3FF7154764EE6C2F
  %phitmp943 = fptrunc double %mul156 to float
  br label %cond.end158

cond.end158:                                      ; preds = %estimate_model_length.exit, %cond.true152
  %cond159 = phi float [ %phitmp943, %cond.true152 ], [ -9.999000e+03, %estimate_model_length.exit ]
  %div161 = fdiv float %conv148, %null_p1
  %cmp162 = fcmp ogt float %div161, 0.000000e+00
  br i1 %cmp162, label %cond.true164, label %cond.end170

cond.true164:                                     ; preds = %cond.end158
  %conv166 = fpext float %div161 to double
  %call167 = call double @log(double %conv166) #5
  %mul168 = fmul double %call167, 0x3FF7154764EE6C2F
  %phitmp944 = fptrunc double %mul168 to float
  br label %cond.end170

cond.end170:                                      ; preds = %cond.end158, %cond.true164
  %cond171 = phi float [ %phitmp944, %cond.true164 ], [ -9.999000e+03, %cond.end158 ]
  %53 = load i32* %alen, align 4, !tbaa !3
  %cmp1751005 = icmp sgt i32 %53, 0
  br i1 %cmp1751005, label %for.cond178.preheader.lr.ph, label %for.end247

for.cond178.preheader.lr.ph:                      ; preds = %cond.end170
  %54 = load i32* %nseq, align 4, !tbaa !3
  %cmp180998 = icmp sgt i32 %54, 0
  %aseq186 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %55 = sext i32 %53 to i64
  br label %for.cond178.preheader

for.cond174:                                      ; preds = %for.end237
  %56 = trunc i64 %57 to i32
  %cmp175 = icmp sgt i32 %56, 0
  br i1 %cmp175, label %for.cond178.preheader, label %for.end247

for.cond178.preheader:                            ; preds = %for.cond178.preheader.lr.ph, %for.cond174
  %indvars.iv1048 = phi i64 [ %55, %for.cond178.preheader.lr.ph ], [ %57, %for.cond174 ]
  %last.01006 = phi i32 [ %53, %for.cond178.preheader.lr.ph ], [ %dec, %for.cond174 ]
  %57 = add i64 %indvars.iv1048, -1
  br i1 %cmp180998, label %for.body182.lr.ph, label %for.end237

for.body182.lr.ph:                                ; preds = %for.cond178.preheader
  %58 = load i8*** %aseq186, align 8, !tbaa !0
  br label %for.body182

for.body182:                                      ; preds = %for.body182.lr.ph, %for.inc235
  %indvars.iv1044 = phi i64 [ 0, %for.body182.lr.ph ], [ %indvars.iv.next1045, %for.inc235 ]
  %ngap.01000 = phi i32 [ 0, %for.body182.lr.ph ], [ %ngap.1, %for.inc235 ]
  %arrayidx187 = getelementptr inbounds i8** %58, i64 %indvars.iv1044
  %59 = load i8** %arrayidx187, align 8, !tbaa !0
  %arrayidx188 = getelementptr inbounds i8* %59, i64 %57
  %60 = load i8* %arrayidx188, align 1, !tbaa !1
  switch i8 %60, label %for.inc235 [
    i8 32, label %if.then232
    i8 46, label %if.then232
    i8 95, label %if.then232
    i8 45, label %if.then232
    i8 126, label %if.then232
  ]

if.then232:                                       ; preds = %for.body182, %for.body182, %for.body182, %for.body182, %for.body182
  %inc233 = add nsw i32 %ngap.01000, 1
  br label %for.inc235

for.inc235:                                       ; preds = %for.body182, %if.then232
  %ngap.1 = phi i32 [ %inc233, %if.then232 ], [ %ngap.01000, %for.body182 ]
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1
  %61 = trunc i64 %indvars.iv.next1045 to i32
  %cmp180 = icmp slt i32 %61, %54
  br i1 %cmp180, label %for.body182, label %for.end237

for.end237:                                       ; preds = %for.cond178.preheader, %for.inc235
  %ngap.0.lcssa = phi i32 [ %ngap.1, %for.inc235 ], [ 0, %for.cond178.preheader ]
  %conv238 = sitofp i32 %ngap.0.lcssa to float
  %conv240 = sitofp i32 %54 to float
  %div241 = fdiv float %conv238, %conv240
  %cmp242 = fcmp ugt float %div241, 5.000000e-01
  %dec = add nsw i32 %last.01006, -1
  br i1 %cmp242, label %for.cond174, label %for.end247

for.end247:                                       ; preds = %for.cond174, %for.end237, %cond.end170
  %last.0.lcssa = phi i32 [ %53, %cond.end170 ], [ %last.01006, %for.end237 ], [ %dec, %for.cond174 ]
  %idxprom248 = sext i32 %last.0.lcssa to i64
  %arrayidx249 = getelementptr inbounds float* %6, i64 %idxprom248
  store float 0.000000e+00, float* %arrayidx249, align 4, !tbaa !4
  %arrayidx251 = getelementptr inbounds i32* %8, i64 %idxprom248
  store i32 0, i32* %arrayidx251, align 4, !tbaa !3
  %62 = load i32* %nseq, align 4, !tbaa !3
  %cmp254995 = icmp sgt i32 %62, 0
  br i1 %cmp254995, label %for.cond257.preheader.lr.ph, label %for.cond322.preheader

for.cond257.preheader.lr.ph:                      ; preds = %for.end247
  %cmp258993 = icmp sgt i32 %last.0.lcssa, 0
  %aseq263 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %for.cond257.preheader.lr.ph, %for.inc318
  %indvars.iv1042 = phi i64 [ 0, %for.cond257.preheader.lr.ph ], [ %indvars.iv.next1043, %for.inc318 ]
  br i1 %cmp258993, label %land.rhs, label %for.inc318

for.cond322.preheader:                            ; preds = %for.inc318, %for.end247
  %i.3989 = add i32 %last.0.lcssa, -1
  %cmp323990 = icmp sgt i32 %i.3989, 0
  br i1 %cmp323990, label %for.body325.lr.ph, label %for.cond598.preheader

for.body325.lr.ph:                                ; preds = %for.cond322.preheader
  %arraydecay326 = getelementptr inbounds [20 x float]* %matp, i64 0, i64 0
  %mnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 4
  %arraydecay330 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 5, i64 0
  %arraydecay331 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 6, i64 0
  %arraydecay361 = getelementptr inbounds [20 x float]* %insc, i64 0, i64 0
  %mul590 = fmul float %cond, %call110
  %aseq379 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %arraydecay382 = getelementptr inbounds [8 x float]* %cij, i64 0, i64 0
  %arrayidx84.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 1
  %arrayidx90.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 4
  %arrayidx94.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 3
  %arrayidx187.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 2
  %arrayidx253.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 5
  %arrayidx248.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 6
  %arraydecay391 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 0
  %arraydecay394 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 2, i64 0
  %arrayidx411 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 1
  %arrayidx426 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 2
  %arrayidx439 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 3
  %arrayidx454 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 4
  %arrayidx469 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 5
  %arrayidx484 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 6
  %63 = sext i32 %i.3989 to i64
  br label %for.body325

land.rhs:                                         ; preds = %for.body308, %for.cond257.preheader
  %indvars.iv1040 = phi i64 [ %idxprom248, %for.cond257.preheader ], [ %indvars.iv.next1041, %for.body308 ]
  %indvars.iv.next1041 = add i64 %indvars.iv1040, -1
  %64 = load i8*** %aseq263, align 8, !tbaa !0
  %arrayidx264 = getelementptr inbounds i8** %64, i64 %indvars.iv1042
  %65 = load i8** %arrayidx264, align 8, !tbaa !0
  %arrayidx265 = getelementptr inbounds i8* %65, i64 %indvars.iv.next1041
  %66 = load i8* %arrayidx265, align 1, !tbaa !1
  switch i8 %66, label %for.inc318 [
    i8 32, label %for.body308
    i8 46, label %for.body308
    i8 95, label %for.body308
    i8 45, label %for.body308
    i8 126, label %for.body308
  ]

for.body308:                                      ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  store i8 95, i8* %arrayidx265, align 1, !tbaa !1
  %67 = trunc i64 %indvars.iv.next1041 to i32
  %cmp258 = icmp sgt i32 %67, 0
  br i1 %cmp258, label %land.rhs, label %for.inc318

for.inc318:                                       ; preds = %for.body308, %land.rhs, %for.cond257.preheader
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1
  %68 = load i32* %nseq, align 4, !tbaa !3
  %69 = trunc i64 %indvars.iv.next1043 to i32
  %cmp254 = icmp slt i32 %69, %68
  br i1 %cmp254, label %for.cond257.preheader, label %for.cond322.preheader

for.cond598.preheader:                            ; preds = %for.end585, %for.cond322.preheader
  %cmp599974 = icmp slt i32 %last.0.lcssa, 1
  br i1 %cmp599974, label %for.end671, label %for.body601.lr.ph

for.body601.lr.ph:                                ; preds = %for.cond598.preheader
  %70 = load i32* %nseq, align 4, !tbaa !3
  %cmp606971 = icmp sgt i32 %70, 0
  %aseq612 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %71 = add i32 %last.0.lcssa, 1
  br label %for.body601

for.body325:                                      ; preds = %for.body325.lr.ph, %for.end585
  %indvars.iv1037 = phi i64 [ %63, %for.body325.lr.ph ], [ %indvars.iv.next1038, %for.end585 ]
  %indvars.iv1030 = phi i32 [ %last.0.lcssa, %for.body325.lr.ph ], [ %indvars.iv.next1031, %for.end585 ]
  %i.3992 = phi i32 [ %i.3989, %for.body325.lr.ph ], [ %i.3, %for.end585 ]
  %72 = sext i32 %indvars.iv1030 to i64
  %arrayidx328 = getelementptr inbounds float** %4, i64 %indvars.iv1037
  %73 = load float** %arrayidx328, align 8, !tbaa !0
  %74 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FCopy(float* %arraydecay326, float* %73, i32 %74) #5
  %75 = load i32* %mnum, align 4, !tbaa !3
  call void @P7PriorifyEmissionVector(float* %arraydecay326, %struct.p7prior_s* %prior, i32 %75, float* %arraydecay330, [20 x float]* %arraydecay331, float* null) #5
  %76 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp333979 = icmp sgt i32 %76, 0
  br i1 %cmp333979, label %for.body335, label %for.end360

for.body335:                                      ; preds = %for.body325, %cond.end353
  %77 = phi i32 [ %80, %cond.end353 ], [ %76, %for.body325 ]
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %cond.end353 ], [ 0, %for.body325 ]
  %arrayidx337 = getelementptr inbounds [20 x float]* %matp, i64 0, i64 %indvars.iv1024
  %78 = load float* %arrayidx337, align 4, !tbaa !4
  %arrayidx339 = getelementptr inbounds float* %null, i64 %indvars.iv1024
  %79 = load float* %arrayidx339, align 4, !tbaa !4
  %div340 = fdiv float %78, %79
  %cmp341 = fcmp ogt float %div340, 0.000000e+00
  br i1 %cmp341, label %cond.true343, label %cond.end353

cond.true343:                                     ; preds = %for.body335
  %conv349 = fpext float %div340 to double
  %call350 = call double @log(double %conv349) #5
  %mul351 = fmul double %call350, 0x3FF7154764EE6C2F
  %phitmp952 = fptrunc double %mul351 to float
  %.pre1061 = load i32* @Alphabet_size, align 4, !tbaa !3
  br label %cond.end353

cond.end353:                                      ; preds = %for.body335, %cond.true343
  %80 = phi i32 [ %.pre1061, %cond.true343 ], [ %77, %for.body335 ]
  %cond354 = phi float [ %phitmp952, %cond.true343 ], [ -9.999000e+03, %for.body335 ]
  store float %cond354, float* %arrayidx337, align 4, !tbaa !4
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1
  %81 = trunc i64 %indvars.iv.next1025 to i32
  %cmp333 = icmp slt i32 %81, %80
  br i1 %cmp333, label %for.body335, label %for.end360

for.end360:                                       ; preds = %cond.end353, %for.body325
  %.lcssa = phi i32 [ %76, %for.body325 ], [ %80, %cond.end353 ]
  call void @FSet(float* %arraydecay361, i32 %.lcssa, float 0.000000e+00) #5
  %82 = load i32* %nseq, align 4, !tbaa !3
  %cmp364982 = icmp sgt i32 %82, 0
  br i1 %cmp364982, label %for.body366, label %for.end371

for.body366:                                      ; preds = %for.end360, %for.body366
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %for.body366 ], [ 0, %for.end360 ]
  %arrayidx368 = getelementptr inbounds i32* %12, i64 %indvars.iv1026
  store i32 0, i32* %arrayidx368, align 4, !tbaa !3
  %indvars.iv.next1027 = add i64 %indvars.iv1026, 1
  %83 = load i32* %nseq, align 4, !tbaa !3
  %84 = trunc i64 %indvars.iv.next1027 to i32
  %cmp364 = icmp slt i32 %84, %83
  br i1 %cmp364, label %for.body366, label %for.end371

for.end371:                                       ; preds = %for.body366, %for.end360
  %85 = phi i32 [ %82, %for.end360 ], [ %83, %for.body366 ]
  %arrayidx373 = getelementptr inbounds float* %6, i64 %indvars.iv1037
  store float 0xC7EFFFFFE0000000, float* %arrayidx373, align 4, !tbaa !4
  %cmp376987 = icmp sgt i32 %indvars.iv1030, %last.0.lcssa
  br i1 %cmp376987, label %for.end585, label %for.body378.lr.ph

for.body378.lr.ph:                                ; preds = %for.end371
  %dec.i = add nsw i32 %indvars.iv1030, -2
  %idxprom3.i = sext i32 %dec.i to i64
  %arrayidx515 = getelementptr inbounds i32* %8, i64 %indvars.iv1037
  br label %for.body378

for.body378:                                      ; preds = %for.inc583.for.body378_crit_edge, %for.body378.lr.ph
  %86 = phi i32 [ %132, %for.inc583.for.body378_crit_edge ], [ %85, %for.body378.lr.ph ]
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %for.inc583.for.body378_crit_edge ], [ %72, %for.body378.lr.ph ]
  %87 = load i8*** %aseq379, align 8, !tbaa !0
  %88 = load float** %wgt108, align 8, !tbaa !0
  call void @FSet(float* %arraydecay382, i32 8, float 0.000000e+00) #5
  %cmp371.i = icmp sgt i32 %86, 0
  br i1 %cmp371.i, label %for.body.lr.ph.i954, label %if.then390

for.body.lr.ph.i954:                              ; preds = %for.body378
  %89 = add nsw i64 %indvars.iv1032, -1
  br label %for.body.i958

for.body.i958:                                    ; preds = %for.inc.i, %for.body.lr.ph.i954
  %indvars.iv.i955 = phi i64 [ 0, %for.body.lr.ph.i954 ], [ %indvars.iv.next.i961, %for.inc.i ]
  %arrayidx.i956 = getelementptr inbounds i32* %12, i64 %indvars.iv.i955
  %90 = load i32* %arrayidx.i956, align 4, !tbaa !3
  %cmp2.i = icmp sgt i32 %90, 0
  %arrayidx5.i957 = getelementptr inbounds i8** %87, i64 %indvars.iv.i955
  %91 = load i8** %arrayidx5.i957, align 8, !tbaa !0
  %arrayidx6.i = getelementptr inbounds i8* %91, i64 %idxprom3.i
  %92 = load i8* %arrayidx6.i, align 1, !tbaa !1
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i958
  switch i8 %92, label %if.end.i [
    i8 126, label %for.end585
    i8 95, label %for.end585
    i8 46, label %for.end585
    i8 45, label %for.end585
    i8 32, label %for.end585
  ]

if.end.i:                                         ; preds = %if.then.i
  %arrayidx44.i = getelementptr inbounds i8* %91, i64 %89
  %93 = load i8* %arrayidx44.i, align 1, !tbaa !1
  switch i8 %93, label %if.end81.i [
    i8 32, label %if.end517
    i8 46, label %if.end517
    i8 95, label %if.end517
    i8 45, label %if.end517
    i8 126, label %if.end517
  ]

if.end81.i:                                       ; preds = %if.end.i
  %arrayidx83.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955
  %94 = load float* %arrayidx83.i, align 4, !tbaa !4
  %95 = load float* %arrayidx84.i, align 4, !tbaa !4
  %add.i959 = fadd float %94, %95
  store float %add.i959, float* %arrayidx84.i, align 4, !tbaa !4
  %sub.i = add nsw i32 %90, -1
  %conv87.i = sitofp i32 %sub.i to float
  %96 = load float* %arrayidx83.i, align 4, !tbaa !4
  %mul.i960 = fmul float %conv87.i, %96
  %97 = load float* %arrayidx90.i, align 16, !tbaa !4
  %add91.i = fadd float %97, %mul.i960
  store float %add91.i, float* %arrayidx90.i, align 16, !tbaa !4
  %98 = load float* %arrayidx83.i, align 4, !tbaa !4
  %99 = load float* %arrayidx94.i, align 4, !tbaa !4
  %add95.i = fadd float %98, %99
  store float %add95.i, float* %arrayidx94.i, align 4, !tbaa !4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i958
  switch i8 %92, label %if.then135.i [
    i8 126, label %if.else196.i
    i8 95, label %if.else196.i
    i8 46, label %if.else196.i
    i8 45, label %if.else196.i
    i8 32, label %if.else196.i
  ]

if.then135.i:                                     ; preds = %if.else.i
  %arrayidx139.i = getelementptr inbounds i8* %91, i64 %89
  %100 = load i8* %arrayidx139.i, align 1, !tbaa !1
  switch i8 %100, label %if.else189.i [
    i8 95, label %for.inc.i
    i8 32, label %if.then184.i
    i8 46, label %if.then184.i
    i8 126, label %if.then184.i
    i8 45, label %if.then184.i
  ]

if.then184.i:                                     ; preds = %if.then135.i, %if.then135.i, %if.then135.i, %if.then135.i
  %arrayidx186.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955
  %101 = load float* %arrayidx186.i, align 4, !tbaa !4
  %102 = load float* %arrayidx187.i, align 8, !tbaa !4
  %add188.i = fadd float %101, %102
  store float %add188.i, float* %arrayidx187.i, align 8, !tbaa !4
  br label %for.inc.i

if.else189.i:                                     ; preds = %if.then135.i
  %arrayidx191.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955
  %103 = load float* %arrayidx191.i, align 4, !tbaa !4
  %104 = load float* %arraydecay382, align 16, !tbaa !4
  %add193.i = fadd float %103, %104
  store float %add193.i, float* %arraydecay382, align 16, !tbaa !4
  br label %for.inc.i

if.else196.i:                                     ; preds = %if.else.i, %if.else.i, %if.else.i, %if.else.i, %if.else.i
  %arrayidx200.i = getelementptr inbounds i8* %91, i64 %89
  %105 = load i8* %arrayidx200.i, align 1, !tbaa !1
  switch i8 %105, label %if.else250.i [
    i8 95, label %for.inc.i
    i8 32, label %if.then245.i
    i8 46, label %if.then245.i
    i8 126, label %if.then245.i
    i8 45, label %if.then245.i
  ]

if.then245.i:                                     ; preds = %if.else196.i, %if.else196.i, %if.else196.i, %if.else196.i
  %arrayidx247.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955
  %106 = load float* %arrayidx247.i, align 4, !tbaa !4
  %107 = load float* %arrayidx248.i, align 8, !tbaa !4
  %add249.i = fadd float %106, %107
  store float %add249.i, float* %arrayidx248.i, align 8, !tbaa !4
  br label %for.inc.i

if.else250.i:                                     ; preds = %if.else196.i
  %arrayidx252.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955
  %108 = load float* %arrayidx252.i, align 4, !tbaa !4
  %109 = load float* %arrayidx253.i, align 4, !tbaa !4
  %add254.i = fadd float %108, %109
  store float %add254.i, float* %arrayidx253.i, align 4, !tbaa !4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else250.i, %if.then245.i, %if.else196.i, %if.else189.i, %if.then184.i, %if.then135.i, %if.end81.i
  %indvars.iv.next.i961 = add i64 %indvars.iv.i955, 1
  %110 = trunc i64 %indvars.iv.next.i961 to i32
  %cmp.i962 = icmp slt i32 %110, %86
  br i1 %cmp.i962, label %for.body.i958, label %if.then390

if.then390:                                       ; preds = %for.inc.i, %for.body378
  call void @FCopy(float* %arraydecay391, float* %arraydecay382, i32 7) #5
  call void @P7PriorifyTransitionVector(float* %arraydecay391, %struct.p7prior_s* %prior, float* %arraydecay394) #5
  call void @FNorm(float* %arraydecay391, i32 3) #5
  %111 = load float* %arraydecay391, align 16, !tbaa !4
  %div397 = fdiv float %111, %null_p1
  %cmp398 = fcmp ogt float %div397, 0.000000e+00
  br i1 %cmp398, label %cond.true400, label %cond.end407

cond.true400:                                     ; preds = %if.then390
  %conv403 = fpext float %div397 to double
  %call404 = call double @log(double %conv403) #5
  %mul405 = fmul double %call404, 0x3FF7154764EE6C2F
  %phitmp945 = fptrunc double %mul405 to float
  br label %cond.end407

cond.end407:                                      ; preds = %if.then390, %cond.true400
  %cond408 = phi float [ %phitmp945, %cond.true400 ], [ -9.999000e+03, %if.then390 ]
  store float %cond408, float* %arraydecay391, align 16, !tbaa !4
  %112 = load float* %arrayidx411, align 4, !tbaa !4
  %div412 = fdiv float %112, %null_p1
  %cmp413 = fcmp ogt float %div412, 0.000000e+00
  br i1 %cmp413, label %cond.true415, label %cond.end422

cond.true415:                                     ; preds = %cond.end407
  %conv418 = fpext float %div412 to double
  %call419 = call double @log(double %conv418) #5
  %mul420 = fmul double %call419, 0x3FF7154764EE6C2F
  %phitmp946 = fptrunc double %mul420 to float
  br label %cond.end422

cond.end422:                                      ; preds = %cond.end407, %cond.true415
  %cond423 = phi float [ %phitmp946, %cond.true415 ], [ -9.999000e+03, %cond.end407 ]
  store float %cond423, float* %arrayidx411, align 4, !tbaa !4
  %113 = load float* %arrayidx426, align 8, !tbaa !4
  %cmp427 = fcmp ogt float %113, 0.000000e+00
  br i1 %cmp427, label %cond.true429, label %cond.end435

cond.true429:                                     ; preds = %cond.end422
  %conv431 = fpext float %113 to double
  %call432 = call double @log(double %conv431) #5
  %mul433 = fmul double %call432, 0x3FF7154764EE6C2F
  %phitmp947 = fptrunc double %mul433 to float
  br label %cond.end435

cond.end435:                                      ; preds = %cond.end422, %cond.true429
  %cond436 = phi float [ %phitmp947, %cond.true429 ], [ -9.999000e+03, %cond.end422 ]
  store float %cond436, float* %arrayidx426, align 8, !tbaa !4
  %114 = load float* %arrayidx439, align 4, !tbaa !4
  %div440 = fdiv float %114, %null_p1
  %cmp441 = fcmp ogt float %div440, 0.000000e+00
  br i1 %cmp441, label %cond.true443, label %cond.end450

cond.true443:                                     ; preds = %cond.end435
  %conv446 = fpext float %div440 to double
  %call447 = call double @log(double %conv446) #5
  %mul448 = fmul double %call447, 0x3FF7154764EE6C2F
  %phitmp948 = fptrunc double %mul448 to float
  br label %cond.end450

cond.end450:                                      ; preds = %cond.end435, %cond.true443
  %cond451 = phi float [ %phitmp948, %cond.true443 ], [ -9.999000e+03, %cond.end435 ]
  store float %cond451, float* %arrayidx439, align 4, !tbaa !4
  %115 = load float* %arrayidx454, align 16, !tbaa !4
  %div455 = fdiv float %115, %null_p1
  %cmp456 = fcmp ogt float %div455, 0.000000e+00
  br i1 %cmp456, label %cond.true458, label %cond.end465

cond.true458:                                     ; preds = %cond.end450
  %conv461 = fpext float %div455 to double
  %call462 = call double @log(double %conv461) #5
  %mul463 = fmul double %call462, 0x3FF7154764EE6C2F
  %phitmp949 = fptrunc double %mul463 to float
  br label %cond.end465

cond.end465:                                      ; preds = %cond.end450, %cond.true458
  %cond466 = phi float [ %phitmp949, %cond.true458 ], [ -9.999000e+03, %cond.end450 ]
  store float %cond466, float* %arrayidx454, align 16, !tbaa !4
  %116 = load float* %arrayidx469, align 4, !tbaa !4
  %div470 = fdiv float %116, %null_p1
  %cmp471 = fcmp ogt float %div470, 0.000000e+00
  br i1 %cmp471, label %cond.true473, label %cond.end480

cond.true473:                                     ; preds = %cond.end465
  %conv476 = fpext float %div470 to double
  %call477 = call double @log(double %conv476) #5
  %mul478 = fmul double %call477, 0x3FF7154764EE6C2F
  %phitmp950 = fptrunc double %mul478 to float
  br label %cond.end480

cond.end480:                                      ; preds = %cond.end465, %cond.true473
  %cond481 = phi float [ %phitmp950, %cond.true473 ], [ -9.999000e+03, %cond.end465 ]
  store float %cond481, float* %arrayidx469, align 4, !tbaa !4
  %117 = load float* %arrayidx484, align 8, !tbaa !4
  %cmp485 = fcmp ogt float %117, 0.000000e+00
  br i1 %cmp485, label %cond.true487, label %cond.end493

cond.true487:                                     ; preds = %cond.end480
  %conv489 = fpext float %117 to double
  %call490 = call double @log(double %conv489) #5
  %mul491 = fmul double %call490, 0x3FF7154764EE6C2F
  %phitmp951 = fptrunc double %mul491 to float
  br label %cond.end493

cond.end493:                                      ; preds = %cond.end480, %cond.true487
  %cond494 = phi float [ %phitmp951, %cond.true487 ], [ -9.999000e+03, %cond.end480 ]
  store float %cond494, float* %arrayidx484, align 8, !tbaa !4
  %arrayidx498 = getelementptr inbounds float* %6, i64 %indvars.iv1032
  %118 = load float* %arrayidx498, align 4, !tbaa !4
  %call501 = call float @FDot(float* %arraydecay391, float* %arraydecay382, i32 7) #5
  %add502 = fadd float %118, %call501
  %119 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call505 = call float @FDot(float* %arraydecay, float* %arraydecay361, i32 %119) #5
  %add506 = fadd float %add502, %call505
  %120 = load float* %arrayidx373, align 4, !tbaa !4
  %cmp509 = fcmp ogt float %add506, %120
  br i1 %cmp509, label %if.then511, label %if.end517

if.then511:                                       ; preds = %cond.end493
  store float %add506, float* %arrayidx373, align 4, !tbaa !4
  %121 = trunc i64 %indvars.iv1032 to i32
  store i32 %121, i32* %arrayidx515, align 4, !tbaa !3
  br label %if.end517

if.end517:                                        ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %cond.end493, %if.then511
  %arrayidx520 = getelementptr inbounds float** %4, i64 %indvars.iv1032
  %122 = load float** %arrayidx520, align 8, !tbaa !0
  %123 = load i32* @Alphabet_size, align 4, !tbaa !3
  call void @FAdd(float* %arraydecay361, float* %122, i32 %123) #5
  %124 = load i32* %nseq, align 4, !tbaa !3
  %cmp523984 = icmp sgt i32 %124, 0
  br i1 %cmp523984, label %for.body525.lr.ph, label %for.inc583

for.body525.lr.ph:                                ; preds = %if.end517
  %125 = add nsw i64 %indvars.iv1032, -1
  %.pre = load i8*** %aseq379, align 8, !tbaa !0
  br label %for.body525

for.body525:                                      ; preds = %for.body525.lr.ph, %for.inc580
  %126 = phi i32 [ %124, %for.body525.lr.ph ], [ %130, %for.inc580 ]
  %indvars.iv1028 = phi i64 [ 0, %for.body525.lr.ph ], [ %indvars.iv.next1029, %for.inc580 ]
  %arrayidx530 = getelementptr inbounds i8** %.pre, i64 %indvars.iv1028
  %127 = load i8** %arrayidx530, align 8, !tbaa !0
  %arrayidx531 = getelementptr inbounds i8* %127, i64 %125
  %128 = load i8* %arrayidx531, align 1, !tbaa !1
  switch i8 %128, label %if.then575 [
    i8 32, label %for.inc580
    i8 46, label %for.inc580
    i8 95, label %for.inc580
    i8 45, label %for.inc580
    i8 126, label %for.inc580
  ]

if.then575:                                       ; preds = %for.body525
  %arrayidx577 = getelementptr inbounds i32* %12, i64 %indvars.iv1028
  %129 = load i32* %arrayidx577, align 4, !tbaa !3
  %inc578 = add nsw i32 %129, 1
  store i32 %inc578, i32* %arrayidx577, align 4, !tbaa !3
  %.pre1060 = load i32* %nseq, align 4, !tbaa !3
  br label %for.inc580

for.inc580:                                       ; preds = %for.body525, %for.body525, %for.body525, %for.body525, %for.body525, %if.then575
  %130 = phi i32 [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %.pre1060, %if.then575 ]
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1
  %131 = trunc i64 %indvars.iv.next1029 to i32
  %cmp523 = icmp slt i32 %131, %130
  br i1 %cmp523, label %for.body525, label %for.inc583

for.inc583:                                       ; preds = %for.inc580, %if.end517
  %132 = phi i32 [ %124, %if.end517 ], [ %130, %for.inc580 ]
  %133 = trunc i64 %indvars.iv1032 to i32
  %cmp376 = icmp slt i32 %133, %last.0.lcssa
  br i1 %cmp376, label %for.inc583.for.body378_crit_edge, label %for.end585

for.inc583.for.body378_crit_edge:                 ; preds = %for.inc583
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  br label %for.body378

for.end585:                                       ; preds = %for.end371, %for.inc583, %if.then.i, %if.then.i, %if.then.i, %if.then.i, %if.then.i
  %134 = load float** %arrayidx328, align 8, !tbaa !0
  %135 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call589 = call float @FDot(float* %arraydecay326, float* %134, i32 %135) #5
  %add591 = fadd float %mul590, %call589
  %136 = load float* %arrayidx373, align 4, !tbaa !4
  %add594 = fadd float %136, %add591
  store float %add594, float* %arrayidx373, align 4, !tbaa !4
  %i.3 = add nsw i32 %i.3992, -1
  %cmp323 = icmp sgt i32 %i.3, 0
  %indvars.iv.next1031 = add i32 %indvars.iv1030, -1
  %indvars.iv.next1038 = add i64 %indvars.iv1037, -1
  br i1 %cmp323, label %for.body325, label %for.cond598.preheader

for.body601:                                      ; preds = %for.end664, %for.body601.lr.ph
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %for.end664 ], [ 1, %for.body601.lr.ph ]
  %bestsc.0977 = phi float [ %bestsc.1, %for.end664 ], [ 0xC7EFFFFFE0000000, %for.body601.lr.ph ]
  %first.0975 = phi i32 [ %first.1, %for.end664 ], [ 0, %for.body601.lr.ph ]
  %arrayidx603 = getelementptr inbounds float* %6, i64 %indvars.iv1020
  %137 = load float* %arrayidx603, align 4, !tbaa !4
  br i1 %cmp606971, label %for.body608.lr.ph, label %for.end664

for.body608.lr.ph:                                ; preds = %for.body601
  %138 = add nsw i64 %indvars.iv1020, -1
  %139 = load i8*** %aseq612, align 8, !tbaa !0
  br label %for.body608

for.body608:                                      ; preds = %for.body608.lr.ph, %for.inc662
  %indvars.iv1018 = phi i64 [ 0, %for.body608.lr.ph ], [ %indvars.iv.next1019, %for.inc662 ]
  %new.0973 = phi float [ %137, %for.body608.lr.ph ], [ %new.1, %for.inc662 ]
  %arrayidx613 = getelementptr inbounds i8** %139, i64 %indvars.iv1018
  %140 = load i8** %arrayidx613, align 8, !tbaa !0
  %arrayidx614 = getelementptr inbounds i8* %140, i64 %138
  %141 = load i8* %arrayidx614, align 1, !tbaa !1
  switch i8 %141, label %if.else [
    i8 32, label %for.inc662
    i8 46, label %for.inc662
    i8 95, label %for.inc662
    i8 45, label %for.inc662
    i8 126, label %for.inc662
  ]

if.else:                                          ; preds = %for.body608
  br label %for.inc662

for.inc662:                                       ; preds = %for.body608, %for.body608, %for.body608, %for.body608, %for.body608, %if.else
  %cond171.pn = phi float [ %cond159, %if.else ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ]
  %new.1 = fadd float %new.0973, %cond171.pn
  %indvars.iv.next1019 = add i64 %indvars.iv1018, 1
  %142 = trunc i64 %indvars.iv.next1019 to i32
  %cmp606 = icmp slt i32 %142, %70
  br i1 %cmp606, label %for.body608, label %for.end664

for.end664:                                       ; preds = %for.inc662, %for.body601
  %new.0.lcssa = phi float [ %137, %for.body601 ], [ %new.1, %for.inc662 ]
  %cmp665 = fcmp ogt float %new.0.lcssa, %bestsc.0977
  %143 = trunc i64 %indvars.iv1020 to i32
  %first.1 = select i1 %cmp665, i32 %143, i32 %first.0975
  %bestsc.1 = select i1 %cmp665, float %new.0.lcssa, float %bestsc.0977
  %indvars.iv.next1021 = add i64 %indvars.iv1020, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1021 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %71
  br i1 %exitcond, label %for.end671, label %for.body601

for.end671:                                       ; preds = %for.end664, %for.cond598.preheader
  %first.0.lcssa = phi i32 [ 0, %for.cond598.preheader ], [ %first.1, %for.end664 ]
  store i32 0, i32* %10, align 4, !tbaa !3
  %144 = load i32* %alen, align 4, !tbaa !3
  %cmp675969 = icmp slt i32 %144, 1
  br i1 %cmp675969, label %for.cond683.preheader, label %for.body677

for.cond683.preheader:                            ; preds = %for.body677, %for.end671
  %cmp684967 = icmp eq i32 %first.0.lcssa, 0
  br i1 %cmp684967, label %for.end694, label %for.body686

for.body677:                                      ; preds = %for.end671, %for.body677
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %for.body677 ], [ 1, %for.end671 ]
  %arrayidx679 = getelementptr inbounds i32* %10, i64 %indvars.iv1016
  store i32 8, i32* %arrayidx679, align 4, !tbaa !3
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1
  %145 = load i32* %alen, align 4, !tbaa !3
  %146 = trunc i64 %indvars.iv1016 to i32
  %cmp675 = icmp slt i32 %146, %145
  br i1 %cmp675, label %for.body677, label %for.cond683.preheader

for.body686:                                      ; preds = %for.cond683.preheader, %for.body686
  %i.6968 = phi i32 [ %148, %for.body686 ], [ %first.0.lcssa, %for.cond683.preheader ]
  %idxprom687 = sext i32 %i.6968 to i64
  %arrayidx688 = getelementptr inbounds i32* %10, i64 %idxprom687
  %147 = load i32* %arrayidx688, align 4, !tbaa !3
  %and = and i32 %147, -10
  %or = or i32 %and, 1
  store i32 %or, i32* %arrayidx688, align 4, !tbaa !3
  %arrayidx693 = getelementptr inbounds i32* %8, i64 %idxprom687
  %148 = load i32* %arrayidx693, align 4, !tbaa !3
  %cmp684 = icmp eq i32 %148, 0
  br i1 %cmp684, label %for.end694, label %for.body686

for.end694:                                       ; preds = %for.body686, %for.cond683.preheader
  call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %10, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #6
  %149 = load i32* %alen, align 4, !tbaa !3
  %cmp697965 = icmp slt i32 %149, 1
  br i1 %cmp697965, label %for.end704, label %for.body699

for.body699:                                      ; preds = %for.end694, %for.body699
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body699 ], [ 1, %for.end694 ]
  %arrayidx701 = getelementptr inbounds float** %4, i64 %indvars.iv
  %150 = load float** %arrayidx701, align 8, !tbaa !0
  %151 = bitcast float* %150 to i8*
  call void @free(i8* %151) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %152 = load i32* %alen, align 4, !tbaa !3
  %153 = trunc i64 %indvars.iv to i32
  %cmp697 = icmp slt i32 %153, %152
  br i1 %cmp697, label %for.body699, label %for.end704

for.end704:                                       ; preds = %for.body699, %for.end694
  call void @free(i8* %call) #5
  call void @free(i8* %call5) #5
  call void @free(i8* %call10) #5
  call void @free(i8* %call15) #5
  call void @free(i8* %call18) #5
  call void @llvm.lifetime.end(i64 80, i8* %2) #3
  call void @llvm.lifetime.end(i64 80, i8* %1) #3
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #1

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #1

; Function Attrs: optsize
declare i32 @SymbolIndex(i8 signext) #1

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #1

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: optsize
declare float @FSum(float*, i32) #1

; Function Attrs: optsize
declare void @P7PriorifyEmissionVector(float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*) #1

; Function Attrs: optsize
declare void @P7PriorifyTransitionVector(float*, %struct.p7prior_s*, float*) #1

; Function Attrs: optsize
declare float @FDot(float*, float*, i32) #1

; Function Attrs: optsize
declare void @FAdd(float*, float*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.plan7_s* @AllocPlan7(i32) #1

; Function Attrs: optsize
declare void @ZeroPlan7(%struct.plan7_s*) #1

; Function Attrs: optsize
declare void @P7TraceCount(%struct.plan7_s*, i8*, float, %struct.p7trace_s*) #1

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #1

; Function Attrs: optsize
declare i8* @MSAGetGC(%struct.msa_struct*, i8*) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
