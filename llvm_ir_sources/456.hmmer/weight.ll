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
  call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !37), !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !38), !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !39), !dbg !285
  call void @llvm.dbg.value(metadata !{float* %wgt}, i64 0, metadata !40), !dbg !285
  call void @llvm.dbg.declare(metadata !{float*** %dmx}, metadata !41), !dbg !286
  call void @llvm.dbg.declare(metadata !{%struct.phylo_s** %tree}, metadata !43), !dbg !287
  %cmp = icmp eq i32 %nseq, 1, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %wgt, align 4, !dbg !289, !tbaa !291
  br label %return, !dbg !289

if.end:                                           ; preds = %entry
  call void @MakeDiffMx(i8** %aseq, i32 %nseq, float*** %dmx) #6, !dbg !294
  call void @llvm.dbg.value(metadata !{float*** %dmx}, i64 0, metadata !41), !dbg !295
  %0 = load float*** %dmx, align 8, !dbg !295, !tbaa !296
  %call = call i32 @Cluster(float** %0, i32 %nseq, i32 2, %struct.phylo_s** %tree) #6, !dbg !295
  %tobool = icmp eq i32 %call, 0, !dbg !295
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !295

if.then1:                                         ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #6, !dbg !295
  br label %if.end2, !dbg !295

if.end2:                                          ; preds = %if.end, %if.then1
  %mul = shl i32 %nseq, 1, !dbg !297
  %sub = add nsw i32 %mul, -1, !dbg !297
  %conv = sext i32 %sub to i64, !dbg !297
  %mul3 = shl nsw i64 %conv, 2, !dbg !297
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 67, i64 %mul3) #6, !dbg !297
  %1 = bitcast i8* %call4 to float*, !dbg !297
  call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !55), !dbg !297
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 68, i64 %mul3) #6, !dbg !298
  %2 = bitcast i8* %call9 to float*, !dbg !298
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !56), !dbg !298
  %call14 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 69, i64 %mul3) #6, !dbg !299
  %3 = bitcast i8* %call14 to float*, !dbg !299
  call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !57), !dbg !299
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !58), !dbg !300
  %cmp1567 = icmp sgt i32 %nseq, 0, !dbg !300
  br i1 %cmp1567, label %for.body, label %for.end33.critedge, !dbg !300

for.body:                                         ; preds = %if.end2, %for.body
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body ], [ 0, %if.end2 ]
  %arrayidx17 = getelementptr inbounds float* %2, i64 %indvars.iv70, !dbg !302
  store float 0.000000e+00, float* %arrayidx17, align 4, !dbg !302, !tbaa !291
  %arrayidx19 = getelementptr inbounds float* %1, i64 %indvars.iv70, !dbg !302
  store float 0.000000e+00, float* %arrayidx19, align 4, !dbg !302, !tbaa !291
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !300
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32, !dbg !300
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %nseq, !dbg !300
  br i1 %exitcond73, label %for.end, label %for.body, !dbg !300

for.end:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{%struct.phylo_s** %tree}, i64 0, metadata !43), !dbg !303
  %4 = load %struct.phylo_s** %tree, align 8, !dbg !303, !tbaa !296
  call fastcc void @upweight(%struct.phylo_s* %4, i32 %nseq, float* %1, float* %2, i32 %nseq) #7, !dbg !303
  %conv20 = sitofp i32 %nseq to float, !dbg !304
  %idxprom21 = sext i32 %nseq to i64, !dbg !304
  %arrayidx22 = getelementptr inbounds float* %3, i64 %idxprom21, !dbg !304
  store float %conv20, float* %arrayidx22, align 4, !dbg !304, !tbaa !291
  call void @llvm.dbg.value(metadata !{%struct.phylo_s** %tree}, i64 0, metadata !43), !dbg !305
  %5 = load %struct.phylo_s** %tree, align 8, !dbg !305, !tbaa !296
  call fastcc void @downweight(%struct.phylo_s* %5, i32 %nseq, float* %1, float* %2, float* %3, i32 %nseq) #7, !dbg !305
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !58), !dbg !306
  br i1 %cmp1567, label %for.body26, label %for.end33, !dbg !306

for.body26:                                       ; preds = %for.end, %for.body26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body26 ], [ 0, %for.end ]
  %arrayidx28 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !308
  %6 = load float* %arrayidx28, align 4, !dbg !308, !tbaa !291
  %arrayidx30 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !308
  store float %6, float* %arrayidx30, align 4, !dbg !308, !tbaa !291
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !306
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !306
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !306
  br i1 %exitcond, label %for.end33, label %for.body26, !dbg !306

for.end33.critedge:                               ; preds = %if.end2
  call void @llvm.dbg.value(metadata !{%struct.phylo_s** %tree}, i64 0, metadata !43), !dbg !303
  %7 = load %struct.phylo_s** %tree, align 8, !dbg !303, !tbaa !296
  call fastcc void @upweight(%struct.phylo_s* %7, i32 %nseq, float* %1, float* %2, i32 %nseq) #7, !dbg !303
  %conv20.c = sitofp i32 %nseq to float, !dbg !304
  %idxprom21.c = sext i32 %nseq to i64, !dbg !304
  %arrayidx22.c = getelementptr inbounds float* %3, i64 %idxprom21.c, !dbg !304
  store float %conv20.c, float* %arrayidx22.c, align 4, !dbg !304, !tbaa !291
  call void @llvm.dbg.value(metadata !{%struct.phylo_s** %tree}, i64 0, metadata !43), !dbg !305
  %8 = load %struct.phylo_s** %tree, align 8, !dbg !305, !tbaa !296
  call fastcc void @downweight(%struct.phylo_s* %8, i32 %nseq, float* %1, float* %2, float* %3, i32 %nseq) #7, !dbg !305
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !58), !dbg !306
  br label %for.end33

for.end33:                                        ; preds = %for.end33.critedge, %for.body26, %for.end
  call void @llvm.dbg.value(metadata !{float*** %dmx}, i64 0, metadata !41), !dbg !309
  %9 = load float*** %dmx, align 8, !dbg !309, !tbaa !296
  call void @FMX2Free(float** %9) #6, !dbg !309
  call void @llvm.dbg.value(metadata !{%struct.phylo_s** %tree}, i64 0, metadata !43), !dbg !310
  %10 = load %struct.phylo_s** %tree, align 8, !dbg !310, !tbaa !296
  call void @FreePhylo(%struct.phylo_s* %10, i32 %nseq) #6, !dbg !310
  call void @free(i8* %call4) #6, !dbg !311
  call void @free(i8* %call9) #6, !dbg !311
  call void @free(i8* %call14) #6, !dbg !311
  br label %return, !dbg !311

return:                                           ; preds = %for.end33, %if.then
  ret void, !dbg !311
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @MakeDiffMx(i8**, i32, float***) #2

; Function Attrs: optsize
declare i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %node) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %tree}, i64 0, metadata !278), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !279), !dbg !312
  tail call void @llvm.dbg.value(metadata !{float* %lwt}, i64 0, metadata !280), !dbg !312
  tail call void @llvm.dbg.value(metadata !{float* %rwt}, i64 0, metadata !281), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %node}, i64 0, metadata !282), !dbg !312
  %sub = sub nsw i32 %node, %nseq, !dbg !313
  %idxprom = sext i32 %sub to i64, !dbg !313
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 1, !dbg !313
  %0 = load i32* %left, align 4, !dbg !313, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !283), !dbg !313
  %cmp = icmp slt i32 %0, %nseq, !dbg !315
  br i1 %cmp, label %if.end, label %if.then, !dbg !315

if.then:                                          ; preds = %entry
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %0) #7, !dbg !315
  br label %if.end, !dbg !315

if.end:                                           ; preds = %entry, %if.then
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 2, !dbg !316
  %1 = load i32* %right, align 4, !dbg !316, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !284), !dbg !316
  %cmp4 = icmp slt i32 %1, %nseq, !dbg !317
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !317

if.then5:                                         ; preds = %if.end
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %1) #7, !dbg !317
  br label %if.end6, !dbg !317

if.end6:                                          ; preds = %if.end, %if.then5
  %idxprom7 = sext i32 %0 to i64, !dbg !318
  %arrayidx8 = getelementptr inbounds float* %lwt, i64 %idxprom7, !dbg !318
  %2 = load float* %arrayidx8, align 4, !dbg !318, !tbaa !291
  %arrayidx10 = getelementptr inbounds float* %rwt, i64 %idxprom7, !dbg !318
  %3 = load float* %arrayidx10, align 4, !dbg !318, !tbaa !291
  %add = fadd float %2, %3, !dbg !318
  %lblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 4, !dbg !318
  %4 = load float* %lblen, align 4, !dbg !318, !tbaa !291
  %add14 = fadd float %add, %4, !dbg !318
  %idxprom15 = sext i32 %node to i64, !dbg !318
  %arrayidx16 = getelementptr inbounds float* %lwt, i64 %idxprom15, !dbg !318
  store float %add14, float* %arrayidx16, align 4, !dbg !318, !tbaa !291
  %idxprom17 = sext i32 %1 to i64, !dbg !319
  %arrayidx18 = getelementptr inbounds float* %lwt, i64 %idxprom17, !dbg !319
  %5 = load float* %arrayidx18, align 4, !dbg !319, !tbaa !291
  %arrayidx20 = getelementptr inbounds float* %rwt, i64 %idxprom17, !dbg !319
  %6 = load float* %arrayidx20, align 4, !dbg !319, !tbaa !291
  %add21 = fadd float %5, %6, !dbg !319
  %rblen = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 5, !dbg !319
  %7 = load float* %rblen, align 4, !dbg !319, !tbaa !291
  %add25 = fadd float %add21, %7, !dbg !319
  %arrayidx27 = getelementptr inbounds float* %rwt, i64 %idxprom15, !dbg !319
  store float %add25, float* %arrayidx27, align 4, !dbg !319, !tbaa !291
  ret void, !dbg !320
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %node) #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end69, %entry
  %node.tr = phi i32 [ %node, %entry ], [ %1, %if.end69 ]
  tail call void @llvm.dbg.value(metadata !{%struct.phylo_s* %tree}, i64 0, metadata !264), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !265), !dbg !321
  tail call void @llvm.dbg.value(metadata !{float* %lwt}, i64 0, metadata !266), !dbg !321
  tail call void @llvm.dbg.value(metadata !{float* %rwt}, i64 0, metadata !267), !dbg !321
  tail call void @llvm.dbg.value(metadata !{float* %fwt}, i64 0, metadata !268), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %node.tr}, i64 0, metadata !269), !dbg !321
  %sub = sub nsw i32 %node.tr, %nseq, !dbg !322
  %idxprom = sext i32 %sub to i64, !dbg !322
  %left = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 1, !dbg !322
  %0 = load i32* %left, align 4, !dbg !322, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !270), !dbg !322
  %right = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom, i32 2, !dbg !323
  %1 = load i32* %right, align 4, !dbg !323, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !271), !dbg !323
  %idxprom4 = sext i32 %node.tr to i64, !dbg !324
  %arrayidx5 = getelementptr inbounds float* %lwt, i64 %idxprom4, !dbg !324
  %2 = load float* %arrayidx5, align 4, !dbg !324, !tbaa !291
  %arrayidx7 = getelementptr inbounds float* %rwt, i64 %idxprom4, !dbg !324
  %3 = load float* %arrayidx7, align 4, !dbg !324, !tbaa !291
  %add = fadd float %2, %3, !dbg !324
  %cmp = fcmp ogt float %add, 0.000000e+00, !dbg !324
  br i1 %cmp, label %if.then, label %if.else, !dbg !324

if.then:                                          ; preds = %tailrecurse
  %arrayidx10 = getelementptr inbounds float* %fwt, i64 %idxprom4, !dbg !325
  %4 = load float* %arrayidx10, align 4, !dbg !325, !tbaa !291
  %div = fdiv float %2, %add, !dbg !325
  %mul = fmul float %4, %div, !dbg !325
  %idxprom18 = sext i32 %0 to i64, !dbg !325
  %arrayidx19 = getelementptr inbounds float* %fwt, i64 %idxprom18, !dbg !325
  store float %mul, float* %arrayidx19, align 4, !dbg !325, !tbaa !291
  %5 = load float* %arrayidx10, align 4, !dbg !327, !tbaa !291
  %6 = load float* %arrayidx7, align 4, !dbg !327, !tbaa !291
  %7 = load float* %arrayidx5, align 4, !dbg !327, !tbaa !291
  %add28 = fadd float %6, %7, !dbg !327
  %div29 = fdiv float %6, %add28, !dbg !327
  %mul30 = fmul float %5, %div29, !dbg !327
  %idxprom31 = sext i32 %1 to i64, !dbg !327
  %arrayidx32 = getelementptr inbounds float* %fwt, i64 %idxprom31, !dbg !327
  store float %mul30, float* %arrayidx32, align 4, !dbg !327, !tbaa !291
  br label %if.end, !dbg !328

if.else:                                          ; preds = %tailrecurse
  %cmp33 = icmp slt i32 %0, %nseq, !dbg !329
  br i1 %cmp33, label %cond.end, label %cond.true, !dbg !329

cond.true:                                        ; preds = %if.else
  %sub35 = sub nsw i32 %0, %nseq, !dbg !329
  %idxprom36 = sext i32 %sub35 to i64, !dbg !329
  %incnum = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom36, i32 7, !dbg !329
  %8 = load i32* %incnum, align 4, !dbg !329, !tbaa !314
  %conv38 = sitofp i32 %8 to double, !dbg !329
  %phitmp = fptrunc double %conv38 to float, !dbg !329
  br label %cond.end, !dbg !329

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi float [ %phitmp, %cond.true ], [ 1.000000e+00, %if.else ]
  tail call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !272), !dbg !329
  %cmp40 = icmp slt i32 %1, %nseq, !dbg !331
  br i1 %cmp40, label %cond.end49, label %cond.true42, !dbg !331

cond.true42:                                      ; preds = %cond.end
  %sub43 = sub nsw i32 %1, %nseq, !dbg !331
  %idxprom44 = sext i32 %sub43 to i64, !dbg !331
  %incnum46 = getelementptr inbounds %struct.phylo_s* %tree, i64 %idxprom44, i32 7, !dbg !331
  %9 = load i32* %incnum46, align 4, !dbg !331, !tbaa !314
  %conv47 = sitofp i32 %9 to double, !dbg !331
  %phitmp134 = fptrunc double %conv47 to float, !dbg !331
  br label %cond.end49, !dbg !331

cond.end49:                                       ; preds = %cond.end, %cond.true42
  %cond50 = phi float [ %phitmp134, %cond.true42 ], [ 1.000000e+00, %cond.end ]
  tail call void @llvm.dbg.value(metadata !{float %cond50}, i64 0, metadata !273), !dbg !331
  %arrayidx53 = getelementptr inbounds float* %fwt, i64 %idxprom4, !dbg !332
  %10 = load float* %arrayidx53, align 4, !dbg !332, !tbaa !291
  %mul54 = fmul float %cond, %10, !dbg !332
  %add55 = fadd float %cond, %cond50, !dbg !332
  %div56 = fdiv float %mul54, %add55, !dbg !332
  %idxprom57 = sext i32 %0 to i64, !dbg !332
  %arrayidx58 = getelementptr inbounds float* %fwt, i64 %idxprom57, !dbg !332
  store float %div56, float* %arrayidx58, align 4, !dbg !332, !tbaa !291
  %11 = load float* %arrayidx53, align 4, !dbg !333, !tbaa !291
  %mul61 = fmul float %cond50, %11, !dbg !333
  %div63 = fdiv float %mul61, %add55, !dbg !333
  %idxprom64 = sext i32 %1 to i64, !dbg !333
  %arrayidx65 = getelementptr inbounds float* %fwt, i64 %idxprom64, !dbg !333
  store float %div63, float* %arrayidx65, align 4, !dbg !333, !tbaa !291
  br label %if.end

if.end:                                           ; preds = %cond.end49, %if.then
  %cmp66 = icmp slt i32 %0, %nseq, !dbg !334
  br i1 %cmp66, label %if.end69, label %if.then68, !dbg !334

if.then68:                                        ; preds = %if.end
  tail call fastcc void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %0) #7, !dbg !334
  br label %if.end69, !dbg !334

if.end69:                                         ; preds = %if.end, %if.then68
  %cmp70 = icmp slt i32 %1, %nseq, !dbg !335
  br i1 %cmp70, label %if.end73, label %tailrecurse, !dbg !335

if.end73:                                         ; preds = %if.end69
  ret void, !dbg !336
}

; Function Attrs: optsize
declare void @FMX2Free(float**) #2

