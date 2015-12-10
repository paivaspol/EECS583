; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [59 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"PUGH_SyncGroup: Unknown group: %s\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"PUGH_SyncGroup: Synchronising scalar group: %s\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"PUGH_SyncGroup: Unknown group type\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"Unknown group type in PUGH_EnableGroupComm\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"Unknown group type in PUGH_DisableGroupComm\00", align 1
@.str7 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Comm.c,v 1.59 2001/10/31 12:04:59 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Comm_c() #0 {
entry:
  ret i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0), !dbg !267
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SyncGroup(%struct.cGH* %GH, i8* %groupname) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !268
  call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !54), !dbg !268
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !55), !dbg !269
  %call = call i32 @CCTK_GroupIndex(i8* %groupname) #6, !dbg !270
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !68), !dbg !270
  %cmp = icmp slt i32 %call, 0, !dbg !271
  br i1 %cmp, label %if.then, label %if.else, !dbg !271

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 90, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i8* %groupname) #6, !dbg !272
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !69), !dbg !275
  br label %if.end18, !dbg !276

if.else:                                          ; preds = %entry
  %call2 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %pgroup) #6, !dbg !277
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !279
  %0 = load i32* %grouptype, align 4, !dbg !279, !tbaa !280
  switch i32 %0, label %if.else15 [
    i32 1, label %if.then4
    i32 2, label %if.then11
    i32 3, label %if.then11
  ], !dbg !279

if.then4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !283
  %call5 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 101, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #6, !dbg !285
  br label %if.end18, !dbg !286

if.then11:                                        ; preds = %if.else, %if.else
  %call12 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !287
  %call13 = call i32 @CCTK_FirstVarIndexI(i32 %call) #6, !dbg !287
  %idxprom.i = sext i32 %call13 to i64, !dbg !289
  %variables.i = getelementptr inbounds %struct.PGH* %call12, i64 0, i32 7, !dbg !289
  %1 = load i8**** %variables.i, align 8, !dbg !289, !tbaa !290
  %arrayidx.i = getelementptr inbounds i8*** %1, i64 %idxprom.i, !dbg !289
  %2 = load i8*** %arrayidx.i, align 8, !dbg !289, !tbaa !290
  %3 = load i8** %2, align 8, !dbg !289, !tbaa !290
  %groupcomm.i = getelementptr inbounds i8* %3, i64 80, !dbg !291
  %4 = bitcast i8* %groupcomm.i to %struct.PComm**, !dbg !291
  %5 = load %struct.PComm** %4, align 8, !dbg !291, !tbaa !290
  call fastcc void @PUGH_Sync(%struct.PGH* %call12, %struct.PComm* %5) #6, !dbg !291
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !287
  br label %if.end18, !dbg !292

if.else15:                                        ; preds = %if.else
  %call16 = call i32 @CCTK_Warn(i32 1, i32 110, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !293
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !295
  br label %if.end18

if.end18:                                         ; preds = %if.then4, %if.else15, %if.then11, %if.then
  %rc.0 = phi i32 [ -1, %if.then ], [ 0, %if.then4 ], [ 0, %if.then11 ], [ 0, %if.else15 ]
  ret i32 %rc.0, !dbg !296
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_EnableGroupComm(%struct.cGH* %GH, i8* %groupname) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !72), !dbg !297
  call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !73), !dbg !297
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !75), !dbg !298
  %call = call i32 @CCTK_GroupIndex(i8* %groupname) #6, !dbg !299
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !74), !dbg !299
  %call1 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %pgroup) #6, !dbg !300
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !301
  %0 = load i32* %grouptype, align 4, !dbg !301, !tbaa !280
  switch i32 %0, label %if.else10 [
    i32 1, label %if.end12
    i32 2, label %if.then6
    i32 3, label %if.then6
  ], !dbg !301

if.then6:                                         ; preds = %entry, %entry
  %call7 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !302
  %call8 = call i32 @CCTK_FirstVarIndexI(i32 %call) #6, !dbg !304
  call void @llvm.dbg.value(metadata !305, i64 0, metadata !76), !dbg !304
  br label %if.end12, !dbg !306

if.else10:                                        ; preds = %entry
  %call11 = call i32 @CCTK_Warn(i32 1, i32 169, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !307
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !309
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.then6, %if.else10
  %rc.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.else10 ], [ 1, %entry ]
  ret i32 %rc.0, !dbg !310
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_DisableGroupComm(%struct.cGH* %GH, i8* %groupname) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !79), !dbg !311
  call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !80), !dbg !311
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !82), !dbg !312
  %call = call i32 @CCTK_GroupIndex(i8* %groupname) #6, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !81), !dbg !313
  %call1 = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %pgroup) #6, !dbg !314
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !315
  %0 = load i32* %grouptype, align 4, !dbg !315, !tbaa !280
  switch i32 %0, label %if.else11 [
    i32 1, label %if.end13
    i32 2, label %if.then6
    i32 3, label %if.then6
  ], !dbg !315

if.then6:                                         ; preds = %entry, %entry
  %call7 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !316
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call7}, i64 0, metadata !84), !dbg !316
  %call8 = call i32 @CCTK_FirstVarIndexI(i32 %call) #6, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !152), !dbg !318
  call void @llvm.dbg.value(metadata !305, i64 0, metadata !83), !dbg !319
  br label %if.end13, !dbg !320

if.else11:                                        ; preds = %entry
  %call12 = call i32 @CCTK_Warn(i32 1, i32 232, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) #6, !dbg !321
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !323
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.then6, %if.else11
  %rc.0 = phi i32 [ 1, %if.then6 ], [ 0, %if.else11 ], [ 1, %entry ]
  ret i32 %rc.0, !dbg !324
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_DisableGArrayGroupComm(%struct.PGH* nocapture %pughGH, i32 %first_var, %struct.PComm* nocapture %groupcomm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %pughGH}, i64 0, metadata !212), !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %first_var}, i64 0, metadata !213), !dbg !326
  tail call void @llvm.dbg.value(metadata !{%struct.PComm* %groupcomm}, i64 0, metadata !214), !dbg !327
  tail call void @llvm.dbg.value(metadata !{i32 %first_var}, i64 0, metadata !213), !dbg !328
  ret i32 1, !dbg !329
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_EnableGArrayComm(%struct.PGA* nocapture %GA, i32 %commflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %GA}, i64 0, metadata !191), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i32 %commflag}, i64 0, metadata !192), !dbg !331
  ret i32 1, !dbg !332
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_DisableGArrayComm(%struct.PGA* nocapture %GA) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %GA}, i64 0, metadata !197), !dbg !333
  ret i32 1, !dbg !334
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SyncGArray(%struct.PGA* nocapture %GA) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGA* %GA}, i64 0, metadata !200), !dbg !335
  %parent = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 7, !dbg !336
  %0 = load i8** %parent, align 8, !dbg !336, !tbaa !290
  %1 = bitcast i8* %0 to %struct.PGH*, !dbg !336
  %comm = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 12, !dbg !336
  %2 = load %struct.PComm** %comm, align 8, !dbg !336, !tbaa !290
  tail call fastcc void @PUGH_Sync(%struct.PGH* %1, %struct.PComm* %2) #7, !dbg !336
  ret i32 0, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PUGH_Sync(%struct.PGH* nocapture %pughGH, %struct.PComm* nocapture %comm) #1 {
