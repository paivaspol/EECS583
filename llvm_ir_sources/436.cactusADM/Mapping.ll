; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.hslab_mapping_t = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, void (i8*, i8*, i32, i32, i32)*, %struct.hslab_mapping_t*, %struct.hslab_mapping_t*, %struct.cGroup }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"Hyperslab_DefineGlobalMappingByIndex: table information is ignored\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"invalid variable index given\00", align 1
@.str4 = private unnamed_addr constant [69 x i8] c"invalid variable group type given (not a CCTK_GF or CCTK_ARRAY type)\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"invalid hyperslab dimension given\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"NULL pointer(s) passed for direction/origin/extent/hsize parameters\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@.str7 = private unnamed_addr constant [33 x i8] c"invalid target procesor ID given\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"no PUGH GH extension registered (PUGH not activated ?)\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"invalid hyperslab origin/extent/downsample vectors given\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"couldn't allocate hyperslab mapping structure\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %s\00", align 1
@.str12 = private unnamed_addr constant [75 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %d-direction vector is a null vector\00", align 1
@.str13 = private unnamed_addr constant [80 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %d-direction vector isn't axis-orthogonal\00", align 1
@.str14 = private unnamed_addr constant [102 x i8] c"Hyperslab_DefineGlobalMappingByIndex: diagonals can be extracted from non-staggered 3D variables only\00", align 1
@.str15 = private unnamed_addr constant [72 x i8] c"Hyperslab_DefineGlobalMappingByIndex: duplicate direction vectors given\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str16 = private unnamed_addr constant [79 x i8] c"Hyperslab_DefineGlobalMappingByIndex: extent in %d-direction exceeds grid size\00", align 1
@mapping_list = internal unnamed_addr global %struct.hslab_mapping_t* null, align 8
@nmapping_list = internal unnamed_addr global i32 0, align 4
@.str17 = private unnamed_addr constant [90 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/Mapping.c,v 1.4 2001/12/18 23:46:22 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c() #0 {
entry:
  ret i8* getelementptr inbounds ([90 x i8]* @.str17, i64 0, i64 0), !dbg !255
}

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH* %GH, i32 %vindex, i32 %dim, i32* %direction, i32* %origin, i32* %extent, i32* %downsample, i32 %table_handle, i32 %target_proc, void (i8*, i8*, i32, i32, i32)* %conversion_fn, i32* %hsize) #1 {
entry:
  %vinfo = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !62), !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !63), !dbg !257
  call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !64), !dbg !258
  call void @llvm.dbg.value(metadata !{i32* %direction}, i64 0, metadata !65), !dbg !259
  call void @llvm.dbg.value(metadata !{i32* %origin}, i64 0, metadata !66), !dbg !260
  call void @llvm.dbg.value(metadata !{i32* %extent}, i64 0, metadata !67), !dbg !261
  call void @llvm.dbg.value(metadata !{i32* %downsample}, i64 0, metadata !68), !dbg !262
  call void @llvm.dbg.value(metadata !{i32 %table_handle}, i64 0, metadata !69), !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %target_proc}, i64 0, metadata !70), !dbg !264
  call void @llvm.dbg.value(metadata !{void (i8*, i8*, i32, i32, i32)* %conversion_fn}, i64 0, metadata !71), !dbg !265
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !72), !dbg !266
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo}, metadata !226), !dbg !267
  %cmp = icmp sgt i32 %table_handle, -1, !dbg !268
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %call = call i32 @CCTK_Warn(i32 1, i32 95, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !269
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !77), !dbg !272
  call void @llvm.dbg.value(metadata !273, i64 0, metadata !120), !dbg !274
  %call2 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7, !dbg !275
  %call3 = call i32 @CCTK_GroupData(i32 %call2, %struct.cGroup* %vinfo) #7, !dbg !275
  %cmp4 = icmp slt i32 %call3, 0, !dbg !275
  br i1 %cmp4, label %if.then85, label %if.else, !dbg !275

if.else:                                          ; preds = %if.end
  %grouptype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 0, !dbg !276
  %0 = load i32* %grouptype, align 4, !dbg !276, !tbaa !277
  %.off = add i32 %0, -2, !dbg !276
  %switch = icmp ult i32 %.off, 2, !dbg !276
  br i1 %switch, label %if.else10, label %if.then85, !dbg !276

if.else10:                                        ; preds = %if.else
  %cmp11 = icmp slt i32 %dim, 0, !dbg !280
  br i1 %cmp11, label %if.then85, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %if.else10
  %dim12 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4, !dbg !280
  %1 = load i32* %dim12, align 4, !dbg !280, !tbaa !277
  %cmp13 = icmp slt i32 %1, %dim, !dbg !280
  br i1 %cmp13, label %if.then85, label %if.else15, !dbg !280

if.else15:                                        ; preds = %lor.lhs.false
  %tobool = icmp eq i32* %direction, null, !dbg !281
  %tobool17 = icmp eq i32* %origin, null, !dbg !281
  %or.cond = or i1 %tobool, %tobool17, !dbg !281
  %tobool19 = icmp eq i32* %extent, null, !dbg !281
  %or.cond1101 = or i1 %or.cond, %tobool19, !dbg !281
  %tobool21 = icmp eq i32* %hsize, null, !dbg !281
  %or.cond1102 = or i1 %or.cond1101, %tobool21, !dbg !281
  br i1 %or.cond1102, label %if.then85, label %if.else23, !dbg !281

if.else23:                                        ; preds = %if.else15
  %2 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !282, !tbaa !283
  %call24 = call i32 %2(%struct.cGH* %GH) #7, !dbg !282
  %cmp25 = icmp sgt i32 %call24, %target_proc, !dbg !282
  br i1 %cmp25, label %if.else27, label %if.then85, !dbg !282

if.else27:                                        ; preds = %if.else23
  %call28 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !284
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call28}, i64 0, metadata !121), !dbg !284
  %cmp29 = icmp eq %struct.PGH* %call28, null, !dbg !284
  br i1 %cmp29, label %if.then85, label %for.cond.preheader, !dbg !284

for.cond.preheader:                               ; preds = %if.else27
  %3 = load i32* %dim12, align 4, !dbg !285, !tbaa !277
  %cmp331145 = icmp eq i32 %3, 0, !dbg !285
  br i1 %cmp331145, label %if.then62, label %for.body.lr.ph, !dbg !285

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool43 = icmp eq i32* %downsample, null, !dbg !288
  br label %for.body, !dbg !285

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv1159 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1160, %for.inc ]
  %retval1.01146 = phi i32 [ 0, %for.body.lr.ph ], [ %retval1.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %origin, i64 %indvars.iv1159, !dbg !291
  %4 = load i32* %arrayidx, align 4, !dbg !291, !tbaa !277
  %.lobit = lshr i32 %4, 31, !dbg !291
  %or = or i32 %.lobit, %retval1.01146, !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !77), !dbg !291
  %5 = trunc i64 %indvars.iv1159 to i32, !dbg !292
  %cmp35 = icmp ult i32 %5, %dim, !dbg !292
  br i1 %cmp35, label %if.then37, label %for.inc, !dbg !292

if.then37:                                        ; preds = %for.body
  %arrayidx39 = getelementptr inbounds i32* %extent, i64 %indvars.iv1159, !dbg !293
  %6 = load i32* %arrayidx39, align 4, !dbg !293, !tbaa !277
  %cmp40 = icmp slt i32 %6, 1, !dbg !293
  %conv41 = zext i1 %cmp40 to i32, !dbg !293
  %or42 = or i32 %conv41, %or, !dbg !293
  call void @llvm.dbg.value(metadata !{i32 %or42}, i64 0, metadata !77), !dbg !293
  br i1 %tobool43, label %for.inc, label %if.then44, !dbg !288

if.then44:                                        ; preds = %if.then37
  %arrayidx46 = getelementptr inbounds i32* %downsample, i64 %indvars.iv1159, !dbg !294
  %7 = load i32* %arrayidx46, align 4, !dbg !294, !tbaa !277
  %cmp47 = icmp slt i32 %7, 1, !dbg !294
  %conv48 = zext i1 %cmp47 to i32, !dbg !294
  %or49 = or i32 %conv48, %or42, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %or49}, i64 0, metadata !77), !dbg !294
  br label %for.inc, !dbg !296

for.inc:                                          ; preds = %if.then37, %for.body, %if.then44
  %retval1.1 = phi i32 [ %or49, %if.then44 ], [ %or42, %if.then37 ], [ %or, %for.body ]
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1, !dbg !285
  %8 = trunc i64 %indvars.iv.next1160 to i32, !dbg !285
  %cmp33 = icmp ult i32 %8, %3, !dbg !285
  br i1 %cmp33, label %for.body, label %if.end60, !dbg !285

if.end60:                                         ; preds = %for.inc
  %tobool52 = icmp eq i32 %retval1.1, 0, !dbg !297
  call void @llvm.dbg.value(metadata !298, i64 0, metadata !120), !dbg !299
  call void @llvm.dbg.value(metadata !301, i64 0, metadata !77), !dbg !302
  %retval1.0. = select i1 %tobool52, i32 0, i32 -5, !dbg !297
  %. = select i1 %tobool52, i8* null, i8* getelementptr inbounds ([57 x i8]* @.str9, i64 0, i64 0), !dbg !297
  br i1 %tobool52, label %if.then62, label %if.end83, !dbg !303

if.then62:                                        ; preds = %for.cond.preheader, %if.end60
  %.1179 = phi i8* [ %., %if.end60 ], [ null, %for.cond.preheader ]
  %retval1.0.1178 = phi i32 [ %retval1.0., %if.end60 ], [ 0, %for.cond.preheader ]
  %9 = phi i32 [ %3, %if.end60 ], [ 0, %for.cond.preheader ]
  %call63 = call noalias i8* @malloc(i64 160) #7, !dbg !304
  call void @llvm.dbg.value(metadata !{%struct.hslab_mapping_t* %10}, i64 0, metadata !81), !dbg !304
  %tobool64 = icmp eq i8* %call63, null, !dbg !306
  br i1 %tobool64, label %if.then85, label %lor.lhs.false74, !dbg !306

lor.lhs.false74:                                  ; preds = %if.then62
  %10 = bitcast i8* %call63 to %struct.hslab_mapping_t*, !dbg !304
  %mul = mul nsw i32 %9, 6, !dbg !307
  %mul67 = shl i32 %dim, 1, !dbg !307
  %add = add nsw i32 %mul, %mul67, !dbg !307
  %conv68 = sext i32 %add to i64, !dbg !307
  %mul69 = shl nsw i64 %conv68, 2, !dbg !307
  %call70 = call noalias i8* @malloc(i64 %mul69) #7, !dbg !307
  %11 = bitcast i8* %call70 to i32*, !dbg !307
  %vectors = getelementptr inbounds i8* %call63, i64 16, !dbg !307
  %12 = bitcast i8* %vectors to i32**, !dbg !307
  store i32* %11, i32** %12, align 8, !dbg !307, !tbaa !283
  %cmp76.not = icmp ne i8* %call70, null, !dbg !309
  %retval1.2.mux = select i1 %cmp76.not, i32 %retval1.0.1178, i32 -6, !dbg !309
  %error_msg.0.mux = select i1 %cmp76.not, i8* %.1179, i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), !dbg !309
  br i1 %cmp76.not, label %if.end83, label %if.then80, !dbg !309

if.then80:                                        ; preds = %lor.lhs.false74
  call void @free(i8* %call63) #7, !dbg !310
  br label %if.then85, !dbg !313

if.end83:                                         ; preds = %lor.lhs.false74, %if.end60
  %13 = phi i32 [ %3, %if.end60 ], [ %9, %lor.lhs.false74 ]
  %retval1.3 = phi i32 [ %retval1.0., %if.end60 ], [ %retval1.2.mux, %lor.lhs.false74 ]
  %mapping.0 = phi %struct.hslab_mapping_t* [ undef, %if.end60 ], [ %10, %lor.lhs.false74 ]
  %error_msg.1 = phi i8* [ %., %if.end60 ], [ %error_msg.0.mux, %lor.lhs.false74 ]
  %tobool84 = icmp eq i32 %retval1.3, 0, !dbg !314
  br i1 %tobool84, label %if.end87, label %if.then85, !dbg !314

if.then85:                                        ; preds = %if.then62, %if.else27, %if.else23, %if.else15, %if.else10, %lor.lhs.false, %if.else, %if.end, %if.then80, %if.end83
  %error_msg.11109 = phi i8* [ %error_msg.1, %if.end83 ], [ getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %if.then80 ], [ getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %if.then62 ], [ getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([69 x i8]* @.str4, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), %if.else10 ], [ getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %if.else15 ], [ getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0), %if.else23 ], [ getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), %if.else27 ]
  %retval1.31108 = phi i32 [ %retval1.3, %if.end83 ], [ -6, %if.then80 ], [ -6, %if.then62 ], [ -1, %if.end ], [ -2, %if.else ], [ -2, %lor.lhs.false ], [ -2, %if.else10 ], [ -3, %if.else15 ], [ -4, %if.else23 ], [ -4, %if.else27 ]
  %call86 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 174, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i8* %error_msg.11109) #7, !dbg !315
  br label %return, !dbg !317

