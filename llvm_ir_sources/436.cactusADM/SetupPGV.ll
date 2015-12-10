; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [63 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [27 x i8] c"Inconsistent PUGH topology\00", align 1
@.str3 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupPGV.c,v 1.41 2001/11/02 16:18:03 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupPGV_c() #0 {
entry:
  ret i8* getelementptr inbounds ([89 x i8]* @.str3, i64 0, i64 0), !dbg !365
}

; Function Attrs: nounwind optsize uwtable
define %struct.PGExtras* @PUGH_SetupPGExtras(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !45), !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !46), !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !47), !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !48), !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !49), !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !50), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !51), !dbg !372
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !52), !dbg !373
  %call = tail call noalias i8* @malloc(i64 296) #7, !dbg !374
  %0 = bitcast i8* %call to %struct.PGExtras*, !dbg !374
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %0}, i64 0, metadata !54), !dbg !374
  %tobool = icmp eq i8* %call, null, !dbg !375
  br i1 %tobool, label %if.end8, label %if.then, !dbg !375

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @PUGH_SetupPGExtrasMemory(i32 %dim, i32 %total_procs, i32* undef, %struct.PGExtras* %0) #8, !dbg !376
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !53), !dbg !376
  %tobool2 = icmp eq i32 %call1, 0, !dbg !378
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !378

if.then3:                                         ; preds = %if.then
  %dim4 = bitcast i8* %call to i32*, !dbg !379
  store i32 %dim, i32* %dim4, align 4, !dbg !379, !tbaa !381
  %call5 = tail call i32 @PUGH_SetupPGExtrasSizes(i32 %dim, i32* %perme, i32 %stagger, i32* %sh, i32* %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc, %struct.PGExtras* %0) #8, !dbg !384
  %call6 = tail call i32 @PUGH_SetupPGExtrasOwnership(i32 %dim, i32* %perme, i32 undef, i32* undef, i32* undef, i32 undef, i32* undef, i32 %this_proc, %struct.PGExtras* %0) #8, !dbg !385
  %call7 = tail call i32 @PUGH_SetupPGExtrasStaggering(i32 %dim, i32* undef, i32 undef, i32* undef, i32* undef, i32 undef, i32* undef, i32 %this_proc, %struct.PGExtras* %0) #8, !dbg !386
  br label %if.end8, !dbg !387

if.end8:                                          ; preds = %if.then, %entry, %if.then3
  ret %struct.PGExtras* %0, !dbg !388
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupPGExtrasMemory(i32 %dim, i32 %total_procs, i32* nocapture %nprocs, %struct.PGExtras* %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !140), !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !141), !dbg !390
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !142), !dbg !391
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !143), !dbg !392
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !393
  %tobool = icmp eq %struct.PGExtras* %this, null, !dbg !394
  br i1 %tobool, label %if.end484, label %if.then, !dbg !394

if.then:                                          ; preds = %entry
  %conv = sext i32 %total_procs to i64, !dbg !395
  %mul = shl nsw i64 %conv, 3, !dbg !395
  %call = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !395
  %0 = bitcast i8* %call to i32**, !dbg !395
  %lb = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3, !dbg !395
  store i32** %0, i32*** %lb, align 8, !dbg !395, !tbaa !397
  %call3 = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !398
  %1 = bitcast i8* %call3 to i32**, !dbg !398
  %ub = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4, !dbg !398
  store i32** %1, i32*** %ub, align 8, !dbg !398, !tbaa !397
  %call6 = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !399
  %2 = bitcast i8* %call6 to i32**, !dbg !399
  %rnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9, !dbg !399
  store i32** %2, i32*** %rnsize, align 8, !dbg !399, !tbaa !397
  %mul8 = shl nsw i64 %conv, 2, !dbg !400
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #7, !dbg !400
  %3 = bitcast i8* %call9 to i32*, !dbg !400
  %rnpoints = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8, !dbg !400
  store i32* %3, i32** %rnpoints, align 8, !dbg !400, !tbaa !397
  %conv10 = sext i32 %dim to i64, !dbg !401
  %mul11 = shl nsw i64 %conv10, 2, !dbg !401
  %call12 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !401
  %4 = bitcast i8* %call12 to i32*, !dbg !401
  %nghostzones = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !401
  store i32* %4, i32** %nghostzones, align 8, !dbg !401, !tbaa !397
  %call15 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !402
  %5 = bitcast i8* %call15 to i32*, !dbg !402
  %nsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !402
  store i32* %5, i32** %nsize, align 8, !dbg !402, !tbaa !397
  %call18 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !403
  %6 = bitcast i8* %call18 to i32*, !dbg !403
  %lnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !403
  store i32* %6, i32** %lnsize, align 8, !dbg !403, !tbaa !397
  %mul19 = shl i32 %dim, 1, !dbg !404
  %conv20 = sext i32 %mul19 to i64, !dbg !404
  %mul21 = shl nsw i64 %conv20, 2, !dbg !404
  %call22 = tail call noalias i8* @malloc(i64 %mul21) #7, !dbg !404
  %7 = bitcast i8* %call22 to i32*, !dbg !404
  %bbox = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 5, !dbg !404
  store i32* %7, i32** %bbox, align 8, !dbg !404, !tbaa !397
  %call25 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !405
  %8 = bitcast i8* %call25 to i32*, !dbg !405
  %iterator = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 10, !dbg !405
  store i32* %8, i32** %iterator, align 8, !dbg !405, !tbaa !397
  %call28 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !406
  %9 = bitcast i8* %call28 to i32*, !dbg !406
  %hyper_volume = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 11, !dbg !406
  store i32* %9, i32** %hyper_volume, align 8, !dbg !406, !tbaa !397
  %tobool30 = icmp eq i8* %call, null, !dbg !407
  %tobool32 = icmp eq i8* %call3, null, !dbg !407
  %or.cond792 = or i1 %tobool30, %tobool32, !dbg !407
  %tobool35 = icmp eq i8* %call6, null, !dbg !407
  %or.cond793 = or i1 %or.cond792, %tobool35, !dbg !407
  %tobool38 = icmp eq i8* %call9, null, !dbg !407
  %or.cond794 = or i1 %or.cond793, %tobool38, !dbg !407
  %tobool41 = icmp eq i8* %call12, null, !dbg !407
  %or.cond795 = or i1 %or.cond794, %tobool41, !dbg !407
  %tobool44 = icmp eq i8* %call15, null, !dbg !407
  %or.cond796 = or i1 %or.cond795, %tobool44, !dbg !407
  %tobool47 = icmp eq i8* %call18, null, !dbg !407
  %or.cond797 = or i1 %or.cond796, %tobool47, !dbg !407
  %tobool50 = icmp eq i8* %call22, null, !dbg !407
  %or.cond798 = or i1 %or.cond797, %tobool50, !dbg !407
  br i1 %or.cond798, label %if.else143, label %land.lhs.true51, !dbg !407

land.lhs.true51:                                  ; preds = %if.then
  %tobool53 = icmp eq i8* %call25, null, !dbg !407
  %tobool56 = icmp eq i8* %call28, null, !dbg !407
  %or.cond = or i1 %tobool53, %tobool56, !dbg !407
  br i1 %or.cond, label %if.else143, label %if.then57, !dbg !407

if.then57:                                        ; preds = %land.lhs.true51
  %mul58 = mul nsw i32 %total_procs, %dim, !dbg !408
  %conv59 = sext i32 %mul58 to i64, !dbg !408
  %mul60 = shl nsw i64 %conv59, 2, !dbg !408
  %call61 = tail call noalias i8* @malloc(i64 %mul60) #7, !dbg !408
  %10 = bitcast i8* %call61 to i32*, !dbg !408
  store i32* %10, i32** %0, align 8, !dbg !408, !tbaa !397
  %call66 = tail call noalias i8* @malloc(i64 %mul60) #7, !dbg !410
  %11 = bitcast i8* %call66 to i32*, !dbg !410
  store i32* %11, i32** %1, align 8, !dbg !410, !tbaa !397
  %mul70 = mul i32 %mul19, %total_procs, !dbg !411
  %conv71 = sext i32 %mul70 to i64, !dbg !411
  %mul72 = shl nsw i64 %conv71, 2, !dbg !411
  %call73 = tail call noalias i8* @malloc(i64 %mul72) #7, !dbg !411
  %12 = bitcast i8* %call73 to i32*, !dbg !411
  store i32* %12, i32** %2, align 8, !dbg !411, !tbaa !397
  %tobool78 = icmp eq i8* %call61, null, !dbg !412
  %tobool82 = icmp eq i8* %call66, null, !dbg !412
  %or.cond799 = or i1 %tobool78, %tobool82, !dbg !412
  %tobool86 = icmp eq i8* %call73, null, !dbg !412
  %or.cond800 = or i1 %or.cond799, %tobool86, !dbg !412
  br i1 %or.cond800, label %if.else, label %for.cond.preheader, !dbg !412

for.cond.preheader:                               ; preds = %if.then57
  %cmp764 = icmp sgt i32 %total_procs, 1, !dbg !413
  br i1 %cmp764, label %for.body, label %if.end164, !dbg !413

for.body:                                         ; preds = %for.cond.preheader, %for.body.for.body_crit_edge
  %13 = phi i32* [ %.pre786, %for.body.for.body_crit_edge ], [ %10, %for.cond.preheader ]
  %14 = phi i32** [ %.pre785, %for.body.for.body_crit_edge ], [ %0, %for.cond.preheader ]
  %indvars.iv780 = phi i64 [ %indvars.iv.next781, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader ]
  %15 = trunc i64 %indvars.iv780 to i32, !dbg !416
  %mul91 = mul nsw i32 %15, %dim, !dbg !416
  %idx.ext = sext i32 %mul91 to i64, !dbg !416
  %add.ptr = getelementptr inbounds i32* %13, i64 %idx.ext, !dbg !416
  %arrayidx93 = getelementptr inbounds i32** %14, i64 %indvars.iv780, !dbg !416
  store i32* %add.ptr, i32** %arrayidx93, align 8, !dbg !416, !tbaa !397
  %16 = load i32*** %ub, align 8, !dbg !418, !tbaa !397
  %17 = load i32** %16, align 8, !dbg !418, !tbaa !397
  %add.ptr98 = getelementptr inbounds i32* %17, i64 %idx.ext, !dbg !418
  %arrayidx101 = getelementptr inbounds i32** %16, i64 %indvars.iv780, !dbg !418
  store i32* %add.ptr98, i32** %arrayidx101, align 8, !dbg !418, !tbaa !397
  %18 = load i32*** %rnsize, align 8, !dbg !419, !tbaa !397
  %19 = load i32** %18, align 8, !dbg !419, !tbaa !397
  %mul105 = mul i32 %mul19, %15, !dbg !419
  %idx.ext106 = sext i32 %mul105 to i64, !dbg !419
  %add.ptr107 = getelementptr inbounds i32* %19, i64 %idx.ext106, !dbg !419
  %arrayidx110 = getelementptr inbounds i32** %18, i64 %indvars.iv780, !dbg !419
  store i32* %add.ptr107, i32** %arrayidx110, align 8, !dbg !419, !tbaa !397
  %indvars.iv.next781 = add i64 %indvars.iv780, 1, !dbg !413
  %lftr.wideiv782 = trunc i64 %indvars.iv.next781 to i32, !dbg !413
  %exitcond783 = icmp eq i32 %lftr.wideiv782, %total_procs, !dbg !413
  br i1 %exitcond783, label %if.end164, label %for.body.for.body_crit_edge, !dbg !413

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre785 = load i32*** %lb, align 8, !dbg !416, !tbaa !397
  %.pre786 = load i32** %.pre785, align 8, !dbg !416, !tbaa !397
  br label %for.body, !dbg !413

if.else:                                          ; preds = %if.then57
  tail call void @free(i8* %call61) #7, !dbg !420
  %20 = load i32*** %lb, align 8, !dbg !422, !tbaa !397
  store i32* null, i32** %20, align 8, !dbg !422, !tbaa !397
  %21 = load i32*** %ub, align 8, !dbg !423, !tbaa !397
  %22 = load i32** %21, align 8, !dbg !423, !tbaa !397
  %23 = bitcast i32* %22 to i8*, !dbg !423
  tail call void @free(i8* %23) #7, !dbg !423
  %24 = load i32*** %ub, align 8, !dbg !424, !tbaa !397
  store i32* null, i32** %24, align 8, !dbg !424, !tbaa !397
  %25 = load i32*** %rnsize, align 8, !dbg !425, !tbaa !397
  %26 = load i32** %25, align 8, !dbg !425, !tbaa !397
  %27 = bitcast i32* %26 to i8*, !dbg !425
  tail call void @free(i8* %27) #7, !dbg !425
  %28 = load i32*** %rnsize, align 8, !dbg !426, !tbaa !397
  store i32* null, i32** %28, align 8, !dbg !426, !tbaa !397
  %29 = load i32*** %lb, align 8, !dbg !427, !tbaa !397
  %30 = bitcast i32** %29 to i8*, !dbg !427
  tail call void @free(i8* %30) #7, !dbg !427
  store i32** null, i32*** %lb, align 8, !dbg !428, !tbaa !397
  %31 = load i32*** %ub, align 8, !dbg !429, !tbaa !397
  %32 = bitcast i32** %31 to i8*, !dbg !429
  tail call void @free(i8* %32) #7, !dbg !429
  store i32** null, i32*** %ub, align 8, !dbg !430, !tbaa !397
  %33 = load i32*** %rnsize, align 8, !dbg !431, !tbaa !397
  %34 = bitcast i32** %33 to i8*, !dbg !431
  tail call void @free(i8* %34) #7, !dbg !431
  store i32** null, i32*** %rnsize, align 8, !dbg !432, !tbaa !397
  %35 = load i32** %rnpoints, align 8, !dbg !433, !tbaa !397
  %36 = bitcast i32* %35 to i8*, !dbg !433
  tail call void @free(i8* %36) #7, !dbg !433
  store i32* null, i32** %rnpoints, align 8, !dbg !434, !tbaa !397
  %37 = load i32** %nghostzones, align 8, !dbg !435, !tbaa !397
  %38 = bitcast i32* %37 to i8*, !dbg !435
  tail call void @free(i8* %38) #7, !dbg !435
  store i32* null, i32** %nghostzones, align 8, !dbg !436, !tbaa !397
  %39 = load i32** %nsize, align 8, !dbg !437, !tbaa !397
  %40 = bitcast i32* %39 to i8*, !dbg !437
  tail call void @free(i8* %40) #7, !dbg !437
  store i32* null, i32** %nsize, align 8, !dbg !438, !tbaa !397
  %41 = load i32** %lnsize, align 8, !dbg !439, !tbaa !397
  %42 = bitcast i32* %41 to i8*, !dbg !439
  tail call void @free(i8* %42) #7, !dbg !439
  store i32* null, i32** %lnsize, align 8, !dbg !440, !tbaa !397
  %43 = load i32** %bbox, align 8, !dbg !441, !tbaa !397
  %44 = bitcast i32* %43 to i8*, !dbg !441
  tail call void @free(i8* %44) #7, !dbg !441
  store i32* null, i32** %bbox, align 8, !dbg !442, !tbaa !397
  %45 = load i32** %iterator, align 8, !dbg !443, !tbaa !397
  %46 = bitcast i32* %45 to i8*, !dbg !443
  tail call void @free(i8* %46) #7, !dbg !443
  store i32* null, i32** %iterator, align 8, !dbg !444, !tbaa !397
  %47 = load i32** %hyper_volume, align 8, !dbg !445, !tbaa !397
  %48 = bitcast i32* %47 to i8*, !dbg !445
  tail call void @free(i8* %48) #7, !dbg !445
  store i32* null, i32** %hyper_volume, align 8, !dbg !446, !tbaa !397
  br label %if.end164

if.else143:                                       ; preds = %land.lhs.true51, %if.then
  tail call void @free(i8* %call) #7, !dbg !447
  store i32** null, i32*** %lb, align 8, !dbg !449, !tbaa !397
  %49 = load i32*** %ub, align 8, !dbg !450, !tbaa !397
  %50 = bitcast i32** %49 to i8*, !dbg !450
  tail call void @free(i8* %50) #7, !dbg !450
  store i32** null, i32*** %ub, align 8, !dbg !451, !tbaa !397
  %51 = load i32*** %rnsize, align 8, !dbg !452, !tbaa !397
  %52 = bitcast i32** %51 to i8*, !dbg !452
  tail call void @free(i8* %52) #7, !dbg !452
  store i32** null, i32*** %rnsize, align 8, !dbg !453, !tbaa !397
  %53 = load i32** %rnpoints, align 8, !dbg !454, !tbaa !397
  %54 = bitcast i32* %53 to i8*, !dbg !454
  tail call void @free(i8* %54) #7, !dbg !454
  store i32* null, i32** %rnpoints, align 8, !dbg !455, !tbaa !397
  %55 = load i32** %nghostzones, align 8, !dbg !456, !tbaa !397
  %56 = bitcast i32* %55 to i8*, !dbg !456
  tail call void @free(i8* %56) #7, !dbg !456
  store i32* null, i32** %nghostzones, align 8, !dbg !457, !tbaa !397
  %57 = load i32** %nsize, align 8, !dbg !458, !tbaa !397
  %58 = bitcast i32* %57 to i8*, !dbg !458
  tail call void @free(i8* %58) #7, !dbg !458
  store i32* null, i32** %nsize, align 8, !dbg !459, !tbaa !397
  %59 = load i32** %lnsize, align 8, !dbg !460, !tbaa !397
  %60 = bitcast i32* %59 to i8*, !dbg !460
  tail call void @free(i8* %60) #7, !dbg !460
  store i32* null, i32** %lnsize, align 8, !dbg !461, !tbaa !397
  %61 = load i32** %bbox, align 8, !dbg !462, !tbaa !397
  %62 = bitcast i32* %61 to i8*, !dbg !462
  tail call void @free(i8* %62) #7, !dbg !462
  store i32* null, i32** %bbox, align 8, !dbg !463, !tbaa !397
  %63 = load i32** %iterator, align 8, !dbg !464, !tbaa !397
  %64 = bitcast i32* %63 to i8*, !dbg !464
  tail call void @free(i8* %64) #7, !dbg !464
  store i32* null, i32** %iterator, align 8, !dbg !465, !tbaa !397
  %65 = load i32** %hyper_volume, align 8, !dbg !466, !tbaa !397
  %66 = bitcast i32* %65 to i8*, !dbg !466
  tail call void @free(i8* %66) #7, !dbg !466
  store i32* null, i32** %hyper_volume, align 8, !dbg !467, !tbaa !397
  br label %if.end164

if.end164:                                        ; preds = %for.cond.preheader, %for.body, %if.else, %if.else143
  %67 = load i32*** %lb, align 8, !dbg !468, !tbaa !397
  %tobool166 = icmp eq i32** %67, null, !dbg !468
  br i1 %tobool166, label %if.end484, label %land.lhs.true167, !dbg !468

land.lhs.true167:                                 ; preds = %if.end164
  %68 = load i32*** %ub, align 8, !dbg !468, !tbaa !397
  %tobool169 = icmp eq i32** %68, null, !dbg !468
  br i1 %tobool169, label %if.end484, label %land.lhs.true170, !dbg !468

land.lhs.true170:                                 ; preds = %land.lhs.true167
  %69 = load i32*** %rnsize, align 8, !dbg !468, !tbaa !397
  %tobool172 = icmp eq i32** %69, null, !dbg !468
  br i1 %tobool172, label %if.end484, label %land.lhs.true173, !dbg !468

land.lhs.true173:                                 ; preds = %land.lhs.true170
  %70 = load i32** %rnpoints, align 8, !dbg !468, !tbaa !397
  %tobool175 = icmp eq i32* %70, null, !dbg !468
  br i1 %tobool175, label %if.end484, label %land.lhs.true176, !dbg !468

land.lhs.true176:                                 ; preds = %land.lhs.true173
  %71 = load i32** %nghostzones, align 8, !dbg !468, !tbaa !397
  %tobool178 = icmp eq i32* %71, null, !dbg !468
  br i1 %tobool178, label %if.end484, label %land.lhs.true179, !dbg !468

land.lhs.true179:                                 ; preds = %land.lhs.true176
  %72 = load i32** %nsize, align 8, !dbg !468, !tbaa !397
  %tobool181 = icmp eq i32* %72, null, !dbg !468
  br i1 %tobool181, label %if.end484, label %land.lhs.true182, !dbg !468

land.lhs.true182:                                 ; preds = %land.lhs.true179
  %73 = load i32** %lnsize, align 8, !dbg !468, !tbaa !397
  %tobool184 = icmp eq i32* %73, null, !dbg !468
  br i1 %tobool184, label %if.end484, label %land.lhs.true185, !dbg !468

land.lhs.true185:                                 ; preds = %land.lhs.true182
  %74 = load i32** %bbox, align 8, !dbg !468, !tbaa !397
  %tobool187 = icmp eq i32* %74, null, !dbg !468
  br i1 %tobool187, label %if.end484, label %land.lhs.true188, !dbg !468

land.lhs.true188:                                 ; preds = %land.lhs.true185
  %75 = load i32** %iterator, align 8, !dbg !468, !tbaa !397
  %tobool190 = icmp eq i32* %75, null, !dbg !468
  br i1 %tobool190, label %if.end484, label %land.lhs.true191, !dbg !468

land.lhs.true191:                                 ; preds = %land.lhs.true188
  %76 = load i32** %hyper_volume, align 8, !dbg !468, !tbaa !397
  %tobool193 = icmp eq i32* %76, null, !dbg !468
  br i1 %tobool193, label %if.end484, label %for.cond195.preheader, !dbg !468

for.cond195.preheader:                            ; preds = %land.lhs.true191
  %mul212 = shl nsw i64 %conv20, 3, !dbg !469
  %mul241 = mul nsw i32 %mul19, %dim, !dbg !475
  %conv242 = sext i32 %mul241 to i64, !dbg !475
  %mul243 = shl nsw i64 %conv242, 2, !dbg !475
  %cmp264757 = icmp sgt i32 %mul19, 1, !dbg !477
  %77 = shl i32 %dim, 1, !dbg !479
  br label %for.cond199.preheader, !dbg !479

for.cond199.preheader:                            ; preds = %for.cond195.preheader, %for.inc376
  %indvars.iv778 = phi i64 [ 0, %for.cond195.preheader ], [ %indvars.iv.next779, %for.inc376 ]
  %i.1763 = phi i32 [ 0, %for.cond195.preheader ], [ %inc377, %for.inc376 ]
  br label %for.body202, !dbg !480

for.body202:                                      ; preds = %for.cond199.preheader, %for.inc334
  %indvars.iv775 = phi i64 [ 0, %for.cond199.preheader ], [ %indvars.iv.next776, %for.inc334 ]
  %call205 = tail call noalias i8* @malloc(i64 %mul11) #7, !dbg !481
  %78 = bitcast i8* %call205 to i32*, !dbg !481
  %arrayidx209 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv778, i64 %indvars.iv775, !dbg !481
  store i32* %78, i32** %arrayidx209, align 8, !dbg !481, !tbaa !397
  %call213 = tail call noalias i8* @malloc(i64 %mul212) #7, !dbg !469
  %79 = bitcast i8* %call213 to i32**, !dbg !469
  %arrayidx217 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv778, i64 %indvars.iv775, !dbg !469
  store i32** %79, i32*** %arrayidx217, align 8, !dbg !469, !tbaa !397
  %call221 = tail call noalias i8* @malloc(i64 %mul212) #7, !dbg !482
  %80 = bitcast i8* %call221 to i32**, !dbg !482
  %arrayidx225 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv778, i64 %indvars.iv775, !dbg !482
  store i32** %80, i32*** %arrayidx225, align 8, !dbg !482, !tbaa !397
  %tobool231 = icmp eq i8* %call213, null, !dbg !483
  %tobool238 = icmp eq i8* %call221, null, !dbg !483
  %or.cond749 = or i1 %tobool231, %tobool238, !dbg !483
  br i1 %or.cond749, label %for.end336.thread, label %if.then239, !dbg !483

if.then239:                                       ; preds = %for.body202
  %call244 = tail call noalias i8* @malloc(i64 %mul243) #7, !dbg !475
  %81 = bitcast i8* %call244 to i32*, !dbg !475
  store i32* %81, i32** %79, align 8, !dbg !475, !tbaa !397
  %call255 = tail call noalias i8* @malloc(i64 %mul243) #7, !dbg !484
  %82 = bitcast i8* %call255 to i32*, !dbg !484
  store i32* %82, i32** %80, align 8, !dbg !484, !tbaa !397
  tail call void @llvm.dbg.value(metadata !485, i64 0, metadata !147), !dbg !477
  br i1 %cmp264757, label %for.body266, label %for.inc334, !dbg !477

for.body266:                                      ; preds = %if.then239, %for.body266.for.body266_crit_edge
  %83 = phi i32* [ %.pre784, %for.body266.for.body266_crit_edge ], [ %81, %if.then239 ]
  %84 = phi i32** [ %.pre, %for.body266.for.body266_crit_edge ], [ %79, %if.then239 ]
  %indvars.iv770 = phi i64 [ %indvars.iv.next771, %for.body266.for.body266_crit_edge ], [ 1, %if.then239 ]
  %85 = trunc i64 %indvars.iv770 to i32, !dbg !486
  %mul273 = mul nsw i32 %85, %dim, !dbg !486
  %idx.ext274 = sext i32 %mul273 to i64, !dbg !486
  %add.ptr275 = getelementptr inbounds i32* %83, i64 %idx.ext274, !dbg !486
  %arrayidx282 = getelementptr inbounds i32** %84, i64 %indvars.iv770, !dbg !486
  store i32* %add.ptr275, i32** %arrayidx282, align 8, !dbg !486, !tbaa !397
  %86 = load i32*** %arrayidx225, align 8, !dbg !488, !tbaa !397
  %87 = load i32** %86, align 8, !dbg !488, !tbaa !397
  %add.ptr291 = getelementptr inbounds i32* %87, i64 %idx.ext274, !dbg !488
  %arrayidx298 = getelementptr inbounds i32** %86, i64 %indvars.iv770, !dbg !488
  store i32* %add.ptr291, i32** %arrayidx298, align 8, !dbg !488, !tbaa !397
  %indvars.iv.next771 = add i64 %indvars.iv770, 1, !dbg !477
  %lftr.wideiv = trunc i64 %indvars.iv.next771 to i32, !dbg !477
  %exitcond = icmp eq i32 %lftr.wideiv, %77, !dbg !477
  br i1 %exitcond, label %for.inc334, label %for.body266.for.body266_crit_edge, !dbg !477

for.body266.for.body266_crit_edge:                ; preds = %for.body266
  %.pre = load i32*** %arrayidx217, align 8, !dbg !486, !tbaa !397
  %.pre784 = load i32** %.pre, align 8, !dbg !486, !tbaa !397
  br label %for.body266, !dbg !477

for.end336.thread:                                ; preds = %for.body202
  tail call void @free(i8* %call205) #7, !dbg !489
  store i32* null, i32** %arrayidx209, align 8, !dbg !491, !tbaa !397
  %88 = load i32*** %arrayidx217, align 8, !dbg !492, !tbaa !397
  %89 = bitcast i32** %88 to i8*, !dbg !492
  tail call void @free(i8* %89) #7, !dbg !492
  store i32** null, i32*** %arrayidx217, align 8, !dbg !493, !tbaa !397
  %90 = load i32*** %arrayidx225, align 8, !dbg !494, !tbaa !397
  %91 = bitcast i32** %90 to i8*, !dbg !494
  tail call void @free(i8* %91) #7, !dbg !494
  store i32** null, i32*** %arrayidx225, align 8, !dbg !495, !tbaa !397
  tail call void @llvm.dbg.value(metadata !485, i64 0, metadata !144), !dbg !496
  %idxprom344 = sext i32 %i.1763 to i64, !dbg !497
  br label %for.body342, !dbg !501

for.inc334:                                       ; preds = %for.body266, %if.then239
  %indvars.iv.next776 = add i64 %indvars.iv775, 1, !dbg !480
  %92 = trunc i64 %indvars.iv.next776 to i32, !dbg !480
  %cmp200 = icmp slt i32 %92, 2, !dbg !480
  br i1 %cmp200, label %for.body202, label %for.inc376, !dbg !480

for.body342:                                      ; preds = %for.end336.thread, %for.body342
  %indvars.iv768 = phi i64 [ 1, %for.end336.thread ], [ %indvars.iv.next769, %for.body342 ]
  %arrayidx347 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %idxprom344, i64 %indvars.iv768, !dbg !497
  %93 = load i32** %arrayidx347, align 8, !dbg !497, !tbaa !397
  %94 = bitcast i32* %93 to i8*, !dbg !497
  tail call void @free(i8* %94) #7, !dbg !497
  store i32* null, i32** %arrayidx347, align 8, !dbg !502, !tbaa !397
  %arrayidx357 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %idxprom344, i64 %indvars.iv768, !dbg !503
  %95 = load i32*** %arrayidx357, align 8, !dbg !503, !tbaa !397
  %96 = bitcast i32** %95 to i8*, !dbg !503
  tail call void @free(i8* %96) #7, !dbg !503
  store i32** null, i32*** %arrayidx357, align 8, !dbg !504, !tbaa !397
  %arrayidx367 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %idxprom344, i64 %indvars.iv768, !dbg !505
  %97 = load i32*** %arrayidx367, align 8, !dbg !505, !tbaa !397
  %98 = bitcast i32** %97 to i8*, !dbg !505
  tail call void @free(i8* %98) #7, !dbg !505
  store i32** null, i32*** %arrayidx367, align 8, !dbg !506, !tbaa !397
  %indvars.iv.next769 = add i64 %indvars.iv768, -1, !dbg !501
  %99 = trunc i64 %indvars.iv768 to i32, !dbg !501
  %cmp340 = icmp sgt i32 %99, 0, !dbg !501
  br i1 %cmp340, label %for.body342, label %for.cond382.preheader, !dbg !501

for.inc376:                                       ; preds = %for.inc334
  %indvars.iv.next779 = add i64 %indvars.iv778, 1, !dbg !479
  %inc377 = add nsw i32 %i.1763, 1, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %inc377}, i64 0, metadata !145), !dbg !479
  %100 = trunc i64 %indvars.iv.next779 to i32, !dbg !479
  %cmp196 = icmp slt i32 %100, 4, !dbg !479
  br i1 %cmp196, label %for.cond199.preheader, label %if.end484, !dbg !479

for.cond382.preheader:                            ; preds = %for.body342
  %cmp383754 = icmp sgt i32 %i.1763, 0, !dbg !507
  br i1 %cmp383754, label %for.cond386.preheader.lr.ph, label %for.end448, !dbg !507

for.cond386.preheader.lr.ph:                      ; preds = %for.cond382.preheader
  %101 = sext i32 %i.1763 to i64
  br label %for.cond386.preheader, !dbg !507