entry:
  %nprocs = getelementptr inbounds %struct.PGH* %pughGH, i64 0, i32 2, !dbg !337
  %0 = load i32* %nprocs, align 4, !dbg !337, !tbaa !280
  %cmp = icmp eq i32 %0, 1, !dbg !337
  br i1 %cmp, label %if.then, label %return, !dbg !337

if.then:                                          ; preds = %entry
  %sync_timelevel.i = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 7, !dbg !338
  %1 = load i32* %sync_timelevel.i, align 4, !dbg !338, !tbaa !280
  %idxprom.i = sext i32 %1 to i64, !dbg !338
  %first_var.i = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 5, !dbg !338
  %2 = load i32* %first_var.i, align 4, !dbg !338, !tbaa !280
  %idxprom1.i = sext i32 %2 to i64, !dbg !338
  %variables.i = getelementptr inbounds %struct.PGH* %pughGH, i64 0, i32 7, !dbg !338
  %3 = load i8**** %variables.i, align 8, !dbg !338, !tbaa !290
  %arrayidx.i = getelementptr inbounds i8*** %3, i64 %idxprom1.i, !dbg !338
  %4 = load i8*** %arrayidx.i, align 8, !dbg !338, !tbaa !290
  %arrayidx2.i = getelementptr inbounds i8** %4, i64 %idxprom.i, !dbg !338
  %5 = load i8** %arrayidx2.i, align 8, !dbg !338, !tbaa !290
  %extras.i = getelementptr inbounds i8* %5, i64 56, !dbg !341
  %6 = bitcast i8* %extras.i to %struct.PGExtras**, !dbg !341
  %7 = load %struct.PGExtras** %6, align 8, !dbg !341, !tbaa !290
  %iterator.i = getelementptr inbounds %struct.PGExtras* %7, i64 0, i32 10, !dbg !341
  %8 = load i32** %iterator.i, align 8, !dbg !341, !tbaa !290
  tail call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !342) #5, !dbg !341
  %dim4.i = getelementptr inbounds %struct.PGExtras* %7, i64 0, i32 0, !dbg !343
  %9 = load i32* %dim4.i, align 4, !dbg !343, !tbaa !280
  %conv.i = sext i32 %9 to i64, !dbg !343
  %mul.i = shl nsw i64 %conv.i, 2, !dbg !343
  %call.i = tail call noalias i8* @malloc(i64 %mul.i) #6, !dbg !343
  %10 = bitcast i8* %call.i to i32*, !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !344) #5, !dbg !343
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !345) #5, !dbg !346
  %cmp22.i = icmp sgt i32 %9, 0, !dbg !346
  br i1 %cmp22.i, label %for.body.lr.ph.i, label %PUGH_SyncSingleProc.exit, !dbg !346

for.body.lr.ph.i:                                 ; preds = %if.then
  %connectivity.i = getelementptr inbounds i8* %5, i64 64, !dbg !348
  %11 = bitcast i8* %connectivity.i to %struct.PConnectivity**, !dbg !348
  %stagger.i = getelementptr inbounds i8* %5, i64 36, !dbg !350
  %12 = bitcast i8* %stagger.i to i32*, !dbg !350
  %varsize.i = getelementptr inbounds i8* %5, i64 48, !dbg !352
  %13 = bitcast i8* %varsize.i to i32*, !dbg !352
  %arrayidx65.i = getelementptr inbounds i32* %8, i64 1, !dbg !353
  %n_vars.i = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 6, !dbg !355
  %arrayidx176.i = getelementptr inbounds i8* %call.i, i64 4, !dbg !357
  %14 = bitcast i8* %arrayidx176.i to i32*, !dbg !357
  br label %for.body.i, !dbg !346

for.body.i:                                       ; preds = %for.inc181.i, %for.body.lr.ph.i
  %15 = phi %struct.PGExtras* [ %7, %for.body.lr.ph.i ], [ %80, %for.inc181.i ]
  %16 = phi %struct.PGExtras* [ %7, %for.body.lr.ph.i ], [ %81, %for.inc181.i ]
  %17 = phi i32 [ %9, %for.body.lr.ph.i ], [ %79, %for.inc181.i ]
  %indvars.iv35.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next36.i, %for.inc181.i ]
  %18 = phi %struct.PGExtras* [ %7, %for.body.lr.ph.i ], [ %82, %for.inc181.i ]
  %19 = trunc i64 %indvars.iv35.i to i32, !dbg !348
  %div.i = sdiv i32 %19, 2, !dbg !348
  %idxprom9.i = sext i32 %div.i to i64, !dbg !348
  %20 = load %struct.PConnectivity** %11, align 8, !dbg !348, !tbaa !290
  %perme.i = getelementptr inbounds %struct.PConnectivity* %20, i64 0, i32 3, !dbg !348
  %21 = load i32** %perme.i, align 8, !dbg !348, !tbaa !290
  %arrayidx10.i = getelementptr inbounds i32* %21, i64 %idxprom9.i, !dbg !348
  %22 = load i32* %arrayidx10.i, align 4, !dbg !348, !tbaa !280
  %tobool.i = icmp eq i32 %22, 0, !dbg !348
  br i1 %tobool.i, label %for.inc181.i, label %if.then.i, !dbg !348

if.then.i:                                        ; preds = %for.body.i
  %23 = load i32* %12, align 4, !dbg !350, !tbaa !280
  %idxprom12.i = sext i32 %23 to i64, !dbg !350
  %arrayidx15.i = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 15, i64 %idxprom12.i, i64 0, !dbg !350
  %24 = load i32*** %arrayidx15.i, align 8, !dbg !350, !tbaa !290
  %arrayidx16.i = getelementptr inbounds i32** %24, i64 %indvars.iv35.i, !dbg !350
  %25 = load i32** %arrayidx16.i, align 8, !dbg !350, !tbaa !290
  tail call void @llvm.dbg.value(metadata !{i32* %25}, i64 0, metadata !359) #5, !dbg !350
  %arrayidx23.i = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 15, i64 %idxprom12.i, i64 1, !dbg !360
  %26 = load i32*** %arrayidx23.i, align 8, !dbg !360, !tbaa !290
  %arrayidx24.i = getelementptr inbounds i32** %26, i64 %indvars.iv35.i, !dbg !360
  %27 = load i32** %arrayidx24.i, align 8, !dbg !360, !tbaa !290
  tail call void @llvm.dbg.value(metadata !{i32* %27}, i64 0, metadata !361) #5, !dbg !360
  %and.i = and i32 %19, 1, !dbg !362
  %tobool25.i = icmp eq i32 %and.i, 0, !dbg !362
  br i1 %tobool25.i, label %if.else.i, label %if.then26.i, !dbg !362

if.then26.i:                                      ; preds = %if.then.i
  %28 = add nsw i64 %indvars.iv35.i, -1, !dbg !363
  %arrayidx32.i = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 14, i64 %idxprom12.i, i64 0, !dbg !363
  %29 = load i32*** %arrayidx32.i, align 8, !dbg !363, !tbaa !290
  %arrayidx33.i = getelementptr inbounds i32** %29, i64 %28, !dbg !363
  br label %if.end.i, !dbg !365

