; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [71 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"No predefined PUGHSlab routine available to convert '%s' into '%s'\00", align 1
@.str3 = private unnamed_addr constant [106 x i8] c"Datatype conversion routine supplied but no datatype conversion requested. Ignoring conversion routine...\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str4 = private unnamed_addr constant [23 x i8] c"Invalid variable index\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"Invalid timelevel\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"NULL pointer(s) passed as parameters\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"Invalid hyperslab extent parameters\00", align 1
@.str8 = private unnamed_addr constant [40 x i8] c"Invalid hyperslab downsample parameters\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"Couldn't get group info\00", align 1
@.str10 = private unnamed_addr constant [28 x i8] c"Invalid variable group type\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"Invalid hyperslab dimension\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"Given direction vector is a null vector\00", align 1
@.str13 = private unnamed_addr constant [40 x i8] c"Given direction vector isn't orthogonal\00", align 1
@.str14 = private unnamed_addr constant [62 x i8] c"No GH extension for PUGH found. Did you activate thorn PUGH ?\00", align 1
@.str15 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/NewHyperslab.c,v 1.11 2001/12/03 22:10:04 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c() #0 {
entry:
  ret i8* getelementptr inbounds ([96 x i8]* @.str15, i64 0, i64 0), !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define i32 @NewHyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32 %htype, void (i8*, i8*, i32, i32, i32)* %conversion_fn, i32* %global_startpoint, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %free_hdata, i32* %hsize, i32* nocapture %hsize_global, i32* %hoffset_global) #1 {
entry:
  %vinfo.i = alloca %struct.cGroup, align 4
  %vinfo = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !62), !dbg !255
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !63), !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %vtimelvl}, i64 0, metadata !64), !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !65), !dbg !258
  call void @llvm.dbg.value(metadata !{i32 %htype}, i64 0, metadata !66), !dbg !259
  call void @llvm.dbg.value(metadata !{void (i8*, i8*, i32, i32, i32)* %conversion_fn}, i64 0, metadata !67), !dbg !260
  call void @llvm.dbg.value(metadata !{i32* %global_startpoint}, i64 0, metadata !68), !dbg !261
  call void @llvm.dbg.value(metadata !{i32* %directions}, i64 0, metadata !69), !dbg !262
  call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !70), !dbg !263
  call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !71), !dbg !264
  call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !72), !dbg !265
  call void @llvm.dbg.value(metadata !{i32* %free_hdata}, i64 0, metadata !73), !dbg !266
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !74), !dbg !267
  call void @llvm.dbg.value(metadata !{i32* %hsize_global}, i64 0, metadata !75), !dbg !268
  call void @llvm.dbg.value(metadata !{i32* %hoffset_global}, i64 0, metadata !76), !dbg !269
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo}, metadata !99), !dbg !270
  %tobool = icmp eq i8** %hdata, null, !dbg !271
  br i1 %tobool, label %if.end, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  store i8* null, i8** %hdata, align 8, !dbg !272, !tbaa !274
  br label %if.end, !dbg !277

if.end:                                           ; preds = %entry, %if.then
  %tobool2 = icmp eq i32* %free_hdata, null, !dbg !278
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !278

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %free_hdata, align 4, !dbg !279, !tbaa !281
  br label %if.end4, !dbg !282

if.end4:                                          ; preds = %if.end, %if.then3
  %0 = bitcast %struct.cGroup* %vinfo.i to i8*, !dbg !283
  call void @llvm.lifetime.start(i64 32, i8* %0) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !285) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !286) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %vtimelvl}, i64 0, metadata !287) #5, !dbg !283
  call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !288) #5, !dbg !289
  call void @llvm.dbg.value(metadata !{i32* %global_startpoint}, i64 0, metadata !290) #5, !dbg !291
  call void @llvm.dbg.value(metadata !{i32* %directions}, i64 0, metadata !292) #5, !dbg !293
  call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !294) #5, !dbg !295
  call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !296) #5, !dbg !297
  call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !298) #5, !dbg !299
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !300) #5, !dbg !301
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo.i}, metadata !240) #5, !dbg !302
  %cmp.i = icmp slt i32 %vindex, 0, !dbg !303
  br i1 %cmp.i, label %if.then6, label %lor.lhs.false.i, !dbg !303

lor.lhs.false.i:                                  ; preds = %if.end4
  %call.i = call i32 @CCTK_NumVars() #6, !dbg !303
  %cmp1.i = icmp sgt i32 %call.i, %vindex, !dbg !303
  br i1 %cmp1.i, label %if.end.i, label %if.then6, !dbg !303

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cmp2.i = icmp slt i32 %vtimelvl, 0, !dbg !304
  br i1 %cmp2.i, label %if.then6, label %lor.lhs.false3.i, !dbg !304

lor.lhs.false3.i:                                 ; preds = %if.end.i
  %call4.i = call i32 @CCTK_NumTimeLevelsFromVarI(i32 %vindex) #6, !dbg !304
  %cmp5.i = icmp sgt i32 %call4.i, %vtimelvl, !dbg !304
  br i1 %cmp5.i, label %if.end7.i, label %if.then6, !dbg !304

if.end7.i:                                        ; preds = %lor.lhs.false3.i
  %tobool.i = icmp eq i32* %global_startpoint, null, !dbg !305
  %tobool9.i = icmp eq i32* %directions, null, !dbg !305
  %or.cond.i = or i1 %tobool.i, %tobool9.i, !dbg !305
  %tobool11.i = icmp eq i32* %extents, null, !dbg !305
  %or.cond94.i = or i1 %or.cond.i, %tobool11.i, !dbg !305
  %tobool13.i = icmp eq i32* %downsample_, null, !dbg !305
  %or.cond95.i = or i1 %or.cond94.i, %tobool13.i, !dbg !305
  %or.cond96.i = or i1 %or.cond95.i, %tobool, !dbg !305
  %tobool17.i = icmp eq i32* %hsize, null, !dbg !305
  %or.cond97.i = or i1 %or.cond96.i, %tobool17.i, !dbg !305
  br i1 %or.cond97.i, label %if.then6, label %for.cond.preheader.i, !dbg !305

for.cond.preheader.i:                             ; preds = %if.end7.i
  %cmp20105.i = icmp sgt i32 %hdim, 0, !dbg !306
  br i1 %cmp20105.i, label %for.body.i, label %for.end.i, !dbg !306

for.cond.i:                                       ; preds = %if.end23.i
  %1 = trunc i64 %indvars.iv.next111.i to i32, !dbg !306
  %cmp20.i = icmp slt i32 %1, %hdim, !dbg !306
  br i1 %cmp20.i, label %for.body.i, label %for.end.i, !dbg !306

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.cond.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %for.cond.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds i32* %extents, i64 %indvars.iv110.i, !dbg !308
  %2 = load i32* %arrayidx.i, align 4, !dbg !308, !tbaa !281
  %cmp21.i = icmp eq i32 %2, 0, !dbg !308
  br i1 %cmp21.i, label %if.then6, label %if.end23.i, !dbg !308

if.end23.i:                                       ; preds = %for.body.i
  %arrayidx25.i = getelementptr inbounds i32* %downsample_, i64 %indvars.iv110.i, !dbg !310
  %3 = load i32* %arrayidx25.i, align 4, !dbg !310, !tbaa !281
  %cmp26.i = icmp slt i32 %3, 1, !dbg !310
  %indvars.iv.next111.i = add i64 %indvars.iv110.i, 1, !dbg !306
  br i1 %cmp26.i, label %if.then6, label %for.cond.i, !dbg !310

for.end.i:                                        ; preds = %for.cond.i, %for.cond.preheader.i
  %call29.i = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6, !dbg !311
  %call30.i = call i32 @CCTK_GroupData(i32 %call29.i, %struct.cGroup* %vinfo.i) #6, !dbg !311
  %cmp31.i = icmp slt i32 %call30.i, 0, !dbg !311
  br i1 %cmp31.i, label %if.then6, label %if.end33.i, !dbg !311

if.end33.i:                                       ; preds = %for.end.i
  %grouptype.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 0, !dbg !312
  %4 = load i32* %grouptype.i, align 4, !dbg !312, !tbaa !281
  %.off.i = add i32 %4, -2, !dbg !312
  %switch.i = icmp ult i32 %.off.i, 2, !dbg !312
  br i1 %switch.i, label %if.end38.i, label %if.then6, !dbg !312

if.end38.i:                                       ; preds = %if.end33.i
  %cmp39.i = icmp slt i32 %hdim, 1, !dbg !313
  br i1 %cmp39.i, label %if.then6, label %lor.lhs.false40.i, !dbg !313

lor.lhs.false40.i:                                ; preds = %if.end38.i
  %dim.i = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 4, !dbg !313
  %5 = load i32* %dim.i, align 4, !dbg !313, !tbaa !281
  %cmp41.i = icmp slt i32 %5, %hdim, !dbg !313
  br i1 %cmp41.i, label %if.then6, label %for.cond44.preheader.i, !dbg !313

for.cond44.preheader.i:                           ; preds = %lor.lhs.false40.i
  br i1 %cmp20105.i, label %for.cond47.preheader.lr.ph.i, label %checkParameters.exit, !dbg !314

for.cond47.preheader.lr.ph.i:                     ; preds = %for.cond44.preheader.i
  %cmp4998.i = icmp sgt i32 %5, 0, !dbg !316
  br i1 %cmp4998.i, label %for.body50.i.preheader, label %if.then6

for.body50.i.preheader:                           ; preds = %for.inc67.i, %for.cond47.preheader.lr.ph.i
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %for.inc67.i ], [ 0, %for.cond47.preheader.lr.ph.i ]
  %6 = trunc i64 %indvars.iv108.i to i32, !dbg !319
  %mul.i = mul nsw i32 %6, %5, !dbg !319
  %7 = sext i32 %mul.i to i64, !dbg !319
  br label %for.body50.i, !dbg !319

for.body50.i:                                     ; preds = %for.body50.i.preheader, %for.body50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body50.i ], [ 0, %for.body50.i.preheader ]
  %num_directions.0100.i = phi i32 [ %num_directions.0.inc56.i, %for.body50.i ], [ 0, %for.body50.i.preheader ]
  %8 = add nsw i64 %indvars.iv.i, %7, !dbg !319
  %arrayidx53.i = getelementptr inbounds i32* %directions, i64 %8, !dbg !319
  %9 = load i32* %arrayidx53.i, align 4, !dbg !319, !tbaa !281
  %not.tobool54.i = icmp ne i32 %9, 0, !dbg !319
  %inc56.i = zext i1 %not.tobool54.i to i32, !dbg !319
  %num_directions.0.inc56.i = add nsw i32 %inc56.i, %num_directions.0100.i, !dbg !319
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !316
  %lftr.wideiv1157 = trunc i64 %indvars.iv.next.i to i32, !dbg !316
  %exitcond1158 = icmp eq i32 %lftr.wideiv1157, %5, !dbg !316
  br i1 %exitcond1158, label %for.end60.i, label %for.body50.i, !dbg !316

for.end60.i:                                      ; preds = %for.body50.i
  switch i32 %num_directions.0.inc56.i, label %if.then6.loopexit [
    i32 0, label %if.then6
    i32 1, label %for.inc67.i
  ], !dbg !321

for.inc67.i:                                      ; preds = %for.end60.i
  %indvars.iv.next109.i = add i64 %indvars.iv108.i, 1, !dbg !314
  %10 = trunc i64 %indvars.iv.next109.i to i32, !dbg !314
  %cmp45.i = icmp slt i32 %10, %hdim, !dbg !314
  br i1 %cmp45.i, label %for.body50.i.preheader, label %checkParameters.exit, !dbg !314

checkParameters.exit:                             ; preds = %for.inc67.i, %for.cond44.preheader.i
  %call70.i = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !322
  call void @llvm.lifetime.end(i64 32, i8* %0) #5, !dbg !323
  call void @llvm.dbg.value(metadata !{i8* %retval.0.i1088}, i64 0, metadata !214), !dbg !284
  %not.tobool71.i = icmp eq %struct.PGH* %call70.i, null, !dbg !324
  br i1 %not.tobool71.i, label %if.then6, label %if.end8, !dbg !324

if.then6.loopexit:                                ; preds = %for.end60.i
  br label %if.then6

if.then6:                                         ; preds = %for.body.i, %if.end23.i, %for.cond47.preheader.lr.ph.i, %for.end60.i, %if.then6.loopexit, %checkParameters.exit, %if.end38.i, %lor.lhs.false40.i, %if.end33.i, %for.end.i, %if.end7.i, %if.end.i, %lor.lhs.false3.i, %if.end4, %lor.lhs.false.i
  %retval.0.i1088 = phi i8* [ getelementptr inbounds ([62 x i8]* @.str14, i64 0, i64 0), %checkParameters.exit ], [ getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), %lor.lhs.false.i ], [ getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), %if.end4 ], [ getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), %lor.lhs.false3.i ], [ getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0), %if.end.i ], [ getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), %if.end7.i ], [ getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), %for.end.i ], [ getelementptr inbounds ([28 x i8]* @.str10, i64 0, i64 0), %if.end33.i ], [ getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), %lor.lhs.false40.i ], [ getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), %if.end38.i ], [ getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), %if.then6.loopexit ], [ getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), %for.end60.i ], [ getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), %for.cond47.preheader.lr.ph.i ], [ getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), %for.body.i ], [ getelementptr inbounds ([40 x i8]* @.str8, i64 0, i64 0), %if.end23.i ]
  %call7 = call i32 @CCTK_Warn(i32 1, i32 270, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %retval.0.i1088) #6, !dbg !325
  br label %return, !dbg !327