for.cond386.preheader:                            ; preds = %for.cond386.preheader.lr.ph, %for.end434
  %indvars.iv766 = phi i64 [ %101, %for.cond386.preheader.lr.ph ], [ %indvars.iv.next767, %for.end434 ]
  %indvars.iv.next767 = add i64 %indvars.iv766, -1, !dbg !507
  br label %for.body389, !dbg !510

for.body389:                                      ; preds = %for.cond386.preheader, %for.body389
  %indvars.iv = phi i64 [ 1, %for.cond386.preheader ], [ %indvars.iv.next, %for.body389 ]
  %arrayidx394 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv.next767, i64 %indvars.iv, !dbg !513
  %102 = load i32*** %arrayidx394, align 8, !dbg !513, !tbaa !397
  %103 = load i32** %102, align 8, !dbg !513, !tbaa !397
  %104 = bitcast i32* %103 to i8*, !dbg !513
  tail call void @free(i8* %104) #7, !dbg !513
  %arrayidx400 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv.next767, i64 %indvars.iv, !dbg !515
  %105 = load i32*** %arrayidx400, align 8, !dbg !515, !tbaa !397
  %106 = load i32** %105, align 8, !dbg !515, !tbaa !397
  %107 = bitcast i32* %106 to i8*, !dbg !515
  tail call void @free(i8* %107) #7, !dbg !515
  %arrayidx406 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv.next767, i64 %indvars.iv, !dbg !516
  %108 = load i32** %arrayidx406, align 8, !dbg !516, !tbaa !397
  %109 = bitcast i32* %108 to i8*, !dbg !516
  tail call void @free(i8* %109) #7, !dbg !516
  store i32* null, i32** %arrayidx406, align 8, !dbg !517, !tbaa !397
  %110 = load i32*** %arrayidx394, align 8, !dbg !518, !tbaa !397
  %111 = bitcast i32** %110 to i8*, !dbg !518
  tail call void @free(i8* %111) #7, !dbg !518
  store i32** null, i32*** %arrayidx394, align 8, !dbg !519, !tbaa !397
  %112 = load i32*** %arrayidx400, align 8, !dbg !520, !tbaa !397
  %113 = bitcast i32** %112 to i8*, !dbg !520
  tail call void @free(i8* %113) #7, !dbg !520
  store i32** null, i32*** %arrayidx400, align 8, !dbg !521, !tbaa !397
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !510
  %114 = trunc i64 %indvars.iv to i32, !dbg !510
  %cmp387 = icmp sgt i32 %114, 0, !dbg !510
  br i1 %cmp387, label %for.body389, label %for.end434, !dbg !510

for.end434:                                       ; preds = %for.body389
  %arraydecay = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv.next767, i64 0, !dbg !522
  %115 = bitcast i32** %arraydecay to i8*, !dbg !522
  tail call void @free(i8* %115) #7, !dbg !522
  %arraydecay441 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv.next767, i64 0, !dbg !523
  %116 = bitcast i32*** %arraydecay441 to i8*, !dbg !523
  tail call void @free(i8* %116) #7, !dbg !523
  %arraydecay445 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv.next767, i64 0, !dbg !524
  %117 = bitcast i32*** %arraydecay445 to i8*, !dbg !524
  tail call void @free(i8* %117) #7, !dbg !524
  %118 = trunc i64 %indvars.iv.next767 to i32, !dbg !507
  %cmp383 = icmp sgt i32 %118, 0, !dbg !507
  br i1 %cmp383, label %for.cond386.preheader, label %for.end448, !dbg !507

for.end448:                                       ; preds = %for.end434, %for.cond382.preheader
  %119 = load i32*** %lb, align 8, !dbg !525, !tbaa !397
  %120 = load i32** %119, align 8, !dbg !525, !tbaa !397
  %121 = bitcast i32* %120 to i8*, !dbg !525
  tail call void @free(i8* %121) #7, !dbg !525
  %122 = load i32*** %lb, align 8, !dbg !526, !tbaa !397
  store i32* null, i32** %122, align 8, !dbg !526, !tbaa !397
  %123 = load i32*** %ub, align 8, !dbg !527, !tbaa !397
  %124 = load i32** %123, align 8, !dbg !527, !tbaa !397
  %125 = bitcast i32* %124 to i8*, !dbg !527
  tail call void @free(i8* %125) #7, !dbg !527
  %126 = load i32*** %ub, align 8, !dbg !528, !tbaa !397
  store i32* null, i32** %126, align 8, !dbg !528, !tbaa !397
  %127 = load i32*** %rnsize, align 8, !dbg !529, !tbaa !397
  %128 = load i32** %127, align 8, !dbg !529, !tbaa !397
  %129 = bitcast i32* %128 to i8*, !dbg !529
  tail call void @free(i8* %129) #7, !dbg !529
  %130 = load i32*** %rnsize, align 8, !dbg !530, !tbaa !397
  store i32* null, i32** %130, align 8, !dbg !530, !tbaa !397
  %131 = load i32*** %lb, align 8, !dbg !531, !tbaa !397
  %132 = bitcast i32** %131 to i8*, !dbg !531
  tail call void @free(i8* %132) #7, !dbg !531
  store i32** null, i32*** %lb, align 8, !dbg !532, !tbaa !397
  %133 = load i32*** %ub, align 8, !dbg !533, !tbaa !397
  %134 = bitcast i32** %133 to i8*, !dbg !533
  tail call void @free(i8* %134) #7, !dbg !533
  store i32** null, i32*** %ub, align 8, !dbg !534, !tbaa !397
  %135 = load i32*** %rnsize, align 8, !dbg !535, !tbaa !397
  %136 = bitcast i32** %135 to i8*, !dbg !535
  tail call void @free(i8* %136) #7, !dbg !535
  store i32** null, i32*** %rnsize, align 8, !dbg !536, !tbaa !397
  %137 = load i32** %rnpoints, align 8, !dbg !537, !tbaa !397
  %138 = bitcast i32* %137 to i8*, !dbg !537
  tail call void @free(i8* %138) #7, !dbg !537
  store i32* null, i32** %rnpoints, align 8, !dbg !538, !tbaa !397
  %139 = load i32** %nghostzones, align 8, !dbg !539, !tbaa !397
  %140 = bitcast i32* %139 to i8*, !dbg !539
  tail call void @free(i8* %140) #7, !dbg !539
  store i32* null, i32** %nghostzones, align 8, !dbg !540, !tbaa !397
  %141 = load i32** %nsize, align 8, !dbg !541, !tbaa !397
  %142 = bitcast i32* %141 to i8*, !dbg !541
  tail call void @free(i8* %142) #7, !dbg !541
  store i32* null, i32** %nsize, align 8, !dbg !542, !tbaa !397
  %143 = load i32** %lnsize, align 8, !dbg !543, !tbaa !397
  %144 = bitcast i32* %143 to i8*, !dbg !543
  tail call void @free(i8* %144) #7, !dbg !543
  store i32* null, i32** %lnsize, align 8, !dbg !544, !tbaa !397
  %145 = load i32** %bbox, align 8, !dbg !545, !tbaa !397
  %146 = bitcast i32* %145 to i8*, !dbg !545
  tail call void @free(i8* %146) #7, !dbg !545
  store i32* null, i32** %bbox, align 8, !dbg !546, !tbaa !397
  %147 = load i32** %iterator, align 8, !dbg !547, !tbaa !397
  %148 = bitcast i32* %147 to i8*, !dbg !547
  tail call void @free(i8* %148) #7, !dbg !547
  store i32* null, i32** %iterator, align 8, !dbg !548, !tbaa !397
  %149 = load i32** %hyper_volume, align 8, !dbg !549, !tbaa !397
  %150 = bitcast i32* %149 to i8*, !dbg !549
  tail call void @free(i8* %150) #7, !dbg !549
  store i32* null, i32** %hyper_volume, align 8, !dbg !550, !tbaa !397
  br label %if.end484, !dbg !551

if.end484:                                        ; preds = %for.inc376, %entry, %land.lhs.true191, %land.lhs.true188, %land.lhs.true185, %land.lhs.true182, %land.lhs.true179, %land.lhs.true176, %land.lhs.true173, %land.lhs.true170, %land.lhs.true167, %if.end164, %for.end448
  %retcode.3 = phi i32 [ 1, %for.end448 ], [ 0, %land.lhs.true191 ], [ 0, %land.lhs.true188 ], [ 0, %land.lhs.true185 ], [ 0, %land.lhs.true182 ], [ 0, %land.lhs.true179 ], [ 0, %land.lhs.true176 ], [ 0, %land.lhs.true173 ], [ 0, %land.lhs.true170 ], [ 0, %land.lhs.true167 ], [ 0, %if.end164 ], [ -1, %entry ], [ 0, %for.inc376 ]
  ret i32 %retcode.3, !dbg !552
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupPGExtrasSizes(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* %nprocs, i32 %this_proc, %struct.PGExtras* nocapture %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !152), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !153), !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !154), !dbg !555
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !155), !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !156), !dbg !557
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !157), !dbg !558
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !158), !dbg !559
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !159), !dbg !560
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !160), !dbg !561
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !562
  %cmp188 = icmp sgt i32 %dim, 0, !dbg !562
  br i1 %cmp188, label %for.body.lr.ph, label %for.end47, !dbg !562

for.body.lr.ph:                                   ; preds = %entry
  %nsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !564
  %cmp23 = icmp eq i32 %stagger, 1, !dbg !567
  br label %for.body, !dbg !562

for.cond38.preheader:                             ; preds = %for.inc
  br i1 %cmp188, label %for.body40.lr.ph, label %for.end47, !dbg !568

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %nghostzones = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !570
  %0 = load i32** %nghostzones, align 8, !dbg !570, !tbaa !397
  br label %for.body40, !dbg !568

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv198 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next199, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %sh, i64 %indvars.iv198, !dbg !572
  %1 = load i32* %arrayidx, align 4, !dbg !572, !tbaa !381
  %cmp1 = icmp slt i32 %1, 0, !dbg !572
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !572

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv198, !dbg !572
  %2 = load i32* %arrayidx3, align 4, !dbg !572, !tbaa !381
  %cmp4 = icmp sgt i32 %2, 1, !dbg !572
  br i1 %cmp4, label %if.then, label %if.else, !dbg !572

if.then:                                          ; preds = %land.lhs.true
  %sub = add nsw i32 %2, -2, !dbg !564
  %sub9 = sub nsw i32 0, %1, !dbg !564
  %arrayidx11 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv198, !dbg !564
  %3 = load i32* %arrayidx11, align 4, !dbg !564, !tbaa !381
  %mul = shl nsw i32 %3, 1, !dbg !564
  %sub12 = sub nsw i32 %sub9, %mul, !dbg !564
  %mul13 = mul nsw i32 %sub12, %sub, !dbg !564
  %sub19 = sub nsw i32 %sub9, %3, !dbg !564
  %mul20 = shl i32 %sub19, 1, !dbg !564
  %add = add nsw i32 %mul13, %mul20, !dbg !564
  %4 = load i32** %nsize, align 8, !dbg !564, !tbaa !397
  %arrayidx22 = getelementptr inbounds i32* %4, i64 %indvars.iv198, !dbg !564
  store i32 %add, i32* %arrayidx22, align 4, !dbg !564, !tbaa !381
  br i1 %cmp23, label %if.then24, label %for.inc, !dbg !567

if.then24:                                        ; preds = %if.then
  %5 = load i32* %arrayidx3, align 4, !dbg !573, !tbaa !381
  %sub27.neg = sub i32 1, %5, !dbg !573
  %sub31 = add i32 %sub27.neg, %add, !dbg !573
  store i32 %sub31, i32* %arrayidx22, align 4, !dbg !573, !tbaa !381
  br label %for.inc, !dbg !575

if.else:                                          ; preds = %land.lhs.true, %for.body
  %ispos = icmp sgt i32 %1, -1, !dbg !576
  %neg = sub i32 0, %1, !dbg !576
  %6 = select i1 %ispos, i32 %1, i32 %neg, !dbg !576
  %7 = load i32** %nsize, align 8, !dbg !576, !tbaa !397
  %arrayidx36 = getelementptr inbounds i32* %7, i64 %indvars.iv198, !dbg !576
  store i32 %6, i32* %arrayidx36, align 4, !dbg !576, !tbaa !381
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then24, %if.then
  %indvars.iv.next199 = add i64 %indvars.iv198, 1, !dbg !562
  %lftr.wideiv200 = trunc i64 %indvars.iv.next199 to i32, !dbg !562
  %exitcond201 = icmp eq i32 %lftr.wideiv200, %dim, !dbg !562
  br i1 %exitcond201, label %for.cond38.preheader, label %for.body, !dbg !562

for.body40:                                       ; preds = %for.body40, %for.body40.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next195, %for.body40 ]
  %arrayidx42 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv194, !dbg !570
  %8 = load i32* %arrayidx42, align 4, !dbg !570, !tbaa !381
  %arrayidx44 = getelementptr inbounds i32* %0, i64 %indvars.iv194, !dbg !570
  store i32 %8, i32* %arrayidx44, align 4, !dbg !570, !tbaa !381
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !568
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32, !dbg !568
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %dim, !dbg !568
  br i1 %exitcond197, label %for.end47, label %for.body40, !dbg !568

for.end47:                                        ; preds = %entry, %for.body40, %for.cond38.preheader
  %call48 = tail call i32 @PUGH_SetupBoundingBox(i32 %dim, i32* undef, i32 %stagger, i32* undef, i32* %nghosts, i32 %total_procs, i32* %nprocs, %struct.PGExtras* %this) #8, !dbg !578
  %call49 = tail call i32 @PUGH_SetupRemoteSizes(i32 %dim, i32* undef, i32 undef, i32* undef, i32* undef, i32 %total_procs, i32* undef, %struct.PGExtras* %this) #8, !dbg !579
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !580
  %idxprom54 = sext i32 %this_proc to i64, !dbg !582
  br i1 %cmp188, label %for.body52.lr.ph, label %for.end61, !dbg !580

for.body52.lr.ph:                                 ; preds = %for.end47
  %rnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9, !dbg !582
  %9 = load i32*** %rnsize, align 8, !dbg !582, !tbaa !397
  %arrayidx55 = getelementptr inbounds i32** %9, i64 %idxprom54, !dbg !582
  %10 = load i32** %arrayidx55, align 8, !dbg !582, !tbaa !397
  %lnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !582
  %11 = load i32** %lnsize, align 8, !dbg !582, !tbaa !397
  br label %for.body52, !dbg !580

for.body52:                                       ; preds = %for.body52, %for.body52.lr.ph
  %indvars.iv190 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next191, %for.body52 ]
  %arrayidx56 = getelementptr inbounds i32* %10, i64 %indvars.iv190, !dbg !582
  %12 = load i32* %arrayidx56, align 4, !dbg !582, !tbaa !381
  %arrayidx58 = getelementptr inbounds i32* %11, i64 %indvars.iv190, !dbg !582
  store i32 %12, i32* %arrayidx58, align 4, !dbg !582, !tbaa !381
  %indvars.iv.next191 = add i64 %indvars.iv190, 1, !dbg !580
  %lftr.wideiv192 = trunc i64 %indvars.iv.next191 to i32, !dbg !580
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %dim, !dbg !580
  br i1 %exitcond193, label %for.end61, label %for.body52, !dbg !580

for.end61:                                        ; preds = %for.end47, %for.body52
  %rnpoints = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8, !dbg !584
  %13 = load i32** %rnpoints, align 8, !dbg !584, !tbaa !397
  %arrayidx63 = getelementptr inbounds i32* %13, i64 %idxprom54, !dbg !584
  %14 = load i32* %arrayidx63, align 4, !dbg !584, !tbaa !381
  %npoints = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 7, !dbg !584
  store i32 %14, i32* %npoints, align 4, !dbg !584, !tbaa !381
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !162), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !163), !dbg !586
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !587
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !165), !dbg !588
  %cmp67177 = icmp sgt i32 %total_procs, 0, !dbg !588
  br i1 %cmp67177, label %for.body68, label %for.end93, !dbg !588

for.body68:                                       ; preds = %for.end61, %for.body68
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body68 ], [ 0, %for.end61 ]
  %avgpoints.0180 = phi i32 [ %add90, %for.body68 ], [ 0, %for.end61 ]
  %minpoints.0179 = phi i32 [ %cond86, %for.body68 ], [ %14, %for.end61 ]
  %maxpoints.0178 = phi i32 [ %.maxpoints.0, %for.body68 ], [ %14, %for.end61 ]
  %arrayidx71 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !590
  %15 = load i32* %arrayidx71, align 4, !dbg !590, !tbaa !381
  %cmp72 = icmp slt i32 %maxpoints.0178, %15, !dbg !590
  %.maxpoints.0 = select i1 %cmp72, i32 %15, i32 %maxpoints.0178, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i32 %.maxpoints.0}, i64 0, metadata !162), !dbg !590
  %cmp79 = icmp sgt i32 %minpoints.0179, %15, !dbg !592
  %cond86 = select i1 %cmp79, i32 %15, i32 %minpoints.0179, !dbg !592
  tail call void @llvm.dbg.value(metadata !{i32 %cond86}, i64 0, metadata !163), !dbg !592
  %add90 = add nsw i32 %15, %avgpoints.0180, !dbg !593
  tail call void @llvm.dbg.value(metadata !{i32 %add90}, i64 0, metadata !164), !dbg !593
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !588
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !588
  %exitcond = icmp eq i32 %lftr.wideiv, %total_procs, !dbg !588
  br i1 %exitcond, label %for.end93, label %for.body68, !dbg !588

for.end93:                                        ; preds = %for.body68, %for.end61
  %avgpoints.0.lcssa = phi i32 [ 0, %for.end61 ], [ %add90, %for.body68 ]
  %minpoints.0.lcssa = phi i32 [ %14, %for.end61 ], [ %cond86, %for.body68 ]
  %maxpoints.0.lcssa = phi i32 [ %14, %for.end61 ], [ %.maxpoints.0, %for.body68 ]
  %div = sdiv i32 %avgpoints.0.lcssa, %total_procs, !dbg !594
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !164), !dbg !594
  %cmp94 = icmp sgt i32 %div, 0, !dbg !595
  br i1 %cmp94, label %cond.true95, label %cond.end100, !dbg !595

cond.true95:                                      ; preds = %for.end93
  %sub96 = sub nsw i32 %maxpoints.0.lcssa, %minpoints.0.lcssa, !dbg !595
  %mul97 = mul nsw i32 %sub96, 100, !dbg !595
  %div98 = sdiv i32 %mul97, %div, !dbg !595
  %phitmp = sitofp i32 %div98 to double, !dbg !595
  br label %cond.end100, !dbg !595

cond.end100:                                      ; preds = %for.end93, %cond.true95
  %cond101 = phi double [ %phitmp, %cond.true95 ], [ 0.000000e+00, %for.end93 ]
  %maxskew = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 2, !dbg !595
  store double %cond101, double* %maxskew, align 8, !dbg !595, !tbaa !596
  ret i32 0, !dbg !597
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupPGExtrasOwnership(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* nocapture %nprocs, i32 %this_proc, %struct.PGExtras* %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !168), !dbg !598
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !169), !dbg !599
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !170), !dbg !600
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !171), !dbg !601
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !172), !dbg !602
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !173), !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !174), !dbg !604
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !175), !dbg !605
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !176), !dbg !606
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !178), !dbg !607
  %cmp344 = icmp sgt i32 %dim, 0, !dbg !607
  br i1 %cmp344, label %for.body.lr.ph, label %for.end221, !dbg !607

for.body.lr.ph:                                   ; preds = %entry
  %idxprom5 = sext i32 %this_proc to i64, !dbg !609
  %lb = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3, !dbg !609
  %0 = load i32*** %lb, align 8, !dbg !609, !tbaa !397
  %arrayidx = getelementptr inbounds i32** %0, i64 %idxprom5, !dbg !609
  %1 = load i32** %arrayidx, align 8, !dbg !609, !tbaa !397
  %arrayidx12 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0, !dbg !609
  %2 = load i32** %arrayidx12, align 8, !dbg !609, !tbaa !397
  %ub = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4, !dbg !611
  %3 = load i32*** %ub, align 8, !dbg !611, !tbaa !397
  %arrayidx16 = getelementptr inbounds i32** %3, i64 %idxprom5, !dbg !611
  %4 = load i32** %arrayidx16, align 8, !dbg !611, !tbaa !397
  %nsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !611
  %5 = load i32** %nsize, align 8, !dbg !611, !tbaa !397
  %lnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !611
  %6 = load i32** %lnsize, align 8, !dbg !611, !tbaa !397
  %arrayidx37 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1, !dbg !611
  %7 = load i32** %arrayidx37, align 8, !dbg !611, !tbaa !397
  %bbox = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 5, !dbg !612
  %8 = load i32** %bbox, align 8, !dbg !612, !tbaa !397
  %nghostzones29 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !611
  br label %for.body, !dbg !607

for.cond62.preheader:                             ; preds = %cond.end32
  br i1 %cmp344, label %for.body65.lr.ph, label %for.end221, !dbg !613

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %nghostzones69 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !615
  %arrayidx74 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0, !dbg !615
  %lnsize77 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !618
  %arrayidx86 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1, !dbg !618
  br label %for.body65, !dbg !613

for.body:                                         ; preds = %cond.end32, %for.body.lr.ph
  %indvars.iv362 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next363, %cond.end32 ]
  %arrayidx6 = getelementptr inbounds i32* %1, i64 %indvars.iv362, !dbg !609
  %9 = load i32* %arrayidx6, align 4, !dbg !609, !tbaa !381
  %cmp7 = icmp eq i32 %9, 0, !dbg !609
  br i1 %cmp7, label %cond.end, label %cond.false, !dbg !609

cond.false:                                       ; preds = %for.body
  %10 = load i32** %nghostzones29, align 8, !dbg !609, !tbaa !397
  %arrayidx9 = getelementptr inbounds i32* %10, i64 %indvars.iv362, !dbg !609
  %11 = load i32* %arrayidx9, align 4, !dbg !609, !tbaa !381
  br label %cond.end, !dbg !609

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %11, %cond.false ], [ 0, %for.body ], !dbg !609
  %arrayidx13 = getelementptr inbounds i32* %2, i64 %indvars.iv362, !dbg !609
  store i32 %cond, i32* %arrayidx13, align 4, !dbg !609, !tbaa !381
  %arrayidx17 = getelementptr inbounds i32* %4, i64 %indvars.iv362, !dbg !611
  %12 = load i32* %arrayidx17, align 4, !dbg !611, !tbaa !381
  %arrayidx19 = getelementptr inbounds i32* %5, i64 %indvars.iv362, !dbg !611
  %13 = load i32* %arrayidx19, align 4, !dbg !611, !tbaa !381
  %sub = add nsw i32 %13, -1, !dbg !611
  %cmp20 = icmp eq i32 %12, %sub, !dbg !611
  %arrayidx23 = getelementptr inbounds i32* %6, i64 %indvars.iv362, !dbg !611
  %14 = load i32* %arrayidx23, align 4, !dbg !611, !tbaa !381
  br i1 %cmp20, label %cond.end32, label %cond.false24, !dbg !611

cond.false24:                                     ; preds = %cond.end
  %15 = load i32** %nghostzones29, align 8, !dbg !611, !tbaa !397
  %arrayidx30 = getelementptr inbounds i32* %15, i64 %indvars.iv362, !dbg !611
  %16 = load i32* %arrayidx30, align 4, !dbg !611, !tbaa !381
  %sub31 = sub nsw i32 %14, %16, !dbg !611
  br label %cond.end32, !dbg !611

cond.end32:                                       ; preds = %cond.end, %cond.false24
  %cond33 = phi i32 [ %sub31, %cond.false24 ], [ %14, %cond.end ], !dbg !611
  %arrayidx38 = getelementptr inbounds i32* %7, i64 %indvars.iv362, !dbg !611
  store i32 %cond33, i32* %arrayidx38, align 4, !dbg !611, !tbaa !381
  %17 = load i32* %arrayidx6, align 4, !dbg !612, !tbaa !381
  %cmp44 = icmp eq i32 %17, 0, !dbg !612
  %conv = zext i1 %cmp44 to i32, !dbg !612
  %18 = trunc i64 %indvars.iv362 to i32, !dbg !612
  %mul = shl nsw i32 %18, 1, !dbg !612
  %idxprom45 = sext i32 %mul to i64, !dbg !612
  %arrayidx46 = getelementptr inbounds i32* %8, i64 %idxprom45, !dbg !612
  store i32 %conv, i32* %arrayidx46, align 4, !dbg !612, !tbaa !381
  %19 = load i32* %arrayidx17, align 4, !dbg !619, !tbaa !381
  %20 = load i32* %arrayidx19, align 4, !dbg !619, !tbaa !381
  %sub55 = add nsw i32 %20, -1, !dbg !619
  %cmp56 = icmp eq i32 %19, %sub55, !dbg !619
  %conv57 = zext i1 %cmp56 to i32, !dbg !619
  %add331 = or i32 %mul, 1, !dbg !619
  %idxprom59 = sext i32 %add331 to i64, !dbg !619
  %arrayidx61 = getelementptr inbounds i32* %8, i64 %idxprom59, !dbg !619
  store i32 %conv57, i32* %arrayidx61, align 4, !dbg !619, !tbaa !381
  %indvars.iv.next363 = add i64 %indvars.iv362, 1, !dbg !607
  %lftr.wideiv364 = trunc i64 %indvars.iv.next363 to i32, !dbg !607
  %exitcond365 = icmp eq i32 %lftr.wideiv364, %dim, !dbg !607
  br i1 %exitcond365, label %for.cond62.preheader, label %for.body, !dbg !607

for.cond91.preheader:                             ; preds = %for.inc88
  br i1 %cmp344, label %for.body94.lr.ph, label %for.end221, !dbg !620

for.body94.lr.ph:                                 ; preds = %for.cond91.preheader
  %nsize96 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !622
  %21 = load i32** %nsize96, align 8, !dbg !622, !tbaa !397
  %arrayidx104 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 0, !dbg !624
  %arrayidx109 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 1, !dbg !626
  br label %for.body94, !dbg !620

for.body65:                                       ; preds = %for.inc88, %for.body65.lr.ph
  %indvars.iv358 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next359, %for.inc88 ]
  %arrayidx67 = getelementptr inbounds i32* %perme, i64 %indvars.iv358, !dbg !627
  %22 = load i32* %arrayidx67, align 4, !dbg !627, !tbaa !381
  %tobool = icmp eq i32 %22, 0, !dbg !627
  br i1 %tobool, label %for.inc88, label %if.then, !dbg !627

if.then:                                          ; preds = %for.body65
  %23 = load i32** %nghostzones69, align 8, !dbg !615, !tbaa !397
  %arrayidx70 = getelementptr inbounds i32* %23, i64 %indvars.iv358, !dbg !615
  %24 = load i32* %arrayidx70, align 4, !dbg !615, !tbaa !381
  %25 = load i32** %arrayidx74, align 8, !dbg !615, !tbaa !397
  %arrayidx75 = getelementptr inbounds i32* %25, i64 %indvars.iv358, !dbg !615
  store i32 %24, i32* %arrayidx75, align 4, !dbg !615, !tbaa !381
  %26 = load i32** %lnsize77, align 8, !dbg !618, !tbaa !397
  %arrayidx78 = getelementptr inbounds i32* %26, i64 %indvars.iv358, !dbg !618
  %27 = load i32* %arrayidx78, align 4, !dbg !618, !tbaa !381
  %28 = load i32* %arrayidx70, align 4, !dbg !618, !tbaa !381
  %sub82 = sub nsw i32 %27, %28, !dbg !618
  %29 = load i32** %arrayidx86, align 8, !dbg !618, !tbaa !397
  %arrayidx87 = getelementptr inbounds i32* %29, i64 %indvars.iv358, !dbg !618
  store i32 %sub82, i32* %arrayidx87, align 4, !dbg !618, !tbaa !381
  br label %for.inc88, !dbg !628

for.inc88:                                        ; preds = %for.body65, %if.then
  %indvars.iv.next359 = add i64 %indvars.iv358, 1, !dbg !613
  %lftr.wideiv360 = trunc i64 %indvars.iv.next359 to i32, !dbg !613
  %exitcond361 = icmp eq i32 %lftr.wideiv360, %dim, !dbg !613
  br i1 %exitcond361, label %for.cond91.preheader, label %for.body65, !dbg !613

for.cond115.preheader:                            ; preds = %for.inc112
  %mul116 = shl nsw i32 %dim, 1, !dbg !629
  br i1 %cmp344, label %for.cond120.preheader.lr.ph, label %for.end221, !dbg !629

for.cond120.preheader.lr.ph:                      ; preds = %for.cond115.preheader
  %lnsize125 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !631
  %nghostzones132 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !635
  %arrayidx157 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 0, !dbg !637
  %arrayidx164 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 1, !dbg !638
  br label %for.body123.lr.ph, !dbg !629

for.body94:                                       ; preds = %for.inc112, %for.body94.lr.ph
  %indvars.iv354 = phi i64 [ 0, %for.body94.lr.ph ], [ %indvars.iv.next355, %for.inc112 ]
  %arrayidx97 = getelementptr inbounds i32* %21, i64 %indvars.iv354, !dbg !622
  %30 = load i32* %arrayidx97, align 4, !dbg !622, !tbaa !381
  %cmp98 = icmp eq i32 %30, 1, !dbg !622
  br i1 %cmp98, label %if.then100, label %for.inc112, !dbg !622

if.then100:                                       ; preds = %for.body94
  %31 = load i32** %arrayidx104, align 8, !dbg !624, !tbaa !397
  %arrayidx105 = getelementptr inbounds i32* %31, i64 %indvars.iv354, !dbg !624
  store i32 0, i32* %arrayidx105, align 4, !dbg !624, !tbaa !381
  %32 = load i32** %arrayidx109, align 8, !dbg !626, !tbaa !397
  %arrayidx110 = getelementptr inbounds i32* %32, i64 %indvars.iv354, !dbg !626
  store i32 1, i32* %arrayidx110, align 4, !dbg !626, !tbaa !381
  br label %for.inc112, !dbg !639

for.inc112:                                       ; preds = %for.body94, %if.then100
  %indvars.iv.next355 = add i64 %indvars.iv354, 1, !dbg !620
  %lftr.wideiv356 = trunc i64 %indvars.iv.next355 to i32, !dbg !620
  %exitcond357 = icmp eq i32 %lftr.wideiv356, %dim, !dbg !620
  br i1 %exitcond357, label %for.cond115.preheader, label %for.body94, !dbg !620

for.body123.lr.ph:                                ; preds = %for.inc170, %for.cond120.preheader.lr.ph
  %indvars.iv352 = phi i64 [ 0, %for.cond120.preheader.lr.ph ], [ %indvars.iv.next353, %for.inc170 ]
  %33 = load i32** %lnsize125, align 8, !dbg !631, !tbaa !397
  %34 = load i32*** %arrayidx157, align 8, !dbg !637, !tbaa !397
  %arrayidx158 = getelementptr inbounds i32** %34, i64 %indvars.iv352, !dbg !637
  %35 = load i32** %arrayidx158, align 8, !dbg !637, !tbaa !397
  %36 = load i32*** %arrayidx164, align 8, !dbg !638, !tbaa !397
  %arrayidx165 = getelementptr inbounds i32** %36, i64 %indvars.iv352, !dbg !638
  %37 = load i32** %arrayidx165, align 8, !dbg !638, !tbaa !397
  br label %for.body123, !dbg !640