if.else.i:                                        ; preds = %if.then.i
  %30 = add nsw i64 %indvars.iv35.i, 1, !dbg !366
  %arrayidx40.i = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 14, i64 %idxprom12.i, i64 0, !dbg !366
  %31 = load i32*** %arrayidx40.i, align 8, !dbg !366, !tbaa !290
  %arrayidx41.i = getelementptr inbounds i32** %31, i64 %30, !dbg !366
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then26.i
  %istart_to.0.in.i = phi i32** [ %arrayidx33.i, %if.then26.i ], [ %arrayidx41.i, %if.else.i ]
  %istart_to.0.i = load i32** %istart_to.0.in.i, align 8, !dbg !363
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !368) #5, !dbg !369
  %cmp452.i = icmp sgt i32 %17, 0, !dbg !369
  br i1 %cmp452.i, label %for.body47.lr.ph.i, label %for.end.i, !dbg !369

for.body47.lr.ph.i:                               ; preds = %if.end.i
  %dim44.i = getelementptr inbounds %struct.PGExtras* %15, i64 0, i32 0, !dbg !369
  br label %for.body47.i, !dbg !369

for.body47.i:                                     ; preds = %for.body47.i, %for.body47.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body47.lr.ph.i ], [ %indvars.iv.next.i, %for.body47.i ]
  %arrayidx49.i = getelementptr inbounds i32* %25, i64 %indvars.iv.i, !dbg !371
  %32 = load i32* %arrayidx49.i, align 4, !dbg !371, !tbaa !280
  %arrayidx51.i = getelementptr inbounds i32* %8, i64 %indvars.iv.i, !dbg !371
  store i32 %32, i32* %arrayidx51.i, align 4, !dbg !371, !tbaa !280
  %arrayidx53.i = getelementptr inbounds i32* %istart_to.0.i, i64 %indvars.iv.i, !dbg !373
  %33 = load i32* %arrayidx53.i, align 4, !dbg !373, !tbaa !280
  %arrayidx55.i = getelementptr inbounds i32* %10, i64 %indvars.iv.i, !dbg !373
  store i32 %33, i32* %arrayidx55.i, align 4, !dbg !373, !tbaa !280
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !369
  %34 = load i32* %dim44.i, align 4, !dbg !369, !tbaa !280
  %35 = trunc i64 %indvars.iv.next.i to i32, !dbg !369
  %cmp45.i = icmp slt i32 %35, %34, !dbg !369
  br i1 %cmp45.i, label %for.body47.i, label %for.end.i, !dbg !369

for.end.i:                                        ; preds = %for.body47.i, %if.end.i
  %36 = phi %struct.PGExtras* [ %16, %if.end.i ], [ %15, %for.body47.i ]
  %37 = phi %struct.PGExtras* [ %18, %if.end.i ], [ %15, %for.body47.i ]
  %38 = load i32* %27, align 4, !dbg !352, !tbaa !280
  %39 = load i32* %25, align 4, !dbg !352, !tbaa !280
  %sub58.i = sub nsw i32 %38, %39, !dbg !352
  %40 = load i32* %13, align 4, !dbg !352, !tbaa !280
  %mul59.i = mul nsw i32 %sub58.i, %40, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %mul59.i}, i64 0, metadata !374) #5, !dbg !352
  tail call void @llvm.dbg.value(metadata !305, i64 0, metadata !368) #5, !dbg !375
  %arrayidx67.i = getelementptr inbounds i32* %27, i64 1, !dbg !353
  %conv163.i = sext i32 %mul59.i to i64, !dbg !376
  br label %while.body.i, !dbg !378

while.body.i:                                     ; preds = %if.then171.i, %for.end.i
  %41 = phi %struct.PGExtras* [ %15, %for.end.i ], [ %75, %if.then171.i ]
  %42 = phi %struct.PGExtras* [ %36, %for.end.i ], [ %76, %if.then171.i ]
  %43 = phi %struct.PGExtras* [ %37, %for.end.i ], [ %76, %if.then171.i ]
  %dim61.i = getelementptr inbounds %struct.PGExtras* %43, i64 0, i32 0, !dbg !353
  %44 = load i32* %dim61.i, align 4, !dbg !353, !tbaa !280
  %cmp62.i = icmp sgt i32 %44, 1, !dbg !353
  br i1 %cmp62.i, label %land.lhs.true.i, label %if.end116.i, !dbg !353

land.lhs.true.i:                                  ; preds = %while.body.i
  %45 = load i32* %arrayidx65.i, align 4, !dbg !353, !tbaa !280
  %46 = load i32* %arrayidx67.i, align 4, !dbg !353, !tbaa !280
  %cmp68.i = icmp slt i32 %45, %46, !dbg !353
  br i1 %cmp68.i, label %if.end116.i, label %for.cond72.preheader.i, !dbg !353

for.cond72.preheader.i:                           ; preds = %land.lhs.true.i
  %cmp755.i = icmp sgt i32 %44, 2, !dbg !379
  br i1 %cmp755.i, label %for.body77.i, label %for.end94.i, !dbg !379

for.cond72.i:                                     ; preds = %for.body77.i
  %47 = trunc i64 %indvars.iv.next27.i to i32, !dbg !379
  %cmp75.i = icmp slt i32 %47, %.pre.i, !dbg !379
  br i1 %cmp75.i, label %for.body77.i, label %for.end94.i, !dbg !379

for.body77.i:                                     ; preds = %for.cond72.preheader.i, %for.cond72.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %for.cond72.i ], [ 2, %for.cond72.preheader.i ]
  %dim.26.i = phi i32 [ %inc93.i, %for.cond72.i ], [ 2, %for.cond72.preheader.i ]
  %arrayidx79.i = getelementptr inbounds i32* %8, i64 %indvars.iv26.i, !dbg !382
  %48 = load i32* %arrayidx79.i, align 4, !dbg !382, !tbaa !280
  %inc80.i = add nsw i32 %48, 1, !dbg !382
  store i32 %inc80.i, i32* %arrayidx79.i, align 4, !dbg !382, !tbaa !280
  %arrayidx82.i = getelementptr inbounds i32* %10, i64 %indvars.iv26.i, !dbg !384
  %49 = load i32* %arrayidx82.i, align 4, !dbg !384, !tbaa !280
  %inc83.i = add nsw i32 %49, 1, !dbg !384
  store i32 %inc83.i, i32* %arrayidx82.i, align 4, !dbg !384, !tbaa !280
  %arrayidx87.i = getelementptr inbounds i32* %27, i64 %indvars.iv26.i, !dbg !385
  %50 = load i32* %arrayidx87.i, align 4, !dbg !385, !tbaa !280
  %cmp88.i = icmp slt i32 %inc80.i, %50, !dbg !385
  %indvars.iv.next27.i = add i64 %indvars.iv26.i, 1, !dbg !379
  %inc93.i = add nsw i32 %dim.26.i, 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %inc93.i}, i64 0, metadata !368) #5, !dbg !379
  %.pre.i = load i32* %dim61.i, align 4, !dbg !386, !tbaa !280
  br i1 %cmp88.i, label %for.end94.i, label %for.cond72.i, !dbg !385

for.end94.i:                                      ; preds = %for.body77.i, %for.cond72.i, %for.cond72.preheader.i
  %51 = phi i32 [ %44, %for.cond72.preheader.i ], [ %.pre.i, %for.cond72.i ], [ %.pre.i, %for.body77.i ]
  %dim.2.lcssa.i = phi i32 [ 2, %for.cond72.preheader.i ], [ %inc93.i, %for.cond72.i ], [ %dim.26.i, %for.body77.i ]
  %cmp97.i = icmp slt i32 %dim.2.lcssa.i, %51, !dbg !386
  br i1 %cmp97.i, label %for.cond101.preheader.i, label %for.inc181.i, !dbg !386