if.end8:                                          ; preds = %checkParameters.exit
  %call9 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6, !dbg !328
  %call10 = call i32 @CCTK_GroupData(i32 %call9, %struct.cGroup* %vinfo) #6, !dbg !328
  %vartype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1, !dbg !329
  %11 = load i32* %vartype, align 4, !dbg !329, !tbaa !281
  %cmp = icmp eq i32 %11, %htype, !dbg !329
  %tobool24 = icmp eq void (i8*, i8*, i32, i32, i32)* %conversion_fn, null, !dbg !330
  br i1 %cmp, label %if.else, label %if.then11, !dbg !329

if.then11:                                        ; preds = %if.end8
  br i1 %tobool24, label %if.then13, label %if.end28, !dbg !331

if.then13:                                        ; preds = %if.then11
  %call15 = call void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %11, i32 %htype) #6, !dbg !333
  call void @llvm.dbg.value(metadata !{void (i8*, i8*, i32, i32, i32)* %call15}, i64 0, metadata !67), !dbg !333
  %tobool16 = icmp eq void (i8*, i8*, i32, i32, i32)* %call15, null, !dbg !335
  br i1 %tobool16, label %if.then17, label %if.end28, !dbg !335

if.then17:                                        ; preds = %if.then13
  %12 = load i32* %vartype, align 4, !dbg !336, !tbaa !281
  %call19 = call i8* @CCTK_VarTypeName(i32 %12) #6, !dbg !336
  %call20 = call i8* @CCTK_VarTypeName(i32 %htype) #6, !dbg !336
  %call21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 287, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i8* %call19, i8* %call20) #6, !dbg !336
  br label %return, !dbg !338

if.else:                                          ; preds = %if.end8
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !330

if.then25:                                        ; preds = %if.else
  %call26 = call i32 @CCTK_Warn(i32 8, i32 298, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !339
  call void @llvm.dbg.value(metadata !341, i64 0, metadata !67), !dbg !342
  br label %if.end28, !dbg !343

if.end28:                                         ; preds = %if.then13, %if.else, %if.then25, %if.then11
  %conversion_fn.addr.0 = phi void (i8*, i8*, i32, i32, i32)* [ %call15, %if.then13 ], [ %conversion_fn, %if.then11 ], [ null, %if.then25 ], [ null, %if.else ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !344
  %dim = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4, !dbg !345
  %13 = load i32* %dim, align 4, !dbg !345, !tbaa !281
  %mul = shl nsw i32 %13, 3, !dbg !345
  %conv = sext i32 %mul to i64, !dbg !345
  %mul29 = shl nsw i64 %conv, 2, !dbg !345
  %call30 = call noalias i8* @malloc(i64 %mul29) #6, !dbg !345
  %14 = bitcast i8* %call30 to i32*, !dbg !345
  call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !77), !dbg !345
  %idx.ext = sext i32 %13 to i64, !dbg !346
  %add.ptr = getelementptr inbounds i32* %14, i64 %idx.ext, !dbg !346
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !78), !dbg !346
  %mul34 = shl nsw i32 %13, 1, !dbg !347
  %idx.ext35 = sext i32 %mul34 to i64, !dbg !347
  %add.ptr36 = getelementptr inbounds i32* %14, i64 %idx.ext35, !dbg !347
  call void @llvm.dbg.value(metadata !{i32* %add.ptr36}, i64 0, metadata !79), !dbg !347
  %mul38 = mul nsw i32 %13, 3, !dbg !348
  %idx.ext39 = sext i32 %mul38 to i64, !dbg !348
  %mul42 = shl nsw i32 %13, 2, !dbg !349
  %idx.ext43 = sext i32 %mul42 to i64, !dbg !349
  %mul46 = mul nsw i32 %13, 5, !dbg !350
  %idx.ext47 = sext i32 %mul46 to i64, !dbg !350
  %add.ptr48 = getelementptr inbounds i32* %14, i64 %idx.ext47, !dbg !350
  call void @llvm.dbg.value(metadata !{i32* %add.ptr48}, i64 0, metadata !80), !dbg !350
  %mul50 = mul nsw i32 %13, 6, !dbg !351
  %idx.ext51 = sext i32 %mul50 to i64, !dbg !351
  %add.ptr52 = getelementptr inbounds i32* %14, i64 %idx.ext51, !dbg !351
  call void @llvm.dbg.value(metadata !{i32* %add.ptr52}, i64 0, metadata !84), !dbg !351
  %mul54 = mul nsw i32 %13, 7, !dbg !352
  %idx.ext55 = sext i32 %mul54 to i64, !dbg !352
  %add.ptr56 = getelementptr inbounds i32* %14, i64 %idx.ext55, !dbg !352
  call void @llvm.dbg.value(metadata !{i32* %add.ptr56}, i64 0, metadata !83), !dbg !352
  %15 = bitcast i32* %add.ptr52 to i8*, !dbg !353
  %16 = bitcast i32* %directions to i8*, !dbg !353
  %mul59 = shl nsw i64 %idx.ext, 2, !dbg !353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 %mul59, i32 4, i1 false), !dbg !353
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !87), !dbg !355
  %cmp601122 = icmp sgt i32 %hdim, 1, !dbg !355
  br i1 %cmp601122, label %for.cond62.preheader.lr.ph, label %for.end73, !dbg !355

for.cond62.preheader.lr.ph:                       ; preds = %if.end28
  %cmp641120 = icmp sgt i32 %13, 0, !dbg !357
  br label %for.cond62.preheader, !dbg !355

for.cond62.preheader:                             ; preds = %for.inc71, %for.cond62.preheader.lr.ph
  %indvars.iv1153 = phi i64 [ 1, %for.cond62.preheader.lr.ph ], [ %indvars.iv.next1154, %for.inc71 ]
  br i1 %cmp641120, label %for.body66, label %for.inc71, !dbg !357

for.body66:                                       ; preds = %for.cond62.preheader, %for.body66
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %for.body66 ], [ 0, %for.cond62.preheader ]
  %17 = trunc i64 %indvars.iv1153 to i32, !dbg !360
  %mul68 = mul nsw i32 %13, %17, !dbg !360
  %18 = sext i32 %mul68 to i64, !dbg !360
  %19 = add nsw i64 %18, %indvars.iv1148, !dbg !360
  %arrayidx = getelementptr inbounds i32* %directions, i64 %19, !dbg !360
  %20 = load i32* %arrayidx, align 4, !dbg !360, !tbaa !281
  %add.ptr52.sum1077 = add i64 %indvars.iv1148, %idx.ext51, !dbg !360
  %arrayidx70 = getelementptr inbounds i32* %14, i64 %add.ptr52.sum1077, !dbg !360
  %21 = load i32* %arrayidx70, align 4, !dbg !360, !tbaa !281
  %or = or i32 %21, %20, !dbg !360
  store i32 %or, i32* %arrayidx70, align 4, !dbg !360, !tbaa !281
  %indvars.iv.next1149 = add i64 %indvars.iv1148, 1, !dbg !357
  %lftr.wideiv1151 = trunc i64 %indvars.iv.next1149 to i32, !dbg !357
  %exitcond1152 = icmp eq i32 %lftr.wideiv1151, %13, !dbg !357
  br i1 %exitcond1152, label %for.inc71, label %for.body66, !dbg !357

for.inc71:                                        ; preds = %for.body66, %for.cond62.preheader
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1, !dbg !355
  %lftr.wideiv1155 = trunc i64 %indvars.iv.next1154 to i32, !dbg !355
  %exitcond1156 = icmp eq i32 %lftr.wideiv1155, %hdim, !dbg !355
  br i1 %exitcond1156, label %for.end73, label %for.cond62.preheader, !dbg !355

for.end73:                                        ; preds = %for.inc71, %if.end28
  %call74 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !362
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call74}, i64 0, metadata !112), !dbg !362
  %idxprom75 = sext i32 %vtimelvl to i64, !dbg !363
  %idxprom76 = sext i32 %vindex to i64, !dbg !363
  %variables = getelementptr inbounds %struct.PGH* %call74, i64 0, i32 7, !dbg !363
  %22 = load i8**** %variables, align 8, !dbg !363, !tbaa !274
  %arrayidx77 = getelementptr inbounds i8*** %22, i64 %idxprom76, !dbg !363
  %23 = load i8*** %arrayidx77, align 8, !dbg !363, !tbaa !274
  %arrayidx78 = getelementptr inbounds i8** %23, i64 %idxprom75, !dbg !363
  %24 = load i8** %arrayidx78, align 8, !dbg !363, !tbaa !274
  %25 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !364, !tbaa !274
  %call79 = call i32 %25(%struct.cGH* %GH) #6, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %call79}, i64 0, metadata !86), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !365), !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32* %global_startpoint}, i64 0, metadata !368), !dbg !369
  tail call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !370), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !372), !dbg !373
  %extras.i = getelementptr inbounds i8* %24, i64 56, !dbg !374
  %26 = bitcast i8* %extras.i to %struct.PGExtras**, !dbg !374
  %27 = load %struct.PGExtras** %26, align 8, !dbg !374, !tbaa !274
  %dim.i1078 = getelementptr inbounds %struct.PGExtras* %27, i64 0, i32 0, !dbg !374
  %28 = load i32* %dim.i1078, align 4, !dbg !374, !tbaa !281
  %cmp.i1079 = icmp eq i32 %28, %hdim, !dbg !374
  %conv.i = zext i1 %cmp.i1079 to i32, !dbg !374
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !375), !dbg !374
  %or.cond.i1080 = and i1 %cmp.i1079, %cmp20105.i, !dbg !376
  br i1 %or.cond.i1080, label %for.body.lr.ph.i, label %checkFullHyperslab.exit, !dbg !376

for.body.lr.ph.i:                                 ; preds = %for.end73
  %connectivity.i = getelementptr inbounds i8* %24, i64 64, !dbg !377
  %29 = bitcast i8* %connectivity.i to %struct.PConnectivity**, !dbg !377
  %30 = load %struct.PConnectivity** %29, align 8, !dbg !377, !tbaa !274
  %perme.i = getelementptr inbounds %struct.PConnectivity* %30, i64 0, i32 3, !dbg !377
  %31 = load i32** %perme.i, align 8, !dbg !377, !tbaa !274
  br label %for.body.i1085, !dbg !381

for.body.i1085:                                   ; preds = %for.body.i1085, %for.body.lr.ph.i
  %indvars.iv.i1081 = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i1084, %for.body.i1085 ]
  %is_full_hyperslab.037.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %and21.i, %for.body.i1085 ]
  %arrayidx.i1082 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv.i1081, !dbg !382
  %32 = load i32* %arrayidx.i1082, align 4, !dbg !382, !tbaa !281
  %cmp5.i1083 = icmp eq i32 %32, 0, !dbg !382
  %conv6.i = zext i1 %cmp5.i1083 to i32, !dbg !382
  %and.i = and i32 %conv6.i, %is_full_hyperslab.037.i, !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %and.i}, i64 0, metadata !375), !dbg !382
  %arrayidx8.i = getelementptr inbounds i32* %extents, i64 %indvars.iv.i1081, !dbg !383
  %33 = load i32* %arrayidx8.i, align 4, !dbg !383, !tbaa !281
  %cmp9.i = icmp slt i32 %33, 1, !dbg !383
  %conv10.i = zext i1 %cmp9.i to i32, !dbg !383
  %and11.i = and i32 %and.i, %conv10.i, !dbg !383
  tail call void @llvm.dbg.value(metadata !{i32 %and11.i}, i64 0, metadata !375), !dbg !383
  %arrayidx13.i = getelementptr inbounds i32* %downsample_, i64 %indvars.iv.i1081, !dbg !384
  %34 = load i32* %arrayidx13.i, align 4, !dbg !384, !tbaa !281
  %cmp14.i = icmp slt i32 %34, 2, !dbg !384
  %conv15.i = zext i1 %cmp14.i to i32, !dbg !384
  %and16.i = and i32 %and11.i, %conv15.i, !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %and16.i}, i64 0, metadata !375), !dbg !384
  %arrayidx18.i = getelementptr inbounds i32* %31, i64 %indvars.iv.i1081, !dbg !377
  %35 = load i32* %arrayidx18.i, align 4, !dbg !377, !tbaa !281
  %cmp19.i = icmp eq i32 %35, 0, !dbg !377
  %conv20.i = zext i1 %cmp19.i to i32, !dbg !377
  %and21.i = and i32 %and16.i, %conv20.i, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %and21.i}, i64 0, metadata !375), !dbg !377
  %indvars.iv.next.i1084 = add i64 %indvars.iv.i1081, 1, !dbg !381
  %lftr.wideiv = trunc i64 %indvars.iv.next.i1084 to i32, !dbg !381
  %exitcond = icmp eq i32 %lftr.wideiv, %hdim, !dbg !381
  br i1 %exitcond, label %checkFullHyperslab.exit, label %for.body.i1085, !dbg !381

checkFullHyperslab.exit:                          ; preds = %for.body.i1085, %for.end73
  %is_full_hyperslab.1.i = phi i32 [ %conv.i, %for.end73 ], [ %and21.i, %for.body.i1085 ]
  call void @llvm.dbg.value(metadata !{i32 %is_full_hyperslab.1.i}, i64 0, metadata !88), !dbg !366
  %tobool81 = icmp ne i32 %is_full_hyperslab.1.i, 0, !dbg !385
  br i1 %tobool81, label %if.then82, label %for.cond103.preheader, !dbg !385

for.cond103.preheader:                            ; preds = %checkFullHyperslab.exit
  %36 = load i32* %dim, align 4, !dbg !386, !tbaa !281
  %cmp1051117 = icmp sgt i32 %36, 0, !dbg !386
  br i1 %cmp1051117, label %for.body107, label %if.then465, !dbg !386