for.cond173.preheader:                            ; preds = %for.inc170
  br i1 %cmp344, label %for.cond178.preheader.lr.ph, label %for.end221, !dbg !641

for.cond178.preheader.lr.ph:                      ; preds = %for.cond173.preheader
  %lnsize183 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 6, !dbg !643
  %nghostzones190 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !647
  %arrayidx206 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 0, !dbg !649
  %arrayidx213 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 1, !dbg !650
  br label %for.body181.lr.ph, !dbg !641

for.body123:                                      ; preds = %if.end153, %for.body123.lr.ph
  %indvars.iv348 = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next349, %if.end153 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !651
  %arrayidx126 = getelementptr inbounds i32* %33, i64 %indvars.iv348, !dbg !631
  %38 = load i32* %arrayidx126, align 4, !dbg !631, !tbaa !381
  tail call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !181), !dbg !631
  %39 = trunc i64 %indvars.iv348 to i32, !dbg !652
  %mul127 = shl nsw i32 %39, 1, !dbg !652
  %40 = trunc i64 %indvars.iv352 to i32, !dbg !652
  %cmp128 = icmp eq i32 %40, %mul127, !dbg !652
  br i1 %cmp128, label %if.then130, label %if.end138, !dbg !652

if.then130:                                       ; preds = %for.body123
  %41 = load i32** %nghostzones132, align 8, !dbg !635, !tbaa !397
  %arrayidx133 = getelementptr inbounds i32* %41, i64 %indvars.iv348, !dbg !635
  %42 = load i32* %arrayidx133, align 4, !dbg !635, !tbaa !381
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !180), !dbg !635
  %add137 = shl nsw i32 %42, 1, !dbg !653
  tail call void @llvm.dbg.value(metadata !{i32 %add137}, i64 0, metadata !181), !dbg !653
  br label %if.end138, !dbg !654

if.end138:                                        ; preds = %if.then130, %for.body123
  %istart.0 = phi i32 [ %42, %if.then130 ], [ 0, %for.body123 ]
  %iend.0 = phi i32 [ %add137, %if.then130 ], [ %38, %for.body123 ]
  %add140330 = or i32 %mul127, 1, !dbg !655
  %cmp141 = icmp eq i32 %40, %add140330, !dbg !655
  br i1 %cmp141, label %if.then143, label %if.end153, !dbg !655

if.then143:                                       ; preds = %if.end138
  tail call void @llvm.dbg.value(metadata !{i32 %iend.0}, i64 0, metadata !177), !dbg !656
  %43 = load i32** %nghostzones132, align 8, !dbg !658, !tbaa !397
  %arrayidx146 = getelementptr inbounds i32* %43, i64 %indvars.iv348, !dbg !658
  %44 = load i32* %arrayidx146, align 4, !dbg !658, !tbaa !381
  %mul147 = shl nsw i32 %44, 1, !dbg !658
  %sub148 = sub nsw i32 %iend.0, %mul147, !dbg !658
  tail call void @llvm.dbg.value(metadata !{i32 %sub148}, i64 0, metadata !180), !dbg !658
  %sub152 = sub nsw i32 %iend.0, %44, !dbg !659
  tail call void @llvm.dbg.value(metadata !{i32 %sub152}, i64 0, metadata !181), !dbg !659
  br label %if.end153, !dbg !660

if.end153:                                        ; preds = %if.then143, %if.end138
  %istart.1 = phi i32 [ %sub148, %if.then143 ], [ %istart.0, %if.end138 ]
  %iend.1 = phi i32 [ %sub152, %if.then143 ], [ %iend.0, %if.end138 ]
  %arrayidx159 = getelementptr inbounds i32* %35, i64 %indvars.iv348, !dbg !637
  store i32 %istart.1, i32* %arrayidx159, align 4, !dbg !637, !tbaa !381
  %arrayidx166 = getelementptr inbounds i32* %37, i64 %indvars.iv348, !dbg !638
  store i32 %iend.1, i32* %arrayidx166, align 4, !dbg !638, !tbaa !381
  %indvars.iv.next349 = add i64 %indvars.iv348, 1, !dbg !640
  %lftr.wideiv350 = trunc i64 %indvars.iv.next349 to i32, !dbg !640
  %exitcond351 = icmp eq i32 %lftr.wideiv350, %dim, !dbg !640
  br i1 %exitcond351, label %for.inc170, label %for.body123, !dbg !640

for.inc170:                                       ; preds = %if.end153
  %indvars.iv.next353 = add i64 %indvars.iv352, 1, !dbg !629
  %45 = trunc i64 %indvars.iv.next353 to i32, !dbg !629
  %cmp117 = icmp slt i32 %45, %mul116, !dbg !629
  br i1 %cmp117, label %for.body123.lr.ph, label %for.cond173.preheader, !dbg !629

for.body181.lr.ph:                                ; preds = %for.inc219, %for.cond178.preheader.lr.ph
  %indvars.iv346 = phi i64 [ 0, %for.cond178.preheader.lr.ph ], [ %indvars.iv.next347, %for.inc219 ]
  br label %for.body181, !dbg !661

for.body181:                                      ; preds = %if.end202, %for.body181.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body181.lr.ph ], [ %indvars.iv.next, %if.end202 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !662
  %46 = trunc i64 %indvars.iv to i32, !dbg !663
  %mul185 = shl nsw i32 %46, 1, !dbg !663
  %47 = trunc i64 %indvars.iv346 to i32, !dbg !663
  %cmp186 = icmp eq i32 %47, %mul185, !dbg !663
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !664
  %nghostzones190.lnsize183 = select i1 %cmp186, i32** %nghostzones190, i32** %lnsize183, !dbg !663
  %.pn = load i32** %nghostzones190.lnsize183, align 8, !dbg !647
  %iend.2.in = getelementptr inbounds i32* %.pn, i64 %indvars.iv, !dbg !647
  %iend.2 = load i32* %iend.2.in, align 4, !dbg !647
  %add194329 = or i32 %mul185, 1, !dbg !665
  %cmp195 = icmp eq i32 %47, %add194329, !dbg !665
  br i1 %cmp195, label %if.then197, label %if.end202, !dbg !665

if.then197:                                       ; preds = %for.body181
  tail call void @llvm.dbg.value(metadata !{i32 %iend.2}, i64 0, metadata !177), !dbg !666
  %48 = load i32** %nghostzones190, align 8, !dbg !668, !tbaa !397
  %arrayidx200 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !668
  %49 = load i32* %arrayidx200, align 4, !dbg !668, !tbaa !381
  %sub201 = sub nsw i32 %iend.2, %49, !dbg !668
  tail call void @llvm.dbg.value(metadata !{i32 %sub201}, i64 0, metadata !180), !dbg !668
  tail call void @llvm.dbg.value(metadata !{i32 %iend.2}, i64 0, metadata !181), !dbg !669
  br label %if.end202, !dbg !670

if.end202:                                        ; preds = %for.body181, %if.then197
  %istart.3 = phi i32 [ %sub201, %if.then197 ], [ 0, %for.body181 ]
  %50 = load i32*** %arrayidx206, align 8, !dbg !649, !tbaa !397
  %arrayidx207 = getelementptr inbounds i32** %50, i64 %indvars.iv346, !dbg !649
  %51 = load i32** %arrayidx207, align 8, !dbg !649, !tbaa !397
  %arrayidx208 = getelementptr inbounds i32* %51, i64 %indvars.iv, !dbg !649
  store i32 %istart.3, i32* %arrayidx208, align 4, !dbg !649, !tbaa !381
  %52 = load i32*** %arrayidx213, align 8, !dbg !650, !tbaa !397
  %arrayidx214 = getelementptr inbounds i32** %52, i64 %indvars.iv346, !dbg !650
  %53 = load i32** %arrayidx214, align 8, !dbg !650, !tbaa !397
  %arrayidx215 = getelementptr inbounds i32* %53, i64 %indvars.iv, !dbg !650
  store i32 %iend.2, i32* %arrayidx215, align 4, !dbg !650, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !661
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !661
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !661
  br i1 %exitcond, label %for.inc219, label %for.body181, !dbg !661

for.inc219:                                       ; preds = %if.end202
  %indvars.iv.next347 = add i64 %indvars.iv346, 1, !dbg !641
  %54 = trunc i64 %indvars.iv.next347 to i32, !dbg !641
  %cmp175 = icmp slt i32 %54, %mul116, !dbg !641
  br i1 %cmp175, label %for.body181.lr.ph, label %for.end221, !dbg !641

for.end221:                                       ; preds = %for.cond62.preheader, %entry, %for.cond91.preheader, %for.cond115.preheader, %for.inc219, %for.cond173.preheader
  ret i32 0, !dbg !671
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupPGExtrasStaggering(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* nocapture %nprocs, i32 %this_proc, %struct.PGExtras* nocapture %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !184), !dbg !672
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !185), !dbg !673
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !186), !dbg !674
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !187), !dbg !675
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !188), !dbg !676
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !189), !dbg !677
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !190), !dbg !678
  tail call void @llvm.dbg.value(metadata !{i32 %this_proc}, i64 0, metadata !191), !dbg !679
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !192), !dbg !680
  %conv = sext i32 %dim to i64, !dbg !681
  %mul = shl nsw i64 %conv, 2, !dbg !681
  %call = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !681
  %0 = bitcast i8* %call to i32*, !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !197), !dbg !681
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !682
  %cmp210 = icmp sgt i32 %dim, 0, !dbg !682
  br i1 %cmp210, label %for.body.lr.ph, label %for.cond10.preheader, !dbg !682

for.body.lr.ph:                                   ; preds = %entry
  %idxprom2 = sext i32 %this_proc to i64, !dbg !684
  %ub = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4, !dbg !684
  %1 = load i32*** %ub, align 8, !dbg !684, !tbaa !397
  %arrayidx = getelementptr inbounds i32** %1, i64 %idxprom2, !dbg !684
  %2 = load i32** %arrayidx, align 8, !dbg !684, !tbaa !397
  %nsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !684
  %3 = load i32** %nsize, align 8, !dbg !684, !tbaa !397
  br label %for.body, !dbg !682

for.cond10.preheader:                             ; preds = %for.body, %entry
  %mul89 = shl nsw i32 %dim, 1, !dbg !686
  br label %for.cond14.preheader, !dbg !690

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv228 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next229, %for.body ]
  %arrayidx3 = getelementptr inbounds i32* %2, i64 %indvars.iv228, !dbg !684
  %4 = load i32* %arrayidx3, align 4, !dbg !684, !tbaa !381
  %arrayidx5 = getelementptr inbounds i32* %3, i64 %indvars.iv228, !dbg !684
  %5 = load i32* %arrayidx5, align 4, !dbg !684, !tbaa !381
  %sub = add nsw i32 %5, -1, !dbg !684
  %cmp6 = icmp eq i32 %4, %sub, !dbg !684
  %cond = zext i1 %cmp6 to i32, !dbg !684
  %arrayidx9 = getelementptr inbounds i32* %0, i64 %indvars.iv228, !dbg !684
  store i32 %cond, i32* %arrayidx9, align 4, !dbg !684, !tbaa !381
  %indvars.iv.next229 = add i64 %indvars.iv228, 1, !dbg !682
  %lftr.wideiv230 = trunc i64 %indvars.iv.next229 to i32, !dbg !682
  %exitcond231 = icmp eq i32 %lftr.wideiv230, %dim, !dbg !682
  br i1 %exitcond231, label %for.cond10.preheader, label %for.body, !dbg !682

for.cond14.preheader:                             ; preds = %for.inc133, %for.cond10.preheader
  %indvars.iv224 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next225, %for.inc133 ]
  br i1 %cmp210, label %for.cond18.preheader.lr.ph, label %for.inc133, !dbg !691

for.cond18.preheader.lr.ph:                       ; preds = %for.cond14.preheader
  %arrayidx83 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv224, i64 1, !dbg !693
  br label %for.cond18.preheader, !dbg !691

for.cond18.preheader:                             ; preds = %for.inc85, %for.cond18.preheader.lr.ph
  %indvars.iv214 = phi i64 [ 0, %for.cond18.preheader.lr.ph ], [ %indvars.iv.next215, %for.inc85 ]
  br label %for.body38.lr.ph, !dbg !696

for.body38.lr.ph:                                 ; preds = %for.cond18.preheader, %for.inc74
  %indvars.iv212 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next213, %for.inc74 ]
  %arrayidx25 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 0, i64 %indvars.iv212, !dbg !698
  %6 = load i32** %arrayidx25, align 8, !dbg !698, !tbaa !397
  %arrayidx26 = getelementptr inbounds i32* %6, i64 %indvars.iv214, !dbg !698
  %7 = load i32* %arrayidx26, align 4, !dbg !698, !tbaa !381
  %arrayidx32 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 13, i64 %indvars.iv224, i64 %indvars.iv212, !dbg !698
  %8 = load i32** %arrayidx32, align 8, !dbg !698, !tbaa !397
  %arrayidx33 = getelementptr inbounds i32* %8, i64 %indvars.iv214, !dbg !698
  store i32 %7, i32* %arrayidx33, align 4, !dbg !698, !tbaa !381
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !700
  %arrayidx43 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 0, i64 %indvars.iv212, !dbg !702
  %9 = load i32*** %arrayidx43, align 8, !dbg !702, !tbaa !397
  %arrayidx52 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv224, i64 %indvars.iv212, !dbg !702
  %10 = load i32*** %arrayidx52, align 8, !dbg !702, !tbaa !397
  %arrayidx59 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 0, i64 %indvars.iv212, !dbg !704
  %11 = load i32*** %arrayidx59, align 8, !dbg !704, !tbaa !397
  %arrayidx68 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 14, i64 %indvars.iv224, i64 %indvars.iv212, !dbg !704
  %12 = load i32*** %arrayidx68, align 8, !dbg !704, !tbaa !397
  br label %for.body38, !dbg !700

for.body38:                                       ; preds = %for.body38.lr.ph, %for.body38
  %indvars.iv = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next, %for.body38 ]
  %arrayidx44 = getelementptr inbounds i32** %9, i64 %indvars.iv, !dbg !702
  %13 = load i32** %arrayidx44, align 8, !dbg !702, !tbaa !397
  %arrayidx45 = getelementptr inbounds i32* %13, i64 %indvars.iv214, !dbg !702
  %14 = load i32* %arrayidx45, align 4, !dbg !702, !tbaa !381
  %arrayidx53 = getelementptr inbounds i32** %10, i64 %indvars.iv, !dbg !702
  %15 = load i32** %arrayidx53, align 8, !dbg !702, !tbaa !397
  %arrayidx54 = getelementptr inbounds i32* %15, i64 %indvars.iv214, !dbg !702
  store i32 %14, i32* %arrayidx54, align 4, !dbg !702, !tbaa !381
  %arrayidx60 = getelementptr inbounds i32** %11, i64 %indvars.iv, !dbg !704
  %16 = load i32** %arrayidx60, align 8, !dbg !704, !tbaa !397
  %arrayidx61 = getelementptr inbounds i32* %16, i64 %indvars.iv214, !dbg !704
  %17 = load i32* %arrayidx61, align 4, !dbg !704, !tbaa !381
  %arrayidx69 = getelementptr inbounds i32** %12, i64 %indvars.iv, !dbg !704
  %18 = load i32** %arrayidx69, align 8, !dbg !704, !tbaa !397
  %arrayidx70 = getelementptr inbounds i32* %18, i64 %indvars.iv214, !dbg !704
  store i32 %17, i32* %arrayidx70, align 4, !dbg !704, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !700
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !700
  %cmp36 = icmp slt i32 %19, %mul89, !dbg !700
  br i1 %cmp36, label %for.body38, label %for.inc74, !dbg !700

for.inc74:                                        ; preds = %for.body38
  %indvars.iv.next213 = add i64 %indvars.iv212, 1, !dbg !696
  %lftr.wideiv = trunc i64 %indvars.iv.next213 to i32, !dbg !696
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !696
  br i1 %exitcond, label %for.end76, label %for.body38.lr.ph, !dbg !696

for.end76:                                        ; preds = %for.inc74
  %arrayidx78 = getelementptr inbounds i32* %0, i64 %indvars.iv214, !dbg !705
  %20 = load i32* %arrayidx78, align 4, !dbg !705, !tbaa !381
  %tobool = icmp eq i32 %20, 0, !dbg !705
  br i1 %tobool, label %for.inc85, label %if.then, !dbg !705

if.then:                                          ; preds = %for.end76
  %21 = load i32** %arrayidx83, align 8, !dbg !693, !tbaa !397
  %arrayidx84 = getelementptr inbounds i32* %21, i64 %indvars.iv214, !dbg !693
  %22 = load i32* %arrayidx84, align 4, !dbg !693, !tbaa !381
  %dec = add nsw i32 %22, -1, !dbg !693
  store i32 %dec, i32* %arrayidx84, align 4, !dbg !693, !tbaa !381
  br label %for.inc85, !dbg !706

for.inc85:                                        ; preds = %for.end76, %if.then
  %indvars.iv.next215 = add i64 %indvars.iv214, 1, !dbg !691
  %lftr.wideiv216 = trunc i64 %indvars.iv.next215 to i32, !dbg !691
  %exitcond217 = icmp eq i32 %lftr.wideiv216, %dim, !dbg !691
  br i1 %exitcond217, label %for.cond88.loopexit, label %for.cond18.preheader, !dbg !691

for.cond88.loopexit:                              ; preds = %for.inc85
  br i1 %cmp210, label %for.cond93.preheader.lr.ph, label %for.inc133, !dbg !686

for.cond93.preheader.lr.ph:                       ; preds = %for.cond88.loopexit
  %arrayidx113 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv224, i64 0, !dbg !707
  %arrayidx122 = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 15, i64 %indvars.iv224, i64 1, !dbg !712
  br label %for.body96.lr.ph, !dbg !686

for.body96.lr.ph:                                 ; preds = %for.inc130, %for.cond93.preheader.lr.ph
  %indvars.iv222 = phi i64 [ 0, %for.cond93.preheader.lr.ph ], [ %indvars.iv.next223, %for.inc130 ]
  %23 = trunc i64 %indvars.iv222 to i32, !dbg !713
  %add = and i32 %23, 1, !dbg !713
  %cmp100 = icmp eq i32 %add, 0, !dbg !713
  br label %for.body96, !dbg !714

for.body96:                                       ; preds = %for.inc127, %for.body96.lr.ph
  %indvars.iv218 = phi i64 [ 0, %for.body96.lr.ph ], [ %indvars.iv.next219, %for.inc127 ]
  %arrayidx98 = getelementptr inbounds i32* %0, i64 %indvars.iv218, !dbg !713
  %24 = load i32* %arrayidx98, align 4, !dbg !713, !tbaa !381
  %tobool99 = icmp eq i32 %24, 0, !dbg !713
  %brmerge = or i1 %tobool99, %cmp100, !dbg !713
  br i1 %brmerge, label %for.inc127, label %land.lhs.true102, !dbg !713

land.lhs.true102:                                 ; preds = %for.body96
  %25 = trunc i64 %indvars.iv218 to i32, !dbg !713
  %mul103 = shl nsw i32 %25, 1, !dbg !713
  %add104199 = or i32 %mul103, 1, !dbg !713
  %cmp105 = icmp eq i32 %23, %add104199, !dbg !713
  br i1 %cmp105, label %if.then107, label %for.inc127, !dbg !713

if.then107:                                       ; preds = %land.lhs.true102
  %26 = load i32*** %arrayidx113, align 8, !dbg !707, !tbaa !397
  %arrayidx114 = getelementptr inbounds i32** %26, i64 %indvars.iv222, !dbg !707
  %27 = load i32** %arrayidx114, align 8, !dbg !707, !tbaa !397
  %arrayidx115 = getelementptr inbounds i32* %27, i64 %indvars.iv218, !dbg !707
  %28 = load i32* %arrayidx115, align 4, !dbg !707, !tbaa !381
  %dec116 = add nsw i32 %28, -1, !dbg !707
  store i32 %dec116, i32* %arrayidx115, align 4, !dbg !707, !tbaa !381
  %29 = load i32*** %arrayidx122, align 8, !dbg !712, !tbaa !397
  %arrayidx123 = getelementptr inbounds i32** %29, i64 %indvars.iv222, !dbg !712
  %30 = load i32** %arrayidx123, align 8, !dbg !712, !tbaa !397
  %arrayidx124 = getelementptr inbounds i32* %30, i64 %indvars.iv218, !dbg !712
  %31 = load i32* %arrayidx124, align 4, !dbg !712, !tbaa !381
  %dec125 = add nsw i32 %31, -1, !dbg !712
  store i32 %dec125, i32* %arrayidx124, align 4, !dbg !712, !tbaa !381
  br label %for.inc127, !dbg !715

for.inc127:                                       ; preds = %for.body96, %land.lhs.true102, %if.then107
  %indvars.iv.next219 = add i64 %indvars.iv218, 1, !dbg !714
  %lftr.wideiv220 = trunc i64 %indvars.iv.next219 to i32, !dbg !714
  %exitcond221 = icmp eq i32 %lftr.wideiv220, %dim, !dbg !714
  br i1 %exitcond221, label %for.inc130, label %for.body96, !dbg !714

for.inc130:                                       ; preds = %for.inc127
  %indvars.iv.next223 = add i64 %indvars.iv222, 1, !dbg !686
  %32 = trunc i64 %indvars.iv.next223 to i32, !dbg !686
  %cmp90 = icmp slt i32 %32, %mul89, !dbg !686
  br i1 %cmp90, label %for.body96.lr.ph, label %for.inc133, !dbg !686

for.inc133:                                       ; preds = %for.cond14.preheader, %for.inc130, %for.cond88.loopexit
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !690
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32, !dbg !690
  %exitcond227 = icmp eq i32 %lftr.wideiv226, 4, !dbg !690
  br i1 %exitcond227, label %for.end135, label %for.cond14.preheader, !dbg !690

for.end135:                                       ; preds = %for.inc133
  tail call void @free(i8* %call) #7, !dbg !716
  ret i32 0, !dbg !717
}

; Function Attrs: nounwind optsize uwtable
define void @PUGH_DestroyPGExtras(%struct.PGExtras** %PGExtras) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras** %PGExtras}, i64 0, metadata !60), !dbg !718
  %tobool = icmp eq %struct.PGExtras** %PGExtras, null, !dbg !719
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !719

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.PGExtras** %PGExtras, align 8, !dbg !719, !tbaa !397
  %tobool1 = icmp eq %struct.PGExtras* %0, null, !dbg !719
  br i1 %tobool1, label %if.end, label %for.cond2.preheader, !dbg !719

for.cond2.preheader:                              ; preds = %land.lhs.true, %for.inc27
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc27 ], [ 0, %land.lhs.true ]
  br label %for.body4, !dbg !720

for.body4:                                        ; preds = %for.body4, %for.cond2.preheader
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body4 ]
  %1 = load %struct.PGExtras** %PGExtras, align 8, !dbg !724, !tbaa !397
  %arrayidx6 = getelementptr inbounds %struct.PGExtras* %1, i64 0, i32 14, i64 %indvars.iv71, i64 %indvars.iv, !dbg !724
  %2 = load i32*** %arrayidx6, align 8, !dbg !724, !tbaa !397
  %3 = load i32** %2, align 8, !dbg !724, !tbaa !397
  %4 = bitcast i32* %3 to i8*, !dbg !724
  tail call void @free(i8* %4) #7, !dbg !724
  %5 = load %struct.PGExtras** %PGExtras, align 8, !dbg !726, !tbaa !397
  %arrayidx11 = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 15, i64 %indvars.iv71, i64 %indvars.iv, !dbg !726
  %6 = load i32*** %arrayidx11, align 8, !dbg !726, !tbaa !397
  %7 = load i32** %6, align 8, !dbg !726, !tbaa !397
  %8 = bitcast i32* %7 to i8*, !dbg !726
  tail call void @free(i8* %8) #7, !dbg !726
  %9 = load %struct.PGExtras** %PGExtras, align 8, !dbg !727, !tbaa !397
  %arrayidx16 = getelementptr inbounds %struct.PGExtras* %9, i64 0, i32 13, i64 %indvars.iv71, i64 %indvars.iv, !dbg !727
  %10 = load i32** %arrayidx16, align 8, !dbg !727, !tbaa !397
  %11 = bitcast i32* %10 to i8*, !dbg !727
  tail call void @free(i8* %11) #7, !dbg !727
  %12 = load %struct.PGExtras** %PGExtras, align 8, !dbg !728, !tbaa !397
  %arrayidx21 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 14, i64 %indvars.iv71, i64 %indvars.iv, !dbg !728
  %13 = load i32*** %arrayidx21, align 8, !dbg !728, !tbaa !397
  %14 = bitcast i32** %13 to i8*, !dbg !728
  tail call void @free(i8* %14) #7, !dbg !728
  %15 = load %struct.PGExtras** %PGExtras, align 8, !dbg !729, !tbaa !397
  %arrayidx26 = getelementptr inbounds %struct.PGExtras* %15, i64 0, i32 15, i64 %indvars.iv71, i64 %indvars.iv, !dbg !729
  %16 = load i32*** %arrayidx26, align 8, !dbg !729, !tbaa !397
  %17 = bitcast i32** %16 to i8*, !dbg !729
  tail call void @free(i8* %17) #7, !dbg !729
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !720
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !720
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !720
  br i1 %exitcond, label %for.inc27, label %for.body4, !dbg !720

for.inc27:                                        ; preds = %for.body4
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !730
  %lftr.wideiv73 = trunc i64 %indvars.iv.next72 to i32, !dbg !730
  %exitcond74 = icmp eq i32 %lftr.wideiv73, 4, !dbg !730
  br i1 %exitcond74, label %for.end29, label %for.cond2.preheader, !dbg !730

for.end29:                                        ; preds = %for.inc27
  %18 = load %struct.PGExtras** %PGExtras, align 8, !dbg !731, !tbaa !397
  %lb = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 3, !dbg !731
  %19 = load i32*** %lb, align 8, !dbg !731, !tbaa !397
  %20 = load i32** %19, align 8, !dbg !731, !tbaa !397
  %21 = bitcast i32* %20 to i8*, !dbg !731
  tail call void @free(i8* %21) #7, !dbg !731
  %22 = load %struct.PGExtras** %PGExtras, align 8, !dbg !732, !tbaa !397
  %ub = getelementptr inbounds %struct.PGExtras* %22, i64 0, i32 4, !dbg !732
  %23 = load i32*** %ub, align 8, !dbg !732, !tbaa !397
  %24 = load i32** %23, align 8, !dbg !732, !tbaa !397
  %25 = bitcast i32* %24 to i8*, !dbg !732
  tail call void @free(i8* %25) #7, !dbg !732
  %26 = load %struct.PGExtras** %PGExtras, align 8, !dbg !733, !tbaa !397
  %rnsize = getelementptr inbounds %struct.PGExtras* %26, i64 0, i32 9, !dbg !733
  %27 = load i32*** %rnsize, align 8, !dbg !733, !tbaa !397
  %28 = load i32** %27, align 8, !dbg !733, !tbaa !397
  %29 = bitcast i32* %28 to i8*, !dbg !733
  tail call void @free(i8* %29) #7, !dbg !733
  %30 = load %struct.PGExtras** %PGExtras, align 8, !dbg !734, !tbaa !397
  %lb33 = getelementptr inbounds %struct.PGExtras* %30, i64 0, i32 3, !dbg !734
  %31 = load i32*** %lb33, align 8, !dbg !734, !tbaa !397
  %32 = bitcast i32** %31 to i8*, !dbg !734
  tail call void @free(i8* %32) #7, !dbg !734
  %33 = load %struct.PGExtras** %PGExtras, align 8, !dbg !735, !tbaa !397
  %ub34 = getelementptr inbounds %struct.PGExtras* %33, i64 0, i32 4, !dbg !735
  %34 = load i32*** %ub34, align 8, !dbg !735, !tbaa !397
  %35 = bitcast i32** %34 to i8*, !dbg !735
  tail call void @free(i8* %35) #7, !dbg !735
  %36 = load %struct.PGExtras** %PGExtras, align 8, !dbg !736, !tbaa !397
  %rnsize35 = getelementptr inbounds %struct.PGExtras* %36, i64 0, i32 9, !dbg !736
  %37 = load i32*** %rnsize35, align 8, !dbg !736, !tbaa !397
  %38 = bitcast i32** %37 to i8*, !dbg !736
  tail call void @free(i8* %38) #7, !dbg !736
  %39 = load %struct.PGExtras** %PGExtras, align 8, !dbg !737, !tbaa !397
  %rnpoints = getelementptr inbounds %struct.PGExtras* %39, i64 0, i32 8, !dbg !737
  %40 = load i32** %rnpoints, align 8, !dbg !737, !tbaa !397
  %41 = bitcast i32* %40 to i8*, !dbg !737
  tail call void @free(i8* %41) #7, !dbg !737
  %42 = load %struct.PGExtras** %PGExtras, align 8, !dbg !738, !tbaa !397
  %nghostzones = getelementptr inbounds %struct.PGExtras* %42, i64 0, i32 12, !dbg !738
  %43 = load i32** %nghostzones, align 8, !dbg !738, !tbaa !397
  %44 = bitcast i32* %43 to i8*, !dbg !738
  tail call void @free(i8* %44) #7, !dbg !738
  %45 = load %struct.PGExtras** %PGExtras, align 8, !dbg !739, !tbaa !397
  %nsize = getelementptr inbounds %struct.PGExtras* %45, i64 0, i32 1, !dbg !739
  %46 = load i32** %nsize, align 8, !dbg !739, !tbaa !397
  %47 = bitcast i32* %46 to i8*, !dbg !739
  tail call void @free(i8* %47) #7, !dbg !739
  %48 = load %struct.PGExtras** %PGExtras, align 8, !dbg !740, !tbaa !397
  %lnsize = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 6, !dbg !740
  %49 = load i32** %lnsize, align 8, !dbg !740, !tbaa !397
  %50 = bitcast i32* %49 to i8*, !dbg !740
  tail call void @free(i8* %50) #7, !dbg !740
  %51 = load %struct.PGExtras** %PGExtras, align 8, !dbg !741, !tbaa !397
  %bbox = getelementptr inbounds %struct.PGExtras* %51, i64 0, i32 5, !dbg !741
  %52 = load i32** %bbox, align 8, !dbg !741, !tbaa !397
  %53 = bitcast i32* %52 to i8*, !dbg !741
  tail call void @free(i8* %53) #7, !dbg !741
  %54 = load %struct.PGExtras** %PGExtras, align 8, !dbg !742, !tbaa !397
  %iterator = getelementptr inbounds %struct.PGExtras* %54, i64 0, i32 10, !dbg !742
  %55 = load i32** %iterator, align 8, !dbg !742, !tbaa !397
  %56 = bitcast i32* %55 to i8*, !dbg !742
  tail call void @free(i8* %56) #7, !dbg !742
  %57 = load %struct.PGExtras** %PGExtras, align 8, !dbg !743, !tbaa !397
  %hyper_volume = getelementptr inbounds %struct.PGExtras* %57, i64 0, i32 11, !dbg !743
  %58 = load i32** %hyper_volume, align 8, !dbg !743, !tbaa !397
  %59 = bitcast i32* %58 to i8*, !dbg !743
  tail call void @free(i8* %59) #7, !dbg !743
  %60 = load %struct.PGExtras** %PGExtras, align 8, !dbg !744, !tbaa !397
  %61 = bitcast %struct.PGExtras* %60 to i8*, !dbg !744
  tail call void @free(i8* %61) #7, !dbg !744
  store %struct.PGExtras* null, %struct.PGExtras** %PGExtras, align 8, !dbg !745, !tbaa !397
  br label %if.end, !dbg !746

