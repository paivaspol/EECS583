; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@.str = private unnamed_addr constant [65 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c"Unknown group type in PUGH_SetupGroup\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"Memory allocation error in PUGH_SetupGAGroup\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"Memory allocation error in PUGH_SetupScalarGroup\00", align 1
@.str5 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupGroup.c,v 1.45 2001/10/07 10:06:31 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupGroup_c() #0 {
entry:
  ret i8* getelementptr inbounds ([91 x i8]* @.str5, i64 0, i64 0), !dbg !216
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupGroup(%struct.PGH* %newGH, i32* %nsize, i32* %nghostsize, i32 %gtype, i32 %vtype, i32 %dim, i32 %n_variables, i32 %staggercode, i32 %n_timelevels, i32 %vectorgroup) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %newGH}, i64 0, metadata !88), !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32* %nsize}, i64 0, metadata !89), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32* %nghostsize}, i64 0, metadata !90), !dbg !219
  tail call void @llvm.dbg.value(metadata !{i32 %gtype}, i64 0, metadata !91), !dbg !220
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !92), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !93), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32 %n_variables}, i64 0, metadata !94), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %staggercode}, i64 0, metadata !95), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %n_timelevels}, i64 0, metadata !96), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %vectorgroup}, i64 0, metadata !97), !dbg !226
  %cmp = icmp eq i32 %gtype, 1, !dbg !227
  br i1 %cmp, label %if.then, label %if.else, !dbg !227

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !228) #5, !dbg !231
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !232) #5, !dbg !233
  %variables.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7, !dbg !234
  %0 = load i8**** %variables.i, align 8, !dbg !234, !tbaa !235
  %1 = bitcast i8*** %0 to i8*, !dbg !234
  %nvariables.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5, !dbg !234
  %2 = load i32* %nvariables.i, align 4, !dbg !234, !tbaa !238
  %add.i = add nsw i32 %2, %n_variables, !dbg !234
  %conv.i = sext i32 %add.i to i64, !dbg !234
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !234
  %call.i = tail call i8* @realloc(i8* %1, i64 %mul.i) #6, !dbg !234
  tail call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !239) #5, !dbg !234
  %tobool.i = icmp eq i8* %call.i, null, !dbg !240
  br i1 %tobool.i, label %if.else44.i, label %if.then.i, !dbg !240

if.then.i:                                        ; preds = %if.then
  %3 = bitcast i8* %call.i to i8***, !dbg !241
  store i8*** %3, i8**** %variables.i, align 8, !dbg !241, !tbaa !235
  %call3.i = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #6, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %call3.i}, i64 0, metadata !244) #5, !dbg !243
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !245) #5, !dbg !246
  %cmp6.i = icmp sgt i32 %n_variables, 0, !dbg !246
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.then.i.if.then41.i_crit_edge, !dbg !246

if.then.i.if.then41.i_crit_edge:                  ; preds = %if.then.i
  %.pre = load i32* %nvariables.i, align 4, !dbg !248, !tbaa !238
  br label %if.then41.i, !dbg !246

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %conv7.i = sext i32 %n_timelevels to i64, !dbg !250
  %mul8.i = shl nsw i64 %conv7.i, 3, !dbg !250
  %add19.i = add nsw i32 %call3.i, 1, !dbg !252
  %conv20.i = sext i32 %add19.i to i64, !dbg !252
  %cmp164.i = icmp sgt i32 %n_timelevels, 0, !dbg !256
  %idxprom31.i = sext i32 %call3.i to i64, !dbg !257
  br label %for.body.i, !dbg !246

for.body.i:                                       ; preds = %for.inc35.i, %for.body.lr.ph.i
  %variable.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc36.i, %for.inc35.i ]
  %call9.i = tail call noalias i8* @malloc(i64 %mul8.i) #6, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i8* %call9.i}, i64 0, metadata !239) #5, !dbg !250
  %tobool10.i = icmp eq i8* %call9.i, null, !dbg !259
  br i1 %tobool10.i, label %if.else44.i, label %if.then11.i, !dbg !259

if.then11.i:                                      ; preds = %for.body.i
  %4 = bitcast i8* %call9.i to i8**, !dbg !260
  %5 = load i32* %nvariables.i, align 4, !dbg !260, !tbaa !238
  %add13.i = add nsw i32 %5, %variable.07.i, !dbg !260
  %idxprom.i = sext i32 %add13.i to i64, !dbg !260
  %6 = load i8**** %variables.i, align 8, !dbg !260, !tbaa !235
  %arrayidx.i = getelementptr inbounds i8*** %6, i64 %idxprom.i, !dbg !260
  store i8** %4, i8*** %arrayidx.i, align 8, !dbg !260, !tbaa !235
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !261) #5, !dbg !256
  br i1 %cmp164.i, label %for.body18.i, label %for.inc35.i, !dbg !256

for.body18.i:                                     ; preds = %if.then11.i, %if.then23.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.then23.i ], [ 0, %if.then11.i ]
  %call21.i = tail call noalias i8* @malloc(i64 %conv20.i) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i8* %call21.i}, i64 0, metadata !239) #5, !dbg !252
  %tobool22.i = icmp eq i8* %call21.i, null, !dbg !262
  br i1 %tobool22.i, label %if.else44.i, label %if.then23.i, !dbg !262

if.then23.i:                                      ; preds = %for.body18.i
  %7 = load i8**** %variables.i, align 8, !dbg !263, !tbaa !235
  %arrayidx29.i = getelementptr inbounds i8*** %7, i64 %idxprom.i, !dbg !263
  %8 = load i8*** %arrayidx29.i, align 8, !dbg !263, !tbaa !235
  %arrayidx30.i = getelementptr inbounds i8** %8, i64 %indvars.iv.i, !dbg !263
  store i8* %call21.i, i8** %arrayidx30.i, align 8, !dbg !263, !tbaa !235
  %arrayidx32.i = getelementptr inbounds i8* %call21.i, i64 %idxprom31.i, !dbg !257
  store i8 0, i8* %arrayidx32.i, align 1, !dbg !257, !tbaa !236
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !256
  %9 = trunc i64 %indvars.iv.next.i to i32, !dbg !256
  %cmp16.i = icmp slt i32 %9, %n_timelevels, !dbg !256
  br i1 %cmp16.i, label %for.body18.i, label %for.inc35.i, !dbg !256

