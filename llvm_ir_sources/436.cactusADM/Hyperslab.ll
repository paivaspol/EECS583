; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [68 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str2 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [28 x i8] c"Invalid target processor ID\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"Must pass valid hyperslab data and sizes buffer pointers\00", align 1
@.str5 = private unnamed_addr constant [40 x i8] c"Given normal vector isn't axis-parallel\00", align 1
@.str6 = private unnamed_addr constant [93 x i8] c"Non-axis-parallel hyperslabs are supported as diagonals from non-staggered 3D variables only\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"Failed to define hyperslab mapping for 3D diagonal\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"Invalid variable index\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"Invalid timelevel\00", align 1
@.str10 = private unnamed_addr constant [37 x i8] c"NULL pointer(s) passed as parameters\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"Invalid hyperslab downsample parameters\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"Couldn't get group info\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"Invalid variable group type\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"Invalid hyperslab dimension\00", align 1
@.str15 = private unnamed_addr constant [37 x i8] c"Given normal vector is a null vector\00", align 1
@.str16 = private unnamed_addr constant [62 x i8] c"No GH extension for PUGH found. Did you activate thorn PUGH ?\00", align 1
@.str17 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/Hyperslab.c,v 1.22 2001/12/19 00:00:37 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c() #0 {
entry:
  ret i8* getelementptr inbounds ([93 x i8]* @.str17, i64 0, i64 0), !dbg !384
}

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize, i32* nocapture %hsize_global, i32* %hoffset_global) #1 {
entry:
  %0 = bitcast i32* %hsize to i8*
  %vinfo = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !56), !dbg !385
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !57), !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %vtimelvl}, i64 0, metadata !58), !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !59), !dbg !388
  call void @llvm.dbg.value(metadata !{i32* %global_origin}, i64 0, metadata !60), !dbg !389
  call void @llvm.dbg.value(metadata !{i32* %directions}, i64 0, metadata !61), !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !62), !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !63), !dbg !392
  call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !64), !dbg !393
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !65), !dbg !394
  call void @llvm.dbg.value(metadata !{i32* %hsize_global}, i64 0, metadata !66), !dbg !395
  call void @llvm.dbg.value(metadata !{i32* %hoffset_global}, i64 0, metadata !67), !dbg !396
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo}, metadata !78), !dbg !397
  %call = call fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #7, !dbg !398
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !197), !dbg !398
  %tobool = icmp eq i8* %call, null, !dbg !399
  br i1 %tobool, label %for.cond.preheader, label %if.then, !dbg !399

for.cond.preheader:                               ; preds = %entry
  %cmp3249 = icmp sgt i32 %hdim, 0, !dbg !400
  br i1 %cmp3249, label %for.body, label %if.end20, !dbg !400

if.then:                                          ; preds = %entry
  %call2 = call i32 @CCTK_Warn(i32 1, i32 286, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %call) #8, !dbg !402
  br label %return, !dbg !404

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv3405 = phi i64 [ %indvars.iv.next3406, %for.body ], [ 0, %for.cond.preheader ]
  %totals.03250 = phi i32 [ %mul, %for.body ], [ 1, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %extents, i64 %indvars.iv3405, !dbg !405
  %1 = load i32* %arrayidx, align 4, !dbg !405, !tbaa !407
  %mul = mul nsw i32 %1, %totals.03250, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !92), !dbg !405
  %indvars.iv.next3406 = add i64 %indvars.iv3405, 1, !dbg !400
  %lftr.wideiv3407 = trunc i64 %indvars.iv.next3406 to i32, !dbg !400
  %exitcond3408 = icmp eq i32 %lftr.wideiv3407, %hdim, !dbg !400
  br i1 %exitcond3408, label %for.end, label %for.body, !dbg !400

for.end:                                          ; preds = %for.body
  %phitmp = icmp eq i32 %mul, 0, !dbg !400
  br i1 %phitmp, label %for.cond5.preheader, label %if.end20, !dbg !410

for.cond5.preheader:                              ; preds = %for.end
  br i1 %cmp3249, label %for.body7.lr.ph, label %for.end19, !dbg !411

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %tobool12 = icmp eq i32* %hoffset_global, null, !dbg !414
  br label %for.body7, !dbg !411

for.body7:                                        ; preds = %for.inc17, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc17 ]
  %arrayidx9 = getelementptr inbounds i32* %hsize_global, i64 %indvars.iv, !dbg !416
  store i32 0, i32* %arrayidx9, align 4, !dbg !416, !tbaa !407
  %arrayidx11 = getelementptr inbounds i32* %hsize, i64 %indvars.iv, !dbg !416
  store i32 0, i32* %arrayidx11, align 4, !dbg !416, !tbaa !407
  br i1 %tobool12, label %for.inc17, label %if.then13, !dbg !414

if.then13:                                        ; preds = %for.body7
  %arrayidx15 = getelementptr inbounds i32* %hoffset_global, i64 %indvars.iv, !dbg !417
  store i32 0, i32* %arrayidx15, align 4, !dbg !417, !tbaa !407
  br label %for.inc17, !dbg !419

for.inc17:                                        ; preds = %for.body7, %if.then13
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !411
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !411
  %exitcond = icmp eq i32 %lftr.wideiv, %hdim, !dbg !411
  br i1 %exitcond, label %for.end19, label %for.body7, !dbg !411

for.end19:                                        ; preds = %for.inc17, %for.cond5.preheader
  store i8* null, i8** %hdata, align 8, !dbg !420, !tbaa !421
  br label %return, !dbg !422

if.end20:                                         ; preds = %for.cond.preheader, %for.end
  %call21 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8, !dbg !423
  %call22 = call i32 @CCTK_GroupData(i32 %call21, %struct.cGroup* %vinfo) #8, !dbg !423
  %dim = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4, !dbg !424
  %2 = load i32* %dim, align 4, !dbg !424, !tbaa !407
  %mul23 = shl nsw i32 %2, 3, !dbg !424
  %conv = sext i32 %mul23 to i64, !dbg !424
  %mul24 = shl nsw i64 %conv, 2, !dbg !424
  %call25 = call noalias i8* @malloc(i64 %mul24) #8, !dbg !424
  %3 = bitcast i8* %call25 to i32*, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !68), !dbg !424
  %idx.ext = sext i32 %2 to i64, !dbg !425
  %add.ptr = getelementptr inbounds i32* %3, i64 %idx.ext, !dbg !425
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !69), !dbg !425
  %mul29 = shl nsw i32 %2, 1, !dbg !426
  %idx.ext30 = sext i32 %mul29 to i64, !dbg !426
  %add.ptr31 = getelementptr inbounds i32* %3, i64 %idx.ext30, !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %add.ptr31}, i64 0, metadata !70), !dbg !426
  %mul33 = mul nsw i32 %2, 3, !dbg !427
  %idx.ext34 = sext i32 %mul33 to i64, !dbg !427
  %mul37 = shl nsw i32 %2, 2, !dbg !428
  %idx.ext38 = sext i32 %mul37 to i64, !dbg !428
  %mul41 = mul nsw i32 %2, 5, !dbg !429
  %idx.ext42 = sext i32 %mul41 to i64, !dbg !429
  %add.ptr43 = getelementptr inbounds i32* %3, i64 %idx.ext42, !dbg !429
  call void @llvm.dbg.value(metadata !{i32* %add.ptr43}, i64 0, metadata !71), !dbg !429
  %mul45 = mul nsw i32 %2, 6, !dbg !430
  %idx.ext46 = sext i32 %mul45 to i64, !dbg !430
  call void @llvm.dbg.value(metadata !{i32* %add.ptr47}, i64 0, metadata !75), !dbg !430
  %mul49 = mul nsw i32 %2, 7, !dbg !431
  %idx.ext50 = sext i32 %mul49 to i64, !dbg !431
  %add.ptr51 = getelementptr inbounds i32* %3, i64 %idx.ext50, !dbg !431
  call void @llvm.dbg.value(metadata !{i32* %add.ptr51}, i64 0, metadata !74), !dbg !431
  %cmp52 = icmp eq i32 %hdim, 1, !dbg !432
  br i1 %cmp52, label %if.then54, label %if.else, !dbg !432

if.then54:                                        ; preds = %if.end20
  %add.ptr47 = getelementptr inbounds i32* %3, i64 %idx.ext46, !dbg !430
  %4 = bitcast i32* %add.ptr47 to i8*, !dbg !433
  %5 = bitcast i32* %directions to i8*, !dbg !433
  %mul57 = shl nsw i64 %idx.ext, 2, !dbg !433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %mul57, i32 4, i1 false), !dbg !433
  br label %if.end87, !dbg !435

if.else:                                          ; preds = %if.end20
  %cmp59 = icmp sgt i32 %2, %hdim, !dbg !436
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !437
  %cmp643244 = icmp sgt i32 %2, 0, !dbg !437
  br i1 %cmp59, label %for.cond62.preheader, label %for.cond76.preheader, !dbg !436

for.cond76.preheader:                             ; preds = %if.else
  br i1 %cmp643244, label %for.body80, label %if.end87, !dbg !440

for.cond62.preheader:                             ; preds = %if.else
  br i1 %cmp643244, label %for.body66, label %if.end87, !dbg !437

for.body66:                                       ; preds = %for.cond62.preheader, %for.body66
  %indvars.iv3401 = phi i64 [ %indvars.iv.next3402, %for.body66 ], [ 0, %for.cond62.preheader ]
  %arrayidx68 = getelementptr inbounds i32* %directions, i64 %indvars.iv3401, !dbg !443
  %6 = load i32* %arrayidx68, align 4, !dbg !443, !tbaa !407
  %lnot = icmp eq i32 %6, 0, !dbg !443
  %lnot.ext = zext i1 %lnot to i32, !dbg !443
  %add.ptr47.sum3031 = add i64 %indvars.iv3401, %idx.ext46, !dbg !443
  %arrayidx71 = getelementptr inbounds i32* %3, i64 %add.ptr47.sum3031, !dbg !443
  store i32 %lnot.ext, i32* %arrayidx71, align 4, !dbg !443, !tbaa !407
  %indvars.iv.next3402 = add i64 %indvars.iv3401, 1, !dbg !437
  %7 = trunc i64 %indvars.iv.next3402 to i32, !dbg !437
  %cmp64 = icmp slt i32 %7, %2, !dbg !437
  br i1 %cmp64, label %for.body66, label %if.end87, !dbg !437

for.body80:                                       ; preds = %for.cond76.preheader, %for.body80
  %indvars.iv3403 = phi i64 [ %indvars.iv.next3404, %for.body80 ], [ 0, %for.cond76.preheader ]
  %add.ptr47.sum3030 = add i64 %indvars.iv3403, %idx.ext46, !dbg !445
  %arrayidx82 = getelementptr inbounds i32* %3, i64 %add.ptr47.sum3030, !dbg !445
  store i32 1, i32* %arrayidx82, align 4, !dbg !445, !tbaa !407
  %indvars.iv.next3404 = add i64 %indvars.iv3403, 1, !dbg !440
  %8 = trunc i64 %indvars.iv.next3404 to i32, !dbg !440
  %cmp78 = icmp slt i32 %8, %2, !dbg !440
  br i1 %cmp78, label %for.body80, label %if.end87, !dbg !440

if.end87:                                         ; preds = %for.cond76.preheader, %for.body80, %for.cond62.preheader, %for.body66, %if.then54
  %call88 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8, !dbg !447
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call88}, i64 0, metadata !94), !dbg !447
  %idxprom89 = sext i32 %vtimelvl to i64, !dbg !448
  %idxprom90 = sext i32 %vindex to i64, !dbg !448
  %variables = getelementptr inbounds %struct.PGH* %call88, i64 0, i32 7, !dbg !448
  %9 = load i8**** %variables, align 8, !dbg !448, !tbaa !421
  %arrayidx91 = getelementptr inbounds i8*** %9, i64 %idxprom90, !dbg !448
  %10 = load i8*** %arrayidx91, align 8, !dbg !448, !tbaa !421
  %arrayidx92 = getelementptr inbounds i8** %10, i64 %idxprom89, !dbg !448
  %11 = load i8** %arrayidx92, align 8, !dbg !448, !tbaa !421
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !449
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !449
  %12 = load i32* %dim, align 4, !dbg !449, !tbaa !407
  %cmp953241 = icmp sgt i32 %12, 0, !dbg !449
  br i1 %cmp953241, label %for.body97.lr.ph, label %for.end149, !dbg !449

for.body97.lr.ph:                                 ; preds = %if.end87
  %extras = getelementptr inbounds i8* %11, i64 56, !dbg !451
  %13 = bitcast i8* %extras to %struct.PGExtras**, !dbg !451
  br label %for.body97, !dbg !449

for.body97:                                       ; preds = %for.body97.lr.ph, %for.inc147
  %indvars.iv3399 = phi i64 [ 0, %for.body97.lr.ph ], [ %indvars.iv.next3400, %for.inc147 ]
  %hdim.addr.03243 = phi i32 [ 0, %for.body97.lr.ph ], [ %hdim.addr.1, %for.inc147 ]
  %add.ptr47.sum3025 = add i64 %indvars.iv3399, %idx.ext46, !dbg !454
  %arrayidx99 = getelementptr inbounds i32* %3, i64 %add.ptr47.sum3025, !dbg !454
  %14 = load i32* %arrayidx99, align 4, !dbg !454, !tbaa !407
  %tobool100 = icmp eq i32 %14, 0, !dbg !454
  br i1 %tobool100, label %if.else138, label %if.then101, !dbg !454

if.then101:                                       ; preds = %for.body97
  %idxprom102 = sext i32 %hdim.addr.03243 to i64, !dbg !451
  %arrayidx103 = getelementptr inbounds i32* %extents, i64 %idxprom102, !dbg !451
  %15 = load i32* %arrayidx103, align 4, !dbg !451, !tbaa !407
  %cmp104 = icmp sgt i32 %15, 0, !dbg !451
  br i1 %cmp104, label %cond.true, label %cond.false124, !dbg !451

cond.true:                                        ; preds = %if.then101
  %arrayidx107 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv3399, !dbg !451
  %16 = load i32* %arrayidx107, align 4, !dbg !451, !tbaa !407
  %add = add nsw i32 %16, %15, !dbg !451
  %17 = load %struct.PGExtras** %13, align 8, !dbg !451, !tbaa !421
  %nsize = getelementptr inbounds %struct.PGExtras* %17, i64 0, i32 1, !dbg !451
  %18 = load i32** %nsize, align 8, !dbg !451, !tbaa !421
  %arrayidx111 = getelementptr inbounds i32* %18, i64 %indvars.iv3399, !dbg !451
  %19 = load i32* %arrayidx111, align 4, !dbg !451, !tbaa !407
  %cmp112 = icmp slt i32 %add, %19, !dbg !451
  %add. = select i1 %cmp112, i32 %add, i32 %19, !dbg !451
  br label %cond.end129, !dbg !451

cond.false124:                                    ; preds = %if.then101
  %20 = load %struct.PGExtras** %13, align 8, !dbg !451, !tbaa !421
  %nsize127 = getelementptr inbounds %struct.PGExtras* %20, i64 0, i32 1, !dbg !451
  %21 = load i32** %nsize127, align 8, !dbg !451, !tbaa !421
  %arrayidx128 = getelementptr inbounds i32* %21, i64 %indvars.iv3399, !dbg !451
  %22 = load i32* %arrayidx128, align 4, !dbg !451, !tbaa !407
  br label %cond.end129, !dbg !451

cond.end129:                                      ; preds = %cond.true, %cond.false124
  %cond130 = phi i32 [ %22, %cond.false124 ], [ %add., %cond.true ], !dbg !451
  %add.ptr39.sum3028 = add i64 %indvars.iv3399, %idx.ext38, !dbg !451
  %arrayidx132 = getelementptr inbounds i32* %3, i64 %add.ptr39.sum3028, !dbg !451
  store i32 %cond130, i32* %arrayidx132, align 4, !dbg !451, !tbaa !407
  %arrayidx134 = getelementptr inbounds i32* %downsample_, i64 %idxprom102, !dbg !455
  %23 = load i32* %arrayidx134, align 4, !dbg !455, !tbaa !407
  %add.ptr43.sum3029 = add i64 %indvars.iv3399, %idx.ext42, !dbg !455
  %arrayidx136 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3029, !dbg !455
  store i32 %23, i32* %arrayidx136, align 4, !dbg !455, !tbaa !407
  %inc137 = add nsw i32 %hdim.addr.03243, 1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %inc137}, i64 0, metadata !59), !dbg !456
  br label %for.inc147, !dbg !457

if.else138:                                       ; preds = %for.body97
  %arrayidx140 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv3399, !dbg !458
  %24 = load i32* %arrayidx140, align 4, !dbg !458, !tbaa !407
  %add141 = add nsw i32 %24, 1, !dbg !458
  %add.ptr39.sum3026 = add i64 %indvars.iv3399, %idx.ext38, !dbg !458
  %arrayidx143 = getelementptr inbounds i32* %3, i64 %add.ptr39.sum3026, !dbg !458
  store i32 %add141, i32* %arrayidx143, align 4, !dbg !458, !tbaa !407
  %add.ptr43.sum3027 = add i64 %indvars.iv3399, %idx.ext42, !dbg !460
  %arrayidx145 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3027, !dbg !460
  store i32 1, i32* %arrayidx145, align 4, !dbg !460, !tbaa !407
  br label %for.inc147

for.inc147:                                       ; preds = %cond.end129, %if.else138
  %hdim.addr.1 = phi i32 [ %inc137, %cond.end129 ], [ %hdim.addr.03243, %if.else138 ]
  %indvars.iv.next3400 = add i64 %indvars.iv3399, 1, !dbg !449
  %25 = trunc i64 %indvars.iv.next3400 to i32, !dbg !449
  %cmp95 = icmp slt i32 %25, %12, !dbg !449
  br i1 %cmp95, label %for.body97, label %for.end149, !dbg !449

for.end149:                                       ; preds = %for.inc147, %if.end87
  %26 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !461, !tbaa !421
  %call150 = call i32 %26(%struct.cGH* %GH) #8, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %call150}, i64 0, metadata !77), !dbg !461
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !462
  %27 = load i32* %dim, align 4, !dbg !462, !tbaa !407
  %cmp1533239 = icmp sgt i32 %27, 0, !dbg !462
  br i1 %cmp1533239, label %for.body155.lr.ph, label %if.then451, !dbg !462

for.body155.lr.ph:                                ; preds = %for.end149
  %stagtype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !463
  %idxprom160 = sext i32 %call150 to i64, !dbg !464
  %extras161 = getelementptr inbounds i8* %11, i64 56, !dbg !464
  %28 = bitcast i8* %extras161 to %struct.PGExtras**, !dbg !464
  br label %for.body155, !dbg !462

for.cond255.preheader:                            ; preds = %for.inc252
  %cmp2573233 = icmp sgt i32 %43, 0, !dbg !465
  br i1 %cmp2573233, label %for.body259.lr.ph, label %if.then451, !dbg !465

for.body259.lr.ph:                                ; preds = %for.cond255.preheader
  %stagtype260 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3, !dbg !467
  %idxprom269 = sext i32 %call150 to i64, !dbg !469
  %extras270 = getelementptr inbounds i8* %11, i64 56, !dbg !469
  %29 = bitcast i8* %extras270 to %struct.PGExtras**, !dbg !469
  %connectivity = getelementptr inbounds i8* %11, i64 64, !dbg !470
  %30 = bitcast i8* %connectivity to %struct.PConnectivity**, !dbg !470
  br label %for.body259, !dbg !465

for.body155:                                      ; preds = %for.body155.lr.ph, %for.inc252
  %indvars.iv3397 = phi i64 [ 0, %for.body155.lr.ph ], [ %indvars.iv.next3398, %for.inc252 ]
  %31 = load i32* %stagtype, align 4, !dbg !463, !tbaa !407
  %32 = trunc i64 %indvars.iv3397 to i32, !dbg !463
  %call156 = call i32 @CCTK_StaggerDirIndex(i32 %32, i32 %31) #8, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %call156}, i64 0, metadata !76), !dbg !463
  %arrayidx158 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv3397, !dbg !464
  %33 = load i32* %arrayidx158, align 4, !dbg !464, !tbaa !407
  %34 = load %struct.PGExtras** %28, align 8, !dbg !464, !tbaa !421
  %lb = getelementptr inbounds %struct.PGExtras* %34, i64 0, i32 3, !dbg !464
  %35 = load i32*** %lb, align 8, !dbg !464, !tbaa !421
  %arrayidx162 = getelementptr inbounds i32** %35, i64 %idxprom160, !dbg !464
  %36 = load i32** %arrayidx162, align 8, !dbg !464, !tbaa !421
  %arrayidx163 = getelementptr inbounds i32* %36, i64 %indvars.iv3397, !dbg !464
  %37 = load i32* %arrayidx163, align 4, !dbg !464, !tbaa !407
  %idxprom165 = sext i32 %call156 to i64, !dbg !464
  %arrayidx168 = getelementptr inbounds %struct.PGExtras* %34, i64 0, i32 13, i64 %idxprom165, i64 1, !dbg !464
  %38 = load i32** %arrayidx168, align 8, !dbg !464, !tbaa !421
  %arrayidx169 = getelementptr inbounds i32* %38, i64 %indvars.iv3397, !dbg !464
  %39 = load i32* %arrayidx169, align 4, !dbg !464, !tbaa !407
  %add170 = add nsw i32 %39, %37, !dbg !464
  %cmp171 = icmp slt i32 %33, %add170, !dbg !464
  br i1 %cmp171, label %if.then173, label %if.else248, !dbg !464

if.then173:                                       ; preds = %for.body155
  %arrayidx187 = getelementptr inbounds %struct.PGExtras* %34, i64 0, i32 13, i64 %idxprom165, i64 0, !dbg !472
  %40 = load i32** %arrayidx187, align 8, !dbg !472, !tbaa !421
  %arrayidx188 = getelementptr inbounds i32* %40, i64 %indvars.iv3397, !dbg !472
  %41 = load i32* %arrayidx188, align 4, !dbg !472, !tbaa !407
  %add189 = add nsw i32 %41, %37, !dbg !472
  %cmp190 = icmp slt i32 %33, %add189, !dbg !472
  br i1 %cmp190, label %if.then192, label %if.else242, !dbg !472

if.then192:                                       ; preds = %if.then173
  %sub = sub nsw i32 %add189, %33, !dbg !473
  %add.ptr43.sum3023 = add i64 %indvars.iv3397, %idx.ext42, !dbg !473
  %arrayidx210 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3023, !dbg !473
  %42 = load i32* %arrayidx210, align 4, !dbg !473, !tbaa !407
  %div = sdiv i32 %sub, %42, !dbg !473
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !198), !dbg !473
  %rem = srem i32 %sub, %42, !dbg !474
  %not.tobool230 = icmp ne i32 %rem, 0, !dbg !474
  %inc232 = zext i1 %not.tobool230 to i32, !dbg !474
  %div.inc232 = add nsw i32 %inc232, %div, !dbg !474
  %mul238 = mul nsw i32 %div.inc232, %42, !dbg !475
  %add239 = add nsw i32 %mul238, %33, !dbg !475
  %add.ptr35.sum3024 = add i64 %indvars.iv3397, %idx.ext34, !dbg !475
  %arrayidx241 = getelementptr inbounds i32* %3, i64 %add.ptr35.sum3024, !dbg !475
  store i32 %add239, i32* %arrayidx241, align 4, !dbg !475, !tbaa !407
  br label %for.inc252, !dbg !476

if.else242:                                       ; preds = %if.then173
  %add.ptr35.sum3022 = add i64 %indvars.iv3397, %idx.ext34, !dbg !477
  %arrayidx246 = getelementptr inbounds i32* %3, i64 %add.ptr35.sum3022, !dbg !477
  store i32 %33, i32* %arrayidx246, align 4, !dbg !477, !tbaa !407
  br label %for.inc252

if.else248:                                       ; preds = %for.body155
  %add.ptr35.sum3021 = add i64 %indvars.iv3397, %idx.ext34, !dbg !479
  %arrayidx250 = getelementptr inbounds i32* %3, i64 %add.ptr35.sum3021, !dbg !479
  store i32 -1, i32* %arrayidx250, align 4, !dbg !479, !tbaa !407
  br label %for.inc252

for.inc252:                                       ; preds = %if.else248, %if.else242, %if.then192
  %indvars.iv.next3398 = add i64 %indvars.iv3397, 1, !dbg !462
  %43 = load i32* %dim, align 4, !dbg !462, !tbaa !407
  %44 = trunc i64 %indvars.iv.next3398 to i32, !dbg !462
  %cmp153 = icmp slt i32 %44, %43, !dbg !462
  br i1 %cmp153, label %for.body155, label %for.cond255.preheader, !dbg !462

for.body259:                                      ; preds = %for.body259.lr.ph, %for.inc446
  %indvars.iv3395 = phi i64 [ 0, %for.body259.lr.ph ], [ %indvars.iv.next3396, %for.inc446 ]
  %hdim.addr.23236 = phi i32 [ 0, %for.body259.lr.ph ], [ %hdim.addr.3, %for.inc446 ]
  %totals.13234 = phi i32 [ 1, %for.body259.lr.ph ], [ %totals.3, %for.inc446 ]
  %45 = load i32* %stagtype260, align 4, !dbg !467, !tbaa !407
  %46 = trunc i64 %indvars.iv3395 to i32, !dbg !467
  %call261 = call i32 @CCTK_StaggerDirIndex(i32 %46, i32 %45) #8, !dbg !467
  call void @llvm.dbg.value(metadata !{i32 %call261}, i64 0, metadata !76), !dbg !467
  %add.ptr35.sum3010 = add i64 %indvars.iv3395, %idx.ext34, !dbg !469
  %arrayidx263 = getelementptr inbounds i32* %3, i64 %add.ptr35.sum3010, !dbg !469
  %47 = load i32* %arrayidx263, align 4, !dbg !469, !tbaa !407
  %cmp264 = icmp sgt i32 %47, -1, !dbg !469
  %48 = load %struct.PGExtras** %29, align 8, !dbg !469, !tbaa !421
  %lb271 = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 3, !dbg !469
  %49 = load i32*** %lb271, align 8, !dbg !469, !tbaa !421
  %arrayidx272 = getelementptr inbounds i32** %49, i64 %idxprom269, !dbg !469
  %50 = load i32** %arrayidx272, align 8, !dbg !469, !tbaa !421
  br i1 %cmp264, label %land.lhs.true, label %for.body259.if.else296_crit_edge, !dbg !469

for.body259.if.else296_crit_edge:                 ; preds = %for.body259
  %idxprom309.pre.pre = sext i32 %call261 to i64, !dbg !481
  br label %if.else296, !dbg !469

land.lhs.true:                                    ; preds = %for.body259
  %arrayidx273 = getelementptr inbounds i32* %50, i64 %indvars.iv3395, !dbg !469
  %51 = load i32* %arrayidx273, align 4, !dbg !469, !tbaa !407
  %idxprom275 = sext i32 %call261 to i64, !dbg !469
  %arrayidx279 = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 13, i64 %idxprom275, i64 1, !dbg !469
  %52 = load i32** %arrayidx279, align 8, !dbg !469, !tbaa !421
  %arrayidx280 = getelementptr inbounds i32* %52, i64 %indvars.iv3395, !dbg !469
  %53 = load i32* %arrayidx280, align 4, !dbg !469, !tbaa !407
  %add281 = add nsw i32 %53, %51, !dbg !469
  %cmp282 = icmp slt i32 %47, %add281, !dbg !469
  br i1 %cmp282, label %if.then284, label %if.else296, !dbg !469

if.then284:                                       ; preds = %land.lhs.true
  %sub293 = sub nsw i32 %47, %51, !dbg !482
  %add.ptr.sum3020 = add i64 %indvars.iv3395, %idx.ext, !dbg !482
  %arrayidx295 = getelementptr inbounds i32* %3, i64 %add.ptr.sum3020, !dbg !482
  store i32 %sub293, i32* %arrayidx295, align 4, !dbg !482, !tbaa !407
  br label %if.end299, !dbg !484

if.else296:                                       ; preds = %for.body259.if.else296_crit_edge, %land.lhs.true
  %idxprom309.pre.pre-phi = phi i64 [ %idxprom309.pre.pre, %for.body259.if.else296_crit_edge ], [ %idxprom275, %land.lhs.true ], !dbg !481
  %add.ptr.sum3011 = add i64 %indvars.iv3395, %idx.ext, !dbg !485
  %arrayidx298 = getelementptr inbounds i32* %3, i64 %add.ptr.sum3011, !dbg !485
  store i32 -1, i32* %arrayidx298, align 4, !dbg !485, !tbaa !407
  br label %if.end299

if.end299:                                        ; preds = %if.else296, %if.then284
  %idxprom309.pre-phi = phi i64 [ %idxprom309.pre.pre-phi, %if.else296 ], [ %idxprom275, %if.then284 ], !dbg !481
  %add.ptr39.sum = add i64 %indvars.iv3395, %idx.ext38, !dbg !481
  %arrayidx301 = getelementptr inbounds i32* %3, i64 %add.ptr39.sum, !dbg !481
  %54 = load i32* %arrayidx301, align 4, !dbg !481, !tbaa !407
  %arrayidx307 = getelementptr inbounds i32* %50, i64 %indvars.iv3395, !dbg !481
  %55 = load i32* %arrayidx307, align 4, !dbg !481, !tbaa !407
  %arrayidx313 = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 13, i64 %idxprom309.pre-phi, i64 0, !dbg !481
  %56 = load i32** %arrayidx313, align 8, !dbg !481, !tbaa !421
  %arrayidx314 = getelementptr inbounds i32* %56, i64 %indvars.iv3395, !dbg !481
  %57 = load i32* %arrayidx314, align 4, !dbg !481, !tbaa !407
  %add315 = add nsw i32 %57, %55, !dbg !481
  %cmp316 = icmp sgt i32 %54, %add315, !dbg !481
  br i1 %cmp316, label %if.then318, label %if.else359, !dbg !481

if.then318:                                       ; preds = %if.end299
  %arrayidx324 = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 13, i64 %idxprom309.pre-phi, i64 1, !dbg !487
  %58 = load i32** %arrayidx324, align 8, !dbg !487, !tbaa !421
  %arrayidx325 = getelementptr inbounds i32* %58, i64 %indvars.iv3395, !dbg !487
  %59 = load i32* %arrayidx325, align 4, !dbg !487, !tbaa !407
  %sub334 = sub nsw i32 %54, %55, !dbg !487
  %cmp335 = icmp slt i32 %59, %sub334, !dbg !487
  %.sub334 = select i1 %cmp335, i32 %59, i32 %sub334, !dbg !487
  %add.ptr31.sum3019 = add i64 %indvars.iv3395, %idx.ext30, !dbg !487
  %arrayidx358 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum3019, !dbg !487
  store i32 %.sub334, i32* %arrayidx358, align 4, !dbg !487, !tbaa !407
  br label %if.end362, !dbg !489

if.else359:                                       ; preds = %if.end299
  %add.ptr31.sum3012 = add i64 %indvars.iv3395, %idx.ext30, !dbg !490
  %arrayidx361 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum3012, !dbg !490
  store i32 -1, i32* %arrayidx361, align 4, !dbg !490, !tbaa !407
  br label %if.end362

if.end362:                                        ; preds = %if.else359, %if.then318
  %add.ptr31.sum3013 = add i64 %indvars.iv3395, %idx.ext30, !dbg !492
  %arrayidx364 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum3013, !dbg !492
  %60 = load i32* %arrayidx364, align 4, !dbg !492, !tbaa !407
  %cmp365 = icmp slt i32 %60, 0, !dbg !492
  %add.ptr.sum3018.pre = add i64 %indvars.iv3395, %idx.ext, !dbg !493
  %arrayidx373.pre = getelementptr inbounds i32* %3, i64 %add.ptr.sum3018.pre, !dbg !493
  br i1 %cmp365, label %if.then371, label %lor.lhs.false, !dbg !492

lor.lhs.false:                                    ; preds = %if.end362
  %61 = load i32* %arrayidx373.pre, align 4, !dbg !492, !tbaa !407
  %cmp369 = icmp slt i32 %61, 0, !dbg !492
  br i1 %cmp369, label %if.then371, label %if.end376, !dbg !492

if.then371:                                       ; preds = %if.end362, %lor.lhs.false
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !495
  %62 = load i32* %arrayidx373.pre, align 4, !dbg !493, !tbaa !407
  store i32 %62, i32* %arrayidx364, align 4, !dbg !493, !tbaa !407
  br label %if.end376, !dbg !496

if.end376:                                        ; preds = %if.then371, %lor.lhs.false
  %63 = phi i32 [ %62, %if.then371 ], [ %60, %lor.lhs.false ]
  %totals.2 = phi i32 [ 0, %if.then371 ], [ %totals.13234, %lor.lhs.false ]
  %add.ptr47.sum3015 = add i64 %indvars.iv3395, %idx.ext46, !dbg !497
  %arrayidx378 = getelementptr inbounds i32* %3, i64 %add.ptr47.sum3015, !dbg !497
  %64 = load i32* %arrayidx378, align 4, !dbg !497, !tbaa !407
  %tobool379 = icmp eq i32 %64, 0, !dbg !497
  br i1 %tobool379, label %for.inc446, label %if.then380, !dbg !497

if.then380:                                       ; preds = %if.end376
  %65 = load i32* %arrayidx301, align 4, !dbg !498, !tbaa !407
  %arrayidx384 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv3395, !dbg !498
  %66 = load i32* %arrayidx384, align 4, !dbg !498, !tbaa !407
  %sub385 = sub nsw i32 %65, %66, !dbg !498
  %add.ptr43.sum3016 = add i64 %indvars.iv3395, %idx.ext42, !dbg !498
  %arrayidx387 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3016, !dbg !498
  %67 = load i32* %arrayidx387, align 4, !dbg !498, !tbaa !407
  %div388 = sdiv i32 %sub385, %67, !dbg !498
  %idxprom389 = sext i32 %hdim.addr.23236 to i64, !dbg !498
  %arrayidx390 = getelementptr inbounds i32* %hsize_global, i64 %idxprom389, !dbg !498
  store i32 %div388, i32* %arrayidx390, align 4, !dbg !498, !tbaa !407
  %68 = load i32* %arrayidx384, align 4, !dbg !499, !tbaa !407
  %sub395 = sub nsw i32 %65, %68, !dbg !499
  %rem398 = srem i32 %sub395, %67, !dbg !499
  %tobool399 = icmp eq i32 %rem398, 0, !dbg !499
  br i1 %tobool399, label %if.end404, label %if.then400, !dbg !499

if.then400:                                       ; preds = %if.then380
  %inc403 = add nsw i32 %div388, 1, !dbg !500
  store i32 %inc403, i32* %arrayidx390, align 4, !dbg !500, !tbaa !407
  br label %if.end404, !dbg !502

if.end404:                                        ; preds = %if.then380, %if.then400
  %69 = phi i32 [ %div388, %if.then380 ], [ %inc403, %if.then400 ]
  %70 = load %struct.PConnectivity** %30, align 8, !dbg !470, !tbaa !421
  %perme = getelementptr inbounds %struct.PConnectivity* %70, i64 0, i32 3, !dbg !470
  %71 = load i32** %perme, align 8, !dbg !470, !tbaa !421
  %arrayidx406 = getelementptr inbounds i32* %71, i64 %indvars.iv3395, !dbg !470
  %72 = load i32* %arrayidx406, align 4, !dbg !470, !tbaa !407
  %tobool407 = icmp eq i32 %72, 0, !dbg !470
  br i1 %tobool407, label %if.end416, label %if.then408, !dbg !470

if.then408:                                       ; preds = %if.end404
  %nghostzones = getelementptr inbounds %struct.PGExtras* %48, i64 0, i32 12, !dbg !503
  %73 = load i32** %nghostzones, align 8, !dbg !503, !tbaa !421
  %arrayidx411 = getelementptr inbounds i32* %73, i64 %indvars.iv3395, !dbg !503
  %74 = load i32* %arrayidx411, align 4, !dbg !503, !tbaa !407
  %mul412 = shl nsw i32 %74, 1, !dbg !503
  %sub415 = sub nsw i32 %69, %mul412, !dbg !503
  store i32 %sub415, i32* %arrayidx390, align 4, !dbg !503, !tbaa !407
  br label %if.end416, !dbg !505