; Function Attrs: optsize
declare void @FreePhylo(%struct.phylo_s*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @VoronoiWeights(i8** nocapture %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %symseen = alloca [27 x i32], align 16
  call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !61), !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !62), !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !63), !dbg !337
  call void @llvm.dbg.value(metadata !{float* %wgt}, i64 0, metadata !64), !dbg !337
  %0 = bitcast [27 x i32]* %symseen to i8*, !dbg !338
  call void @llvm.lifetime.start(i64 108, i8* %0) #4, !dbg !338
  call void @llvm.dbg.declare(metadata !{[27 x i32]* %symseen}, metadata !70), !dbg !338
  %cmp = icmp eq i32 %nseq, 1, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %wgt, align 4, !dbg !340, !tbaa !291
  br label %cleanup, !dbg !340

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !342, i64 0, metadata !83), !dbg !343
  %conv.i = sext i32 %nseq to i64, !dbg !344
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !344
  %call.i = call noalias i8* @malloc(i64 %mul.i) #6, !dbg !344
  %1 = bitcast i8* %call.i to float**, !dbg !344
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !346) #4, !dbg !344
  %cmp.i = icmp eq i8* %call.i, null, !dbg !344
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i, !dbg !344

if.then.i:                                        ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !347
  br label %for.cond.preheader.i, !dbg !347

for.cond.preheader.i:                             ; preds = %if.then.i, %if.end
  %cmp25.i = icmp sgt i32 %nseq, 0, !dbg !348
  %mul5.i = shl nsw i64 %conv.i, 2, !dbg !350
  br i1 %cmp25.i, label %for.body.i, label %simple_diffmx.exit.thread, !dbg !348

simple_diffmx.exit.thread:                        ; preds = %for.cond.preheader.i
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !351
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !352
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !357
  %call3443 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %mul5.i) #6, !dbg !358
  %2 = bitcast i8* %call3443 to float*, !dbg !358
  call void @llvm.dbg.value(metadata !{float* %14}, i64 0, metadata !66), !dbg !358
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !76), !dbg !359
  br label %for.end31, !dbg !359

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %call6.i = call noalias i8* @malloc(i64 %mul5.i) #6, !dbg !350
  %3 = bitcast i8* %call6.i to float*, !dbg !350
  %arrayidx.i = getelementptr inbounds float** %1, i64 %indvars.iv.i, !dbg !350
  store float* %3, float** %arrayidx.i, align 8, !dbg !350, !tbaa !296
  %cmp7.i = icmp eq i8* %call6.i, null, !dbg !350
  br i1 %cmp7.i, label %if.then9.i, label %for.inc.i, !dbg !350

if.then9.i:                                       ; preds = %for.body.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !360
  br label %for.inc.i, !dbg !360

for.inc.i:                                        ; preds = %if.then9.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !348
  %lftr.wideiv441 = trunc i64 %indvars.iv.next.i to i32, !dbg !348
  %exitcond442 = icmp eq i32 %lftr.wideiv441, %nseq, !dbg !348
  br i1 %exitcond442, label %for.body18.lr.ph.i, label %for.body.i, !dbg !348

for.body18.lr.ph.i:                               ; preds = %for.inc.i, %for.inc35.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.inc35.i ], [ 0, %for.inc.i ]
  %arrayidx20.i = getelementptr inbounds i8** %aseq, i64 %indvars.iv9.i, !dbg !361
  %arrayidx30.i = getelementptr inbounds float** %1, i64 %indvars.iv9.i, !dbg !361
  %.pre.i = load i8** %arrayidx20.i, align 8, !dbg !361, !tbaa !296
  br label %for.body18.i, !dbg !364

for.body18.i:                                     ; preds = %simple_distance.exit.for.body18_crit_edge.i, %for.body18.lr.ph.i
  %4 = phi i8* [ %.pre.i, %for.body18.lr.ph.i ], [ %.pre15.i, %simple_distance.exit.for.body18_crit_edge.i ]
  %indvars.iv7.i = phi i64 [ %indvars.iv9.i, %for.body18.lr.ph.i ], [ %indvars.iv.next8.i, %simple_distance.exit.for.body18_crit_edge.i ], !dbg !365
  call void @llvm.dbg.value(metadata !{i8* %.pre.i}, i64 0, metadata !366) #4, !dbg !367
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !368) #4, !dbg !367
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !369) #4, !dbg !370
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !371) #4, !dbg !372
  br label %for.cond.i.i, !dbg !373

for.cond.i.i:                                     ; preds = %for.inc.i.i, %for.body18.i
  %s1.addr.0.i.i = phi i8* [ %.pre.i, %for.body18.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %s2.addr.0.i.i = phi i8* [ %4, %for.body18.i ], [ %incdec.ptr47.i.i, %for.inc.i.i ]
  %diff.0.i.i = phi i32 [ 0, %for.body18.i ], [ %diff.2.i.i, %for.inc.i.i ]
  %valid.0.i.i = phi i32 [ 0, %for.body18.i ], [ %valid.1.i.i, %for.inc.i.i ]
  %5 = load i8* %s1.addr.0.i.i, align 1, !dbg !373, !tbaa !292
  switch i8 %5, label %lor.lhs.false20.i.i [
    i8 0, label %for.end.i.i
    i8 32, label %for.inc.i.i
    i8 46, label %for.inc.i.i
    i8 95, label %for.inc.i.i
    i8 45, label %for.inc.i.i
    i8 126, label %for.inc.i.i
  ], !dbg !373

lor.lhs.false20.i.i:                              ; preds = %for.cond.i.i
  %6 = load i8* %s2.addr.0.i.i, align 1, !dbg !375, !tbaa !292
  switch i8 %6, label %if.end.i.i [
    i8 32, label %for.inc.i.i
    i8 46, label %for.inc.i.i
    i8 95, label %for.inc.i.i
    i8 45, label %for.inc.i.i
    i8 126, label %for.inc.i.i
  ], !dbg !375

if.end.i.i:                                       ; preds = %lor.lhs.false20.i.i
  %not.cmp42.i.i = icmp ne i8 %5, %6, !dbg !377
  %inc.i.i = zext i1 %not.cmp42.i.i to i32, !dbg !377
  %diff.0.inc.i.i = add nsw i32 %inc.i.i, %diff.0.i.i, !dbg !377
  %inc46.i.i = add nsw i32 %valid.0.i.i, 1, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %inc46.i.i}, i64 0, metadata !371) #4, !dbg !378
  br label %for.inc.i.i, !dbg !379

for.inc.i.i:                                      ; preds = %if.end.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %lor.lhs.false20.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i, %for.cond.i.i
  %diff.2.i.i = phi i32 [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.inc.i.i, %if.end.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %for.cond.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ], [ %diff.0.i.i, %lor.lhs.false20.i.i ]
  %valid.1.i.i = phi i32 [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %inc46.i.i, %if.end.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %for.cond.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ], [ %valid.0.i.i, %lor.lhs.false20.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds i8* %s1.addr.0.i.i, i64 1, !dbg !373
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i.i}, i64 0, metadata !366) #4, !dbg !373
  %incdec.ptr47.i.i = getelementptr inbounds i8* %s2.addr.0.i.i, i64 1, !dbg !373
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr47.i.i}, i64 0, metadata !368) #4, !dbg !373
  br label %for.cond.i.i, !dbg !373

for.end.i.i:                                      ; preds = %for.cond.i.i
  %cmp48.i.i = icmp sgt i32 %valid.0.i.i, 0, !dbg !380
  br i1 %cmp48.i.i, label %cond.true.i.i, label %simple_distance.exit.i, !dbg !380

cond.true.i.i:                                    ; preds = %for.end.i.i
  %conv50.i.i = sitofp i32 %diff.0.i.i to float, !dbg !380
  %conv51.i.i = sitofp i32 %valid.0.i.i to float, !dbg !380
  %div.i.i = fdiv float %conv50.i.i, %conv51.i.i, !dbg !380
  br label %simple_distance.exit.i, !dbg !380

simple_distance.exit.i:                           ; preds = %for.end.i.i, %cond.true.i.i
  %cond.i.i = phi float [ %div.i.i, %cond.true.i.i ], [ 0.000000e+00, %for.end.i.i ]
  %arrayidx26.i = getelementptr inbounds float** %1, i64 %indvars.iv7.i, !dbg !361
  %7 = load float** %arrayidx26.i, align 8, !dbg !361, !tbaa !296
  %arrayidx27.i = getelementptr inbounds float* %7, i64 %indvars.iv9.i, !dbg !361
  store float %cond.i.i, float* %arrayidx27.i, align 4, !dbg !361, !tbaa !291
  %8 = load float** %arrayidx30.i, align 8, !dbg !361, !tbaa !296
  %arrayidx31.i = getelementptr inbounds float* %8, i64 %indvars.iv7.i, !dbg !361
  store float %cond.i.i, float* %arrayidx31.i, align 4, !dbg !361, !tbaa !291
  %indvars.iv.next8.i = add i64 %indvars.iv7.i, 1, !dbg !364
  %lftr.wideiv.i = trunc i64 %indvars.iv.next8.i to i32, !dbg !364
  %exitcond.i = icmp eq i32 %lftr.wideiv.i, %nseq, !dbg !364
  br i1 %exitcond.i, label %for.inc35.i, label %simple_distance.exit.for.body18_crit_edge.i, !dbg !364

simple_distance.exit.for.body18_crit_edge.i:      ; preds = %simple_distance.exit.i
  %arrayidx22.phi.trans.insert.i = getelementptr inbounds i8** %aseq, i64 %indvars.iv.next8.i
  %.pre15.i = load i8** %arrayidx22.phi.trans.insert.i, align 8, !dbg !361, !tbaa !296
  br label %for.body18.i, !dbg !364

for.inc35.i:                                      ; preds = %simple_distance.exit.i
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1, !dbg !365
  %lftr.wideiv439 = trunc i64 %indvars.iv.next10.i to i32, !dbg !365
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %nseq, !dbg !365
  br i1 %exitcond440, label %simple_diffmx.exit, label %for.body18.lr.ph.i, !dbg !365

simple_diffmx.exit:                               ; preds = %for.inc35.i
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !351
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !352
  call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !65), !dbg !357
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %mul5.i) #6, !dbg !358
  %9 = bitcast i8* %call3 to float*, !dbg !358
  call void @llvm.dbg.value(metadata !{float* %14}, i64 0, metadata !66), !dbg !358
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !76), !dbg !359
  br i1 %cmp25.i, label %for.body9.lr.ph, label %for.end31, !dbg !359

for.body9.lr.ph:                                  ; preds = %for.end, %simple_diffmx.exit
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %for.end ], [ 0, %simple_diffmx.exit ]
  %arrayidx15 = getelementptr inbounds float** %1, i64 %indvars.iv435, !dbg !352
  br label %for.body9, !dbg !381

for.body9:                                        ; preds = %for.inc, %for.body9.lr.ph
  %indvars.iv431 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next432, %for.inc ]
  %min.0402 = phi float [ 1.000000e+00, %for.body9.lr.ph ], [ %min.1, %for.inc ]
  %10 = trunc i64 %indvars.iv431 to i32, !dbg !382
  %11 = trunc i64 %indvars.iv435 to i32, !dbg !382
  %cmp10 = icmp eq i32 %10, %11, !dbg !382
  br i1 %cmp10, label %for.inc, label %if.end13, !dbg !382

if.end13:                                         ; preds = %for.body9
  %12 = load float** %arrayidx15, align 8, !dbg !352, !tbaa !296
  %arrayidx16 = getelementptr inbounds float* %12, i64 %indvars.iv431, !dbg !352
  %13 = load float* %arrayidx16, align 4, !dbg !352, !tbaa !291
  %cmp17 = fcmp olt float %13, %min.0402, !dbg !352
  br i1 %cmp17, label %if.then19, label %for.inc, !dbg !352

if.then19:                                        ; preds = %if.end13
  call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !79), !dbg !352
  br label %for.inc, !dbg !352

for.inc:                                          ; preds = %if.end13, %if.then19, %for.body9
  %min.1 = phi float [ %min.0402, %for.body9 ], [ %13, %if.then19 ], [ %min.0402, %if.end13 ]
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !381
  %lftr.wideiv433 = trunc i64 %indvars.iv.next432 to i32, !dbg !381
  %exitcond434 = icmp eq i32 %lftr.wideiv433, %nseq, !dbg !381
  br i1 %exitcond434, label %for.end, label %for.body9, !dbg !381

for.end:                                          ; preds = %for.inc
  %conv26 = fmul float %min.1, 5.000000e-01, !dbg !383
  %arrayidx28 = getelementptr inbounds float* %9, i64 %indvars.iv435, !dbg !383
  store float %conv26, float* %arrayidx28, align 4, !dbg !383, !tbaa !291
  %indvars.iv.next436 = add i64 %indvars.iv435, 1, !dbg !359
  %lftr.wideiv437 = trunc i64 %indvars.iv.next436 to i32, !dbg !359
  %exitcond438 = icmp eq i32 %lftr.wideiv437, %nseq, !dbg !359
  br i1 %exitcond438, label %for.end31, label %for.body9.lr.ph, !dbg !359

for.end31:                                        ; preds = %for.end, %simple_diffmx.exit.thread, %simple_diffmx.exit
  %14 = phi float* [ %2, %simple_diffmx.exit.thread ], [ %9, %simple_diffmx.exit ], [ %9, %for.end ]
  %call3444 = phi i8* [ %call3443, %simple_diffmx.exit.thread ], [ %call3, %simple_diffmx.exit ], [ %call3, %for.end ]
  %15 = bitcast i8* %call.i to i8**, !dbg !357
  call void @Free2DArray(i8** %15, i32 %nseq) #6, !dbg !357
  %conv32 = sext i32 %alen to i64, !dbg !384
  %mul33 = shl nsw i64 %conv32, 3, !dbg !384
  %call34 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 198, i64 %mul33) #6, !dbg !384
  %16 = bitcast i8* %call34 to i8**, !dbg !384
  call void @llvm.dbg.value(metadata !{i8** %16}, i64 0, metadata !67), !dbg !384
  %mul36 = shl nsw i64 %conv32, 2, !dbg !385
  %call37 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 199, i64 %mul36) #6, !dbg !385
  %17 = bitcast i8* %call37 to i32*, !dbg !385
  call void @llvm.dbg.value(metadata !{i32* %17}, i64 0, metadata !68), !dbg !385
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !75), !dbg !386
  %cmp39398 = icmp sgt i32 %alen, 0, !dbg !386
  br i1 %cmp39398, label %for.body41, label %for.end171, !dbg !386

for.cond48.preheader:                             ; preds = %for.body41
  br i1 %cmp39398, label %for.body51.lr.ph, label %for.end171, !dbg !388

for.body51.lr.ph:                                 ; preds = %for.cond48.preheader
  %arrayidx156 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 26, !dbg !390
  br label %for.body51, !dbg !388

for.body41:                                       ; preds = %for.end31, %for.body41
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %for.body41 ], [ 0, %for.end31 ]
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 201, i64 27) #6, !dbg !392
  %arrayidx44 = getelementptr inbounds i8** %16, i64 %indvars.iv427, !dbg !392
  store i8* %call42, i8** %arrayidx44, align 8, !dbg !392, !tbaa !296
  %indvars.iv.next428 = add i64 %indvars.iv427, 1, !dbg !386
  %lftr.wideiv429 = trunc i64 %indvars.iv.next428 to i32, !dbg !386
  %exitcond430 = icmp eq i32 %lftr.wideiv429, %alen, !dbg !386
  br i1 %exitcond430, label %for.cond48.preheader, label %for.body41, !dbg !386

for.body51:                                       ; preds = %for.inc169, %for.body51.lr.ph
  %indvars.iv423 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next424, %for.inc169 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 108, i32 16, i1 false), !dbg !393
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !76), !dbg !394
  br i1 %cmp25.i, label %for.body55, label %for.end131, !dbg !394

for.body55:                                       ; preds = %for.body51, %for.inc129
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc129 ], [ 0, %for.body51 ]
  %arrayidx58 = getelementptr inbounds i8** %aseq, i64 %indvars.iv414, !dbg !396
  %18 = load i8** %arrayidx58, align 8, !dbg !396, !tbaa !296
  %arrayidx59 = getelementptr inbounds i8* %18, i64 %indvars.iv423, !dbg !396
  %19 = load i8* %arrayidx59, align 1, !dbg !396, !tbaa !292
  switch i8 %19, label %if.then94 [
    i8 32, label %if.else126
    i8 46, label %if.else126
    i8 95, label %if.else126
    i8 45, label %if.else126
    i8 126, label %if.else126
  ], !dbg !396