if.end87:                                         ; preds = %if.end83
  %hdim88 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 2, !dbg !318
  store i32 %dim, i32* %hdim88, align 4, !dbg !318, !tbaa !277
  %vinfo89 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 19, !dbg !319
  %14 = bitcast %struct.cGroup* %vinfo89 to i8*, !dbg !319
  %15 = bitcast %struct.cGroup* %vinfo to i8*, !dbg !319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 4, i1 false), !dbg !319, !tbaa.struct !320
  %target_proc90 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 1, !dbg !321
  store i32 %target_proc, i32* %target_proc90, align 4, !dbg !321, !tbaa !277
  %conversion_fn91 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 16, !dbg !322
  store void (i8*, i8*, i32, i32, i32)* %conversion_fn, void (i8*, i8*, i32, i32, i32)** %conversion_fn91, align 8, !dbg !322, !tbaa !283
  %vectors92 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 4, !dbg !323
  %16 = load i32** %vectors92, align 8, !dbg !323, !tbaa !283
  %local_startpoint = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 5, !dbg !323
  store i32* %16, i32** %local_startpoint, align 8, !dbg !323, !tbaa !283
  %idx.ext98 = sext i32 %13 to i64, !dbg !324
  %add.ptr99 = getelementptr inbounds i32* %16, i64 %idx.ext98, !dbg !324
  %local_endpoint = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 6, !dbg !324
  store i32* %add.ptr99, i32** %local_endpoint, align 8, !dbg !324, !tbaa !283
  %mul102 = shl nsw i32 %13, 1, !dbg !325
  %idx.ext103 = sext i32 %mul102 to i64, !dbg !325
  %add.ptr104 = getelementptr inbounds i32* %16, i64 %idx.ext103, !dbg !325
  %global_startpoint = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 7, !dbg !325
  store i32* %add.ptr104, i32** %global_startpoint, align 8, !dbg !325, !tbaa !283
  %mul107 = mul nsw i32 %13, 3, !dbg !326
  %idx.ext108 = sext i32 %mul107 to i64, !dbg !326
  %add.ptr109 = getelementptr inbounds i32* %16, i64 %idx.ext108, !dbg !326
  %global_endpoint = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 8, !dbg !326
  store i32* %add.ptr109, i32** %global_endpoint, align 8, !dbg !326, !tbaa !283
  %mul112 = shl nsw i32 %13, 2, !dbg !327
  %idx.ext113 = sext i32 %mul112 to i64, !dbg !327
  %add.ptr114 = getelementptr inbounds i32* %16, i64 %idx.ext113, !dbg !327
  %do_dir = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 9, !dbg !327
  store i32* %add.ptr114, i32** %do_dir, align 8, !dbg !327, !tbaa !283
  %mul117 = mul nsw i32 %13, 5, !dbg !328
  %idx.ext118 = sext i32 %mul117 to i64, !dbg !328
  %add.ptr119 = getelementptr inbounds i32* %16, i64 %idx.ext118, !dbg !328
  %downsample120 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 10, !dbg !328
  store i32* %add.ptr119, i32** %downsample120, align 8, !dbg !328, !tbaa !283
  %mul123 = mul nsw i32 %13, 6, !dbg !329
  %idx.ext124 = sext i32 %mul123 to i64, !dbg !329
  %add.ptr125 = getelementptr inbounds i32* %16, i64 %idx.ext124, !dbg !329
  %local_hsize = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 12, !dbg !329
  store i32* %add.ptr125, i32** %local_hsize, align 8, !dbg !329, !tbaa !283
  %idx.ext135 = sext i32 %dim to i64, !dbg !330
  %add.ptr133.sum = add i64 %idx.ext124, %idx.ext135, !dbg !330
  %add.ptr136 = getelementptr inbounds i32* %16, i64 %add.ptr133.sum, !dbg !330
  %global_hsize = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 11, !dbg !330
  store i32* %add.ptr136, i32** %global_hsize, align 8, !dbg !330, !tbaa !283
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !331
  %cmp1391143 = icmp eq i32 %dim, 0, !dbg !331
  br i1 %cmp1391143, label %if.end87.for.end181_crit_edge, label %for.cond142.preheader.lr.ph, !dbg !331

if.end87.for.end181_crit_edge:                    ; preds = %if.end87
  %is_diagonal_in_3D182.phi.trans.insert = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 15
  %.pre1167 = load i32* %is_diagonal_in_3D182.phi.trans.insert, align 4, !dbg !333, !tbaa !277
  br label %for.end181, !dbg !331

for.cond142.preheader.lr.ph:                      ; preds = %if.end87
  %cmp1441138 = icmp eq i32 %13, 0, !dbg !334
  %is_diagonal_in_3D = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 15
  br label %for.cond142.preheader, !dbg !331

for.cond137:                                      ; preds = %land.end
  %cmp139 = icmp ult i32 %inc180, %dim, !dbg !331
  br i1 %cmp139, label %for.cond142.preheader, label %for.end181, !dbg !331

for.cond142.preheader:                            ; preds = %for.cond142.preheader.lr.ph, %for.cond137
  %hdim.01144 = phi i32 [ 0, %for.cond142.preheader.lr.ph ], [ %inc180, %for.cond137 ]
  br i1 %cmp1441138, label %if.then161, label %for.body146, !dbg !334

for.body146:                                      ; preds = %for.cond142.preheader, %for.body146
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %for.body146 ], [ 0, %for.cond142.preheader ]
  %num_dirs.01139 = phi i32 [ %num_dirs.0.inc154, %for.body146 ], [ 0, %for.cond142.preheader ]
  %mul148 = mul i32 %13, %hdim.01144, !dbg !337
  %17 = trunc i64 %indvars.iv1153 to i32, !dbg !337
  %add149 = add i32 %mul148, %17, !dbg !337
  %idxprom150 = zext i32 %add149 to i64, !dbg !337
  %arrayidx151 = getelementptr inbounds i32* %direction, i64 %idxprom150, !dbg !337
  %18 = load i32* %arrayidx151, align 4, !dbg !337, !tbaa !277
  %not.tobool152 = icmp ne i32 %18, 0, !dbg !337
  %inc154 = zext i1 %not.tobool152 to i32, !dbg !337
  %num_dirs.0.inc154 = add i32 %inc154, %num_dirs.01139, !dbg !337
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1, !dbg !334
  %lftr.wideiv1155 = trunc i64 %indvars.iv.next1154 to i32, !dbg !334
  %exitcond1156 = icmp eq i32 %lftr.wideiv1155, %13, !dbg !334
  br i1 %exitcond1156, label %for.end158, label %for.body146, !dbg !334

for.end158:                                       ; preds = %for.body146
  switch i32 %num_dirs.0.inc154, label %land.end [
    i32 0, label %if.then161
    i32 3, label %land.rhs
  ], !dbg !339

if.then161:                                       ; preds = %for.cond142.preheader, %for.end158
  %19 = bitcast i32* %16 to i8*, !dbg !340
  call void @free(i8* %19) #7, !dbg !340
  %20 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !340
  call void @free(i8* %20) #7, !dbg !340
  %call163 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 208, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str12, i64 0, i64 0), i32 %hdim.01144) #7, !dbg !342
  br label %return, !dbg !343

land.rhs:                                         ; preds = %for.end158
  %cmp168 = icmp eq i32 %dim, 1, !dbg !344
  br label %land.end

land.end:                                         ; preds = %for.end158, %land.rhs
  %21 = phi i1 [ %cmp168, %land.rhs ], [ false, %for.end158 ]
  %land.ext = zext i1 %21 to i32
  store i32 %land.ext, i32* %is_diagonal_in_3D, align 4, !tbaa !277
  %cmp170 = icmp eq i32 %num_dirs.0.inc154, 1, !dbg !345
  %brmerge = or i1 %cmp170, %21, !dbg !345
  %inc180 = add i32 %hdim.01144, 1, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %inc180}, i64 0, metadata !75), !dbg !331
  br i1 %brmerge, label %for.cond137, label %if.then175, !dbg !345

if.then175:                                       ; preds = %land.end
  %22 = bitcast i32* %16 to i8*, !dbg !346
  call void @free(i8* %22) #7, !dbg !346
  %23 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !346
  call void @free(i8* %23) #7, !dbg !346
  %call177 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 218, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str13, i64 0, i64 0), i32 %hdim.01144) #7, !dbg !348
  br label %return, !dbg !349

for.end181:                                       ; preds = %for.cond137, %if.end87.for.end181_crit_edge
  %24 = phi i32 [ %.pre1167, %if.end87.for.end181_crit_edge ], [ %land.ext, %for.cond137 ]
  %is_diagonal_in_3D182 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 15, !dbg !333
  %tobool183 = icmp eq i32 %24, 0, !dbg !333
  br i1 %tobool183, label %for.cond191.preheader, label %land.lhs.true184, !dbg !333

for.cond191.preheader:                            ; preds = %land.lhs.true184, %for.end181
  %cmp1931136 = icmp eq i32 %13, 0, !dbg !350
  br i1 %cmp1931136, label %for.end230, label %for.body195, !dbg !350

land.lhs.true184:                                 ; preds = %for.end181
  %stagtype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !333
  %25 = load i32* %stagtype, align 4, !dbg !333, !tbaa !277
  %cmp185 = icmp eq i32 %25, 0, !dbg !333
  br i1 %cmp185, label %for.cond191.preheader, label %if.then187, !dbg !333

if.then187:                                       ; preds = %land.lhs.true184
  %26 = bitcast i32* %16 to i8*, !dbg !352
  call void @free(i8* %26) #7, !dbg !352
  %27 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !352
  call void @free(i8* %27) #7, !dbg !352
  %call189 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 229, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !354
  br label %return, !dbg !355

for.cond191:                                      ; preds = %for.end218.thread, %for.end218
  %inc2291182 = add i32 %vdim.21137, 1, !dbg !350
  %28 = load i32* %dim12, align 4, !dbg !350, !tbaa !277
  %cmp193 = icmp ult i32 %inc2291182, %28, !dbg !350
  br i1 %cmp193, label %for.body195, label %for.end230, !dbg !350

for.body195:                                      ; preds = %for.cond191.preheader, %for.cond191
  %vdim.21137 = phi i32 [ %inc2291182, %for.cond191 ], [ 0, %for.cond191.preheader ]
  %idxprom196 = zext i32 %vdim.21137 to i64, !dbg !356
  %add.ptr114.sum = add i64 %idx.ext113, %idxprom196, !dbg !356
  %arrayidx198 = getelementptr inbounds i32* %16, i64 %add.ptr114.sum, !dbg !356
  store i32 0, i32* %arrayidx198, align 4, !dbg !356, !tbaa !277
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !358
  %29 = load i32* %hdim88, align 4, !dbg !358, !tbaa !277
  %cmp2011134 = icmp eq i32 %29, 0, !dbg !358
  br i1 %cmp2011134, label %for.end218.thread, label %for.body203, !dbg !358

for.end218.thread:                                ; preds = %for.body195
  call void @llvm.dbg.value(metadata !{i32 %inc2291182}, i64 0, metadata !73), !dbg !350
  br label %for.cond191, !dbg !360

for.body203:                                      ; preds = %for.inc216, %for.body195
  %30 = phi i32 [ 0, %for.body195 ], [ %.pre1165, %for.inc216 ]
  %31 = phi i32 [ %29, %for.body195 ], [ %34, %for.inc216 ]
  %hdim.11135 = phi i32 [ 0, %for.body195 ], [ %inc217, %for.inc216 ]
  %32 = load i32* %dim12, align 4, !dbg !361, !tbaa !277
  %mul205 = mul i32 %32, %hdim.11135, !dbg !361
  %add206 = add i32 %mul205, %vdim.21137, !dbg !361
  %idxprom207 = zext i32 %add206 to i64, !dbg !361
  %arrayidx208 = getelementptr inbounds i32* %direction, i64 %idxprom207, !dbg !361
  %33 = load i32* %arrayidx208, align 4, !dbg !361, !tbaa !277
  %tobool209 = icmp eq i32 %33, 0, !dbg !361
  br i1 %tobool209, label %for.inc216, label %if.then210, !dbg !361

if.then210:                                       ; preds = %for.body203
  %inc214 = add nsw i32 %30, 1, !dbg !363
  store i32 %inc214, i32* %arrayidx198, align 4, !dbg !363, !tbaa !277
  %.pre1166 = load i32* %hdim88, align 4, !dbg !358, !tbaa !277
  br label %for.inc216, !dbg !365

for.inc216:                                       ; preds = %for.body203, %if.then210
  %.pre1165 = phi i32 [ %30, %for.body203 ], [ %inc214, %if.then210 ]
  %34 = phi i32 [ %31, %for.body203 ], [ %.pre1166, %if.then210 ], !dbg !358
  %inc217 = add i32 %hdim.11135, 1, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %inc217}, i64 0, metadata !75), !dbg !358
  %cmp201 = icmp ult i32 %inc217, %34, !dbg !358
  br i1 %cmp201, label %for.body203, label %for.end218, !dbg !358

for.end218:                                       ; preds = %for.inc216
  %cmp222 = icmp sgt i32 %.pre1165, 1, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %inc2291182}, i64 0, metadata !73), !dbg !350
  br i1 %cmp222, label %if.then224, label %for.cond191, !dbg !360