if.then82:                                        ; preds = %checkFullHyperslab.exit
  %37 = bitcast i32* %add.ptr to i8*, !dbg !388
  %38 = load i32* %dim, align 4, !dbg !388, !tbaa !281
  %conv84 = sext i32 %38 to i64, !dbg !388
  %mul85 = shl nsw i64 %conv84, 2, !dbg !388
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 %mul85, i32 4, i1 false), !dbg !388
  %39 = bitcast i32* %add.ptr36 to i8*, !dbg !390
  %lnsize = getelementptr inbounds %struct.PGExtras* %27, i64 0, i32 6, !dbg !390
  %40 = load i32** %lnsize, align 8, !dbg !390, !tbaa !274
  %41 = bitcast i32* %40 to i8*, !dbg !390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %41, i64 %mul85, i32 4, i1 false), !dbg !390
  %42 = bitcast i32* %add.ptr48 to i8*, !dbg !391
  %43 = bitcast i32* %downsample_ to i8*, !dbg !391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %mul85, i32 4, i1 false), !dbg !391
  %44 = bitcast i32* %hsize to i8*, !dbg !392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %41, i64 %mul85, i32 4, i1 false), !dbg !392
  %45 = bitcast i32* %hsize_global to i8*, !dbg !393
  %46 = load %struct.PGExtras** %26, align 8, !dbg !393, !tbaa !274
  %nsize = getelementptr inbounds %struct.PGExtras* %46, i64 0, i32 1, !dbg !393
  %47 = load i32** %nsize, align 8, !dbg !393, !tbaa !274
  %48 = bitcast i32* %47 to i8*, !dbg !393
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %48, i64 %mul85, i32 4, i1 false), !dbg !393
  %49 = load %struct.PGExtras** %26, align 8, !dbg !394, !tbaa !274
  %npoints = getelementptr inbounds %struct.PGExtras* %49, i64 0, i32 7, !dbg !394
  %50 = load i32* %npoints, align 4, !dbg !394, !tbaa !281
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !92), !dbg !394
  br label %if.end462, !dbg !395

for.cond163.preheader:                            ; preds = %for.inc160
  br i1 %cmp1051117, label %for.body167.lr.ph, label %if.then465, !dbg !396

for.body167.lr.ph:                                ; preds = %for.cond163.preheader
  %stagtype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !397
  %idxprom172 = sext i32 %call79 to i64, !dbg !398
  br label %for.body167, !dbg !396

for.body107:                                      ; preds = %for.cond103.preheader, %for.inc160
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %for.inc160 ], [ 0, %for.cond103.preheader ]
  %hdim.addr.01119 = phi i32 [ %hdim.addr.1, %for.inc160 ], [ 0, %for.cond103.preheader ]
  %add.ptr52.sum1072 = add i64 %indvars.iv1146, %idx.ext51, !dbg !399
  %arrayidx109 = getelementptr inbounds i32* %14, i64 %add.ptr52.sum1072, !dbg !399
  %51 = load i32* %arrayidx109, align 4, !dbg !399, !tbaa !281
  %tobool110 = icmp eq i32 %51, 0, !dbg !399
  br i1 %tobool110, label %if.else151, label %if.then111, !dbg !399

if.then111:                                       ; preds = %for.body107
  %idxprom112 = sext i32 %hdim.addr.01119 to i64, !dbg !401
  %arrayidx113 = getelementptr inbounds i32* %extents, i64 %idxprom112, !dbg !401
  %52 = load i32* %arrayidx113, align 4, !dbg !401, !tbaa !281
  %cmp114 = icmp sgt i32 %52, 0, !dbg !401
  br i1 %cmp114, label %cond.true, label %cond.false137, !dbg !401

cond.true:                                        ; preds = %if.then111
  %arrayidx117 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv1146, !dbg !401
  %53 = load i32* %arrayidx117, align 4, !dbg !401, !tbaa !281
  %add120 = add nsw i32 %53, %52, !dbg !401
  %nsize123 = getelementptr inbounds %struct.PGExtras* %27, i64 0, i32 1, !dbg !401
  %54 = load i32** %nsize123, align 8, !dbg !401, !tbaa !274
  %arrayidx124 = getelementptr inbounds i32* %54, i64 %indvars.iv1146, !dbg !401
  %55 = load i32* %arrayidx124, align 4, !dbg !401, !tbaa !281
  %cmp125 = icmp slt i32 %add120, %55, !dbg !401
  %add120. = select i1 %cmp125, i32 %add120, i32 %55, !dbg !401
  br label %cond.end142, !dbg !401

cond.false137:                                    ; preds = %if.then111
  %nsize140 = getelementptr inbounds %struct.PGExtras* %27, i64 0, i32 1, !dbg !401
  %56 = load i32** %nsize140, align 8, !dbg !401, !tbaa !274
  %arrayidx141 = getelementptr inbounds i32* %56, i64 %indvars.iv1146, !dbg !401
  %57 = load i32* %arrayidx141, align 4, !dbg !401, !tbaa !281
  br label %cond.end142, !dbg !401

cond.end142:                                      ; preds = %cond.true, %cond.false137
  %cond143 = phi i32 [ %57, %cond.false137 ], [ %add120., %cond.true ], !dbg !401
  %add.ptr44.sum1075 = add i64 %indvars.iv1146, %idx.ext43, !dbg !401
  %arrayidx145 = getelementptr inbounds i32* %14, i64 %add.ptr44.sum1075, !dbg !401
  store i32 %cond143, i32* %arrayidx145, align 4, !dbg !401, !tbaa !281
  %arrayidx147 = getelementptr inbounds i32* %downsample_, i64 %idxprom112, !dbg !403
  %58 = load i32* %arrayidx147, align 4, !dbg !403, !tbaa !281
  %add.ptr48.sum1076 = add i64 %indvars.iv1146, %idx.ext47, !dbg !403
  %arrayidx149 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1076, !dbg !403
  store i32 %58, i32* %arrayidx149, align 4, !dbg !403, !tbaa !281
  %inc150 = add nsw i32 %hdim.addr.01119, 1, !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %inc150}, i64 0, metadata !65), !dbg !404
  br label %for.inc160, !dbg !405

if.else151:                                       ; preds = %for.body107
  %arrayidx153 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv1146, !dbg !406
  %59 = load i32* %arrayidx153, align 4, !dbg !406, !tbaa !281
  %add154 = add nsw i32 %59, 1, !dbg !406
  %add.ptr44.sum1073 = add i64 %indvars.iv1146, %idx.ext43, !dbg !406
  %arrayidx156 = getelementptr inbounds i32* %14, i64 %add.ptr44.sum1073, !dbg !406
  store i32 %add154, i32* %arrayidx156, align 4, !dbg !406, !tbaa !281
  %add.ptr48.sum1074 = add i64 %indvars.iv1146, %idx.ext47, !dbg !408
  %arrayidx158 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1074, !dbg !408
  store i32 1, i32* %arrayidx158, align 4, !dbg !408, !tbaa !281
  br label %for.inc160

for.inc160:                                       ; preds = %cond.end142, %if.else151
  %hdim.addr.1 = phi i32 [ %inc150, %cond.end142 ], [ %hdim.addr.01119, %if.else151 ]
  %indvars.iv.next1147 = add i64 %indvars.iv1146, 1, !dbg !386
  %60 = trunc i64 %indvars.iv.next1147 to i32, !dbg !386
  %cmp105 = icmp slt i32 %60, %36, !dbg !386
  br i1 %cmp105, label %for.body107, label %for.cond163.preheader, !dbg !386

for.cond268.preheader:                            ; preds = %for.inc265
  %cmp2701109 = icmp sgt i32 %74, 0, !dbg !409
  br i1 %cmp2701109, label %for.body272.lr.ph, label %if.then465, !dbg !409

for.body272.lr.ph:                                ; preds = %for.cond268.preheader
  %stagtype273 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !411
  %idxprom282 = sext i32 %call79 to i64, !dbg !413
  %connectivity = getelementptr inbounds i8* %24, i64 64, !dbg !414
  %61 = bitcast i8* %connectivity to %struct.PConnectivity**, !dbg !414
  br label %for.body272, !dbg !409

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc265
  %indvars.iv1144 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next1145, %for.inc265 ]
  %62 = load i32* %stagtype, align 4, !dbg !397, !tbaa !281
  %63 = trunc i64 %indvars.iv1144 to i32, !dbg !397
  %call168 = call i32 @CCTK_StaggerDirIndex(i32 %63, i32 %62) #6, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %call168}, i64 0, metadata !85), !dbg !397
  %arrayidx170 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv1144, !dbg !398
  %64 = load i32* %arrayidx170, align 4, !dbg !398, !tbaa !281
  %65 = load %struct.PGExtras** %26, align 8, !dbg !398, !tbaa !274
  %lb = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 3, !dbg !398
  %66 = load i32*** %lb, align 8, !dbg !398, !tbaa !274
  %arrayidx174 = getelementptr inbounds i32** %66, i64 %idxprom172, !dbg !398
  %67 = load i32** %arrayidx174, align 8, !dbg !398, !tbaa !274
  %arrayidx175 = getelementptr inbounds i32* %67, i64 %indvars.iv1144, !dbg !398
  %68 = load i32* %arrayidx175, align 4, !dbg !398, !tbaa !281
  %idxprom177 = sext i32 %call168 to i64, !dbg !398
  %arrayidx180 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %idxprom177, i64 1, !dbg !398
  %69 = load i32** %arrayidx180, align 8, !dbg !398, !tbaa !274
  %arrayidx181 = getelementptr inbounds i32* %69, i64 %indvars.iv1144, !dbg !398
  %70 = load i32* %arrayidx181, align 4, !dbg !398, !tbaa !281
  %add182 = add nsw i32 %70, %68, !dbg !398
  %cmp183 = icmp slt i32 %64, %add182, !dbg !398
  br i1 %cmp183, label %if.then185, label %if.else261, !dbg !398

if.then185:                                       ; preds = %for.body167
  %arrayidx199 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %idxprom177, i64 0, !dbg !416
  %71 = load i32** %arrayidx199, align 8, !dbg !416, !tbaa !274
  %arrayidx200 = getelementptr inbounds i32* %71, i64 %indvars.iv1144, !dbg !416
  %72 = load i32* %arrayidx200, align 4, !dbg !416, !tbaa !281
  %add201 = add nsw i32 %72, %68, !dbg !416
  %cmp202 = icmp slt i32 %64, %add201, !dbg !416
  br i1 %cmp202, label %if.then204, label %if.else255, !dbg !416

if.then204:                                       ; preds = %if.then185
  %sub = sub nsw i32 %add201, %64, !dbg !417
  %add.ptr48.sum1070 = add i64 %indvars.iv1144, %idx.ext47, !dbg !417
  %arrayidx223 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1070, !dbg !417
  %73 = load i32* %arrayidx223, align 4, !dbg !417, !tbaa !281
  %div = sdiv i32 %sub, %73, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !215), !dbg !417
  %rem = srem i32 %sub, %73, !dbg !418
  %not.tobool243 = icmp ne i32 %rem, 0, !dbg !418
  %inc245 = zext i1 %not.tobool243 to i32, !dbg !418
  %div.inc245 = add nsw i32 %inc245, %div, !dbg !418
  %mul251 = mul nsw i32 %div.inc245, %73, !dbg !419
  %add252 = add nsw i32 %mul251, %64, !dbg !419
  %add.ptr40.sum1071 = add i64 %indvars.iv1144, %idx.ext39, !dbg !419
  %arrayidx254 = getelementptr inbounds i32* %14, i64 %add.ptr40.sum1071, !dbg !419
  store i32 %add252, i32* %arrayidx254, align 4, !dbg !419, !tbaa !281
  br label %for.inc265, !dbg !420

if.else255:                                       ; preds = %if.then185
  %add.ptr40.sum1069 = add i64 %indvars.iv1144, %idx.ext39, !dbg !421
  %arrayidx259 = getelementptr inbounds i32* %14, i64 %add.ptr40.sum1069, !dbg !421
  store i32 %64, i32* %arrayidx259, align 4, !dbg !421, !tbaa !281
  br label %for.inc265

if.else261:                                       ; preds = %for.body167
  %add.ptr40.sum1068 = add i64 %indvars.iv1144, %idx.ext39, !dbg !423
  %arrayidx263 = getelementptr inbounds i32* %14, i64 %add.ptr40.sum1068, !dbg !423
  store i32 -1, i32* %arrayidx263, align 4, !dbg !423, !tbaa !281
  br label %for.inc265

for.inc265:                                       ; preds = %if.else261, %if.else255, %if.then204
  %indvars.iv.next1145 = add i64 %indvars.iv1144, 1, !dbg !396
  %74 = load i32* %dim, align 4, !dbg !396, !tbaa !281
  %75 = trunc i64 %indvars.iv.next1145 to i32, !dbg !396
  %cmp165 = icmp slt i32 %75, %74, !dbg !396
  br i1 %cmp165, label %for.body167, label %for.cond268.preheader, !dbg !396

for.body272:                                      ; preds = %for.body272.lr.ph, %for.inc459
  %indvars.iv1142 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next1143, %for.inc459 ]
  %hdim.addr.21112 = phi i32 [ 0, %for.body272.lr.ph ], [ %hdim.addr.3, %for.inc459 ]
  %totals.01110 = phi i32 [ 1, %for.body272.lr.ph ], [ %totals.2, %for.inc459 ]
  %76 = load i32* %stagtype273, align 4, !dbg !411, !tbaa !281
  %77 = trunc i64 %indvars.iv1142 to i32, !dbg !411
  %call274 = call i32 @CCTK_StaggerDirIndex(i32 %77, i32 %76) #6, !dbg !411
  call void @llvm.dbg.value(metadata !{i32 %call274}, i64 0, metadata !85), !dbg !411
  %add.ptr40.sum1057 = add i64 %indvars.iv1142, %idx.ext39, !dbg !413
  %arrayidx276 = getelementptr inbounds i32* %14, i64 %add.ptr40.sum1057, !dbg !413
  %78 = load i32* %arrayidx276, align 4, !dbg !413, !tbaa !281
  %cmp277 = icmp sgt i32 %78, -1, !dbg !413
  %79 = load %struct.PGExtras** %26, align 8, !dbg !413, !tbaa !274
  %lb284 = getelementptr inbounds %struct.PGExtras* %79, i64 0, i32 3, !dbg !413
  %80 = load i32*** %lb284, align 8, !dbg !413, !tbaa !274
  %arrayidx285 = getelementptr inbounds i32** %80, i64 %idxprom282, !dbg !413
  %81 = load i32** %arrayidx285, align 8, !dbg !413, !tbaa !274
  %arrayidx286 = getelementptr inbounds i32* %81, i64 %indvars.iv1142, !dbg !413
  %82 = load i32* %arrayidx286, align 4, !dbg !413, !tbaa !281
  %idxprom288 = sext i32 %call274 to i64, !dbg !413
  br i1 %cmp277, label %land.lhs.true, label %if.else309, !dbg !413