if.then94:                                        ; preds = %for.body55
  %conv60 = sext i8 %19 to i32, !dbg !396
  %idxprom100 = sext i8 %19 to i64, !dbg !397
  %call101 = call i16** @__ctype_b_loc() #8, !dbg !397
  %20 = load i16** %call101, align 8, !dbg !397, !tbaa !296
  %arrayidx102 = getelementptr inbounds i16* %20, i64 %idxprom100, !dbg !397
  %21 = load i16* %arrayidx102, align 2, !dbg !397, !tbaa !399
  %and = and i16 %21, 256, !dbg !397
  %tobool104 = icmp eq i16 %and, 0, !dbg !397
  %symidx.0.v = select i1 %tobool104, i32 -97, i32 -65, !dbg !397
  %symidx.0 = add i32 %symidx.0.v, %conv60, !dbg !397
  %22 = icmp ult i32 %symidx.0, 26, !dbg !400
  br i1 %22, label %if.then122, label %for.inc129, !dbg !400

if.then122:                                       ; preds = %if.then94
  %idxprom123 = sext i32 %symidx.0 to i64, !dbg !401
  %arrayidx124 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %idxprom123, !dbg !401
  store i32 1, i32* %arrayidx124, align 4, !dbg !401, !tbaa !314
  br label %for.inc129, !dbg !401

if.else126:                                       ; preds = %for.body55, %for.body55, %for.body55, %for.body55, %for.body55
  store i32 1, i32* %arrayidx156, align 8, !dbg !402, !tbaa !314
  br label %for.inc129

for.inc129:                                       ; preds = %if.else126, %if.then122, %if.then94
  %indvars.iv.next415 = add i64 %indvars.iv414, 1, !dbg !394
  %lftr.wideiv416 = trunc i64 %indvars.iv.next415 to i32, !dbg !394
  %exitcond417 = icmp eq i32 %lftr.wideiv416, %nseq, !dbg !394
  br i1 %exitcond417, label %for.end131, label %for.body55, !dbg !394

for.end131:                                       ; preds = %for.inc129, %for.body51
  %arrayidx133 = getelementptr inbounds i32* %17, i64 %indvars.iv423, !dbg !403
  store i32 0, i32* %arrayidx133, align 4, !dbg !403, !tbaa !314
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !78), !dbg !403
  %arrayidx147 = getelementptr inbounds i8** %16, i64 %indvars.iv423, !dbg !405
  br label %for.body137, !dbg !403

for.body137:                                      ; preds = %for.inc153, %for.end131
  %23 = phi i32 [ 0, %for.end131 ], [ %27, %for.inc153 ]
  %indvars.iv418 = phi i64 [ 0, %for.end131 ], [ %indvars.iv.next419, %for.inc153 ]
  %i.1395 = phi i32 [ 0, %for.end131 ], [ %inc154, %for.inc153 ]
  %arrayidx139 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %indvars.iv418, !dbg !407
  %24 = load i32* %arrayidx139, align 4, !dbg !407, !tbaa !314
  %tobool140 = icmp eq i32 %24, 0, !dbg !407
  br i1 %tobool140, label %for.inc153, label %if.then141, !dbg !407

if.then141:                                       ; preds = %for.body137
  %add = add nsw i32 %i.1395, 65, !dbg !405
  %conv142 = trunc i32 %add to i8, !dbg !405
  %idxprom145 = sext i32 %23 to i64, !dbg !405
  %25 = load i8** %arrayidx147, align 8, !dbg !405, !tbaa !296
  %arrayidx148 = getelementptr inbounds i8* %25, i64 %idxprom145, !dbg !405
  store i8 %conv142, i8* %arrayidx148, align 1, !dbg !405, !tbaa !292
  %26 = load i32* %arrayidx133, align 4, !dbg !408, !tbaa !314
  %inc151 = add nsw i32 %26, 1, !dbg !408
  store i32 %inc151, i32* %arrayidx133, align 4, !dbg !408, !tbaa !314
  br label %for.inc153, !dbg !409

for.inc153:                                       ; preds = %for.body137, %if.then141
  %27 = phi i32 [ %23, %for.body137 ], [ %inc151, %if.then141 ]
  %indvars.iv.next419 = add i64 %indvars.iv418, 1, !dbg !403
  %inc154 = add nsw i32 %i.1395, 1, !dbg !403
  call void @llvm.dbg.value(metadata !{i32 %inc154}, i64 0, metadata !78), !dbg !403
  %lftr.wideiv421 = trunc i64 %indvars.iv.next419 to i32, !dbg !403
  %exitcond422 = icmp eq i32 %lftr.wideiv421, 26, !dbg !403
  br i1 %exitcond422, label %for.end155, label %for.body137, !dbg !403

for.end155:                                       ; preds = %for.inc153
  %28 = load i32* %arrayidx156, align 8, !dbg !390, !tbaa !314
  %tobool157 = icmp eq i32 %28, 0, !dbg !390
  br i1 %tobool157, label %for.inc169, label %if.then158, !dbg !390

if.then158:                                       ; preds = %for.end155
  %idxprom161 = sext i32 %27 to i64, !dbg !410
  %29 = load i8** %arrayidx147, align 8, !dbg !410, !tbaa !296
  %arrayidx164 = getelementptr inbounds i8* %29, i64 %idxprom161, !dbg !410
  store i8 32, i8* %arrayidx164, align 1, !dbg !410, !tbaa !292
  %30 = load i32* %arrayidx133, align 4, !dbg !410, !tbaa !314
  %inc167 = add nsw i32 %30, 1, !dbg !410
  store i32 %inc167, i32* %arrayidx133, align 4, !dbg !410, !tbaa !314
  br label %for.inc169, !dbg !410

for.inc169:                                       ; preds = %for.end155, %if.then158
  %indvars.iv.next424 = add i64 %indvars.iv423, 1, !dbg !388
  %lftr.wideiv425 = trunc i64 %indvars.iv.next424 to i32, !dbg !388
  %exitcond426 = icmp eq i32 %lftr.wideiv425, %alen, !dbg !388
  br i1 %exitcond426, label %for.end171, label %for.body51, !dbg !388

for.end171:                                       ; preds = %for.end31, %for.inc169, %for.cond48.preheader
  %add172 = add nsw i32 %alen, 1, !dbg !412
  %conv173 = sext i32 %add172 to i64, !dbg !412
  %call175 = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 268, i64 %conv173) #6, !dbg !412
  call void @llvm.dbg.value(metadata !{i8* %call175}, i64 0, metadata !74), !dbg !412
  call void @llvm.dbg.value(metadata !413, i64 0, metadata !85), !dbg !414
  call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #6, !dbg !415
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !84), !dbg !416
  %mul177 = mul nsw i32 %nseq, 50, !dbg !416
  br i1 %cmp25.i, label %for.cond181.preheader.lr.ph, label %for.end263, !dbg !416

for.cond181.preheader.lr.ph:                      ; preds = %for.end171
  %31 = add i32 %alen, -1, !dbg !416
  %32 = zext i32 %31 to i64, !dbg !418
  %33 = add i64 %32, 1, !dbg !416
  br label %for.cond181.preheader, !dbg !416

for.cond181.preheader:                            ; preds = %for.cond181.preheader.lr.ph, %for.end242
  %best.0391 = phi i32 [ 42, %for.cond181.preheader.lr.ph ], [ %best.3, %for.end242 ]
  %iteration.0390 = phi i32 [ 0, %for.cond181.preheader.lr.ph ], [ %inc249, %for.end242 ]
  br i1 %cmp39398, label %for.body184, label %for.body213.lr.ph, !dbg !418

for.cond251.preheader:                            ; preds = %for.end242
  br i1 %cmp25.i, label %for.body254, label %for.end263, !dbg !421

for.body184:                                      ; preds = %for.cond181.preheader, %cond.end
  %indvars.iv407 = phi i64 [ %indvars.iv.next408, %cond.end ], [ 0, %for.cond181.preheader ]
  %arrayidx186 = getelementptr inbounds i32* %17, i64 %indvars.iv407, !dbg !423
  %34 = load i32* %arrayidx186, align 4, !dbg !423, !tbaa !314
  %cmp187 = icmp eq i32 %34, 0, !dbg !423
  br i1 %cmp187, label %cond.end, label %cond.false, !dbg !423

cond.false:                                       ; preds = %for.body184
  %call189 = call double @sre_random() #6, !dbg !423
  %35 = load i32* %arrayidx186, align 4, !dbg !423, !tbaa !314
  %conv192 = sitofp i32 %35 to double, !dbg !423
  %mul193 = fmul double %call189, %conv192, !dbg !423
  %conv194 = fptosi double %mul193 to i32, !dbg !423
  %idxprom195 = sext i32 %conv194 to i64, !dbg !423
  %arrayidx197 = getelementptr inbounds i8** %16, i64 %indvars.iv407, !dbg !423
  %36 = load i8** %arrayidx197, align 8, !dbg !423, !tbaa !296
  %arrayidx198 = getelementptr inbounds i8* %36, i64 %idxprom195, !dbg !423
  %37 = load i8* %arrayidx198, align 1, !dbg !423, !tbaa !292
  br label %cond.end, !dbg !423

cond.end:                                         ; preds = %for.body184, %cond.false
  %cond = phi i8 [ %37, %cond.false ], [ 32, %for.body184 ]
  %arrayidx202 = getelementptr inbounds i8* %call175, i64 %indvars.iv407, !dbg !423
  store i8 %cond, i8* %arrayidx202, align 1, !dbg !423, !tbaa !292
  %indvars.iv.next408 = add i64 %indvars.iv407, 1, !dbg !418
  %lftr.wideiv409 = trunc i64 %indvars.iv.next408 to i32, !dbg !418
  %exitcond410 = icmp eq i32 %lftr.wideiv409, %alen, !dbg !418
  br i1 %exitcond410, label %for.body213.lr.ph, label %for.body184, !dbg !418

for.body213.lr.ph:                                ; preds = %for.cond181.preheader, %cond.end
  %idxprom185.lcssa = phi i64 [ 0, %for.cond181.preheader ], [ %33, %cond.end ]
  %arrayidx207 = getelementptr inbounds i8* %call175, i64 %idxprom185.lcssa, !dbg !424
  store i8 0, i8* %arrayidx207, align 1, !dbg !424, !tbaa !292
  %call208 = call double @sre_random() #6, !dbg !425
  call void @llvm.dbg.value(metadata !{float %conv209}, i64 0, metadata !82), !dbg !425
  call void @llvm.dbg.value(metadata !426, i64 0, metadata !79), !dbg !427
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !76), !dbg !427
  %conv209 = fptrunc double %call208 to float, !dbg !425
  br label %for.body213, !dbg !427

for.body213:                                      ; preds = %for.body213.lr.ph, %for.inc240
  %indvars.iv412 = phi i64 [ 0, %for.body213.lr.ph ], [ %indvars.iv.next413, %for.inc240 ]
  %best.1387 = phi i32 [ %best.0391, %for.body213.lr.ph ], [ %best.2, %for.inc240 ]
  %champion.0386 = phi float [ %conv209, %for.body213.lr.ph ], [ %champion.1, %for.inc240 ]
  %idx.2385 = phi i32 [ 0, %for.body213.lr.ph ], [ %inc241, %for.inc240 ]
  %min.2384 = phi float [ 1.000000e+00, %for.body213.lr.ph ], [ %min.3, %for.inc240 ]
  %arrayidx215 = getelementptr inbounds i8** %aseq, i64 %indvars.iv412, !dbg !429
  %38 = load i8** %arrayidx215, align 8, !dbg !429, !tbaa !296
  tail call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !431), !dbg !432
  tail call void @llvm.dbg.value(metadata !{i8* %call175}, i64 0, metadata !433), !dbg !432
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !434), !dbg !435
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !436), !dbg !437
  br label %for.cond.i, !dbg !438

for.cond.i:                                       ; preds = %for.inc.i376, %for.body213
  %s1.addr.0.i = phi i8* [ %38, %for.body213 ], [ %incdec.ptr.i, %for.inc.i376 ]
  %s2.addr.0.i = phi i8* [ %call175, %for.body213 ], [ %incdec.ptr47.i, %for.inc.i376 ]
  %diff.0.i = phi i32 [ 0, %for.body213 ], [ %diff.2.i, %for.inc.i376 ]
  %valid.0.i = phi i32 [ 0, %for.body213 ], [ %valid.1.i, %for.inc.i376 ]
  %39 = load i8* %s1.addr.0.i, align 1, !dbg !438, !tbaa !292
  switch i8 %39, label %lor.lhs.false20.i [
    i8 0, label %for.end.i
    i8 32, label %for.inc.i376
    i8 46, label %for.inc.i376
    i8 95, label %for.inc.i376
    i8 45, label %for.inc.i376
    i8 126, label %for.inc.i376
  ], !dbg !438

lor.lhs.false20.i:                                ; preds = %for.cond.i
  %40 = load i8* %s2.addr.0.i, align 1, !dbg !439, !tbaa !292
  switch i8 %40, label %if.end.i [
    i8 32, label %for.inc.i376
    i8 46, label %for.inc.i376
    i8 95, label %for.inc.i376
    i8 45, label %for.inc.i376
    i8 126, label %for.inc.i376
  ], !dbg !439

if.end.i:                                         ; preds = %lor.lhs.false20.i
  %not.cmp42.i = icmp ne i8 %39, %40, !dbg !440
  %inc.i = zext i1 %not.cmp42.i to i32, !dbg !440
  %diff.0.inc.i = add nsw i32 %inc.i, %diff.0.i, !dbg !440
  %inc46.i = add nsw i32 %valid.0.i, 1, !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32 %inc46.i}, i64 0, metadata !436), !dbg !441
  br label %for.inc.i376, !dbg !442

for.inc.i376:                                     ; preds = %if.end.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %diff.2.i = phi i32 [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.inc.i, %if.end.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ]
  %valid.1.i = phi i32 [ %valid.0.i, %lor.lhs.false20.i ], [ %inc46.i, %if.end.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %s1.addr.0.i, i64 1, !dbg !438
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !431), !dbg !438
  %incdec.ptr47.i = getelementptr inbounds i8* %s2.addr.0.i, i64 1, !dbg !438
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr47.i}, i64 0, metadata !433), !dbg !438
  br label %for.cond.i, !dbg !438

for.end.i:                                        ; preds = %for.cond.i
  %cmp48.i = icmp sgt i32 %valid.0.i, 0, !dbg !443
  br i1 %cmp48.i, label %cond.true.i, label %simple_distance.exit, !dbg !443

cond.true.i:                                      ; preds = %for.end.i
  %conv50.i = sitofp i32 %diff.0.i to float, !dbg !443
  %conv51.i = sitofp i32 %valid.0.i to float, !dbg !443
  %div.i = fdiv float %conv50.i, %conv51.i, !dbg !443
  br label %simple_distance.exit, !dbg !443

simple_distance.exit:                             ; preds = %for.end.i, %cond.true.i
  %cond.i = phi float [ %div.i, %cond.true.i ], [ 0.000000e+00, %for.end.i ]
  call void @llvm.dbg.value(metadata !{float %cond.i}, i64 0, metadata !80), !dbg !429
  %arrayidx218 = getelementptr inbounds float* %14, i64 %indvars.iv412, !dbg !444
  %41 = load float* %arrayidx218, align 4, !dbg !444, !tbaa !291
  %cmp219 = fcmp olt float %cond.i, %41, !dbg !444
  br i1 %cmp219, label %for.end242, label %if.end222, !dbg !444

if.end222:                                        ; preds = %simple_distance.exit
  %cmp223 = fcmp olt float %cond.i, %min.2384, !dbg !445
  %42 = trunc i64 %indvars.iv412 to i32, !dbg !445
  br i1 %cmp223, label %if.then225, label %if.else228, !dbg !445

if.then225:                                       ; preds = %if.end222
  %call226 = call double @sre_random() #6, !dbg !446
  %conv227 = fptrunc double %call226 to float, !dbg !446
  call void @llvm.dbg.value(metadata !{float %conv227}, i64 0, metadata !82), !dbg !446
  call void @llvm.dbg.value(metadata !{i32 %idx.2385}, i64 0, metadata !85), !dbg !446
  call void @llvm.dbg.value(metadata !{float %cond.i}, i64 0, metadata !79), !dbg !446
  br label %for.inc240, !dbg !446

if.else228:                                       ; preds = %if.end222
  %cmp229 = fcmp oeq float %cond.i, %min.2384, !dbg !448
  br i1 %cmp229, label %if.then231, label %for.inc240, !dbg !448

if.then231:                                       ; preds = %if.else228
  %call232 = call double @sre_random() #6, !dbg !449
  %conv233 = fptrunc double %call232 to float, !dbg !449
  call void @llvm.dbg.value(metadata !{float %conv233}, i64 0, metadata !81), !dbg !449
  %cmp234 = fcmp ogt float %conv233, %champion.0386, !dbg !451
  br i1 %cmp234, label %if.then236, label %for.inc240, !dbg !451