for.cond101.preheader.i:                          ; preds = %for.end94.i
  %dim.37.i = add i32 %dim.2.lcssa.i, -1, !dbg !387
  %cmp1028.i = icmp sgt i32 %dim.37.i, 0, !dbg !387
  br i1 %cmp1028.i, label %for.body104.lr.ph.i, label %if.end116.i, !dbg !387

for.body104.lr.ph.i:                              ; preds = %for.cond101.preheader.i
  %52 = sext i32 %dim.37.i to i64
  br label %for.body104.i, !dbg !387

for.body104.i:                                    ; preds = %for.body104.i, %for.body104.lr.ph.i
  %indvars.iv28.i = phi i64 [ %52, %for.body104.lr.ph.i ], [ %indvars.iv.next29.i, %for.body104.i ]
  %dim.39.i = phi i32 [ %dim.37.i, %for.body104.lr.ph.i ], [ %dim.3.i, %for.body104.i ]
  %arrayidx106.i = getelementptr inbounds i32* %25, i64 %indvars.iv28.i, !dbg !389
  %53 = load i32* %arrayidx106.i, align 4, !dbg !389, !tbaa !280
  %arrayidx108.i = getelementptr inbounds i32* %8, i64 %indvars.iv28.i, !dbg !389
  store i32 %53, i32* %arrayidx108.i, align 4, !dbg !389, !tbaa !280
  %arrayidx110.i = getelementptr inbounds i32* %istart_to.0.i, i64 %indvars.iv28.i, !dbg !391
  %54 = load i32* %arrayidx110.i, align 4, !dbg !391, !tbaa !280
  %arrayidx112.i = getelementptr inbounds i32* %10, i64 %indvars.iv28.i, !dbg !391
  store i32 %54, i32* %arrayidx112.i, align 4, !dbg !391, !tbaa !280
  %dim.3.i = add nsw i32 %dim.39.i, -1, !dbg !387
  %cmp102.i = icmp sgt i32 %dim.3.i, 0, !dbg !387
  %indvars.iv.next29.i = add i64 %indvars.iv28.i, -1, !dbg !387
  br i1 %cmp102.i, label %for.body104.i, label %if.end116.i, !dbg !387

if.end116.i:                                      ; preds = %for.body104.i, %for.cond101.preheader.i, %land.lhs.true.i, %while.body.i
  %55 = load i32* %25, align 4, !dbg !392, !tbaa !280
  tail call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !393) #5, !dbg !392
  %56 = load i32* %istart_to.0.i, align 4, !dbg !394, !tbaa !280
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !395) #5, !dbg !394
  tail call void @llvm.dbg.value(metadata !305, i64 0, metadata !396) #5, !dbg !397
  %dim12110.i = getelementptr inbounds %struct.PGExtras* %42, i64 0, i32 0, !dbg !397
  %57 = load i32* %dim12110.i, align 4, !dbg !397, !tbaa !280
  %cmp12211.i = icmp sgt i32 %57, 1, !dbg !397
  br i1 %cmp12211.i, label %for.body124.lr.ph.i, label %for.end142.i, !dbg !397

for.body124.lr.ph.i:                              ; preds = %if.end116.i
  %hyper_volume.phi.trans.insert.i = getelementptr inbounds %struct.PGExtras* %42, i64 0, i32 11
  %.pre40.i = load i32** %hyper_volume.phi.trans.insert.i, align 8, !dbg !399, !tbaa !290
  br label %for.body124.i, !dbg !397

for.body124.i:                                    ; preds = %for.body124.i, %for.body124.lr.ph.i
  %indvars.iv31.i = phi i64 [ 1, %for.body124.lr.ph.i ], [ %indvars.iv.next32.i, %for.body124.i ]
  %offset_from.013.i = phi i32 [ %55, %for.body124.lr.ph.i ], [ %add131.i, %for.body124.i ]
  %offset_to.012.i = phi i32 [ %56, %for.body124.lr.ph.i ], [ %add139.i, %for.body124.i ]
  %arrayidx126.i = getelementptr inbounds i32* %8, i64 %indvars.iv31.i, !dbg !399
  %58 = load i32* %arrayidx126.i, align 4, !dbg !399, !tbaa !280
  %arrayidx129.i = getelementptr inbounds i32* %.pre40.i, i64 %indvars.iv31.i, !dbg !399
  %59 = load i32* %arrayidx129.i, align 4, !dbg !399, !tbaa !280
  %mul130.i = mul nsw i32 %59, %58, !dbg !399
  %add131.i = add nsw i32 %mul130.i, %offset_from.013.i, !dbg !399
  tail call void @llvm.dbg.value(metadata !{i32 %add131.i}, i64 0, metadata !393) #5, !dbg !399
  %arrayidx133.i = getelementptr inbounds i32* %10, i64 %indvars.iv31.i, !dbg !401
  %60 = load i32* %arrayidx133.i, align 4, !dbg !401, !tbaa !280
  %mul138.i = mul nsw i32 %60, %59, !dbg !401
  %add139.i = add nsw i32 %mul138.i, %offset_to.012.i, !dbg !401
  tail call void @llvm.dbg.value(metadata !{i32 %add139.i}, i64 0, metadata !395) #5, !dbg !401
  %indvars.iv.next32.i = add i64 %indvars.iv31.i, 1, !dbg !397
  %lftr.wideiv = trunc i64 %indvars.iv.next32.i to i32, !dbg !397
  %exitcond = icmp eq i32 %lftr.wideiv, %57, !dbg !397
  br i1 %exitcond, label %for.end142.i, label %for.body124.i, !dbg !397

for.end142.i:                                     ; preds = %for.body124.i, %if.end116.i
  %offset_from.0.lcssa.i = phi i32 [ %55, %if.end116.i ], [ %add131.i, %for.body124.i ]
  %offset_to.0.lcssa.i = phi i32 [ %56, %if.end116.i ], [ %add139.i, %for.body124.i ]
  %61 = load i32* %13, align 4, !dbg !402, !tbaa !280
  %62 = load i32* %n_vars.i, align 4, !dbg !355, !tbaa !280
  %cmp15118.i = icmp sgt i32 %62, 0, !dbg !355
  br i1 %cmp15118.i, label %for.body153.lr.ph.i, label %for.end166.i, !dbg !355

for.body153.lr.ph.i:                              ; preds = %for.end142.i
  %63 = load i32* %first_var.i, align 4, !dbg !355, !tbaa !280
  %mul146.i = mul nsw i32 %61, %offset_to.0.lcssa.i, !dbg !403
  %mul144.i = mul nsw i32 %61, %offset_from.0.lcssa.i, !dbg !402
  %idx.ext.i = sext i32 %mul146.i to i64, !dbg !376
  %idx.ext161.i = sext i32 %mul144.i to i64, !dbg !376
  %64 = sext i32 %63 to i64
  br label %for.body153.i, !dbg !355