if.end416:                                        ; preds = %if.end404, %if.then408
  %add.ptr.sum3017 = add i64 %indvars.iv3395, %idx.ext, !dbg !506
  %arrayidx420 = getelementptr inbounds i32* %3, i64 %add.ptr.sum3017, !dbg !506
  %75 = load i32* %arrayidx420, align 4, !dbg !506, !tbaa !407
  %sub421 = sub nsw i32 %63, %75, !dbg !506
  %div424 = sdiv i32 %sub421, %67, !dbg !506
  %arrayidx426 = getelementptr inbounds i32* %hsize, i64 %idxprom389, !dbg !506
  %rem434 = srem i32 %sub421, %67, !dbg !507
  %tobool435 = icmp eq i32 %rem434, 0, !dbg !507
  %inc439 = add nsw i32 %div424, 1, !dbg !508
  %div424.inc439 = select i1 %tobool435, i32 %div424, i32 %inc439, !dbg !507
  %div424.inc4393436 = select i1 %tobool435, i32 %div424, i32 %inc439, !dbg !507
  store i32 %div424.inc439, i32* %arrayidx426, align 4, !dbg !506, !tbaa !407
  %mul443 = mul nsw i32 %div424.inc4393436, %totals.2, !dbg !510
  call void @llvm.dbg.value(metadata !{i32 %mul443}, i64 0, metadata !92), !dbg !510
  %inc444 = add nsw i32 %hdim.addr.23236, 1, !dbg !511
  call void @llvm.dbg.value(metadata !{i32 %inc444}, i64 0, metadata !59), !dbg !511
  br label %for.inc446, !dbg !512

for.inc446:                                       ; preds = %if.end376, %if.end416
  %totals.3 = phi i32 [ %mul443, %if.end416 ], [ %totals.2, %if.end376 ]
  %hdim.addr.3 = phi i32 [ %inc444, %if.end416 ], [ %hdim.addr.23236, %if.end376 ]
  %indvars.iv.next3396 = add i64 %indvars.iv3395, 1, !dbg !465
  %76 = load i32* %dim, align 4, !dbg !465, !tbaa !407
  %77 = trunc i64 %indvars.iv.next3396 to i32, !dbg !465
  %cmp257 = icmp slt i32 %77, %76, !dbg !465
  br i1 %cmp257, label %for.body259, label %for.end448, !dbg !465

for.end448:                                       ; preds = %for.inc446
  %cmp449 = icmp sgt i32 %totals.3, 0, !dbg !513
  br i1 %cmp449, label %if.then451, label %if.else2017, !dbg !513

if.then451:                                       ; preds = %for.end149, %for.cond255.preheader, %for.end448
  %totals.1.lcssa3422 = phi i32 [ %totals.3, %for.end448 ], [ 1, %for.cond255.preheader ], [ 1, %for.end149 ]
  %call452 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %vtimelvl, i32 %vindex) #8, !dbg !514
  call void @llvm.dbg.value(metadata !{i8* %call452}, i64 0, metadata !203), !dbg !514
  %tobool453 = icmp eq i32* %hoffset_global, null, !dbg !515
  br i1 %tobool453, label %if.end493, label %for.cond455.preheader, !dbg !515

for.cond455.preheader:                            ; preds = %if.then451
  %78 = load i32* %dim, align 4, !dbg !516, !tbaa !407
  %cmp4573230 = icmp sgt i32 %78, 0, !dbg !516
  br i1 %cmp4573230, label %for.body459.lr.ph, label %if.end493, !dbg !516

for.body459.lr.ph:                                ; preds = %for.cond455.preheader
  %connectivity475 = getelementptr inbounds i8* %11, i64 64, !dbg !519
  %79 = bitcast i8* %connectivity475 to %struct.PConnectivity**, !dbg !519
  %extras481 = getelementptr inbounds i8* %11, i64 56, !dbg !522
  %80 = bitcast i8* %extras481 to %struct.PGExtras**, !dbg !522
  br label %for.body459, !dbg !516

for.body459:                                      ; preds = %for.body459.lr.ph, %for.inc490
  %indvars.iv3393 = phi i64 [ 0, %for.body459.lr.ph ], [ %indvars.iv.next3394, %for.inc490 ]
  %hdim.addr.43232 = phi i32 [ 0, %for.body459.lr.ph ], [ %hdim.addr.5, %for.inc490 ]
  %add.ptr47.sum = add i64 %indvars.iv3393, %idx.ext46, !dbg !524
  %arrayidx461 = getelementptr inbounds i32* %3, i64 %add.ptr47.sum, !dbg !524
  %81 = load i32* %arrayidx461, align 4, !dbg !524, !tbaa !407
  %tobool462 = icmp eq i32 %81, 0, !dbg !524
  br i1 %tobool462, label %for.inc490, label %if.then463, !dbg !524

if.then463:                                       ; preds = %for.body459
  %add.ptr35.sum = add i64 %indvars.iv3393, %idx.ext34, !dbg !525
  %arrayidx465 = getelementptr inbounds i32* %3, i64 %add.ptr35.sum, !dbg !525
  %82 = load i32* %arrayidx465, align 4, !dbg !525, !tbaa !407
  %arrayidx467 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv3393, !dbg !525
  %83 = load i32* %arrayidx467, align 4, !dbg !525, !tbaa !407
  %sub468 = sub nsw i32 %82, %83, !dbg !525
  %add.ptr43.sum3009 = add i64 %indvars.iv3393, %idx.ext42, !dbg !525
  %arrayidx470 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3009, !dbg !525
  %84 = load i32* %arrayidx470, align 4, !dbg !525, !tbaa !407
  %div471 = sdiv i32 %sub468, %84, !dbg !525
  %idxprom472 = sext i32 %hdim.addr.43232 to i64, !dbg !525
  %arrayidx473 = getelementptr inbounds i32* %hoffset_global, i64 %idxprom472, !dbg !525
  store i32 %div471, i32* %arrayidx473, align 4, !dbg !525, !tbaa !407
  %85 = load %struct.PConnectivity** %79, align 8, !dbg !519, !tbaa !421
  %perme476 = getelementptr inbounds %struct.PConnectivity* %85, i64 0, i32 3, !dbg !519
  %86 = load i32** %perme476, align 8, !dbg !519, !tbaa !421
  %arrayidx477 = getelementptr inbounds i32* %86, i64 %indvars.iv3393, !dbg !519
  %87 = load i32* %arrayidx477, align 4, !dbg !519, !tbaa !407
  %tobool478 = icmp eq i32 %87, 0, !dbg !519
  br i1 %tobool478, label %if.end487, label %if.then479, !dbg !519

if.then479:                                       ; preds = %if.then463
  %88 = load %struct.PGExtras** %80, align 8, !dbg !522, !tbaa !421
  %nghostzones482 = getelementptr inbounds %struct.PGExtras* %88, i64 0, i32 12, !dbg !522
  %89 = load i32** %nghostzones482, align 8, !dbg !522, !tbaa !421
  %arrayidx483 = getelementptr inbounds i32* %89, i64 %indvars.iv3393, !dbg !522
  %90 = load i32* %arrayidx483, align 4, !dbg !522, !tbaa !407
  %sub486 = sub nsw i32 %div471, %90, !dbg !522
  store i32 %sub486, i32* %arrayidx473, align 4, !dbg !522, !tbaa !407
  br label %if.end487, !dbg !526

if.end487:                                        ; preds = %if.then463, %if.then479
  %inc488 = add nsw i32 %hdim.addr.43232, 1, !dbg !527
  call void @llvm.dbg.value(metadata !{i32 %inc488}, i64 0, metadata !59), !dbg !527
  br label %for.inc490, !dbg !528

for.inc490:                                       ; preds = %for.body459, %if.end487
  %hdim.addr.5 = phi i32 [ %inc488, %if.end487 ], [ %hdim.addr.43232, %for.body459 ]
  %indvars.iv.next3394 = add i64 %indvars.iv3393, 1, !dbg !516
  %91 = trunc i64 %indvars.iv.next3394 to i32, !dbg !516
  %cmp457 = icmp slt i32 %91, %78, !dbg !516
  br i1 %cmp457, label %for.body459, label %if.end493, !dbg !516

if.end493:                                        ; preds = %for.cond455.preheader, %for.inc490, %if.then451
  %vartype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1, !dbg !529
  %92 = load i32* %vartype, align 4, !dbg !529, !tbaa !407
  %call494 = call i32 @CCTK_VarTypeSize(i32 %92) #8, !dbg !529
  %mul495 = mul nsw i32 %call494, %totals.1.lcssa3422, !dbg !529
  %conv496 = sext i32 %mul495 to i64, !dbg !529
  %call497 = call noalias i8* @malloc(i64 %conv496) #8, !dbg !529
  store i8* %call497, i8** %hdata, align 8, !dbg !529, !tbaa !421
  store i32 1, i32* %add.ptr51, align 4, !dbg !530, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !91), !dbg !532
  %93 = load i32* %dim, align 4, !dbg !532, !tbaa !407
  %cmp5013227 = icmp sgt i32 %93, 1, !dbg !532
  br i1 %cmp5013227, label %for.body503.lr.ph, label %for.end516, !dbg !532

for.body503.lr.ph:                                ; preds = %if.end493
  %extras509 = getelementptr inbounds i8* %11, i64 56, !dbg !534
  %94 = bitcast i8* %extras509 to %struct.PGExtras**, !dbg !534
  %95 = load %struct.PGExtras** %94, align 8, !dbg !534, !tbaa !421
  %lnsize = getelementptr inbounds %struct.PGExtras* %95, i64 0, i32 6, !dbg !534
  %96 = load i32** %lnsize, align 8, !dbg !534, !tbaa !421
  br label %for.body503, !dbg !532

for.body503:                                      ; preds = %for.body503.lr.ph, %for.body503
  %indvars.iv3390 = phi i64 [ 1, %for.body503.lr.ph ], [ %indvars.iv.next3391, %for.body503 ]
  %97 = add nsw i64 %indvars.iv3390, -1, !dbg !534
  %add.ptr51.sum3007 = add i64 %97, %idx.ext50, !dbg !534
  %arrayidx506 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum3007, !dbg !534
  %98 = load i32* %arrayidx506, align 4, !dbg !534, !tbaa !407
  %arrayidx510 = getelementptr inbounds i32* %96, i64 %97, !dbg !534
  %99 = load i32* %arrayidx510, align 4, !dbg !534, !tbaa !407
  %mul511 = mul nsw i32 %99, %98, !dbg !534
  %add.ptr51.sum3008 = add i64 %indvars.iv3390, %idx.ext50, !dbg !534
  %arrayidx513 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum3008, !dbg !534
  store i32 %mul511, i32* %arrayidx513, align 4, !dbg !534, !tbaa !407
  %indvars.iv.next3391 = add i64 %indvars.iv3390, 1, !dbg !532
  %100 = trunc i64 %indvars.iv.next3391 to i32, !dbg !532
  %cmp501 = icmp slt i32 %100, %93, !dbg !532
  br i1 %cmp501, label %for.body503, label %for.end516, !dbg !532

for.end516:                                       ; preds = %for.body503, %if.end493
  %101 = load i32* %vartype, align 4, !dbg !536, !tbaa !407
  switch i32 %101, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb624
    i32 6, label %sw.bb740
    i32 10, label %sw.bb856
    i32 3, label %sw.bb972
    i32 4, label %sw.bb1088
    i32 5, label %sw.bb1204
    i32 7, label %sw.bb1320
    i32 11, label %sw.bb1436
    i32 8, label %sw.bb1552
    i32 12, label %sw.bb1668
    i32 9, label %sw.bb1784
    i32 13, label %sw.bb1900
  ], !dbg !536

sw.bb:                                            ; preds = %for.end516
  call void @llvm.dbg.value(metadata !{i8* %call452}, i64 0, metadata !211), !dbg !537
  call void @llvm.dbg.value(metadata !{i8* %call497}, i64 0, metadata !215), !dbg !537
  %102 = bitcast i32* %add.ptr to i8*, !dbg !537
  %conv520 = sext i32 %93 to i64, !dbg !537
  %mul521 = shl nsw i64 %conv520, 2, !dbg !537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %102, i64 %mul521, i32 4, i1 false), !dbg !537
  %103 = load i32* %add.ptr31, align 4, !dbg !537, !tbaa !407
  %104 = load i32* %add.ptr, align 4, !dbg !537, !tbaa !407
  %sub524 = sub nsw i32 %103, %104, !dbg !537
  call void @llvm.dbg.value(metadata !{i32 %sub524}, i64 0, metadata !210), !dbg !537
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !208), !dbg !537
  %arrayidx530 = getelementptr inbounds i8* %call25, i64 4, !dbg !538
  %105 = bitcast i8* %arrayidx530 to i32*, !dbg !538
  %add.ptr31.sum30023003 = or i64 %idx.ext30, 1, !dbg !538
  %arrayidx532 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum30023003, !dbg !538
  %conv596 = sext i32 %sub524 to i64, !dbg !540
  %add.ptr43.sum3000 = add i64 %idx.ext42, 1, !dbg !542
  %arrayidx618 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3000, !dbg !542
  %cmp6023043 = icmp sgt i32 %sub524, 0, !dbg !544
  br label %while.body, !dbg !537

while.body:                                       ; preds = %sw.bb, %if.then616
  %106 = phi i32 [ %93, %sw.bb ], [ %124, %if.then616 ]
  %typed_hdata.0 = phi i8* [ %call497, %sw.bb ], [ %typed_hdata.2, %if.then616 ]
  %cmp526 = icmp sgt i32 %106, 1, !dbg !538
  br i1 %cmp526, label %land.lhs.true528, label %if.end574.thread3423, !dbg !538

if.end574.thread3423:                             ; preds = %while.body
  %107 = load i32* %3, align 4, !dbg !538, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !205), !dbg !547
  br label %for.end589, !dbg !547

land.lhs.true528:                                 ; preds = %while.body
  %108 = load i32* %105, align 4, !dbg !538, !tbaa !407
  %109 = load i32* %arrayidx532, align 4, !dbg !538, !tbaa !407
  %cmp533 = icmp slt i32 %108, %109, !dbg !538
  br i1 %cmp533, label %if.end574.thread, label %for.cond537.preheader, !dbg !538

if.end574.thread:                                 ; preds = %land.lhs.true528
  %110 = load i32* %3, align 4, !dbg !538, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !205), !dbg !547
  br label %for.body580, !dbg !547

for.cond537.preheader:                            ; preds = %land.lhs.true528
  %cmp5393034 = icmp sgt i32 %106, 2, !dbg !549
  br i1 %cmp5393034, label %for.body541, label %for.end557, !dbg !549

for.cond537:                                      ; preds = %for.body541
  %111 = trunc i64 %indvars.iv.next3257 to i32, !dbg !549
  %cmp539 = icmp slt i32 %111, %106, !dbg !549
  br i1 %cmp539, label %for.body541, label %for.end557, !dbg !549

for.body541:                                      ; preds = %for.cond537.preheader, %for.cond537
  %indvars.iv3256 = phi i64 [ %indvars.iv.next3257, %for.cond537 ], [ 2, %for.cond537.preheader ]
  %dim518.13035 = phi i32 [ %inc556, %for.cond537 ], [ 2, %for.cond537.preheader ]
  %add.ptr43.sum3005 = add i64 %indvars.iv3256, %idx.ext42, !dbg !552
  %arrayidx543 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum3005, !dbg !552
  %112 = load i32* %arrayidx543, align 4, !dbg !552, !tbaa !407
  %arrayidx545 = getelementptr inbounds i32* %3, i64 %indvars.iv3256, !dbg !552
  %113 = load i32* %arrayidx545, align 4, !dbg !552, !tbaa !407
  %add546 = add nsw i32 %113, %112, !dbg !552
  store i32 %add546, i32* %arrayidx545, align 4, !dbg !552, !tbaa !407
  %add.ptr31.sum3006 = add i64 %indvars.iv3256, %idx.ext30, !dbg !552
  %arrayidx550 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum3006, !dbg !552
  %114 = load i32* %arrayidx550, align 4, !dbg !552, !tbaa !407
  %cmp551 = icmp slt i32 %add546, %114, !dbg !552
  %indvars.iv.next3257 = add i64 %indvars.iv3256, 1, !dbg !549
  %inc556 = add nsw i32 %dim518.13035, 1, !dbg !549
  call void @llvm.dbg.value(metadata !{i32 %inc556}, i64 0, metadata !208), !dbg !549
  br i1 %cmp551, label %for.end557, label %for.cond537, !dbg !552

for.end557:                                       ; preds = %for.cond537, %for.body541, %for.cond537.preheader
  %dim518.1.lcssa = phi i32 [ 2, %for.cond537.preheader ], [ %dim518.13035, %for.body541 ], [ %inc556, %for.cond537 ]
  %cmp559 = icmp slt i32 %dim518.1.lcssa, %106, !dbg !554
  br i1 %cmp559, label %for.cond563.preheader, label %if.end2020, !dbg !554

for.cond563.preheader:                            ; preds = %for.end557
  %dim518.23036 = add i32 %dim518.1.lcssa, -1, !dbg !555
  %cmp5643037 = icmp sgt i32 %dim518.23036, 0, !dbg !555
  br i1 %cmp5643037, label %for.body566.lr.ph, label %if.end574, !dbg !555

for.body566.lr.ph:                                ; preds = %for.cond563.preheader
  %115 = sext i32 %dim518.23036 to i64
  br label %for.body566, !dbg !555

for.body566:                                      ; preds = %for.body566.lr.ph, %for.body566
  %indvars.iv3258 = phi i64 [ %115, %for.body566.lr.ph ], [ %indvars.iv.next3259, %for.body566 ]
  %dim518.23038 = phi i32 [ %dim518.23036, %for.body566.lr.ph ], [ %dim518.2, %for.body566 ]
  %add.ptr.sum3004 = add i64 %indvars.iv3258, %idx.ext, !dbg !557
  %arrayidx568 = getelementptr inbounds i32* %3, i64 %add.ptr.sum3004, !dbg !557
  %116 = load i32* %arrayidx568, align 4, !dbg !557, !tbaa !407
  %arrayidx570 = getelementptr inbounds i32* %3, i64 %indvars.iv3258, !dbg !557
  store i32 %116, i32* %arrayidx570, align 4, !dbg !557, !tbaa !407
  %dim518.2 = add nsw i32 %dim518.23038, -1, !dbg !555
  %cmp564 = icmp sgt i32 %dim518.2, 0, !dbg !555
  %indvars.iv.next3259 = add i64 %indvars.iv3258, -1, !dbg !555
  br i1 %cmp564, label %for.body566, label %if.end574, !dbg !555

if.end574:                                        ; preds = %for.cond563.preheader, %for.body566
  %117 = load i32* %3, align 4, !dbg !538, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !205), !dbg !547
  br i1 %cmp526, label %for.body580, label %for.end589, !dbg !547

for.body580:                                      ; preds = %if.end574, %if.end574.thread, %for.body580
  %indvars.iv3261 = phi i64 [ %indvars.iv.next3262, %for.body580 ], [ 1, %if.end574.thread ], [ 1, %if.end574 ]
  %idx.03040 = phi i32 [ %add586, %for.body580 ], [ %110, %if.end574.thread ], [ %117, %if.end574 ]
  %arrayidx582 = getelementptr inbounds i32* %3, i64 %indvars.iv3261, !dbg !559
  %118 = load i32* %arrayidx582, align 4, !dbg !559, !tbaa !407
  %add.ptr51.sum3001 = add i64 %indvars.iv3261, %idx.ext50, !dbg !559
  %arrayidx584 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum3001, !dbg !559
  %119 = load i32* %arrayidx584, align 4, !dbg !559, !tbaa !407
  %mul585 = mul nsw i32 %119, %118, !dbg !559
  %add586 = add nsw i32 %mul585, %idx.03040, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %add586}, i64 0, metadata !209), !dbg !559
  %indvars.iv.next3262 = add i64 %indvars.iv3261, 1, !dbg !547
  %120 = trunc i64 %indvars.iv.next3262 to i32, !dbg !547
  %cmp578 = icmp slt i32 %120, %106, !dbg !547
  br i1 %cmp578, label %for.body580, label %for.end589, !dbg !547

for.end589:                                       ; preds = %for.body580, %if.end574.thread3423, %if.end574
  %idx.0.lcssa = phi i32 [ %117, %if.end574 ], [ %107, %if.end574.thread3423 ], [ %add586, %for.body580 ]
  %121 = load i32* %add.ptr43, align 4, !dbg !538, !tbaa !407
  %cmp591 = icmp eq i32 %121, 1, !dbg !538
  br i1 %cmp591, label %if.then593, label %for.cond601.preheader, !dbg !538

for.cond601.preheader:                            ; preds = %for.end589
  br i1 %cmp6023043, label %for.body604, label %if.end612, !dbg !544

if.then593:                                       ; preds = %for.end589
  %idx.ext594 = sext i32 %idx.0.lcssa to i64, !dbg !540
  %add.ptr595 = getelementptr inbounds i8* %call452, i64 %idx.ext594, !dbg !540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %typed_hdata.0, i8* %add.ptr595, i64 %conv596, i32 1, i1 false), !dbg !540
  %add.ptr599 = getelementptr inbounds i8* %typed_hdata.0, i64 %conv596, !dbg !540
  call void @llvm.dbg.value(metadata !{i8* %add.ptr599}, i64 0, metadata !215), !dbg !540
  br label %if.end612, !dbg !540

for.body604:                                      ; preds = %for.cond601.preheader, %for.body604
  %i.13045 = phi i32 [ %add610, %for.body604 ], [ 0, %for.cond601.preheader ]
  %typed_hdata.13044 = phi i8* [ %incdec.ptr, %for.body604 ], [ %typed_hdata.0, %for.cond601.preheader ]
  %add605 = add nsw i32 %i.13045, %idx.0.lcssa, !dbg !561
  %idxprom606 = sext i32 %add605 to i64, !dbg !561
  %arrayidx607 = getelementptr inbounds i8* %call452, i64 %idxprom606, !dbg !561
  %122 = load i8* %arrayidx607, align 1, !dbg !561, !tbaa !408
  %incdec.ptr = getelementptr inbounds i8* %typed_hdata.13044, i64 1, !dbg !561
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !215), !dbg !561
  store i8 %122, i8* %typed_hdata.13044, align 1, !dbg !561, !tbaa !408
  %123 = load i32* %add.ptr43, align 4, !dbg !544, !tbaa !407
  %add610 = add nsw i32 %123, %i.13045, !dbg !544
  call void @llvm.dbg.value(metadata !{i32 %add610}, i64 0, metadata !205), !dbg !544
  %cmp602 = icmp slt i32 %add610, %sub524, !dbg !544
  br i1 %cmp602, label %for.body604, label %if.end612, !dbg !544

if.end612:                                        ; preds = %for.cond601.preheader, %for.body604, %if.then593
  %typed_hdata.2 = phi i8* [ %add.ptr599, %if.then593 ], [ %typed_hdata.0, %for.cond601.preheader ], [ %incdec.ptr, %for.body604 ]
  %124 = load i32* %dim, align 4, !dbg !538, !tbaa !407
  %cmp614 = icmp sgt i32 %124, 1, !dbg !538
  br i1 %cmp614, label %if.then616, label %if.end2020, !dbg !538

if.then616:                                       ; preds = %if.end612
  %125 = load i32* %arrayidx618, align 4, !dbg !542, !tbaa !407
  %126 = load i32* %105, align 4, !dbg !542, !tbaa !407
  %add621 = add nsw i32 %126, %125, !dbg !542
  store i32 %add621, i32* %105, align 4, !dbg !542, !tbaa !407
  br label %while.body, !dbg !538

sw.bb624:                                         ; preds = %for.end516
  %127 = bitcast i8* %call452 to i32*, !dbg !563
  call void @llvm.dbg.value(metadata !{i32* %127}, i64 0, metadata !221), !dbg !563
  %128 = bitcast i8* %call497 to i32*, !dbg !563
  call void @llvm.dbg.value(metadata !{i32* %128}, i64 0, metadata !222), !dbg !563
  %129 = bitcast i32* %add.ptr to i8*, !dbg !563
  %conv632 = sext i32 %93 to i64, !dbg !563
  %mul633 = shl nsw i64 %conv632, 2, !dbg !563
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %129, i64 %mul633, i32 4, i1 false), !dbg !563
  %130 = load i32* %add.ptr31, align 4, !dbg !563, !tbaa !407
  %131 = load i32* %add.ptr, align 4, !dbg !563, !tbaa !407
  %sub636 = sub nsw i32 %130, %131, !dbg !563
  call void @llvm.dbg.value(metadata !{i32 %sub636}, i64 0, metadata !220), !dbg !563
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !218), !dbg !563
  %arrayidx643 = getelementptr inbounds i8* %call25, i64 4, !dbg !564
  %132 = bitcast i8* %arrayidx643 to i32*, !dbg !564
  %add.ptr31.sum29952996 = or i64 %idx.ext30, 1, !dbg !564
  %arrayidx645 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29952996, !dbg !564
  %conv710 = sext i32 %sub636 to i64, !dbg !566
  %mul711 = shl nsw i64 %conv710, 2, !dbg !566
  %add.ptr43.sum2993 = add i64 %idx.ext42, 1, !dbg !568
  %arrayidx733 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2993, !dbg !568
  %cmp7163057 = icmp sgt i32 %sub636, 0, !dbg !570
  br label %while.body637, !dbg !563

while.body637:                                    ; preds = %sw.bb624, %if.then731
  %133 = phi i32 [ %93, %sw.bb624 ], [ %153, %if.then731 ]
  %typed_hdata630.0 = phi i32* [ %128, %sw.bb624 ], [ %typed_hdata630.2, %if.then731 ]
  %cmp639 = icmp sgt i32 %133, 1, !dbg !564
  br i1 %cmp639, label %land.lhs.true641, label %if.end688.thread3424, !dbg !564

if.end688.thread3424:                             ; preds = %while.body637
  %134 = load i32* %3, align 4, !dbg !564, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !216), !dbg !573
  br label %for.end703, !dbg !573

land.lhs.true641:                                 ; preds = %while.body637
  %135 = load i32* %132, align 4, !dbg !564, !tbaa !407
  %136 = load i32* %arrayidx645, align 4, !dbg !564, !tbaa !407
  %cmp646 = icmp slt i32 %135, %136, !dbg !564
  br i1 %cmp646, label %if.end688.thread, label %for.cond650.preheader, !dbg !564

if.end688.thread:                                 ; preds = %land.lhs.true641
  %137 = load i32* %3, align 4, !dbg !564, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !216), !dbg !573
  br label %for.body694, !dbg !573

for.cond650.preheader:                            ; preds = %land.lhs.true641
  %cmp6523047 = icmp sgt i32 %133, 2, !dbg !575
  br i1 %cmp6523047, label %for.body654, label %for.end670, !dbg !575

for.cond650:                                      ; preds = %for.body654
  %138 = trunc i64 %indvars.iv.next3266 to i32, !dbg !575
  %cmp652 = icmp slt i32 %138, %133, !dbg !575
  br i1 %cmp652, label %for.body654, label %for.end670, !dbg !575

for.body654:                                      ; preds = %for.cond650.preheader, %for.cond650
  %indvars.iv3265 = phi i64 [ %indvars.iv.next3266, %for.cond650 ], [ 2, %for.cond650.preheader ]
  %dim626.13048 = phi i32 [ %inc669, %for.cond650 ], [ 2, %for.cond650.preheader ]
  %add.ptr43.sum2998 = add i64 %indvars.iv3265, %idx.ext42, !dbg !578
  %arrayidx656 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2998, !dbg !578
  %139 = load i32* %arrayidx656, align 4, !dbg !578, !tbaa !407
  %arrayidx658 = getelementptr inbounds i32* %3, i64 %indvars.iv3265, !dbg !578
  %140 = load i32* %arrayidx658, align 4, !dbg !578, !tbaa !407
  %add659 = add nsw i32 %140, %139, !dbg !578
  store i32 %add659, i32* %arrayidx658, align 4, !dbg !578, !tbaa !407
  %add.ptr31.sum2999 = add i64 %indvars.iv3265, %idx.ext30, !dbg !578
  %arrayidx663 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2999, !dbg !578
  %141 = load i32* %arrayidx663, align 4, !dbg !578, !tbaa !407
  %cmp664 = icmp slt i32 %add659, %141, !dbg !578
  %indvars.iv.next3266 = add i64 %indvars.iv3265, 1, !dbg !575
  %inc669 = add nsw i32 %dim626.13048, 1, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %inc669}, i64 0, metadata !218), !dbg !575
  br i1 %cmp664, label %for.end670, label %for.cond650, !dbg !578

for.end670:                                       ; preds = %for.cond650, %for.body654, %for.cond650.preheader
  %dim626.1.lcssa = phi i32 [ 2, %for.cond650.preheader ], [ %dim626.13048, %for.body654 ], [ %inc669, %for.cond650 ]
  %cmp672 = icmp slt i32 %dim626.1.lcssa, %133, !dbg !580
  br i1 %cmp672, label %for.cond677.preheader, label %if.end2020, !dbg !580

for.cond677.preheader:                            ; preds = %for.end670
  %dim626.23050 = add i32 %dim626.1.lcssa, -1, !dbg !581
  %cmp6783051 = icmp sgt i32 %dim626.23050, 0, !dbg !581
  br i1 %cmp6783051, label %for.body680.lr.ph, label %if.end688, !dbg !581

for.body680.lr.ph:                                ; preds = %for.cond677.preheader
  %142 = sext i32 %dim626.23050 to i64
  br label %for.body680, !dbg !581

for.body680:                                      ; preds = %for.body680.lr.ph, %for.body680
  %indvars.iv3267 = phi i64 [ %142, %for.body680.lr.ph ], [ %indvars.iv.next3268, %for.body680 ]
  %dim626.23052 = phi i32 [ %dim626.23050, %for.body680.lr.ph ], [ %dim626.2, %for.body680 ]
  %add.ptr.sum2997 = add i64 %indvars.iv3267, %idx.ext, !dbg !583
  %arrayidx682 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2997, !dbg !583
  %143 = load i32* %arrayidx682, align 4, !dbg !583, !tbaa !407
  %arrayidx684 = getelementptr inbounds i32* %3, i64 %indvars.iv3267, !dbg !583
  store i32 %143, i32* %arrayidx684, align 4, !dbg !583, !tbaa !407
  %dim626.2 = add nsw i32 %dim626.23052, -1, !dbg !581
  %cmp678 = icmp sgt i32 %dim626.2, 0, !dbg !581
  %indvars.iv.next3268 = add i64 %indvars.iv3267, -1, !dbg !581
  br i1 %cmp678, label %for.body680, label %if.end688, !dbg !581

if.end688:                                        ; preds = %for.cond677.preheader, %for.body680
  %144 = load i32* %3, align 4, !dbg !564, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !216), !dbg !573
  br i1 %cmp639, label %for.body694, label %for.end703, !dbg !573

for.body694:                                      ; preds = %if.end688, %if.end688.thread, %for.body694
  %indvars.iv3270 = phi i64 [ %indvars.iv.next3271, %for.body694 ], [ 1, %if.end688.thread ], [ 1, %if.end688 ]
  %idx627.03054 = phi i32 [ %add700, %for.body694 ], [ %137, %if.end688.thread ], [ %144, %if.end688 ]
  %arrayidx696 = getelementptr inbounds i32* %3, i64 %indvars.iv3270, !dbg !585
  %145 = load i32* %arrayidx696, align 4, !dbg !585, !tbaa !407
  %add.ptr51.sum2994 = add i64 %indvars.iv3270, %idx.ext50, !dbg !585
  %arrayidx698 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2994, !dbg !585
  %146 = load i32* %arrayidx698, align 4, !dbg !585, !tbaa !407
  %mul699 = mul nsw i32 %146, %145, !dbg !585
  %add700 = add nsw i32 %mul699, %idx627.03054, !dbg !585
  call void @llvm.dbg.value(metadata !{i32 %add700}, i64 0, metadata !219), !dbg !585
  %indvars.iv.next3271 = add i64 %indvars.iv3270, 1, !dbg !573
  %147 = trunc i64 %indvars.iv.next3271 to i32, !dbg !573
  %cmp692 = icmp slt i32 %147, %133, !dbg !573
  br i1 %cmp692, label %for.body694, label %for.end703, !dbg !573

for.end703:                                       ; preds = %for.body694, %if.end688.thread3424, %if.end688
  %idx627.0.lcssa = phi i32 [ %144, %if.end688 ], [ %134, %if.end688.thread3424 ], [ %add700, %for.body694 ]
  %148 = load i32* %add.ptr43, align 4, !dbg !564, !tbaa !407
  %cmp705 = icmp eq i32 %148, 1, !dbg !564
  br i1 %cmp705, label %if.then707, label %for.cond715.preheader, !dbg !564

for.cond715.preheader:                            ; preds = %for.end703
  br i1 %cmp7163057, label %for.body718, label %if.end727, !dbg !570

if.then707:                                       ; preds = %for.end703
  %149 = bitcast i32* %typed_hdata630.0 to i8*, !dbg !566
  %idx.ext708 = sext i32 %idx627.0.lcssa to i64, !dbg !566
  %add.ptr709 = getelementptr inbounds i32* %127, i64 %idx.ext708, !dbg !566
  %150 = bitcast i32* %add.ptr709 to i8*, !dbg !566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 %mul711, i32 4, i1 false), !dbg !566
  %add.ptr713 = getelementptr inbounds i32* %typed_hdata630.0, i64 %conv710, !dbg !566
  call void @llvm.dbg.value(metadata !{i32* %add.ptr713}, i64 0, metadata !222), !dbg !566
  br label %if.end727, !dbg !566

for.body718:                                      ; preds = %for.cond715.preheader, %for.body718
  %i625.13059 = phi i32 [ %add725, %for.body718 ], [ 0, %for.cond715.preheader ]
  %typed_hdata630.13058 = phi i32* [ %incdec.ptr722, %for.body718 ], [ %typed_hdata630.0, %for.cond715.preheader ]
  %add719 = add nsw i32 %i625.13059, %idx627.0.lcssa, !dbg !587
  %idxprom720 = sext i32 %add719 to i64, !dbg !587
  %arrayidx721 = getelementptr inbounds i32* %127, i64 %idxprom720, !dbg !587
  %151 = load i32* %arrayidx721, align 4, !dbg !587, !tbaa !407
  %incdec.ptr722 = getelementptr inbounds i32* %typed_hdata630.13058, i64 1, !dbg !587
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr722}, i64 0, metadata !222), !dbg !587
  store i32 %151, i32* %typed_hdata630.13058, align 4, !dbg !587, !tbaa !407
  %152 = load i32* %add.ptr43, align 4, !dbg !570, !tbaa !407
  %add725 = add nsw i32 %152, %i625.13059, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %add725}, i64 0, metadata !216), !dbg !570
  %cmp716 = icmp slt i32 %add725, %sub636, !dbg !570
  br i1 %cmp716, label %for.body718, label %if.end727, !dbg !570

if.end727:                                        ; preds = %for.cond715.preheader, %for.body718, %if.then707
  %typed_hdata630.2 = phi i32* [ %add.ptr713, %if.then707 ], [ %typed_hdata630.0, %for.cond715.preheader ], [ %incdec.ptr722, %for.body718 ]
  %153 = load i32* %dim, align 4, !dbg !564, !tbaa !407
  %cmp729 = icmp sgt i32 %153, 1, !dbg !564
  br i1 %cmp729, label %if.then731, label %if.end2020, !dbg !564

if.then731:                                       ; preds = %if.end727
  %154 = load i32* %arrayidx733, align 4, !dbg !568, !tbaa !407
  %155 = load i32* %132, align 4, !dbg !568, !tbaa !407
  %add736 = add nsw i32 %155, %154, !dbg !568
  store i32 %add736, i32* %132, align 4, !dbg !568, !tbaa !407
  br label %while.body637, !dbg !564