if.then224:                                       ; preds = %for.end218
  %35 = bitcast i32* %16 to i8*, !dbg !366
  call void @free(i8* %35) #7, !dbg !366
  %36 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !366
  call void @free(i8* %36) #7, !dbg !366
  %call226 = call i32 @CCTK_Warn(i32 1, i32 249, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !368
  br label %return, !dbg !369

for.end230:                                       ; preds = %for.cond191, %for.cond191.preheader
  %idxprom231 = sext i32 %vindex to i64, !dbg !370
  %variables = getelementptr inbounds %struct.PGH* %call28, i64 0, i32 7, !dbg !370
  %37 = load i8**** %variables, align 8, !dbg !370, !tbaa !283
  %arrayidx232 = getelementptr inbounds i8*** %37, i64 %idxprom231, !dbg !370
  %38 = load i8*** %arrayidx232, align 8, !dbg !370, !tbaa !283
  %39 = load i8** %38, align 8, !dbg !370, !tbaa !283
  %40 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !371, !tbaa !283
  %call234 = call i32 %40(%struct.cGH* %GH) #7, !dbg !371
  call void @llvm.dbg.value(metadata !{i32 %call234}, i64 0, metadata !79), !dbg !371
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !372
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !372
  %41 = load i32* %dim12, align 4, !dbg !372, !tbaa !277
  %cmp2371130 = icmp eq i32 %41, 0, !dbg !372
  br i1 %cmp2371130, label %for.cond285.preheader.for.end388_crit_edge, label %for.body239.lr.ph, !dbg !372

for.body239.lr.ph:                                ; preds = %for.end230
  %42 = load i32** %do_dir, align 8, !dbg !374, !tbaa !283
  %extras272 = getelementptr inbounds i8* %39, i64 56, !dbg !376
  %43 = bitcast i8* %extras272 to %struct.PGExtras**, !dbg !376
  br label %for.body239, !dbg !372

for.cond285.preheader:                            ; preds = %for.inc282
  %phitmp = icmp eq i32 %41, 0, !dbg !372
  br i1 %phitmp, label %for.cond285.preheader.for.end388_crit_edge, label %for.body289.lr.ph, !dbg !377

for.cond285.preheader.for.end388_crit_edge:       ; preds = %for.end230, %for.cond285.preheader
  %extras.i.pre = getelementptr inbounds i8* %39, i64 56, !dbg !379
  %.pre1172 = bitcast i8* %extras.i.pre to %struct.PGExtras**, !dbg !379
  br label %for.end388, !dbg !377

for.body289.lr.ph:                                ; preds = %for.cond285.preheader
  %44 = load i32** %downsample120, align 8, !dbg !381, !tbaa !283
  %45 = load i32** %do_dir, align 8, !dbg !383, !tbaa !283
  %totals = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 13, !dbg !384
  %connectivity361 = getelementptr inbounds i8* %39, i64 64, !dbg !386
  %46 = bitcast i8* %connectivity361 to %struct.PConnectivity**, !dbg !386
  %extras367 = getelementptr inbounds i8* %39, i64 56, !dbg !387
  %47 = bitcast i8* %extras367 to %struct.PGExtras**, !dbg !387
  %tobool302 = icmp eq i32* %downsample, null, !dbg !389
  br label %for.body289, !dbg !377

for.body239:                                      ; preds = %for.body239.lr.ph, %for.inc282
  %indvars.iv = phi i64 [ 0, %for.body239.lr.ph ], [ %indvars.iv.next, %for.inc282 ]
  %vdim.31132 = phi i32 [ 0, %for.body239.lr.ph ], [ %inc283, %for.inc282 ]
  %hdim.21131 = phi i32 [ 0, %for.body239.lr.ph ], [ %hdim.3, %for.inc282 ]
  %arrayidx242 = getelementptr inbounds i32* %42, i64 %indvars.iv, !dbg !374
  %48 = load i32* %arrayidx242, align 4, !dbg !374, !tbaa !277
  %tobool243 = icmp eq i32 %48, 0, !dbg !374
  br i1 %tobool243, label %if.else263, label %land.lhs.true244, !dbg !374

land.lhs.true244:                                 ; preds = %for.body239
  %49 = load i32* %hdim88, align 4, !dbg !374, !tbaa !277
  %cmp246 = icmp ult i32 %hdim.21131, %49, !dbg !374
  br i1 %cmp246, label %if.then248, label %if.else263, !dbg !374

if.then248:                                       ; preds = %land.lhs.true244
  %arrayidx250 = getelementptr inbounds i32* %origin, i64 %indvars.iv, !dbg !391
  %50 = load i32* %arrayidx250, align 4, !dbg !391, !tbaa !277
  %idxprom251 = zext i32 %hdim.21131 to i64, !dbg !391
  %arrayidx252 = getelementptr inbounds i32* %extent, i64 %idxprom251, !dbg !391
  %51 = load i32* %arrayidx252, align 4, !dbg !391, !tbaa !277
  %add253 = add nsw i32 %51, %50, !dbg !391
  %52 = load %struct.PGExtras** %43, align 8, !dbg !391, !tbaa !283
  %nsize = getelementptr inbounds %struct.PGExtras* %52, i64 0, i32 1, !dbg !391
  %53 = load i32** %nsize, align 8, !dbg !391, !tbaa !283
  %arrayidx255 = getelementptr inbounds i32* %53, i64 %indvars.iv, !dbg !391
  %54 = load i32* %arrayidx255, align 4, !dbg !391, !tbaa !277
  %cmp256 = icmp sgt i32 %add253, %54, !dbg !391
  br i1 %cmp256, label %if.then258, label %if.end261, !dbg !391

if.then258:                                       ; preds = %if.then248
  %55 = load i32** %vectors92, align 8, !dbg !393, !tbaa !283
  %56 = bitcast i32* %55 to i8*, !dbg !393
  call void @free(i8* %56) #7, !dbg !393
  %57 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !393
  call void @free(i8* %57) #7, !dbg !393
  %call260 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 266, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i32 %hdim.21131) #7, !dbg !395
  br label %return, !dbg !396

if.end261:                                        ; preds = %if.then248
  %inc262 = add i32 %hdim.21131, 1, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %inc262}, i64 0, metadata !75), !dbg !397
  br label %for.inc282, !dbg !398

if.else263:                                       ; preds = %land.lhs.true244, %for.body239
  %58 = load i32* %is_diagonal_in_3D182, align 4, !dbg !376, !tbaa !277
  %tobool265 = icmp eq i32 %58, 0, !dbg !376
  br i1 %tobool265, label %for.inc282, label %land.lhs.true266, !dbg !376

land.lhs.true266:                                 ; preds = %if.else263
  %arrayidx268 = getelementptr inbounds i32* %origin, i64 %indvars.iv, !dbg !376
  %59 = load i32* %arrayidx268, align 4, !dbg !376, !tbaa !277
  %60 = load i32* %extent, align 4, !dbg !376, !tbaa !277
  %add270 = add nsw i32 %60, %59, !dbg !376
  %61 = load %struct.PGExtras** %43, align 8, !dbg !376, !tbaa !283
  %nsize273 = getelementptr inbounds %struct.PGExtras* %61, i64 0, i32 1, !dbg !376
  %62 = load i32** %nsize273, align 8, !dbg !376, !tbaa !283
  %arrayidx274 = getelementptr inbounds i32* %62, i64 %indvars.iv, !dbg !376
  %63 = load i32* %arrayidx274, align 4, !dbg !376, !tbaa !277
  %cmp275 = icmp sgt i32 %add270, %63, !dbg !376
  br i1 %cmp275, label %if.then277, label %for.inc282, !dbg !376

if.then277:                                       ; preds = %land.lhs.true266
  %64 = load i32** %vectors92, align 8, !dbg !399, !tbaa !283
  %65 = bitcast i32* %64 to i8*, !dbg !399
  call void @free(i8* %65) #7, !dbg !399
  %66 = bitcast %struct.hslab_mapping_t* %mapping.0 to i8*, !dbg !399
  call void @free(i8* %66) #7, !dbg !399
  %call279 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 277, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i32 %vdim.31132) #7, !dbg !401
  br label %return, !dbg !402

for.inc282:                                       ; preds = %if.else263, %if.end261, %land.lhs.true266
  %hdim.3 = phi i32 [ %inc262, %if.end261 ], [ %hdim.21131, %land.lhs.true266 ], [ %hdim.21131, %if.else263 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !372
  %inc283 = add i32 %vdim.31132, 1, !dbg !372
  call void @llvm.dbg.value(metadata !{i32 %inc283}, i64 0, metadata !73), !dbg !372
  %67 = trunc i64 %indvars.iv.next to i32, !dbg !372
  %cmp237 = icmp ult i32 %67, %41, !dbg !372
  br i1 %cmp237, label %for.body239, label %for.cond285.preheader, !dbg !372

for.body289:                                      ; preds = %for.body289.lr.ph, %for.inc386
  %vdim.41125 = phi i32 [ 0, %for.body289.lr.ph ], [ %inc387, %for.inc386 ]
  %hdim.41124 = phi i32 [ 0, %for.body289.lr.ph ], [ %hdim.5, %for.inc386 ]
  %idxprom290 = zext i32 %vdim.41125 to i64, !dbg !381
  %arrayidx292 = getelementptr inbounds i32* %44, i64 %idxprom290, !dbg !381
  store i32 1, i32* %arrayidx292, align 4, !dbg !381, !tbaa !277
  %arrayidx295 = getelementptr inbounds i32* %45, i64 %idxprom290, !dbg !383
  %68 = load i32* %arrayidx295, align 4, !dbg !383, !tbaa !277
  %tobool296 = icmp eq i32 %68, 0, !dbg !383
  br i1 %tobool296, label %if.else343, label %land.lhs.true297, !dbg !383

land.lhs.true297:                                 ; preds = %for.body289
  %69 = load i32* %hdim88, align 4, !dbg !383, !tbaa !277
  %cmp299 = icmp ult i32 %hdim.41124, %69, !dbg !383
  br i1 %cmp299, label %if.then301, label %if.else343, !dbg !383

if.then301:                                       ; preds = %land.lhs.true297
  %idxprom310.pre = zext i32 %hdim.41124 to i64, !dbg !403
  br i1 %tobool302, label %if.end309, label %if.then303, !dbg !389

if.then303:                                       ; preds = %if.then301
  %arrayidx305 = getelementptr inbounds i32* %downsample, i64 %idxprom310.pre, !dbg !404
  %70 = load i32* %arrayidx305, align 4, !dbg !404, !tbaa !277
  store i32 %70, i32* %arrayidx292, align 4, !dbg !404, !tbaa !277
  br label %if.end309, !dbg !406

if.end309:                                        ; preds = %if.then301, %if.then303
  %71 = phi i32 [ %70, %if.then303 ], [ 1, %if.then301 ]
  %arrayidx311 = getelementptr inbounds i32* %extent, i64 %idxprom310.pre, !dbg !403
  %72 = load i32* %arrayidx311, align 4, !dbg !403, !tbaa !277
  %div = sdiv i32 %72, %71, !dbg !403
  %73 = load i32** %global_hsize, align 8, !dbg !403, !tbaa !283
  %arrayidx317 = getelementptr inbounds i32* %73, i64 %idxprom310.pre, !dbg !403
  store i32 %div, i32* %arrayidx317, align 4, !dbg !403, !tbaa !277
  %74 = load i32* %arrayidx311, align 4, !dbg !407, !tbaa !277
  %75 = load i32* %arrayidx292, align 4, !dbg !407, !tbaa !277
  %rem = srem i32 %74, %75, !dbg !407
  %tobool323 = icmp eq i32 %rem, 0, !dbg !407
  br i1 %tobool323, label %if.end329, label %if.then324, !dbg !407

if.then324:                                       ; preds = %if.end309
  %inc328 = add nsw i32 %div, 1, !dbg !408
  store i32 %inc328, i32* %arrayidx317, align 4, !dbg !408, !tbaa !277
  br label %if.end329, !dbg !410

if.end329:                                        ; preds = %if.end309, %if.then324
  %76 = phi i32 [ %inc328, %if.then324 ], [ %div, %if.end309 ]
  %77 = load %struct.PConnectivity** %46, align 8, !dbg !411, !tbaa !283
  %perme = getelementptr inbounds %struct.PConnectivity* %77, i64 0, i32 3, !dbg !411
  %78 = load i32** %perme, align 8, !dbg !411, !tbaa !283
  %arrayidx331 = getelementptr inbounds i32* %78, i64 %idxprom290, !dbg !411
  %79 = load i32* %arrayidx331, align 4, !dbg !411, !tbaa !277
  %tobool332 = icmp eq i32 %79, 0, !dbg !411
  br i1 %tobool332, label %if.end341, label %if.then333, !dbg !411

if.then333:                                       ; preds = %if.end329
  %80 = load %struct.PGExtras** %47, align 8, !dbg !412, !tbaa !283
  %nghostzones = getelementptr inbounds %struct.PGExtras* %80, i64 0, i32 12, !dbg !412
  %81 = load i32** %nghostzones, align 8, !dbg !412, !tbaa !283
  %arrayidx336 = getelementptr inbounds i32* %81, i64 %idxprom290, !dbg !412
  %82 = load i32* %arrayidx336, align 4, !dbg !412, !tbaa !277
  %mul337 = shl nsw i32 %82, 1, !dbg !412
  %sub = sub nsw i32 %76, %mul337, !dbg !412
  store i32 %sub, i32* %arrayidx317, align 4, !dbg !412, !tbaa !277
  br label %if.end341, !dbg !414

if.end341:                                        ; preds = %if.end329, %if.then333
  %inc342 = add i32 %hdim.41124, 1, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %inc342}, i64 0, metadata !75), !dbg !415
  br label %for.inc386, !dbg !416

if.else343:                                       ; preds = %for.body289, %land.lhs.true297
  %83 = load i32* %is_diagonal_in_3D182, align 4, !dbg !417, !tbaa !277
  %tobool345 = icmp eq i32 %83, 0, !dbg !417
  br i1 %tobool345, label %for.inc386, label %if.then346, !dbg !417

if.then346:                                       ; preds = %if.else343
  %84 = load i32* %extent, align 4, !dbg !384, !tbaa !277
  %85 = load i32* %44, align 4, !dbg !384, !tbaa !277
  %div350 = sdiv i32 %84, %85, !dbg !384
  store i32 %div350, i32* %totals, align 4, !dbg !384, !tbaa !277
  %86 = load i32* %extent, align 4, !dbg !418, !tbaa !277
  %87 = load i32* %44, align 4, !dbg !418, !tbaa !277
  %rem354 = srem i32 %86, %87, !dbg !418
  %tobool355 = icmp eq i32 %rem354, 0, !dbg !418
  br i1 %tobool355, label %if.end359, label %if.then356, !dbg !418

if.then356:                                       ; preds = %if.then346
  %inc358 = add i32 %div350, 1, !dbg !419
  store i32 %inc358, i32* %totals, align 4, !dbg !419, !tbaa !277
  br label %if.end359, !dbg !421

if.end359:                                        ; preds = %if.then346, %if.then356
  %88 = phi i32 [ %inc358, %if.then356 ], [ %div350, %if.then346 ]
  %89 = load %struct.PConnectivity** %46, align 8, !dbg !386, !tbaa !283
  %perme362 = getelementptr inbounds %struct.PConnectivity* %89, i64 0, i32 3, !dbg !386
  %90 = load i32** %perme362, align 8, !dbg !386, !tbaa !283
  %arrayidx363 = getelementptr inbounds i32* %90, i64 %idxprom290, !dbg !386
  %91 = load i32* %arrayidx363, align 4, !dbg !386, !tbaa !277
  %tobool364 = icmp eq i32 %91, 0, !dbg !386
  br i1 %tobool364, label %if.end373, label %if.then365, !dbg !386