for.body153.i:                                    ; preds = %for.body153.i, %for.body153.lr.ph.i
  %indvars.iv33.i = phi i64 [ %64, %for.body153.lr.ph.i ], [ %indvars.iv.next34.i, %for.body153.i ]
  %65 = load i32* %sync_timelevel.i, align 4, !dbg !404, !tbaa !280
  %idxprom155.i = sext i32 %65 to i64, !dbg !404
  %66 = load i8**** %variables.i, align 8, !dbg !404, !tbaa !290
  %arrayidx158.i = getelementptr inbounds i8*** %66, i64 %indvars.iv33.i, !dbg !404
  %67 = load i8*** %arrayidx158.i, align 8, !dbg !404, !tbaa !290
  %arrayidx159.i = getelementptr inbounds i8** %67, i64 %idxprom155.i, !dbg !404
  %68 = load i8** %arrayidx159.i, align 8, !dbg !404, !tbaa !290
  %data160.i = getelementptr inbounds i8* %68, i64 24, !dbg !404
  %69 = bitcast i8* %data160.i to i8**, !dbg !404
  %70 = load i8** %69, align 8, !dbg !404, !tbaa !290
  tail call void @llvm.dbg.value(metadata !{i8* %70}, i64 0, metadata !405) #5, !dbg !404
  %add.ptr.i = getelementptr inbounds i8* %70, i64 %idx.ext.i, !dbg !376
  %add.ptr162.i = getelementptr inbounds i8* %70, i64 %idx.ext161.i, !dbg !376
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr.i, i8* %add.ptr162.i, i64 %conv163.i, i32 1, i1 false) #5, !dbg !376
  %indvars.iv.next34.i = add i64 %indvars.iv33.i, 1, !dbg !355
  %71 = load i32* %first_var.i, align 4, !dbg !355, !tbaa !280
  %72 = load i32* %n_vars.i, align 4, !dbg !355, !tbaa !280
  %add150.i = add nsw i32 %72, %71, !dbg !355
  %73 = trunc i64 %indvars.iv.next34.i to i32, !dbg !355
  %cmp151.i = icmp slt i32 %73, %add150.i, !dbg !355
  br i1 %cmp151.i, label %for.body153.i, label %for.cond148.for.end166_crit_edge.i, !dbg !355

for.cond148.for.end166_crit_edge.i:               ; preds = %for.body153.i
  %.pre39.i = load %struct.PGExtras** %6, align 8, !dbg !406, !tbaa !290
  %dim168.phi.trans.insert.i = getelementptr inbounds %struct.PGExtras* %.pre39.i, i64 0, i32 0
  %.pre42.i = load i32* %dim168.phi.trans.insert.i, align 4, !dbg !406, !tbaa !280
  br label %for.end166.i, !dbg !355

for.end166.i:                                     ; preds = %for.cond148.for.end166_crit_edge.i, %for.end142.i
  %74 = phi i32 [ %.pre42.i, %for.cond148.for.end166_crit_edge.i ], [ %57, %for.end142.i ]
  %75 = phi %struct.PGExtras* [ %.pre39.i, %for.cond148.for.end166_crit_edge.i ], [ %41, %for.end142.i ]
  %76 = phi %struct.PGExtras* [ %.pre39.i, %for.cond148.for.end166_crit_edge.i ], [ %42, %for.end142.i ], !dbg !406
  %cmp169.i = icmp sgt i32 %74, 1, !dbg !406
  br i1 %cmp169.i, label %if.then171.i, label %for.inc181.i, !dbg !406

if.then171.i:                                     ; preds = %for.end166.i
  %77 = load i32* %arrayidx65.i, align 4, !dbg !407, !tbaa !280
  %inc174.i = add nsw i32 %77, 1, !dbg !407
  store i32 %inc174.i, i32* %arrayidx65.i, align 4, !dbg !407, !tbaa !280
  %78 = load i32* %14, align 4, !dbg !357, !tbaa !280
  %inc177.i = add nsw i32 %78, 1, !dbg !357
  store i32 %inc177.i, i32* %14, align 4, !dbg !357, !tbaa !280
  br label %while.body.i, !dbg !408

for.inc181.i:                                     ; preds = %for.end166.i, %for.end94.i, %for.body.i
  %79 = phi i32 [ %17, %for.body.i ], [ %74, %for.end166.i ], [ %51, %for.end94.i ], !dbg !346
  %80 = phi %struct.PGExtras* [ %15, %for.body.i ], [ %75, %for.end166.i ], [ %41, %for.end94.i ]
  %81 = phi %struct.PGExtras* [ %16, %for.body.i ], [ %76, %for.end166.i ], [ %42, %for.end94.i ]
  %82 = phi %struct.PGExtras* [ %18, %for.body.i ], [ %76, %for.end166.i ], [ %43, %for.end94.i ], !dbg !346
  %indvars.iv.next36.i = add i64 %indvars.iv35.i, 1, !dbg !346
  %mul7.i = shl nsw i32 %79, 1, !dbg !346
  %83 = trunc i64 %indvars.iv.next36.i to i32, !dbg !346
  %cmp.i = icmp slt i32 %83, %mul7.i, !dbg !346
  br i1 %cmp.i, label %for.body.i, label %PUGH_SyncSingleProc.exit, !dbg !346

PUGH_SyncSingleProc.exit:                         ; preds = %for.inc181.i, %if.then
  tail call void @free(i8* %call.i) #6, !dbg !409
  br label %return, !dbg !339