sw.bb740:                                         ; preds = %for.end516
  %156 = bitcast i8* %call452 to double*, !dbg !589
  call void @llvm.dbg.value(metadata !{double* %156}, i64 0, metadata !228), !dbg !589
  %157 = bitcast i8* %call497 to double*, !dbg !589
  call void @llvm.dbg.value(metadata !{double* %157}, i64 0, metadata !229), !dbg !589
  %158 = bitcast i32* %add.ptr to i8*, !dbg !589
  %conv748 = sext i32 %93 to i64, !dbg !589
  %mul749 = shl nsw i64 %conv748, 2, !dbg !589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %158, i64 %mul749, i32 4, i1 false), !dbg !589
  %159 = load i32* %add.ptr31, align 4, !dbg !589, !tbaa !407
  %160 = load i32* %add.ptr, align 4, !dbg !589, !tbaa !407
  %sub752 = sub nsw i32 %159, %160, !dbg !589
  call void @llvm.dbg.value(metadata !{i32 %sub752}, i64 0, metadata !227), !dbg !589
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !225), !dbg !589
  %arrayidx759 = getelementptr inbounds i8* %call25, i64 4, !dbg !590
  %161 = bitcast i8* %arrayidx759 to i32*, !dbg !590
  %add.ptr31.sum29882989 = or i64 %idx.ext30, 1, !dbg !590
  %arrayidx761 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29882989, !dbg !590
  %conv826 = sext i32 %sub752 to i64, !dbg !592
  %mul827 = shl nsw i64 %conv826, 3, !dbg !592
  %add.ptr43.sum2986 = add i64 %idx.ext42, 1, !dbg !594
  %arrayidx849 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2986, !dbg !594
  %cmp8323072 = icmp sgt i32 %sub752, 0, !dbg !596
  br label %while.body753, !dbg !589

while.body753:                                    ; preds = %sw.bb740, %if.then847
  %162 = phi i32 [ %93, %sw.bb740 ], [ %185, %if.then847 ]
  %typed_hdata746.0 = phi double* [ %157, %sw.bb740 ], [ %typed_hdata746.2, %if.then847 ]
  %cmp755 = icmp sgt i32 %162, 1, !dbg !590
  br i1 %cmp755, label %land.lhs.true757, label %if.end804.thread3425, !dbg !590

if.end804.thread3425:                             ; preds = %while.body753
  %163 = load i32* %3, align 4, !dbg !590, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !223), !dbg !599
  br label %for.end819, !dbg !599

land.lhs.true757:                                 ; preds = %while.body753
  %164 = load i32* %161, align 4, !dbg !590, !tbaa !407
  %165 = load i32* %arrayidx761, align 4, !dbg !590, !tbaa !407
  %cmp762 = icmp slt i32 %164, %165, !dbg !590
  br i1 %cmp762, label %if.end804.thread, label %for.cond766.preheader, !dbg !590

if.end804.thread:                                 ; preds = %land.lhs.true757
  %166 = load i32* %3, align 4, !dbg !590, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !223), !dbg !599
  br label %for.body810, !dbg !599

for.cond766.preheader:                            ; preds = %land.lhs.true757
  %cmp7683062 = icmp sgt i32 %162, 2, !dbg !601
  br i1 %cmp7683062, label %for.body770, label %for.end786, !dbg !601

for.cond766:                                      ; preds = %for.body770
  %167 = trunc i64 %indvars.iv.next3275 to i32, !dbg !601
  %cmp768 = icmp slt i32 %167, %162, !dbg !601
  br i1 %cmp768, label %for.body770, label %for.end786, !dbg !601

for.body770:                                      ; preds = %for.cond766.preheader, %for.cond766
  %indvars.iv3274 = phi i64 [ %indvars.iv.next3275, %for.cond766 ], [ 2, %for.cond766.preheader ]
  %dim742.13063 = phi i32 [ %inc785, %for.cond766 ], [ 2, %for.cond766.preheader ]
  %add.ptr43.sum2991 = add i64 %indvars.iv3274, %idx.ext42, !dbg !604
  %arrayidx772 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2991, !dbg !604
  %168 = load i32* %arrayidx772, align 4, !dbg !604, !tbaa !407
  %arrayidx774 = getelementptr inbounds i32* %3, i64 %indvars.iv3274, !dbg !604
  %169 = load i32* %arrayidx774, align 4, !dbg !604, !tbaa !407
  %add775 = add nsw i32 %169, %168, !dbg !604
  store i32 %add775, i32* %arrayidx774, align 4, !dbg !604, !tbaa !407
  %add.ptr31.sum2992 = add i64 %indvars.iv3274, %idx.ext30, !dbg !604
  %arrayidx779 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2992, !dbg !604
  %170 = load i32* %arrayidx779, align 4, !dbg !604, !tbaa !407
  %cmp780 = icmp slt i32 %add775, %170, !dbg !604
  %indvars.iv.next3275 = add i64 %indvars.iv3274, 1, !dbg !601
  %inc785 = add nsw i32 %dim742.13063, 1, !dbg !601
  call void @llvm.dbg.value(metadata !{i32 %inc785}, i64 0, metadata !225), !dbg !601
  br i1 %cmp780, label %for.end786, label %for.cond766, !dbg !604

for.end786:                                       ; preds = %for.cond766, %for.body770, %for.cond766.preheader
  %dim742.1.lcssa = phi i32 [ 2, %for.cond766.preheader ], [ %dim742.13063, %for.body770 ], [ %inc785, %for.cond766 ]
  %cmp788 = icmp slt i32 %dim742.1.lcssa, %162, !dbg !606
  br i1 %cmp788, label %for.cond793.preheader, label %if.end2020, !dbg !606

for.cond793.preheader:                            ; preds = %for.end786
  %dim742.23065 = add i32 %dim742.1.lcssa, -1, !dbg !607
  %cmp7943066 = icmp sgt i32 %dim742.23065, 0, !dbg !607
  br i1 %cmp7943066, label %for.body796.lr.ph, label %if.end804, !dbg !607

for.body796.lr.ph:                                ; preds = %for.cond793.preheader
  %171 = sext i32 %dim742.23065 to i64
  br label %for.body796, !dbg !607

for.body796:                                      ; preds = %for.body796.lr.ph, %for.body796
  %indvars.iv3276 = phi i64 [ %171, %for.body796.lr.ph ], [ %indvars.iv.next3277, %for.body796 ]
  %dim742.23067 = phi i32 [ %dim742.23065, %for.body796.lr.ph ], [ %dim742.2, %for.body796 ]
  %add.ptr.sum2990 = add i64 %indvars.iv3276, %idx.ext, !dbg !609
  %arrayidx798 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2990, !dbg !609
  %172 = load i32* %arrayidx798, align 4, !dbg !609, !tbaa !407
  %arrayidx800 = getelementptr inbounds i32* %3, i64 %indvars.iv3276, !dbg !609
  store i32 %172, i32* %arrayidx800, align 4, !dbg !609, !tbaa !407
  %dim742.2 = add nsw i32 %dim742.23067, -1, !dbg !607
  %cmp794 = icmp sgt i32 %dim742.2, 0, !dbg !607
  %indvars.iv.next3277 = add i64 %indvars.iv3276, -1, !dbg !607
  br i1 %cmp794, label %for.body796, label %if.end804, !dbg !607

if.end804:                                        ; preds = %for.cond793.preheader, %for.body796
  %173 = load i32* %3, align 4, !dbg !590, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !223), !dbg !599
  br i1 %cmp755, label %for.body810, label %for.end819, !dbg !599

for.body810:                                      ; preds = %if.end804, %if.end804.thread, %for.body810
  %indvars.iv3279 = phi i64 [ %indvars.iv.next3280, %for.body810 ], [ 1, %if.end804.thread ], [ 1, %if.end804 ]
  %idx743.03069 = phi i32 [ %add816, %for.body810 ], [ %166, %if.end804.thread ], [ %173, %if.end804 ]
  %arrayidx812 = getelementptr inbounds i32* %3, i64 %indvars.iv3279, !dbg !611
  %174 = load i32* %arrayidx812, align 4, !dbg !611, !tbaa !407
  %add.ptr51.sum2987 = add i64 %indvars.iv3279, %idx.ext50, !dbg !611
  %arrayidx814 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2987, !dbg !611
  %175 = load i32* %arrayidx814, align 4, !dbg !611, !tbaa !407
  %mul815 = mul nsw i32 %175, %174, !dbg !611
  %add816 = add nsw i32 %mul815, %idx743.03069, !dbg !611
  call void @llvm.dbg.value(metadata !{i32 %add816}, i64 0, metadata !226), !dbg !611
  %indvars.iv.next3280 = add i64 %indvars.iv3279, 1, !dbg !599
  %176 = trunc i64 %indvars.iv.next3280 to i32, !dbg !599
  %cmp808 = icmp slt i32 %176, %162, !dbg !599
  br i1 %cmp808, label %for.body810, label %for.end819, !dbg !599

for.end819:                                       ; preds = %for.body810, %if.end804.thread3425, %if.end804
  %idx743.0.lcssa = phi i32 [ %173, %if.end804 ], [ %163, %if.end804.thread3425 ], [ %add816, %for.body810 ]
  %177 = load i32* %add.ptr43, align 4, !dbg !590, !tbaa !407
  %cmp821 = icmp eq i32 %177, 1, !dbg !590
  br i1 %cmp821, label %if.then823, label %for.cond831.preheader, !dbg !590

for.cond831.preheader:                            ; preds = %for.end819
  br i1 %cmp8323072, label %for.body834.lr.ph, label %if.end843, !dbg !596

for.body834.lr.ph:                                ; preds = %for.cond831.preheader
  %178 = sext i32 %177 to i64
  %179 = sext i32 %idx743.0.lcssa to i64, !dbg !596
  br label %for.body834, !dbg !596

if.then823:                                       ; preds = %for.end819
  %180 = bitcast double* %typed_hdata746.0 to i8*, !dbg !592
  %idx.ext824 = sext i32 %idx743.0.lcssa to i64, !dbg !592
  %add.ptr825 = getelementptr inbounds double* %156, i64 %idx.ext824, !dbg !592
  %181 = bitcast double* %add.ptr825 to i8*, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 %mul827, i32 8, i1 false), !dbg !592
  %add.ptr829 = getelementptr inbounds double* %typed_hdata746.0, i64 %conv826, !dbg !592
  call void @llvm.dbg.value(metadata !{double* %add.ptr829}, i64 0, metadata !229), !dbg !592
  %.pre = load i32* %dim, align 4, !dbg !590, !tbaa !407
  br label %if.end843, !dbg !592

for.body834:                                      ; preds = %for.body834.lr.ph, %for.body834
  %indvars.iv3281 = phi i64 [ 0, %for.body834.lr.ph ], [ %indvars.iv.next3282, %for.body834 ]
  %typed_hdata746.13073 = phi double* [ %typed_hdata746.0, %for.body834.lr.ph ], [ %incdec.ptr838, %for.body834 ]
  %182 = add nsw i64 %indvars.iv3281, %179, !dbg !613
  %arrayidx837 = getelementptr inbounds double* %156, i64 %182, !dbg !613
  %183 = load double* %arrayidx837, align 8, !dbg !613, !tbaa !615
  %incdec.ptr838 = getelementptr inbounds double* %typed_hdata746.13073, i64 1, !dbg !613
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr838}, i64 0, metadata !229), !dbg !613
  store double %183, double* %typed_hdata746.13073, align 8, !dbg !613, !tbaa !615
  %indvars.iv.next3282 = add i64 %indvars.iv3281, %178, !dbg !596
  %184 = trunc i64 %indvars.iv.next3282 to i32, !dbg !596
  %cmp832 = icmp slt i32 %184, %sub752, !dbg !596
  br i1 %cmp832, label %for.body834, label %if.end843, !dbg !596

if.end843:                                        ; preds = %for.cond831.preheader, %for.body834, %if.then823
  %185 = phi i32 [ %.pre, %if.then823 ], [ %162, %for.body834 ], [ %162, %for.cond831.preheader ], !dbg !590
  %typed_hdata746.2 = phi double* [ %add.ptr829, %if.then823 ], [ %incdec.ptr838, %for.body834 ], [ %typed_hdata746.0, %for.cond831.preheader ]
  %cmp845 = icmp sgt i32 %185, 1, !dbg !590
  br i1 %cmp845, label %if.then847, label %if.end2020, !dbg !590

if.then847:                                       ; preds = %if.end843
  %186 = load i32* %arrayidx849, align 4, !dbg !594, !tbaa !407
  %187 = load i32* %161, align 4, !dbg !594, !tbaa !407
  %add852 = add nsw i32 %187, %186, !dbg !594
  store i32 %add852, i32* %161, align 4, !dbg !594, !tbaa !407
  br label %while.body753, !dbg !590

sw.bb856:                                         ; preds = %for.end516
  %188 = bitcast i8* %call452 to %struct.CCTK_COMPLEX16*, !dbg !616
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %188}, i64 0, metadata !235), !dbg !616
  %189 = bitcast i8* %call497 to %struct.CCTK_COMPLEX16*, !dbg !616
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %189}, i64 0, metadata !243), !dbg !616
  %190 = bitcast i32* %add.ptr to i8*, !dbg !616
  %conv864 = sext i32 %93 to i64, !dbg !616
  %mul865 = shl nsw i64 %conv864, 2, !dbg !616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %190, i64 %mul865, i32 4, i1 false), !dbg !616
  %191 = load i32* %add.ptr31, align 4, !dbg !616, !tbaa !407
  %192 = load i32* %add.ptr, align 4, !dbg !616, !tbaa !407
  %sub868 = sub nsw i32 %191, %192, !dbg !616
  call void @llvm.dbg.value(metadata !{i32 %sub868}, i64 0, metadata !234), !dbg !616
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !232), !dbg !616
  %arrayidx875 = getelementptr inbounds i8* %call25, i64 4, !dbg !617
  %193 = bitcast i8* %arrayidx875 to i32*, !dbg !617
  %add.ptr31.sum29812982 = or i64 %idx.ext30, 1, !dbg !617
  %arrayidx877 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29812982, !dbg !617
  %conv942 = sext i32 %sub868 to i64, !dbg !619
  %mul943 = shl nsw i64 %conv942, 4, !dbg !619
  %add.ptr43.sum2979 = add i64 %idx.ext42, 1, !dbg !621
  %arrayidx965 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2979, !dbg !621
  %cmp9483087 = icmp sgt i32 %sub868, 0, !dbg !623
  br label %while.body869, !dbg !616

while.body869:                                    ; preds = %sw.bb856, %if.then963
  %194 = phi i32 [ %93, %sw.bb856 ], [ %215, %if.then963 ]
  %typed_hdata862.0 = phi %struct.CCTK_COMPLEX16* [ %189, %sw.bb856 ], [ %typed_hdata862.2, %if.then963 ]
  %cmp871 = icmp sgt i32 %194, 1, !dbg !617
  br i1 %cmp871, label %land.lhs.true873, label %if.end920.thread3426, !dbg !617

if.end920.thread3426:                             ; preds = %while.body869
  %195 = load i32* %3, align 4, !dbg !617, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !230), !dbg !626
  br label %for.end935, !dbg !626

land.lhs.true873:                                 ; preds = %while.body869
  %196 = load i32* %193, align 4, !dbg !617, !tbaa !407
  %197 = load i32* %arrayidx877, align 4, !dbg !617, !tbaa !407
  %cmp878 = icmp slt i32 %196, %197, !dbg !617
  br i1 %cmp878, label %if.end920.thread, label %for.cond882.preheader, !dbg !617

if.end920.thread:                                 ; preds = %land.lhs.true873
  %198 = load i32* %3, align 4, !dbg !617, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !230), !dbg !626
  br label %for.body926, !dbg !626

for.cond882.preheader:                            ; preds = %land.lhs.true873
  %cmp8843077 = icmp sgt i32 %194, 2, !dbg !628
  br i1 %cmp8843077, label %for.body886, label %for.end902, !dbg !628

for.cond882:                                      ; preds = %for.body886
  %199 = trunc i64 %indvars.iv.next3287 to i32, !dbg !628
  %cmp884 = icmp slt i32 %199, %194, !dbg !628
  br i1 %cmp884, label %for.body886, label %for.end902, !dbg !628

for.body886:                                      ; preds = %for.cond882.preheader, %for.cond882
  %indvars.iv3286 = phi i64 [ %indvars.iv.next3287, %for.cond882 ], [ 2, %for.cond882.preheader ]
  %dim858.13078 = phi i32 [ %inc901, %for.cond882 ], [ 2, %for.cond882.preheader ]
  %add.ptr43.sum2984 = add i64 %indvars.iv3286, %idx.ext42, !dbg !631
  %arrayidx888 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2984, !dbg !631
  %200 = load i32* %arrayidx888, align 4, !dbg !631, !tbaa !407
  %arrayidx890 = getelementptr inbounds i32* %3, i64 %indvars.iv3286, !dbg !631
  %201 = load i32* %arrayidx890, align 4, !dbg !631, !tbaa !407
  %add891 = add nsw i32 %201, %200, !dbg !631
  store i32 %add891, i32* %arrayidx890, align 4, !dbg !631, !tbaa !407
  %add.ptr31.sum2985 = add i64 %indvars.iv3286, %idx.ext30, !dbg !631
  %arrayidx895 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2985, !dbg !631
  %202 = load i32* %arrayidx895, align 4, !dbg !631, !tbaa !407
  %cmp896 = icmp slt i32 %add891, %202, !dbg !631
  %indvars.iv.next3287 = add i64 %indvars.iv3286, 1, !dbg !628
  %inc901 = add nsw i32 %dim858.13078, 1, !dbg !628
  call void @llvm.dbg.value(metadata !{i32 %inc901}, i64 0, metadata !232), !dbg !628
  br i1 %cmp896, label %for.end902, label %for.cond882, !dbg !631

for.end902:                                       ; preds = %for.cond882, %for.body886, %for.cond882.preheader
  %dim858.1.lcssa = phi i32 [ 2, %for.cond882.preheader ], [ %dim858.13078, %for.body886 ], [ %inc901, %for.cond882 ]
  %cmp904 = icmp slt i32 %dim858.1.lcssa, %194, !dbg !633
  br i1 %cmp904, label %for.cond909.preheader, label %if.end2020, !dbg !633

for.cond909.preheader:                            ; preds = %for.end902
  %dim858.23080 = add i32 %dim858.1.lcssa, -1, !dbg !634
  %cmp9103081 = icmp sgt i32 %dim858.23080, 0, !dbg !634
  br i1 %cmp9103081, label %for.body912.lr.ph, label %if.end920, !dbg !634

for.body912.lr.ph:                                ; preds = %for.cond909.preheader
  %203 = sext i32 %dim858.23080 to i64
  br label %for.body912, !dbg !634

for.body912:                                      ; preds = %for.body912.lr.ph, %for.body912
  %indvars.iv3288 = phi i64 [ %203, %for.body912.lr.ph ], [ %indvars.iv.next3289, %for.body912 ]
  %dim858.23082 = phi i32 [ %dim858.23080, %for.body912.lr.ph ], [ %dim858.2, %for.body912 ]
  %add.ptr.sum2983 = add i64 %indvars.iv3288, %idx.ext, !dbg !636
  %arrayidx914 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2983, !dbg !636
  %204 = load i32* %arrayidx914, align 4, !dbg !636, !tbaa !407
  %arrayidx916 = getelementptr inbounds i32* %3, i64 %indvars.iv3288, !dbg !636
  store i32 %204, i32* %arrayidx916, align 4, !dbg !636, !tbaa !407
  %dim858.2 = add nsw i32 %dim858.23082, -1, !dbg !634
  %cmp910 = icmp sgt i32 %dim858.2, 0, !dbg !634
  %indvars.iv.next3289 = add i64 %indvars.iv3288, -1, !dbg !634
  br i1 %cmp910, label %for.body912, label %if.end920, !dbg !634

if.end920:                                        ; preds = %for.cond909.preheader, %for.body912
  %205 = load i32* %3, align 4, !dbg !617, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !230), !dbg !626
  br i1 %cmp871, label %for.body926, label %for.end935, !dbg !626

for.body926:                                      ; preds = %if.end920, %if.end920.thread, %for.body926
  %indvars.iv3291 = phi i64 [ %indvars.iv.next3292, %for.body926 ], [ 1, %if.end920.thread ], [ 1, %if.end920 ]
  %idx859.03084 = phi i32 [ %add932, %for.body926 ], [ %198, %if.end920.thread ], [ %205, %if.end920 ]
  %arrayidx928 = getelementptr inbounds i32* %3, i64 %indvars.iv3291, !dbg !638
  %206 = load i32* %arrayidx928, align 4, !dbg !638, !tbaa !407
  %add.ptr51.sum2980 = add i64 %indvars.iv3291, %idx.ext50, !dbg !638
  %arrayidx930 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2980, !dbg !638
  %207 = load i32* %arrayidx930, align 4, !dbg !638, !tbaa !407
  %mul931 = mul nsw i32 %207, %206, !dbg !638
  %add932 = add nsw i32 %mul931, %idx859.03084, !dbg !638
  call void @llvm.dbg.value(metadata !{i32 %add932}, i64 0, metadata !233), !dbg !638
  %indvars.iv.next3292 = add i64 %indvars.iv3291, 1, !dbg !626
  %208 = trunc i64 %indvars.iv.next3292 to i32, !dbg !626
  %cmp924 = icmp slt i32 %208, %194, !dbg !626
  br i1 %cmp924, label %for.body926, label %for.end935, !dbg !626

for.end935:                                       ; preds = %for.body926, %if.end920.thread3426, %if.end920
  %idx859.0.lcssa = phi i32 [ %205, %if.end920 ], [ %195, %if.end920.thread3426 ], [ %add932, %for.body926 ]
  %209 = load i32* %add.ptr43, align 4, !dbg !617, !tbaa !407
  %cmp937 = icmp eq i32 %209, 1, !dbg !617
  br i1 %cmp937, label %if.then939, label %for.cond947.preheader, !dbg !617

for.cond947.preheader:                            ; preds = %for.end935
  br i1 %cmp9483087, label %for.body950, label %if.end959, !dbg !623

if.then939:                                       ; preds = %for.end935
  %210 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata862.0 to i8*, !dbg !619
  %idx.ext940 = sext i32 %idx859.0.lcssa to i64, !dbg !619
  %add.ptr941 = getelementptr inbounds %struct.CCTK_COMPLEX16* %188, i64 %idx.ext940, !dbg !619
  %211 = bitcast %struct.CCTK_COMPLEX16* %add.ptr941 to i8*, !dbg !619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %211, i64 %mul943, i32 8, i1 false), !dbg !619
  %add.ptr945 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata862.0, i64 %conv942, !dbg !619
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %add.ptr945}, i64 0, metadata !243), !dbg !619
  br label %if.end959, !dbg !619

for.body950:                                      ; preds = %for.cond947.preheader, %for.body950
  %typed_hdata862.13089 = phi %struct.CCTK_COMPLEX16* [ %incdec.ptr951, %for.body950 ], [ %typed_hdata862.0, %for.cond947.preheader ]
  %i857.13088 = phi i32 [ %add957, %for.body950 ], [ 0, %for.cond947.preheader ]
  %incdec.ptr951 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata862.13089, i64 1, !dbg !640
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %incdec.ptr951}, i64 0, metadata !243), !dbg !640
  %add952 = add nsw i32 %i857.13088, %idx859.0.lcssa, !dbg !640
  %idxprom953 = sext i32 %add952 to i64, !dbg !640
  %arrayidx954 = getelementptr inbounds %struct.CCTK_COMPLEX16* %188, i64 %idxprom953, !dbg !640
  %212 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata862.13089 to i8*, !dbg !640
  %213 = bitcast %struct.CCTK_COMPLEX16* %arrayidx954 to i8*, !dbg !640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %212, i8* %213, i64 16, i32 8, i1 false), !dbg !640, !tbaa.struct !642
  %214 = load i32* %add.ptr43, align 4, !dbg !623, !tbaa !407
  %add957 = add nsw i32 %214, %i857.13088, !dbg !623
  call void @llvm.dbg.value(metadata !{i32 %add957}, i64 0, metadata !230), !dbg !623
  %cmp948 = icmp slt i32 %add957, %sub868, !dbg !623
  br i1 %cmp948, label %for.body950, label %if.end959, !dbg !623

if.end959:                                        ; preds = %for.cond947.preheader, %for.body950, %if.then939
  %typed_hdata862.2 = phi %struct.CCTK_COMPLEX16* [ %add.ptr945, %if.then939 ], [ %typed_hdata862.0, %for.cond947.preheader ], [ %incdec.ptr951, %for.body950 ]
  %215 = load i32* %dim, align 4, !dbg !617, !tbaa !407
  %cmp961 = icmp sgt i32 %215, 1, !dbg !617
  br i1 %cmp961, label %if.then963, label %if.end2020, !dbg !617

if.then963:                                       ; preds = %if.end959
  %216 = load i32* %arrayidx965, align 4, !dbg !621, !tbaa !407
  %217 = load i32* %193, align 4, !dbg !621, !tbaa !407
  %add968 = add nsw i32 %217, %216, !dbg !621
  store i32 %add968, i32* %193, align 4, !dbg !621, !tbaa !407
  br label %while.body869, !dbg !617

sw.bb972:                                         ; preds = %for.end516
  %218 = bitcast i8* %call452 to i16*, !dbg !643
  call void @llvm.dbg.value(metadata !{i16* %218}, i64 0, metadata !249), !dbg !643
  %219 = bitcast i8* %call497 to i16*, !dbg !643
  call void @llvm.dbg.value(metadata !{i16* %219}, i64 0, metadata !252), !dbg !643
  %220 = bitcast i32* %add.ptr to i8*, !dbg !643
  %conv980 = sext i32 %93 to i64, !dbg !643
  %mul981 = shl nsw i64 %conv980, 2, !dbg !643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %220, i64 %mul981, i32 4, i1 false), !dbg !643
  %221 = load i32* %add.ptr31, align 4, !dbg !643, !tbaa !407
  %222 = load i32* %add.ptr, align 4, !dbg !643, !tbaa !407
  %sub984 = sub nsw i32 %221, %222, !dbg !643
  call void @llvm.dbg.value(metadata !{i32 %sub984}, i64 0, metadata !248), !dbg !643
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !246), !dbg !643
  %arrayidx991 = getelementptr inbounds i8* %call25, i64 4, !dbg !644
  %223 = bitcast i8* %arrayidx991 to i32*, !dbg !644
  %add.ptr31.sum29742975 = or i64 %idx.ext30, 1, !dbg !644
  %arrayidx993 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29742975, !dbg !644
  %conv1058 = sext i32 %sub984 to i64, !dbg !646
  %mul1059 = shl nsw i64 %conv1058, 1, !dbg !646
  %add.ptr43.sum2972 = add i64 %idx.ext42, 1, !dbg !648
  %arrayidx1081 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2972, !dbg !648
  %cmp10643102 = icmp sgt i32 %sub984, 0, !dbg !650
  br label %while.body985, !dbg !643

while.body985:                                    ; preds = %sw.bb972, %if.then1079
  %224 = phi i32 [ %93, %sw.bb972 ], [ %247, %if.then1079 ]
  %typed_hdata978.0 = phi i16* [ %219, %sw.bb972 ], [ %typed_hdata978.2, %if.then1079 ]
  %cmp987 = icmp sgt i32 %224, 1, !dbg !644
  br i1 %cmp987, label %land.lhs.true989, label %if.end1036.thread3427, !dbg !644

if.end1036.thread3427:                            ; preds = %while.body985
  %225 = load i32* %3, align 4, !dbg !644, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !244), !dbg !653
  br label %for.end1051, !dbg !653

land.lhs.true989:                                 ; preds = %while.body985
  %226 = load i32* %223, align 4, !dbg !644, !tbaa !407
  %227 = load i32* %arrayidx993, align 4, !dbg !644, !tbaa !407
  %cmp994 = icmp slt i32 %226, %227, !dbg !644
  br i1 %cmp994, label %if.end1036.thread, label %for.cond998.preheader, !dbg !644

if.end1036.thread:                                ; preds = %land.lhs.true989
  %228 = load i32* %3, align 4, !dbg !644, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !244), !dbg !653
  br label %for.body1042, !dbg !653

for.cond998.preheader:                            ; preds = %land.lhs.true989
  %cmp10003092 = icmp sgt i32 %224, 2, !dbg !655
  br i1 %cmp10003092, label %for.body1002, label %for.end1018, !dbg !655

for.cond998:                                      ; preds = %for.body1002
  %229 = trunc i64 %indvars.iv.next3296 to i32, !dbg !655
  %cmp1000 = icmp slt i32 %229, %224, !dbg !655
  br i1 %cmp1000, label %for.body1002, label %for.end1018, !dbg !655

for.body1002:                                     ; preds = %for.cond998.preheader, %for.cond998
  %indvars.iv3295 = phi i64 [ %indvars.iv.next3296, %for.cond998 ], [ 2, %for.cond998.preheader ]
  %dim974.13093 = phi i32 [ %inc1017, %for.cond998 ], [ 2, %for.cond998.preheader ]
  %add.ptr43.sum2977 = add i64 %indvars.iv3295, %idx.ext42, !dbg !658
  %arrayidx1004 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2977, !dbg !658
  %230 = load i32* %arrayidx1004, align 4, !dbg !658, !tbaa !407
  %arrayidx1006 = getelementptr inbounds i32* %3, i64 %indvars.iv3295, !dbg !658
  %231 = load i32* %arrayidx1006, align 4, !dbg !658, !tbaa !407
  %add1007 = add nsw i32 %231, %230, !dbg !658
  store i32 %add1007, i32* %arrayidx1006, align 4, !dbg !658, !tbaa !407
  %add.ptr31.sum2978 = add i64 %indvars.iv3295, %idx.ext30, !dbg !658
  %arrayidx1011 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2978, !dbg !658
  %232 = load i32* %arrayidx1011, align 4, !dbg !658, !tbaa !407
  %cmp1012 = icmp slt i32 %add1007, %232, !dbg !658
  %indvars.iv.next3296 = add i64 %indvars.iv3295, 1, !dbg !655
  %inc1017 = add nsw i32 %dim974.13093, 1, !dbg !655
  call void @llvm.dbg.value(metadata !{i32 %inc1017}, i64 0, metadata !246), !dbg !655
  br i1 %cmp1012, label %for.end1018, label %for.cond998, !dbg !658

for.end1018:                                      ; preds = %for.cond998, %for.body1002, %for.cond998.preheader
  %dim974.1.lcssa = phi i32 [ 2, %for.cond998.preheader ], [ %dim974.13093, %for.body1002 ], [ %inc1017, %for.cond998 ]
  %cmp1020 = icmp slt i32 %dim974.1.lcssa, %224, !dbg !660
  br i1 %cmp1020, label %for.cond1025.preheader, label %if.end2020, !dbg !660

for.cond1025.preheader:                           ; preds = %for.end1018
  %dim974.23095 = add i32 %dim974.1.lcssa, -1, !dbg !661
  %cmp10263096 = icmp sgt i32 %dim974.23095, 0, !dbg !661
  br i1 %cmp10263096, label %for.body1028.lr.ph, label %if.end1036, !dbg !661

for.body1028.lr.ph:                               ; preds = %for.cond1025.preheader
  %233 = sext i32 %dim974.23095 to i64
  br label %for.body1028, !dbg !661

for.body1028:                                     ; preds = %for.body1028.lr.ph, %for.body1028
  %indvars.iv3297 = phi i64 [ %233, %for.body1028.lr.ph ], [ %indvars.iv.next3298, %for.body1028 ]
  %dim974.23097 = phi i32 [ %dim974.23095, %for.body1028.lr.ph ], [ %dim974.2, %for.body1028 ]
  %add.ptr.sum2976 = add i64 %indvars.iv3297, %idx.ext, !dbg !663
  %arrayidx1030 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2976, !dbg !663
  %234 = load i32* %arrayidx1030, align 4, !dbg !663, !tbaa !407
  %arrayidx1032 = getelementptr inbounds i32* %3, i64 %indvars.iv3297, !dbg !663
  store i32 %234, i32* %arrayidx1032, align 4, !dbg !663, !tbaa !407
  %dim974.2 = add nsw i32 %dim974.23097, -1, !dbg !661
  %cmp1026 = icmp sgt i32 %dim974.2, 0, !dbg !661
  %indvars.iv.next3298 = add i64 %indvars.iv3297, -1, !dbg !661
  br i1 %cmp1026, label %for.body1028, label %if.end1036, !dbg !661

if.end1036:                                       ; preds = %for.cond1025.preheader, %for.body1028
  %235 = load i32* %3, align 4, !dbg !644, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !244), !dbg !653
  br i1 %cmp987, label %for.body1042, label %for.end1051, !dbg !653

for.body1042:                                     ; preds = %if.end1036, %if.end1036.thread, %for.body1042
  %indvars.iv3300 = phi i64 [ %indvars.iv.next3301, %for.body1042 ], [ 1, %if.end1036.thread ], [ 1, %if.end1036 ]
  %idx975.03100 = phi i32 [ %add1048, %for.body1042 ], [ %228, %if.end1036.thread ], [ %235, %if.end1036 ]
  %arrayidx1044 = getelementptr inbounds i32* %3, i64 %indvars.iv3300, !dbg !665
  %236 = load i32* %arrayidx1044, align 4, !dbg !665, !tbaa !407
  %add.ptr51.sum2973 = add i64 %indvars.iv3300, %idx.ext50, !dbg !665
  %arrayidx1046 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2973, !dbg !665
  %237 = load i32* %arrayidx1046, align 4, !dbg !665, !tbaa !407
  %mul1047 = mul nsw i32 %237, %236, !dbg !665
  %add1048 = add nsw i32 %mul1047, %idx975.03100, !dbg !665
  call void @llvm.dbg.value(metadata !{i32 %add1048}, i64 0, metadata !247), !dbg !665
  %indvars.iv.next3301 = add i64 %indvars.iv3300, 1, !dbg !653
  %238 = trunc i64 %indvars.iv.next3301 to i32, !dbg !653
  %cmp1040 = icmp slt i32 %238, %224, !dbg !653
  br i1 %cmp1040, label %for.body1042, label %for.end1051, !dbg !653

for.end1051:                                      ; preds = %for.body1042, %if.end1036.thread3427, %if.end1036
  %idx975.0.lcssa = phi i32 [ %235, %if.end1036 ], [ %225, %if.end1036.thread3427 ], [ %add1048, %for.body1042 ]
  %239 = load i32* %add.ptr43, align 4, !dbg !644, !tbaa !407
  %cmp1053 = icmp eq i32 %239, 1, !dbg !644
  br i1 %cmp1053, label %if.then1055, label %for.cond1063.preheader, !dbg !644

for.cond1063.preheader:                           ; preds = %for.end1051
  br i1 %cmp10643102, label %for.body1066.lr.ph, label %if.end1075, !dbg !650

for.body1066.lr.ph:                               ; preds = %for.cond1063.preheader
  %240 = sext i32 %239 to i64
  %241 = sext i32 %idx975.0.lcssa to i64, !dbg !650
  br label %for.body1066, !dbg !650

if.then1055:                                      ; preds = %for.end1051
  %242 = bitcast i16* %typed_hdata978.0 to i8*, !dbg !646
  %idx.ext1056 = sext i32 %idx975.0.lcssa to i64, !dbg !646
  %add.ptr1057 = getelementptr inbounds i16* %218, i64 %idx.ext1056, !dbg !646
  %243 = bitcast i16* %add.ptr1057 to i8*, !dbg !646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %242, i8* %243, i64 %mul1059, i32 2, i1 false), !dbg !646
  %add.ptr1061 = getelementptr inbounds i16* %typed_hdata978.0, i64 %conv1058, !dbg !646
  call void @llvm.dbg.value(metadata !{i16* %add.ptr1061}, i64 0, metadata !252), !dbg !646
  %.pre3409 = load i32* %dim, align 4, !dbg !644, !tbaa !407
  br label %if.end1075, !dbg !646

for.body1066:                                     ; preds = %for.body1066.lr.ph, %for.body1066
  %indvars.iv3302 = phi i64 [ 0, %for.body1066.lr.ph ], [ %indvars.iv.next3303, %for.body1066 ]
  %typed_hdata978.13104 = phi i16* [ %typed_hdata978.0, %for.body1066.lr.ph ], [ %incdec.ptr1070, %for.body1066 ]
  %244 = add nsw i64 %indvars.iv3302, %241, !dbg !667
  %arrayidx1069 = getelementptr inbounds i16* %218, i64 %244, !dbg !667
  %245 = load i16* %arrayidx1069, align 2, !dbg !667, !tbaa !669
  %incdec.ptr1070 = getelementptr inbounds i16* %typed_hdata978.13104, i64 1, !dbg !667
  call void @llvm.dbg.value(metadata !{i16* %incdec.ptr1070}, i64 0, metadata !252), !dbg !667
  store i16 %245, i16* %typed_hdata978.13104, align 2, !dbg !667, !tbaa !669
  %indvars.iv.next3303 = add i64 %indvars.iv3302, %240, !dbg !650
  %246 = trunc i64 %indvars.iv.next3303 to i32, !dbg !650
  %cmp1064 = icmp slt i32 %246, %sub984, !dbg !650
  br i1 %cmp1064, label %for.body1066, label %if.end1075, !dbg !650