if.end:                                           ; preds = %land.lhs.true, %entry, %for.end29
  ret void, !dbg !747
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %dim, i32 %total_procs, i32* nocapture %nprocs, i32* nocapture %perme) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !76), !dbg !748
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !77), !dbg !749
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !78), !dbg !750
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !79), !dbg !751
  %call = tail call noalias i8* @malloc(i64 32) #7, !dbg !752
  %0 = bitcast i8* %call to %struct.PConnectivity*, !dbg !752
  tail call void @llvm.dbg.value(metadata !{%struct.PConnectivity* %0}, i64 0, metadata !80), !dbg !752
  %cond = icmp eq i8* %call, null, !dbg !753
  br i1 %cond, label %if.end73, label %if.then, !dbg !753

if.then:                                          ; preds = %entry
  %conv = sext i32 %dim to i64, !dbg !754
  %mul = shl nsw i64 %conv, 2, !dbg !754
  %call1 = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !754
  %1 = bitcast i8* %call1 to i32*, !dbg !754
  %nprocs2 = getelementptr inbounds i8* %call, i64 8, !dbg !754
  %2 = bitcast i8* %nprocs2 to i32**, !dbg !754
  store i32* %1, i32** %2, align 8, !dbg !754, !tbaa !397
  %call5 = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !756
  %3 = bitcast i8* %call5 to i32*, !dbg !756
  %perme6 = getelementptr inbounds i8* %call, i64 24, !dbg !756
  %4 = bitcast i8* %perme6 to i32**, !dbg !756
  store i32* %3, i32** %4, align 8, !dbg !756, !tbaa !397
  %conv7 = sext i32 %total_procs to i64, !dbg !757
  %mul8 = shl nsw i64 %conv7, 3, !dbg !757
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #7, !dbg !757
  %5 = bitcast i8* %call9 to i32**, !dbg !757
  %neighbours = getelementptr inbounds i8* %call, i64 16, !dbg !757
  %6 = bitcast i8* %neighbours to i32***, !dbg !757
  store i32** %5, i32*** %6, align 8, !dbg !757, !tbaa !397
  %tobool11 = icmp eq i8* %call9, null, !dbg !758
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !758

if.then12:                                        ; preds = %if.then
  %mul13 = shl i32 %dim, 1, !dbg !759
  %mul14 = mul i32 %mul13, %total_procs, !dbg !759
  %conv15 = sext i32 %mul14 to i64, !dbg !759
  %mul16 = shl nsw i64 %conv15, 2, !dbg !759
  %call17 = tail call noalias i8* @malloc(i64 %mul16) #7, !dbg !759
  %7 = bitcast i8* %call17 to i32*, !dbg !759
  store i32* %7, i32** %5, align 8, !dbg !759, !tbaa !397
  br label %if.end, !dbg !761

if.else:                                          ; preds = %if.then
  store i32** null, i32*** %6, align 8, !dbg !762, !tbaa !397
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  %8 = phi i32** [ null, %if.else ], [ %5, %if.then12 ]
  %tobool22 = icmp eq i8* %call1, null, !dbg !764
  %tobool24 = icmp eq i8* %call5, null, !dbg !764
  %or.cond = or i1 %tobool22, %tobool24, !dbg !764
  %tobool30 = icmp eq i32** %8, null, !dbg !765
  br i1 %or.cond, label %if.then28, label %lor.lhs.false25, !dbg !764

lor.lhs.false25:                                  ; preds = %if.end
  br i1 %tobool30, label %if.end39.thread, label %if.then41, !dbg !764

if.then28:                                        ; preds = %if.end
  br i1 %tobool30, label %if.end39.thread, label %if.then31, !dbg !765

if.then31:                                        ; preds = %if.then28
  %9 = load i32** %8, align 8, !dbg !767, !tbaa !397
  %10 = bitcast i32* %9 to i8*, !dbg !767
  tail call void @free(i8* %10) #7, !dbg !767
  br label %if.end39.thread, !dbg !769

if.end39.thread:                                  ; preds = %if.then31, %if.then28, %lor.lhs.false25
  %11 = phi i32** [ %8, %if.then31 ], [ null, %if.then28 ], [ null, %lor.lhs.false25 ]
  %12 = bitcast i32** %11 to i8*, !dbg !770
  tail call void @free(i8* %12) #7, !dbg !770
  %13 = load i32** %4, align 8, !dbg !771, !tbaa !397
  %14 = bitcast i32* %13 to i8*, !dbg !771
  tail call void @free(i8* %14) #7, !dbg !771
  %15 = load i32** %2, align 8, !dbg !772, !tbaa !397
  %16 = bitcast i32* %15 to i8*, !dbg !772
  tail call void @free(i8* %16) #7, !dbg !772
  tail call void @free(i8* %call) #7, !dbg !773
  tail call void @llvm.dbg.value(metadata !774, i64 0, metadata !80), !dbg !775
  br label %if.end73, !dbg !776

if.then41:                                        ; preds = %lor.lhs.false25
  %dim42 = bitcast i8* %call to i32*, !dbg !777
  store i32 %dim, i32* %dim42, align 4, !dbg !777, !tbaa !381
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !779
  %cmp126 = icmp sgt i32 %dim, 0, !dbg !779
  br i1 %cmp126, label %for.body, label %for.cond53.preheader, !dbg !779

for.cond53.preheader:                             ; preds = %for.body, %if.then41
  %cmp54124 = icmp sgt i32 %total_procs, 1, !dbg !781
  br i1 %cmp54124, label %for.body56.lr.ph, label %for.end66, !dbg !781

for.body56.lr.ph:                                 ; preds = %for.cond53.preheader
  %mul59 = shl i32 %dim, 1, !dbg !783
  br label %for.body56, !dbg !781

for.body:                                         ; preds = %if.then41, %for.body
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.body ], [ 0, %if.then41 ]
  %arrayidx44 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv128, !dbg !785
  %17 = load i32* %arrayidx44, align 4, !dbg !785, !tbaa !381
  %arrayidx47 = getelementptr inbounds i32* %1, i64 %indvars.iv128, !dbg !785
  store i32 %17, i32* %arrayidx47, align 4, !dbg !785, !tbaa !381
  %arrayidx49 = getelementptr inbounds i32* %perme, i64 %indvars.iv128, !dbg !787
  %18 = load i32* %arrayidx49, align 4, !dbg !787, !tbaa !381
  %arrayidx52 = getelementptr inbounds i32* %3, i64 %indvars.iv128, !dbg !787
  store i32 %18, i32* %arrayidx52, align 4, !dbg !787, !tbaa !381
  %indvars.iv.next129 = add i64 %indvars.iv128, 1, !dbg !779
  %lftr.wideiv130 = trunc i64 %indvars.iv.next129 to i32, !dbg !779
  %exitcond131 = icmp eq i32 %lftr.wideiv130, %dim, !dbg !779
  br i1 %exitcond131, label %for.cond53.preheader, label %for.body, !dbg !779

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body56.lr.ph ], [ %indvars.iv.next, %for.body56 ]
  %19 = load i32** %8, align 8, !dbg !783, !tbaa !397
  %20 = trunc i64 %indvars.iv to i32, !dbg !783
  %mul60 = mul nsw i32 %mul59, %20, !dbg !783
  %idx.ext = sext i32 %mul60 to i64, !dbg !783
  %add.ptr = getelementptr inbounds i32* %19, i64 %idx.ext, !dbg !783
  %arrayidx63 = getelementptr inbounds i32** %8, i64 %indvars.iv, !dbg !783
  store i32* %add.ptr, i32** %arrayidx63, align 8, !dbg !783, !tbaa !397
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !781
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !781
  %exitcond = icmp eq i32 %lftr.wideiv, %total_procs, !dbg !781
  br i1 %exitcond, label %for.end66, label %for.body56, !dbg !781

for.end66:                                        ; preds = %for.body56, %for.cond53.preheader
  %call68 = tail call i32 @PUGH_GenerateTopology(i32 %dim, i32 %total_procs, i32* %1) #8, !dbg !788
  %call72 = tail call i32 @PUGH_GenerateNeighbours(i32 %dim, i32 %total_procs, i32* %1, i32** %8, i32* %3) #8, !dbg !789
  br label %if.end73, !dbg !790

if.end73:                                         ; preds = %entry, %if.end39.thread, %for.end66
  %this.0123 = phi %struct.PConnectivity* [ null, %if.end39.thread ], [ %0, %for.end66 ], [ null, %entry ]
  ret %struct.PConnectivity* %this.0123, !dbg !791
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_GenerateTopology(i32 %dim, i32 %total_procs, i32* nocapture %nprocs) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !92), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !93), !dbg !792
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !94), !dbg !792
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !96), !dbg !793
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !97), !dbg !794
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !795
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !99), !dbg !796
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !797
  %cmp107 = icmp sgt i32 %dim, 0, !dbg !797
  br i1 %cmp107, label %for.body, label %for.end, !dbg !797

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc ], [ 0, %entry ]
  %free_dims.0111 = phi i32 [ %free_dims.1, %for.inc ], [ %dim, %entry ]
  %retval1.0110 = phi i32 [ %retval1.1, %for.inc ], [ 0, %entry ]
  %free_procs.0109 = phi i32 [ %free_procs.1, %for.inc ], [ %total_procs, %entry ]
  %used_procs.0108 = phi i32 [ %used_procs.2, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %nprocs, i64 %indvars.iv121, !dbg !799
  %0 = load i32* %arrayidx, align 4, !dbg !799, !tbaa !381
  %cmp2 = icmp sgt i32 %0, 0, !dbg !799
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !799

if.then:                                          ; preds = %for.body
  %dec = add nsw i32 %free_dims.0111, -1, !dbg !801
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !99), !dbg !801
  %tobool = icmp eq i32 %used_procs.0108, 0, !dbg !803
  br i1 %tobool, label %if.end, label %if.then3, !dbg !803

if.then3:                                         ; preds = %if.then
  %mul = mul nsw i32 %0, %used_procs.0108, !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !96), !dbg !804
  br label %if.end, !dbg !806

if.end:                                           ; preds = %if.then, %if.then3
  %used_procs.1 = phi i32 [ %mul, %if.then3 ], [ %0, %if.then ]
  %rem = srem i32 %total_procs, %used_procs.1, !dbg !807
  %tobool8 = icmp eq i32 %rem, 0, !dbg !807
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !807

if.then9:                                         ; preds = %if.end
  %call = tail call i32 @CCTK_Warn(i32 0, i32 325, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !808
  tail call void @llvm.dbg.value(metadata !485, i64 0, metadata !98), !dbg !810
  br label %for.inc, !dbg !811

if.else10:                                        ; preds = %if.end
  %div = sdiv i32 %total_procs, %used_procs.1, !dbg !812
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !97), !dbg !812
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else10, %if.then9
  %used_procs.2 = phi i32 [ %used_procs.1, %if.then9 ], [ %used_procs.1, %if.else10 ], [ %used_procs.0108, %for.body ]
  %free_procs.1 = phi i32 [ %free_procs.0109, %if.then9 ], [ %div, %if.else10 ], [ %free_procs.0109, %for.body ]
  %retval1.1 = phi i32 [ 1, %if.then9 ], [ %retval1.0110, %if.else10 ], [ %retval1.0110, %for.body ]
  %free_dims.1 = phi i32 [ %dec, %if.then9 ], [ %dec, %if.else10 ], [ %free_dims.0111, %for.body ]
  %indvars.iv.next122 = add i64 %indvars.iv121, 1, !dbg !797
  %lftr.wideiv123 = trunc i64 %indvars.iv.next122 to i32, !dbg !797
  %exitcond124 = icmp eq i32 %lftr.wideiv123, %dim, !dbg !797
  br i1 %exitcond124, label %for.end, label %for.body, !dbg !797

for.end:                                          ; preds = %for.inc, %entry
  %free_dims.0.lcssa = phi i32 [ %dim, %entry ], [ %free_dims.1, %for.inc ]
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %retval1.1, %for.inc ]
  %free_procs.0.lcssa = phi i32 [ %total_procs, %entry ], [ %free_procs.1, %for.inc ]
  %tobool13 = icmp ne i32 %free_dims.0.lcssa, 0, !dbg !814
  %tobool14 = icmp eq i32 %retval1.0.lcssa, 0, !dbg !814
  %or.cond = and i1 %tobool13, %tobool14, !dbg !814
  br i1 %or.cond, label %if.then15, label %if.end57, !dbg !814

if.then15:                                        ; preds = %for.end
  tail call void @llvm.dbg.value(metadata !{i32 %free_dims.0.lcssa}, i64 0, metadata !102), !dbg !815
  %conv = sext i32 %free_dims.0.lcssa to i64, !dbg !816
  %call16 = tail call noalias i8* @calloc(i64 %conv, i64 4) #7, !dbg !816
  %1 = bitcast i8* %call16 to i32*, !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !100), !dbg !816
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !817
  %cmp18101 = icmp sgt i32 %free_dims.0.lcssa, 0, !dbg !817
  br i1 %cmp18101, label %for.body20, label %for.end37, !dbg !817

for.body20:                                       ; preds = %if.then15, %while.end
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %while.end ], [ 0, %if.then15 ]
  %root.0105 = phi i32 [ %dec34, %while.end ], [ %free_dims.0.lcssa, %if.then15 ]
  %free_procs.2102 = phi i32 [ %div33, %while.end ], [ %free_procs.0.lcssa, %if.then15 ]
  tail call void @llvm.dbg.value(metadata !{i32 %free_procs.2102}, i64 0, metadata !819), !dbg !822
  tail call void @llvm.dbg.value(metadata !{i32 %root.0105}, i64 0, metadata !823), !dbg !822
  tail call void @llvm.dbg.value(metadata !485, i64 0, metadata !824), !dbg !825
  %cmp20.i = icmp slt i32 %free_procs.2102, 1, !dbg !825
  br i1 %cmp20.i, label %while.cond, label %for.cond2.preheader.lr.ph.i, !dbg !825

for.cond2.preheader.lr.ph.i:                      ; preds = %for.body20
  %cmp316.i = icmp sgt i32 %root.0105, 1, !dbg !827
  br label %for.cond2.preheader.i, !dbg !825

for.cond.i:                                       ; preds = %for.end.i
  %cmp.i = icmp slt i32 %root.021.i, %free_procs.2102, !dbg !825
  br i1 %cmp.i, label %for.cond2.preheader.i, label %while.cond, !dbg !825

for.cond2.preheader.i:                            ; preds = %for.cond.i, %for.cond2.preheader.lr.ph.i
  %root.021.i = phi i32 [ 1, %for.cond2.preheader.lr.ph.i ], [ %inc7.i, %for.cond.i ]
  br i1 %cmp316.i, label %for.inc.i, label %for.end.i, !dbg !827

for.inc.i:                                        ; preds = %for.cond2.preheader.i, %for.inc.i
  %tmp.018.i = phi i32 [ %mul.i, %for.inc.i ], [ %root.021.i, %for.cond2.preheader.i ]
  %i.017.i = phi i32 [ %inc.i, %for.inc.i ], [ 1, %for.cond2.preheader.i ]
  %inc.i = add nsw i32 %i.017.i, 1, !dbg !827
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !830), !dbg !827
  %mul.i = mul nsw i32 %tmp.018.i, %root.021.i, !dbg !827
  tail call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !831), !dbg !827
  %exitcond.i = icmp eq i32 %inc.i, %root.0105, !dbg !827
  br i1 %exitcond.i, label %for.end.i, label %for.inc.i, !dbg !827

for.end.i:                                        ; preds = %for.inc.i, %for.cond2.preheader.i
  %tmp.0.lcssa.i = phi i32 [ %root.021.i, %for.cond2.preheader.i ], [ %mul.i, %for.inc.i ]
  %cmp5.i = icmp sgt i32 %tmp.0.lcssa.i, %free_procs.2102, !dbg !832
  %inc7.i = add nsw i32 %root.021.i, 1, !dbg !825
  tail call void @llvm.dbg.value(metadata !{i32 %inc7.i}, i64 0, metadata !824), !dbg !825
  br i1 %cmp5.i, label %if.then.i, label %for.cond.i, !dbg !832

if.then.i:                                        ; preds = %for.end.i
  %dec.i = add nsw i32 %root.021.i, -1, !dbg !833
  tail call void @llvm.dbg.value(metadata !{i32 %dec.i}, i64 0, metadata !824), !dbg !833
  br label %while.cond, !dbg !835

while.cond:                                       ; preds = %if.then.i, %for.body20, %for.cond.i, %while.cond
  %storemerge = phi i32 [ %dec30, %while.cond ], [ %dec.i, %if.then.i ], [ 1, %for.body20 ], [ %inc7.i, %for.cond.i ]
  %rem26 = srem i32 %free_procs.2102, %storemerge, !dbg !836
  %tobool27 = icmp eq i32 %rem26, 0, !dbg !836
  %dec30 = add nsw i32 %storemerge, -1, !dbg !836
  br i1 %tobool27, label %while.end, label %while.cond, !dbg !836

while.end:                                        ; preds = %while.cond
  %arrayidx23 = getelementptr inbounds i32* %1, i64 %indvars.iv117, !dbg !820
  store i32 %storemerge, i32* %arrayidx23, align 4, !dbg !836, !tbaa !381
  %div33 = sdiv i32 %free_procs.2102, %storemerge, !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %div33}, i64 0, metadata !97), !dbg !837
  %dec34 = add nsw i32 %root.0105, -1, !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %dec34}, i64 0, metadata !102), !dbg !838
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !817
  %lftr.wideiv119 = trunc i64 %indvars.iv.next118 to i32, !dbg !817
  %exitcond120 = icmp eq i32 %lftr.wideiv119, %free_dims.0.lcssa, !dbg !817
  br i1 %exitcond120, label %for.end37, label %for.body20, !dbg !817

for.end37:                                        ; preds = %while.end, %if.then15
  tail call void @qsort(i8* %call16, i64 %conv, i64 4, i32 (i8*, i8*)* @IntSort) #7, !dbg !839
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !840
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !840
  br i1 %cmp107, label %for.body42, label %for.end56, !dbg !840

for.body42:                                       ; preds = %for.end37, %for.inc54
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc54 ], [ 0, %for.end37 ]
  %place.097 = phi i32 [ %place.1, %for.inc54 ], [ 0, %for.end37 ]
  %arrayidx44 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !842
  %2 = load i32* %arrayidx44, align 4, !dbg !842, !tbaa !381
  %cmp45 = icmp slt i32 %2, 1, !dbg !842
  br i1 %cmp45, label %if.then47, label %for.inc54, !dbg !842

if.then47:                                        ; preds = %for.body42
  %idxprom48 = sext i32 %place.097 to i64, !dbg !844
  %arrayidx49 = getelementptr inbounds i32* %1, i64 %idxprom48, !dbg !844
  %3 = load i32* %arrayidx49, align 4, !dbg !844, !tbaa !381
  store i32 %3, i32* %arrayidx44, align 4, !dbg !844, !tbaa !381
  %inc52 = add nsw i32 %place.097, 1, !dbg !846
  tail call void @llvm.dbg.value(metadata !{i32 %inc52}, i64 0, metadata !103), !dbg !846
  br label %for.inc54, !dbg !847

for.inc54:                                        ; preds = %for.body42, %if.then47
  %place.1 = phi i32 [ %inc52, %if.then47 ], [ %place.097, %for.body42 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !840
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !840
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !840
  br i1 %exitcond, label %for.end56, label %for.body42, !dbg !840

for.end56:                                        ; preds = %for.inc54, %for.end37
  tail call void @free(i8* %call16) #7, !dbg !848
  br label %if.end57, !dbg !849

if.end57:                                         ; preds = %for.end, %for.end56
  ret i32 %retval1.0.lcssa, !dbg !850
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_GenerateNeighbours(i32 %dim, i32 %total_procs, i32* nocapture %nprocs, i32** nocapture %neighbours, i32* nocapture %perme) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !108), !dbg !851
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !109), !dbg !852
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !110), !dbg !853
  tail call void @llvm.dbg.value(metadata !{i32** %neighbours}, i64 0, metadata !111), !dbg !854
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !112), !dbg !855
  %conv = sext i32 %dim to i64, !dbg !856
  %mul = shl nsw i64 %conv, 2, !dbg !856
  %call = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !856
  %0 = bitcast i8* %call to i32*, !dbg !856
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !116), !dbg !856
  %tobool = icmp eq i8* %call, null, !dbg !857
  br i1 %tobool, label %if.end97, label %for.cond.preheader, !dbg !857

for.cond.preheader:                               ; preds = %entry
  %cmp169 = icmp sgt i32 %total_procs, 0, !dbg !858
  br i1 %cmp169, label %for.body.lr.ph, label %if.end97, !dbg !858

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmp11.i = icmp sgt i32 %dim, 0, !dbg !861
  br label %for.body, !dbg !858

for.body:                                         ; preds = %for.inc93, %for.body.lr.ph
  %indvars.iv173 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next174, %for.inc93 ]
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc94, %for.inc93 ]
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !865), !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32 %i.0170}, i64 0, metadata !867), !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !868), !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !869), !dbg !866
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !870), !dbg !861
  br i1 %cmp11.i, label %for.body.i, label %for.inc93, !dbg !861

for.body.i:                                       ; preds = %for.body, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body ]
  %ijk.addr.012.i = phi i32 [ %div.i, %for.body.i ], [ %i.0170, %for.body ]
  %arrayidx.i = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i, !dbg !871
  %1 = load i32* %arrayidx.i, align 4, !dbg !871, !tbaa !381
  %rem.i = srem i32 %ijk.addr.012.i, %1, !dbg !871
  %arrayidx2.i = getelementptr inbounds i32* %0, i64 %indvars.iv.i, !dbg !871
  store i32 %rem.i, i32* %arrayidx2.i, align 4, !dbg !871, !tbaa !381
  %div.i = sdiv i32 %ijk.addr.012.i, %1, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !867), !dbg !873
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !861
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !861
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !861
  br i1 %exitcond, label %for.cond4.preheader, label %for.body.i, !dbg !861

for.cond4.preheader:                              ; preds = %for.body.i
  br i1 %cmp11.i, label %for.body7.lr.ph, label %for.inc93, !dbg !874

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %arrayidx17 = getelementptr inbounds i32** %neighbours, i64 %indvars.iv173, !dbg !876
  br label %for.body7, !dbg !874

for.body7:                                        ; preds = %if.end88, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %if.end88 ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv, !dbg !879
  %2 = load i32* %arrayidx, align 4, !dbg !879, !tbaa !381
  %dec = add nsw i32 %2, -1, !dbg !879
  store i32 %dec, i32* %arrayidx, align 4, !dbg !879, !tbaa !381
  %cmp10 = icmp sgt i32 %2, 0, !dbg !880
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !880

if.then12:                                        ; preds = %for.body7
  %call13 = tail call i32 @PUGH_ComposeIJK(i32 %dim, i32* %nprocs, i32* %0) #8, !dbg !876
  %3 = trunc i64 %indvars.iv to i32, !dbg !876
  %mul14 = shl nsw i32 %3, 1, !dbg !876
  %idxprom15 = sext i32 %mul14 to i64, !dbg !876
  %4 = load i32** %arrayidx17, align 8, !dbg !876, !tbaa !397
  %arrayidx18 = getelementptr inbounds i32* %4, i64 %idxprom15, !dbg !876
  store i32 %call13, i32* %arrayidx18, align 4, !dbg !876, !tbaa !381
  br label %if.end43, !dbg !881

if.else:                                          ; preds = %for.body7
  %arrayidx20 = getelementptr inbounds i32* %perme, i64 %indvars.iv, !dbg !882
  %5 = load i32* %arrayidx20, align 4, !dbg !882, !tbaa !381
  %tobool21 = icmp eq i32 %5, 0, !dbg !882
  br i1 %tobool21, label %if.else37, label %if.then22, !dbg !882

if.then22:                                        ; preds = %if.else
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !117), !dbg !883
  %arrayidx26 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !885
  %6 = load i32* %arrayidx26, align 4, !dbg !885, !tbaa !381
  %sub = add nsw i32 %6, -1, !dbg !885
  store i32 %sub, i32* %arrayidx, align 4, !dbg !885, !tbaa !381
  %call29 = tail call i32 @PUGH_ComposeIJK(i32 %dim, i32* %nprocs, i32* %0) #8, !dbg !886
  %7 = trunc i64 %indvars.iv to i32, !dbg !886
  %mul30 = shl nsw i32 %7, 1, !dbg !886
  %idxprom31 = sext i32 %mul30 to i64, !dbg !886
  %8 = load i32** %arrayidx17, align 8, !dbg !886, !tbaa !397
  %arrayidx34 = getelementptr inbounds i32* %8, i64 %idxprom31, !dbg !886
  store i32 %call29, i32* %arrayidx34, align 4, !dbg !886, !tbaa !381
  store i32 %dec, i32* %arrayidx, align 4, !dbg !887, !tbaa !381
  br label %if.end43, !dbg !888

if.else37:                                        ; preds = %if.else
  %9 = trunc i64 %indvars.iv to i32, !dbg !889
  %mul38 = shl nsw i32 %9, 1, !dbg !889
  %idxprom39 = sext i32 %mul38 to i64, !dbg !889
  %10 = load i32** %arrayidx17, align 8, !dbg !889, !tbaa !397
  %arrayidx42 = getelementptr inbounds i32* %10, i64 %idxprom39, !dbg !889
  store i32 -1, i32* %arrayidx42, align 4, !dbg !889, !tbaa !381
  br label %if.end43

if.end43:                                         ; preds = %if.then22, %if.else37, %if.then12
  %11 = phi i32* [ %8, %if.then22 ], [ %10, %if.else37 ], [ %4, %if.then12 ]
  %inc48 = add nsw i32 %2, 1, !dbg !891
  store i32 %inc48, i32* %arrayidx, align 4, !dbg !891, !tbaa !381
  %arrayidx52 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !892
  %12 = load i32* %arrayidx52, align 4, !dbg !892, !tbaa !381
  %cmp53 = icmp slt i32 %inc48, %12, !dbg !892
  br i1 %cmp53, label %if.then55, label %if.else62, !dbg !892

if.then55:                                        ; preds = %if.end43
  %call56 = tail call i32 @PUGH_ComposeIJK(i32 %dim, i32* %nprocs, i32* %0) #8, !dbg !893
  %13 = trunc i64 %indvars.iv to i32, !dbg !893
  %mul57 = shl nsw i32 %13, 1, !dbg !893
  %add166 = or i32 %mul57, 1, !dbg !893
  %idxprom58 = sext i32 %add166 to i64, !dbg !893
  %arrayidx61 = getelementptr inbounds i32* %11, i64 %idxprom58, !dbg !893
  store i32 %call56, i32* %arrayidx61, align 4, !dbg !893, !tbaa !381
  br label %if.end88, !dbg !895

if.else62:                                        ; preds = %if.end43
  %arrayidx64 = getelementptr inbounds i32* %perme, i64 %indvars.iv, !dbg !896
  %14 = load i32* %arrayidx64, align 4, !dbg !896, !tbaa !381
  %tobool65 = icmp eq i32 %14, 0, !dbg !896
  br i1 %tobool65, label %if.else80, label %if.then66, !dbg !896

if.then66:                                        ; preds = %if.else62
  tail call void @llvm.dbg.value(metadata !{i32 %inc48}, i64 0, metadata !117), !dbg !897
  store i32 0, i32* %arrayidx, align 4, !dbg !899, !tbaa !381
  %call71 = tail call i32 @PUGH_ComposeIJK(i32 %dim, i32* %nprocs, i32* %0) #8, !dbg !900
  %15 = trunc i64 %indvars.iv to i32, !dbg !900
  %mul72 = shl nsw i32 %15, 1, !dbg !900
  %add73165 = or i32 %mul72, 1, !dbg !900
  %idxprom74 = sext i32 %add73165 to i64, !dbg !900
  %arrayidx77 = getelementptr inbounds i32* %11, i64 %idxprom74, !dbg !900
  store i32 %call71, i32* %arrayidx77, align 4, !dbg !900, !tbaa !381
  store i32 %inc48, i32* %arrayidx, align 4, !dbg !901, !tbaa !381
  br label %if.end88, !dbg !902

if.else80:                                        ; preds = %if.else62
  %16 = trunc i64 %indvars.iv to i32, !dbg !903
  %mul81 = shl nsw i32 %16, 1, !dbg !903
  %add82164 = or i32 %mul81, 1, !dbg !903
  %idxprom83 = sext i32 %add82164 to i64, !dbg !903
  %arrayidx86 = getelementptr inbounds i32* %11, i64 %idxprom83, !dbg !903
  store i32 -1, i32* %arrayidx86, align 4, !dbg !903, !tbaa !381
  br label %if.end88

if.end88:                                         ; preds = %if.then66, %if.else80, %if.then55
  store i32 %2, i32* %arrayidx, align 4, !dbg !905, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !874
  %lftr.wideiv171 = trunc i64 %indvars.iv.next to i32, !dbg !874
  %exitcond172 = icmp eq i32 %lftr.wideiv171, %dim, !dbg !874
  br i1 %exitcond172, label %for.inc93, label %for.body7, !dbg !874

for.inc93:                                        ; preds = %for.body, %if.end88, %for.cond4.preheader
  %indvars.iv.next174 = add i64 %indvars.iv173, 1, !dbg !858
  %inc94 = add nsw i32 %i.0170, 1, !dbg !858
  tail call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !114), !dbg !858
  %lftr.wideiv175 = trunc i64 %indvars.iv.next174 to i32, !dbg !858
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %total_procs, !dbg !858
  br i1 %exitcond176, label %if.end97, label %for.body, !dbg !858

if.end97:                                         ; preds = %for.cond.preheader, %for.inc93, %entry
  %retval1.0 = phi i32 [ 1, %entry ], [ 0, %for.inc93 ], [ 0, %for.cond.preheader ]
  tail call void @free(i8* %call) #7, !dbg !906
  ret i32 %retval1.0, !dbg !907
}