if.then365:                                       ; preds = %if.end359
  %92 = load %struct.PGExtras** %47, align 8, !dbg !387, !tbaa !283
  %nghostzones368 = getelementptr inbounds %struct.PGExtras* %92, i64 0, i32 12, !dbg !387
  %93 = load i32** %nghostzones368, align 8, !dbg !387, !tbaa !283
  %arrayidx369 = getelementptr inbounds i32* %93, i64 %idxprom290, !dbg !387
  %94 = load i32* %arrayidx369, align 4, !dbg !387, !tbaa !277
  %mul370 = shl nsw i32 %94, 1, !dbg !387
  %sub372 = sub i32 %88, %mul370, !dbg !387
  store i32 %sub372, i32* %totals, align 4, !dbg !387, !tbaa !277
  br label %if.end373, !dbg !422

if.end373:                                        ; preds = %if.end359, %if.then365
  %95 = phi i32 [ %sub372, %if.then365 ], [ %88, %if.end359 ]
  %96 = load i32** %global_hsize, align 8, !dbg !423, !tbaa !283
  %97 = load i32* %96, align 4, !dbg !423, !tbaa !277
  %cmp377 = icmp ugt i32 %97, %95, !dbg !423
  br i1 %cmp377, label %if.then379, label %for.inc386, !dbg !423

if.then379:                                       ; preds = %if.end373
  store i32 %95, i32* %96, align 4, !dbg !424, !tbaa !277
  br label %for.inc386, !dbg !426

for.inc386:                                       ; preds = %if.else343, %if.end341, %if.end373, %if.then379
  %hdim.5 = phi i32 [ %inc342, %if.end341 ], [ %hdim.41124, %if.then379 ], [ %hdim.41124, %if.end373 ], [ %hdim.41124, %if.else343 ]
  %inc387 = add i32 %vdim.41125, 1, !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %inc387}, i64 0, metadata !73), !dbg !377
  %98 = load i32* %dim12, align 4, !dbg !377, !tbaa !277
  %cmp287 = icmp ult i32 %inc387, %98, !dbg !377
  br i1 %cmp287, label %for.body289, label %for.end388, !dbg !377

for.end388:                                       ; preds = %for.inc386, %for.cond285.preheader.for.end388_crit_edge
  %.pre-phi = phi %struct.PGExtras** [ %.pre1172, %for.cond285.preheader.for.end388_crit_edge ], [ %47, %for.inc386 ], !dbg !379
  %99 = phi i32 [ 0, %for.cond285.preheader.for.end388_crit_edge ], [ %98, %for.inc386 ]
  tail call void @llvm.dbg.value(metadata !{i32* %origin}, i64 0, metadata !427), !dbg !428
  tail call void @llvm.dbg.value(metadata !{i32* %extent}, i64 0, metadata !429), !dbg !430
  tail call void @llvm.dbg.value(metadata !{%struct.hslab_mapping_t* %mapping.0}, i64 0, metadata !431), !dbg !432
  %100 = load i32* %hdim88, align 4, !dbg !379, !tbaa !277
  %101 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !379, !tbaa !283
  %dim.i = getelementptr inbounds %struct.PGExtras* %101, i64 0, i32 0, !dbg !379
  %102 = load i32* %dim.i, align 4, !dbg !379, !tbaa !277
  %cmp.i = icmp eq i32 %100, %102, !dbg !379
  %conv.i = zext i1 %cmp.i to i32, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !433), !dbg !379
  %cmp437.i = icmp sgt i32 %100, 0, !dbg !434
  %or.cond.i = and i1 %cmp.i, %cmp437.i, !dbg !437
  br i1 %or.cond.i, label %for.body.lr.ph.i, label %IsFullHyperslab.exit, !dbg !437

for.body.lr.ph.i:                                 ; preds = %for.end388
  %103 = load i32** %downsample120, align 8, !dbg !438, !tbaa !283
  %connectivity.i = getelementptr inbounds i8* %39, i64 64, !dbg !440
  %104 = bitcast i8* %connectivity.i to %struct.PConnectivity**, !dbg !440
  %105 = load %struct.PConnectivity** %104, align 8, !dbg !440, !tbaa !283
  %perme.i = getelementptr inbounds %struct.PConnectivity* %105, i64 0, i32 3, !dbg !440
  %106 = load i32** %perme.i, align 8, !dbg !440, !tbaa !283
  br label %for.body.i, !dbg !434

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %retval1.039.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %and22.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds i32* %origin, i64 %indvars.iv.i, !dbg !441
  %107 = load i32* %arrayidx.i, align 4, !dbg !441, !tbaa !277
  %cmp6.i = icmp eq i32 %107, 0, !dbg !441
  %conv7.i = zext i1 %cmp6.i to i32, !dbg !441
  %and.i = and i32 %conv7.i, %retval1.039.i, !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32 %and.i}, i64 0, metadata !433), !dbg !441
  %arrayidx9.i = getelementptr inbounds i32* %extent, i64 %indvars.iv.i, !dbg !442
  %108 = load i32* %arrayidx9.i, align 4, !dbg !442, !tbaa !277
  %cmp10.i = icmp slt i32 %108, 1, !dbg !442
  %conv11.i = zext i1 %cmp10.i to i32, !dbg !442
  %and12.i = and i32 %and.i, %conv11.i, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %and12.i}, i64 0, metadata !433), !dbg !442
  %arrayidx14.i = getelementptr inbounds i32* %103, i64 %indvars.iv.i, !dbg !438
  %109 = load i32* %arrayidx14.i, align 4, !dbg !438, !tbaa !277
  %cmp15.i = icmp slt i32 %109, 2, !dbg !438
  %conv16.i = zext i1 %cmp15.i to i32, !dbg !438
  %and17.i = and i32 %and12.i, %conv16.i, !dbg !438
  tail call void @llvm.dbg.value(metadata !{i32 %and17.i}, i64 0, metadata !433), !dbg !438
  %arrayidx19.i = getelementptr inbounds i32* %106, i64 %indvars.iv.i, !dbg !440
  %110 = load i32* %arrayidx19.i, align 4, !dbg !440, !tbaa !277
  %cmp20.i = icmp eq i32 %110, 0, !dbg !440
  %conv21.i = zext i1 %cmp20.i to i32, !dbg !440
  %and22.i = and i32 %and17.i, %conv21.i, !dbg !440
  tail call void @llvm.dbg.value(metadata !{i32 %and22.i}, i64 0, metadata !433), !dbg !440
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !434
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !434
  %exitcond = icmp eq i32 %lftr.wideiv, %100, !dbg !434
  br i1 %exitcond, label %IsFullHyperslab.exit, label %for.body.i, !dbg !434

IsFullHyperslab.exit:                             ; preds = %for.body.i, %for.end388
  %retval1.1.i = phi i32 [ %conv.i, %for.end388 ], [ %and22.i, %for.body.i ]
  %is_full_hyperslab = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 14, !dbg !380
  store i32 %retval1.1.i, i32* %is_full_hyperslab, align 4, !dbg !380, !tbaa !277
  %tobool391 = icmp eq i32 %retval1.1.i, 0, !dbg !443
  br i1 %tobool391, label %if.else405, label %if.then392, !dbg !443

if.then392:                                       ; preds = %IsFullHyperslab.exit
  %111 = load i32** %local_startpoint, align 8, !dbg !444, !tbaa !283
  %112 = bitcast i32* %111 to i8*, !dbg !444
  %conv395 = sext i32 %99 to i64, !dbg !444
  %mul396 = shl nsw i64 %conv395, 2, !dbg !444
  call void @llvm.memset.p0i8.i64(i8* %112, i8 0, i64 %mul396, i32 4, i1 false), !dbg !444
  %113 = load i32** %local_endpoint, align 8, !dbg !446, !tbaa !283
  %114 = bitcast i32* %113 to i8*, !dbg !446
  %115 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !446, !tbaa !283
  %lnsize = getelementptr inbounds %struct.PGExtras* %115, i64 0, i32 6, !dbg !446
  %116 = load i32** %lnsize, align 8, !dbg !446, !tbaa !283
  %117 = bitcast i32* %116 to i8*, !dbg !446
  %118 = load i32* %dim12, align 4, !dbg !446, !tbaa !277
  %conv400 = sext i32 %118 to i64, !dbg !446
  %mul401 = shl nsw i64 %conv400, 2, !dbg !446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %117, i64 %mul401, i32 4, i1 false), !dbg !446
  %119 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !447, !tbaa !283
  %npoints403 = getelementptr inbounds %struct.PGExtras* %119, i64 0, i32 7, !dbg !447
  %120 = load i32* %npoints403, align 4, !dbg !447, !tbaa !277
  %totals404 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 13, !dbg !447
  store i32 %120, i32* %totals404, align 4, !dbg !447, !tbaa !277
  br label %if.end748, !dbg !448

if.else405:                                       ; preds = %IsFullHyperslab.exit
  %121 = load i32* %is_diagonal_in_3D182, align 4, !dbg !449, !tbaa !277
  %tobool407 = icmp eq i32 %121, 0, !dbg !449
  %cmp4301117 = icmp eq i32 %99, 0, !dbg !450
  br i1 %tobool407, label %for.cond428.preheader, label %for.cond409.preheader, !dbg !449

for.cond409.preheader:                            ; preds = %if.else405
  br i1 %cmp4301117, label %if.end748, label %for.body413.lr.ph, !dbg !453

for.body413.lr.ph:                                ; preds = %for.cond409.preheader
  %122 = load i32** %downsample120, align 8, !dbg !456, !tbaa !283
  %123 = load i32** %global_startpoint, align 8, !dbg !458, !tbaa !283
  br label %for.body413, !dbg !453

for.cond428.preheader:                            ; preds = %if.else405
  br i1 %cmp4301117, label %for.end559.thread, label %for.body432.lr.ph, !dbg !450

for.body432.lr.ph:                                ; preds = %for.cond428.preheader
  %124 = load i32** %do_dir, align 8, !dbg !459, !tbaa !283
  %125 = load i32** %global_endpoint, align 8, !dbg !459, !tbaa !283
  br label %for.body432, !dbg !450

for.body413:                                      ; preds = %for.body413.lr.ph, %for.body413
  %vdim.51122 = phi i32 [ 0, %for.body413.lr.ph ], [ %inc425, %for.body413 ]
  %126 = load i32* %122, align 4, !dbg !456, !tbaa !277
  %idxprom416 = zext i32 %vdim.51122 to i64, !dbg !456
  %arrayidx418 = getelementptr inbounds i32* %122, i64 %idxprom416, !dbg !456
  store i32 %126, i32* %arrayidx418, align 4, !dbg !456, !tbaa !277
  %arrayidx420 = getelementptr inbounds i32* %origin, i64 %idxprom416, !dbg !458
  %127 = load i32* %arrayidx420, align 4, !dbg !458, !tbaa !277
  %arrayidx423 = getelementptr inbounds i32* %123, i64 %idxprom416, !dbg !458
  store i32 %127, i32* %arrayidx423, align 4, !dbg !458, !tbaa !277
  %inc425 = add i32 %vdim.51122, 1, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %inc425}, i64 0, metadata !73), !dbg !453
  %128 = load i32* %dim12, align 4, !dbg !453, !tbaa !277
  %cmp411 = icmp ult i32 %inc425, %128, !dbg !453
  br i1 %cmp411, label %for.body413, label %if.end748, !dbg !453

for.cond449.preheader:                            ; preds = %cond.end
  %phitmp1173 = icmp eq i32 %132, 0, !dbg !450
  br i1 %phitmp1173, label %for.end559.thread, label %for.body453.lr.ph, !dbg !461

for.body453.lr.ph:                                ; preds = %for.cond449.preheader
  %stagtype454 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !463
  %idxprom459 = sext i32 %call234 to i64, !dbg !465
  br label %for.body453, !dbg !461

for.body432:                                      ; preds = %for.body432.lr.ph, %cond.end
  %vdim.61119 = phi i32 [ 0, %for.body432.lr.ph ], [ %inc447, %cond.end ]
  %hdim.61118 = phi i32 [ 0, %for.body432.lr.ph ], [ %hdim.7, %cond.end ]
  %idxprom433 = zext i32 %vdim.61119 to i64, !dbg !459
  %arrayidx434 = getelementptr inbounds i32* %origin, i64 %idxprom433, !dbg !459
  %129 = load i32* %arrayidx434, align 4, !dbg !459, !tbaa !277
  %arrayidx437 = getelementptr inbounds i32* %124, i64 %idxprom433, !dbg !459
  %130 = load i32* %arrayidx437, align 4, !dbg !459, !tbaa !277
  %tobool438 = icmp eq i32 %130, 0, !dbg !459
  br i1 %tobool438, label %cond.end, label %cond.true, !dbg !459

cond.true:                                        ; preds = %for.body432
  %inc439 = add i32 %hdim.61118, 1, !dbg !459
  call void @llvm.dbg.value(metadata !{i32 %inc439}, i64 0, metadata !75), !dbg !459
  %idxprom440 = zext i32 %hdim.61118 to i64, !dbg !459
  %arrayidx441 = getelementptr inbounds i32* %extent, i64 %idxprom440, !dbg !459
  %131 = load i32* %arrayidx441, align 4, !dbg !459, !tbaa !277
  br label %cond.end, !dbg !459

cond.end:                                         ; preds = %for.body432, %cond.true
  %hdim.7 = phi i32 [ %inc439, %cond.true ], [ %hdim.61118, %for.body432 ]
  %cond = phi i32 [ %131, %cond.true ], [ 1, %for.body432 ], !dbg !459
  %add442 = add nsw i32 %cond, %129, !dbg !459
  %arrayidx445 = getelementptr inbounds i32* %125, i64 %idxprom433, !dbg !459
  store i32 %add442, i32* %arrayidx445, align 4, !dbg !459, !tbaa !277
  %inc447 = add i32 %vdim.61119, 1, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %inc447}, i64 0, metadata !73), !dbg !450
  %132 = load i32* %dim12, align 4, !dbg !450, !tbaa !277
  %cmp430 = icmp ult i32 %inc447, %132, !dbg !450
  br i1 %cmp430, label %for.body432, label %for.cond449.preheader, !dbg !450