if.end1075:                                       ; preds = %for.cond1063.preheader, %for.body1066, %if.then1055
  %247 = phi i32 [ %.pre3409, %if.then1055 ], [ %224, %for.body1066 ], [ %224, %for.cond1063.preheader ], !dbg !644
  %typed_hdata978.2 = phi i16* [ %add.ptr1061, %if.then1055 ], [ %incdec.ptr1070, %for.body1066 ], [ %typed_hdata978.0, %for.cond1063.preheader ]
  %cmp1077 = icmp sgt i32 %247, 1, !dbg !644
  br i1 %cmp1077, label %if.then1079, label %if.end2020, !dbg !644

if.then1079:                                      ; preds = %if.end1075
  %248 = load i32* %arrayidx1081, align 4, !dbg !648, !tbaa !407
  %249 = load i32* %223, align 4, !dbg !648, !tbaa !407
  %add1084 = add nsw i32 %249, %248, !dbg !648
  store i32 %add1084, i32* %223, align 4, !dbg !648, !tbaa !407
  br label %while.body985, !dbg !644

sw.bb1088:                                        ; preds = %for.end516
  %250 = bitcast i8* %call452 to i32*, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %250}, i64 0, metadata !258), !dbg !670
  %251 = bitcast i8* %call497 to i32*, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %251}, i64 0, metadata !259), !dbg !670
  %252 = bitcast i32* %add.ptr to i8*, !dbg !670
  %conv1096 = sext i32 %93 to i64, !dbg !670
  %mul1097 = shl nsw i64 %conv1096, 2, !dbg !670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %252, i64 %mul1097, i32 4, i1 false), !dbg !670
  %253 = load i32* %add.ptr31, align 4, !dbg !670, !tbaa !407
  %254 = load i32* %add.ptr, align 4, !dbg !670, !tbaa !407
  %sub1100 = sub nsw i32 %253, %254, !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %sub1100}, i64 0, metadata !257), !dbg !670
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !255), !dbg !670
  %arrayidx1107 = getelementptr inbounds i8* %call25, i64 4, !dbg !671
  %255 = bitcast i8* %arrayidx1107 to i32*, !dbg !671
  %add.ptr31.sum29672968 = or i64 %idx.ext30, 1, !dbg !671
  %arrayidx1109 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29672968, !dbg !671
  %conv1174 = sext i32 %sub1100 to i64, !dbg !673
  %mul1175 = shl nsw i64 %conv1174, 2, !dbg !673
  %add.ptr43.sum2965 = add i64 %idx.ext42, 1, !dbg !675
  %arrayidx1197 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2965, !dbg !675
  %cmp11803117 = icmp sgt i32 %sub1100, 0, !dbg !677
  br label %while.body1101, !dbg !670

while.body1101:                                   ; preds = %sw.bb1088, %if.then1195
  %256 = phi i32 [ %93, %sw.bb1088 ], [ %276, %if.then1195 ]
  %typed_hdata1094.0 = phi i32* [ %251, %sw.bb1088 ], [ %typed_hdata1094.2, %if.then1195 ]
  %cmp1103 = icmp sgt i32 %256, 1, !dbg !671
  br i1 %cmp1103, label %land.lhs.true1105, label %if.end1152.thread3428, !dbg !671

if.end1152.thread3428:                            ; preds = %while.body1101
  %257 = load i32* %3, align 4, !dbg !671, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !253), !dbg !680
  br label %for.end1167, !dbg !680

land.lhs.true1105:                                ; preds = %while.body1101
  %258 = load i32* %255, align 4, !dbg !671, !tbaa !407
  %259 = load i32* %arrayidx1109, align 4, !dbg !671, !tbaa !407
  %cmp1110 = icmp slt i32 %258, %259, !dbg !671
  br i1 %cmp1110, label %if.end1152.thread, label %for.cond1114.preheader, !dbg !671

if.end1152.thread:                                ; preds = %land.lhs.true1105
  %260 = load i32* %3, align 4, !dbg !671, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !253), !dbg !680
  br label %for.body1158, !dbg !680

for.cond1114.preheader:                           ; preds = %land.lhs.true1105
  %cmp11163107 = icmp sgt i32 %256, 2, !dbg !682
  br i1 %cmp11163107, label %for.body1118, label %for.end1134, !dbg !682

for.cond1114:                                     ; preds = %for.body1118
  %261 = trunc i64 %indvars.iv.next3308 to i32, !dbg !682
  %cmp1116 = icmp slt i32 %261, %256, !dbg !682
  br i1 %cmp1116, label %for.body1118, label %for.end1134, !dbg !682

for.body1118:                                     ; preds = %for.cond1114.preheader, %for.cond1114
  %indvars.iv3307 = phi i64 [ %indvars.iv.next3308, %for.cond1114 ], [ 2, %for.cond1114.preheader ]
  %dim1090.13108 = phi i32 [ %inc1133, %for.cond1114 ], [ 2, %for.cond1114.preheader ]
  %add.ptr43.sum2970 = add i64 %indvars.iv3307, %idx.ext42, !dbg !685
  %arrayidx1120 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2970, !dbg !685
  %262 = load i32* %arrayidx1120, align 4, !dbg !685, !tbaa !407
  %arrayidx1122 = getelementptr inbounds i32* %3, i64 %indvars.iv3307, !dbg !685
  %263 = load i32* %arrayidx1122, align 4, !dbg !685, !tbaa !407
  %add1123 = add nsw i32 %263, %262, !dbg !685
  store i32 %add1123, i32* %arrayidx1122, align 4, !dbg !685, !tbaa !407
  %add.ptr31.sum2971 = add i64 %indvars.iv3307, %idx.ext30, !dbg !685
  %arrayidx1127 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2971, !dbg !685
  %264 = load i32* %arrayidx1127, align 4, !dbg !685, !tbaa !407
  %cmp1128 = icmp slt i32 %add1123, %264, !dbg !685
  %indvars.iv.next3308 = add i64 %indvars.iv3307, 1, !dbg !682
  %inc1133 = add nsw i32 %dim1090.13108, 1, !dbg !682
  call void @llvm.dbg.value(metadata !{i32 %inc1133}, i64 0, metadata !255), !dbg !682
  br i1 %cmp1128, label %for.end1134, label %for.cond1114, !dbg !685

for.end1134:                                      ; preds = %for.cond1114, %for.body1118, %for.cond1114.preheader
  %dim1090.1.lcssa = phi i32 [ 2, %for.cond1114.preheader ], [ %dim1090.13108, %for.body1118 ], [ %inc1133, %for.cond1114 ]
  %cmp1136 = icmp slt i32 %dim1090.1.lcssa, %256, !dbg !687
  br i1 %cmp1136, label %for.cond1141.preheader, label %if.end2020, !dbg !687

for.cond1141.preheader:                           ; preds = %for.end1134
  %dim1090.23110 = add i32 %dim1090.1.lcssa, -1, !dbg !688
  %cmp11423111 = icmp sgt i32 %dim1090.23110, 0, !dbg !688
  br i1 %cmp11423111, label %for.body1144.lr.ph, label %if.end1152, !dbg !688

for.body1144.lr.ph:                               ; preds = %for.cond1141.preheader
  %265 = sext i32 %dim1090.23110 to i64
  br label %for.body1144, !dbg !688

for.body1144:                                     ; preds = %for.body1144.lr.ph, %for.body1144
  %indvars.iv3309 = phi i64 [ %265, %for.body1144.lr.ph ], [ %indvars.iv.next3310, %for.body1144 ]
  %dim1090.23112 = phi i32 [ %dim1090.23110, %for.body1144.lr.ph ], [ %dim1090.2, %for.body1144 ]
  %add.ptr.sum2969 = add i64 %indvars.iv3309, %idx.ext, !dbg !690
  %arrayidx1146 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2969, !dbg !690
  %266 = load i32* %arrayidx1146, align 4, !dbg !690, !tbaa !407
  %arrayidx1148 = getelementptr inbounds i32* %3, i64 %indvars.iv3309, !dbg !690
  store i32 %266, i32* %arrayidx1148, align 4, !dbg !690, !tbaa !407
  %dim1090.2 = add nsw i32 %dim1090.23112, -1, !dbg !688
  %cmp1142 = icmp sgt i32 %dim1090.2, 0, !dbg !688
  %indvars.iv.next3310 = add i64 %indvars.iv3309, -1, !dbg !688
  br i1 %cmp1142, label %for.body1144, label %if.end1152, !dbg !688

if.end1152:                                       ; preds = %for.cond1141.preheader, %for.body1144
  %267 = load i32* %3, align 4, !dbg !671, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !253), !dbg !680
  br i1 %cmp1103, label %for.body1158, label %for.end1167, !dbg !680

for.body1158:                                     ; preds = %if.end1152, %if.end1152.thread, %for.body1158
  %indvars.iv3312 = phi i64 [ %indvars.iv.next3313, %for.body1158 ], [ 1, %if.end1152.thread ], [ 1, %if.end1152 ]
  %idx1091.03115 = phi i32 [ %add1164, %for.body1158 ], [ %260, %if.end1152.thread ], [ %267, %if.end1152 ]
  %arrayidx1160 = getelementptr inbounds i32* %3, i64 %indvars.iv3312, !dbg !692
  %268 = load i32* %arrayidx1160, align 4, !dbg !692, !tbaa !407
  %add.ptr51.sum2966 = add i64 %indvars.iv3312, %idx.ext50, !dbg !692
  %arrayidx1162 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2966, !dbg !692
  %269 = load i32* %arrayidx1162, align 4, !dbg !692, !tbaa !407
  %mul1163 = mul nsw i32 %269, %268, !dbg !692
  %add1164 = add nsw i32 %mul1163, %idx1091.03115, !dbg !692
  call void @llvm.dbg.value(metadata !{i32 %add1164}, i64 0, metadata !256), !dbg !692
  %indvars.iv.next3313 = add i64 %indvars.iv3312, 1, !dbg !680
  %270 = trunc i64 %indvars.iv.next3313 to i32, !dbg !680
  %cmp1156 = icmp slt i32 %270, %256, !dbg !680
  br i1 %cmp1156, label %for.body1158, label %for.end1167, !dbg !680

for.end1167:                                      ; preds = %for.body1158, %if.end1152.thread3428, %if.end1152
  %idx1091.0.lcssa = phi i32 [ %267, %if.end1152 ], [ %257, %if.end1152.thread3428 ], [ %add1164, %for.body1158 ]
  %271 = load i32* %add.ptr43, align 4, !dbg !671, !tbaa !407
  %cmp1169 = icmp eq i32 %271, 1, !dbg !671
  br i1 %cmp1169, label %if.then1171, label %for.cond1179.preheader, !dbg !671

for.cond1179.preheader:                           ; preds = %for.end1167
  br i1 %cmp11803117, label %for.body1182, label %if.end1191, !dbg !677

if.then1171:                                      ; preds = %for.end1167
  %272 = bitcast i32* %typed_hdata1094.0 to i8*, !dbg !673
  %idx.ext1172 = sext i32 %idx1091.0.lcssa to i64, !dbg !673
  %add.ptr1173 = getelementptr inbounds i32* %250, i64 %idx.ext1172, !dbg !673
  %273 = bitcast i32* %add.ptr1173 to i8*, !dbg !673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %272, i8* %273, i64 %mul1175, i32 4, i1 false), !dbg !673
  %add.ptr1177 = getelementptr inbounds i32* %typed_hdata1094.0, i64 %conv1174, !dbg !673
  call void @llvm.dbg.value(metadata !{i32* %add.ptr1177}, i64 0, metadata !259), !dbg !673
  br label %if.end1191, !dbg !673

for.body1182:                                     ; preds = %for.cond1179.preheader, %for.body1182
  %typed_hdata1094.13119 = phi i32* [ %incdec.ptr1186, %for.body1182 ], [ %typed_hdata1094.0, %for.cond1179.preheader ]
  %i1089.13118 = phi i32 [ %add1189, %for.body1182 ], [ 0, %for.cond1179.preheader ]
  %add1183 = add nsw i32 %i1089.13118, %idx1091.0.lcssa, !dbg !694
  %idxprom1184 = sext i32 %add1183 to i64, !dbg !694
  %arrayidx1185 = getelementptr inbounds i32* %250, i64 %idxprom1184, !dbg !694
  %274 = load i32* %arrayidx1185, align 4, !dbg !694, !tbaa !407
  %incdec.ptr1186 = getelementptr inbounds i32* %typed_hdata1094.13119, i64 1, !dbg !694
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr1186}, i64 0, metadata !259), !dbg !694
  store i32 %274, i32* %typed_hdata1094.13119, align 4, !dbg !694, !tbaa !407
  %275 = load i32* %add.ptr43, align 4, !dbg !677, !tbaa !407
  %add1189 = add nsw i32 %275, %i1089.13118, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %add1189}, i64 0, metadata !253), !dbg !677
  %cmp1180 = icmp slt i32 %add1189, %sub1100, !dbg !677
  br i1 %cmp1180, label %for.body1182, label %if.end1191, !dbg !677

if.end1191:                                       ; preds = %for.cond1179.preheader, %for.body1182, %if.then1171
  %typed_hdata1094.2 = phi i32* [ %add.ptr1177, %if.then1171 ], [ %typed_hdata1094.0, %for.cond1179.preheader ], [ %incdec.ptr1186, %for.body1182 ]
  %276 = load i32* %dim, align 4, !dbg !671, !tbaa !407
  %cmp1193 = icmp sgt i32 %276, 1, !dbg !671
  br i1 %cmp1193, label %if.then1195, label %if.end2020, !dbg !671

if.then1195:                                      ; preds = %if.end1191
  %277 = load i32* %arrayidx1197, align 4, !dbg !675, !tbaa !407
  %278 = load i32* %255, align 4, !dbg !675, !tbaa !407
  %add1200 = add nsw i32 %278, %277, !dbg !675
  store i32 %add1200, i32* %255, align 4, !dbg !675, !tbaa !407
  br label %while.body1101, !dbg !671

sw.bb1204:                                        ; preds = %for.end516
  %279 = bitcast i8* %call452 to i64*, !dbg !696
  call void @llvm.dbg.value(metadata !{i64* %279}, i64 0, metadata !265), !dbg !696
  %280 = bitcast i8* %call497 to i64*, !dbg !696
  call void @llvm.dbg.value(metadata !{i64* %280}, i64 0, metadata !268), !dbg !696
  %281 = bitcast i32* %add.ptr to i8*, !dbg !696
  %conv1212 = sext i32 %93 to i64, !dbg !696
  %mul1213 = shl nsw i64 %conv1212, 2, !dbg !696
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %281, i64 %mul1213, i32 4, i1 false), !dbg !696
  %282 = load i32* %add.ptr31, align 4, !dbg !696, !tbaa !407
  %283 = load i32* %add.ptr, align 4, !dbg !696, !tbaa !407
  %sub1216 = sub nsw i32 %282, %283, !dbg !696
  call void @llvm.dbg.value(metadata !{i32 %sub1216}, i64 0, metadata !264), !dbg !696
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !262), !dbg !696
  %arrayidx1223 = getelementptr inbounds i8* %call25, i64 4, !dbg !697
  %284 = bitcast i8* %arrayidx1223 to i32*, !dbg !697
  %add.ptr31.sum29602961 = or i64 %idx.ext30, 1, !dbg !697
  %arrayidx1225 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29602961, !dbg !697
  %conv1290 = sext i32 %sub1216 to i64, !dbg !699
  %mul1291 = shl nsw i64 %conv1290, 3, !dbg !699
  %add.ptr43.sum2958 = add i64 %idx.ext42, 1, !dbg !701
  %arrayidx1313 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2958, !dbg !701
  %cmp12963132 = icmp sgt i32 %sub1216, 0, !dbg !703
  br label %while.body1217, !dbg !696

while.body1217:                                   ; preds = %sw.bb1204, %if.then1311
  %285 = phi i32 [ %93, %sw.bb1204 ], [ %308, %if.then1311 ]
  %typed_hdata1210.0 = phi i64* [ %280, %sw.bb1204 ], [ %typed_hdata1210.2, %if.then1311 ]
  %cmp1219 = icmp sgt i32 %285, 1, !dbg !697
  br i1 %cmp1219, label %land.lhs.true1221, label %if.end1268.thread3429, !dbg !697

if.end1268.thread3429:                            ; preds = %while.body1217
  %286 = load i32* %3, align 4, !dbg !697, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !260), !dbg !706
  br label %for.end1283, !dbg !706

land.lhs.true1221:                                ; preds = %while.body1217
  %287 = load i32* %284, align 4, !dbg !697, !tbaa !407
  %288 = load i32* %arrayidx1225, align 4, !dbg !697, !tbaa !407
  %cmp1226 = icmp slt i32 %287, %288, !dbg !697
  br i1 %cmp1226, label %if.end1268.thread, label %for.cond1230.preheader, !dbg !697

if.end1268.thread:                                ; preds = %land.lhs.true1221
  %289 = load i32* %3, align 4, !dbg !697, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !260), !dbg !706
  br label %for.body1274, !dbg !706

for.cond1230.preheader:                           ; preds = %land.lhs.true1221
  %cmp12323122 = icmp sgt i32 %285, 2, !dbg !708
  br i1 %cmp12323122, label %for.body1234, label %for.end1250, !dbg !708

for.cond1230:                                     ; preds = %for.body1234
  %290 = trunc i64 %indvars.iv.next3317 to i32, !dbg !708
  %cmp1232 = icmp slt i32 %290, %285, !dbg !708
  br i1 %cmp1232, label %for.body1234, label %for.end1250, !dbg !708

for.body1234:                                     ; preds = %for.cond1230.preheader, %for.cond1230
  %indvars.iv3316 = phi i64 [ %indvars.iv.next3317, %for.cond1230 ], [ 2, %for.cond1230.preheader ]
  %dim1206.13123 = phi i32 [ %inc1249, %for.cond1230 ], [ 2, %for.cond1230.preheader ]
  %add.ptr43.sum2963 = add i64 %indvars.iv3316, %idx.ext42, !dbg !711
  %arrayidx1236 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2963, !dbg !711
  %291 = load i32* %arrayidx1236, align 4, !dbg !711, !tbaa !407
  %arrayidx1238 = getelementptr inbounds i32* %3, i64 %indvars.iv3316, !dbg !711
  %292 = load i32* %arrayidx1238, align 4, !dbg !711, !tbaa !407
  %add1239 = add nsw i32 %292, %291, !dbg !711
  store i32 %add1239, i32* %arrayidx1238, align 4, !dbg !711, !tbaa !407
  %add.ptr31.sum2964 = add i64 %indvars.iv3316, %idx.ext30, !dbg !711
  %arrayidx1243 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2964, !dbg !711
  %293 = load i32* %arrayidx1243, align 4, !dbg !711, !tbaa !407
  %cmp1244 = icmp slt i32 %add1239, %293, !dbg !711
  %indvars.iv.next3317 = add i64 %indvars.iv3316, 1, !dbg !708
  %inc1249 = add nsw i32 %dim1206.13123, 1, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %inc1249}, i64 0, metadata !262), !dbg !708
  br i1 %cmp1244, label %for.end1250, label %for.cond1230, !dbg !711

for.end1250:                                      ; preds = %for.cond1230, %for.body1234, %for.cond1230.preheader
  %dim1206.1.lcssa = phi i32 [ 2, %for.cond1230.preheader ], [ %dim1206.13123, %for.body1234 ], [ %inc1249, %for.cond1230 ]
  %cmp1252 = icmp slt i32 %dim1206.1.lcssa, %285, !dbg !713
  br i1 %cmp1252, label %for.cond1257.preheader, label %if.end2020, !dbg !713

for.cond1257.preheader:                           ; preds = %for.end1250
  %dim1206.23125 = add i32 %dim1206.1.lcssa, -1, !dbg !714
  %cmp12583126 = icmp sgt i32 %dim1206.23125, 0, !dbg !714
  br i1 %cmp12583126, label %for.body1260.lr.ph, label %if.end1268, !dbg !714

for.body1260.lr.ph:                               ; preds = %for.cond1257.preheader
  %294 = sext i32 %dim1206.23125 to i64
  br label %for.body1260, !dbg !714

for.body1260:                                     ; preds = %for.body1260.lr.ph, %for.body1260
  %indvars.iv3318 = phi i64 [ %294, %for.body1260.lr.ph ], [ %indvars.iv.next3319, %for.body1260 ]
  %dim1206.23127 = phi i32 [ %dim1206.23125, %for.body1260.lr.ph ], [ %dim1206.2, %for.body1260 ]
  %add.ptr.sum2962 = add i64 %indvars.iv3318, %idx.ext, !dbg !716
  %arrayidx1262 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2962, !dbg !716
  %295 = load i32* %arrayidx1262, align 4, !dbg !716, !tbaa !407
  %arrayidx1264 = getelementptr inbounds i32* %3, i64 %indvars.iv3318, !dbg !716
  store i32 %295, i32* %arrayidx1264, align 4, !dbg !716, !tbaa !407
  %dim1206.2 = add nsw i32 %dim1206.23127, -1, !dbg !714
  %cmp1258 = icmp sgt i32 %dim1206.2, 0, !dbg !714
  %indvars.iv.next3319 = add i64 %indvars.iv3318, -1, !dbg !714
  br i1 %cmp1258, label %for.body1260, label %if.end1268, !dbg !714

if.end1268:                                       ; preds = %for.cond1257.preheader, %for.body1260
  %296 = load i32* %3, align 4, !dbg !697, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !260), !dbg !706
  br i1 %cmp1219, label %for.body1274, label %for.end1283, !dbg !706

for.body1274:                                     ; preds = %if.end1268, %if.end1268.thread, %for.body1274
  %indvars.iv3321 = phi i64 [ %indvars.iv.next3322, %for.body1274 ], [ 1, %if.end1268.thread ], [ 1, %if.end1268 ]
  %idx1207.03130 = phi i32 [ %add1280, %for.body1274 ], [ %289, %if.end1268.thread ], [ %296, %if.end1268 ]
  %arrayidx1276 = getelementptr inbounds i32* %3, i64 %indvars.iv3321, !dbg !718
  %297 = load i32* %arrayidx1276, align 4, !dbg !718, !tbaa !407
  %add.ptr51.sum2959 = add i64 %indvars.iv3321, %idx.ext50, !dbg !718
  %arrayidx1278 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2959, !dbg !718
  %298 = load i32* %arrayidx1278, align 4, !dbg !718, !tbaa !407
  %mul1279 = mul nsw i32 %298, %297, !dbg !718
  %add1280 = add nsw i32 %mul1279, %idx1207.03130, !dbg !718
  call void @llvm.dbg.value(metadata !{i32 %add1280}, i64 0, metadata !263), !dbg !718
  %indvars.iv.next3322 = add i64 %indvars.iv3321, 1, !dbg !706
  %299 = trunc i64 %indvars.iv.next3322 to i32, !dbg !706
  %cmp1272 = icmp slt i32 %299, %285, !dbg !706
  br i1 %cmp1272, label %for.body1274, label %for.end1283, !dbg !706

for.end1283:                                      ; preds = %for.body1274, %if.end1268.thread3429, %if.end1268
  %idx1207.0.lcssa = phi i32 [ %296, %if.end1268 ], [ %286, %if.end1268.thread3429 ], [ %add1280, %for.body1274 ]
  %300 = load i32* %add.ptr43, align 4, !dbg !697, !tbaa !407
  %cmp1285 = icmp eq i32 %300, 1, !dbg !697
  br i1 %cmp1285, label %if.then1287, label %for.cond1295.preheader, !dbg !697

for.cond1295.preheader:                           ; preds = %for.end1283
  br i1 %cmp12963132, label %for.body1298.lr.ph, label %if.end1307, !dbg !703

for.body1298.lr.ph:                               ; preds = %for.cond1295.preheader
  %301 = sext i32 %300 to i64
  %302 = sext i32 %idx1207.0.lcssa to i64, !dbg !703
  br label %for.body1298, !dbg !703

if.then1287:                                      ; preds = %for.end1283
  %303 = bitcast i64* %typed_hdata1210.0 to i8*, !dbg !699
  %idx.ext1288 = sext i32 %idx1207.0.lcssa to i64, !dbg !699
  %add.ptr1289 = getelementptr inbounds i64* %279, i64 %idx.ext1288, !dbg !699
  %304 = bitcast i64* %add.ptr1289 to i8*, !dbg !699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %303, i8* %304, i64 %mul1291, i32 8, i1 false), !dbg !699
  %add.ptr1293 = getelementptr inbounds i64* %typed_hdata1210.0, i64 %conv1290, !dbg !699
  call void @llvm.dbg.value(metadata !{i64* %add.ptr1293}, i64 0, metadata !268), !dbg !699
  %.pre3410 = load i32* %dim, align 4, !dbg !697, !tbaa !407
  br label %if.end1307, !dbg !699

for.body1298:                                     ; preds = %for.body1298.lr.ph, %for.body1298
  %indvars.iv3323 = phi i64 [ 0, %for.body1298.lr.ph ], [ %indvars.iv.next3324, %for.body1298 ]
  %typed_hdata1210.13134 = phi i64* [ %typed_hdata1210.0, %for.body1298.lr.ph ], [ %incdec.ptr1302, %for.body1298 ]
  %305 = add nsw i64 %indvars.iv3323, %302, !dbg !720
  %arrayidx1301 = getelementptr inbounds i64* %279, i64 %305, !dbg !720
  %306 = load i64* %arrayidx1301, align 8, !dbg !720, !tbaa !722
  %incdec.ptr1302 = getelementptr inbounds i64* %typed_hdata1210.13134, i64 1, !dbg !720
  call void @llvm.dbg.value(metadata !{i64* %incdec.ptr1302}, i64 0, metadata !268), !dbg !720
  store i64 %306, i64* %typed_hdata1210.13134, align 8, !dbg !720, !tbaa !722
  %indvars.iv.next3324 = add i64 %indvars.iv3323, %301, !dbg !703
  %307 = trunc i64 %indvars.iv.next3324 to i32, !dbg !703
  %cmp1296 = icmp slt i32 %307, %sub1216, !dbg !703
  br i1 %cmp1296, label %for.body1298, label %if.end1307, !dbg !703

if.end1307:                                       ; preds = %for.cond1295.preheader, %for.body1298, %if.then1287
  %308 = phi i32 [ %.pre3410, %if.then1287 ], [ %285, %for.body1298 ], [ %285, %for.cond1295.preheader ], !dbg !697
  %typed_hdata1210.2 = phi i64* [ %add.ptr1293, %if.then1287 ], [ %incdec.ptr1302, %for.body1298 ], [ %typed_hdata1210.0, %for.cond1295.preheader ]
  %cmp1309 = icmp sgt i32 %308, 1, !dbg !697
  br i1 %cmp1309, label %if.then1311, label %if.end2020, !dbg !697

if.then1311:                                      ; preds = %if.end1307
  %309 = load i32* %arrayidx1313, align 4, !dbg !701, !tbaa !407
  %310 = load i32* %284, align 4, !dbg !701, !tbaa !407
  %add1316 = add nsw i32 %310, %309, !dbg !701
  store i32 %add1316, i32* %284, align 4, !dbg !701, !tbaa !407
  br label %while.body1217, !dbg !697

sw.bb1320:                                        ; preds = %for.end516
  %311 = bitcast i8* %call452 to float*, !dbg !723
  call void @llvm.dbg.value(metadata !{float* %311}, i64 0, metadata !274), !dbg !723
  %312 = bitcast i8* %call497 to float*, !dbg !723
  call void @llvm.dbg.value(metadata !{float* %312}, i64 0, metadata !277), !dbg !723
  %313 = bitcast i32* %add.ptr to i8*, !dbg !723
  %conv1328 = sext i32 %93 to i64, !dbg !723
  %mul1329 = shl nsw i64 %conv1328, 2, !dbg !723
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %313, i64 %mul1329, i32 4, i1 false), !dbg !723
  %314 = load i32* %add.ptr31, align 4, !dbg !723, !tbaa !407
  %315 = load i32* %add.ptr, align 4, !dbg !723, !tbaa !407
  %sub1332 = sub nsw i32 %314, %315, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %sub1332}, i64 0, metadata !273), !dbg !723
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !271), !dbg !723
  %arrayidx1339 = getelementptr inbounds i8* %call25, i64 4, !dbg !724
  %316 = bitcast i8* %arrayidx1339 to i32*, !dbg !724
  %add.ptr31.sum29532954 = or i64 %idx.ext30, 1, !dbg !724
  %arrayidx1341 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29532954, !dbg !724
  %conv1406 = sext i32 %sub1332 to i64, !dbg !726
  %mul1407 = shl nsw i64 %conv1406, 2, !dbg !726
  %add.ptr43.sum2951 = add i64 %idx.ext42, 1, !dbg !728
  %arrayidx1429 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2951, !dbg !728
  %cmp14123147 = icmp sgt i32 %sub1332, 0, !dbg !730
  br label %while.body1333, !dbg !723

while.body1333:                                   ; preds = %sw.bb1320, %if.then1427
  %317 = phi i32 [ %93, %sw.bb1320 ], [ %340, %if.then1427 ]
  %typed_hdata1326.0 = phi float* [ %312, %sw.bb1320 ], [ %typed_hdata1326.2, %if.then1427 ]
  %cmp1335 = icmp sgt i32 %317, 1, !dbg !724
  br i1 %cmp1335, label %land.lhs.true1337, label %if.end1384.thread3430, !dbg !724

if.end1384.thread3430:                            ; preds = %while.body1333
  %318 = load i32* %3, align 4, !dbg !724, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !269), !dbg !733
  br label %for.end1399, !dbg !733

land.lhs.true1337:                                ; preds = %while.body1333
  %319 = load i32* %316, align 4, !dbg !724, !tbaa !407
  %320 = load i32* %arrayidx1341, align 4, !dbg !724, !tbaa !407
  %cmp1342 = icmp slt i32 %319, %320, !dbg !724
  br i1 %cmp1342, label %if.end1384.thread, label %for.cond1346.preheader, !dbg !724

if.end1384.thread:                                ; preds = %land.lhs.true1337
  %321 = load i32* %3, align 4, !dbg !724, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !269), !dbg !733
  br label %for.body1390, !dbg !733

for.cond1346.preheader:                           ; preds = %land.lhs.true1337
  %cmp13483137 = icmp sgt i32 %317, 2, !dbg !735
  br i1 %cmp13483137, label %for.body1350, label %for.end1366, !dbg !735

for.cond1346:                                     ; preds = %for.body1350
  %322 = trunc i64 %indvars.iv.next3329 to i32, !dbg !735
  %cmp1348 = icmp slt i32 %322, %317, !dbg !735
  br i1 %cmp1348, label %for.body1350, label %for.end1366, !dbg !735

for.body1350:                                     ; preds = %for.cond1346.preheader, %for.cond1346
  %indvars.iv3328 = phi i64 [ %indvars.iv.next3329, %for.cond1346 ], [ 2, %for.cond1346.preheader ]
  %dim1322.13138 = phi i32 [ %inc1365, %for.cond1346 ], [ 2, %for.cond1346.preheader ]
  %add.ptr43.sum2956 = add i64 %indvars.iv3328, %idx.ext42, !dbg !738
  %arrayidx1352 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2956, !dbg !738
  %323 = load i32* %arrayidx1352, align 4, !dbg !738, !tbaa !407
  %arrayidx1354 = getelementptr inbounds i32* %3, i64 %indvars.iv3328, !dbg !738
  %324 = load i32* %arrayidx1354, align 4, !dbg !738, !tbaa !407
  %add1355 = add nsw i32 %324, %323, !dbg !738
  store i32 %add1355, i32* %arrayidx1354, align 4, !dbg !738, !tbaa !407
  %add.ptr31.sum2957 = add i64 %indvars.iv3328, %idx.ext30, !dbg !738
  %arrayidx1359 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2957, !dbg !738
  %325 = load i32* %arrayidx1359, align 4, !dbg !738, !tbaa !407
  %cmp1360 = icmp slt i32 %add1355, %325, !dbg !738
  %indvars.iv.next3329 = add i64 %indvars.iv3328, 1, !dbg !735
  %inc1365 = add nsw i32 %dim1322.13138, 1, !dbg !735
  call void @llvm.dbg.value(metadata !{i32 %inc1365}, i64 0, metadata !271), !dbg !735
  br i1 %cmp1360, label %for.end1366, label %for.cond1346, !dbg !738

for.end1366:                                      ; preds = %for.cond1346, %for.body1350, %for.cond1346.preheader
  %dim1322.1.lcssa = phi i32 [ 2, %for.cond1346.preheader ], [ %dim1322.13138, %for.body1350 ], [ %inc1365, %for.cond1346 ]
  %cmp1368 = icmp slt i32 %dim1322.1.lcssa, %317, !dbg !740
  br i1 %cmp1368, label %for.cond1373.preheader, label %if.end2020, !dbg !740

for.cond1373.preheader:                           ; preds = %for.end1366
  %dim1322.23140 = add i32 %dim1322.1.lcssa, -1, !dbg !741
  %cmp13743141 = icmp sgt i32 %dim1322.23140, 0, !dbg !741
  br i1 %cmp13743141, label %for.body1376.lr.ph, label %if.end1384, !dbg !741

for.body1376.lr.ph:                               ; preds = %for.cond1373.preheader
  %326 = sext i32 %dim1322.23140 to i64
  br label %for.body1376, !dbg !741

for.body1376:                                     ; preds = %for.body1376.lr.ph, %for.body1376
  %indvars.iv3330 = phi i64 [ %326, %for.body1376.lr.ph ], [ %indvars.iv.next3331, %for.body1376 ]
  %dim1322.23142 = phi i32 [ %dim1322.23140, %for.body1376.lr.ph ], [ %dim1322.2, %for.body1376 ]
  %add.ptr.sum2955 = add i64 %indvars.iv3330, %idx.ext, !dbg !743
  %arrayidx1378 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2955, !dbg !743
  %327 = load i32* %arrayidx1378, align 4, !dbg !743, !tbaa !407
  %arrayidx1380 = getelementptr inbounds i32* %3, i64 %indvars.iv3330, !dbg !743
  store i32 %327, i32* %arrayidx1380, align 4, !dbg !743, !tbaa !407
  %dim1322.2 = add nsw i32 %dim1322.23142, -1, !dbg !741
  %cmp1374 = icmp sgt i32 %dim1322.2, 0, !dbg !741
  %indvars.iv.next3331 = add i64 %indvars.iv3330, -1, !dbg !741
  br i1 %cmp1374, label %for.body1376, label %if.end1384, !dbg !741

if.end1384:                                       ; preds = %for.cond1373.preheader, %for.body1376
  %328 = load i32* %3, align 4, !dbg !724, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !269), !dbg !733
  br i1 %cmp1335, label %for.body1390, label %for.end1399, !dbg !733

for.body1390:                                     ; preds = %if.end1384, %if.end1384.thread, %for.body1390
  %indvars.iv3333 = phi i64 [ %indvars.iv.next3334, %for.body1390 ], [ 1, %if.end1384.thread ], [ 1, %if.end1384 ]
  %idx1323.03145 = phi i32 [ %add1396, %for.body1390 ], [ %321, %if.end1384.thread ], [ %328, %if.end1384 ]
  %arrayidx1392 = getelementptr inbounds i32* %3, i64 %indvars.iv3333, !dbg !745
  %329 = load i32* %arrayidx1392, align 4, !dbg !745, !tbaa !407
  %add.ptr51.sum2952 = add i64 %indvars.iv3333, %idx.ext50, !dbg !745
  %arrayidx1394 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2952, !dbg !745
  %330 = load i32* %arrayidx1394, align 4, !dbg !745, !tbaa !407
  %mul1395 = mul nsw i32 %330, %329, !dbg !745
  %add1396 = add nsw i32 %mul1395, %idx1323.03145, !dbg !745
  call void @llvm.dbg.value(metadata !{i32 %add1396}, i64 0, metadata !272), !dbg !745
  %indvars.iv.next3334 = add i64 %indvars.iv3333, 1, !dbg !733
  %331 = trunc i64 %indvars.iv.next3334 to i32, !dbg !733
  %cmp1388 = icmp slt i32 %331, %317, !dbg !733
  br i1 %cmp1388, label %for.body1390, label %for.end1399, !dbg !733

for.end1399:                                      ; preds = %for.body1390, %if.end1384.thread3430, %if.end1384
  %idx1323.0.lcssa = phi i32 [ %328, %if.end1384 ], [ %318, %if.end1384.thread3430 ], [ %add1396, %for.body1390 ]
  %332 = load i32* %add.ptr43, align 4, !dbg !724, !tbaa !407
  %cmp1401 = icmp eq i32 %332, 1, !dbg !724
  br i1 %cmp1401, label %if.then1403, label %for.cond1411.preheader, !dbg !724