; Function Attrs: nounwind optsize uwtable
define void @PUGH_DestroyConnectivity(%struct.PConnectivity** %conn) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PConnectivity** %conn}, i64 0, metadata !87), !dbg !908
  %tobool = icmp eq %struct.PConnectivity** %conn, null, !dbg !909
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !909

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.PConnectivity** %conn, align 8, !dbg !909, !tbaa !397
  %tobool1 = icmp eq %struct.PConnectivity* %0, null, !dbg !909
  br i1 %tobool1, label %if.end, label %if.then, !dbg !909

if.then:                                          ; preds = %land.lhs.true
  %perme = getelementptr inbounds %struct.PConnectivity* %0, i64 0, i32 3, !dbg !910
  %1 = load i32** %perme, align 8, !dbg !910, !tbaa !397
  %2 = bitcast i32* %1 to i8*, !dbg !910
  tail call void @free(i8* %2) #7, !dbg !910
  %3 = load %struct.PConnectivity** %conn, align 8, !dbg !912, !tbaa !397
  %neighbours = getelementptr inbounds %struct.PConnectivity* %3, i64 0, i32 2, !dbg !912
  %4 = load i32*** %neighbours, align 8, !dbg !912, !tbaa !397
  %5 = load i32** %4, align 8, !dbg !912, !tbaa !397
  %6 = bitcast i32* %5 to i8*, !dbg !912
  tail call void @free(i8* %6) #7, !dbg !912
  %7 = load %struct.PConnectivity** %conn, align 8, !dbg !913, !tbaa !397
  %neighbours2 = getelementptr inbounds %struct.PConnectivity* %7, i64 0, i32 2, !dbg !913
  %8 = load i32*** %neighbours2, align 8, !dbg !913, !tbaa !397
  %9 = bitcast i32** %8 to i8*, !dbg !913
  tail call void @free(i8* %9) #7, !dbg !913
  %10 = load %struct.PConnectivity** %conn, align 8, !dbg !914, !tbaa !397
  %nprocs = getelementptr inbounds %struct.PConnectivity* %10, i64 0, i32 1, !dbg !914
  %11 = load i32** %nprocs, align 8, !dbg !914, !tbaa !397
  %12 = bitcast i32* %11 to i8*, !dbg !914
  tail call void @free(i8* %12) #7, !dbg !914
  %13 = load %struct.PConnectivity** %conn, align 8, !dbg !915, !tbaa !397
  %14 = bitcast %struct.PConnectivity* %13 to i8*, !dbg !915
  tail call void @free(i8* %14) #7, !dbg !915
  store %struct.PConnectivity* null, %struct.PConnectivity** %conn, align 8, !dbg !916, !tbaa !397
  br label %if.end, !dbg !917

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void, !dbg !918
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @IntSort(i8* nocapture %a, i8* nocapture %b) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %a}, i64 0, metadata !352), !dbg !919
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !353), !dbg !919
  %0 = bitcast i8* %a to i32*, !dbg !920
  %1 = load i32* %0, align 4, !dbg !920, !tbaa !381
  %2 = bitcast i8* %b to i32*, !dbg !920
  %3 = load i32* %2, align 4, !dbg !920, !tbaa !381
  %sub = sub nsw i32 %1, %3, !dbg !920
  ret i32 %sub, !dbg !920
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_DecomposeIJK(i32 %dim, i32 %ijk, i32* nocapture %nprocs, i32* nocapture %pos) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !122), !dbg !921
  tail call void @llvm.dbg.value(metadata !{i32 %ijk}, i64 0, metadata !123), !dbg !921
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !124), !dbg !921
  tail call void @llvm.dbg.value(metadata !{i32* %pos}, i64 0, metadata !125), !dbg !921
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !922
  %cmp11 = icmp sgt i32 %dim, 0, !dbg !922
  br i1 %cmp11, label %for.body, label %for.end, !dbg !922

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ijk.addr.012 = phi i32 [ %div, %for.body ], [ %ijk, %entry ]
  %arrayidx = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !923
  %0 = load i32* %arrayidx, align 4, !dbg !923, !tbaa !381
  %rem = srem i32 %ijk.addr.012, %0, !dbg !923
  %arrayidx2 = getelementptr inbounds i32* %pos, i64 %indvars.iv, !dbg !923
  store i32 %rem, i32* %arrayidx2, align 4, !dbg !923, !tbaa !381
  %1 = load i32* %arrayidx, align 4, !dbg !924, !tbaa !381
  %div = sdiv i32 %ijk.addr.012, %1, !dbg !924
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !123), !dbg !924
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !922
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !922
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !922
  br i1 %exitcond, label %for.end, label %for.body, !dbg !922

for.end:                                          ; preds = %for.body, %entry
  ret i32 0, !dbg !925
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @PUGH_ComposeIJK(i32 %dim, i32* nocapture %nprocs, i32* nocapture %pos) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !131), !dbg !926
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !132), !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32* %pos}, i64 0, metadata !133), !dbg !928
  %sub = add nsw i32 %dim, -1, !dbg !929
  %idxprom = sext i32 %sub to i64, !dbg !929
  %arrayidx = getelementptr inbounds i32* %pos, i64 %idxprom, !dbg !929
  %0 = load i32* %arrayidx, align 4, !dbg !929, !tbaa !381
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !134), !dbg !929
  %sub1 = add i32 %dim, -2, !dbg !930
  tail call void @llvm.dbg.value(metadata !{i32 %sub1}, i64 0, metadata !135), !dbg !930
  %cmp12 = icmp sgt i32 %sub1, -1, !dbg !930
  br i1 %cmp12, label %for.body.lr.ph, label %for.end, !dbg !930

for.body.lr.ph:                                   ; preds = %entry
  %1 = sext i32 %sub1 to i64
  br label %for.body, !dbg !930

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ijk.013 = phi i32 [ %0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx3 = getelementptr inbounds i32* %pos, i64 %indvars.iv, !dbg !932
  %2 = load i32* %arrayidx3, align 4, !dbg !932, !tbaa !381
  %arrayidx5 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv, !dbg !932
  %3 = load i32* %arrayidx5, align 4, !dbg !932, !tbaa !381
  %mul = mul nsw i32 %3, %ijk.013, !dbg !932
  %add = add nsw i32 %mul, %2, !dbg !932
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !134), !dbg !932
  %4 = trunc i64 %indvars.iv to i32, !dbg !930
  %cmp = icmp sgt i32 %4, 0, !dbg !930
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !930
  br i1 %cmp, label %for.body, label %for.end, !dbg !930

for.end:                                          ; preds = %for.body, %entry
  %ijk.0.lcssa = phi i32 [ %0, %entry ], [ %add, %for.body ]
  ret i32 %ijk.0.lcssa, !dbg !934
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupBoundingBox(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* %nprocs, %struct.PGExtras* nocapture %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !202), !dbg !935
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !203), !dbg !936
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !204), !dbg !937
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !205), !dbg !938
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !206), !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !207), !dbg !940
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !208), !dbg !941
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !209), !dbg !942
  %conv = sext i32 %dim to i64, !dbg !943
  %mul = shl nsw i64 %conv, 3, !dbg !943
  %call = tail call noalias i8* @malloc(i64 %mul) #7, !dbg !943
  %0 = bitcast i8* %call to i32**, !dbg !943
  tail call void @llvm.dbg.value(metadata !{i32** %0}, i64 0, metadata !212), !dbg !943
  %mul2 = shl nsw i64 %conv, 2, !dbg !944
  %call3 = tail call noalias i8* @malloc(i64 %mul2) #7, !dbg !944
  %1 = bitcast i8* %call3 to i32*, !dbg !944
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !213), !dbg !944
  %tobool = icmp eq i8* %call, null, !dbg !945
  %tobool4 = icmp eq i8* %call3, null, !dbg !945
  %or.cond = or i1 %tobool, %tobool4, !dbg !945
  br i1 %or.cond, label %for.cond78.preheader, label %if.then, !dbg !945

if.then:                                          ; preds = %entry
  %nsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 1, !dbg !946
  %2 = load i32** %nsize, align 8, !dbg !946, !tbaa !397
  %call5 = tail call i32 @PUGH_GetBounds(i32 %dim, i32** %0, i32* %nprocs, i32* %2) #7, !dbg !946
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !948
  %cmp140 = icmp sgt i32 %total_procs, 0, !dbg !948
  br i1 %cmp140, label %for.body.lr.ph, label %for.cond78.preheader, !dbg !948

for.body.lr.ph:                                   ; preds = %if.then
  %cmp11.i = icmp sgt i32 %dim, 0, !dbg !950
  %lb = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3, !dbg !953
  %ub = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4, !dbg !957
  %nghostzones = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 12, !dbg !959
  %cmp32 = icmp eq i32 %stagger, 1, !dbg !961
  br label %for.body, !dbg !948

for.cond78.preheader:                             ; preds = %if.then, %for.inc74, %entry
  %cmp79136 = icmp sgt i32 %dim, 0, !dbg !963
  br i1 %cmp79136, label %for.body81, label %for.end86, !dbg !963

for.body:                                         ; preds = %for.inc74, %for.body.lr.ph
  %indvars.iv148 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next149, %for.inc74 ]
  %pnum.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %for.inc74 ]
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !965), !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32 %pnum.0141}, i64 0, metadata !967), !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !968), !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !969), !dbg !966
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !970), !dbg !950
  br i1 %cmp11.i, label %for.body.i, label %for.inc74, !dbg !950

for.body.i:                                       ; preds = %for.body, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body ]
  %ijk.addr.012.i = phi i32 [ %div.i, %for.body.i ], [ %pnum.0141, %for.body ]
  %arrayidx.i = getelementptr inbounds i32* %nprocs, i64 %indvars.iv.i, !dbg !971
  %3 = load i32* %arrayidx.i, align 4, !dbg !971, !tbaa !381
  %rem.i = srem i32 %ijk.addr.012.i, %3, !dbg !971
  %arrayidx2.i = getelementptr inbounds i32* %1, i64 %indvars.iv.i, !dbg !971
  store i32 %rem.i, i32* %arrayidx2.i, align 4, !dbg !971, !tbaa !381
  %div.i = sdiv i32 %ijk.addr.012.i, %3, !dbg !972
  tail call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !967), !dbg !972
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !950
  %lftr.wideiv142 = trunc i64 %indvars.iv.next.i to i32, !dbg !950
  %exitcond143 = icmp eq i32 %lftr.wideiv142, %dim, !dbg !950
  br i1 %exitcond143, label %for.cond8.preheader, label %for.body.i, !dbg !950

for.cond8.preheader:                              ; preds = %for.body.i
  br i1 %cmp11.i, label %for.body11, label %for.inc74, !dbg !973

for.body11:                                       ; preds = %for.inc, %for.cond8.preheader
  %indvars.iv144 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next145, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv144, !dbg !974
  %4 = load i32* %arrayidx, align 4, !dbg !974, !tbaa !381
  %cmp12 = icmp eq i32 %4, 0, !dbg !974
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !974

if.then14:                                        ; preds = %for.body11
  %5 = load i32*** %lb, align 8, !dbg !953, !tbaa !397
  %arrayidx17 = getelementptr inbounds i32** %5, i64 %indvars.iv148, !dbg !953
  %6 = load i32** %arrayidx17, align 8, !dbg !953, !tbaa !397
  %arrayidx18 = getelementptr inbounds i32* %6, i64 %indvars.iv144, !dbg !953
  store i32 0, i32* %arrayidx18, align 4, !dbg !953, !tbaa !381
  br label %if.end40, !dbg !975

if.else:                                          ; preds = %for.body11
  %idxprom21 = sext i32 %4 to i64, !dbg !976
  %arrayidx23 = getelementptr inbounds i32** %0, i64 %indvars.iv144, !dbg !976
  %7 = load i32** %arrayidx23, align 8, !dbg !976, !tbaa !397
  %arrayidx24 = getelementptr inbounds i32* %7, i64 %idxprom21, !dbg !976
  %8 = load i32* %arrayidx24, align 4, !dbg !976, !tbaa !381
  %add = add nsw i32 %8, 1, !dbg !976
  %arrayidx26 = getelementptr inbounds i32* %nghosts, i64 %indvars.iv144, !dbg !976
  %9 = load i32* %arrayidx26, align 4, !dbg !976, !tbaa !381
  %sub = sub i32 %add, %9, !dbg !976
  %10 = load i32*** %lb, align 8, !dbg !976, !tbaa !397
  %arrayidx30 = getelementptr inbounds i32** %10, i64 %indvars.iv148, !dbg !976
  %11 = load i32** %arrayidx30, align 8, !dbg !976, !tbaa !397
  %arrayidx31 = getelementptr inbounds i32* %11, i64 %indvars.iv144, !dbg !976
  store i32 %sub, i32* %arrayidx31, align 4, !dbg !976, !tbaa !381
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !961

if.then34:                                        ; preds = %if.else
  %dec = add nsw i32 %sub, -1, !dbg !977
  store i32 %dec, i32* %arrayidx31, align 4, !dbg !977, !tbaa !381
  br label %if.end40, !dbg !979

if.end40:                                         ; preds = %if.else, %if.then34, %if.then14
  %arrayidx44 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv144, !dbg !980
  %12 = load i32* %arrayidx44, align 4, !dbg !980, !tbaa !381
  %sub45 = add nsw i32 %12, -1, !dbg !980
  %cmp46 = icmp eq i32 %4, %sub45, !dbg !980
  br i1 %cmp46, label %if.then48, label %if.else57, !dbg !980

if.then48:                                        ; preds = %if.end40
  %13 = load i32** %nsize, align 8, !dbg !957, !tbaa !397
  %arrayidx51 = getelementptr inbounds i32* %13, i64 %indvars.iv144, !dbg !957
  %14 = load i32* %arrayidx51, align 4, !dbg !957, !tbaa !381
  %sub52 = add nsw i32 %14, -1, !dbg !957
  %15 = load i32*** %ub, align 8, !dbg !957, !tbaa !397
  %arrayidx55 = getelementptr inbounds i32** %15, i64 %indvars.iv148, !dbg !957
  %16 = load i32** %arrayidx55, align 8, !dbg !957, !tbaa !397
  %arrayidx56 = getelementptr inbounds i32* %16, i64 %indvars.iv144, !dbg !957
  store i32 %sub52, i32* %arrayidx56, align 4, !dbg !957, !tbaa !381
  br label %for.inc, !dbg !981

if.else57:                                        ; preds = %if.end40
  %add60 = add nsw i32 %4, 1, !dbg !959
  %idxprom61 = sext i32 %add60 to i64, !dbg !959
  %arrayidx63 = getelementptr inbounds i32** %0, i64 %indvars.iv144, !dbg !959
  %17 = load i32** %arrayidx63, align 8, !dbg !959, !tbaa !397
  %arrayidx64 = getelementptr inbounds i32* %17, i64 %idxprom61, !dbg !959
  %18 = load i32* %arrayidx64, align 4, !dbg !959, !tbaa !381
  %19 = load i32** %nghostzones, align 8, !dbg !959, !tbaa !397
  %arrayidx66 = getelementptr inbounds i32* %19, i64 %indvars.iv144, !dbg !959
  %20 = load i32* %arrayidx66, align 4, !dbg !959, !tbaa !381
  %add67 = add nsw i32 %20, %18, !dbg !959
  %21 = load i32*** %ub, align 8, !dbg !959, !tbaa !397
  %arrayidx71 = getelementptr inbounds i32** %21, i64 %indvars.iv148, !dbg !959
  %22 = load i32** %arrayidx71, align 8, !dbg !959, !tbaa !397
  %arrayidx72 = getelementptr inbounds i32* %22, i64 %indvars.iv144, !dbg !959
  store i32 %add67, i32* %arrayidx72, align 4, !dbg !959, !tbaa !381
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.else57
  %indvars.iv.next145 = add i64 %indvars.iv144, 1, !dbg !973
  %lftr.wideiv146 = trunc i64 %indvars.iv.next145 to i32, !dbg !973
  %exitcond147 = icmp eq i32 %lftr.wideiv146, %dim, !dbg !973
  br i1 %exitcond147, label %for.inc74, label %for.body11, !dbg !973

for.inc74:                                        ; preds = %for.body, %for.inc, %for.cond8.preheader
  %indvars.iv.next149 = add i64 %indvars.iv148, 1, !dbg !948
  %inc75 = add nsw i32 %pnum.0141, 1, !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32 %inc75}, i64 0, metadata !210), !dbg !948
  %lftr.wideiv150 = trunc i64 %indvars.iv.next149 to i32, !dbg !948
  %exitcond151 = icmp eq i32 %lftr.wideiv150, %total_procs, !dbg !948
  br i1 %exitcond151, label %for.cond78.preheader, label %for.body, !dbg !948

for.body81:                                       ; preds = %for.body81, %for.cond78.preheader
  %indvars.iv = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next, %for.body81 ]
  %arrayidx83 = getelementptr inbounds i32** %0, i64 %indvars.iv, !dbg !982
  %23 = load i32** %arrayidx83, align 8, !dbg !982, !tbaa !397
  %24 = bitcast i32* %23 to i8*, !dbg !982
  tail call void @free(i8* %24) #7, !dbg !982
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !963
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !963
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !963
  br i1 %exitcond, label %for.end86, label %for.body81, !dbg !963

for.end86:                                        ; preds = %for.body81, %for.cond78.preheader
  tail call void @free(i8* %call) #7, !dbg !984
  tail call void @free(i8* %call3) #7, !dbg !985
  ret i32 0, !dbg !986
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupRemoteSizes(i32 %dim, i32* nocapture %perme, i32 %stagger, i32* nocapture %sh, i32* nocapture %nghosts, i32 %total_procs, i32* nocapture %nprocs, %struct.PGExtras* nocapture %this) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !216), !dbg !987
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !217), !dbg !988
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !218), !dbg !989
  tail call void @llvm.dbg.value(metadata !{i32* %sh}, i64 0, metadata !219), !dbg !990
  tail call void @llvm.dbg.value(metadata !{i32* %nghosts}, i64 0, metadata !220), !dbg !991
  tail call void @llvm.dbg.value(metadata !{i32 %total_procs}, i64 0, metadata !221), !dbg !992
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !222), !dbg !993
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %this}, i64 0, metadata !223), !dbg !994
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !224), !dbg !995
  %cmp46 = icmp sgt i32 %total_procs, 0, !dbg !995
  br i1 %cmp46, label %for.body.lr.ph, label %for.end26, !dbg !995

for.body.lr.ph:                                   ; preds = %entry
  %rnpoints = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 8, !dbg !997
  %0 = load i32** %rnpoints, align 8, !dbg !997, !tbaa !397
  %cmp244 = icmp sgt i32 %dim, 0, !dbg !999
  %ub = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 4, !dbg !1001
  %lb = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 3, !dbg !1001
  %rnsize = getelementptr inbounds %struct.PGExtras* %this, i64 0, i32 9, !dbg !1001
  br label %for.body, !dbg !995

for.body:                                         ; preds = %for.inc24, %for.body.lr.ph
  %indvars.iv48 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next49, %for.inc24 ]
  %arrayidx = getelementptr inbounds i32* %0, i64 %indvars.iv48, !dbg !997
  store i32 1, i32* %arrayidx, align 4, !dbg !997, !tbaa !381
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !225), !dbg !999
  br i1 %cmp244, label %for.body3.lr.ph, label %for.inc24, !dbg !999

for.body3.lr.ph:                                  ; preds = %for.body
  %1 = load i32*** %ub, align 8, !dbg !1001, !tbaa !397
  %arrayidx6 = getelementptr inbounds i32** %1, i64 %indvars.iv48, !dbg !1001
  %2 = load i32** %arrayidx6, align 8, !dbg !1001, !tbaa !397
  %3 = load i32*** %lb, align 8, !dbg !1001, !tbaa !397
  %arrayidx10 = getelementptr inbounds i32** %3, i64 %indvars.iv48, !dbg !1001
  %4 = load i32** %arrayidx10, align 8, !dbg !1001, !tbaa !397
  %5 = load i32*** %rnsize, align 8, !dbg !1001, !tbaa !397
  %arrayidx14 = getelementptr inbounds i32** %5, i64 %indvars.iv48, !dbg !1001
  %6 = load i32** %arrayidx14, align 8, !dbg !1001, !tbaa !397
  br label %for.body3, !dbg !999

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx7 = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !1001
  %7 = load i32* %arrayidx7, align 4, !dbg !1001, !tbaa !381
  %arrayidx11 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !1001
  %8 = load i32* %arrayidx11, align 4, !dbg !1001, !tbaa !381
  %sub = add i32 %7, 1, !dbg !1001
  %add = sub i32 %sub, %8, !dbg !1001
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !1001
  store i32 %add, i32* %arrayidx15, align 4, !dbg !1001, !tbaa !381
  %9 = load i32* %arrayidx, align 4, !dbg !1003, !tbaa !381
  %mul = mul nsw i32 %9, %add, !dbg !1003
  store i32 %mul, i32* %arrayidx, align 4, !dbg !1003, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !999
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !999
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !999
  br i1 %exitcond, label %for.inc24, label %for.body3, !dbg !999

for.inc24:                                        ; preds = %for.body3, %for.body
  %indvars.iv.next49 = add i64 %indvars.iv48, 1, !dbg !995
  %lftr.wideiv50 = trunc i64 %indvars.iv.next49 to i32, !dbg !995
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %total_procs, !dbg !995
  br i1 %exitcond51, label %for.end26, label %for.body, !dbg !995

for.end26:                                        ; preds = %for.inc24, %entry
  ret i32 0, !dbg !1004
}

; Function Attrs: optsize
declare i32 @PUGH_GetBounds(i32, i32**, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* nocapture %pughGH, i32 %dim, i32 %first_var, i32 %n_vars, i32 %sync_timelevel, i32 %vartype, %struct.PGExtras* nocapture %extras) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %pughGH}, i64 0, metadata !275), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !276), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i32 %first_var}, i64 0, metadata !277), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{i32 %n_vars}, i64 0, metadata !278), !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i32 %sync_timelevel}, i64 0, metadata !279), !dbg !1009
  tail call void @llvm.dbg.value(metadata !{i32 %vartype}, i64 0, metadata !280), !dbg !1010
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %extras}, i64 0, metadata !281), !dbg !1011
  %call = tail call noalias i8* @malloc(i64 56) #7, !dbg !1012
  %0 = bitcast i8* %call to %struct.PComm*, !dbg !1012
  tail call void @llvm.dbg.value(metadata !{%struct.PComm* %0}, i64 0, metadata !283), !dbg !1012
  %cond = icmp eq i8* %call, null, !dbg !1013
  br i1 %cond, label %if.end83, label %if.then, !dbg !1013

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %dim, 1, !dbg !1014
  %conv = sext i32 %mul to i64, !dbg !1014
  %mul1 = shl nsw i64 %conv, 2, !dbg !1014
  %call2 = tail call noalias i8* @malloc(i64 %mul1) #7, !dbg !1014
  %1 = bitcast i8* %call2 to i32*, !dbg !1014
  %buffer_sz = bitcast i8* %call to i32**, !dbg !1014
  store i32* %1, i32** %buffer_sz, align 8, !dbg !1014, !tbaa !397
  %mul5 = shl nsw i64 %conv, 3, !dbg !1016
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #7, !dbg !1016
  %2 = bitcast i8* %call6 to i8**, !dbg !1016
  %send_buffer = getelementptr inbounds i8* %call, i64 8, !dbg !1016
  %3 = bitcast i8* %send_buffer to i8***, !dbg !1016
  store i8** %2, i8*** %3, align 8, !dbg !1016, !tbaa !397
  %call10 = tail call noalias i8* @malloc(i64 %mul5) #7, !dbg !1017
  %4 = bitcast i8* %call10 to i8**, !dbg !1017
  %recv_buffer = getelementptr inbounds i8* %call, i64 16, !dbg !1017
  %5 = bitcast i8* %recv_buffer to i8***, !dbg !1017
  store i8** %4, i8*** %5, align 8, !dbg !1017, !tbaa !397
  %call14 = tail call noalias i8* @malloc(i64 %mul1) #7, !dbg !1018
  %6 = bitcast i8* %call14 to i32*, !dbg !1018
  %docomm = getelementptr inbounds i8* %call, i64 32, !dbg !1018
  %7 = bitcast i8* %docomm to i32**, !dbg !1018
  store i32* %6, i32** %7, align 8, !dbg !1018, !tbaa !397
  %tobool16 = icmp eq i8* %call2, null, !dbg !1019
  br i1 %tobool16, label %if.end, label %land.lhs.true, !dbg !1019

land.lhs.true:                                    ; preds = %if.then
  %tobool18 = icmp eq i8* %call6, null, !dbg !1019
  br i1 %tobool18, label %if.then43, label %land.lhs.true19, !dbg !1019

land.lhs.true19:                                  ; preds = %land.lhs.true
  %tobool21 = icmp eq i8* %call10, null, !dbg !1019
  %tobool24 = icmp eq i8* %call14, null, !dbg !1019
  %or.cond = or i1 %tobool21, %tobool24, !dbg !1019
  br i1 %or.cond, label %if.then43, label %if.then25, !dbg !1019

if.then25:                                        ; preds = %land.lhs.true19
  %commflag = getelementptr inbounds i8* %call, i64 24, !dbg !1020
  %8 = bitcast i8* %commflag to i32*, !dbg !1020
  store i32 0, i32* %8, align 4, !dbg !1020, !tbaa !381
  %first_var26 = getelementptr inbounds i8* %call, i64 40, !dbg !1022
  %9 = bitcast i8* %first_var26 to i32*, !dbg !1022
  store i32 %first_var, i32* %9, align 4, !dbg !1022, !tbaa !381
  %n_vars27 = getelementptr inbounds i8* %call, i64 44, !dbg !1023
  %10 = bitcast i8* %n_vars27 to i32*, !dbg !1023
  store i32 %n_vars, i32* %10, align 4, !dbg !1023, !tbaa !381
  %sync_timelevel28 = getelementptr inbounds i8* %call, i64 48, !dbg !1024
  %11 = bitcast i8* %sync_timelevel28 to i32*, !dbg !1024
  store i32 %sync_timelevel, i32* %11, align 4, !dbg !1024, !tbaa !381
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !282), !dbg !1025
  %cmp134 = icmp sgt i32 %dim, 0, !dbg !1025
  br i1 %cmp134, label %for.body, label %if.then63, !dbg !1025

for.body:                                         ; preds = %if.then25, %for.body
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %for.body ], [ 0, %if.then25 ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv137, !dbg !1027
  store i32 0, i32* %arrayidx, align 4, !dbg !1027, !tbaa !381
  %arrayidx34 = getelementptr inbounds i8** %2, i64 %indvars.iv137, !dbg !1029
  store i8* null, i8** %arrayidx34, align 8, !dbg !1029, !tbaa !397
  %arrayidx37 = getelementptr inbounds i8** %4, i64 %indvars.iv137, !dbg !1030
  store i8* null, i8** %arrayidx37, align 8, !dbg !1030, !tbaa !397
  %arrayidx40 = getelementptr inbounds i32* %6, i64 %indvars.iv137, !dbg !1031
  store i32 0, i32* %arrayidx40, align 4, !dbg !1031, !tbaa !381
  %indvars.iv.next138 = add i64 %indvars.iv137, 1, !dbg !1025
  %12 = trunc i64 %indvars.iv.next138 to i32, !dbg !1025
  %cmp = icmp slt i32 %12, %mul, !dbg !1025
  br i1 %cmp, label %for.body, label %if.then63, !dbg !1025

if.then43:                                        ; preds = %land.lhs.true, %land.lhs.true19
  tail call void @free(i8* %call2) #7, !dbg !1032
  br label %if.end, !dbg !1035

if.end:                                           ; preds = %if.then, %if.then43
  %tobool46 = icmp eq i8* %call6, null, !dbg !1036
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !1036

if.then47:                                        ; preds = %if.end
  tail call void @free(i8* %call6) #7, !dbg !1037
  br label %if.end49, !dbg !1039

if.end49:                                         ; preds = %if.end, %if.then47
  %tobool51 = icmp eq i8* %call10, null, !dbg !1040
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !1040

if.then52:                                        ; preds = %if.end49
  tail call void @free(i8* %call10) #7, !dbg !1041
  %.pre = load i32** %7, align 8, !dbg !1043, !tbaa !397
  br label %if.end54, !dbg !1044

if.end54:                                         ; preds = %if.end49, %if.then52
  %13 = phi i32* [ %6, %if.end49 ], [ %.pre, %if.then52 ]
  %tobool56 = icmp eq i32* %13, null, !dbg !1043
  br i1 %tobool56, label %if.end61.thread, label %if.then57, !dbg !1043

if.then57:                                        ; preds = %if.end54
  %14 = bitcast i32* %13 to i8*, !dbg !1045
  tail call void @free(i8* %14) #7, !dbg !1045
  br label %if.end61.thread, !dbg !1047

if.end61.thread:                                  ; preds = %if.then57, %if.end54
  tail call void @free(i8* %call) #7, !dbg !1048
  tail call void @llvm.dbg.value(metadata !1049, i64 0, metadata !283), !dbg !1050
  br label %if.end83, !dbg !1051

if.then63:                                        ; preds = %if.then25, %for.body
  %hyper_volume = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 11, !dbg !1052
  %15 = load i32** %hyper_volume, align 8, !dbg !1052, !tbaa !397
  store i32 1, i32* %15, align 4, !dbg !1052, !tbaa !381
  tail call void @llvm.dbg.value(metadata !485, i64 0, metadata !282), !dbg !1054
  %dim66 = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 0, !dbg !1054
  %16 = load i32* %dim66, align 4, !dbg !1054, !tbaa !381
  %cmp67132 = icmp sgt i32 %16, 1, !dbg !1054
  br i1 %cmp67132, label %for.body69.lr.ph, label %if.end83, !dbg !1054

for.body69.lr.ph:                                 ; preds = %if.then63
  %lnsize = getelementptr inbounds %struct.PGExtras* %extras, i64 0, i32 6, !dbg !1056
  %17 = load i32** %lnsize, align 8, !dbg !1056, !tbaa !397
  br label %for.body69, !dbg !1054

for.body69:                                       ; preds = %for.body69.lr.ph, %for.body69
  %18 = phi i32 [ 1, %for.body69.lr.ph ], [ %mul76, %for.body69 ], !dbg !1056
  %indvars.iv = phi i64 [ 1, %for.body69.lr.ph ], [ %indvars.iv.next, %for.body69 ]
  %19 = add nsw i64 %indvars.iv, -1, !dbg !1056
  %arrayidx75 = getelementptr inbounds i32* %17, i64 %19, !dbg !1056
  %20 = load i32* %arrayidx75, align 4, !dbg !1056, !tbaa !381
  %mul76 = mul nsw i32 %20, %18, !dbg !1056
  %arrayidx79 = getelementptr inbounds i32* %15, i64 %indvars.iv, !dbg !1056
  store i32 %mul76, i32* %arrayidx79, align 4, !dbg !1056, !tbaa !381
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1054
  %21 = load i32* %dim66, align 4, !dbg !1054, !tbaa !381
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !1054
  %cmp67 = icmp slt i32 %22, %21, !dbg !1054
  br i1 %cmp67, label %for.body69, label %if.end83, !dbg !1054

if.end83:                                         ; preds = %if.then63, %for.body69, %entry, %if.end61.thread
  %this.0131 = phi %struct.PComm* [ null, %if.end61.thread ], [ null, %entry ], [ %0, %for.body69 ], [ %0, %if.then63 ]
  ret %struct.PComm* %this.0131, !dbg !1058
}