if.then236:                                       ; preds = %if.then231
  call void @llvm.dbg.value(metadata !{float %conv233}, i64 0, metadata !82), !dbg !452
  call void @llvm.dbg.value(metadata !{i32 %idx.2385}, i64 0, metadata !85), !dbg !452
  call void @llvm.dbg.value(metadata !{float %cond.i}, i64 0, metadata !79), !dbg !452
  br label %for.inc240, !dbg !452

for.inc240:                                       ; preds = %if.then225, %if.then231, %if.then236, %if.else228
  %min.3 = phi float [ %cond.i, %if.then225 ], [ %cond.i, %if.then236 ], [ %min.2384, %if.then231 ], [ %min.2384, %if.else228 ]
  %champion.1 = phi float [ %conv227, %if.then225 ], [ %conv233, %if.then236 ], [ %champion.0386, %if.then231 ], [ %champion.0386, %if.else228 ]
  %best.2 = phi i32 [ %42, %if.then225 ], [ %42, %if.then236 ], [ %best.1387, %if.then231 ], [ %best.1387, %if.else228 ]
  %indvars.iv.next413 = add i64 %indvars.iv412, 1, !dbg !427
  %inc241 = add nsw i32 %idx.2385, 1, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %inc241}, i64 0, metadata !76), !dbg !427
  %43 = trunc i64 %indvars.iv.next413 to i32, !dbg !427
  %cmp211 = icmp slt i32 %43, %nseq, !dbg !427
  br i1 %cmp211, label %for.body213, label %for.end242, !dbg !427

for.end242:                                       ; preds = %for.inc240, %simple_distance.exit
  %best.3 = phi i32 [ %idx.2385, %simple_distance.exit ], [ %best.2, %for.inc240 ]
  %idxprom243 = sext i32 %best.3 to i64, !dbg !454
  %arrayidx244 = getelementptr inbounds float* %wgt, i64 %idxprom243, !dbg !454
  %44 = load float* %arrayidx244, align 4, !dbg !454, !tbaa !291
  %conv247 = fadd float %44, 1.000000e+00, !dbg !454
  store float %conv247, float* %arrayidx244, align 4, !dbg !454, !tbaa !291
  %inc249 = add nsw i32 %iteration.0390, 1, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %inc249}, i64 0, metadata !84), !dbg !416
  %cmp178 = icmp slt i32 %inc249, %mul177, !dbg !416
  br i1 %cmp178, label %for.cond181.preheader, label %for.cond251.preheader, !dbg !416

for.body254:                                      ; preds = %for.cond251.preheader, %for.body254
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body254 ], [ 0, %for.cond251.preheader ]
  %arrayidx256 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !455
  %45 = load float* %arrayidx256, align 4, !dbg !455, !tbaa !291
  %div258 = fdiv float %45, 5.000000e+01, !dbg !455
  store float %div258, float* %arrayidx256, align 4, !dbg !455, !tbaa !291
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !421
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !421
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !421
  br i1 %exitcond, label %for.end263, label %for.body254, !dbg !421

for.end263:                                       ; preds = %for.end171, %for.body254, %for.cond251.preheader
  call void @free(i8* %call175) #6, !dbg !456
  call void @free(i8* %call37) #6, !dbg !457
  call void @free(i8* %call3444) #6, !dbg !458
  call void @Free2DArray(i8** %16, i32 %alen) #6, !dbg !459
  br label %cleanup, !dbg !459

cleanup:                                          ; preds = %for.end263, %if.then
  call void @llvm.lifetime.end(i64 108, i8* %0) #4, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare double @sre_random() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @BlosumWeights(i8** nocapture %aseqs, i32 %nseq, i32 %alen, float %maxid, float* %wgt) #0 {
entry:
  %c = alloca i32*, align 8
  %nc = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !90), !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !91), !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !92), !dbg !461
  call void @llvm.dbg.value(metadata !{float %maxid}, i64 0, metadata !93), !dbg !461
  call void @llvm.dbg.value(metadata !{float* %wgt}, i64 0, metadata !94), !dbg !461
  call void @llvm.dbg.declare(metadata !{i32** %c}, metadata !95), !dbg !462
  call void @llvm.dbg.declare(metadata !{i32* %nc}, metadata !96), !dbg !462
  call void @SingleLinkCluster(i8** %aseqs, i32 %nseq, i32 undef, float %maxid, i32** %c, i32* %nc) #7, !dbg !463
  call void @FSet(float* %wgt, i32 %nseq, float 1.000000e+00) #6, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %nc}, i64 0, metadata !96), !dbg !465
  %0 = load i32* %nc, align 4, !dbg !465, !tbaa !314
  %conv = sext i32 %0 to i64, !dbg !465
  %mul = shl nsw i64 %conv, 2, !dbg !465
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 403, i64 %mul) #6, !dbg !465
  %1 = bitcast i8* %call to i32*, !dbg !465
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !97), !dbg !465
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !98), !dbg !466
  call void @llvm.dbg.value(metadata !{i32* %nc}, i64 0, metadata !96), !dbg !466
  %cmp50 = icmp sgt i32 %0, 0, !dbg !466
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond2.preheader, !dbg !466

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nc}, i64 0, metadata !96), !dbg !466
  %2 = icmp sgt i32 %0, 1
  %.op = add i32 %0, -1, !dbg !466
  %3 = zext i32 %.op to i64
  %.op58 = shl nuw nsw i64 %3, 2, !dbg !466
  %.op58.op = add i64 %.op58, 4, !dbg !466
  %4 = select i1 %2, i64 %.op58.op, i64 4, !dbg !466
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %4, i32 4, i1 false), !dbg !466
  br label %for.cond2.preheader, !dbg !466

for.cond2.preheader:                              ; preds = %for.body.lr.ph, %entry
  %cmp348 = icmp sgt i32 %nseq, 0, !dbg !468
  br i1 %cmp348, label %for.body5.lr.ph, label %for.cond14.preheader.for.end29_crit_edge, !dbg !468

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !468
  %5 = load i32** %c, align 8, !dbg !468, !tbaa !296
  br label %for.body5, !dbg !468

for.cond14.preheader:                             ; preds = %for.body5
  br i1 %cmp348, label %for.body17.lr.ph, label %for.cond14.preheader.for.end29_crit_edge, !dbg !470

for.cond14.preheader.for.end29_crit_edge:         ; preds = %for.cond2.preheader, %for.cond14.preheader
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !472
  %.pre = load i32** %c, align 8, !dbg !472, !tbaa !296
  br label %for.end29, !dbg !470

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !470
  %6 = load i32** %c, align 8, !dbg !470, !tbaa !296
  br label %for.body17, !dbg !470

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next53, %for.body5 ]
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !468
  %arrayidx7 = getelementptr inbounds i32* %5, i64 %indvars.iv52, !dbg !468
  %7 = load i32* %arrayidx7, align 4, !dbg !468, !tbaa !314
  %idxprom8 = sext i32 %7 to i64, !dbg !468
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %idxprom8, !dbg !468
  %8 = load i32* %arrayidx9, align 4, !dbg !468, !tbaa !314
  %inc10 = add nsw i32 %8, 1, !dbg !468
  store i32 %inc10, i32* %arrayidx9, align 4, !dbg !468, !tbaa !314
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !468
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32, !dbg !468
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %nseq, !dbg !468
  br i1 %exitcond55, label %for.cond14.preheader, label %for.body5, !dbg !468

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !470
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !470
  %9 = load i32* %arrayidx19, align 4, !dbg !470, !tbaa !314
  %idxprom20 = sext i32 %9 to i64, !dbg !470
  %arrayidx21 = getelementptr inbounds i32* %1, i64 %idxprom20, !dbg !470
  %10 = load i32* %arrayidx21, align 4, !dbg !470, !tbaa !314
  %conv22 = sitofp i32 %10 to float, !dbg !470
  %conv24 = fdiv float 1.000000e+00, %conv22, !dbg !470
  %arrayidx26 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !470
  store float %conv24, float* %arrayidx26, align 4, !dbg !470, !tbaa !291
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !470
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !470
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !470
  br i1 %exitcond, label %for.end29, label %for.body17, !dbg !470

for.end29:                                        ; preds = %for.body17, %for.cond14.preheader.for.end29_crit_edge
  %11 = phi i32* [ %.pre, %for.cond14.preheader.for.end29_crit_edge ], [ %6, %for.body17 ]
  call void @free(i8* %call) #6, !dbg !473
  call void @llvm.dbg.value(metadata !{i32** %c}, i64 0, metadata !95), !dbg !472
  %12 = bitcast i32* %11 to i8*, !dbg !472
  call void @free(i8* %12) #6, !dbg !472
  ret void, !dbg !474
}

; Function Attrs: nounwind optsize uwtable
define void @SingleLinkCluster(i8** nocapture %aseq, i32 %nseq, i32 %alen, float %maxid, i32** nocapture %ret_c, i32* nocapture %ret_nc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !226), !dbg !475
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !227), !dbg !475
  tail call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !228), !dbg !475
  tail call void @llvm.dbg.value(metadata !{float %maxid}, i64 0, metadata !229), !dbg !475
  tail call void @llvm.dbg.value(metadata !{i32** %ret_c}, i64 0, metadata !230), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i32* %ret_nc}, i64 0, metadata !231), !dbg !476
  %conv = sext i32 %nseq to i64, !dbg !477
  %mul = shl nsw i64 %conv, 2, !dbg !477
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 716, i64 %mul) #6, !dbg !477
  %0 = bitcast i8* %call to i32*, !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !232), !dbg !477
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 717, i64 %mul) #6, !dbg !478
  %1 = bitcast i8* %call3 to i32*, !dbg !478
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !234), !dbg !478
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 718, i64 %mul) #6, !dbg !479
  %2 = bitcast i8* %call6 to i32*, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !236), !dbg !479
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !240), !dbg !480
  %cmp106 = icmp sgt i32 %nseq, 0, !dbg !480
  br i1 %cmp106, label %for.body, label %while.end57, !dbg !480

while.cond.preheader:                             ; preds = %for.body
  br i1 %cmp106, label %while.body.lr.ph, label %while.end57, !dbg !482

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv38 = fpext float %maxid to double, !dbg !483
  %sub39 = fsub double 1.000000e+00, %conv38, !dbg !483
  br label %while.body, !dbg !482

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv114, !dbg !480
  %3 = trunc i64 %indvars.iv114 to i32, !dbg !480
  store i32 %3, i32* %arrayidx, align 4, !dbg !480, !tbaa !314
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !480
  %lftr.wideiv = trunc i64 %indvars.iv.next115 to i32, !dbg !480
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !480
  br i1 %exitcond, label %while.cond.preheader, label %for.body, !dbg !480

while.body:                                       ; preds = %while.body.lr.ph, %while.end
  %na.0104 = phi i32 [ %nseq, %while.body.lr.ph ], [ %na.1.lcssa, %while.end ]
  %nc.0103 = phi i32 [ 0, %while.body.lr.ph ], [ %inc56, %while.end ]
  %nb.0102 = phi i32 [ 0, %while.body.lr.ph ], [ %nb.1.lcssa, %while.end ]
  %sub = add nsw i32 %na.0104, -1, !dbg !487
  %idxprom10 = sext i32 %sub to i64, !dbg !487
  %arrayidx11 = getelementptr inbounds i32* %0, i64 %idxprom10, !dbg !487
  %4 = load i32* %arrayidx11, align 4, !dbg !487, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !238), !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !233), !dbg !487
  %idxprom12 = sext i32 %nb.0102 to i64, !dbg !488
  %arrayidx13 = getelementptr inbounds i32* %1, i64 %idxprom12, !dbg !488
  store i32 %4, i32* %arrayidx13, align 4, !dbg !488, !tbaa !314
  %inc14 = add nsw i32 %nb.0102, 1, !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32 %inc14}, i64 0, metadata !235), !dbg !488
  %cmp1697 = icmp sgt i32 %nb.0102, -1, !dbg !489
  br i1 %cmp1697, label %while.body18, label %while.end, !dbg !489

while.cond15.loopexit:                            ; preds = %for.cond26
  %cmp16 = icmp sgt i32 %nb.2.ph, 0, !dbg !489
  br i1 %cmp16, label %while.body18, label %while.end, !dbg !489

while.body18:                                     ; preds = %while.cond15.loopexit, %while.body
  %na.199 = phi i32 [ %sub, %while.body ], [ %na.2.ph, %while.cond15.loopexit ]
  %nb.198 = phi i32 [ %inc14, %while.body ], [ %nb.2.ph, %while.cond15.loopexit ]
  %sub19 = add i32 %nb.198, -1, !dbg !490
  %idxprom20 = sext i32 %sub19 to i64, !dbg !490
  %arrayidx21 = getelementptr inbounds i32* %1, i64 %idxprom20, !dbg !490
  %5 = load i32* %arrayidx21, align 4, !dbg !490, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !238), !dbg !490
  tail call void @llvm.dbg.value(metadata !{i32 %sub19}, i64 0, metadata !235), !dbg !490
  %idxprom23 = sext i32 %5 to i64, !dbg !491
  %arrayidx24 = getelementptr inbounds i32* %2, i64 %idxprom23, !dbg !491
  store i32 %nc.0103, i32* %arrayidx24, align 4, !dbg !491, !tbaa !314
  %arrayidx31 = getelementptr inbounds i8** %aseq, i64 %idxprom23, !dbg !483
  %6 = sext i32 %na.199 to i64, !dbg !492
  br label %for.cond26.outer, !dbg !494

for.cond26.outer:                                 ; preds = %if.then, %while.body18
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %if.then ], [ %6, %while.body18 ], !dbg !492
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %if.then ], [ %idxprom20, %while.body18 ]
  %nb.2.ph = phi i32 [ %inc52, %if.then ], [ %sub19, %while.body18 ]
  %na.2.ph = phi i32 [ %sub44, %if.then ], [ %na.199, %while.body18 ]
  %i.1.in.ph = phi i32 [ %i.1, %if.then ], [ %na.199, %while.body18 ]
  %7 = sext i32 %i.1.in.ph to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.outer, %simple_distance.exit
  %indvars.iv = phi i64 [ %7, %for.cond26.outer ], [ %indvars.iv.next, %simple_distance.exit ]
  %i.1.in = phi i32 [ %i.1.in.ph, %for.cond26.outer ], [ %i.1, %simple_distance.exit ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !483
  %i.1 = add nsw i32 %i.1.in, -1, !dbg !494
  %8 = trunc i64 %indvars.iv to i32, !dbg !494
  %cmp27 = icmp sgt i32 %8, 0, !dbg !494
  br i1 %cmp27, label %for.body29, label %while.cond15.loopexit, !dbg !494

for.body29:                                       ; preds = %for.cond26
  %9 = load i8** %arrayidx31, align 8, !dbg !483, !tbaa !296
  %arrayidx33 = getelementptr inbounds i32* %0, i64 %indvars.iv.next, !dbg !483
  %10 = load i32* %arrayidx33, align 4, !dbg !483, !tbaa !314
  %idxprom34 = sext i32 %10 to i64, !dbg !483
  %arrayidx35 = getelementptr inbounds i8** %aseq, i64 %idxprom34, !dbg !483
  %11 = load i8** %arrayidx35, align 8, !dbg !483, !tbaa !296
  tail call void @llvm.dbg.value(metadata !{i8* %9}, i64 0, metadata !495), !dbg !496
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !497), !dbg !496
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !498), !dbg !499
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !500), !dbg !501
  br label %for.cond.i, !dbg !502

for.cond.i:                                       ; preds = %for.inc.i, %for.body29
  %s1.addr.0.i = phi i8* [ %9, %for.body29 ], [ %incdec.ptr.i, %for.inc.i ]
  %s2.addr.0.i = phi i8* [ %11, %for.body29 ], [ %incdec.ptr47.i, %for.inc.i ]
  %diff.0.i = phi i32 [ 0, %for.body29 ], [ %diff.2.i, %for.inc.i ]
  %valid.0.i = phi i32 [ 0, %for.body29 ], [ %valid.1.i, %for.inc.i ]
  %12 = load i8* %s1.addr.0.i, align 1, !dbg !502, !tbaa !292
  switch i8 %12, label %lor.lhs.false20.i [
    i8 0, label %for.end.i
    i8 32, label %for.inc.i
    i8 46, label %for.inc.i
    i8 95, label %for.inc.i
    i8 45, label %for.inc.i
    i8 126, label %for.inc.i
  ], !dbg !502

lor.lhs.false20.i:                                ; preds = %for.cond.i
  %13 = load i8* %s2.addr.0.i, align 1, !dbg !503, !tbaa !292
  switch i8 %13, label %if.end.i [
    i8 32, label %for.inc.i
    i8 46, label %for.inc.i
    i8 95, label %for.inc.i
    i8 45, label %for.inc.i
    i8 126, label %for.inc.i
  ], !dbg !503