for.cond1411.preheader:                           ; preds = %for.end1399
  br i1 %cmp14123147, label %for.body1414.lr.ph, label %if.end1423, !dbg !730

for.body1414.lr.ph:                               ; preds = %for.cond1411.preheader
  %333 = sext i32 %332 to i64
  %334 = sext i32 %idx1323.0.lcssa to i64, !dbg !730
  br label %for.body1414, !dbg !730

if.then1403:                                      ; preds = %for.end1399
  %335 = bitcast float* %typed_hdata1326.0 to i8*, !dbg !726
  %idx.ext1404 = sext i32 %idx1323.0.lcssa to i64, !dbg !726
  %add.ptr1405 = getelementptr inbounds float* %311, i64 %idx.ext1404, !dbg !726
  %336 = bitcast float* %add.ptr1405 to i8*, !dbg !726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %335, i8* %336, i64 %mul1407, i32 4, i1 false), !dbg !726
  %add.ptr1409 = getelementptr inbounds float* %typed_hdata1326.0, i64 %conv1406, !dbg !726
  call void @llvm.dbg.value(metadata !{float* %add.ptr1409}, i64 0, metadata !277), !dbg !726
  %.pre3411 = load i32* %dim, align 4, !dbg !724, !tbaa !407
  br label %if.end1423, !dbg !726

for.body1414:                                     ; preds = %for.body1414.lr.ph, %for.body1414
  %indvars.iv3335 = phi i64 [ 0, %for.body1414.lr.ph ], [ %indvars.iv.next3336, %for.body1414 ]
  %typed_hdata1326.13149 = phi float* [ %typed_hdata1326.0, %for.body1414.lr.ph ], [ %incdec.ptr1418, %for.body1414 ]
  %337 = add nsw i64 %indvars.iv3335, %334, !dbg !747
  %arrayidx1417 = getelementptr inbounds float* %311, i64 %337, !dbg !747
  %338 = load float* %arrayidx1417, align 4, !dbg !747, !tbaa !749
  %incdec.ptr1418 = getelementptr inbounds float* %typed_hdata1326.13149, i64 1, !dbg !747
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr1418}, i64 0, metadata !277), !dbg !747
  store float %338, float* %typed_hdata1326.13149, align 4, !dbg !747, !tbaa !749
  %indvars.iv.next3336 = add i64 %indvars.iv3335, %333, !dbg !730
  %339 = trunc i64 %indvars.iv.next3336 to i32, !dbg !730
  %cmp1412 = icmp slt i32 %339, %sub1332, !dbg !730
  br i1 %cmp1412, label %for.body1414, label %if.end1423, !dbg !730

if.end1423:                                       ; preds = %for.cond1411.preheader, %for.body1414, %if.then1403
  %340 = phi i32 [ %.pre3411, %if.then1403 ], [ %317, %for.body1414 ], [ %317, %for.cond1411.preheader ], !dbg !724
  %typed_hdata1326.2 = phi float* [ %add.ptr1409, %if.then1403 ], [ %incdec.ptr1418, %for.body1414 ], [ %typed_hdata1326.0, %for.cond1411.preheader ]
  %cmp1425 = icmp sgt i32 %340, 1, !dbg !724
  br i1 %cmp1425, label %if.then1427, label %if.end2020, !dbg !724

if.then1427:                                      ; preds = %if.end1423
  %341 = load i32* %arrayidx1429, align 4, !dbg !728, !tbaa !407
  %342 = load i32* %316, align 4, !dbg !728, !tbaa !407
  %add1432 = add nsw i32 %342, %341, !dbg !728
  store i32 %add1432, i32* %316, align 4, !dbg !728, !tbaa !407
  br label %while.body1333, !dbg !724

sw.bb1436:                                        ; preds = %for.end516
  %343 = bitcast i8* %call452 to %struct.CCTK_COMPLEX8*, !dbg !750
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %343}, i64 0, metadata !283), !dbg !750
  %344 = bitcast i8* %call497 to %struct.CCTK_COMPLEX8*, !dbg !750
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %344}, i64 0, metadata !290), !dbg !750
  %345 = bitcast i32* %add.ptr to i8*, !dbg !750
  %conv1444 = sext i32 %93 to i64, !dbg !750
  %mul1445 = shl nsw i64 %conv1444, 2, !dbg !750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %345, i64 %mul1445, i32 4, i1 false), !dbg !750
  %346 = load i32* %add.ptr31, align 4, !dbg !750, !tbaa !407
  %347 = load i32* %add.ptr, align 4, !dbg !750, !tbaa !407
  %sub1448 = sub nsw i32 %346, %347, !dbg !750
  call void @llvm.dbg.value(metadata !{i32 %sub1448}, i64 0, metadata !282), !dbg !750
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !280), !dbg !750
  %arrayidx1455 = getelementptr inbounds i8* %call25, i64 4, !dbg !751
  %348 = bitcast i8* %arrayidx1455 to i32*, !dbg !751
  %add.ptr31.sum29462947 = or i64 %idx.ext30, 1, !dbg !751
  %arrayidx1457 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29462947, !dbg !751
  %conv1522 = sext i32 %sub1448 to i64, !dbg !753
  %mul1523 = shl nsw i64 %conv1522, 3, !dbg !753
  %add.ptr43.sum2944 = add i64 %idx.ext42, 1, !dbg !755
  %arrayidx1545 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2944, !dbg !755
  %cmp15283162 = icmp sgt i32 %sub1448, 0, !dbg !757
  br label %while.body1449, !dbg !750

while.body1449:                                   ; preds = %sw.bb1436, %if.then1543
  %349 = phi i32 [ %93, %sw.bb1436 ], [ %371, %if.then1543 ]
  %typed_hdata1442.0 = phi %struct.CCTK_COMPLEX8* [ %344, %sw.bb1436 ], [ %typed_hdata1442.2, %if.then1543 ]
  %cmp1451 = icmp sgt i32 %349, 1, !dbg !751
  br i1 %cmp1451, label %land.lhs.true1453, label %if.end1500.thread3431, !dbg !751

if.end1500.thread3431:                            ; preds = %while.body1449
  %350 = load i32* %3, align 4, !dbg !751, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !278), !dbg !760
  br label %for.end1515, !dbg !760

land.lhs.true1453:                                ; preds = %while.body1449
  %351 = load i32* %348, align 4, !dbg !751, !tbaa !407
  %352 = load i32* %arrayidx1457, align 4, !dbg !751, !tbaa !407
  %cmp1458 = icmp slt i32 %351, %352, !dbg !751
  br i1 %cmp1458, label %if.end1500.thread, label %for.cond1462.preheader, !dbg !751

if.end1500.thread:                                ; preds = %land.lhs.true1453
  %353 = load i32* %3, align 4, !dbg !751, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !278), !dbg !760
  br label %for.body1506, !dbg !760

for.cond1462.preheader:                           ; preds = %land.lhs.true1453
  %cmp14643152 = icmp sgt i32 %349, 2, !dbg !762
  br i1 %cmp14643152, label %for.body1466, label %for.end1482, !dbg !762

for.cond1462:                                     ; preds = %for.body1466
  %354 = trunc i64 %indvars.iv.next3341 to i32, !dbg !762
  %cmp1464 = icmp slt i32 %354, %349, !dbg !762
  br i1 %cmp1464, label %for.body1466, label %for.end1482, !dbg !762

for.body1466:                                     ; preds = %for.cond1462.preheader, %for.cond1462
  %indvars.iv3340 = phi i64 [ %indvars.iv.next3341, %for.cond1462 ], [ 2, %for.cond1462.preheader ]
  %dim1438.13153 = phi i32 [ %inc1481, %for.cond1462 ], [ 2, %for.cond1462.preheader ]
  %add.ptr43.sum2949 = add i64 %indvars.iv3340, %idx.ext42, !dbg !765
  %arrayidx1468 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2949, !dbg !765
  %355 = load i32* %arrayidx1468, align 4, !dbg !765, !tbaa !407
  %arrayidx1470 = getelementptr inbounds i32* %3, i64 %indvars.iv3340, !dbg !765
  %356 = load i32* %arrayidx1470, align 4, !dbg !765, !tbaa !407
  %add1471 = add nsw i32 %356, %355, !dbg !765
  store i32 %add1471, i32* %arrayidx1470, align 4, !dbg !765, !tbaa !407
  %add.ptr31.sum2950 = add i64 %indvars.iv3340, %idx.ext30, !dbg !765
  %arrayidx1475 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2950, !dbg !765
  %357 = load i32* %arrayidx1475, align 4, !dbg !765, !tbaa !407
  %cmp1476 = icmp slt i32 %add1471, %357, !dbg !765
  %indvars.iv.next3341 = add i64 %indvars.iv3340, 1, !dbg !762
  %inc1481 = add nsw i32 %dim1438.13153, 1, !dbg !762
  call void @llvm.dbg.value(metadata !{i32 %inc1481}, i64 0, metadata !280), !dbg !762
  br i1 %cmp1476, label %for.end1482, label %for.cond1462, !dbg !765

for.end1482:                                      ; preds = %for.cond1462, %for.body1466, %for.cond1462.preheader
  %dim1438.1.lcssa = phi i32 [ 2, %for.cond1462.preheader ], [ %dim1438.13153, %for.body1466 ], [ %inc1481, %for.cond1462 ]
  %cmp1484 = icmp slt i32 %dim1438.1.lcssa, %349, !dbg !767
  br i1 %cmp1484, label %for.cond1489.preheader, label %if.end2020, !dbg !767

for.cond1489.preheader:                           ; preds = %for.end1482
  %dim1438.23155 = add i32 %dim1438.1.lcssa, -1, !dbg !768
  %cmp14903156 = icmp sgt i32 %dim1438.23155, 0, !dbg !768
  br i1 %cmp14903156, label %for.body1492.lr.ph, label %if.end1500, !dbg !768

for.body1492.lr.ph:                               ; preds = %for.cond1489.preheader
  %358 = sext i32 %dim1438.23155 to i64
  br label %for.body1492, !dbg !768

for.body1492:                                     ; preds = %for.body1492.lr.ph, %for.body1492
  %indvars.iv3342 = phi i64 [ %358, %for.body1492.lr.ph ], [ %indvars.iv.next3343, %for.body1492 ]
  %dim1438.23157 = phi i32 [ %dim1438.23155, %for.body1492.lr.ph ], [ %dim1438.2, %for.body1492 ]
  %add.ptr.sum2948 = add i64 %indvars.iv3342, %idx.ext, !dbg !770
  %arrayidx1494 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2948, !dbg !770
  %359 = load i32* %arrayidx1494, align 4, !dbg !770, !tbaa !407
  %arrayidx1496 = getelementptr inbounds i32* %3, i64 %indvars.iv3342, !dbg !770
  store i32 %359, i32* %arrayidx1496, align 4, !dbg !770, !tbaa !407
  %dim1438.2 = add nsw i32 %dim1438.23157, -1, !dbg !768
  %cmp1490 = icmp sgt i32 %dim1438.2, 0, !dbg !768
  %indvars.iv.next3343 = add i64 %indvars.iv3342, -1, !dbg !768
  br i1 %cmp1490, label %for.body1492, label %if.end1500, !dbg !768

if.end1500:                                       ; preds = %for.cond1489.preheader, %for.body1492
  %360 = load i32* %3, align 4, !dbg !751, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !278), !dbg !760
  br i1 %cmp1451, label %for.body1506, label %for.end1515, !dbg !760

for.body1506:                                     ; preds = %if.end1500, %if.end1500.thread, %for.body1506
  %indvars.iv3345 = phi i64 [ %indvars.iv.next3346, %for.body1506 ], [ 1, %if.end1500.thread ], [ 1, %if.end1500 ]
  %idx1439.03160 = phi i32 [ %add1512, %for.body1506 ], [ %353, %if.end1500.thread ], [ %360, %if.end1500 ]
  %arrayidx1508 = getelementptr inbounds i32* %3, i64 %indvars.iv3345, !dbg !772
  %361 = load i32* %arrayidx1508, align 4, !dbg !772, !tbaa !407
  %add.ptr51.sum2945 = add i64 %indvars.iv3345, %idx.ext50, !dbg !772
  %arrayidx1510 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2945, !dbg !772
  %362 = load i32* %arrayidx1510, align 4, !dbg !772, !tbaa !407
  %mul1511 = mul nsw i32 %362, %361, !dbg !772
  %add1512 = add nsw i32 %mul1511, %idx1439.03160, !dbg !772
  call void @llvm.dbg.value(metadata !{i32 %add1512}, i64 0, metadata !281), !dbg !772
  %indvars.iv.next3346 = add i64 %indvars.iv3345, 1, !dbg !760
  %363 = trunc i64 %indvars.iv.next3346 to i32, !dbg !760
  %cmp1504 = icmp slt i32 %363, %349, !dbg !760
  br i1 %cmp1504, label %for.body1506, label %for.end1515, !dbg !760

for.end1515:                                      ; preds = %for.body1506, %if.end1500.thread3431, %if.end1500
  %idx1439.0.lcssa = phi i32 [ %360, %if.end1500 ], [ %350, %if.end1500.thread3431 ], [ %add1512, %for.body1506 ]
  %364 = load i32* %add.ptr43, align 4, !dbg !751, !tbaa !407
  %cmp1517 = icmp eq i32 %364, 1, !dbg !751
  br i1 %cmp1517, label %if.then1519, label %for.cond1527.preheader, !dbg !751

for.cond1527.preheader:                           ; preds = %for.end1515
  br i1 %cmp15283162, label %for.body1530, label %if.end1539, !dbg !757

if.then1519:                                      ; preds = %for.end1515
  %365 = bitcast %struct.CCTK_COMPLEX8* %typed_hdata1442.0 to i8*, !dbg !753
  %idx.ext1520 = sext i32 %idx1439.0.lcssa to i64, !dbg !753
  %add.ptr1521 = getelementptr inbounds %struct.CCTK_COMPLEX8* %343, i64 %idx.ext1520, !dbg !753
  %366 = bitcast %struct.CCTK_COMPLEX8* %add.ptr1521 to i8*, !dbg !753
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %365, i8* %366, i64 %mul1523, i32 4, i1 false), !dbg !753
  %add.ptr1525 = getelementptr inbounds %struct.CCTK_COMPLEX8* %typed_hdata1442.0, i64 %conv1522, !dbg !753
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %add.ptr1525}, i64 0, metadata !290), !dbg !753
  br label %if.end1539, !dbg !753

for.body1530:                                     ; preds = %for.cond1527.preheader, %for.body1530
  %typed_hdata1442.13164 = phi %struct.CCTK_COMPLEX8* [ %incdec.ptr1531, %for.body1530 ], [ %typed_hdata1442.0, %for.cond1527.preheader ]
  %i1437.13163 = phi i32 [ %add1537, %for.body1530 ], [ 0, %for.cond1527.preheader ]
  %incdec.ptr1531 = getelementptr inbounds %struct.CCTK_COMPLEX8* %typed_hdata1442.13164, i64 1, !dbg !774
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %incdec.ptr1531}, i64 0, metadata !290), !dbg !774
  %add1532 = add nsw i32 %i1437.13163, %idx1439.0.lcssa, !dbg !774
  %idxprom1533 = sext i32 %add1532 to i64, !dbg !774
  %arrayidx1534 = getelementptr inbounds %struct.CCTK_COMPLEX8* %343, i64 %idxprom1533, !dbg !774
  %367 = bitcast %struct.CCTK_COMPLEX8* %arrayidx1534 to i64*, !dbg !774
  %368 = bitcast %struct.CCTK_COMPLEX8* %typed_hdata1442.13164 to i64*, !dbg !774
  %369 = load i64* %367, align 4, !dbg !774
  store i64 %369, i64* %368, align 4, !dbg !774
  %370 = load i32* %add.ptr43, align 4, !dbg !757, !tbaa !407
  %add1537 = add nsw i32 %370, %i1437.13163, !dbg !757
  call void @llvm.dbg.value(metadata !{i32 %add1537}, i64 0, metadata !278), !dbg !757
  %cmp1528 = icmp slt i32 %add1537, %sub1448, !dbg !757
  br i1 %cmp1528, label %for.body1530, label %if.end1539, !dbg !757

if.end1539:                                       ; preds = %for.cond1527.preheader, %for.body1530, %if.then1519
  %typed_hdata1442.2 = phi %struct.CCTK_COMPLEX8* [ %add.ptr1525, %if.then1519 ], [ %typed_hdata1442.0, %for.cond1527.preheader ], [ %incdec.ptr1531, %for.body1530 ]
  %371 = load i32* %dim, align 4, !dbg !751, !tbaa !407
  %cmp1541 = icmp sgt i32 %371, 1, !dbg !751
  br i1 %cmp1541, label %if.then1543, label %if.end2020, !dbg !751

if.then1543:                                      ; preds = %if.end1539
  %372 = load i32* %arrayidx1545, align 4, !dbg !755, !tbaa !407
  %373 = load i32* %348, align 4, !dbg !755, !tbaa !407
  %add1548 = add nsw i32 %373, %372, !dbg !755
  store i32 %add1548, i32* %348, align 4, !dbg !755, !tbaa !407
  br label %while.body1449, !dbg !751

sw.bb1552:                                        ; preds = %for.end516
  %374 = bitcast i8* %call452 to double*, !dbg !776
  call void @llvm.dbg.value(metadata !{double* %374}, i64 0, metadata !296), !dbg !776
  %375 = bitcast i8* %call497 to double*, !dbg !776
  call void @llvm.dbg.value(metadata !{double* %375}, i64 0, metadata !297), !dbg !776
  %376 = bitcast i32* %add.ptr to i8*, !dbg !776
  %conv1560 = sext i32 %93 to i64, !dbg !776
  %mul1561 = shl nsw i64 %conv1560, 2, !dbg !776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %376, i64 %mul1561, i32 4, i1 false), !dbg !776
  %377 = load i32* %add.ptr31, align 4, !dbg !776, !tbaa !407
  %378 = load i32* %add.ptr, align 4, !dbg !776, !tbaa !407
  %sub1564 = sub nsw i32 %377, %378, !dbg !776
  call void @llvm.dbg.value(metadata !{i32 %sub1564}, i64 0, metadata !295), !dbg !776
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !293), !dbg !776
  %arrayidx1571 = getelementptr inbounds i8* %call25, i64 4, !dbg !777
  %379 = bitcast i8* %arrayidx1571 to i32*, !dbg !777
  %add.ptr31.sum29392940 = or i64 %idx.ext30, 1, !dbg !777
  %arrayidx1573 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29392940, !dbg !777
  %conv1638 = sext i32 %sub1564 to i64, !dbg !779
  %mul1639 = shl nsw i64 %conv1638, 3, !dbg !779
  %add.ptr43.sum2937 = add i64 %idx.ext42, 1, !dbg !781
  %arrayidx1661 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2937, !dbg !781
  %cmp16443177 = icmp sgt i32 %sub1564, 0, !dbg !783
  br label %while.body1565, !dbg !776

while.body1565:                                   ; preds = %sw.bb1552, %if.then1659
  %380 = phi i32 [ %93, %sw.bb1552 ], [ %403, %if.then1659 ]
  %typed_hdata1558.0 = phi double* [ %375, %sw.bb1552 ], [ %typed_hdata1558.2, %if.then1659 ]
  %cmp1567 = icmp sgt i32 %380, 1, !dbg !777
  br i1 %cmp1567, label %land.lhs.true1569, label %if.end1616.thread3432, !dbg !777

if.end1616.thread3432:                            ; preds = %while.body1565
  %381 = load i32* %3, align 4, !dbg !777, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !291), !dbg !786
  br label %for.end1631, !dbg !786

land.lhs.true1569:                                ; preds = %while.body1565
  %382 = load i32* %379, align 4, !dbg !777, !tbaa !407
  %383 = load i32* %arrayidx1573, align 4, !dbg !777, !tbaa !407
  %cmp1574 = icmp slt i32 %382, %383, !dbg !777
  br i1 %cmp1574, label %if.end1616.thread, label %for.cond1578.preheader, !dbg !777

if.end1616.thread:                                ; preds = %land.lhs.true1569
  %384 = load i32* %3, align 4, !dbg !777, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !291), !dbg !786
  br label %for.body1622, !dbg !786

for.cond1578.preheader:                           ; preds = %land.lhs.true1569
  %cmp15803167 = icmp sgt i32 %380, 2, !dbg !788
  br i1 %cmp15803167, label %for.body1582, label %for.end1598, !dbg !788

for.cond1578:                                     ; preds = %for.body1582
  %385 = trunc i64 %indvars.iv.next3350 to i32, !dbg !788
  %cmp1580 = icmp slt i32 %385, %380, !dbg !788
  br i1 %cmp1580, label %for.body1582, label %for.end1598, !dbg !788

for.body1582:                                     ; preds = %for.cond1578.preheader, %for.cond1578
  %indvars.iv3349 = phi i64 [ %indvars.iv.next3350, %for.cond1578 ], [ 2, %for.cond1578.preheader ]
  %dim1554.13168 = phi i32 [ %inc1597, %for.cond1578 ], [ 2, %for.cond1578.preheader ]
  %add.ptr43.sum2942 = add i64 %indvars.iv3349, %idx.ext42, !dbg !791
  %arrayidx1584 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2942, !dbg !791
  %386 = load i32* %arrayidx1584, align 4, !dbg !791, !tbaa !407
  %arrayidx1586 = getelementptr inbounds i32* %3, i64 %indvars.iv3349, !dbg !791
  %387 = load i32* %arrayidx1586, align 4, !dbg !791, !tbaa !407
  %add1587 = add nsw i32 %387, %386, !dbg !791
  store i32 %add1587, i32* %arrayidx1586, align 4, !dbg !791, !tbaa !407
  %add.ptr31.sum2943 = add i64 %indvars.iv3349, %idx.ext30, !dbg !791
  %arrayidx1591 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2943, !dbg !791
  %388 = load i32* %arrayidx1591, align 4, !dbg !791, !tbaa !407
  %cmp1592 = icmp slt i32 %add1587, %388, !dbg !791
  %indvars.iv.next3350 = add i64 %indvars.iv3349, 1, !dbg !788
  %inc1597 = add nsw i32 %dim1554.13168, 1, !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %inc1597}, i64 0, metadata !293), !dbg !788
  br i1 %cmp1592, label %for.end1598, label %for.cond1578, !dbg !791

for.end1598:                                      ; preds = %for.cond1578, %for.body1582, %for.cond1578.preheader
  %dim1554.1.lcssa = phi i32 [ 2, %for.cond1578.preheader ], [ %dim1554.13168, %for.body1582 ], [ %inc1597, %for.cond1578 ]
  %cmp1600 = icmp slt i32 %dim1554.1.lcssa, %380, !dbg !793
  br i1 %cmp1600, label %for.cond1605.preheader, label %if.end2020, !dbg !793

for.cond1605.preheader:                           ; preds = %for.end1598
  %dim1554.23170 = add i32 %dim1554.1.lcssa, -1, !dbg !794
  %cmp16063171 = icmp sgt i32 %dim1554.23170, 0, !dbg !794
  br i1 %cmp16063171, label %for.body1608.lr.ph, label %if.end1616, !dbg !794

for.body1608.lr.ph:                               ; preds = %for.cond1605.preheader
  %389 = sext i32 %dim1554.23170 to i64
  br label %for.body1608, !dbg !794

for.body1608:                                     ; preds = %for.body1608.lr.ph, %for.body1608
  %indvars.iv3351 = phi i64 [ %389, %for.body1608.lr.ph ], [ %indvars.iv.next3352, %for.body1608 ]
  %dim1554.23172 = phi i32 [ %dim1554.23170, %for.body1608.lr.ph ], [ %dim1554.2, %for.body1608 ]
  %add.ptr.sum2941 = add i64 %indvars.iv3351, %idx.ext, !dbg !796
  %arrayidx1610 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2941, !dbg !796
  %390 = load i32* %arrayidx1610, align 4, !dbg !796, !tbaa !407
  %arrayidx1612 = getelementptr inbounds i32* %3, i64 %indvars.iv3351, !dbg !796
  store i32 %390, i32* %arrayidx1612, align 4, !dbg !796, !tbaa !407
  %dim1554.2 = add nsw i32 %dim1554.23172, -1, !dbg !794
  %cmp1606 = icmp sgt i32 %dim1554.2, 0, !dbg !794
  %indvars.iv.next3352 = add i64 %indvars.iv3351, -1, !dbg !794
  br i1 %cmp1606, label %for.body1608, label %if.end1616, !dbg !794

if.end1616:                                       ; preds = %for.cond1605.preheader, %for.body1608
  %391 = load i32* %3, align 4, !dbg !777, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !291), !dbg !786
  br i1 %cmp1567, label %for.body1622, label %for.end1631, !dbg !786

for.body1622:                                     ; preds = %if.end1616, %if.end1616.thread, %for.body1622
  %indvars.iv3354 = phi i64 [ %indvars.iv.next3355, %for.body1622 ], [ 1, %if.end1616.thread ], [ 1, %if.end1616 ]
  %idx1555.03175 = phi i32 [ %add1628, %for.body1622 ], [ %384, %if.end1616.thread ], [ %391, %if.end1616 ]
  %arrayidx1624 = getelementptr inbounds i32* %3, i64 %indvars.iv3354, !dbg !798
  %392 = load i32* %arrayidx1624, align 4, !dbg !798, !tbaa !407
  %add.ptr51.sum2938 = add i64 %indvars.iv3354, %idx.ext50, !dbg !798
  %arrayidx1626 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2938, !dbg !798
  %393 = load i32* %arrayidx1626, align 4, !dbg !798, !tbaa !407
  %mul1627 = mul nsw i32 %393, %392, !dbg !798
  %add1628 = add nsw i32 %mul1627, %idx1555.03175, !dbg !798
  call void @llvm.dbg.value(metadata !{i32 %add1628}, i64 0, metadata !294), !dbg !798
  %indvars.iv.next3355 = add i64 %indvars.iv3354, 1, !dbg !786
  %394 = trunc i64 %indvars.iv.next3355 to i32, !dbg !786
  %cmp1620 = icmp slt i32 %394, %380, !dbg !786
  br i1 %cmp1620, label %for.body1622, label %for.end1631, !dbg !786

for.end1631:                                      ; preds = %for.body1622, %if.end1616.thread3432, %if.end1616
  %idx1555.0.lcssa = phi i32 [ %391, %if.end1616 ], [ %381, %if.end1616.thread3432 ], [ %add1628, %for.body1622 ]
  %395 = load i32* %add.ptr43, align 4, !dbg !777, !tbaa !407
  %cmp1633 = icmp eq i32 %395, 1, !dbg !777
  br i1 %cmp1633, label %if.then1635, label %for.cond1643.preheader, !dbg !777

for.cond1643.preheader:                           ; preds = %for.end1631
  br i1 %cmp16443177, label %for.body1646.lr.ph, label %if.end1655, !dbg !783

for.body1646.lr.ph:                               ; preds = %for.cond1643.preheader
  %396 = sext i32 %395 to i64
  %397 = sext i32 %idx1555.0.lcssa to i64, !dbg !783
  br label %for.body1646, !dbg !783

if.then1635:                                      ; preds = %for.end1631
  %398 = bitcast double* %typed_hdata1558.0 to i8*, !dbg !779
  %idx.ext1636 = sext i32 %idx1555.0.lcssa to i64, !dbg !779
  %add.ptr1637 = getelementptr inbounds double* %374, i64 %idx.ext1636, !dbg !779
  %399 = bitcast double* %add.ptr1637 to i8*, !dbg !779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %398, i8* %399, i64 %mul1639, i32 8, i1 false), !dbg !779
  %add.ptr1641 = getelementptr inbounds double* %typed_hdata1558.0, i64 %conv1638, !dbg !779
  call void @llvm.dbg.value(metadata !{double* %add.ptr1641}, i64 0, metadata !297), !dbg !779
  %.pre3412 = load i32* %dim, align 4, !dbg !777, !tbaa !407
  br label %if.end1655, !dbg !779

for.body1646:                                     ; preds = %for.body1646.lr.ph, %for.body1646
  %indvars.iv3356 = phi i64 [ 0, %for.body1646.lr.ph ], [ %indvars.iv.next3357, %for.body1646 ]
  %typed_hdata1558.13179 = phi double* [ %typed_hdata1558.0, %for.body1646.lr.ph ], [ %incdec.ptr1650, %for.body1646 ]
  %400 = add nsw i64 %indvars.iv3356, %397, !dbg !800
  %arrayidx1649 = getelementptr inbounds double* %374, i64 %400, !dbg !800
  %401 = load double* %arrayidx1649, align 8, !dbg !800, !tbaa !615
  %incdec.ptr1650 = getelementptr inbounds double* %typed_hdata1558.13179, i64 1, !dbg !800
  call void @llvm.dbg.value(metadata !{double* %incdec.ptr1650}, i64 0, metadata !297), !dbg !800
  store double %401, double* %typed_hdata1558.13179, align 8, !dbg !800, !tbaa !615
  %indvars.iv.next3357 = add i64 %indvars.iv3356, %396, !dbg !783
  %402 = trunc i64 %indvars.iv.next3357 to i32, !dbg !783
  %cmp1644 = icmp slt i32 %402, %sub1564, !dbg !783
  br i1 %cmp1644, label %for.body1646, label %if.end1655, !dbg !783

if.end1655:                                       ; preds = %for.cond1643.preheader, %for.body1646, %if.then1635
  %403 = phi i32 [ %.pre3412, %if.then1635 ], [ %380, %for.body1646 ], [ %380, %for.cond1643.preheader ], !dbg !777
  %typed_hdata1558.2 = phi double* [ %add.ptr1641, %if.then1635 ], [ %incdec.ptr1650, %for.body1646 ], [ %typed_hdata1558.0, %for.cond1643.preheader ]
  %cmp1657 = icmp sgt i32 %403, 1, !dbg !777
  br i1 %cmp1657, label %if.then1659, label %if.end2020, !dbg !777

if.then1659:                                      ; preds = %if.end1655
  %404 = load i32* %arrayidx1661, align 4, !dbg !781, !tbaa !407
  %405 = load i32* %379, align 4, !dbg !781, !tbaa !407
  %add1664 = add nsw i32 %405, %404, !dbg !781
  store i32 %add1664, i32* %379, align 4, !dbg !781, !tbaa !407
  br label %while.body1565, !dbg !777

sw.bb1668:                                        ; preds = %for.end516
  %406 = bitcast i8* %call452 to %struct.CCTK_COMPLEX16*, !dbg !802
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %406}, i64 0, metadata !303), !dbg !802
  %407 = bitcast i8* %call497 to %struct.CCTK_COMPLEX16*, !dbg !802
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %407}, i64 0, metadata !304), !dbg !802
  %408 = bitcast i32* %add.ptr to i8*, !dbg !802
  %conv1676 = sext i32 %93 to i64, !dbg !802
  %mul1677 = shl nsw i64 %conv1676, 2, !dbg !802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %408, i64 %mul1677, i32 4, i1 false), !dbg !802
  %409 = load i32* %add.ptr31, align 4, !dbg !802, !tbaa !407
  %410 = load i32* %add.ptr, align 4, !dbg !802, !tbaa !407
  %sub1680 = sub nsw i32 %409, %410, !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %sub1680}, i64 0, metadata !302), !dbg !802
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !300), !dbg !802
  %arrayidx1687 = getelementptr inbounds i8* %call25, i64 4, !dbg !803
  %411 = bitcast i8* %arrayidx1687 to i32*, !dbg !803
  %add.ptr31.sum29322933 = or i64 %idx.ext30, 1, !dbg !803
  %arrayidx1689 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29322933, !dbg !803
  %conv1754 = sext i32 %sub1680 to i64, !dbg !805
  %mul1755 = shl nsw i64 %conv1754, 4, !dbg !805
  %add.ptr43.sum2930 = add i64 %idx.ext42, 1, !dbg !807
  %arrayidx1777 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2930, !dbg !807
  %cmp17603192 = icmp sgt i32 %sub1680, 0, !dbg !809
  br label %while.body1681, !dbg !802

while.body1681:                                   ; preds = %sw.bb1668, %if.then1775
  %412 = phi i32 [ %93, %sw.bb1668 ], [ %433, %if.then1775 ]
  %typed_hdata1674.0 = phi %struct.CCTK_COMPLEX16* [ %407, %sw.bb1668 ], [ %typed_hdata1674.2, %if.then1775 ]
  %cmp1683 = icmp sgt i32 %412, 1, !dbg !803
  br i1 %cmp1683, label %land.lhs.true1685, label %if.end1732.thread3433, !dbg !803

if.end1732.thread3433:                            ; preds = %while.body1681
  %413 = load i32* %3, align 4, !dbg !803, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !298), !dbg !812
  br label %for.end1747, !dbg !812

land.lhs.true1685:                                ; preds = %while.body1681
  %414 = load i32* %411, align 4, !dbg !803, !tbaa !407
  %415 = load i32* %arrayidx1689, align 4, !dbg !803, !tbaa !407
  %cmp1690 = icmp slt i32 %414, %415, !dbg !803
  br i1 %cmp1690, label %if.end1732.thread, label %for.cond1694.preheader, !dbg !803

if.end1732.thread:                                ; preds = %land.lhs.true1685
  %416 = load i32* %3, align 4, !dbg !803, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !298), !dbg !812
  br label %for.body1738, !dbg !812

for.cond1694.preheader:                           ; preds = %land.lhs.true1685
  %cmp16963182 = icmp sgt i32 %412, 2, !dbg !814
  br i1 %cmp16963182, label %for.body1698, label %for.end1714, !dbg !814

for.cond1694:                                     ; preds = %for.body1698
  %417 = trunc i64 %indvars.iv.next3362 to i32, !dbg !814
  %cmp1696 = icmp slt i32 %417, %412, !dbg !814
  br i1 %cmp1696, label %for.body1698, label %for.end1714, !dbg !814

for.body1698:                                     ; preds = %for.cond1694.preheader, %for.cond1694
  %indvars.iv3361 = phi i64 [ %indvars.iv.next3362, %for.cond1694 ], [ 2, %for.cond1694.preheader ]
  %dim1670.13183 = phi i32 [ %inc1713, %for.cond1694 ], [ 2, %for.cond1694.preheader ]
  %add.ptr43.sum2935 = add i64 %indvars.iv3361, %idx.ext42, !dbg !817
  %arrayidx1700 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2935, !dbg !817
  %418 = load i32* %arrayidx1700, align 4, !dbg !817, !tbaa !407
  %arrayidx1702 = getelementptr inbounds i32* %3, i64 %indvars.iv3361, !dbg !817
  %419 = load i32* %arrayidx1702, align 4, !dbg !817, !tbaa !407
  %add1703 = add nsw i32 %419, %418, !dbg !817
  store i32 %add1703, i32* %arrayidx1702, align 4, !dbg !817, !tbaa !407
  %add.ptr31.sum2936 = add i64 %indvars.iv3361, %idx.ext30, !dbg !817
  %arrayidx1707 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2936, !dbg !817
  %420 = load i32* %arrayidx1707, align 4, !dbg !817, !tbaa !407
  %cmp1708 = icmp slt i32 %add1703, %420, !dbg !817
  %indvars.iv.next3362 = add i64 %indvars.iv3361, 1, !dbg !814
  %inc1713 = add nsw i32 %dim1670.13183, 1, !dbg !814
  call void @llvm.dbg.value(metadata !{i32 %inc1713}, i64 0, metadata !300), !dbg !814
  br i1 %cmp1708, label %for.end1714, label %for.cond1694, !dbg !817

for.end1714:                                      ; preds = %for.cond1694, %for.body1698, %for.cond1694.preheader
  %dim1670.1.lcssa = phi i32 [ 2, %for.cond1694.preheader ], [ %dim1670.13183, %for.body1698 ], [ %inc1713, %for.cond1694 ]
  %cmp1716 = icmp slt i32 %dim1670.1.lcssa, %412, !dbg !819
  br i1 %cmp1716, label %for.cond1721.preheader, label %if.end2020, !dbg !819

for.cond1721.preheader:                           ; preds = %for.end1714
  %dim1670.23185 = add i32 %dim1670.1.lcssa, -1, !dbg !820
  %cmp17223186 = icmp sgt i32 %dim1670.23185, 0, !dbg !820
  br i1 %cmp17223186, label %for.body1724.lr.ph, label %if.end1732, !dbg !820

for.body1724.lr.ph:                               ; preds = %for.cond1721.preheader
  %421 = sext i32 %dim1670.23185 to i64
  br label %for.body1724, !dbg !820

