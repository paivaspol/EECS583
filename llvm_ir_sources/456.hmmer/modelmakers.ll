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
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !176), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !177), !dbg !328
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !178), !dbg !329
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !179), !dbg !329
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !330
  %0 = load i8** %rf, align 8, !dbg !330, !tbaa !331
  %cmp = icmp eq i8* %0, null, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0)) #6, !dbg !334
  br label %if.end, !dbg !334

if.end:                                           ; preds = %if.then, %entry
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !335
  %1 = load i32* %alen, align 4, !dbg !335, !tbaa !336
  %add = add nsw i32 %1, 1, !dbg !335
  %conv = sext i32 %add to i64, !dbg !335
  %mul = shl nsw i64 %conv, 2, !dbg !335
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 111, i64 %mul) #6, !dbg !335
  %2 = bitcast i8* %call to i32*, !dbg !335
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !180), !dbg !335
  store i32 0, i32* %2, align 4, !dbg !337, !tbaa !336
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !181), !dbg !338
  %3 = load i32* %alen, align 4, !dbg !338, !tbaa !336
  %cmp270 = icmp sgt i32 %3, 0, !dbg !338
  br i1 %cmp270, label %for.body.lr.ph, label %for.end, !dbg !338

for.body.lr.ph:                                   ; preds = %if.end
  %.pre = load i8** %rf, align 8, !dbg !340, !tbaa !331
  br label %for.body, !dbg !338

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !338
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %indvars.iv.next, !dbg !342
  store i32 0, i32* %arrayidx5, align 4, !dbg !342, !tbaa !336
  %arrayidx8 = getelementptr inbounds i8* %.pre, i64 %indvars.iv, !dbg !340
  %4 = load i8* %arrayidx8, align 1, !dbg !340, !tbaa !332
  switch i8 %4, label %for.inc [
    i8 32, label %if.else
    i8 46, label %if.else
    i8 95, label %if.else
    i8 45, label %if.else
    i8 126, label %if.else
  ], !dbg !340

if.else:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else
  %storemerge = phi i32 [ 8, %if.else ], [ 1, %for.body ]
  store i32 %storemerge, i32* %arrayidx5, align 4, !dbg !343, !tbaa !336
  %5 = load i32* %alen, align 4, !dbg !338, !tbaa !336
  %6 = trunc i64 %indvars.iv.next to i32, !dbg !338
  %cmp2 = icmp slt i32 %6, %5, !dbg !338
  br i1 %cmp2, label %for.body, label %for.end, !dbg !338

for.end:                                          ; preds = %for.inc, %if.end
  tail call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %2, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #7, !dbg !344
  tail call void @free(i8* %call) #6, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** nocapture %dsq, i32* nocapture %matassign, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !261), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !262), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32* %matassign}, i64 0, metadata !263), !dbg !347
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !264), !dbg !348
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !265), !dbg !348
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !268), !dbg !349
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !270), !dbg !351
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !351
  %0 = load i32* %alen, align 4, !dbg !351, !tbaa !336
  %cmp210 = icmp slt i32 %0, 1, !dbg !351
  br i1 %cmp210, label %if.then3, label %for.body, !dbg !351

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.body ], [ 1, %entry ]
  %M.0211 = phi i32 [ %M.0.inc, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %matassign, i64 %indvars.iv232, !dbg !353
  %1 = load i32* %arrayidx, align 4, !dbg !353, !tbaa !336
  %and = and i32 %1, 1, !dbg !353
  %M.0.inc = add nsw i32 %and, %M.0211, !dbg !353
  %indvars.iv.next233 = add i64 %indvars.iv232, 1, !dbg !351
  %2 = trunc i64 %indvars.iv232 to i32, !dbg !351
  %cmp = icmp slt i32 %2, %0, !dbg !351
  br i1 %cmp, label %for.body, label %for.end, !dbg !351

for.end:                                          ; preds = %for.body
  %cmp2 = icmp eq i32 %M.0.inc, 0, !dbg !355
  br i1 %cmp2, label %if.then3, label %for.cond5.preheader, !dbg !355

if.then3:                                         ; preds = %entry, %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([302 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !356
  br label %for.cond5.preheader, !dbg !356

for.cond5.preheader:                              ; preds = %if.then3, %for.end
  %M.0.lcssa252 = phi i32 [ 0, %if.then3 ], [ %M.0.inc, %for.end ]
  %arrayidx7203 = getelementptr inbounds i32* %matassign, i64 1, !dbg !357
  %3 = load i32* %arrayidx7203, align 4, !dbg !357, !tbaa !336
  %and8204 = and i32 %3, 8, !dbg !357
  %tobool9205 = icmp eq i32 %and8204, 0, !dbg !357
  br i1 %tobool9205, label %for.end17, label %land.rhs, !dbg !357

land.rhs:                                         ; preds = %for.body12, %for.cond5.preheader
  %indvars.iv230 = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next231, %for.body12 ]
  %4 = phi i32 [ %3, %for.cond5.preheader ], [ %7, %for.body12 ]
  %arrayidx7207 = phi i32* [ %arrayidx7203, %for.cond5.preheader ], [ %arrayidx7, %for.body12 ]
  %apos.1206 = phi i32 [ 1, %for.cond5.preheader ], [ %inc16, %for.body12 ]
  %5 = load i32* %alen, align 4, !dbg !357, !tbaa !336
  %6 = trunc i64 %indvars.iv230 to i32, !dbg !357
  %cmp11 = icmp sgt i32 %6, %5, !dbg !357
  br i1 %cmp11, label %for.end17, label %for.body12

for.body12:                                       ; preds = %land.rhs
  %or = or i32 %4, 16, !dbg !359
  store i32 %or, i32* %arrayidx7207, align 4, !dbg !359, !tbaa !336
  %indvars.iv.next231 = add i64 %indvars.iv230, 1, !dbg !357
  %inc16 = add nsw i32 %apos.1206, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !270), !dbg !357
  %arrayidx7 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next231, !dbg !357
  %7 = load i32* %arrayidx7, align 4, !dbg !357, !tbaa !336
  %and8 = and i32 %7, 8, !dbg !357
  %tobool9 = icmp eq i32 %and8, 0, !dbg !357
  br i1 %tobool9, label %for.end17, label %land.rhs, !dbg !357

for.end17:                                        ; preds = %for.body12, %land.rhs, %for.cond5.preheader
  %8 = phi i32 [ %3, %for.cond5.preheader ], [ %4, %land.rhs ], [ %7, %for.body12 ]
  %arrayidx7.lcssa = phi i32* [ %arrayidx7203, %for.cond5.preheader ], [ %arrayidx7207, %land.rhs ], [ %arrayidx7, %for.body12 ]
  %apos.1.lcssa = phi i32 [ 1, %for.cond5.preheader ], [ %apos.1206, %land.rhs ], [ %inc16, %for.body12 ]
  %9 = load i32* %alen, align 4, !dbg !360, !tbaa !336
  %cmp19 = icmp sgt i32 %apos.1.lcssa, %9, !dbg !360
  br i1 %cmp19, label %if.end24, label %if.then20, !dbg !360

if.then20:                                        ; preds = %for.end17
  %or23 = or i32 %8, 2, !dbg !360
  store i32 %or23, i32* %arrayidx7.lcssa, align 4, !dbg !360, !tbaa !336
  %.pre = load i32* %alen, align 4, !dbg !361, !tbaa !336
  br label %if.end24, !dbg !360

if.end24:                                         ; preds = %for.end17, %if.then20
  %10 = phi i32 [ %9, %for.end17 ], [ %.pre, %if.then20 ]
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !270), !dbg !361
  %idxprom27192 = sext i32 %10 to i64, !dbg !361
  %arrayidx28193 = getelementptr inbounds i32* %matassign, i64 %idxprom27192, !dbg !361
  %11 = load i32* %arrayidx28193, align 4, !dbg !361, !tbaa !336
  %and29194 = and i32 %11, 8, !dbg !361
  %cmp32195 = icmp sgt i32 %10, 0, !dbg !361
  %not.tobool30196 = icmp ne i32 %and29194, 0, !dbg !361
  %.cmp32197 = and i1 %cmp32195, %not.tobool30196, !dbg !361
  br i1 %.cmp32197, label %for.body34, label %for.end39

for.body34:                                       ; preds = %if.end24, %for.body34
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.body34 ], [ %idxprom27192, %if.end24 ]
  %12 = phi i32 [ %13, %for.body34 ], [ %11, %if.end24 ]
  %arrayidx28199 = phi i32* [ %arrayidx28, %for.body34 ], [ %arrayidx28193, %if.end24 ]
  %or37 = or i32 %12, 32, !dbg !363
  store i32 %or37, i32* %arrayidx28199, align 4, !dbg !363, !tbaa !336
  %indvars.iv.next226 = add i64 %indvars.iv225, -1
  %arrayidx28 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next226, !dbg !361
  %13 = load i32* %arrayidx28, align 4, !dbg !361, !tbaa !336
  %and29 = and i32 %13, 8, !dbg !361
  %14 = trunc i64 %indvars.iv.next226 to i32, !dbg !361
  %cmp32 = icmp sgt i32 %14, 0, !dbg !361
  %not.tobool30 = icmp ne i32 %and29, 0, !dbg !361
  %.cmp32 = and i1 %cmp32, %not.tobool30, !dbg !361
  br i1 %.cmp32, label %for.body34, label %for.end39

for.end39:                                        ; preds = %for.body34, %if.end24
  %cmp32.lcssa = phi i1 [ %cmp32195, %if.end24 ], [ %cmp32, %for.body34 ]
  %.lcssa191 = phi i32 [ %11, %if.end24 ], [ %13, %for.body34 ]
  %arrayidx28.lcssa = phi i32* [ %arrayidx28193, %if.end24 ], [ %arrayidx28, %for.body34 ]
  br i1 %cmp32.lcssa, label %if.then41, label %if.end45, !dbg !364

if.then41:                                        ; preds = %for.end39
  %or44 = or i32 %.lcssa191, 4, !dbg !364
  store i32 %or44, i32* %arrayidx28.lcssa, align 4, !dbg !364, !tbaa !336
  br label %if.end45, !dbg !364

if.end45:                                         ; preds = %for.end39, %if.then41
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !365
  %15 = load i8*** %aseq, align 8, !dbg !365, !tbaa !331
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !365
  %16 = load i32* %nseq, align 4, !dbg !365, !tbaa !336
  %17 = load i32* %alen, align 4, !dbg !365, !tbaa !336
  tail call void @llvm.dbg.value(metadata !{i8** %15}, i64 0, metadata !366) #4, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !368) #4, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !369) #4, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32* %matassign}, i64 0, metadata !370) #4, !dbg !367
  %conv.i = sext i32 %16 to i64, !dbg !371
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !371
  %call.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 607, i64 %mul.i) #6, !dbg !371
  %18 = bitcast i8* %call.i to %struct.p7trace_s**, !dbg !371
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !372) #4, !dbg !371
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !373) #4, !dbg !374
  %cmp619.i = icmp sgt i32 %16, 0, !dbg !374
  br i1 %cmp619.i, label %for.body.lr.ph.i, label %fake_tracebacks.exit, !dbg !374

for.body.lr.ph.i:                                 ; preds = %if.end45
  %add.i = add nsw i32 %17, 6, !dbg !376
  %cmp24607.i = icmp sgt i32 %17, 0, !dbg !378
  br label %for.body.i, !dbg !374

for.body.i:                                       ; preds = %trace_doctor.exit.i, %for.body.lr.ph.i
  %indvars.iv625.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next626.i, %trace_doctor.exit.i ]
  %arrayidx.i = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv625.i, !dbg !376
  tail call void @P7AllocTrace(i32 %add.i, %struct.p7trace_s** %arrayidx.i) #6, !dbg !376
  %19 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !380, !tbaa !331
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %19, i64 0, i32 1, !dbg !380
  %20 = load i8** %statetype.i, align 8, !dbg !380, !tbaa !331
  store i8 4, i8* %20, align 1, !dbg !380, !tbaa !332
  %21 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !381, !tbaa !331
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 2, !dbg !381
  %22 = load i32** %nodeidx.i, align 8, !dbg !381, !tbaa !331
  store i32 0, i32* %22, align 4, !dbg !381, !tbaa !336
  %pos.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 3, !dbg !382
  %23 = load i32** %pos.i, align 8, !dbg !382, !tbaa !331
  store i32 0, i32* %23, align 4, !dbg !382, !tbaa !336
  %statetype13.i = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1, !dbg !383
  %24 = load i8** %statetype13.i, align 8, !dbg !383, !tbaa !331
  %arrayidx14.i = getelementptr inbounds i8* %24, i64 1, !dbg !383
  store i8 5, i8* %arrayidx14.i, align 1, !dbg !383, !tbaa !332
  %25 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !384, !tbaa !331
  %nodeidx17.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 2, !dbg !384
  %26 = load i32** %nodeidx17.i, align 8, !dbg !384, !tbaa !331
  %arrayidx18.i = getelementptr inbounds i32* %26, i64 1, !dbg !384
  store i32 0, i32* %arrayidx18.i, align 4, !dbg !384, !tbaa !336
  %pos21.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 3, !dbg !385
  %27 = load i32** %pos21.i, align 8, !dbg !385, !tbaa !331
  %arrayidx22.i = getelementptr inbounds i32* %27, i64 1, !dbg !385
  store i32 0, i32* %arrayidx22.i, align 4, !dbg !385, !tbaa !336
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !386) #4, !dbg !387
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !388) #4, !dbg !389
  tail call void @llvm.dbg.value(metadata !390, i64 0, metadata !391) #4, !dbg !392
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !393) #4, !dbg !378
  %statetype30608.i = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 1, !dbg !394
  %28 = load i8** %statetype30608.i, align 8, !dbg !394, !tbaa !331
  %arrayidx31609.i = getelementptr inbounds i8* %28, i64 2, !dbg !394
  br i1 %cmp24607.i, label %for.body26.lr.ph.i, label %for.end.i, !dbg !378

for.body26.lr.ph.i:                               ; preds = %for.body.i
  %arrayidx276.i = getelementptr inbounds i8** %15, i64 %indvars.iv625.i, !dbg !396
  br label %for.body26.i, !dbg !378

for.body26.i:                                     ; preds = %for.cond23.backedge.i, %for.body26.lr.ph.i
  %indvars.iv623.i = phi i64 [ 0, %for.body26.lr.ph.i ], [ %indvars.iv.next624.i, %for.cond23.backedge.i ]
  %arrayidx31615.i = phi i8* [ %arrayidx31609.i, %for.body26.lr.ph.i ], [ %arrayidx31.i, %for.cond23.backedge.i ]
  %idxprom27614.i = phi i64 [ 2, %for.body26.lr.ph.i ], [ %idxprom27.i, %for.cond23.backedge.i ]
  %tpos.0613.i = phi i32 [ 2, %for.body26.lr.ph.i ], [ %tpos.0.be.i, %for.cond23.backedge.i ]
  %k.0611.i = phi i32 [ 0, %for.body26.lr.ph.i ], [ %k.1.i, %for.cond23.backedge.i ]
  %i.0610.i = phi i32 [ 1, %for.body26.lr.ph.i ], [ %i.1.i, %for.cond23.backedge.i ]
  store i8 0, i8* %arrayidx31615.i, align 1, !dbg !394, !tbaa !332
  %indvars.iv.next624.i = add i64 %indvars.iv623.i, 1, !dbg !378
  %arrayidx34.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next624.i, !dbg !397
  %29 = load i32* %arrayidx34.i, align 4, !dbg !397, !tbaa !336
  %and.i = and i32 %29, 2, !dbg !397
  %tobool.i = icmp eq i32 %and.i, 0, !dbg !397
  br i1 %tobool.i, label %if.end.i, label %if.then.i, !dbg !397

if.then.i:                                        ; preds = %for.body26.i
  %30 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !398, !tbaa !331
  %statetype38.i = getelementptr inbounds %struct.p7trace_s* %30, i64 0, i32 1, !dbg !398
  %31 = load i8** %statetype38.i, align 8, !dbg !398, !tbaa !331
  %arrayidx39.i = getelementptr inbounds i8* %31, i64 %idxprom27614.i, !dbg !398
  store i8 6, i8* %arrayidx39.i, align 1, !dbg !398, !tbaa !332
  %32 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !400, !tbaa !331
  %nodeidx43.i = getelementptr inbounds %struct.p7trace_s* %32, i64 0, i32 2, !dbg !400
  %33 = load i32** %nodeidx43.i, align 8, !dbg !400, !tbaa !331
  %arrayidx44.i = getelementptr inbounds i32* %33, i64 %idxprom27614.i, !dbg !400
  store i32 0, i32* %arrayidx44.i, align 4, !dbg !400, !tbaa !336
  %pos48.i = getelementptr inbounds %struct.p7trace_s* %32, i64 0, i32 3, !dbg !401
  %34 = load i32** %pos48.i, align 8, !dbg !401, !tbaa !331
  %arrayidx49.i = getelementptr inbounds i32* %34, i64 %idxprom27614.i, !dbg !401
  store i32 0, i32* %arrayidx49.i, align 4, !dbg !401, !tbaa !336
  %inc.i = add nsw i32 %tpos.0613.i, 1, !dbg !402
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !391) #4, !dbg !402
  %.pre.i = load i32* %arrayidx34.i, align 4, !dbg !403, !tbaa !336
  br label %if.end.i, !dbg !404

if.end.i:                                         ; preds = %if.then.i, %for.body26.i
  %35 = phi i32 [ %.pre.i, %if.then.i ], [ %29, %for.body26.i ]
  %tpos.1.i = phi i32 [ %inc.i, %if.then.i ], [ %tpos.0613.i, %for.body26.i ]
  %and53.i = and i32 %35, 1, !dbg !403
  %tobool54.i = icmp eq i32 %and53.i, 0, !dbg !403
  br i1 %tobool54.i, label %if.else145.i, label %land.lhs.true.i, !dbg !403

land.lhs.true.i:                                  ; preds = %if.end.i
  %36 = load i8** %arrayidx276.i, align 8, !dbg !403, !tbaa !331
  %arrayidx58.i = getelementptr inbounds i8* %36, i64 %indvars.iv623.i, !dbg !403
  %37 = load i8* %arrayidx58.i, align 1, !dbg !403, !tbaa !332
  switch i8 %37, label %if.then93.i [
    i8 32, label %if.then117.i
    i8 46, label %if.then117.i
    i8 95, label %if.then117.i
    i8 45, label %if.then117.i
    i8 126, label %if.then117.i
  ], !dbg !403

if.then93.i:                                      ; preds = %land.lhs.true.i
  %inc94.i = add nsw i32 %k.0611.i, 1, !dbg !405
  tail call void @llvm.dbg.value(metadata !{i32 %inc94.i}, i64 0, metadata !388) #4, !dbg !405
  %idxprom95.i = sext i32 %tpos.1.i to i64, !dbg !407
  %38 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !407, !tbaa !331
  %statetype98.i = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 1, !dbg !407
  %39 = load i8** %statetype98.i, align 8, !dbg !407, !tbaa !331
  %arrayidx99.i = getelementptr inbounds i8* %39, i64 %idxprom95.i, !dbg !407
  store i8 1, i8* %arrayidx99.i, align 1, !dbg !407, !tbaa !332
  %40 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !408, !tbaa !331
  %nodeidx103.i = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 2, !dbg !408
  %41 = load i32** %nodeidx103.i, align 8, !dbg !408, !tbaa !331
  %arrayidx104.i = getelementptr inbounds i32* %41, i64 %idxprom95.i, !dbg !408
  store i32 %inc94.i, i32* %arrayidx104.i, align 4, !dbg !408, !tbaa !336
  %pos108.i = getelementptr inbounds %struct.p7trace_s* %40, i64 0, i32 3, !dbg !409
  %42 = load i32** %pos108.i, align 8, !dbg !409, !tbaa !331
  %arrayidx109.i = getelementptr inbounds i32* %42, i64 %idxprom95.i, !dbg !409
  store i32 %i.0610.i, i32* %arrayidx109.i, align 4, !dbg !409, !tbaa !336
  %inc110.i = add nsw i32 %i.0610.i, 1, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %inc110.i}, i64 0, metadata !386) #4, !dbg !410
  %inc111.i = add nsw i32 %tpos.1.i, 1, !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %inc111.i}, i64 0, metadata !391) #4, !dbg !411
  br label %if.end335.i, !dbg !412

if.then117.i:                                     ; preds = %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i, %land.lhs.true.i
  %inc118.i = add nsw i32 %k.0611.i, 1, !dbg !413
  tail call void @llvm.dbg.value(metadata !{i32 %inc118.i}, i64 0, metadata !388) #4, !dbg !413
  %sub.i = add nsw i32 %tpos.1.i, -1, !dbg !415
  %idxprom119.i = sext i32 %sub.i to i64, !dbg !415
  %43 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !415, !tbaa !331
  %statetype122.i = getelementptr inbounds %struct.p7trace_s* %43, i64 0, i32 1, !dbg !415
  %44 = load i8** %statetype122.i, align 8, !dbg !415, !tbaa !331
  %arrayidx123.i = getelementptr inbounds i8* %44, i64 %idxprom119.i, !dbg !415
  %45 = load i8* %arrayidx123.i, align 1, !dbg !415, !tbaa !332
  %cmp125.i = icmp eq i8 %45, 6, !dbg !415
  br i1 %cmp125.i, label %if.end335.i, label %if.then127.i, !dbg !415

if.then127.i:                                     ; preds = %if.then117.i
  %idxprom128.i = sext i32 %tpos.1.i to i64, !dbg !416
  %arrayidx132.i = getelementptr inbounds i8* %44, i64 %idxprom128.i, !dbg !416
  store i8 2, i8* %arrayidx132.i, align 1, !dbg !416, !tbaa !332
  %46 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !418, !tbaa !331
  %nodeidx136.i = getelementptr inbounds %struct.p7trace_s* %46, i64 0, i32 2, !dbg !418
  %47 = load i32** %nodeidx136.i, align 8, !dbg !418, !tbaa !331
  %arrayidx137.i = getelementptr inbounds i32* %47, i64 %idxprom128.i, !dbg !418
  store i32 %inc118.i, i32* %arrayidx137.i, align 4, !dbg !418, !tbaa !336
  %pos141.i = getelementptr inbounds %struct.p7trace_s* %46, i64 0, i32 3, !dbg !419
  %48 = load i32** %pos141.i, align 8, !dbg !419, !tbaa !331
  %arrayidx142.i = getelementptr inbounds i32* %48, i64 %idxprom128.i, !dbg !419
  store i32 0, i32* %arrayidx142.i, align 4, !dbg !419, !tbaa !336
  %inc143.i = add nsw i32 %tpos.1.i, 1, !dbg !420
  tail call void @llvm.dbg.value(metadata !{i32 %inc143.i}, i64 0, metadata !391) #4, !dbg !420
  br label %if.end335.i, !dbg !421

if.else145.i:                                     ; preds = %if.end.i
  %and149.i = and i32 %35, 16, !dbg !422
  %tobool150.i = icmp eq i32 %and149.i, 0, !dbg !422
  %.pre629.i.pre = load i8** %arrayidx276.i, align 8, !dbg !396, !tbaa !331
  %arrayidx277.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds i8* %.pre629.i.pre, i64 %indvars.iv623.i
  %.pre630.i.pre = load i8* %arrayidx277.phi.trans.insert.i.phi.trans.insert, align 1, !dbg !396, !tbaa !332
  br i1 %tobool150.i, label %if.else209.i, label %land.lhs.true151.i, !dbg !422

land.lhs.true151.i:                               ; preds = %if.else145.i
  switch i8 %.pre630.i.pre, label %if.then191.i [
    i8 32, label %if.else209.i
    i8 46, label %if.else209.i
    i8 95, label %if.else209.i
    i8 45, label %if.else209.i
    i8 126, label %if.else209.i
  ], !dbg !422

if.then191.i:                                     ; preds = %land.lhs.true151.i
  %idxprom192.i = sext i32 %tpos.1.i to i64, !dbg !423
  %49 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !423, !tbaa !331
  %statetype195.i = getelementptr inbounds %struct.p7trace_s* %49, i64 0, i32 1, !dbg !423
  %50 = load i8** %statetype195.i, align 8, !dbg !423, !tbaa !331
  %arrayidx196.i = getelementptr inbounds i8* %50, i64 %idxprom192.i, !dbg !423
  store i8 5, i8* %arrayidx196.i, align 1, !dbg !423, !tbaa !332
  %51 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !425, !tbaa !331
  %nodeidx200.i = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 2, !dbg !425
  %52 = load i32** %nodeidx200.i, align 8, !dbg !425, !tbaa !331
  %arrayidx201.i = getelementptr inbounds i32* %52, i64 %idxprom192.i, !dbg !425
  store i32 0, i32* %arrayidx201.i, align 4, !dbg !425, !tbaa !336
  %pos205.i = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 3, !dbg !426
  %53 = load i32** %pos205.i, align 8, !dbg !426, !tbaa !331
  %arrayidx206.i = getelementptr inbounds i32* %53, i64 %idxprom192.i, !dbg !426
  store i32 %i.0610.i, i32* %arrayidx206.i, align 4, !dbg !426, !tbaa !336
  %inc207.i = add nsw i32 %i.0610.i, 1, !dbg !427
  tail call void @llvm.dbg.value(metadata !{i32 %inc207.i}, i64 0, metadata !386) #4, !dbg !427
  %inc208.i = add nsw i32 %tpos.1.i, 1, !dbg !428
  tail call void @llvm.dbg.value(metadata !{i32 %inc208.i}, i64 0, metadata !391) #4, !dbg !428
  br label %if.end335.i, !dbg !429

if.else209.i:                                     ; preds = %if.else145.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i, %land.lhs.true151.i
  %and213.i = and i32 %35, 32, !dbg !430
  %tobool214.i = icmp eq i32 %and213.i, 0, !dbg !430
  br i1 %tobool214.i, label %if.else273.i, label %land.lhs.true215.i, !dbg !430

land.lhs.true215.i:                               ; preds = %if.else209.i
  switch i8 %.pre630.i.pre, label %if.then255.i [
    i8 32, label %if.end335.i
    i8 46, label %if.end335.i
    i8 95, label %if.end335.i
    i8 45, label %if.end335.i
    i8 126, label %if.end335.i
  ], !dbg !430

if.then255.i:                                     ; preds = %land.lhs.true215.i
  %idxprom256.i = sext i32 %tpos.1.i to i64, !dbg !431
  %54 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !431, !tbaa !331
  %statetype259.i = getelementptr inbounds %struct.p7trace_s* %54, i64 0, i32 1, !dbg !431
  %55 = load i8** %statetype259.i, align 8, !dbg !431, !tbaa !331
  %arrayidx260.i = getelementptr inbounds i8* %55, i64 %idxprom256.i, !dbg !431
  store i8 8, i8* %arrayidx260.i, align 1, !dbg !431, !tbaa !332
  %56 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !433, !tbaa !331
  %nodeidx264.i = getelementptr inbounds %struct.p7trace_s* %56, i64 0, i32 2, !dbg !433
  %57 = load i32** %nodeidx264.i, align 8, !dbg !433, !tbaa !331
  %arrayidx265.i = getelementptr inbounds i32* %57, i64 %idxprom256.i, !dbg !433
  store i32 0, i32* %arrayidx265.i, align 4, !dbg !433, !tbaa !336
  %pos269.i = getelementptr inbounds %struct.p7trace_s* %56, i64 0, i32 3, !dbg !434
  %58 = load i32** %pos269.i, align 8, !dbg !434, !tbaa !331
  %arrayidx270.i = getelementptr inbounds i32* %58, i64 %idxprom256.i, !dbg !434
  store i32 %i.0610.i, i32* %arrayidx270.i, align 4, !dbg !434, !tbaa !336
  %inc271.i = add nsw i32 %i.0610.i, 1, !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %inc271.i}, i64 0, metadata !386) #4, !dbg !435
  %inc272.i = add nsw i32 %tpos.1.i, 1, !dbg !436
  tail call void @llvm.dbg.value(metadata !{i32 %inc272.i}, i64 0, metadata !391) #4, !dbg !436
  br label %if.end335.i, !dbg !437

if.else273.i:                                     ; preds = %if.else209.i
  switch i8 %.pre630.i.pre, label %if.then313.i [
    i8 32, label %if.end335.i
    i8 46, label %if.end335.i
    i8 95, label %if.end335.i
    i8 45, label %if.end335.i
    i8 126, label %if.end335.i
  ], !dbg !396

if.then313.i:                                     ; preds = %if.else273.i
  %idxprom314.i = sext i32 %tpos.1.i to i64, !dbg !438
  %59 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !438, !tbaa !331
  %statetype317.i = getelementptr inbounds %struct.p7trace_s* %59, i64 0, i32 1, !dbg !438
  %60 = load i8** %statetype317.i, align 8, !dbg !438, !tbaa !331
  %arrayidx318.i = getelementptr inbounds i8* %60, i64 %idxprom314.i, !dbg !438
  store i8 3, i8* %arrayidx318.i, align 1, !dbg !438, !tbaa !332
  %61 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !440, !tbaa !331
  %nodeidx322.i = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 2, !dbg !440
  %62 = load i32** %nodeidx322.i, align 8, !dbg !440, !tbaa !331
  %arrayidx323.i = getelementptr inbounds i32* %62, i64 %idxprom314.i, !dbg !440
  store i32 %k.0611.i, i32* %arrayidx323.i, align 4, !dbg !440, !tbaa !336
  %pos327.i = getelementptr inbounds %struct.p7trace_s* %61, i64 0, i32 3, !dbg !441
  %63 = load i32** %pos327.i, align 8, !dbg !441, !tbaa !331
  %arrayidx328.i = getelementptr inbounds i32* %63, i64 %idxprom314.i, !dbg !441
  store i32 %i.0610.i, i32* %arrayidx328.i, align 4, !dbg !441, !tbaa !336
  %inc329.i = add nsw i32 %i.0610.i, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %inc329.i}, i64 0, metadata !386) #4, !dbg !442
  %inc330.i = add nsw i32 %tpos.1.i, 1, !dbg !443
  tail call void @llvm.dbg.value(metadata !{i32 %inc330.i}, i64 0, metadata !391) #4, !dbg !443
  br label %if.end335.i, !dbg !444

