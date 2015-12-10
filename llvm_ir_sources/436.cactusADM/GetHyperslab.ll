; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hslab_mapping_t = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, void (i8*, i8*, i32, i32, i32)*, %struct.hslab_mapping_t*, %struct.hslab_mapping_t*, %struct.cGroup }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [54 x i8] c"NULL pointer(s) passed for GH/mapping/hdata arguments\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"Invalid variable index given\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"Invalid timelevel given\00", align 1
@.str3 = private unnamed_addr constant [75 x i8] c"Group data for template variable in mapping and given variable don't match\00", align 1
@.str4 = private unnamed_addr constant [71 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str6 = private unnamed_addr constant [22 x i8] c"GetLocalHyperslab: %s\00", align 1
@.str7 = private unnamed_addr constant [67 x i8] c"No predefined PUGHSlab routine available to convert '%s' into '%s'\00", align 1
@.str8 = private unnamed_addr constant [106 x i8] c"Datatype conversion routine supplied but no datatype conversion requested. Ignoring conversion routine...\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@.str9 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/GetHyperslab.c,v 1.3 2001/12/16 21:43:05 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c() #0 {
entry:
  ret i8* getelementptr inbounds ([95 x i8]* @.str9, i64 0, i64 0), !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %mapping_handle, i32 %vindex, i32 %timelevel, i32 %hdatatype, i8* %hdata) #1 {
entry:
  %vinfo.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !288
  call void @llvm.dbg.value(metadata !{i32 %mapping_handle}, i64 0, metadata !55), !dbg !289
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !56), !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %timelevel}, i64 0, metadata !57), !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %hdatatype}, i64 0, metadata !58), !dbg !292
  call void @llvm.dbg.value(metadata !{i8* %hdata}, i64 0, metadata !59), !dbg !293
  %call = call %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32 %mapping_handle) #6, !dbg !294
  call void @llvm.dbg.value(metadata !{%struct.hslab_mapping_t* %call}, i64 0, metadata !61), !dbg !294
  %cmp = icmp eq %struct.hslab_mapping_t* %call, null, !dbg !295
  br i1 %cmp, label %return, label %if.end, !dbg !295

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.cGroup* %vinfo.i to i8*, !dbg !296
  call void @llvm.lifetime.start(i64 32, i8* %0) #5, !dbg !296
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !298) #5, !dbg !296
  call void @llvm.dbg.value(metadata !{%struct.hslab_mapping_t* %call}, i64 0, metadata !299) #5, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !301) #5, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %timelevel}, i64 0, metadata !303) #5, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %hdatatype}, i64 0, metadata !305) #5, !dbg !306
  call void @llvm.dbg.value(metadata !{i8* %hdata}, i64 0, metadata !307) #5, !dbg !308
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo.i}, metadata !153) #5, !dbg !309
  call void @llvm.dbg.value(metadata !310, i64 0, metadata !311) #5, !dbg !312
  %tobool.i = icmp eq %struct.cGH* %GH, null, !dbg !313
  br i1 %tobool.i, label %if.then34.i, label %lor.lhs.false3.i, !dbg !313

lor.lhs.false3.i:                                 ; preds = %if.end
  %totals.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 13, !dbg !313
  %1 = load i32* %totals.i, align 4, !dbg !313, !tbaa !314
  %cmp.i = icmp ne i32 %1, 0, !dbg !313
  %tobool4.i = icmp eq i8* %hdata, null, !dbg !313
  %or.cond413.i = and i1 %cmp.i, %tobool4.i, !dbg !313
  br i1 %or.cond413.i, label %if.then34.i, label %if.else.i, !dbg !313

if.else.i:                                        ; preds = %lor.lhs.false3.i
  %call.i = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6, !dbg !317
  %call5.i = call i32 @CCTK_GroupData(i32 %call.i, %struct.cGroup* %vinfo.i) #6, !dbg !317
  %cmp6.i = icmp slt i32 %call5.i, 0, !dbg !317
  br i1 %cmp6.i, label %if.then34.i, label %if.else8.i, !dbg !317

if.else8.i:                                       ; preds = %if.else.i
  %cmp9.i = icmp slt i32 %timelevel, 0, !dbg !318
  br i1 %cmp9.i, label %if.then34.i, label %lor.lhs.false10.i, !dbg !318

lor.lhs.false10.i:                                ; preds = %if.else8.i
  %numtimelevels.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 6, !dbg !318
  %2 = load i32* %numtimelevels.i, align 4, !dbg !318, !tbaa !314
  %cmp11.i = icmp sgt i32 %2, %timelevel, !dbg !318
  br i1 %cmp11.i, label %if.else13.i, label %if.then34.i, !dbg !318

if.else13.i:                                      ; preds = %lor.lhs.false10.i
  %grouptype.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 0, !dbg !319
  %3 = load i32* %grouptype.i, align 4, !dbg !319, !tbaa !314
  %grouptype15.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 19, i32 0, !dbg !319
  %4 = load i32* %grouptype15.i, align 4, !dbg !319, !tbaa !314
  %cmp16.i = icmp eq i32 %3, %4, !dbg !319
  br i1 %cmp16.i, label %lor.lhs.false17.i, label %if.then34.i, !dbg !319

lor.lhs.false17.i:                                ; preds = %if.else13.i
  %disttype.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 2, !dbg !319
  %5 = load i32* %disttype.i, align 4, !dbg !319, !tbaa !314
  %disttype19.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 19, i32 2, !dbg !319
  %6 = load i32* %disttype19.i, align 4, !dbg !319, !tbaa !314
  %cmp20.i = icmp eq i32 %5, %6, !dbg !319
  br i1 %cmp20.i, label %lor.lhs.false21.i, label %if.then34.i, !dbg !319

lor.lhs.false21.i:                                ; preds = %lor.lhs.false17.i
  %dim.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 4, !dbg !319
  %7 = load i32* %dim.i, align 4, !dbg !319, !tbaa !314
  %dim23.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 19, i32 4, !dbg !319
  %8 = load i32* %dim23.i, align 4, !dbg !319, !tbaa !314
  %cmp24.i = icmp eq i32 %7, %8, !dbg !319
  br i1 %cmp24.i, label %lor.lhs.false25.i, label %if.then34.i, !dbg !319

lor.lhs.false25.i:                                ; preds = %lor.lhs.false21.i
  %stagtype.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 3, !dbg !319
  %9 = load i32* %stagtype.i, align 4, !dbg !319, !tbaa !314
  %stagtype27.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 19, i32 3, !dbg !319
  %10 = load i32* %stagtype27.i, align 4, !dbg !319, !tbaa !314
  %cmp28.i = icmp eq i32 %9, %10, !dbg !319
  br i1 %cmp28.i, label %if.end36.i, label %if.then34.i, !dbg !319

if.then34.i:                                      ; preds = %lor.lhs.false25.i, %lor.lhs.false21.i, %lor.lhs.false17.i, %if.else13.i, %lor.lhs.false10.i, %if.else8.i, %if.else.i, %lor.lhs.false3.i, %if.end
  %errormsg.0.ph.i = phi i8* [ getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %lor.lhs.false3.i ], [ getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), %if.else.i ], [ getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), %lor.lhs.false10.i ], [ getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), %if.else8.i ], [ getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %lor.lhs.false25.i ], [ getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %lor.lhs.false21.i ], [ getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %lor.lhs.false17.i ], [ getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0), %if.else13.i ]
  %call35.i = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 262, i8* getelementptr inbounds ([71 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str6, i64 0, i64 0), i8* %errormsg.0.ph.i) #6, !dbg !320
  br label %return, !dbg !322

if.end36.i:                                       ; preds = %lor.lhs.false25.i
  %11 = load i32* %totals.i, align 4, !dbg !323, !tbaa !314
  %cmp38.i = icmp eq i32 %11, 0, !dbg !323
  br i1 %cmp38.i, label %return, label %if.end40.i, !dbg !323

if.end40.i:                                       ; preds = %if.end36.i
  %is_diagonal_in_3D.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 15, !dbg !324
  %12 = load i32* %is_diagonal_in_3D.i, align 4, !dbg !324, !tbaa !314
  %tobool41.i = icmp eq i32 %12, 0, !dbg !324
  br i1 %tobool41.i, label %if.end44.i, label %if.then42.i, !dbg !324

if.then42.i:                                      ; preds = %if.end40.i
  %call.i.i = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !325
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call.i.i}, i64 0, metadata !328) #5, !dbg !325
  %idxprom.i.i = sext i32 %timelevel to i64, !dbg !329
  %idxprom1.i.i = sext i32 %vindex to i64, !dbg !329
  %variables.i.i = getelementptr inbounds %struct.PGH* %call.i.i, i64 0, i32 7, !dbg !329
  %13 = load i8**** %variables.i.i, align 8, !dbg !329, !tbaa !330
  %arrayidx.i.i = getelementptr inbounds i8*** %13, i64 %idxprom1.i.i, !dbg !329
  %14 = load i8*** %arrayidx.i.i, align 8, !dbg !329, !tbaa !330
  %arrayidx2.i.i = getelementptr inbounds i8** %14, i64 %idxprom.i.i, !dbg !329
  %15 = load i8** %arrayidx2.i.i, align 8, !dbg !329, !tbaa !330
  %extras3.i.i = getelementptr inbounds i8* %15, i64 56, !dbg !329
  %16 = bitcast i8* %extras3.i.i to %struct.PGExtras**, !dbg !329
  %17 = load %struct.PGExtras** %16, align 8, !dbg !329, !tbaa !330
  call void @llvm.dbg.value(metadata !{%struct.PGExtras* %17}, i64 0, metadata !331) #5, !dbg !329
  %call4.i.i = call i32 @CCTK_VarTypeI(i32 %vindex) #6, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %call4.i.i}, i64 0, metadata !333) #5, !dbg !332
  %cmp.i.i = icmp slt i32 %hdatatype, 0, !dbg !334
  call void @llvm.dbg.value(metadata !{i32 %call4.i.i}, i64 0, metadata !335) #5, !dbg !336
  %call4.hdatatype.i.i = select i1 %cmp.i.i, i32 %call4.i.i, i32 %hdatatype, !dbg !334
  %call5.i.i = call i32 @CCTK_VarTypeSize(i32 %call4.hdatatype.i.i) #6, !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %call5.i.i}, i64 0, metadata !339) #5, !dbg !338
  %call6.i.i = call i32 @CCTK_VarTypeSize(i32 %call4.i.i) #6, !dbg !340
  call void @llvm.dbg.value(metadata !{i32 %call6.i.i}, i64 0, metadata !341) #5, !dbg !340
  %call7.i.i = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %timelevel, i32 %vindex) #6, !dbg !342
  call void @llvm.dbg.value(metadata !{i8* %call7.i.i}, i64 0, metadata !343) #5, !dbg !342
  %18 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !344, !tbaa !330
  %call8.i.i = call i32 %18(%struct.cGH* %GH) #6, !dbg !344
  call void @llvm.dbg.value(metadata !{i32 %call8.i.i}, i64 0, metadata !345) #5, !dbg !344
  %19 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !346, !tbaa !330
  %call9.i.i = call i32 %19(%struct.cGH* %GH) #6, !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %call9.i.i}, i64 0, metadata !347) #5, !dbg !346
  %cmp10.i.i = icmp eq i32 %call9.i.i, 1, !dbg !348
  %global_hsize33.phi.trans.insert.i.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 11
  %.pre10.i.i = load i32** %global_hsize33.phi.trans.insert.i.i, align 8, !dbg !349, !tbaa !330
  br i1 %cmp10.i.i, label %if.end14.i.i, label %if.else.i.i, !dbg !348