; Function Attrs: nounwind optsize uwtable
define %struct.PComm* @PUGH_SetupGArrayComm(%struct.PGH* nocapture %pughGH, i32 %dim, i32 %var, i32 %sync_timelevel, i32 %vartype, %struct.PGExtras* nocapture %extras) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %pughGH}, i64 0, metadata !288), !dbg !1059
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !289), !dbg !1060
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !290), !dbg !1061
  tail call void @llvm.dbg.value(metadata !{i32 %sync_timelevel}, i64 0, metadata !291), !dbg !1062
  tail call void @llvm.dbg.value(metadata !{i32 %vartype}, i64 0, metadata !292), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %extras}, i64 0, metadata !293), !dbg !1064
  %call = tail call %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* undef, i32 %dim, i32 %var, i32 1, i32 %sync_timelevel, i32 undef, %struct.PGExtras* %extras) #8, !dbg !1065
  ret %struct.PComm* %call, !dbg !1065
}

; Function Attrs: nounwind optsize uwtable
define void @PUGH_DestroyComm(%struct.PComm** nocapture %comm) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PComm** %comm}, i64 0, metadata !299), !dbg !1066
  %0 = load %struct.PComm** %comm, align 8, !dbg !1067, !tbaa !397
  %buffer_sz = getelementptr inbounds %struct.PComm* %0, i64 0, i32 0, !dbg !1067
  %1 = load i32** %buffer_sz, align 8, !dbg !1067, !tbaa !397
  %2 = bitcast i32* %1 to i8*, !dbg !1067
  tail call void @free(i8* %2) #7, !dbg !1067
  %3 = load %struct.PComm** %comm, align 8, !dbg !1068, !tbaa !397
  %send_buffer = getelementptr inbounds %struct.PComm* %3, i64 0, i32 1, !dbg !1068
  %4 = load i8*** %send_buffer, align 8, !dbg !1068, !tbaa !397
  %5 = bitcast i8** %4 to i8*, !dbg !1068
  tail call void @free(i8* %5) #7, !dbg !1068
  %6 = load %struct.PComm** %comm, align 8, !dbg !1069, !tbaa !397
  %recv_buffer = getelementptr inbounds %struct.PComm* %6, i64 0, i32 2, !dbg !1069
  %7 = load i8*** %recv_buffer, align 8, !dbg !1069, !tbaa !397
  %8 = bitcast i8** %7 to i8*, !dbg !1069
  tail call void @free(i8* %8) #7, !dbg !1069
  %9 = load %struct.PComm** %comm, align 8, !dbg !1070, !tbaa !397
  %docomm = getelementptr inbounds %struct.PComm* %9, i64 0, i32 4, !dbg !1070
  %10 = load i32** %docomm, align 8, !dbg !1070, !tbaa !397
  %11 = bitcast i32* %10 to i8*, !dbg !1070
  tail call void @free(i8* %11) #7, !dbg !1070
  %12 = load %struct.PComm** %comm, align 8, !dbg !1071, !tbaa !397
  %13 = bitcast %struct.PComm* %12 to i8*, !dbg !1071
  tail call void @free(i8* %13) #7, !dbg !1071
  store %struct.PComm* null, %struct.PComm** %comm, align 8, !dbg !1072, !tbaa !397
  ret void, !dbg !1073
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.PGA* @PUGH_SetupGArray(i8* %parent, %struct.PGExtras* %extras, %struct.PConnectivity* %connectivity, %struct.PComm* %groupcomm, i8* nocapture %name, i32 %id, i32 %arrayid, i32 %varsize, i32 %vtype, i32 %stagger, i32 %vector_size, i32 %vector_entry, %struct.PGA* %vector_base) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !326), !dbg !1074
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %extras}, i64 0, metadata !327), !dbg !1075
  tail call void @llvm.dbg.value(metadata !{%struct.PConnectivity* %connectivity}, i64 0, metadata !328), !dbg !1076
  tail call void @llvm.dbg.value(metadata !{%struct.PComm* %groupcomm}, i64 0, metadata !329), !dbg !1077
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !330), !dbg !1078
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !331), !dbg !1079
  tail call void @llvm.dbg.value(metadata !{i32 %arrayid}, i64 0, metadata !332), !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32 %varsize}, i64 0, metadata !333), !dbg !1081
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !334), !dbg !1082
  tail call void @llvm.dbg.value(metadata !{i32 %stagger}, i64 0, metadata !335), !dbg !1083
  tail call void @llvm.dbg.value(metadata !{i32 %vector_size}, i64 0, metadata !336), !dbg !1084
  tail call void @llvm.dbg.value(metadata !{i32 %vector_entry}, i64 0, metadata !337), !dbg !1085
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %vector_base}, i64 0, metadata !338), !dbg !1086
  %call = tail call noalias i8* @malloc(i64 104) #7, !dbg !1087
  %0 = bitcast i8* %call to %struct.PGA*, !dbg !1087
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %0}, i64 0, metadata !339), !dbg !1087
  %tobool = icmp eq i8* %call, null, !dbg !1088
  br i1 %tobool, label %if.end35, label %if.then, !dbg !1088

if.then:                                          ; preds = %entry
  %extras1 = getelementptr inbounds i8* %call, i64 56, !dbg !1089
  %1 = bitcast i8* %extras1 to %struct.PGExtras**, !dbg !1089
  store %struct.PGExtras* %extras, %struct.PGExtras** %1, align 8, !dbg !1089, !tbaa !397
  %connectivity2 = getelementptr inbounds i8* %call, i64 64, !dbg !1091
  %2 = bitcast i8* %connectivity2 to %struct.PConnectivity**, !dbg !1091
  store %struct.PConnectivity* %connectivity, %struct.PConnectivity** %2, align 8, !dbg !1091, !tbaa !397
  %comm = getelementptr inbounds i8* %call, i64 72, !dbg !1092
  %3 = bitcast i8* %comm to %struct.PComm**, !dbg !1092
  store %struct.PComm* null, %struct.PComm** %3, align 8, !dbg !1092, !tbaa !397
  %groupcomm3 = getelementptr inbounds i8* %call, i64 80, !dbg !1093
  %4 = bitcast i8* %groupcomm3 to %struct.PComm**, !dbg !1093
  store %struct.PComm* %groupcomm, %struct.PComm** %4, align 8, !dbg !1093, !tbaa !397
  %parent4 = getelementptr inbounds i8* %call, i64 40, !dbg !1094
  %5 = bitcast i8* %parent4 to i8**, !dbg !1094
  store i8* %parent, i8** %5, align 8, !dbg !1094, !tbaa !397
  %varsize5 = getelementptr inbounds i8* %call, i64 48, !dbg !1095
  %6 = bitcast i8* %varsize5 to i32*, !dbg !1095
  store i32 %varsize, i32* %6, align 4, !dbg !1095, !tbaa !381
  %vtype6 = getelementptr inbounds i8* %call, i64 52, !dbg !1096
  %7 = bitcast i8* %vtype6 to i32*, !dbg !1096
  store i32 %vtype, i32* %7, align 4, !dbg !1096, !tbaa !381
  %stagger7 = getelementptr inbounds i8* %call, i64 36, !dbg !1097
  %8 = bitcast i8* %stagger7 to i32*, !dbg !1097
  store i32 %stagger, i32* %8, align 4, !dbg !1097, !tbaa !381
  %id8 = getelementptr inbounds i8* %call, i64 8, !dbg !1098
  %9 = bitcast i8* %id8 to i32*, !dbg !1098
  store i32 %id, i32* %9, align 4, !dbg !1098, !tbaa !381
  %arrayid9 = getelementptr inbounds i8* %call, i64 12, !dbg !1099
  %10 = bitcast i8* %arrayid9 to i32*, !dbg !1099
  store i32 %arrayid, i32* %10, align 4, !dbg !1099, !tbaa !381
  %storage = getelementptr inbounds i8* %call, i64 32, !dbg !1100
  %11 = bitcast i8* %storage to i32*, !dbg !1100
  store i32 0, i32* %11, align 4, !dbg !1100, !tbaa !381
  %call10 = tail call i64 @strlen(i8* %name) #9, !dbg !1101
  %add = add i64 %call10, 1, !dbg !1101
  %call11 = tail call noalias i8* @malloc(i64 %add) #7, !dbg !1101
  %name12 = bitcast i8* %call to i8**, !dbg !1101
  store i8* %call11, i8** %name12, align 8, !dbg !1101, !tbaa !397
  %conv = sext i32 %varsize to i64, !dbg !1102
  %call13 = tail call noalias i8* @calloc(i64 1, i64 %conv) #7, !dbg !1102
  %padddata = getelementptr inbounds i8* %call, i64 16, !dbg !1102
  %12 = bitcast i8* %padddata to i8**, !dbg !1102
  store i8* %call13, i8** %12, align 8, !dbg !1102, !tbaa !397
  %data = getelementptr inbounds i8* %call, i64 24, !dbg !1103
  %13 = bitcast i8* %data to i8**, !dbg !1103
  store i8* %call13, i8** %13, align 8, !dbg !1103, !tbaa !397
  %vector_size15 = getelementptr inbounds i8* %call, i64 88, !dbg !1104
  %14 = bitcast i8* %vector_size15 to i32*, !dbg !1104
  store i32 %vector_size, i32* %14, align 4, !dbg !1104, !tbaa !381
  %vector_entry16 = getelementptr inbounds i8* %call, i64 92, !dbg !1105
  %15 = bitcast i8* %vector_entry16 to i32*, !dbg !1105
  store i32 %vector_entry, i32* %15, align 4, !dbg !1105, !tbaa !381
  %vector_base17 = getelementptr inbounds i8* %call, i64 96, !dbg !1106
  %16 = bitcast i8* %vector_base17 to %struct.PGA**, !dbg !1106
  store %struct.PGA* %vector_base, %struct.PGA** %16, align 8, !dbg !1106, !tbaa !397
  %tobool19 = icmp eq i8* %call11, null, !dbg !1107
  %tobool30 = icmp eq i8* %call13, null, !dbg !1108
  br i1 %tobool19, label %if.end, label %land.lhs.true, !dbg !1107

land.lhs.true:                                    ; preds = %if.then
  br i1 %tobool30, label %if.end.thread, label %if.then22, !dbg !1107

if.then22:                                        ; preds = %land.lhs.true
  %call24 = tail call i8* @strcpy(i8* %call11, i8* %name) #7, !dbg !1110
  br label %if.end35, !dbg !1112

if.end.thread:                                    ; preds = %land.lhs.true
  tail call void @free(i8* %call11) #7, !dbg !1113
  br label %if.end33, !dbg !1108

if.end:                                           ; preds = %if.then
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !1108

if.then31:                                        ; preds = %if.end
  tail call void @free(i8* %call13) #7, !dbg !1115
  br label %if.end33, !dbg !1117

if.end33:                                         ; preds = %if.end.thread, %if.end, %if.then31
  tail call void @free(i8* %call) #7, !dbg !1118
  tail call void @llvm.dbg.value(metadata !1119, i64 0, metadata !339), !dbg !1120
  br label %if.end35

if.end35:                                         ; preds = %entry, %if.then22, %if.end33
  %this.0 = phi %struct.PGA* [ %0, %if.then22 ], [ null, %if.end33 ], [ %0, %entry ]
  ret %struct.PGA* %this.0, !dbg !1121
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @PUGH_DestroyGArray(%struct.PGA** %GA) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA** %GA}, i64 0, metadata !345), !dbg !1122
  %tobool = icmp eq %struct.PGA** %GA, null, !dbg !1123
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !1123

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.PGA** %GA, align 8, !dbg !1123, !tbaa !397
  %tobool1 = icmp eq %struct.PGA* %0, null, !dbg !1123
  br i1 %tobool1, label %if.end12, label %if.then, !dbg !1123

if.then:                                          ; preds = %land.lhs.true
  %storage = getelementptr inbounds %struct.PGA* %0, i64 0, i32 5, !dbg !1124
  %1 = load i32* %storage, align 4, !dbg !1124, !tbaa !381
  %cmp = icmp eq i32 %1, 0, !dbg !1124
  br i1 %cmp, label %if.end, label %if.then2, !dbg !1124

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* %0) #7, !dbg !1126
  %.pre = load %struct.PGA** %GA, align 8, !dbg !1128, !tbaa !397
  br label %if.end, !dbg !1129

if.end:                                           ; preds = %if.then, %if.then2
  %2 = phi %struct.PGA* [ %0, %if.then ], [ %.pre, %if.then2 ]
  %comm = getelementptr inbounds %struct.PGA* %2, i64 0, i32 12, !dbg !1128
  %3 = load %struct.PComm** %comm, align 8, !dbg !1128, !tbaa !397
  %tobool3 = icmp eq %struct.PComm* %3, null, !dbg !1128
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !1128

if.then4:                                         ; preds = %if.end
  %commflag = getelementptr inbounds %struct.PComm* %3, i64 0, i32 3, !dbg !1130
  %4 = load i32* %commflag, align 4, !dbg !1130, !tbaa !381
  %cmp6 = icmp eq i32 %4, 0, !dbg !1130
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !1130

if.then7:                                         ; preds = %if.then4
  %call8 = tail call i32 @PUGH_DisableGArrayComm(%struct.PGA* %2) #7, !dbg !1132
  %.pre25 = load %struct.PGA** %GA, align 8, !dbg !1134, !tbaa !397
  br label %if.end9, !dbg !1135

if.end9:                                          ; preds = %if.then4, %if.then7
  %5 = phi %struct.PGA* [ %2, %if.then4 ], [ %.pre25, %if.then7 ]
  %comm10 = getelementptr inbounds %struct.PGA* %5, i64 0, i32 12, !dbg !1134
  tail call void @PUGH_DestroyComm(%struct.PComm** %comm10) #8, !dbg !1134
  %.pre24 = load %struct.PGA** %GA, align 8, !dbg !1136, !tbaa !397
  br label %if.end11, !dbg !1137

if.end11:                                         ; preds = %if.end, %if.end9
  %6 = phi %struct.PGA* [ %2, %if.end ], [ %.pre24, %if.end9 ]
  %name = getelementptr inbounds %struct.PGA* %6, i64 0, i32 0, !dbg !1136
  %7 = load i8** %name, align 8, !dbg !1136, !tbaa !397
  tail call void @free(i8* %7) #7, !dbg !1136
  %8 = load %struct.PGA** %GA, align 8, !dbg !1138, !tbaa !397
  %padddata = getelementptr inbounds %struct.PGA* %8, i64 0, i32 3, !dbg !1138
  %9 = load i8** %padddata, align 8, !dbg !1138, !tbaa !397
  tail call void @free(i8* %9) #7, !dbg !1138
  %10 = load %struct.PGA** %GA, align 8, !dbg !1139, !tbaa !397
  %11 = bitcast %struct.PGA* %10 to i8*, !dbg !1139
  tail call void @free(i8* %11) #7, !dbg !1139
  store %struct.PGA* null, %struct.PGA** %GA, align 8, !dbg !1140, !tbaa !397
  br label %if.end12, !dbg !1141