if.end335.i:                                      ; preds = %if.else273.i, %if.else273.i, %if.else273.i, %if.else273.i, %if.else273.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %land.lhs.true215.i, %if.then313.i, %if.then255.i, %if.then191.i, %if.then127.i, %if.then117.i, %if.then93.i
  %i.1.i = phi i32 [ %i.0610.i, %if.then127.i ], [ %i.0610.i, %if.then117.i ], [ %inc329.i, %if.then313.i ], [ %inc271.i, %if.then255.i ], [ %inc207.i, %if.then191.i ], [ %inc110.i, %if.then93.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %land.lhs.true215.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ], [ %i.0610.i, %if.else273.i ]
  %k.1.i = phi i32 [ %inc118.i, %if.then127.i ], [ %inc118.i, %if.then117.i ], [ %k.0611.i, %if.then313.i ], [ %k.0611.i, %if.then255.i ], [ %k.0611.i, %if.then191.i ], [ %inc94.i, %if.then93.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %land.lhs.true215.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ], [ %k.0611.i, %if.else273.i ]
  %tpos.2.i = phi i32 [ %inc143.i, %if.then127.i ], [ %tpos.1.i, %if.then117.i ], [ %inc330.i, %if.then313.i ], [ %inc272.i, %if.then255.i ], [ %inc208.i, %if.then191.i ], [ %inc111.i, %if.then93.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %land.lhs.true215.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ], [ %tpos.1.i, %if.else273.i ]
  %64 = load i32* %arrayidx34.i, align 4, !dbg !445, !tbaa !336
  %and339.i = and i32 %64, 4, !dbg !445
  %tobool340.i = icmp eq i32 %and339.i, 0, !dbg !445
  %.pre631.i = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !394, !tbaa !331
  br i1 %tobool340.i, label %for.cond23.backedge.i, label %while.cond.preheader.i, !dbg !445

for.cond23.backedge.i:                            ; preds = %while.end.i, %if.end335.i
  %65 = phi %struct.p7trace_s* [ %74, %while.end.i ], [ %.pre631.i, %if.end335.i ]
  %tpos.0.be.i = phi i32 [ %inc382.i, %while.end.i ], [ %tpos.2.i, %if.end335.i ]
  %idxprom27.i = sext i32 %tpos.0.be.i to i64, !dbg !394
  %statetype30.i = getelementptr inbounds %struct.p7trace_s* %65, i64 0, i32 1, !dbg !394
  %66 = load i8** %statetype30.i, align 8, !dbg !394, !tbaa !331
  %arrayidx31.i = getelementptr inbounds i8* %66, i64 %idxprom27.i, !dbg !394
  %lftr.wideiv = trunc i64 %indvars.iv.next624.i to i32, !dbg !378
  %exitcond = icmp eq i32 %lftr.wideiv, %17, !dbg !378
  br i1 %exitcond, label %for.end.i, label %for.body26.i, !dbg !378

while.cond.preheader.i:                           ; preds = %if.end335.i
  %statetype346.i = getelementptr inbounds %struct.p7trace_s* %.pre631.i, i64 0, i32 1, !dbg !446
  %67 = load i8** %statetype346.i, align 8, !dbg !446, !tbaa !331
  %68 = sext i32 %tpos.2.i to i64
  br label %while.cond.i, !dbg !446

while.cond.i:                                     ; preds = %while.cond.i, %while.cond.preheader.i
  %indvars.iv.i = phi i64 [ %68, %while.cond.preheader.i ], [ %indvars.iv.next.i, %while.cond.i ]
  %tpos.3.i = phi i32 [ %tpos.2.i, %while.cond.preheader.i ], [ %sub342.i, %while.cond.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !446
  %sub342.i = add nsw i32 %tpos.3.i, -1, !dbg !446
  %arrayidx347.i = getelementptr inbounds i8* %67, i64 %indvars.iv.next.i, !dbg !446
  %69 = load i8* %arrayidx347.i, align 1, !dbg !446, !tbaa !332
  %cmp349.i = icmp eq i8 %69, 2, !dbg !446
  br i1 %cmp349.i, label %while.cond.i, label %while.end.i, !dbg !446

while.end.i:                                      ; preds = %while.cond.i
  %idxprom351.i = sext i32 %tpos.3.i to i64, !dbg !448
  %arrayidx355.i = getelementptr inbounds i8* %67, i64 %idxprom351.i, !dbg !448
  store i8 7, i8* %arrayidx355.i, align 1, !dbg !448, !tbaa !332
  %70 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !449, !tbaa !331
  %nodeidx359.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 2, !dbg !449
  %71 = load i32** %nodeidx359.i, align 8, !dbg !449, !tbaa !331
  %arrayidx360.i = getelementptr inbounds i32* %71, i64 %idxprom351.i, !dbg !449
  store i32 0, i32* %arrayidx360.i, align 4, !dbg !449, !tbaa !336
  %pos364.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 3, !dbg !450
  %72 = load i32** %pos364.i, align 8, !dbg !450, !tbaa !331
  %arrayidx365.i = getelementptr inbounds i32* %72, i64 %idxprom351.i, !dbg !450
  store i32 0, i32* %arrayidx365.i, align 4, !dbg !450, !tbaa !336
  %inc366.i = add nsw i32 %tpos.3.i, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32 %inc366.i}, i64 0, metadata !391) #4, !dbg !451
  %idxprom367.i = sext i32 %inc366.i to i64, !dbg !452
  %statetype370.i = getelementptr inbounds %struct.p7trace_s* %70, i64 0, i32 1, !dbg !452
  %73 = load i8** %statetype370.i, align 8, !dbg !452, !tbaa !331
  %arrayidx371.i = getelementptr inbounds i8* %73, i64 %idxprom367.i, !dbg !452
  store i8 8, i8* %arrayidx371.i, align 1, !dbg !452, !tbaa !332
  %74 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !453, !tbaa !331
  %nodeidx375.i = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 2, !dbg !453
  %75 = load i32** %nodeidx375.i, align 8, !dbg !453, !tbaa !331
  %arrayidx376.i = getelementptr inbounds i32* %75, i64 %idxprom367.i, !dbg !453
  store i32 0, i32* %arrayidx376.i, align 4, !dbg !453, !tbaa !336
  %pos380.i = getelementptr inbounds %struct.p7trace_s* %74, i64 0, i32 3, !dbg !454
  %76 = load i32** %pos380.i, align 8, !dbg !454, !tbaa !331
  %arrayidx381.i = getelementptr inbounds i32* %76, i64 %idxprom367.i, !dbg !454
  store i32 0, i32* %arrayidx381.i, align 4, !dbg !454, !tbaa !336
  %inc382.i = add nsw i32 %tpos.3.i, 2, !dbg !455
  tail call void @llvm.dbg.value(metadata !{i32 %inc382.i}, i64 0, metadata !391) #4, !dbg !455
  br label %for.cond23.backedge.i, !dbg !456

for.end.i:                                        ; preds = %for.cond23.backedge.i, %for.body.i
  %arrayidx31.lcssa.i = phi i8* [ %arrayidx31609.i, %for.body.i ], [ %arrayidx31.i, %for.cond23.backedge.i ]
  %idxprom27.lcssa.i = phi i64 [ 2, %for.body.i ], [ %idxprom27.i, %for.cond23.backedge.i ]
  %tpos.0.lcssa.i = phi i32 [ 2, %for.body.i ], [ %tpos.0.be.i, %for.cond23.backedge.i ]
  %k.0.lcssa.i = phi i32 [ 0, %for.body.i ], [ %k.1.i, %for.cond23.backedge.i ]
  store i8 9, i8* %arrayidx31.lcssa.i, align 1, !dbg !457, !tbaa !332
  %77 = load %struct.p7trace_s** %arrayidx.i, align 8, !dbg !458, !tbaa !331
  %nodeidx393.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 2, !dbg !458
  %78 = load i32** %nodeidx393.i, align 8, !dbg !458, !tbaa !331
  %arrayidx394.i = getelementptr inbounds i32* %78, i64 %idxprom27.lcssa.i, !dbg !458
  store i32 0, i32* %arrayidx394.i, align 4, !dbg !458, !tbaa !336
  %pos398.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 3, !dbg !459
  %79 = load i32** %pos398.i, align 8, !dbg !459, !tbaa !331
  %arrayidx399.i = getelementptr inbounds i32* %79, i64 %idxprom27.lcssa.i, !dbg !459
  store i32 0, i32* %arrayidx399.i, align 4, !dbg !459, !tbaa !336
  %inc400.i = add nsw i32 %tpos.0.lcssa.i, 1, !dbg !460
  tail call void @llvm.dbg.value(metadata !{i32 %inc400.i}, i64 0, metadata !391) #4, !dbg !460
  %tlen.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 0, !dbg !460
  store i32 %inc400.i, i32* %tlen.i, align 4, !dbg !460, !tbaa !336
  tail call void @llvm.dbg.value(metadata !461, i64 0, metadata !462) #4, !dbg !464
  tail call void @llvm.dbg.value(metadata !461, i64 0, metadata !465) #4, !dbg !464
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !466) #4, !dbg !467
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !468) #4, !dbg !467
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !469) #4, !dbg !470
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !471) #4, !dbg !470
  %cmp142536.i.i = icmp sgt i32 %tpos.0.lcssa.i, -1, !dbg !472
  br i1 %cmp142536.i.i, label %while.body.lr.ph.lr.ph.lr.ph.i.i, label %trace_doctor.exit.i, !dbg !472

while.body.lr.ph.lr.ph.lr.ph.i.i:                 ; preds = %for.end.i
  %statetype.i.i = getelementptr inbounds %struct.p7trace_s* %77, i64 0, i32 1, !dbg !473
  br label %while.body.i.i, !dbg !472

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i, %if.then39.i.i, %if.then.i.i, %while.body.lr.ph.lr.ph.lr.ph.i.i
  %80 = phi i32* [ %79, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %104, %while.cond.backedge.i.i ], [ %92, %if.then39.i.i ], [ %86, %if.then.i.i ]
  %npos.016.i.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %npos.0.be.i.i, %while.cond.backedge.i.i ], [ %add57.i.i, %if.then39.i.i ], [ %add24.i.i, %if.then.i.i ]
  %opos.015.i.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i.i ], [ %opos.0.be.i.i, %while.cond.backedge.i.i ], [ %add56.i.i, %if.then39.i.i ], [ %add23.i.i, %if.then.i.i ]
  %idxprom.i.i = sext i32 %opos.015.i.i to i64, !dbg !473
  %81 = load i8** %statetype.i.i, align 8, !dbg !473, !tbaa !331
  %arrayidx.i.i = getelementptr inbounds i8* %81, i64 %idxprom.i.i, !dbg !473
  %82 = load i8* %arrayidx.i.i, align 1, !dbg !473, !tbaa !332
  switch i8 %82, label %if.else254.i.i [
    i8 2, label %land.lhs.true.i.i
    i8 3, label %land.lhs.true31.i.i
    i8 6, label %land.lhs.true132.i.i
    i8 7, label %land.lhs.true190.i.i
  ], !dbg !473

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %add.i.i = add nsw i32 %opos.015.i.i, 1, !dbg !473
  %idxprom3.i.i = sext i32 %add.i.i to i64, !dbg !473
  %arrayidx5.i.i = getelementptr inbounds i8* %81, i64 %idxprom3.i.i, !dbg !473
  %83 = load i8* %arrayidx5.i.i, align 1, !dbg !473, !tbaa !332
  %cmp7.i.i = icmp eq i8 %83, 3, !dbg !473
  br i1 %cmp7.i.i, label %if.then.i.i, label %if.else254.i.i, !dbg !473

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %idxprom9.i.i = sext i32 %npos.016.i.i to i64, !dbg !475
  %arrayidx11.i.i = getelementptr inbounds i8* %81, i64 %idxprom9.i.i, !dbg !475
  store i8 1, i8* %arrayidx11.i.i, align 1, !dbg !475, !tbaa !332
  %84 = load i32** %nodeidx393.i, align 8, !dbg !477, !tbaa !331
  %arrayidx13.i.i = getelementptr inbounds i32* %84, i64 %idxprom.i.i, !dbg !477
  %85 = load i32* %arrayidx13.i.i, align 4, !dbg !477, !tbaa !336
  %arrayidx16.i.i = getelementptr inbounds i32* %84, i64 %idxprom9.i.i, !dbg !477
  store i32 %85, i32* %arrayidx16.i.i, align 4, !dbg !477, !tbaa !336
  %86 = load i32** %pos398.i, align 8, !dbg !478, !tbaa !331
  %arrayidx19.i.i = getelementptr inbounds i32* %86, i64 %idxprom3.i.i, !dbg !478
  %87 = load i32* %arrayidx19.i.i, align 4, !dbg !478, !tbaa !336
  %arrayidx22.i.i = getelementptr inbounds i32* %86, i64 %idxprom9.i.i, !dbg !478
  store i32 %87, i32* %arrayidx22.i.i, align 4, !dbg !478, !tbaa !336
  %add23.i.i = add nsw i32 %opos.015.i.i, 2, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %add23.i.i}, i64 0, metadata !471) #4, !dbg !479
  %add24.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %add24.i.i}, i64 0, metadata !469) #4, !dbg !480
  %88 = load i32* %tlen.i, align 4, !dbg !472, !tbaa !336
  %cmp1425.i.i = icmp slt i32 %add23.i.i, %88, !dbg !472
  br i1 %cmp1425.i.i, label %while.body.i.i, label %trace_doctor.exit.i, !dbg !472

land.lhs.true31.i.i:                              ; preds = %while.body.i.i
  %add32.i.i = add nsw i32 %opos.015.i.i, 1, !dbg !481
  %idxprom33.i.i = sext i32 %add32.i.i to i64, !dbg !481
  %arrayidx35.i.i = getelementptr inbounds i8* %81, i64 %idxprom33.i.i, !dbg !481
  %89 = load i8* %arrayidx35.i.i, align 1, !dbg !481, !tbaa !332
  %cmp37.i.i = icmp eq i8 %89, 2, !dbg !481
  br i1 %cmp37.i.i, label %if.then39.i.i, label %land.lhs.true66.i.i, !dbg !481

if.then39.i.i:                                    ; preds = %land.lhs.true31.i.i
  %idxprom40.i.i = sext i32 %npos.016.i.i to i64, !dbg !482
  %arrayidx42.i.i = getelementptr inbounds i8* %81, i64 %idxprom40.i.i, !dbg !482
  store i8 1, i8* %arrayidx42.i.i, align 1, !dbg !482, !tbaa !332
  %90 = load i32** %nodeidx393.i, align 8, !dbg !484, !tbaa !331
  %arrayidx46.i.i = getelementptr inbounds i32* %90, i64 %idxprom33.i.i, !dbg !484
  %91 = load i32* %arrayidx46.i.i, align 4, !dbg !484, !tbaa !336
  %arrayidx49.i.i = getelementptr inbounds i32* %90, i64 %idxprom40.i.i, !dbg !484
  store i32 %91, i32* %arrayidx49.i.i, align 4, !dbg !484, !tbaa !336
  %92 = load i32** %pos398.i, align 8, !dbg !485, !tbaa !331
  %arrayidx52.i.i = getelementptr inbounds i32* %92, i64 %idxprom.i.i, !dbg !485
  %93 = load i32* %arrayidx52.i.i, align 4, !dbg !485, !tbaa !336
  %arrayidx55.i.i = getelementptr inbounds i32* %92, i64 %idxprom40.i.i, !dbg !485
  store i32 %93, i32* %arrayidx55.i.i, align 4, !dbg !485, !tbaa !336
  %add56.i.i = add nsw i32 %opos.015.i.i, 2, !dbg !486
  tail call void @llvm.dbg.value(metadata !{i32 %add56.i.i}, i64 0, metadata !471) #4, !dbg !486
  %add57.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %add57.i.i}, i64 0, metadata !469) #4, !dbg !487
  %94 = load i32* %tlen.i, align 4, !dbg !472, !tbaa !336
  %cmp14.i.i = icmp slt i32 %add56.i.i, %94, !dbg !472
  br i1 %cmp14.i.i, label %while.body.i.i, label %trace_doctor.exit.i, !dbg !472

land.lhs.true66.i.i:                              ; preds = %land.lhs.true31.i.i
  %sub.i.i = add nsw i32 %opos.015.i.i, -1, !dbg !488
  %idxprom67.i.i = sext i32 %sub.i.i to i64, !dbg !488
  %arrayidx69.i.i = getelementptr inbounds i8* %81, i64 %idxprom67.i.i, !dbg !488
  %95 = load i8* %arrayidx69.i.i, align 1, !dbg !488, !tbaa !332
  %cmp71.i.i = icmp eq i8 %95, 6, !dbg !488
  br i1 %cmp71.i.i, label %if.then73.i.i, label %land.lhs.true98.i.i, !dbg !488

if.then73.i.i:                                    ; preds = %land.lhs.true66.i.i
  %idxprom74.i.i = sext i32 %npos.016.i.i to i64, !dbg !489
  %arrayidx76.i.i = getelementptr inbounds i8* %81, i64 %idxprom74.i.i, !dbg !489
  store i8 1, i8* %arrayidx76.i.i, align 1, !dbg !489, !tbaa !332
  %96 = load i32** %nodeidx393.i, align 8, !dbg !491, !tbaa !331
  %arrayidx79.i.i = getelementptr inbounds i32* %96, i64 %idxprom.i.i, !dbg !491
  %97 = load i32* %arrayidx79.i.i, align 4, !dbg !491, !tbaa !336
  %arrayidx82.i.i = getelementptr inbounds i32* %96, i64 %idxprom74.i.i, !dbg !491
  store i32 %97, i32* %arrayidx82.i.i, align 4, !dbg !491, !tbaa !336
  %98 = load i32** %pos398.i, align 8, !dbg !492, !tbaa !331
  %arrayidx85.i.i = getelementptr inbounds i32* %98, i64 %idxprom.i.i, !dbg !492
  %99 = load i32* %arrayidx85.i.i, align 4, !dbg !492, !tbaa !336
  %arrayidx88.i.i = getelementptr inbounds i32* %98, i64 %idxprom74.i.i, !dbg !492
  store i32 %99, i32* %arrayidx88.i.i, align 4, !dbg !492, !tbaa !336
  tail call void @llvm.dbg.value(metadata !{i32 %add32.i.i}, i64 0, metadata !471) #4, !dbg !493
  %inc90.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32 %inc90.i.i}, i64 0, metadata !469) #4, !dbg !494
  br label %while.cond.backedge.i.i, !dbg !495

land.lhs.true98.i.i:                              ; preds = %land.lhs.true66.i.i
  %cmp104.i.i = icmp eq i8 %89, 7, !dbg !496
  br i1 %cmp104.i.i, label %if.then106.i.i, label %if.else254.i.i, !dbg !496

if.then106.i.i:                                   ; preds = %land.lhs.true98.i.i
  %idxprom107.i.i = sext i32 %npos.016.i.i to i64, !dbg !497
  %arrayidx109.i.i = getelementptr inbounds i8* %81, i64 %idxprom107.i.i, !dbg !497
  store i8 1, i8* %arrayidx109.i.i, align 1, !dbg !497, !tbaa !332
  %100 = load i32** %nodeidx393.i, align 8, !dbg !499, !tbaa !331
  %arrayidx112.i.i = getelementptr inbounds i32* %100, i64 %idxprom.i.i, !dbg !499
  %101 = load i32* %arrayidx112.i.i, align 4, !dbg !499, !tbaa !336
  %add113.i.i = add nsw i32 %101, 1, !dbg !499
  %arrayidx116.i.i = getelementptr inbounds i32* %100, i64 %idxprom107.i.i, !dbg !499
  store i32 %add113.i.i, i32* %arrayidx116.i.i, align 4, !dbg !499, !tbaa !336
  %102 = load i32** %pos398.i, align 8, !dbg !500, !tbaa !331
  %arrayidx119.i.i = getelementptr inbounds i32* %102, i64 %idxprom.i.i, !dbg !500
  %103 = load i32* %arrayidx119.i.i, align 4, !dbg !500, !tbaa !336
  %arrayidx122.i.i = getelementptr inbounds i32* %102, i64 %idxprom107.i.i, !dbg !500
  store i32 %103, i32* %arrayidx122.i.i, align 4, !dbg !500, !tbaa !336
  tail call void @llvm.dbg.value(metadata !{i32 %add32.i.i}, i64 0, metadata !471) #4, !dbg !501
  %inc124.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %inc124.i.i}, i64 0, metadata !469) #4, !dbg !502
  br label %while.cond.backedge.i.i, !dbg !503

while.cond.backedge.i.i:                          ; preds = %if.else254.i.i, %if.then214.i.i, %if.then155.i.i, %if.then106.i.i, %if.then73.i.i
  %104 = phi i32* [ %98, %if.then73.i.i ], [ %102, %if.then106.i.i ], [ %114, %if.then155.i.i ], [ %125, %if.then214.i.i ], [ %128, %if.else254.i.i ]
  %opos.0.be.i.i = phi i32 [ %add32.i.i, %if.then73.i.i ], [ %add32.i.i, %if.then106.i.i ], [ %add133.i.pre.i, %if.then155.i.i ], [ %add252.i.i, %if.then214.i.i ], [ %inc273.i.i, %if.else254.i.i ]
  %npos.0.be.i.i = phi i32 [ %inc90.i.i, %if.then73.i.i ], [ %inc124.i.i, %if.then106.i.i ], [ %inc182.i.i, %if.then155.i.i ], [ %add253.i.i, %if.then214.i.i ], [ %inc274.i.i, %if.else254.i.i ]
  %105 = load i32* %tlen.i, align 4, !dbg !472, !tbaa !336
  %cmp.i.i = icmp slt i32 %opos.0.be.i.i, %105, !dbg !472
  br i1 %cmp.i.i, label %while.body.i.i, label %trace_doctor.exit.i, !dbg !472

land.lhs.true132.i.i:                             ; preds = %while.body.i.i
  %add133.i.pre.i = add nsw i32 %opos.015.i.i, 1, !dbg !504
  %idxprom134.i.pre.i = sext i32 %add133.i.pre.i to i64, !dbg !504
  %arrayidx136.i.pre.i = getelementptr inbounds i8* %81, i64 %idxprom134.i.pre.i, !dbg !504
  %106 = load i8* %arrayidx136.i.pre.i, align 1, !dbg !504, !tbaa !332
  %cmp138.i.i = icmp eq i8 %106, 7, !dbg !504
  br i1 %cmp138.i.i, label %land.lhs.true140.i.i, label %if.else254.i.i, !dbg !504

land.lhs.true140.i.i:                             ; preds = %land.lhs.true132.i.i
  %sub141.i.i = add nsw i32 %opos.015.i.i, -1, !dbg !504
  %idxprom142.i.i = sext i32 %sub141.i.i to i64, !dbg !504
  %arrayidx144.i.i = getelementptr inbounds i8* %81, i64 %idxprom142.i.i, !dbg !504
  %107 = load i8* %arrayidx144.i.i, align 1, !dbg !504, !tbaa !332
  %cmp146.i.i = icmp eq i8 %107, 5, !dbg !504
  br i1 %cmp146.i.i, label %land.lhs.true148.i.i, label %if.else254.i.i, !dbg !504

land.lhs.true148.i.i:                             ; preds = %land.lhs.true140.i.i
  %arrayidx152.i.i = getelementptr inbounds i32* %80, i64 %idxprom142.i.i, !dbg !504
  %108 = load i32* %arrayidx152.i.i, align 4, !dbg !504, !tbaa !336
  %cmp153.i.i = icmp sgt i32 %108, 0, !dbg !504
  br i1 %cmp153.i.i, label %if.then155.i.i, label %if.else254.i.i, !dbg !504

if.then155.i.i:                                   ; preds = %land.lhs.true148.i.i
  %idxprom156.i.i = sext i32 %npos.016.i.i to i64, !dbg !505
  %arrayidx158.i.i = getelementptr inbounds i8* %81, i64 %idxprom156.i.i, !dbg !505
  store i8 1, i8* %arrayidx158.i.i, align 1, !dbg !505, !tbaa !332
  %109 = load i32** %nodeidx393.i, align 8, !dbg !507, !tbaa !331
  %arrayidx161.i.i = getelementptr inbounds i32* %109, i64 %idxprom156.i.i, !dbg !507
  store i32 1, i32* %arrayidx161.i.i, align 4, !dbg !507, !tbaa !336
  %110 = load i32** %pos398.i, align 8, !dbg !508, !tbaa !331
  %arrayidx165.i.i = getelementptr inbounds i32* %110, i64 %idxprom142.i.i, !dbg !508
  %111 = load i32* %arrayidx165.i.i, align 4, !dbg !508, !tbaa !336
  %arrayidx168.i.i = getelementptr inbounds i32* %110, i64 %idxprom156.i.i, !dbg !508
  store i32 %111, i32* %arrayidx168.i.i, align 4, !dbg !508, !tbaa !336
  %sub169.i.i = add nsw i32 %npos.016.i.i, -1, !dbg !509
  %idxprom170.i.i = sext i32 %sub169.i.i to i64, !dbg !509
  %112 = load i8** %statetype.i.i, align 8, !dbg !509, !tbaa !331
  %arrayidx172.i.i = getelementptr inbounds i8* %112, i64 %idxprom170.i.i, !dbg !509
  store i8 6, i8* %arrayidx172.i.i, align 1, !dbg !509, !tbaa !332
  %113 = load i32** %nodeidx393.i, align 8, !dbg !510, !tbaa !331
  %arrayidx176.i.i = getelementptr inbounds i32* %113, i64 %idxprom170.i.i, !dbg !510
  store i32 0, i32* %arrayidx176.i.i, align 4, !dbg !510, !tbaa !336
  %114 = load i32** %pos398.i, align 8, !dbg !511, !tbaa !331
  %arrayidx180.i.i = getelementptr inbounds i32* %114, i64 %idxprom170.i.i, !dbg !511
  store i32 0, i32* %arrayidx180.i.i, align 4, !dbg !511, !tbaa !336
  tail call void @llvm.dbg.value(metadata !{i32 %add133.i.pre.i}, i64 0, metadata !471) #4, !dbg !512
  %inc182.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata !{i32 %inc182.i.i}, i64 0, metadata !469) #4, !dbg !513
  br label %while.cond.backedge.i.i, !dbg !514

land.lhs.true190.i.i:                             ; preds = %while.body.i.i
  %sub191.i.pre.i = add nsw i32 %opos.015.i.i, -1, !dbg !515
  %idxprom192.i.pre.i = sext i32 %sub191.i.pre.i to i64, !dbg !515
  %arrayidx194.i.pre.i = getelementptr inbounds i8* %81, i64 %idxprom192.i.pre.i, !dbg !515
  %.pre234 = load i8* %arrayidx194.i.pre.i, align 1, !dbg !515, !tbaa !332
  %cmp196.i.i = icmp eq i8 %.pre234, 6, !dbg !515
  br i1 %cmp196.i.i, label %land.lhs.true198.i.i, label %if.else254.i.i, !dbg !515

land.lhs.true198.i.i:                             ; preds = %land.lhs.true190.i.i
  %add199.i.i = add nsw i32 %opos.015.i.i, 1, !dbg !515
  %idxprom200.i.i = sext i32 %add199.i.i to i64, !dbg !515
  %arrayidx202.i.i = getelementptr inbounds i8* %81, i64 %idxprom200.i.i, !dbg !515
  %115 = load i8* %arrayidx202.i.i, align 1, !dbg !515, !tbaa !332
  %cmp204.i.i = icmp eq i8 %115, 8, !dbg !515
  br i1 %cmp204.i.i, label %land.lhs.true206.i.i, label %if.else254.i.i, !dbg !515

land.lhs.true206.i.i:                             ; preds = %land.lhs.true198.i.i
  %add207.i.i = add nsw i32 %opos.015.i.i, 2, !dbg !515
  %idxprom208.i.i = sext i32 %add207.i.i to i64, !dbg !515
  %arrayidx210.i.i = getelementptr inbounds i8* %81, i64 %idxprom208.i.i, !dbg !515
  %116 = load i8* %arrayidx210.i.i, align 1, !dbg !515, !tbaa !332
  %cmp212.i.i = icmp eq i8 %116, 8, !dbg !515
  br i1 %cmp212.i.i, label %if.then214.i.i, label %if.else254.i.i, !dbg !515