if.else.i.i:                                      ; preds = %if.then42.i
  %20 = load i32* %.pre10.i.i, align 4, !dbg !351, !tbaa !314
  %mul.i.i = mul nsw i32 %20, %call5.i.i, !dbg !351
  %conv.i.i = sext i32 %mul.i.i to i64, !dbg !351
  %call13.i.i = call noalias i8* @malloc(i64 %conv.i.i) #6, !dbg !351
  call void @llvm.dbg.value(metadata !{i8* %call13.i.i}, i64 0, metadata !353) #5, !dbg !351
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else.i.i, %if.then42.i
  %local_hdata.0.i.i = phi i8* [ %call13.i.i, %if.else.i.i ], [ %hdata, %if.then42.i ]
  %global_startpoint.i.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 7, !dbg !354
  %21 = load i32** %global_startpoint.i.i, align 8, !dbg !354, !tbaa !330
  %idxprom16.i.i = sext i32 %call8.i.i to i64, !dbg !354
  %lb.i.i = getelementptr inbounds %struct.PGExtras* %17, i64 0, i32 3, !dbg !354
  %22 = load i32*** %lb.i.i, align 8, !dbg !354, !tbaa !330
  %arrayidx17.i.i = getelementptr inbounds i32** %22, i64 %idxprom16.i.i, !dbg !354
  %23 = load i32** %arrayidx17.i.i, align 8, !dbg !354, !tbaa !330
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !355) #5, !dbg !356
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !357) #5, !dbg !349
  %24 = load i32* %.pre10.i.i, align 4, !dbg !349, !tbaa !314
  %cmp351.i.i = icmp sgt i32 %24, 0, !dbg !349
  br i1 %cmp351.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i, !dbg !349

for.body.lr.ph.i.i:                               ; preds = %if.end14.i.i
  %arrayidx31.i.i = getelementptr inbounds i32* %23, i64 2, !dbg !358
  %arrayidx27.i.i = getelementptr inbounds i32* %21, i64 2, !dbg !358
  %arrayidx24.i.i = getelementptr inbounds i32* %23, i64 1, !dbg !359
  %arrayidx20.i.i = getelementptr inbounds i32* %21, i64 1, !dbg !359
  %25 = load i32* %arrayidx31.i.i, align 4, !dbg !358, !tbaa !314
  %26 = load i32* %arrayidx27.i.i, align 4, !dbg !358, !tbaa !314
  %27 = load i32* %arrayidx24.i.i, align 4, !dbg !359, !tbaa !314
  %28 = load i32* %arrayidx20.i.i, align 4, !dbg !359, !tbaa !314
  %29 = load i32* %23, align 4, !dbg !354, !tbaa !314
  %30 = load i32* %21, align 4, !dbg !354, !tbaa !314
  %sub32.i.i = sub nsw i32 %26, %25, !dbg !358
  %sub25.i.i = sub nsw i32 %28, %27, !dbg !359
  %sub.i.i = sub nsw i32 %30, %29, !dbg !354
  %arrayidx38.i.i = getelementptr inbounds %struct.PGExtras* %17, i64 0, i32 13, i64 0, i64 0, !dbg !360
  %downsample.i.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 10, !dbg !362
  %arrayidx44.i.i = getelementptr inbounds %struct.PGExtras* %17, i64 0, i32 13, i64 0, i64 1, !dbg !360
  %hyper_volume.i.i = getelementptr inbounds %struct.PGExtras* %17, i64 0, i32 11, !dbg !363
  %cmp83.i.i = icmp eq i32 %call4.i.i, %call4.hdatatype.i.i, !dbg !365
  %conv91.i.i = sext i32 %call5.i.i to i64, !dbg !366
  %conversion_fn.i.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 16, !dbg !368
  br label %for.body.i.i, !dbg !349

for.body.i.i:                                     ; preds = %if.end95.for.body_crit_edge.i.i, %for.body.lr.ph.i.i
  %31 = phi i32 [ %24, %for.body.lr.ph.i.i ], [ %44, %if.end95.for.body_crit_edge.i.i ]
  %i.07.i.i = phi i32 [ %sub.i.i, %for.body.lr.ph.i.i ], [ %add97.i.i, %if.end95.for.body_crit_edge.i.i ]
  %local_hdata.16.i.i = phi i8* [ %local_hdata.0.i.i, %for.body.lr.ph.i.i ], [ %local_hdata.2.i.i, %if.end95.for.body_crit_edge.i.i ]
  %j.05.i.i = phi i32 [ %sub25.i.i, %for.body.lr.ph.i.i ], [ %add100.i.i, %if.end95.for.body_crit_edge.i.i ]
  %k.04.i.i = phi i32 [ %sub32.i.i, %for.body.lr.ph.i.i ], [ %add103.i.i, %if.end95.for.body_crit_edge.i.i ]
  %local_npoints.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %local_npoints.1.i.i, %if.end95.for.body_crit_edge.i.i ]
  %npoints.02.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %phitmp.i.i, %if.end95.for.body_crit_edge.i.i ]
  %32 = load i32** %arrayidx38.i.i, align 8, !dbg !360, !tbaa !330
  %33 = load i32* %32, align 4, !dbg !360, !tbaa !314
  %cmp40.i.i = icmp slt i32 %i.07.i.i, %33, !dbg !360
  br i1 %cmp40.i.i, label %if.end95.i.i, label %land.lhs.true.i.i, !dbg !360

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %34 = load i32** %arrayidx44.i.i, align 8, !dbg !360, !tbaa !330
  %35 = load i32* %34, align 4, !dbg !360, !tbaa !314
  %cmp46.i.i = icmp slt i32 %i.07.i.i, %35, !dbg !360
  br i1 %cmp46.i.i, label %land.lhs.true48.i.i, label %if.end95.i.i, !dbg !360

land.lhs.true48.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx52.i.i = getelementptr inbounds i32* %32, i64 1, !dbg !360
  %36 = load i32* %arrayidx52.i.i, align 4, !dbg !360, !tbaa !314
  %cmp53.i.i = icmp slt i32 %j.05.i.i, %36, !dbg !360
  br i1 %cmp53.i.i, label %if.end95.i.i, label %land.lhs.true55.i.i, !dbg !360

land.lhs.true55.i.i:                              ; preds = %land.lhs.true48.i.i
  %arrayidx59.i.i = getelementptr inbounds i32* %34, i64 1, !dbg !360
  %37 = load i32* %arrayidx59.i.i, align 4, !dbg !360, !tbaa !314
  %cmp60.i.i = icmp slt i32 %j.05.i.i, %37, !dbg !360
  br i1 %cmp60.i.i, label %land.lhs.true62.i.i, label %if.end95.i.i, !dbg !360

land.lhs.true62.i.i:                              ; preds = %land.lhs.true55.i.i
  %arrayidx66.i.i = getelementptr inbounds i32* %32, i64 2, !dbg !360
  %38 = load i32* %arrayidx66.i.i, align 4, !dbg !360, !tbaa !314
  %cmp67.i.i = icmp slt i32 %k.04.i.i, %38, !dbg !360
  br i1 %cmp67.i.i, label %if.end95.i.i, label %land.lhs.true69.i.i, !dbg !360

land.lhs.true69.i.i:                              ; preds = %land.lhs.true62.i.i
  %arrayidx73.i.i = getelementptr inbounds i32* %34, i64 2, !dbg !360
  %39 = load i32* %arrayidx73.i.i, align 4, !dbg !360, !tbaa !314
  %cmp74.i.i = icmp slt i32 %k.04.i.i, %39, !dbg !360
  br i1 %cmp74.i.i, label %if.then76.i.i, label %if.end95.i.i, !dbg !360

if.then76.i.i:                                    ; preds = %land.lhs.true69.i.i
  %40 = load i32** %hyper_volume.i.i, align 8, !dbg !363, !tbaa !330
  %arrayidx77.i.i = getelementptr inbounds i32* %40, i64 1, !dbg !363
  %41 = load i32* %arrayidx77.i.i, align 4, !dbg !363, !tbaa !314
  %mul78.i.i = mul nsw i32 %41, %j.05.i.i, !dbg !363
  %add.i.i = add nsw i32 %mul78.i.i, %i.07.i.i, !dbg !363
  %arrayidx80.i.i = getelementptr inbounds i32* %40, i64 2, !dbg !363
  %42 = load i32* %arrayidx80.i.i, align 4, !dbg !363, !tbaa !314
  %mul81.i.i = mul nsw i32 %42, %k.04.i.i, !dbg !363
  %add82.i.i = add nsw i32 %add.i.i, %mul81.i.i, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %add82.i.i}, i64 0, metadata !370) #5, !dbg !363
  br i1 %cmp83.i.i, label %if.else87.i.i, label %if.then85.i.i, !dbg !365

if.then85.i.i:                                    ; preds = %if.then76.i.i
  %43 = load void (i8*, i8*, i32, i32, i32)** %conversion_fn.i.i, align 8, !dbg !368, !tbaa !330
  %mul86.i.i = mul nsw i32 %add82.i.i, %call6.i.i, !dbg !368
  %idx.ext.i.i = sext i32 %mul86.i.i to i64, !dbg !368
  %add.ptr.i.i = getelementptr inbounds i8* %call7.i.i, i64 %idx.ext.i.i, !dbg !368
  call void %43(i8* %add.ptr.i.i, i8* %local_hdata.16.i.i, i32 1, i32 1, i32 1) #6, !dbg !368
  br label %if.end92.i.i, !dbg !371

if.else87.i.i:                                    ; preds = %if.then76.i.i
  %mul88.i.i = mul nsw i32 %add82.i.i, %call6.i.i, !dbg !366
  %idx.ext89.i.i = sext i32 %mul88.i.i to i64, !dbg !366
  %add.ptr90.i.i = getelementptr inbounds i8* %call7.i.i, i64 %idx.ext89.i.i, !dbg !366
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %local_hdata.16.i.i, i8* %add.ptr90.i.i, i64 %conv91.i.i, i32 1, i1 false) #5, !dbg !366
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.else87.i.i, %if.then85.i.i
  %add.ptr94.i.i = getelementptr inbounds i8* %local_hdata.16.i.i, i64 %conv91.i.i, !dbg !372
  call void @llvm.dbg.value(metadata !{i8* %add.ptr94.i.i}, i64 0, metadata !353) #5, !dbg !372
  %inc.i.i = add nsw i32 %local_npoints.03.i.i, 1, !dbg !373
  call void @llvm.dbg.value(metadata !{i32 %inc.i.i}, i64 0, metadata !355) #5, !dbg !373
  %.pre.i.i = load i32** %global_hsize33.phi.trans.insert.i.i, align 8, !dbg !349, !tbaa !330
  %.pre9.i.i = load i32* %.pre.i.i, align 4, !dbg !349, !tbaa !314
  br label %if.end95.i.i, !dbg !374

if.end95.i.i:                                     ; preds = %land.lhs.true69.i.i, %land.lhs.true62.i.i, %land.lhs.true55.i.i, %land.lhs.true48.i.i, %land.lhs.true.i.i, %for.body.i.i, %if.end92.i.i
  %44 = phi i32 [ %.pre9.i.i, %if.end92.i.i ], [ %31, %for.body.i.i ], [ %31, %land.lhs.true.i.i ], [ %31, %land.lhs.true48.i.i ], [ %31, %land.lhs.true55.i.i ], [ %31, %land.lhs.true62.i.i ], [ %31, %land.lhs.true69.i.i ], !dbg !362
  %local_npoints.1.i.i = phi i32 [ %inc.i.i, %if.end92.i.i ], [ %local_npoints.03.i.i, %for.body.i.i ], [ %local_npoints.03.i.i, %land.lhs.true.i.i ], [ %local_npoints.03.i.i, %land.lhs.true48.i.i ], [ %local_npoints.03.i.i, %land.lhs.true55.i.i ], [ %local_npoints.03.i.i, %land.lhs.true62.i.i ], [ %local_npoints.03.i.i, %land.lhs.true69.i.i ]
  %local_hdata.2.i.i = phi i8* [ %add.ptr94.i.i, %if.end92.i.i ], [ %local_hdata.16.i.i, %for.body.i.i ], [ %local_hdata.16.i.i, %land.lhs.true.i.i ], [ %local_hdata.16.i.i, %land.lhs.true48.i.i ], [ %local_hdata.16.i.i, %land.lhs.true55.i.i ], [ %local_hdata.16.i.i, %land.lhs.true62.i.i ], [ %local_hdata.16.i.i, %land.lhs.true69.i.i ]
  %45 = load i32** %downsample.i.i, align 8, !dbg !362, !tbaa !330
  call void @llvm.dbg.value(metadata !{i32 %npoints.02.i.i}, i64 0, metadata !357) #5, !dbg !349
  %cmp35.i.i = icmp slt i32 %npoints.02.i.i, %44, !dbg !349
  br i1 %cmp35.i.i, label %if.end95.for.body_crit_edge.i.i, label %for.end.i.i, !dbg !349