if.end.i:                                         ; preds = %lor.lhs.false20.i
  %not.cmp42.i = icmp ne i8 %12, %13, !dbg !504
  %inc.i = zext i1 %not.cmp42.i to i32, !dbg !504
  %diff.0.inc.i = add nsw i32 %inc.i, %diff.0.i, !dbg !504
  %inc46.i = add nsw i32 %valid.0.i, 1, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32 %inc46.i}, i64 0, metadata !500), !dbg !505
  br label %for.inc.i, !dbg !506

for.inc.i:                                        ; preds = %if.end.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %lor.lhs.false20.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i, %for.cond.i
  %diff.2.i = phi i32 [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.inc.i, %if.end.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %for.cond.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ], [ %diff.0.i, %lor.lhs.false20.i ]
  %valid.1.i = phi i32 [ %valid.0.i, %lor.lhs.false20.i ], [ %inc46.i, %if.end.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %for.cond.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ], [ %valid.0.i, %lor.lhs.false20.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %s1.addr.0.i, i64 1, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !495), !dbg !502
  %incdec.ptr47.i = getelementptr inbounds i8* %s2.addr.0.i, i64 1, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr47.i}, i64 0, metadata !497), !dbg !502
  br label %for.cond.i, !dbg !502

for.end.i:                                        ; preds = %for.cond.i
  %cmp48.i = icmp sgt i32 %valid.0.i, 0, !dbg !507
  br i1 %cmp48.i, label %cond.true.i, label %simple_distance.exit, !dbg !507

cond.true.i:                                      ; preds = %for.end.i
  %conv50.i = sitofp i32 %diff.0.i to float, !dbg !507
  %conv51.i = sitofp i32 %valid.0.i to float, !dbg !507
  %div.i = fdiv float %conv50.i, %conv51.i, !dbg !507
  %phitmp = fpext float %div.i to double, !dbg !507
  br label %simple_distance.exit, !dbg !507

simple_distance.exit:                             ; preds = %for.end.i, %cond.true.i
  %cond.i = phi double [ %phitmp, %cond.true.i ], [ 0.000000e+00, %for.end.i ]
  %cmp40 = fcmp ugt double %cond.i, %sub39, !dbg !483
  br i1 %cmp40, label %for.cond26, label %if.then, !dbg !483

if.then:                                          ; preds = %simple_distance.exit
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !239), !dbg !508
  %indvars.iv.next113 = add i64 %indvars.iv112, -1, !dbg !492
  %sub44 = add nsw i32 %na.2.ph, -1, !dbg !508
  %arrayidx46 = getelementptr inbounds i32* %0, i64 %indvars.iv.next113, !dbg !508
  %14 = load i32* %arrayidx46, align 4, !dbg !508, !tbaa !314
  store i32 %14, i32* %arrayidx33, align 4, !dbg !508, !tbaa !314
  tail call void @llvm.dbg.value(metadata !{i32 %sub44}, i64 0, metadata !233), !dbg !508
  %arrayidx51 = getelementptr inbounds i32* %1, i64 %indvars.iv109, !dbg !509
  store i32 %10, i32* %arrayidx51, align 4, !dbg !509, !tbaa !314
  %inc52 = add nsw i32 %nb.2.ph, 1, !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32 %inc52}, i64 0, metadata !235), !dbg !509
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !492
  br label %for.cond26.outer, !dbg !492

while.end:                                        ; preds = %while.cond15.loopexit, %while.body
  %na.1.lcssa = phi i32 [ %sub, %while.body ], [ %na.2.ph, %while.cond15.loopexit ]
  %nb.1.lcssa = phi i32 [ %inc14, %while.body ], [ %nb.2.ph, %while.cond15.loopexit ]
  %inc56 = add nsw i32 %nc.0103, 1, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %inc56}, i64 0, metadata !237), !dbg !510
  %cmp8 = icmp sgt i32 %na.1.lcssa, 0, !dbg !482
  br i1 %cmp8, label %while.body, label %while.end57, !dbg !482

while.end57:                                      ; preds = %entry, %while.end, %while.cond.preheader
  %nc.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %inc56, %while.end ], [ 0, %entry ]
  tail call void @free(i8* %call) #6, !dbg !511
  tail call void @free(i8* %call3) #6, !dbg !512
  store i32* %2, i32** %ret_c, align 8, !dbg !513, !tbaa !296
  store i32 %nc.0.lcssa, i32* %ret_nc, align 4, !dbg !514, !tbaa !314
  ret void, !dbg !515
}

; Function Attrs: nounwind optsize uwtable
define void @PositionBasedWeights(i8** nocapture %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
entry:
  %rescount = alloca [26 x i32], align 16
  %0 = bitcast [26 x i32]* %rescount to i8*
  call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !101), !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !102), !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !103), !dbg !516
  call void @llvm.dbg.value(metadata !{float* %wgt}, i64 0, metadata !104), !dbg !516
  call void @llvm.lifetime.start(i64 104, i8* %0) #4, !dbg !517
  call void @llvm.dbg.declare(metadata !{[26 x i32]* %rescount}, metadata !105), !dbg !517
  call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #6, !dbg !518
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !111), !dbg !519
  %cmp141 = icmp sgt i32 %alen, 0, !dbg !519
  br i1 %cmp141, label %for.cond1.preheader.lr.ph, label %for.cond79.preheader, !dbg !519

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp5135 = icmp sgt i32 %nseq, 0, !dbg !520
  br label %for.cond1.preheader, !dbg !519

for.cond1.preheader:                              ; preds = %for.inc76, %for.cond1.preheader.lr.ph
  %indvars.iv159 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next160, %for.inc76 ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 104, i32 16, i1 false), !dbg !521
  br i1 %cmp5135, label %for.body6.lr.ph, label %for.body29, !dbg !520

for.cond79.preheader:                             ; preds = %for.inc76, %entry
  %cmp80132 = icmp sgt i32 %nseq, 0, !dbg !523
  br i1 %cmp80132, label %for.body82, label %for.end92, !dbg !523

for.body6.lr.ph:                                  ; preds = %for.cond1.preheader
  %call = call i16** @__ctype_b_loc() #8, !dbg !525
  br label %for.body6, !dbg !520

for.body6:                                        ; preds = %for.inc23, %for.body6.lr.ph
  %indvars.iv147 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next148, %for.inc23 ]
  %arrayidx9 = getelementptr inbounds i8** %aseq, i64 %indvars.iv147, !dbg !525
  %1 = load i8** %arrayidx9, align 8, !dbg !525, !tbaa !296
  %arrayidx10 = getelementptr inbounds i8* %1, i64 %indvars.iv159, !dbg !525
  %2 = load i8* %arrayidx10, align 1, !dbg !525, !tbaa !292
  %idxprom11 = sext i8 %2 to i64, !dbg !525
  %3 = load i16** %call, align 8, !dbg !525, !tbaa !296
  %arrayidx12 = getelementptr inbounds i16* %3, i64 %idxprom11, !dbg !525
  %4 = load i16* %arrayidx12, align 2, !dbg !525, !tbaa !399
  %and = and i16 %4, 1024, !dbg !525
  %tobool = icmp eq i16 %and, 0, !dbg !525
  br i1 %tobool, label %for.inc23, label %if.then, !dbg !525

if.then:                                          ; preds = %for.body6
  %conv = sext i8 %2 to i32, !dbg !525
  %call19 = call i32 @toupper(i32 %conv) #6, !dbg !526
  call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !114), !dbg !526
  %sub = add nsw i32 %call19, -65, !dbg !528
  %idxprom20 = sext i32 %sub to i64, !dbg !528
  %arrayidx21 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %idxprom20, !dbg !528
  %5 = load i32* %arrayidx21, align 4, !dbg !528, !tbaa !314
  %inc22 = add nsw i32 %5, 1, !dbg !528
  store i32 %inc22, i32* %arrayidx21, align 4, !dbg !528, !tbaa !314
  br label %for.inc23, !dbg !528

for.inc23:                                        ; preds = %for.body6, %if.then
  %indvars.iv.next148 = add i64 %indvars.iv147, 1, !dbg !520
  %lftr.wideiv149 = trunc i64 %indvars.iv.next148 to i32, !dbg !520
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %nseq, !dbg !520
  br i1 %exitcond150, label %for.body29, label %for.body6, !dbg !520

for.body29:                                       ; preds = %for.cond1.preheader, %for.inc23, %for.body29
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %for.body29 ], [ 0, %for.inc23 ], [ 0, %for.cond1.preheader ]
  %nres.0138 = phi i32 [ %inc35.nres.0, %for.body29 ], [ 0, %for.inc23 ], [ 0, %for.cond1.preheader ]
  %arrayidx31 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %indvars.iv151, !dbg !529
  %6 = load i32* %arrayidx31, align 4, !dbg !529, !tbaa !314
  %cmp32 = icmp sgt i32 %6, 0, !dbg !529
  %inc35 = zext i1 %cmp32 to i32, !dbg !529
  %inc35.nres.0 = add nsw i32 %inc35, %nres.0138, !dbg !529
  %indvars.iv.next152 = add i64 %indvars.iv151, 1, !dbg !531
  %lftr.wideiv153 = trunc i64 %indvars.iv.next152 to i32, !dbg !531
  %exitcond154 = icmp eq i32 %lftr.wideiv153, 26, !dbg !531
  br i1 %exitcond154, label %for.cond40.loopexit, label %for.body29, !dbg !531

for.cond40.loopexit:                              ; preds = %for.body29
  br i1 %cmp5135, label %for.body43.lr.ph, label %for.inc76, !dbg !532

for.body43.lr.ph:                                 ; preds = %for.cond40.loopexit
  %call50 = call i16** @__ctype_b_loc() #8, !dbg !533
  br label %for.body43, !dbg !532

for.body43:                                       ; preds = %for.inc73, %for.body43.lr.ph
  %indvars.iv155 = phi i64 [ 0, %for.body43.lr.ph ], [ %indvars.iv.next156, %for.inc73 ]
  %arrayidx46 = getelementptr inbounds i8** %aseq, i64 %indvars.iv155, !dbg !533
  %7 = load i8** %arrayidx46, align 8, !dbg !533, !tbaa !296
  %arrayidx47 = getelementptr inbounds i8* %7, i64 %indvars.iv159, !dbg !533
  %8 = load i8* %arrayidx47, align 1, !dbg !533, !tbaa !292
  %idxprom49 = sext i8 %8 to i64, !dbg !533
  %9 = load i16** %call50, align 8, !dbg !533, !tbaa !296
  %arrayidx51 = getelementptr inbounds i16* %9, i64 %idxprom49, !dbg !533
  %10 = load i16* %arrayidx51, align 2, !dbg !533, !tbaa !399
  %and53 = and i16 %10, 1024, !dbg !533
  %tobool54 = icmp eq i16 %and53, 0, !dbg !533
  br i1 %tobool54, label %for.inc73, label %if.then55, !dbg !533

if.then55:                                        ; preds = %for.body43
  %conv48 = sext i8 %8 to i32, !dbg !533
  %call62 = call i32 @toupper(i32 %conv48) #6, !dbg !534
  call void @llvm.dbg.value(metadata !{i32 %call62}, i64 0, metadata !119), !dbg !534
  %sub63 = add nsw i32 %call62, -65, !dbg !536
  %idxprom64 = sext i32 %sub63 to i64, !dbg !536
  %arrayidx65 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %idxprom64, !dbg !536
  %11 = load i32* %arrayidx65, align 4, !dbg !536, !tbaa !314
  %mul = mul nsw i32 %11, %inc35.nres.0, !dbg !536
  %conv66 = sitofp i32 %mul to float, !dbg !536
  %conv67 = fpext float %conv66 to double, !dbg !536
  %div = fdiv double 1.000000e+00, %conv67, !dbg !536
  %arrayidx69 = getelementptr inbounds float* %wgt, i64 %indvars.iv155, !dbg !536
  %12 = load float* %arrayidx69, align 4, !dbg !536, !tbaa !291
  %conv70 = fpext float %12 to double, !dbg !536
  %add = fadd double %div, %conv70, !dbg !536
  %conv71 = fptrunc double %add to float, !dbg !536
  store float %conv71, float* %arrayidx69, align 4, !dbg !536, !tbaa !291
  br label %for.inc73, !dbg !536

for.inc73:                                        ; preds = %for.body43, %if.then55
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !532
  %lftr.wideiv157 = trunc i64 %indvars.iv.next156 to i32, !dbg !532
  %exitcond158 = icmp eq i32 %lftr.wideiv157, %nseq, !dbg !532
  br i1 %exitcond158, label %for.inc76, label %for.body43, !dbg !532

for.inc76:                                        ; preds = %for.inc73, %for.cond40.loopexit
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !519
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32, !dbg !519
  %exitcond162 = icmp eq i32 %lftr.wideiv161, %alen, !dbg !519
  br i1 %exitcond162, label %for.cond79.preheader, label %for.cond1.preheader, !dbg !519

for.body82:                                       ; preds = %for.cond79.preheader, %for.body82
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body82 ], [ 0, %for.cond79.preheader ]
  %arrayidx84 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !537
  %13 = load i8** %arrayidx84, align 8, !dbg !537, !tbaa !296
  %call85 = call i32 @DealignedLength(i8* %13) #6, !dbg !537
  %conv86 = sitofp i32 %call85 to float, !dbg !537
  %arrayidx88 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !537
  %14 = load float* %arrayidx88, align 4, !dbg !537, !tbaa !291
  %div89 = fdiv float %14, %conv86, !dbg !537
  store float %div89, float* %arrayidx88, align 4, !dbg !537, !tbaa !291
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !523
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !523
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !523
  br i1 %exitcond, label %for.end92, label %for.body82, !dbg !523

for.end92:                                        ; preds = %for.body82, %for.cond79.preheader
  %conv93 = sitofp i32 %nseq to float, !dbg !538
  %call94 = call float @FSum(float* %wgt, i32 %nseq) #6, !dbg !538
  %div95 = fdiv float %conv93, %call94, !dbg !538
  call void @llvm.dbg.value(metadata !{float %div95}, i64 0, metadata !113), !dbg !538
  call void @FScale(float* %wgt, i32 %nseq, float %div95) #6, !dbg !539
  call void @llvm.lifetime.end(i64 104, i8* %0) #4, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #2

; Function Attrs: optsize
declare float @FSum(float*, i32) #2

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #2

; Function Attrs: nounwind optsize uwtable
define void @FilterAlignment(%struct.msa_struct* %msa, float %cutoff, %struct.msa_struct** %ret_new) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !199), !dbg !542
  tail call void @llvm.dbg.value(metadata !{float %cutoff}, i64 0, metadata !200), !dbg !542
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct** %ret_new}, i64 0, metadata !201), !dbg !542
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !543
  %0 = load i32* %nseq, align 4, !dbg !543, !tbaa !314
  %conv = sext i32 %0 to i64, !dbg !543
  %mul = shl nsw i64 %conv, 2, !dbg !543
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 532, i64 %mul) #6, !dbg !543
  %1 = bitcast i8* %call to i32*, !dbg !543
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !203), !dbg !543
  %2 = load i32* %nseq, align 4, !dbg !544, !tbaa !314
  %conv2 = sext i32 %2 to i64, !dbg !544
  %mul3 = shl nsw i64 %conv2, 2, !dbg !544
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 533, i64 %mul3) #6, !dbg !544
  %3 = bitcast i8* %call4 to i32*, !dbg !544
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !204), !dbg !544
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !206), !dbg !545
  %4 = load i32* %nseq, align 4, !dbg !545, !tbaa !314
  %cmp83 = icmp sgt i32 %4, 0, !dbg !545
  br i1 %cmp83, label %for.body, label %for.end49, !dbg !545

for.cond7.preheader:                              ; preds = %for.body
  %cmp979 = icmp sgt i32 %5, 0, !dbg !547
  br i1 %cmp979, label %for.cond12.preheader.lr.ph, label %for.end49, !dbg !547

for.cond12.preheader.lr.ph:                       ; preds = %for.cond7.preheader
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !549
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !553
  br label %for.cond12.preheader, !dbg !547

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv89, !dbg !545
  store i32 0, i32* %arrayidx, align 4, !dbg !545, !tbaa !314
  %indvars.iv.next90 = add i64 %indvars.iv89, 1, !dbg !545
  %5 = load i32* %nseq, align 4, !dbg !545, !tbaa !314
  %6 = trunc i64 %indvars.iv.next90 to i32, !dbg !545
  %cmp = icmp slt i32 %6, %5, !dbg !545
  br i1 %cmp, label %for.body, label %for.cond7.preheader, !dbg !545