if.then214.i.i:                                   ; preds = %land.lhs.true206.i.i
  %idxprom215.i.i = sext i32 %npos.016.i.i to i64, !dbg !516
  %arrayidx217.i.i = getelementptr inbounds i8* %81, i64 %idxprom215.i.i, !dbg !516
  store i8 1, i8* %arrayidx217.i.i, align 1, !dbg !516, !tbaa !332
  %117 = load i32** %nodeidx393.i, align 8, !dbg !518, !tbaa !331
  %arrayidx220.i.i = getelementptr inbounds i32* %117, i64 %idxprom215.i.i, !dbg !518
  store i32 %k.0.lcssa.i, i32* %arrayidx220.i.i, align 4, !dbg !518, !tbaa !336
  %118 = load i32** %pos398.i, align 8, !dbg !519, !tbaa !331
  %arrayidx224.i.i = getelementptr inbounds i32* %118, i64 %idxprom208.i.i, !dbg !519
  %119 = load i32* %arrayidx224.i.i, align 4, !dbg !519, !tbaa !336
  %arrayidx227.i.i = getelementptr inbounds i32* %118, i64 %idxprom215.i.i, !dbg !519
  store i32 %119, i32* %arrayidx227.i.i, align 4, !dbg !519, !tbaa !336
  %add228.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !520
  %idxprom229.i.i = sext i32 %add228.i.i to i64, !dbg !520
  %120 = load i8** %statetype.i.i, align 8, !dbg !520, !tbaa !331
  %arrayidx231.i.i = getelementptr inbounds i8* %120, i64 %idxprom229.i.i, !dbg !520
  store i8 7, i8* %arrayidx231.i.i, align 1, !dbg !520, !tbaa !332
  %121 = load i32** %nodeidx393.i, align 8, !dbg !521, !tbaa !331
  %arrayidx235.i.i = getelementptr inbounds i32* %121, i64 %idxprom229.i.i, !dbg !521
  store i32 0, i32* %arrayidx235.i.i, align 4, !dbg !521, !tbaa !336
  %122 = load i32** %pos398.i, align 8, !dbg !522, !tbaa !331
  %arrayidx239.i.i = getelementptr inbounds i32* %122, i64 %idxprom229.i.i, !dbg !522
  store i32 0, i32* %arrayidx239.i.i, align 4, !dbg !522, !tbaa !336
  %add240.i.i = add nsw i32 %npos.016.i.i, 2, !dbg !523
  %idxprom241.i.i = sext i32 %add240.i.i to i64, !dbg !523
  %123 = load i8** %statetype.i.i, align 8, !dbg !523, !tbaa !331
  %arrayidx243.i.i = getelementptr inbounds i8* %123, i64 %idxprom241.i.i, !dbg !523
  store i8 8, i8* %arrayidx243.i.i, align 1, !dbg !523, !tbaa !332
  %124 = load i32** %nodeidx393.i, align 8, !dbg !524, !tbaa !331
  %arrayidx247.i.i = getelementptr inbounds i32* %124, i64 %idxprom241.i.i, !dbg !524
  store i32 0, i32* %arrayidx247.i.i, align 4, !dbg !524, !tbaa !336
  %125 = load i32** %pos398.i, align 8, !dbg !525, !tbaa !331
  %arrayidx251.i.i = getelementptr inbounds i32* %125, i64 %idxprom241.i.i, !dbg !525
  store i32 0, i32* %arrayidx251.i.i, align 4, !dbg !525, !tbaa !336
  %add252.i.i = add nsw i32 %opos.015.i.i, 3, !dbg !526
  tail call void @llvm.dbg.value(metadata !{i32 %add252.i.i}, i64 0, metadata !471) #4, !dbg !526
  %add253.i.i = add nsw i32 %npos.016.i.i, 3, !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %add253.i.i}, i64 0, metadata !469) #4, !dbg !527
  br label %while.cond.backedge.i.i, !dbg !528

if.else254.i.i:                                   ; preds = %land.lhs.true140.i.i, %land.lhs.true148.i.i, %land.lhs.true206.i.i, %land.lhs.true198.i.i, %land.lhs.true190.i.i, %land.lhs.true132.i.i, %land.lhs.true98.i.i, %land.lhs.true.i.i, %while.body.i.i
  %idxprom258.i.i = sext i32 %npos.016.i.i to i64, !dbg !529
  %arrayidx260.i.i = getelementptr inbounds i8* %81, i64 %idxprom258.i.i, !dbg !529
  store i8 %82, i8* %arrayidx260.i.i, align 1, !dbg !529, !tbaa !332
  %126 = load i32** %nodeidx393.i, align 8, !dbg !531, !tbaa !331
  %arrayidx263.i.i = getelementptr inbounds i32* %126, i64 %idxprom.i.i, !dbg !531
  %127 = load i32* %arrayidx263.i.i, align 4, !dbg !531, !tbaa !336
  %arrayidx266.i.i = getelementptr inbounds i32* %126, i64 %idxprom258.i.i, !dbg !531
  store i32 %127, i32* %arrayidx266.i.i, align 4, !dbg !531, !tbaa !336
  %128 = load i32** %pos398.i, align 8, !dbg !532, !tbaa !331
  %arrayidx269.i.i = getelementptr inbounds i32* %128, i64 %idxprom.i.i, !dbg !532
  %129 = load i32* %arrayidx269.i.i, align 4, !dbg !532, !tbaa !336
  %arrayidx272.i.i = getelementptr inbounds i32* %128, i64 %idxprom258.i.i, !dbg !532
  store i32 %129, i32* %arrayidx272.i.i, align 4, !dbg !532, !tbaa !336
  %inc273.i.i = add nsw i32 %opos.015.i.i, 1, !dbg !533
  tail call void @llvm.dbg.value(metadata !{i32 %inc273.i.i}, i64 0, metadata !471) #4, !dbg !533
  %inc274.i.i = add nsw i32 %npos.016.i.i, 1, !dbg !534
  tail call void @llvm.dbg.value(metadata !{i32 %inc274.i.i}, i64 0, metadata !469) #4, !dbg !534
  br label %while.cond.backedge.i.i

trace_doctor.exit.i:                              ; preds = %while.cond.backedge.i.i, %if.then39.i.i, %if.then.i.i, %for.end.i
  %npos.0.lcssa.i.i = phi i32 [ 0, %for.end.i ], [ %npos.0.be.i.i, %while.cond.backedge.i.i ], [ %add57.i.i, %if.then39.i.i ], [ %add24.i.i, %if.then.i.i ]
  store i32 %npos.0.lcssa.i.i, i32* %tlen.i, align 4, !dbg !535, !tbaa !336
  %indvars.iv.next626.i = add i64 %indvars.iv625.i, 1, !dbg !374
  %lftr.wideiv220 = trunc i64 %indvars.iv.next626.i to i32, !dbg !374
  %exitcond221 = icmp eq i32 %lftr.wideiv220, %16, !dbg !374
  br i1 %exitcond221, label %fake_tracebacks.exit, label %for.body.i, !dbg !374

fake_tracebacks.exit:                             ; preds = %trace_doctor.exit.i, %if.end45
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !267), !dbg !536
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !537), !dbg !538
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !267), !dbg !539
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !267), !dbg !542
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !267), !dbg !543
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %18}, i64 0, metadata !267), !dbg !546
  %call = tail call %struct.plan7_s* @AllocPlan7(i32 %M.0.lcssa252) #6, !dbg !547
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call}, i64 0, metadata !266), !dbg !547
  tail call void @ZeroPlan7(%struct.plan7_s* %call) #6, !dbg !548
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !269), !dbg !549
  %130 = load i32* %nseq, align 4, !dbg !549, !tbaa !336
  %cmp49189 = icmp sgt i32 %130, 0, !dbg !549
  br i1 %cmp49189, label %for.body50.lr.ph, label %for.end59, !dbg !549

for.body50.lr.ph:                                 ; preds = %fake_tracebacks.exit
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !539
  br label %for.body50, !dbg !549

for.body50:                                       ; preds = %for.body50.lr.ph, %for.body50
  %indvars.iv218 = phi i64 [ 0, %for.body50.lr.ph ], [ %indvars.iv.next219, %for.body50 ]
  %arrayidx52 = getelementptr inbounds i8** %dsq, i64 %indvars.iv218, !dbg !539
  %131 = load i8** %arrayidx52, align 8, !dbg !539, !tbaa !331
  %132 = load float** %wgt, align 8, !dbg !539, !tbaa !331
  %arrayidx54 = getelementptr inbounds float* %132, i64 %indvars.iv218, !dbg !539
  %133 = load float* %arrayidx54, align 4, !dbg !539, !tbaa !550
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv218, !dbg !539
  %134 = load %struct.p7trace_s** %arrayidx56, align 8, !dbg !539, !tbaa !331
  tail call void @P7TraceCount(%struct.plan7_s* %call, i8* %131, float %133, %struct.p7trace_s* %134) #6, !dbg !539
  %indvars.iv.next219 = add i64 %indvars.iv218, 1, !dbg !549
  %135 = load i32* %nseq, align 4, !dbg !549, !tbaa !336
  %136 = trunc i64 %indvars.iv.next219 to i32, !dbg !549
  %cmp49 = icmp slt i32 %136, %135, !dbg !549
  br i1 %cmp49, label %for.body50, label %for.end59, !dbg !549

for.end59:                                        ; preds = %for.body50, %fake_tracebacks.exit
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call}, i64 0, metadata !551) #4, !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32* %matassign}, i64 0, metadata !554) #4, !dbg !553
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !555) #4, !dbg !553
  %rf.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !556
  %137 = load i8** %rf.i, align 8, !dbg !556, !tbaa !331
  %cmp.i = icmp eq i8* %137, null, !dbg !556
  br i1 %cmp.i, label %if.end23.i, label %if.then.i163, !dbg !556

if.then.i163:                                     ; preds = %for.end59
  %rf1.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 3, !dbg !557
  %138 = load i8** %rf1.i, align 8, !dbg !557, !tbaa !331
  store i8 32, i8* %138, align 1, !dbg !557, !tbaa !332
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !560
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !560
  %139 = load i32* %alen, align 4, !dbg !560, !tbaa !336
  %cmp2555.i = icmp slt i32 %139, 1, !dbg !560
  br i1 %cmp2555.i, label %for.end.i172, label %for.body.i166, !dbg !560

for.body.i166:                                    ; preds = %if.then.i163, %for.inc.i
  %140 = phi i32 [ %146, %for.inc.i ], [ %139, %if.then.i163 ]
  %indvars.iv574.i = phi i64 [ %indvars.iv.next575.i, %for.inc.i ], [ 1, %if.then.i163 ]
  %k.0557.i = phi i32 [ %k.1.i169, %for.inc.i ], [ 1, %if.then.i163 ]
  %arrayidx3.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv574.i, !dbg !563
  %141 = load i32* %arrayidx3.i, align 4, !dbg !563, !tbaa !336
  %and.i164 = and i32 %141, 1, !dbg !563
  %tobool.i165 = icmp eq i32 %and.i164, 0, !dbg !563
  br i1 %tobool.i165, label %for.inc.i, label %if.then4.i, !dbg !563

if.then4.i:                                       ; preds = %for.body.i166
  %142 = add nsw i64 %indvars.iv574.i, -1, !dbg !564
  %143 = load i8** %rf.i, align 8, !dbg !564, !tbaa !331
  %arrayidx7.i = getelementptr inbounds i8* %143, i64 %142, !dbg !564
  %144 = load i8* %arrayidx7.i, align 1, !dbg !564, !tbaa !332
  %cmp8.i = icmp eq i8 %144, 32, !dbg !564
  %..i = select i1 %cmp8.i, i8 46, i8 %144, !dbg !564
  %inc.i167 = add nsw i32 %k.0557.i, 1, !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i167}, i64 0, metadata !559) #4, !dbg !564
  %idxprom16.i = sext i32 %k.0557.i to i64, !dbg !564
  %145 = load i8** %rf1.i, align 8, !dbg !564, !tbaa !331
  %arrayidx18.i168 = getelementptr inbounds i8* %145, i64 %idxprom16.i, !dbg !564
  store i8 %..i, i8* %arrayidx18.i168, align 1, !dbg !564, !tbaa !332
  %.pre582.i = load i32* %alen, align 4, !dbg !560, !tbaa !336
  br label %for.inc.i, !dbg !564

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i166
  %146 = phi i32 [ %.pre582.i, %if.then4.i ], [ %140, %for.body.i166 ], !dbg !560
  %k.1.i169 = phi i32 [ %inc.i167, %if.then4.i ], [ %k.0557.i, %for.body.i166 ]
  %indvars.iv.next575.i = add i64 %indvars.iv574.i, 1, !dbg !560
  %147 = trunc i64 %indvars.iv574.i to i32, !dbg !560
  %cmp2.i = icmp slt i32 %147, %146, !dbg !560
  br i1 %cmp2.i, label %for.body.i166, label %for.end.i172, !dbg !560

for.end.i172:                                     ; preds = %for.inc.i, %if.then.i163
  %k.0.lcssa.i170 = phi i32 [ 1, %if.then.i163 ], [ %k.1.i169, %for.inc.i ]
  %idxprom20.i = sext i32 %k.0.lcssa.i170 to i64, !dbg !565
  %148 = load i8** %rf1.i, align 8, !dbg !565, !tbaa !331
  %arrayidx22.i171 = getelementptr inbounds i8* %148, i64 %idxprom20.i, !dbg !565
  store i8 0, i8* %arrayidx22.i171, align 1, !dbg !565, !tbaa !332
  %flags.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !566
  %149 = load i32* %flags.i, align 4, !dbg !566, !tbaa !336
  %or.i = or i32 %149, 4, !dbg !566
  store i32 %or.i, i32* %flags.i, align 4, !dbg !566, !tbaa !336
  br label %if.end23.i, !dbg !567

if.end23.i:                                       ; preds = %for.end.i172, %for.end59
  %ss_cons.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !568
  %150 = load i8** %ss_cons.i, align 8, !dbg !568, !tbaa !331
  %cmp24.i = icmp eq i8* %150, null, !dbg !568
  br i1 %cmp24.i, label %if.end68.i, label %if.then26.i, !dbg !568

if.then26.i:                                      ; preds = %if.end23.i
  %cs.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 4, !dbg !569
  %151 = load i8** %cs.i, align 8, !dbg !569, !tbaa !331
  store i8 32, i8* %151, align 1, !dbg !569, !tbaa !332
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !571
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !571
  %152 = load i32* %alen, align 4, !dbg !571, !tbaa !336
  %cmp30551.i = icmp slt i32 %152, 1, !dbg !571
  br i1 %cmp30551.i, label %for.end62.i, label %for.body32.i, !dbg !571

for.body32.i:                                     ; preds = %if.then26.i, %for.inc60.i
  %153 = phi i32 [ %159, %for.inc60.i ], [ %152, %if.then26.i ]
  %indvars.iv571.i = phi i64 [ %indvars.iv.next572.i, %for.inc60.i ], [ 1, %if.then26.i ]
  %k.2553.i = phi i32 [ %k.3.i, %for.inc60.i ], [ 1, %if.then26.i ]
  %arrayidx34.i173 = getelementptr inbounds i32* %matassign, i64 %indvars.iv571.i, !dbg !573
  %154 = load i32* %arrayidx34.i173, align 4, !dbg !573, !tbaa !336
  %and35.i = and i32 %154, 1, !dbg !573
  %tobool36.i = icmp eq i32 %and35.i, 0, !dbg !573
  br i1 %tobool36.i, label %for.inc60.i, label %if.then37.i, !dbg !573

if.then37.i:                                      ; preds = %for.body32.i
  %155 = add nsw i64 %indvars.iv571.i, -1, !dbg !574
  %156 = load i8** %ss_cons.i, align 8, !dbg !574, !tbaa !331
  %arrayidx41.i = getelementptr inbounds i8* %156, i64 %155, !dbg !574
  %157 = load i8* %arrayidx41.i, align 1, !dbg !574, !tbaa !332
  %cmp43.i = icmp eq i8 %157, 32, !dbg !574
  %.533.i = select i1 %cmp43.i, i8 46, i8 %157, !dbg !574
  %inc55.i = add nsw i32 %k.2553.i, 1, !dbg !574
  tail call void @llvm.dbg.value(metadata !{i32 %inc55.i}, i64 0, metadata !559) #4, !dbg !574
  %idxprom56.i = sext i32 %k.2553.i to i64, !dbg !574
  %158 = load i8** %cs.i, align 8, !dbg !574, !tbaa !331
  %arrayidx58.i174 = getelementptr inbounds i8* %158, i64 %idxprom56.i, !dbg !574
  store i8 %.533.i, i8* %arrayidx58.i174, align 1, !dbg !574, !tbaa !332
  %.pre581.i = load i32* %alen, align 4, !dbg !571, !tbaa !336
  br label %for.inc60.i, !dbg !574

for.inc60.i:                                      ; preds = %if.then37.i, %for.body32.i
  %159 = phi i32 [ %.pre581.i, %if.then37.i ], [ %153, %for.body32.i ], !dbg !571
  %k.3.i = phi i32 [ %inc55.i, %if.then37.i ], [ %k.2553.i, %for.body32.i ]
  %indvars.iv.next572.i = add i64 %indvars.iv571.i, 1, !dbg !571
  %160 = trunc i64 %indvars.iv571.i to i32, !dbg !571
  %cmp30.i = icmp slt i32 %160, %159, !dbg !571
  br i1 %cmp30.i, label %for.body32.i, label %for.end62.i, !dbg !571

for.end62.i:                                      ; preds = %for.inc60.i, %if.then26.i
  %k.2.lcssa.i = phi i32 [ 1, %if.then26.i ], [ %k.3.i, %for.inc60.i ]
  %idxprom63.i = sext i32 %k.2.lcssa.i to i64, !dbg !575
  %161 = load i8** %cs.i, align 8, !dbg !575, !tbaa !331
  %arrayidx65.i = getelementptr inbounds i8* %161, i64 %idxprom63.i, !dbg !575
  store i8 0, i8* %arrayidx65.i, align 1, !dbg !575, !tbaa !332
  %flags66.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !576
  %162 = load i32* %flags66.i, align 4, !dbg !576, !tbaa !336
  %or67.i = or i32 %162, 8, !dbg !576
  store i32 %or67.i, i32* %flags66.i, align 4, !dbg !576, !tbaa !336
  br label %if.end68.i, !dbg !577

if.end68.i:                                       ; preds = %for.end62.i, %if.end23.i
  %sa_cons.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !578
  %163 = load i8** %sa_cons.i, align 8, !dbg !578, !tbaa !331
  %cmp69.i = icmp eq i8* %163, null, !dbg !578
  br i1 %cmp69.i, label %for.cond114.preheader.i, label %if.then71.i, !dbg !578

if.then71.i:                                      ; preds = %if.end68.i
  %ca.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 5, !dbg !579
  %164 = load i8** %ca.i, align 8, !dbg !579, !tbaa !331
  store i8 32, i8* %164, align 1, !dbg !579, !tbaa !332
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !581
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !581
  %165 = load i32* %alen, align 4, !dbg !581, !tbaa !336
  %cmp75547.i = icmp slt i32 %165, 1, !dbg !581
  br i1 %cmp75547.i, label %for.end107.i, label %for.body77.i, !dbg !581

for.body77.i:                                     ; preds = %if.then71.i, %for.inc105.i
  %166 = phi i32 [ %172, %for.inc105.i ], [ %165, %if.then71.i ]
  %indvars.iv568.i = phi i64 [ %indvars.iv.next569.i, %for.inc105.i ], [ 1, %if.then71.i ]
  %k.4549.i = phi i32 [ %k.5.i, %for.inc105.i ], [ 1, %if.then71.i ]
  %arrayidx79.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv568.i, !dbg !583
  %167 = load i32* %arrayidx79.i, align 4, !dbg !583, !tbaa !336
  %and80.i = and i32 %167, 1, !dbg !583
  %tobool81.i = icmp eq i32 %and80.i, 0, !dbg !583
  br i1 %tobool81.i, label %for.inc105.i, label %if.then82.i, !dbg !583

if.then82.i:                                      ; preds = %for.body77.i
  %168 = add nsw i64 %indvars.iv568.i, -1, !dbg !584
  %169 = load i8** %sa_cons.i, align 8, !dbg !584, !tbaa !331
  %arrayidx86.i = getelementptr inbounds i8* %169, i64 %168, !dbg !584
  %170 = load i8* %arrayidx86.i, align 1, !dbg !584, !tbaa !332
  %cmp88.i = icmp eq i8 %170, 32, !dbg !584
  %.534.i = select i1 %cmp88.i, i8 46, i8 %170, !dbg !584
  %inc100.i = add nsw i32 %k.4549.i, 1, !dbg !584
  tail call void @llvm.dbg.value(metadata !{i32 %inc100.i}, i64 0, metadata !559) #4, !dbg !584
  %idxprom101.i = sext i32 %k.4549.i to i64, !dbg !584
  %171 = load i8** %ca.i, align 8, !dbg !584, !tbaa !331
  %arrayidx103.i = getelementptr inbounds i8* %171, i64 %idxprom101.i, !dbg !584
  store i8 %.534.i, i8* %arrayidx103.i, align 1, !dbg !584, !tbaa !332
  %.pre.i175 = load i32* %alen, align 4, !dbg !581, !tbaa !336
  br label %for.inc105.i, !dbg !584

for.inc105.i:                                     ; preds = %if.then82.i, %for.body77.i
  %172 = phi i32 [ %.pre.i175, %if.then82.i ], [ %166, %for.body77.i ], !dbg !581
  %k.5.i = phi i32 [ %inc100.i, %if.then82.i ], [ %k.4549.i, %for.body77.i ]
  %indvars.iv.next569.i = add i64 %indvars.iv568.i, 1, !dbg !581
  %173 = trunc i64 %indvars.iv568.i to i32, !dbg !581
  %cmp75.i = icmp slt i32 %173, %172, !dbg !581
  br i1 %cmp75.i, label %for.body77.i, label %for.end107.i, !dbg !581

for.end107.i:                                     ; preds = %for.inc105.i, %if.then71.i
  %k.4.lcssa.i = phi i32 [ 1, %if.then71.i ], [ %k.5.i, %for.inc105.i ]
  %idxprom108.i = sext i32 %k.4.lcssa.i to i64, !dbg !585
  %174 = load i8** %ca.i, align 8, !dbg !585, !tbaa !331
  %arrayidx110.i = getelementptr inbounds i8* %174, i64 %idxprom108.i, !dbg !585
  store i8 0, i8* %arrayidx110.i, align 1, !dbg !585, !tbaa !332
  %flags111.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !586
  %175 = load i32* %flags111.i, align 4, !dbg !586, !tbaa !336
  %or112.i = or i32 %175, 8192, !dbg !586
  store i32 %or112.i, i32* %flags111.i, align 4, !dbg !586, !tbaa !336
  br label %for.cond114.preheader.i, !dbg !587

for.cond114.preheader.i:                          ; preds = %if.end68.i, %for.end107.i
  %176 = load i32* %alen, align 4, !dbg !588, !tbaa !336
  %cmp116544.i = icmp slt i32 %176, 1, !dbg !588
  br i1 %cmp116544.i, label %for.end130.i, label %for.body118.lr.ph.i, !dbg !588

for.body118.lr.ph.i:                              ; preds = %for.cond114.preheader.i
  %map.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 9, !dbg !590
  br label %for.body118.i, !dbg !588

for.body118.i:                                    ; preds = %for.inc128.i, %for.body118.lr.ph.i
  %177 = phi i32 [ %181, %for.inc128.i ], [ %176, %for.body118.lr.ph.i ]
  %indvars.iv566.i = phi i64 [ %indvars.iv.next567.i, %for.inc128.i ], [ 1, %for.body118.lr.ph.i ]
  %k.6546.i = phi i32 [ %k.7.i, %for.inc128.i ], [ 1, %for.body118.lr.ph.i ]
  %arrayidx120.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv566.i, !dbg !591
  %178 = load i32* %arrayidx120.i, align 4, !dbg !591, !tbaa !336
  %and121.i = and i32 %178, 1, !dbg !591
  %tobool122.i = icmp eq i32 %and121.i, 0, !dbg !591
  br i1 %tobool122.i, label %for.body118.for.inc128_crit_edge.i, label %if.then123.i, !dbg !591

for.body118.for.inc128_crit_edge.i:               ; preds = %for.body118.i
  %.pre583.i = trunc i64 %indvars.iv566.i to i32, !dbg !588
  br label %for.inc128.i, !dbg !591

if.then123.i:                                     ; preds = %for.body118.i
  %inc124.i = add nsw i32 %k.6546.i, 1, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i32 %inc124.i}, i64 0, metadata !559) #4, !dbg !590
  %idxprom125.i = sext i32 %k.6546.i to i64, !dbg !590
  %179 = load i32** %map.i, align 8, !dbg !590, !tbaa !331
  %arrayidx126.i = getelementptr inbounds i32* %179, i64 %idxprom125.i, !dbg !590
  %180 = trunc i64 %indvars.iv566.i to i32, !dbg !590
  store i32 %180, i32* %arrayidx126.i, align 4, !dbg !590, !tbaa !336
  %.pre580.i = load i32* %alen, align 4, !dbg !588, !tbaa !336
  br label %for.inc128.i, !dbg !590

for.inc128.i:                                     ; preds = %if.then123.i, %for.body118.for.inc128_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre583.i, %for.body118.for.inc128_crit_edge.i ], [ %180, %if.then123.i ], !dbg !588
  %181 = phi i32 [ %177, %for.body118.for.inc128_crit_edge.i ], [ %.pre580.i, %if.then123.i ], !dbg !588
  %k.7.i = phi i32 [ %k.6546.i, %for.body118.for.inc128_crit_edge.i ], [ %inc124.i, %if.then123.i ]
  %indvars.iv.next567.i = add i64 %indvars.iv566.i, 1, !dbg !588
  %cmp116.i = icmp slt i32 %.pre-phi.i, %181, !dbg !588
  br i1 %cmp116.i, label %for.body118.i, label %for.end130.i, !dbg !588

for.end130.i:                                     ; preds = %for.inc128.i, %for.cond114.preheader.i
  %flags131.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 47, !dbg !592
  %182 = load i32* %flags131.i, align 4, !dbg !592, !tbaa !336
  %or132.i = or i32 %182, 256, !dbg !592
  store i32 %or132.i, i32* %flags131.i, align 4, !dbg !592, !tbaa !336
  %call.i176 = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !593
  tail call void @llvm.dbg.value(metadata !{i8* %call.i176}, i64 0, metadata !594) #4, !dbg !593
  %cmp133.i = icmp eq i8* %call.i176, null, !dbg !593
  br i1 %cmp133.i, label %if.end220.i, label %if.then135.i, !dbg !593

if.then135.i:                                     ; preds = %for.end130.i
  %M.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20, !dbg !595
  %183 = load i32* %M.i, align 4, !dbg !595, !tbaa !336
  %add.i177 = add nsw i32 %183, 1, !dbg !595
  %conv136.i = sext i32 %add.i177 to i64, !dbg !595
  %mul.i178 = shl nsw i64 %conv136.i, 2, !dbg !595
  %call137.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 896, i64 %mul.i178) #6, !dbg !595
  %184 = bitcast i8* %call137.i to i32*, !dbg !595
  %mpri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 12, !dbg !595
  store i32* %184, i32** %mpri.i, align 8, !dbg !595, !tbaa !331
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !597
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !597
  %185 = load i32* %alen, align 4, !dbg !597, !tbaa !336
  %cmp140541.i = icmp slt i32 %185, 1, !dbg !597
  br i1 %cmp140541.i, label %if.end220.i, label %for.body142.i, !dbg !597

for.body142.i:                                    ; preds = %if.then135.i, %for.inc217.i
  %186 = phi i32 [ %192, %for.inc217.i ], [ %185, %if.then135.i ]
  %indvars.iv563.i = phi i64 [ %indvars.iv.next564.i, %for.inc217.i ], [ 1, %if.then135.i ]
  %k.8543.i = phi i32 [ %k.9.i, %for.inc217.i ], [ 1, %if.then135.i ]
  %arrayidx144.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv563.i, !dbg !599
  %187 = load i32* %arrayidx144.i, align 4, !dbg !599, !tbaa !336
  %and145.i = and i32 %187, 1, !dbg !599
  %tobool146.i = icmp eq i32 %and145.i, 0, !dbg !599
  br i1 %tobool146.i, label %for.inc217.i, label %if.then147.i, !dbg !599

if.then147.i:                                     ; preds = %for.body142.i
  %188 = add nsw i64 %indvars.iv563.i, -1, !dbg !600
  %arrayidx150.i = getelementptr inbounds i8* %call.i176, i64 %188, !dbg !600
  %189 = load i8* %arrayidx150.i, align 1, !dbg !600, !tbaa !332
  %conv151.i = sext i8 %189 to i32, !dbg !600
  %idxprom152.i = sext i8 %189 to i64, !dbg !600
  %call153.i = tail call i16** @__ctype_b_loc() #8, !dbg !600
  %190 = load i16** %call153.i, align 8, !dbg !600, !tbaa !331
  %arrayidx154.i = getelementptr inbounds i16* %190, i64 %idxprom152.i, !dbg !600
  %191 = load i16* %arrayidx154.i, align 2, !dbg !600, !tbaa !602
  %conv155.i = zext i16 %191 to i32, !dbg !600
  %and156.i = and i32 %conv155.i, 2048, !dbg !600
  %tobool157.i = icmp eq i32 %and156.i, 0, !dbg !600
  br i1 %tobool157.i, label %if.else.i, label %if.then158.i, !dbg !600

if.then158.i:                                     ; preds = %if.then147.i
  %sub163.i = add nsw i32 %conv151.i, -48, !dbg !600
  %idxprom164.i = sext i32 %k.8543.i to i64, !dbg !600
  %arrayidx166.i = getelementptr inbounds i32* %184, i64 %idxprom164.i, !dbg !600
  store i32 %sub163.i, i32* %arrayidx166.i, align 4, !dbg !600, !tbaa !336
  br label %if.end214.i, !dbg !600

if.else.i:                                        ; preds = %if.then147.i
  %and175.i = and i32 %conv155.i, 512, !dbg !603
  %tobool176.i = icmp eq i32 %and175.i, 0, !dbg !603
  br i1 %tobool176.i, label %if.else187.i, label %if.then177.i, !dbg !603

if.then177.i:                                     ; preds = %if.else.i
  %add183.i = add nsw i32 %conv151.i, -87, !dbg !603
  %idxprom184.i = sext i32 %k.8543.i to i64, !dbg !603
  %arrayidx186.i = getelementptr inbounds i32* %184, i64 %idxprom184.i, !dbg !603
  store i32 %add183.i, i32* %arrayidx186.i, align 4, !dbg !603, !tbaa !336
  br label %if.end214.i, !dbg !603

if.else187.i:                                     ; preds = %if.else.i
  %and196.i = and i32 %conv155.i, 256, !dbg !604
  %tobool197.i = icmp eq i32 %and196.i, 0, !dbg !604
  br i1 %tobool197.i, label %if.else208.i, label %if.then198.i, !dbg !604