for.body1724:                                     ; preds = %for.body1724.lr.ph, %for.body1724
  %indvars.iv3363 = phi i64 [ %421, %for.body1724.lr.ph ], [ %indvars.iv.next3364, %for.body1724 ]
  %dim1670.23187 = phi i32 [ %dim1670.23185, %for.body1724.lr.ph ], [ %dim1670.2, %for.body1724 ]
  %add.ptr.sum2934 = add i64 %indvars.iv3363, %idx.ext, !dbg !822
  %arrayidx1726 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2934, !dbg !822
  %422 = load i32* %arrayidx1726, align 4, !dbg !822, !tbaa !407
  %arrayidx1728 = getelementptr inbounds i32* %3, i64 %indvars.iv3363, !dbg !822
  store i32 %422, i32* %arrayidx1728, align 4, !dbg !822, !tbaa !407
  %dim1670.2 = add nsw i32 %dim1670.23187, -1, !dbg !820
  %cmp1722 = icmp sgt i32 %dim1670.2, 0, !dbg !820
  %indvars.iv.next3364 = add i64 %indvars.iv3363, -1, !dbg !820
  br i1 %cmp1722, label %for.body1724, label %if.end1732, !dbg !820

if.end1732:                                       ; preds = %for.cond1721.preheader, %for.body1724
  %423 = load i32* %3, align 4, !dbg !803, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !298), !dbg !812
  br i1 %cmp1683, label %for.body1738, label %for.end1747, !dbg !812

for.body1738:                                     ; preds = %if.end1732, %if.end1732.thread, %for.body1738
  %indvars.iv3366 = phi i64 [ %indvars.iv.next3367, %for.body1738 ], [ 1, %if.end1732.thread ], [ 1, %if.end1732 ]
  %idx1671.03190 = phi i32 [ %add1744, %for.body1738 ], [ %416, %if.end1732.thread ], [ %423, %if.end1732 ]
  %arrayidx1740 = getelementptr inbounds i32* %3, i64 %indvars.iv3366, !dbg !824
  %424 = load i32* %arrayidx1740, align 4, !dbg !824, !tbaa !407
  %add.ptr51.sum2931 = add i64 %indvars.iv3366, %idx.ext50, !dbg !824
  %arrayidx1742 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2931, !dbg !824
  %425 = load i32* %arrayidx1742, align 4, !dbg !824, !tbaa !407
  %mul1743 = mul nsw i32 %425, %424, !dbg !824
  %add1744 = add nsw i32 %mul1743, %idx1671.03190, !dbg !824
  call void @llvm.dbg.value(metadata !{i32 %add1744}, i64 0, metadata !301), !dbg !824
  %indvars.iv.next3367 = add i64 %indvars.iv3366, 1, !dbg !812
  %426 = trunc i64 %indvars.iv.next3367 to i32, !dbg !812
  %cmp1736 = icmp slt i32 %426, %412, !dbg !812
  br i1 %cmp1736, label %for.body1738, label %for.end1747, !dbg !812

for.end1747:                                      ; preds = %for.body1738, %if.end1732.thread3433, %if.end1732
  %idx1671.0.lcssa = phi i32 [ %423, %if.end1732 ], [ %413, %if.end1732.thread3433 ], [ %add1744, %for.body1738 ]
  %427 = load i32* %add.ptr43, align 4, !dbg !803, !tbaa !407
  %cmp1749 = icmp eq i32 %427, 1, !dbg !803
  br i1 %cmp1749, label %if.then1751, label %for.cond1759.preheader, !dbg !803

for.cond1759.preheader:                           ; preds = %for.end1747
  br i1 %cmp17603192, label %for.body1762, label %if.end1771, !dbg !809

if.then1751:                                      ; preds = %for.end1747
  %428 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata1674.0 to i8*, !dbg !805
  %idx.ext1752 = sext i32 %idx1671.0.lcssa to i64, !dbg !805
  %add.ptr1753 = getelementptr inbounds %struct.CCTK_COMPLEX16* %406, i64 %idx.ext1752, !dbg !805
  %429 = bitcast %struct.CCTK_COMPLEX16* %add.ptr1753 to i8*, !dbg !805
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %428, i8* %429, i64 %mul1755, i32 8, i1 false), !dbg !805
  %add.ptr1757 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata1674.0, i64 %conv1754, !dbg !805
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %add.ptr1757}, i64 0, metadata !304), !dbg !805
  br label %if.end1771, !dbg !805

for.body1762:                                     ; preds = %for.cond1759.preheader, %for.body1762
  %typed_hdata1674.13194 = phi %struct.CCTK_COMPLEX16* [ %incdec.ptr1763, %for.body1762 ], [ %typed_hdata1674.0, %for.cond1759.preheader ]
  %i1669.13193 = phi i32 [ %add1769, %for.body1762 ], [ 0, %for.cond1759.preheader ]
  %incdec.ptr1763 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata1674.13194, i64 1, !dbg !826
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %incdec.ptr1763}, i64 0, metadata !304), !dbg !826
  %add1764 = add nsw i32 %i1669.13193, %idx1671.0.lcssa, !dbg !826
  %idxprom1765 = sext i32 %add1764 to i64, !dbg !826
  %arrayidx1766 = getelementptr inbounds %struct.CCTK_COMPLEX16* %406, i64 %idxprom1765, !dbg !826
  %430 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata1674.13194 to i8*, !dbg !826
  %431 = bitcast %struct.CCTK_COMPLEX16* %arrayidx1766 to i8*, !dbg !826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %430, i8* %431, i64 16, i32 8, i1 false), !dbg !826, !tbaa.struct !642
  %432 = load i32* %add.ptr43, align 4, !dbg !809, !tbaa !407
  %add1769 = add nsw i32 %432, %i1669.13193, !dbg !809
  call void @llvm.dbg.value(metadata !{i32 %add1769}, i64 0, metadata !298), !dbg !809
  %cmp1760 = icmp slt i32 %add1769, %sub1680, !dbg !809
  br i1 %cmp1760, label %for.body1762, label %if.end1771, !dbg !809

if.end1771:                                       ; preds = %for.cond1759.preheader, %for.body1762, %if.then1751
  %typed_hdata1674.2 = phi %struct.CCTK_COMPLEX16* [ %add.ptr1757, %if.then1751 ], [ %typed_hdata1674.0, %for.cond1759.preheader ], [ %incdec.ptr1763, %for.body1762 ]
  %433 = load i32* %dim, align 4, !dbg !803, !tbaa !407
  %cmp1773 = icmp sgt i32 %433, 1, !dbg !803
  br i1 %cmp1773, label %if.then1775, label %if.end2020, !dbg !803

if.then1775:                                      ; preds = %if.end1771
  %434 = load i32* %arrayidx1777, align 4, !dbg !807, !tbaa !407
  %435 = load i32* %411, align 4, !dbg !807, !tbaa !407
  %add1780 = add nsw i32 %435, %434, !dbg !807
  store i32 %add1780, i32* %411, align 4, !dbg !807, !tbaa !407
  br label %while.body1681, !dbg !803

sw.bb1784:                                        ; preds = %for.end516
  %436 = bitcast i8* %call452 to x86_fp80*, !dbg !828
  call void @llvm.dbg.value(metadata !{x86_fp80* %436}, i64 0, metadata !310), !dbg !828
  %437 = bitcast i8* %call497 to x86_fp80*, !dbg !828
  call void @llvm.dbg.value(metadata !{x86_fp80* %437}, i64 0, metadata !313), !dbg !828
  %438 = bitcast i32* %add.ptr to i8*, !dbg !828
  %conv1792 = sext i32 %93 to i64, !dbg !828
  %mul1793 = shl nsw i64 %conv1792, 2, !dbg !828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %438, i64 %mul1793, i32 4, i1 false), !dbg !828
  %439 = load i32* %add.ptr31, align 4, !dbg !828, !tbaa !407
  %440 = load i32* %add.ptr, align 4, !dbg !828, !tbaa !407
  %sub1796 = sub nsw i32 %439, %440, !dbg !828
  call void @llvm.dbg.value(metadata !{i32 %sub1796}, i64 0, metadata !309), !dbg !828
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !307), !dbg !828
  %arrayidx1803 = getelementptr inbounds i8* %call25, i64 4, !dbg !829
  %441 = bitcast i8* %arrayidx1803 to i32*, !dbg !829
  %add.ptr31.sum29252926 = or i64 %idx.ext30, 1, !dbg !829
  %arrayidx1805 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum29252926, !dbg !829
  %conv1870 = sext i32 %sub1796 to i64, !dbg !831
  %mul1871 = shl nsw i64 %conv1870, 4, !dbg !831
  %add.ptr43.sum2923 = add i64 %idx.ext42, 1, !dbg !833
  %arrayidx1893 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2923, !dbg !833
  %cmp18763207 = icmp sgt i32 %sub1796, 0, !dbg !835
  br label %while.body1797, !dbg !828

while.body1797:                                   ; preds = %sw.bb1784, %if.then1891
  %442 = phi i32 [ %93, %sw.bb1784 ], [ %465, %if.then1891 ]
  %typed_hdata1790.0 = phi x86_fp80* [ %437, %sw.bb1784 ], [ %typed_hdata1790.2, %if.then1891 ]
  %cmp1799 = icmp sgt i32 %442, 1, !dbg !829
  br i1 %cmp1799, label %land.lhs.true1801, label %if.end1848.thread3434, !dbg !829

if.end1848.thread3434:                            ; preds = %while.body1797
  %443 = load i32* %3, align 4, !dbg !829, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !305), !dbg !838
  br label %for.end1863, !dbg !838

land.lhs.true1801:                                ; preds = %while.body1797
  %444 = load i32* %441, align 4, !dbg !829, !tbaa !407
  %445 = load i32* %arrayidx1805, align 4, !dbg !829, !tbaa !407
  %cmp1806 = icmp slt i32 %444, %445, !dbg !829
  br i1 %cmp1806, label %if.end1848.thread, label %for.cond1810.preheader, !dbg !829

if.end1848.thread:                                ; preds = %land.lhs.true1801
  %446 = load i32* %3, align 4, !dbg !829, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !305), !dbg !838
  br label %for.body1854, !dbg !838

for.cond1810.preheader:                           ; preds = %land.lhs.true1801
  %cmp18123197 = icmp sgt i32 %442, 2, !dbg !840
  br i1 %cmp18123197, label %for.body1814, label %for.end1830, !dbg !840

for.cond1810:                                     ; preds = %for.body1814
  %447 = trunc i64 %indvars.iv.next3371 to i32, !dbg !840
  %cmp1812 = icmp slt i32 %447, %442, !dbg !840
  br i1 %cmp1812, label %for.body1814, label %for.end1830, !dbg !840

for.body1814:                                     ; preds = %for.cond1810.preheader, %for.cond1810
  %indvars.iv3370 = phi i64 [ %indvars.iv.next3371, %for.cond1810 ], [ 2, %for.cond1810.preheader ]
  %dim1786.13198 = phi i32 [ %inc1829, %for.cond1810 ], [ 2, %for.cond1810.preheader ]
  %add.ptr43.sum2928 = add i64 %indvars.iv3370, %idx.ext42, !dbg !843
  %arrayidx1816 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2928, !dbg !843
  %448 = load i32* %arrayidx1816, align 4, !dbg !843, !tbaa !407
  %arrayidx1818 = getelementptr inbounds i32* %3, i64 %indvars.iv3370, !dbg !843
  %449 = load i32* %arrayidx1818, align 4, !dbg !843, !tbaa !407
  %add1819 = add nsw i32 %449, %448, !dbg !843
  store i32 %add1819, i32* %arrayidx1818, align 4, !dbg !843, !tbaa !407
  %add.ptr31.sum2929 = add i64 %indvars.iv3370, %idx.ext30, !dbg !843
  %arrayidx1823 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2929, !dbg !843
  %450 = load i32* %arrayidx1823, align 4, !dbg !843, !tbaa !407
  %cmp1824 = icmp slt i32 %add1819, %450, !dbg !843
  %indvars.iv.next3371 = add i64 %indvars.iv3370, 1, !dbg !840
  %inc1829 = add nsw i32 %dim1786.13198, 1, !dbg !840
  call void @llvm.dbg.value(metadata !{i32 %inc1829}, i64 0, metadata !307), !dbg !840
  br i1 %cmp1824, label %for.end1830, label %for.cond1810, !dbg !843

for.end1830:                                      ; preds = %for.cond1810, %for.body1814, %for.cond1810.preheader
  %dim1786.1.lcssa = phi i32 [ 2, %for.cond1810.preheader ], [ %dim1786.13198, %for.body1814 ], [ %inc1829, %for.cond1810 ]
  %cmp1832 = icmp slt i32 %dim1786.1.lcssa, %442, !dbg !845
  br i1 %cmp1832, label %for.cond1837.preheader, label %if.end2020, !dbg !845

for.cond1837.preheader:                           ; preds = %for.end1830
  %dim1786.23200 = add i32 %dim1786.1.lcssa, -1, !dbg !846
  %cmp18383201 = icmp sgt i32 %dim1786.23200, 0, !dbg !846
  br i1 %cmp18383201, label %for.body1840.lr.ph, label %if.end1848, !dbg !846

for.body1840.lr.ph:                               ; preds = %for.cond1837.preheader
  %451 = sext i32 %dim1786.23200 to i64
  br label %for.body1840, !dbg !846

for.body1840:                                     ; preds = %for.body1840.lr.ph, %for.body1840
  %indvars.iv3372 = phi i64 [ %451, %for.body1840.lr.ph ], [ %indvars.iv.next3373, %for.body1840 ]
  %dim1786.23202 = phi i32 [ %dim1786.23200, %for.body1840.lr.ph ], [ %dim1786.2, %for.body1840 ]
  %add.ptr.sum2927 = add i64 %indvars.iv3372, %idx.ext, !dbg !848
  %arrayidx1842 = getelementptr inbounds i32* %3, i64 %add.ptr.sum2927, !dbg !848
  %452 = load i32* %arrayidx1842, align 4, !dbg !848, !tbaa !407
  %arrayidx1844 = getelementptr inbounds i32* %3, i64 %indvars.iv3372, !dbg !848
  store i32 %452, i32* %arrayidx1844, align 4, !dbg !848, !tbaa !407
  %dim1786.2 = add nsw i32 %dim1786.23202, -1, !dbg !846
  %cmp1838 = icmp sgt i32 %dim1786.2, 0, !dbg !846
  %indvars.iv.next3373 = add i64 %indvars.iv3372, -1, !dbg !846
  br i1 %cmp1838, label %for.body1840, label %if.end1848, !dbg !846

if.end1848:                                       ; preds = %for.cond1837.preheader, %for.body1840
  %453 = load i32* %3, align 4, !dbg !829, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !305), !dbg !838
  br i1 %cmp1799, label %for.body1854, label %for.end1863, !dbg !838

for.body1854:                                     ; preds = %if.end1848, %if.end1848.thread, %for.body1854
  %indvars.iv3375 = phi i64 [ %indvars.iv.next3376, %for.body1854 ], [ 1, %if.end1848.thread ], [ 1, %if.end1848 ]
  %idx1787.03205 = phi i32 [ %add1860, %for.body1854 ], [ %446, %if.end1848.thread ], [ %453, %if.end1848 ]
  %arrayidx1856 = getelementptr inbounds i32* %3, i64 %indvars.iv3375, !dbg !850
  %454 = load i32* %arrayidx1856, align 4, !dbg !850, !tbaa !407
  %add.ptr51.sum2924 = add i64 %indvars.iv3375, %idx.ext50, !dbg !850
  %arrayidx1858 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum2924, !dbg !850
  %455 = load i32* %arrayidx1858, align 4, !dbg !850, !tbaa !407
  %mul1859 = mul nsw i32 %455, %454, !dbg !850
  %add1860 = add nsw i32 %mul1859, %idx1787.03205, !dbg !850
  call void @llvm.dbg.value(metadata !{i32 %add1860}, i64 0, metadata !308), !dbg !850
  %indvars.iv.next3376 = add i64 %indvars.iv3375, 1, !dbg !838
  %456 = trunc i64 %indvars.iv.next3376 to i32, !dbg !838
  %cmp1852 = icmp slt i32 %456, %442, !dbg !838
  br i1 %cmp1852, label %for.body1854, label %for.end1863, !dbg !838

for.end1863:                                      ; preds = %for.body1854, %if.end1848.thread3434, %if.end1848
  %idx1787.0.lcssa = phi i32 [ %453, %if.end1848 ], [ %443, %if.end1848.thread3434 ], [ %add1860, %for.body1854 ]
  %457 = load i32* %add.ptr43, align 4, !dbg !829, !tbaa !407
  %cmp1865 = icmp eq i32 %457, 1, !dbg !829
  br i1 %cmp1865, label %if.then1867, label %for.cond1875.preheader, !dbg !829

for.cond1875.preheader:                           ; preds = %for.end1863
  br i1 %cmp18763207, label %for.body1878.lr.ph, label %if.end1887, !dbg !835

for.body1878.lr.ph:                               ; preds = %for.cond1875.preheader
  %458 = sext i32 %457 to i64
  %459 = sext i32 %idx1787.0.lcssa to i64, !dbg !835
  br label %for.body1878, !dbg !835

if.then1867:                                      ; preds = %for.end1863
  %460 = bitcast x86_fp80* %typed_hdata1790.0 to i8*, !dbg !831
  %idx.ext1868 = sext i32 %idx1787.0.lcssa to i64, !dbg !831
  %add.ptr1869 = getelementptr inbounds x86_fp80* %436, i64 %idx.ext1868, !dbg !831
  %461 = bitcast x86_fp80* %add.ptr1869 to i8*, !dbg !831
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %460, i8* %461, i64 %mul1871, i32 16, i1 false), !dbg !831
  %add.ptr1873 = getelementptr inbounds x86_fp80* %typed_hdata1790.0, i64 %conv1870, !dbg !831
  call void @llvm.dbg.value(metadata !{x86_fp80* %add.ptr1873}, i64 0, metadata !313), !dbg !831
  %.pre3413 = load i32* %dim, align 4, !dbg !829, !tbaa !407
  br label %if.end1887, !dbg !831

for.body1878:                                     ; preds = %for.body1878.lr.ph, %for.body1878
  %indvars.iv3377 = phi i64 [ 0, %for.body1878.lr.ph ], [ %indvars.iv.next3378, %for.body1878 ]
  %typed_hdata1790.13209 = phi x86_fp80* [ %typed_hdata1790.0, %for.body1878.lr.ph ], [ %incdec.ptr1882, %for.body1878 ]
  %462 = add nsw i64 %indvars.iv3377, %459, !dbg !852
  %arrayidx1881 = getelementptr inbounds x86_fp80* %436, i64 %462, !dbg !852
  %463 = load x86_fp80* %arrayidx1881, align 16, !dbg !852, !tbaa !854
  %incdec.ptr1882 = getelementptr inbounds x86_fp80* %typed_hdata1790.13209, i64 1, !dbg !852
  call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1882}, i64 0, metadata !313), !dbg !852
  store x86_fp80 %463, x86_fp80* %typed_hdata1790.13209, align 16, !dbg !852, !tbaa !854
  %indvars.iv.next3378 = add i64 %indvars.iv3377, %458, !dbg !835
  %464 = trunc i64 %indvars.iv.next3378 to i32, !dbg !835
  %cmp1876 = icmp slt i32 %464, %sub1796, !dbg !835
  br i1 %cmp1876, label %for.body1878, label %if.end1887, !dbg !835

if.end1887:                                       ; preds = %for.cond1875.preheader, %for.body1878, %if.then1867
  %465 = phi i32 [ %.pre3413, %if.then1867 ], [ %442, %for.body1878 ], [ %442, %for.cond1875.preheader ], !dbg !829
  %typed_hdata1790.2 = phi x86_fp80* [ %add.ptr1873, %if.then1867 ], [ %incdec.ptr1882, %for.body1878 ], [ %typed_hdata1790.0, %for.cond1875.preheader ]
  %cmp1889 = icmp sgt i32 %465, 1, !dbg !829
  br i1 %cmp1889, label %if.then1891, label %if.end2020, !dbg !829

if.then1891:                                      ; preds = %if.end1887
  %466 = load i32* %arrayidx1893, align 4, !dbg !833, !tbaa !407
  %467 = load i32* %441, align 4, !dbg !833, !tbaa !407
  %add1896 = add nsw i32 %467, %466, !dbg !833
  store i32 %add1896, i32* %441, align 4, !dbg !833, !tbaa !407
  br label %while.body1797, !dbg !829

sw.bb1900:                                        ; preds = %for.end516
  %468 = bitcast i8* %call452 to %struct.CCTK_COMPLEX32*, !dbg !855
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %468}, i64 0, metadata !319), !dbg !855
  %469 = bitcast i8* %call497 to %struct.CCTK_COMPLEX32*, !dbg !855
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %469}, i64 0, metadata !326), !dbg !855
  %470 = bitcast i32* %add.ptr to i8*, !dbg !855
  %conv1908 = sext i32 %93 to i64, !dbg !855
  %mul1909 = shl nsw i64 %conv1908, 2, !dbg !855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call25, i8* %470, i64 %mul1909, i32 4, i1 false), !dbg !855
  %471 = load i32* %add.ptr31, align 4, !dbg !855, !tbaa !407
  %472 = load i32* %add.ptr, align 4, !dbg !855, !tbaa !407
  %sub1912 = sub nsw i32 %471, %472, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %sub1912}, i64 0, metadata !318), !dbg !855
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !316), !dbg !855
  %arrayidx1919 = getelementptr inbounds i8* %call25, i64 4, !dbg !856
  %473 = bitcast i8* %arrayidx1919 to i32*, !dbg !856
  %add.ptr31.sum2921 = or i64 %idx.ext30, 1, !dbg !856
  %arrayidx1921 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum2921, !dbg !856
  %conv1986 = sext i32 %sub1912 to i64, !dbg !858
  %mul1987 = shl nsw i64 %conv1986, 5, !dbg !858
  %add.ptr43.sum = add i64 %idx.ext42, 1, !dbg !860
  %arrayidx2009 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum, !dbg !860
  %cmp19923222 = icmp sgt i32 %sub1912, 0, !dbg !862
  br label %while.body1913, !dbg !855

while.body1913:                                   ; preds = %sw.bb1900, %if.then2007
  %474 = phi i32 [ %93, %sw.bb1900 ], [ %495, %if.then2007 ]
  %typed_hdata1906.0 = phi %struct.CCTK_COMPLEX32* [ %469, %sw.bb1900 ], [ %typed_hdata1906.2, %if.then2007 ]
  %cmp1915 = icmp sgt i32 %474, 1, !dbg !856
  br i1 %cmp1915, label %land.lhs.true1917, label %if.end1964.thread3435, !dbg !856

if.end1964.thread3435:                            ; preds = %while.body1913
  %475 = load i32* %3, align 4, !dbg !856, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !314), !dbg !865
  br label %for.end1979, !dbg !865

land.lhs.true1917:                                ; preds = %while.body1913
  %476 = load i32* %473, align 4, !dbg !856, !tbaa !407
  %477 = load i32* %arrayidx1921, align 4, !dbg !856, !tbaa !407
  %cmp1922 = icmp slt i32 %476, %477, !dbg !856
  br i1 %cmp1922, label %if.end1964.thread, label %for.cond1926.preheader, !dbg !856

if.end1964.thread:                                ; preds = %land.lhs.true1917
  %478 = load i32* %3, align 4, !dbg !856, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !314), !dbg !865
  br label %for.body1970, !dbg !865

for.cond1926.preheader:                           ; preds = %land.lhs.true1917
  %cmp19283212 = icmp sgt i32 %474, 2, !dbg !867
  br i1 %cmp19283212, label %for.body1930, label %for.end1946, !dbg !867

for.cond1926:                                     ; preds = %for.body1930
  %479 = trunc i64 %indvars.iv.next3383 to i32, !dbg !867
  %cmp1928 = icmp slt i32 %479, %474, !dbg !867
  br i1 %cmp1928, label %for.body1930, label %for.end1946, !dbg !867

for.body1930:                                     ; preds = %for.cond1926.preheader, %for.cond1926
  %indvars.iv3382 = phi i64 [ %indvars.iv.next3383, %for.cond1926 ], [ 2, %for.cond1926.preheader ]
  %dim1902.13213 = phi i32 [ %inc1945, %for.cond1926 ], [ 2, %for.cond1926.preheader ]
  %add.ptr43.sum2922 = add i64 %indvars.iv3382, %idx.ext42, !dbg !870
  %arrayidx1932 = getelementptr inbounds i32* %3, i64 %add.ptr43.sum2922, !dbg !870
  %480 = load i32* %arrayidx1932, align 4, !dbg !870, !tbaa !407
  %arrayidx1934 = getelementptr inbounds i32* %3, i64 %indvars.iv3382, !dbg !870
  %481 = load i32* %arrayidx1934, align 4, !dbg !870, !tbaa !407
  %add1935 = add nsw i32 %481, %480, !dbg !870
  store i32 %add1935, i32* %arrayidx1934, align 4, !dbg !870, !tbaa !407
  %add.ptr31.sum = add i64 %indvars.iv3382, %idx.ext30, !dbg !870
  %arrayidx1939 = getelementptr inbounds i32* %3, i64 %add.ptr31.sum, !dbg !870
  %482 = load i32* %arrayidx1939, align 4, !dbg !870, !tbaa !407
  %cmp1940 = icmp slt i32 %add1935, %482, !dbg !870
  %indvars.iv.next3383 = add i64 %indvars.iv3382, 1, !dbg !867
  %inc1945 = add nsw i32 %dim1902.13213, 1, !dbg !867
  call void @llvm.dbg.value(metadata !{i32 %inc1945}, i64 0, metadata !316), !dbg !867
  br i1 %cmp1940, label %for.end1946, label %for.cond1926, !dbg !870

for.end1946:                                      ; preds = %for.cond1926, %for.body1930, %for.cond1926.preheader
  %dim1902.1.lcssa = phi i32 [ 2, %for.cond1926.preheader ], [ %dim1902.13213, %for.body1930 ], [ %inc1945, %for.cond1926 ]
  %cmp1948 = icmp slt i32 %dim1902.1.lcssa, %474, !dbg !872
  br i1 %cmp1948, label %for.cond1953.preheader, label %if.end2020, !dbg !872

for.cond1953.preheader:                           ; preds = %for.end1946
  %dim1902.23215 = add i32 %dim1902.1.lcssa, -1, !dbg !873
  %cmp19543216 = icmp sgt i32 %dim1902.23215, 0, !dbg !873
  br i1 %cmp19543216, label %for.body1956.lr.ph, label %if.end1964, !dbg !873

for.body1956.lr.ph:                               ; preds = %for.cond1953.preheader
  %483 = sext i32 %dim1902.23215 to i64
  br label %for.body1956, !dbg !873

for.body1956:                                     ; preds = %for.body1956.lr.ph, %for.body1956
  %indvars.iv3384 = phi i64 [ %483, %for.body1956.lr.ph ], [ %indvars.iv.next3385, %for.body1956 ]
  %dim1902.23217 = phi i32 [ %dim1902.23215, %for.body1956.lr.ph ], [ %dim1902.2, %for.body1956 ]
  %add.ptr.sum = add i64 %indvars.iv3384, %idx.ext, !dbg !875
  %arrayidx1958 = getelementptr inbounds i32* %3, i64 %add.ptr.sum, !dbg !875
  %484 = load i32* %arrayidx1958, align 4, !dbg !875, !tbaa !407
  %arrayidx1960 = getelementptr inbounds i32* %3, i64 %indvars.iv3384, !dbg !875
  store i32 %484, i32* %arrayidx1960, align 4, !dbg !875, !tbaa !407
  %dim1902.2 = add nsw i32 %dim1902.23217, -1, !dbg !873
  %cmp1954 = icmp sgt i32 %dim1902.2, 0, !dbg !873
  %indvars.iv.next3385 = add i64 %indvars.iv3384, -1, !dbg !873
  br i1 %cmp1954, label %for.body1956, label %if.end1964, !dbg !873

if.end1964:                                       ; preds = %for.cond1953.preheader, %for.body1956
  %485 = load i32* %3, align 4, !dbg !856, !tbaa !407
  call void @llvm.dbg.value(metadata !531, i64 0, metadata !314), !dbg !865
  br i1 %cmp1915, label %for.body1970, label %for.end1979, !dbg !865

for.body1970:                                     ; preds = %if.end1964, %if.end1964.thread, %for.body1970
  %indvars.iv3387 = phi i64 [ %indvars.iv.next3388, %for.body1970 ], [ 1, %if.end1964.thread ], [ 1, %if.end1964 ]
  %idx1903.03220 = phi i32 [ %add1976, %for.body1970 ], [ %478, %if.end1964.thread ], [ %485, %if.end1964 ]
  %arrayidx1972 = getelementptr inbounds i32* %3, i64 %indvars.iv3387, !dbg !877
  %486 = load i32* %arrayidx1972, align 4, !dbg !877, !tbaa !407
  %add.ptr51.sum = add i64 %indvars.iv3387, %idx.ext50, !dbg !877
  %arrayidx1974 = getelementptr inbounds i32* %3, i64 %add.ptr51.sum, !dbg !877
  %487 = load i32* %arrayidx1974, align 4, !dbg !877, !tbaa !407
  %mul1975 = mul nsw i32 %487, %486, !dbg !877
  %add1976 = add nsw i32 %mul1975, %idx1903.03220, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %add1976}, i64 0, metadata !317), !dbg !877
  %indvars.iv.next3388 = add i64 %indvars.iv3387, 1, !dbg !865
  %488 = trunc i64 %indvars.iv.next3388 to i32, !dbg !865
  %cmp1968 = icmp slt i32 %488, %474, !dbg !865
  br i1 %cmp1968, label %for.body1970, label %for.end1979, !dbg !865

for.end1979:                                      ; preds = %for.body1970, %if.end1964.thread3435, %if.end1964
  %idx1903.0.lcssa = phi i32 [ %485, %if.end1964 ], [ %475, %if.end1964.thread3435 ], [ %add1976, %for.body1970 ]
  %489 = load i32* %add.ptr43, align 4, !dbg !856, !tbaa !407
  %cmp1981 = icmp eq i32 %489, 1, !dbg !856
  br i1 %cmp1981, label %if.then1983, label %for.cond1991.preheader, !dbg !856

for.cond1991.preheader:                           ; preds = %for.end1979
  br i1 %cmp19923222, label %for.body1994, label %if.end2003, !dbg !862

if.then1983:                                      ; preds = %for.end1979
  %490 = bitcast %struct.CCTK_COMPLEX32* %typed_hdata1906.0 to i8*, !dbg !858
  %idx.ext1984 = sext i32 %idx1903.0.lcssa to i64, !dbg !858
  %add.ptr1985 = getelementptr inbounds %struct.CCTK_COMPLEX32* %468, i64 %idx.ext1984, !dbg !858
  %491 = bitcast %struct.CCTK_COMPLEX32* %add.ptr1985 to i8*, !dbg !858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %490, i8* %491, i64 %mul1987, i32 16, i1 false), !dbg !858
  %add.ptr1989 = getelementptr inbounds %struct.CCTK_COMPLEX32* %typed_hdata1906.0, i64 %conv1986, !dbg !858
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %add.ptr1989}, i64 0, metadata !326), !dbg !858
  br label %if.end2003, !dbg !858

for.body1994:                                     ; preds = %for.cond1991.preheader, %for.body1994
  %typed_hdata1906.13224 = phi %struct.CCTK_COMPLEX32* [ %incdec.ptr1995, %for.body1994 ], [ %typed_hdata1906.0, %for.cond1991.preheader ]
  %i1901.13223 = phi i32 [ %add2001, %for.body1994 ], [ 0, %for.cond1991.preheader ]
  %incdec.ptr1995 = getelementptr inbounds %struct.CCTK_COMPLEX32* %typed_hdata1906.13224, i64 1, !dbg !879
  call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %incdec.ptr1995}, i64 0, metadata !326), !dbg !879
  %add1996 = add nsw i32 %i1901.13223, %idx1903.0.lcssa, !dbg !879
  %idxprom1997 = sext i32 %add1996 to i64, !dbg !879
  %arrayidx1998 = getelementptr inbounds %struct.CCTK_COMPLEX32* %468, i64 %idxprom1997, !dbg !879
  %492 = bitcast %struct.CCTK_COMPLEX32* %typed_hdata1906.13224 to i8*, !dbg !879
  %493 = bitcast %struct.CCTK_COMPLEX32* %arrayidx1998 to i8*, !dbg !879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %492, i8* %493, i64 32, i32 16, i1 false), !dbg !879, !tbaa.struct !881
  %494 = load i32* %add.ptr43, align 4, !dbg !862, !tbaa !407
  %add2001 = add nsw i32 %494, %i1901.13223, !dbg !862
  call void @llvm.dbg.value(metadata !{i32 %add2001}, i64 0, metadata !314), !dbg !862
  %cmp1992 = icmp slt i32 %add2001, %sub1912, !dbg !862
  br i1 %cmp1992, label %for.body1994, label %if.end2003, !dbg !862

if.end2003:                                       ; preds = %for.cond1991.preheader, %for.body1994, %if.then1983
  %typed_hdata1906.2 = phi %struct.CCTK_COMPLEX32* [ %add.ptr1989, %if.then1983 ], [ %typed_hdata1906.0, %for.cond1991.preheader ], [ %incdec.ptr1995, %for.body1994 ]
  %495 = load i32* %dim, align 4, !dbg !856, !tbaa !407
  %cmp2005 = icmp sgt i32 %495, 1, !dbg !856
  br i1 %cmp2005, label %if.then2007, label %if.end2020, !dbg !856

if.then2007:                                      ; preds = %if.end2003
  %496 = load i32* %arrayidx2009, align 4, !dbg !860, !tbaa !407
  %497 = load i32* %473, align 4, !dbg !860, !tbaa !407
  %add2012 = add nsw i32 %497, %496, !dbg !860
  store i32 %add2012, i32* %473, align 4, !dbg !860, !tbaa !407
  br label %while.body1913, !dbg !856

sw.default:                                       ; preds = %for.end516
  %call2016 = call i32 @CCTK_Warn(i32 1, i32 616, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !882
  call void @llvm.dbg.value(metadata !883, i64 0, metadata !93), !dbg !884
  br label %if.end2020, !dbg !885

if.else2017:                                      ; preds = %for.end448
  store i8* null, i8** %hdata, align 8, !dbg !886, !tbaa !421
  %conv2018 = sext i32 %hdim.addr.3 to i64, !dbg !888
  %mul2019 = shl nsw i64 %conv2018, 2, !dbg !888
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul2019, i32 4, i1 false), !dbg !888
  br label %if.end2020

if.end2020:                                       ; preds = %for.end1946, %if.end2003, %for.end1830, %if.end1887, %for.end1714, %if.end1771, %for.end1598, %if.end1655, %for.end1482, %if.end1539, %for.end1366, %if.end1423, %for.end1250, %if.end1307, %for.end1134, %if.end1191, %for.end1018, %if.end1075, %for.end902, %if.end959, %for.end786, %if.end843, %for.end670, %if.end727, %for.end557, %if.end612, %sw.default, %if.else2017
  %retval1.0 = phi i32 [ -1, %sw.default ], [ 0, %if.else2017 ], [ 0, %if.end612 ], [ 0, %for.end557 ], [ 0, %if.end727 ], [ 0, %for.end670 ], [ 0, %if.end843 ], [ 0, %for.end786 ], [ 0, %if.end959 ], [ 0, %for.end902 ], [ 0, %if.end1075 ], [ 0, %for.end1018 ], [ 0, %if.end1191 ], [ 0, %for.end1134 ], [ 0, %if.end1307 ], [ 0, %for.end1250 ], [ 0, %if.end1423 ], [ 0, %for.end1366 ], [ 0, %if.end1539 ], [ 0, %for.end1482 ], [ 0, %if.end1655 ], [ 0, %for.end1598 ], [ 0, %if.end1771 ], [ 0, %for.end1714 ], [ 0, %if.end1887 ], [ 0, %for.end1830 ], [ 0, %if.end2003 ], [ 0, %for.end1946 ]
  call void @free(i8* %call25) #8, !dbg !889
  br label %return, !dbg !890