for.inc35.i:                                      ; preds = %if.then23.i, %if.then11.i
  %inc36.i = add nsw i32 %variable.07.i, 1, !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32 %inc36.i}, i64 0, metadata !245) #5, !dbg !246
  %cmp.i = icmp slt i32 %inc36.i, %n_variables, !dbg !246
  br i1 %cmp.i, label %for.body.i, label %if.then41.i, !dbg !246

if.then41.i:                                      ; preds = %for.inc35.i, %if.then.i.if.then41.i_crit_edge
  %10 = phi i32 [ %.pre, %if.then.i.if.then41.i_crit_edge ], [ %5, %for.inc35.i ]
  %add43.i = add nsw i32 %10, %n_variables, !dbg !248
  store i32 %add43.i, i32* %nvariables.i, align 4, !dbg !248, !tbaa !238
  br label %if.end8, !dbg !264

if.else44.i:                                      ; preds = %for.body.i, %for.body18.i, %if.then
  %call45.i = tail call i32 @CCTK_Warn(i32 1, i32 153, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !265
  br label %if.end8

if.else:                                          ; preds = %entry
  %11 = and i32 %gtype, -2, !dbg !267
  %12 = icmp eq i32 %11, 2, !dbg !267
  br i1 %12, label %if.then4, label %if.else6, !dbg !267

if.then4:                                         ; preds = %if.else
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %newGH}, i64 0, metadata !268) #5, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32* %nsize}, i64 0, metadata !272) #5, !dbg !273
  tail call void @llvm.dbg.value(metadata !{i32* %nghostsize}, i64 0, metadata !274) #5, !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %gtype}, i64 0, metadata !276) #5, !dbg !277
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !278) #5, !dbg !279
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !280) #5, !dbg !281
  tail call void @llvm.dbg.value(metadata !{i32 %n_variables}, i64 0, metadata !282) #5, !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %staggercode}, i64 0, metadata !284) #5, !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %n_timelevels}, i64 0, metadata !286) #5, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i32 %vectorgroup}, i64 0, metadata !288) #5, !dbg !289
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !290) #5, !dbg !291
  %call.i17 = tail call i32 @CCTK_VarTypeSize(i32 %vtype) #6, !dbg !292
  tail call void @llvm.dbg.value(metadata !{i32 %call.i17}, i64 0, metadata !293) #5, !dbg !292
  %cmp.i18 = icmp eq i32 %gtype, 3, !dbg !294
  br i1 %cmp.i18, label %if.then.i21, label %if.else.i, !dbg !294

if.then.i21:                                      ; preds = %if.then4
  %conv.i19 = sext i32 %dim to i64, !dbg !295
  %call2.i = tail call noalias i8* @calloc(i64 %conv.i19, i64 4) #6, !dbg !295
  %13 = bitcast i8* %call2.i to i32*, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32* %13}, i64 0, metadata !297) #5, !dbg !295
  %call4.i = tail call noalias i8* @calloc(i64 %conv.i19, i64 4) #6, !dbg !298
  %14 = bitcast i8* %call4.i to i32*, !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !299) #5, !dbg !298
  %tobool.i20 = icmp eq i8* %call2.i, null, !dbg !300
  %tobool5.i = icmp eq i8* %call4.i, null, !dbg !300
  %or.cond.i = or i1 %tobool.i20, %tobool5.i, !dbg !300
  br i1 %or.cond.i, label %if.then6.i, label %for.cond.preheader.i, !dbg !300

if.then6.i:                                       ; preds = %if.then.i21
  %call7.i = tail call i32 @CCTK_Warn(i32 0, i32 266, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !301
  br label %for.cond.preheader.i, !dbg !303

for.cond.preheader.i:                             ; preds = %if.then6.i, %if.then.i21
  %cmp8182.i = icmp sgt i32 %dim, 0, !dbg !304
  br i1 %cmp8182.i, label %for.body.i24, label %for.end.i, !dbg !304

for.body.i24:                                     ; preds = %for.cond.preheader.i, %for.inc.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i22 = getelementptr inbounds i32* %14, i64 %indvars.iv184.i, !dbg !306
  %15 = load i32* %arrayidx.i22, align 4, !dbg !306, !tbaa !238
  %tobool10.i23 = icmp eq i32 %15, 0, !dbg !306
  br i1 %tobool10.i23, label %land.lhs.true11.i, label %for.inc.i, !dbg !306

land.lhs.true11.i:                                ; preds = %for.body.i24
  %arrayidx13.i = getelementptr inbounds i32* %nsize, i64 %indvars.iv184.i, !dbg !306
  %16 = load i32* %arrayidx13.i, align 4, !dbg !306, !tbaa !238
  %ispos.i = icmp sgt i32 %16, -1, !dbg !306
  %neg.i = sub i32 0, %16, !dbg !306
  %17 = select i1 %ispos.i, i32 %16, i32 %neg.i, !dbg !306
  %arrayidx16.i = getelementptr inbounds i32* %nghostsize, i64 %indvars.iv184.i, !dbg !306
  %18 = load i32* %arrayidx16.i, align 4, !dbg !306, !tbaa !238
  %mul.i25 = shl nsw i32 %18, 1, !dbg !306
  %add172.i = or i32 %mul.i25, 1, !dbg !306
  %cmp17.i = icmp sgt i32 %17, %add172.i, !dbg !306
  br i1 %cmp17.i, label %for.inc.i, label %if.then19.i, !dbg !306

if.then19.i:                                      ; preds = %land.lhs.true11.i
  store i32 1, i32* %arrayidx.i22, align 4, !dbg !308, !tbaa !238
  br label %for.inc.i, !dbg !310

for.inc.i:                                        ; preds = %if.then19.i, %land.lhs.true11.i, %for.body.i24
  %indvars.iv.next185.i = add i64 %indvars.iv184.i, 1, !dbg !304
  %lftr.wideiv40 = trunc i64 %indvars.iv.next185.i to i32, !dbg !304
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %dim, !dbg !304
  br i1 %exitcond41, label %for.end.i, label %for.body.i24, !dbg !304

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %nprocs23.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 2, !dbg !311
  %19 = load i32* %nprocs23.i, align 4, !dbg !311, !tbaa !238
  %call24.i = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %dim, i32 %19, i32* %14, i32* %13) #6, !dbg !311
  tail call void @llvm.dbg.value(metadata !{%struct.PConnectivity* %call24.i}, i64 0, metadata !312) #5, !dbg !311
  %20 = load i32* %nprocs23.i, align 4, !dbg !313, !tbaa !238
  %nprocs26.i = getelementptr inbounds %struct.PConnectivity* %call24.i, i64 0, i32 1, !dbg !313
  %21 = load i32** %nprocs26.i, align 8, !dbg !313, !tbaa !235
  %myproc.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 3, !dbg !313
  %22 = load i32* %myproc.i, align 4, !dbg !313, !tbaa !238
  %call27.i = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %dim, i32* %13, i32 %staggercode, i32* %nsize, i32* %nghostsize, i32 %20, i32* %21, i32 %22) #6, !dbg !313
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %call27.i}, i64 0, metadata !314) #5, !dbg !313
  tail call void @free(i8* %call4.i) #6, !dbg !315
  tail call void @free(i8* %call2.i) #6, !dbg !316
  br label %if.end33.i, !dbg !317