for.body453:                                      ; preds = %for.body453.lr.ph, %for.inc557
  %vdim.71116 = phi i32 [ 0, %for.body453.lr.ph ], [ %inc558, %for.inc557 ]
  %133 = load i32* %stagtype454, align 4, !dbg !463, !tbaa !277
  %call455 = call i32 @CCTK_StaggerDirIndex(i32 %vdim.71116, i32 %133) #7, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %call455}, i64 0, metadata !78), !dbg !463
  %idxprom456 = zext i32 %vdim.71116 to i64, !dbg !465
  %arrayidx457 = getelementptr inbounds i32* %origin, i64 %idxprom456, !dbg !465
  %134 = load i32* %arrayidx457, align 4, !dbg !465, !tbaa !277
  %135 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !465, !tbaa !283
  %lb = getelementptr inbounds %struct.PGExtras* %135, i64 0, i32 3, !dbg !465
  %136 = load i32*** %lb, align 8, !dbg !465, !tbaa !283
  %arrayidx461 = getelementptr inbounds i32** %136, i64 %idxprom459, !dbg !465
  %137 = load i32** %arrayidx461, align 8, !dbg !465, !tbaa !283
  %arrayidx462 = getelementptr inbounds i32* %137, i64 %idxprom456, !dbg !465
  %138 = load i32* %arrayidx462, align 4, !dbg !465, !tbaa !277
  %idxprom464 = sext i32 %call455 to i64, !dbg !465
  %arrayidx467 = getelementptr inbounds %struct.PGExtras* %135, i64 0, i32 13, i64 %idxprom464, i64 1, !dbg !465
  %139 = load i32** %arrayidx467, align 8, !dbg !465, !tbaa !283
  %arrayidx468 = getelementptr inbounds i32* %139, i64 %idxprom456, !dbg !465
  %140 = load i32* %arrayidx468, align 4, !dbg !465, !tbaa !277
  %add469 = add nsw i32 %140, %138, !dbg !465
  %cmp470 = icmp slt i32 %134, %add469, !dbg !465
  %141 = load i32** %global_startpoint, align 8, !dbg !466, !tbaa !283
  %arrayidx477 = getelementptr inbounds i32* %141, i64 %idxprom456, !dbg !466
  br i1 %cmp470, label %if.then472, label %if.else552, !dbg !465

if.then472:                                       ; preds = %for.body453
  store i32 %134, i32* %arrayidx477, align 4, !dbg !466, !tbaa !277
  %142 = load i32* %arrayidx457, align 4, !dbg !468, !tbaa !277
  %143 = load i32* %arrayidx462, align 4, !dbg !468, !tbaa !277
  %arrayidx491 = getelementptr inbounds %struct.PGExtras* %135, i64 0, i32 13, i64 %idxprom464, i64 0, !dbg !468
  %144 = load i32** %arrayidx491, align 8, !dbg !468, !tbaa !283
  %arrayidx492 = getelementptr inbounds i32* %144, i64 %idxprom456, !dbg !468
  %145 = load i32* %arrayidx492, align 4, !dbg !468, !tbaa !277
  %add493 = add nsw i32 %145, %143, !dbg !468
  %cmp494 = icmp slt i32 %142, %add493, !dbg !468
  br i1 %cmp494, label %if.then496, label %for.inc557, !dbg !468

if.then496:                                       ; preds = %if.then472
  %sub513 = sub nsw i32 %add493, %142, !dbg !469
  %146 = load i32** %downsample120, align 8, !dbg !469, !tbaa !283
  %arrayidx516 = getelementptr inbounds i32* %146, i64 %idxprom456, !dbg !469
  %147 = load i32* %arrayidx516, align 4, !dbg !469, !tbaa !277
  %div517 = sdiv i32 %sub513, %147, !dbg !469
  call void @llvm.dbg.value(metadata !{i32 %div517}, i64 0, metadata !80), !dbg !469
  %rem538 = srem i32 %sub513, %147, !dbg !471
  %not.tobool539 = icmp ne i32 %rem538, 0, !dbg !471
  %inc541 = zext i1 %not.tobool539 to i32, !dbg !471
  %div517.inc541 = add nsw i32 %inc541, %div517, !dbg !471
  %mul546 = mul nsw i32 %div517.inc541, %147, !dbg !472
  %add550 = add nsw i32 %mul546, %134, !dbg !472
  store i32 %add550, i32* %arrayidx477, align 4, !dbg !472, !tbaa !277
  br label %for.inc557, !dbg !473

if.else552:                                       ; preds = %for.body453
  store i32 -1, i32* %arrayidx477, align 4, !dbg !474, !tbaa !277
  br label %for.inc557

for.inc557:                                       ; preds = %if.else552, %if.then496, %if.then472
  %inc558 = add i32 %vdim.71116, 1, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %inc558}, i64 0, metadata !73), !dbg !461
  %148 = load i32* %dim12, align 4, !dbg !461, !tbaa !277
  %cmp451 = icmp ult i32 %inc558, %148, !dbg !461
  br i1 %cmp451, label %for.body453, label %for.end559, !dbg !461

for.end559.thread:                                ; preds = %for.cond449.preheader, %for.cond428.preheader
  %totals5601183 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 13, !dbg !476
  store i32 1, i32* %totals5601183, align 4, !dbg !476, !tbaa !277
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !477
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !477
  br label %if.end748, !dbg !477

for.end559:                                       ; preds = %for.inc557
  %phitmp1174 = icmp eq i32 %148, 0, !dbg !461
  %totals560 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 13, !dbg !476
  store i32 1, i32* %totals560, align 4, !dbg !476, !tbaa !277
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !477
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !477
  br i1 %phitmp1174, label %if.end748, label %for.body565.lr.ph, !dbg !477

for.body565.lr.ph:                                ; preds = %for.end559
  %stagtype566 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !479
  %idxprom578 = sext i32 %call234 to i64, !dbg !481
  br label %for.body565, !dbg !477

for.body565:                                      ; preds = %for.body565.lr.ph, %for.inc744
  %vdim.81114 = phi i32 [ 0, %for.body565.lr.ph ], [ %inc745, %for.inc744 ]
  %hdim.81113 = phi i32 [ 0, %for.body565.lr.ph ], [ %hdim.9, %for.inc744 ]
  %149 = load i32* %stagtype566, align 4, !dbg !479, !tbaa !277
  %call567 = call i32 @CCTK_StaggerDirIndex(i32 %vdim.81114, i32 %149) #7, !dbg !479
  call void @llvm.dbg.value(metadata !{i32 %call567}, i64 0, metadata !78), !dbg !479
  %idxprom568 = zext i32 %vdim.81114 to i64, !dbg !481
  %150 = load i32** %global_startpoint, align 8, !dbg !481, !tbaa !283
  %arrayidx570 = getelementptr inbounds i32* %150, i64 %idxprom568, !dbg !481
  %151 = load i32* %arrayidx570, align 4, !dbg !481, !tbaa !277
  %cmp571 = icmp sgt i32 %151, -1, !dbg !481
  %152 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !481, !tbaa !283
  %lb580 = getelementptr inbounds %struct.PGExtras* %152, i64 0, i32 3, !dbg !481
  %153 = load i32*** %lb580, align 8, !dbg !481, !tbaa !283
  %arrayidx581 = getelementptr inbounds i32** %153, i64 %idxprom578, !dbg !481
  %154 = load i32** %arrayidx581, align 8, !dbg !481, !tbaa !283
  br i1 %cmp571, label %land.lhs.true573, label %for.body565.if.else607_crit_edge, !dbg !481

for.body565.if.else607_crit_edge:                 ; preds = %for.body565
  %idxprom622.pre.pre = sext i32 %call567 to i64, !dbg !482
  br label %if.else607, !dbg !481

land.lhs.true573:                                 ; preds = %for.body565
  %arrayidx582 = getelementptr inbounds i32* %154, i64 %idxprom568, !dbg !481
  %155 = load i32* %arrayidx582, align 4, !dbg !481, !tbaa !277
  %idxprom584 = sext i32 %call567 to i64, !dbg !481
  %arrayidx588 = getelementptr inbounds %struct.PGExtras* %152, i64 0, i32 13, i64 %idxprom584, i64 1, !dbg !481
  %156 = load i32** %arrayidx588, align 8, !dbg !481, !tbaa !283
  %arrayidx589 = getelementptr inbounds i32* %156, i64 %idxprom568, !dbg !481
  %157 = load i32* %arrayidx589, align 4, !dbg !481, !tbaa !277
  %add590 = add nsw i32 %157, %155, !dbg !481
  %cmp591 = icmp slt i32 %151, %add590, !dbg !481
  br i1 %cmp591, label %if.then593, label %if.else607, !dbg !481

if.then593:                                       ; preds = %land.lhs.true573
  %sub603 = sub nsw i32 %151, %155, !dbg !483
  %158 = load i32** %local_startpoint, align 8, !dbg !483, !tbaa !283
  %arrayidx606 = getelementptr inbounds i32* %158, i64 %idxprom568, !dbg !483
  store i32 %sub603, i32* %arrayidx606, align 4, !dbg !483, !tbaa !277
  br label %if.end611, !dbg !485

if.else607:                                       ; preds = %for.body565.if.else607_crit_edge, %land.lhs.true573
  %idxprom622.pre.pre-phi = phi i64 [ %idxprom622.pre.pre, %for.body565.if.else607_crit_edge ], [ %idxprom584, %land.lhs.true573 ], !dbg !482
  %159 = load i32** %local_startpoint, align 8, !dbg !486, !tbaa !283
  %arrayidx610 = getelementptr inbounds i32* %159, i64 %idxprom568, !dbg !486
  store i32 -1, i32* %arrayidx610, align 4, !dbg !486, !tbaa !277
  br label %if.end611

if.end611:                                        ; preds = %if.else607, %if.then593
  %idxprom622.pre-phi = phi i64 [ %idxprom622.pre.pre-phi, %if.else607 ], [ %idxprom584, %if.then593 ], !dbg !482
  %160 = phi i32* [ %159, %if.else607 ], [ %158, %if.then593 ]
  %161 = load i32** %global_endpoint, align 8, !dbg !482, !tbaa !283
  %arrayidx614 = getelementptr inbounds i32* %161, i64 %idxprom568, !dbg !482
  %162 = load i32* %arrayidx614, align 4, !dbg !482, !tbaa !277
  %arrayidx620 = getelementptr inbounds i32* %154, i64 %idxprom568, !dbg !482
  %163 = load i32* %arrayidx620, align 4, !dbg !482, !tbaa !277
  %arrayidx626 = getelementptr inbounds %struct.PGExtras* %152, i64 0, i32 13, i64 %idxprom622.pre-phi, i64 0, !dbg !482
  %164 = load i32** %arrayidx626, align 8, !dbg !482, !tbaa !283
  %arrayidx627 = getelementptr inbounds i32* %164, i64 %idxprom568, !dbg !482
  %165 = load i32* %arrayidx627, align 4, !dbg !482, !tbaa !277
  %add628 = add nsw i32 %165, %163, !dbg !482
  %cmp629 = icmp sgt i32 %162, %add628, !dbg !482
  br i1 %cmp629, label %if.end679, label %if.end679.thread, !dbg !482

if.end679.thread:                                 ; preds = %if.end611
  %166 = load i32** %local_endpoint, align 8, !dbg !488, !tbaa !283
  %arrayidx678 = getelementptr inbounds i32* %166, i64 %idxprom568, !dbg !488
  store i32 -1, i32* %arrayidx678, align 4, !dbg !488, !tbaa !277
  %arrayidx6821184 = getelementptr inbounds i32* %166, i64 %idxprom568, !dbg !490
  br label %if.end679.if.then691_crit_edge, !dbg !490

if.end679:                                        ; preds = %if.end611
  %arrayidx637 = getelementptr inbounds %struct.PGExtras* %152, i64 0, i32 13, i64 %idxprom622.pre-phi, i64 1, !dbg !491
  %167 = load i32** %arrayidx637, align 8, !dbg !491, !tbaa !283
  %arrayidx638 = getelementptr inbounds i32* %167, i64 %idxprom568, !dbg !491
  %168 = load i32* %arrayidx638, align 4, !dbg !491, !tbaa !277
  %sub648 = sub nsw i32 %162, %163, !dbg !491
  %cmp649 = icmp slt i32 %168, %sub648, !dbg !491
  %.sub648 = select i1 %cmp649, i32 %168, i32 %sub648, !dbg !491
  %169 = load i32** %local_endpoint, align 8, !dbg !491, !tbaa !283
  %arrayidx674 = getelementptr inbounds i32* %169, i64 %idxprom568, !dbg !491
  store i32 %.sub648, i32* %arrayidx674, align 4, !dbg !491, !tbaa !277
  %arrayidx682 = getelementptr inbounds i32* %169, i64 %idxprom568, !dbg !490
  %cmp683 = icmp slt i32 %.sub648, 0, !dbg !490
  br i1 %cmp683, label %if.end679.if.then691_crit_edge, label %lor.lhs.false685, !dbg !490

if.end679.if.then691_crit_edge:                   ; preds = %if.end679.thread, %if.end679
  %arrayidx6821187 = phi i32* [ %arrayidx6821184, %if.end679.thread ], [ %arrayidx682, %if.end679 ]
  %arrayidx695.pre = getelementptr inbounds i32* %160, i64 %idxprom568, !dbg !493
  br label %if.then691, !dbg !490

lor.lhs.false685:                                 ; preds = %if.end679
  %arrayidx688 = getelementptr inbounds i32* %160, i64 %idxprom568, !dbg !490
  %170 = load i32* %arrayidx688, align 4, !dbg !490, !tbaa !277
  %cmp689 = icmp slt i32 %170, 0, !dbg !490
  br i1 %cmp689, label %if.then691, label %if.end699, !dbg !490