if.then198.i:                                     ; preds = %if.else187.i
  %add204.i = add nsw i32 %conv151.i, -55, !dbg !604
  %idxprom205.i = sext i32 %k.8543.i to i64, !dbg !604
  %arrayidx207.i = getelementptr inbounds i32* %184, i64 %idxprom205.i, !dbg !604
  store i32 %add204.i, i32* %arrayidx207.i, align 4, !dbg !604, !tbaa !336
  br label %if.end214.i, !dbg !604

if.else208.i:                                     ; preds = %if.else187.i
  %idxprom209.i = sext i32 %k.8543.i to i64, !dbg !605
  %arrayidx211.i = getelementptr inbounds i32* %184, i64 %idxprom209.i, !dbg !605
  store i32 -1, i32* %arrayidx211.i, align 4, !dbg !605, !tbaa !336
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.else208.i, %if.then198.i, %if.then177.i, %if.then158.i
  %inc215.i = add nsw i32 %k.8543.i, 1, !dbg !606
  tail call void @llvm.dbg.value(metadata !{i32 %inc215.i}, i64 0, metadata !559) #4, !dbg !606
  %.pre579.i = load i32* %alen, align 4, !dbg !597, !tbaa !336
  br label %for.inc217.i, !dbg !607

for.inc217.i:                                     ; preds = %if.end214.i, %for.body142.i
  %192 = phi i32 [ %.pre579.i, %if.end214.i ], [ %186, %for.body142.i ], !dbg !597
  %k.9.i = phi i32 [ %inc215.i, %if.end214.i ], [ %k.8543.i, %for.body142.i ]
  %indvars.iv.next564.i = add i64 %indvars.iv563.i, 1, !dbg !597
  %193 = trunc i64 %indvars.iv563.i to i32, !dbg !597
  %cmp140.i = icmp slt i32 %193, %192, !dbg !597
  br i1 %cmp140.i, label %for.body142.i, label %if.end220.i, !dbg !597

if.end220.i:                                      ; preds = %for.inc217.i, %if.then135.i, %for.end130.i
  %call221.i = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !608
  tail call void @llvm.dbg.value(metadata !{i8* %call221.i}, i64 0, metadata !594) #4, !dbg !608
  %cmp222.i = icmp eq i8* %call221.i, null, !dbg !608
  br i1 %cmp222.i, label %if.end313.i, label %if.then224.i, !dbg !608

if.then224.i:                                     ; preds = %if.end220.i
  %M225.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20, !dbg !609
  %194 = load i32* %M225.i, align 4, !dbg !609, !tbaa !336
  %add226.i = add nsw i32 %194, 1, !dbg !609
  %conv227.i = sext i32 %add226.i to i64, !dbg !609
  %mul228.i = shl nsw i64 %conv227.i, 2, !dbg !609
  %call229.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 911, i64 %mul228.i) #6, !dbg !609
  %195 = bitcast i8* %call229.i to i32*, !dbg !609
  %ipri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 13, !dbg !609
  store i32* %195, i32** %ipri.i, align 8, !dbg !609, !tbaa !331
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !611
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !611
  %196 = load i32* %alen, align 4, !dbg !611, !tbaa !336
  %cmp232538.i = icmp slt i32 %196, 1, !dbg !611
  br i1 %cmp232538.i, label %if.end313.i, label %for.body234.i, !dbg !611

for.body234.i:                                    ; preds = %if.then224.i, %for.inc310.i
  %197 = phi i32 [ %203, %for.inc310.i ], [ %196, %if.then224.i ]
  %indvars.iv560.i = phi i64 [ %indvars.iv.next561.i, %for.inc310.i ], [ 1, %if.then224.i ]
  %k.10540.i = phi i32 [ %k.11.i, %for.inc310.i ], [ 1, %if.then224.i ]
  %arrayidx236.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv560.i, !dbg !613
  %198 = load i32* %arrayidx236.i, align 4, !dbg !613, !tbaa !336
  %and237.i = and i32 %198, 1, !dbg !613
  %tobool238.i = icmp eq i32 %and237.i, 0, !dbg !613
  br i1 %tobool238.i, label %for.inc310.i, label %if.then239.i, !dbg !613

if.then239.i:                                     ; preds = %for.body234.i
  %199 = add nsw i64 %indvars.iv560.i, -1, !dbg !614
  %arrayidx242.i = getelementptr inbounds i8* %call221.i, i64 %199, !dbg !614
  %200 = load i8* %arrayidx242.i, align 1, !dbg !614, !tbaa !332
  %conv243.i = sext i8 %200 to i32, !dbg !614
  %idxprom244.i = sext i8 %200 to i64, !dbg !614
  %call245.i = tail call i16** @__ctype_b_loc() #8, !dbg !614
  %201 = load i16** %call245.i, align 8, !dbg !614, !tbaa !331
  %arrayidx246.i = getelementptr inbounds i16* %201, i64 %idxprom244.i, !dbg !614
  %202 = load i16* %arrayidx246.i, align 2, !dbg !614, !tbaa !602
  %conv247.i = zext i16 %202 to i32, !dbg !614
  %and248.i = and i32 %conv247.i, 2048, !dbg !614
  %tobool249.i = icmp eq i32 %and248.i, 0, !dbg !614
  br i1 %tobool249.i, label %if.else259.i, label %if.then250.i, !dbg !614

if.then250.i:                                     ; preds = %if.then239.i
  %sub255.i = add nsw i32 %conv243.i, -48, !dbg !614
  %idxprom256.i179 = sext i32 %k.10540.i to i64, !dbg !614
  %arrayidx258.i = getelementptr inbounds i32* %195, i64 %idxprom256.i179, !dbg !614
  store i32 %sub255.i, i32* %arrayidx258.i, align 4, !dbg !614, !tbaa !336
  br label %if.end307.i, !dbg !614

if.else259.i:                                     ; preds = %if.then239.i
  %and268.i = and i32 %conv247.i, 512, !dbg !616
  %tobool269.i = icmp eq i32 %and268.i, 0, !dbg !616
  br i1 %tobool269.i, label %if.else280.i, label %if.then270.i, !dbg !616

if.then270.i:                                     ; preds = %if.else259.i
  %add276.i = add nsw i32 %conv243.i, -87, !dbg !616
  %idxprom277.i = sext i32 %k.10540.i to i64, !dbg !616
  %arrayidx279.i = getelementptr inbounds i32* %195, i64 %idxprom277.i, !dbg !616
  store i32 %add276.i, i32* %arrayidx279.i, align 4, !dbg !616, !tbaa !336
  br label %if.end307.i, !dbg !616

if.else280.i:                                     ; preds = %if.else259.i
  %and289.i = and i32 %conv247.i, 256, !dbg !617
  %tobool290.i = icmp eq i32 %and289.i, 0, !dbg !617
  br i1 %tobool290.i, label %if.else301.i, label %if.then291.i, !dbg !617

if.then291.i:                                     ; preds = %if.else280.i
  %add297.i = add nsw i32 %conv243.i, -55, !dbg !617
  %idxprom298.i = sext i32 %k.10540.i to i64, !dbg !617
  %arrayidx300.i = getelementptr inbounds i32* %195, i64 %idxprom298.i, !dbg !617
  store i32 %add297.i, i32* %arrayidx300.i, align 4, !dbg !617, !tbaa !336
  br label %if.end307.i, !dbg !617

if.else301.i:                                     ; preds = %if.else280.i
  %idxprom302.i = sext i32 %k.10540.i to i64, !dbg !618
  %arrayidx304.i = getelementptr inbounds i32* %195, i64 %idxprom302.i, !dbg !618
  store i32 -1, i32* %arrayidx304.i, align 4, !dbg !618, !tbaa !336
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.else301.i, %if.then291.i, %if.then270.i, %if.then250.i
  %inc308.i = add nsw i32 %k.10540.i, 1, !dbg !619
  tail call void @llvm.dbg.value(metadata !{i32 %inc308.i}, i64 0, metadata !559) #4, !dbg !619
  %.pre578.i = load i32* %alen, align 4, !dbg !611, !tbaa !336
  br label %for.inc310.i, !dbg !620

for.inc310.i:                                     ; preds = %if.end307.i, %for.body234.i
  %203 = phi i32 [ %.pre578.i, %if.end307.i ], [ %197, %for.body234.i ], !dbg !611
  %k.11.i = phi i32 [ %inc308.i, %if.end307.i ], [ %k.10540.i, %for.body234.i ]
  %indvars.iv.next561.i = add i64 %indvars.iv560.i, 1, !dbg !611
  %204 = trunc i64 %indvars.iv560.i to i32, !dbg !611
  %cmp232.i = icmp slt i32 %204, %203, !dbg !611
  br i1 %cmp232.i, label %for.body234.i, label %if.end313.i, !dbg !611

if.end313.i:                                      ; preds = %for.inc310.i, %if.then224.i, %if.end220.i
  %call314.i = tail call i8* @MSAGetGC(%struct.msa_struct* %msa, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !621
  tail call void @llvm.dbg.value(metadata !{i8* %call314.i}, i64 0, metadata !594) #4, !dbg !621
  %cmp315.i = icmp eq i8* %call314.i, null, !dbg !621
  br i1 %cmp315.i, label %annotate_model.exit, label %if.then317.i, !dbg !621

if.then317.i:                                     ; preds = %if.end313.i
  %M318.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 20, !dbg !622
  %205 = load i32* %M318.i, align 4, !dbg !622, !tbaa !336
  %add319.i = add nsw i32 %205, 1, !dbg !622
  %conv320.i = sext i32 %add319.i to i64, !dbg !622
  %mul321.i = shl nsw i64 %conv320.i, 2, !dbg !622
  %call322.i = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 926, i64 %mul321.i) #6, !dbg !622
  %206 = bitcast i8* %call322.i to i32*, !dbg !622
  %tpri.i = getelementptr inbounds %struct.plan7_s* %call, i64 0, i32 11, !dbg !622
  store i32* %206, i32** %tpri.i, align 8, !dbg !622, !tbaa !331
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !559) #4, !dbg !624
  tail call void @llvm.dbg.value(metadata !350, i64 0, metadata !562) #4, !dbg !624
  %207 = load i32* %alen, align 4, !dbg !624, !tbaa !336
  %cmp325535.i = icmp slt i32 %207, 1, !dbg !624
  br i1 %cmp325535.i, label %annotate_model.exit, label %for.body327.i, !dbg !624

for.body327.i:                                    ; preds = %if.then317.i, %for.inc403.i
  %208 = phi i32 [ %214, %for.inc403.i ], [ %207, %if.then317.i ]
  %indvars.iv.i180 = phi i64 [ %indvars.iv.next.i181, %for.inc403.i ], [ 1, %if.then317.i ]
  %k.12537.i = phi i32 [ %k.13.i, %for.inc403.i ], [ 1, %if.then317.i ]
  %arrayidx329.i = getelementptr inbounds i32* %matassign, i64 %indvars.iv.i180, !dbg !626
  %209 = load i32* %arrayidx329.i, align 4, !dbg !626, !tbaa !336
  %and330.i = and i32 %209, 1, !dbg !626
  %tobool331.i = icmp eq i32 %and330.i, 0, !dbg !626
  br i1 %tobool331.i, label %for.inc403.i, label %if.then332.i, !dbg !626

if.then332.i:                                     ; preds = %for.body327.i
  %210 = add nsw i64 %indvars.iv.i180, -1, !dbg !627
  %arrayidx335.i = getelementptr inbounds i8* %call314.i, i64 %210, !dbg !627
  %211 = load i8* %arrayidx335.i, align 1, !dbg !627, !tbaa !332
  %conv336.i = sext i8 %211 to i32, !dbg !627
  %idxprom337.i = sext i8 %211 to i64, !dbg !627
  %call338.i = tail call i16** @__ctype_b_loc() #8, !dbg !627
  %212 = load i16** %call338.i, align 8, !dbg !627, !tbaa !331
  %arrayidx339.i = getelementptr inbounds i16* %212, i64 %idxprom337.i, !dbg !627
  %213 = load i16* %arrayidx339.i, align 2, !dbg !627, !tbaa !602
  %conv340.i = zext i16 %213 to i32, !dbg !627
  %and341.i = and i32 %conv340.i, 2048, !dbg !627
  %tobool342.i = icmp eq i32 %and341.i, 0, !dbg !627
  br i1 %tobool342.i, label %if.else352.i, label %if.then343.i, !dbg !627

if.then343.i:                                     ; preds = %if.then332.i
  %sub348.i = add nsw i32 %conv336.i, -48, !dbg !627
  %idxprom349.i = sext i32 %k.12537.i to i64, !dbg !627
  %arrayidx351.i = getelementptr inbounds i32* %206, i64 %idxprom349.i, !dbg !627
  store i32 %sub348.i, i32* %arrayidx351.i, align 4, !dbg !627, !tbaa !336
  br label %if.end400.i, !dbg !627

if.else352.i:                                     ; preds = %if.then332.i
  %and361.i = and i32 %conv340.i, 512, !dbg !629
  %tobool362.i = icmp eq i32 %and361.i, 0, !dbg !629
  br i1 %tobool362.i, label %if.else373.i, label %if.then363.i, !dbg !629

if.then363.i:                                     ; preds = %if.else352.i
  %add369.i = add nsw i32 %conv336.i, -87, !dbg !629
  %idxprom370.i = sext i32 %k.12537.i to i64, !dbg !629
  %arrayidx372.i = getelementptr inbounds i32* %206, i64 %idxprom370.i, !dbg !629
  store i32 %add369.i, i32* %arrayidx372.i, align 4, !dbg !629, !tbaa !336
  br label %if.end400.i, !dbg !629

if.else373.i:                                     ; preds = %if.else352.i
  %and382.i = and i32 %conv340.i, 256, !dbg !630
  %tobool383.i = icmp eq i32 %and382.i, 0, !dbg !630
  br i1 %tobool383.i, label %if.else394.i, label %if.then384.i, !dbg !630

if.then384.i:                                     ; preds = %if.else373.i
  %add390.i = add nsw i32 %conv336.i, -55, !dbg !630
  %idxprom391.i = sext i32 %k.12537.i to i64, !dbg !630
  %arrayidx393.i = getelementptr inbounds i32* %206, i64 %idxprom391.i, !dbg !630
  store i32 %add390.i, i32* %arrayidx393.i, align 4, !dbg !630, !tbaa !336
  br label %if.end400.i, !dbg !630

if.else394.i:                                     ; preds = %if.else373.i
  %idxprom395.i = sext i32 %k.12537.i to i64, !dbg !631
  %arrayidx397.i = getelementptr inbounds i32* %206, i64 %idxprom395.i, !dbg !631
  store i32 -1, i32* %arrayidx397.i, align 4, !dbg !631, !tbaa !336
  br label %if.end400.i

if.end400.i:                                      ; preds = %if.else394.i, %if.then384.i, %if.then363.i, %if.then343.i
  %inc401.i = add nsw i32 %k.12537.i, 1, !dbg !632
  tail call void @llvm.dbg.value(metadata !{i32 %inc401.i}, i64 0, metadata !559) #4, !dbg !632
  %.pre577.i = load i32* %alen, align 4, !dbg !624, !tbaa !336
  br label %for.inc403.i, !dbg !633

for.inc403.i:                                     ; preds = %if.end400.i, %for.body327.i
  %214 = phi i32 [ %.pre577.i, %if.end400.i ], [ %208, %for.body327.i ], !dbg !624
  %k.13.i = phi i32 [ %inc401.i, %if.end400.i ], [ %k.12537.i, %for.body327.i ]
  %indvars.iv.next.i181 = add i64 %indvars.iv.i180, 1, !dbg !624
  %215 = trunc i64 %indvars.iv.i180 to i32, !dbg !624
  %cmp325.i = icmp slt i32 %215, %214, !dbg !624
  br i1 %cmp325.i, label %for.body327.i, label %annotate_model.exit, !dbg !624

annotate_model.exit:                              ; preds = %for.inc403.i, %if.end313.i, %if.then317.i
  %216 = load i8** %rf.i, align 8, !dbg !634, !tbaa !331
  %cmp60 = icmp eq i8* %216, null, !dbg !634
  br i1 %cmp60, label %if.end63, label %if.then61, !dbg !634

if.then61:                                        ; preds = %annotate_model.exit
  tail call void @free(i8* %216) #6, !dbg !634
  br label %if.end63, !dbg !634

if.end63:                                         ; preds = %annotate_model.exit, %if.then61
  %217 = load i32* %alen, align 4, !dbg !635, !tbaa !336
  %add = add nsw i32 %217, 1, !dbg !635
  %conv = sext i32 %add to i64, !dbg !635
  %call65 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 564, i64 %conv) #6, !dbg !635
  store i8* %call65, i8** %rf.i, align 8, !dbg !635, !tbaa !331
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !636
  %218 = load i32* %alen, align 4, !dbg !636, !tbaa !336
  %cmp69187 = icmp sgt i32 %218, 0, !dbg !636
  br i1 %cmp69187, label %for.body71, label %for.end83, !dbg !636

for.body71:                                       ; preds = %for.body71, %if.end63
  %219 = phi i8* [ %call65, %if.end63 ], [ %.pre238, %for.body71 ]
  %indvars.iv216 = phi i64 [ 0, %if.end63 ], [ %indvars.iv.next217, %for.body71 ]
  %indvars.iv.next217 = add i64 %indvars.iv216, 1, !dbg !636
  %arrayidx74 = getelementptr inbounds i32* %matassign, i64 %indvars.iv.next217, !dbg !638
  %220 = load i32* %arrayidx74, align 4, !dbg !638, !tbaa !336
  %and75 = and i32 %220, 1, !dbg !638
  %tobool76 = icmp ne i32 %and75, 0, !dbg !638
  %conv77 = select i1 %tobool76, i8 120, i8 46, !dbg !638
  %arrayidx80 = getelementptr inbounds i8* %219, i64 %indvars.iv216, !dbg !638
  store i8 %conv77, i8* %arrayidx80, align 1, !dbg !638, !tbaa !332
  %221 = load i32* %alen, align 4, !dbg !636, !tbaa !336
  %222 = trunc i64 %indvars.iv.next217 to i32, !dbg !636
  %cmp69 = icmp slt i32 %222, %221, !dbg !636
  %.pre238 = load i8** %rf.i, align 8, !dbg !638, !tbaa !331
  br i1 %cmp69, label %for.body71, label %for.end83, !dbg !636

for.end83:                                        ; preds = %for.body71, %if.end63
  %223 = phi i8* [ %call65, %if.end63 ], [ %.pre238, %for.body71 ]
  %.lcssa = phi i32 [ %218, %if.end63 ], [ %221, %for.body71 ]
  %idxprom85 = sext i32 %.lcssa to i64, !dbg !639
  %arrayidx87 = getelementptr inbounds i8* %223, i64 %idxprom85, !dbg !639
  store i8 0, i8* %arrayidx87, align 1, !dbg !639, !tbaa !332
  %cmp88 = icmp eq %struct.p7trace_s*** %ret_tr, null, !dbg !542
  br i1 %cmp88, label %for.cond91.preheader, label %if.then90, !dbg !542

for.cond91.preheader:                             ; preds = %for.end83
  %224 = load i32* %nseq, align 4, !dbg !543, !tbaa !336
  %cmp93185 = icmp sgt i32 %224, 0, !dbg !543
  br i1 %cmp93185, label %for.body95, label %for.end100, !dbg !543

if.then90:                                        ; preds = %for.end83
  store %struct.p7trace_s** %18, %struct.p7trace_s*** %ret_tr, align 8, !dbg !542, !tbaa !331
  br label %if.end101, !dbg !542

for.body95:                                       ; preds = %for.cond91.preheader, %for.body95
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body95 ], [ 0, %for.cond91.preheader ]
  %arrayidx97 = getelementptr inbounds %struct.p7trace_s** %18, i64 %indvars.iv, !dbg !543
  %225 = load %struct.p7trace_s** %arrayidx97, align 8, !dbg !543, !tbaa !331
  tail call void @P7FreeTrace(%struct.p7trace_s* %225) #6, !dbg !543
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !543
  %226 = load i32* %nseq, align 4, !dbg !543, !tbaa !336
  %227 = trunc i64 %indvars.iv.next to i32, !dbg !543
  %cmp93 = icmp slt i32 %227, %226, !dbg !543
  br i1 %cmp93, label %for.body95, label %for.end100, !dbg !543

for.end100:                                       ; preds = %for.body95, %for.cond91.preheader
  tail call void @free(i8* %call.i) #6, !dbg !546
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %if.then90
  %cmp102 = icmp eq %struct.plan7_s** %ret_hmm, null, !dbg !640
  br i1 %cmp102, label %if.else105, label %if.then104, !dbg !640

if.then104:                                       ; preds = %if.end101
  store %struct.plan7_s* %call, %struct.plan7_s** %ret_hmm, align 8, !dbg !640, !tbaa !331
  br label %if.end106, !dbg !640

if.else105:                                       ; preds = %if.end101
  tail call void @FreePlan7(%struct.plan7_s* %call) #6, !dbg !640
  br label %if.end106

if.end106:                                        ; preds = %if.else105, %if.then104
  ret void, !dbg !641
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @P7Fastmodelmaker(%struct.msa_struct* %msa, i8** nocapture %dsq, float %maxgap, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !186), !dbg !642
  tail call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !187), !dbg !642
  tail call void @llvm.dbg.value(metadata !{float %maxgap}, i64 0, metadata !188), !dbg !642
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !189), !dbg !643
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !190), !dbg !643
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !644
  %0 = load i32* %alen, align 4, !dbg !644, !tbaa !336
  %add = add nsw i32 %0, 1, !dbg !644
  %conv = sext i32 %add to i64, !dbg !644
  %mul = shl nsw i64 %conv, 2, !dbg !644
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 172, i64 %mul) #6, !dbg !644
  %1 = bitcast i8* %call to i32*, !dbg !644
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !191), !dbg !644
  store i32 0, i32* %1, align 4, !dbg !645, !tbaa !336
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !193), !dbg !646
  %2 = load i32* %alen, align 4, !dbg !646, !tbaa !336
  %cmp101 = icmp sgt i32 %2, 0, !dbg !646
  br i1 %cmp101, label %for.body.lr.ph, label %for.end68, !dbg !646

for.body.lr.ph:                                   ; preds = %entry
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !648
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !651
  br label %for.body, !dbg !646

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv103 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next104, %for.end ]
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !646
  %arrayidx4 = getelementptr inbounds i32* %1, i64 %indvars.iv.next104, !dbg !652
  store i32 0, i32* %arrayidx4, align 4, !dbg !652, !tbaa !336
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !194), !dbg !653
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !192), !dbg !648
  %3 = load i32* %nseq, align 4, !dbg !648, !tbaa !336
  %cmp697 = icmp sgt i32 %3, 0, !dbg !648
  br i1 %cmp697, label %for.body8.lr.ph, label %for.end, !dbg !648

for.body8.lr.ph:                                  ; preds = %for.body
  %4 = load i8*** %aseq, align 8, !dbg !651, !tbaa !331
  br label %for.body8, !dbg !648

for.body8:                                        ; preds = %for.body8.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %ngap.099 = phi i32 [ 0, %for.body8.lr.ph ], [ %ngap.1, %for.inc ]
  %arrayidx11 = getelementptr inbounds i8** %4, i64 %indvars.iv, !dbg !651
  %5 = load i8** %arrayidx11, align 8, !dbg !651, !tbaa !331
  %arrayidx12 = getelementptr inbounds i8* %5, i64 %indvars.iv103, !dbg !651
  %6 = load i8* %arrayidx12, align 1, !dbg !651, !tbaa !332
  switch i8 %6, label %for.inc [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ], !dbg !651

if.then:                                          ; preds = %for.body8, %for.body8, %for.body8, %for.body8, %for.body8
  %inc = add nsw i32 %ngap.099, 1, !dbg !654
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !194), !dbg !654
  br label %for.inc, !dbg !654

for.inc:                                          ; preds = %for.body8, %if.then
  %ngap.1 = phi i32 [ %inc, %if.then ], [ %ngap.099, %for.body8 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !648
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !648
  %cmp6 = icmp slt i32 %7, %3, !dbg !648
  br i1 %cmp6, label %for.body8, label %for.end, !dbg !648

for.end:                                          ; preds = %for.inc, %for.body
  %ngap.0.lcssa = phi i32 [ 0, %for.body ], [ %ngap.1, %for.inc ]
  %conv52 = sitofp i32 %ngap.0.lcssa to float, !dbg !655
  %conv54 = sitofp i32 %3 to float, !dbg !655
  %div = fdiv float %conv52, %conv54, !dbg !655
  %cmp55 = fcmp ogt float %div, %maxgap, !dbg !655
  %storemerge.v = select i1 %cmp55, i32 8, i32 1, !dbg !655
  store i32 %storemerge.v, i32* %arrayidx4, align 4, !dbg !656, !tbaa !336
  %8 = load i32* %alen, align 4, !dbg !646, !tbaa !336
  %9 = trunc i64 %indvars.iv.next104 to i32, !dbg !646
  %cmp = icmp slt i32 %9, %8, !dbg !646
  br i1 %cmp, label %for.body, label %for.end68, !dbg !646

for.end68:                                        ; preds = %for.end, %entry
  tail call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %1, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #7, !dbg !657
  tail call void @free(i8* %call) #6, !dbg !658
  ret void, !dbg !659
}

; Function Attrs: nounwind optsize uwtable
define void @P7Maxmodelmaker(%struct.msa_struct* %msa, i8** nocapture %dsq, float %maxgap, %struct.p7prior_s* %prior, float* nocapture %null, float %null_p1, float %mpri, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #0 {
entry:
  %cij = alloca [8 x float], align 16
  %tij = alloca [8 x float], align 16
  %matp = alloca [20 x float], align 16
  %insp = alloca [20 x float], align 16
  %insc = alloca [20 x float], align 16
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !220), !dbg !660
  call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !221), !dbg !660
  call void @llvm.dbg.value(metadata !{float %maxgap}, i64 0, metadata !222), !dbg !660
  call void @llvm.dbg.value(metadata !{%struct.p7prior_s* %prior}, i64 0, metadata !223), !dbg !661
  call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !224), !dbg !662
  call void @llvm.dbg.value(metadata !{float %null_p1}, i64 0, metadata !225), !dbg !662
  call void @llvm.dbg.value(metadata !{float %mpri}, i64 0, metadata !226), !dbg !662
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !227), !dbg !663
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !228), !dbg !663
  call void @llvm.dbg.declare(metadata !{[8 x float]* %cij}, metadata !234), !dbg !664
  call void @llvm.dbg.declare(metadata !{[8 x float]* %tij}, metadata !238), !dbg !664
  %0 = bitcast [20 x float]* %matp to i8*, !dbg !665
  call void @llvm.lifetime.start(i64 80, i8* %0) #4, !dbg !665
  call void @llvm.dbg.declare(metadata !{[20 x float]* %matp}, metadata !239), !dbg !665
  %1 = bitcast [20 x float]* %insp to i8*, !dbg !666
  call void @llvm.lifetime.start(i64 80, i8* %1) #4, !dbg !666
  call void @llvm.dbg.declare(metadata !{[20 x float]* %insp}, metadata !240), !dbg !666
  %2 = bitcast [20 x float]* %insc to i8*, !dbg !667
  call void @llvm.lifetime.start(i64 80, i8* %2) #4, !dbg !667
  call void @llvm.dbg.declare(metadata !{[20 x float]* %insc}, metadata !241), !dbg !667
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !668
  %3 = load i32* %alen, align 4, !dbg !668, !tbaa !336
  %add = add nsw i32 %3, 1, !dbg !668
  %conv = sext i32 %add to i64, !dbg !668
  %mul = shl nsw i64 %conv, 3, !dbg !668
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 255, i64 %mul) #6, !dbg !668
  %4 = bitcast i8* %call to float**, !dbg !668
  call void @llvm.dbg.value(metadata !{float** %4}, i64 0, metadata !233), !dbg !668
  %5 = load i32* %alen, align 4, !dbg !669, !tbaa !336
  %add2 = add nsw i32 %5, 2, !dbg !669
  %conv3 = sext i32 %add2 to i64, !dbg !669
  %mul4 = shl nsw i64 %conv3, 2, !dbg !669
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 256, i64 %mul4) #6, !dbg !669
  %6 = bitcast i8* %call5 to float*, !dbg !669
  call void @llvm.dbg.value(metadata !{float* %6}, i64 0, metadata !242), !dbg !669
  %7 = load i32* %alen, align 4, !dbg !670, !tbaa !336
  %add7 = add nsw i32 %7, 2, !dbg !670
  %conv8 = sext i32 %add7 to i64, !dbg !670
  %mul9 = shl nsw i64 %conv8, 2, !dbg !670
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 257, i64 %mul9) #6, !dbg !670
  %8 = bitcast i8* %call10 to i32*, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !243), !dbg !670
  %9 = load i32* %alen, align 4, !dbg !671, !tbaa !336
  %add12 = add nsw i32 %9, 1, !dbg !671
  %conv13 = sext i32 %add12 to i64, !dbg !671
  %mul14 = shl nsw i64 %conv13, 2, !dbg !671
  %call15 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 258, i64 %mul14) #6, !dbg !671
  %10 = bitcast i8* %call15 to i32*, !dbg !671
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !244), !dbg !671
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !672
  %11 = load i32* %nseq, align 4, !dbg !672, !tbaa !336
  %conv16 = sext i32 %11 to i64, !dbg !672
  %mul17 = shl nsw i64 %conv16, 2, !dbg !672
  %call18 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 259, i64 %mul17) #6, !dbg !672
  %12 = bitcast i8* %call18 to i32*, !dbg !672
  call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !245), !dbg !672
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !230), !dbg !673
  %13 = load i32* %alen, align 4, !dbg !673, !tbaa !336
  %cmp1014 = icmp sgt i32 %13, 0, !dbg !673
  br i1 %cmp1014, label %for.body, label %for.end97, !dbg !673

for.cond28.preheader:                             ; preds = %for.body
  %cmp301012 = icmp sgt i32 %17, 0, !dbg !675
  br i1 %cmp301012, label %for.cond33.preheader.lr.ph, label %for.end97, !dbg !675