if.end95.for.body_crit_edge.i.i:                  ; preds = %if.end95.i.i
  %arrayidx102.i.i = getelementptr inbounds i32* %45, i64 2, !dbg !375
  %arrayidx99.i.i = getelementptr inbounds i32* %45, i64 1, !dbg !376
  %46 = load i32* %arrayidx102.i.i, align 4, !dbg !375, !tbaa !314
  %47 = load i32* %arrayidx99.i.i, align 4, !dbg !376, !tbaa !314
  %48 = load i32* %45, align 4, !dbg !362, !tbaa !314
  %add103.i.i = add nsw i32 %46, %k.04.i.i, !dbg !375
  %add100.i.i = add nsw i32 %47, %j.05.i.i, !dbg !376
  %add97.i.i = add nsw i32 %48, %i.07.i.i, !dbg !362
  %phitmp.i.i = add i32 %npoints.02.i.i, 1, !dbg !349
  br label %for.body.i.i, !dbg !349

for.end.i.i:                                      ; preds = %if.end95.i.i, %if.end14.i.i
  %local_hdata.1.lcssa.i.i = phi i8* [ %local_hdata.0.i.i, %if.end14.i.i ], [ %local_hdata.2.i.i, %if.end95.i.i ]
  %local_npoints.0.lcssa.i.i = phi i32 [ 0, %if.end14.i.i ], [ %local_npoints.1.i.i, %if.end95.i.i ]
  %cmp108.i.i = icmp sgt i32 %call9.i.i, 1, !dbg !377
  br i1 %cmp108.i.i, label %if.then110.i.i, label %return, !dbg !377

if.then110.i.i:                                   ; preds = %for.end.i.i
  %mul105.i.i = mul nsw i32 %local_npoints.0.lcssa.i.i, %call5.i.i, !dbg !378
  %idx.ext106.i.i = sext i32 %mul105.i.i to i64, !dbg !378
  %idx.neg.i.i = sub i64 0, %idx.ext106.i.i, !dbg !378
  %add.ptr107.i.i = getelementptr inbounds i8* %local_hdata.1.lcssa.i.i, i64 %idx.neg.i.i, !dbg !378
  call void @free(i8* %add.ptr107.i.i) #6, !dbg !379
  br label %return, !dbg !381

if.end44.i:                                       ; preds = %if.end40.i
  %cmp45.i = icmp slt i32 %hdatatype, 0, !dbg !382
  %vartype.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 1, !dbg !383
  %49 = load i32* %vartype.i, align 4, !dbg !383, !tbaa !314
  %conversion_fn48450.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 16, !dbg !385
  %50 = load void (i8*, i8*, i32, i32, i32)** %conversion_fn48450.i, align 8, !dbg !385, !tbaa !330
  call void @llvm.dbg.value(metadata !{void (i8*, i8*, i32, i32, i32)* %50}, i64 0, metadata !386) #5, !dbg !385
  br i1 %cmp45.i, label %if.end47.thread.i, label %if.end47.i, !dbg !382

if.end47.thread.i:                                ; preds = %if.end44.i
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !305) #5, !dbg !383
  %tobool65453.i = icmp eq void (i8*, i8*, i32, i32, i32)* %50, null, !dbg !387
  br i1 %tobool65453.i, label %if.end69.i, label %if.then66.i, !dbg !387

if.end47.i:                                       ; preds = %if.end44.i
  %cmp50.i = icmp eq i32 %49, %hdatatype, !dbg !388
  %tobool65.i = icmp eq void (i8*, i8*, i32, i32, i32)* %50, null, !dbg !387
  br i1 %cmp50.i, label %if.else64.i, label %if.then51.i, !dbg !388

if.then51.i:                                      ; preds = %if.end47.i
  br i1 %tobool65.i, label %if.then53.i, label %if.end69.i, !dbg !389

if.then53.i:                                      ; preds = %if.then51.i
  %call55.i = call void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %49, i32 %hdatatype) #6, !dbg !391
  call void @llvm.dbg.value(metadata !{void (i8*, i8*, i32, i32, i32)* %call55.i}, i64 0, metadata !386) #5, !dbg !391
  %tobool56.i = icmp eq void (i8*, i8*, i32, i32, i32)* %call55.i, null, !dbg !393
  br i1 %tobool56.i, label %if.then57.i, label %if.end69.i, !dbg !393

if.then57.i:                                      ; preds = %if.then53.i
  %51 = load i32* %vartype.i, align 4, !dbg !394, !tbaa !314
  %call59.i = call i8* @CCTK_VarTypeName(i32 %51) #6, !dbg !394
  %call60.i = call i8* @CCTK_VarTypeName(i32 %hdatatype) #6, !dbg !396
  %call61.i = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 297, i8* getelementptr inbounds ([71 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i8* %call59.i, i8* %call60.i) #6, !dbg !396
  br label %return, !dbg !397

if.else64.i:                                      ; preds = %if.end47.i
  br i1 %tobool65.i, label %if.end69.i, label %if.then66.i, !dbg !387

if.then66.i:                                      ; preds = %if.else64.i, %if.end47.thread.i
  %hdatatype.addr.0455463.i = phi i32 [ %49, %if.end47.thread.i ], [ %hdatatype, %if.else64.i ]
  %call67.i = call i32 @CCTK_Warn(i32 8, i32 308, i8* getelementptr inbounds ([71 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !398
  call void @llvm.dbg.value(metadata !400, i64 0, metadata !386) #5, !dbg !401
  br label %if.end69.i, !dbg !402

if.end69.i:                                       ; preds = %if.then53.i, %if.then66.i, %if.else64.i, %if.then51.i, %if.end47.thread.i
  %hdatatype.addr.0454.i = phi i32 [ %hdatatype, %if.then51.i ], [ %hdatatype.addr.0455463.i, %if.then66.i ], [ %hdatatype, %if.else64.i ], [ %49, %if.end47.thread.i ], [ %hdatatype, %if.then53.i ]
  %conversion_fn.0.i = phi void (i8*, i8*, i32, i32, i32)* [ %50, %if.then51.i ], [ null, %if.then66.i ], [ null, %if.else64.i ], [ null, %if.end47.thread.i ], [ %call55.i, %if.then53.i ]
  %52 = load i32* %dim.i, align 4, !dbg !403, !tbaa !314
  %mul.i = mul nsw i32 %52, 5, !dbg !403
  %conv.i = sext i32 %mul.i to i64, !dbg !403
  %mul71.i = shl nsw i64 %conv.i, 2, !dbg !403
  %call72.i = call noalias i8* @malloc(i64 %mul71.i) #6, !dbg !403
  %53 = bitcast i8* %call72.i to i32*, !dbg !403
  call void @llvm.dbg.value(metadata !{i32* %53}, i64 0, metadata !404) #5, !dbg !403
  %idx.ext.i = sext i32 %52 to i64, !dbg !405
  %add.ptr.i = getelementptr inbounds i32* %53, i64 %idx.ext.i, !dbg !405
  call void @llvm.dbg.value(metadata !{i32* %add.ptr.i}, i64 0, metadata !406) #5, !dbg !405
  %mul76.i = shl nsw i32 %52, 1, !dbg !407
  %idx.ext77.i = sext i32 %mul76.i to i64, !dbg !407
  %add.ptr78.i = getelementptr inbounds i32* %53, i64 %idx.ext77.i, !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %add.ptr78.i}, i64 0, metadata !408) #5, !dbg !407
  %mul80.i = mul nsw i32 %52, 3, !dbg !409
  %idx.ext81.i = sext i32 %mul80.i to i64, !dbg !409
  %add.ptr82.i = getelementptr inbounds i32* %53, i64 %idx.ext81.i, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %add.ptr82.i}, i64 0, metadata !410) #5, !dbg !409
  %mul84.i = shl nsw i32 %52, 2, !dbg !411
  %idx.ext85.i = sext i32 %mul84.i to i64, !dbg !411
  %54 = bitcast i32* %add.ptr.i to i8*, !dbg !412
  %local_startpoint.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 5, !dbg !412
  %55 = load i32** %local_startpoint.i, align 8, !dbg !412, !tbaa !330
  %56 = bitcast i32* %55 to i8*, !dbg !412
  %mul89.i = shl nsw i64 %idx.ext.i, 2, !dbg !412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %56, i64 %mul89.i, i32 4, i1 false) #5, !dbg !412
  %57 = bitcast i32* %add.ptr78.i to i8*, !dbg !413
  %local_endpoint.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 6, !dbg !413
  %58 = load i32** %local_endpoint.i, align 8, !dbg !413, !tbaa !330
  %59 = bitcast i32* %58 to i8*, !dbg !413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %59, i64 %mul89.i, i32 4, i1 false) #5, !dbg !413
  %60 = bitcast i32* %add.ptr82.i to i8*, !dbg !414
  %downsample93.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 10, !dbg !414
  %61 = load i32** %downsample93.i, align 8, !dbg !414, !tbaa !330
  %62 = bitcast i32* %61 to i8*, !dbg !414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %62, i64 %mul89.i, i32 4, i1 false) #5, !dbg !414
  %call97.i = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !415
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call97.i}, i64 0, metadata !416) #5, !dbg !415
  %idxprom.i = sext i32 %timelevel to i64, !dbg !417
  %idxprom98.i = sext i32 %vindex to i64, !dbg !417
  %variables.i = getelementptr inbounds %struct.PGH* %call97.i, i64 0, i32 7, !dbg !417
  %63 = load i8**** %variables.i, align 8, !dbg !417, !tbaa !330
  %arrayidx.i = getelementptr inbounds i8*** %63, i64 %idxprom98.i, !dbg !417
  %64 = load i8*** %arrayidx.i, align 8, !dbg !417, !tbaa !330
  %arrayidx99.i = getelementptr inbounds i8** %64, i64 %idxprom.i, !dbg !417
  %65 = load i8** %arrayidx99.i, align 8, !dbg !417, !tbaa !330
  %66 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !418, !tbaa !330
  %call100.i = call i32 %66(%struct.cGH* %GH) #6, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %call100.i}, i64 0, metadata !419) #5, !dbg !418
  %call101.i = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %timelevel, i32 %vindex) #6, !dbg !420
  call void @llvm.dbg.value(metadata !{i8* %call101.i}, i64 0, metadata !421) #5, !dbg !420
  %is_full_hyperslab.i = getelementptr inbounds %struct.hslab_mapping_t* %call, i64 0, i32 14, !dbg !422
  %67 = load i32* %is_full_hyperslab.i, align 4, !dbg !422, !tbaa !314
  %tobool102.i = icmp ne i32 %67, 0, !dbg !422
  %cmp104.i = icmp eq void (i8*, i8*, i32, i32, i32)* %conversion_fn.0.i, null, !dbg !422
  %or.cond414.i = and i1 %tobool102.i, %cmp104.i, !dbg !422
  br i1 %or.cond414.i, label %if.then106.i, label %if.else112.i, !dbg !422

if.then106.i:                                     ; preds = %if.end69.i
  %68 = load i32* %totals.i, align 4, !dbg !423, !tbaa !314
  %69 = load i32* %vartype.i, align 4, !dbg !423, !tbaa !314
  %call109.i = call i32 @CCTK_VarTypeSize(i32 %69) #6, !dbg !423
  %mul110.i = mul i32 %call109.i, %68, !dbg !423
  %conv111.i = zext i32 %mul110.i to i64, !dbg !423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %hdata, i8* %call101.i, i64 %conv111.i, i32 1, i1 false) #5, !dbg !423
  br label %if.end278.i, !dbg !425