land.lhs.true:                                    ; preds = %for.body272
  %arrayidx292 = getelementptr inbounds %struct.PGExtras* %79, i64 0, i32 13, i64 %idxprom288, i64 1, !dbg !413
  %83 = load i32** %arrayidx292, align 8, !dbg !413, !tbaa !274
  %arrayidx293 = getelementptr inbounds i32* %83, i64 %indvars.iv1142, !dbg !413
  %84 = load i32* %arrayidx293, align 4, !dbg !413, !tbaa !281
  %add294 = add nsw i32 %84, %82, !dbg !413
  %cmp295 = icmp slt i32 %78, %add294, !dbg !413
  br i1 %cmp295, label %if.then297, label %if.else309, !dbg !413

if.then297:                                       ; preds = %land.lhs.true
  %sub306 = sub nsw i32 %78, %82, !dbg !425
  %add.ptr.sum1067 = add i64 %indvars.iv1142, %idx.ext, !dbg !425
  %arrayidx308 = getelementptr inbounds i32* %14, i64 %add.ptr.sum1067, !dbg !425
  store i32 %sub306, i32* %arrayidx308, align 4, !dbg !425, !tbaa !281
  br label %if.end312, !dbg !427

if.else309:                                       ; preds = %for.body272, %land.lhs.true
  %add.ptr.sum1058 = add i64 %indvars.iv1142, %idx.ext, !dbg !428
  %arrayidx311 = getelementptr inbounds i32* %14, i64 %add.ptr.sum1058, !dbg !428
  store i32 -1, i32* %arrayidx311, align 4, !dbg !428, !tbaa !281
  br label %if.end312

if.end312:                                        ; preds = %if.else309, %if.then297
  %add.ptr44.sum = add i64 %indvars.iv1142, %idx.ext43, !dbg !430
  %arrayidx314 = getelementptr inbounds i32* %14, i64 %add.ptr44.sum, !dbg !430
  %85 = load i32* %arrayidx314, align 4, !dbg !430, !tbaa !281
  %arrayidx326 = getelementptr inbounds %struct.PGExtras* %79, i64 0, i32 13, i64 %idxprom288, i64 0, !dbg !430
  %86 = load i32** %arrayidx326, align 8, !dbg !430, !tbaa !274
  %arrayidx327 = getelementptr inbounds i32* %86, i64 %indvars.iv1142, !dbg !430
  %87 = load i32* %arrayidx327, align 4, !dbg !430, !tbaa !281
  %add328 = add nsw i32 %87, %82, !dbg !430
  %cmp329 = icmp sgt i32 %85, %add328, !dbg !430
  br i1 %cmp329, label %if.then331, label %if.else372, !dbg !430

if.then331:                                       ; preds = %if.end312
  %arrayidx337 = getelementptr inbounds %struct.PGExtras* %79, i64 0, i32 13, i64 %idxprom288, i64 1, !dbg !431
  %88 = load i32** %arrayidx337, align 8, !dbg !431, !tbaa !274
  %arrayidx338 = getelementptr inbounds i32* %88, i64 %indvars.iv1142, !dbg !431
  %89 = load i32* %arrayidx338, align 4, !dbg !431, !tbaa !281
  %sub347 = sub nsw i32 %85, %82, !dbg !431
  %cmp348 = icmp slt i32 %89, %sub347, !dbg !431
  %.sub347 = select i1 %cmp348, i32 %89, i32 %sub347, !dbg !431
  %add.ptr36.sum1066 = add i64 %indvars.iv1142, %idx.ext35, !dbg !431
  %arrayidx371 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum1066, !dbg !431
  store i32 %.sub347, i32* %arrayidx371, align 4, !dbg !431, !tbaa !281
  br label %if.end375, !dbg !433

if.else372:                                       ; preds = %if.end312
  %add.ptr36.sum1059 = add i64 %indvars.iv1142, %idx.ext35, !dbg !434
  %arrayidx374 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum1059, !dbg !434
  store i32 -1, i32* %arrayidx374, align 4, !dbg !434, !tbaa !281
  br label %if.end375

if.end375:                                        ; preds = %if.else372, %if.then331
  %add.ptr36.sum1060 = add i64 %indvars.iv1142, %idx.ext35, !dbg !436
  %arrayidx377 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum1060, !dbg !436
  %90 = load i32* %arrayidx377, align 4, !dbg !436, !tbaa !281
  %cmp378 = icmp slt i32 %90, 0, !dbg !436
  %add.ptr.sum1065.pre = add i64 %indvars.iv1142, %idx.ext, !dbg !437
  %arrayidx386.pre = getelementptr inbounds i32* %14, i64 %add.ptr.sum1065.pre, !dbg !437
  br i1 %cmp378, label %if.then384, label %lor.lhs.false, !dbg !436

lor.lhs.false:                                    ; preds = %if.end375
  %91 = load i32* %arrayidx386.pre, align 4, !dbg !436, !tbaa !281
  %cmp382 = icmp slt i32 %91, 0, !dbg !436
  br i1 %cmp382, label %if.then384, label %if.end389, !dbg !436

if.then384:                                       ; preds = %if.end375, %lor.lhs.false
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !439
  %92 = load i32* %arrayidx386.pre, align 4, !dbg !437, !tbaa !281
  store i32 %92, i32* %arrayidx377, align 4, !dbg !437, !tbaa !281
  br label %if.end389, !dbg !440

if.end389:                                        ; preds = %if.then384, %lor.lhs.false
  %93 = phi i32 [ %92, %if.then384 ], [ %90, %lor.lhs.false ]
  %totals.1 = phi i32 [ 0, %if.then384 ], [ %totals.01110, %lor.lhs.false ]
  %add.ptr52.sum1062 = add i64 %indvars.iv1142, %idx.ext51, !dbg !441
  %arrayidx391 = getelementptr inbounds i32* %14, i64 %add.ptr52.sum1062, !dbg !441
  %94 = load i32* %arrayidx391, align 4, !dbg !441, !tbaa !281
  %tobool392 = icmp eq i32 %94, 0, !dbg !441
  br i1 %tobool392, label %for.inc459, label %if.then393, !dbg !441

if.then393:                                       ; preds = %if.end389
  %95 = load i32* %arrayidx314, align 4, !dbg !442, !tbaa !281
  %arrayidx397 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv1142, !dbg !442
  %96 = load i32* %arrayidx397, align 4, !dbg !442, !tbaa !281
  %sub398 = sub nsw i32 %95, %96, !dbg !442
  %add.ptr48.sum1063 = add i64 %indvars.iv1142, %idx.ext47, !dbg !442
  %arrayidx400 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1063, !dbg !442
  %97 = load i32* %arrayidx400, align 4, !dbg !442, !tbaa !281
  %div401 = sdiv i32 %sub398, %97, !dbg !442
  %idxprom402 = sext i32 %hdim.addr.21112 to i64, !dbg !442
  %arrayidx403 = getelementptr inbounds i32* %hsize_global, i64 %idxprom402, !dbg !442
  store i32 %div401, i32* %arrayidx403, align 4, !dbg !442, !tbaa !281
  %98 = load i32* %arrayidx397, align 4, !dbg !443, !tbaa !281
  %sub408 = sub nsw i32 %95, %98, !dbg !443
  %rem411 = srem i32 %sub408, %97, !dbg !443
  %tobool412 = icmp eq i32 %rem411, 0, !dbg !443
  br i1 %tobool412, label %if.end417, label %if.then413, !dbg !443

if.then413:                                       ; preds = %if.then393
  %inc416 = add nsw i32 %div401, 1, !dbg !444
  store i32 %inc416, i32* %arrayidx403, align 4, !dbg !444, !tbaa !281
  br label %if.end417, !dbg !446

if.end417:                                        ; preds = %if.then393, %if.then413
  %99 = phi i32 [ %div401, %if.then393 ], [ %inc416, %if.then413 ]
  %100 = load %struct.PConnectivity** %61, align 8, !dbg !414, !tbaa !274
  %perme = getelementptr inbounds %struct.PConnectivity* %100, i64 0, i32 3, !dbg !414
  %101 = load i32** %perme, align 8, !dbg !414, !tbaa !274
  %arrayidx419 = getelementptr inbounds i32* %101, i64 %indvars.iv1142, !dbg !414
  %102 = load i32* %arrayidx419, align 4, !dbg !414, !tbaa !281
  %tobool420 = icmp eq i32 %102, 0, !dbg !414
  br i1 %tobool420, label %if.end429, label %if.then421, !dbg !414

if.then421:                                       ; preds = %if.end417
  %nghostzones = getelementptr inbounds %struct.PGExtras* %79, i64 0, i32 12, !dbg !447
  %103 = load i32** %nghostzones, align 8, !dbg !447, !tbaa !274
  %arrayidx424 = getelementptr inbounds i32* %103, i64 %indvars.iv1142, !dbg !447
  %104 = load i32* %arrayidx424, align 4, !dbg !447, !tbaa !281
  %mul425 = shl nsw i32 %104, 1, !dbg !447
  %sub428 = sub nsw i32 %99, %mul425, !dbg !447
  store i32 %sub428, i32* %arrayidx403, align 4, !dbg !447, !tbaa !281
  br label %if.end429, !dbg !449

if.end429:                                        ; preds = %if.end417, %if.then421
  %add.ptr.sum1064 = add i64 %indvars.iv1142, %idx.ext, !dbg !450
  %arrayidx433 = getelementptr inbounds i32* %14, i64 %add.ptr.sum1064, !dbg !450
  %105 = load i32* %arrayidx433, align 4, !dbg !450, !tbaa !281
  %sub434 = sub nsw i32 %93, %105, !dbg !450
  %div437 = sdiv i32 %sub434, %97, !dbg !450
  %arrayidx439 = getelementptr inbounds i32* %hsize, i64 %idxprom402, !dbg !450
  %rem447 = srem i32 %sub434, %97, !dbg !451
  %tobool448 = icmp eq i32 %rem447, 0, !dbg !451
  %inc452 = add nsw i32 %div437, 1, !dbg !452
  %div437.inc452 = select i1 %tobool448, i32 %div437, i32 %inc452, !dbg !451
  %div437.inc4521175 = select i1 %tobool448, i32 %div437, i32 %inc452, !dbg !451
  store i32 %div437.inc452, i32* %arrayidx439, align 4, !dbg !450, !tbaa !281
  %mul456 = mul nsw i32 %div437.inc4521175, %totals.1, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %mul456}, i64 0, metadata !92), !dbg !454
  %inc457 = add nsw i32 %hdim.addr.21112, 1, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %inc457}, i64 0, metadata !65), !dbg !455
  br label %for.inc459, !dbg !456

for.inc459:                                       ; preds = %if.end389, %if.end429
  %totals.2 = phi i32 [ %mul456, %if.end429 ], [ %totals.1, %if.end389 ]
  %hdim.addr.3 = phi i32 [ %inc457, %if.end429 ], [ %hdim.addr.21112, %if.end389 ]
  %indvars.iv.next1143 = add i64 %indvars.iv1142, 1, !dbg !409
  %106 = load i32* %dim, align 4, !dbg !409, !tbaa !281
  %107 = trunc i64 %indvars.iv.next1143 to i32, !dbg !409
  %cmp270 = icmp slt i32 %107, %106, !dbg !409
  br i1 %cmp270, label %for.body272, label %if.end462, !dbg !409

if.end462:                                        ; preds = %for.inc459, %if.then82
  %totals.3 = phi i32 [ %50, %if.then82 ], [ %totals.2, %for.inc459 ]
  %hdim.addr.4 = phi i32 [ %hdim, %if.then82 ], [ %hdim.addr.3, %for.inc459 ]
  %cmp463 = icmp sgt i32 %totals.3, 0, !dbg !457
  br i1 %cmp463, label %if.then465, label %if.else702, !dbg !457

if.then465:                                       ; preds = %for.cond103.preheader, %for.cond163.preheader, %for.cond268.preheader, %if.end462
  %totals.31168 = phi i32 [ %totals.3, %if.end462 ], [ 1, %for.cond268.preheader ], [ 1, %for.cond163.preheader ], [ 1, %for.cond103.preheader ]
  %call466 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %vtimelvl, i32 %vindex) #6, !dbg !458
  call void @llvm.dbg.value(metadata !{i8* %call466}, i64 0, metadata !221), !dbg !458
  %tobool467 = icmp eq i32* %hoffset_global, null, !dbg !459
  br i1 %tobool467, label %if.end519, label %for.cond469.preheader, !dbg !459

for.cond469.preheader:                            ; preds = %if.then465
  %108 = load i32* %dim, align 4, !dbg !460, !tbaa !281
  %cmp4711106 = icmp sgt i32 %108, 0, !dbg !460
  br i1 %cmp4711106, label %for.body473.lr.ph, label %if.end519, !dbg !460

for.body473.lr.ph:                                ; preds = %for.cond469.preheader
  %idxprom481 = sext i32 %call79 to i64, !dbg !463
  %connectivity500 = getelementptr inbounds i8* %24, i64 64, !dbg !467
  %109 = bitcast i8* %connectivity500 to %struct.PConnectivity**, !dbg !467
  br label %for.body473, !dbg !460