for.cond33.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !677
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !679
  %.pre1063 = load i32* %nseq, align 4, !dbg !680, !tbaa !336
  br label %for.cond33.preheader, !dbg !675

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %for.body ], [ 0, %entry ]
  %14 = load i32* @Alphabet_size, align 4, !dbg !681, !tbaa !336
  %conv21 = sext i32 %14 to i64, !dbg !681
  %mul22 = shl nsw i64 %conv21, 2, !dbg !681
  %call23 = call i8* @sre_malloc(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i32 261, i64 %mul22) #6, !dbg !681
  %15 = bitcast i8* %call23 to float*, !dbg !681
  %indvars.iv.next1059 = add i64 %indvars.iv1058, 1, !dbg !673
  %arrayidx = getelementptr inbounds float** %4, i64 %indvars.iv.next1059, !dbg !681
  store float* %15, float** %arrayidx, align 8, !dbg !681, !tbaa !331
  %16 = load i32* @Alphabet_size, align 4, !dbg !683, !tbaa !336
  call void @FSet(float* %15, i32 %16, float 0.000000e+00) #6, !dbg !683
  %17 = load i32* %alen, align 4, !dbg !673, !tbaa !336
  %18 = trunc i64 %indvars.iv.next1059 to i32, !dbg !673
  %cmp = icmp slt i32 %18, %17, !dbg !673
  br i1 %cmp, label %for.body, label %for.cond28.preheader, !dbg !673

for.cond33.preheader:                             ; preds = %for.cond33.preheader.lr.ph, %for.inc95
  %19 = phi i32 [ %17, %for.cond33.preheader.lr.ph ], [ %31, %for.inc95 ]
  %20 = phi i32 [ %.pre1063, %for.cond33.preheader.lr.ph ], [ %32, %for.inc95 ], !dbg !680
  %indvars.iv1055 = phi i64 [ 0, %for.cond33.preheader.lr.ph ], [ %21, %for.inc95 ]
  %cmp351010 = icmp sgt i32 %20, 0, !dbg !680
  %21 = add i64 %indvars.iv1055, 1, !dbg !679
  br i1 %cmp351010, label %for.body37.lr.ph, label %for.inc95, !dbg !680

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %arrayidx82 = getelementptr inbounds float** %4, i64 %21, !dbg !679
  br label %for.body37, !dbg !680

for.body37:                                       ; preds = %for.inc92, %for.body37.lr.ph
  %22 = phi i32 [ %20, %for.body37.lr.ph ], [ %29, %for.inc92 ]
  %indvars.iv1053 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next1054, %for.inc92 ]
  %23 = load i8*** %aseq, align 8, !dbg !677, !tbaa !331
  %arrayidx40 = getelementptr inbounds i8** %23, i64 %indvars.iv1053, !dbg !677
  %24 = load i8** %arrayidx40, align 8, !dbg !677, !tbaa !331
  %arrayidx41 = getelementptr inbounds i8* %24, i64 %indvars.iv1055, !dbg !677
  %25 = load i8* %arrayidx41, align 1, !dbg !677, !tbaa !332
  switch i8 %25, label %if.then [
    i8 32, label %for.inc92
    i8 46, label %for.inc92
    i8 95, label %for.inc92
    i8 45, label %for.inc92
    i8 126, label %for.inc92
  ], !dbg !677

if.then:                                          ; preds = %for.body37
  %26 = load float** %arrayidx82, align 8, !dbg !679, !tbaa !331
  %call88 = call i32 @SymbolIndex(i8 signext %25) #6, !dbg !679
  %conv89 = trunc i32 %call88 to i8, !dbg !679
  %27 = load float** %wgt, align 8, !dbg !679, !tbaa !331
  %arrayidx91 = getelementptr inbounds float* %27, i64 %indvars.iv1053, !dbg !679
  %28 = load float* %arrayidx91, align 4, !dbg !679, !tbaa !550
  call void @P7CountSymbol(float* %26, i8 signext %conv89, float %28) #6, !dbg !679
  %.pre1064 = load i32* %nseq, align 4, !dbg !680, !tbaa !336
  br label %for.inc92, !dbg !679

for.inc92:                                        ; preds = %for.body37, %for.body37, %for.body37, %for.body37, %for.body37, %if.then
  %29 = phi i32 [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %22, %for.body37 ], [ %.pre1064, %if.then ], !dbg !680
  %indvars.iv.next1054 = add i64 %indvars.iv1053, 1, !dbg !680
  %30 = trunc i64 %indvars.iv.next1054 to i32, !dbg !680
  %cmp35 = icmp slt i32 %30, %29, !dbg !680
  br i1 %cmp35, label %for.body37, label %for.cond33.for.inc95_crit_edge, !dbg !680

for.cond33.for.inc95_crit_edge:                   ; preds = %for.inc92
  %.pre1065 = load i32* %alen, align 4, !dbg !675, !tbaa !336
  br label %for.inc95, !dbg !680

for.inc95:                                        ; preds = %for.cond33.preheader, %for.cond33.for.inc95_crit_edge
  %31 = phi i32 [ %.pre1065, %for.cond33.for.inc95_crit_edge ], [ %19, %for.cond33.preheader ], !dbg !675
  %32 = phi i32 [ %29, %for.cond33.for.inc95_crit_edge ], [ %20, %for.cond33.preheader ]
  %33 = trunc i64 %21 to i32, !dbg !675
  %cmp30 = icmp slt i32 %33, %31, !dbg !675
  br i1 %cmp30, label %for.cond33.preheader, label %for.end97, !dbg !675

for.end97:                                        ; preds = %entry, %for.inc95, %for.cond28.preheader
  %cmp98 = fcmp ogt float %mpri, 0.000000e+00, !dbg !684
  br i1 %cmp98, label %cond.true, label %cond.end, !dbg !684

cond.true:                                        ; preds = %for.end97
  %conv100 = fpext float %mpri to double, !dbg !684
  %call101 = call double @log(double %conv100) #6, !dbg !684
  %mul102 = fmul double %call101, 0x3FF7154764EE6C2F, !dbg !684
  %phitmp = fptrunc double %mul102 to float, !dbg !684
  br label %cond.end, !dbg !684

cond.end:                                         ; preds = %for.end97, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ -9.999000e+03, %for.end97 ]
  call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !226), !dbg !684
  %arraydecay = getelementptr inbounds [20 x float]* %insp, i64 0, i64 0, !dbg !685
  %arraydecay106 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 9, i64 0, i64 0, !dbg !685
  %34 = load i32* @Alphabet_size, align 4, !dbg !685, !tbaa !336
  call void @FCopy(float* %arraydecay, float* %arraydecay106, i32 %34) #6, !dbg !685
  %35 = load i32* @Alphabet_size, align 4, !dbg !686, !tbaa !336
  call void @FNorm(float* %arraydecay, i32 %35) #6, !dbg !686
  %wgt108 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !687
  %36 = load float** %wgt108, align 8, !dbg !687, !tbaa !331
  %37 = load i32* %nseq, align 4, !dbg !687, !tbaa !336
  %call110 = call float @FSum(float* %36, i32 %37) #6, !dbg !687
  call void @llvm.dbg.value(metadata !{float %call110}, i64 0, metadata !256), !dbg !687
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !232), !dbg !688
  %38 = load i32* @Alphabet_size, align 4, !dbg !688, !tbaa !336
  %cmp1121008 = icmp sgt i32 %38, 0, !dbg !688
  br i1 %cmp1121008, label %for.body114, label %for.end138, !dbg !688

for.body114:                                      ; preds = %cond.end, %cond.end131
  %39 = phi i32 [ %42, %cond.end131 ], [ %38, %cond.end ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %cond.end131 ], [ 0, %cond.end ]
  %arrayidx116 = getelementptr inbounds [20 x float]* %insp, i64 0, i64 %indvars.iv1051, !dbg !690
  %40 = load float* %arrayidx116, align 4, !dbg !690, !tbaa !550
  %arrayidx118 = getelementptr inbounds float* %null, i64 %indvars.iv1051, !dbg !690
  %41 = load float* %arrayidx118, align 4, !dbg !690, !tbaa !550
  %div = fdiv float %40, %41, !dbg !690
  %cmp119 = fcmp ogt float %div, 0.000000e+00, !dbg !690
  br i1 %cmp119, label %cond.true121, label %cond.end131, !dbg !690

cond.true121:                                     ; preds = %for.body114
  %conv127 = fpext float %div to double, !dbg !690
  %call128 = call double @log(double %conv127) #6, !dbg !690
  %mul129 = fmul double %call128, 0x3FF7154764EE6C2F, !dbg !690
  %phitmp953 = fptrunc double %mul129 to float, !dbg !690
  %.pre1062 = load i32* @Alphabet_size, align 4, !dbg !688, !tbaa !336
  br label %cond.end131, !dbg !690

cond.end131:                                      ; preds = %for.body114, %cond.true121
  %42 = phi i32 [ %.pre1062, %cond.true121 ], [ %39, %for.body114 ], !dbg !690
  %cond132 = phi float [ %phitmp953, %cond.true121 ], [ -9.999000e+03, %for.body114 ]
  store float %cond132, float* %arrayidx116, align 4, !dbg !690, !tbaa !550
  %indvars.iv.next1052 = add i64 %indvars.iv1051, 1, !dbg !688
  %43 = trunc i64 %indvars.iv.next1052 to i32, !dbg !688
  %cmp112 = icmp slt i32 %43, %42, !dbg !688
  br i1 %cmp112, label %for.body114, label %for.end138, !dbg !688

for.end138:                                       ; preds = %cond.end131, %cond.end
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !691) #4, !dbg !693
  call void @llvm.dbg.value(metadata !694, i64 0, metadata !695) #4, !dbg !696
  call void @llvm.dbg.value(metadata !694, i64 0, metadata !697) #4, !dbg !698
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !699) #4, !dbg !700
  %44 = load i32* %nseq, align 4, !dbg !700, !tbaa !336
  %cmp17.i = icmp sgt i32 %44, 0, !dbg !700
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %estimate_model_length.exit, !dbg !700

for.body.lr.ph.i:                                 ; preds = %for.end138
  %aseq.i = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !702
  %.pre.i = load float** %wgt108, align 8, !dbg !702, !tbaa !331
  br label %for.body.i, !dbg !700

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %45 = phi float* [ %.pre.i, %for.body.lr.ph.i ], [ %49, %for.body.i ], !dbg !702
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %wgtsum.020.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add6.i, %for.body.i ]
  %total.019.i = phi float [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds float* %45, i64 %indvars.iv.i, !dbg !702
  %46 = load float* %arrayidx.i, align 4, !dbg !702, !tbaa !550
  %47 = load i8*** %aseq.i, align 8, !dbg !702, !tbaa !331
  %arrayidx2.i = getelementptr inbounds i8** %47, i64 %indvars.iv.i, !dbg !702
  %48 = load i8** %arrayidx2.i, align 8, !dbg !702, !tbaa !331
  %call.i = call i32 @DealignedLength(i8* %48) #6, !dbg !702
  %conv.i = sitofp i32 %call.i to float, !dbg !702
  %mul.i = fmul float %46, %conv.i, !dbg !702
  %add.i = fadd float %total.019.i, %mul.i, !dbg !702
  call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !695) #4, !dbg !702
  %49 = load float** %wgt108, align 8, !dbg !704, !tbaa !331
  %arrayidx5.i = getelementptr inbounds float* %49, i64 %indvars.iv.i, !dbg !704
  %50 = load float* %arrayidx5.i, align 4, !dbg !704, !tbaa !550
  %add6.i = fadd float %wgtsum.020.i, %50, !dbg !704
  call void @llvm.dbg.value(metadata !{float %add6.i}, i64 0, metadata !697) #4, !dbg !704
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !700
  %51 = load i32* %nseq, align 4, !dbg !700, !tbaa !336
  %52 = trunc i64 %indvars.iv.next.i to i32, !dbg !700
  %cmp.i = icmp slt i32 %52, %51, !dbg !700
  br i1 %cmp.i, label %for.body.i, label %estimate_model_length.exit, !dbg !700

estimate_model_length.exit:                       ; preds = %for.body.i, %for.end138
  %wgtsum.0.lcssa.i = phi float [ 0.000000e+00, %for.end138 ], [ %add6.i, %for.body.i ]
  %total.0.lcssa.i = phi float [ 0.000000e+00, %for.end138 ], [ %add.i, %for.body.i ]
  %div.i = fdiv float %total.0.lcssa.i, %wgtsum.0.lcssa.i, !dbg !705
  %conv7.i = fptosi float %div.i to i32, !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %conv7.i}, i64 0, metadata !250), !dbg !692
  %sub = add nsw i32 %conv7.i, -1, !dbg !706
  %conv140 = sitofp i32 %sub to float, !dbg !706
  call void @llvm.dbg.value(metadata !707, i64 0, metadata !248), !dbg !708
  %conv148 = fdiv float 5.000000e-01, %conv140, !dbg !709
  call void @llvm.dbg.value(metadata !{float %conv148}, i64 0, metadata !249), !dbg !709
  %div149 = fdiv float 5.000000e-01, %null_p1, !dbg !710
  %cmp150 = fcmp ogt float %div149, 0.000000e+00, !dbg !710
  br i1 %cmp150, label %cond.true152, label %cond.end158, !dbg !710

cond.true152:                                     ; preds = %estimate_model_length.exit
  %conv154 = fpext float %div149 to double, !dbg !710
  %call155 = call double @log(double %conv154) #6, !dbg !710
  %mul156 = fmul double %call155, 0x3FF7154764EE6C2F, !dbg !710
  %phitmp943 = fptrunc double %mul156 to float, !dbg !710
  br label %cond.end158, !dbg !710

cond.end158:                                      ; preds = %estimate_model_length.exit, %cond.true152
  %cond159 = phi float [ %phitmp943, %cond.true152 ], [ -9.999000e+03, %estimate_model_length.exit ]
  call void @llvm.dbg.value(metadata !{float %cond159}, i64 0, metadata !248), !dbg !710
  %div161 = fdiv float %conv148, %null_p1, !dbg !711
  %cmp162 = fcmp ogt float %div161, 0.000000e+00, !dbg !711
  br i1 %cmp162, label %cond.true164, label %cond.end170, !dbg !711

cond.true164:                                     ; preds = %cond.end158
  %conv166 = fpext float %div161 to double, !dbg !711
  %call167 = call double @log(double %conv166) #6, !dbg !711
  %mul168 = fmul double %call167, 0x3FF7154764EE6C2F, !dbg !711
  %phitmp944 = fptrunc double %mul168 to float, !dbg !711
  br label %cond.end170, !dbg !711

cond.end170:                                      ; preds = %cond.end158, %cond.true164
  %cond171 = phi float [ %phitmp944, %cond.true164 ], [ -9.999000e+03, %cond.end158 ]
  call void @llvm.dbg.value(metadata !{float %cond171}, i64 0, metadata !249), !dbg !711
  call void @llvm.dbg.value(metadata !707, i64 0, metadata !222), !dbg !712
  %53 = load i32* %alen, align 4, !dbg !713, !tbaa !336
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !247), !dbg !713
  %cmp1751005 = icmp sgt i32 %53, 0, !dbg !713
  br i1 %cmp1751005, label %for.cond178.preheader.lr.ph, label %for.end247, !dbg !713

for.cond178.preheader.lr.ph:                      ; preds = %cond.end170
  %54 = load i32* %nseq, align 4, !dbg !715, !tbaa !336
  %cmp180998 = icmp sgt i32 %54, 0, !dbg !715
  %aseq186 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !718
  %55 = sext i32 %53 to i64
  br label %for.cond178.preheader, !dbg !713

for.cond174:                                      ; preds = %for.end237
  %56 = trunc i64 %57 to i32, !dbg !713
  %cmp175 = icmp sgt i32 %56, 0, !dbg !713
  br i1 %cmp175, label %for.cond178.preheader, label %for.end247, !dbg !713

for.cond178.preheader:                            ; preds = %for.cond178.preheader.lr.ph, %for.cond174
  %indvars.iv1048 = phi i64 [ %55, %for.cond178.preheader.lr.ph ], [ %57, %for.cond174 ]
  %last.01006 = phi i32 [ %53, %for.cond178.preheader.lr.ph ], [ %dec, %for.cond174 ]
  %57 = add i64 %indvars.iv1048, -1, !dbg !718
  br i1 %cmp180998, label %for.body182.lr.ph, label %for.end237, !dbg !715

for.body182.lr.ph:                                ; preds = %for.cond178.preheader
  %58 = load i8*** %aseq186, align 8, !dbg !718, !tbaa !331
  br label %for.body182, !dbg !715

for.body182:                                      ; preds = %for.body182.lr.ph, %for.inc235
  %indvars.iv1044 = phi i64 [ 0, %for.body182.lr.ph ], [ %indvars.iv.next1045, %for.inc235 ]
  %ngap.01000 = phi i32 [ 0, %for.body182.lr.ph ], [ %ngap.1, %for.inc235 ]
  %arrayidx187 = getelementptr inbounds i8** %58, i64 %indvars.iv1044, !dbg !718
  %59 = load i8** %arrayidx187, align 8, !dbg !718, !tbaa !331
  %arrayidx188 = getelementptr inbounds i8* %59, i64 %57, !dbg !718
  %60 = load i8* %arrayidx188, align 1, !dbg !718, !tbaa !332
  switch i8 %60, label %for.inc235 [
    i8 32, label %if.then232
    i8 46, label %if.then232
    i8 95, label %if.then232
    i8 45, label %if.then232
    i8 126, label %if.then232
  ], !dbg !718

if.then232:                                       ; preds = %for.body182, %for.body182, %for.body182, %for.body182, %for.body182
  %inc233 = add nsw i32 %ngap.01000, 1, !dbg !718
  call void @llvm.dbg.value(metadata !{i32 %inc233}, i64 0, metadata !255), !dbg !718
  br label %for.inc235, !dbg !718

for.inc235:                                       ; preds = %for.body182, %if.then232
  %ngap.1 = phi i32 [ %inc233, %if.then232 ], [ %ngap.01000, %for.body182 ]
  %indvars.iv.next1045 = add i64 %indvars.iv1044, 1, !dbg !715
  %61 = trunc i64 %indvars.iv.next1045 to i32, !dbg !715
  %cmp180 = icmp slt i32 %61, %54, !dbg !715
  br i1 %cmp180, label %for.body182, label %for.end237, !dbg !715

for.end237:                                       ; preds = %for.cond178.preheader, %for.inc235
  %ngap.0.lcssa = phi i32 [ %ngap.1, %for.inc235 ], [ 0, %for.cond178.preheader ]
  %conv238 = sitofp i32 %ngap.0.lcssa to float, !dbg !719
  %conv240 = sitofp i32 %54 to float, !dbg !719
  %div241 = fdiv float %conv238, %conv240, !dbg !719
  %cmp242 = fcmp ugt float %div241, 5.000000e-01, !dbg !719
  %dec = add nsw i32 %last.01006, -1, !dbg !713
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !247), !dbg !713
  br i1 %cmp242, label %for.cond174, label %for.end247, !dbg !719

for.end247:                                       ; preds = %for.cond174, %for.end237, %cond.end170
  %last.0.lcssa = phi i32 [ %53, %cond.end170 ], [ %last.01006, %for.end237 ], [ %dec, %for.cond174 ]
  %idxprom248 = sext i32 %last.0.lcssa to i64, !dbg !720
  %arrayidx249 = getelementptr inbounds float* %6, i64 %idxprom248, !dbg !720
  store float 0.000000e+00, float* %arrayidx249, align 4, !dbg !720, !tbaa !550
  %arrayidx251 = getelementptr inbounds i32* %8, i64 %idxprom248, !dbg !721
  store i32 0, i32* %arrayidx251, align 4, !dbg !721, !tbaa !336
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !229), !dbg !722
  %62 = load i32* %nseq, align 4, !dbg !722, !tbaa !336
  %cmp254995 = icmp sgt i32 %62, 0, !dbg !722
  br i1 %cmp254995, label %for.cond257.preheader.lr.ph, label %for.cond322.preheader, !dbg !722

for.cond257.preheader.lr.ph:                      ; preds = %for.end247
  %cmp258993 = icmp sgt i32 %last.0.lcssa, 0, !dbg !724
  %aseq263 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !724
  br label %for.cond257.preheader, !dbg !722

for.cond257.preheader:                            ; preds = %for.cond257.preheader.lr.ph, %for.inc318
  %indvars.iv1042 = phi i64 [ 0, %for.cond257.preheader.lr.ph ], [ %indvars.iv.next1043, %for.inc318 ]
  br i1 %cmp258993, label %land.rhs, label %for.inc318, !dbg !724

for.cond322.preheader:                            ; preds = %for.inc318, %for.end247
  %i.3989 = add i32 %last.0.lcssa, -1, !dbg !726
  %cmp323990 = icmp sgt i32 %i.3989, 0, !dbg !726
  br i1 %cmp323990, label %for.body325.lr.ph, label %for.cond598.preheader, !dbg !726

for.body325.lr.ph:                                ; preds = %for.cond322.preheader
  %arraydecay326 = getelementptr inbounds [20 x float]* %matp, i64 0, i64 0, !dbg !728
  %mnum = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 4, !dbg !730
  %arraydecay330 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 5, i64 0, !dbg !730
  %arraydecay331 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 6, i64 0, !dbg !730
  %arraydecay361 = getelementptr inbounds [20 x float]* %insc, i64 0, i64 0, !dbg !731
  %mul590 = fmul float %cond, %call110, !dbg !732
  %aseq379 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !733
  %arraydecay382 = getelementptr inbounds [8 x float]* %cij, i64 0, i64 0, !dbg !733
  %arrayidx84.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 1, !dbg !736
  %arrayidx90.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 4, !dbg !740
  %arrayidx94.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 3, !dbg !741
  %arrayidx187.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 2, !dbg !742
  %arrayidx253.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 5, !dbg !745
  %arrayidx248.i = getelementptr inbounds [8 x float]* %cij, i64 0, i64 6, !dbg !747
  %arraydecay391 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 0, !dbg !748
  %arraydecay394 = getelementptr inbounds %struct.p7prior_s* %prior, i64 0, i32 2, i64 0, !dbg !750
  %arrayidx411 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 1, !dbg !751
  %arrayidx426 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 2, !dbg !752
  %arrayidx439 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 3, !dbg !753
  %arrayidx454 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 4, !dbg !754
  %arrayidx469 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 5, !dbg !755
  %arrayidx484 = getelementptr inbounds [8 x float]* %tij, i64 0, i64 6, !dbg !756
  %63 = sext i32 %i.3989 to i64
  br label %for.body325, !dbg !726

land.rhs:                                         ; preds = %for.body308, %for.cond257.preheader
  %indvars.iv1040 = phi i64 [ %idxprom248, %for.cond257.preheader ], [ %indvars.iv.next1041, %for.body308 ]
  %indvars.iv.next1041 = add i64 %indvars.iv1040, -1, !dbg !724
  %64 = load i8*** %aseq263, align 8, !dbg !724, !tbaa !331
  %arrayidx264 = getelementptr inbounds i8** %64, i64 %indvars.iv1042, !dbg !724
  %65 = load i8** %arrayidx264, align 8, !dbg !724, !tbaa !331
  %arrayidx265 = getelementptr inbounds i8* %65, i64 %indvars.iv.next1041, !dbg !724
  %66 = load i8* %arrayidx265, align 1, !dbg !724, !tbaa !332
  switch i8 %66, label %for.inc318 [
    i8 32, label %for.body308
    i8 46, label %for.body308
    i8 95, label %for.body308
    i8 45, label %for.body308
    i8 126, label %for.body308
  ], !dbg !724

for.body308:                                      ; preds = %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs
  store i8 95, i8* %arrayidx265, align 1, !dbg !757, !tbaa !332
  %67 = trunc i64 %indvars.iv.next1041 to i32, !dbg !724
  %cmp258 = icmp sgt i32 %67, 0, !dbg !724
  br i1 %cmp258, label %land.rhs, label %for.inc318, !dbg !724

for.inc318:                                       ; preds = %for.body308, %land.rhs, %for.cond257.preheader
  %indvars.iv.next1043 = add i64 %indvars.iv1042, 1, !dbg !722
  %68 = load i32* %nseq, align 4, !dbg !722, !tbaa !336
  %69 = trunc i64 %indvars.iv.next1043 to i32, !dbg !722
  %cmp254 = icmp slt i32 %69, %68, !dbg !722
  br i1 %cmp254, label %for.cond257.preheader, label %for.cond322.preheader, !dbg !722

for.cond598.preheader:                            ; preds = %for.end585, %for.cond322.preheader
  %cmp599974 = icmp slt i32 %last.0.lcssa, 1, !dbg !758
  br i1 %cmp599974, label %for.end671, label %for.body601.lr.ph, !dbg !758

for.body601.lr.ph:                                ; preds = %for.cond598.preheader
  %70 = load i32* %nseq, align 4, !dbg !760, !tbaa !336
  %cmp606971 = icmp sgt i32 %70, 0, !dbg !760
  %aseq612 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !763
  %71 = add i32 %last.0.lcssa, 1, !dbg !758
  br label %for.body601, !dbg !758

for.body325:                                      ; preds = %for.body325.lr.ph, %for.end585
  %indvars.iv1037 = phi i64 [ %63, %for.body325.lr.ph ], [ %indvars.iv.next1038, %for.end585 ]
  %indvars.iv1030 = phi i32 [ %last.0.lcssa, %for.body325.lr.ph ], [ %indvars.iv.next1031, %for.end585 ]
  %i.3992 = phi i32 [ %i.3989, %for.body325.lr.ph ], [ %i.3, %for.end585 ]
  %72 = sext i32 %indvars.iv1030 to i64, !dbg !726
  %arrayidx328 = getelementptr inbounds float** %4, i64 %indvars.iv1037, !dbg !728
  %73 = load float** %arrayidx328, align 8, !dbg !728, !tbaa !331
  %74 = load i32* @Alphabet_size, align 4, !dbg !728, !tbaa !336
  call void @FCopy(float* %arraydecay326, float* %73, i32 %74) #6, !dbg !728
  %75 = load i32* %mnum, align 4, !dbg !730, !tbaa !336
  call void @P7PriorifyEmissionVector(float* %arraydecay326, %struct.p7prior_s* %prior, i32 %75, float* %arraydecay330, [20 x float]* %arraydecay331, float* null) #6, !dbg !730
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !232), !dbg !765
  %76 = load i32* @Alphabet_size, align 4, !dbg !765, !tbaa !336
  %cmp333979 = icmp sgt i32 %76, 0, !dbg !765
  br i1 %cmp333979, label %for.body335, label %for.end360, !dbg !765

for.body335:                                      ; preds = %for.body325, %cond.end353
  %77 = phi i32 [ %80, %cond.end353 ], [ %76, %for.body325 ]
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %cond.end353 ], [ 0, %for.body325 ]
  %arrayidx337 = getelementptr inbounds [20 x float]* %matp, i64 0, i64 %indvars.iv1024, !dbg !767
  %78 = load float* %arrayidx337, align 4, !dbg !767, !tbaa !550
  %arrayidx339 = getelementptr inbounds float* %null, i64 %indvars.iv1024, !dbg !767
  %79 = load float* %arrayidx339, align 4, !dbg !767, !tbaa !550
  %div340 = fdiv float %78, %79, !dbg !767
  %cmp341 = fcmp ogt float %div340, 0.000000e+00, !dbg !767
  br i1 %cmp341, label %cond.true343, label %cond.end353, !dbg !767

cond.true343:                                     ; preds = %for.body335
  %conv349 = fpext float %div340 to double, !dbg !767
  %call350 = call double @log(double %conv349) #6, !dbg !767
  %mul351 = fmul double %call350, 0x3FF7154764EE6C2F, !dbg !767
  %phitmp952 = fptrunc double %mul351 to float, !dbg !767
  %.pre1061 = load i32* @Alphabet_size, align 4, !dbg !765, !tbaa !336
  br label %cond.end353, !dbg !767

cond.end353:                                      ; preds = %for.body335, %cond.true343
  %80 = phi i32 [ %.pre1061, %cond.true343 ], [ %77, %for.body335 ], !dbg !767
  %cond354 = phi float [ %phitmp952, %cond.true343 ], [ -9.999000e+03, %for.body335 ]
  store float %cond354, float* %arrayidx337, align 4, !dbg !767, !tbaa !550
  %indvars.iv.next1025 = add i64 %indvars.iv1024, 1, !dbg !765
  %81 = trunc i64 %indvars.iv.next1025 to i32, !dbg !765
  %cmp333 = icmp slt i32 %81, %80, !dbg !765
  br i1 %cmp333, label %for.body335, label %for.end360, !dbg !765

for.end360:                                       ; preds = %cond.end353, %for.body325
  %.lcssa = phi i32 [ %76, %for.body325 ], [ %80, %cond.end353 ]
  call void @FSet(float* %arraydecay361, i32 %.lcssa, float 0.000000e+00) #6, !dbg !731
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !229), !dbg !768
  %82 = load i32* %nseq, align 4, !dbg !768, !tbaa !336
  %cmp364982 = icmp sgt i32 %82, 0, !dbg !768
  br i1 %cmp364982, label %for.body366, label %for.end371, !dbg !768

for.body366:                                      ; preds = %for.end360, %for.body366
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %for.body366 ], [ 0, %for.end360 ]
  %arrayidx368 = getelementptr inbounds i32* %12, i64 %indvars.iv1026, !dbg !768
  store i32 0, i32* %arrayidx368, align 4, !dbg !768, !tbaa !336
  %indvars.iv.next1027 = add i64 %indvars.iv1026, 1, !dbg !768
  %83 = load i32* %nseq, align 4, !dbg !768, !tbaa !336
  %84 = trunc i64 %indvars.iv.next1027 to i32, !dbg !768
  %cmp364 = icmp slt i32 %84, %83, !dbg !768
  br i1 %cmp364, label %for.body366, label %for.end371, !dbg !768