if.else112.i:                                     ; preds = %if.end69.i
  %add.ptr86.i = getelementptr inbounds i32* %53, i64 %idx.ext85.i, !dbg !411
  %70 = load i32* %vartype.i, align 4, !dbg !426, !tbaa !314
  %call114.i = call i32 @CCTK_VarTypeSize(i32 %70) #6, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %call114.i}, i64 0, metadata !428) #5, !dbg !426
  %call115.i = call i32 @CCTK_VarTypeSize(i32 %hdatatype.addr.0454.i) #6, !dbg !429
  call void @llvm.dbg.value(metadata !{i32 %call115.i}, i64 0, metadata !430) #5, !dbg !429
  call void @llvm.dbg.value(metadata !{i8* %hdata}, i64 0, metadata !431) #5, !dbg !432
  store i32 1, i32* %add.ptr86.i, align 4, !dbg !433, !tbaa !314
  call void @llvm.dbg.value(metadata !434, i64 0, metadata !435) #5, !dbg !436
  %71 = load i32* %dim.i, align 4, !dbg !436, !tbaa !314
  %cmp118434.i = icmp sgt i32 %71, 1, !dbg !436
  br i1 %cmp118434.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !436

for.body.lr.ph.i:                                 ; preds = %if.else112.i
  %extras.i = getelementptr inbounds i8* %65, i64 56, !dbg !438
  %72 = bitcast i8* %extras.i to %struct.PGExtras**, !dbg !438
  %73 = load %struct.PGExtras** %72, align 8, !dbg !438, !tbaa !330
  %lnsize.i = getelementptr inbounds %struct.PGExtras* %73, i64 0, i32 6, !dbg !438
  %74 = load i32** %lnsize.i, align 8, !dbg !438, !tbaa !330
  br label %for.body.i, !dbg !436

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv447.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next448.i, %for.body.i ]
  %75 = add nsw i64 %indvars.iv447.i, -1, !dbg !438
  %add.ptr86.sum411.i = add i64 %75, %idx.ext85.i, !dbg !438
  %arrayidx121.i = getelementptr inbounds i32* %53, i64 %add.ptr86.sum411.i, !dbg !438
  %76 = load i32* %arrayidx121.i, align 4, !dbg !438, !tbaa !314
  %arrayidx124.i = getelementptr inbounds i32* %74, i64 %75, !dbg !438
  %77 = load i32* %arrayidx124.i, align 4, !dbg !438, !tbaa !314
  %mul125.i = mul nsw i32 %77, %76, !dbg !438
  %add.ptr86.sum412.i = add i64 %indvars.iv447.i, %idx.ext85.i, !dbg !438
  %arrayidx127.i = getelementptr inbounds i32* %53, i64 %add.ptr86.sum412.i, !dbg !438
  store i32 %mul125.i, i32* %arrayidx127.i, align 4, !dbg !438, !tbaa !314
  %indvars.iv.next448.i = add i64 %indvars.iv447.i, 1, !dbg !436
  %lftr.wideiv4 = trunc i64 %indvars.iv.next448.i to i32, !dbg !436
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %71, !dbg !436
  br i1 %exitcond5, label %for.end.i, label %for.body.i, !dbg !436

for.end.i:                                        ; preds = %for.body.i, %if.else112.i
  %78 = load i32* %add.ptr78.i, align 4, !dbg !440, !tbaa !314
  %79 = load i32* %add.ptr.i, align 4, !dbg !440, !tbaa !314
  %sub130.i = sub nsw i32 %78, %79, !dbg !440
  %80 = load i32* %add.ptr82.i, align 4, !dbg !440, !tbaa !314
  %div.i = sdiv i32 %sub130.i, %80, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !441) #5, !dbg !440
  %rem.i = srem i32 %sub130.i, %80, !dbg !442
  %not.tobool136.i = icmp ne i32 %rem.i, 0, !dbg !442
  %inc138.i = zext i1 %not.tobool136.i to i32, !dbg !442
  %div.inc138.i = add nsw i32 %inc138.i, %div.i, !dbg !442
  %mul140.i = mul nsw i32 %div.inc138.i, %call115.i, !dbg !443
  call void @llvm.dbg.value(metadata !{i32 %mul140.i}, i64 0, metadata !444) #5, !dbg !443
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !445) #5, !dbg !446
  %cmp143431.i = icmp sgt i32 %71, 0, !dbg !446
  br i1 %cmp143431.i, label %for.body145.i, label %for.end157.i, !dbg !446

for.body145.i:                                    ; preds = %for.end.i, %for.body145.i
  %indvars.iv445.i = phi i64 [ %indvars.iv.next446.i, %for.body145.i ], [ 0, %for.end.i ]
  %add.ptr.sum408.i = add i64 %indvars.iv445.i, %idx.ext.i, !dbg !448
  %arrayidx147.i = getelementptr inbounds i32* %53, i64 %add.ptr.sum408.i, !dbg !448
  %81 = load i32* %arrayidx147.i, align 4, !dbg !448, !tbaa !314
  %mul148.i = mul nsw i32 %81, %call114.i, !dbg !448
  store i32 %mul148.i, i32* %arrayidx147.i, align 4, !dbg !448, !tbaa !314
  %add.ptr78.sum409.i = add i64 %indvars.iv445.i, %idx.ext77.i, !dbg !450
  %arrayidx150.i = getelementptr inbounds i32* %53, i64 %add.ptr78.sum409.i, !dbg !450
  %82 = load i32* %arrayidx150.i, align 4, !dbg !450, !tbaa !314
  %mul151.i = mul nsw i32 %82, %call114.i, !dbg !450
  store i32 %mul151.i, i32* %arrayidx150.i, align 4, !dbg !450, !tbaa !314
  %add.ptr82.sum410.i = add i64 %indvars.iv445.i, %idx.ext81.i, !dbg !451
  %arrayidx153.i = getelementptr inbounds i32* %53, i64 %add.ptr82.sum410.i, !dbg !451
  %83 = load i32* %arrayidx153.i, align 4, !dbg !451, !tbaa !314
  %mul154.i = mul nsw i32 %83, %call114.i, !dbg !451
  store i32 %mul154.i, i32* %arrayidx153.i, align 4, !dbg !451, !tbaa !314
  %indvars.iv.next446.i = add i64 %indvars.iv445.i, 1, !dbg !446
  %lftr.wideiv = trunc i64 %indvars.iv.next446.i to i32, !dbg !446
  %exitcond = icmp eq i32 %lftr.wideiv, %71, !dbg !446
  br i1 %exitcond, label %for.end157.i, label %for.body145.i, !dbg !446

for.end157.i:                                     ; preds = %for.body145.i, %for.end.i
  %conv159.i = sext i32 %71 to i64, !dbg !452
  %mul160.i = shl nsw i64 %conv159.i, 2, !dbg !452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call72.i, i8* %54, i64 %mul160.i, i32 4, i1 false) #5, !dbg !452
  call void @llvm.dbg.value(metadata !434, i64 0, metadata !435) #5, !dbg !453
  %arrayidx166.i = getelementptr inbounds i8* %call72.i, i64 4, !dbg !454
  %84 = bitcast i8* %arrayidx166.i to i32*, !dbg !454
  %add.ptr78.sum406.i = or i64 %idx.ext77.i, 1, !dbg !454
  %arrayidx168.i = getelementptr inbounds i32* %53, i64 %add.ptr78.sum406.i, !dbg !454
  %conv237.i = sext i32 %mul140.i to i64, !dbg !456
  %add.ptr82.sum.i = add i64 %idx.ext81.i, 1, !dbg !459
  %arrayidx272.i = getelementptr inbounds i32* %53, i64 %add.ptr82.sum.i, !dbg !459
  %cmp251428.i = icmp sgt i32 %mul140.i, 0, !dbg !461
  %conv256.i = sext i32 %call114.i to i64, !dbg !465
  %85 = sext i32 %call115.i to i64
  br label %while.body.i, !dbg !467

while.body.i:                                     ; preds = %if.then270.i, %for.end157.i
  %86 = phi i32 [ %71, %for.end157.i ], [ %105, %if.then270.i ]
  %typed_hdata.0.i = phi i8* [ %hdata, %for.end157.i ], [ %add.ptr266.i, %if.then270.i ]
  %cmp162.i = icmp sgt i32 %86, 1, !dbg !454
  br i1 %cmp162.i, label %land.lhs.true164.i, label %if.end209.thread467.i, !dbg !454

if.end209.thread467.i:                            ; preds = %while.body.i
  %87 = load i32* %53, align 4, !dbg !468, !tbaa !314
  %idx.ext211468.i = sext i32 %87 to i64, !dbg !468
  %add.ptr212469.i = getelementptr inbounds i8* %call101.i, i64 %idx.ext211468.i, !dbg !468
  call void @llvm.dbg.value(metadata !434, i64 0, metadata !445) #5, !dbg !469
  br label %for.end227.i, !dbg !469

land.lhs.true164.i:                               ; preds = %while.body.i
  %88 = load i32* %84, align 4, !dbg !454, !tbaa !314
  %89 = load i32* %arrayidx168.i, align 4, !dbg !454, !tbaa !314
  %cmp169.i = icmp slt i32 %88, %89, !dbg !454
  br i1 %cmp169.i, label %if.end209.thread.i, label %for.cond173.preheader.i, !dbg !454

if.end209.thread.i:                               ; preds = %land.lhs.true164.i
  %90 = load i32* %53, align 4, !dbg !468, !tbaa !314
  %idx.ext211464.i = sext i32 %90 to i64, !dbg !468
  %add.ptr212465.i = getelementptr inbounds i8* %call101.i, i64 %idx.ext211464.i, !dbg !468
  call void @llvm.dbg.value(metadata !434, i64 0, metadata !445) #5, !dbg !469
  br label %for.body217.i, !dbg !469

for.cond173.preheader.i:                          ; preds = %land.lhs.true164.i
  %cmp175419.i = icmp sgt i32 %86, 2, !dbg !471
  br i1 %cmp175419.i, label %for.body177.i, label %for.end192.i, !dbg !471

for.cond173.i:                                    ; preds = %for.body177.i
  %91 = trunc i64 %indvars.iv.next.i to i32, !dbg !471
  %cmp175.i = icmp slt i32 %91, %86, !dbg !471
  br i1 %cmp175.i, label %for.body177.i, label %for.end192.i, !dbg !471

for.body177.i:                                    ; preds = %for.cond173.preheader.i, %for.cond173.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond173.i ], [ 2, %for.cond173.preheader.i ]
  %vdim.2420.i = phi i32 [ %inc191.i, %for.cond173.i ], [ 2, %for.cond173.preheader.i ]
  %add.ptr82.sum407.i = add i64 %indvars.iv.i, %idx.ext81.i, !dbg !474
  %arrayidx179.i = getelementptr inbounds i32* %53, i64 %add.ptr82.sum407.i, !dbg !474
  %92 = load i32* %arrayidx179.i, align 4, !dbg !474, !tbaa !314
  %arrayidx181.i = getelementptr inbounds i32* %53, i64 %indvars.iv.i, !dbg !474
  %93 = load i32* %arrayidx181.i, align 4, !dbg !474, !tbaa !314
  %add.i = add nsw i32 %93, %92, !dbg !474
  store i32 %add.i, i32* %arrayidx181.i, align 4, !dbg !474, !tbaa !314
  %add.ptr78.sum.i = add i64 %indvars.iv.i, %idx.ext77.i, !dbg !476
  %arrayidx185.i = getelementptr inbounds i32* %53, i64 %add.ptr78.sum.i, !dbg !476
  %94 = load i32* %arrayidx185.i, align 4, !dbg !476, !tbaa !314
  %cmp186.i = icmp slt i32 %add.i, %94, !dbg !476
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !471
  %inc191.i = add nsw i32 %vdim.2420.i, 1, !dbg !471
  call void @llvm.dbg.value(metadata !{i32 %inc191.i}, i64 0, metadata !435) #5, !dbg !471
  br i1 %cmp186.i, label %for.end192.i, label %for.cond173.i, !dbg !476