if.end12:                                         ; preds = %land.lhs.true, %entry, %if.end11
  ret void, !dbg !1142
}

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayDataStorage(%struct.PGA*) #3

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayComm(%struct.PGA*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #6

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !363, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !55, metadata !64, metadata !82, metadata !88, metadata !104, metadata !118, metadata !127, metadata !136, metadata !148, metadata !166, metadata !182, metadata !198, metadata !214, metadata !226, metadata !284, metadata !294, metadata !300, metadata !340, metadata !346, metadata !354}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_SetupPGV_c", metadata !"CCTKi_version_CactusPUGH_PUGH_SetupPGV_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_SetupPGV_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusPUGH_PUGH_SetupPGV_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGExtras", metadata !"PUGH_SetupPGExtras", metadata !"", i32 68, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PGExtras* (i32, i32*, i32, i32*, i32*, i32, i32*, i32)* @PUGH_SetupPGExtras, null, null, metadata !44, i32 76} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 76] [PUGH_SetupPGExtras]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !20, metadata !22, metadata !20, metadata !22, metadata !22, metadata !20, metadata !22, metadata !20}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !23, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !41, metadata !43}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!24 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!31 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !37} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!37 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !22, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!40 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!41 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !42} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!42 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !26, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!43 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !42} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!45 = metadata !{i32 786689, metadata !11, metadata !"dim", metadata !5, i32 16777284, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 68]
!46 = metadata !{i32 786689, metadata !11, metadata !"perme", metadata !5, i32 33554501, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 69]
!47 = metadata !{i32 786689, metadata !11, metadata !"stagger", metadata !5, i32 50331718, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 70]
!48 = metadata !{i32 786689, metadata !11, metadata !"sh", metadata !5, i32 67108935, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 71]
!49 = metadata !{i32 786689, metadata !11, metadata !"nghosts", metadata !5, i32 83886152, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 72]
!50 = metadata !{i32 786689, metadata !11, metadata !"total_procs", metadata !5, i32 100663369, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 73]
!51 = metadata !{i32 786689, metadata !11, metadata !"nprocs", metadata !5, i32 117440586, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 74]
!52 = metadata !{i32 786689, metadata !11, metadata !"this_proc", metadata !5, i32 134217803, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_proc] [line 75]
!53 = metadata !{i32 786688, metadata !11, metadata !"error", metadata !5, i32 77, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error] [line 77]
!54 = metadata !{i32 786688, metadata !11, metadata !"this", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 78]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DestroyPGExtras", metadata !"PUGH_DestroyPGExtras", metadata !"", i32 122, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PGExtras**)* @PUGH_DestroyPGExtras, null, null, metadata !59, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [PUGH_DestroyPGExtras]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !58}
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !61, metadata !63}
!60 = metadata !{i32 786689, metadata !55, metadata !"PGExtras", metadata !5, i32 16777338, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PGExtras] [line 122]
!61 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !5, i32 126, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 126]
!62 = metadata !{i32 786443, metadata !1, metadata !55, i32 125, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!63 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !5, i32 126, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 126]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupConnectivity", metadata !"PUGH_SetupConnectivity", metadata !"", i32 175, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PConnectivity* (i32, i32, i32*, i32*)* @PUGH_SetupConnectivity, null, null, metadata !75, i32 179} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 179] [PUGH_SetupConnectivity]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !20, metadata !20, metadata !22, metadata !22}
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!68 = metadata !{i32 786454, metadata !1, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!69 = metadata !{i32 786451, metadata !17, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74}
!71 = metadata !{i32 786445, metadata !17, metadata !69, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!72 = metadata !{i32 786445, metadata !17, metadata !69, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!73 = metadata !{i32 786445, metadata !17, metadata !69, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786445, metadata !17, metadata !69, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!76 = metadata !{i32 786689, metadata !64, metadata !"dim", metadata !5, i32 16777391, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 175]
!77 = metadata !{i32 786689, metadata !64, metadata !"total_procs", metadata !5, i32 33554608, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 176]
!78 = metadata !{i32 786689, metadata !64, metadata !"nprocs", metadata !5, i32 50331825, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 177]
!79 = metadata !{i32 786689, metadata !64, metadata !"perme", metadata !5, i32 67109042, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 178]
!80 = metadata !{i32 786688, metadata !64, metadata !"this", metadata !5, i32 180, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 180]
!81 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !5, i32 182, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 182]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DestroyConnectivity", metadata !"PUGH_DestroyConnectivity", metadata !"", i32 263, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PConnectivity**)* @PUGH_DestroyConnectivity, null, null, metadata !86, i32 264} ; [ DW_TAG_subprogram ] [line 263] [def] [scope 264] [PUGH_DestroyConnectivity]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !85}
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786689, metadata !82, metadata !"conn", metadata !5, i32 16777479, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conn] [line 263]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_GenerateTopology", metadata !"PUGH_GenerateTopology", metadata !"", i32 295, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*)* @PUGH_GenerateTopology, null, null, metadata !91, i32 296} ; [ DW_TAG_subprogram ] [line 295] [def] [scope 296] [PUGH_GenerateTopology]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !20, metadata !20, metadata !20, metadata !22}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !102, metadata !103}
!92 = metadata !{i32 786689, metadata !88, metadata !"dim", metadata !5, i32 16777511, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 295]
!93 = metadata !{i32 786689, metadata !88, metadata !"total_procs", metadata !5, i32 33554727, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 295]
!94 = metadata !{i32 786689, metadata !88, metadata !"nprocs", metadata !5, i32 50331943, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 295]
!95 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !5, i32 297, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 297]
!96 = metadata !{i32 786688, metadata !88, metadata !"used_procs", metadata !5, i32 298, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [used_procs] [line 298]
!97 = metadata !{i32 786688, metadata !88, metadata !"free_procs", metadata !5, i32 299, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [free_procs] [line 299]
!98 = metadata !{i32 786688, metadata !88, metadata !"retval", metadata !5, i32 300, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 300]
!99 = metadata !{i32 786688, metadata !88, metadata !"free_dims", metadata !5, i32 301, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [free_dims] [line 301]
!100 = metadata !{i32 786688, metadata !101, metadata !"working", metadata !5, i32 342, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [working] [line 342]
!101 = metadata !{i32 786443, metadata !1, metadata !88, i32 337, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!102 = metadata !{i32 786688, metadata !101, metadata !"root", metadata !5, i32 343, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 343]
!103 = metadata !{i32 786688, metadata !101, metadata !"place", metadata !5, i32 344, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [place] [line 344]
!104 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_GenerateNeighbours", metadata !"PUGH_GenerateNeighbours", metadata !"", i32 407, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, i32**, i32*)* @PUGH_GenerateNeighbours, null, null, metadata !107, i32 412} ; [ DW_TAG_subprogram ] [line 407] [def] [scope 412] [PUGH_GenerateNeighbours]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !20, metadata !20, metadata !20, metadata !22, metadata !26, metadata !22}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!108 = metadata !{i32 786689, metadata !104, metadata !"dim", metadata !5, i32 16777623, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 407]
!109 = metadata !{i32 786689, metadata !104, metadata !"total_procs", metadata !5, i32 33554840, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 408]
!110 = metadata !{i32 786689, metadata !104, metadata !"nprocs", metadata !5, i32 50332057, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 409]
!111 = metadata !{i32 786689, metadata !104, metadata !"neighbours", metadata !5, i32 67109274, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neighbours] [line 410]
!112 = metadata !{i32 786689, metadata !104, metadata !"perme", metadata !5, i32 83886491, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 411]
!113 = metadata !{i32 786688, metadata !104, metadata !"retval", metadata !5, i32 413, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 413]
!114 = metadata !{i32 786688, metadata !104, metadata !"i", metadata !5, i32 414, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 414]
!115 = metadata !{i32 786688, metadata !104, metadata !"idim", metadata !5, i32 416, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 416]
!116 = metadata !{i32 786688, metadata !104, metadata !"pos", metadata !5, i32 417, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 417]
!117 = metadata !{i32 786688, metadata !104, metadata !"temp", metadata !5, i32 418, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 418]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DecomposeIJK", metadata !"PUGH_DecomposeIJK", metadata !"", i32 517, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, i32*)* @PUGH_DecomposeIJK, null, null, metadata !121, i32 518} ; [ DW_TAG_subprogram ] [line 517] [def] [scope 518] [PUGH_DecomposeIJK]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !20, metadata !20, metadata !20, metadata !22, metadata !22}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!122 = metadata !{i32 786689, metadata !118, metadata !"dim", metadata !5, i32 16777733, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 517]
!123 = metadata !{i32 786689, metadata !118, metadata !"ijk", metadata !5, i32 33554949, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ijk] [line 517]
!124 = metadata !{i32 786689, metadata !118, metadata !"nprocs", metadata !5, i32 50332165, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 517]
!125 = metadata !{i32 786689, metadata !118, metadata !"pos", metadata !5, i32 67109381, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 517]
!126 = metadata !{i32 786688, metadata !118, metadata !"idim", metadata !5, i32 519, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 519]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ComposeIJK", metadata !"PUGH_ComposeIJK", metadata !"", i32 553, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32*)* @PUGH_ComposeIJK, null, null, metadata !130, i32 556} ; [ DW_TAG_subprogram ] [line 553] [def] [scope 556] [PUGH_ComposeIJK]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !20, metadata !20, metadata !22, metadata !22}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!131 = metadata !{i32 786689, metadata !127, metadata !"dim", metadata !5, i32 16777769, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 553]
!132 = metadata !{i32 786689, metadata !127, metadata !"nprocs", metadata !5, i32 33554986, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 554]
!133 = metadata !{i32 786689, metadata !127, metadata !"pos", metadata !5, i32 50332203, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 555]
!134 = metadata !{i32 786688, metadata !127, metadata !"ijk", metadata !5, i32 557, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ijk] [line 557]
!135 = metadata !{i32 786688, metadata !127, metadata !"idim", metadata !5, i32 558, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 558]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGExtrasMemory", metadata !"PUGH_SetupPGExtrasMemory", metadata !"", i32 589, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, %struct.PGExtras*)* @PUGH_SetupPGExtrasMemory, null, null, metadata !139, i32 593} ; [ DW_TAG_subprogram ] [line 589] [def] [scope 593] [PUGH_SetupPGExtrasMemory]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !20, metadata !20, metadata !20, metadata !22, metadata !14}
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!140 = metadata !{i32 786689, metadata !136, metadata !"dim", metadata !5, i32 16777805, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 589]
!141 = metadata !{i32 786689, metadata !136, metadata !"total_procs", metadata !5, i32 33555022, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 590]
!142 = metadata !{i32 786689, metadata !136, metadata !"nprocs", metadata !5, i32 50332239, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 591]
!143 = metadata !{i32 786689, metadata !136, metadata !"this", metadata !5, i32 67109456, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 592]
!144 = metadata !{i32 786688, metadata !136, metadata !"retcode", metadata !5, i32 594, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 594]
!145 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !5, i32 595, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 595]
!146 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !5, i32 595, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 595]
!147 = metadata !{i32 786688, metadata !136, metadata !"k", metadata !5, i32 595, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 595]
!148 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGExtrasSizes", metadata !"PUGH_SetupPGExtrasSizes", metadata !"", i32 846, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, i32*, i32*, i32, i32*, i32, %struct.PGExtras*)* @PUGH_SetupPGExtrasSizes, null, null, metadata !151, i32 855} ; [ DW_TAG_subprogram ] [line 846] [def] [scope 855] [PUGH_SetupPGExtrasSizes]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{metadata !20, metadata !20, metadata !22, metadata !20, metadata !22, metadata !22, metadata !20, metadata !22, metadata !20, metadata !14}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165}
!152 = metadata !{i32 786689, metadata !148, metadata !"dim", metadata !5, i32 16778062, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 846]
!153 = metadata !{i32 786689, metadata !148, metadata !"perme", metadata !5, i32 33555279, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 847]
!154 = metadata !{i32 786689, metadata !148, metadata !"stagger", metadata !5, i32 50332496, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 848]
!155 = metadata !{i32 786689, metadata !148, metadata !"sh", metadata !5, i32 67109713, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 849]
!156 = metadata !{i32 786689, metadata !148, metadata !"nghosts", metadata !5, i32 83886930, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 850]
!157 = metadata !{i32 786689, metadata !148, metadata !"total_procs", metadata !5, i32 100664147, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 851]
!158 = metadata !{i32 786689, metadata !148, metadata !"nprocs", metadata !5, i32 117441364, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 852]
!159 = metadata !{i32 786689, metadata !148, metadata !"this_proc", metadata !5, i32 134218581, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_proc] [line 853]
!160 = metadata !{i32 786689, metadata !148, metadata !"this", metadata !5, i32 150995798, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 854]
!161 = metadata !{i32 786688, metadata !148, metadata !"dir", metadata !5, i32 856, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 856]
!162 = metadata !{i32 786688, metadata !148, metadata !"maxpoints", metadata !5, i32 857, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxpoints] [line 857]
!163 = metadata !{i32 786688, metadata !148, metadata !"minpoints", metadata !5, i32 857, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minpoints] [line 857]
!164 = metadata !{i32 786688, metadata !148, metadata !"avgpoints", metadata !5, i32 857, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avgpoints] [line 857]
!165 = metadata !{i32 786688, metadata !148, metadata !"proc", metadata !5, i32 857, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [proc] [line 857]
!166 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGExtrasOwnership", metadata !"PUGH_SetupPGExtrasOwnership", metadata !"", i32 953, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, i32*, i32*, i32, i32*, i32, %struct.PGExtras*)* @PUGH_SetupPGExtrasOwnership, null, null, metadata !167, i32 962} ; [ DW_TAG_subprogram ] [line 953] [def] [scope 962] [PUGH_SetupPGExtrasOwnership]
!167 = metadata !{metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!168 = metadata !{i32 786689, metadata !166, metadata !"dim", metadata !5, i32 16778169, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 953]
!169 = metadata !{i32 786689, metadata !166, metadata !"perme", metadata !5, i32 33555386, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 954]
!170 = metadata !{i32 786689, metadata !166, metadata !"stagger", metadata !5, i32 50332603, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 955]
!171 = metadata !{i32 786689, metadata !166, metadata !"sh", metadata !5, i32 67109820, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 956]
!172 = metadata !{i32 786689, metadata !166, metadata !"nghosts", metadata !5, i32 83887037, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 957]
!173 = metadata !{i32 786689, metadata !166, metadata !"total_procs", metadata !5, i32 100664254, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 958]
!174 = metadata !{i32 786689, metadata !166, metadata !"nprocs", metadata !5, i32 117441471, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 959]
!175 = metadata !{i32 786689, metadata !166, metadata !"this_proc", metadata !5, i32 134218688, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_proc] [line 960]
!176 = metadata !{i32 786689, metadata !166, metadata !"this", metadata !5, i32 150995905, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 961]
!177 = metadata !{i32 786688, metadata !166, metadata !"tmp", metadata !5, i32 963, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 963]
!178 = metadata !{i32 786688, metadata !166, metadata !"dir", metadata !5, i32 964, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 964]
!179 = metadata !{i32 786688, metadata !166, metadata !"idir", metadata !5, i32 964, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idir] [line 964]
!180 = metadata !{i32 786688, metadata !166, metadata !"istart", metadata !5, i32 965, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istart] [line 965]
!181 = metadata !{i32 786688, metadata !166, metadata !"iend", metadata !5, i32 965, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iend] [line 965]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGExtrasStaggering", metadata !"PUGH_SetupPGExtrasStaggering", metadata !"", i32 1081, metadata !149, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, i32*, i32*, i32, i32*, i32, %struct.PGExtras*)* @PUGH_SetupPGExtrasStaggering, null, null, metadata !183, i32 1090} ; [ DW_TAG_subprogram ] [line 1081] [def] [scope 1090] [PUGH_SetupPGExtrasStaggering]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!184 = metadata !{i32 786689, metadata !182, metadata !"dim", metadata !5, i32 16778297, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1081]
!185 = metadata !{i32 786689, metadata !182, metadata !"perme", metadata !5, i32 33555514, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 1082]
!186 = metadata !{i32 786689, metadata !182, metadata !"stagger", metadata !5, i32 50332731, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 1083]
!187 = metadata !{i32 786689, metadata !182, metadata !"sh", metadata !5, i32 67109948, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 1084]
!188 = metadata !{i32 786689, metadata !182, metadata !"nghosts", metadata !5, i32 83887165, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 1085]
!189 = metadata !{i32 786689, metadata !182, metadata !"total_procs", metadata !5, i32 100664382, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 1086]
!190 = metadata !{i32 786689, metadata !182, metadata !"nprocs", metadata !5, i32 117441599, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 1087]
!191 = metadata !{i32 786689, metadata !182, metadata !"this_proc", metadata !5, i32 134218816, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_proc] [line 1088]
!192 = metadata !{i32 786689, metadata !182, metadata !"this", metadata !5, i32 150996033, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 1089]
!193 = metadata !{i32 786688, metadata !182, metadata !"s", metadata !5, i32 1091, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1091]
!194 = metadata !{i32 786688, metadata !182, metadata !"d", metadata !5, i32 1091, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 1091]
!195 = metadata !{i32 786688, metadata !182, metadata !"k", metadata !5, i32 1091, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1091]
!196 = metadata !{i32 786688, metadata !182, metadata !"dir", metadata !5, i32 1091, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 1091]
!197 = metadata !{i32 786688, metadata !182, metadata !"upperbnd", metadata !5, i32 1092, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upperbnd] [line 1092]
!198 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupBoundingBox", metadata !"PUGH_SetupBoundingBox", metadata !"", i32 1158, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, i32*, i32*, i32, i32*, %struct.PGExtras*)* @PUGH_SetupBoundingBox, null, null, metadata !201, i32 1166} ; [ DW_TAG_subprogram ] [line 1158] [def] [scope 1166] [PUGH_SetupBoundingBox]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{metadata !20, metadata !20, metadata !22, metadata !20, metadata !22, metadata !22, metadata !20, metadata !22, metadata !14}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!202 = metadata !{i32 786689, metadata !198, metadata !"dim", metadata !5, i32 16778374, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1158]
!203 = metadata !{i32 786689, metadata !198, metadata !"perme", metadata !5, i32 33555591, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 1159]
!204 = metadata !{i32 786689, metadata !198, metadata !"stagger", metadata !5, i32 50332808, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 1160]
!205 = metadata !{i32 786689, metadata !198, metadata !"sh", metadata !5, i32 67110025, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 1161]
!206 = metadata !{i32 786689, metadata !198, metadata !"nghosts", metadata !5, i32 83887242, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 1162]
!207 = metadata !{i32 786689, metadata !198, metadata !"total_procs", metadata !5, i32 100664459, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 1163]
!208 = metadata !{i32 786689, metadata !198, metadata !"nprocs", metadata !5, i32 117441676, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 1164]
!209 = metadata !{i32 786689, metadata !198, metadata !"this", metadata !5, i32 134218893, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 1165]
!210 = metadata !{i32 786688, metadata !198, metadata !"pnum", metadata !5, i32 1167, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pnum] [line 1167]
!211 = metadata !{i32 786688, metadata !198, metadata !"dir", metadata !5, i32 1167, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 1167]
!212 = metadata !{i32 786688, metadata !198, metadata !"bounds", metadata !5, i32 1169, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bounds] [line 1169]
!213 = metadata !{i32 786688, metadata !198, metadata !"pos", metadata !5, i32 1170, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 1170]
!214 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupRemoteSizes", metadata !"PUGH_SetupRemoteSizes", metadata !"", i32 1258, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32, i32*, i32*, i32, i32*, %struct.PGExtras*)* @PUGH_SetupRemoteSizes, null, null, metadata !215, i32 1266} ; [ DW_TAG_subprogram ] [line 1258] [def] [scope 1266] [PUGH_SetupRemoteSizes]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225}
!216 = metadata !{i32 786689, metadata !214, metadata !"dim", metadata !5, i32 16778474, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1258]
!217 = metadata !{i32 786689, metadata !214, metadata !"perme", metadata !5, i32 33555691, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 1259]
!218 = metadata !{i32 786689, metadata !214, metadata !"stagger", metadata !5, i32 50332908, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 1260]
!219 = metadata !{i32 786689, metadata !214, metadata !"sh", metadata !5, i32 67110125, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sh] [line 1261]
!220 = metadata !{i32 786689, metadata !214, metadata !"nghosts", metadata !5, i32 83887342, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghosts] [line 1262]
!221 = metadata !{i32 786689, metadata !214, metadata !"total_procs", metadata !5, i32 100664559, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total_procs] [line 1263]
!222 = metadata !{i32 786689, metadata !214, metadata !"nprocs", metadata !5, i32 117441776, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 1264]
!223 = metadata !{i32 786689, metadata !214, metadata !"this", metadata !5, i32 134218993, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this] [line 1265]
!224 = metadata !{i32 786688, metadata !214, metadata !"pnum", metadata !5, i32 1267, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pnum] [line 1267]
!225 = metadata !{i32 786688, metadata !214, metadata !"dir", metadata !5, i32 1268, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 1268]
!226 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupGArrayGroupComm", metadata !"PUGH_SetupGArrayGroupComm", metadata !"", i32 1300, metadata !227, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PComm* (%struct.PGH*, i32, i32, i32, i32, i32, %struct.PGExtras*)* @PUGH_SetupGArrayGroupComm, null, null, metadata !274, i32 1307} ; [ DW_TAG_subprogram ] [line 1300] [def] [scope 1307] [PUGH_SetupGArrayGroupComm]
!227 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = metadata !{metadata !229, metadata !243, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !14}
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!230 = metadata !{i32 786454, metadata !1, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!231 = metadata !{i32 786451, metadata !17, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !232, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!232 = metadata !{metadata !233, metadata !234, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!233 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!234 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !235} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!237 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !235} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!238 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!239 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!240 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!241 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !20} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!242 = metadata !{i32 786445, metadata !17, metadata !231, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!244 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!245 = metadata !{i32 786451, metadata !246, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !247, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!246 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!247 = metadata !{metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272}
!248 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!249 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!250 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!251 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!252 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!253 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!254 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!255 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !256} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!257 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!258 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!259 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!260 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !20} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!261 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!262 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!263 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!264 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!265 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!266 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!267 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !20} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!268 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !20} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!269 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!270 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !58} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!271 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !85} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!272 = metadata !{i32 786445, metadata !246, metadata !245, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !273} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283}
!275 = metadata !{i32 786689, metadata !226, metadata !"pughGH", metadata !5, i32 16778516, metadata !243, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 1300]
!276 = metadata !{i32 786689, metadata !226, metadata !"dim", metadata !5, i32 33555733, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1301]
!277 = metadata !{i32 786689, metadata !226, metadata !"first_var", metadata !5, i32 50332950, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 1302]
!278 = metadata !{i32 786689, metadata !226, metadata !"n_vars", metadata !5, i32 67110167, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_vars] [line 1303]
!279 = metadata !{i32 786689, metadata !226, metadata !"sync_timelevel", metadata !5, i32 83887384, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sync_timelevel] [line 1304]
!280 = metadata !{i32 786689, metadata !226, metadata !"vartype", metadata !5, i32 100664601, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vartype] [line 1305]
!281 = metadata !{i32 786689, metadata !226, metadata !"extras", metadata !5, i32 117441818, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extras] [line 1306]
!282 = metadata !{i32 786688, metadata !226, metadata !"i", metadata !5, i32 1308, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1308]
!283 = metadata !{i32 786688, metadata !226, metadata !"this", metadata !5, i32 1309, metadata !229, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 1309]
!284 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupGArrayComm", metadata !"PUGH_SetupGArrayComm", metadata !"", i32 1427, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PComm* (%struct.PGH*, i32, i32, i32, i32, %struct.PGExtras*)* @PUGH_SetupGArrayComm, null, null, metadata !287, i32 1433} ; [ DW_TAG_subprogram ] [line 1427] [def] [scope 1433] [PUGH_SetupGArrayComm]
!285 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{metadata !229, metadata !243, metadata !20, metadata !20, metadata !20, metadata !20, metadata !14}
!287 = metadata !{metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293}
!288 = metadata !{i32 786689, metadata !284, metadata !"pughGH", metadata !5, i32 16778643, metadata !243, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 1427]
!289 = metadata !{i32 786689, metadata !284, metadata !"dim", metadata !5, i32 33555860, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1428]
!290 = metadata !{i32 786689, metadata !284, metadata !"var", metadata !5, i32 50333077, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1429]
!291 = metadata !{i32 786689, metadata !284, metadata !"sync_timelevel", metadata !5, i32 67110294, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sync_timelevel] [line 1430]
!292 = metadata !{i32 786689, metadata !284, metadata !"vartype", metadata !5, i32 83887511, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vartype] [line 1431]
!293 = metadata !{i32 786689, metadata !284, metadata !"extras", metadata !5, i32 100664728, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extras] [line 1432]
!294 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DestroyComm", metadata !"PUGH_DestroyComm", metadata !"", i32 1457, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PComm**)* @PUGH_DestroyComm, null, null, metadata !298, i32 1458} ; [ DW_TAG_subprogram ] [line 1457] [def] [scope 1458] [PUGH_DestroyComm]
!295 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{null, metadata !297}
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786689, metadata !294, metadata !"comm", metadata !5, i32 16778673, metadata !297, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 1457]
!300 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupGArray", metadata !"PUGH_SetupGArray", metadata !"", i32 1488, metadata !301, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PGA* (i8*, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.PGA*)* @PUGH_SetupGArray, null, null, metadata !325, i32 1501} ; [ DW_TAG_subprogram ] [line 1488] [def] [scope 1501] [PUGH_SetupGArray]
!301 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = metadata !{metadata !303, metadata !236, metadata !14, metadata !67, metadata !229, metadata !8, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !20, metadata !303}
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !304} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!304 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!305 = metadata !{i32 786451, metadata !17, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323}
!307 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !273} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!309 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!310 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !236} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!311 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !236} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!312 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!313 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!314 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !236} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!315 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!316 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !20} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!317 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!318 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !67} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!319 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !229} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!320 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !229} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!321 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!322 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!323 = metadata !{i32 786445, metadata !17, metadata !305, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !324} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!325 = metadata !{metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339}
!326 = metadata !{i32 786689, metadata !300, metadata !"parent", metadata !5, i32 16778704, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 1488]
!327 = metadata !{i32 786689, metadata !300, metadata !"extras", metadata !5, i32 33555921, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extras] [line 1489]
!328 = metadata !{i32 786689, metadata !300, metadata !"connectivity", metadata !5, i32 50333138, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [connectivity] [line 1490]
!329 = metadata !{i32 786689, metadata !300, metadata !"groupcomm", metadata !5, i32 67110355, metadata !229, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupcomm] [line 1491]
!330 = metadata !{i32 786689, metadata !300, metadata !"name", metadata !5, i32 83887572, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1492]
!331 = metadata !{i32 786689, metadata !300, metadata !"id", metadata !5, i32 100664789, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 1493]
!332 = metadata !{i32 786689, metadata !300, metadata !"arrayid", metadata !5, i32 117442006, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arrayid] [line 1494]
!333 = metadata !{i32 786689, metadata !300, metadata !"varsize", metadata !5, i32 134219223, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varsize] [line 1495]
!334 = metadata !{i32 786689, metadata !300, metadata !"vtype", metadata !5, i32 150996440, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 1496]
!335 = metadata !{i32 786689, metadata !300, metadata !"stagger", metadata !5, i32 167773657, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagger] [line 1497]
!336 = metadata !{i32 786689, metadata !300, metadata !"vector_size", metadata !5, i32 184550874, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vector_size] [line 1498]
!337 = metadata !{i32 786689, metadata !300, metadata !"vector_entry", metadata !5, i32 201328091, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vector_entry] [line 1499]
!338 = metadata !{i32 786689, metadata !300, metadata !"vector_base", metadata !5, i32 218105308, metadata !303, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vector_base] [line 1500]
!339 = metadata !{i32 786688, metadata !300, metadata !"this", metadata !5, i32 1502, metadata !303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this] [line 1502]
!340 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DestroyGArray", metadata !"PUGH_DestroyGArray", metadata !"", i32 1564, metadata !341, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PGA**)* @PUGH_DestroyGArray, null, null, metadata !344, i32 1565} ; [ DW_TAG_subprogram ] [line 1564] [def] [scope 1565] [PUGH_DestroyGArray]
!341 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!342 = metadata !{null, metadata !343}
!343 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!344 = metadata !{metadata !345}
!345 = metadata !{i32 786689, metadata !340, metadata !"GA", metadata !5, i32 16778780, metadata !343, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 1564]
!346 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IntSort", metadata !"IntSort", metadata !"", i32 1675, metadata !347, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @IntSort, null, null, metadata !351, i32 1676} ; [ DW_TAG_subprogram ] [line 1675] [local] [def] [scope 1676] [IntSort]
!347 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{metadata !20, metadata !349, metadata !349}
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!350 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{metadata !352, metadata !353}
!352 = metadata !{i32 786689, metadata !346, metadata !"a", metadata !5, i32 16778891, metadata !349, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1675]
!353 = metadata !{i32 786689, metadata !346, metadata !"b", metadata !5, i32 33556107, metadata !349, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1675]
!354 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_IntegerRoot", metadata !"PUGH_IntegerRoot", metadata !"", i32 1628, metadata !355, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !357, i32 1629} ; [ DW_TAG_subprogram ] [line 1628] [local] [def] [scope 1629] [PUGH_IntegerRoot]
!355 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{metadata !20, metadata !20, metadata !20}
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361, metadata !362}
!358 = metadata !{i32 786689, metadata !354, metadata !"number", metadata !5, i32 16778844, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 1628]
!359 = metadata !{i32 786689, metadata !354, metadata !"invpower", metadata !5, i32 33556060, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invpower] [line 1628]
!360 = metadata !{i32 786688, metadata !354, metadata !"i", metadata !5, i32 1630, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1630]
!361 = metadata !{i32 786688, metadata !354, metadata !"tmp", metadata !5, i32 1631, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1631]
!362 = metadata !{i32 786688, metadata !354, metadata !"root", metadata !5, i32 1632, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 1632]
!363 = metadata !{metadata !364}
!364 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!365 = metadata !{i32 27, i32 0, metadata !4, null}
!366 = metadata !{i32 68, i32 0, metadata !11, null}
!367 = metadata !{i32 69, i32 0, metadata !11, null}
!368 = metadata !{i32 70, i32 0, metadata !11, null}
!369 = metadata !{i32 71, i32 0, metadata !11, null}
!370 = metadata !{i32 72, i32 0, metadata !11, null}
!371 = metadata !{i32 73, i32 0, metadata !11, null}
!372 = metadata !{i32 74, i32 0, metadata !11, null}
!373 = metadata !{i32 75, i32 0, metadata !11, null}
!374 = metadata !{i32 80, i32 0, metadata !11, null}
!375 = metadata !{i32 83, i32 0, metadata !11, null}
!376 = metadata !{i32 85, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !11, i32 84, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!378 = metadata !{i32 90, i32 0, metadata !377, null}
!379 = metadata !{i32 93, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !377, i32 91, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!381 = metadata !{metadata !"int", metadata !382}
!382 = metadata !{metadata !"omnipotent char", metadata !383}
!383 = metadata !{metadata !"Simple C/C++ TBAA"}
!384 = metadata !{i32 95, i32 0, metadata !380, null}
!385 = metadata !{i32 97, i32 0, metadata !380, null}
!386 = metadata !{i32 99, i32 0, metadata !380, null}
!387 = metadata !{i32 101, i32 0, metadata !380, null}
!388 = metadata !{i32 105, i32 0, metadata !11, null}
!389 = metadata !{i32 589, i32 0, metadata !136, null}
!390 = metadata !{i32 590, i32 0, metadata !136, null}
!391 = metadata !{i32 591, i32 0, metadata !136, null}
!392 = metadata !{i32 592, i32 0, metadata !136, null}
!393 = metadata !{i32 597, i32 0, metadata !136, null}
!394 = metadata !{i32 599, i32 0, metadata !136, null}
!395 = metadata !{i32 604, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !136, i32 600, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!397 = metadata !{metadata !"any pointer", metadata !382}
!398 = metadata !{i32 605, i32 0, metadata !396, null}
!399 = metadata !{i32 606, i32 0, metadata !396, null}
!400 = metadata !{i32 607, i32 0, metadata !396, null}
!401 = metadata !{i32 610, i32 0, metadata !396, null}
!402 = metadata !{i32 611, i32 0, metadata !396, null}
!403 = metadata !{i32 612, i32 0, metadata !396, null}
!404 = metadata !{i32 613, i32 0, metadata !396, null}
!405 = metadata !{i32 614, i32 0, metadata !396, null}
!406 = metadata !{i32 615, i32 0, metadata !396, null}
!407 = metadata !{i32 620, i32 0, metadata !396, null}
!408 = metadata !{i32 631, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !396, i32 630, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!410 = metadata !{i32 632, i32 0, metadata !409, null}
!411 = metadata !{i32 633, i32 0, metadata !409, null}
!412 = metadata !{i32 635, i32 0, metadata !409, null}
!413 = metadata !{i32 639, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !415, i32 639, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!415 = metadata !{i32 786443, metadata !1, metadata !409, i32 638, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!416 = metadata !{i32 641, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !414, i32 640, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!418 = metadata !{i32 642, i32 0, metadata !417, null}
!419 = metadata !{i32 643, i32 0, metadata !417, null}
!420 = metadata !{i32 649, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !409, i32 647, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!422 = metadata !{i32 650, i32 0, metadata !421, null}
!423 = metadata !{i32 651, i32 0, metadata !421, null}
!424 = metadata !{i32 652, i32 0, metadata !421, null}
!425 = metadata !{i32 653, i32 0, metadata !421, null}
!426 = metadata !{i32 654, i32 0, metadata !421, null}
!427 = metadata !{i32 657, i32 0, metadata !421, null}
!428 = metadata !{i32 658, i32 0, metadata !421, null}
!429 = metadata !{i32 659, i32 0, metadata !421, null}
!430 = metadata !{i32 660, i32 0, metadata !421, null}
!431 = metadata !{i32 661, i32 0, metadata !421, null}
!432 = metadata !{i32 662, i32 0, metadata !421, null}
!433 = metadata !{i32 663, i32 0, metadata !421, null}
!434 = metadata !{i32 664, i32 0, metadata !421, null}
!435 = metadata !{i32 665, i32 0, metadata !421, null}
!436 = metadata !{i32 666, i32 0, metadata !421, null}
!437 = metadata !{i32 667, i32 0, metadata !421, null}
!438 = metadata !{i32 668, i32 0, metadata !421, null}
!439 = metadata !{i32 669, i32 0, metadata !421, null}
!440 = metadata !{i32 670, i32 0, metadata !421, null}
!441 = metadata !{i32 671, i32 0, metadata !421, null}
!442 = metadata !{i32 672, i32 0, metadata !421, null}
!443 = metadata !{i32 673, i32 0, metadata !421, null}
!444 = metadata !{i32 674, i32 0, metadata !421, null}
!445 = metadata !{i32 675, i32 0, metadata !421, null}
!446 = metadata !{i32 676, i32 0, metadata !421, null}
!447 = metadata !{i32 682, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !396, i32 680, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!449 = metadata !{i32 683, i32 0, metadata !448, null}
!450 = metadata !{i32 684, i32 0, metadata !448, null}
!451 = metadata !{i32 685, i32 0, metadata !448, null}
!452 = metadata !{i32 686, i32 0, metadata !448, null}
!453 = metadata !{i32 687, i32 0, metadata !448, null}
!454 = metadata !{i32 688, i32 0, metadata !448, null}
!455 = metadata !{i32 689, i32 0, metadata !448, null}
!456 = metadata !{i32 690, i32 0, metadata !448, null}
!457 = metadata !{i32 691, i32 0, metadata !448, null}
!458 = metadata !{i32 692, i32 0, metadata !448, null}
!459 = metadata !{i32 693, i32 0, metadata !448, null}
!460 = metadata !{i32 694, i32 0, metadata !448, null}
!461 = metadata !{i32 695, i32 0, metadata !448, null}
!462 = metadata !{i32 696, i32 0, metadata !448, null}
!463 = metadata !{i32 697, i32 0, metadata !448, null}
!464 = metadata !{i32 698, i32 0, metadata !448, null}
!465 = metadata !{i32 699, i32 0, metadata !448, null}
!466 = metadata !{i32 700, i32 0, metadata !448, null}
!467 = metadata !{i32 701, i32 0, metadata !448, null}
!468 = metadata !{i32 705, i32 0, metadata !396, null}
!469 = metadata !{i32 722, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !471, i32 720, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!471 = metadata !{i32 786443, metadata !1, metadata !472, i32 719, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!472 = metadata !{i32 786443, metadata !1, metadata !473, i32 718, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!473 = metadata !{i32 786443, metadata !1, metadata !474, i32 717, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!474 = metadata !{i32 786443, metadata !1, metadata !396, i32 715, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!475 = metadata !{i32 727, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !470, i32 726, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!477 = metadata !{i32 729, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !476, i32 729, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!479 = metadata !{i32 717, i32 0, metadata !473, null}
!480 = metadata !{i32 719, i32 0, metadata !471, null}
!481 = metadata !{i32 721, i32 0, metadata !470, null}
!482 = metadata !{i32 723, i32 0, metadata !470, null}
!483 = metadata !{i32 724, i32 0, metadata !470, null}
!484 = metadata !{i32 728, i32 0, metadata !476, null}
!485 = metadata !{i32 1}
!486 = metadata !{i32 731, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !478, i32 730, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!488 = metadata !{i32 732, i32 0, metadata !487, null}
!489 = metadata !{i32 737, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !470, i32 736, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!491 = metadata !{i32 738, i32 0, metadata !490, null}
!492 = metadata !{i32 740, i32 0, metadata !490, null}
!493 = metadata !{i32 741, i32 0, metadata !490, null}
!494 = metadata !{i32 743, i32 0, metadata !490, null}
!495 = metadata !{i32 744, i32 0, metadata !490, null}
!496 = metadata !{i32 745, i32 0, metadata !490, null}
!497 = metadata !{i32 753, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !499, i32 752, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!499 = metadata !{i32 786443, metadata !1, metadata !500, i32 751, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!500 = metadata !{i32 786443, metadata !1, metadata !472, i32 750, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!501 = metadata !{i32 751, i32 0, metadata !499, null}
!502 = metadata !{i32 754, i32 0, metadata !498, null}
!503 = metadata !{i32 756, i32 0, metadata !498, null}
!504 = metadata !{i32 757, i32 0, metadata !498, null}
!505 = metadata !{i32 759, i32 0, metadata !498, null}
!506 = metadata !{i32 760, i32 0, metadata !498, null}
!507 = metadata !{i32 769, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !509, i32 769, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!509 = metadata !{i32 786443, metadata !1, metadata !474, i32 767, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!510 = metadata !{i32 771, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 771, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!512 = metadata !{i32 786443, metadata !1, metadata !508, i32 770, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!513 = metadata !{i32 773, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !511, i32 772, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!515 = metadata !{i32 774, i32 0, metadata !514, null}
!516 = metadata !{i32 776, i32 0, metadata !514, null}
!517 = metadata !{i32 777, i32 0, metadata !514, null}
!518 = metadata !{i32 779, i32 0, metadata !514, null}
!519 = metadata !{i32 780, i32 0, metadata !514, null}
!520 = metadata !{i32 782, i32 0, metadata !514, null}
!521 = metadata !{i32 783, i32 0, metadata !514, null}
!522 = metadata !{i32 786, i32 0, metadata !512, null}
!523 = metadata !{i32 787, i32 0, metadata !512, null}
!524 = metadata !{i32 788, i32 0, metadata !512, null}
!525 = metadata !{i32 793, i32 0, metadata !509, null}
!526 = metadata !{i32 794, i32 0, metadata !509, null}
!527 = metadata !{i32 795, i32 0, metadata !509, null}
!528 = metadata !{i32 796, i32 0, metadata !509, null}
!529 = metadata !{i32 797, i32 0, metadata !509, null}
!530 = metadata !{i32 798, i32 0, metadata !509, null}
!531 = metadata !{i32 800, i32 0, metadata !509, null}
!532 = metadata !{i32 801, i32 0, metadata !509, null}
!533 = metadata !{i32 802, i32 0, metadata !509, null}
!534 = metadata !{i32 803, i32 0, metadata !509, null}
!535 = metadata !{i32 804, i32 0, metadata !509, null}
!536 = metadata !{i32 805, i32 0, metadata !509, null}
!537 = metadata !{i32 806, i32 0, metadata !509, null}
!538 = metadata !{i32 807, i32 0, metadata !509, null}
!539 = metadata !{i32 808, i32 0, metadata !509, null}
!540 = metadata !{i32 809, i32 0, metadata !509, null}
!541 = metadata !{i32 810, i32 0, metadata !509, null}
!542 = metadata !{i32 811, i32 0, metadata !509, null}
!543 = metadata !{i32 812, i32 0, metadata !509, null}
!544 = metadata !{i32 813, i32 0, metadata !509, null}
!545 = metadata !{i32 814, i32 0, metadata !509, null}
!546 = metadata !{i32 815, i32 0, metadata !509, null}
!547 = metadata !{i32 816, i32 0, metadata !509, null}
!548 = metadata !{i32 817, i32 0, metadata !509, null}
!549 = metadata !{i32 818, i32 0, metadata !509, null}
!550 = metadata !{i32 819, i32 0, metadata !509, null}
!551 = metadata !{i32 820, i32 0, metadata !509, null}
!552 = metadata !{i32 828, i32 0, metadata !136, null}
!553 = metadata !{i32 846, i32 0, metadata !148, null}
!554 = metadata !{i32 847, i32 0, metadata !148, null}
!555 = metadata !{i32 848, i32 0, metadata !148, null}
!556 = metadata !{i32 849, i32 0, metadata !148, null}
!557 = metadata !{i32 850, i32 0, metadata !148, null}
!558 = metadata !{i32 851, i32 0, metadata !148, null}
!559 = metadata !{i32 852, i32 0, metadata !148, null}
!560 = metadata !{i32 853, i32 0, metadata !148, null}
!561 = metadata !{i32 854, i32 0, metadata !148, null}
!562 = metadata !{i32 860, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !148, i32 860, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!564 = metadata !{i32 865, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !566, i32 864, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!566 = metadata !{i32 786443, metadata !1, metadata !563, i32 861, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!567 = metadata !{i32 869, i32 0, metadata !565, null}
!568 = metadata !{i32 881, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !148, i32 881, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!570 = metadata !{i32 883, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !569, i32 882, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!572 = metadata !{i32 863, i32 0, metadata !566, null}
!573 = metadata !{i32 871, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !565, i32 870, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!575 = metadata !{i32 872, i32 0, metadata !574, null}
!576 = metadata !{i32 876, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !566, i32 875, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!578 = metadata !{i32 888, i32 0, metadata !148, null}
!579 = metadata !{i32 899, i32 0, metadata !148, null}
!580 = metadata !{i32 910, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !148, i32 910, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!582 = metadata !{i32 912, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !581, i32 911, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!584 = metadata !{i32 915, i32 0, metadata !148, null}
!585 = metadata !{i32 919, i32 0, metadata !148, null}
!586 = metadata !{i32 920, i32 0, metadata !148, null}
!587 = metadata !{i32 921, i32 0, metadata !148, null}
!588 = metadata !{i32 922, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !148, i32 922, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!590 = metadata !{i32 924, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !589, i32 923, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!592 = metadata !{i32 925, i32 0, metadata !591, null}
!593 = metadata !{i32 926, i32 0, metadata !591, null}
!594 = metadata !{i32 928, i32 0, metadata !148, null}
!595 = metadata !{i32 930, i32 0, metadata !148, null}
!596 = metadata !{metadata !"double", metadata !382}
!597 = metadata !{i32 932, i32 0, metadata !148, null}
!598 = metadata !{i32 953, i32 0, metadata !166, null}
!599 = metadata !{i32 954, i32 0, metadata !166, null}
!600 = metadata !{i32 955, i32 0, metadata !166, null}
!601 = metadata !{i32 956, i32 0, metadata !166, null}
!602 = metadata !{i32 957, i32 0, metadata !166, null}
!603 = metadata !{i32 958, i32 0, metadata !166, null}
!604 = metadata !{i32 959, i32 0, metadata !166, null}
!605 = metadata !{i32 960, i32 0, metadata !166, null}
!606 = metadata !{i32 961, i32 0, metadata !166, null}
!607 = metadata !{i32 972, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !166, i32 972, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!609 = metadata !{i32 974, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !608, i32 973, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!611 = metadata !{i32 976, i32 0, metadata !610, null}
!612 = metadata !{i32 979, i32 0, metadata !610, null}
!613 = metadata !{i32 987, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !166, i32 987, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!615 = metadata !{i32 991, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !617, i32 990, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!617 = metadata !{i32 786443, metadata !1, metadata !614, i32 988, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!618 = metadata !{i32 993, i32 0, metadata !616, null}
!619 = metadata !{i32 980, i32 0, metadata !610, null}
!620 = metadata !{i32 998, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !166, i32 998, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!622 = metadata !{i32 1000, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !621, i32 999, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!624 = metadata !{i32 1002, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !623, i32 1001, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!626 = metadata !{i32 1003, i32 0, metadata !625, null}
!627 = metadata !{i32 989, i32 0, metadata !617, null}
!628 = metadata !{i32 995, i32 0, metadata !616, null}
!629 = metadata !{i32 1012, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !166, i32 1012, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!631 = metadata !{i32 1017, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !633, i32 1015, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!633 = metadata !{i32 786443, metadata !1, metadata !634, i32 1014, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!634 = metadata !{i32 786443, metadata !1, metadata !630, i32 1013, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!635 = metadata !{i32 1025, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !632, i32 1023, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!637 = metadata !{i32 1037, i32 0, metadata !632, null}
!638 = metadata !{i32 1038, i32 0, metadata !632, null}
!639 = metadata !{i32 1004, i32 0, metadata !625, null}
!640 = metadata !{i32 1014, i32 0, metadata !633, null}
!641 = metadata !{i32 1045, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !166, i32 1045, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!643 = metadata !{i32 1051, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !645, i32 1049, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!645 = metadata !{i32 786443, metadata !1, metadata !646, i32 1048, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!646 = metadata !{i32 786443, metadata !1, metadata !642, i32 1046, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!647 = metadata !{i32 1059, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !644, i32 1056, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!649 = metadata !{i32 1071, i32 0, metadata !644, null}
!650 = metadata !{i32 1072, i32 0, metadata !644, null}
!651 = metadata !{i32 1016, i32 0, metadata !632, null}
!652 = metadata !{i32 1022, i32 0, metadata !632, null}
!653 = metadata !{i32 1026, i32 0, metadata !636, null}
!654 = metadata !{i32 1027, i32 0, metadata !636, null}
!655 = metadata !{i32 1028, i32 0, metadata !632, null}
!656 = metadata !{i32 1032, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !632, i32 1028, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!658 = metadata !{i32 1033, i32 0, metadata !657, null}
!659 = metadata !{i32 1034, i32 0, metadata !657, null}
!660 = metadata !{i32 1035, i32 0, metadata !657, null}
!661 = metadata !{i32 1048, i32 0, metadata !645, null}
!662 = metadata !{i32 1050, i32 0, metadata !644, null}
!663 = metadata !{i32 1055, i32 0, metadata !644, null}
!664 = metadata !{i32 1058, i32 0, metadata !648, null}
!665 = metadata !{i32 1061, i32 0, metadata !644, null}
!666 = metadata !{i32 1066, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !644, i32 1062, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!668 = metadata !{i32 1067, i32 0, metadata !667, null}
!669 = metadata !{i32 1068, i32 0, metadata !667, null}
!670 = metadata !{i32 1069, i32 0, metadata !667, null}
!671 = metadata !{i32 1078, i32 0, metadata !166, null}
!672 = metadata !{i32 1081, i32 0, metadata !182, null}
!673 = metadata !{i32 1082, i32 0, metadata !182, null}
!674 = metadata !{i32 1083, i32 0, metadata !182, null}
!675 = metadata !{i32 1084, i32 0, metadata !182, null}
!676 = metadata !{i32 1085, i32 0, metadata !182, null}
!677 = metadata !{i32 1086, i32 0, metadata !182, null}
!678 = metadata !{i32 1087, i32 0, metadata !182, null}
!679 = metadata !{i32 1088, i32 0, metadata !182, null}
!680 = metadata !{i32 1089, i32 0, metadata !182, null}
!681 = metadata !{i32 1094, i32 0, metadata !182, null}
!682 = metadata !{i32 1096, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !182, i32 1096, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!684 = metadata !{i32 1098, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !683, i32 1097, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!686 = metadata !{i32 1124, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !688, i32 1124, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!688 = metadata !{i32 786443, metadata !1, metadata !689, i32 1103, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!689 = metadata !{i32 786443, metadata !1, metadata !182, i32 1102, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!690 = metadata !{i32 1102, i32 0, metadata !689, null}
!691 = metadata !{i32 1104, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !688, i32 1104, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!693 = metadata !{i32 1119, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !695, i32 1118, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!695 = metadata !{i32 786443, metadata !1, metadata !692, i32 1105, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!696 = metadata !{i32 1106, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !695, i32 1106, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!698 = metadata !{i32 1108, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !697, i32 1107, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!700 = metadata !{i32 1109, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !699, i32 1109, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!702 = metadata !{i32 1111, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !701, i32 1110, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!704 = metadata !{i32 1112, i32 0, metadata !703, null}
!705 = metadata !{i32 1117, i32 0, metadata !695, null}
!706 = metadata !{i32 1120, i32 0, metadata !694, null}
!707 = metadata !{i32 1132, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !709, i32 1131, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!709 = metadata !{i32 786443, metadata !1, metadata !710, i32 1127, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!710 = metadata !{i32 786443, metadata !1, metadata !711, i32 1126, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!711 = metadata !{i32 786443, metadata !1, metadata !687, i32 1125, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!712 = metadata !{i32 1133, i32 0, metadata !708, null}
!713 = metadata !{i32 1130, i32 0, metadata !709, null}
!714 = metadata !{i32 1126, i32 0, metadata !710, null}
!715 = metadata !{i32 1134, i32 0, metadata !708, null}
!716 = metadata !{i32 1139, i32 0, metadata !182, null}
!717 = metadata !{i32 1141, i32 0, metadata !182, null}
!718 = metadata !{i32 122, i32 0, metadata !55, null}
!719 = metadata !{i32 124, i32 0, metadata !55, null}
!720 = metadata !{i32 130, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !722, i32 130, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!722 = metadata !{i32 786443, metadata !1, metadata !723, i32 129, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!723 = metadata !{i32 786443, metadata !1, metadata !62, i32 128, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!724 = metadata !{i32 132, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !721, i32 131, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!726 = metadata !{i32 133, i32 0, metadata !725, null}
!727 = metadata !{i32 134, i32 0, metadata !725, null}
!728 = metadata !{i32 135, i32 0, metadata !725, null}
!729 = metadata !{i32 136, i32 0, metadata !725, null}
!730 = metadata !{i32 128, i32 0, metadata !723, null}
!731 = metadata !{i32 139, i32 0, metadata !62, null}
!732 = metadata !{i32 140, i32 0, metadata !62, null}
!733 = metadata !{i32 141, i32 0, metadata !62, null}
!734 = metadata !{i32 143, i32 0, metadata !62, null}
!735 = metadata !{i32 144, i32 0, metadata !62, null}
!736 = metadata !{i32 145, i32 0, metadata !62, null}
!737 = metadata !{i32 146, i32 0, metadata !62, null}
!738 = metadata !{i32 147, i32 0, metadata !62, null}
!739 = metadata !{i32 148, i32 0, metadata !62, null}
!740 = metadata !{i32 149, i32 0, metadata !62, null}
!741 = metadata !{i32 150, i32 0, metadata !62, null}
!742 = metadata !{i32 151, i32 0, metadata !62, null}
!743 = metadata !{i32 152, i32 0, metadata !62, null}
!744 = metadata !{i32 154, i32 0, metadata !62, null}
!745 = metadata !{i32 155, i32 0, metadata !62, null}
!746 = metadata !{i32 156, i32 0, metadata !62, null}
!747 = metadata !{i32 157, i32 0, metadata !55, null}
!748 = metadata !{i32 175, i32 0, metadata !64, null}
!749 = metadata !{i32 176, i32 0, metadata !64, null}
!750 = metadata !{i32 177, i32 0, metadata !64, null}
!751 = metadata !{i32 178, i32 0, metadata !64, null}
!752 = metadata !{i32 185, i32 0, metadata !64, null}
!753 = metadata !{i32 187, i32 0, metadata !64, null}
!754 = metadata !{i32 189, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !64, i32 188, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!756 = metadata !{i32 190, i32 0, metadata !755, null}
!757 = metadata !{i32 191, i32 0, metadata !755, null}
!758 = metadata !{i32 193, i32 0, metadata !755, null}
!759 = metadata !{i32 195, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !755, i32 194, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!761 = metadata !{i32 196, i32 0, metadata !760, null}
!762 = metadata !{i32 200, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !755, i32 198, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!764 = metadata !{i32 204, i32 0, metadata !755, null}
!765 = metadata !{i32 208, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !755, i32 207, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!767 = metadata !{i32 210, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !766, i32 209, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!769 = metadata !{i32 211, i32 0, metadata !768, null}
!770 = metadata !{i32 213, i32 0, metadata !766, null}
!771 = metadata !{i32 214, i32 0, metadata !766, null}
!772 = metadata !{i32 215, i32 0, metadata !766, null}
!773 = metadata !{i32 217, i32 0, metadata !766, null}
!774 = metadata !{%struct.PConnectivity* null}
!775 = metadata !{i32 218, i32 0, metadata !766, null}
!776 = metadata !{i32 223, i32 0, metadata !64, null}
!777 = metadata !{i32 225, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !64, i32 224, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!779 = metadata !{i32 227, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !778, i32 227, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!781 = metadata !{i32 233, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !778, i32 233, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!783 = metadata !{i32 235, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !782, i32 234, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!785 = metadata !{i32 229, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !780, i32 228, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!787 = metadata !{i32 230, i32 0, metadata !786, null}
!788 = metadata !{i32 238, i32 0, metadata !778, null}
!789 = metadata !{i32 240, i32 0, metadata !778, null}
!790 = metadata !{i32 242, i32 0, metadata !778, null}
!791 = metadata !{i32 244, i32 0, metadata !64, null}
!792 = metadata !{i32 295, i32 0, metadata !88, null}
!793 = metadata !{i32 303, i32 0, metadata !88, null}
!794 = metadata !{i32 304, i32 0, metadata !88, null}
!795 = metadata !{i32 306, i32 0, metadata !88, null}
!796 = metadata !{i32 308, i32 0, metadata !88, null}
!797 = metadata !{i32 310, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !88, i32 310, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!799 = metadata !{i32 312, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !798, i32 311, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!801 = metadata !{i32 314, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !800, i32 313, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!803 = metadata !{i32 315, i32 0, metadata !802, null}
!804 = metadata !{i32 317, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !802, i32 316, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!806 = metadata !{i32 318, i32 0, metadata !805, null}
!807 = metadata !{i32 323, i32 0, metadata !802, null}
!808 = metadata !{i32 325, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !802, i32 324, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!810 = metadata !{i32 326, i32 0, metadata !809, null}
!811 = metadata !{i32 327, i32 0, metadata !809, null}
!812 = metadata !{i32 330, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !802, i32 329, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!814 = metadata !{i32 336, i32 0, metadata !88, null}
!815 = metadata !{i32 346, i32 0, metadata !101, null}
!816 = metadata !{i32 347, i32 0, metadata !101, null}
!817 = metadata !{i32 353, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !101, i32 353, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!819 = metadata !{i32 786689, metadata !354, metadata !"number", metadata !5, i32 16778844, metadata !20, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [number] [line 1628]
!820 = metadata !{i32 355, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !818, i32 354, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!822 = metadata !{i32 1628, i32 0, metadata !354, metadata !820}
!823 = metadata !{i32 786689, metadata !354, metadata !"invpower", metadata !5, i32 33556060, metadata !20, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [invpower] [line 1628]
!824 = metadata !{i32 786688, metadata !354, metadata !"root", metadata !5, i32 1632, metadata !20, i32 0, metadata !820} ; [ DW_TAG_auto_variable ] [root] [line 1632]
!825 = metadata !{i32 1634, i32 0, metadata !826, metadata !820}
!826 = metadata !{i32 786443, metadata !1, metadata !354, i32 1634, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!827 = metadata !{i32 1636, i32 0, metadata !828, metadata !820}
!828 = metadata !{i32 786443, metadata !1, metadata !829, i32 1636, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!829 = metadata !{i32 786443, metadata !1, metadata !826, i32 1635, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!830 = metadata !{i32 786688, metadata !354, metadata !"i", metadata !5, i32 1630, metadata !20, i32 0, metadata !820} ; [ DW_TAG_auto_variable ] [i] [line 1630]
!831 = metadata !{i32 786688, metadata !354, metadata !"tmp", metadata !5, i32 1631, metadata !20, i32 0, metadata !820} ; [ DW_TAG_auto_variable ] [tmp] [line 1631]
!832 = metadata !{i32 1638, i32 0, metadata !829, metadata !820}
!833 = metadata !{i32 1640, i32 0, metadata !834, metadata !820}
!834 = metadata !{i32 786443, metadata !1, metadata !829, i32 1639, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!835 = metadata !{i32 1641, i32 0, metadata !834, metadata !820}
!836 = metadata !{i32 357, i32 0, metadata !821, null}
!837 = metadata !{i32 362, i32 0, metadata !821, null}
!838 = metadata !{i32 363, i32 0, metadata !821, null}
!839 = metadata !{i32 371, i32 0, metadata !101, null}
!840 = metadata !{i32 373, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !101, i32 373, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!842 = metadata !{i32 375, i32 0, metadata !843, null}
!843 = metadata !{i32 786443, metadata !1, metadata !841, i32 374, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!844 = metadata !{i32 377, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !843, i32 376, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!846 = metadata !{i32 378, i32 0, metadata !845, null}
!847 = metadata !{i32 379, i32 0, metadata !845, null}
!848 = metadata !{i32 386, i32 0, metadata !101, null}
!849 = metadata !{i32 387, i32 0, metadata !101, null}
!850 = metadata !{i32 389, i32 0, metadata !88, null}
!851 = metadata !{i32 407, i32 0, metadata !104, null}
!852 = metadata !{i32 408, i32 0, metadata !104, null}
!853 = metadata !{i32 409, i32 0, metadata !104, null}
!854 = metadata !{i32 410, i32 0, metadata !104, null}
!855 = metadata !{i32 411, i32 0, metadata !104, null}
!856 = metadata !{i32 420, i32 0, metadata !104, null}
!857 = metadata !{i32 422, i32 0, metadata !104, null}
!858 = metadata !{i32 424, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !860, i32 424, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!860 = metadata !{i32 786443, metadata !1, metadata !104, i32 423, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!861 = metadata !{i32 528, i32 0, metadata !862, metadata !863}
!862 = metadata !{i32 786443, metadata !1, metadata !118, i32 528, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!863 = metadata !{i32 426, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !859, i32 425, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!865 = metadata !{i32 786689, metadata !118, metadata !"dim", metadata !5, i32 16777733, metadata !20, i32 0, metadata !863} ; [ DW_TAG_arg_variable ] [dim] [line 517]
!866 = metadata !{i32 517, i32 0, metadata !118, metadata !863}
!867 = metadata !{i32 786689, metadata !118, metadata !"ijk", metadata !5, i32 33554949, metadata !20, i32 0, metadata !863} ; [ DW_TAG_arg_variable ] [ijk] [line 517]
!868 = metadata !{i32 786689, metadata !118, metadata !"nprocs", metadata !5, i32 50332165, metadata !22, i32 0, metadata !863} ; [ DW_TAG_arg_variable ] [nprocs] [line 517]
!869 = metadata !{i32 786689, metadata !118, metadata !"pos", metadata !5, i32 67109381, metadata !22, i32 0, metadata !863} ; [ DW_TAG_arg_variable ] [pos] [line 517]
!870 = metadata !{i32 786688, metadata !118, metadata !"idim", metadata !5, i32 519, metadata !20, i32 0, metadata !863} ; [ DW_TAG_auto_variable ] [idim] [line 519]
!871 = metadata !{i32 530, i32 0, metadata !872, metadata !863}
!872 = metadata !{i32 786443, metadata !1, metadata !862, i32 529, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!873 = metadata !{i32 531, i32 0, metadata !872, metadata !863}
!874 = metadata !{i32 428, i32 0, metadata !875, null}
!875 = metadata !{i32 786443, metadata !1, metadata !864, i32 428, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!876 = metadata !{i32 435, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !878, i32 434, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!878 = metadata !{i32 786443, metadata !1, metadata !875, i32 429, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!879 = metadata !{i32 431, i32 0, metadata !878, null}
!880 = metadata !{i32 433, i32 0, metadata !878, null}
!881 = metadata !{i32 436, i32 0, metadata !877, null}
!882 = metadata !{i32 437, i32 0, metadata !878, null}
!883 = metadata !{i32 439, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !878, i32 438, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!885 = metadata !{i32 440, i32 0, metadata !884, null}
!886 = metadata !{i32 441, i32 0, metadata !884, null}
!887 = metadata !{i32 442, i32 0, metadata !884, null}
!888 = metadata !{i32 443, i32 0, metadata !884, null}
!889 = metadata !{i32 446, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !878, i32 445, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!891 = metadata !{i32 452, i32 0, metadata !878, null}
!892 = metadata !{i32 454, i32 0, metadata !878, null}
!893 = metadata !{i32 456, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !878, i32 455, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!895 = metadata !{i32 457, i32 0, metadata !894, null}
!896 = metadata !{i32 458, i32 0, metadata !878, null}
!897 = metadata !{i32 460, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !878, i32 459, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!899 = metadata !{i32 461, i32 0, metadata !898, null}
!900 = metadata !{i32 462, i32 0, metadata !898, null}
!901 = metadata !{i32 463, i32 0, metadata !898, null}
!902 = metadata !{i32 464, i32 0, metadata !898, null}
!903 = metadata !{i32 467, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !878, i32 466, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!905 = metadata !{i32 470, i32 0, metadata !878, null}
!906 = metadata !{i32 481, i32 0, metadata !104, null}
!907 = metadata !{i32 497, i32 0, metadata !104, null}
!908 = metadata !{i32 263, i32 0, metadata !82, null}
!909 = metadata !{i32 265, i32 0, metadata !82, null}
!910 = metadata !{i32 267, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !82, i32 266, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!912 = metadata !{i32 268, i32 0, metadata !911, null}
!913 = metadata !{i32 269, i32 0, metadata !911, null}
!914 = metadata !{i32 270, i32 0, metadata !911, null}
!915 = metadata !{i32 271, i32 0, metadata !911, null}
!916 = metadata !{i32 272, i32 0, metadata !911, null}
!917 = metadata !{i32 273, i32 0, metadata !911, null}
!918 = metadata !{i32 274, i32 0, metadata !82, null}
!919 = metadata !{i32 1675, i32 0, metadata !346, null}
!920 = metadata !{i32 1677, i32 0, metadata !346, null}
!921 = metadata !{i32 517, i32 0, metadata !118, null}
!922 = metadata !{i32 528, i32 0, metadata !862, null}
!923 = metadata !{i32 530, i32 0, metadata !872, null}
!924 = metadata !{i32 531, i32 0, metadata !872, null}
!925 = metadata !{i32 534, i32 0, metadata !118, null}
!926 = metadata !{i32 553, i32 0, metadata !127, null}
!927 = metadata !{i32 554, i32 0, metadata !127, null}
!928 = metadata !{i32 555, i32 0, metadata !127, null}
!929 = metadata !{i32 565, i32 0, metadata !127, null}
!930 = metadata !{i32 566, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !127, i32 566, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!932 = metadata !{i32 568, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !931, i32 567, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!934 = metadata !{i32 571, i32 0, metadata !127, null}
!935 = metadata !{i32 1158, i32 0, metadata !198, null}
!936 = metadata !{i32 1159, i32 0, metadata !198, null}
!937 = metadata !{i32 1160, i32 0, metadata !198, null}
!938 = metadata !{i32 1161, i32 0, metadata !198, null}
!939 = metadata !{i32 1162, i32 0, metadata !198, null}
!940 = metadata !{i32 1163, i32 0, metadata !198, null}
!941 = metadata !{i32 1164, i32 0, metadata !198, null}
!942 = metadata !{i32 1165, i32 0, metadata !198, null}
!943 = metadata !{i32 1172, i32 0, metadata !198, null}
!944 = metadata !{i32 1173, i32 0, metadata !198, null}
!945 = metadata !{i32 1175, i32 0, metadata !198, null}
!946 = metadata !{i32 1179, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !198, i32 1176, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!948 = metadata !{i32 1187, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !1, metadata !947, i32 1187, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!950 = metadata !{i32 528, i32 0, metadata !862, metadata !951}
!951 = metadata !{i32 1190, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !1, metadata !949, i32 1188, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!953 = metadata !{i32 1196, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !955, i32 1195, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!955 = metadata !{i32 786443, metadata !1, metadata !956, i32 1193, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!956 = metadata !{i32 786443, metadata !1, metadata !952, i32 1192, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!957 = metadata !{i32 1209, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !955, i32 1208, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!959 = metadata !{i32 1213, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !955, i32 1212, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!961 = metadata !{i32 1201, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !955, i32 1199, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!963 = metadata !{i32 1220, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !198, i32 1220, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!965 = metadata !{i32 786689, metadata !118, metadata !"dim", metadata !5, i32 16777733, metadata !20, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [dim] [line 517]
!966 = metadata !{i32 517, i32 0, metadata !118, metadata !951}
!967 = metadata !{i32 786689, metadata !118, metadata !"ijk", metadata !5, i32 33554949, metadata !20, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [ijk] [line 517]
!968 = metadata !{i32 786689, metadata !118, metadata !"nprocs", metadata !5, i32 50332165, metadata !22, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [nprocs] [line 517]
!969 = metadata !{i32 786689, metadata !118, metadata !"pos", metadata !5, i32 67109381, metadata !22, i32 0, metadata !951} ; [ DW_TAG_arg_variable ] [pos] [line 517]
!970 = metadata !{i32 786688, metadata !118, metadata !"idim", metadata !5, i32 519, metadata !20, i32 0, metadata !951} ; [ DW_TAG_auto_variable ] [idim] [line 519]
!971 = metadata !{i32 530, i32 0, metadata !872, metadata !951}
!972 = metadata !{i32 531, i32 0, metadata !872, metadata !951}
!973 = metadata !{i32 1192, i32 0, metadata !956, null}
!974 = metadata !{i32 1194, i32 0, metadata !955, null}
!975 = metadata !{i32 1197, i32 0, metadata !954, null}
!976 = metadata !{i32 1200, i32 0, metadata !962, null}
!977 = metadata !{i32 1203, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !962, i32 1202, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!979 = metadata !{i32 1204, i32 0, metadata !978, null}
!980 = metadata !{i32 1207, i32 0, metadata !955, null}
!981 = metadata !{i32 1210, i32 0, metadata !958, null}
!982 = metadata !{i32 1222, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !964, i32 1221, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!984 = metadata !{i32 1224, i32 0, metadata !198, null}
!985 = metadata !{i32 1225, i32 0, metadata !198, null}
!986 = metadata !{i32 1240, i32 0, metadata !198, null}
!987 = metadata !{i32 1258, i32 0, metadata !214, null}
!988 = metadata !{i32 1259, i32 0, metadata !214, null}
!989 = metadata !{i32 1260, i32 0, metadata !214, null}
!990 = metadata !{i32 1261, i32 0, metadata !214, null}
!991 = metadata !{i32 1262, i32 0, metadata !214, null}
!992 = metadata !{i32 1263, i32 0, metadata !214, null}
!993 = metadata !{i32 1264, i32 0, metadata !214, null}
!994 = metadata !{i32 1265, i32 0, metadata !214, null}
!995 = metadata !{i32 1272, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !214, i32 1272, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!997 = metadata !{i32 1275, i32 0, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !996, i32 1273, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!999 = metadata !{i32 1276, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !998, i32 1276, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1001 = metadata !{i32 1278, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !1000, i32 1277, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1003 = metadata !{i32 1279, i32 0, metadata !1002, null}
!1004 = metadata !{i32 1283, i32 0, metadata !214, null}
!1005 = metadata !{i32 1300, i32 0, metadata !226, null}
!1006 = metadata !{i32 1301, i32 0, metadata !226, null}
!1007 = metadata !{i32 1302, i32 0, metadata !226, null}
!1008 = metadata !{i32 1303, i32 0, metadata !226, null}
!1009 = metadata !{i32 1304, i32 0, metadata !226, null}
!1010 = metadata !{i32 1305, i32 0, metadata !226, null}
!1011 = metadata !{i32 1306, i32 0, metadata !226, null}
!1012 = metadata !{i32 1312, i32 0, metadata !226, null}
!1013 = metadata !{i32 1314, i32 0, metadata !226, null}
!1014 = metadata !{i32 1316, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !226, i32 1315, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1016 = metadata !{i32 1317, i32 0, metadata !1015, null}
!1017 = metadata !{i32 1318, i32 0, metadata !1015, null}
!1018 = metadata !{i32 1324, i32 0, metadata !1015, null}
!1019 = metadata !{i32 1326, i32 0, metadata !1015, null}
!1020 = metadata !{i32 1336, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !1, metadata !1015, i32 1335, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1022 = metadata !{i32 1337, i32 0, metadata !1021, null}
!1023 = metadata !{i32 1338, i32 0, metadata !1021, null}
!1024 = metadata !{i32 1339, i32 0, metadata !1021, null}
!1025 = metadata !{i32 1345, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !1021, i32 1345, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1027 = metadata !{i32 1347, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !1026, i32 1346, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1029 = metadata !{i32 1348, i32 0, metadata !1028, null}
!1030 = metadata !{i32 1349, i32 0, metadata !1028, null}
!1031 = metadata !{i32 1355, i32 0, metadata !1028, null}
!1032 = metadata !{i32 1362, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1034, i32 1361, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1034 = metadata !{i32 786443, metadata !1, metadata !1015, i32 1359, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1035 = metadata !{i32 1363, i32 0, metadata !1033, null}
!1036 = metadata !{i32 1364, i32 0, metadata !1034, null}
!1037 = metadata !{i32 1366, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !1034, i32 1365, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1039 = metadata !{i32 1367, i32 0, metadata !1038, null}
!1040 = metadata !{i32 1368, i32 0, metadata !1034, null}
!1041 = metadata !{i32 1370, i32 0, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !1, metadata !1034, i32 1369, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1043 = metadata !{i32 1386, i32 0, metadata !1034, null}
!1044 = metadata !{i32 1371, i32 0, metadata !1042, null}
!1045 = metadata !{i32 1388, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !1034, i32 1387, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1047 = metadata !{i32 1389, i32 0, metadata !1046, null}
!1048 = metadata !{i32 1391, i32 0, metadata !1034, null}
!1049 = metadata !{%struct.PComm* null}
!1050 = metadata !{i32 1392, i32 0, metadata !1034, null}
!1051 = metadata !{i32 1401, i32 0, metadata !226, null}
!1052 = metadata !{i32 1403, i32 0, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !1, metadata !226, i32 1402, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1054 = metadata !{i32 1404, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !1053, i32 1404, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1056 = metadata !{i32 1406, i32 0, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !1055, i32 1405, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1058 = metadata !{i32 1410, i32 0, metadata !226, null}
!1059 = metadata !{i32 1427, i32 0, metadata !284, null}
!1060 = metadata !{i32 1428, i32 0, metadata !284, null}
!1061 = metadata !{i32 1429, i32 0, metadata !284, null}
!1062 = metadata !{i32 1430, i32 0, metadata !284, null}
!1063 = metadata !{i32 1431, i32 0, metadata !284, null}
!1064 = metadata !{i32 1432, i32 0, metadata !284, null}
!1065 = metadata !{i32 1434, i32 0, metadata !284, null}
!1066 = metadata !{i32 1457, i32 0, metadata !294, null}
!1067 = metadata !{i32 1459, i32 0, metadata !294, null}
!1068 = metadata !{i32 1460, i32 0, metadata !294, null}
!1069 = metadata !{i32 1461, i32 0, metadata !294, null}
!1070 = metadata !{i32 1467, i32 0, metadata !294, null}
!1071 = metadata !{i32 1468, i32 0, metadata !294, null}
!1072 = metadata !{i32 1470, i32 0, metadata !294, null}
!1073 = metadata !{i32 1471, i32 0, metadata !294, null}
!1074 = metadata !{i32 1488, i32 0, metadata !300, null}
!1075 = metadata !{i32 1489, i32 0, metadata !300, null}
!1076 = metadata !{i32 1490, i32 0, metadata !300, null}
!1077 = metadata !{i32 1491, i32 0, metadata !300, null}
!1078 = metadata !{i32 1492, i32 0, metadata !300, null}
!1079 = metadata !{i32 1493, i32 0, metadata !300, null}
!1080 = metadata !{i32 1494, i32 0, metadata !300, null}
!1081 = metadata !{i32 1495, i32 0, metadata !300, null}
!1082 = metadata !{i32 1496, i32 0, metadata !300, null}
!1083 = metadata !{i32 1497, i32 0, metadata !300, null}
!1084 = metadata !{i32 1498, i32 0, metadata !300, null}
!1085 = metadata !{i32 1499, i32 0, metadata !300, null}
!1086 = metadata !{i32 1500, i32 0, metadata !300, null}
!1087 = metadata !{i32 1504, i32 0, metadata !300, null}
!1088 = metadata !{i32 1506, i32 0, metadata !300, null}
!1089 = metadata !{i32 1508, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !300, i32 1507, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1091 = metadata !{i32 1509, i32 0, metadata !1090, null}
!1092 = metadata !{i32 1510, i32 0, metadata !1090, null}
!1093 = metadata !{i32 1511, i32 0, metadata !1090, null}
!1094 = metadata !{i32 1512, i32 0, metadata !1090, null}
!1095 = metadata !{i32 1513, i32 0, metadata !1090, null}
!1096 = metadata !{i32 1514, i32 0, metadata !1090, null}
!1097 = metadata !{i32 1515, i32 0, metadata !1090, null}
!1098 = metadata !{i32 1516, i32 0, metadata !1090, null}
!1099 = metadata !{i32 1517, i32 0, metadata !1090, null}
!1100 = metadata !{i32 1518, i32 0, metadata !1090, null}
!1101 = metadata !{i32 1520, i32 0, metadata !1090, null}
!1102 = metadata !{i32 1521, i32 0, metadata !1090, null}
!1103 = metadata !{i32 1522, i32 0, metadata !1090, null}
!1104 = metadata !{i32 1524, i32 0, metadata !1090, null}
!1105 = metadata !{i32 1525, i32 0, metadata !1090, null}
!1106 = metadata !{i32 1526, i32 0, metadata !1090, null}
!1107 = metadata !{i32 1528, i32 0, metadata !1090, null}
!1108 = metadata !{i32 1538, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !1090, i32 1533, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1110 = metadata !{i32 1530, i32 0, metadata !1111, null}
!1111 = metadata !{i32 786443, metadata !1, metadata !1090, i32 1529, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1112 = metadata !{i32 1531, i32 0, metadata !1111, null}
!1113 = metadata !{i32 1536, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1, metadata !1109, i32 1535, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1115 = metadata !{i32 1540, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1109, i32 1539, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1117 = metadata !{i32 1541, i32 0, metadata !1116, null}
!1118 = metadata !{i32 1542, i32 0, metadata !1109, null}
!1119 = metadata !{%struct.PGA* null}
!1120 = metadata !{i32 1543, i32 0, metadata !1109, null}
!1121 = metadata !{i32 1547, i32 0, metadata !300, null}
!1122 = metadata !{i32 1564, i32 0, metadata !340, null}
!1123 = metadata !{i32 1566, i32 0, metadata !340, null}
!1124 = metadata !{i32 1569, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !340, i32 1567, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1126 = metadata !{i32 1571, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !1125, i32 1570, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1128 = metadata !{i32 1575, i32 0, metadata !1125, null}
!1129 = metadata !{i32 1572, i32 0, metadata !1127, null}
!1130 = metadata !{i32 1577, i32 0, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !1, metadata !1125, i32 1576, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1132 = metadata !{i32 1579, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1131, i32 1578, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGV.c]
!1134 = metadata !{i32 1581, i32 0, metadata !1131, null}
!1135 = metadata !{i32 1580, i32 0, metadata !1133, null}
!1136 = metadata !{i32 1585, i32 0, metadata !1125, null}
!1137 = metadata !{i32 1582, i32 0, metadata !1131, null}
!1138 = metadata !{i32 1586, i32 0, metadata !1125, null}
!1139 = metadata !{i32 1587, i32 0, metadata !1125, null}
!1140 = metadata !{i32 1588, i32 0, metadata !1125, null}
!1141 = metadata !{i32 1589, i32 0, metadata !1125, null}
!1142 = metadata !{i32 1590, i32 0, metadata !340, null}