if.then691:                                       ; preds = %if.end679.if.then691_crit_edge, %lor.lhs.false685
  %arrayidx6821186 = phi i32* [ %arrayidx6821187, %if.end679.if.then691_crit_edge ], [ %arrayidx682, %lor.lhs.false685 ]
  %arrayidx695.pre-phi = phi i32* [ %arrayidx695.pre, %if.end679.if.then691_crit_edge ], [ %arrayidx688, %lor.lhs.false685 ], !dbg !493
  store i32 0, i32* %totals560, align 4, !dbg !495, !tbaa !277
  %171 = load i32* %arrayidx695.pre-phi, align 4, !dbg !493, !tbaa !277
  store i32 %171, i32* %arrayidx6821186, align 4, !dbg !493, !tbaa !277
  br label %if.end699, !dbg !496

if.end699:                                        ; preds = %if.then691, %lor.lhs.false685
  %arrayidx6821188 = phi i32* [ %arrayidx6821186, %if.then691 ], [ %arrayidx682, %lor.lhs.false685 ]
  %172 = phi i32 [ %171, %if.then691 ], [ %.sub648, %lor.lhs.false685 ]
  %173 = load i32** %do_dir, align 8, !dbg !497, !tbaa !283
  %arrayidx702 = getelementptr inbounds i32* %173, i64 %idxprom568, !dbg !497
  %174 = load i32* %arrayidx702, align 4, !dbg !497, !tbaa !277
  %tobool703 = icmp eq i32 %174, 0, !dbg !497
  br i1 %tobool703, label %for.inc744, label %if.then704, !dbg !497

if.then704:                                       ; preds = %if.end699
  %arrayidx710 = getelementptr inbounds i32* %160, i64 %idxprom568, !dbg !498
  %175 = load i32* %arrayidx710, align 4, !dbg !498, !tbaa !277
  %sub711 = sub nsw i32 %172, %175, !dbg !498
  %176 = load i32** %downsample120, align 8, !dbg !498, !tbaa !283
  %arrayidx714 = getelementptr inbounds i32* %176, i64 %idxprom568, !dbg !498
  %177 = load i32* %arrayidx714, align 4, !dbg !498, !tbaa !277
  %div715 = sdiv i32 %sub711, %177, !dbg !498
  %idxprom716 = zext i32 %hdim.81113 to i64, !dbg !498
  %178 = load i32** %local_hsize, align 8, !dbg !498, !tbaa !283
  %arrayidx718 = getelementptr inbounds i32* %178, i64 %idxprom716, !dbg !498
  store i32 %div715, i32* %arrayidx718, align 4, !dbg !498, !tbaa !277
  %179 = load i32* %arrayidx6821188, align 4, !dbg !500, !tbaa !277
  %180 = load i32* %arrayidx710, align 4, !dbg !500, !tbaa !277
  %sub725 = sub nsw i32 %179, %180, !dbg !500
  %181 = load i32* %arrayidx714, align 4, !dbg !500, !tbaa !277
  %rem729 = srem i32 %sub725, %181, !dbg !500
  %tobool730 = icmp eq i32 %rem729, 0, !dbg !500
  br i1 %tobool730, label %if.end736, label %if.then731, !dbg !500

if.then731:                                       ; preds = %if.then704
  %inc735 = add nsw i32 %div715, 1, !dbg !501
  store i32 %inc735, i32* %arrayidx718, align 4, !dbg !501, !tbaa !277
  br label %if.end736, !dbg !503

if.end736:                                        ; preds = %if.then704, %if.then731
  %182 = phi i32 [ %div715, %if.then704 ], [ %inc735, %if.then731 ]
  %183 = load i32* %totals560, align 4, !dbg !504, !tbaa !277
  %mul741 = mul i32 %183, %182, !dbg !504
  store i32 %mul741, i32* %totals560, align 4, !dbg !504, !tbaa !277
  %inc742 = add i32 %hdim.81113, 1, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %inc742}, i64 0, metadata !75), !dbg !505
  br label %for.inc744, !dbg !506

for.inc744:                                       ; preds = %if.end699, %if.end736
  %hdim.9 = phi i32 [ %inc742, %if.end736 ], [ %hdim.81113, %if.end699 ]
  %inc745 = add i32 %vdim.81114, 1, !dbg !477
  call void @llvm.dbg.value(metadata !{i32 %inc745}, i64 0, metadata !73), !dbg !477
  %184 = load i32* %dim12, align 4, !dbg !477, !tbaa !277
  %cmp563 = icmp ult i32 %inc745, %184, !dbg !477
  br i1 %cmp563, label %for.body565, label %if.end748, !dbg !477

if.end748:                                        ; preds = %for.cond409.preheader, %for.body413, %for.end559, %for.end559.thread, %for.inc744, %if.then392
  %185 = load %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !507, !tbaa !283
  %tobool749 = icmp eq %struct.hslab_mapping_t* %185, null, !dbg !507
  br i1 %tobool749, label %for.cond756.preheader, label %if.then750, !dbg !507

if.then750:                                       ; preds = %if.end748
  %prev = getelementptr inbounds %struct.hslab_mapping_t* %185, i64 0, i32 17, !dbg !508
  store %struct.hslab_mapping_t* %mapping.0, %struct.hslab_mapping_t** %prev, align 8, !dbg !508, !tbaa !283
  br label %for.cond756.preheader, !dbg !510

for.cond756.preheader:                            ; preds = %if.then750, %if.end748
  %prev752 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 17, !dbg !511
  store %struct.hslab_mapping_t* null, %struct.hslab_mapping_t** %prev752, align 8, !dbg !511, !tbaa !283
  %186 = load %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !512, !tbaa !283
  %next = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 18, !dbg !512
  store %struct.hslab_mapping_t* %186, %struct.hslab_mapping_t** %next, align 8, !dbg !512, !tbaa !283
  store %struct.hslab_mapping_t* %mapping.0, %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !513, !tbaa !283
  %187 = load i32* @nmapping_list, align 4, !dbg !514, !tbaa !277
  %inc753 = add nsw i32 %187, 1, !dbg !514
  store i32 %inc753, i32* @nmapping_list, align 4, !dbg !514, !tbaa !277
  %handle = getelementptr inbounds %struct.hslab_mapping_t* %mapping.0, i64 0, i32 0, !dbg !514
  store i32 %187, i32* %handle, align 4, !dbg !514, !tbaa !277
  %188 = load i32* %hdim88, align 4, !dbg !515, !tbaa !277
  %cmp7581110 = icmp eq i32 %188, 0, !dbg !515
  br i1 %cmp7581110, label %return, label %for.body760.lr.ph, !dbg !515

for.body760.lr.ph:                                ; preds = %for.cond756.preheader
  %189 = load i32** %global_hsize, align 8, !dbg !518, !tbaa !283
  br label %for.body760, !dbg !515

for.body760:                                      ; preds = %for.body760.lr.ph, %for.body760
  %hdim.101111 = phi i32 [ 0, %for.body760.lr.ph ], [ %inc767, %for.body760 ]
  %idxprom761 = zext i32 %hdim.101111 to i64, !dbg !518
  %arrayidx763 = getelementptr inbounds i32* %189, i64 %idxprom761, !dbg !518
  %190 = load i32* %arrayidx763, align 4, !dbg !518, !tbaa !277
  %arrayidx765 = getelementptr inbounds i32* %hsize, i64 %idxprom761, !dbg !518
  store i32 %190, i32* %arrayidx765, align 4, !dbg !518, !tbaa !277
  %inc767 = add i32 %hdim.101111, 1, !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %inc767}, i64 0, metadata !75), !dbg !515
  %191 = load i32* %hdim88, align 4, !dbg !515, !tbaa !277
  %cmp758 = icmp ult i32 %inc767, %191, !dbg !515
  br i1 %cmp758, label %for.body760, label %for.cond756.if.end769.loopexit_crit_edge, !dbg !515

for.cond756.if.end769.loopexit_crit_edge:         ; preds = %for.body760
  %.pre1163.pre = load i32* %handle, align 4, !dbg !520, !tbaa !277
  br label %return, !dbg !515

return:                                           ; preds = %for.cond756.preheader, %for.cond756.if.end769.loopexit_crit_edge, %if.then277, %if.then258, %if.then224, %if.then187, %if.then175, %if.then161, %if.then85
  %retval.0 = phi i32 [ %retval1.31108, %if.then85 ], [ -7, %if.then161 ], [ -7, %if.then175 ], [ -7, %if.then187 ], [ -8, %if.then224 ], [ -8, %if.then258 ], [ -8, %if.then277 ], [ %187, %for.cond756.preheader ], [ %.pre1163.pre, %for.cond756.if.end769.loopexit_crit_edge ]
  ret i32 %retval.0, !dbg !521
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
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_FreeMapping(i32 %mapping_handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mapping_handle}, i64 0, metadata !231), !dbg !522
  %mapping.029 = load %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !523
  %tobool30 = icmp eq %struct.hslab_mapping_t* %mapping.029, null, !dbg !524
  br i1 %tobool30, label %return, label %while.body, !dbg !524

while.cond:                                       ; preds = %while.body
  %next17 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.031, i64 0, i32 18, !dbg !525
  %mapping.0 = load %struct.hslab_mapping_t** %next17, align 8, !dbg !523
  %tobool = icmp eq %struct.hslab_mapping_t* %mapping.0, null, !dbg !524
  br i1 %tobool, label %return, label %while.body, !dbg !524

while.body:                                       ; preds = %entry, %while.cond
  %mapping.031 = phi %struct.hslab_mapping_t* [ %mapping.0, %while.cond ], [ %mapping.029, %entry ]
  %handle = getelementptr inbounds %struct.hslab_mapping_t* %mapping.031, i64 0, i32 0, !dbg !527
  %0 = load i32* %handle, align 4, !dbg !527, !tbaa !277
  %cmp = icmp eq i32 %0, %mapping_handle, !dbg !527
  br i1 %cmp, label %if.then, label %while.cond, !dbg !527

if.then:                                          ; preds = %while.body
  %cmp1 = icmp eq %struct.hslab_mapping_t* %mapping.031, %mapping.029, !dbg !528
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !528

if.then2:                                         ; preds = %if.then
  %next = getelementptr inbounds %struct.hslab_mapping_t* %mapping.029, i64 0, i32 18, !dbg !530
  %1 = load %struct.hslab_mapping_t** %next, align 8, !dbg !530, !tbaa !283
  store %struct.hslab_mapping_t* %1, %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !530, !tbaa !283
  br label %if.end15, !dbg !532

if.else:                                          ; preds = %if.then
  %next3 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.031, i64 0, i32 18, !dbg !533
  %2 = load %struct.hslab_mapping_t** %next3, align 8, !dbg !533, !tbaa !283
  %tobool4 = icmp eq %struct.hslab_mapping_t* %2, null, !dbg !533
  %prev8.pre = getelementptr inbounds %struct.hslab_mapping_t* %mapping.031, i64 0, i32 17, !dbg !535
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !533

if.then5:                                         ; preds = %if.else
  %3 = load %struct.hslab_mapping_t** %prev8.pre, align 8, !dbg !536, !tbaa !283
  %prev7 = getelementptr inbounds %struct.hslab_mapping_t* %2, i64 0, i32 17, !dbg !536
  store %struct.hslab_mapping_t* %3, %struct.hslab_mapping_t** %prev7, align 8, !dbg !536, !tbaa !283
  br label %if.end, !dbg !538

if.end:                                           ; preds = %if.else, %if.then5
  %4 = load %struct.hslab_mapping_t** %prev8.pre, align 8, !dbg !535, !tbaa !283
  %tobool9 = icmp eq %struct.hslab_mapping_t* %4, null, !dbg !535
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !535

if.then10:                                        ; preds = %if.end
  %5 = load %struct.hslab_mapping_t** %next3, align 8, !dbg !539, !tbaa !283
  %next13 = getelementptr inbounds %struct.hslab_mapping_t* %4, i64 0, i32 18, !dbg !539
  store %struct.hslab_mapping_t* %5, %struct.hslab_mapping_t** %next13, align 8, !dbg !539, !tbaa !283
  br label %if.end15, !dbg !541

if.end15:                                         ; preds = %if.end, %if.then10, %if.then2
  %vectors = getelementptr inbounds %struct.hslab_mapping_t* %mapping.031, i64 0, i32 4, !dbg !542
  %6 = load i32** %vectors, align 8, !dbg !542, !tbaa !283
  %7 = bitcast i32* %6 to i8*, !dbg !542
  tail call void @free(i8* %7) #7, !dbg !542
  %8 = bitcast %struct.hslab_mapping_t* %mapping.031 to i8*, !dbg !543
  tail call void @free(i8* %8) #7, !dbg !543
  br label %return, !dbg !544

return:                                           ; preds = %entry, %while.cond, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -1, %while.cond ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !545
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32 %mapping_handle) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mapping_handle}, i64 0, metadata !237), !dbg !546
  %mapping.03 = load %struct.hslab_mapping_t** @mapping_list, align 8, !dbg !547
  %tobool4 = icmp eq %struct.hslab_mapping_t* %mapping.03, null, !dbg !548
  br i1 %tobool4, label %while.end, label %land.rhs, !dbg !548

while.cond:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.hslab_mapping_t* %mapping.05, i64 0, i32 18, !dbg !549
  %mapping.0 = load %struct.hslab_mapping_t** %next, align 8, !dbg !547
  %tobool = icmp eq %struct.hslab_mapping_t* %mapping.0, null, !dbg !548
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !548