for.end192.i:                                     ; preds = %for.body177.i, %for.cond173.i, %for.cond173.preheader.i
  %vdim.2.lcssa.i = phi i32 [ 2, %for.cond173.preheader.i ], [ %vdim.2420.i, %for.body177.i ], [ %inc191.i, %for.cond173.i ]
  %cmp194.i = icmp slt i32 %vdim.2.lcssa.i, %86, !dbg !477
  br i1 %cmp194.i, label %for.cond198.preheader.i, label %if.end278.i, !dbg !477

for.cond198.preheader.i:                          ; preds = %for.end192.i
  %vdim.3421.i = add i32 %vdim.2.lcssa.i, -1, !dbg !478
  %cmp199422.i = icmp sgt i32 %vdim.3421.i, 0, !dbg !478
  br i1 %cmp199422.i, label %for.body201.lr.ph.i, label %if.end209.i, !dbg !478

for.body201.lr.ph.i:                              ; preds = %for.cond198.preheader.i
  %95 = sext i32 %vdim.3421.i to i64
  br label %for.body201.i, !dbg !478

for.body201.i:                                    ; preds = %for.body201.i, %for.body201.lr.ph.i
  %indvars.iv438.i = phi i64 [ %95, %for.body201.lr.ph.i ], [ %indvars.iv.next439.i, %for.body201.i ]
  %vdim.3423.i = phi i32 [ %vdim.3421.i, %for.body201.lr.ph.i ], [ %vdim.3.i, %for.body201.i ]
  %add.ptr.sum.i = add i64 %indvars.iv438.i, %idx.ext.i, !dbg !480
  %arrayidx203.i = getelementptr inbounds i32* %53, i64 %add.ptr.sum.i, !dbg !480
  %96 = load i32* %arrayidx203.i, align 4, !dbg !480, !tbaa !314
  %arrayidx205.i = getelementptr inbounds i32* %53, i64 %indvars.iv438.i, !dbg !480
  store i32 %96, i32* %arrayidx205.i, align 4, !dbg !480, !tbaa !314
  %vdim.3.i = add nsw i32 %vdim.3423.i, -1, !dbg !478
  %cmp199.i = icmp sgt i32 %vdim.3.i, 0, !dbg !478
  %indvars.iv.next439.i = add i64 %indvars.iv438.i, -1, !dbg !478
  br i1 %cmp199.i, label %for.body201.i, label %if.end209.i, !dbg !478

if.end209.i:                                      ; preds = %for.body201.i, %for.cond198.preheader.i
  %97 = load i32* %53, align 4, !dbg !468, !tbaa !314
  %idx.ext211.i = sext i32 %97 to i64, !dbg !468
  %add.ptr212.i = getelementptr inbounds i8* %call101.i, i64 %idx.ext211.i, !dbg !468
  call void @llvm.dbg.value(metadata !434, i64 0, metadata !445) #5, !dbg !469
  br label %for.body217.i, !dbg !469

for.body217.i:                                    ; preds = %if.end209.thread.i, %if.end209.i, %for.body217.i
  %indvars.iv441.i = phi i64 [ %indvars.iv.next442.i, %for.body217.i ], [ 1, %if.end209.i ], [ 1, %if.end209.thread.i ]
  %typed_vdata.0425.i = phi i8* [ %add.ptr224.i, %for.body217.i ], [ %add.ptr212.i, %if.end209.i ], [ %add.ptr212465.i, %if.end209.thread.i ]
  %arrayidx219.i = getelementptr inbounds i32* %53, i64 %indvars.iv441.i, !dbg !482
  %98 = load i32* %arrayidx219.i, align 4, !dbg !482, !tbaa !314
  %add.ptr86.sum.i = add i64 %indvars.iv441.i, %idx.ext85.i, !dbg !482
  %arrayidx221.i = getelementptr inbounds i32* %53, i64 %add.ptr86.sum.i, !dbg !482
  %99 = load i32* %arrayidx221.i, align 4, !dbg !482, !tbaa !314
  %mul222.i = mul nsw i32 %99, %98, !dbg !482
  %idx.ext223.i = sext i32 %mul222.i to i64, !dbg !482
  %add.ptr224.i = getelementptr inbounds i8* %typed_vdata.0425.i, i64 %idx.ext223.i, !dbg !482
  call void @llvm.dbg.value(metadata !{i8* %add.ptr224.i}, i64 0, metadata !484) #5, !dbg !482
  %indvars.iv.next442.i = add i64 %indvars.iv441.i, 1, !dbg !469
  %100 = trunc i64 %indvars.iv.next442.i to i32, !dbg !469
  %cmp215.i = icmp slt i32 %100, %86, !dbg !469
  br i1 %cmp215.i, label %for.body217.i, label %for.end227.i, !dbg !469

for.end227.i:                                     ; preds = %for.body217.i, %if.end209.thread467.i
  %typed_vdata.0.lcssa.i = phi i8* [ %add.ptr212469.i, %if.end209.thread467.i ], [ %add.ptr224.i, %for.body217.i ]
  %101 = load i32* %add.ptr82.i, align 4, !dbg !485, !tbaa !314
  %cmp229.i = icmp eq i32 %101, %call114.i, !dbg !485
  %102 = load void (i8*, i8*, i32, i32, i32)** %conversion_fn48450.i, align 8, !dbg !486, !tbaa !330
  %tobool233.i = icmp ne void (i8*, i8*, i32, i32, i32)* %102, null, !dbg !486
  br i1 %cmp229.i, label %if.then231.i, label %if.else239.i, !dbg !485

if.then231.i:                                     ; preds = %for.end227.i
  br i1 %tobool233.i, label %if.then234.i, label %if.else236.i, !dbg !486

if.then234.i:                                     ; preds = %if.then231.i
  call void %102(i8* %typed_vdata.0.lcssa.i, i8* %typed_hdata.0.i, i32 %div.inc138.i, i32 1, i32 1) #6, !dbg !487
  br label %if.end264.i, !dbg !489

if.else236.i:                                     ; preds = %if.then231.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %typed_hdata.0.i, i8* %typed_vdata.0.lcssa.i, i64 %conv237.i, i32 1, i1 false) #5, !dbg !456
  br label %if.end264.i

if.else239.i:                                     ; preds = %for.end227.i
  br i1 %tobool233.i, label %if.then242.i, label %for.cond250.preheader.i, !dbg !490

for.cond250.preheader.i:                          ; preds = %if.else239.i
  br i1 %cmp251428.i, label %for.body253.i, label %if.end264.i, !dbg !461

if.then242.i:                                     ; preds = %if.else239.i
  call void %102(i8* %typed_vdata.0.lcssa.i, i8* %typed_hdata.0.i, i32 %div.inc138.i, i32 %101, i32 1) #6, !dbg !491
  br label %if.end264.i, !dbg !493

for.body253.i:                                    ; preds = %for.cond250.preheader.i, %for.body253.i
  %indvars.iv443.i = phi i64 [ %indvars.iv.next444.i, %for.body253.i ], [ 0, %for.cond250.preheader.i ]
  %typed_vdata.1429.i = phi i8* [ %add.ptr259.i, %for.body253.i ], [ %typed_vdata.0.lcssa.i, %for.cond250.preheader.i ]
  %add.ptr255.i = getelementptr inbounds i8* %typed_hdata.0.i, i64 %indvars.iv443.i, !dbg !465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr255.i, i8* %typed_vdata.1429.i, i64 %conv256.i, i32 1, i1 false) #5, !dbg !465
  %103 = load i32* %add.ptr82.i, align 4, !dbg !494, !tbaa !314
  %idx.ext258.i = sext i32 %103 to i64, !dbg !494
  %add.ptr259.i = getelementptr inbounds i8* %typed_vdata.1429.i, i64 %idx.ext258.i, !dbg !494
  call void @llvm.dbg.value(metadata !{i8* %add.ptr259.i}, i64 0, metadata !484) #5, !dbg !494
  %indvars.iv.next444.i = add i64 %indvars.iv443.i, %85, !dbg !461
  %104 = trunc i64 %indvars.iv.next444.i to i32, !dbg !461
  %cmp251.i = icmp slt i32 %104, %mul140.i, !dbg !461
  br i1 %cmp251.i, label %for.body253.i, label %if.end264.i, !dbg !461

if.end264.i:                                      ; preds = %for.body253.i, %if.then242.i, %for.cond250.preheader.i, %if.else236.i, %if.then234.i
  %105 = load i32* %dim.i, align 4, !dbg !495, !tbaa !314
  %cmp268.i = icmp sgt i32 %105, 1, !dbg !495
  br i1 %cmp268.i, label %if.then270.i, label %if.end278.i, !dbg !495

if.then270.i:                                     ; preds = %if.end264.i
  %add.ptr266.i = getelementptr inbounds i8* %typed_hdata.0.i, i64 %conv237.i, !dbg !496
  %106 = load i32* %arrayidx272.i, align 4, !dbg !459, !tbaa !314
  %107 = load i32* %84, align 4, !dbg !459, !tbaa !314
  %add275.i = add nsw i32 %107, %106, !dbg !459
  store i32 %add275.i, i32* %84, align 4, !dbg !459, !tbaa !314
  br label %while.body.i, !dbg !497

if.end278.i:                                      ; preds = %if.end264.i, %for.end192.i, %if.then106.i
  call void @free(i8* %call72.i) #6, !dbg !498
  br label %return, !dbg !499

return:                                           ; preds = %if.end278.i, %if.then57.i, %if.then110.i.i, %for.end.i.i, %if.end36.i, %if.then34.i, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.then34.i ], [ 0, %if.end278.i ], [ -1, %if.then57.i ], [ 0, %if.end36.i ], [ 0, %for.end.i.i ], [ 0, %if.then110.i.i ]
  ret i32 %retval.0, !dbg !500
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_GetList(%struct.cGH* %GH, i32 %mapping_handle, i32 %num_arrays, i32* nocapture %vindices, i32* %timelevels, i32* %hdatatypes, i8** nocapture %hdata) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !115), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %mapping_handle}, i64 0, metadata !116), !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %num_arrays}, i64 0, metadata !117), !dbg !503
  tail call void @llvm.dbg.value(metadata !{i32* %vindices}, i64 0, metadata !118), !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32* %timelevels}, i64 0, metadata !119), !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32* %hdatatypes}, i64 0, metadata !120), !dbg !506
  tail call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !121), !dbg !507
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !123), !dbg !508
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !509
  %cmp23 = icmp sgt i32 %num_arrays, 0, !dbg !509
  br i1 %cmp23, label %for.body.lr.ph, label %for.end, !dbg !509

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %timelevels, null, !dbg !511
  %tobool4 = icmp eq i32* %hdatatypes, null, !dbg !511
  br label %for.body, !dbg !509

for.body:                                         ; preds = %cond.end9, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end9 ]
  %retval1.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.retval1.0, %cond.end9 ]
  %arrayidx = getelementptr inbounds i32* %vindices, i64 %indvars.iv, !dbg !511
  %0 = load i32* %arrayidx, align 4, !dbg !511, !tbaa !314
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !511

cond.true:                                        ; preds = %for.body
  %arrayidx3 = getelementptr inbounds i32* %timelevels, i64 %indvars.iv, !dbg !511
  %1 = load i32* %arrayidx3, align 4, !dbg !511, !tbaa !314
  br label %cond.end, !dbg !511

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %for.body ], !dbg !511
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !511

cond.true5:                                       ; preds = %cond.end
  %arrayidx7 = getelementptr inbounds i32* %hdatatypes, i64 %indvars.iv, !dbg !511
  %2 = load i32* %arrayidx7, align 4, !dbg !511, !tbaa !314
  br label %cond.end9, !dbg !511