return:                                           ; preds = %if.end2020, %for.end19, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.end19 ], [ %retval1.0, %if.end2020 ]
  ret i32 %retval.0, !dbg !891
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #1 {
entry:
  %vinfo = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !369), !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !370), !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %vtimelvl}, i64 0, metadata !371), !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !372), !dbg !893
  call void @llvm.dbg.value(metadata !{i32* %global_origin}, i64 0, metadata !373), !dbg !894
  call void @llvm.dbg.value(metadata !{i32* %directions}, i64 0, metadata !374), !dbg !895
  call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !375), !dbg !896
  call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !376), !dbg !897
  call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !377), !dbg !898
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !378), !dbg !899
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo}, metadata !381), !dbg !900
  %cmp = icmp slt i32 %vindex, 0, !dbg !901
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !901

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @CCTK_NumVars() #8, !dbg !901
  %cmp1 = icmp sgt i32 %call, %vindex, !dbg !901
  br i1 %cmp1, label %if.end, label %return, !dbg !901

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp slt i32 %vtimelvl, 0, !dbg !902
  br i1 %cmp2, label %return, label %lor.lhs.false3, !dbg !902

lor.lhs.false3:                                   ; preds = %if.end
  %call4 = call i32 @CCTK_NumTimeLevelsFromVarI(i32 %vindex) #8, !dbg !902
  %cmp5 = icmp sgt i32 %call4, %vtimelvl, !dbg !902
  br i1 %cmp5, label %if.end7, label %return, !dbg !902

if.end7:                                          ; preds = %lor.lhs.false3
  %tobool = icmp eq i32* %global_origin, null, !dbg !903
  %tobool9 = icmp eq i32* %directions, null, !dbg !903
  %or.cond = or i1 %tobool, %tobool9, !dbg !903
  %tobool11 = icmp eq i32* %extents, null, !dbg !903
  %or.cond83 = or i1 %or.cond, %tobool11, !dbg !903
  %tobool13 = icmp eq i32* %downsample_, null, !dbg !903
  %or.cond84 = or i1 %or.cond83, %tobool13, !dbg !903
  %tobool15 = icmp eq i8** %hdata, null, !dbg !903
  %or.cond85 = or i1 %or.cond84, %tobool15, !dbg !903
  %tobool17 = icmp eq i32* %hsize, null, !dbg !903
  %or.cond86 = or i1 %or.cond85, %tobool17, !dbg !903
  br i1 %or.cond86, label %return, label %for.cond.preheader, !dbg !903

for.cond.preheader:                               ; preds = %if.end7
  %cmp2090 = icmp sgt i32 %hdim, 0, !dbg !904
  br i1 %cmp2090, label %for.body, label %for.end, !dbg !904

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next93 to i32, !dbg !904
  %cmp20 = icmp slt i32 %0, %hdim, !dbg !904
  br i1 %cmp20, label %for.body, label %for.end, !dbg !904

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %downsample_, i64 %indvars.iv92, !dbg !906
  %1 = load i32* %arrayidx, align 4, !dbg !906, !tbaa !407
  %cmp21 = icmp slt i32 %1, 1, !dbg !906
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !904
  br i1 %cmp21, label %return, label %for.cond, !dbg !906

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call24 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8, !dbg !908
  %call25 = call i32 @CCTK_GroupData(i32 %call24, %struct.cGroup* %vinfo) #8, !dbg !908
  %cmp26 = icmp slt i32 %call25, 0, !dbg !908
  br i1 %cmp26, label %return, label %if.end28, !dbg !908

if.end28:                                         ; preds = %for.end
  %grouptype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 0, !dbg !909
  %2 = load i32* %grouptype, align 4, !dbg !909, !tbaa !407
  %.off = add i32 %2, -2, !dbg !909
  %switch = icmp ult i32 %.off, 2, !dbg !909
  br i1 %switch, label %if.end33, label %return, !dbg !909

if.end33:                                         ; preds = %if.end28
  %cmp34 = icmp slt i32 %hdim, 0, !dbg !910
  br i1 %cmp34, label %return, label %lor.lhs.false35, !dbg !910

lor.lhs.false35:                                  ; preds = %if.end33
  %dim36 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4, !dbg !910
  %3 = load i32* %dim36, align 4, !dbg !910, !tbaa !407
  %cmp37 = icmp slt i32 %3, %hdim, !dbg !910
  br i1 %cmp37, label %return, label %if.end39, !dbg !910

if.end39:                                         ; preds = %lor.lhs.false35
  %cmp41 = icmp eq i32 %3, %hdim, !dbg !911
  br i1 %cmp41, label %if.end62, label %for.cond43.preheader, !dbg !911

for.cond43.preheader:                             ; preds = %if.end39
  %cmp4587 = icmp sgt i32 %3, 0, !dbg !912
  br i1 %cmp4587, label %for.body46, label %return, !dbg !912

for.body46:                                       ; preds = %for.cond43.preheader, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %for.cond43.preheader ]
  %num_directions.089 = phi i32 [ %num_directions.0.inc51, %for.body46 ], [ 0, %for.cond43.preheader ]
  %arrayidx48 = getelementptr inbounds i32* %directions, i64 %indvars.iv, !dbg !915
  %4 = load i32* %arrayidx48, align 4, !dbg !915, !tbaa !407
  %not.tobool49 = icmp ne i32 %4, 0, !dbg !915
  %inc51 = zext i1 %not.tobool49 to i32, !dbg !915
  %num_directions.0.inc51 = add nsw i32 %inc51, %num_directions.089, !dbg !915
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !912
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !912
  %cmp45 = icmp slt i32 %5, %3, !dbg !912
  br i1 %cmp45, label %for.body46, label %for.end55, !dbg !912

for.end55:                                        ; preds = %for.body46
  %cmp56 = icmp eq i32 %num_directions.0.inc51, 0, !dbg !917
  br i1 %cmp56, label %return, label %if.end58, !dbg !917

if.end58:                                         ; preds = %for.end55
  %cmp59 = icmp sgt i32 %num_directions.0.inc51, 1, !dbg !918
  br i1 %cmp59, label %return, label %if.end62, !dbg !918

if.end62:                                         ; preds = %if.end39, %if.end58
  %call63 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8, !dbg !919
  %tobool64 = icmp eq %struct.PGH* %call63, null, !dbg !919
  %. = select i1 %tobool64, i8* getelementptr inbounds ([62 x i8]* @.str16, i64 0, i64 0), i8* null, !dbg !920
  br label %return, !dbg !920

return:                                           ; preds = %for.cond43.preheader, %for.body, %if.end28, %if.end62, %if.end58, %for.end55, %if.end33, %lor.lhs.false35, %for.end, %if.end7, %if.end, %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i8* [ getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), %entry ], [ getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), %lor.lhs.false3 ], [ getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), %if.end7 ], [ getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), %for.end ], [ getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), %if.end28 ], [ getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), %lor.lhs.false35 ], [ getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), %if.end33 ], [ getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), %for.end55 ], [ getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), %if.end58 ], [ %., %if.end62 ], [ getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), %for.body ], [ getelementptr inbounds ([37 x i8]* @.str15, i64 0, i64 0), %for.cond43.preheader ]
  ret i8* %retval.0, !dbg !922
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 %target_proc, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #1 {
entry:
  %vinfo = alloca %struct.cGroup, align 4
  %hdata_local = alloca i8*, align 8
  %my_directions = alloca [3 x i32], align 4
  %my_global_origin = alloca [3 x i32], align 4
  %my_extents = alloca [1 x i32], align 4
  %my_downsample_ = alloca [1 x i32], align 4
  %my_hsize = alloca [1 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !331), !dbg !923
  call void @llvm.dbg.value(metadata !{i32 %target_proc}, i64 0, metadata !332), !dbg !924
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !333), !dbg !925
  call void @llvm.dbg.value(metadata !{i32 %vtimelvl}, i64 0, metadata !334), !dbg !926
  call void @llvm.dbg.value(metadata !{i32 %hdim}, i64 0, metadata !335), !dbg !927
  call void @llvm.dbg.value(metadata !{i32* %global_origin}, i64 0, metadata !336), !dbg !928
  call void @llvm.dbg.value(metadata !{i32* %directions}, i64 0, metadata !337), !dbg !929
  call void @llvm.dbg.value(metadata !{i32* %extents}, i64 0, metadata !338), !dbg !930
  call void @llvm.dbg.value(metadata !{i32* %downsample_}, i64 0, metadata !339), !dbg !931
  call void @llvm.dbg.value(metadata !{i8** %hdata}, i64 0, metadata !340), !dbg !932
  call void @llvm.dbg.value(metadata !{i32* %hsize}, i64 0, metadata !341), !dbg !933
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %vinfo}, metadata !345), !dbg !934
  call void @llvm.dbg.declare(metadata !{i8** %hdata_local}, metadata !346), !dbg !935
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !936, !tbaa !421
  %call = call i32 %0(%struct.cGH* %GH) #8, !dbg !936
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !342), !dbg !936
  %1 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !937, !tbaa !421
  %call2 = call i32 %1(%struct.cGH* %GH) #8, !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !343), !dbg !937
  %cmp = icmp sgt i32 %call2, %target_proc, !dbg !938
  br i1 %cmp, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  %call3 = call i32 @CCTK_Warn(i32 1, i32 747, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !939
  br label %return, !dbg !941

if.end:                                           ; preds = %entry
  %cmp4 = icmp slt i32 %target_proc, 0, !dbg !942
  %cmp5 = icmp eq i32 %call, %target_proc, !dbg !942
  %or.cond = or i1 %cmp4, %cmp5, !dbg !942
  br i1 %or.cond, label %if.then6, label %if.end12, !dbg !942

if.then6:                                         ; preds = %if.end
  %tobool = icmp eq i8** %hdata, null, !dbg !943
  %tobool8 = icmp eq i32* %hsize, null, !dbg !943
  %or.cond141 = or i1 %tobool, %tobool8, !dbg !943
  br i1 %or.cond141, label %if.then9, label %if.end11, !dbg !943

if.then9:                                         ; preds = %if.then6
  %call10 = call i32 @CCTK_Warn(i32 1, i32 756, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !945
  br label %return, !dbg !947

if.end11:                                         ; preds = %if.then6
  store i8* null, i8** %hdata, align 8, !dbg !948, !tbaa !421
  %2 = bitcast i32* %hsize to i8*, !dbg !949
  %conv = sext i32 %hdim to i64, !dbg !949
  %mul = shl nsw i64 %conv, 2, !dbg !949
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 4, i1 false), !dbg !949
  br label %if.end12, !dbg !950

if.end12:                                         ; preds = %if.end, %if.end11
  %call13 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8, !dbg !951
  %call14 = call i32 @CCTK_GroupData(i32 %call13, %struct.cGroup* %vinfo) #8, !dbg !951
  %call15 = call fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #7, !dbg !952
  call void @llvm.dbg.value(metadata !{i8* %call15}, i64 0, metadata !351), !dbg !952
  %tobool16 = icmp eq i8* %call15, null, !dbg !953
  br i1 %tobool16, label %if.end72, label %land.lhs.true, !dbg !953

land.lhs.true:                                    ; preds = %if.end12
  %call17 = call i32 @strcmp(i8* %call15, i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0)) #9, !dbg !953
  %tobool18 = icmp eq i32 %call17, 0, !dbg !953
  br i1 %tobool18, label %if.then19, label %if.then70, !dbg !953

if.then19:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %my_directions}, metadata !354), !dbg !954
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %my_global_origin}, metadata !358), !dbg !954
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %my_extents}, metadata !359), !dbg !955
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %my_downsample_}, metadata !363), !dbg !955
  call void @llvm.dbg.declare(metadata !{[1 x i32]* %my_hsize}, metadata !364), !dbg !955
  %cmp20 = icmp eq i32 %hdim, 1, !dbg !956
  br i1 %cmp20, label %lor.lhs.false22, label %if.then25, !dbg !956

lor.lhs.false22:                                  ; preds = %if.then19
  %dim = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4, !dbg !956
  %3 = load i32* %dim, align 4, !dbg !956, !tbaa !407
  %cmp23 = icmp eq i32 %3, 3, !dbg !956
  br i1 %cmp23, label %if.end27, label %if.then25, !dbg !956

if.then25:                                        ; preds = %lor.lhs.false22, %if.then19
  %call26 = call i32 @CCTK_Warn(i32 1, i32 784, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([93 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !957
  br label %return, !dbg !959

if.end27:                                         ; preds = %lor.lhs.false22
  %4 = load i32* %directions, align 4, !dbg !960, !tbaa !407
  %arrayidx28 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 0, !dbg !960
  store i32 %4, i32* %arrayidx28, align 4, !dbg !960, !tbaa !407
  %arrayidx29 = getelementptr inbounds i32* %directions, i64 1, !dbg !961
  %5 = load i32* %arrayidx29, align 4, !dbg !961, !tbaa !407
  %arrayidx30 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 1, !dbg !961
  store i32 %5, i32* %arrayidx30, align 4, !dbg !961, !tbaa !407
  %arrayidx31 = getelementptr inbounds i32* %directions, i64 2, !dbg !962
  %6 = load i32* %arrayidx31, align 4, !dbg !962, !tbaa !407
  %arrayidx32 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 2, !dbg !962
  store i32 %6, i32* %arrayidx32, align 4, !dbg !962, !tbaa !407
  %7 = load i32* %global_origin, align 4, !dbg !963, !tbaa !407
  %arrayidx34 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 0, !dbg !963
  store i32 %7, i32* %arrayidx34, align 4, !dbg !963, !tbaa !407
  %arrayidx35 = getelementptr inbounds i32* %global_origin, i64 1, !dbg !964
  %8 = load i32* %arrayidx35, align 4, !dbg !964, !tbaa !407
  %arrayidx36 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 1, !dbg !964
  store i32 %8, i32* %arrayidx36, align 4, !dbg !964, !tbaa !407
  %arrayidx37 = getelementptr inbounds i32* %global_origin, i64 2, !dbg !965
  %9 = load i32* %arrayidx37, align 4, !dbg !965, !tbaa !407
  %arrayidx38 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 2, !dbg !965
  store i32 %9, i32* %arrayidx38, align 4, !dbg !965, !tbaa !407
  %10 = load i32* %extents, align 4, !dbg !966, !tbaa !407
  %arrayidx40 = getelementptr inbounds [1 x i32]* %my_extents, i64 0, i64 0, !dbg !966
  store i32 %10, i32* %arrayidx40, align 4, !dbg !966, !tbaa !407
  %11 = load i32* %downsample_, align 4, !dbg !967, !tbaa !407
  %arrayidx42 = getelementptr inbounds [1 x i32]* %my_downsample_, i64 0, i64 0, !dbg !967
  store i32 %11, i32* %arrayidx42, align 4, !dbg !967, !tbaa !407
  %arraydecay46 = getelementptr inbounds [1 x i32]* %my_hsize, i64 0, i64 0, !dbg !968
  %call47 = call i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH* %GH, i32 %vindex, i32 1, i32* %arrayidx28, i32* %arrayidx34, i32* %arrayidx40, i32* %arrayidx42, i32 -1, i32 %target_proc, void (i8*, i8*, i32, i32, i32)* null, i32* %arraydecay46) #8, !dbg !968
  call void @llvm.dbg.value(metadata !{i32 %call47}, i64 0, metadata !352), !dbg !968
  %12 = load i32* %arraydecay46, align 4, !dbg !969, !tbaa !407
  store i32 %12, i32* %hsize, align 4, !dbg !969, !tbaa !407
  %cmp50 = icmp slt i32 %call47, 0, !dbg !970
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !970

if.then52:                                        ; preds = %if.end27
  %call53 = call i32 @CCTK_Warn(i32 1, i32 807, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !971
  br label %return, !dbg !973

if.end54:                                         ; preds = %if.end27
  %cmp56 = icmp sgt i32 %12, 0, !dbg !974
  br i1 %cmp56, label %if.then58, label %if.else, !dbg !974

if.then58:                                        ; preds = %if.end54
  %vartype = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1, !dbg !975
  %13 = load i32* %vartype, align 4, !dbg !975, !tbaa !407
  %call60 = call i32 @CCTK_VarTypeSize(i32 %13) #8, !dbg !975
  %mul61 = mul nsw i32 %call60, %12, !dbg !975
  %conv62 = sext i32 %mul61 to i64, !dbg !975
  %call63 = call noalias i8* @malloc(i64 %conv62) #8, !dbg !975
  store i8* %call63, i8** %hdata, align 8, !dbg !975, !tbaa !421
  %14 = load i32* %vartype, align 4, !dbg !977, !tbaa !407
  %call65 = call i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %call47, i32 %vindex, i32 0, i32 %14, i8* %call63) #8, !dbg !977
  call void @llvm.dbg.value(metadata !{i32 %call65}, i64 0, metadata !344), !dbg !977
  br label %if.end66, !dbg !978

if.else:                                          ; preds = %if.end54
  store i8* null, i8** %hdata, align 8, !dbg !979, !tbaa !421
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !344), !dbg !981
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then58
  %retval1.0 = phi i32 [ %call65, %if.then58 ], [ 0, %if.else ]
  %call67 = call i32 @Hyperslab_FreeMapping(i32 %call47) #8, !dbg !982
  br label %return, !dbg !983

if.then70:                                        ; preds = %land.lhs.true
  %call71 = call i32 @CCTK_Warn(i32 1, i32 828, i8* getelementptr inbounds ([68 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %call15) #8, !dbg !984
  br label %return, !dbg !986

if.end72:                                         ; preds = %if.end12
  %cmp73 = icmp eq i32 %call2, 1, !dbg !987
  br i1 %cmp73, label %if.end83, label %if.else76, !dbg !987

if.else76:                                        ; preds = %if.end72
  call void @llvm.dbg.value(metadata !{i8** %hdata_local}, i64 0, metadata !347), !dbg !988
  %mul77 = mul nsw i32 %hdim, 3, !dbg !990
  %conv78 = sext i32 %mul77 to i64, !dbg !990
  %mul79 = shl nsw i64 %conv78, 2, !dbg !990
  %call80 = call noalias i8* @malloc(i64 %mul79) #8, !dbg !990
  %15 = bitcast i8* %call80 to i32*, !dbg !990
  call void @llvm.dbg.value(metadata !{i32* %15}, i64 0, metadata !348), !dbg !990
  %idx.ext = sext i32 %hdim to i64, !dbg !991
  %add.ptr = getelementptr inbounds i32* %15, i64 %idx.ext, !dbg !991
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !350), !dbg !991
  %add.ptr.sum = shl nsw i64 %idx.ext, 1, !dbg !992
  %add.ptr82 = getelementptr inbounds i32* %15, i64 %add.ptr.sum, !dbg !992
  call void @llvm.dbg.value(metadata !{i32* %add.ptr82}, i64 0, metadata !349), !dbg !992
  br label %if.end83

if.end83:                                         ; preds = %if.end72, %if.else76
  %hdata_ptr.0 = phi i8** [ %hdata_local, %if.else76 ], [ %hdata, %if.end72 ]
  %hsize_local.0 = phi i32* [ %15, %if.else76 ], [ %hsize, %if.end72 ]
  %hsize_global.0 = phi i32* [ %add.ptr82, %if.else76 ], [ %hsize, %if.end72 ]
  %hoffset_local.0 = phi i32* [ %add.ptr, %if.else76 ], [ null, %if.end72 ]
  %call84 = call i32 @Hyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata_ptr.0, i32* %hsize_local.0, i32* %hsize_global.0, i32* %hoffset_local.0) #7, !dbg !993
  call void @llvm.dbg.value(metadata !{i32 %call84}, i64 0, metadata !344), !dbg !993
  br label %return, !dbg !994

return:                                           ; preds = %if.end83, %if.then70, %if.end66, %if.then52, %if.then25, %if.then9, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then70 ], [ %call84, %if.end83 ], [ -1, %if.then25 ], [ -1, %if.then52 ], [ %retval1.0, %if.end66 ], [ -1, %if.then9 ]
  ret i32 %retval.0, !dbg !996
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, void (i8*, i8*, i32, i32, i32)*, i32*) #3

; Function Attrs: optsize
declare i32 @Hyperslab_Get(%struct.cGH*, i32, i32, i32, i32, i8*) #3