for.end371:                                       ; preds = %for.body366, %for.end360
  %85 = phi i32 [ %82, %for.end360 ], [ %83, %for.body366 ]
  %arrayidx373 = getelementptr inbounds float* %6, i64 %indvars.iv1037, !dbg !770
  store float 0xC7EFFFFFE0000000, float* %arrayidx373, align 4, !dbg !770, !tbaa !550
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv1030}, i64 0, metadata !231), !dbg !771
  %cmp376987 = icmp sgt i32 %indvars.iv1030, %last.0.lcssa, !dbg !771
  br i1 %cmp376987, label %for.end585, label %for.body378.lr.ph, !dbg !771

for.body378.lr.ph:                                ; preds = %for.end371
  %dec.i = add nsw i32 %indvars.iv1030, -2, !dbg !772
  %idxprom3.i = sext i32 %dec.i to i64, !dbg !773
  %arrayidx515 = getelementptr inbounds i32* %8, i64 %indvars.iv1037, !dbg !774
  br label %for.body378, !dbg !771

for.body378:                                      ; preds = %for.inc583.for.body378_crit_edge, %for.body378.lr.ph
  %86 = phi i32 [ %132, %for.inc583.for.body378_crit_edge ], [ %85, %for.body378.lr.ph ]
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %for.inc583.for.body378_crit_edge ], [ %72, %for.body378.lr.ph ], !dbg !726
  %87 = load i8*** %aseq379, align 8, !dbg !733, !tbaa !331
  %88 = load float** %wgt108, align 8, !dbg !733, !tbaa !331
  call void @llvm.dbg.value(metadata !{i8** %87}, i64 0, metadata !776) #4, !dbg !777
  call void @llvm.dbg.value(metadata !{i32 %86}, i64 0, metadata !778) #4, !dbg !777
  call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !779) #4, !dbg !777
  call void @llvm.dbg.value(metadata !{i32 %i.3992}, i64 0, metadata !780) #4, !dbg !777
  call void @llvm.dbg.value(metadata !781, i64 0, metadata !782) #4, !dbg !777
  call void @llvm.dbg.value(metadata !{float* %88}, i64 0, metadata !783) #4, !dbg !784
  call void @llvm.dbg.value(metadata !{float* %arraydecay382}, i64 0, metadata !785) #4, !dbg !784
  call void @FSet(float* %arraydecay382, i32 8, float 0.000000e+00) #6, !dbg !786
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !787) #4, !dbg !788
  %cmp371.i = icmp sgt i32 %86, 0, !dbg !788
  br i1 %cmp371.i, label %for.body.lr.ph.i954, label %if.then390, !dbg !788

for.body.lr.ph.i954:                              ; preds = %for.body378
  %89 = add nsw i64 %indvars.iv1032, -1, !dbg !789
  br label %for.body.i958, !dbg !788

for.body.i958:                                    ; preds = %for.inc.i, %for.body.lr.ph.i954
  %indvars.iv.i955 = phi i64 [ 0, %for.body.lr.ph.i954 ], [ %indvars.iv.next.i961, %for.inc.i ]
  %arrayidx.i956 = getelementptr inbounds i32* %12, i64 %indvars.iv.i955, !dbg !790
  %90 = load i32* %arrayidx.i956, align 4, !dbg !790, !tbaa !336
  %cmp2.i = icmp sgt i32 %90, 0, !dbg !790
  %arrayidx5.i957 = getelementptr inbounds i8** %87, i64 %indvars.iv.i955, !dbg !773
  %91 = load i8** %arrayidx5.i957, align 8, !dbg !773, !tbaa !331
  %arrayidx6.i = getelementptr inbounds i8* %91, i64 %idxprom3.i, !dbg !773
  %92 = load i8* %arrayidx6.i, align 1, !dbg !773, !tbaa !332
  br i1 %cmp2.i, label %if.then.i, label %if.else.i, !dbg !790

if.then.i:                                        ; preds = %for.body.i958
  switch i8 %92, label %if.end.i [
    i8 126, label %for.end585
    i8 95, label %for.end585
    i8 46, label %for.end585
    i8 45, label %for.end585
    i8 32, label %for.end585
  ], !dbg !773

if.end.i:                                         ; preds = %if.then.i
  %arrayidx44.i = getelementptr inbounds i8* %91, i64 %89, !dbg !791
  %93 = load i8* %arrayidx44.i, align 1, !dbg !791, !tbaa !332
  switch i8 %93, label %if.end81.i [
    i8 32, label %if.end517
    i8 46, label %if.end517
    i8 95, label %if.end517
    i8 45, label %if.end517
    i8 126, label %if.end517
  ], !dbg !791

if.end81.i:                                       ; preds = %if.end.i
  %arrayidx83.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955, !dbg !736
  %94 = load float* %arrayidx83.i, align 4, !dbg !736, !tbaa !550
  %95 = load float* %arrayidx84.i, align 4, !dbg !736, !tbaa !550
  %add.i959 = fadd float %94, %95, !dbg !736
  store float %add.i959, float* %arrayidx84.i, align 4, !dbg !736, !tbaa !550
  %sub.i = add nsw i32 %90, -1, !dbg !740
  %conv87.i = sitofp i32 %sub.i to float, !dbg !740
  %96 = load float* %arrayidx83.i, align 4, !dbg !740, !tbaa !550
  %mul.i960 = fmul float %conv87.i, %96, !dbg !740
  %97 = load float* %arrayidx90.i, align 16, !dbg !740, !tbaa !550
  %add91.i = fadd float %97, %mul.i960, !dbg !740
  store float %add91.i, float* %arrayidx90.i, align 16, !dbg !740, !tbaa !550
  %98 = load float* %arrayidx83.i, align 4, !dbg !741, !tbaa !550
  %99 = load float* %arrayidx94.i, align 4, !dbg !741, !tbaa !550
  %add95.i = fadd float %98, %99, !dbg !741
  store float %add95.i, float* %arrayidx94.i, align 4, !dbg !741, !tbaa !550
  br label %for.inc.i, !dbg !792

if.else.i:                                        ; preds = %for.body.i958
  switch i8 %92, label %if.then135.i [
    i8 126, label %if.else196.i
    i8 95, label %if.else196.i
    i8 46, label %if.else196.i
    i8 45, label %if.else196.i
    i8 32, label %if.else196.i
  ], !dbg !793

if.then135.i:                                     ; preds = %if.else.i
  %arrayidx139.i = getelementptr inbounds i8* %91, i64 %89, !dbg !794
  %100 = load i8* %arrayidx139.i, align 1, !dbg !794, !tbaa !332
  switch i8 %100, label %if.else189.i [
    i8 95, label %for.inc.i
    i8 32, label %if.then184.i
    i8 46, label %if.then184.i
    i8 126, label %if.then184.i
    i8 45, label %if.then184.i
  ], !dbg !794

if.then184.i:                                     ; preds = %if.then135.i, %if.then135.i, %if.then135.i, %if.then135.i
  %arrayidx186.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955, !dbg !742
  %101 = load float* %arrayidx186.i, align 4, !dbg !742, !tbaa !550
  %102 = load float* %arrayidx187.i, align 8, !dbg !742, !tbaa !550
  %add188.i = fadd float %101, %102, !dbg !742
  store float %add188.i, float* %arrayidx187.i, align 8, !dbg !742, !tbaa !550
  br label %for.inc.i, !dbg !742

if.else189.i:                                     ; preds = %if.then135.i
  %arrayidx191.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955, !dbg !795
  %103 = load float* %arrayidx191.i, align 4, !dbg !795, !tbaa !550
  %104 = load float* %arraydecay382, align 16, !dbg !795, !tbaa !550
  %add193.i = fadd float %103, %104, !dbg !795
  store float %add193.i, float* %arraydecay382, align 16, !dbg !795, !tbaa !550
  br label %for.inc.i

if.else196.i:                                     ; preds = %if.else.i, %if.else.i, %if.else.i, %if.else.i, %if.else.i
  %arrayidx200.i = getelementptr inbounds i8* %91, i64 %89, !dbg !796
  %105 = load i8* %arrayidx200.i, align 1, !dbg !796, !tbaa !332
  switch i8 %105, label %if.else250.i [
    i8 95, label %for.inc.i
    i8 32, label %if.then245.i
    i8 46, label %if.then245.i
    i8 126, label %if.then245.i
    i8 45, label %if.then245.i
  ], !dbg !796

if.then245.i:                                     ; preds = %if.else196.i, %if.else196.i, %if.else196.i, %if.else196.i
  %arrayidx247.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955, !dbg !747
  %106 = load float* %arrayidx247.i, align 4, !dbg !747, !tbaa !550
  %107 = load float* %arrayidx248.i, align 8, !dbg !747, !tbaa !550
  %add249.i = fadd float %106, %107, !dbg !747
  store float %add249.i, float* %arrayidx248.i, align 8, !dbg !747, !tbaa !550
  br label %for.inc.i, !dbg !747

if.else250.i:                                     ; preds = %if.else196.i
  %arrayidx252.i = getelementptr inbounds float* %88, i64 %indvars.iv.i955, !dbg !745
  %108 = load float* %arrayidx252.i, align 4, !dbg !745, !tbaa !550
  %109 = load float* %arrayidx253.i, align 4, !dbg !745, !tbaa !550
  %add254.i = fadd float %108, %109, !dbg !745
  store float %add254.i, float* %arrayidx253.i, align 4, !dbg !745, !tbaa !550
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else250.i, %if.then245.i, %if.else196.i, %if.else189.i, %if.then184.i, %if.then135.i, %if.end81.i
  %indvars.iv.next.i961 = add i64 %indvars.iv.i955, 1, !dbg !788
  %110 = trunc i64 %indvars.iv.next.i961 to i32, !dbg !788
  %cmp.i962 = icmp slt i32 %110, %86, !dbg !788
  br i1 %cmp.i962, label %for.body.i958, label %if.then390, !dbg !788

if.then390:                                       ; preds = %for.inc.i, %for.body378
  call void @llvm.dbg.value(metadata !797, i64 0, metadata !254), !dbg !733
  call void @FCopy(float* %arraydecay391, float* %arraydecay382, i32 7) #6, !dbg !748
  call void @P7PriorifyTransitionVector(float* %arraydecay391, %struct.p7prior_s* %prior, float* %arraydecay394) #6, !dbg !750
  call void @FNorm(float* %arraydecay391, i32 3) #6, !dbg !798
  %111 = load float* %arraydecay391, align 16, !dbg !799, !tbaa !550
  %div397 = fdiv float %111, %null_p1, !dbg !799
  %cmp398 = fcmp ogt float %div397, 0.000000e+00, !dbg !799
  br i1 %cmp398, label %cond.true400, label %cond.end407, !dbg !799

cond.true400:                                     ; preds = %if.then390
  %conv403 = fpext float %div397 to double, !dbg !799
  %call404 = call double @log(double %conv403) #6, !dbg !799
  %mul405 = fmul double %call404, 0x3FF7154764EE6C2F, !dbg !799
  %phitmp945 = fptrunc double %mul405 to float, !dbg !799
  br label %cond.end407, !dbg !799

cond.end407:                                      ; preds = %if.then390, %cond.true400
  %cond408 = phi float [ %phitmp945, %cond.true400 ], [ -9.999000e+03, %if.then390 ]
  store float %cond408, float* %arraydecay391, align 16, !dbg !799, !tbaa !550
  %112 = load float* %arrayidx411, align 4, !dbg !751, !tbaa !550
  %div412 = fdiv float %112, %null_p1, !dbg !751
  %cmp413 = fcmp ogt float %div412, 0.000000e+00, !dbg !751
  br i1 %cmp413, label %cond.true415, label %cond.end422, !dbg !751

cond.true415:                                     ; preds = %cond.end407
  %conv418 = fpext float %div412 to double, !dbg !751
  %call419 = call double @log(double %conv418) #6, !dbg !751
  %mul420 = fmul double %call419, 0x3FF7154764EE6C2F, !dbg !751
  %phitmp946 = fptrunc double %mul420 to float, !dbg !751
  br label %cond.end422, !dbg !751

cond.end422:                                      ; preds = %cond.end407, %cond.true415
  %cond423 = phi float [ %phitmp946, %cond.true415 ], [ -9.999000e+03, %cond.end407 ]
  store float %cond423, float* %arrayidx411, align 4, !dbg !751, !tbaa !550
  %113 = load float* %arrayidx426, align 8, !dbg !752, !tbaa !550
  %cmp427 = fcmp ogt float %113, 0.000000e+00, !dbg !752
  br i1 %cmp427, label %cond.true429, label %cond.end435, !dbg !752

cond.true429:                                     ; preds = %cond.end422
  %conv431 = fpext float %113 to double, !dbg !752
  %call432 = call double @log(double %conv431) #6, !dbg !752
  %mul433 = fmul double %call432, 0x3FF7154764EE6C2F, !dbg !752
  %phitmp947 = fptrunc double %mul433 to float, !dbg !752
  br label %cond.end435, !dbg !752

cond.end435:                                      ; preds = %cond.end422, %cond.true429
  %cond436 = phi float [ %phitmp947, %cond.true429 ], [ -9.999000e+03, %cond.end422 ]
  store float %cond436, float* %arrayidx426, align 8, !dbg !752, !tbaa !550
  %114 = load float* %arrayidx439, align 4, !dbg !753, !tbaa !550
  %div440 = fdiv float %114, %null_p1, !dbg !753
  %cmp441 = fcmp ogt float %div440, 0.000000e+00, !dbg !753
  br i1 %cmp441, label %cond.true443, label %cond.end450, !dbg !753

cond.true443:                                     ; preds = %cond.end435
  %conv446 = fpext float %div440 to double, !dbg !753
  %call447 = call double @log(double %conv446) #6, !dbg !753
  %mul448 = fmul double %call447, 0x3FF7154764EE6C2F, !dbg !753
  %phitmp948 = fptrunc double %mul448 to float, !dbg !753
  br label %cond.end450, !dbg !753

cond.end450:                                      ; preds = %cond.end435, %cond.true443
  %cond451 = phi float [ %phitmp948, %cond.true443 ], [ -9.999000e+03, %cond.end435 ]
  store float %cond451, float* %arrayidx439, align 4, !dbg !753, !tbaa !550
  %115 = load float* %arrayidx454, align 16, !dbg !754, !tbaa !550
  %div455 = fdiv float %115, %null_p1, !dbg !754
  %cmp456 = fcmp ogt float %div455, 0.000000e+00, !dbg !754
  br i1 %cmp456, label %cond.true458, label %cond.end465, !dbg !754

cond.true458:                                     ; preds = %cond.end450
  %conv461 = fpext float %div455 to double, !dbg !754
  %call462 = call double @log(double %conv461) #6, !dbg !754
  %mul463 = fmul double %call462, 0x3FF7154764EE6C2F, !dbg !754
  %phitmp949 = fptrunc double %mul463 to float, !dbg !754
  br label %cond.end465, !dbg !754

cond.end465:                                      ; preds = %cond.end450, %cond.true458
  %cond466 = phi float [ %phitmp949, %cond.true458 ], [ -9.999000e+03, %cond.end450 ]
  store float %cond466, float* %arrayidx454, align 16, !dbg !754, !tbaa !550
  %116 = load float* %arrayidx469, align 4, !dbg !755, !tbaa !550
  %div470 = fdiv float %116, %null_p1, !dbg !755
  %cmp471 = fcmp ogt float %div470, 0.000000e+00, !dbg !755
  br i1 %cmp471, label %cond.true473, label %cond.end480, !dbg !755

cond.true473:                                     ; preds = %cond.end465
  %conv476 = fpext float %div470 to double, !dbg !755
  %call477 = call double @log(double %conv476) #6, !dbg !755
  %mul478 = fmul double %call477, 0x3FF7154764EE6C2F, !dbg !755
  %phitmp950 = fptrunc double %mul478 to float, !dbg !755
  br label %cond.end480, !dbg !755

cond.end480:                                      ; preds = %cond.end465, %cond.true473
  %cond481 = phi float [ %phitmp950, %cond.true473 ], [ -9.999000e+03, %cond.end465 ]
  store float %cond481, float* %arrayidx469, align 4, !dbg !755, !tbaa !550
  %117 = load float* %arrayidx484, align 8, !dbg !756, !tbaa !550
  %cmp485 = fcmp ogt float %117, 0.000000e+00, !dbg !756
  br i1 %cmp485, label %cond.true487, label %cond.end493, !dbg !756

cond.true487:                                     ; preds = %cond.end480
  %conv489 = fpext float %117 to double, !dbg !756
  %call490 = call double @log(double %conv489) #6, !dbg !756
  %mul491 = fmul double %call490, 0x3FF7154764EE6C2F, !dbg !756
  %phitmp951 = fptrunc double %mul491 to float, !dbg !756
  br label %cond.end493, !dbg !756

cond.end493:                                      ; preds = %cond.end480, %cond.true487
  %cond494 = phi float [ %phitmp951, %cond.true487 ], [ -9.999000e+03, %cond.end480 ]
  store float %cond494, float* %arrayidx484, align 8, !dbg !756, !tbaa !550
  %arrayidx498 = getelementptr inbounds float* %6, i64 %indvars.iv1032, !dbg !800
  %118 = load float* %arrayidx498, align 4, !dbg !800, !tbaa !550
  %call501 = call float @FDot(float* %arraydecay391, float* %arraydecay382, i32 7) #6, !dbg !800
  %add502 = fadd float %118, %call501, !dbg !800
  %119 = load i32* @Alphabet_size, align 4, !dbg !800, !tbaa !336
  %call505 = call float @FDot(float* %arraydecay, float* %arraydecay361, i32 %119) #6, !dbg !800
  %add506 = fadd float %add502, %call505, !dbg !800
  call void @llvm.dbg.value(metadata !{float %add506}, i64 0, metadata !252), !dbg !800
  %120 = load float* %arrayidx373, align 4, !dbg !801, !tbaa !550
  %cmp509 = fcmp ogt float %add506, %120, !dbg !801
  br i1 %cmp509, label %if.then511, label %if.end517, !dbg !801

if.then511:                                       ; preds = %cond.end493
  store float %add506, float* %arrayidx373, align 4, !dbg !802, !tbaa !550
  %121 = trunc i64 %indvars.iv1032 to i32, !dbg !774
  store i32 %121, i32* %arrayidx515, align 4, !dbg !774, !tbaa !336
  br label %if.end517, !dbg !803

if.end517:                                        ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i, %if.end.i, %cond.end493, %if.then511
  %arrayidx520 = getelementptr inbounds float** %4, i64 %indvars.iv1032, !dbg !804
  %122 = load float** %arrayidx520, align 8, !dbg !804, !tbaa !331
  %123 = load i32* @Alphabet_size, align 4, !dbg !804, !tbaa !336
  call void @FAdd(float* %arraydecay361, float* %122, i32 %123) #6, !dbg !804
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !229), !dbg !805
  %124 = load i32* %nseq, align 4, !dbg !805, !tbaa !336
  %cmp523984 = icmp sgt i32 %124, 0, !dbg !805
  br i1 %cmp523984, label %for.body525.lr.ph, label %for.inc583, !dbg !805

for.body525.lr.ph:                                ; preds = %if.end517
  %125 = add nsw i64 %indvars.iv1032, -1, !dbg !807
  %.pre = load i8*** %aseq379, align 8, !dbg !807, !tbaa !331
  br label %for.body525, !dbg !805

for.body525:                                      ; preds = %for.body525.lr.ph, %for.inc580
  %126 = phi i32 [ %124, %for.body525.lr.ph ], [ %130, %for.inc580 ]
  %indvars.iv1028 = phi i64 [ 0, %for.body525.lr.ph ], [ %indvars.iv.next1029, %for.inc580 ]
  %arrayidx530 = getelementptr inbounds i8** %.pre, i64 %indvars.iv1028, !dbg !807
  %127 = load i8** %arrayidx530, align 8, !dbg !807, !tbaa !331
  %arrayidx531 = getelementptr inbounds i8* %127, i64 %125, !dbg !807
  %128 = load i8* %arrayidx531, align 1, !dbg !807, !tbaa !332
  switch i8 %128, label %if.then575 [
    i8 32, label %for.inc580
    i8 46, label %for.inc580
    i8 95, label %for.inc580
    i8 45, label %for.inc580
    i8 126, label %for.inc580
  ], !dbg !807

if.then575:                                       ; preds = %for.body525
  %arrayidx577 = getelementptr inbounds i32* %12, i64 %indvars.iv1028, !dbg !807
  %129 = load i32* %arrayidx577, align 4, !dbg !807, !tbaa !336
  %inc578 = add nsw i32 %129, 1, !dbg !807
  store i32 %inc578, i32* %arrayidx577, align 4, !dbg !807, !tbaa !336
  %.pre1060 = load i32* %nseq, align 4, !dbg !805, !tbaa !336
  br label %for.inc580, !dbg !807

for.inc580:                                       ; preds = %for.body525, %for.body525, %for.body525, %for.body525, %for.body525, %if.then575
  %130 = phi i32 [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %126, %for.body525 ], [ %.pre1060, %if.then575 ], !dbg !805
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1, !dbg !805
  %131 = trunc i64 %indvars.iv.next1029 to i32, !dbg !805
  %cmp523 = icmp slt i32 %131, %130, !dbg !805
  br i1 %cmp523, label %for.body525, label %for.inc583, !dbg !805

for.inc583:                                       ; preds = %for.inc580, %if.end517
  %132 = phi i32 [ %124, %if.end517 ], [ %130, %for.inc580 ]
  %133 = trunc i64 %indvars.iv1032 to i32, !dbg !771
  %cmp376 = icmp slt i32 %133, %last.0.lcssa, !dbg !771
  br i1 %cmp376, label %for.inc583.for.body378_crit_edge, label %for.end585, !dbg !771

for.inc583.for.body378_crit_edge:                 ; preds = %for.inc583
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1, !dbg !771
  br label %for.body378, !dbg !771

for.end585:                                       ; preds = %for.end371, %for.inc583, %if.then.i, %if.then.i, %if.then.i, %if.then.i, %if.then.i
  %134 = load float** %arrayidx328, align 8, !dbg !732, !tbaa !331
  %135 = load i32* @Alphabet_size, align 4, !dbg !732, !tbaa !336
  %call589 = call float @FDot(float* %arraydecay326, float* %134, i32 %135) #6, !dbg !732
  %add591 = fadd float %mul590, %call589, !dbg !732
  %136 = load float* %arrayidx373, align 4, !dbg !732, !tbaa !550
  %add594 = fadd float %136, %add591, !dbg !732
  store float %add594, float* %arrayidx373, align 4, !dbg !732, !tbaa !550
  %i.3 = add nsw i32 %i.3992, -1, !dbg !726
  %cmp323 = icmp sgt i32 %i.3, 0, !dbg !726
  %indvars.iv.next1031 = add i32 %indvars.iv1030, -1, !dbg !726
  %indvars.iv.next1038 = add i64 %indvars.iv1037, -1, !dbg !726
  br i1 %cmp323, label %for.body325, label %for.cond598.preheader, !dbg !726

for.body601:                                      ; preds = %for.end664, %for.body601.lr.ph
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %for.end664 ], [ 1, %for.body601.lr.ph ]
  %bestsc.0977 = phi float [ %bestsc.1, %for.end664 ], [ 0xC7EFFFFFE0000000, %for.body601.lr.ph ]
  %first.0975 = phi i32 [ %first.1, %for.end664 ], [ 0, %for.body601.lr.ph ]
  %arrayidx603 = getelementptr inbounds float* %6, i64 %indvars.iv1020, !dbg !808
  %137 = load float* %arrayidx603, align 4, !dbg !808, !tbaa !550
  call void @llvm.dbg.value(metadata !{float %137}, i64 0, metadata !252), !dbg !808
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !229), !dbg !760
  br i1 %cmp606971, label %for.body608.lr.ph, label %for.end664, !dbg !760

for.body608.lr.ph:                                ; preds = %for.body601
  %138 = add nsw i64 %indvars.iv1020, -1, !dbg !763
  %139 = load i8*** %aseq612, align 8, !dbg !763, !tbaa !331
  br label %for.body608, !dbg !760

for.body608:                                      ; preds = %for.body608.lr.ph, %for.inc662
  %indvars.iv1018 = phi i64 [ 0, %for.body608.lr.ph ], [ %indvars.iv.next1019, %for.inc662 ]
  %new.0973 = phi float [ %137, %for.body608.lr.ph ], [ %new.1, %for.inc662 ]
  %arrayidx613 = getelementptr inbounds i8** %139, i64 %indvars.iv1018, !dbg !763
  %140 = load i8** %arrayidx613, align 8, !dbg !763, !tbaa !331
  %arrayidx614 = getelementptr inbounds i8* %140, i64 %138, !dbg !763
  %141 = load i8* %arrayidx614, align 1, !dbg !763, !tbaa !332
  switch i8 %141, label %if.else [
    i8 32, label %for.inc662
    i8 46, label %for.inc662
    i8 95, label %for.inc662
    i8 45, label %for.inc662
    i8 126, label %for.inc662
  ], !dbg !763

if.else:                                          ; preds = %for.body608
  br label %for.inc662

for.inc662:                                       ; preds = %for.body608, %for.body608, %for.body608, %for.body608, %for.body608, %if.else
  %cond171.pn = phi float [ %cond159, %if.else ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ], [ %cond171, %for.body608 ]
  %new.1 = fadd float %new.0973, %cond171.pn, !dbg !809
  %indvars.iv.next1019 = add i64 %indvars.iv1018, 1, !dbg !760
  %142 = trunc i64 %indvars.iv.next1019 to i32, !dbg !760
  %cmp606 = icmp slt i32 %142, %70, !dbg !760
  br i1 %cmp606, label %for.body608, label %for.end664, !dbg !760

for.end664:                                       ; preds = %for.inc662, %for.body601
  %new.0.lcssa = phi float [ %137, %for.body601 ], [ %new.1, %for.inc662 ]
  %cmp665 = fcmp ogt float %new.0.lcssa, %bestsc.0977, !dbg !810
  call void @llvm.dbg.value(metadata !{float %new.0.lcssa}, i64 0, metadata !253), !dbg !811
  call void @llvm.dbg.value(metadata !781, i64 0, metadata !246), !dbg !813
  %143 = trunc i64 %indvars.iv1020 to i32, !dbg !810
  %first.1 = select i1 %cmp665, i32 %143, i32 %first.0975, !dbg !810
  %bestsc.1 = select i1 %cmp665, float %new.0.lcssa, float %bestsc.0977, !dbg !810
  %indvars.iv.next1021 = add i64 %indvars.iv1020, 1, !dbg !758
  %lftr.wideiv = trunc i64 %indvars.iv.next1021 to i32, !dbg !758
  %exitcond = icmp eq i32 %lftr.wideiv, %71, !dbg !758
  br i1 %exitcond, label %for.end671, label %for.body601, !dbg !758

for.end671:                                       ; preds = %for.end664, %for.cond598.preheader
  %first.0.lcssa = phi i32 [ 0, %for.cond598.preheader ], [ %first.1, %for.end664 ]
  store i32 0, i32* %10, align 4, !dbg !814, !tbaa !336
  call void @llvm.dbg.value(metadata !350, i64 0, metadata !230), !dbg !815
  %144 = load i32* %alen, align 4, !dbg !815, !tbaa !336
  %cmp675969 = icmp slt i32 %144, 1, !dbg !815
  br i1 %cmp675969, label %for.cond683.preheader, label %for.body677, !dbg !815

for.cond683.preheader:                            ; preds = %for.body677, %for.end671
  %cmp684967 = icmp eq i32 %first.0.lcssa, 0, !dbg !817
  br i1 %cmp684967, label %for.end694, label %for.body686, !dbg !817

for.body677:                                      ; preds = %for.end671, %for.body677
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %for.body677 ], [ 1, %for.end671 ]
  %arrayidx679 = getelementptr inbounds i32* %10, i64 %indvars.iv1016, !dbg !815
  store i32 8, i32* %arrayidx679, align 4, !dbg !815, !tbaa !336
  %indvars.iv.next1017 = add i64 %indvars.iv1016, 1, !dbg !815
  %145 = load i32* %alen, align 4, !dbg !815, !tbaa !336
  %146 = trunc i64 %indvars.iv1016 to i32, !dbg !815
  %cmp675 = icmp slt i32 %146, %145, !dbg !815
  br i1 %cmp675, label %for.body677, label %for.cond683.preheader, !dbg !815

for.body686:                                      ; preds = %for.cond683.preheader, %for.body686
  %i.6968 = phi i32 [ %148, %for.body686 ], [ %first.0.lcssa, %for.cond683.preheader ]
  %idxprom687 = sext i32 %i.6968 to i64, !dbg !819
  %arrayidx688 = getelementptr inbounds i32* %10, i64 %idxprom687, !dbg !819
  %147 = load i32* %arrayidx688, align 4, !dbg !819, !tbaa !336
  %and = and i32 %147, -10, !dbg !819
  %or = or i32 %and, 1, !dbg !821
  store i32 %or, i32* %arrayidx688, align 4, !dbg !821, !tbaa !336
  %arrayidx693 = getelementptr inbounds i32* %8, i64 %idxprom687, !dbg !817
  %148 = load i32* %arrayidx693, align 4, !dbg !817, !tbaa !336
  call void @llvm.dbg.value(metadata !{i32 %148}, i64 0, metadata !230), !dbg !817
  %cmp684 = icmp eq i32 %148, 0, !dbg !817
  br i1 %cmp684, label %for.end694, label %for.body686, !dbg !817

for.end694:                                       ; preds = %for.body686, %for.cond683.preheader
  call fastcc void @matassign2hmm(%struct.msa_struct* %msa, i8** %dsq, i32* %10, %struct.plan7_s** %ret_hmm, %struct.p7trace_s*** %ret_tr) #7, !dbg !822
  call void @llvm.dbg.value(metadata !350, i64 0, metadata !230), !dbg !823
  %149 = load i32* %alen, align 4, !dbg !823, !tbaa !336
  %cmp697965 = icmp slt i32 %149, 1, !dbg !823
  br i1 %cmp697965, label %for.end704, label %for.body699, !dbg !823