cond.end9:                                        ; preds = %cond.end, %cond.true5
  %cond10 = phi i32 [ %2, %cond.true5 ], [ -1, %cond.end ], !dbg !511
  %arrayidx12 = getelementptr inbounds i8** %hdata, i64 %indvars.iv, !dbg !511
  %3 = load i8** %arrayidx12, align 8, !dbg !511, !tbaa !330
  %call = tail call i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %mapping_handle, i32 %0, i32 %cond, i32 %cond10, i8* %3) #7, !dbg !511
  %cmp13 = icmp eq i32 %call, 0, !dbg !511
  %inc = zext i1 %cmp13 to i32, !dbg !511
  %inc.retval1.0 = add nsw i32 %inc, %retval1.025, !dbg !511
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !509
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !509
  %exitcond = icmp eq i32 %lftr.wideiv, %num_arrays, !dbg !509
  br i1 %exitcond, label %for.end, label %for.body, !dbg !509

for.end:                                          ; preds = %cond.end9, %entry
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %inc.retval1.0, %cond.end9 ]
  ret i32 %retval1.0.lcssa, !dbg !513
}

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32, i32) #3

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !285, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !107, metadata !124, metadata !258}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c", metadata !"CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_Get", metadata !"Hyperslab_Get", metadata !"", i32 53, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32, i8*)* @Hyperslab_Get, null, null, metadata !53, i32 59} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 59] [Hyperslab_Get]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !14, metadata !44}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777269, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 53]
!55 = metadata !{i32 786689, metadata !11, metadata !"mapping_handle", metadata !5, i32 33554486, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping_handle] [line 54]
!56 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 50331703, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 55]
!57 = metadata !{i32 786689, metadata !11, metadata !"timelevel", metadata !5, i32 67108920, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timelevel] [line 56]
!58 = metadata !{i32 786689, metadata !11, metadata !"hdatatype", metadata !5, i32 83886137, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdatatype] [line 57]
!59 = metadata !{i32 786689, metadata !11, metadata !"hdata", metadata !5, i32 100663354, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 58]
!60 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 60, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 60]
!61 = metadata !{i32 786688, metadata !11, metadata !"mapping", metadata !5, i32 61, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapping] [line 61]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hslab_mapping_t]
!63 = metadata !{i32 786454, metadata !1, null, metadata !"hslab_mapping_t", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [hslab_mapping_t] [line 45, size 0, align 0, offset 0] [from hslab_mapping_t]
!64 = metadata !{i32 786451, metadata !65, null, metadata !"hslab_mapping_t", i32 24, i64 1280, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [hslab_mapping_t] [line 24, size 1280, align 64, offset 0] [from ]
!65 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/PUGHSlabi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !91, metadata !93, metadata !94}
!67 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"handle", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [handle] [line 26, size 32, align 32, offset 0] [from int]
!68 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"target_proc", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [target_proc] [line 27, size 32, align 32, offset 32] [from int]
!69 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"hdim", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [hdim] [line 28, size 32, align 32, offset 64] [from unsigned int]
!70 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vdim", i32 29, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [vdim] [line 29, size 32, align 32, offset 96] [from unsigned int]
!72 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vectors", i32 30, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vectors] [line 30, size 64, align 64, offset 128] [from ]
!73 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"local_startpoint", i32 31, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [local_startpoint] [line 31, size 64, align 64, offset 192] [from ]
!74 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"local_endpoint", i32 32, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [local_endpoint] [line 32, size 64, align 64, offset 256] [from ]
!75 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"global_startpoint", i32 33, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [global_startpoint] [line 33, size 64, align 64, offset 320] [from ]
!76 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"global_endpoint", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [global_endpoint] [line 34, size 64, align 64, offset 384] [from ]
!77 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"do_dir", i32 35, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [do_dir] [line 35, size 64, align 64, offset 448] [from ]
!78 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"downsample", i32 36, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [downsample] [line 36, size 64, align 64, offset 512] [from ]
!79 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"global_hsize", i32 37, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [global_hsize] [line 37, size 64, align 64, offset 576] [from ]
!80 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"local_hsize", i32 38, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [local_hsize] [line 38, size 64, align 64, offset 640] [from ]
!81 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"totals", i32 39, i64 32, i64 32, i64 704, i32 0, metadata !70} ; [ DW_TAG_member ] [totals] [line 39, size 32, align 32, offset 704] [from unsigned int]
!82 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"is_full_hyperslab", i32 40, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [is_full_hyperslab] [line 40, size 32, align 32, offset 736] [from int]
!83 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"is_diagonal_in_3D", i32 41, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [is_diagonal_in_3D] [line 41, size 32, align 32, offset 768] [from int]
!84 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"conversion_fn", i32 42, i64 64, i64 64, i64 832, i32 0, metadata !85} ; [ DW_TAG_member ] [conversion_fn] [line 42, size 64, align 64, offset 832] [from t_hslabConversionFn]
!85 = metadata !{i32 786454, metadata !65, null, metadata !"t_hslabConversionFn", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [t_hslabConversionFn] [line 21, size 0, align 0, offset 0] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{null, metadata !89, metadata !44, metadata !14, metadata !14, metadata !14}
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"prev", i32 43, i64 64, i64 64, i64 896, i32 0, metadata !92} ; [ DW_TAG_member ] [prev] [line 43, size 64, align 64, offset 896] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hslab_mapping_t]
!93 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"next", i32 43, i64 64, i64 64, i64 960, i32 0, metadata !92} ; [ DW_TAG_member ] [next] [line 43, size 64, align 64, offset 960] [from ]
!94 = metadata !{i32 786445, metadata !65, metadata !64, metadata !"vinfo", i32 44, i64 256, i64 32, i64 1024, i32 0, metadata !95} ; [ DW_TAG_member ] [vinfo] [line 44, size 256, align 32, offset 1024] [from cGroup]
!95 = metadata !{i32 786454, metadata !65, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!96 = metadata !{i32 786451, metadata !97, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !98, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!97 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!99 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!101 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!102 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!103 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!104 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!105 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!106 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_GetList", metadata !"Hyperslab_GetList", metadata !"", i32 80, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i8**)* @Hyperslab_GetList, null, null, metadata !114, i32 87} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 87] [Hyperslab_GetList]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !110, metadata !110, metadata !110, metadata !112}
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!115 = metadata !{i32 786689, metadata !107, metadata !"GH", metadata !5, i32 16777296, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 80]
!116 = metadata !{i32 786689, metadata !107, metadata !"mapping_handle", metadata !5, i32 33554513, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping_handle] [line 81]
!117 = metadata !{i32 786689, metadata !107, metadata !"num_arrays", metadata !5, i32 50331730, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_arrays] [line 82]
!118 = metadata !{i32 786689, metadata !107, metadata !"vindices", metadata !5, i32 67108947, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindices] [line 83]
!119 = metadata !{i32 786689, metadata !107, metadata !"timelevels", metadata !5, i32 83886164, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timelevels] [line 84]
!120 = metadata !{i32 786689, metadata !107, metadata !"hdatatypes", metadata !5, i32 100663381, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdatatypes] [line 85]
!121 = metadata !{i32 786689, metadata !107, metadata !"hdata", metadata !5, i32 117440598, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 86]
!122 = metadata !{i32 786688, metadata !107, metadata !"i", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!123 = metadata !{i32 786688, metadata !107, metadata !"retval", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 88]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GetLocalHyperslab", metadata !"GetLocalHyperslab", metadata !"", i32 206, metadata !125, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !129, i32 212} ; [ DW_TAG_subprogram ] [line 206] [local] [def] [scope 212] [GetLocalHyperslab]
!125 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !14, metadata !15, metadata !127, metadata !14, metadata !14, metadata !14, metadata !44}
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from hslab_mapping_t]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !221, metadata !256, metadata !257}
!130 = metadata !{i32 786689, metadata !124, metadata !"GH", metadata !5, i32 16777422, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 206]
!131 = metadata !{i32 786689, metadata !124, metadata !"mapping", metadata !5, i32 33554639, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping] [line 207]
!132 = metadata !{i32 786689, metadata !124, metadata !"vindex", metadata !5, i32 50331856, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 208]
!133 = metadata !{i32 786689, metadata !124, metadata !"timelevel", metadata !5, i32 67109073, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timelevel] [line 209]
!134 = metadata !{i32 786689, metadata !124, metadata !"hdatatype", metadata !5, i32 83886290, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdatatype] [line 210]
!135 = metadata !{i32 786689, metadata !124, metadata !"hdata", metadata !5, i32 100663507, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 211]
!136 = metadata !{i32 786688, metadata !124, metadata !"point", metadata !5, i32 213, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [point] [line 213]
!137 = metadata !{i32 786688, metadata !124, metadata !"startpoint", metadata !5, i32 214, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [startpoint] [line 214]
!138 = metadata !{i32 786688, metadata !124, metadata !"endpoint", metadata !5, i32 215, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endpoint] [line 215]
!139 = metadata !{i32 786688, metadata !124, metadata !"downsample", metadata !5, i32 216, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [downsample] [line 216]
!140 = metadata !{i32 786688, metadata !124, metadata !"points_per_dim", metadata !5, i32 217, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 217]
!141 = metadata !{i32 786688, metadata !124, metadata !"myproc", metadata !5, i32 218, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 218]
!142 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !5, i32 219, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 219]
!143 = metadata !{i32 786688, metadata !124, metadata !"vdim", metadata !5, i32 220, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdim] [line 220]
!144 = metadata !{i32 786688, metadata !124, metadata !"vdata_size", metadata !5, i32 221, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata_size] [line 221]
!145 = metadata !{i32 786688, metadata !124, metadata !"hdata_size", metadata !5, i32 222, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hdata_size] [line 222]
!146 = metadata !{i32 786688, metadata !124, metadata !"dim0_points", metadata !5, i32 223, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_points] [line 223]
!147 = metadata !{i32 786688, metadata !124, metadata !"dim0_hsize", metadata !5, i32 224, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_hsize] [line 224]
!148 = metadata !{i32 786688, metadata !124, metadata !"typed_vdata", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 225]
!149 = metadata !{i32 786688, metadata !124, metadata !"typed_hdata", metadata !5, i32 226, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 226]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!151 = metadata !{i32 786688, metadata !124, metadata !"vdata", metadata !5, i32 227, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata] [line 227]
!152 = metadata !{i32 786688, metadata !124, metadata !"retval", metadata !5, i32 228, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 228]
!153 = metadata !{i32 786688, metadata !124, metadata !"vinfo", metadata !5, i32 229, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 229]
!154 = metadata !{i32 786688, metadata !124, metadata !"pughGH", metadata !5, i32 230, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 230]
!155 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!156 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!157 = metadata !{i32 786451, metadata !158, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !159, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!158 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !210, metadata !220}
!160 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!161 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!162 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!163 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!164 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!165 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!166 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!167 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!168 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!169 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!170 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!171 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!172 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!173 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!174 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!175 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!176 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!177 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!178 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!179 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!180 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!181 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !182} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!184 = metadata !{i32 786454, metadata !158, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!185 = metadata !{i32 786451, metadata !186, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !207, metadata !209}
!188 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!190 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!191 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !192} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!192 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!193 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !192} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!194 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!195 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!196 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!197 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!198 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !192} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!199 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!200 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!201 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!202 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !203} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!203 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !24, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!206 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!207 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !208} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !192, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!209 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !208} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!210 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !211} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!213 = metadata !{i32 786454, metadata !158, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!214 = metadata !{i32 786451, metadata !186, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219}
!216 = metadata !{i32 786445, metadata !186, metadata !214, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!217 = metadata !{i32 786445, metadata !186, metadata !214, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!218 = metadata !{i32 786445, metadata !186, metadata !214, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !192} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!219 = metadata !{i32 786445, metadata !186, metadata !214, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!220 = metadata !{i32 786445, metadata !158, metadata !157, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !150} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!221 = metadata !{i32 786688, metadata !124, metadata !"GA", metadata !5, i32 231, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 231]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!223 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!224 = metadata !{i32 786451, metadata !186, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !225, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !251, metadata !252, metadata !253, metadata !254}
!226 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!227 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!228 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!229 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!230 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!231 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!232 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!233 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!234 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!235 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!236 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !183} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!237 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !212} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!238 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !239} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!239 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!240 = metadata !{i32 786454, metadata !186, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!241 = metadata !{i32 786451, metadata !186, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !242, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250}
!243 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!244 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!245 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!246 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!247 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!248 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!249 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!250 = metadata !{i32 786445, metadata !186, metadata !241, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!251 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !239} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!252 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!253 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!254 = metadata !{i32 786445, metadata !186, metadata !224, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !255} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!256 = metadata !{i32 786688, metadata !124, metadata !"errormsg", metadata !5, i32 232, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errormsg] [line 232]
!257 = metadata !{i32 786688, metadata !124, metadata !"conversion_fn", metadata !5, i32 233, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conversion_fn] [line 233]
!258 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GetDiagonalFromFrom3D", metadata !"GetDiagonalFromFrom3D", metadata !"", i32 474, metadata !125, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !259, i32 480} ; [ DW_TAG_subprogram ] [line 474] [local] [def] [scope 480] [GetDiagonalFromFrom3D]
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !282}
!260 = metadata !{i32 786689, metadata !258, metadata !"GH", metadata !5, i32 16777690, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 474]
!261 = metadata !{i32 786689, metadata !258, metadata !"mapping", metadata !5, i32 33554907, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping] [line 475]
!262 = metadata !{i32 786689, metadata !258, metadata !"vindex", metadata !5, i32 50332124, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 476]
!263 = metadata !{i32 786689, metadata !258, metadata !"timelevel", metadata !5, i32 67109341, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timelevel] [line 477]
!264 = metadata !{i32 786689, metadata !258, metadata !"hdatatype", metadata !5, i32 83886558, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdatatype] [line 478]
!265 = metadata !{i32 786689, metadata !258, metadata !"hdata", metadata !5, i32 100663775, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 479]
!266 = metadata !{i32 786688, metadata !258, metadata !"i", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 481]
!267 = metadata !{i32 786688, metadata !258, metadata !"j", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 481]
!268 = metadata !{i32 786688, metadata !258, metadata !"k", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 481]
!269 = metadata !{i32 786688, metadata !258, metadata !"myproc", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 481]
!270 = metadata !{i32 786688, metadata !258, metadata !"nprocs", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 481]
!271 = metadata !{i32 786688, metadata !258, metadata !"linear_idx", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linear_idx] [line 481]
!272 = metadata !{i32 786688, metadata !258, metadata !"local_npoints", metadata !5, i32 482, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_npoints] [line 482]
!273 = metadata !{i32 786688, metadata !258, metadata !"npoints", metadata !5, i32 482, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npoints] [line 482]
!274 = metadata !{i32 786688, metadata !258, metadata !"vdatatype", metadata !5, i32 483, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdatatype] [line 483]
!275 = metadata !{i32 786688, metadata !258, metadata !"htypesize", metadata !5, i32 483, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [htypesize] [line 483]
!276 = metadata !{i32 786688, metadata !258, metadata !"vtypesize", metadata !5, i32 483, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 483]
!277 = metadata !{i32 786688, metadata !258, metadata !"vdata", metadata !5, i32 484, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata] [line 484]
!278 = metadata !{i32 786688, metadata !258, metadata !"local_hdata", metadata !5, i32 485, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_hdata] [line 485]
!279 = metadata !{i32 786688, metadata !258, metadata !"pughGH", metadata !5, i32 486, metadata !280, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 486]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!281 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from pGH]
!282 = metadata !{i32 786688, metadata !258, metadata !"extras", metadata !5, i32 487, metadata !283, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extras] [line 487]
!283 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!284 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from pGExtras]
!285 = metadata !{metadata !286}
!286 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!287 = metadata !{i32 27, i32 0, metadata !4, null}
!288 = metadata !{i32 53, i32 0, metadata !11, null}
!289 = metadata !{i32 54, i32 0, metadata !11, null}
!290 = metadata !{i32 55, i32 0, metadata !11, null}
!291 = metadata !{i32 56, i32 0, metadata !11, null}
!292 = metadata !{i32 57, i32 0, metadata !11, null}
!293 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!294 = metadata !{i32 64, i32 0, metadata !11, null}
!295 = metadata !{i32 65, i32 0, metadata !11, null}
!296 = metadata !{i32 206, i32 0, metadata !124, metadata !297}
!297 = metadata !{i32 74, i32 0, metadata !11, null}
!298 = metadata !{i32 786689, metadata !124, metadata !"GH", metadata !5, i32 16777422, metadata !15, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [GH] [line 206]
!299 = metadata !{i32 786689, metadata !124, metadata !"mapping", metadata !5, i32 33554639, metadata !127, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [mapping] [line 207]
!300 = metadata !{i32 207, i32 0, metadata !124, metadata !297}
!301 = metadata !{i32 786689, metadata !124, metadata !"vindex", metadata !5, i32 50331856, metadata !14, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [vindex] [line 208]
!302 = metadata !{i32 208, i32 0, metadata !124, metadata !297}
!303 = metadata !{i32 786689, metadata !124, metadata !"timelevel", metadata !5, i32 67109073, metadata !14, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [timelevel] [line 209]
!304 = metadata !{i32 209, i32 0, metadata !124, metadata !297}
!305 = metadata !{i32 786689, metadata !124, metadata !"hdatatype", metadata !5, i32 83886290, metadata !14, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [hdatatype] [line 210]
!306 = metadata !{i32 210, i32 0, metadata !124, metadata !297}
!307 = metadata !{i32 786689, metadata !124, metadata !"hdata", metadata !5, i32 100663507, metadata !44, i32 0, metadata !297} ; [ DW_TAG_arg_variable ] [hdata] [line 211]
!308 = metadata !{i32 211, i32 0, metadata !124, metadata !297}
!309 = metadata !{i32 229, i32 0, metadata !124, metadata !297}
!310 = metadata !{i8* null}
!311 = metadata !{i32 786688, metadata !124, metadata !"errormsg", metadata !5, i32 232, metadata !8, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [errormsg] [line 232]
!312 = metadata !{i32 237, i32 0, metadata !124, metadata !297}
!313 = metadata !{i32 238, i32 0, metadata !124, metadata !297}
!314 = metadata !{metadata !"int", metadata !315}
!315 = metadata !{metadata !"omnipotent char", metadata !316}
!316 = metadata !{metadata !"Simple C/C++ TBAA"}
!317 = metadata !{i32 242, i32 0, metadata !124, metadata !297}
!318 = metadata !{i32 246, i32 0, metadata !124, metadata !297}
!319 = metadata !{i32 250, i32 0, metadata !124, metadata !297}
!320 = metadata !{i32 262, i32 0, metadata !321, metadata !297}
!321 = metadata !{i32 786443, metadata !1, metadata !124, i32 261, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!322 = metadata !{i32 264, i32 0, metadata !321, metadata !297}
!323 = metadata !{i32 268, i32 0, metadata !124, metadata !297}
!324 = metadata !{i32 274, i32 0, metadata !124, metadata !297}
!325 = metadata !{i32 497, i32 0, metadata !258, metadata !326}
!326 = metadata !{i32 276, i32 0, metadata !327, metadata !297}
!327 = metadata !{i32 786443, metadata !1, metadata !124, i32 275, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!328 = metadata !{i32 786688, metadata !258, metadata !"pughGH", metadata !5, i32 486, metadata !280, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [pughGH] [line 486]
!329 = metadata !{i32 498, i32 0, metadata !258, metadata !326}
!330 = metadata !{metadata !"any pointer", metadata !315}
!331 = metadata !{i32 786688, metadata !258, metadata !"extras", metadata !5, i32 487, metadata !283, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [extras] [line 487]
!332 = metadata !{i32 500, i32 0, metadata !258, metadata !326}
!333 = metadata !{i32 786688, metadata !258, metadata !"vdatatype", metadata !5, i32 483, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [vdatatype] [line 483]
!334 = metadata !{i32 501, i32 0, metadata !258, metadata !326}
!335 = metadata !{i32 786689, metadata !258, metadata !"hdatatype", metadata !5, i32 83886558, metadata !14, i32 0, metadata !326} ; [ DW_TAG_arg_variable ] [hdatatype] [line 478]
!336 = metadata !{i32 503, i32 0, metadata !337, metadata !326}
!337 = metadata !{i32 786443, metadata !1, metadata !258, i32 502, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!338 = metadata !{i32 505, i32 0, metadata !258, metadata !326}
!339 = metadata !{i32 786688, metadata !258, metadata !"htypesize", metadata !5, i32 483, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [htypesize] [line 483]
!340 = metadata !{i32 506, i32 0, metadata !258, metadata !326}
!341 = metadata !{i32 786688, metadata !258, metadata !"vtypesize", metadata !5, i32 483, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [vtypesize] [line 483]
!342 = metadata !{i32 507, i32 0, metadata !258, metadata !326}
!343 = metadata !{i32 786688, metadata !258, metadata !"vdata", metadata !5, i32 484, metadata !8, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [vdata] [line 484]
!344 = metadata !{i32 509, i32 0, metadata !258, metadata !326}
!345 = metadata !{i32 786688, metadata !258, metadata !"myproc", metadata !5, i32 481, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [myproc] [line 481]
!346 = metadata !{i32 510, i32 0, metadata !258, metadata !326}
!347 = metadata !{i32 786688, metadata !258, metadata !"nprocs", metadata !5, i32 481, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [nprocs] [line 481]
!348 = metadata !{i32 511, i32 0, metadata !258, metadata !326}
!349 = metadata !{i32 524, i32 0, metadata !350, metadata !326}
!350 = metadata !{i32 786443, metadata !1, metadata !258, i32 524, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!351 = metadata !{i32 517, i32 0, metadata !352, metadata !326}
!352 = metadata !{i32 786443, metadata !1, metadata !258, i32 516, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!353 = metadata !{i32 786688, metadata !258, metadata !"local_hdata", metadata !5, i32 485, metadata !150, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [local_hdata] [line 485]
!354 = metadata !{i32 520, i32 0, metadata !258, metadata !326}
!355 = metadata !{i32 786688, metadata !258, metadata !"local_npoints", metadata !5, i32 482, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [local_npoints] [line 482]
!356 = metadata !{i32 523, i32 0, metadata !258, metadata !326}
!357 = metadata !{i32 786688, metadata !258, metadata !"npoints", metadata !5, i32 482, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [npoints] [line 482]
!358 = metadata !{i32 522, i32 0, metadata !258, metadata !326}
!359 = metadata !{i32 521, i32 0, metadata !258, metadata !326}
!360 = metadata !{i32 526, i32 0, metadata !361, metadata !326}
!361 = metadata !{i32 786443, metadata !1, metadata !350, i32 525, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!362 = metadata !{i32 543, i32 0, metadata !361, metadata !326}
!363 = metadata !{i32 530, i32 0, metadata !364, metadata !326}
!364 = metadata !{i32 786443, metadata !1, metadata !361, i32 529, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!365 = metadata !{i32 531, i32 0, metadata !364, metadata !326}
!366 = metadata !{i32 538, i32 0, metadata !367, metadata !326}
!367 = metadata !{i32 786443, metadata !1, metadata !364, i32 537, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!368 = metadata !{i32 533, i32 0, metadata !369, metadata !326}
!369 = metadata !{i32 786443, metadata !1, metadata !364, i32 532, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!370 = metadata !{i32 786688, metadata !258, metadata !"linear_idx", metadata !5, i32 481, metadata !14, i32 0, metadata !326} ; [ DW_TAG_auto_variable ] [linear_idx] [line 481]
!371 = metadata !{i32 535, i32 0, metadata !369, metadata !326}
!372 = metadata !{i32 540, i32 0, metadata !364, metadata !326}
!373 = metadata !{i32 541, i32 0, metadata !364, metadata !326}
!374 = metadata !{i32 542, i32 0, metadata !364, metadata !326}
!375 = metadata !{i32 545, i32 0, metadata !361, metadata !326}
!376 = metadata !{i32 544, i32 0, metadata !361, metadata !326}
!377 = metadata !{i32 618, i32 0, metadata !258, metadata !326}
!378 = metadata !{i32 547, i32 0, metadata !258, metadata !326}
!379 = metadata !{i32 620, i32 0, metadata !380, metadata !326}
!380 = metadata !{i32 786443, metadata !1, metadata !258, i32 619, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!381 = metadata !{i32 621, i32 0, metadata !380, metadata !326}
!382 = metadata !{i32 284, i32 0, metadata !124, metadata !297}
!383 = metadata !{i32 286, i32 0, metadata !384, metadata !297}
!384 = metadata !{i32 786443, metadata !1, metadata !124, i32 285, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!385 = metadata !{i32 288, i32 0, metadata !124, metadata !297}
!386 = metadata !{i32 786688, metadata !124, metadata !"conversion_fn", metadata !5, i32 233, metadata !85, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [conversion_fn] [line 233]
!387 = metadata !{i32 305, i32 0, metadata !124, metadata !297}
!388 = metadata !{i32 289, i32 0, metadata !124, metadata !297}
!389 = metadata !{i32 291, i32 0, metadata !390, metadata !297}
!390 = metadata !{i32 786443, metadata !1, metadata !124, i32 290, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!391 = metadata !{i32 293, i32 0, metadata !392, metadata !297}
!392 = metadata !{i32 786443, metadata !1, metadata !390, i32 292, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!393 = metadata !{i32 295, i32 0, metadata !392, metadata !297}
!394 = metadata !{i32 299, i32 0, metadata !395, metadata !297}
!395 = metadata !{i32 786443, metadata !1, metadata !392, i32 296, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!396 = metadata !{i32 300, i32 0, metadata !395, metadata !297}
!397 = metadata !{i32 301, i32 0, metadata !395, metadata !297}
!398 = metadata !{i32 307, i32 0, metadata !399, metadata !297}
!399 = metadata !{i32 786443, metadata !1, metadata !124, i32 306, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!400 = metadata !{void (i8*, i8*, i32, i32, i32)* null}
!401 = metadata !{i32 309, i32 0, metadata !399, metadata !297}
!402 = metadata !{i32 310, i32 0, metadata !399, metadata !297}
!403 = metadata !{i32 313, i32 0, metadata !124, metadata !297}
!404 = metadata !{i32 786688, metadata !124, metadata !"point", metadata !5, i32 213, metadata !24, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [point] [line 213]
!405 = metadata !{i32 314, i32 0, metadata !124, metadata !297}
!406 = metadata !{i32 786688, metadata !124, metadata !"startpoint", metadata !5, i32 214, metadata !24, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [startpoint] [line 214]
!407 = metadata !{i32 315, i32 0, metadata !124, metadata !297}
!408 = metadata !{i32 786688, metadata !124, metadata !"endpoint", metadata !5, i32 215, metadata !24, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [endpoint] [line 215]
!409 = metadata !{i32 316, i32 0, metadata !124, metadata !297}
!410 = metadata !{i32 786688, metadata !124, metadata !"downsample", metadata !5, i32 216, metadata !24, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [downsample] [line 216]
!411 = metadata !{i32 317, i32 0, metadata !124, metadata !297}
!412 = metadata !{i32 319, i32 0, metadata !124, metadata !297}
!413 = metadata !{i32 320, i32 0, metadata !124, metadata !297}
!414 = metadata !{i32 321, i32 0, metadata !124, metadata !297}
!415 = metadata !{i32 324, i32 0, metadata !124, metadata !297}
!416 = metadata !{i32 786688, metadata !124, metadata !"pughGH", metadata !5, i32 230, metadata !155, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [pughGH] [line 230]
!417 = metadata !{i32 325, i32 0, metadata !124, metadata !297}
!418 = metadata !{i32 328, i32 0, metadata !124, metadata !297}
!419 = metadata !{i32 786688, metadata !124, metadata !"myproc", metadata !5, i32 218, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [myproc] [line 218]
!420 = metadata !{i32 332, i32 0, metadata !124, metadata !297}
!421 = metadata !{i32 786688, metadata !124, metadata !"vdata", metadata !5, i32 227, metadata !89, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [vdata] [line 227]
!422 = metadata !{i32 334, i32 0, metadata !124, metadata !297}
!423 = metadata !{i32 336, i32 0, metadata !424, metadata !297}
!424 = metadata !{i32 786443, metadata !1, metadata !124, i32 335, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!425 = metadata !{i32 337, i32 0, metadata !424, metadata !297}
!426 = metadata !{i32 342, i32 0, metadata !427, metadata !297}
!427 = metadata !{i32 786443, metadata !1, metadata !124, i32 339, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!428 = metadata !{i32 786688, metadata !124, metadata !"vdata_size", metadata !5, i32 221, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [vdata_size] [line 221]
!429 = metadata !{i32 343, i32 0, metadata !427, metadata !297}
!430 = metadata !{i32 786688, metadata !124, metadata !"hdata_size", metadata !5, i32 222, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [hdata_size] [line 222]
!431 = metadata !{i32 786688, metadata !124, metadata !"typed_hdata", metadata !5, i32 226, metadata !150, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 226]
!432 = metadata !{i32 345, i32 0, metadata !427, metadata !297}
!433 = metadata !{i32 350, i32 0, metadata !427, metadata !297}
!434 = metadata !{i32 1}
!435 = metadata !{i32 786688, metadata !124, metadata !"vdim", metadata !5, i32 220, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [vdim] [line 220]
!436 = metadata !{i32 351, i32 0, metadata !437, metadata !297}
!437 = metadata !{i32 786443, metadata !1, metadata !427, i32 351, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!438 = metadata !{i32 353, i32 0, metadata !439, metadata !297}
!439 = metadata !{i32 786443, metadata !1, metadata !437, i32 352, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!440 = metadata !{i32 359, i32 0, metadata !427, metadata !297}
!441 = metadata !{i32 786688, metadata !124, metadata !"dim0_points", metadata !5, i32 223, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [dim0_points] [line 223]
!442 = metadata !{i32 360, i32 0, metadata !427, metadata !297}
!443 = metadata !{i32 364, i32 0, metadata !427, metadata !297}
!444 = metadata !{i32 786688, metadata !124, metadata !"dim0_hsize", metadata !5, i32 224, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [dim0_hsize] [line 224]
!445 = metadata !{i32 786688, metadata !124, metadata !"i", metadata !5, i32 219, metadata !14, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [i] [line 219]
!446 = metadata !{i32 367, i32 0, metadata !447, metadata !297}
!447 = metadata !{i32 786443, metadata !1, metadata !427, i32 367, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!448 = metadata !{i32 369, i32 0, metadata !449, metadata !297}
!449 = metadata !{i32 786443, metadata !1, metadata !447, i32 368, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!450 = metadata !{i32 370, i32 0, metadata !449, metadata !297}
!451 = metadata !{i32 371, i32 0, metadata !449, metadata !297}
!452 = metadata !{i32 375, i32 0, metadata !427, metadata !297}
!453 = metadata !{i32 378, i32 0, metadata !427, metadata !297}
!454 = metadata !{i32 382, i32 0, metadata !455, metadata !297}
!455 = metadata !{i32 786443, metadata !1, metadata !427, i32 380, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!456 = metadata !{i32 431, i32 0, metadata !457, metadata !297}
!457 = metadata !{i32 786443, metadata !1, metadata !458, i32 427, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!458 = metadata !{i32 786443, metadata !1, metadata !455, i32 421, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!459 = metadata !{i32 456, i32 0, metadata !460, metadata !297}
!460 = metadata !{i32 786443, metadata !1, metadata !455, i32 454, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!461 = metadata !{i32 444, i32 0, metadata !462, metadata !297}
!462 = metadata !{i32 786443, metadata !1, metadata !463, i32 444, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!463 = metadata !{i32 786443, metadata !1, metadata !464, i32 443, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!464 = metadata !{i32 786443, metadata !1, metadata !455, i32 435, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!465 = metadata !{i32 446, i32 0, metadata !466, metadata !297}
!466 = metadata !{i32 786443, metadata !1, metadata !462, i32 445, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!467 = metadata !{i32 379, i32 0, metadata !427, metadata !297}
!468 = metadata !{i32 409, i32 0, metadata !455, metadata !297}
!469 = metadata !{i32 413, i32 0, metadata !470, metadata !297}
!470 = metadata !{i32 786443, metadata !1, metadata !455, i32 413, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!471 = metadata !{i32 385, i32 0, metadata !472, metadata !297}
!472 = metadata !{i32 786443, metadata !1, metadata !473, i32 385, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!473 = metadata !{i32 786443, metadata !1, metadata !455, i32 383, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!474 = metadata !{i32 387, i32 0, metadata !475, metadata !297}
!475 = metadata !{i32 786443, metadata !1, metadata !472, i32 386, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!476 = metadata !{i32 388, i32 0, metadata !475, metadata !297}
!477 = metadata !{i32 395, i32 0, metadata !473, metadata !297}
!478 = metadata !{i32 401, i32 0, metadata !479, metadata !297}
!479 = metadata !{i32 786443, metadata !1, metadata !473, i32 401, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!480 = metadata !{i32 403, i32 0, metadata !481, metadata !297}
!481 = metadata !{i32 786443, metadata !1, metadata !479, i32 402, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!482 = metadata !{i32 415, i32 0, metadata !483, metadata !297}
!483 = metadata !{i32 786443, metadata !1, metadata !470, i32 414, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!484 = metadata !{i32 786688, metadata !124, metadata !"typed_vdata", metadata !5, i32 225, metadata !8, i32 0, metadata !297} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 225]
!485 = metadata !{i32 420, i32 0, metadata !455, metadata !297}
!486 = metadata !{i32 422, i32 0, metadata !458, metadata !297}
!487 = metadata !{i32 424, i32 0, metadata !488, metadata !297}
!488 = metadata !{i32 786443, metadata !1, metadata !458, i32 423, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!489 = metadata !{i32 425, i32 0, metadata !488, metadata !297}
!490 = metadata !{i32 436, i32 0, metadata !464, metadata !297}
!491 = metadata !{i32 438, i32 0, metadata !492, metadata !297}
!492 = metadata !{i32 786443, metadata !1, metadata !464, i32 437, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!493 = metadata !{i32 441, i32 0, metadata !492, metadata !297}
!494 = metadata !{i32 447, i32 0, metadata !466, metadata !297}
!495 = metadata !{i32 453, i32 0, metadata !455, metadata !297}
!496 = metadata !{i32 451, i32 0, metadata !455, metadata !297}
!497 = metadata !{i32 464, i32 0, metadata !455, metadata !297}
!498 = metadata !{i32 468, i32 0, metadata !124, metadata !297}
!499 = metadata !{i32 470, i32 0, metadata !124, metadata !297}
!500 = metadata !{i32 77, i32 0, metadata !11, null}
!501 = metadata !{i32 80, i32 0, metadata !107, null}
!502 = metadata !{i32 81, i32 0, metadata !107, null}
!503 = metadata !{i32 82, i32 0, metadata !107, null}
!504 = metadata !{i32 83, i32 0, metadata !107, null}
!505 = metadata !{i32 84, i32 0, metadata !107, null}
!506 = metadata !{i32 85, i32 0, metadata !107, null}
!507 = metadata !{i32 86, i32 0, metadata !107, null}
!508 = metadata !{i32 91, i32 0, metadata !107, null}
!509 = metadata !{i32 92, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !107, i32 92, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!511 = metadata !{i32 94, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 93, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c]
!513 = metadata !{i32 103, i32 0, metadata !107, null}