land.rhs:                                         ; preds = %entry, %while.cond
  %mapping.05 = phi %struct.hslab_mapping_t* [ %mapping.0, %while.cond ], [ %mapping.03, %entry ]
  %handle = getelementptr inbounds %struct.hslab_mapping_t* %mapping.05, i64 0, i32 0, !dbg !548
  %0 = load i32* %handle, align 4, !dbg !548, !tbaa !277
  %cmp = icmp eq i32 %0, %mapping_handle, !dbg !548
  br i1 %cmp, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %entry
  %mapping.0.lcssa = phi %struct.hslab_mapping_t* [ null, %entry ], [ %mapping.05, %land.rhs ], [ null, %while.cond ]
  ret %struct.hslab_mapping_t* %mapping.0.lcssa, !dbg !551
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !251, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !227, metadata !233, metadata !239}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c", metadata !"CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_DefineGlobalMappingByIndex", metadata !"Hyperslab_DefineGlobalMappingByIndex", metadata !"", i32 66, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, void (i8*, i8*, i32, i32, i32)*, i32*)* @Hyperslab_DefineGlobalMappingByIndex, null, null, metadata !61, i32 78} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 78] [Hyperslab_DefineGlobalMappingByIndex]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !53, metadata !53, metadata !53, metadata !53, metadata !14, metadata !14, metadata !55, metadata !24}
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
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!55 = metadata !{i32 786454, metadata !1, null, metadata !"t_hslabConversionFn", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [t_hslabConversionFn] [line 21, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !59, metadata !44, metadata !14, metadata !14, metadata !14}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !120, metadata !121, metadata !190, metadata !226}
!62 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777283, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 67]
!63 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 33554500, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 68]
!64 = metadata !{i32 786689, metadata !11, metadata !"dim", metadata !5, i32 50331717, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 69]
!65 = metadata !{i32 786689, metadata !11, metadata !"direction", metadata !5, i32 67108934, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [direction] [line 70]
!66 = metadata !{i32 786689, metadata !11, metadata !"origin", metadata !5, i32 83886151, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [origin] [line 71]
!67 = metadata !{i32 786689, metadata !11, metadata !"extent", metadata !5, i32 100663368, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extent] [line 72]
!68 = metadata !{i32 786689, metadata !11, metadata !"downsample", metadata !5, i32 117440585, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample] [line 73]
!69 = metadata !{i32 786689, metadata !11, metadata !"table_handle", metadata !5, i32 134217802, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table_handle] [line 74]
!70 = metadata !{i32 786689, metadata !11, metadata !"target_proc", metadata !5, i32 150995019, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target_proc] [line 75]
!71 = metadata !{i32 786689, metadata !11, metadata !"conversion_fn", metadata !5, i32 167772236, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conversion_fn] [line 76]
!72 = metadata !{i32 786689, metadata !11, metadata !"hsize", metadata !5, i32 184549453, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 77]
!73 = metadata !{i32 786688, metadata !11, metadata !"vdim", metadata !5, i32 79, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdim] [line 79]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786688, metadata !11, metadata !"hdim", metadata !5, i32 79, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hdim] [line 79]
!76 = metadata !{i32 786688, metadata !11, metadata !"num_dirs", metadata !5, i32 79, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_dirs] [line 79]
!77 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 80, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 80]
!78 = metadata !{i32 786688, metadata !11, metadata !"stagger_index", metadata !5, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger_index] [line 81]
!79 = metadata !{i32 786688, metadata !11, metadata !"myproc", metadata !5, i32 82, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 82]
!80 = metadata !{i32 786688, metadata !11, metadata !"npoints", metadata !5, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npoints] [line 83]
!81 = metadata !{i32 786688, metadata !11, metadata !"mapping", metadata !5, i32 84, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapping] [line 84]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hslab_mapping_t]
!83 = metadata !{i32 786454, metadata !1, null, metadata !"hslab_mapping_t", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [hslab_mapping_t] [line 45, size 0, align 0, offset 0] [from hslab_mapping_t]
!84 = metadata !{i32 786451, metadata !85, null, metadata !"hslab_mapping_t", i32 24, i64 1280, i64 64, i32 0, i32 0, null, metadata !86, i32 0, null, null} ; [ DW_TAG_structure_type ] [hslab_mapping_t] [line 24, size 1280, align 64, offset 0] [from ]
!85 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/PUGHSlabi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !106, metadata !107}
!87 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"handle", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [handle] [line 26, size 32, align 32, offset 0] [from int]
!88 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"target_proc", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [target_proc] [line 27, size 32, align 32, offset 32] [from int]
!89 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"hdim", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [hdim] [line 28, size 32, align 32, offset 64] [from unsigned int]
!90 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"vdim", i32 29, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [vdim] [line 29, size 32, align 32, offset 96] [from unsigned int]
!91 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"vectors", i32 30, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vectors] [line 30, size 64, align 64, offset 128] [from ]
!92 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"local_startpoint", i32 31, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [local_startpoint] [line 31, size 64, align 64, offset 192] [from ]
!93 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"local_endpoint", i32 32, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [local_endpoint] [line 32, size 64, align 64, offset 256] [from ]
!94 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"global_startpoint", i32 33, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [global_startpoint] [line 33, size 64, align 64, offset 320] [from ]
!95 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"global_endpoint", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [global_endpoint] [line 34, size 64, align 64, offset 384] [from ]
!96 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"do_dir", i32 35, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [do_dir] [line 35, size 64, align 64, offset 448] [from ]
!97 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"downsample", i32 36, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [downsample] [line 36, size 64, align 64, offset 512] [from ]
!98 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"global_hsize", i32 37, i64 64, i64 64, i64 576, i32 0, metadata !24} ; [ DW_TAG_member ] [global_hsize] [line 37, size 64, align 64, offset 576] [from ]
!99 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"local_hsize", i32 38, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [local_hsize] [line 38, size 64, align 64, offset 640] [from ]
!100 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"totals", i32 39, i64 32, i64 32, i64 704, i32 0, metadata !74} ; [ DW_TAG_member ] [totals] [line 39, size 32, align 32, offset 704] [from unsigned int]
!101 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"is_full_hyperslab", i32 40, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [is_full_hyperslab] [line 40, size 32, align 32, offset 736] [from int]
!102 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"is_diagonal_in_3D", i32 41, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [is_diagonal_in_3D] [line 41, size 32, align 32, offset 768] [from int]
!103 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"conversion_fn", i32 42, i64 64, i64 64, i64 832, i32 0, metadata !55} ; [ DW_TAG_member ] [conversion_fn] [line 42, size 64, align 64, offset 832] [from t_hslabConversionFn]
!104 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"prev", i32 43, i64 64, i64 64, i64 896, i32 0, metadata !105} ; [ DW_TAG_member ] [prev] [line 43, size 64, align 64, offset 896] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hslab_mapping_t]
!106 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"next", i32 43, i64 64, i64 64, i64 960, i32 0, metadata !105} ; [ DW_TAG_member ] [next] [line 43, size 64, align 64, offset 960] [from ]
!107 = metadata !{i32 786445, metadata !85, metadata !84, metadata !"vinfo", i32 44, i64 256, i64 32, i64 1024, i32 0, metadata !108} ; [ DW_TAG_member ] [vinfo] [line 44, size 256, align 32, offset 1024] [from cGroup]
!108 = metadata !{i32 786454, metadata !85, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!109 = metadata !{i32 786451, metadata !110, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!110 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119}
!112 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!113 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!114 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!115 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!116 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!117 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!118 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!119 = metadata !{i32 786445, metadata !110, metadata !109, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!120 = metadata !{i32 786688, metadata !11, metadata !"error_msg", metadata !5, i32 85, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [error_msg] [line 85]
!121 = metadata !{i32 786688, metadata !11, metadata !"pughGH", metadata !5, i32 86, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 86]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from pGH]
!124 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!125 = metadata !{i32 786451, metadata !126, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!126 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !178, metadata !188}
!128 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!129 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!130 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!131 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!132 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!133 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!134 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!135 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!136 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!137 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!138 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!139 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!140 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!141 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!142 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!143 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!144 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!145 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!146 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!147 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!148 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!149 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !150} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!152 = metadata !{i32 786454, metadata !126, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!153 = metadata !{i32 786451, metadata !154, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!154 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !175, metadata !177}
!156 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!158 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!159 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !160} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!161 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !160} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!162 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!163 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!164 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!165 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!166 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !160} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!167 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!168 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!169 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!170 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !171} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !24, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!174 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!175 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !176} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!176 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !160, metadata !172, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!177 = metadata !{i32 786445, metadata !154, metadata !153, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !176} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!178 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !179} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!181 = metadata !{i32 786454, metadata !126, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!182 = metadata !{i32 786451, metadata !154, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187}
!184 = metadata !{i32 786445, metadata !154, metadata !182, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!185 = metadata !{i32 786445, metadata !154, metadata !182, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!186 = metadata !{i32 786445, metadata !154, metadata !182, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !160} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!187 = metadata !{i32 786445, metadata !154, metadata !182, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!188 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !189} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!190 = metadata !{i32 786688, metadata !11, metadata !"GA", metadata !5, i32 87, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 87]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!192 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from pGA]
!193 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!194 = metadata !{i32 786451, metadata !154, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !195, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !221, metadata !222, metadata !223, metadata !224}
!196 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !189} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!197 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!198 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!199 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!200 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!201 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!202 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!203 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!204 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!205 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!206 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !151} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!207 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !180} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!208 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !209} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!210 = metadata !{i32 786454, metadata !154, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!211 = metadata !{i32 786451, metadata !154, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !212, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!213 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!215 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!216 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!217 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!218 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!219 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!220 = metadata !{i32 786445, metadata !154, metadata !211, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!221 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !209} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!222 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!223 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!224 = metadata !{i32 786445, metadata !154, metadata !194, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !225} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!225 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!226 = metadata !{i32 786688, metadata !11, metadata !"vinfo", metadata !5, i32 88, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 88]
!227 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_FreeMapping", metadata !"Hyperslab_FreeMapping", metadata !"", i32 502, metadata !228, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @Hyperslab_FreeMapping, null, null, metadata !230, i32 503} ; [ DW_TAG_subprogram ] [line 502] [def] [scope 503] [Hyperslab_FreeMapping]
!228 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!229 = metadata !{metadata !14, metadata !14}
!230 = metadata !{metadata !231, metadata !232}
!231 = metadata !{i32 786689, metadata !227, metadata !"mapping_handle", metadata !5, i32 16777718, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping_handle] [line 502]
!232 = metadata !{i32 786688, metadata !227, metadata !"mapping", metadata !5, i32 504, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapping] [line 504]
!233 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGHSlabi_GetMapping", metadata !"PUGHSlabi_GetMapping", metadata !"", i32 538, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.hslab_mapping_t* (i32)* @PUGHSlabi_GetMapping, null, null, metadata !236, i32 539} ; [ DW_TAG_subprogram ] [line 538] [def] [scope 539] [PUGHSlabi_GetMapping]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{metadata !82, metadata !14}
!236 = metadata !{metadata !237, metadata !238}
!237 = metadata !{i32 786689, metadata !233, metadata !"mapping_handle", metadata !5, i32 16777754, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping_handle] [line 538]
!238 = metadata !{i32 786688, metadata !233, metadata !"mapping", metadata !5, i32 540, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapping] [line 540]
!239 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IsFullHyperslab", metadata !"IsFullHyperslab", metadata !"", i32 553, metadata !240, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !244, i32 557} ; [ DW_TAG_subprogram ] [line 553] [local] [def] [scope 557] [IsFullHyperslab]
!240 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = metadata !{metadata !14, metadata !191, metadata !53, metadata !53, metadata !242}
!242 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !243} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!243 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from hslab_mapping_t]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250}
!245 = metadata !{i32 786689, metadata !239, metadata !"GA", metadata !5, i32 16777769, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GA] [line 553]
!246 = metadata !{i32 786689, metadata !239, metadata !"origin", metadata !5, i32 33554986, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [origin] [line 554]
!247 = metadata !{i32 786689, metadata !239, metadata !"extent", metadata !5, i32 50332203, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extent] [line 555]
!248 = metadata !{i32 786689, metadata !239, metadata !"mapping", metadata !5, i32 67109420, metadata !242, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapping] [line 556]
!249 = metadata !{i32 786688, metadata !239, metadata !"i", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 558]
!250 = metadata !{i32 786688, metadata !239, metadata !"retval", metadata !5, i32 558, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 558]
!251 = metadata !{metadata !252, metadata !253, metadata !254}
!252 = metadata !{i32 786484, i32 0, null, metadata !"nmapping_list", metadata !"nmapping_list", metadata !"", metadata !5, i32 57, metadata !14, i32 1, i32 1, i32* @nmapping_list, null} ; [ DW_TAG_variable ] [nmapping_list] [line 57] [local] [def]
!253 = metadata !{i32 786484, i32 0, null, metadata !"mapping_list", metadata !"mapping_list", metadata !"", metadata !5, i32 58, metadata !82, i32 1, i32 1, %struct.hslab_mapping_t** @mapping_list, null} ; [ DW_TAG_variable ] [mapping_list] [line 58] [local] [def]
!254 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!255 = metadata !{i32 27, i32 0, metadata !4, null}
!256 = metadata !{i32 67, i32 0, metadata !11, null}
!257 = metadata !{i32 68, i32 0, metadata !11, null}
!258 = metadata !{i32 69, i32 0, metadata !11, null}
!259 = metadata !{i32 70, i32 0, metadata !11, null}
!260 = metadata !{i32 71, i32 0, metadata !11, null}
!261 = metadata !{i32 72, i32 0, metadata !11, null}
!262 = metadata !{i32 73, i32 0, metadata !11, null}
!263 = metadata !{i32 74, i32 0, metadata !11, null}
!264 = metadata !{i32 75, i32 0, metadata !11, null}
!265 = metadata !{i32 76, i32 0, metadata !11, null}
!266 = metadata !{i32 77, i32 0, metadata !11, null}
!267 = metadata !{i32 88, i32 0, metadata !11, null}
!268 = metadata !{i32 92, i32 0, metadata !11, null}
!269 = metadata !{i32 94, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !11, i32 93, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!271 = metadata !{i32 96, i32 0, metadata !270, null}
!272 = metadata !{i32 99, i32 0, metadata !11, null}
!273 = metadata !{i8* null}
!274 = metadata !{i32 100, i32 0, metadata !11, null}
!275 = metadata !{i32 101, i32 0, metadata !11, null}
!276 = metadata !{i32 106, i32 0, metadata !11, null}
!277 = metadata !{metadata !"int", metadata !278}
!278 = metadata !{metadata !"omnipotent char", metadata !279}
!279 = metadata !{metadata !"Simple C/C++ TBAA"}
!280 = metadata !{i32 112, i32 0, metadata !11, null}
!281 = metadata !{i32 117, i32 0, metadata !11, null}
!282 = metadata !{i32 123, i32 0, metadata !11, null}
!283 = metadata !{metadata !"any pointer", metadata !278}
!284 = metadata !{i32 128, i32 0, metadata !11, null}
!285 = metadata !{i32 135, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 135, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!287 = metadata !{i32 786443, metadata !1, metadata !11, i32 134, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!288 = metadata !{i32 141, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!290 = metadata !{i32 786443, metadata !1, metadata !286, i32 136, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!291 = metadata !{i32 137, i32 0, metadata !290, null}
!292 = metadata !{i32 138, i32 0, metadata !290, null}
!293 = metadata !{i32 140, i32 0, metadata !289, null}
!294 = metadata !{i32 143, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !289, i32 142, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!296 = metadata !{i32 144, i32 0, metadata !295, null}
!297 = metadata !{i32 147, i32 0, metadata !287, null}
!298 = metadata !{null}
!299 = metadata !{i32 149, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !287, i32 148, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!301 = metadata !{i32 -5}
!302 = metadata !{i32 150, i32 0, metadata !300, null}
!303 = metadata !{i32 153, i32 0, metadata !11, null}
!304 = metadata !{i32 155, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !11, i32 154, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!306 = metadata !{i32 156, i32 0, metadata !305, null}
!307 = metadata !{i32 158, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !305, i32 157, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!309 = metadata !{i32 160, i32 0, metadata !305, null}
!310 = metadata !{i32 164, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !312, i32 163, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!312 = metadata !{i32 786443, metadata !1, metadata !305, i32 161, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!313 = metadata !{i32 165, i32 0, metadata !311, null}
!314 = metadata !{i32 172, i32 0, metadata !11, null}
!315 = metadata !{i32 174, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !11, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!317 = metadata !{i32 176, i32 0, metadata !316, null}
!318 = metadata !{i32 179, i32 0, metadata !11, null}
!319 = metadata !{i32 180, i32 0, metadata !11, null}
!320 = metadata !{i64 0, i64 4, metadata !277, i64 4, i64 4, metadata !277, i64 8, i64 4, metadata !277, i64 12, i64 4, metadata !277, i64 16, i64 4, metadata !277, i64 20, i64 4, metadata !277, i64 24, i64 4, metadata !277, i64 28, i64 4, metadata !277}
!321 = metadata !{i32 181, i32 0, metadata !11, null}
!322 = metadata !{i32 182, i32 0, metadata !11, null}
!323 = metadata !{i32 185, i32 0, metadata !11, null}
!324 = metadata !{i32 186, i32 0, metadata !11, null}
!325 = metadata !{i32 187, i32 0, metadata !11, null}
!326 = metadata !{i32 188, i32 0, metadata !11, null}
!327 = metadata !{i32 189, i32 0, metadata !11, null}
!328 = metadata !{i32 190, i32 0, metadata !11, null}
!329 = metadata !{i32 191, i32 0, metadata !11, null}
!330 = metadata !{i32 192, i32 0, metadata !11, null}
!331 = metadata !{i32 195, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !11, i32 195, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!333 = metadata !{i32 226, i32 0, metadata !11, null}
!334 = metadata !{i32 198, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !336, i32 198, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!336 = metadata !{i32 786443, metadata !1, metadata !332, i32 196, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!337 = metadata !{i32 200, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !335, i32 199, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!339 = metadata !{i32 205, i32 0, metadata !336, null}
!340 = metadata !{i32 207, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !336, i32 206, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!342 = metadata !{i32 208, i32 0, metadata !341, null}
!343 = metadata !{i32 211, i32 0, metadata !341, null}
!344 = metadata !{i32 214, i32 0, metadata !336, null}
!345 = metadata !{i32 215, i32 0, metadata !336, null}
!346 = metadata !{i32 217, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !336, i32 216, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!348 = metadata !{i32 218, i32 0, metadata !347, null}
!349 = metadata !{i32 221, i32 0, metadata !347, null}
!350 = metadata !{i32 235, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !11, i32 235, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!352 = metadata !{i32 228, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !11, i32 227, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!354 = metadata !{i32 229, i32 0, metadata !353, null}
!355 = metadata !{i32 232, i32 0, metadata !353, null}
!356 = metadata !{i32 237, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !351, i32 236, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!358 = metadata !{i32 238, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !357, i32 238, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!360 = metadata !{i32 245, i32 0, metadata !357, null}
!361 = metadata !{i32 240, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !359, i32 239, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!363 = metadata !{i32 242, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !362, i32 241, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!365 = metadata !{i32 243, i32 0, metadata !364, null}
!366 = metadata !{i32 247, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !357, i32 246, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!368 = metadata !{i32 248, i32 0, metadata !367, null}
!369 = metadata !{i32 250, i32 0, metadata !367, null}
!370 = metadata !{i32 255, i32 0, metadata !11, null}
!371 = metadata !{i32 256, i32 0, metadata !11, null}
!372 = metadata !{i32 259, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !11, i32 259, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!374 = metadata !{i32 261, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !373, i32 260, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!376 = metadata !{i32 273, i32 0, metadata !375, null}
!377 = metadata !{i32 285, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !11, i32 285, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!379 = metadata !{i32 561, i32 0, metadata !239, metadata !380}
!380 = metadata !{i32 327, i32 0, metadata !11, null}
!381 = metadata !{i32 287, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !378, i32 286, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!383 = metadata !{i32 289, i32 0, metadata !382, null}
!384 = metadata !{i32 309, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !382, i32 308, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!386 = metadata !{i32 315, i32 0, metadata !385, null}
!387 = metadata !{i32 317, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !385, i32 316, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!389 = metadata !{i32 291, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !382, i32 290, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!391 = metadata !{i32 263, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !375, i32 262, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!393 = metadata !{i32 265, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 264, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!395 = metadata !{i32 266, i32 0, metadata !394, null}
!396 = metadata !{i32 269, i32 0, metadata !394, null}
!397 = metadata !{i32 271, i32 0, metadata !392, null}
!398 = metadata !{i32 272, i32 0, metadata !392, null}
!399 = metadata !{i32 276, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !375, i32 275, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!401 = metadata !{i32 277, i32 0, metadata !400, null}
!402 = metadata !{i32 280, i32 0, metadata !400, null}
!403 = metadata !{i32 295, i32 0, metadata !390, null}
!404 = metadata !{i32 293, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !390, i32 292, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!406 = metadata !{i32 294, i32 0, metadata !405, null}
!407 = metadata !{i32 296, i32 0, metadata !390, null}
!408 = metadata !{i32 298, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !390, i32 297, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!410 = metadata !{i32 299, i32 0, metadata !409, null}
!411 = metadata !{i32 301, i32 0, metadata !390, null}
!412 = metadata !{i32 303, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !390, i32 302, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!414 = metadata !{i32 304, i32 0, metadata !413, null}
!415 = metadata !{i32 305, i32 0, metadata !390, null}
!416 = metadata !{i32 306, i32 0, metadata !390, null}
!417 = metadata !{i32 307, i32 0, metadata !382, null}
!418 = metadata !{i32 310, i32 0, metadata !385, null}
!419 = metadata !{i32 312, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !385, i32 311, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!421 = metadata !{i32 313, i32 0, metadata !420, null}
!422 = metadata !{i32 318, i32 0, metadata !388, null}
!423 = metadata !{i32 319, i32 0, metadata !385, null}
!424 = metadata !{i32 321, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !385, i32 320, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!426 = metadata !{i32 322, i32 0, metadata !425, null}
!427 = metadata !{i32 786689, metadata !239, metadata !"origin", metadata !5, i32 33554986, metadata !53, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [origin] [line 554]
!428 = metadata !{i32 554, i32 0, metadata !239, metadata !380}
!429 = metadata !{i32 786689, metadata !239, metadata !"extent", metadata !5, i32 50332203, metadata !53, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [extent] [line 555]
!430 = metadata !{i32 555, i32 0, metadata !239, metadata !380}
!431 = metadata !{i32 786689, metadata !239, metadata !"mapping", metadata !5, i32 67109420, metadata !242, i32 0, metadata !380} ; [ DW_TAG_arg_variable ] [mapping] [line 556]
!432 = metadata !{i32 556, i32 0, metadata !239, metadata !380}
!433 = metadata !{i32 786688, metadata !239, metadata !"retval", metadata !5, i32 558, metadata !14, i32 0, metadata !380} ; [ DW_TAG_auto_variable ] [retval] [line 558]
!434 = metadata !{i32 564, i32 0, metadata !435, metadata !380}
!435 = metadata !{i32 786443, metadata !1, metadata !436, i32 564, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!436 = metadata !{i32 786443, metadata !1, metadata !239, i32 563, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!437 = metadata !{i32 562, i32 0, metadata !239, metadata !380}
!438 = metadata !{i32 568, i32 0, metadata !439, metadata !380}
!439 = metadata !{i32 786443, metadata !1, metadata !435, i32 565, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!440 = metadata !{i32 569, i32 0, metadata !439, metadata !380}
!441 = metadata !{i32 566, i32 0, metadata !439, metadata !380}
!442 = metadata !{i32 567, i32 0, metadata !439, metadata !380}
!443 = metadata !{i32 328, i32 0, metadata !11, null}
!444 = metadata !{i32 330, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !11, i32 329, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!446 = metadata !{i32 331, i32 0, metadata !445, null}
!447 = metadata !{i32 332, i32 0, metadata !445, null}
!448 = metadata !{i32 333, i32 0, metadata !445, null}
!449 = metadata !{i32 334, i32 0, metadata !11, null}
!450 = metadata !{i32 346, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !452, i32 346, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!452 = metadata !{i32 786443, metadata !1, metadata !11, i32 344, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!453 = metadata !{i32 337, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !455, i32 337, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!455 = metadata !{i32 786443, metadata !1, metadata !11, i32 335, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!456 = metadata !{i32 339, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !454, i32 338, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!458 = metadata !{i32 340, i32 0, metadata !457, null}
!459 = metadata !{i32 348, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !451, i32 347, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!461 = metadata !{i32 353, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !452, i32 353, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!463 = metadata !{i32 355, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !462, i32 354, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!465 = metadata !{i32 357, i32 0, metadata !464, null}
!466 = metadata !{i32 359, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !464, i32 358, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!468 = metadata !{i32 360, i32 0, metadata !467, null}
!469 = metadata !{i32 362, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !467, i32 361, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!471 = metadata !{i32 364, i32 0, metadata !470, null}
!472 = metadata !{i32 369, i32 0, metadata !470, null}
!473 = metadata !{i32 370, i32 0, metadata !470, null}
!474 = metadata !{i32 374, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !464, i32 373, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!476 = metadata !{i32 379, i32 0, metadata !452, null}
!477 = metadata !{i32 380, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !452, i32 380, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!479 = metadata !{i32 382, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !478, i32 381, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!481 = metadata !{i32 384, i32 0, metadata !480, null}
!482 = metadata !{i32 396, i32 0, metadata !480, null}
!483 = metadata !{i32 388, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !480, i32 387, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!485 = metadata !{i32 390, i32 0, metadata !484, null}
!486 = metadata !{i32 393, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !480, i32 392, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!488 = metadata !{i32 406, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !480, i32 405, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!490 = metadata !{i32 416, i32 0, metadata !480, null}
!491 = metadata !{i32 399, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !480, i32 398, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!493 = metadata !{i32 420, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !480, i32 418, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!495 = metadata !{i32 419, i32 0, metadata !494, null}
!496 = metadata !{i32 421, i32 0, metadata !494, null}
!497 = metadata !{i32 423, i32 0, metadata !480, null}
!498 = metadata !{i32 426, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !480, i32 424, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!500 = metadata !{i32 429, i32 0, metadata !499, null}
!501 = metadata !{i32 432, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !499, i32 431, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!503 = metadata !{i32 433, i32 0, metadata !502, null}
!504 = metadata !{i32 434, i32 0, metadata !499, null}
!505 = metadata !{i32 435, i32 0, metadata !499, null}
!506 = metadata !{i32 436, i32 0, metadata !499, null}
!507 = metadata !{i32 479, i32 0, metadata !11, null}
!508 = metadata !{i32 481, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !11, i32 480, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!510 = metadata !{i32 482, i32 0, metadata !509, null}
!511 = metadata !{i32 483, i32 0, metadata !11, null}
!512 = metadata !{i32 484, i32 0, metadata !11, null}
!513 = metadata !{i32 485, i32 0, metadata !11, null}
!514 = metadata !{i32 487, i32 0, metadata !11, null}
!515 = metadata !{i32 492, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !517, i32 492, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!517 = metadata !{i32 786443, metadata !1, metadata !11, i32 491, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!518 = metadata !{i32 494, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !516, i32 493, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!520 = metadata !{i32 498, i32 0, metadata !11, null}
!521 = metadata !{i32 499, i32 0, metadata !11, null}
!522 = metadata !{i32 502, i32 0, metadata !227, null}
!523 = metadata !{i32 507, i32 0, metadata !227, null}
!524 = metadata !{i32 508, i32 0, metadata !227, null}
!525 = metadata !{i32 531, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !227, i32 509, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!527 = metadata !{i32 510, i32 0, metadata !526, null}
!528 = metadata !{i32 512, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !526, i32 511, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!530 = metadata !{i32 514, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !529, i32 513, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!532 = metadata !{i32 515, i32 0, metadata !531, null}
!533 = metadata !{i32 518, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !529, i32 517, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!535 = metadata !{i32 522, i32 0, metadata !534, null}
!536 = metadata !{i32 520, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !534, i32 519, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!538 = metadata !{i32 521, i32 0, metadata !537, null}
!539 = metadata !{i32 524, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !534, i32 523, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!541 = metadata !{i32 525, i32 0, metadata !540, null}
!542 = metadata !{i32 527, i32 0, metadata !529, null}
!543 = metadata !{i32 528, i32 0, metadata !529, null}
!544 = metadata !{i32 529, i32 0, metadata !529, null}
!545 = metadata !{i32 534, i32 0, metadata !227, null}
!546 = metadata !{i32 538, i32 0, metadata !233, null}
!547 = metadata !{i32 543, i32 0, metadata !233, null}
!548 = metadata !{i32 544, i32 0, metadata !233, null}
!549 = metadata !{i32 546, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !233, i32 545, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c]
!551 = metadata !{i32 549, i32 0, metadata !233, null}