for.body699:                                      ; preds = %for.end694, %for.body699
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body699 ], [ 1, %for.end694 ]
  %arrayidx701 = getelementptr inbounds float** %4, i64 %indvars.iv, !dbg !823
  %150 = load float** %arrayidx701, align 8, !dbg !823, !tbaa !331
  %151 = bitcast float* %150 to i8*, !dbg !823
  call void @free(i8* %151) #6, !dbg !823
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !823
  %152 = load i32* %alen, align 4, !dbg !823, !tbaa !336
  %153 = trunc i64 %indvars.iv to i32, !dbg !823
  %cmp697 = icmp slt i32 %153, %152, !dbg !823
  br i1 %cmp697, label %for.body699, label %for.end704, !dbg !823

for.end704:                                       ; preds = %for.body699, %for.end694
  call void @free(i8* %call) #6, !dbg !825
  call void @free(i8* %call5) #6, !dbg !826
  call void @free(i8* %call10) #6, !dbg !827
  call void @free(i8* %call15) #6, !dbg !828
  call void @free(i8* %call18) #6, !dbg !829
  call void @llvm.lifetime.end(i64 80, i8* %2) #4, !dbg !830
  call void @llvm.lifetime.end(i64 80, i8* %1) #4, !dbg !830
  call void @llvm.lifetime.end(i64 80, i8* %0) #4, !dbg !830
  ret void, !dbg !830
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #2

; Function Attrs: optsize
declare i32 @SymbolIndex(i8 signext) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #2

; Function Attrs: optsize
declare void @FNorm(float*, i32) #2

; Function Attrs: optsize
declare float @FSum(float*, i32) #2

; Function Attrs: optsize
declare void @P7PriorifyEmissionVector(float*, %struct.p7prior_s*, i32, float*, [20 x float]*, float*) #2

; Function Attrs: optsize
declare void @P7PriorifyTransitionVector(float*, %struct.p7prior_s*, float*) #2

; Function Attrs: optsize
declare float @FDot(float*, float*, i32) #2