if.else.i:                                        ; preds = %if.then4
  %sub.i = add nsw i32 %dim, -1, !dbg !318
  %idxprom28.i = sext i32 %sub.i to i64, !dbg !318
  %Connectivity.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 22, !dbg !318
  %23 = load %struct.PConnectivity*** %Connectivity.i, align 8, !dbg !318, !tbaa !235
  %arrayidx29.i26 = getelementptr inbounds %struct.PConnectivity** %23, i64 %idxprom28.i, !dbg !318
  %24 = load %struct.PConnectivity** %arrayidx29.i26, align 8, !dbg !318, !tbaa !235
  tail call void @llvm.dbg.value(metadata !{%struct.PConnectivity* %24}, i64 0, metadata !312) #5, !dbg !318
  %GFExtras.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 21, !dbg !320
  %25 = load %struct.PGExtras*** %GFExtras.i, align 8, !dbg !320, !tbaa !235
  %arrayidx32.i27 = getelementptr inbounds %struct.PGExtras** %25, i64 %idxprom28.i, !dbg !320
  %26 = load %struct.PGExtras** %arrayidx32.i27, align 8, !dbg !320, !tbaa !235
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %26}, i64 0, metadata !314) #5, !dbg !320
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else.i, %for.end.i
  %connectivity.0.i = phi %struct.PConnectivity* [ %call24.i, %for.end.i ], [ %24, %if.else.i ]
  %extras.0.i = phi %struct.PGExtras* [ %call27.i, %for.end.i ], [ %26, %if.else.i ]
  %commmodel.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 4, !dbg !321
  %27 = load i32* %commmodel.i, align 4, !dbg !321, !tbaa !238
  %cmp34.i = icmp eq i32 %27, 1, !dbg !321
  %nvariables.i28 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 5, !dbg !322
  br i1 %cmp34.i, label %if.then36.i, label %if.end39.i, !dbg !321

if.then36.i:                                      ; preds = %if.end33.i
  %28 = load i32* %nvariables.i28, align 4, !dbg !322, !tbaa !238
  %call37.i = tail call %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH* %newGH, i32 %dim, i32 %28, i32 %n_variables, i32 0, i32 %vtype, %struct.PGExtras* %extras.0.i) #6, !dbg !322
  tail call void @llvm.dbg.value(metadata !{%struct.PComm* %call37.i}, i64 0, metadata !324) #5, !dbg !322
  br label %if.end39.i, !dbg !325

if.end39.i:                                       ; preds = %if.then36.i, %if.end33.i
  %groupcomm.0.i = phi %struct.PComm* [ %call37.i, %if.then36.i ], [ null, %if.end33.i ]
  %variables.i29 = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 7, !dbg !326
  %29 = load i8**** %variables.i29, align 8, !dbg !326, !tbaa !235
  %30 = bitcast i8*** %29 to i8*, !dbg !326
  %31 = load i32* %nvariables.i28, align 4, !dbg !326, !tbaa !238
  %add41.i = add nsw i32 %31, %n_variables, !dbg !326
  %conv42.i = sext i32 %add41.i to i64, !dbg !326
  %mul43.i = shl nsw i64 %conv42.i, 3, !dbg !326
  %call44.i = tail call i8* @realloc(i8* %30, i64 %mul43.i) #6, !dbg !326
  %tobool45.i = icmp eq i8* %call44.i, null, !dbg !327
  br i1 %tobool45.i, label %if.then108.i, label %if.then46.i, !dbg !327

if.then46.i:                                      ; preds = %if.end39.i
  %32 = bitcast i8* %call44.i to i8***, !dbg !326
  store i8*** %32, i8**** %variables.i29, align 8, !dbg !328, !tbaa !235
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !330) #5, !dbg !331
  %cmp49180.i = icmp sgt i32 %n_variables, 0, !dbg !331
  br i1 %cmp49180.i, label %for.body51.lr.ph.i, label %if.end8, !dbg !331

for.body51.lr.ph.i:                               ; preds = %if.then46.i
  %conv52.i = sext i32 %n_timelevels to i64, !dbg !333
  %mul53.i = shl nsw i64 %conv52.i, 3, !dbg !333
  %cmp66178.i = icmp sgt i32 %n_timelevels, 0, !dbg !335
  %33 = bitcast %struct.PGH* %newGH to i8*, !dbg !338
  %narrays.i = getelementptr inbounds %struct.PGH* %newGH, i64 0, i32 6, !dbg !340
  %tobool72.i = icmp ne i32 %vectorgroup, 0, !dbg !340
  %cond.i = select i1 %tobool72.i, i32 %n_variables, i32 1, !dbg !340
  %.pre.i = load i32* %nvariables.i28, align 4, !dbg !333, !tbaa !238
  %call54.i33 = tail call noalias i8* @malloc(i64 %mul53.i) #6, !dbg !333
  %34 = bitcast i8* %call54.i33 to i8**, !dbg !333
  %idxprom56.i34 = sext i32 %.pre.i to i64, !dbg !333
  %arrayidx58.i35 = getelementptr inbounds i8*** %32, i64 %idxprom56.i34, !dbg !333
  store i8** %34, i8*** %arrayidx58.i35, align 8, !dbg !333, !tbaa !235
  %tobool63.i37 = icmp eq i8* %call54.i33, null, !dbg !341
  br i1 %tobool63.i37, label %if.then108.i, label %for.cond65.preheader.i, !dbg !341

for.cond65.preheader.i:                           ; preds = %for.body51.lr.ph.i, %for.end97.for.body51_crit_edge.i
  %variable.0181.i38 = phi i32 [ %inc103.i, %for.end97.for.body51_crit_edge.i ], [ 0, %for.body51.lr.ph.i ]
  %35 = phi i32 [ %inc99.i, %for.end97.for.body51_crit_edge.i ], [ %.pre.i, %for.body51.lr.ph.i ]
  br i1 %cmp66178.i, label %for.body68.lr.ph.i, label %for.end97.i, !dbg !335