for.body473:                                      ; preds = %for.body473.lr.ph, %for.inc516
  %indvars.iv1140 = phi i64 [ 0, %for.body473.lr.ph ], [ %indvars.iv.next1141, %for.inc516 ]
  %hdim.addr.51108 = phi i32 [ 0, %for.body473.lr.ph ], [ %hdim.addr.6, %for.inc516 ]
  %add.ptr52.sum = add i64 %indvars.iv1140, %idx.ext51, !dbg !469
  %arrayidx475 = getelementptr inbounds i32* %14, i64 %add.ptr52.sum, !dbg !469
  %110 = load i32* %arrayidx475, align 4, !dbg !469, !tbaa !281
  %tobool476 = icmp eq i32 %110, 0, !dbg !469
  br i1 %tobool476, label %for.inc516, label %if.then477, !dbg !469

if.then477:                                       ; preds = %for.body473
  br i1 %tobool81, label %if.then479, label %if.else488, !dbg !470

if.then479:                                       ; preds = %if.then477
  %idxprom480 = sext i32 %hdim.addr.51108 to i64, !dbg !463
  %111 = load %struct.PGExtras** %26, align 8, !dbg !463, !tbaa !274
  %lb483 = getelementptr inbounds %struct.PGExtras* %111, i64 0, i32 3, !dbg !463
  %112 = load i32*** %lb483, align 8, !dbg !463, !tbaa !274
  %arrayidx484 = getelementptr inbounds i32** %112, i64 %idxprom481, !dbg !463
  %113 = load i32** %arrayidx484, align 8, !dbg !463, !tbaa !274
  %arrayidx485 = getelementptr inbounds i32* %113, i64 %idxprom480, !dbg !463
  %114 = load i32* %arrayidx485, align 4, !dbg !463, !tbaa !281
  %arrayidx487 = getelementptr inbounds i32* %hoffset_global, i64 %idxprom480, !dbg !463
  store i32 %114, i32* %arrayidx487, align 4, !dbg !463, !tbaa !281
  br label %if.end513, !dbg !471

if.else488:                                       ; preds = %if.then477
  %add.ptr40.sum = add i64 %indvars.iv1140, %idx.ext39, !dbg !472
  %arrayidx490 = getelementptr inbounds i32* %14, i64 %add.ptr40.sum, !dbg !472
  %115 = load i32* %arrayidx490, align 4, !dbg !472, !tbaa !281
  %arrayidx492 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv1140, !dbg !472
  %116 = load i32* %arrayidx492, align 4, !dbg !472, !tbaa !281
  %sub493 = sub nsw i32 %115, %116, !dbg !472
  %add.ptr48.sum1056 = add i64 %indvars.iv1140, %idx.ext47, !dbg !472
  %arrayidx495 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1056, !dbg !472
  %117 = load i32* %arrayidx495, align 4, !dbg !472, !tbaa !281
  %div496 = sdiv i32 %sub493, %117, !dbg !472
  %idxprom497 = sext i32 %hdim.addr.51108 to i64, !dbg !472
  %arrayidx498 = getelementptr inbounds i32* %hoffset_global, i64 %idxprom497, !dbg !472
  store i32 %div496, i32* %arrayidx498, align 4, !dbg !472, !tbaa !281
  %118 = load %struct.PConnectivity** %109, align 8, !dbg !467, !tbaa !274
  %perme501 = getelementptr inbounds %struct.PConnectivity* %118, i64 0, i32 3, !dbg !467
  %119 = load i32** %perme501, align 8, !dbg !467, !tbaa !274
  %arrayidx502 = getelementptr inbounds i32* %119, i64 %indvars.iv1140, !dbg !467
  %120 = load i32* %arrayidx502, align 4, !dbg !467, !tbaa !281
  %tobool503 = icmp eq i32 %120, 0, !dbg !467
  br i1 %tobool503, label %if.end513, label %if.then504, !dbg !467

if.then504:                                       ; preds = %if.else488
  %121 = load %struct.PGExtras** %26, align 8, !dbg !473, !tbaa !274
  %nghostzones507 = getelementptr inbounds %struct.PGExtras* %121, i64 0, i32 12, !dbg !473
  %122 = load i32** %nghostzones507, align 8, !dbg !473, !tbaa !274
  %arrayidx508 = getelementptr inbounds i32* %122, i64 %indvars.iv1140, !dbg !473
  %123 = load i32* %arrayidx508, align 4, !dbg !473, !tbaa !281
  %sub511 = sub nsw i32 %div496, %123, !dbg !473
  store i32 %sub511, i32* %arrayidx498, align 4, !dbg !473, !tbaa !281
  br label %if.end513, !dbg !475

if.end513:                                        ; preds = %if.else488, %if.then504, %if.then479
  %inc514 = add nsw i32 %hdim.addr.51108, 1, !dbg !476
  call void @llvm.dbg.value(metadata !{i32 %inc514}, i64 0, metadata !65), !dbg !476
  br label %for.inc516, !dbg !477

for.inc516:                                       ; preds = %for.body473, %if.end513
  %hdim.addr.6 = phi i32 [ %inc514, %if.end513 ], [ %hdim.addr.51108, %for.body473 ]
  %indvars.iv.next1141 = add i64 %indvars.iv1140, 1, !dbg !460
  %124 = trunc i64 %indvars.iv.next1141 to i32, !dbg !460
  %cmp471 = icmp slt i32 %124, %108, !dbg !460
  br i1 %cmp471, label %for.body473, label %if.end519, !dbg !460

if.end519:                                        ; preds = %for.cond469.preheader, %for.inc516, %if.then465
  %cmp522 = icmp eq void (i8*, i8*, i32, i32, i32)* %conversion_fn.addr.0, null, !dbg !478
  %or.cond = and i1 %tobool81, %cmp522, !dbg !478
  br i1 %or.cond, label %if.then524, label %if.else525, !dbg !478

if.then524:                                       ; preds = %if.end519
  store i8* %call466, i8** %hdata, align 8, !dbg !479, !tbaa !274
  br label %if.end705, !dbg !481

if.else525:                                       ; preds = %if.end519
  %125 = load i32* %vartype, align 4, !dbg !482, !tbaa !281
  %call527 = call i32 @CCTK_VarTypeSize(i32 %125) #6, !dbg !482
  call void @llvm.dbg.value(metadata !{i32 %call527}, i64 0, metadata !90), !dbg !482
  %call528 = call i32 @CCTK_VarTypeSize(i32 %htype) #6, !dbg !484
  call void @llvm.dbg.value(metadata !{i32 %call528}, i64 0, metadata !91), !dbg !484
  %mul529 = mul nsw i32 %call528, %totals.31168, !dbg !485
  %conv530 = sext i32 %mul529 to i64, !dbg !485
  %call531 = call noalias i8* @malloc(i64 %conv530) #6, !dbg !485
  store i8* %call531, i8** %hdata, align 8, !dbg !485, !tbaa !274
  call void @llvm.dbg.value(metadata !{i8* %call531}, i64 0, metadata !97), !dbg !486
  store i32 1, i32* %free_hdata, align 4, !dbg !487, !tbaa !281
  store i32 1, i32* %add.ptr56, align 4, !dbg !488, !tbaa !281
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !89), !dbg !489
  %126 = load i32* %dim, align 4, !dbg !489, !tbaa !281
  %cmp5351104 = icmp sgt i32 %126, 1, !dbg !489
  br i1 %cmp5351104, label %for.body537.lr.ph, label %for.end551, !dbg !489

for.body537.lr.ph:                                ; preds = %if.else525
  %127 = load %struct.PGExtras** %26, align 8, !dbg !491, !tbaa !274
  %lnsize544 = getelementptr inbounds %struct.PGExtras* %127, i64 0, i32 6, !dbg !491
  %128 = load i32** %lnsize544, align 8, !dbg !491, !tbaa !274
  br label %for.body537, !dbg !489

for.body537:                                      ; preds = %for.body537.lr.ph, %for.body537
  %indvars.iv1137 = phi i64 [ 1, %for.body537.lr.ph ], [ %indvars.iv.next1138, %for.body537 ]
  %129 = add nsw i64 %indvars.iv1137, -1, !dbg !491
  %add.ptr56.sum1054 = add i64 %129, %idx.ext55, !dbg !491
  %arrayidx540 = getelementptr inbounds i32* %14, i64 %add.ptr56.sum1054, !dbg !491
  %130 = load i32* %arrayidx540, align 4, !dbg !491, !tbaa !281
  %arrayidx545 = getelementptr inbounds i32* %128, i64 %129, !dbg !491
  %131 = load i32* %arrayidx545, align 4, !dbg !491, !tbaa !281
  %mul546 = mul nsw i32 %131, %130, !dbg !491
  %add.ptr56.sum1055 = add i64 %indvars.iv1137, %idx.ext55, !dbg !491
  %arrayidx548 = getelementptr inbounds i32* %14, i64 %add.ptr56.sum1055, !dbg !491
  store i32 %mul546, i32* %arrayidx548, align 4, !dbg !491, !tbaa !281
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1, !dbg !489
  %132 = trunc i64 %indvars.iv.next1138 to i32, !dbg !489
  %cmp535 = icmp slt i32 %132, %126, !dbg !489
  br i1 %cmp535, label %for.body537, label %for.end551, !dbg !489

for.end551:                                       ; preds = %for.body537, %if.else525
  %133 = load i32* %add.ptr36, align 4, !dbg !493, !tbaa !281
  %134 = load i32* %add.ptr, align 4, !dbg !493, !tbaa !281
  %sub554 = sub nsw i32 %133, %134, !dbg !493
  %135 = load i32* %add.ptr48, align 4, !dbg !493, !tbaa !281
  %div556 = sdiv i32 %sub554, %135, !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %div556}, i64 0, metadata !93), !dbg !493
  %rem561 = srem i32 %sub554, %135, !dbg !494
  %not.tobool562 = icmp ne i32 %rem561, 0, !dbg !494
  %inc564 = zext i1 %not.tobool562 to i32, !dbg !494
  %div556.inc564 = add nsw i32 %inc564, %div556, !dbg !494
  %mul566 = mul nsw i32 %div556.inc564, %call528, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %mul566}, i64 0, metadata !94), !dbg !495
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !496
  %cmp5691101 = icmp sgt i32 %126, 0, !dbg !496
  br i1 %cmp5691101, label %for.body571, label %for.end583, !dbg !496

for.body571:                                      ; preds = %for.end551, %for.body571
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %for.body571 ], [ 0, %for.end551 ]
  %add.ptr.sum1051 = add i64 %indvars.iv1135, %idx.ext, !dbg !498
  %arrayidx573 = getelementptr inbounds i32* %14, i64 %add.ptr.sum1051, !dbg !498
  %136 = load i32* %arrayidx573, align 4, !dbg !498, !tbaa !281
  %mul574 = mul nsw i32 %136, %call527, !dbg !498
  store i32 %mul574, i32* %arrayidx573, align 4, !dbg !498, !tbaa !281
  %add.ptr36.sum1052 = add i64 %indvars.iv1135, %idx.ext35, !dbg !500
  %arrayidx576 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum1052, !dbg !500
  %137 = load i32* %arrayidx576, align 4, !dbg !500, !tbaa !281
  %mul577 = mul nsw i32 %137, %call527, !dbg !500
  store i32 %mul577, i32* %arrayidx576, align 4, !dbg !500, !tbaa !281
  %add.ptr48.sum1053 = add i64 %indvars.iv1135, %idx.ext47, !dbg !501
  %arrayidx579 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1053, !dbg !501
  %138 = load i32* %arrayidx579, align 4, !dbg !501, !tbaa !281
  %mul580 = mul nsw i32 %138, %call527, !dbg !501
  store i32 %mul580, i32* %arrayidx579, align 4, !dbg !501, !tbaa !281
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 1, !dbg !496
  %139 = trunc i64 %indvars.iv.next1136 to i32, !dbg !496
  %cmp569 = icmp slt i32 %139, %126, !dbg !496
  br i1 %cmp569, label %for.body571, label %for.end583, !dbg !496

for.end583:                                       ; preds = %for.body571, %for.end551
  %140 = bitcast i32* %add.ptr to i8*, !dbg !502
  %conv585 = sext i32 %126 to i64, !dbg !502
  %mul586 = shl nsw i64 %conv585, 2, !dbg !502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call30, i8* %140, i64 %mul586, i32 4, i1 false), !dbg !502
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !89), !dbg !503
  %arrayidx592 = getelementptr inbounds i8* %call30, i64 4, !dbg !504
  %141 = bitcast i8* %arrayidx592 to i32*, !dbg !504
  %add.ptr36.sum1049 = or i64 %idx.ext35, 1, !dbg !504
  %arrayidx594 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum1049, !dbg !504
  %tobool659 = icmp ne void (i8*, i8*, i32, i32, i32)* %conversion_fn.addr.0, null, !dbg !506
  %conv662 = sext i32 %mul566 to i64, !dbg !508
  %add.ptr48.sum = add i64 %idx.ext47, 1, !dbg !510
  %arrayidx695 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum, !dbg !510
  %cmp6741098 = icmp sgt i32 %mul566, 0, !dbg !512
  %conv679 = sext i32 %call527 to i64, !dbg !516
  %142 = sext i32 %call528 to i64
  br label %while.body, !dbg !518

while.body:                                       ; preds = %for.end583, %if.then693
  %143 = phi i32 [ %126, %for.end583 ], [ %161, %if.then693 ]
  %typed_hdata.0 = phi i8* [ %call531, %for.end583 ], [ %add.ptr689, %if.then693 ]
  %cmp588 = icmp sgt i32 %143, 1, !dbg !504
  br i1 %cmp588, label %land.lhs.true590, label %if.end636.thread1172, !dbg !504

if.end636.thread1172:                             ; preds = %while.body
  %144 = load i32* %14, align 4, !dbg !519, !tbaa !281
  %idx.ext6381173 = sext i32 %144 to i64, !dbg !519
  %add.ptr6391174 = getelementptr inbounds i8* %call466, i64 %idx.ext6381173, !dbg !519
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !87), !dbg !520
  br label %for.end654, !dbg !520