for.cond12.preheader:                             ; preds = %for.cond12.preheader.lr.ph, %for.inc47
  %indvars.iv87 = phi i64 [ 0, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next88, %for.inc47 ]
  %nnew.080 = phi i32 [ 0, %for.cond12.preheader.lr.ph ], [ %nnew.1, %for.inc47 ]
  %cmp1377 = icmp sgt i32 %nnew.080, 0, !dbg !555
  br i1 %cmp1377, label %for.body15, label %if.then40, !dbg !555

for.cond12:                                       ; preds = %for.body15
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !555
  %cmp13 = icmp slt i32 %7, %nnew.080, !dbg !555
  br i1 %cmp13, label %for.body15, label %if.then40, !dbg !555

for.body15:                                       ; preds = %for.cond12.preheader, %for.cond12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond12 ], [ 0, %for.cond12.preheader ]
  %8 = load i8*** %aseq, align 8, !dbg !549, !tbaa !296
  %arrayidx17 = getelementptr inbounds i8** %8, i64 %indvars.iv87, !dbg !549
  %9 = load i8** %arrayidx17, align 8, !dbg !549, !tbaa !296
  %arrayidx19 = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !549
  %10 = load i32* %arrayidx19, align 4, !dbg !549, !tbaa !314
  %idxprom20 = sext i32 %10 to i64, !dbg !549
  %arrayidx22 = getelementptr inbounds i8** %8, i64 %idxprom20, !dbg !549
  %11 = load i8** %arrayidx22, align 8, !dbg !549, !tbaa !296
  %call23 = tail call float @PairwiseIdentity(i8* %9, i8* %11) #6, !dbg !549
  tail call void @llvm.dbg.value(metadata !{float %call23}, i64 0, metadata !205), !dbg !549
  %cmp24 = fcmp ogt float %call23, %cutoff, !dbg !556
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !555
  br i1 %cmp24, label %if.then, label %for.cond12, !dbg !556

if.then:                                          ; preds = %for.body15
  tail call void @llvm.dbg.value(metadata !557, i64 0, metadata !208), !dbg !558
  %12 = load i8*** %sqname, align 8, !dbg !553, !tbaa !296
  %arrayidx27 = getelementptr inbounds i8** %12, i64 %indvars.iv87, !dbg !553
  %13 = load i8** %arrayidx27, align 8, !dbg !553, !tbaa !296
  %conv28 = fpext float %call23 to double, !dbg !553
  %14 = load i32* %arrayidx19, align 4, !dbg !553, !tbaa !314
  %idxprom31 = sext i32 %14 to i64, !dbg !553
  %arrayidx33 = getelementptr inbounds i8** %12, i64 %idxprom31, !dbg !553
  %15 = load i8** %arrayidx33, align 8, !dbg !553, !tbaa !296
  %call34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), i8* %13, double %conv28, i8* %15) #6, !dbg !553
  br label %for.inc47

if.then40:                                        ; preds = %for.cond12, %for.cond12.preheader
  %inc41 = add nsw i32 %nnew.080, 1, !dbg !559
  tail call void @llvm.dbg.value(metadata !{i32 %inc41}, i64 0, metadata !202), !dbg !559
  %idxprom42 = sext i32 %nnew.080 to i64, !dbg !559
  %arrayidx43 = getelementptr inbounds i32* %1, i64 %idxprom42, !dbg !559
  %16 = trunc i64 %indvars.iv87 to i32, !dbg !559
  store i32 %16, i32* %arrayidx43, align 4, !dbg !559, !tbaa !314
  %arrayidx45 = getelementptr inbounds i32* %3, i64 %indvars.iv87, !dbg !561
  store i32 1, i32* %arrayidx45, align 4, !dbg !561, !tbaa !314
  br label %for.inc47, !dbg !562

for.inc47:                                        ; preds = %if.then, %if.then40
  %nnew.1 = phi i32 [ %inc41, %if.then40 ], [ %nnew.080, %if.then ]
  %indvars.iv.next88 = add i64 %indvars.iv87, 1, !dbg !547
  %17 = load i32* %nseq, align 4, !dbg !547, !tbaa !314
  %18 = trunc i64 %indvars.iv.next88 to i32, !dbg !547
  %cmp9 = icmp slt i32 %18, %17, !dbg !547
  br i1 %cmp9, label %for.cond12.preheader, label %for.end49, !dbg !547

for.end49:                                        ; preds = %entry, %for.inc47, %for.cond7.preheader
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %3, %struct.msa_struct** %ret_new) #6, !dbg !563
  tail call void @free(i8* %call) #6, !dbg !564
  tail call void @free(i8* %call4) #6, !dbg !565
  ret void, !dbg !566
}

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #2

; Function Attrs: nounwind optsize uwtable
define void @SampleAlignment(%struct.msa_struct* %msa, i32 %sample, %struct.msa_struct** %ret_new) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !213), !dbg !567
  tail call void @llvm.dbg.value(metadata !{i32 %sample}, i64 0, metadata !214), !dbg !567
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct** %ret_new}, i64 0, metadata !215), !dbg !567
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !568
  %0 = load i32* %nseq, align 4, !dbg !568, !tbaa !314
  %conv = sext i32 %0 to i64, !dbg !568
  %mul = shl nsw i64 %conv, 2, !dbg !568
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 596, i64 %mul) #6, !dbg !568
  %1 = bitcast i8* %call to i32*, !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !216), !dbg !568
  %2 = load i32* %nseq, align 4, !dbg !569, !tbaa !314
  %conv2 = sext i32 %2 to i64, !dbg !569
  %mul3 = shl nsw i64 %conv2, 2, !dbg !569
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 597, i64 %mul3) #6, !dbg !569
  %3 = bitcast i8* %call4 to i32*, !dbg !569
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !217), !dbg !569
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !218), !dbg !570
  %4 = load i32* %nseq, align 4, !dbg !570, !tbaa !314
  %cmp70 = icmp sgt i32 %4, 0, !dbg !570
  br i1 %cmp70, label %for.body, label %for.end, !dbg !570

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv73, !dbg !572
  %5 = trunc i64 %indvars.iv73 to i32, !dbg !572
  store i32 %5, i32* %arrayidx, align 4, !dbg !572, !tbaa !314
  %arrayidx8 = getelementptr inbounds i32* %3, i64 %indvars.iv73, !dbg !574
  store i32 0, i32* %arrayidx8, align 4, !dbg !574, !tbaa !314
  %indvars.iv.next74 = add i64 %indvars.iv73, 1, !dbg !570
  %6 = load i32* %nseq, align 4, !dbg !570, !tbaa !314
  %7 = trunc i64 %indvars.iv.next74 to i32, !dbg !570
  %cmp = icmp slt i32 %7, %6, !dbg !570
  br i1 %cmp, label %for.body, label %for.end, !dbg !570

for.end:                                          ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %4, %entry ], [ %6, %for.body ]
  %cmp10 = icmp sgt i32 %.lcssa, %sample, !dbg !575
  tail call void @llvm.dbg.value(metadata !{i32 %.lcssa}, i64 0, metadata !214), !dbg !575
  %sample. = select i1 %cmp10, i32 %sample, i32 %.lcssa, !dbg !575
  tail call void @llvm.dbg.value(metadata !{i32 %.lcssa}, i64 0, metadata !220), !dbg !576
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !218), !dbg !576
  %cmp1567 = icmp sgt i32 %sample., 0, !dbg !576
  br i1 %cmp1567, label %for.body17.lr.ph, label %for.end39, !dbg !576

for.body17.lr.ph:                                 ; preds = %for.end
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !578
  %8 = sext i32 %.lcssa to i64
  %9 = xor i32 %.lcssa, -1, !dbg !576
  %10 = xor i32 %sample, -1, !dbg !576
  %11 = icmp sgt i32 %9, %10, !dbg !576
  %smax = select i1 %11, i32 %9, i32 %10, !dbg !576
  %12 = xor i32 %smax, -1, !dbg !576
  br label %for.body17, !dbg !576

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %indvars.iv = phi i64 [ %8, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %i.168 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc38, %for.body17 ]
  %call18 = tail call double @sre_random() #6, !dbg !580
  %13 = trunc i64 %indvars.iv to i32, !dbg !580
  %conv19 = sitofp i32 %13 to double, !dbg !580
  %mul20 = fmul double %conv19, %call18, !dbg !580
  %conv21 = fptosi double %mul20 to i32, !dbg !580
  tail call void @llvm.dbg.value(metadata !{i32 %conv21}, i64 0, metadata !219), !dbg !580
  %idxprom22 = sext i32 %conv21 to i64, !dbg !578
  %arrayidx23 = getelementptr inbounds i32* %1, i64 %idxprom22, !dbg !578
  %14 = load i32* %arrayidx23, align 4, !dbg !578, !tbaa !314
  %idxprom26 = sext i32 %14 to i64, !dbg !578
  %15 = load i8*** %sqname, align 8, !dbg !578, !tbaa !296
  %arrayidx27 = getelementptr inbounds i8** %15, i64 %idxprom26, !dbg !578
  %16 = load i8** %arrayidx27, align 8, !dbg !578, !tbaa !296
  %call28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i32 %14, i8* %16) #6, !dbg !578
  %17 = load i32* %arrayidx23, align 4, !dbg !581, !tbaa !314
  %idxprom31 = sext i32 %17 to i64, !dbg !581
  %arrayidx32 = getelementptr inbounds i32* %3, i64 %idxprom31, !dbg !581
  store i32 1, i32* %arrayidx32, align 4, !dbg !581, !tbaa !314
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !576
  %arrayidx34 = getelementptr inbounds i32* %1, i64 %indvars.iv.next, !dbg !582
  %18 = load i32* %arrayidx34, align 4, !dbg !582, !tbaa !314
  store i32 %18, i32* %arrayidx23, align 4, !dbg !582, !tbaa !314
  %inc38 = add nsw i32 %i.168, 1, !dbg !576
  tail call void @llvm.dbg.value(metadata !{i32 %inc38}, i64 0, metadata !218), !dbg !576
  %exitcond = icmp eq i32 %inc38, %12, !dbg !576
  br i1 %exitcond, label %for.end39, label %for.body17, !dbg !576