; Function Attrs: optsize
declare i32 @Hyperslab_FreeMapping(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !382, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !327, metadata !365}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c", metadata !"CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_GetLocalHyperslab", metadata !"Hyperslab_GetLocalHyperslab", metadata !"", i32 246, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*)* @Hyperslab_GetLocalHyperslab, null, null, metadata !55, i32 258} ; [ DW_TAG_subprogram ] [line 246] [def] [scope 258] [Hyperslab_GetLocalHyperslab]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !53, metadata !53, metadata !53, metadata !53, metadata !43, metadata !24, metadata !24, metadata !24}
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
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !91, metadata !92, metadata !93, metadata !94, metadata !162, metadata !197, metadata !198, metadata !203, metadata !205, metadata !208, metadata !209, metadata !210, metadata !211, metadata !215, metadata !216, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !232, metadata !233, metadata !234, metadata !235, metadata !243, metadata !244, metadata !246, metadata !247, metadata !248, metadata !249, metadata !252, metadata !253, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !262, metadata !263, metadata !264, metadata !265, metadata !268, metadata !269, metadata !271, metadata !272, metadata !273, metadata !274, metadata !277, metadata !278, metadata !280, metadata !281, metadata !282, metadata !283, metadata !290, metadata !291, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !307, metadata !308, metadata !309, metadata !310, metadata !313, metadata !314, metadata !316, metadata !317, metadata !318, metadata !319, metadata !326}
!56 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777462, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 246]
!57 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 33554679, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 247]
!58 = metadata !{i32 786689, metadata !11, metadata !"vtimelvl", metadata !5, i32 50331896, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 248]
!59 = metadata !{i32 786689, metadata !11, metadata !"hdim", metadata !5, i32 67109113, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 249]
!60 = metadata !{i32 786689, metadata !11, metadata !"global_origin", metadata !5, i32 83886330, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_origin] [line 250]
!61 = metadata !{i32 786689, metadata !11, metadata !"directions", metadata !5, i32 100663547, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [directions] [line 251]
!62 = metadata !{i32 786689, metadata !11, metadata !"extents", metadata !5, i32 117440764, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 252]
!63 = metadata !{i32 786689, metadata !11, metadata !"downsample_", metadata !5, i32 134217981, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 253]
!64 = metadata !{i32 786689, metadata !11, metadata !"hdata", metadata !5, i32 150995198, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 254]
!65 = metadata !{i32 786689, metadata !11, metadata !"hsize", metadata !5, i32 167772415, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 255]
!66 = metadata !{i32 786689, metadata !11, metadata !"hsize_global", metadata !5, i32 184549632, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize_global] [line 256]
!67 = metadata !{i32 786689, metadata !11, metadata !"hoffset_global", metadata !5, i32 201326849, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hoffset_global] [line 257]
!68 = metadata !{i32 786688, metadata !11, metadata !"point", metadata !5, i32 259, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [point] [line 259]
!69 = metadata !{i32 786688, metadata !11, metadata !"origin", metadata !5, i32 260, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [origin] [line 260]
!70 = metadata !{i32 786688, metadata !11, metadata !"endpoint", metadata !5, i32 261, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endpoint] [line 261]
!71 = metadata !{i32 786688, metadata !11, metadata !"downsample", metadata !5, i32 262, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [downsample] [line 262]
!72 = metadata !{i32 786688, metadata !11, metadata !"my_global_origin", metadata !5, i32 263, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_global_origin] [line 263]
!73 = metadata !{i32 786688, metadata !11, metadata !"global_endpoint", metadata !5, i32 264, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_endpoint] [line 264]
!74 = metadata !{i32 786688, metadata !11, metadata !"points_per_dim", metadata !5, i32 265, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [points_per_dim] [line 265]
!75 = metadata !{i32 786688, metadata !11, metadata !"do_dir", metadata !5, i32 266, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [do_dir] [line 266]
!76 = metadata !{i32 786688, metadata !11, metadata !"stagger_index", metadata !5, i32 267, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stagger_index] [line 267]
!77 = metadata !{i32 786688, metadata !11, metadata !"myproc", metadata !5, i32 268, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 268]
!78 = metadata !{i32 786688, metadata !11, metadata !"vinfo", metadata !5, i32 269, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 269]
!79 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786451, metadata !81, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!81 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!83 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!85 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!86 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!87 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!88 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!89 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!90 = metadata !{i32 786445, metadata !81, metadata !80, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!91 = metadata !{i32 786688, metadata !11, metadata !"vdim", metadata !5, i32 270, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdim] [line 270]
!92 = metadata !{i32 786688, metadata !11, metadata !"totals", metadata !5, i32 271, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totals] [line 271]
!93 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 272]
!94 = metadata !{i32 786688, metadata !11, metadata !"pughGH", metadata !5, i32 273, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 273]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!96 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!97 = metadata !{i32 786451, metadata !98, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !99, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!98 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !150, metadata !160}
!100 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!102 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!103 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!104 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!105 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!106 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!107 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!108 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!109 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!110 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!111 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!112 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!113 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!114 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!115 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!116 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!117 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!118 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!119 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!120 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!121 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !122} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!124 = metadata !{i32 786454, metadata !98, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!125 = metadata !{i32 786451, metadata !126, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!126 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !147, metadata !149}
!128 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!129 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!130 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!131 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !132} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!134 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!135 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!136 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!137 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!138 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !132} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!139 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!140 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!141 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!142 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !143} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!143 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !24, metadata !144, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!146 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!147 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !148} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!148 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !132, metadata !144, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!149 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !148} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!150 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !151} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!153 = metadata !{i32 786454, metadata !98, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!154 = metadata !{i32 786451, metadata !126, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !155, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159}
!156 = metadata !{i32 786445, metadata !126, metadata !154, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !126, metadata !154, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!158 = metadata !{i32 786445, metadata !126, metadata !154, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!159 = metadata !{i32 786445, metadata !126, metadata !154, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!160 = metadata !{i32 786445, metadata !98, metadata !97, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !161} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!162 = metadata !{i32 786688, metadata !11, metadata !"GA", metadata !5, i32 274, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 274]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!164 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!165 = metadata !{i32 786451, metadata !126, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !166, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !192, metadata !193, metadata !194, metadata !195}
!167 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !161} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!168 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!169 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!170 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!171 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!172 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!173 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!174 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!175 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!176 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !14} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!177 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !123} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!178 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !152} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!179 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !180} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!181 = metadata !{i32 786454, metadata !126, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!182 = metadata !{i32 786451, metadata !126, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!183 = metadata !{metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!184 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!185 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!186 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!187 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!188 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!189 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!190 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!191 = metadata !{i32 786445, metadata !126, metadata !182, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!192 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !180} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!193 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!194 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !14} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!195 = metadata !{i32 786445, metadata !126, metadata !165, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !196} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!197 = metadata !{i32 786688, metadata !11, metadata !"errormsg", metadata !5, i32 275, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errormsg] [line 275]
!198 = metadata !{i32 786688, metadata !199, metadata !"npoints", metadata !5, i32 389, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npoints] [line 389]
!199 = metadata !{i32 786443, metadata !1, metadata !200, i32 388, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!200 = metadata !{i32 786443, metadata !1, metadata !201, i32 385, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 380, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!202 = metadata !{i32 786443, metadata !1, metadata !11, i32 379, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!203 = metadata !{i32 786688, metadata !204, metadata !"vdata", metadata !5, i32 484, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vdata] [line 484]
!204 = metadata !{i32 786443, metadata !1, metadata !11, i32 483, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!205 = metadata !{i32 786688, metadata !206, metadata !"i", metadata !5, i32 526, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 526]
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 526, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!207 = metadata !{i32 786443, metadata !1, metadata !204, i32 524, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!208 = metadata !{i32 786688, metadata !206, metadata !"dim", metadata !5, i32 526, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 526]
!209 = metadata !{i32 786688, metadata !206, metadata !"idx", metadata !5, i32 526, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 526]
!210 = metadata !{i32 786688, metadata !206, metadata !"dim0_elements", metadata !5, i32 526, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 526]
!211 = metadata !{i32 786688, metadata !206, metadata !"typed_vdata", metadata !5, i32 526, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 526]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_BYTE]
!213 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_BYTE", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [CCTK_BYTE] [line 59, size 0, align 0, offset 0] [from unsigned char]
!214 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!215 = metadata !{i32 786688, metadata !206, metadata !"typed_hdata", metadata !5, i32 526, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 526]
!216 = metadata !{i32 786688, metadata !217, metadata !"i", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 532]
!217 = metadata !{i32 786443, metadata !1, metadata !207, i32 532, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!218 = metadata !{i32 786688, metadata !217, metadata !"dim", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 532]
!219 = metadata !{i32 786688, metadata !217, metadata !"idx", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 532]
!220 = metadata !{i32 786688, metadata !217, metadata !"dim0_elements", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 532]
!221 = metadata !{i32 786688, metadata !217, metadata !"typed_vdata", metadata !5, i32 532, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 532]
!222 = metadata !{i32 786688, metadata !217, metadata !"typed_hdata", metadata !5, i32 532, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 532]
!223 = metadata !{i32 786688, metadata !224, metadata !"i", metadata !5, i32 538, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 538]
!224 = metadata !{i32 786443, metadata !1, metadata !207, i32 538, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!225 = metadata !{i32 786688, metadata !224, metadata !"dim", metadata !5, i32 538, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 538]
!226 = metadata !{i32 786688, metadata !224, metadata !"idx", metadata !5, i32 538, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 538]
!227 = metadata !{i32 786688, metadata !224, metadata !"dim0_elements", metadata !5, i32 538, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 538]
!228 = metadata !{i32 786688, metadata !224, metadata !"typed_vdata", metadata !5, i32 538, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 538]
!229 = metadata !{i32 786688, metadata !224, metadata !"typed_hdata", metadata !5, i32 538, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 538]
!230 = metadata !{i32 786688, metadata !231, metadata !"i", metadata !5, i32 544, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 544]
!231 = metadata !{i32 786443, metadata !1, metadata !207, i32 544, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!232 = metadata !{i32 786688, metadata !231, metadata !"dim", metadata !5, i32 544, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 544]
!233 = metadata !{i32 786688, metadata !231, metadata !"idx", metadata !5, i32 544, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 544]
!234 = metadata !{i32 786688, metadata !231, metadata !"dim0_elements", metadata !5, i32 544, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 544]
!235 = metadata !{i32 786688, metadata !231, metadata !"typed_vdata", metadata !5, i32 544, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 544]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX16]
!237 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX16", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_typedef ] [CCTK_COMPLEX16] [line 44, size 0, align 0, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !239, null, metadata !"", i32 40, i64 128, i64 64, i32 0, i32 0, null, metadata !240, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 128, align 64, offset 0] [from ]
!239 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Types.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!240 = metadata !{metadata !241, metadata !242}
!241 = metadata !{i32 786445, metadata !239, metadata !238, metadata !"Re", i32 42, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [Re] [line 42, size 64, align 64, offset 0] [from double]
!242 = metadata !{i32 786445, metadata !239, metadata !238, metadata !"Im", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [Im] [line 43, size 64, align 64, offset 64] [from double]
!243 = metadata !{i32 786688, metadata !231, metadata !"typed_hdata", metadata !5, i32 544, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 544]
!244 = metadata !{i32 786688, metadata !245, metadata !"i", metadata !5, i32 551, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 551]
!245 = metadata !{i32 786443, metadata !1, metadata !207, i32 551, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!246 = metadata !{i32 786688, metadata !245, metadata !"dim", metadata !5, i32 551, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 551]
!247 = metadata !{i32 786688, metadata !245, metadata !"idx", metadata !5, i32 551, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 551]
!248 = metadata !{i32 786688, metadata !245, metadata !"dim0_elements", metadata !5, i32 551, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 551]
!249 = metadata !{i32 786688, metadata !245, metadata !"typed_vdata", metadata !5, i32 551, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 551]
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!251 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!252 = metadata !{i32 786688, metadata !245, metadata !"typed_hdata", metadata !5, i32 551, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 551]
!253 = metadata !{i32 786688, metadata !254, metadata !"i", metadata !5, i32 559, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 559]
!254 = metadata !{i32 786443, metadata !1, metadata !207, i32 559, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!255 = metadata !{i32 786688, metadata !254, metadata !"dim", metadata !5, i32 559, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 559]
!256 = metadata !{i32 786688, metadata !254, metadata !"idx", metadata !5, i32 559, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 559]
!257 = metadata !{i32 786688, metadata !254, metadata !"dim0_elements", metadata !5, i32 559, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 559]
!258 = metadata !{i32 786688, metadata !254, metadata !"typed_vdata", metadata !5, i32 559, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 559]
!259 = metadata !{i32 786688, metadata !254, metadata !"typed_hdata", metadata !5, i32 559, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 559]
!260 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !5, i32 567, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 567]
!261 = metadata !{i32 786443, metadata !1, metadata !207, i32 567, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!262 = metadata !{i32 786688, metadata !261, metadata !"dim", metadata !5, i32 567, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 567]
!263 = metadata !{i32 786688, metadata !261, metadata !"idx", metadata !5, i32 567, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 567]
!264 = metadata !{i32 786688, metadata !261, metadata !"dim0_elements", metadata !5, i32 567, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 567]
!265 = metadata !{i32 786688, metadata !261, metadata !"typed_vdata", metadata !5, i32 567, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 567]
!266 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!267 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!268 = metadata !{i32 786688, metadata !261, metadata !"typed_hdata", metadata !5, i32 567, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 567]
!269 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !5, i32 575, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 575]
!270 = metadata !{i32 786443, metadata !1, metadata !207, i32 575, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!271 = metadata !{i32 786688, metadata !270, metadata !"dim", metadata !5, i32 575, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 575]
!272 = metadata !{i32 786688, metadata !270, metadata !"idx", metadata !5, i32 575, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 575]
!273 = metadata !{i32 786688, metadata !270, metadata !"dim0_elements", metadata !5, i32 575, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 575]
!274 = metadata !{i32 786688, metadata !270, metadata !"typed_vdata", metadata !5, i32 575, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 575]
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!276 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!277 = metadata !{i32 786688, metadata !270, metadata !"typed_hdata", metadata !5, i32 575, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 575]
!278 = metadata !{i32 786688, metadata !279, metadata !"i", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 581]
!279 = metadata !{i32 786443, metadata !1, metadata !207, i32 581, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!280 = metadata !{i32 786688, metadata !279, metadata !"dim", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 581]
!281 = metadata !{i32 786688, metadata !279, metadata !"idx", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 581]
!282 = metadata !{i32 786688, metadata !279, metadata !"dim0_elements", metadata !5, i32 581, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 581]
!283 = metadata !{i32 786688, metadata !279, metadata !"typed_vdata", metadata !5, i32 581, metadata !284, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 581]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX8]
!285 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX8", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ] [CCTK_COMPLEX8] [line 52, size 0, align 0, offset 0] [from ]
!286 = metadata !{i32 786451, metadata !239, null, metadata !"", i32 48, i64 64, i64 32, i32 0, i32 0, null, metadata !287, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 64, align 32, offset 0] [from ]
!287 = metadata !{metadata !288, metadata !289}
!288 = metadata !{i32 786445, metadata !239, metadata !286, metadata !"Re", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [Re] [line 50, size 32, align 32, offset 0] [from float]
!289 = metadata !{i32 786445, metadata !239, metadata !286, metadata !"Im", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !276} ; [ DW_TAG_member ] [Im] [line 51, size 32, align 32, offset 32] [from float]
!290 = metadata !{i32 786688, metadata !279, metadata !"typed_hdata", metadata !5, i32 581, metadata !284, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 581]
!291 = metadata !{i32 786688, metadata !292, metadata !"i", metadata !5, i32 589, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 589]
!292 = metadata !{i32 786443, metadata !1, metadata !207, i32 589, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!293 = metadata !{i32 786688, metadata !292, metadata !"dim", metadata !5, i32 589, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 589]
!294 = metadata !{i32 786688, metadata !292, metadata !"idx", metadata !5, i32 589, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 589]
!295 = metadata !{i32 786688, metadata !292, metadata !"dim0_elements", metadata !5, i32 589, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 589]
!296 = metadata !{i32 786688, metadata !292, metadata !"typed_vdata", metadata !5, i32 589, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 589]
!297 = metadata !{i32 786688, metadata !292, metadata !"typed_hdata", metadata !5, i32 589, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 589]
!298 = metadata !{i32 786688, metadata !299, metadata !"i", metadata !5, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 595]
!299 = metadata !{i32 786443, metadata !1, metadata !207, i32 595, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!300 = metadata !{i32 786688, metadata !299, metadata !"dim", metadata !5, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 595]
!301 = metadata !{i32 786688, metadata !299, metadata !"idx", metadata !5, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 595]
!302 = metadata !{i32 786688, metadata !299, metadata !"dim0_elements", metadata !5, i32 595, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 595]
!303 = metadata !{i32 786688, metadata !299, metadata !"typed_vdata", metadata !5, i32 595, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 595]
!304 = metadata !{i32 786688, metadata !299, metadata !"typed_hdata", metadata !5, i32 595, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 595]
!305 = metadata !{i32 786688, metadata !306, metadata !"i", metadata !5, i32 603, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 603]
!306 = metadata !{i32 786443, metadata !1, metadata !207, i32 603, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!307 = metadata !{i32 786688, metadata !306, metadata !"dim", metadata !5, i32 603, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 603]
!308 = metadata !{i32 786688, metadata !306, metadata !"idx", metadata !5, i32 603, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 603]
!309 = metadata !{i32 786688, metadata !306, metadata !"dim0_elements", metadata !5, i32 603, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 603]
!310 = metadata !{i32 786688, metadata !306, metadata !"typed_vdata", metadata !5, i32 603, metadata !311, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 603]
!311 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !312} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!312 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!313 = metadata !{i32 786688, metadata !306, metadata !"typed_hdata", metadata !5, i32 603, metadata !311, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 603]
!314 = metadata !{i32 786688, metadata !315, metadata !"i", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 609]
!315 = metadata !{i32 786443, metadata !1, metadata !207, i32 609, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!316 = metadata !{i32 786688, metadata !315, metadata !"dim", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 609]
!317 = metadata !{i32 786688, metadata !315, metadata !"idx", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 609]
!318 = metadata !{i32 786688, metadata !315, metadata !"dim0_elements", metadata !5, i32 609, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim0_elements] [line 609]
!319 = metadata !{i32 786688, metadata !315, metadata !"typed_vdata", metadata !5, i32 609, metadata !320, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 609]
!320 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX32]
!321 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX32", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [CCTK_COMPLEX32] [line 36, size 0, align 0, offset 0] [from ]
!322 = metadata !{i32 786451, metadata !239, null, metadata !"", i32 32, i64 256, i64 128, i32 0, i32 0, null, metadata !323, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 32, size 256, align 128, offset 0] [from ]
!323 = metadata !{metadata !324, metadata !325}
!324 = metadata !{i32 786445, metadata !239, metadata !322, metadata !"Re", i32 34, i64 128, i64 128, i64 0, i32 0, metadata !312} ; [ DW_TAG_member ] [Re] [line 34, size 128, align 128, offset 0] [from long double]
!325 = metadata !{i32 786445, metadata !239, metadata !322, metadata !"Im", i32 35, i64 128, i64 128, i64 128, i32 0, metadata !312} ; [ DW_TAG_member ] [Im] [line 35, size 128, align 128, offset 128] [from long double]
!326 = metadata !{i32 786688, metadata !315, metadata !"typed_hdata", metadata !5, i32 609, metadata !320, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_hdata] [line 609]
!327 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Hyperslab_GetHyperslab", metadata !"Hyperslab_GetHyperslab", metadata !"", i32 707, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*)* @Hyperslab_GetHyperslab, null, null, metadata !330, i32 718} ; [ DW_TAG_subprogram ] [line 707] [def] [scope 718] [Hyperslab_GetHyperslab]
!328 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !14, metadata !53, metadata !53, metadata !53, metadata !53, metadata !43, metadata !24}
!330 = metadata !{metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !354, metadata !358, metadata !359, metadata !363, metadata !364}
!331 = metadata !{i32 786689, metadata !327, metadata !"GH", metadata !5, i32 16777923, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 707]
!332 = metadata !{i32 786689, metadata !327, metadata !"target_proc", metadata !5, i32 33555140, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target_proc] [line 708]
!333 = metadata !{i32 786689, metadata !327, metadata !"vindex", metadata !5, i32 50332357, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 709]
!334 = metadata !{i32 786689, metadata !327, metadata !"vtimelvl", metadata !5, i32 67109574, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 710]
!335 = metadata !{i32 786689, metadata !327, metadata !"hdim", metadata !5, i32 83886791, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 711]
!336 = metadata !{i32 786689, metadata !327, metadata !"global_origin", metadata !5, i32 100664008, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_origin] [line 712]
!337 = metadata !{i32 786689, metadata !327, metadata !"directions", metadata !5, i32 117441225, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [directions] [line 713]
!338 = metadata !{i32 786689, metadata !327, metadata !"extents", metadata !5, i32 134218442, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 714]
!339 = metadata !{i32 786689, metadata !327, metadata !"downsample_", metadata !5, i32 150995659, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 715]
!340 = metadata !{i32 786689, metadata !327, metadata !"hdata", metadata !5, i32 167772876, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 716]
!341 = metadata !{i32 786689, metadata !327, metadata !"hsize", metadata !5, i32 184550093, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 717]
!342 = metadata !{i32 786688, metadata !327, metadata !"myproc", metadata !5, i32 719, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 719]
!343 = metadata !{i32 786688, metadata !327, metadata !"nprocs", metadata !5, i32 719, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 719]
!344 = metadata !{i32 786688, metadata !327, metadata !"retval", metadata !5, i32 720, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 720]
!345 = metadata !{i32 786688, metadata !327, metadata !"vinfo", metadata !5, i32 721, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 721]
!346 = metadata !{i32 786688, metadata !327, metadata !"hdata_local", metadata !5, i32 722, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hdata_local] [line 722]
!347 = metadata !{i32 786688, metadata !327, metadata !"hdata_ptr", metadata !5, i32 723, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hdata_ptr] [line 723]
!348 = metadata !{i32 786688, metadata !327, metadata !"hsize_local", metadata !5, i32 724, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize_local] [line 724]
!349 = metadata !{i32 786688, metadata !327, metadata !"hsize_global", metadata !5, i32 725, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize_global] [line 725]
!350 = metadata !{i32 786688, metadata !327, metadata !"hoffset_local", metadata !5, i32 726, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hoffset_local] [line 726]
!351 = metadata !{i32 786688, metadata !327, metadata !"errormsg", metadata !5, i32 727, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errormsg] [line 727]
!352 = metadata !{i32 786688, metadata !353, metadata !"mapping", metadata !5, i32 776, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapping] [line 776]
!353 = metadata !{i32 786443, metadata !1, metadata !327, i32 775, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!354 = metadata !{i32 786688, metadata !353, metadata !"my_directions", metadata !5, i32 777, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_directions] [line 777]
!355 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !356, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!356 = metadata !{metadata !357}
!357 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!358 = metadata !{i32 786688, metadata !353, metadata !"my_global_origin", metadata !5, i32 777, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_global_origin] [line 777]
!359 = metadata !{i32 786688, metadata !353, metadata !"my_extents", metadata !5, i32 778, metadata !360, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_extents] [line 778]
!360 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !14, metadata !361, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from int]
!361 = metadata !{metadata !362}
!362 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!363 = metadata !{i32 786688, metadata !353, metadata !"my_downsample_", metadata !5, i32 778, metadata !360, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_downsample_] [line 778]
!364 = metadata !{i32 786688, metadata !353, metadata !"my_hsize", metadata !5, i32 778, metadata !360, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [my_hsize] [line 778]
!365 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"checkParameters", metadata !"checkParameters", metadata !"", i32 1099, metadata !366, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.cGH*, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*)* @checkParameters, null, null, metadata !368, i32 1107} ; [ DW_TAG_subprogram ] [line 1099] [local] [def] [scope 1107] [checkParameters]
!366 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{metadata !8, metadata !15, metadata !14, metadata !14, metadata !14, metadata !53, metadata !53, metadata !53, metadata !53, metadata !43, metadata !24}
!368 = metadata !{metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381}
!369 = metadata !{i32 786689, metadata !365, metadata !"GH", metadata !5, i32 16778315, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1099]
!370 = metadata !{i32 786689, metadata !365, metadata !"vindex", metadata !5, i32 33555531, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 1099]
!371 = metadata !{i32 786689, metadata !365, metadata !"vtimelvl", metadata !5, i32 50332747, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtimelvl] [line 1099]
!372 = metadata !{i32 786689, metadata !365, metadata !"hdim", metadata !5, i32 67109964, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdim] [line 1100]
!373 = metadata !{i32 786689, metadata !365, metadata !"global_origin", metadata !5, i32 83887181, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [global_origin] [line 1101]
!374 = metadata !{i32 786689, metadata !365, metadata !"directions", metadata !5, i32 100664398, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [directions] [line 1102]
!375 = metadata !{i32 786689, metadata !365, metadata !"extents", metadata !5, i32 117441615, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extents] [line 1103]
!376 = metadata !{i32 786689, metadata !365, metadata !"downsample_", metadata !5, i32 134218832, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [downsample_] [line 1104]
!377 = metadata !{i32 786689, metadata !365, metadata !"hdata", metadata !5, i32 150996049, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hdata] [line 1105]
!378 = metadata !{i32 786689, metadata !365, metadata !"hsize", metadata !5, i32 167773266, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hsize] [line 1106]
!379 = metadata !{i32 786688, metadata !365, metadata !"dim", metadata !5, i32 1108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 1108]
!380 = metadata !{i32 786688, metadata !365, metadata !"num_directions", metadata !5, i32 1109, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_directions] [line 1109]
!381 = metadata !{i32 786688, metadata !365, metadata !"vinfo", metadata !5, i32 1110, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vinfo] [line 1110]
!382 = metadata !{metadata !383}
!383 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!384 = metadata !{i32 27, i32 0, metadata !4, null}
!385 = metadata !{i32 246, i32 0, metadata !11, null}
!386 = metadata !{i32 247, i32 0, metadata !11, null}
!387 = metadata !{i32 248, i32 0, metadata !11, null}
!388 = metadata !{i32 249, i32 0, metadata !11, null}
!389 = metadata !{i32 250, i32 0, metadata !11, null}
!390 = metadata !{i32 251, i32 0, metadata !11, null}
!391 = metadata !{i32 252, i32 0, metadata !11, null}
!392 = metadata !{i32 253, i32 0, metadata !11, null}
!393 = metadata !{i32 254, i32 0, metadata !11, null}
!394 = metadata !{i32 255, i32 0, metadata !11, null}
!395 = metadata !{i32 256, i32 0, metadata !11, null}
!396 = metadata !{i32 257, i32 0, metadata !11, null}
!397 = metadata !{i32 269, i32 0, metadata !11, null}
!398 = metadata !{i32 279, i32 0, metadata !11, null}
!399 = metadata !{i32 284, i32 0, metadata !11, null}
!400 = metadata !{i32 295, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !11, i32 295, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!402 = metadata !{i32 286, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !11, i32 285, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!404 = metadata !{i32 287, i32 0, metadata !403, null}
!405 = metadata !{i32 297, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !401, i32 296, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!407 = metadata !{metadata !"int", metadata !408}
!408 = metadata !{metadata !"omnipotent char", metadata !409}
!409 = metadata !{metadata !"Simple C/C++ TBAA"}
!410 = metadata !{i32 299, i32 0, metadata !11, null}
!411 = metadata !{i32 302, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !413, i32 302, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!413 = metadata !{i32 786443, metadata !1, metadata !11, i32 300, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!414 = metadata !{i32 305, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !412, i32 303, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!416 = metadata !{i32 304, i32 0, metadata !415, null}
!417 = metadata !{i32 307, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !415, i32 306, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!419 = metadata !{i32 308, i32 0, metadata !418, null}
!420 = metadata !{i32 310, i32 0, metadata !413, null}
!421 = metadata !{metadata !"any pointer", metadata !408}
!422 = metadata !{i32 312, i32 0, metadata !413, null}
!423 = metadata !{i32 316, i32 0, metadata !11, null}
!424 = metadata !{i32 319, i32 0, metadata !11, null}
!425 = metadata !{i32 320, i32 0, metadata !11, null}
!426 = metadata !{i32 321, i32 0, metadata !11, null}
!427 = metadata !{i32 322, i32 0, metadata !11, null}
!428 = metadata !{i32 323, i32 0, metadata !11, null}
!429 = metadata !{i32 324, i32 0, metadata !11, null}
!430 = metadata !{i32 325, i32 0, metadata !11, null}
!431 = metadata !{i32 326, i32 0, metadata !11, null}
!432 = metadata !{i32 333, i32 0, metadata !11, null}
!433 = metadata !{i32 335, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !11, i32 334, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!435 = metadata !{i32 336, i32 0, metadata !434, null}
!436 = metadata !{i32 337, i32 0, metadata !11, null}
!437 = metadata !{i32 339, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !439, i32 339, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!439 = metadata !{i32 786443, metadata !1, metadata !11, i32 338, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!440 = metadata !{i32 346, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !442, i32 346, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!442 = metadata !{i32 786443, metadata !1, metadata !11, i32 345, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!443 = metadata !{i32 341, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !438, i32 340, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!445 = metadata !{i32 348, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !441, i32 347, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!447 = metadata !{i32 353, i32 0, metadata !11, null}
!448 = metadata !{i32 354, i32 0, metadata !11, null}
!449 = metadata !{i32 357, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !11, i32 357, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!451 = metadata !{i32 361, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !1, metadata !453, i32 360, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!453 = metadata !{i32 786443, metadata !1, metadata !450, i32 358, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!454 = metadata !{i32 359, i32 0, metadata !453, null}
!455 = metadata !{i32 365, i32 0, metadata !452, null}
!456 = metadata !{i32 366, i32 0, metadata !452, null}
!457 = metadata !{i32 367, i32 0, metadata !452, null}
!458 = metadata !{i32 370, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !453, i32 369, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!460 = metadata !{i32 371, i32 0, metadata !459, null}
!461 = metadata !{i32 376, i32 0, metadata !11, null}
!462 = metadata !{i32 379, i32 0, metadata !202, null}
!463 = metadata !{i32 381, i32 0, metadata !201, null}
!464 = metadata !{i32 383, i32 0, metadata !201, null}
!465 = metadata !{i32 414, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !11, i32 414, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!467 = metadata !{i32 416, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !466, i32 415, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!469 = metadata !{i32 418, i32 0, metadata !468, null}
!470 = metadata !{i32 462, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !468, i32 453, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!472 = metadata !{i32 386, i32 0, metadata !200, null}
!473 = metadata !{i32 391, i32 0, metadata !199, null}
!474 = metadata !{i32 393, i32 0, metadata !199, null}
!475 = metadata !{i32 398, i32 0, metadata !199, null}
!476 = metadata !{i32 400, i32 0, metadata !199, null}
!477 = metadata !{i32 403, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !200, i32 402, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!479 = metadata !{i32 408, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !201, i32 407, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!481 = metadata !{i32 430, i32 0, metadata !468, null}
!482 = metadata !{i32 422, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !468, i32 421, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!484 = metadata !{i32 424, i32 0, metadata !483, null}
!485 = metadata !{i32 427, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !468, i32 426, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!487 = metadata !{i32 433, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !468, i32 432, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!489 = metadata !{i32 435, i32 0, metadata !488, null}
!490 = metadata !{i32 438, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !468, i32 437, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!492 = metadata !{i32 446, i32 0, metadata !468, null}
!493 = metadata !{i32 449, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !468, i32 447, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!495 = metadata !{i32 448, i32 0, metadata !494, null}
!496 = metadata !{i32 450, i32 0, metadata !494, null}
!497 = metadata !{i32 452, i32 0, metadata !468, null}
!498 = metadata !{i32 455, i32 0, metadata !471, null}
!499 = metadata !{i32 457, i32 0, metadata !471, null}
!500 = metadata !{i32 460, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !471, i32 459, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!502 = metadata !{i32 461, i32 0, metadata !501, null}
!503 = metadata !{i32 464, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !471, i32 463, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!505 = metadata !{i32 465, i32 0, metadata !504, null}
!506 = metadata !{i32 466, i32 0, metadata !471, null}
!507 = metadata !{i32 467, i32 0, metadata !471, null}
!508 = metadata !{i32 469, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !471, i32 468, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!510 = metadata !{i32 471, i32 0, metadata !471, null}
!511 = metadata !{i32 472, i32 0, metadata !471, null}
!512 = metadata !{i32 473, i32 0, metadata !471, null}
!513 = metadata !{i32 482, i32 0, metadata !11, null}
!514 = metadata !{i32 484, i32 0, metadata !204, null}
!515 = metadata !{i32 488, i32 0, metadata !204, null}
!516 = metadata !{i32 490, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !518, i32 490, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!518 = metadata !{i32 786443, metadata !1, metadata !204, i32 489, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!519 = metadata !{i32 496, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !521, i32 493, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!521 = metadata !{i32 786443, metadata !1, metadata !517, i32 491, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!522 = metadata !{i32 498, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !520, i32 497, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!524 = metadata !{i32 492, i32 0, metadata !521, null}
!525 = metadata !{i32 494, i32 0, metadata !520, null}
!526 = metadata !{i32 499, i32 0, metadata !523, null}
!527 = metadata !{i32 504, i32 0, metadata !520, null}
!528 = metadata !{i32 505, i32 0, metadata !520, null}
!529 = metadata !{i32 510, i32 0, metadata !204, null}
!530 = metadata !{i32 515, i32 0, metadata !204, null}
!531 = metadata !{i32 1}
!532 = metadata !{i32 516, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !204, i32 516, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!534 = metadata !{i32 518, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !533, i32 517, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!536 = metadata !{i32 523, i32 0, metadata !204, null}
!537 = metadata !{i32 526, i32 0, metadata !206, null}
!538 = metadata !{i32 526, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !206, i32 526, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!540 = metadata !{i32 526, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !539, i32 526, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!542 = metadata !{i32 526, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !539, i32 526, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!544 = metadata !{i32 526, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !546, i32 526, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!546 = metadata !{i32 786443, metadata !1, metadata !539, i32 526, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!547 = metadata !{i32 526, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !539, i32 526, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!549 = metadata !{i32 526, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !551, i32 526, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!551 = metadata !{i32 786443, metadata !1, metadata !539, i32 526, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!552 = metadata !{i32 526, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !550, i32 526, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!554 = metadata !{i32 526, i32 0, metadata !551, null}
!555 = metadata !{i32 526, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !551, i32 526, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!557 = metadata !{i32 526, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !556, i32 526, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!559 = metadata !{i32 526, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !548, i32 526, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!561 = metadata !{i32 526, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !545, i32 526, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!563 = metadata !{i32 532, i32 0, metadata !217, null}
!564 = metadata !{i32 532, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !217, i32 532, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!566 = metadata !{i32 532, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !1, metadata !565, i32 532, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!568 = metadata !{i32 532, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !565, i32 532, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!570 = metadata !{i32 532, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !572, i32 532, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!572 = metadata !{i32 786443, metadata !1, metadata !565, i32 532, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!573 = metadata !{i32 532, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !565, i32 532, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!575 = metadata !{i32 532, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !577, i32 532, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!577 = metadata !{i32 786443, metadata !1, metadata !565, i32 532, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!578 = metadata !{i32 532, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !576, i32 532, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!580 = metadata !{i32 532, i32 0, metadata !577, null}
!581 = metadata !{i32 532, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !577, i32 532, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!583 = metadata !{i32 532, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !582, i32 532, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!585 = metadata !{i32 532, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !574, i32 532, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!587 = metadata !{i32 532, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !571, i32 532, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!589 = metadata !{i32 538, i32 0, metadata !224, null}
!590 = metadata !{i32 538, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !224, i32 538, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!592 = metadata !{i32 538, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !591, i32 538, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!594 = metadata !{i32 538, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !591, i32 538, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!596 = metadata !{i32 538, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 538, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!598 = metadata !{i32 786443, metadata !1, metadata !591, i32 538, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!599 = metadata !{i32 538, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !591, i32 538, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!601 = metadata !{i32 538, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !603, i32 538, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!603 = metadata !{i32 786443, metadata !1, metadata !591, i32 538, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!604 = metadata !{i32 538, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !602, i32 538, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!606 = metadata !{i32 538, i32 0, metadata !603, null}
!607 = metadata !{i32 538, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !603, i32 538, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!609 = metadata !{i32 538, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !608, i32 538, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!611 = metadata !{i32 538, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !600, i32 538, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!613 = metadata !{i32 538, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !597, i32 538, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!615 = metadata !{metadata !"double", metadata !408}
!616 = metadata !{i32 544, i32 0, metadata !231, null}
!617 = metadata !{i32 544, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !231, i32 544, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!619 = metadata !{i32 544, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !618, i32 544, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!621 = metadata !{i32 544, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !618, i32 544, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!623 = metadata !{i32 544, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !625, i32 544, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!625 = metadata !{i32 786443, metadata !1, metadata !618, i32 544, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!626 = metadata !{i32 544, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !618, i32 544, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!628 = metadata !{i32 544, i32 0, metadata !629, null}
!629 = metadata !{i32 786443, metadata !1, metadata !630, i32 544, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!630 = metadata !{i32 786443, metadata !1, metadata !618, i32 544, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!631 = metadata !{i32 544, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !629, i32 544, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!633 = metadata !{i32 544, i32 0, metadata !630, null}
!634 = metadata !{i32 544, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !1, metadata !630, i32 544, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!636 = metadata !{i32 544, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !635, i32 544, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!638 = metadata !{i32 544, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !627, i32 544, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!640 = metadata !{i32 544, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !624, i32 544, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!642 = metadata !{i64 0, i64 8, metadata !615, i64 8, i64 8, metadata !615}
!643 = metadata !{i32 551, i32 0, metadata !245, null}
!644 = metadata !{i32 551, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !245, i32 551, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!646 = metadata !{i32 551, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !645, i32 551, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!648 = metadata !{i32 551, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !645, i32 551, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!650 = metadata !{i32 551, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !652, i32 551, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!652 = metadata !{i32 786443, metadata !1, metadata !645, i32 551, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!653 = metadata !{i32 551, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !645, i32 551, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!655 = metadata !{i32 551, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !657, i32 551, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!657 = metadata !{i32 786443, metadata !1, metadata !645, i32 551, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!658 = metadata !{i32 551, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !656, i32 551, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!660 = metadata !{i32 551, i32 0, metadata !657, null}
!661 = metadata !{i32 551, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !657, i32 551, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!663 = metadata !{i32 551, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !662, i32 551, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!665 = metadata !{i32 551, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !654, i32 551, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!667 = metadata !{i32 551, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !651, i32 551, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!669 = metadata !{metadata !"short", metadata !408}
!670 = metadata !{i32 559, i32 0, metadata !254, null}
!671 = metadata !{i32 559, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !254, i32 559, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!673 = metadata !{i32 559, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !672, i32 559, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!675 = metadata !{i32 559, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !672, i32 559, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!677 = metadata !{i32 559, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !679, i32 559, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!679 = metadata !{i32 786443, metadata !1, metadata !672, i32 559, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!680 = metadata !{i32 559, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !672, i32 559, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!682 = metadata !{i32 559, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !684, i32 559, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!684 = metadata !{i32 786443, metadata !1, metadata !672, i32 559, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!685 = metadata !{i32 559, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !683, i32 559, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!687 = metadata !{i32 559, i32 0, metadata !684, null}
!688 = metadata !{i32 559, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !684, i32 559, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!690 = metadata !{i32 559, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !689, i32 559, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!692 = metadata !{i32 559, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !681, i32 559, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!694 = metadata !{i32 559, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !678, i32 559, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!696 = metadata !{i32 567, i32 0, metadata !261, null}
!697 = metadata !{i32 567, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !261, i32 567, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!699 = metadata !{i32 567, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !698, i32 567, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!701 = metadata !{i32 567, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !698, i32 567, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!703 = metadata !{i32 567, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !705, i32 567, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!705 = metadata !{i32 786443, metadata !1, metadata !698, i32 567, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!706 = metadata !{i32 567, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !698, i32 567, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!708 = metadata !{i32 567, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !710, i32 567, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!710 = metadata !{i32 786443, metadata !1, metadata !698, i32 567, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!711 = metadata !{i32 567, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !709, i32 567, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!713 = metadata !{i32 567, i32 0, metadata !710, null}
!714 = metadata !{i32 567, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !710, i32 567, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!716 = metadata !{i32 567, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !715, i32 567, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!718 = metadata !{i32 567, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !707, i32 567, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!720 = metadata !{i32 567, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !704, i32 567, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!722 = metadata !{metadata !"long", metadata !408}
!723 = metadata !{i32 575, i32 0, metadata !270, null}
!724 = metadata !{i32 575, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !270, i32 575, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!726 = metadata !{i32 575, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !725, i32 575, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!728 = metadata !{i32 575, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !725, i32 575, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!730 = metadata !{i32 575, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !732, i32 575, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!732 = metadata !{i32 786443, metadata !1, metadata !725, i32 575, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!733 = metadata !{i32 575, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !725, i32 575, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!735 = metadata !{i32 575, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !737, i32 575, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!737 = metadata !{i32 786443, metadata !1, metadata !725, i32 575, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!738 = metadata !{i32 575, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !736, i32 575, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!740 = metadata !{i32 575, i32 0, metadata !737, null}
!741 = metadata !{i32 575, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !737, i32 575, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!743 = metadata !{i32 575, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !742, i32 575, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!745 = metadata !{i32 575, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !734, i32 575, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!747 = metadata !{i32 575, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !731, i32 575, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!749 = metadata !{metadata !"float", metadata !408}
!750 = metadata !{i32 581, i32 0, metadata !279, null}
!751 = metadata !{i32 581, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !279, i32 581, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!753 = metadata !{i32 581, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !752, i32 581, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!755 = metadata !{i32 581, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !752, i32 581, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!757 = metadata !{i32 581, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !759, i32 581, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!759 = metadata !{i32 786443, metadata !1, metadata !752, i32 581, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!760 = metadata !{i32 581, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !752, i32 581, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!762 = metadata !{i32 581, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !764, i32 581, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!764 = metadata !{i32 786443, metadata !1, metadata !752, i32 581, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!765 = metadata !{i32 581, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !763, i32 581, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!767 = metadata !{i32 581, i32 0, metadata !764, null}
!768 = metadata !{i32 581, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !764, i32 581, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!770 = metadata !{i32 581, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !769, i32 581, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!772 = metadata !{i32 581, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !761, i32 581, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!774 = metadata !{i32 581, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !758, i32 581, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!776 = metadata !{i32 589, i32 0, metadata !292, null}
!777 = metadata !{i32 589, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !292, i32 589, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!779 = metadata !{i32 589, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !778, i32 589, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!781 = metadata !{i32 589, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !778, i32 589, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!783 = metadata !{i32 589, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !785, i32 589, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!785 = metadata !{i32 786443, metadata !1, metadata !778, i32 589, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!786 = metadata !{i32 589, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !1, metadata !778, i32 589, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!788 = metadata !{i32 589, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !790, i32 589, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!790 = metadata !{i32 786443, metadata !1, metadata !778, i32 589, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!791 = metadata !{i32 589, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !789, i32 589, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!793 = metadata !{i32 589, i32 0, metadata !790, null}
!794 = metadata !{i32 589, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !790, i32 589, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!796 = metadata !{i32 589, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !795, i32 589, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!798 = metadata !{i32 589, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !787, i32 589, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!800 = metadata !{i32 589, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !784, i32 589, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!802 = metadata !{i32 595, i32 0, metadata !299, null}
!803 = metadata !{i32 595, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !299, i32 595, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!805 = metadata !{i32 595, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !804, i32 595, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!807 = metadata !{i32 595, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !804, i32 595, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!809 = metadata !{i32 595, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !1, metadata !811, i32 595, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!811 = metadata !{i32 786443, metadata !1, metadata !804, i32 595, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!812 = metadata !{i32 595, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !804, i32 595, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!814 = metadata !{i32 595, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !816, i32 595, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!816 = metadata !{i32 786443, metadata !1, metadata !804, i32 595, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!817 = metadata !{i32 595, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !815, i32 595, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!819 = metadata !{i32 595, i32 0, metadata !816, null}
!820 = metadata !{i32 595, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !816, i32 595, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!822 = metadata !{i32 595, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !821, i32 595, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!824 = metadata !{i32 595, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !1, metadata !813, i32 595, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!826 = metadata !{i32 595, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !810, i32 595, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!828 = metadata !{i32 603, i32 0, metadata !306, null}
!829 = metadata !{i32 603, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !306, i32 603, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!831 = metadata !{i32 603, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !830, i32 603, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!833 = metadata !{i32 603, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !830, i32 603, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!835 = metadata !{i32 603, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !837, i32 603, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!837 = metadata !{i32 786443, metadata !1, metadata !830, i32 603, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!838 = metadata !{i32 603, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !830, i32 603, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!840 = metadata !{i32 603, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 603, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!842 = metadata !{i32 786443, metadata !1, metadata !830, i32 603, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!843 = metadata !{i32 603, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !841, i32 603, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!845 = metadata !{i32 603, i32 0, metadata !842, null}
!846 = metadata !{i32 603, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !842, i32 603, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!848 = metadata !{i32 603, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !847, i32 603, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!850 = metadata !{i32 603, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !839, i32 603, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!852 = metadata !{i32 603, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !836, i32 603, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!854 = metadata !{metadata !"long double", metadata !408}
!855 = metadata !{i32 609, i32 0, metadata !315, null}
!856 = metadata !{i32 609, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !315, i32 609, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!858 = metadata !{i32 609, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !857, i32 609, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!860 = metadata !{i32 609, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !857, i32 609, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!862 = metadata !{i32 609, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 609, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!864 = metadata !{i32 786443, metadata !1, metadata !857, i32 609, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!865 = metadata !{i32 609, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !857, i32 609, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!867 = metadata !{i32 609, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !869, i32 609, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!869 = metadata !{i32 786443, metadata !1, metadata !857, i32 609, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!870 = metadata !{i32 609, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !868, i32 609, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!872 = metadata !{i32 609, i32 0, metadata !869, null}
!873 = metadata !{i32 609, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !869, i32 609, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!875 = metadata !{i32 609, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !874, i32 609, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!877 = metadata !{i32 609, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !866, i32 609, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!879 = metadata !{i32 609, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !863, i32 609, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!881 = metadata !{i64 0, i64 16, metadata !854, i64 16, i64 16, metadata !854}
!882 = metadata !{i32 616, i32 0, metadata !207, null}
!883 = metadata !{i32 -1}
!884 = metadata !{i32 617, i32 0, metadata !207, null}
!885 = metadata !{i32 618, i32 0, metadata !207, null}
!886 = metadata !{i32 624, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !11, i32 622, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!888 = metadata !{i32 625, i32 0, metadata !887, null}
!889 = metadata !{i32 629, i32 0, metadata !11, null}
!890 = metadata !{i32 631, i32 0, metadata !11, null}
!891 = metadata !{i32 632, i32 0, metadata !11, null}
!892 = metadata !{i32 1099, i32 0, metadata !365, null}
!893 = metadata !{i32 1100, i32 0, metadata !365, null}
!894 = metadata !{i32 1101, i32 0, metadata !365, null}
!895 = metadata !{i32 1102, i32 0, metadata !365, null}
!896 = metadata !{i32 1103, i32 0, metadata !365, null}
!897 = metadata !{i32 1104, i32 0, metadata !365, null}
!898 = metadata !{i32 1105, i32 0, metadata !365, null}
!899 = metadata !{i32 1106, i32 0, metadata !365, null}
!900 = metadata !{i32 1110, i32 0, metadata !365, null}
!901 = metadata !{i32 1114, i32 0, metadata !365, null}
!902 = metadata !{i32 1118, i32 0, metadata !365, null}
!903 = metadata !{i32 1124, i32 0, metadata !365, null}
!904 = metadata !{i32 1131, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !365, i32 1131, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!906 = metadata !{i32 1133, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !905, i32 1132, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!908 = metadata !{i32 1140, i32 0, metadata !365, null}
!909 = metadata !{i32 1146, i32 0, metadata !365, null}
!910 = metadata !{i32 1152, i32 0, metadata !365, null}
!911 = metadata !{i32 1159, i32 0, metadata !365, null}
!912 = metadata !{i32 1161, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !914, i32 1161, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!914 = metadata !{i32 786443, metadata !1, metadata !365, i32 1160, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!915 = metadata !{i32 1163, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !913, i32 1162, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!917 = metadata !{i32 1168, i32 0, metadata !914, null}
!918 = metadata !{i32 1172, i32 0, metadata !914, null}
!919 = metadata !{i32 1179, i32 0, metadata !365, null}
!920 = metadata !{i32 1181, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !365, i32 1180, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!922 = metadata !{i32 1184, i32 0, metadata !365, null}
!923 = metadata !{i32 707, i32 0, metadata !327, null}
!924 = metadata !{i32 708, i32 0, metadata !327, null}
!925 = metadata !{i32 709, i32 0, metadata !327, null}
!926 = metadata !{i32 710, i32 0, metadata !327, null}
!927 = metadata !{i32 711, i32 0, metadata !327, null}
!928 = metadata !{i32 712, i32 0, metadata !327, null}
!929 = metadata !{i32 713, i32 0, metadata !327, null}
!930 = metadata !{i32 714, i32 0, metadata !327, null}
!931 = metadata !{i32 715, i32 0, metadata !327, null}
!932 = metadata !{i32 716, i32 0, metadata !327, null}
!933 = metadata !{i32 717, i32 0, metadata !327, null}
!934 = metadata !{i32 721, i32 0, metadata !327, null}
!935 = metadata !{i32 722, i32 0, metadata !327, null}
!936 = metadata !{i32 743, i32 0, metadata !327, null}
!937 = metadata !{i32 744, i32 0, metadata !327, null}
!938 = metadata !{i32 745, i32 0, metadata !327, null}
!939 = metadata !{i32 747, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !327, i32 746, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!941 = metadata !{i32 748, i32 0, metadata !940, null}
!942 = metadata !{i32 752, i32 0, metadata !327, null}
!943 = metadata !{i32 754, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !327, i32 753, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!945 = metadata !{i32 756, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !944, i32 755, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!947 = metadata !{i32 757, i32 0, metadata !946, null}
!948 = metadata !{i32 761, i32 0, metadata !944, null}
!949 = metadata !{i32 762, i32 0, metadata !944, null}
!950 = metadata !{i32 763, i32 0, metadata !944, null}
!951 = metadata !{i32 766, i32 0, metadata !327, null}
!952 = metadata !{i32 769, i32 0, metadata !327, null}
!953 = metadata !{i32 774, i32 0, metadata !327, null}
!954 = metadata !{i32 777, i32 0, metadata !353, null}
!955 = metadata !{i32 778, i32 0, metadata !353, null}
!956 = metadata !{i32 781, i32 0, metadata !353, null}
!957 = metadata !{i32 783, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !353, i32 782, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!959 = metadata !{i32 785, i32 0, metadata !958, null}
!960 = metadata !{i32 789, i32 0, metadata !353, null}
!961 = metadata !{i32 790, i32 0, metadata !353, null}
!962 = metadata !{i32 791, i32 0, metadata !353, null}
!963 = metadata !{i32 792, i32 0, metadata !353, null}
!964 = metadata !{i32 793, i32 0, metadata !353, null}
!965 = metadata !{i32 794, i32 0, metadata !353, null}
!966 = metadata !{i32 795, i32 0, metadata !353, null}
!967 = metadata !{i32 796, i32 0, metadata !353, null}
!968 = metadata !{i32 798, i32 0, metadata !353, null}
!969 = metadata !{i32 803, i32 0, metadata !353, null}
!970 = metadata !{i32 805, i32 0, metadata !353, null}
!971 = metadata !{i32 807, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !353, i32 806, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!973 = metadata !{i32 808, i32 0, metadata !972, null}
!974 = metadata !{i32 810, i32 0, metadata !353, null}
!975 = metadata !{i32 812, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !353, i32 811, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!977 = metadata !{i32 813, i32 0, metadata !976, null}
!978 = metadata !{i32 814, i32 0, metadata !976, null}
!979 = metadata !{i32 817, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !353, i32 816, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!981 = metadata !{i32 818, i32 0, metadata !980, null}
!982 = metadata !{i32 820, i32 0, metadata !353, null}
!983 = metadata !{i32 822, i32 0, metadata !353, null}
!984 = metadata !{i32 828, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !327, i32 827, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!986 = metadata !{i32 829, i32 0, metadata !985, null}
!987 = metadata !{i32 833, i32 0, metadata !327, null}
!988 = metadata !{i32 841, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !327, i32 840, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!990 = metadata !{i32 842, i32 0, metadata !989, null}
!991 = metadata !{i32 843, i32 0, metadata !989, null}
!992 = metadata !{i32 844, i32 0, metadata !989, null}
!993 = metadata !{i32 848, i32 0, metadata !327, null}
!994 = metadata !{i32 856, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !327, i32 855, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c]
!996 = metadata !{i32 981, i32 0, metadata !327, null}