land.lhs.true590:                                 ; preds = %while.body
  %145 = load i32* %141, align 4, !dbg !504, !tbaa !281
  %146 = load i32* %arrayidx594, align 4, !dbg !504, !tbaa !281
  %cmp595 = icmp slt i32 %145, %146, !dbg !504
  br i1 %cmp595, label %if.end636.thread, label %for.cond599.preheader, !dbg !504

if.end636.thread:                                 ; preds = %land.lhs.true590
  %147 = load i32* %14, align 4, !dbg !519, !tbaa !281
  %idx.ext6381169 = sext i32 %147 to i64, !dbg !519
  %add.ptr6391170 = getelementptr inbounds i8* %call466, i64 %idx.ext6381169, !dbg !519
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !87), !dbg !520
  br label %for.body644, !dbg !520

for.cond599.preheader:                            ; preds = %land.lhs.true590
  %cmp6011089 = icmp sgt i32 %143, 2, !dbg !522
  br i1 %cmp6011089, label %for.body603, label %for.end619, !dbg !522

for.cond599:                                      ; preds = %for.body603
  %148 = trunc i64 %indvars.iv.next to i32, !dbg !522
  %cmp601 = icmp slt i32 %148, %143, !dbg !522
  br i1 %cmp601, label %for.body603, label %for.end619, !dbg !522

for.body603:                                      ; preds = %for.cond599.preheader, %for.cond599
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond599 ], [ 2, %for.cond599.preheader ]
  %vdim.71090 = phi i32 [ %inc618, %for.cond599 ], [ 2, %for.cond599.preheader ]
  %add.ptr48.sum1050 = add i64 %indvars.iv, %idx.ext47, !dbg !525
  %arrayidx605 = getelementptr inbounds i32* %14, i64 %add.ptr48.sum1050, !dbg !525
  %149 = load i32* %arrayidx605, align 4, !dbg !525, !tbaa !281
  %arrayidx607 = getelementptr inbounds i32* %14, i64 %indvars.iv, !dbg !525
  %150 = load i32* %arrayidx607, align 4, !dbg !525, !tbaa !281
  %add608 = add nsw i32 %150, %149, !dbg !525
  store i32 %add608, i32* %arrayidx607, align 4, !dbg !525, !tbaa !281
  %add.ptr36.sum = add i64 %indvars.iv, %idx.ext35, !dbg !527
  %arrayidx612 = getelementptr inbounds i32* %14, i64 %add.ptr36.sum, !dbg !527
  %151 = load i32* %arrayidx612, align 4, !dbg !527, !tbaa !281
  %cmp613 = icmp slt i32 %add608, %151, !dbg !527
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !522
  %inc618 = add nsw i32 %vdim.71090, 1, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %inc618}, i64 0, metadata !89), !dbg !522
  br i1 %cmp613, label %for.end619, label %for.cond599, !dbg !527

for.end619:                                       ; preds = %for.cond599, %for.body603, %for.cond599.preheader
  %vdim.7.lcssa = phi i32 [ 2, %for.cond599.preheader ], [ %vdim.71090, %for.body603 ], [ %inc618, %for.cond599 ]
  %cmp621 = icmp slt i32 %vdim.7.lcssa, %143, !dbg !528
  br i1 %cmp621, label %for.cond625.preheader, label %if.end705, !dbg !528

for.cond625.preheader:                            ; preds = %for.end619
  %vdim.81091 = add i32 %vdim.7.lcssa, -1, !dbg !529
  %cmp6261092 = icmp sgt i32 %vdim.81091, 0, !dbg !529
  br i1 %cmp6261092, label %for.body628.lr.ph, label %if.end636, !dbg !529

for.body628.lr.ph:                                ; preds = %for.cond625.preheader
  %152 = sext i32 %vdim.81091 to i64
  br label %for.body628, !dbg !529

for.body628:                                      ; preds = %for.body628.lr.ph, %for.body628
  %indvars.iv1128 = phi i64 [ %152, %for.body628.lr.ph ], [ %indvars.iv.next1129, %for.body628 ]
  %vdim.81093 = phi i32 [ %vdim.81091, %for.body628.lr.ph ], [ %vdim.8, %for.body628 ]
  %add.ptr.sum = add i64 %indvars.iv1128, %idx.ext, !dbg !531
  %arrayidx630 = getelementptr inbounds i32* %14, i64 %add.ptr.sum, !dbg !531
  %153 = load i32* %arrayidx630, align 4, !dbg !531, !tbaa !281
  %arrayidx632 = getelementptr inbounds i32* %14, i64 %indvars.iv1128, !dbg !531
  store i32 %153, i32* %arrayidx632, align 4, !dbg !531, !tbaa !281
  %vdim.8 = add nsw i32 %vdim.81093, -1, !dbg !529
  %cmp626 = icmp sgt i32 %vdim.8, 0, !dbg !529
  %indvars.iv.next1129 = add i64 %indvars.iv1128, -1, !dbg !529
  br i1 %cmp626, label %for.body628, label %if.end636, !dbg !529

if.end636:                                        ; preds = %for.cond625.preheader, %for.body628
  %154 = load i32* %14, align 4, !dbg !519, !tbaa !281
  %idx.ext638 = sext i32 %154 to i64, !dbg !519
  %add.ptr639 = getelementptr inbounds i8* %call466, i64 %idx.ext638, !dbg !519
  call void @llvm.dbg.value(metadata !354, i64 0, metadata !87), !dbg !520
  br i1 %cmp588, label %for.body644, label %for.end654, !dbg !520

for.body644:                                      ; preds = %if.end636, %if.end636.thread, %for.body644
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %for.body644 ], [ 1, %if.end636.thread ], [ 1, %if.end636 ]
  %typed_vdata.01095 = phi i8* [ %add.ptr651, %for.body644 ], [ %add.ptr6391170, %if.end636.thread ], [ %add.ptr639, %if.end636 ]
  %arrayidx646 = getelementptr inbounds i32* %14, i64 %indvars.iv1131, !dbg !533
  %155 = load i32* %arrayidx646, align 4, !dbg !533, !tbaa !281
  %add.ptr56.sum = add i64 %indvars.iv1131, %idx.ext55, !dbg !533
  %arrayidx648 = getelementptr inbounds i32* %14, i64 %add.ptr56.sum, !dbg !533
  %156 = load i32* %arrayidx648, align 4, !dbg !533, !tbaa !281
  %mul649 = mul nsw i32 %156, %155, !dbg !533
  %idx.ext650 = sext i32 %mul649 to i64, !dbg !533
  %add.ptr651 = getelementptr inbounds i8* %typed_vdata.01095, i64 %idx.ext650, !dbg !533
  call void @llvm.dbg.value(metadata !{i8* %add.ptr651}, i64 0, metadata !95), !dbg !533
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1, !dbg !520
  %157 = trunc i64 %indvars.iv.next1132 to i32, !dbg !520
  %cmp642 = icmp slt i32 %157, %143, !dbg !520
  br i1 %cmp642, label %for.body644, label %for.end654, !dbg !520

for.end654:                                       ; preds = %for.body644, %if.end636.thread1172, %if.end636
  %typed_vdata.0.lcssa = phi i8* [ %add.ptr639, %if.end636 ], [ %add.ptr6391174, %if.end636.thread1172 ], [ %add.ptr651, %for.body644 ]
  %158 = load i32* %add.ptr48, align 4, !dbg !535, !tbaa !281
  %cmp656 = icmp eq i32 %158, %call527, !dbg !535
  br i1 %cmp656, label %if.then658, label %if.else664, !dbg !535

if.then658:                                       ; preds = %for.end654
  br i1 %tobool659, label %if.then660, label %if.else661, !dbg !506

if.then660:                                       ; preds = %if.then658
  call void %conversion_fn.addr.0(i8* %typed_vdata.0.lcssa, i8* %typed_hdata.0, i32 %div556.inc564, i32 1, i32 1) #6, !dbg !536
  br label %if.end687, !dbg !538

if.else661:                                       ; preds = %if.then658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %typed_hdata.0, i8* %typed_vdata.0.lcssa, i64 %conv662, i32 1, i1 false), !dbg !508
  br label %if.end687

if.else664:                                       ; preds = %for.end654
  br i1 %tobool659, label %if.then666, label %for.cond673.preheader, !dbg !539

for.cond673.preheader:                            ; preds = %if.else664
  br i1 %cmp6741098, label %for.body676, label %if.end687, !dbg !512

if.then666:                                       ; preds = %if.else664
  call void %conversion_fn.addr.0(i8* %typed_vdata.0.lcssa, i8* %typed_hdata.0, i32 %div556.inc564, i32 %158, i32 1) #6, !dbg !540
  br label %if.end687, !dbg !542

for.body676:                                      ; preds = %for.cond673.preheader, %for.body676
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %for.body676 ], [ 0, %for.cond673.preheader ]
  %typed_vdata.11099 = phi i8* [ %add.ptr682, %for.body676 ], [ %typed_vdata.0.lcssa, %for.cond673.preheader ]
  %add.ptr678 = getelementptr inbounds i8* %typed_hdata.0, i64 %indvars.iv1133, !dbg !516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr678, i8* %typed_vdata.11099, i64 %conv679, i32 1, i1 false), !dbg !516
  %159 = load i32* %add.ptr48, align 4, !dbg !543, !tbaa !281
  %idx.ext681 = sext i32 %159 to i64, !dbg !543
  %add.ptr682 = getelementptr inbounds i8* %typed_vdata.11099, i64 %idx.ext681, !dbg !543
  call void @llvm.dbg.value(metadata !{i8* %add.ptr682}, i64 0, metadata !95), !dbg !543
  %indvars.iv.next1134 = add i64 %indvars.iv1133, %142, !dbg !512
  %160 = trunc i64 %indvars.iv.next1134 to i32, !dbg !512
  %cmp674 = icmp slt i32 %160, %mul566, !dbg !512
  br i1 %cmp674, label %for.body676, label %if.end687, !dbg !512

if.end687:                                        ; preds = %for.cond673.preheader, %for.body676, %if.then666, %if.then660, %if.else661
  call void @llvm.dbg.value(metadata !{i8* %add.ptr689}, i64 0, metadata !97), !dbg !544
  %161 = load i32* %dim, align 4, !dbg !545, !tbaa !281
  %cmp691 = icmp sgt i32 %161, 1, !dbg !545
  br i1 %cmp691, label %if.then693, label %if.end705, !dbg !545

if.then693:                                       ; preds = %if.end687
  %add.ptr689 = getelementptr inbounds i8* %typed_hdata.0, i64 %conv662, !dbg !544
  %162 = load i32* %arrayidx695, align 4, !dbg !510, !tbaa !281
  %163 = load i32* %141, align 4, !dbg !510, !tbaa !281
  %add698 = add nsw i32 %163, %162, !dbg !510
  store i32 %add698, i32* %141, align 4, !dbg !510, !tbaa !281
  br label %while.body, !dbg !546

if.else702:                                       ; preds = %if.end462
  %164 = bitcast i32* %hsize to i8*, !dbg !547
  %conv703 = sext i32 %hdim.addr.4 to i64, !dbg !547
  %mul704 = shl nsw i64 %conv703, 2, !dbg !547
  call void @llvm.memset.p0i8.i64(i8* %164, i8 0, i64 %mul704, i32 4, i1 false), !dbg !547
  br label %if.end705

if.end705:                                        ; preds = %for.end619, %if.end687, %if.then524, %if.else702
  call void @free(i8* %call30) #6, !dbg !549
  br label %return, !dbg !550