; Function Attrs: optsize
declare void @FAdd(float*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.plan7_s* @AllocPlan7(i32) #2

; Function Attrs: optsize
declare void @ZeroPlan7(%struct.plan7_s*) #2

; Function Attrs: optsize
declare void @P7TraceCount(%struct.plan7_s*, i8*, float, %struct.p7trace_s*) #2

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #2

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #2

; Function Attrs: optsize
declare i8* @MSAGetGC(%struct.msa_struct*, i8*) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !182, metadata !195, metadata !257, metadata !271, metadata !281, metadata !296, metadata !308, metadata !316}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7Handmodelmaker", metadata !"P7Handmodelmaker", metadata !"", i32 100, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8**, %struct.plan7_s**, %struct.p7trace_s***)* @P7Handmodelmaker, null, null, metadata !175, i32 102} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 102] [P7Handmodelmaker]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !30, metadata !103, metadata !166}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !33, metadata !34, metadata !37, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !69, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !101, metadata !102}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!36 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!38 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !38} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !30} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!50 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !54} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!54 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!57 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !58} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!58 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !38, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !30} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !38} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!61 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!63 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !30} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!64 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !38} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!65 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !30} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!67 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !68} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !70} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!71 = metadata !{i32 786454, metadata !27, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!73 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !83, metadata !84, metadata !85}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!78 = metadata !{i32 786451, metadata !73, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!82 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!86 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !38} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!87 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !30} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!88 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !30} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!89 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !70} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!90 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !38} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!91 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !30} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!92 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !68} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!93 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !70} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!94 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !38} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!95 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !70} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!96 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!97 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!98 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !99} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !99} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!101 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !99} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!102 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !38} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!105 = metadata !{i32 786451, metadata !106, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !107, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!106 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !131, metadata !132, metadata !133, metadata !134, metadata !139, metadata !140, metadata !141, metadata !145, metadata !146, metadata !148, metadata !149, metadata !150, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!108 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!110 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!111 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!112 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!113 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!114 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!115 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!116 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!117 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !99} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!118 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!119 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !99} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!120 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !99} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!121 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !99} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!122 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!123 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!124 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !36} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!125 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !36} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!126 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !36} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!127 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !36} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!128 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !38} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!129 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !130} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !130} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!132 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !130} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!133 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !36} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!134 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !135} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!135 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !36, metadata !136, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!136 = metadata !{metadata !137, metadata !138}
!137 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!138 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!139 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !35} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!140 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !35} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!141 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !142} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !36, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!145 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !36} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!146 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !147} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!148 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !147} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!149 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !147} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!150 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !151} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!151 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !38, metadata !136, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!152 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !99} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!153 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !99} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!154 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !99} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!155 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !99} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!156 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !99} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!157 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !99} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!158 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !99} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!159 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !147} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!160 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !147} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!161 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !38} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!162 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !38} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!163 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !36} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!164 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !36} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!165 = metadata !{i32 786445, metadata !106, metadata !105, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !38} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!169 = metadata !{i32 786451, metadata !106, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174}
!171 = metadata !{i32 786445, metadata !106, metadata !169, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !106, metadata !169, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!173 = metadata !{i32 786445, metadata !106, metadata !169, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !99} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!174 = metadata !{i32 786445, metadata !106, metadata !169, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !99} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!175 = metadata !{metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!176 = metadata !{i32 786689, metadata !20, metadata !"msa", metadata !21, i32 16777316, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 100]
!177 = metadata !{i32 786689, metadata !20, metadata !"dsq", metadata !21, i32 33554532, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 100]
!178 = metadata !{i32 786689, metadata !20, metadata !"ret_hmm", metadata !21, i32 50331749, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 101]
!179 = metadata !{i32 786689, metadata !20, metadata !"ret_tr", metadata !21, i32 67108965, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 101]
!180 = metadata !{i32 786688, metadata !20, metadata !"matassign", metadata !21, i32 103, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matassign] [line 103]
!181 = metadata !{i32 786688, metadata !20, metadata !"apos", metadata !21, i32 104, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 104]
!182 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7Fastmodelmaker", metadata !"P7Fastmodelmaker", metadata !"", i32 162, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8**, float, %struct.plan7_s**, %struct.p7trace_s***)* @P7Fastmodelmaker, null, null, metadata !185, i32 164} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 164] [P7Fastmodelmaker]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{null, metadata !24, metadata !30, metadata !36, metadata !103, metadata !166}
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194}
!186 = metadata !{i32 786689, metadata !182, metadata !"msa", metadata !21, i32 16777378, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 162]
!187 = metadata !{i32 786689, metadata !182, metadata !"dsq", metadata !21, i32 33554594, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 162]
!188 = metadata !{i32 786689, metadata !182, metadata !"maxgap", metadata !21, i32 50331810, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxgap] [line 162]
!189 = metadata !{i32 786689, metadata !182, metadata !"ret_hmm", metadata !21, i32 67109027, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 163]
!190 = metadata !{i32 786689, metadata !182, metadata !"ret_tr", metadata !21, i32 83886243, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 163]
!191 = metadata !{i32 786688, metadata !182, metadata !"matassign", metadata !21, i32 165, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matassign] [line 165]
!192 = metadata !{i32 786688, metadata !182, metadata !"idx", metadata !21, i32 166, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 166]
!193 = metadata !{i32 786688, metadata !182, metadata !"apos", metadata !21, i32 167, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 167]
!194 = metadata !{i32 786688, metadata !182, metadata !"ngap", metadata !21, i32 168, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngap] [line 168]
!195 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7Maxmodelmaker", metadata !"P7Maxmodelmaker", metadata !"", i32 227, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8**, float, %struct.p7prior_s*, float*, float, float, %struct.plan7_s**, %struct.p7trace_s***)* @P7Maxmodelmaker, null, null, metadata !219, i32 231} ; [ DW_TAG_subprogram ] [line 227] [def] [scope 231] [P7Maxmodelmaker]
!196 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{null, metadata !24, metadata !30, metadata !36, metadata !198, metadata !35, metadata !36, metadata !36, metadata !103, metadata !166}
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7prior_s]
!199 = metadata !{i32 786451, metadata !106, null, metadata !"p7prior_s", i32 385, i64 320128, i64 32, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7prior_s] [line 385, size 320128, align 32, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !207, metadata !211, metadata !212, metadata !213, metadata !216, metadata !217, metadata !218}
!201 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"strategy", i32 386, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [strategy] [line 386, size 32, align 32, offset 0] [from int]
!202 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"tnum", i32 388, i64 32, i64 32, i64 32, i32 0, metadata !38} ; [ DW_TAG_member ] [tnum] [line 388, size 32, align 32, offset 32] [from int]
!203 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"tq", i32 389, i64 6400, i64 32, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [tq] [line 389, size 6400, align 32, offset 64] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 32, i32 0, i32 0, metadata !36, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 32, offset 0] [from float]
!205 = metadata !{metadata !206}
!206 = metadata !{i32 786465, i64 0, i64 200}     ; [ DW_TAG_subrange_type ] [0, 199]
!207 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"t", i32 390, i64 44800, i64 32, i64 6464, i32 0, metadata !208} ; [ DW_TAG_member ] [t] [line 390, size 44800, align 32, offset 6464] [from ]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 44800, i64 32, i32 0, i32 0, metadata !36, metadata !209, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 44800, align 32, offset 0] [from float]
!209 = metadata !{metadata !206, metadata !210}
!210 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!211 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"mnum", i32 392, i64 32, i64 32, i64 51264, i32 0, metadata !38} ; [ DW_TAG_member ] [mnum] [line 392, size 32, align 32, offset 51264] [from int]
!212 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"mq", i32 393, i64 6400, i64 32, i64 51296, i32 0, metadata !204} ; [ DW_TAG_member ] [mq] [line 393, size 6400, align 32, offset 51296] [from ]
!213 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"m", i32 394, i64 128000, i64 32, i64 57696, i32 0, metadata !214} ; [ DW_TAG_member ] [m] [line 394, size 128000, align 32, offset 57696] [from ]
!214 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128000, i64 32, i32 0, i32 0, metadata !36, metadata !215, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128000, align 32, offset 0] [from float]
!215 = metadata !{metadata !206, metadata !144}
!216 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"inum", i32 396, i64 32, i64 32, i64 185696, i32 0, metadata !38} ; [ DW_TAG_member ] [inum] [line 396, size 32, align 32, offset 185696] [from int]
!217 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"iq", i32 397, i64 6400, i64 32, i64 185728, i32 0, metadata !204} ; [ DW_TAG_member ] [iq] [line 397, size 6400, align 32, offset 185728] [from ]
!218 = metadata !{i32 786445, metadata !106, metadata !199, metadata !"i", i32 398, i64 128000, i64 32, i64 192128, i32 0, metadata !214} ; [ DW_TAG_member ] [i] [line 398, size 128000, align 32, offset 192128] [from ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256}
!220 = metadata !{i32 786689, metadata !195, metadata !"msa", metadata !21, i32 16777443, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 227]
!221 = metadata !{i32 786689, metadata !195, metadata !"dsq", metadata !21, i32 33554659, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 227]
!222 = metadata !{i32 786689, metadata !195, metadata !"maxgap", metadata !21, i32 50331875, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxgap] [line 227]
!223 = metadata !{i32 786689, metadata !195, metadata !"prior", metadata !21, i32 67109092, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prior] [line 228]
!224 = metadata !{i32 786689, metadata !195, metadata !"null", metadata !21, i32 83886309, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 229]
!225 = metadata !{i32 786689, metadata !195, metadata !"null_p1", metadata !21, i32 100663525, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null_p1] [line 229]
!226 = metadata !{i32 786689, metadata !195, metadata !"mpri", metadata !21, i32 117440741, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mpri] [line 229]
!227 = metadata !{i32 786689, metadata !195, metadata !"ret_hmm", metadata !21, i32 134217958, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 230]
!228 = metadata !{i32 786689, metadata !195, metadata !"ret_tr", metadata !21, i32 150995174, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 230]
!229 = metadata !{i32 786688, metadata !195, metadata !"idx", metadata !21, i32 232, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 232]
!230 = metadata !{i32 786688, metadata !195, metadata !"i", metadata !21, i32 233, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 233]
!231 = metadata !{i32 786688, metadata !195, metadata !"j", metadata !21, i32 233, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 233]
!232 = metadata !{i32 786688, metadata !195, metadata !"x", metadata !21, i32 234, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 234]
!233 = metadata !{i32 786688, metadata !195, metadata !"matc", metadata !21, i32 235, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matc] [line 235]
!234 = metadata !{i32 786688, metadata !195, metadata !"cij", metadata !21, i32 236, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cij] [line 236]
!235 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !36, metadata !236, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!236 = metadata !{metadata !237}
!237 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!238 = metadata !{i32 786688, metadata !195, metadata !"tij", metadata !21, i32 236, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tij] [line 236]
!239 = metadata !{i32 786688, metadata !195, metadata !"matp", metadata !21, i32 237, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matp] [line 237]
!240 = metadata !{i32 786688, metadata !195, metadata !"insp", metadata !21, i32 238, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [insp] [line 238]
!241 = metadata !{i32 786688, metadata !195, metadata !"insc", metadata !21, i32 239, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [insc] [line 239]
!242 = metadata !{i32 786688, metadata !195, metadata !"sc", metadata !21, i32 240, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 240]
!243 = metadata !{i32 786688, metadata !195, metadata !"tbck", metadata !21, i32 241, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tbck] [line 241]
!244 = metadata !{i32 786688, metadata !195, metadata !"matassign", metadata !21, i32 242, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matassign] [line 242]
!245 = metadata !{i32 786688, metadata !195, metadata !"insopt", metadata !21, i32 243, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [insopt] [line 243]
!246 = metadata !{i32 786688, metadata !195, metadata !"first", metadata !21, i32 244, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 244]
!247 = metadata !{i32 786688, metadata !195, metadata !"last", metadata !21, i32 244, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 244]
!248 = metadata !{i32 786688, metadata !195, metadata !"bm1", metadata !21, i32 245, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bm1] [line 245]
!249 = metadata !{i32 786688, metadata !195, metadata !"bm2", metadata !21, i32 245, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bm2] [line 245]
!250 = metadata !{i32 786688, metadata !195, metadata !"est_M", metadata !21, i32 246, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [est_M] [line 246]
!251 = metadata !{i32 786688, metadata !195, metadata !"t_me", metadata !21, i32 247, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t_me] [line 247]
!252 = metadata !{i32 786688, metadata !195, metadata !"new", metadata !21, i32 248, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 248]
!253 = metadata !{i32 786688, metadata !195, metadata !"bestsc", metadata !21, i32 248, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestsc] [line 248]
!254 = metadata !{i32 786688, metadata !195, metadata !"code", metadata !21, i32 249, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 249]
!255 = metadata !{i32 786688, metadata !195, metadata !"ngap", metadata !21, i32 250, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngap] [line 250]
!256 = metadata !{i32 786688, metadata !195, metadata !"wgtsum", metadata !21, i32 251, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wgtsum] [line 251]
!257 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"matassign2hmm", metadata !"matassign2hmm", metadata !"", i32 512, metadata !258, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8**, i32*, %struct.plan7_s**, %struct.p7trace_s***)* @matassign2hmm, null, null, metadata !260, i32 514} ; [ DW_TAG_subprogram ] [line 512] [local] [def] [scope 514] [matassign2hmm]
!258 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{null, metadata !24, metadata !30, metadata !99, metadata !103, metadata !166}
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270}
!261 = metadata !{i32 786689, metadata !257, metadata !"msa", metadata !21, i32 16777728, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 512]
!262 = metadata !{i32 786689, metadata !257, metadata !"dsq", metadata !21, i32 33554944, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 512]
!263 = metadata !{i32 786689, metadata !257, metadata !"matassign", metadata !21, i32 50332160, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matassign] [line 512]
!264 = metadata !{i32 786689, metadata !257, metadata !"ret_hmm", metadata !21, i32 67109377, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 513]
!265 = metadata !{i32 786689, metadata !257, metadata !"ret_tr", metadata !21, i32 83886593, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 513]
!266 = metadata !{i32 786688, metadata !257, metadata !"hmm", metadata !21, i32 515, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 515]
!267 = metadata !{i32 786688, metadata !257, metadata !"tr", metadata !21, i32 516, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 516]
!268 = metadata !{i32 786688, metadata !257, metadata !"M", metadata !21, i32 517, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 517]
!269 = metadata !{i32 786688, metadata !257, metadata !"idx", metadata !21, i32 518, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 518]
!270 = metadata !{i32 786688, metadata !257, metadata !"apos", metadata !21, i32 519, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 519]
!271 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"annotate_model", metadata !"annotate_model", metadata !"", i32 839, metadata !272, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !274, i32 840} ; [ DW_TAG_subprogram ] [line 839] [local] [def] [scope 840] [annotate_model]
!272 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!273 = metadata !{null, metadata !104, metadata !99, metadata !24}
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280}
!275 = metadata !{i32 786689, metadata !271, metadata !"hmm", metadata !21, i32 16778055, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 839]
!276 = metadata !{i32 786689, metadata !271, metadata !"matassign", metadata !21, i32 33555271, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matassign] [line 839]
!277 = metadata !{i32 786689, metadata !271, metadata !"msa", metadata !21, i32 50332487, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 839]
!278 = metadata !{i32 786688, metadata !271, metadata !"apos", metadata !21, i32 841, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 841]
!279 = metadata !{i32 786688, metadata !271, metadata !"k", metadata !21, i32 842, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 842]
!280 = metadata !{i32 786688, metadata !271, metadata !"pri", metadata !21, i32 843, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pri] [line 843]
!281 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fake_tracebacks", metadata !"fake_tracebacks", metadata !"", i32 597, metadata !282, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !284, i32 599} ; [ DW_TAG_subprogram ] [line 597] [local] [def] [scope 599] [fake_tracebacks]
!282 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{null, metadata !30, metadata !38, metadata !38, metadata !99, metadata !166}
!284 = metadata !{metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295}
!285 = metadata !{i32 786689, metadata !281, metadata !"aseq", metadata !21, i32 16777813, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 597]
!286 = metadata !{i32 786689, metadata !281, metadata !"nseq", metadata !21, i32 33555029, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 597]
!287 = metadata !{i32 786689, metadata !281, metadata !"alen", metadata !21, i32 50332245, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 597]
!288 = metadata !{i32 786689, metadata !281, metadata !"matassign", metadata !21, i32 67109461, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matassign] [line 597]
!289 = metadata !{i32 786689, metadata !281, metadata !"ret_tr", metadata !21, i32 83886678, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 598]
!290 = metadata !{i32 786688, metadata !281, metadata !"tr", metadata !21, i32 600, metadata !167, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 600]
!291 = metadata !{i32 786688, metadata !281, metadata !"idx", metadata !21, i32 601, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 601]
!292 = metadata !{i32 786688, metadata !281, metadata !"i", metadata !21, i32 602, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 602]
!293 = metadata !{i32 786688, metadata !281, metadata !"k", metadata !21, i32 603, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 603]
!294 = metadata !{i32 786688, metadata !281, metadata !"apos", metadata !21, i32 604, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 604]
!295 = metadata !{i32 786688, metadata !281, metadata !"tpos", metadata !21, i32 605, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 605]
!296 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"trace_doctor", metadata !"trace_doctor", metadata !"", i32 745, metadata !297, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !299, i32 746} ; [ DW_TAG_subprogram ] [line 745] [local] [def] [scope 746] [trace_doctor]
!297 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!298 = metadata !{null, metadata !168, metadata !38, metadata !99, metadata !99}
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307}
!300 = metadata !{i32 786689, metadata !296, metadata !"tr", metadata !21, i32 16777961, metadata !168, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 745]
!301 = metadata !{i32 786689, metadata !296, metadata !"mlen", metadata !21, i32 33555177, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mlen] [line 745]
!302 = metadata !{i32 786689, metadata !296, metadata !"ret_ndi", metadata !21, i32 50332393, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_ndi] [line 745]
!303 = metadata !{i32 786689, metadata !296, metadata !"ret_nid", metadata !21, i32 67109609, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_nid] [line 745]
!304 = metadata !{i32 786688, metadata !296, metadata !"opos", metadata !21, i32 747, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opos] [line 747]
!305 = metadata !{i32 786688, metadata !296, metadata !"npos", metadata !21, i32 748, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npos] [line 748]
!306 = metadata !{i32 786688, metadata !296, metadata !"ndi", metadata !21, i32 749, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndi] [line 749]
!307 = metadata !{i32 786688, metadata !296, metadata !"nid", metadata !21, i32 749, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nid] [line 749]
!308 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"estimate_model_length", metadata !"estimate_model_length", metadata !"", i32 478, metadata !309, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !311, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [estimate_model_length]
!309 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{metadata !38, metadata !24}
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !315}
!312 = metadata !{i32 786689, metadata !308, metadata !"msa", metadata !21, i32 16777694, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 478]
!313 = metadata !{i32 786688, metadata !308, metadata !"idx", metadata !21, i32 480, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 480]
!314 = metadata !{i32 786688, metadata !308, metadata !"total", metadata !21, i32 481, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 481]
!315 = metadata !{i32 786688, metadata !308, metadata !"wgtsum", metadata !21, i32 482, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wgtsum] [line 482]
!316 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"build_cij", metadata !"build_cij", metadata !"", i32 437, metadata !317, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !319, i32 439} ; [ DW_TAG_subprogram ] [line 437] [local] [def] [scope 439] [build_cij]
!317 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{metadata !38, metadata !30, metadata !38, metadata !99, metadata !38, metadata !38, metadata !35, metadata !35}
!319 = metadata !{metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327}
!320 = metadata !{i32 786689, metadata !316, metadata !"aseqs", metadata !21, i32 16777653, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 437]
!321 = metadata !{i32 786689, metadata !316, metadata !"nseq", metadata !21, i32 33554869, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 437]
!322 = metadata !{i32 786689, metadata !316, metadata !"insopt", metadata !21, i32 50332085, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [insopt] [line 437]
!323 = metadata !{i32 786689, metadata !316, metadata !"i", metadata !21, i32 67109301, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 437]
!324 = metadata !{i32 786689, metadata !316, metadata !"j", metadata !21, i32 83886517, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 437]
!325 = metadata !{i32 786689, metadata !316, metadata !"wgt", metadata !21, i32 100663734, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 438]
!326 = metadata !{i32 786689, metadata !316, metadata !"cij", metadata !21, i32 117440950, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cij] [line 438]
!327 = metadata !{i32 786688, metadata !316, metadata !"idx", metadata !21, i32 440, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 440]
!328 = metadata !{i32 100, i32 0, metadata !20, null}
!329 = metadata !{i32 101, i32 0, metadata !20, null}
!330 = metadata !{i32 107, i32 0, metadata !20, null}
!331 = metadata !{metadata !"any pointer", metadata !332}
!332 = metadata !{metadata !"omnipotent char", metadata !333}
!333 = metadata !{metadata !"Simple C/C++ TBAA"}
!334 = metadata !{i32 108, i32 0, metadata !20, null}
!335 = metadata !{i32 111, i32 0, metadata !20, null}
!336 = metadata !{metadata !"int", metadata !332}
!337 = metadata !{i32 115, i32 0, metadata !20, null}
!338 = metadata !{i32 116, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !20, i32 116, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!340 = metadata !{i32 119, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 117, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!342 = metadata !{i32 118, i32 0, metadata !341, null}
!343 = metadata !{i32 122, i32 0, metadata !341, null}
!344 = metadata !{i32 128, i32 0, metadata !20, null}
!345 = metadata !{i32 130, i32 0, metadata !20, null}
!346 = metadata !{i32 131, i32 0, metadata !20, null}
!347 = metadata !{i32 512, i32 0, metadata !257, null}
!348 = metadata !{i32 513, i32 0, metadata !257, null}
!349 = metadata !{i32 522, i32 0, metadata !257, null}
!350 = metadata !{i32 1}
!351 = metadata !{i32 523, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !257, i32 523, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!353 = metadata !{i32 524, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !352, i32 523, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!355 = metadata !{i32 528, i32 0, metadata !257, null}
!356 = metadata !{i32 529, i32 0, metadata !257, null}
!357 = metadata !{i32 536, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !257, i32 536, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!359 = metadata !{i32 537, i32 0, metadata !358, null}
!360 = metadata !{i32 538, i32 0, metadata !257, null}
!361 = metadata !{i32 541, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !257, i32 541, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!363 = metadata !{i32 542, i32 0, metadata !362, null}
!364 = metadata !{i32 543, i32 0, metadata !257, null}
!365 = metadata !{i32 548, i32 0, metadata !257, null}
!366 = metadata !{i32 786689, metadata !281, metadata !"aseq", metadata !21, i32 16777813, metadata !30, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [aseq] [line 597]
!367 = metadata !{i32 597, i32 0, metadata !281, metadata !365}
!368 = metadata !{i32 786689, metadata !281, metadata !"nseq", metadata !21, i32 33555029, metadata !38, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [nseq] [line 597]
!369 = metadata !{i32 786689, metadata !281, metadata !"alen", metadata !21, i32 50332245, metadata !38, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [alen] [line 597]
!370 = metadata !{i32 786689, metadata !281, metadata !"matassign", metadata !21, i32 67109461, metadata !99, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [matassign] [line 597]
!371 = metadata !{i32 607, i32 0, metadata !281, metadata !365}
!372 = metadata !{i32 786688, metadata !281, metadata !"tr", metadata !21, i32 600, metadata !167, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [tr] [line 600]
!373 = metadata !{i32 786688, metadata !281, metadata !"idx", metadata !21, i32 601, metadata !38, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [idx] [line 601]
!374 = metadata !{i32 609, i32 0, metadata !375, metadata !365}
!375 = metadata !{i32 786443, metadata !1, metadata !281, i32 609, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!376 = metadata !{i32 611, i32 0, metadata !377, metadata !365}
!377 = metadata !{i32 786443, metadata !1, metadata !375, i32 610, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!378 = metadata !{i32 626, i32 0, metadata !379, metadata !365}
!379 = metadata !{i32 786443, metadata !1, metadata !377, i32 626, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!380 = metadata !{i32 614, i32 0, metadata !377, metadata !365}
!381 = metadata !{i32 615, i32 0, metadata !377, metadata !365}
!382 = metadata !{i32 616, i32 0, metadata !377, metadata !365}
!383 = metadata !{i32 619, i32 0, metadata !377, metadata !365}
!384 = metadata !{i32 620, i32 0, metadata !377, metadata !365}
!385 = metadata !{i32 621, i32 0, metadata !377, metadata !365}
!386 = metadata !{i32 786688, metadata !281, metadata !"i", metadata !21, i32 602, metadata !38, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [i] [line 602]
!387 = metadata !{i32 623, i32 0, metadata !377, metadata !365}
!388 = metadata !{i32 786688, metadata !281, metadata !"k", metadata !21, i32 603, metadata !38, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [k] [line 603]
!389 = metadata !{i32 624, i32 0, metadata !377, metadata !365}
!390 = metadata !{i32 2}
!391 = metadata !{i32 786688, metadata !281, metadata !"tpos", metadata !21, i32 605, metadata !38, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [tpos] [line 605]
!392 = metadata !{i32 625, i32 0, metadata !377, metadata !365}
!393 = metadata !{i32 786688, metadata !281, metadata !"apos", metadata !21, i32 604, metadata !38, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [apos] [line 604]
!394 = metadata !{i32 628, i32 0, metadata !395, metadata !365}
!395 = metadata !{i32 786443, metadata !1, metadata !379, i32 627, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!396 = metadata !{i32 677, i32 0, metadata !395, metadata !365}
!397 = metadata !{i32 630, i32 0, metadata !395, metadata !365}
!398 = metadata !{i32 632, i32 0, metadata !399, metadata !365}
!399 = metadata !{i32 786443, metadata !1, metadata !395, i32 631, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!400 = metadata !{i32 633, i32 0, metadata !399, metadata !365}
!401 = metadata !{i32 634, i32 0, metadata !399, metadata !365}
!402 = metadata !{i32 635, i32 0, metadata !399, metadata !365}
!403 = metadata !{i32 638, i32 0, metadata !395, metadata !365}
!404 = metadata !{i32 636, i32 0, metadata !399, metadata !365}
!405 = metadata !{i32 640, i32 0, metadata !406, metadata !365}
!406 = metadata !{i32 786443, metadata !1, metadata !395, i32 639, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!407 = metadata !{i32 641, i32 0, metadata !406, metadata !365}
!408 = metadata !{i32 642, i32 0, metadata !406, metadata !365}
!409 = metadata !{i32 643, i32 0, metadata !406, metadata !365}
!410 = metadata !{i32 644, i32 0, metadata !406, metadata !365}
!411 = metadata !{i32 645, i32 0, metadata !406, metadata !365}
!412 = metadata !{i32 646, i32 0, metadata !406, metadata !365}
!413 = metadata !{i32 650, i32 0, metadata !414, metadata !365}
!414 = metadata !{i32 786443, metadata !1, metadata !395, i32 648, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!415 = metadata !{i32 651, i32 0, metadata !414, metadata !365}
!416 = metadata !{i32 653, i32 0, metadata !417, metadata !365}
!417 = metadata !{i32 786443, metadata !1, metadata !414, i32 652, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!418 = metadata !{i32 654, i32 0, metadata !417, metadata !365}
!419 = metadata !{i32 655, i32 0, metadata !417, metadata !365}
!420 = metadata !{i32 656, i32 0, metadata !417, metadata !365}
!421 = metadata !{i32 657, i32 0, metadata !417, metadata !365}
!422 = metadata !{i32 659, i32 0, metadata !395, metadata !365}
!423 = metadata !{i32 662, i32 0, metadata !424, metadata !365}
!424 = metadata !{i32 786443, metadata !1, metadata !395, i32 661, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!425 = metadata !{i32 663, i32 0, metadata !424, metadata !365}
!426 = metadata !{i32 664, i32 0, metadata !424, metadata !365}
!427 = metadata !{i32 665, i32 0, metadata !424, metadata !365}
!428 = metadata !{i32 666, i32 0, metadata !424, metadata !365}
!429 = metadata !{i32 667, i32 0, metadata !424, metadata !365}
!430 = metadata !{i32 668, i32 0, metadata !395, metadata !365}
!431 = metadata !{i32 671, i32 0, metadata !432, metadata !365}
!432 = metadata !{i32 786443, metadata !1, metadata !395, i32 670, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!433 = metadata !{i32 672, i32 0, metadata !432, metadata !365}
!434 = metadata !{i32 673, i32 0, metadata !432, metadata !365}
!435 = metadata !{i32 674, i32 0, metadata !432, metadata !365}
!436 = metadata !{i32 675, i32 0, metadata !432, metadata !365}
!437 = metadata !{i32 676, i32 0, metadata !432, metadata !365}
!438 = metadata !{i32 679, i32 0, metadata !439, metadata !365}
!439 = metadata !{i32 786443, metadata !1, metadata !395, i32 678, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!440 = metadata !{i32 680, i32 0, metadata !439, metadata !365}
!441 = metadata !{i32 681, i32 0, metadata !439, metadata !365}
!442 = metadata !{i32 682, i32 0, metadata !439, metadata !365}
!443 = metadata !{i32 683, i32 0, metadata !439, metadata !365}
!444 = metadata !{i32 684, i32 0, metadata !439, metadata !365}
!445 = metadata !{i32 686, i32 0, metadata !395, metadata !365}
!446 = metadata !{i32 691, i32 0, metadata !447, metadata !365}
!447 = metadata !{i32 786443, metadata !1, metadata !395, i32 687, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!448 = metadata !{i32 693, i32 0, metadata !447, metadata !365}
!449 = metadata !{i32 694, i32 0, metadata !447, metadata !365}
!450 = metadata !{i32 695, i32 0, metadata !447, metadata !365}
!451 = metadata !{i32 696, i32 0, metadata !447, metadata !365}
!452 = metadata !{i32 700, i32 0, metadata !447, metadata !365}
!453 = metadata !{i32 701, i32 0, metadata !447, metadata !365}
!454 = metadata !{i32 702, i32 0, metadata !447, metadata !365}
!455 = metadata !{i32 703, i32 0, metadata !447, metadata !365}
!456 = metadata !{i32 704, i32 0, metadata !447, metadata !365}
!457 = metadata !{i32 707, i32 0, metadata !377, metadata !365}
!458 = metadata !{i32 708, i32 0, metadata !377, metadata !365}
!459 = metadata !{i32 709, i32 0, metadata !377, metadata !365}
!460 = metadata !{i32 710, i32 0, metadata !377, metadata !365}
!461 = metadata !{i32* null}
!462 = metadata !{i32 786689, metadata !296, metadata !"ret_ndi", metadata !21, i32 50332393, metadata !99, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [ret_ndi] [line 745]
!463 = metadata !{i32 713, i32 0, metadata !377, metadata !365}
!464 = metadata !{i32 745, i32 0, metadata !296, metadata !463}
!465 = metadata !{i32 786689, metadata !296, metadata !"ret_nid", metadata !21, i32 67109609, metadata !99, i32 0, metadata !463} ; [ DW_TAG_arg_variable ] [ret_nid] [line 745]
!466 = metadata !{i32 786688, metadata !296, metadata !"nid", metadata !21, i32 749, metadata !38, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [nid] [line 749]
!467 = metadata !{i32 752, i32 0, metadata !296, metadata !463}
!468 = metadata !{i32 786688, metadata !296, metadata !"ndi", metadata !21, i32 749, metadata !38, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [ndi] [line 749]
!469 = metadata !{i32 786688, metadata !296, metadata !"npos", metadata !21, i32 748, metadata !38, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [npos] [line 748]
!470 = metadata !{i32 753, i32 0, metadata !296, metadata !463}
!471 = metadata !{i32 786688, metadata !296, metadata !"opos", metadata !21, i32 747, metadata !38, i32 0, metadata !463} ; [ DW_TAG_auto_variable ] [opos] [line 747]
!472 = metadata !{i32 754, i32 0, metadata !296, metadata !463}
!473 = metadata !{i32 756, i32 0, metadata !474, metadata !463}
!474 = metadata !{i32 786443, metadata !1, metadata !296, i32 754, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!475 = metadata !{i32 757, i32 0, metadata !476, metadata !463}
!476 = metadata !{i32 786443, metadata !1, metadata !474, i32 756, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!477 = metadata !{i32 758, i32 0, metadata !476, metadata !463}
!478 = metadata !{i32 759, i32 0, metadata !476, metadata !463}
!479 = metadata !{i32 760, i32 0, metadata !476, metadata !463}
!480 = metadata !{i32 761, i32 0, metadata !476, metadata !463}
!481 = metadata !{i32 764, i32 0, metadata !474, metadata !463}
!482 = metadata !{i32 765, i32 0, metadata !483, metadata !463}
!483 = metadata !{i32 786443, metadata !1, metadata !474, i32 764, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!484 = metadata !{i32 766, i32 0, metadata !483, metadata !463}
!485 = metadata !{i32 767, i32 0, metadata !483, metadata !463}
!486 = metadata !{i32 768, i32 0, metadata !483, metadata !463}
!487 = metadata !{i32 769, i32 0, metadata !483, metadata !463}
!488 = metadata !{i32 772, i32 0, metadata !474, metadata !463}
!489 = metadata !{i32 773, i32 0, metadata !490, metadata !463}
!490 = metadata !{i32 786443, metadata !1, metadata !474, i32 772, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!491 = metadata !{i32 774, i32 0, metadata !490, metadata !463}
!492 = metadata !{i32 775, i32 0, metadata !490, metadata !463}
!493 = metadata !{i32 776, i32 0, metadata !490, metadata !463}
!494 = metadata !{i32 777, i32 0, metadata !490, metadata !463}
!495 = metadata !{i32 778, i32 0, metadata !490, metadata !463}
!496 = metadata !{i32 779, i32 0, metadata !474, metadata !463}
!497 = metadata !{i32 780, i32 0, metadata !498, metadata !463}
!498 = metadata !{i32 786443, metadata !1, metadata !474, i32 779, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!499 = metadata !{i32 781, i32 0, metadata !498, metadata !463}
!500 = metadata !{i32 782, i32 0, metadata !498, metadata !463}
!501 = metadata !{i32 783, i32 0, metadata !498, metadata !463}
!502 = metadata !{i32 784, i32 0, metadata !498, metadata !463}
!503 = metadata !{i32 785, i32 0, metadata !498, metadata !463}
!504 = metadata !{i32 786, i32 0, metadata !474, metadata !463}
!505 = metadata !{i32 788, i32 0, metadata !506, metadata !463}
!506 = metadata !{i32 786443, metadata !1, metadata !474, i32 787, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!507 = metadata !{i32 789, i32 0, metadata !506, metadata !463}
!508 = metadata !{i32 790, i32 0, metadata !506, metadata !463}
!509 = metadata !{i32 791, i32 0, metadata !506, metadata !463}
!510 = metadata !{i32 792, i32 0, metadata !506, metadata !463}
!511 = metadata !{i32 793, i32 0, metadata !506, metadata !463}
!512 = metadata !{i32 794, i32 0, metadata !506, metadata !463}
!513 = metadata !{i32 795, i32 0, metadata !506, metadata !463}
!514 = metadata !{i32 796, i32 0, metadata !506, metadata !463}
!515 = metadata !{i32 797, i32 0, metadata !474, metadata !463}
!516 = metadata !{i32 800, i32 0, metadata !517, metadata !463}
!517 = metadata !{i32 786443, metadata !1, metadata !474, i32 799, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!518 = metadata !{i32 801, i32 0, metadata !517, metadata !463}
!519 = metadata !{i32 802, i32 0, metadata !517, metadata !463}
!520 = metadata !{i32 803, i32 0, metadata !517, metadata !463}
!521 = metadata !{i32 804, i32 0, metadata !517, metadata !463}
!522 = metadata !{i32 805, i32 0, metadata !517, metadata !463}
!523 = metadata !{i32 806, i32 0, metadata !517, metadata !463}
!524 = metadata !{i32 807, i32 0, metadata !517, metadata !463}
!525 = metadata !{i32 808, i32 0, metadata !517, metadata !463}
!526 = metadata !{i32 809, i32 0, metadata !517, metadata !463}
!527 = metadata !{i32 810, i32 0, metadata !517, metadata !463}
!528 = metadata !{i32 811, i32 0, metadata !517, metadata !463}
!529 = metadata !{i32 813, i32 0, metadata !530, metadata !463}
!530 = metadata !{i32 786443, metadata !1, metadata !474, i32 812, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!531 = metadata !{i32 814, i32 0, metadata !530, metadata !463}
!532 = metadata !{i32 815, i32 0, metadata !530, metadata !463}
!533 = metadata !{i32 816, i32 0, metadata !530, metadata !463}
!534 = metadata !{i32 817, i32 0, metadata !530, metadata !463}
!535 = metadata !{i32 820, i32 0, metadata !296, metadata !463}
!536 = metadata !{i32 717, i32 0, metadata !281, metadata !365}
!537 = metadata !{i32 786689, metadata !281, metadata !"ret_tr", metadata !21, i32 83886678, metadata !166, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [ret_tr] [line 598]
!538 = metadata !{i32 598, i32 0, metadata !281, metadata !365}
!539 = metadata !{i32 554, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !541, i32 552, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!541 = metadata !{i32 786443, metadata !1, metadata !257, i32 552, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!542 = metadata !{i32 570, i32 0, metadata !257, null}
!543 = metadata !{i32 571, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !545, i32 571, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!545 = metadata !{i32 786443, metadata !1, metadata !257, i32 571, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!546 = metadata !{i32 571, i32 0, metadata !545, null}
!547 = metadata !{i32 550, i32 0, metadata !257, null}
!548 = metadata !{i32 551, i32 0, metadata !257, null}
!549 = metadata !{i32 552, i32 0, metadata !541, null}
!550 = metadata !{metadata !"float", metadata !332}
!551 = metadata !{i32 786689, metadata !271, metadata !"hmm", metadata !21, i32 16778055, metadata !104, i32 0, metadata !552} ; [ DW_TAG_arg_variable ] [hmm] [line 839]
!552 = metadata !{i32 557, i32 0, metadata !257, null}
!553 = metadata !{i32 839, i32 0, metadata !271, metadata !552}
!554 = metadata !{i32 786689, metadata !271, metadata !"matassign", metadata !21, i32 33555271, metadata !99, i32 0, metadata !552} ; [ DW_TAG_arg_variable ] [matassign] [line 839]
!555 = metadata !{i32 786689, metadata !271, metadata !"msa", metadata !21, i32 50332487, metadata !24, i32 0, metadata !552} ; [ DW_TAG_arg_variable ] [msa] [line 839]
!556 = metadata !{i32 848, i32 0, metadata !271, metadata !552}
!557 = metadata !{i32 849, i32 0, metadata !558, metadata !552}
!558 = metadata !{i32 786443, metadata !1, metadata !271, i32 848, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!559 = metadata !{i32 786688, metadata !271, metadata !"k", metadata !21, i32 842, metadata !38, i32 0, metadata !552} ; [ DW_TAG_auto_variable ] [k] [line 842]
!560 = metadata !{i32 850, i32 0, metadata !561, metadata !552}
!561 = metadata !{i32 786443, metadata !1, metadata !558, i32 850, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!562 = metadata !{i32 786688, metadata !271, metadata !"apos", metadata !21, i32 841, metadata !38, i32 0, metadata !552} ; [ DW_TAG_auto_variable ] [apos] [line 841]
!563 = metadata !{i32 851, i32 0, metadata !561, metadata !552}
!564 = metadata !{i32 852, i32 0, metadata !561, metadata !552}
!565 = metadata !{i32 853, i32 0, metadata !558, metadata !552}
!566 = metadata !{i32 854, i32 0, metadata !558, metadata !552}
!567 = metadata !{i32 855, i32 0, metadata !558, metadata !552}
!568 = metadata !{i32 860, i32 0, metadata !271, metadata !552}
!569 = metadata !{i32 861, i32 0, metadata !570, metadata !552}
!570 = metadata !{i32 786443, metadata !1, metadata !271, i32 860, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!571 = metadata !{i32 862, i32 0, metadata !572, metadata !552}
!572 = metadata !{i32 786443, metadata !1, metadata !570, i32 862, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!573 = metadata !{i32 863, i32 0, metadata !572, metadata !552}
!574 = metadata !{i32 864, i32 0, metadata !572, metadata !552}
!575 = metadata !{i32 865, i32 0, metadata !570, metadata !552}
!576 = metadata !{i32 866, i32 0, metadata !570, metadata !552}
!577 = metadata !{i32 867, i32 0, metadata !570, metadata !552}
!578 = metadata !{i32 872, i32 0, metadata !271, metadata !552}
!579 = metadata !{i32 873, i32 0, metadata !580, metadata !552}
!580 = metadata !{i32 786443, metadata !1, metadata !271, i32 872, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!581 = metadata !{i32 874, i32 0, metadata !582, metadata !552}
!582 = metadata !{i32 786443, metadata !1, metadata !580, i32 874, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!583 = metadata !{i32 875, i32 0, metadata !582, metadata !552}
!584 = metadata !{i32 876, i32 0, metadata !582, metadata !552}
!585 = metadata !{i32 877, i32 0, metadata !580, metadata !552}
!586 = metadata !{i32 878, i32 0, metadata !580, metadata !552}
!587 = metadata !{i32 879, i32 0, metadata !580, metadata !552}
!588 = metadata !{i32 883, i32 0, metadata !589, metadata !552}
!589 = metadata !{i32 786443, metadata !1, metadata !271, i32 883, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!590 = metadata !{i32 885, i32 0, metadata !589, metadata !552}
!591 = metadata !{i32 884, i32 0, metadata !589, metadata !552}
!592 = metadata !{i32 886, i32 0, metadata !271, metadata !552}
!593 = metadata !{i32 894, i32 0, metadata !271, metadata !552}
!594 = metadata !{i32 786688, metadata !271, metadata !"pri", metadata !21, i32 843, metadata !31, i32 0, metadata !552} ; [ DW_TAG_auto_variable ] [pri] [line 843]
!595 = metadata !{i32 896, i32 0, metadata !596, metadata !552}
!596 = metadata !{i32 786443, metadata !1, metadata !271, i32 895, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!597 = metadata !{i32 897, i32 0, metadata !598, metadata !552}
!598 = metadata !{i32 786443, metadata !1, metadata !596, i32 897, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!599 = metadata !{i32 898, i32 0, metadata !598, metadata !552}
!600 = metadata !{i32 900, i32 0, metadata !601, metadata !552}
!601 = metadata !{i32 786443, metadata !1, metadata !598, i32 899, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!602 = metadata !{metadata !"short", metadata !332}
!603 = metadata !{i32 901, i32 0, metadata !601, metadata !552}
!604 = metadata !{i32 902, i32 0, metadata !601, metadata !552}
!605 = metadata !{i32 903, i32 0, metadata !601, metadata !552}
!606 = metadata !{i32 904, i32 0, metadata !601, metadata !552}
!607 = metadata !{i32 905, i32 0, metadata !601, metadata !552}
!608 = metadata !{i32 909, i32 0, metadata !271, metadata !552}
!609 = metadata !{i32 911, i32 0, metadata !610, metadata !552}
!610 = metadata !{i32 786443, metadata !1, metadata !271, i32 910, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!611 = metadata !{i32 912, i32 0, metadata !612, metadata !552}
!612 = metadata !{i32 786443, metadata !1, metadata !610, i32 912, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!613 = metadata !{i32 913, i32 0, metadata !612, metadata !552}
!614 = metadata !{i32 915, i32 0, metadata !615, metadata !552}
!615 = metadata !{i32 786443, metadata !1, metadata !612, i32 914, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!616 = metadata !{i32 916, i32 0, metadata !615, metadata !552}
!617 = metadata !{i32 917, i32 0, metadata !615, metadata !552}
!618 = metadata !{i32 918, i32 0, metadata !615, metadata !552}
!619 = metadata !{i32 919, i32 0, metadata !615, metadata !552}
!620 = metadata !{i32 920, i32 0, metadata !615, metadata !552}
!621 = metadata !{i32 924, i32 0, metadata !271, metadata !552}
!622 = metadata !{i32 926, i32 0, metadata !623, metadata !552}
!623 = metadata !{i32 786443, metadata !1, metadata !271, i32 925, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!624 = metadata !{i32 927, i32 0, metadata !625, metadata !552}
!625 = metadata !{i32 786443, metadata !1, metadata !623, i32 927, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!626 = metadata !{i32 928, i32 0, metadata !625, metadata !552}
!627 = metadata !{i32 930, i32 0, metadata !628, metadata !552}
!628 = metadata !{i32 786443, metadata !1, metadata !625, i32 929, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!629 = metadata !{i32 931, i32 0, metadata !628, metadata !552}
!630 = metadata !{i32 932, i32 0, metadata !628, metadata !552}
!631 = metadata !{i32 933, i32 0, metadata !628, metadata !552}
!632 = metadata !{i32 934, i32 0, metadata !628, metadata !552}
!633 = metadata !{i32 935, i32 0, metadata !628, metadata !552}
!634 = metadata !{i32 563, i32 0, metadata !257, null}
!635 = metadata !{i32 564, i32 0, metadata !257, null}
!636 = metadata !{i32 565, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !257, i32 565, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!638 = metadata !{i32 566, i32 0, metadata !637, null}
!639 = metadata !{i32 567, i32 0, metadata !257, null}
!640 = metadata !{i32 572, i32 0, metadata !257, null}
!641 = metadata !{i32 573, i32 0, metadata !257, null}
!642 = metadata !{i32 162, i32 0, metadata !182, null}
!643 = metadata !{i32 163, i32 0, metadata !182, null}
!644 = metadata !{i32 172, i32 0, metadata !182, null}
!645 = metadata !{i32 176, i32 0, metadata !182, null}
!646 = metadata !{i32 177, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !182, i32 177, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!648 = metadata !{i32 181, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !650, i32 181, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!650 = metadata !{i32 786443, metadata !1, metadata !647, i32 177, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!651 = metadata !{i32 182, i32 0, metadata !649, null}
!652 = metadata !{i32 178, i32 0, metadata !650, null}
!653 = metadata !{i32 180, i32 0, metadata !650, null}
!654 = metadata !{i32 183, i32 0, metadata !649, null}
!655 = metadata !{i32 185, i32 0, metadata !650, null}
!656 = metadata !{i32 186, i32 0, metadata !650, null}
!657 = metadata !{i32 195, i32 0, metadata !182, null}
!658 = metadata !{i32 197, i32 0, metadata !182, null}
!659 = metadata !{i32 198, i32 0, metadata !182, null}
!660 = metadata !{i32 227, i32 0, metadata !195, null}
!661 = metadata !{i32 228, i32 0, metadata !195, null}
!662 = metadata !{i32 229, i32 0, metadata !195, null}
!663 = metadata !{i32 230, i32 0, metadata !195, null}
!664 = metadata !{i32 236, i32 0, metadata !195, null}
!665 = metadata !{i32 237, i32 0, metadata !195, null}
!666 = metadata !{i32 238, i32 0, metadata !195, null}
!667 = metadata !{i32 239, i32 0, metadata !195, null}
!668 = metadata !{i32 255, i32 0, metadata !195, null}
!669 = metadata !{i32 256, i32 0, metadata !195, null}
!670 = metadata !{i32 257, i32 0, metadata !195, null}
!671 = metadata !{i32 258, i32 0, metadata !195, null}
!672 = metadata !{i32 259, i32 0, metadata !195, null}
!673 = metadata !{i32 260, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !195, i32 260, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!675 = metadata !{i32 267, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !195, i32 267, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!677 = metadata !{i32 269, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !676, i32 268, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!679 = metadata !{i32 270, i32 0, metadata !678, null}
!680 = metadata !{i32 268, i32 0, metadata !678, null}
!681 = metadata !{i32 261, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !674, i32 260, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!683 = metadata !{i32 262, i32 0, metadata !682, null}
!684 = metadata !{i32 271, i32 0, metadata !195, null}
!685 = metadata !{i32 273, i32 0, metadata !195, null}
!686 = metadata !{i32 274, i32 0, metadata !195, null}
!687 = metadata !{i32 275, i32 0, metadata !195, null}
!688 = metadata !{i32 276, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !195, i32 276, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!690 = metadata !{i32 277, i32 0, metadata !689, null}
!691 = metadata !{i32 786689, metadata !308, metadata !"msa", metadata !21, i32 16777694, metadata !24, i32 0, metadata !692} ; [ DW_TAG_arg_variable ] [msa] [line 478]
!692 = metadata !{i32 281, i32 0, metadata !195, null}
!693 = metadata !{i32 478, i32 0, metadata !308, metadata !692}
!694 = metadata !{float 0.000000e+00}
!695 = metadata !{i32 786688, metadata !308, metadata !"total", metadata !21, i32 481, metadata !36, i32 0, metadata !692} ; [ DW_TAG_auto_variable ] [total] [line 481]
!696 = metadata !{i32 481, i32 0, metadata !308, metadata !692}
!697 = metadata !{i32 786688, metadata !308, metadata !"wgtsum", metadata !21, i32 482, metadata !36, i32 0, metadata !692} ; [ DW_TAG_auto_variable ] [wgtsum] [line 482]
!698 = metadata !{i32 482, i32 0, metadata !308, metadata !692}
!699 = metadata !{i32 786688, metadata !308, metadata !"idx", metadata !21, i32 480, metadata !38, i32 0, metadata !692} ; [ DW_TAG_auto_variable ] [idx] [line 480]
!700 = metadata !{i32 484, i32 0, metadata !701, metadata !692}
!701 = metadata !{i32 786443, metadata !1, metadata !308, i32 484, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!702 = metadata !{i32 486, i32 0, metadata !703, metadata !692}
!703 = metadata !{i32 786443, metadata !1, metadata !701, i32 485, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!704 = metadata !{i32 487, i32 0, metadata !703, metadata !692}
!705 = metadata !{i32 490, i32 0, metadata !308, metadata !692}
!706 = metadata !{i32 282, i32 0, metadata !195, null}
!707 = metadata !{float 5.000000e-01}
!708 = metadata !{i32 283, i32 0, metadata !195, null}
!709 = metadata !{i32 284, i32 0, metadata !195, null}
!710 = metadata !{i32 285, i32 0, metadata !195, null}
!711 = metadata !{i32 286, i32 0, metadata !195, null}
!712 = metadata !{i32 291, i32 0, metadata !195, null}
!713 = metadata !{i32 292, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !195, i32 292, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!715 = metadata !{i32 294, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 294, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!717 = metadata !{i32 786443, metadata !1, metadata !714, i32 292, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!718 = metadata !{i32 295, i32 0, metadata !716, null}
!719 = metadata !{i32 296, i32 0, metadata !717, null}
!720 = metadata !{i32 302, i32 0, metadata !195, null}
!721 = metadata !{i32 303, i32 0, metadata !195, null}
!722 = metadata !{i32 307, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !195, i32 307, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!724 = metadata !{i32 308, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !723, i32 308, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!726 = metadata !{i32 313, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !195, i32 313, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!728 = metadata !{i32 315, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !727, i32 313, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!730 = metadata !{i32 316, i32 0, metadata !729, null}
!731 = metadata !{i32 321, i32 0, metadata !729, null}
!732 = metadata !{i32 360, i32 0, metadata !729, null}
!733 = metadata !{i32 327, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !735, i32 325, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!735 = metadata !{i32 786443, metadata !1, metadata !729, i32 325, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!736 = metadata !{i32 449, i32 0, metadata !737, metadata !733}
!737 = metadata !{i32 786443, metadata !1, metadata !738, i32 446, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!738 = metadata !{i32 786443, metadata !1, metadata !739, i32 445, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!739 = metadata !{i32 786443, metadata !1, metadata !316, i32 445, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!740 = metadata !{i32 450, i32 0, metadata !737, metadata !733}
!741 = metadata !{i32 451, i32 0, metadata !737, metadata !733}
!742 = metadata !{i32 455, i32 0, metadata !743, metadata !733}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 453, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!744 = metadata !{i32 786443, metadata !1, metadata !738, i32 452, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!745 = metadata !{i32 460, i32 0, metadata !746, metadata !733}
!746 = metadata !{i32 786443, metadata !1, metadata !744, i32 457, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!747 = metadata !{i32 459, i32 0, metadata !746, metadata !733}
!748 = metadata !{i32 330, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !734, i32 329, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!750 = metadata !{i32 331, i32 0, metadata !749, null}
!751 = metadata !{i32 334, i32 0, metadata !749, null}
!752 = metadata !{i32 335, i32 0, metadata !749, null}
!753 = metadata !{i32 336, i32 0, metadata !749, null}
!754 = metadata !{i32 337, i32 0, metadata !749, null}
!755 = metadata !{i32 338, i32 0, metadata !749, null}
!756 = metadata !{i32 339, i32 0, metadata !749, null}
!757 = metadata !{i32 309, i32 0, metadata !725, null}
!758 = metadata !{i32 369, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !195, i32 369, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!760 = metadata !{i32 371, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !762, i32 371, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!762 = metadata !{i32 786443, metadata !1, metadata !759, i32 369, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!763 = metadata !{i32 372, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !761, i32 371, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!765 = metadata !{i32 317, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !729, i32 317, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!767 = metadata !{i32 318, i32 0, metadata !766, null}
!768 = metadata !{i32 322, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !729, i32 322, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!770 = metadata !{i32 324, i32 0, metadata !729, null}
!771 = metadata !{i32 325, i32 0, metadata !735, null}
!772 = metadata !{i32 442, i32 0, metadata !316, metadata !733}
!773 = metadata !{i32 447, i32 0, metadata !737, metadata !733}
!774 = metadata !{i32 350, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !749, i32 348, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!776 = metadata !{i32 786689, metadata !316, metadata !"aseqs", metadata !21, i32 16777653, metadata !30, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [aseqs] [line 437]
!777 = metadata !{i32 437, i32 0, metadata !316, metadata !733}
!778 = metadata !{i32 786689, metadata !316, metadata !"nseq", metadata !21, i32 33554869, metadata !38, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [nseq] [line 437]
!779 = metadata !{i32 786689, metadata !316, metadata !"insopt", metadata !21, i32 50332085, metadata !99, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [insopt] [line 437]
!780 = metadata !{i32 786689, metadata !316, metadata !"i", metadata !21, i32 67109301, metadata !38, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [i] [line 437]
!781 = metadata !{i32 undef}
!782 = metadata !{i32 786689, metadata !316, metadata !"j", metadata !21, i32 83886517, metadata !38, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [j] [line 437]
!783 = metadata !{i32 786689, metadata !316, metadata !"wgt", metadata !21, i32 100663734, metadata !35, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [wgt] [line 438]
!784 = metadata !{i32 438, i32 0, metadata !316, metadata !733}
!785 = metadata !{i32 786689, metadata !316, metadata !"cij", metadata !21, i32 117440950, metadata !35, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [cij] [line 438]
!786 = metadata !{i32 444, i32 0, metadata !316, metadata !733}
!787 = metadata !{i32 786688, metadata !316, metadata !"idx", metadata !21, i32 440, metadata !38, i32 0, metadata !733} ; [ DW_TAG_auto_variable ] [idx] [line 440]
!788 = metadata !{i32 445, i32 0, metadata !739, metadata !733}
!789 = metadata !{i32 443, i32 0, metadata !316, metadata !733}
!790 = metadata !{i32 446, i32 0, metadata !738, metadata !733}
!791 = metadata !{i32 448, i32 0, metadata !737, metadata !733}
!792 = metadata !{i32 452, i32 0, metadata !737, metadata !733}
!793 = metadata !{i32 453, i32 0, metadata !744, metadata !733}
!794 = metadata !{i32 454, i32 0, metadata !743, metadata !733}
!795 = metadata !{i32 456, i32 0, metadata !743, metadata !733}
!796 = metadata !{i32 458, i32 0, metadata !746, metadata !733}
!797 = metadata !{i32 -1}
!798 = metadata !{i32 332, i32 0, metadata !749, null}
!799 = metadata !{i32 333, i32 0, metadata !749, null}
!800 = metadata !{i32 341, i32 0, metadata !749, null}
!801 = metadata !{i32 348, i32 0, metadata !749, null}
!802 = metadata !{i32 349, i32 0, metadata !775, null}
!803 = metadata !{i32 351, i32 0, metadata !775, null}
!804 = metadata !{i32 354, i32 0, metadata !734, null}
!805 = metadata !{i32 355, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !734, i32 355, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!807 = metadata !{i32 356, i32 0, metadata !806, null}
!808 = metadata !{i32 370, i32 0, metadata !762, null}
!809 = metadata !{i32 373, i32 0, metadata !764, null}
!810 = metadata !{i32 377, i32 0, metadata !762, null}
!811 = metadata !{i32 378, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !762, i32 377, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!813 = metadata !{i32 379, i32 0, metadata !812, null}
!814 = metadata !{i32 385, i32 0, metadata !195, null}
!815 = metadata !{i32 386, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !195, i32 386, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!817 = metadata !{i32 387, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !195, i32 387, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!819 = metadata !{i32 388, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !818, i32 387, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!821 = metadata !{i32 389, i32 0, metadata !820, null}
!822 = metadata !{i32 395, i32 0, metadata !195, null}
!823 = metadata !{i32 399, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !195, i32 399, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/modelmakers.c]
!825 = metadata !{i32 400, i32 0, metadata !195, null}
!826 = metadata !{i32 401, i32 0, metadata !195, null}
!827 = metadata !{i32 402, i32 0, metadata !195, null}
!828 = metadata !{i32 403, i32 0, metadata !195, null}
!829 = metadata !{i32 404, i32 0, metadata !195, null}
!830 = metadata !{i32 405, i32 0, metadata !195, null}