return:                                           ; preds = %entry, %PUGH_SyncSingleProc.exit
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_Barrier(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !207), !dbg !410
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !207), !dbg !411
  ret i32 0, !dbg !412
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !265, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !70, metadata !77, metadata !153, metadata !193, metadata !198, metadata !201, metadata !208, metadata !215, metadata !221, metadata !238, metadata !242, metadata !250, metadata !258}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_Comm_c", metadata !"CCTKi_version_CactusPUGH_PUGH_Comm_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_Comm_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_CactusPUGH_PUGH_Comm_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SyncGroup", metadata !"PUGH_SyncGroup", metadata !"", i32 75, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_SyncGroup, null, null, metadata !52, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [PUGH_SyncGroup]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !18, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !68, metadata !69}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777291, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 75]
!54 = metadata !{i32 786689, metadata !11, metadata !"groupname", metadata !5, i32 33554507, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 75]
!55 = metadata !{i32 786688, metadata !11, metadata !"pgroup", metadata !5, i32 77, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 77]
!56 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!62 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!63 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!64 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!65 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!66 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!67 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!68 = metadata !{i32 786688, metadata !11, metadata !"group", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 78]
!69 = metadata !{i32 786688, metadata !11, metadata !"rc", metadata !5, i32 79, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 79]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGroupComm", metadata !"PUGH_EnableGroupComm", metadata !"", i32 142, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_EnableGroupComm, null, null, metadata !71, i32 143} ; [ DW_TAG_subprogram ] [line 142] [def] [scope 143] [PUGH_EnableGroupComm]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!72 = metadata !{i32 786689, metadata !70, metadata !"GH", metadata !5, i32 16777358, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 142]
!73 = metadata !{i32 786689, metadata !70, metadata !"groupname", metadata !5, i32 33554574, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 142]
!74 = metadata !{i32 786688, metadata !70, metadata !"group", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 144]
!75 = metadata !{i32 786688, metadata !70, metadata !"pgroup", metadata !5, i32 145, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 145]
!76 = metadata !{i32 786688, metadata !70, metadata !"rc", metadata !5, i32 146, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 146]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableGroupComm", metadata !"PUGH_DisableGroupComm", metadata !"", i32 200, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @PUGH_DisableGroupComm, null, null, metadata !78, i32 201} ; [ DW_TAG_subprogram ] [line 200] [def] [scope 201] [PUGH_DisableGroupComm]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !152}
!79 = metadata !{i32 786689, metadata !77, metadata !"GH", metadata !5, i32 16777416, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 200]
!80 = metadata !{i32 786689, metadata !77, metadata !"groupname", metadata !5, i32 33554632, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 200]
!81 = metadata !{i32 786688, metadata !77, metadata !"group", metadata !5, i32 202, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 202]
!82 = metadata !{i32 786688, metadata !77, metadata !"pgroup", metadata !5, i32 203, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 203]
!83 = metadata !{i32 786688, metadata !77, metadata !"rc", metadata !5, i32 204, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 204]
!84 = metadata !{i32 786688, metadata !77, metadata !"pughGH", metadata !5, i32 206, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 206]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!86 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!87 = metadata !{i32 786451, metadata !88, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !89, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!88 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !140, metadata !150}
!90 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!91 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!92 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!93 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!94 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!95 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!96 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!97 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!98 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!99 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!100 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!101 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!102 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!103 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!104 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!105 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!106 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!107 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!108 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!109 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!110 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!111 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !112} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!114 = metadata !{i32 786454, metadata !88, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !137, metadata !139}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !122} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !122} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!124 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!125 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!126 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!127 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!128 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !122} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!129 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!130 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!131 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!132 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !133} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!133 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !23, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!134 = metadata !{metadata !135, metadata !136}
!135 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!136 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!137 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !138} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !122, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!139 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !138} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!140 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !141} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!143 = metadata !{i32 786454, metadata !88, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!144 = metadata !{i32 786451, metadata !116, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149}
!146 = metadata !{i32 786445, metadata !116, metadata !144, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!147 = metadata !{i32 786445, metadata !116, metadata !144, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!148 = metadata !{i32 786445, metadata !116, metadata !144, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !122} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!149 = metadata !{i32 786445, metadata !116, metadata !144, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786445, metadata !88, metadata !87, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !151} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!152 = metadata !{i32 786688, metadata !77, metadata !"var", metadata !5, i32 207, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 207]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGArrayComm", metadata !"PUGH_EnableGArrayComm", metadata !"", i32 250, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGA*, i32)* @PUGH_EnableGArrayComm, null, null, metadata !190, i32 252} ; [ DW_TAG_subprogram ] [line 250] [def] [scope 252] [PUGH_EnableGArrayComm]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !14, metadata !156, metadata !14}
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!157 = metadata !{i32 786454, metadata !116, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!158 = metadata !{i32 786451, metadata !116, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !159, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !185, metadata !186, metadata !187, metadata !188}
!160 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!161 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!162 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!163 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!164 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!165 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!166 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!167 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !43} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!168 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!169 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!170 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !113} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!171 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !142} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!172 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !173} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!174 = metadata !{i32 786454, metadata !116, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!175 = metadata !{i32 786451, metadata !116, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !176, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!177 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!178 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!179 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!180 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!181 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!182 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!183 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!184 = metadata !{i32 786445, metadata !116, metadata !175, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!185 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !173} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!186 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!187 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!188 = metadata !{i32 786445, metadata !116, metadata !158, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !189} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786689, metadata !153, metadata !"GA", metadata !5, i32 16777466, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 250]
!192 = metadata !{i32 786689, metadata !153, metadata !"commflag", metadata !5, i32 33554683, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [commflag] [line 251]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableGArrayComm", metadata !"PUGH_DisableGArrayComm", metadata !"", i32 274, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGA*)* @PUGH_DisableGArrayComm, null, null, metadata !196, i32 275} ; [ DW_TAG_subprogram ] [line 274] [def] [scope 275] [PUGH_DisableGArrayComm]
!194 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!195 = metadata !{metadata !14, metadata !156}
!196 = metadata !{metadata !197}
!197 = metadata !{i32 786689, metadata !193, metadata !"GA", metadata !5, i32 16777490, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 274]
!198 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SyncGArray", metadata !"PUGH_SyncGArray", metadata !"", i32 325, metadata !194, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGA*)* @PUGH_SyncGArray, null, null, metadata !199, i32 326} ; [ DW_TAG_subprogram ] [line 325] [def] [scope 326] [PUGH_SyncGArray]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786689, metadata !198, metadata !"GA", metadata !5, i32 16777541, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 325]
!201 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Barrier", metadata !"PUGH_Barrier", metadata !"", i32 337, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_Barrier, null, null, metadata !206, i32 338} ; [ DW_TAG_subprogram ] [line 337] [def] [scope 338] [PUGH_Barrier]
!202 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{metadata !14, metadata !204}
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!205 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786689, metadata !201, metadata !"GH", metadata !5, i32 16777553, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 337]
!208 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableGArrayGroupComm", metadata !"PUGH_DisableGArrayGroupComm", metadata !"", i32 394, metadata !209, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGH*, i32, %struct.PComm*)* @PUGH_DisableGArrayGroupComm, null, null, metadata !211, i32 397} ; [ DW_TAG_subprogram ] [line 394] [def] [scope 397] [PUGH_DisableGArrayGroupComm]
!209 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!210 = metadata !{metadata !14, metadata !85, metadata !14, metadata !173}
!211 = metadata !{metadata !212, metadata !213, metadata !214}
!212 = metadata !{i32 786689, metadata !208, metadata !"pughGH", metadata !5, i32 16777610, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 394]
!213 = metadata !{i32 786689, metadata !208, metadata !"first_var", metadata !5, i32 33554827, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 395]
!214 = metadata !{i32 786689, metadata !208, metadata !"groupcomm", metadata !5, i32 50332044, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupcomm] [line 396]
!215 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Sync", metadata !"PUGH_Sync", metadata !"", i32 675, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PGH*, %struct.PComm*)* @PUGH_Sync, null, null, metadata !218, i32 677} ; [ DW_TAG_subprogram ] [line 675] [local] [def] [scope 677] [PUGH_Sync]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{metadata !14, metadata !85, metadata !173}
!218 = metadata !{metadata !219, metadata !220}
!219 = metadata !{i32 786689, metadata !215, metadata !"pughGH", metadata !5, i32 16777891, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 675]
!220 = metadata !{i32 786689, metadata !215, metadata !"comm", metadata !5, i32 33555108, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 676]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SyncSingleProc", metadata !"PUGH_SyncSingleProc", metadata !"", i32 843, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !222, i32 845} ; [ DW_TAG_subprogram ] [line 843] [local] [def] [scope 845] [PUGH_SyncSingleProc]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!223 = metadata !{i32 786689, metadata !221, metadata !"pughGH", metadata !5, i32 16778059, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 843]
!224 = metadata !{i32 786689, metadata !221, metadata !"comm", metadata !5, i32 33555276, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 844]
!225 = metadata !{i32 786688, metadata !221, metadata !"GA", metadata !5, i32 846, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 846]
!226 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 847]
!227 = metadata !{i32 786688, metadata !221, metadata !"face", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [face] [line 847]
!228 = metadata !{i32 786688, metadata !221, metadata !"dim", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 847]
!229 = metadata !{i32 786688, metadata !221, metadata !"copy_bytes", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [copy_bytes] [line 847]
!230 = metadata !{i32 786688, metadata !221, metadata !"offset_from", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset_from] [line 847]
!231 = metadata !{i32 786688, metadata !221, metadata !"offset_to", metadata !5, i32 847, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset_to] [line 847]
!232 = metadata !{i32 786688, metadata !221, metadata !"data", metadata !5, i32 848, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 848]
!233 = metadata !{i32 786688, metadata !221, metadata !"istart_from", metadata !5, i32 849, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istart_from] [line 849]
!234 = metadata !{i32 786688, metadata !221, metadata !"iend_from", metadata !5, i32 849, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iend_from] [line 849]
!235 = metadata !{i32 786688, metadata !221, metadata !"iterator_from", metadata !5, i32 849, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterator_from] [line 849]
!236 = metadata !{i32 786688, metadata !221, metadata !"istart_to", metadata !5, i32 850, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [istart_to] [line 850]
!237 = metadata !{i32 786688, metadata !221, metadata !"iterator_to", metadata !5, i32 850, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterator_to] [line 850]
!238 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DisableComm", metadata !"PUGH_DisableComm", metadata !"", i32 603, metadata !216, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !239, i32 605} ; [ DW_TAG_subprogram ] [line 603] [local] [def] [scope 605] [PUGH_DisableComm]
!239 = metadata !{metadata !240, metadata !241}
!240 = metadata !{i32 786689, metadata !238, metadata !"pughGH", metadata !5, i32 16777819, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 603]
!241 = metadata !{i32 786689, metadata !238, metadata !"comm", metadata !5, i32 33555036, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 604]
!242 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableComm", metadata !"PUGH_EnableComm", metadata !"", i32 427, metadata !243, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !245, i32 430} ; [ DW_TAG_subprogram ] [line 427] [local] [def] [scope 430] [PUGH_EnableComm]
!243 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !14, metadata !85, metadata !173, metadata !14}
!245 = metadata !{metadata !246, metadata !247, metadata !248, metadata !249}
!246 = metadata !{i32 786689, metadata !242, metadata !"pughGH", metadata !5, i32 16777643, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 427]
!247 = metadata !{i32 786689, metadata !242, metadata !"comm", metadata !5, i32 33554860, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 428]
!248 = metadata !{i32 786689, metadata !242, metadata !"commflag", metadata !5, i32 50332077, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [commflag] [line 429]
!249 = metadata !{i32 786688, metadata !242, metadata !"retval", metadata !5, i32 431, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 431]
!250 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_EnableGArrayGroupComm", metadata !"PUGH_EnableGArrayGroupComm", metadata !"", i32 364, metadata !251, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !253, i32 367} ; [ DW_TAG_subprogram ] [line 364] [local] [def] [scope 367] [PUGH_EnableGArrayGroupComm]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{metadata !14, metadata !85, metadata !14, metadata !14}
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257}
!254 = metadata !{i32 786689, metadata !250, metadata !"pughGH", metadata !5, i32 16777580, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 364]
!255 = metadata !{i32 786689, metadata !250, metadata !"first_var", metadata !5, i32 33554797, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 365]
!256 = metadata !{i32 786689, metadata !250, metadata !"commflag", metadata !5, i32 50332014, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [commflag] [line 366]
!257 = metadata !{i32 786688, metadata !250, metadata !"GA", metadata !5, i32 368, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 368]
!258 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SyncGArrayGroup", metadata !"PUGH_SyncGArrayGroup", metadata !"", i32 297, metadata !259, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !261, i32 299} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 299] [PUGH_SyncGArrayGroup]
!259 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{metadata !14, metadata !85, metadata !14}
!261 = metadata !{metadata !262, metadata !263, metadata !264}
!262 = metadata !{i32 786689, metadata !258, metadata !"pughGH", metadata !5, i32 16777513, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 297]
!263 = metadata !{i32 786689, metadata !258, metadata !"first_var", metadata !5, i32 33554730, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var] [line 298]
!264 = metadata !{i32 786688, metadata !258, metadata !"firstGA", metadata !5, i32 300, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstGA] [line 300]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 28, metadata !8, i32 1, i32 1, null, null}
!267 = metadata !{i32 30, i32 0, metadata !4, null}
!268 = metadata !{i32 75, i32 0, metadata !11, null}
!269 = metadata !{i32 77, i32 0, metadata !11, null}
!270 = metadata !{i32 87, i32 0, metadata !11, null}
!271 = metadata !{i32 88, i32 0, metadata !11, null}
!272 = metadata !{i32 90, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !11, i32 89, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!274 = metadata !{i32 -1}
!275 = metadata !{i32 92, i32 0, metadata !273, null}
!276 = metadata !{i32 93, i32 0, metadata !273, null}
!277 = metadata !{i32 96, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !11, i32 95, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!279 = metadata !{i32 98, i32 0, metadata !278, null}
!280 = metadata !{metadata !"int", metadata !281}
!281 = metadata !{metadata !"omnipotent char", metadata !282}
!282 = metadata !{metadata !"Simple C/C++ TBAA"}
!283 = metadata !{i32 100, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !278, i32 99, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!285 = metadata !{i32 101, i32 0, metadata !284, null}
!286 = metadata !{i32 103, i32 0, metadata !284, null}
!287 = metadata !{i32 106, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !278, i32 105, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!289 = metadata !{i32 302, i32 0, metadata !258, metadata !287}
!290 = metadata !{metadata !"any pointer", metadata !281}
!291 = metadata !{i32 310, i32 0, metadata !258, metadata !287}
!292 = metadata !{i32 107, i32 0, metadata !288, null}
!293 = metadata !{i32 110, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !278, i32 109, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!295 = metadata !{i32 111, i32 0, metadata !294, null}
!296 = metadata !{i32 115, i32 0, metadata !11, null}
!297 = metadata !{i32 142, i32 0, metadata !70, null}
!298 = metadata !{i32 145, i32 0, metadata !70, null}
!299 = metadata !{i32 154, i32 0, metadata !70, null}
!300 = metadata !{i32 155, i32 0, metadata !70, null}
!301 = metadata !{i32 157, i32 0, metadata !70, null}
!302 = metadata !{i32 163, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !70, i32 162, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!304 = metadata !{i32 164, i32 0, metadata !303, null}
!305 = metadata !{i32 1}
!306 = metadata !{i32 166, i32 0, metadata !303, null}
!307 = metadata !{i32 169, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !70, i32 168, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!309 = metadata !{i32 170, i32 0, metadata !308, null}
!310 = metadata !{i32 173, i32 0, metadata !70, null}
!311 = metadata !{i32 200, i32 0, metadata !77, null}
!312 = metadata !{i32 203, i32 0, metadata !77, null}
!313 = metadata !{i32 215, i32 0, metadata !77, null}
!314 = metadata !{i32 216, i32 0, metadata !77, null}
!315 = metadata !{i32 218, i32 0, metadata !77, null}
!316 = metadata !{i32 224, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !77, i32 223, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!318 = metadata !{i32 225, i32 0, metadata !317, null}
!319 = metadata !{i32 228, i32 0, metadata !317, null}
!320 = metadata !{i32 229, i32 0, metadata !317, null}
!321 = metadata !{i32 232, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !77, i32 231, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!323 = metadata !{i32 233, i32 0, metadata !322, null}
!324 = metadata !{i32 236, i32 0, metadata !77, null}
!325 = metadata !{i32 394, i32 0, metadata !208, null}
!326 = metadata !{i32 395, i32 0, metadata !208, null}
!327 = metadata !{i32 396, i32 0, metadata !208, null}
!328 = metadata !{i32 408, i32 0, metadata !208, null}
!329 = metadata !{i32 410, i32 0, metadata !208, null}
!330 = metadata !{i32 250, i32 0, metadata !153, null}
!331 = metadata !{i32 251, i32 0, metadata !153, null}
!332 = metadata !{i32 260, i32 0, metadata !153, null}
!333 = metadata !{i32 274, i32 0, metadata !193, null}
!334 = metadata !{i32 282, i32 0, metadata !193, null}
!335 = metadata !{i32 325, i32 0, metadata !198, null}
!336 = metadata !{i32 333, i32 0, metadata !198, null}
!337 = metadata !{i32 693, i32 0, metadata !215, null}
!338 = metadata !{i32 853, i32 0, metadata !221, metadata !339}
!339 = metadata !{i32 695, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !215, i32 694, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!341 = metadata !{i32 856, i32 0, metadata !221, metadata !339}
!342 = metadata !{i32 786688, metadata !221, metadata !"iterator_from", metadata !5, i32 849, metadata !23, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [iterator_from] [line 849]
!343 = metadata !{i32 857, i32 0, metadata !221, metadata !339}
!344 = metadata !{i32 786688, metadata !221, metadata !"iterator_to", metadata !5, i32 850, metadata !23, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [iterator_to] [line 850]
!345 = metadata !{i32 786688, metadata !221, metadata !"face", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [face] [line 847]
!346 = metadata !{i32 860, i32 0, metadata !347, metadata !339}
!347 = metadata !{i32 786443, metadata !1, metadata !221, i32 860, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!348 = metadata !{i32 864, i32 0, metadata !349, metadata !339}
!349 = metadata !{i32 786443, metadata !1, metadata !347, i32 861, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!350 = metadata !{i32 867, i32 0, metadata !351, metadata !339}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 865, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!352 = metadata !{i32 886, i32 0, metadata !351, metadata !339}
!353 = metadata !{i32 893, i32 0, metadata !354, metadata !339}
!354 = metadata !{i32 786443, metadata !1, metadata !351, i32 891, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!355 = metadata !{i32 933, i32 0, metadata !356, metadata !339}
!356 = metadata !{i32 786443, metadata !1, metadata !354, i32 933, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!357 = metadata !{i32 944, i32 0, metadata !358, metadata !339}
!358 = metadata !{i32 786443, metadata !1, metadata !354, i32 941, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!359 = metadata !{i32 786688, metadata !221, metadata !"istart_from", metadata !5, i32 849, metadata !23, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [istart_from] [line 849]
!360 = metadata !{i32 868, i32 0, metadata !351, metadata !339}
!361 = metadata !{i32 786688, metadata !221, metadata !"iend_from", metadata !5, i32 849, metadata !23, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [iend_from] [line 849]
!362 = metadata !{i32 869, i32 0, metadata !351, metadata !339}
!363 = metadata !{i32 871, i32 0, metadata !364, metadata !339}
!364 = metadata !{i32 786443, metadata !1, metadata !351, i32 870, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!365 = metadata !{i32 872, i32 0, metadata !364, metadata !339}
!366 = metadata !{i32 875, i32 0, metadata !367, metadata !339}
!367 = metadata !{i32 786443, metadata !1, metadata !351, i32 874, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!368 = metadata !{i32 786688, metadata !221, metadata !"dim", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [dim] [line 847]
!369 = metadata !{i32 879, i32 0, metadata !370, metadata !339}
!370 = metadata !{i32 786443, metadata !1, metadata !351, i32 879, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!371 = metadata !{i32 881, i32 0, metadata !372, metadata !339}
!372 = metadata !{i32 786443, metadata !1, metadata !370, i32 880, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!373 = metadata !{i32 882, i32 0, metadata !372, metadata !339}
!374 = metadata !{i32 786688, metadata !221, metadata !"copy_bytes", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [copy_bytes] [line 847]
!375 = metadata !{i32 889, i32 0, metadata !351, metadata !339}
!376 = metadata !{i32 936, i32 0, metadata !377, metadata !339}
!377 = metadata !{i32 786443, metadata !1, metadata !356, i32 934, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!378 = metadata !{i32 890, i32 0, metadata !351, metadata !339}
!379 = metadata !{i32 896, i32 0, metadata !380, metadata !339}
!380 = metadata !{i32 786443, metadata !1, metadata !381, i32 896, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!381 = metadata !{i32 786443, metadata !1, metadata !354, i32 894, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!382 = metadata !{i32 898, i32 0, metadata !383, metadata !339}
!383 = metadata !{i32 786443, metadata !1, metadata !380, i32 897, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!384 = metadata !{i32 899, i32 0, metadata !383, metadata !339}
!385 = metadata !{i32 900, i32 0, metadata !383, metadata !339}
!386 = metadata !{i32 907, i32 0, metadata !381, metadata !339}
!387 = metadata !{i32 913, i32 0, metadata !388, metadata !339}
!388 = metadata !{i32 786443, metadata !1, metadata !381, i32 913, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!389 = metadata !{i32 915, i32 0, metadata !390, metadata !339}
!390 = metadata !{i32 786443, metadata !1, metadata !388, i32 914, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!391 = metadata !{i32 916, i32 0, metadata !390, metadata !339}
!392 = metadata !{i32 922, i32 0, metadata !354, metadata !339}
!393 = metadata !{i32 786688, metadata !221, metadata !"offset_from", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [offset_from] [line 847]
!394 = metadata !{i32 923, i32 0, metadata !354, metadata !339}
!395 = metadata !{i32 786688, metadata !221, metadata !"offset_to", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [offset_to] [line 847]
!396 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !5, i32 847, metadata !14, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [i] [line 847]
!397 = metadata !{i32 924, i32 0, metadata !398, metadata !339}
!398 = metadata !{i32 786443, metadata !1, metadata !354, i32 924, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!399 = metadata !{i32 926, i32 0, metadata !400, metadata !339}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 925, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c]
!401 = metadata !{i32 927, i32 0, metadata !400, metadata !339}
!402 = metadata !{i32 929, i32 0, metadata !354, metadata !339}
!403 = metadata !{i32 930, i32 0, metadata !354, metadata !339}
!404 = metadata !{i32 935, i32 0, metadata !377, metadata !339}
!405 = metadata !{i32 786688, metadata !221, metadata !"data", metadata !5, i32 848, metadata !151, i32 0, metadata !339} ; [ DW_TAG_auto_variable ] [data] [line 848]
!406 = metadata !{i32 940, i32 0, metadata !354, metadata !339}
!407 = metadata !{i32 943, i32 0, metadata !358, metadata !339}
!408 = metadata !{i32 952, i32 0, metadata !354, metadata !339}
!409 = metadata !{i32 957, i32 0, metadata !221, metadata !339}
!410 = metadata !{i32 337, i32 0, metadata !201, null}
!411 = metadata !{i32 342, i32 0, metadata !201, null}
!412 = metadata !{i32 345, i32 0, metadata !201, null}