for.body68.lr.ph.i:                               ; preds = %for.cond65.preheader.i
  %cmp73.i = icmp sgt i32 %variable.0181.i38, 0, !dbg !340
  br label %for.body68.i, !dbg !335

for.body68.i:                                     ; preds = %cond.end84.i, %for.body68.lr.ph.i
  %36 = phi i32 [ %35, %for.body68.lr.ph.i ], [ %43, %cond.end84.i ]
  %indvars.iv.i30 = phi i64 [ 0, %for.body68.lr.ph.i ], [ %indvars.iv.next.i31, %cond.end84.i ]
  %call70.i = tail call i8* @CCTK_VarName(i32 %36) #6, !dbg !340
  %37 = load i32* %nvariables.i28, align 4, !dbg !340, !tbaa !238
  %38 = load i32* %narrays.i, align 4, !dbg !340, !tbaa !238
  br i1 %cmp73.i, label %cond.true75.i, label %cond.end84.i, !dbg !340

cond.true75.i:                                    ; preds = %for.body68.i
  %sub78.i = sub nsw i32 %37, %variable.0181.i38, !dbg !340
  %idxprom79.i = sext i32 %sub78.i to i64, !dbg !340
  %39 = load i8**** %variables.i29, align 8, !dbg !340, !tbaa !235
  %arrayidx81.i = getelementptr inbounds i8*** %39, i64 %idxprom79.i, !dbg !340
  %40 = load i8*** %arrayidx81.i, align 8, !dbg !340, !tbaa !235
  %arrayidx82.i = getelementptr inbounds i8** %40, i64 %indvars.iv.i30, !dbg !340
  %41 = load i8** %arrayidx82.i, align 8, !dbg !340, !tbaa !235
  %phitmp.i = bitcast i8* %41 to %struct.PGA*, !dbg !340
  br label %cond.end84.i, !dbg !340

cond.end84.i:                                     ; preds = %cond.true75.i, %for.body68.i
  %cond85.i = phi %struct.PGA* [ %phitmp.i, %cond.true75.i ], [ null, %for.body68.i ]
  %call86.i = tail call %struct.PGA* @PUGH_SetupGArray(i8* %33, %struct.PGExtras* %extras.0.i, %struct.PConnectivity* %connectivity.0.i, %struct.PComm* %groupcomm.0.i, i8* %call70.i, i32 %37, i32 %38, i32 %call.i17, i32 %vtype, i32 %staggercode, i32 %cond.i, i32 %variable.0181.i38, %struct.PGA* %cond85.i) #6, !dbg !340
  %42 = bitcast %struct.PGA* %call86.i to i8*, !dbg !340
  %43 = load i32* %nvariables.i28, align 4, !dbg !340, !tbaa !238
  %idxprom89.i = sext i32 %43 to i64, !dbg !340
  %44 = load i8**** %variables.i29, align 8, !dbg !340, !tbaa !235
  %arrayidx91.i = getelementptr inbounds i8*** %44, i64 %idxprom89.i, !dbg !340
  %45 = load i8*** %arrayidx91.i, align 8, !dbg !340, !tbaa !235
  %arrayidx92.i = getelementptr inbounds i8** %45, i64 %indvars.iv.i30, !dbg !340
  store i8* %42, i8** %arrayidx92.i, align 8, !dbg !340, !tbaa !235
  %46 = load i32* %narrays.i, align 4, !dbg !342, !tbaa !238
  %inc94.i = add nsw i32 %46, 1, !dbg !342
  store i32 %inc94.i, i32* %narrays.i, align 4, !dbg !342, !tbaa !238
  %indvars.iv.next.i31 = add i64 %indvars.iv.i30, 1, !dbg !335
  %lftr.wideiv = trunc i64 %indvars.iv.next.i31 to i32, !dbg !335
  %exitcond = icmp eq i32 %lftr.wideiv, %n_timelevels, !dbg !335
  br i1 %exitcond, label %for.end97.i, label %for.body68.i, !dbg !335

for.end97.i:                                      ; preds = %cond.end84.i, %for.cond65.preheader.i
  %47 = phi i32 [ %35, %for.cond65.preheader.i ], [ %43, %cond.end84.i ], !dbg !343
  %inc99.i = add nsw i32 %47, 1, !dbg !343
  store i32 %inc99.i, i32* %nvariables.i28, align 4, !dbg !343, !tbaa !238
  %inc103.i = add nsw i32 %variable.0181.i38, 1, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %inc103.i}, i64 0, metadata !330) #5, !dbg !331
  %cmp49.i = icmp slt i32 %inc103.i, %n_variables, !dbg !331
  br i1 %cmp49.i, label %for.end97.for.body51_crit_edge.i, label %if.end8, !dbg !331

for.end97.for.body51_crit_edge.i:                 ; preds = %for.end97.i
  %.pre188.i = load i8**** %variables.i29, align 8, !dbg !333, !tbaa !235
  %call54.i = tail call noalias i8* @malloc(i64 %mul53.i) #6, !dbg !333
  %48 = bitcast i8* %call54.i to i8**, !dbg !333
  %idxprom56.i = sext i32 %inc99.i to i64, !dbg !333
  %arrayidx58.i = getelementptr inbounds i8*** %.pre188.i, i64 %idxprom56.i, !dbg !333
  store i8** %48, i8*** %arrayidx58.i, align 8, !dbg !333, !tbaa !235
  %49 = load i8**** %variables.i29, align 8, !dbg !341, !tbaa !235
  %arrayidx62.i = getelementptr inbounds i8*** %49, i64 %idxprom56.i, !dbg !341
  %50 = load i8*** %arrayidx62.i, align 8, !dbg !341, !tbaa !235
  %tobool63.i = icmp eq i8** %50, null, !dbg !341
  br i1 %tobool63.i, label %if.then108.i, label %for.cond65.preheader.i, !dbg !341