for.end39:                                        ; preds = %for.body17, %for.end
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %3, %struct.msa_struct** %ret_new) #6, !dbg !583
  tail call void @free(i8* %call) #6, !dbg !584
  tail call void @free(i8* %call4) #6, !dbg !585
  ret void, !dbg !586
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !24, metadata !25, metadata !24, metadata !24, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"clust_strategy", i32 273, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [clust_strategy] [line 273, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"CLUSTER_MEAN", i64 0} ; [ DW_TAG_enumerator ] [CLUSTER_MEAN :: 0]
!7 = metadata !{i32 786472, metadata !"CLUSTER_MAX", i64 1} ; [ DW_TAG_enumerator ] [CLUSTER_MAX :: 1]
!8 = metadata !{i32 786472, metadata !"CLUSTER_MIN", i64 2} ; [ DW_TAG_enumerator ] [CLUSTER_MIN :: 2]
!9 = metadata !{i32 786436, metadata !10, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!12 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!13 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!14 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!15 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!16 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!17 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!18 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!19 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!20 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!21 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!22 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!23 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!24 = metadata !{i32 0}
!25 = metadata !{metadata !26, metadata !59, metadata !86, metadata !99, metadata !122, metadata !209, metadata !221, metadata !241, metadata !252, metadata !260, metadata !274}
!26 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"GSCWeights", metadata !"GSCWeights", metadata !"", i32 46, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float*)* @GSCWeights, null, null, metadata !36, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [GSCWeights]
!27 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !30, metadata !33, metadata !33, metadata !34}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!35 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !43, metadata !55, metadata !56, metadata !57, metadata !58}
!37 = metadata !{i32 786689, metadata !26, metadata !"aseq", metadata !27, i32 16777262, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 46]
!38 = metadata !{i32 786689, metadata !26, metadata !"nseq", metadata !27, i32 33554478, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 46]
!39 = metadata !{i32 786689, metadata !26, metadata !"alen", metadata !27, i32 50331694, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 46]
!40 = metadata !{i32 786689, metadata !26, metadata !"wgt", metadata !27, i32 67108910, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 46]
!41 = metadata !{i32 786688, metadata !26, metadata !"dmx", metadata !27, i32 48, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 48]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786688, metadata !26, metadata !"tree", metadata !27, i32 49, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 49]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from phylo_s]
!45 = metadata !{i32 786451, metadata !4, null, metadata !"phylo_s", i32 258, i64 320, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [phylo_s] [line 258, size 320, align 64, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!47 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"parent", i32 259, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [parent] [line 259, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"left", i32 260, i64 32, i64 32, i64 32, i32 0, metadata !33} ; [ DW_TAG_member ] [left] [line 260, size 32, align 32, offset 32] [from int]
!49 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"right", i32 261, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [right] [line 261, size 32, align 32, offset 64] [from int]
!50 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"diff", i32 262, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [diff] [line 262, size 32, align 32, offset 96] [from float]
!51 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"lblen", i32 263, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [lblen] [line 263, size 32, align 32, offset 128] [from float]
!52 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"rblen", i32 264, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [rblen] [line 264, size 32, align 32, offset 160] [from float]
!53 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"is_in", i32 265, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [is_in] [line 265, size 64, align 64, offset 192] [from ]
!54 = metadata !{i32 786445, metadata !4, metadata !45, metadata !"incnum", i32 266, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [incnum] [line 266, size 32, align 32, offset 256] [from int]
!55 = metadata !{i32 786688, metadata !26, metadata !"lwt", metadata !27, i32 50, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lwt] [line 50]
!56 = metadata !{i32 786688, metadata !26, metadata !"rwt", metadata !27, i32 50, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rwt] [line 50]
!57 = metadata !{i32 786688, metadata !26, metadata !"fwt", metadata !27, i32 51, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fwt] [line 51]
!58 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !27, i32 52, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!59 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"VoronoiWeights", metadata !"VoronoiWeights", metadata !"", i32 154, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float*)* @VoronoiWeights, null, null, metadata !60, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [VoronoiWeights]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !70, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!61 = metadata !{i32 786689, metadata !59, metadata !"aseq", metadata !27, i32 16777370, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 154]
!62 = metadata !{i32 786689, metadata !59, metadata !"nseq", metadata !27, i32 33554586, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 154]
!63 = metadata !{i32 786689, metadata !59, metadata !"alen", metadata !27, i32 50331802, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 154]
!64 = metadata !{i32 786689, metadata !59, metadata !"wgt", metadata !27, i32 67109018, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 154]
!65 = metadata !{i32 786688, metadata !59, metadata !"dmx", metadata !27, i32 156, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 156]
!66 = metadata !{i32 786688, metadata !59, metadata !"halfmin", metadata !27, i32 157, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [halfmin] [line 157]
!67 = metadata !{i32 786688, metadata !59, metadata !"psym", metadata !27, i32 158, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psym] [line 158]
!68 = metadata !{i32 786688, metadata !59, metadata !"nsym", metadata !27, i32 159, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsym] [line 159]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!70 = metadata !{i32 786688, metadata !59, metadata !"symseen", metadata !27, i32 160, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symseen] [line 160]
!71 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 864, i64 32, i32 0, i32 0, metadata !33, metadata !72, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 32, offset 0] [from int]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786465, i64 0, i64 27}       ; [ DW_TAG_subrange_type ] [0, 26]
!74 = metadata !{i32 786688, metadata !59, metadata !"randseq", metadata !27, i32 161, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [randseq] [line 161]
!75 = metadata !{i32 786688, metadata !59, metadata !"acol", metadata !27, i32 162, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acol] [line 162]
!76 = metadata !{i32 786688, metadata !59, metadata !"idx", metadata !27, i32 163, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 163]
!77 = metadata !{i32 786688, metadata !59, metadata !"symidx", metadata !27, i32 164, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symidx] [line 164]
!78 = metadata !{i32 786688, metadata !59, metadata !"i", metadata !27, i32 165, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 165]
!79 = metadata !{i32 786688, metadata !59, metadata !"min", metadata !27, i32 166, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 166]
!80 = metadata !{i32 786688, metadata !59, metadata !"dist", metadata !27, i32 167, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dist] [line 167]
!81 = metadata !{i32 786688, metadata !59, metadata !"challenge", metadata !27, i32 168, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [challenge] [line 168]
!82 = metadata !{i32 786688, metadata !59, metadata !"champion", metadata !27, i32 168, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [champion] [line 168]
!83 = metadata !{i32 786688, metadata !59, metadata !"itscale", metadata !27, i32 169, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itscale] [line 169]
!84 = metadata !{i32 786688, metadata !59, metadata !"iteration", metadata !27, i32 170, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iteration] [line 170]
!85 = metadata !{i32 786688, metadata !59, metadata !"best", metadata !27, i32 171, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 171]
!86 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"BlosumWeights", metadata !"BlosumWeights", metadata !"", i32 394, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float, float*)* @BlosumWeights, null, null, metadata !89, i32 395} ; [ DW_TAG_subprogram ] [line 394] [def] [scope 395] [BlosumWeights]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{null, metadata !30, metadata !33, metadata !33, metadata !35, metadata !34}
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!90 = metadata !{i32 786689, metadata !86, metadata !"aseqs", metadata !27, i32 16777610, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 394]
!91 = metadata !{i32 786689, metadata !86, metadata !"nseq", metadata !27, i32 33554826, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 394]
!92 = metadata !{i32 786689, metadata !86, metadata !"alen", metadata !27, i32 50332042, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 394]
!93 = metadata !{i32 786689, metadata !86, metadata !"maxid", metadata !27, i32 67109258, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxid] [line 394]
!94 = metadata !{i32 786689, metadata !86, metadata !"wgt", metadata !27, i32 83886474, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 394]
!95 = metadata !{i32 786688, metadata !86, metadata !"c", metadata !27, i32 396, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 396]
!96 = metadata !{i32 786688, metadata !86, metadata !"nc", metadata !27, i32 396, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 396]
!97 = metadata !{i32 786688, metadata !86, metadata !"nmem", metadata !27, i32 397, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmem] [line 397]
!98 = metadata !{i32 786688, metadata !86, metadata !"i", metadata !27, i32 398, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 398]
!99 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"PositionBasedWeights", metadata !"PositionBasedWeights", metadata !"", i32 463, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float*)* @PositionBasedWeights, null, null, metadata !100, i32 464} ; [ DW_TAG_subprogram ] [line 463] [def] [scope 464] [PositionBasedWeights]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !119}
!101 = metadata !{i32 786689, metadata !99, metadata !"aseq", metadata !27, i32 16777679, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 463]
!102 = metadata !{i32 786689, metadata !99, metadata !"nseq", metadata !27, i32 33554895, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 463]
!103 = metadata !{i32 786689, metadata !99, metadata !"alen", metadata !27, i32 50332111, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 463]
!104 = metadata !{i32 786689, metadata !99, metadata !"wgt", metadata !27, i32 67109327, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 463]
!105 = metadata !{i32 786688, metadata !99, metadata !"rescount", metadata !27, i32 465, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rescount] [line 465]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 832, i64 32, i32 0, i32 0, metadata !33, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 832, align 32, offset 0] [from int]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 26}      ; [ DW_TAG_subrange_type ] [0, 25]
!109 = metadata !{i32 786688, metadata !99, metadata !"nres", metadata !27, i32 466, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nres] [line 466]
!110 = metadata !{i32 786688, metadata !99, metadata !"idx", metadata !27, i32 467, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 467]
!111 = metadata !{i32 786688, metadata !99, metadata !"pos", metadata !27, i32 467, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 467]
!112 = metadata !{i32 786688, metadata !99, metadata !"x", metadata !27, i32 468, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 468]
!113 = metadata !{i32 786688, metadata !99, metadata !"norm", metadata !27, i32 469, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm] [line 469]
!114 = metadata !{i32 786688, metadata !115, metadata !"__res", metadata !27, i32 477, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 477]
!115 = metadata !{i32 786443, metadata !1, metadata !116, i32 477, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 475, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 473, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!118 = metadata !{i32 786443, metadata !1, metadata !99, i32 472, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!119 = metadata !{i32 786688, metadata !120, metadata !"__res", metadata !27, i32 485, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 485]
!120 = metadata !{i32 786443, metadata !1, metadata !121, i32 485, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!121 = metadata !{i32 786443, metadata !1, metadata !117, i32 483, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!122 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"FilterAlignment", metadata !"FilterAlignment", metadata !"", i32 521, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, float, %struct.msa_struct**)* @FilterAlignment, null, null, metadata !198, i32 522} ; [ DW_TAG_subprogram ] [line 521] [def] [scope 522] [FilterAlignment]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{null, metadata !125, metadata !35, metadata !197}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!126 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!127 = metadata !{i32 786451, metadata !128, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !129, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!128 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !152, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !164, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!130 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!132 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!133 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!134 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !33} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!135 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!136 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !33} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!137 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!138 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!139 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!140 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!141 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!142 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!143 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!144 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !30} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!145 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!146 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!147 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!148 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !149} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !35, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!152 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !153} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !33, metadata !150, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!154 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !30} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!155 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !33} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!156 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !33} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!157 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!158 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !30} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!159 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !33} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!160 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !33} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!161 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !30} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!162 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !163} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!164 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !165} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!166 = metadata !{i32 786454, metadata !128, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!167 = metadata !{i32 786451, metadata !168, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!168 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!169 = metadata !{metadata !170, metadata !178, metadata !179, metadata !180}
!170 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!173 = metadata !{i32 786451, metadata !168, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !176, metadata !177}
!175 = metadata !{i32 786445, metadata !168, metadata !173, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!176 = metadata !{i32 786445, metadata !168, metadata !173, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!177 = metadata !{i32 786445, metadata !168, metadata !173, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !172} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!178 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!179 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!180 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!181 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !33} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!182 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !30} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!183 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !30} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!184 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !165} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!185 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !33} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!186 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !30} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!187 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !163} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!188 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !165} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!189 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !33} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!190 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !165} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!191 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !33} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!192 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !33} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!193 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !69} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!194 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !69} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!195 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!196 = metadata !{i32 786445, metadata !128, metadata !127, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !33} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!199 = metadata !{i32 786689, metadata !122, metadata !"msa", metadata !27, i32 16777737, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 521]
!200 = metadata !{i32 786689, metadata !122, metadata !"cutoff", metadata !27, i32 33554953, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cutoff] [line 521]
!201 = metadata !{i32 786689, metadata !122, metadata !"ret_new", metadata !27, i32 50332169, metadata !197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_new] [line 521]
!202 = metadata !{i32 786688, metadata !122, metadata !"nnew", metadata !27, i32 523, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnew] [line 523]
!203 = metadata !{i32 786688, metadata !122, metadata !"list", metadata !27, i32 524, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 524]
!204 = metadata !{i32 786688, metadata !122, metadata !"useme", metadata !27, i32 525, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [useme] [line 525]
!205 = metadata !{i32 786688, metadata !122, metadata !"ident", metadata !27, i32 526, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ident] [line 526]
!206 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !27, i32 527, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 527]
!207 = metadata !{i32 786688, metadata !122, metadata !"j", metadata !27, i32 527, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 527]
!208 = metadata !{i32 786688, metadata !122, metadata !"remove", metadata !27, i32 528, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [remove] [line 528]
!209 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"SampleAlignment", metadata !"SampleAlignment", metadata !"", i32 587, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i32, %struct.msa_struct**)* @SampleAlignment, null, null, metadata !212, i32 588} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 588] [SampleAlignment]
!210 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!211 = metadata !{null, metadata !125, metadata !33, metadata !197}
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!213 = metadata !{i32 786689, metadata !209, metadata !"msa", metadata !27, i32 16777803, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 587]
!214 = metadata !{i32 786689, metadata !209, metadata !"sample", metadata !27, i32 33555019, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sample] [line 587]
!215 = metadata !{i32 786689, metadata !209, metadata !"ret_new", metadata !27, i32 50332235, metadata !197, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_new] [line 587]
!216 = metadata !{i32 786688, metadata !209, metadata !"list", metadata !27, i32 589, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 589]
!217 = metadata !{i32 786688, metadata !209, metadata !"useme", metadata !27, i32 590, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [useme] [line 590]
!218 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !27, i32 591, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 591]
!219 = metadata !{i32 786688, metadata !209, metadata !"idx", metadata !27, i32 591, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 591]
!220 = metadata !{i32 786688, metadata !209, metadata !"len", metadata !27, i32 592, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 592]
!221 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"SingleLinkCluster", metadata !"SingleLinkCluster", metadata !"", i32 704, metadata !222, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, i32, float, i32**, i32*)* @SingleLinkCluster, null, null, metadata !225, i32 706} ; [ DW_TAG_subprogram ] [line 704] [def] [scope 706] [SingleLinkCluster]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{null, metadata !30, metadata !33, metadata !33, metadata !35, metadata !224, metadata !69}
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240}
!226 = metadata !{i32 786689, metadata !221, metadata !"aseq", metadata !27, i32 16777920, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 704]
!227 = metadata !{i32 786689, metadata !221, metadata !"nseq", metadata !27, i32 33555136, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 704]
!228 = metadata !{i32 786689, metadata !221, metadata !"alen", metadata !27, i32 50332352, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 704]
!229 = metadata !{i32 786689, metadata !221, metadata !"maxid", metadata !27, i32 67109568, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxid] [line 704]
!230 = metadata !{i32 786689, metadata !221, metadata !"ret_c", metadata !27, i32 83886785, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_c] [line 705]
!231 = metadata !{i32 786689, metadata !221, metadata !"ret_nc", metadata !27, i32 100664001, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_nc] [line 705]
!232 = metadata !{i32 786688, metadata !221, metadata !"a", metadata !27, i32 707, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 707]
!233 = metadata !{i32 786688, metadata !221, metadata !"na", metadata !27, i32 707, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 707]
!234 = metadata !{i32 786688, metadata !221, metadata !"b", metadata !27, i32 708, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 708]
!235 = metadata !{i32 786688, metadata !221, metadata !"nb", metadata !27, i32 708, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 708]
!236 = metadata !{i32 786688, metadata !221, metadata !"c", metadata !27, i32 709, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 709]
!237 = metadata !{i32 786688, metadata !221, metadata !"nc", metadata !27, i32 710, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 710]
!238 = metadata !{i32 786688, metadata !221, metadata !"v", metadata !27, i32 711, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 711]
!239 = metadata !{i32 786688, metadata !221, metadata !"w", metadata !27, i32 711, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 711]
!240 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !27, i32 712, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 712]
!241 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"simple_diffmx", metadata !"simple_diffmx", metadata !"", i32 343, metadata !242, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !245, i32 346} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [scope 346] [simple_diffmx]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !33, metadata !30, metadata !33, metadata !244}
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!245 = metadata !{metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251}
!246 = metadata !{i32 786689, metadata !241, metadata !"aseqs", metadata !27, i32 16777559, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 343]
!247 = metadata !{i32 786689, metadata !241, metadata !"num", metadata !27, i32 33554776, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 344]
!248 = metadata !{i32 786689, metadata !241, metadata !"ret_dmx", metadata !27, i32 50331993, metadata !244, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dmx] [line 345]
!249 = metadata !{i32 786688, metadata !241, metadata !"dmx", metadata !27, i32 347, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmx] [line 347]
!250 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !27, i32 348, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 348]
!251 = metadata !{i32 786688, metadata !241, metadata !"j", metadata !27, i32 348, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 348]
!252 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"simple_distance", metadata !"simple_distance", metadata !"", i32 316, metadata !253, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !255, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [simple_distance]
!253 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!254 = metadata !{metadata !35, metadata !31, metadata !31}
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !259}
!256 = metadata !{i32 786689, metadata !252, metadata !"s1", metadata !27, i32 16777532, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 316]
!257 = metadata !{i32 786689, metadata !252, metadata !"s2", metadata !27, i32 33554748, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 316]
!258 = metadata !{i32 786688, metadata !252, metadata !"diff", metadata !27, i32 318, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 318]
!259 = metadata !{i32 786688, metadata !252, metadata !"valid", metadata !27, i32 319, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valid] [line 319]
!260 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"downweight", metadata !"downweight", metadata !"", i32 110, metadata !261, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.phylo_s*, i32, float*, float*, float*, i32)* @downweight, null, null, metadata !263, i32 111} ; [ DW_TAG_subprogram ] [line 110] [local] [def] [scope 111] [downweight]
!261 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{null, metadata !44, metadata !33, metadata !34, metadata !34, metadata !34, metadata !33}
!263 = metadata !{metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273}
!264 = metadata !{i32 786689, metadata !260, metadata !"tree", metadata !27, i32 16777326, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 110]
!265 = metadata !{i32 786689, metadata !260, metadata !"nseq", metadata !27, i32 33554542, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 110]
!266 = metadata !{i32 786689, metadata !260, metadata !"lwt", metadata !27, i32 50331758, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lwt] [line 110]
!267 = metadata !{i32 786689, metadata !260, metadata !"rwt", metadata !27, i32 67108974, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rwt] [line 110]
!268 = metadata !{i32 786689, metadata !260, metadata !"fwt", metadata !27, i32 83886190, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fwt] [line 110]
!269 = metadata !{i32 786689, metadata !260, metadata !"node", metadata !27, i32 100663406, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 110]
!270 = metadata !{i32 786688, metadata !260, metadata !"ld", metadata !27, i32 112, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ld] [line 112]
!271 = metadata !{i32 786688, metadata !260, metadata !"rd", metadata !27, i32 112, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rd] [line 112]
!272 = metadata !{i32 786688, metadata !260, metadata !"lnum", metadata !27, i32 113, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnum] [line 113]
!273 = metadata !{i32 786688, metadata !260, metadata !"rnum", metadata !27, i32 113, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rnum] [line 113]
!274 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"upweight", metadata !"upweight", metadata !"", i32 96, metadata !275, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.phylo_s*, i32, float*, float*, i32)* @upweight, null, null, metadata !277, i32 97} ; [ DW_TAG_subprogram ] [line 96] [local] [def] [scope 97] [upweight]
!275 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{null, metadata !44, metadata !33, metadata !34, metadata !34, metadata !33}
!277 = metadata !{metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284}
!278 = metadata !{i32 786689, metadata !274, metadata !"tree", metadata !27, i32 16777312, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 96]
!279 = metadata !{i32 786689, metadata !274, metadata !"nseq", metadata !27, i32 33554528, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 96]
!280 = metadata !{i32 786689, metadata !274, metadata !"lwt", metadata !27, i32 50331744, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lwt] [line 96]
!281 = metadata !{i32 786689, metadata !274, metadata !"rwt", metadata !27, i32 67108960, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rwt] [line 96]
!282 = metadata !{i32 786689, metadata !274, metadata !"node", metadata !27, i32 83886176, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 96]
!283 = metadata !{i32 786688, metadata !274, metadata !"ld", metadata !27, i32 98, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ld] [line 98]
!284 = metadata !{i32 786688, metadata !274, metadata !"rd", metadata !27, i32 98, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rd] [line 98]
!285 = metadata !{i32 46, i32 0, metadata !26, null}
!286 = metadata !{i32 48, i32 0, metadata !26, null}
!287 = metadata !{i32 49, i32 0, metadata !26, null}
!288 = metadata !{i32 56, i32 0, metadata !26, null}
!289 = metadata !{i32 56, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !26, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!291 = metadata !{metadata !"float", metadata !292}
!292 = metadata !{metadata !"omnipotent char", metadata !293}
!293 = metadata !{metadata !"Simple C/C++ TBAA"}
!294 = metadata !{i32 62, i32 0, metadata !26, null}
!295 = metadata !{i32 63, i32 0, metadata !26, null}
!296 = metadata !{metadata !"any pointer", metadata !292}
!297 = metadata !{i32 67, i32 0, metadata !26, null}
!298 = metadata !{i32 68, i32 0, metadata !26, null}
!299 = metadata !{i32 69, i32 0, metadata !26, null}
!300 = metadata !{i32 76, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !26, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!302 = metadata !{i32 77, i32 0, metadata !301, null}
!303 = metadata !{i32 80, i32 0, metadata !26, null}
!304 = metadata !{i32 84, i32 0, metadata !26, null}
!305 = metadata !{i32 85, i32 0, metadata !26, null}
!306 = metadata !{i32 87, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !26, i32 87, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!308 = metadata !{i32 88, i32 0, metadata !307, null}
!309 = metadata !{i32 90, i32 0, metadata !26, null}
!310 = metadata !{i32 91, i32 0, metadata !26, null}
!311 = metadata !{i32 92, i32 0, metadata !26, null}
!312 = metadata !{i32 96, i32 0, metadata !274, null}
!313 = metadata !{i32 100, i32 0, metadata !274, null}
!314 = metadata !{metadata !"int", metadata !292}
!315 = metadata !{i32 101, i32 0, metadata !274, null}
!316 = metadata !{i32 102, i32 0, metadata !274, null}
!317 = metadata !{i32 103, i32 0, metadata !274, null}
!318 = metadata !{i32 104, i32 0, metadata !274, null}
!319 = metadata !{i32 105, i32 0, metadata !274, null}
!320 = metadata !{i32 106, i32 0, metadata !274, null}
!321 = metadata !{i32 110, i32 0, metadata !260, null}
!322 = metadata !{i32 115, i32 0, metadata !260, null}
!323 = metadata !{i32 116, i32 0, metadata !260, null}
!324 = metadata !{i32 117, i32 0, metadata !260, null}
!325 = metadata !{i32 119, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !260, i32 118, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!327 = metadata !{i32 120, i32 0, metadata !326, null}
!328 = metadata !{i32 121, i32 0, metadata !326, null}
!329 = metadata !{i32 124, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !260, i32 123, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!331 = metadata !{i32 125, i32 0, metadata !330, null}
!332 = metadata !{i32 126, i32 0, metadata !330, null}
!333 = metadata !{i32 127, i32 0, metadata !330, null}
!334 = metadata !{i32 130, i32 0, metadata !260, null}
!335 = metadata !{i32 131, i32 0, metadata !260, null}
!336 = metadata !{i32 132, i32 0, metadata !260, null}
!337 = metadata !{i32 154, i32 0, metadata !59, null}
!338 = metadata !{i32 160, i32 0, metadata !59, null}
!339 = metadata !{i32 175, i32 0, metadata !59, null}
!340 = metadata !{i32 175, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !59, i32 175, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!342 = metadata !{i32 50}
!343 = metadata !{i32 177, i32 0, metadata !59, null}
!344 = metadata !{i32 352, i32 0, metadata !241, metadata !345}
!345 = metadata !{i32 182, i32 0, metadata !59, null}
!346 = metadata !{i32 786688, metadata !241, metadata !"dmx", metadata !27, i32 347, metadata !42, i32 0, metadata !345} ; [ DW_TAG_auto_variable ] [dmx] [line 347]
!347 = metadata !{i32 353, i32 0, metadata !241, metadata !345}
!348 = metadata !{i32 354, i32 0, metadata !349, metadata !345}
!349 = metadata !{i32 786443, metadata !1, metadata !241, i32 354, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!350 = metadata !{i32 355, i32 0, metadata !349, metadata !345}
!351 = metadata !{i32 366, i32 0, metadata !241, metadata !345}
!352 = metadata !{i32 190, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !354, i32 188, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!354 = metadata !{i32 786443, metadata !1, metadata !355, i32 187, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 186, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!356 = metadata !{i32 786443, metadata !1, metadata !59, i32 185, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!357 = metadata !{i32 194, i32 0, metadata !59, null}
!358 = metadata !{i32 184, i32 0, metadata !59, null}
!359 = metadata !{i32 185, i32 0, metadata !356, null}
!360 = metadata !{i32 356, i32 0, metadata !349, metadata !345}
!361 = metadata !{i32 362, i32 0, metadata !362, metadata !345}
!362 = metadata !{i32 786443, metadata !1, metadata !363, i32 361, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!363 = metadata !{i32 786443, metadata !1, metadata !241, i32 360, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!364 = metadata !{i32 361, i32 0, metadata !362, metadata !345}
!365 = metadata !{i32 360, i32 0, metadata !363, metadata !345}
!366 = metadata !{i32 786689, metadata !252, metadata !"s1", metadata !27, i32 16777532, metadata !31, i32 0, metadata !361} ; [ DW_TAG_arg_variable ] [s1] [line 316]
!367 = metadata !{i32 316, i32 0, metadata !252, metadata !361}
!368 = metadata !{i32 786689, metadata !252, metadata !"s2", metadata !27, i32 33554748, metadata !31, i32 0, metadata !361} ; [ DW_TAG_arg_variable ] [s2] [line 316]
!369 = metadata !{i32 786688, metadata !252, metadata !"diff", metadata !27, i32 318, metadata !33, i32 0, metadata !361} ; [ DW_TAG_auto_variable ] [diff] [line 318]
!370 = metadata !{i32 318, i32 0, metadata !252, metadata !361}
!371 = metadata !{i32 786688, metadata !252, metadata !"valid", metadata !27, i32 319, metadata !33, i32 0, metadata !361} ; [ DW_TAG_auto_variable ] [valid] [line 319]
!372 = metadata !{i32 319, i32 0, metadata !252, metadata !361}
!373 = metadata !{i32 321, i32 0, metadata !374, metadata !361}
!374 = metadata !{i32 786443, metadata !1, metadata !252, i32 321, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!375 = metadata !{i32 323, i32 0, metadata !376, metadata !361}
!376 = metadata !{i32 786443, metadata !1, metadata !374, i32 322, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!377 = metadata !{i32 324, i32 0, metadata !376, metadata !361}
!378 = metadata !{i32 325, i32 0, metadata !376, metadata !361}
!379 = metadata !{i32 326, i32 0, metadata !376, metadata !361}
!380 = metadata !{i32 327, i32 0, metadata !252, metadata !361}
!381 = metadata !{i32 187, i32 0, metadata !354, null}
!382 = metadata !{i32 189, i32 0, metadata !353, null}
!383 = metadata !{i32 192, i32 0, metadata !355, null}
!384 = metadata !{i32 198, i32 0, metadata !59, null}
!385 = metadata !{i32 199, i32 0, metadata !59, null}
!386 = metadata !{i32 200, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !59, i32 200, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!388 = metadata !{i32 204, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !59, i32 204, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!390 = metadata !{i32 226, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !389, i32 205, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!392 = metadata !{i32 201, i32 0, metadata !387, null}
!393 = metadata !{i32 206, i32 0, metadata !391, null}
!394 = metadata !{i32 207, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !391, i32 207, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!396 = metadata !{i32 208, i32 0, metadata !395, null}
!397 = metadata !{i32 210, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !395, i32 209, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!399 = metadata !{metadata !"short", metadata !292}
!400 = metadata !{i32 214, i32 0, metadata !398, null}
!401 = metadata !{i32 215, i32 0, metadata !398, null}
!402 = metadata !{i32 218, i32 0, metadata !395, null}
!403 = metadata !{i32 220, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !391, i32 220, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!405 = metadata !{i32 223, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 222, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!407 = metadata !{i32 221, i32 0, metadata !404, null}
!408 = metadata !{i32 224, i32 0, metadata !406, null}
!409 = metadata !{i32 225, i32 0, metadata !406, null}
!410 = metadata !{i32 226, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !391, i32 226, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!412 = metadata !{i32 268, i32 0, metadata !59, null}
!413 = metadata !{i32 42}
!414 = metadata !{i32 270, i32 0, metadata !59, null}
!415 = metadata !{i32 271, i32 0, metadata !59, null}
!416 = metadata !{i32 272, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !59, i32 272, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!418 = metadata !{i32 274, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 274, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 273, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!421 = metadata !{i32 299, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !59, i32 299, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!423 = metadata !{i32 275, i32 0, metadata !419, null}
!424 = metadata !{i32 276, i32 0, metadata !420, null}
!425 = metadata !{i32 278, i32 0, metadata !420, null}
!426 = metadata !{float 1.000000e+00}
!427 = metadata !{i32 279, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !420, i32 279, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!429 = metadata !{i32 281, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 280, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!431 = metadata !{i32 786689, metadata !252, metadata !"s1", metadata !27, i32 16777532, metadata !31, i32 0, metadata !429} ; [ DW_TAG_arg_variable ] [s1] [line 316]
!432 = metadata !{i32 316, i32 0, metadata !252, metadata !429}
!433 = metadata !{i32 786689, metadata !252, metadata !"s2", metadata !27, i32 33554748, metadata !31, i32 0, metadata !429} ; [ DW_TAG_arg_variable ] [s2] [line 316]
!434 = metadata !{i32 786688, metadata !252, metadata !"diff", metadata !27, i32 318, metadata !33, i32 0, metadata !429} ; [ DW_TAG_auto_variable ] [diff] [line 318]
!435 = metadata !{i32 318, i32 0, metadata !252, metadata !429}
!436 = metadata !{i32 786688, metadata !252, metadata !"valid", metadata !27, i32 319, metadata !33, i32 0, metadata !429} ; [ DW_TAG_auto_variable ] [valid] [line 319]
!437 = metadata !{i32 319, i32 0, metadata !252, metadata !429}
!438 = metadata !{i32 321, i32 0, metadata !374, metadata !429}
!439 = metadata !{i32 323, i32 0, metadata !376, metadata !429}
!440 = metadata !{i32 324, i32 0, metadata !376, metadata !429}
!441 = metadata !{i32 325, i32 0, metadata !376, metadata !429}
!442 = metadata !{i32 326, i32 0, metadata !376, metadata !429}
!443 = metadata !{i32 327, i32 0, metadata !252, metadata !429}
!444 = metadata !{i32 282, i32 0, metadata !430, null}
!445 = metadata !{i32 287, i32 0, metadata !430, null}
!446 = metadata !{i32 288, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !430, i32 288, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!448 = metadata !{i32 289, i32 0, metadata !430, null}
!449 = metadata !{i32 291, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !430, i32 290, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!451 = metadata !{i32 292, i32 0, metadata !450, null}
!452 = metadata !{i32 293, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !450, i32 293, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!454 = metadata !{i32 296, i32 0, metadata !420, null}
!455 = metadata !{i32 300, i32 0, metadata !422, null}
!456 = metadata !{i32 302, i32 0, metadata !59, null}
!457 = metadata !{i32 303, i32 0, metadata !59, null}
!458 = metadata !{i32 304, i32 0, metadata !59, null}
!459 = metadata !{i32 305, i32 0, metadata !59, null}
!460 = metadata !{i32 306, i32 0, metadata !59, null}
!461 = metadata !{i32 394, i32 0, metadata !86, null}
!462 = metadata !{i32 396, i32 0, metadata !86, null}
!463 = metadata !{i32 400, i32 0, metadata !86, null}
!464 = metadata !{i32 402, i32 0, metadata !86, null}
!465 = metadata !{i32 403, i32 0, metadata !86, null}
!466 = metadata !{i32 405, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !86, i32 405, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!468 = metadata !{i32 406, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !86, i32 406, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!470 = metadata !{i32 407, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !86, i32 407, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!472 = metadata !{i32 410, i32 0, metadata !86, null}
!473 = metadata !{i32 409, i32 0, metadata !86, null}
!474 = metadata !{i32 411, i32 0, metadata !86, null}
!475 = metadata !{i32 704, i32 0, metadata !221, null}
!476 = metadata !{i32 705, i32 0, metadata !221, null}
!477 = metadata !{i32 716, i32 0, metadata !221, null}
!478 = metadata !{i32 717, i32 0, metadata !221, null}
!479 = metadata !{i32 718, i32 0, metadata !221, null}
!480 = metadata !{i32 719, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !221, i32 719, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!482 = metadata !{i32 726, i32 0, metadata !221, null}
!483 = metadata !{i32 735, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !485, i32 734, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!485 = metadata !{i32 786443, metadata !1, metadata !486, i32 731, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!486 = metadata !{i32 786443, metadata !1, metadata !221, i32 727, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!487 = metadata !{i32 728, i32 0, metadata !486, null}
!488 = metadata !{i32 729, i32 0, metadata !486, null}
!489 = metadata !{i32 730, i32 0, metadata !486, null}
!490 = metadata !{i32 732, i32 0, metadata !485, null}
!491 = metadata !{i32 733, i32 0, metadata !485, null}
!492 = metadata !{i32 739, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !484, i32 736, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!494 = metadata !{i32 734, i32 0, metadata !484, null}
!495 = metadata !{i32 786689, metadata !252, metadata !"s1", metadata !27, i32 16777532, metadata !31, i32 0, metadata !483} ; [ DW_TAG_arg_variable ] [s1] [line 316]
!496 = metadata !{i32 316, i32 0, metadata !252, metadata !483}
!497 = metadata !{i32 786689, metadata !252, metadata !"s2", metadata !27, i32 33554748, metadata !31, i32 0, metadata !483} ; [ DW_TAG_arg_variable ] [s2] [line 316]
!498 = metadata !{i32 786688, metadata !252, metadata !"diff", metadata !27, i32 318, metadata !33, i32 0, metadata !483} ; [ DW_TAG_auto_variable ] [diff] [line 318]
!499 = metadata !{i32 318, i32 0, metadata !252, metadata !483}
!500 = metadata !{i32 786688, metadata !252, metadata !"valid", metadata !27, i32 319, metadata !33, i32 0, metadata !483} ; [ DW_TAG_auto_variable ] [valid] [line 319]
!501 = metadata !{i32 319, i32 0, metadata !252, metadata !483}
!502 = metadata !{i32 321, i32 0, metadata !374, metadata !483}
!503 = metadata !{i32 323, i32 0, metadata !376, metadata !483}
!504 = metadata !{i32 324, i32 0, metadata !376, metadata !483}
!505 = metadata !{i32 325, i32 0, metadata !376, metadata !483}
!506 = metadata !{i32 326, i32 0, metadata !376, metadata !483}
!507 = metadata !{i32 327, i32 0, metadata !252, metadata !483}
!508 = metadata !{i32 737, i32 0, metadata !493, null}
!509 = metadata !{i32 738, i32 0, metadata !493, null}
!510 = metadata !{i32 741, i32 0, metadata !486, null}
!511 = metadata !{i32 746, i32 0, metadata !221, null}
!512 = metadata !{i32 747, i32 0, metadata !221, null}
!513 = metadata !{i32 748, i32 0, metadata !221, null}
!514 = metadata !{i32 749, i32 0, metadata !221, null}
!515 = metadata !{i32 750, i32 0, metadata !221, null}
!516 = metadata !{i32 463, i32 0, metadata !99, null}
!517 = metadata !{i32 465, i32 0, metadata !99, null}
!518 = metadata !{i32 471, i32 0, metadata !99, null}
!519 = metadata !{i32 472, i32 0, metadata !118, null}
!520 = metadata !{i32 475, i32 0, metadata !116, null}
!521 = metadata !{i32 474, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !117, i32 474, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!523 = metadata !{i32 488, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !99, i32 488, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!525 = metadata !{i32 476, i32 0, metadata !116, null}
!526 = metadata !{i32 477, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !115, i32 477, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!528 = metadata !{i32 477, i32 0, metadata !115, null}
!529 = metadata !{i32 481, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !117, i32 480, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!531 = metadata !{i32 480, i32 0, metadata !530, null}
!532 = metadata !{i32 483, i32 0, metadata !121, null}
!533 = metadata !{i32 484, i32 0, metadata !121, null}
!534 = metadata !{i32 485, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !120, i32 485, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!536 = metadata !{i32 485, i32 0, metadata !120, null}
!537 = metadata !{i32 489, i32 0, metadata !524, null}
!538 = metadata !{i32 490, i32 0, metadata !99, null}
!539 = metadata !{i32 491, i32 0, metadata !99, null}
!540 = metadata !{i32 492, i32 0, metadata !99, null}
!541 = metadata !{i32 493, i32 0, metadata !99, null}
!542 = metadata !{i32 521, i32 0, metadata !122, null}
!543 = metadata !{i32 532, i32 0, metadata !122, null}
!544 = metadata !{i32 533, i32 0, metadata !122, null}
!545 = metadata !{i32 534, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !122, i32 534, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!547 = metadata !{i32 537, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !122, i32 537, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!549 = metadata !{i32 542, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !551, i32 541, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!551 = metadata !{i32 786443, metadata !1, metadata !552, i32 540, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!552 = metadata !{i32 786443, metadata !1, metadata !548, i32 538, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!553 = metadata !{i32 546, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !550, i32 544, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!555 = metadata !{i32 540, i32 0, metadata !551, null}
!556 = metadata !{i32 543, i32 0, metadata !550, null}
!557 = metadata !{i32 1}
!558 = metadata !{i32 545, i32 0, metadata !554, null}
!559 = metadata !{i32 553, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !552, i32 552, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!561 = metadata !{i32 554, i32 0, metadata !560, null}
!562 = metadata !{i32 555, i32 0, metadata !560, null}
!563 = metadata !{i32 558, i32 0, metadata !122, null}
!564 = metadata !{i32 559, i32 0, metadata !122, null}
!565 = metadata !{i32 560, i32 0, metadata !122, null}
!566 = metadata !{i32 561, i32 0, metadata !122, null}
!567 = metadata !{i32 587, i32 0, metadata !209, null}
!568 = metadata !{i32 596, i32 0, metadata !209, null}
!569 = metadata !{i32 597, i32 0, metadata !209, null}
!570 = metadata !{i32 598, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !209, i32 598, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!572 = metadata !{i32 600, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !571, i32 599, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!574 = metadata !{i32 601, i32 0, metadata !573, null}
!575 = metadata !{i32 606, i32 0, metadata !209, null}
!576 = metadata !{i32 609, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !209, i32 609, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!578 = metadata !{i32 612, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !577, i32 610, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/weight.c]
!580 = metadata !{i32 611, i32 0, metadata !579, null}
!581 = metadata !{i32 613, i32 0, metadata !579, null}
!582 = metadata !{i32 614, i32 0, metadata !579, null}
!583 = metadata !{i32 617, i32 0, metadata !209, null}
!584 = metadata !{i32 618, i32 0, metadata !209, null}
!585 = metadata !{i32 619, i32 0, metadata !209, null}
!586 = metadata !{i32 620, i32 0, metadata !209, null}