return:                                           ; preds = %if.end705, %if.then17, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ 0, %if.end705 ], [ -1, %if.then17 ]
  ret i32 %retval.0, !dbg !551
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !252, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !223, metadata !241}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c", metadata !"CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"NewHyperslab_GetLocalHyperslab", metadata !"NewHyperslab_GetLocalHyperslab", metadata !"", i32 208, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32, void (i8*, i8*, i32, i32, i32)*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*)* @NewHyperslab_GetLocalHyperslab, null, null, metadata !61, i32 223} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 223] [NewHyperslab_GetLocalHyperslab]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !14, metadata !53, metadata !59, metadata !59, metadata !59, metadata !59, metadata !43, metadata !24, metadata !24, metadata !24, metadata !24}
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
!53 = metadata !{i32 786454, metadata !1, null, metadata !"t_hslabConversionFn", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [t_hslabConversionFn] [line 21, size 0, align 0, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !57, metadata !44, metadata !14, metadata !14, metadata !14}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !97, metadata !98, metadata !99, metadata !112, metadata !179, metadata !214, metadata !215, metadata !221}
!62 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777424, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 208]
!63 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 33554641, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 209]
!64 = metadata !{i32 786689, metadata !11, metadata !"vtimelvl", metadata !5, i32 50331858, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 210]
!65 = metadata !{i32 786689, metadata !11, metadata !"hdim", metadata !5, i32 67109075, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 211]
!66 = metadata !{i32 786689, metadata !11, metadata !"htype", metadata !5, i32 83886292, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [htype] [line 212]
!67 = metadata !{i32 786689, metadata !11, metadata !"conversion_fn", metadata !5, i32 100663509, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conversion_fn] [line 213]
!68 = metadata !{i32 786689, metadata !11, metadata !"global_startpoint", metadata !5, i32 117440726, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_startpoint] [line 214]
!69 = metadata !{i32 786689, metadata !11, metadata !"directions", metadata !5, i32 134217943, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [directions] [line 215]
!70 = metadata !{i32 786689, metadata !11, metadata !"extents", metadata !5, i32 150995160, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 216]
!71 = metadata !{i32 786689, metadata !11, metadata !"downsample_", metadata !5, i32 167772377, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 217]
!72 = metadata !{i32 786689, metadata !11, metadata !"hdata", metadata !5, i32 184549594, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 218]
!73 = metadata !{i32 786689, metadata !11, metadata !"free_hdata", metadata !5, i32 201326811, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [free_hdata] [line 219]
!74 = metadata !{i32 786689, metadata !11, metadata !"hsize", metadata !5, i32 218104028, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 220]
!75 = metadata !{i32 786689, metadata !11, metadata !"hsize_global", metadata !5, i32 234881245, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize_global] [line 221]
!76 = metadata !{i32 786689, metadata !11, metadata !"hoffset_global", metadata !5, i32 251658462, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hoffset_global] [line 222]
!77 = metadata !{i32 786688, metadata !11, metadata !"point", metadata !5, i32 224, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [point] [line 224]
!78 = metadata !{i32 786688, metadata !11, metadata !"startpoint", metadata !5, i32 225, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [startpoint] [line 225]
!79 = metadata !{i32 786688, metadata !11, metadata !"endpoint", metadata !5, i32 226, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endpoint] [line 226]
!80 = metadata !{i32 786688, metadata !11, metadata !"downsample", metadata !5, i32 227, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [downsample] [line 227]
!81 = metadata !{i32 786688, metadata !11, metadata !"my_global_startpoint", metadata !5, i32 228, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_global_startpoint] [line 228]
!82 = metadata !{i32 786688, metadata !11, metadata !"global_endpoint", metadata !5, i32 229, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_endpoint] [line 229]
!83 = metadata !{i32 786688, metadata !11, metadata !"points_per_dim", metadata !5, i32 230, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 230]
!84 = metadata !{i32 786688, metadata !11, metadata !"do_dir", metadata !5, i32 231, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_dir] [line 231]
!85 = metadata !{i32 786688, metadata !11, metadata !"stagger_index", metadata !5, i32 232, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger_index] [line 232]
!86 = metadata !{i32 786688, metadata !11, metadata !"myproc", metadata !5, i32 233, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 233]
!87 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 234, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 234]
!88 = metadata !{i32 786688, metadata !11, metadata !"full_hyperslab", metadata !5, i32 235, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full_hyperslab] [line 235]
!89 = metadata !{i32 786688, metadata !11, metadata !"vdim", metadata !5, i32 236, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdim] [line 236]
!90 = metadata !{i32 786688, metadata !11, metadata !"vdata_size", metadata !5, i32 237, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata_size] [line 237]
!91 = metadata !{i32 786688, metadata !11, metadata !"hdata_size", metadata !5, i32 238, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hdata_size] [line 238]
!92 = metadata !{i32 786688, metadata !11, metadata !"totals", metadata !5, i32 239, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totals] [line 239]
!93 = metadata !{i32 786688, metadata !11, metadata !"dim0_points", metadata !5, i32 240, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_points] [line 240]
!94 = metadata !{i32 786688, metadata !11, metadata !"dim0_hsize", metadata !5, i32 241, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_hsize] [line 241]
!95 = metadata !{i32 786688, metadata !11, metadata !"typed_vdata", metadata !5, i32 242, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 242]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!97 = metadata !{i32 786688, metadata !11, metadata !"typed_hdata", metadata !5, i32 243, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 243]
!98 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 244]
!99 = metadata !{i32 786688, metadata !11, metadata !"vinfo", metadata !5, i32 245, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 245]
!100 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!101 = metadata !{i32 786451, metadata !102, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !103, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!102 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!104 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!106 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!107 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!108 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!109 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!110 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!111 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!112 = metadata !{i32 786688, metadata !11, metadata !"pughGH", metadata !5, i32 246, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 246]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !168, metadata !178}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!122 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!123 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!124 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!125 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!126 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!127 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!128 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!129 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!130 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!131 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!132 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!133 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!134 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!135 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!136 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!137 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!138 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!139 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !140} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!142 = metadata !{i32 786454, metadata !116, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!143 = metadata !{i32 786451, metadata !144, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !145, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!144 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !165, metadata !167}
!146 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!147 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!148 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!149 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !150} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !150} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!152 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!153 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!154 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!155 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!156 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !150} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!157 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!158 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!159 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!160 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !161} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!161 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !24, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164}
!163 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!164 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!165 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !166} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !150, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!167 = metadata !{i32 786445, metadata !144, metadata !143, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !166} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!168 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !169} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!171 = metadata !{i32 786454, metadata !116, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!172 = metadata !{i32 786451, metadata !144, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !173, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786445, metadata !144, metadata !172, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!175 = metadata !{i32 786445, metadata !144, metadata !172, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!176 = metadata !{i32 786445, metadata !144, metadata !172, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !150} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!177 = metadata !{i32 786445, metadata !144, metadata !172, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!178 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!179 = metadata !{i32 786688, metadata !11, metadata !"GA", metadata !5, i32 247, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 247]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!181 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!182 = metadata !{i32 786451, metadata !144, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !209, metadata !210, metadata !211, metadata !212}
!184 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!185 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!186 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!187 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!188 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!189 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!190 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!191 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!192 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!193 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!194 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !141} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!195 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !170} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!196 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !197} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!198 = metadata !{i32 786454, metadata !144, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!199 = metadata !{i32 786451, metadata !144, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!201 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!202 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!203 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!204 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!205 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!206 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!207 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!208 = metadata !{i32 786445, metadata !144, metadata !199, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!209 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !197} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!210 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!211 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!212 = metadata !{i32 786445, metadata !144, metadata !182, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !213} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!214 = metadata !{i32 786688, metadata !11, metadata !"errormsg", metadata !5, i32 248, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errormsg] [line 248]
!215 = metadata !{i32 786688, metadata !216, metadata !"npoints", metadata !5, i32 377, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npoints] [line 377]
!216 = metadata !{i32 786443, metadata !1, metadata !217, i32 376, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!217 = metadata !{i32 786443, metadata !1, metadata !218, i32 373, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!218 = metadata !{i32 786443, metadata !1, metadata !219, i32 368, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!219 = metadata !{i32 786443, metadata !1, metadata !220, i32 367, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!220 = metadata !{i32 786443, metadata !1, metadata !11, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!221 = metadata !{i32 786688, metadata !222, metadata !"vdata", metadata !5, i32 473, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata] [line 473]
!222 = metadata !{i32 786443, metadata !1, metadata !11, i32 472, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!223 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"checkParameters", metadata !"checkParameters", metadata !"", i32 1129, metadata !224, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !226, i32 1137} ; [ DW_TAG_subprogram ] [line 1129] [local] [def] [scope 1137] [checkParameters]
!224 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = metadata !{metadata !8, metadata !15, metadata !14, metadata !14, metadata !14, metadata !59, metadata !59, metadata !59, metadata !59, metadata !43, metadata !24}
!226 = metadata !{metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240}
!227 = metadata !{i32 786689, metadata !223, metadata !"GH", metadata !5, i32 16778345, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1129]
!228 = metadata !{i32 786689, metadata !223, metadata !"vindex", metadata !5, i32 33555561, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 1129]
!229 = metadata !{i32 786689, metadata !223, metadata !"vtimelvl", metadata !5, i32 50332777, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 1129]
!230 = metadata !{i32 786689, metadata !223, metadata !"hdim", metadata !5, i32 67109994, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 1130]
!231 = metadata !{i32 786689, metadata !223, metadata !"global_startpoint", metadata !5, i32 83887211, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_startpoint] [line 1131]
!232 = metadata !{i32 786689, metadata !223, metadata !"directions", metadata !5, i32 100664428, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [directions] [line 1132]
!233 = metadata !{i32 786689, metadata !223, metadata !"extents", metadata !5, i32 117441645, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 1133]
!234 = metadata !{i32 786689, metadata !223, metadata !"downsample_", metadata !5, i32 134218862, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 1134]
!235 = metadata !{i32 786689, metadata !223, metadata !"hdata", metadata !5, i32 150996079, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 1135]
!236 = metadata !{i32 786689, metadata !223, metadata !"hsize", metadata !5, i32 167773296, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 1136]
!237 = metadata !{i32 786688, metadata !223, metadata !"i", metadata !5, i32 1138, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1138]
!238 = metadata !{i32 786688, metadata !223, metadata !"vdim", metadata !5, i32 1138, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdim] [line 1138]
!239 = metadata !{i32 786688, metadata !223, metadata !"num_directions", metadata !5, i32 1139, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_directions] [line 1139]
!240 = metadata !{i32 786688, metadata !223, metadata !"vinfo", metadata !5, i32 1140, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 1140]
!241 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"checkFullHyperslab", metadata !"checkFullHyperslab", metadata !"", i32 1102, metadata !242, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !244, i32 1107} ; [ DW_TAG_subprogram ] [line 1102] [local] [def] [scope 1107] [checkFullHyperslab]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !14, metadata !180, metadata !14, metadata !59, metadata !59, metadata !59}
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251}
!245 = metadata !{i32 786689, metadata !241, metadata !"GA", metadata !5, i32 16778318, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 1102]
!246 = metadata !{i32 786689, metadata !241, metadata !"hdim", metadata !5, i32 33555535, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 1103]
!247 = metadata !{i32 786689, metadata !241, metadata !"global_startpoint", metadata !5, i32 50332752, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_startpoint] [line 1104]
!248 = metadata !{i32 786689, metadata !241, metadata !"extents", metadata !5, i32 67109969, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 1105]
!249 = metadata !{i32 786689, metadata !241, metadata !"downsample_", metadata !5, i32 83887186, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 1106]
!250 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !5, i32 1108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1108]
!251 = metadata !{i32 786688, metadata !241, metadata !"is_full_hyperslab", metadata !5, i32 1109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_full_hyperslab] [line 1109]
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 26, metadata !8, i32 1, i32 1, null, null}
!254 = metadata !{i32 27, i32 0, metadata !4, null}
!255 = metadata !{i32 208, i32 0, metadata !11, null}
!256 = metadata !{i32 209, i32 0, metadata !11, null}
!257 = metadata !{i32 210, i32 0, metadata !11, null}
!258 = metadata !{i32 211, i32 0, metadata !11, null}
!259 = metadata !{i32 212, i32 0, metadata !11, null}
!260 = metadata !{i32 213, i32 0, metadata !11, null}
!261 = metadata !{i32 214, i32 0, metadata !11, null}
!262 = metadata !{i32 215, i32 0, metadata !11, null}
!263 = metadata !{i32 216, i32 0, metadata !11, null}
!264 = metadata !{i32 217, i32 0, metadata !11, null}
!265 = metadata !{i32 218, i32 0, metadata !11, null}
!266 = metadata !{i32 219, i32 0, metadata !11, null}
!267 = metadata !{i32 220, i32 0, metadata !11, null}
!268 = metadata !{i32 221, i32 0, metadata !11, null}
!269 = metadata !{i32 222, i32 0, metadata !11, null}
!270 = metadata !{i32 245, i32 0, metadata !11, null}
!271 = metadata !{i32 253, i32 0, metadata !11, null}
!272 = metadata !{i32 255, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !11, i32 254, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!274 = metadata !{metadata !"any pointer", metadata !275}
!275 = metadata !{metadata !"omnipotent char", metadata !276}
!276 = metadata !{metadata !"Simple C/C++ TBAA"}
!277 = metadata !{i32 256, i32 0, metadata !273, null}
!278 = metadata !{i32 257, i32 0, metadata !11, null}
!279 = metadata !{i32 259, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !11, i32 258, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!281 = metadata !{metadata !"int", metadata !275}
!282 = metadata !{i32 260, i32 0, metadata !280, null}
!283 = metadata !{i32 1129, i32 0, metadata !223, metadata !284}
!284 = metadata !{i32 263, i32 0, metadata !11, null}
!285 = metadata !{i32 786689, metadata !223, metadata !"GH", metadata !5, i32 16778345, metadata !15, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [GH] [line 1129]
!286 = metadata !{i32 786689, metadata !223, metadata !"vindex", metadata !5, i32 33555561, metadata !14, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [vindex] [line 1129]
!287 = metadata !{i32 786689, metadata !223, metadata !"vtimelvl", metadata !5, i32 50332777, metadata !14, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 1129]
!288 = metadata !{i32 786689, metadata !223, metadata !"hdim", metadata !5, i32 67109994, metadata !14, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [hdim] [line 1130]
!289 = metadata !{i32 1130, i32 0, metadata !223, metadata !284}
!290 = metadata !{i32 786689, metadata !223, metadata !"global_startpoint", metadata !5, i32 83887211, metadata !59, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [global_startpoint] [line 1131]
!291 = metadata !{i32 1131, i32 0, metadata !223, metadata !284}
!292 = metadata !{i32 786689, metadata !223, metadata !"directions", metadata !5, i32 100664428, metadata !59, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [directions] [line 1132]
!293 = metadata !{i32 1132, i32 0, metadata !223, metadata !284}
!294 = metadata !{i32 786689, metadata !223, metadata !"extents", metadata !5, i32 117441645, metadata !59, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [extents] [line 1133]
!295 = metadata !{i32 1133, i32 0, metadata !223, metadata !284}
!296 = metadata !{i32 786689, metadata !223, metadata !"downsample_", metadata !5, i32 134218862, metadata !59, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [downsample_] [line 1134]
!297 = metadata !{i32 1134, i32 0, metadata !223, metadata !284}
!298 = metadata !{i32 786689, metadata !223, metadata !"hdata", metadata !5, i32 150996079, metadata !43, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [hdata] [line 1135]
!299 = metadata !{i32 1135, i32 0, metadata !223, metadata !284}
!300 = metadata !{i32 786689, metadata !223, metadata !"hsize", metadata !5, i32 167773296, metadata !24, i32 0, metadata !284} ; [ DW_TAG_arg_variable ] [hsize] [line 1136]
!301 = metadata !{i32 1136, i32 0, metadata !223, metadata !284}
!302 = metadata !{i32 1140, i32 0, metadata !223, metadata !284}
!303 = metadata !{i32 1144, i32 0, metadata !223, metadata !284}
!304 = metadata !{i32 1148, i32 0, metadata !223, metadata !284}
!305 = metadata !{i32 1154, i32 0, metadata !223, metadata !284}
!306 = metadata !{i32 1161, i32 0, metadata !307, metadata !284}
!307 = metadata !{i32 786443, metadata !1, metadata !223, i32 1161, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!308 = metadata !{i32 1163, i32 0, metadata !309, metadata !284}
!309 = metadata !{i32 786443, metadata !1, metadata !307, i32 1162, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!310 = metadata !{i32 1167, i32 0, metadata !309, metadata !284}
!311 = metadata !{i32 1174, i32 0, metadata !223, metadata !284}
!312 = metadata !{i32 1180, i32 0, metadata !223, metadata !284}
!313 = metadata !{i32 1186, i32 0, metadata !223, metadata !284}
!314 = metadata !{i32 1192, i32 0, metadata !315, metadata !284}
!315 = metadata !{i32 786443, metadata !1, metadata !223, i32 1192, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!316 = metadata !{i32 1194, i32 0, metadata !317, metadata !284}
!317 = metadata !{i32 786443, metadata !1, metadata !318, i32 1194, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!318 = metadata !{i32 786443, metadata !1, metadata !315, i32 1193, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!319 = metadata !{i32 1196, i32 0, metadata !320, metadata !284}
!320 = metadata !{i32 786443, metadata !1, metadata !317, i32 1195, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!321 = metadata !{i32 1201, i32 0, metadata !318, metadata !284}
!322 = metadata !{i32 1212, i32 0, metadata !223, metadata !284}
!323 = metadata !{i32 1217, i32 0, metadata !223, metadata !284}
!324 = metadata !{i32 268, i32 0, metadata !11, null}
!325 = metadata !{i32 270, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !11, i32 269, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!327 = metadata !{i32 271, i32 0, metadata !326, null}
!328 = metadata !{i32 275, i32 0, metadata !11, null}
!329 = metadata !{i32 280, i32 0, metadata !11, null}
!330 = metadata !{i32 295, i32 0, metadata !11, null}
!331 = metadata !{i32 282, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !11, i32 281, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!333 = metadata !{i32 284, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !332, i32 283, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!335 = metadata !{i32 285, i32 0, metadata !334, null}
!336 = metadata !{i32 290, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 286, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!338 = metadata !{i32 291, i32 0, metadata !337, null}
!339 = metadata !{i32 297, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !11, i32 296, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!341 = metadata !{void (i8*, i8*, i32, i32, i32)* null}
!342 = metadata !{i32 299, i32 0, metadata !340, null}
!343 = metadata !{i32 300, i32 0, metadata !340, null}
!344 = metadata !{i32 303, i32 0, metadata !11, null}
!345 = metadata !{i32 306, i32 0, metadata !11, null}
!346 = metadata !{i32 307, i32 0, metadata !11, null}
!347 = metadata !{i32 308, i32 0, metadata !11, null}
!348 = metadata !{i32 309, i32 0, metadata !11, null}
!349 = metadata !{i32 310, i32 0, metadata !11, null}
!350 = metadata !{i32 311, i32 0, metadata !11, null}
!351 = metadata !{i32 312, i32 0, metadata !11, null}
!352 = metadata !{i32 313, i32 0, metadata !11, null}
!353 = metadata !{i32 316, i32 0, metadata !11, null}
!354 = metadata !{i32 1}
!355 = metadata !{i32 317, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !11, i32 317, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!357 = metadata !{i32 319, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !359, i32 319, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!359 = metadata !{i32 786443, metadata !1, metadata !356, i32 318, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!360 = metadata !{i32 321, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !358, i32 320, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!362 = metadata !{i32 326, i32 0, metadata !11, null}
!363 = metadata !{i32 327, i32 0, metadata !11, null}
!364 = metadata !{i32 330, i32 0, metadata !11, null}
!365 = metadata !{i32 786689, metadata !241, metadata !"hdim", metadata !5, i32 33555535, metadata !14, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [hdim] [line 1103]
!366 = metadata !{i32 333, i32 0, metadata !11, null}
!367 = metadata !{i32 1103, i32 0, metadata !241, metadata !366}
!368 = metadata !{i32 786689, metadata !241, metadata !"global_startpoint", metadata !5, i32 50332752, metadata !59, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [global_startpoint] [line 1104]
!369 = metadata !{i32 1104, i32 0, metadata !241, metadata !366}
!370 = metadata !{i32 786689, metadata !241, metadata !"extents", metadata !5, i32 67109969, metadata !59, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [extents] [line 1105]
!371 = metadata !{i32 1105, i32 0, metadata !241, metadata !366}
!372 = metadata !{i32 786689, metadata !241, metadata !"downsample_", metadata !5, i32 83887186, metadata !59, i32 0, metadata !366} ; [ DW_TAG_arg_variable ] [downsample_] [line 1106]
!373 = metadata !{i32 1106, i32 0, metadata !241, metadata !366}
!374 = metadata !{i32 1112, i32 0, metadata !241, metadata !366}
!375 = metadata !{i32 786688, metadata !241, metadata !"is_full_hyperslab", metadata !5, i32 1109, metadata !14, i32 0, metadata !366} ; [ DW_TAG_auto_variable ] [is_full_hyperslab] [line 1109]
!376 = metadata !{i32 1114, i32 0, metadata !241, metadata !366}
!377 = metadata !{i32 1121, i32 0, metadata !378, metadata !366}
!378 = metadata !{i32 786443, metadata !1, metadata !379, i32 1117, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!379 = metadata !{i32 786443, metadata !1, metadata !380, i32 1116, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!380 = metadata !{i32 786443, metadata !1, metadata !241, i32 1115, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!381 = metadata !{i32 1116, i32 0, metadata !379, metadata !366}
!382 = metadata !{i32 1118, i32 0, metadata !378, metadata !366}
!383 = metadata !{i32 1119, i32 0, metadata !378, metadata !366}
!384 = metadata !{i32 1120, i32 0, metadata !378, metadata !366}
!385 = metadata !{i32 335, i32 0, metadata !11, null}
!386 = metadata !{i32 348, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !220, i32 348, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!388 = metadata !{i32 337, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !11, i32 336, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!390 = metadata !{i32 338, i32 0, metadata !389, null}
!391 = metadata !{i32 339, i32 0, metadata !389, null}
!392 = metadata !{i32 341, i32 0, metadata !389, null}
!393 = metadata !{i32 342, i32 0, metadata !389, null}
!394 = metadata !{i32 343, i32 0, metadata !389, null}
!395 = metadata !{i32 344, i32 0, metadata !389, null}
!396 = metadata !{i32 367, i32 0, metadata !219, null}
!397 = metadata !{i32 369, i32 0, metadata !218, null}
!398 = metadata !{i32 371, i32 0, metadata !218, null}
!399 = metadata !{i32 350, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !387, i32 349, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!401 = metadata !{i32 352, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 351, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!403 = metadata !{i32 356, i32 0, metadata !402, null}
!404 = metadata !{i32 357, i32 0, metadata !402, null}
!405 = metadata !{i32 358, i32 0, metadata !402, null}
!406 = metadata !{i32 361, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !400, i32 360, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!408 = metadata !{i32 362, i32 0, metadata !407, null}
!409 = metadata !{i32 402, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !220, i32 402, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!411 = metadata !{i32 404, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !410, i32 403, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!413 = metadata !{i32 406, i32 0, metadata !412, null}
!414 = metadata !{i32 450, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !412, i32 441, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!416 = metadata !{i32 374, i32 0, metadata !217, null}
!417 = metadata !{i32 379, i32 0, metadata !216, null}
!418 = metadata !{i32 381, i32 0, metadata !216, null}
!419 = metadata !{i32 386, i32 0, metadata !216, null}
!420 = metadata !{i32 388, i32 0, metadata !216, null}
!421 = metadata !{i32 391, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !217, i32 390, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!423 = metadata !{i32 396, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !218, i32 395, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!425 = metadata !{i32 410, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !412, i32 409, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!427 = metadata !{i32 412, i32 0, metadata !426, null}
!428 = metadata !{i32 415, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !412, i32 414, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!430 = metadata !{i32 418, i32 0, metadata !412, null}
!431 = metadata !{i32 421, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !412, i32 420, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!433 = metadata !{i32 423, i32 0, metadata !432, null}
!434 = metadata !{i32 426, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !412, i32 425, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!436 = metadata !{i32 434, i32 0, metadata !412, null}
!437 = metadata !{i32 437, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !412, i32 435, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!439 = metadata !{i32 436, i32 0, metadata !438, null}
!440 = metadata !{i32 438, i32 0, metadata !438, null}
!441 = metadata !{i32 440, i32 0, metadata !412, null}
!442 = metadata !{i32 443, i32 0, metadata !415, null}
!443 = metadata !{i32 445, i32 0, metadata !415, null}
!444 = metadata !{i32 448, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !415, i32 447, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!446 = metadata !{i32 449, i32 0, metadata !445, null}
!447 = metadata !{i32 452, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !415, i32 451, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!449 = metadata !{i32 453, i32 0, metadata !448, null}
!450 = metadata !{i32 454, i32 0, metadata !415, null}
!451 = metadata !{i32 455, i32 0, metadata !415, null}
!452 = metadata !{i32 457, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !415, i32 456, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!454 = metadata !{i32 459, i32 0, metadata !415, null}
!455 = metadata !{i32 460, i32 0, metadata !415, null}
!456 = metadata !{i32 461, i32 0, metadata !415, null}
!457 = metadata !{i32 471, i32 0, metadata !11, null}
!458 = metadata !{i32 473, i32 0, metadata !222, null}
!459 = metadata !{i32 477, i32 0, metadata !222, null}
!460 = metadata !{i32 479, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !462, i32 479, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!462 = metadata !{i32 786443, metadata !1, metadata !222, i32 478, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!463 = metadata !{i32 485, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !465, i32 484, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 482, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!466 = metadata !{i32 786443, metadata !1, metadata !461, i32 480, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!467 = metadata !{i32 491, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !465, i32 488, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!469 = metadata !{i32 481, i32 0, metadata !466, null}
!470 = metadata !{i32 483, i32 0, metadata !465, null}
!471 = metadata !{i32 486, i32 0, metadata !464, null}
!472 = metadata !{i32 489, i32 0, metadata !468, null}
!473 = metadata !{i32 493, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !468, i32 492, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!475 = metadata !{i32 494, i32 0, metadata !474, null}
!476 = metadata !{i32 500, i32 0, metadata !465, null}
!477 = metadata !{i32 501, i32 0, metadata !465, null}
!478 = metadata !{i32 505, i32 0, metadata !222, null}
!479 = metadata !{i32 508, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !222, i32 506, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!481 = metadata !{i32 509, i32 0, metadata !480, null}
!482 = metadata !{i32 514, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !222, i32 511, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!484 = metadata !{i32 515, i32 0, metadata !483, null}
!485 = metadata !{i32 518, i32 0, metadata !483, null}
!486 = metadata !{i32 519, i32 0, metadata !483, null}
!487 = metadata !{i32 520, i32 0, metadata !483, null}
!488 = metadata !{i32 525, i32 0, metadata !483, null}
!489 = metadata !{i32 526, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !483, i32 526, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!491 = metadata !{i32 528, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !490, i32 527, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!493 = metadata !{i32 534, i32 0, metadata !483, null}
!494 = metadata !{i32 535, i32 0, metadata !483, null}
!495 = metadata !{i32 539, i32 0, metadata !483, null}
!496 = metadata !{i32 542, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !483, i32 542, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!498 = metadata !{i32 544, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !497, i32 543, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!500 = metadata !{i32 545, i32 0, metadata !499, null}
!501 = metadata !{i32 546, i32 0, metadata !499, null}
!502 = metadata !{i32 550, i32 0, metadata !483, null}
!503 = metadata !{i32 553, i32 0, metadata !483, null}
!504 = metadata !{i32 557, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !483, i32 555, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!506 = metadata !{i32 594, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !505, i32 593, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!508 = metadata !{i32 600, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !507, i32 599, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!510 = metadata !{i32 625, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !505, i32 623, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!512 = metadata !{i32 613, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !514, i32 613, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!514 = metadata !{i32 786443, metadata !1, metadata !515, i32 612, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!515 = metadata !{i32 786443, metadata !1, metadata !505, i32 604, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!516 = metadata !{i32 615, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !513, i32 614, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!518 = metadata !{i32 554, i32 0, metadata !483, null}
!519 = metadata !{i32 584, i32 0, metadata !505, null}
!520 = metadata !{i32 585, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !505, i32 585, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!522 = metadata !{i32 560, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !524, i32 560, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!524 = metadata !{i32 786443, metadata !1, metadata !505, i32 558, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!525 = metadata !{i32 562, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !523, i32 561, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!527 = metadata !{i32 563, i32 0, metadata !526, null}
!528 = metadata !{i32 570, i32 0, metadata !524, null}
!529 = metadata !{i32 576, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !524, i32 576, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!531 = metadata !{i32 578, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !530, i32 577, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!533 = metadata !{i32 587, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !521, i32 586, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!535 = metadata !{i32 592, i32 0, metadata !505, null}
!536 = metadata !{i32 596, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !507, i32 595, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!538 = metadata !{i32 597, i32 0, metadata !537, null}
!539 = metadata !{i32 605, i32 0, metadata !515, null}
!540 = metadata !{i32 607, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !515, i32 606, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!542 = metadata !{i32 610, i32 0, metadata !541, null}
!543 = metadata !{i32 616, i32 0, metadata !517, null}
!544 = metadata !{i32 620, i32 0, metadata !505, null}
!545 = metadata !{i32 622, i32 0, metadata !505, null}
!546 = metadata !{i32 633, i32 0, metadata !505, null}
!547 = metadata !{i32 641, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !11, i32 638, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c]
!549 = metadata !{i32 645, i32 0, metadata !11, null}
!550 = metadata !{i32 647, i32 0, metadata !11, null}
!551 = metadata !{i32 648, i32 0, metadata !11, null}