if.then108.i:                                     ; preds = %for.body51.lr.ph.i, %for.end97.for.body51_crit_edge.i, %if.end39.i
  %call109.i = tail call i32 @CCTK_Warn(i32 1, i32 366, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !344
  br label %if.end8, !dbg !346

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @CCTK_Warn(i32 0, i32 465, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !347
  tail call void @llvm.dbg.value(metadata !349, i64 0, metadata !98), !dbg !350
  br label %if.end8

if.end8:                                          ; preds = %for.end97.i, %if.then108.i, %if.then46.i, %if.else44.i, %if.then41.i, %if.else6
  %retval1.0 = phi i32 [ -1, %if.else6 ], [ -2, %if.else44.i ], [ 0, %if.then41.i ], [ -2, %if.then108.i ], [ 0, %if.then46.i ], [ 0, %for.end97.i ]
  ret i32 %retval1.0, !dbg !351
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #2

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.PComm* @PUGH_SetupGArrayGroupComm(%struct.PGH*, i32, i32, i32, i32, i32, %struct.PGExtras*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare %struct.PGA* @PUGH_SetupGArray(i8*, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.PGA*) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !214, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !99, metadata !134}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_SetupGroup_c", metadata !"CCTKi_version_CactusPUGH_PUGH_SetupGroup_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_SetupGroup_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_CactusPUGH_PUGH_SetupGroup_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupGroup", metadata !"PUGH_SetupGroup", metadata !"", i32 441, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.PGH*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @PUGH_SetupGroup, null, null, metadata !87, i32 451} ; [ DW_TAG_subprogram ] [line 441] [def] [scope 451] [PUGH_SetupGroup]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !33, metadata !33, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !31, metadata !32, metadata !34, metadata !35, metadata !36, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !75, metadata !85}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!37 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !37} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !37} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!41 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!42 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!43 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!46 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !47} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!49 = metadata !{i32 786454, metadata !18, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!50 = metadata !{i32 786451, metadata !51, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!51 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !72, metadata !74}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!54 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!56 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!59 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!60 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!61 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!62 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!63 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!64 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!65 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!66 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!67 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !68} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !33, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!71 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!72 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !73} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !57, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !73} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!75 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !76} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!78 = metadata !{i32 786454, metadata !18, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!79 = metadata !{i32 786451, metadata !51, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!83 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!84 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!85 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!88 = metadata !{i32 786689, metadata !11, metadata !"newGH", metadata !5, i32 16777657, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newGH] [line 441]
!89 = metadata !{i32 786689, metadata !11, metadata !"nsize", metadata !5, i32 33554874, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 442]
!90 = metadata !{i32 786689, metadata !11, metadata !"nghostsize", metadata !5, i32 50332091, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghostsize] [line 443]
!91 = metadata !{i32 786689, metadata !11, metadata !"gtype", metadata !5, i32 67109308, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gtype] [line 444]
!92 = metadata !{i32 786689, metadata !11, metadata !"vtype", metadata !5, i32 83886525, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 445]
!93 = metadata !{i32 786689, metadata !11, metadata !"dim", metadata !5, i32 100663742, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 446]
!94 = metadata !{i32 786689, metadata !11, metadata !"n_variables", metadata !5, i32 117440959, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 447]
!95 = metadata !{i32 786689, metadata !11, metadata !"staggercode", metadata !5, i32 134218176, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [staggercode] [line 448]
!96 = metadata !{i32 786689, metadata !11, metadata !"n_timelevels", metadata !5, i32 150995393, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 449]
!97 = metadata !{i32 786689, metadata !11, metadata !"vectorgroup", metadata !5, i32 167772610, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vectorgroup] [line 450]
!98 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 452, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 452]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupGAGroup", metadata !"PUGH_SetupGAGroup", metadata !"", i32 231, metadata !12, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !100, i32 241} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 241] [PUGH_SetupGAGroup]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !132, metadata !133}
!101 = metadata !{i32 786689, metadata !99, metadata !"newGH", metadata !5, i32 16777447, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newGH] [line 231]
!102 = metadata !{i32 786689, metadata !99, metadata !"nsize", metadata !5, i32 33554664, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 232]
!103 = metadata !{i32 786689, metadata !99, metadata !"ghostsize", metadata !5, i32 50331881, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostsize] [line 233]
!104 = metadata !{i32 786689, metadata !99, metadata !"gtype", metadata !5, i32 67109098, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gtype] [line 234]
!105 = metadata !{i32 786689, metadata !99, metadata !"vtype", metadata !5, i32 83886315, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 235]
!106 = metadata !{i32 786689, metadata !99, metadata !"dim", metadata !5, i32 100663532, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 236]
!107 = metadata !{i32 786689, metadata !99, metadata !"n_variables", metadata !5, i32 117440749, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 237]
!108 = metadata !{i32 786689, metadata !99, metadata !"staggercode", metadata !5, i32 134217966, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [staggercode] [line 238]
!109 = metadata !{i32 786689, metadata !99, metadata !"n_timelevels", metadata !5, i32 150995183, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 239]
!110 = metadata !{i32 786689, metadata !99, metadata !"vectorgroup", metadata !5, i32 167772400, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vectorgroup] [line 240]
!111 = metadata !{i32 786688, metadata !99, metadata !"i", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 242]
!112 = metadata !{i32 786688, metadata !99, metadata !"variable", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 243]
!113 = metadata !{i32 786688, metadata !99, metadata !"var_size", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var_size] [line 244]
!114 = metadata !{i32 786688, metadata !99, metadata !"retval", metadata !5, i32 245, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 245]
!115 = metadata !{i32 786688, metadata !99, metadata !"level", metadata !5, i32 246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 246]
!116 = metadata !{i32 786688, metadata !99, metadata !"temp", metadata !5, i32 247, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 247]
!117 = metadata !{i32 786688, metadata !99, metadata !"connectivity", metadata !5, i32 248, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [connectivity] [line 248]
!118 = metadata !{i32 786688, metadata !99, metadata !"extras", metadata !5, i32 249, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extras] [line 249]
!119 = metadata !{i32 786688, metadata !99, metadata !"groupcomm", metadata !5, i32 250, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupcomm] [line 250]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!121 = metadata !{i32 786454, metadata !1, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!122 = metadata !{i32 786451, metadata !51, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!124 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!125 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!126 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!127 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!128 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!129 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!130 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!131 = metadata !{i32 786445, metadata !51, metadata !122, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!132 = metadata !{i32 786688, metadata !99, metadata !"perme", metadata !5, i32 251, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [perme] [line 251]
!133 = metadata !{i32 786688, metadata !99, metadata !"nprocs", metadata !5, i32 252, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 252]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupScalarGroup", metadata !"PUGH_SetupScalarGroup", metadata !"", i32 92, metadata !135, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !137, i32 97} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 97] [PUGH_SetupScalarGroup]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !14}
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !203, metadata !204, metadata !205, metadata !206, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!138 = metadata !{i32 786689, metadata !134, metadata !"newGH", metadata !5, i32 16777308, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newGH] [line 92]
!139 = metadata !{i32 786689, metadata !134, metadata !"vtype", metadata !5, i32 33554525, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 93]
!140 = metadata !{i32 786689, metadata !134, metadata !"n_variables", metadata !5, i32 50331742, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 94]
!141 = metadata !{i32 786689, metadata !134, metadata !"n_timelevels", metadata !5, i32 67108959, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 95]
!142 = metadata !{i32 786689, metadata !134, metadata !"vectorgroup", metadata !5, i32 83886176, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vectorgroup] [line 96]
!143 = metadata !{i32 786688, metadata !134, metadata !"ghost_size", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 98]
!144 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!145 = metadata !{i32 786688, metadata !134, metadata !"ghost_size_x", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 98]
!146 = metadata !{i32 786688, metadata !134, metadata !"ghost_size_y", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 98]
!147 = metadata !{i32 786688, metadata !134, metadata !"ghost_size_z", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 98]
!148 = metadata !{i32 786688, metadata !134, metadata !"global_nsize", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 98]
!149 = metadata !{i32 786688, metadata !134, metadata !"global_nx", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 98]
!150 = metadata !{i32 786688, metadata !134, metadata !"global_ny", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 98]
!151 = metadata !{i32 786688, metadata !134, metadata !"global_nz", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 98]
!152 = metadata !{i32 786688, metadata !134, metadata !"periodic", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 98]
!153 = metadata !{i32 786688, metadata !134, metadata !"periodic_x", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 98]
!154 = metadata !{i32 786688, metadata !134, metadata !"periodic_y", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 98]
!155 = metadata !{i32 786688, metadata !134, metadata !"periodic_z", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 98]
!156 = metadata !{i32 786688, metadata !134, metadata !"info", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 98]
!157 = metadata !{i32 786688, metadata !134, metadata !"initialize_memory", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 98]
!158 = metadata !{i32 786688, metadata !134, metadata !"partition", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 98]
!159 = metadata !{i32 786688, metadata !134, metadata !"partition_1d_x", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 98]
!160 = metadata !{i32 786688, metadata !134, metadata !"partition_2d_x", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 98]
!161 = metadata !{i32 786688, metadata !134, metadata !"partition_2d_y", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 98]
!162 = metadata !{i32 786688, metadata !134, metadata !"partition_3d_x", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 98]
!163 = metadata !{i32 786688, metadata !134, metadata !"partition_3d_y", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 98]
!164 = metadata !{i32 786688, metadata !134, metadata !"partition_3d_z", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 98]
!165 = metadata !{i32 786688, metadata !134, metadata !"processor_topology", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 98]
!166 = metadata !{i32 786688, metadata !134, metadata !"storage_verbose", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 98]
!167 = metadata !{i32 786688, metadata !134, metadata !"cacheline_mult", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 98]
!168 = metadata !{i32 786688, metadata !134, metadata !"enable_all_storage", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 98]
!169 = metadata !{i32 786688, metadata !134, metadata !"local_nsize", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 98]
!170 = metadata !{i32 786688, metadata !134, metadata !"local_nx", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 98]
!171 = metadata !{i32 786688, metadata !134, metadata !"local_ny", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 98]
!172 = metadata !{i32 786688, metadata !134, metadata !"local_nz", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 98]
!173 = metadata !{i32 786688, metadata !134, metadata !"overloadabort", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 98]
!174 = metadata !{i32 786688, metadata !134, metadata !"overloadarraygroupsizeb", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 98]
!175 = metadata !{i32 786688, metadata !134, metadata !"overloadbarrier", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 98]
!176 = metadata !{i32 786688, metadata !134, metadata !"overloaddisablegroupcomm", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 98]
!177 = metadata !{i32 786688, metadata !134, metadata !"overloaddisablegroupstorage", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 98]
!178 = metadata !{i32 786688, metadata !134, metadata !"overloadenablegroupcomm", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 98]
!179 = metadata !{i32 786688, metadata !134, metadata !"overloadenablegroupstorage", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 98]
!180 = metadata !{i32 786688, metadata !134, metadata !"overloadevolve", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 98]
!181 = metadata !{i32 786688, metadata !134, metadata !"overloadexit", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 98]
!182 = metadata !{i32 786688, metadata !134, metadata !"overloadgroupdynamicdata", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 98]
!183 = metadata !{i32 786688, metadata !134, metadata !"overloadmyproc", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 98]
!184 = metadata !{i32 786688, metadata !134, metadata !"overloadnprocs", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 98]
!185 = metadata !{i32 786688, metadata !134, metadata !"overloadparallelinit", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 98]
!186 = metadata !{i32 786688, metadata !134, metadata !"overloadquerygroupstorageb", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 98]
!187 = metadata !{i32 786688, metadata !134, metadata !"overloadsyncgroup", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 98]
!188 = metadata !{i32 786688, metadata !134, metadata !"padding_active", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 98]
!189 = metadata !{i32 786688, metadata !134, metadata !"padding_address_spacing", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 98]
!190 = metadata !{i32 786688, metadata !134, metadata !"padding_cacheline_bits", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 98]
!191 = metadata !{i32 786688, metadata !134, metadata !"padding_size", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 98]
!192 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_1d_x", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 98]
!193 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_2d_x", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 98]
!194 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_2d_y", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 98]
!195 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_3d_x", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 98]
!196 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_3d_y", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 98]
!197 = metadata !{i32 786688, metadata !134, metadata !"processor_topology_3d_z", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 98]
!198 = metadata !{i32 786688, metadata !134, metadata !"storage_report_every", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 98]
!199 = metadata !{i32 786688, metadata !134, metadata !"timer_output", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 98]
!200 = metadata !{i32 786688, metadata !134, metadata !"terminate", metadata !5, i32 98, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 98]
!201 = metadata !{i32 786688, metadata !134, metadata !"cctk_initial_time", metadata !5, i32 98, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 98]
!202 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!203 = metadata !{i32 786688, metadata !134, metadata !"cctk_final_time", metadata !5, i32 98, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 98]
!204 = metadata !{i32 786688, metadata !134, metadata !"cctk_itlast", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 98]
!205 = metadata !{i32 786688, metadata !134, metadata !"terminate_next", metadata !5, i32 98, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 98]
!206 = metadata !{i32 786688, metadata !134, metadata !"cctk_pdummy_pointer", metadata !5, i32 98, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 98]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!208 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{i32 786688, metadata !134, metadata !"variable", metadata !5, i32 99, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 99]
!210 = metadata !{i32 786688, metadata !134, metadata !"level", metadata !5, i32 99, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 99]
!211 = metadata !{i32 786688, metadata !134, metadata !"vtypesize", metadata !5, i32 99, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 99]
!212 = metadata !{i32 786688, metadata !134, metadata !"retval", metadata !5, i32 99, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 99]
!213 = metadata !{i32 786688, metadata !134, metadata !"temp", metadata !5, i32 100, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 100]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!216 = metadata !{i32 23, i32 0, metadata !4, null}
!217 = metadata !{i32 441, i32 0, metadata !11, null}
!218 = metadata !{i32 442, i32 0, metadata !11, null}
!219 = metadata !{i32 443, i32 0, metadata !11, null}
!220 = metadata !{i32 444, i32 0, metadata !11, null}
!221 = metadata !{i32 445, i32 0, metadata !11, null}
!222 = metadata !{i32 446, i32 0, metadata !11, null}
!223 = metadata !{i32 447, i32 0, metadata !11, null}
!224 = metadata !{i32 448, i32 0, metadata !11, null}
!225 = metadata !{i32 449, i32 0, metadata !11, null}
!226 = metadata !{i32 450, i32 0, metadata !11, null}
!227 = metadata !{i32 454, i32 0, metadata !11, null}
!228 = metadata !{i32 786689, metadata !134, metadata !"vectorgroup", metadata !5, i32 83886176, metadata !14, i32 0, metadata !229} ; [ DW_TAG_arg_variable ] [vectorgroup] [line 96]
!229 = metadata !{i32 456, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !11, i32 455, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!231 = metadata !{i32 96, i32 0, metadata !134, metadata !229}
!232 = metadata !{i32 786688, metadata !134, metadata !"retval", metadata !5, i32 99, metadata !14, i32 0, metadata !229} ; [ DW_TAG_auto_variable ] [retval] [line 99]
!233 = metadata !{i32 103, i32 0, metadata !134, metadata !229}
!234 = metadata !{i32 105, i32 0, metadata !134, metadata !229}
!235 = metadata !{metadata !"any pointer", metadata !236}
!236 = metadata !{metadata !"omnipotent char", metadata !237}
!237 = metadata !{metadata !"Simple C/C++ TBAA"}
!238 = metadata !{metadata !"int", metadata !236}
!239 = metadata !{i32 786688, metadata !134, metadata !"temp", metadata !5, i32 100, metadata !21, i32 0, metadata !229} ; [ DW_TAG_auto_variable ] [temp] [line 100]
!240 = metadata !{i32 107, i32 0, metadata !134, metadata !229}
!241 = metadata !{i32 109, i32 0, metadata !242, metadata !229}
!242 = metadata !{i32 786443, metadata !1, metadata !134, i32 108, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!243 = metadata !{i32 110, i32 0, metadata !242, metadata !229}
!244 = metadata !{i32 786688, metadata !134, metadata !"vtypesize", metadata !5, i32 99, metadata !14, i32 0, metadata !229} ; [ DW_TAG_auto_variable ] [vtypesize] [line 99]
!245 = metadata !{i32 786688, metadata !134, metadata !"variable", metadata !5, i32 99, metadata !14, i32 0, metadata !229} ; [ DW_TAG_auto_variable ] [variable] [line 99]
!246 = metadata !{i32 112, i32 0, metadata !247, metadata !229}
!247 = metadata !{i32 786443, metadata !1, metadata !242, i32 112, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!248 = metadata !{i32 149, i32 0, metadata !249, metadata !229}
!249 = metadata !{i32 786443, metadata !1, metadata !134, i32 148, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!250 = metadata !{i32 114, i32 0, metadata !251, metadata !229}
!251 = metadata !{i32 786443, metadata !1, metadata !247, i32 113, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!252 = metadata !{i32 121, i32 0, metadata !253, metadata !229}
!253 = metadata !{i32 786443, metadata !1, metadata !254, i32 119, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!254 = metadata !{i32 786443, metadata !1, metadata !255, i32 118, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!255 = metadata !{i32 786443, metadata !1, metadata !251, i32 116, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!256 = metadata !{i32 118, i32 0, metadata !254, metadata !229}
!257 = metadata !{i32 127, i32 0, metadata !258, metadata !229}
!258 = metadata !{i32 786443, metadata !1, metadata !253, i32 123, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!259 = metadata !{i32 115, i32 0, metadata !251, metadata !229}
!260 = metadata !{i32 117, i32 0, metadata !255, metadata !229}
!261 = metadata !{i32 786688, metadata !134, metadata !"level", metadata !5, i32 99, metadata !14, i32 0, metadata !229} ; [ DW_TAG_auto_variable ] [level] [line 99]
!262 = metadata !{i32 122, i32 0, metadata !253, metadata !229}
!263 = metadata !{i32 124, i32 0, metadata !258, metadata !229}
!264 = metadata !{i32 150, i32 0, metadata !249, metadata !229}
!265 = metadata !{i32 153, i32 0, metadata !266, metadata !229}
!266 = metadata !{i32 786443, metadata !1, metadata !134, i32 152, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!267 = metadata !{i32 458, i32 0, metadata !11, null}
!268 = metadata !{i32 786689, metadata !99, metadata !"newGH", metadata !5, i32 16777447, metadata !15, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [newGH] [line 231]
!269 = metadata !{i32 460, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !11, i32 459, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!271 = metadata !{i32 231, i32 0, metadata !99, metadata !269}
!272 = metadata !{i32 786689, metadata !99, metadata !"nsize", metadata !5, i32 33554664, metadata !33, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [nsize] [line 232]
!273 = metadata !{i32 232, i32 0, metadata !99, metadata !269}
!274 = metadata !{i32 786689, metadata !99, metadata !"ghostsize", metadata !5, i32 50331881, metadata !33, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [ghostsize] [line 233]
!275 = metadata !{i32 233, i32 0, metadata !99, metadata !269}
!276 = metadata !{i32 786689, metadata !99, metadata !"gtype", metadata !5, i32 67109098, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [gtype] [line 234]
!277 = metadata !{i32 234, i32 0, metadata !99, metadata !269}
!278 = metadata !{i32 786689, metadata !99, metadata !"vtype", metadata !5, i32 83886315, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [vtype] [line 235]
!279 = metadata !{i32 235, i32 0, metadata !99, metadata !269}
!280 = metadata !{i32 786689, metadata !99, metadata !"dim", metadata !5, i32 100663532, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [dim] [line 236]
!281 = metadata !{i32 236, i32 0, metadata !99, metadata !269}
!282 = metadata !{i32 786689, metadata !99, metadata !"n_variables", metadata !5, i32 117440749, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [n_variables] [line 237]
!283 = metadata !{i32 237, i32 0, metadata !99, metadata !269}
!284 = metadata !{i32 786689, metadata !99, metadata !"staggercode", metadata !5, i32 134217966, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [staggercode] [line 238]
!285 = metadata !{i32 238, i32 0, metadata !99, metadata !269}
!286 = metadata !{i32 786689, metadata !99, metadata !"n_timelevels", metadata !5, i32 150995183, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [n_timelevels] [line 239]
!287 = metadata !{i32 239, i32 0, metadata !99, metadata !269}
!288 = metadata !{i32 786689, metadata !99, metadata !"vectorgroup", metadata !5, i32 167772400, metadata !14, i32 0, metadata !269} ; [ DW_TAG_arg_variable ] [vectorgroup] [line 240]
!289 = metadata !{i32 240, i32 0, metadata !99, metadata !269}
!290 = metadata !{i32 786688, metadata !99, metadata !"retval", metadata !5, i32 245, metadata !14, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [retval] [line 245]
!291 = metadata !{i32 255, i32 0, metadata !99, metadata !269}
!292 = metadata !{i32 256, i32 0, metadata !99, metadata !269}
!293 = metadata !{i32 786688, metadata !99, metadata !"var_size", metadata !5, i32 244, metadata !14, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [var_size] [line 244]
!294 = metadata !{i32 258, i32 0, metadata !99, metadata !269}
!295 = metadata !{i32 262, i32 0, metadata !296, metadata !269}
!296 = metadata !{i32 786443, metadata !1, metadata !99, i32 259, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!297 = metadata !{i32 786688, metadata !99, metadata !"perme", metadata !5, i32 251, metadata !33, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [perme] [line 251]
!298 = metadata !{i32 263, i32 0, metadata !296, metadata !269}
!299 = metadata !{i32 786688, metadata !99, metadata !"nprocs", metadata !5, i32 252, metadata !33, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [nprocs] [line 252]
!300 = metadata !{i32 264, i32 0, metadata !296, metadata !269}
!301 = metadata !{i32 266, i32 0, metadata !302, metadata !269}
!302 = metadata !{i32 786443, metadata !1, metadata !296, i32 265, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!303 = metadata !{i32 267, i32 0, metadata !302, metadata !269}
!304 = metadata !{i32 272, i32 0, metadata !305, metadata !269}
!305 = metadata !{i32 786443, metadata !1, metadata !296, i32 272, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!306 = metadata !{i32 274, i32 0, metadata !307, metadata !269}
!307 = metadata !{i32 786443, metadata !1, metadata !305, i32 273, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!308 = metadata !{i32 276, i32 0, metadata !309, metadata !269}
!309 = metadata !{i32 786443, metadata !1, metadata !307, i32 275, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!310 = metadata !{i32 277, i32 0, metadata !309, metadata !269}
!311 = metadata !{i32 280, i32 0, metadata !296, metadata !269}
!312 = metadata !{i32 786688, metadata !99, metadata !"connectivity", metadata !5, i32 248, metadata !77, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [connectivity] [line 248]
!313 = metadata !{i32 282, i32 0, metadata !296, metadata !269}
!314 = metadata !{i32 786688, metadata !99, metadata !"extras", metadata !5, i32 249, metadata !48, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [extras] [line 249]
!315 = metadata !{i32 291, i32 0, metadata !296, metadata !269}
!316 = metadata !{i32 292, i32 0, metadata !296, metadata !269}
!317 = metadata !{i32 293, i32 0, metadata !296, metadata !269}
!318 = metadata !{i32 297, i32 0, metadata !319, metadata !269}
!319 = metadata !{i32 786443, metadata !1, metadata !99, i32 295, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!320 = metadata !{i32 298, i32 0, metadata !319, metadata !269}
!321 = metadata !{i32 303, i32 0, metadata !99, metadata !269}
!322 = metadata !{i32 305, i32 0, metadata !323, metadata !269}
!323 = metadata !{i32 786443, metadata !1, metadata !99, i32 304, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!324 = metadata !{i32 786688, metadata !99, metadata !"groupcomm", metadata !5, i32 250, metadata !120, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [groupcomm] [line 250]
!325 = metadata !{i32 312, i32 0, metadata !323, metadata !269}
!326 = metadata !{i32 318, i32 0, metadata !99, metadata !269}
!327 = metadata !{i32 321, i32 0, metadata !99, metadata !269}
!328 = metadata !{i32 323, i32 0, metadata !329, metadata !269}
!329 = metadata !{i32 786443, metadata !1, metadata !99, i32 322, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!330 = metadata !{i32 786688, metadata !99, metadata !"variable", metadata !5, i32 243, metadata !14, i32 0, metadata !269} ; [ DW_TAG_auto_variable ] [variable] [line 243]
!331 = metadata !{i32 325, i32 0, metadata !332, metadata !269}
!332 = metadata !{i32 786443, metadata !1, metadata !329, i32 325, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!333 = metadata !{i32 327, i32 0, metadata !334, metadata !269}
!334 = metadata !{i32 786443, metadata !1, metadata !332, i32 326, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!335 = metadata !{i32 332, i32 0, metadata !336, metadata !269}
!336 = metadata !{i32 786443, metadata !1, metadata !337, i32 332, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 331, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!338 = metadata !{i32 335, i32 0, metadata !339, metadata !269}
!339 = metadata !{i32 786443, metadata !1, metadata !336, i32 333, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!340 = metadata !{i32 339, i32 0, metadata !339, metadata !269}
!341 = metadata !{i32 330, i32 0, metadata !334, metadata !269}
!342 = metadata !{i32 348, i32 0, metadata !339, metadata !269}
!343 = metadata !{i32 350, i32 0, metadata !337, metadata !269}
!344 = metadata !{i32 366, i32 0, metadata !345, metadata !269}
!345 = metadata !{i32 786443, metadata !1, metadata !99, i32 365, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!346 = metadata !{i32 367, i32 0, metadata !345, metadata !269}
!347 = metadata !{i32 465, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !11, i32 464, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupGroup.c]
!349 = metadata !{i32 -1}
!350 = metadata !{i32 466, i32 0, metadata !348, null}
!351 = metadata !{i32 469, i32 0, metadata !11, null}
