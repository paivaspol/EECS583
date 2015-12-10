; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [71 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"Invalid variable indices %d and/or %d in BndCopyDirVI\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"Invalid variable indices %d and/or %d in BndCopyVI\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"Invalid group indices %d and/or %d in BndCopyDirGI\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"Invalid group indices %d and/or %d in BndCopyGI\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"Invalid group names '%s' and/or '%s' in BndCopyDirGN\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"Invalid group names '%s' and/or '%s' in BndCopyGN\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"Invalid variable names '%s' and/or '%s' in BndCopyDirVN\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"Invalid variable names '%s' and/or '%s' in BndCopyVN\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"Variable dimension of %d not supported\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"ApplyBndCopy: direction %d greater than dimension %d\00", align 1
@.str12 = private unnamed_addr constant [58 x i8] c"ApplyBndCopy: NULL pointer passed for stencil width array\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str14 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusBase/Boundary/src/CopyBoundary.c,v 1.21 2001/09/14 11:46:22 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_Boundary_CopyBoundary_c() #0 {
entry:
  ret i8* getelementptr inbounds ([95 x i8]* @.str14, i64 0, i64 0), !dbg !325
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %vi_to, i32 %vi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !326
  tail call void @llvm.dbg.value(metadata !{i32 %stencil_size}, i64 0, metadata !55), !dbg !327
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !56), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %vi_to}, i64 0, metadata !57), !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32 %vi_from}, i64 0, metadata !58), !dbg !330
  %call = tail call i32 @CCTK_NumVars() #6, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !60), !dbg !331
  %cmp = icmp sgt i32 %vi_to, -1, !dbg !332
  %cmp2 = icmp sgt i32 %call, %vi_to, !dbg !332
  %or.cond = and i1 %cmp, %cmp2, !dbg !332
  %cmp4 = icmp sgt i32 %vi_from, -1, !dbg !332
  %or.cond16 = and i1 %or.cond, %cmp4, !dbg !332
  %cmp6 = icmp sgt i32 %call, %vi_from, !dbg !332
  %or.cond17 = and i1 %or.cond16, %cmp6, !dbg !332
  br i1 %or.cond17, label %if.then, label %if.else, !dbg !332

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %vi_to, i32 %vi_from, i32 1) #7, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !59), !dbg !333
  br label %if.end, !dbg !335

if.else:                                          ; preds = %entry
  %call8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 157, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #6, !dbg !336
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !59), !dbg !339
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call7, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !340
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_dir, i32* %stencil_alldirs, i32 %dir, i32 %first_var_to, i32 %first_var_from, i32 %num_vars) #1 {
entry:
  %doBC = alloca [6 x i32], align 16
  %dstag = alloca [3 x i32], align 4
  %lsh = alloca [3 x i32], align 4
  %lsh682 = bitcast [3 x i32]* %lsh to i8*
  %lssh = alloca [3 x i32], align 4
  %stencil = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !228), !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %stencil_dir}, i64 0, metadata !229), !dbg !342
  call void @llvm.dbg.value(metadata !{i32* %stencil_alldirs}, i64 0, metadata !230), !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !231), !dbg !344
  call void @llvm.dbg.value(metadata !{i32 %first_var_to}, i64 0, metadata !232), !dbg !345
  call void @llvm.dbg.value(metadata !{i32 %first_var_from}, i64 0, metadata !233), !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %num_vars}, i64 0, metadata !234), !dbg !347
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %doBC}, metadata !245), !dbg !348
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %dstag}, metadata !249), !dbg !348
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %lsh}, metadata !253), !dbg !348
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %lssh}, metadata !254), !dbg !348
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %stencil}, metadata !255), !dbg !348
  %call = call i32 @CCTK_GroupIndexFromVarI(i32 %first_var_to) #6, !dbg !349
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !240), !dbg !349
  %call1 = call i32 @CCTK_GroupDimI(i32 %call) #6, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !241), !dbg !350
  %call2 = call i32 @CCTK_VarTypeI(i32 %first_var_to) #6, !dbg !351
  %call3 = call i32 @CCTK_VarTypeSize(i32 %call2) #6, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !244), !dbg !351
  %cmp = icmp sgt i32 %call1, 3, !dbg !352
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 883, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i32 %call1) #6, !dbg !353
  br label %return, !dbg !355

if.end:                                           ; preds = %entry
  %ispos = icmp sgt i32 %dir, -1, !dbg !356
  %neg = sub i32 0, %dir, !dbg !356
  %0 = select i1 %ispos, i32 %dir, i32 %neg, !dbg !356
  %cmp6 = icmp sgt i32 %0, %call1, !dbg !356
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !356

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 891, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 %call1) #6, !dbg !357
  br label %return, !dbg !359

if.end9:                                          ; preds = %if.end
  %tobool = icmp ne i32 %dir, 0, !dbg !360
  br i1 %tobool, label %if.then10, label %if.else, !dbg !360

if.then10:                                        ; preds = %if.end9
  %sub = add nsw i32 %0, -1, !dbg !361
  %idxprom = sext i32 %sub to i64, !dbg !361
  %arrayidx = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 %idxprom, !dbg !361
  store i32 %stencil_dir, i32* %arrayidx, align 4, !dbg !361, !tbaa !363
  br label %for.cond.preheader, !dbg !366

for.cond.preheader:                               ; preds = %if.then13, %if.then10
  %cmp18676 = icmp slt i32 %call1, 3, !dbg !367
  br i1 %cmp18676, label %for.body.lr.ph, label %for.end, !dbg !367

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = sext i32 %call1 to i64
  %scevgep = getelementptr [3 x i32]* %lsh, i64 0, i64 %1
  %scevgep750 = bitcast i32* %scevgep to i8*
  %2 = sub i32 2, %call1, !dbg !367
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 2, !dbg !367
  %5 = add i64 %4, 4, !dbg !367
  call void @llvm.memset.p0i8.i64(i8* %scevgep750, i8 0, i64 %5, i32 4, i1 false), !dbg !369
  br label %for.body, !dbg !367

if.else:                                          ; preds = %if.end9
  %tobool12 = icmp eq i32* %stencil_alldirs, null, !dbg !371
  br i1 %tobool12, label %if.else14, label %if.then13, !dbg !371

if.then13:                                        ; preds = %if.else
  %6 = bitcast [3 x i32]* %stencil to i8*, !dbg !372
  %7 = bitcast i32* %stencil_alldirs to i8*, !dbg !372
  %conv = sext i32 %call1 to i64, !dbg !372
  %mul = shl nsw i64 %conv, 2, !dbg !372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 %mul, i32 4, i1 false), !dbg !372
  br label %for.cond.preheader

if.else14:                                        ; preds = %if.else
  %call15 = call i32 @CCTK_Warn(i32 1, i32 908, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #6, !dbg !374
  br label %return, !dbg !376

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv748 = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next749, %for.body ]
  %arrayidx21 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 %indvars.iv748, !dbg !377
  store i32 1, i32* %arrayidx21, align 4, !dbg !377, !tbaa !363
  %indvars.iv.next749 = add i64 %indvars.iv748, 1, !dbg !367
  %8 = trunc i64 %indvars.iv.next749 to i32, !dbg !367
  %cmp18 = icmp slt i32 %8, 3, !dbg !367
  br i1 %cmp18, label %for.body, label %for.end, !dbg !367

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %arraydecay = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 0, !dbg !378
  %call24 = call i32 @CCTK_GroupStaggerDirArrayGI(i32* %arraydecay, i32 %call1, i32 %call) #6, !dbg !378
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !238), !dbg !379
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !239), !dbg !380
  %call25 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !381
  call void @llvm.dbg.value(metadata !{i32 %first_var_to}, i64 0, metadata !242), !dbg !382
  call void @llvm.dbg.value(metadata !{i32 %first_var_from}, i64 0, metadata !243), !dbg !382
  %add = add nsw i32 %num_vars, %first_var_to, !dbg !382
  %cmp27673 = icmp sgt i32 %num_vars, 0, !dbg !382
  br i1 %cmp27673, label %for.body29.lr.ph, label %return, !dbg !382

for.body29.lr.ph:                                 ; preds = %for.end
  %9 = bitcast [6 x i32]* %doBC to i8*, !dbg !383
  %tobool30 = icmp eq i8* %call25, null, !dbg !384
  %mul33 = shl nsw i32 %call1, 1, !dbg !385
  %cmp34633 = icmp sgt i32 %call1, 0, !dbg !385
  %GFSym = bitcast i8* %call25 to i32***, !dbg !388
  %cmp242 = icmp sgt i32 %call1, 1, !dbg !390
  %arrayidx245 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2, !dbg !391
  %cmp351 = icmp sgt i32 %call1, 2, !dbg !392
  %arrayidx354 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4, !dbg !393
  %arrayidx409 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 2, !dbg !394
  %10 = load i32* %arrayidx409, align 4, !dbg !394, !tbaa !363
  %cmp410671 = icmp sgt i32 %10, 0, !dbg !394
  %arrayidx414 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 1, !dbg !395
  %arrayidx419 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 0, !dbg !396
  %arrayidx424 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 0, !dbg !397
  %arrayidx425 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 1, !dbg !397
  %arrayidx426 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 2, !dbg !397
  %data436 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !397
  %conv448 = sext i32 %call3 to i64, !dbg !397
  %arrayidx305 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 1, !dbg !398
  %11 = load i32* %arrayidx305, align 4, !dbg !398, !tbaa !363
  %cmp306657 = icmp sgt i32 %11, 0, !dbg !398
  %arrayidx201 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 0, !dbg !399
  %12 = load i32* %arrayidx201, align 4, !dbg !399, !tbaa !363
  %cmp202643 = icmp sgt i32 %12, 0, !dbg !399
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !400
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !403
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !404
  %cmp106 = icmp slt i32 %dir, 0, !dbg !405
  %cmp119 = icmp sgt i32 %dir, 0, !dbg !407
  %13 = add i32 %call1, -1, !dbg !382
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2, !dbg !382
  %16 = add i64 %15, 4, !dbg !382
  %17 = sext i32 %first_var_to to i64
  %18 = sext i32 %first_var_from to i64, !dbg !382
  br label %for.body29, !dbg !382

for.body29:                                       ; preds = %for.body29.lr.ph, %for.inc460
  %indvars.iv746 = phi i64 [ %18, %for.body29.lr.ph ], [ %indvars.iv.next747, %for.inc460 ], !dbg !382
  %indvars.iv744 = phi i64 [ %17, %for.body29.lr.ph ], [ %indvars.iv.next745, %for.inc460 ]
  call void @llvm.memset.p0i8.i64(i8* %9, i8 1, i64 24, i32 16, i1 false), !dbg !383
  br i1 %tobool30, label %for.cond56.preheader, label %for.cond32.preheader, !dbg !384

for.cond32.preheader:                             ; preds = %for.body29
  br i1 %cmp34633, label %for.body36.lr.ph, label %for.inc460, !dbg !385

for.body36.lr.ph:                                 ; preds = %for.cond32.preheader
  %19 = load i32*** %GFSym, align 8, !dbg !388, !tbaa !408
  %arrayidx39 = getelementptr inbounds i32** %19, i64 %indvars.iv744, !dbg !388
  %20 = load i32** %arrayidx39, align 8, !dbg !388, !tbaa !408
  br label %for.body36, !dbg !385

for.body36:                                       ; preds = %for.body36.lr.ph, %for.body36
  %indvars.iv = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next, %for.body36 ]
  %arrayidx40 = getelementptr inbounds i32* %20, i64 %indvars.iv, !dbg !388
  %21 = load i32* %arrayidx40, align 4, !dbg !388, !tbaa !363
  %22 = and i32 %21, -2, !dbg !388
  %23 = icmp eq i32 %22, -42, !dbg !388
  %lor.ext = zext i1 %23 to i32, !dbg !388
  %arrayidx51 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv, !dbg !388
  store i32 %lor.ext, i32* %arrayidx51, align 4, !dbg !388, !tbaa !363
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !385
  %24 = trunc i64 %indvars.iv.next to i32, !dbg !385
  %cmp34 = icmp slt i32 %24, %mul33, !dbg !385
  br i1 %cmp34, label %for.body36, label %for.cond56.preheader, !dbg !385

for.cond56.preheader:                             ; preds = %for.body36, %for.body29
  br i1 %cmp34633, label %for.body59.lr.ph, label %for.inc460, !dbg !409

for.body59.lr.ph:                                 ; preds = %for.cond56.preheader
  %25 = load i32** %cctk_lsh, align 8, !dbg !400, !tbaa !408
  %26 = bitcast i32* %25 to i8*
  %27 = load i32** %cctk_lssh, align 8, !dbg !403, !tbaa !408
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lsh682, i8* %26, i64 %16, i32 4, i1 false), !dbg !400
  br label %for.body59, !dbg !409

for.body59:                                       ; preds = %for.inc134, %for.body59.lr.ph
  %indvars.iv678 = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next679, %for.inc134 ]
  %arrayidx65 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 %indvars.iv678, !dbg !403
  %28 = load i32* %arrayidx65, align 4, !dbg !403, !tbaa !363
  %29 = trunc i64 %indvars.iv678 to i32, !dbg !403
  %mul66 = mul nsw i32 %29, 3, !dbg !403
  %add67 = add nsw i32 %28, %mul66, !dbg !403
  %idxprom68 = sext i32 %add67 to i64, !dbg !403
  %arrayidx69 = getelementptr inbounds i32* %27, i64 %idxprom68, !dbg !403
  %30 = load i32* %arrayidx69, align 4, !dbg !403, !tbaa !363
  %arrayidx71 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 %indvars.iv678, !dbg !403
  store i32 %30, i32* %arrayidx71, align 4, !dbg !403, !tbaa !363
  %arrayidx74 = getelementptr inbounds i32* %25, i64 %indvars.iv678, !dbg !404
  %31 = load i32* %arrayidx74, align 4, !dbg !404, !tbaa !363
  %cmp75 = icmp sgt i32 %31, 1, !dbg !404
  %mul77 = shl nsw i32 %29, 1, !dbg !404
  %idxprom78 = sext i32 %mul77 to i64, !dbg !404
  br i1 %cmp75, label %land.rhs89, label %land.end.land.end96_crit_edge, !dbg !404

land.end.land.end96_crit_edge:                    ; preds = %for.body59
  %arrayidx83 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom78
  store i32 0, i32* %arrayidx83, align 8, !tbaa !363
  %add99626.pre = or i32 %mul77, 1
  %idxprom100.pre = sext i32 %add99626.pre to i64
  br label %land.end96, !dbg !410

land.rhs89:                                       ; preds = %for.body59
  %32 = load i32** %cctk_bbox, align 8, !dbg !404, !tbaa !408
  %arrayidx79 = getelementptr inbounds i32* %32, i64 %idxprom78, !dbg !404
  %33 = load i32* %arrayidx79, align 4, !dbg !404, !tbaa !363
  %tobool80 = icmp ne i32 %33, 0, !dbg !404
  %land.ext751 = zext i1 %tobool80 to i32
  %arrayidx83752 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom78
  %34 = load i32* %arrayidx83752, align 8, !tbaa !363
  %and753 = and i32 %34, %land.ext751
  store i32 %and753, i32* %arrayidx83752, align 8, !tbaa !363
  %add91627 = or i32 %mul77, 1, !dbg !410
  %idxprom92 = sext i32 %add91627 to i64, !dbg !410
  %35 = load i32** %cctk_bbox, align 8, !dbg !410, !tbaa !408
  %arrayidx94 = getelementptr inbounds i32* %35, i64 %idxprom92, !dbg !410
  %36 = load i32* %arrayidx94, align 4, !dbg !410, !tbaa !363
  %tobool95 = icmp ne i32 %36, 0, !dbg !410
  br label %land.end96

land.end96:                                       ; preds = %land.end.land.end96_crit_edge, %land.rhs89
  %and757 = phi i32 [ 0, %land.end.land.end96_crit_edge ], [ %and753, %land.rhs89 ]
  %arrayidx83755 = phi i32* [ %arrayidx83, %land.end.land.end96_crit_edge ], [ %arrayidx83752, %land.rhs89 ]
  %idxprom100.pre-phi = phi i64 [ %idxprom100.pre, %land.end.land.end96_crit_edge ], [ %idxprom92, %land.rhs89 ]
  %37 = phi i1 [ false, %land.end.land.end96_crit_edge ], [ %tobool95, %land.rhs89 ]
  %land.ext97 = zext i1 %37 to i32
  %arrayidx101 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %idxprom100.pre-phi
  %38 = load i32* %arrayidx101, align 4, !tbaa !363
  %and102 = and i32 %38, %land.ext97
  store i32 %and102, i32* %arrayidx101, align 4, !tbaa !363
  br i1 %tobool, label %if.then105, label %for.inc134, !dbg !411

if.then105:                                       ; preds = %land.end96
  br i1 %cmp106, label %land.end113.thread, label %land.end113, !dbg !405

land.end113.thread:                               ; preds = %if.then105
  %39 = add nsw i64 %indvars.iv678, 1, !dbg !405
  %40 = trunc i64 %39 to i32, !dbg !405
  %cmp111 = icmp eq i32 %40, %0, !dbg !405
  %land.ext114628 = zext i1 %cmp111 to i32
  %and118629 = and i32 %and757, %land.ext114628
  store i32 %and118629, i32* %arrayidx83755, align 8, !tbaa !363
  br label %land.end126, !dbg !407

land.end113:                                      ; preds = %if.then105
  store i32 0, i32* %arrayidx83755, align 8, !tbaa !363
  br i1 %cmp119, label %land.rhs121, label %land.end126, !dbg !407

land.rhs121:                                      ; preds = %land.end113
  %41 = add nsw i64 %indvars.iv678, 1, !dbg !407
  %42 = trunc i64 %41 to i32, !dbg !407
  %cmp124 = icmp eq i32 %42, %0, !dbg !407
  br label %land.end126

land.end126:                                      ; preds = %land.end113.thread, %land.rhs121, %land.end113
  %43 = phi i1 [ false, %land.end113 ], [ %cmp124, %land.rhs121 ], [ false, %land.end113.thread ]
  %land.ext127 = zext i1 %43 to i32
  %and132 = and i32 %and102, %land.ext127
  store i32 %and132, i32* %arrayidx101, align 4, !tbaa !363
  br label %for.inc134, !dbg !412

for.inc134:                                       ; preds = %land.end96, %land.end126
  %indvars.iv.next679 = add i64 %indvars.iv678, 1, !dbg !409
  %lftr.wideiv = trunc i64 %indvars.iv.next679 to i32, !dbg !409
  %exitcond = icmp eq i32 %lftr.wideiv, %call1, !dbg !409
  br i1 %exitcond, label %for.end136, label %for.body59, !dbg !409

for.end136:                                       ; preds = %for.inc134
  br i1 %cmp34633, label %if.then139, label %for.inc460, !dbg !413

if.then139:                                       ; preds = %for.end136
  %44 = bitcast [6 x i32]* %doBC to i64*, !dbg !414
  %45 = load i64* %44, align 16, !dbg !414
  %46 = trunc i64 %45 to i32, !dbg !414
  %tobool141 = icmp eq i32 %46, 0, !dbg !414
  br i1 %tobool141, label %if.end186, label %for.cond143.preheader, !dbg !414

for.cond143.preheader:                            ; preds = %if.then139
  %47 = load i32* %arrayidx426, align 4, !dbg !415, !tbaa !363
  %cmp145641 = icmp sgt i32 %47, 0, !dbg !415
  br i1 %cmp145641, label %for.cond148.preheader.lr.ph, label %if.end186, !dbg !415

for.cond148.preheader.lr.ph:                      ; preds = %for.cond143.preheader
  %48 = load i32* %arrayidx414, align 4, !dbg !416, !tbaa !363
  %cmp150639 = icmp sgt i32 %48, 0, !dbg !416
  %49 = load i32* %arrayidx424, align 4, !dbg !417, !tbaa !363
  %50 = load i32* %arrayidx425, align 4, !dbg !417, !tbaa !363
  br label %for.cond148.preheader, !dbg !415

for.cond148.preheader:                            ; preds = %for.cond148.preheader.lr.ph, %for.inc183
  %indvars.iv691 = phi i64 [ 0, %for.cond148.preheader.lr.ph ], [ %indvars.iv.next692, %for.inc183 ]
  br i1 %cmp150639, label %for.cond153.preheader.lr.ph, label %for.inc183, !dbg !416

for.cond153.preheader.lr.ph:                      ; preds = %for.cond148.preheader
  %51 = trunc i64 %indvars.iv691 to i32, !dbg !417
  %mul160 = mul nsw i32 %50, %51, !dbg !417
  %52 = zext i32 %mul160 to i64, !dbg !416
  br label %for.cond153.preheader, !dbg !416

for.cond153.preheader:                            ; preds = %for.inc180, %for.cond153.preheader.lr.ph
  %indvars.iv686 = phi i64 [ 0, %for.cond153.preheader.lr.ph ], [ %indvars.iv.next687, %for.inc180 ]
  br i1 %cmp202643, label %for.body157.lr.ph, label %for.inc180, !dbg !418

for.body157.lr.ph:                                ; preds = %for.cond153.preheader
  %53 = add nsw i64 %52, %indvars.iv686, !dbg !417
  %54 = trunc i64 %53 to i32, !dbg !417
  %mul162 = mul nsw i32 %54, %49, !dbg !417
  %55 = zext i32 %mul162 to i64, !dbg !418
  br label %for.body157, !dbg !418

for.body157:                                      ; preds = %for.body157.lr.ph, %for.body157
  %indvars.iv683 = phi i64 [ 0, %for.body157.lr.ph ], [ %indvars.iv.next684, %for.body157 ]
  %56 = add nsw i64 %55, %indvars.iv683, !dbg !417
  %57 = trunc i64 %56 to i32, !dbg !417
  %mul164 = mul nsw i32 %57, %call3, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %mul164}, i64 0, metadata !264), !dbg !417
  %58 = load i8**** %data436, align 8, !dbg !417, !tbaa !408
  %arrayidx167 = getelementptr inbounds i8*** %58, i64 %indvars.iv744, !dbg !417
  %59 = load i8*** %arrayidx167, align 8, !dbg !417, !tbaa !408
  %60 = load i8** %59, align 8, !dbg !417, !tbaa !408
  %idx.ext = sext i32 %mul164 to i64, !dbg !417
  %add.ptr = getelementptr inbounds i8* %60, i64 %idx.ext, !dbg !417
  %arrayidx172 = getelementptr inbounds i8*** %58, i64 %indvars.iv746, !dbg !417
  %61 = load i8*** %arrayidx172, align 8, !dbg !417, !tbaa !408
  %62 = load i8** %61, align 8, !dbg !417, !tbaa !408
  %add.ptr175 = getelementptr inbounds i8* %62, i64 %idx.ext, !dbg !417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %add.ptr175, i64 %conv448, i32 1, i1 false), !dbg !417
  %indvars.iv.next684 = add i64 %indvars.iv683, 1, !dbg !418
  %63 = trunc i64 %indvars.iv.next684 to i32, !dbg !418
  %cmp155 = icmp slt i32 %63, %12, !dbg !418
  br i1 %cmp155, label %for.body157, label %for.inc180, !dbg !418

for.inc180:                                       ; preds = %for.body157, %for.cond153.preheader
  %indvars.iv.next687 = add i64 %indvars.iv686, 1, !dbg !416
  %lftr.wideiv689 = trunc i64 %indvars.iv.next687 to i32, !dbg !416
  %exitcond690 = icmp eq i32 %lftr.wideiv689, %48, !dbg !416
  br i1 %exitcond690, label %for.inc183, label %for.cond153.preheader, !dbg !416

for.inc183:                                       ; preds = %for.inc180, %for.cond148.preheader
  %indvars.iv.next692 = add i64 %indvars.iv691, 1, !dbg !415
  %64 = trunc i64 %indvars.iv.next692 to i32, !dbg !415
  %cmp145 = icmp slt i32 %64, %47, !dbg !415
  br i1 %cmp145, label %for.cond148.preheader, label %if.end186, !dbg !415

if.end186:                                        ; preds = %for.cond143.preheader, %for.inc183, %if.then139
  %tobool188 = icmp ult i64 %45, 4294967296, !dbg !419
  br i1 %tobool188, label %if.end241, label %for.cond190.preheader, !dbg !419

for.cond190.preheader:                            ; preds = %if.end186
  %65 = load i32* %arrayidx426, align 4, !dbg !420, !tbaa !363
  %cmp192647 = icmp sgt i32 %65, 0, !dbg !420
  br i1 %cmp192647, label %for.cond195.preheader.lr.ph, label %if.end241, !dbg !420

for.cond195.preheader.lr.ph:                      ; preds = %for.cond190.preheader
  %66 = load i32* %arrayidx414, align 4, !dbg !421, !tbaa !363
  %cmp197645 = icmp sgt i32 %66, 0, !dbg !421
  %67 = load i32* %arrayidx419, align 4, !dbg !422, !tbaa !363
  %68 = load i32* %arrayidx424, align 4, !dbg !422, !tbaa !363
  %69 = load i32* %arrayidx425, align 4, !dbg !422, !tbaa !363
  br label %for.cond195.preheader, !dbg !420

for.cond195.preheader:                            ; preds = %for.cond195.preheader.lr.ph, %for.inc237
  %k.1648 = phi i32 [ 0, %for.cond195.preheader.lr.ph ], [ %inc238, %for.inc237 ]
  br i1 %cmp197645, label %for.cond200.preheader.lr.ph, label %for.inc237, !dbg !421

for.cond200.preheader.lr.ph:                      ; preds = %for.cond195.preheader
  %mul211 = mul nsw i32 %69, %k.1648, !dbg !422
  br label %for.cond200.preheader, !dbg !421

for.cond200.preheader:                            ; preds = %for.inc234, %for.cond200.preheader.lr.ph
  %j.1646 = phi i32 [ 0, %for.cond200.preheader.lr.ph ], [ %inc235, %for.inc234 ]
  br i1 %cmp202643, label %for.body204.lr.ph, label %for.inc234, !dbg !399

for.body204.lr.ph:                                ; preds = %for.cond200.preheader
  %add212 = add nsw i32 %mul211, %j.1646, !dbg !422
  %mul213 = mul nsw i32 %add212, %68, !dbg !422
  br label %for.body204, !dbg !399

for.body204:                                      ; preds = %for.body204.lr.ph, %for.body204
  %indvars.iv693 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next694, %for.body204 ]
  %70 = xor i64 %indvars.iv693, 4294967295, !dbg !422
  %71 = trunc i64 %70 to i32, !dbg !422
  %sub208 = add i32 %67, %71, !dbg !422
  %add214 = add i32 %sub208, %mul213, !dbg !422
  %mul215 = mul nsw i32 %add214, %call3, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %mul215}, i64 0, metadata !276), !dbg !422
  %72 = load i8**** %data436, align 8, !dbg !422, !tbaa !408
  %arrayidx219 = getelementptr inbounds i8*** %72, i64 %indvars.iv744, !dbg !422
  %73 = load i8*** %arrayidx219, align 8, !dbg !422, !tbaa !408
  %74 = load i8** %73, align 8, !dbg !422, !tbaa !408
  %idx.ext221 = sext i32 %mul215 to i64, !dbg !422
  %add.ptr222 = getelementptr inbounds i8* %74, i64 %idx.ext221, !dbg !422
  %arrayidx226 = getelementptr inbounds i8*** %72, i64 %indvars.iv746, !dbg !422
  %75 = load i8*** %arrayidx226, align 8, !dbg !422, !tbaa !408
  %76 = load i8** %75, align 8, !dbg !422, !tbaa !408
  %add.ptr229 = getelementptr inbounds i8* %76, i64 %idx.ext221, !dbg !422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr222, i8* %add.ptr229, i64 %conv448, i32 1, i1 false), !dbg !422
  %indvars.iv.next694 = add i64 %indvars.iv693, 1, !dbg !399
  %77 = trunc i64 %indvars.iv.next694 to i32, !dbg !399
  %cmp202 = icmp slt i32 %77, %12, !dbg !399
  br i1 %cmp202, label %for.body204, label %for.inc234, !dbg !399

for.inc234:                                       ; preds = %for.body204, %for.cond200.preheader
  %inc235 = add nsw i32 %j.1646, 1, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %inc235}, i64 0, metadata !236), !dbg !421
  %exitcond696 = icmp eq i32 %inc235, %66, !dbg !421
  br i1 %exitcond696, label %for.inc237, label %for.cond200.preheader, !dbg !421

for.inc237:                                       ; preds = %for.inc234, %for.cond195.preheader
  %inc238 = add nsw i32 %k.1648, 1, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %inc238}, i64 0, metadata !237), !dbg !420
  %cmp192 = icmp slt i32 %inc238, %65, !dbg !420
  br i1 %cmp192, label %for.cond195.preheader, label %if.end241, !dbg !420

if.end241:                                        ; preds = %for.cond190.preheader, %for.inc237, %if.end186
  br i1 %cmp242, label %if.then244, label %for.inc460, !dbg !390

if.then244:                                       ; preds = %if.end241
  %78 = bitcast i32* %arrayidx245 to i64*, !dbg !391
  %79 = load i64* %78, align 8, !dbg !391
  %80 = trunc i64 %79 to i32, !dbg !391
  %tobool246 = icmp eq i32 %80, 0, !dbg !391
  br i1 %tobool246, label %if.end295, label %for.cond248.preheader, !dbg !391

for.cond248.preheader:                            ; preds = %if.then244
  %81 = load i32* %arrayidx426, align 4, !dbg !423, !tbaa !363
  %cmp250653 = icmp sgt i32 %81, 0, !dbg !423
  br i1 %cmp250653, label %for.cond253.preheader.lr.ph, label %if.end295, !dbg !423

for.cond253.preheader.lr.ph:                      ; preds = %for.cond248.preheader
  %82 = load i32* %arrayidx419, align 4, !dbg !424, !tbaa !363
  %cmp260649 = icmp sgt i32 %82, 0, !dbg !424
  %83 = load i32* %arrayidx424, align 4, !dbg !425, !tbaa !363
  %84 = load i32* %arrayidx425, align 4, !dbg !425, !tbaa !363
  br label %for.cond253.preheader, !dbg !423

for.cond253.preheader:                            ; preds = %for.cond253.preheader.lr.ph, %for.inc292
  %indvars.iv707 = phi i64 [ 0, %for.cond253.preheader.lr.ph ], [ %indvars.iv.next708, %for.inc292 ]
  br i1 %cmp306657, label %for.cond258.preheader.lr.ph, label %for.inc292, !dbg !426

for.cond258.preheader.lr.ph:                      ; preds = %for.cond253.preheader
  %85 = trunc i64 %indvars.iv707 to i32, !dbg !425
  %mul266 = mul nsw i32 %84, %85, !dbg !425
  %86 = zext i32 %mul266 to i64, !dbg !426
  br label %for.cond258.preheader, !dbg !426

for.cond258.preheader:                            ; preds = %for.inc289, %for.cond258.preheader.lr.ph
  %indvars.iv702 = phi i64 [ 0, %for.cond258.preheader.lr.ph ], [ %indvars.iv.next703, %for.inc289 ]
  br i1 %cmp260649, label %for.body262.lr.ph, label %for.inc289, !dbg !424

for.body262.lr.ph:                                ; preds = %for.cond258.preheader
  %87 = add nsw i64 %86, %indvars.iv702, !dbg !425
  %88 = trunc i64 %87 to i32, !dbg !425
  %mul268 = mul nsw i32 %88, %83, !dbg !425
  %89 = zext i32 %mul268 to i64, !dbg !424
  br label %for.body262, !dbg !424

for.body262:                                      ; preds = %for.body262, %for.body262.lr.ph
  %indvars.iv697 = phi i64 [ 0, %for.body262.lr.ph ], [ %indvars.iv.next698, %for.body262 ]
  %90 = add nsw i64 %89, %indvars.iv697, !dbg !425
  %91 = trunc i64 %90 to i32, !dbg !425
  %mul270 = mul nsw i32 %91, %call3, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %mul270}, i64 0, metadata !285), !dbg !425
  %92 = load i8**** %data436, align 8, !dbg !425, !tbaa !408
  %arrayidx274 = getelementptr inbounds i8*** %92, i64 %indvars.iv744, !dbg !425
  %93 = load i8*** %arrayidx274, align 8, !dbg !425, !tbaa !408
  %94 = load i8** %93, align 8, !dbg !425, !tbaa !408
  %idx.ext276 = sext i32 %mul270 to i64, !dbg !425
  %add.ptr277 = getelementptr inbounds i8* %94, i64 %idx.ext276, !dbg !425
  %arrayidx281 = getelementptr inbounds i8*** %92, i64 %indvars.iv746, !dbg !425
  %95 = load i8*** %arrayidx281, align 8, !dbg !425, !tbaa !408
  %96 = load i8** %95, align 8, !dbg !425, !tbaa !408
  %add.ptr284 = getelementptr inbounds i8* %96, i64 %idx.ext276, !dbg !425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr277, i8* %add.ptr284, i64 %conv448, i32 1, i1 false), !dbg !425
  %indvars.iv.next698 = add i64 %indvars.iv697, 1, !dbg !424
  %lftr.wideiv700 = trunc i64 %indvars.iv.next698 to i32, !dbg !424
  %exitcond701 = icmp eq i32 %lftr.wideiv700, %82, !dbg !424
  br i1 %exitcond701, label %for.inc289, label %for.body262, !dbg !424

for.inc289:                                       ; preds = %for.body262, %for.cond258.preheader
  %indvars.iv.next703 = add i64 %indvars.iv702, 1, !dbg !426
  %lftr.wideiv705 = trunc i64 %indvars.iv.next703 to i32, !dbg !426
  %exitcond706 = icmp eq i32 %lftr.wideiv705, %11, !dbg !426
  br i1 %exitcond706, label %for.inc292, label %for.cond258.preheader, !dbg !426

for.inc292:                                       ; preds = %for.inc289, %for.cond253.preheader
  %indvars.iv.next708 = add i64 %indvars.iv707, 1, !dbg !423
  %97 = trunc i64 %indvars.iv.next708 to i32, !dbg !423
  %cmp250 = icmp slt i32 %97, %81, !dbg !423
  br i1 %cmp250, label %for.cond253.preheader, label %if.end295, !dbg !423

if.end295:                                        ; preds = %for.cond248.preheader, %for.inc292, %if.then244
  %tobool297 = icmp ult i64 %79, 4294967296, !dbg !427
  br i1 %tobool297, label %if.end350, label %for.cond299.preheader, !dbg !427

for.cond299.preheader:                            ; preds = %if.end295
  %98 = load i32* %arrayidx426, align 4, !dbg !428, !tbaa !363
  %cmp301659 = icmp sgt i32 %98, 0, !dbg !428
  br i1 %cmp301659, label %for.cond304.preheader.lr.ph, label %if.end350, !dbg !428

for.cond304.preheader.lr.ph:                      ; preds = %for.cond299.preheader
  %99 = load i32* %arrayidx419, align 4, !dbg !429, !tbaa !363
  %cmp311655 = icmp sgt i32 %99, 0, !dbg !429
  %100 = load i32* %arrayidx424, align 4, !dbg !430, !tbaa !363
  %101 = load i32* %arrayidx414, align 4, !dbg !430, !tbaa !363
  %102 = load i32* %arrayidx425, align 4, !dbg !430, !tbaa !363
  br label %for.cond304.preheader, !dbg !428

for.cond304.preheader:                            ; preds = %for.cond304.preheader.lr.ph, %for.inc346
  %k.3660 = phi i32 [ 0, %for.cond304.preheader.lr.ph ], [ %inc347, %for.inc346 ]
  br i1 %cmp306657, label %for.cond309.preheader.lr.ph, label %for.inc346, !dbg !398

for.cond309.preheader.lr.ph:                      ; preds = %for.cond304.preheader
  %mul320 = mul nsw i32 %102, %k.3660, !dbg !430
  br label %for.cond309.preheader, !dbg !398

for.cond309.preheader:                            ; preds = %for.inc343, %for.cond309.preheader.lr.ph
  %indvars.iv712 = phi i64 [ 0, %for.cond309.preheader.lr.ph ], [ %indvars.iv.next713, %for.inc343 ]
  br i1 %cmp311655, label %for.body313.lr.ph, label %for.inc343, !dbg !429

for.body313.lr.ph:                                ; preds = %for.cond309.preheader
  %103 = xor i64 %indvars.iv712, 4294967295, !dbg !430
  %104 = trunc i64 %103 to i32, !dbg !430
  %sub318 = add i32 %101, %104, !dbg !430
  %add321 = add i32 %sub318, %mul320, !dbg !430
  %mul322 = mul nsw i32 %add321, %100, !dbg !430
  %105 = zext i32 %mul322 to i64, !dbg !429
  br label %for.body313, !dbg !429

for.body313:                                      ; preds = %for.body313.lr.ph, %for.body313
  %indvars.iv709 = phi i64 [ 0, %for.body313.lr.ph ], [ %indvars.iv.next710, %for.body313 ]
  %106 = add nsw i64 %105, %indvars.iv709, !dbg !430
  %107 = trunc i64 %106 to i32, !dbg !430
  %mul324 = mul nsw i32 %107, %call3, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %mul324}, i64 0, metadata !295), !dbg !430
  %108 = load i8**** %data436, align 8, !dbg !430, !tbaa !408
  %arrayidx328 = getelementptr inbounds i8*** %108, i64 %indvars.iv744, !dbg !430
  %109 = load i8*** %arrayidx328, align 8, !dbg !430, !tbaa !408
  %110 = load i8** %109, align 8, !dbg !430, !tbaa !408
  %idx.ext330 = sext i32 %mul324 to i64, !dbg !430
  %add.ptr331 = getelementptr inbounds i8* %110, i64 %idx.ext330, !dbg !430
  %arrayidx335 = getelementptr inbounds i8*** %108, i64 %indvars.iv746, !dbg !430
  %111 = load i8*** %arrayidx335, align 8, !dbg !430, !tbaa !408
  %112 = load i8** %111, align 8, !dbg !430, !tbaa !408
  %add.ptr338 = getelementptr inbounds i8* %112, i64 %idx.ext330, !dbg !430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr331, i8* %add.ptr338, i64 %conv448, i32 1, i1 false), !dbg !430
  %indvars.iv.next710 = add i64 %indvars.iv709, 1, !dbg !429
  %113 = trunc i64 %indvars.iv.next710 to i32, !dbg !429
  %cmp311 = icmp slt i32 %113, %99, !dbg !429
  br i1 %cmp311, label %for.body313, label %for.inc343, !dbg !429

for.inc343:                                       ; preds = %for.body313, %for.cond309.preheader
  %indvars.iv.next713 = add i64 %indvars.iv712, 1, !dbg !398
  %lftr.wideiv715 = trunc i64 %indvars.iv.next713 to i32, !dbg !398
  %exitcond716 = icmp eq i32 %lftr.wideiv715, %11, !dbg !398
  br i1 %exitcond716, label %for.inc346, label %for.cond309.preheader, !dbg !398

for.inc346:                                       ; preds = %for.inc343, %for.cond304.preheader
  %inc347 = add nsw i32 %k.3660, 1, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %inc347}, i64 0, metadata !237), !dbg !428
  %cmp301 = icmp slt i32 %inc347, %98, !dbg !428
  br i1 %cmp301, label %for.cond304.preheader, label %if.end350, !dbg !428

if.end350:                                        ; preds = %for.cond299.preheader, %for.inc346, %if.end295
  br i1 %cmp351, label %if.then353, label %for.inc460, !dbg !392

if.then353:                                       ; preds = %if.end350
  %114 = bitcast i32* %arrayidx354 to i64*, !dbg !393
  %115 = load i64* %114, align 16, !dbg !393
  %116 = trunc i64 %115 to i32, !dbg !393
  %tobool355 = icmp eq i32 %116, 0, !dbg !393
  %cmp410671.not = xor i1 %cmp410671, true, !dbg !393
  %brmerge = or i1 %tobool355, %cmp410671.not, !dbg !393
  br i1 %brmerge, label %if.end404, label %for.cond362.preheader.lr.ph, !dbg !393

for.cond362.preheader.lr.ph:                      ; preds = %if.then353
  %117 = load i32* %arrayidx414, align 4, !dbg !431, !tbaa !363
  %cmp364663 = icmp sgt i32 %117, 0, !dbg !431
  %118 = load i32* %arrayidx419, align 4, !dbg !432, !tbaa !363
  %cmp369661 = icmp sgt i32 %118, 0, !dbg !432
  %119 = load i32* %arrayidx424, align 4, !dbg !433, !tbaa !363
  %120 = load i32* %arrayidx425, align 4, !dbg !433, !tbaa !363
  br label %for.cond362.preheader, !dbg !434

for.cond362.preheader:                            ; preds = %for.inc401, %for.cond362.preheader.lr.ph
  %indvars.iv727 = phi i64 [ 0, %for.cond362.preheader.lr.ph ], [ %indvars.iv.next728, %for.inc401 ]
  br i1 %cmp364663, label %for.cond367.preheader.lr.ph, label %for.inc401, !dbg !431

for.cond367.preheader.lr.ph:                      ; preds = %for.cond362.preheader
  %121 = trunc i64 %indvars.iv727 to i32, !dbg !433
  %mul375 = mul nsw i32 %120, %121, !dbg !433
  %122 = zext i32 %mul375 to i64, !dbg !431
  br label %for.cond367.preheader, !dbg !431

for.cond367.preheader:                            ; preds = %for.inc398, %for.cond367.preheader.lr.ph
  %indvars.iv722 = phi i64 [ 0, %for.cond367.preheader.lr.ph ], [ %indvars.iv.next723, %for.inc398 ]
  br i1 %cmp369661, label %for.body371.lr.ph, label %for.inc398, !dbg !432

for.body371.lr.ph:                                ; preds = %for.cond367.preheader
  %123 = add nsw i64 %122, %indvars.iv722, !dbg !433
  %124 = trunc i64 %123 to i32, !dbg !433
  %mul377 = mul nsw i32 %124, %119, !dbg !433
  %125 = zext i32 %mul377 to i64, !dbg !432
  br label %for.body371, !dbg !432

for.body371:                                      ; preds = %for.body371, %for.body371.lr.ph
  %indvars.iv717 = phi i64 [ 0, %for.body371.lr.ph ], [ %indvars.iv.next718, %for.body371 ]
  %126 = add nsw i64 %125, %indvars.iv717, !dbg !433
  %127 = trunc i64 %126 to i32, !dbg !433
  %mul379 = mul nsw i32 %127, %call3, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %mul379}, i64 0, metadata !304), !dbg !433
  %128 = load i8**** %data436, align 8, !dbg !433, !tbaa !408
  %arrayidx383 = getelementptr inbounds i8*** %128, i64 %indvars.iv744, !dbg !433
  %129 = load i8*** %arrayidx383, align 8, !dbg !433, !tbaa !408
  %130 = load i8** %129, align 8, !dbg !433, !tbaa !408
  %idx.ext385 = sext i32 %mul379 to i64, !dbg !433
  %add.ptr386 = getelementptr inbounds i8* %130, i64 %idx.ext385, !dbg !433
  %arrayidx390 = getelementptr inbounds i8*** %128, i64 %indvars.iv746, !dbg !433
  %131 = load i8*** %arrayidx390, align 8, !dbg !433, !tbaa !408
  %132 = load i8** %131, align 8, !dbg !433, !tbaa !408
  %add.ptr393 = getelementptr inbounds i8* %132, i64 %idx.ext385, !dbg !433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr386, i8* %add.ptr393, i64 %conv448, i32 1, i1 false), !dbg !433
  %indvars.iv.next718 = add i64 %indvars.iv717, 1, !dbg !432
  %lftr.wideiv720 = trunc i64 %indvars.iv.next718 to i32, !dbg !432
  %exitcond721 = icmp eq i32 %lftr.wideiv720, %118, !dbg !432
  br i1 %exitcond721, label %for.inc398, label %for.body371, !dbg !432

for.inc398:                                       ; preds = %for.body371, %for.cond367.preheader
  %indvars.iv.next723 = add i64 %indvars.iv722, 1, !dbg !431
  %lftr.wideiv725 = trunc i64 %indvars.iv.next723 to i32, !dbg !431
  %exitcond726 = icmp eq i32 %lftr.wideiv725, %117, !dbg !431
  br i1 %exitcond726, label %for.inc401, label %for.cond367.preheader, !dbg !431

for.inc401:                                       ; preds = %for.inc398, %for.cond362.preheader
  %indvars.iv.next728 = add i64 %indvars.iv727, 1, !dbg !434
  %lftr.wideiv729 = trunc i64 %indvars.iv.next728 to i32, !dbg !434
  %exitcond730 = icmp eq i32 %lftr.wideiv729, %10, !dbg !434
  br i1 %exitcond730, label %if.end404, label %for.cond362.preheader, !dbg !434

if.end404:                                        ; preds = %if.then353, %for.inc401
  %tobool406 = icmp ult i64 %115, 4294967296, !dbg !435
  %cmp410671.not759 = xor i1 %cmp410671, true, !dbg !435
  %brmerge760 = or i1 %tobool406, %cmp410671.not759, !dbg !435
  br i1 %brmerge760, label %for.inc460, label %for.cond413.preheader.lr.ph, !dbg !435

for.cond413.preheader.lr.ph:                      ; preds = %if.end404
  %133 = load i32* %arrayidx414, align 4, !dbg !395, !tbaa !363
  %cmp415669 = icmp sgt i32 %133, 0, !dbg !395
  %134 = load i32* %arrayidx419, align 4, !dbg !396, !tbaa !363
  %cmp420667 = icmp sgt i32 %134, 0, !dbg !396
  %135 = load i32* %arrayidx424, align 4, !dbg !397, !tbaa !363
  %136 = load i32* %arrayidx425, align 4, !dbg !397, !tbaa !363
  %137 = load i32* %arrayidx426, align 4, !dbg !397, !tbaa !363
  br label %for.cond413.preheader, !dbg !394

for.cond413.preheader:                            ; preds = %for.inc455, %for.cond413.preheader.lr.ph
  %indvars.iv739 = phi i64 [ 0, %for.cond413.preheader.lr.ph ], [ %indvars.iv.next740, %for.inc455 ]
  br i1 %cmp415669, label %for.cond418.preheader.lr.ph, label %for.inc455, !dbg !395

for.cond418.preheader.lr.ph:                      ; preds = %for.cond413.preheader
  %138 = xor i64 %indvars.iv739, 4294967295, !dbg !397
  %139 = trunc i64 %138 to i32, !dbg !397
  %sub428 = add i32 %137, %139, !dbg !397
  %mul429 = mul nsw i32 %sub428, %136, !dbg !397
  %140 = zext i32 %mul429 to i64, !dbg !395
  br label %for.cond418.preheader, !dbg !395

for.cond418.preheader:                            ; preds = %for.inc452, %for.cond418.preheader.lr.ph
  %indvars.iv734 = phi i64 [ 0, %for.cond418.preheader.lr.ph ], [ %indvars.iv.next735, %for.inc452 ]
  br i1 %cmp420667, label %for.body422.lr.ph, label %for.inc452, !dbg !396

for.body422.lr.ph:                                ; preds = %for.cond418.preheader
  %141 = add nsw i64 %140, %indvars.iv734, !dbg !397
  %142 = trunc i64 %141 to i32, !dbg !397
  %mul431 = mul nsw i32 %142, %135, !dbg !397
  %143 = zext i32 %mul431 to i64, !dbg !396
  br label %for.body422, !dbg !396

for.body422:                                      ; preds = %for.body422.lr.ph, %for.body422
  %indvars.iv731 = phi i64 [ 0, %for.body422.lr.ph ], [ %indvars.iv.next732, %for.body422 ]
  %144 = add nsw i64 %143, %indvars.iv731, !dbg !397
  %145 = trunc i64 %144 to i32, !dbg !397
  %mul433 = mul nsw i32 %145, %call3, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %mul433}, i64 0, metadata !314), !dbg !397
  %146 = load i8**** %data436, align 8, !dbg !397, !tbaa !408
  %arrayidx437 = getelementptr inbounds i8*** %146, i64 %indvars.iv744, !dbg !397
  %147 = load i8*** %arrayidx437, align 8, !dbg !397, !tbaa !408
  %148 = load i8** %147, align 8, !dbg !397, !tbaa !408
  %idx.ext439 = sext i32 %mul433 to i64, !dbg !397
  %add.ptr440 = getelementptr inbounds i8* %148, i64 %idx.ext439, !dbg !397
  %arrayidx444 = getelementptr inbounds i8*** %146, i64 %indvars.iv746, !dbg !397
  %149 = load i8*** %arrayidx444, align 8, !dbg !397, !tbaa !408
  %150 = load i8** %149, align 8, !dbg !397, !tbaa !408
  %add.ptr447 = getelementptr inbounds i8* %150, i64 %idx.ext439, !dbg !397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr440, i8* %add.ptr447, i64 %conv448, i32 1, i1 false), !dbg !397
  %indvars.iv.next732 = add i64 %indvars.iv731, 1, !dbg !396
  %151 = trunc i64 %indvars.iv.next732 to i32, !dbg !396
  %cmp420 = icmp slt i32 %151, %134, !dbg !396
  br i1 %cmp420, label %for.body422, label %for.inc452, !dbg !396

for.inc452:                                       ; preds = %for.body422, %for.cond418.preheader
  %indvars.iv.next735 = add i64 %indvars.iv734, 1, !dbg !395
  %lftr.wideiv737 = trunc i64 %indvars.iv.next735 to i32, !dbg !395
  %exitcond738 = icmp eq i32 %lftr.wideiv737, %133, !dbg !395
  br i1 %exitcond738, label %for.inc455, label %for.cond418.preheader, !dbg !395

for.inc455:                                       ; preds = %for.inc452, %for.cond413.preheader
  %indvars.iv.next740 = add i64 %indvars.iv739, 1, !dbg !394
  %lftr.wideiv742 = trunc i64 %indvars.iv.next740 to i32, !dbg !394
  %exitcond743 = icmp eq i32 %lftr.wideiv742, %10, !dbg !394
  br i1 %exitcond743, label %for.inc460, label %for.cond413.preheader, !dbg !394

for.inc460:                                       ; preds = %if.end404, %for.cond32.preheader, %for.cond56.preheader, %for.inc455, %for.end136, %if.end241, %if.end350
  %indvars.iv.next745 = add i64 %indvars.iv744, 1, !dbg !382
  %indvars.iv.next747 = add i64 %indvars.iv746, 1, !dbg !382
  %152 = trunc i64 %indvars.iv.next745 to i32, !dbg !382
  %cmp27 = icmp slt i32 %152, %add, !dbg !382
  br i1 %cmp27, label %for.body29, label %return, !dbg !382

return:                                           ; preds = %for.end, %for.inc460, %if.else14, %if.then7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then7 ], [ -3, %if.else14 ], [ 0, %for.inc460 ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !436
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @bndcopydirvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %stencil_size, i32* nocapture %dir, i32* nocapture %vi_to, i32* nocapture %vi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !67), !dbg !437
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !68), !dbg !438
  tail call void @llvm.dbg.value(metadata !{i32* %stencil_size}, i64 0, metadata !69), !dbg !439
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !70), !dbg !440
  tail call void @llvm.dbg.value(metadata !{i32* %vi_to}, i64 0, metadata !71), !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32* %vi_from}, i64 0, metadata !72), !dbg !442
  %0 = load i32* %stencil_size, align 4, !dbg !443, !tbaa !363
  %1 = load i32* %dir, align 4, !dbg !443, !tbaa !363
  %2 = load i32* %vi_to, align 4, !dbg !443, !tbaa !363
  %3 = load i32* %vi_from, align 4, !dbg !443, !tbaa !363
  %call = tail call i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %0, i32 %1, i32 %2, i32 %3) #7, !dbg !443
  store i32 %call, i32* %ierr, align 4, !dbg !443, !tbaa !363
  ret void, !dbg !444
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %vi_to, i32 %vi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !77), !dbg !445
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !78), !dbg !446
  tail call void @llvm.dbg.value(metadata !{i32 %vi_to}, i64 0, metadata !79), !dbg !447
  tail call void @llvm.dbg.value(metadata !{i32 %vi_from}, i64 0, metadata !80), !dbg !448
  %call = tail call i32 @CCTK_NumVars() #6, !dbg !449
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !82), !dbg !449
  %cmp = icmp sgt i32 %vi_to, -1, !dbg !450
  %cmp2 = icmp sgt i32 %call, %vi_to, !dbg !450
  %or.cond = and i1 %cmp, %cmp2, !dbg !450
  %cmp4 = icmp sgt i32 %vi_from, -1, !dbg !450
  %or.cond16 = and i1 %or.cond, %cmp4, !dbg !450
  %cmp6 = icmp sgt i32 %call, %vi_from, !dbg !450
  %or.cond17 = and i1 %or.cond16, %cmp6, !dbg !450
  br i1 %or.cond17, label %if.then, label %if.else, !dbg !450

if.then:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %vi_to, i32 %vi_from, i32 1) #7, !dbg !451
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !81), !dbg !451
  br label %if.end, !dbg !453

if.else:                                          ; preds = %entry
  %call8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 229, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #6, !dbg !454
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !81), !dbg !456
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call7, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !457
}

; Function Attrs: nounwind optsize uwtable
define void @bndcopyvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture %vi_to, i32* nocapture %vi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !87), !dbg !458
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !88), !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !89), !dbg !460
  tail call void @llvm.dbg.value(metadata !{i32* %vi_to}, i64 0, metadata !90), !dbg !461
  tail call void @llvm.dbg.value(metadata !{i32* %vi_from}, i64 0, metadata !91), !dbg !462
  %0 = load i32* %vi_to, align 4, !dbg !463, !tbaa !363
  %1 = load i32* %vi_from, align 4, !dbg !463, !tbaa !363
  %call = tail call i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %0, i32 %1) #7, !dbg !463
  store i32 %call, i32* %ierr, align 4, !dbg !463, !tbaa !363
  ret void, !dbg !464
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %gi_to, i32 %gi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !94), !dbg !465
  tail call void @llvm.dbg.value(metadata !{i32 %stencil_size}, i64 0, metadata !95), !dbg !466
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !96), !dbg !467
  tail call void @llvm.dbg.value(metadata !{i32 %gi_to}, i64 0, metadata !97), !dbg !468
  tail call void @llvm.dbg.value(metadata !{i32 %gi_from}, i64 0, metadata !98), !dbg !469
  %call = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #6, !dbg !470
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !99), !dbg !470
  %call2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #6, !dbg !471
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !100), !dbg !471
  %0 = or i32 %call2, %call, !dbg !472
  %1 = icmp sgt i32 %0, -1, !dbg !472
  br i1 %1, label %if.then, label %if.else, !dbg !472

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #6, !dbg !473
  %call5 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %call, i32 %call2, i32 %call4) #7, !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !101), !dbg !473
  br label %if.end, !dbg !475

if.else:                                          ; preds = %entry
  %call6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 310, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #6, !dbg !476
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !101), !dbg !478
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call5, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !479
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @bndcopydirgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %stencil_size, i32* nocapture %dir, i32* nocapture %gi_to, i32* nocapture %gi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !104), !dbg !480
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !105), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32* %stencil_size}, i64 0, metadata !106), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !107), !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32* %gi_to}, i64 0, metadata !108), !dbg !484
  tail call void @llvm.dbg.value(metadata !{i32* %gi_from}, i64 0, metadata !109), !dbg !485
  %0 = load i32* %stencil_size, align 4, !dbg !486, !tbaa !363
  %1 = load i32* %dir, align 4, !dbg !486, !tbaa !363
  %2 = load i32* %gi_to, align 4, !dbg !486, !tbaa !363
  %3 = load i32* %gi_from, align 4, !dbg !486, !tbaa !363
  %call = tail call i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %0, i32 %1, i32 %2, i32 %3) #7, !dbg !486
  store i32 %call, i32* %ierr, align 4, !dbg !486, !tbaa !363
  ret void, !dbg !487
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %gi_to, i32 %gi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !112), !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !113), !dbg !489
  tail call void @llvm.dbg.value(metadata !{i32 %gi_to}, i64 0, metadata !114), !dbg !490
  tail call void @llvm.dbg.value(metadata !{i32 %gi_from}, i64 0, metadata !115), !dbg !491
  %call = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #6, !dbg !492
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !116), !dbg !492
  %call2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #6, !dbg !493
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !117), !dbg !493
  %0 = or i32 %call2, %call, !dbg !494
  %1 = icmp sgt i32 %0, -1, !dbg !494
  br i1 %1, label %if.then, label %if.else, !dbg !494

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #6, !dbg !495
  %call5 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %call, i32 %call2, i32 %call4) #7, !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !118), !dbg !495
  br label %if.end, !dbg !497

if.else:                                          ; preds = %entry
  %call6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 384, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #6, !dbg !498
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !118), !dbg !500
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call5, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !501
}

; Function Attrs: nounwind optsize uwtable
define void @bndcopygi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture %gi_to, i32* nocapture %gi_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !121), !dbg !502
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !122), !dbg !503
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !123), !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32* %gi_to}, i64 0, metadata !124), !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32* %gi_from}, i64 0, metadata !125), !dbg !506
  %0 = load i32* %gi_to, align 4, !dbg !507, !tbaa !363
  %1 = load i32* %gi_from, align 4, !dbg !507, !tbaa !363
  %call = tail call i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %0, i32 %1) #7, !dbg !507
  store i32 %call, i32* %ierr, align 4, !dbg !507, !tbaa !363
  ret void, !dbg !508
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyDirGN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %gname_to, i8* %gname_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !130), !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32 %stencil_size}, i64 0, metadata !131), !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !132), !dbg !511
  tail call void @llvm.dbg.value(metadata !{i8* %gname_to}, i64 0, metadata !133), !dbg !512
  tail call void @llvm.dbg.value(metadata !{i8* %gname_from}, i64 0, metadata !134), !dbg !513
  %call = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #6, !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !135), !dbg !514
  %call2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #6, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !136), !dbg !515
  %call3 = tail call i32 @CCTK_NumGroups() #6, !dbg !516
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !137), !dbg !516
  %cmp = icmp sgt i32 %call, -1, !dbg !517
  %cmp4 = icmp slt i32 %call, %call3, !dbg !517
  %or.cond = and i1 %cmp, %cmp4, !dbg !517
  %cmp6 = icmp sgt i32 %call2, -1, !dbg !517
  %or.cond18 = and i1 %or.cond, %cmp6, !dbg !517
  %cmp8 = icmp slt i32 %call2, %call3, !dbg !517
  %or.cond19 = and i1 %or.cond18, %cmp8, !dbg !517
  br i1 %or.cond19, label %if.then, label %if.else, !dbg !517

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %call, i32 %call2) #7, !dbg !518
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !138), !dbg !518
  br label %if.end, !dbg !520

if.else:                                          ; preds = %entry
  %call10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 466, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #6, !dbg !521
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !138), !dbg !523
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call9, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !524
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: nounwind optsize uwtable
define void @bndcopydirgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %stencil_size, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !145), !dbg !525
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !146), !dbg !526
  tail call void @llvm.dbg.value(metadata !{i32* %stencil_size}, i64 0, metadata !147), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !148), !dbg !528
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !149), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !150), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !151), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !152), !dbg !529
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !153), !dbg !530
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !154), !dbg !530
  %0 = load i32* %stencil_size, align 4, !dbg !531, !tbaa !363
  %1 = load i32* %dir, align 4, !dbg !531, !tbaa !363
  %call2 = tail call i32 @BndCopyDirGN(%struct.cGH* %GH, i32 %0, i32 %1, i8* %call, i8* %call1) #7, !dbg !531
  store i32 %call2, i32* %ierr, align 4, !dbg !531, !tbaa !363
  tail call void @free(i8* %call) #6, !dbg !532
  tail call void @free(i8* %call1) #6, !dbg !533
  ret void, !dbg !534
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyGN(%struct.cGH* %GH, i32* %stencil, i8* %gname_to, i8* %gname_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !159), !dbg !535
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !160), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i8* %gname_to}, i64 0, metadata !161), !dbg !537
  tail call void @llvm.dbg.value(metadata !{i8* %gname_from}, i64 0, metadata !162), !dbg !538
  %call = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #6, !dbg !539
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !163), !dbg !539
  %call2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #6, !dbg !540
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !164), !dbg !540
  %call3 = tail call i32 @CCTK_NumGroups() #6, !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !165), !dbg !541
  %cmp = icmp sgt i32 %call, -1, !dbg !542
  %cmp4 = icmp slt i32 %call, %call3, !dbg !542
  %or.cond = and i1 %cmp, %cmp4, !dbg !542
  %cmp6 = icmp sgt i32 %call2, -1, !dbg !542
  %or.cond18 = and i1 %or.cond, %cmp6, !dbg !542
  %cmp8 = icmp slt i32 %call2, %call3, !dbg !542
  %or.cond19 = and i1 %or.cond18, %cmp8, !dbg !542
  br i1 %or.cond19, label %if.then, label %if.else, !dbg !542

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %call, i32 %call2) #7, !dbg !543
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !166), !dbg !543
  br label %if.end, !dbg !545

if.else:                                          ; preds = %entry
  %call10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 543, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #6, !dbg !546
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !166), !dbg !548
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call9, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !549
}

; Function Attrs: nounwind optsize uwtable
define void @bndcopygn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !171), !dbg !550
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !172), !dbg !551
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !173), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !174), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !175), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !176), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !177), !dbg !553
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !554
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !178), !dbg !554
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !554
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !179), !dbg !554
  %call2 = tail call i32 @BndCopyGN(%struct.cGH* %GH, i32* %stencil, i8* %call, i8* %call1) #7, !dbg !555
  store i32 %call2, i32* %ierr, align 4, !dbg !555, !tbaa !363
  tail call void @free(i8* %call) #6, !dbg !556
  tail call void @free(i8* %call1) #6, !dbg !557
  ret void, !dbg !558
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyDirVN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %vname_to, i8* %vname_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !182), !dbg !559
  tail call void @llvm.dbg.value(metadata !{i32 %stencil_size}, i64 0, metadata !183), !dbg !560
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !184), !dbg !561
  tail call void @llvm.dbg.value(metadata !{i8* %vname_to}, i64 0, metadata !185), !dbg !562
  tail call void @llvm.dbg.value(metadata !{i8* %vname_from}, i64 0, metadata !186), !dbg !563
  %call = tail call i32 @CCTK_VarIndex(i8* %vname_to) #6, !dbg !564
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !187), !dbg !564
  %call2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #6, !dbg !565
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !188), !dbg !565
  %call3 = tail call i32 @CCTK_NumVars() #6, !dbg !566
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !189), !dbg !566
  %cmp = icmp sgt i32 %call, -1, !dbg !567
  %cmp4 = icmp slt i32 %call, %call3, !dbg !567
  %or.cond = and i1 %cmp, %cmp4, !dbg !567
  %cmp6 = icmp sgt i32 %call2, -1, !dbg !567
  %or.cond18 = and i1 %or.cond, %cmp6, !dbg !567
  %cmp8 = icmp slt i32 %call2, %call3, !dbg !567
  %or.cond19 = and i1 %or.cond18, %cmp8, !dbg !567
  br i1 %or.cond19, label %if.then, label %if.else, !dbg !567

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %call, i32 %call2) #7, !dbg !568
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !190), !dbg !568
  br label %if.end, !dbg !570

if.else:                                          ; preds = %entry
  %call10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 627, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #6, !dbg !571
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !190), !dbg !573
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call9, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !574
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @bndcopydirvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %stencil_size, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !193), !dbg !575
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !194), !dbg !576
  tail call void @llvm.dbg.value(metadata !{i32* %stencil_size}, i64 0, metadata !195), !dbg !577
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !196), !dbg !578
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !197), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !198), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !199), !dbg !579
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !200), !dbg !579
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !580
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !201), !dbg !580
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !580
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !202), !dbg !580
  %0 = load i32* %stencil_size, align 4, !dbg !581, !tbaa !363
  %1 = load i32* %dir, align 4, !dbg !581, !tbaa !363
  %call2 = tail call i32 @BndCopyDirVN(%struct.cGH* %GH, i32 %0, i32 %1, i8* %call, i8* %call1) #7, !dbg !581
  store i32 %call2, i32* %ierr, align 4, !dbg !581, !tbaa !363
  tail call void @free(i8* %call) #6, !dbg !582
  tail call void @free(i8* %call1) #6, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize uwtable
define i32 @BndCopyVN(%struct.cGH* %GH, i32* %stencil, i8* %vname_to, i8* %vname_from) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !205), !dbg !585
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !206), !dbg !586
  tail call void @llvm.dbg.value(metadata !{i8* %vname_to}, i64 0, metadata !207), !dbg !587
  tail call void @llvm.dbg.value(metadata !{i8* %vname_from}, i64 0, metadata !208), !dbg !588
  %call = tail call i32 @CCTK_VarIndex(i8* %vname_to) #6, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !209), !dbg !589
  %call2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #6, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !210), !dbg !590
  %call3 = tail call i32 @CCTK_NumVars() #6, !dbg !591
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !211), !dbg !591
  %cmp = icmp sgt i32 %call, -1, !dbg !592
  %cmp4 = icmp slt i32 %call, %call3, !dbg !592
  %or.cond = and i1 %cmp, %cmp4, !dbg !592
  %cmp6 = icmp sgt i32 %call2, -1, !dbg !592
  %or.cond18 = and i1 %or.cond, %cmp6, !dbg !592
  %cmp8 = icmp slt i32 %call2, %call3, !dbg !592
  %or.cond19 = and i1 %or.cond18, %cmp8, !dbg !592
  br i1 %or.cond19, label %if.then, label %if.else, !dbg !592

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %call, i32 %call2) #7, !dbg !593
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !212), !dbg !593
  br label %if.end, !dbg !595

if.else:                                          ; preds = %entry
  %call10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 704, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #6, !dbg !596
  tail call void @llvm.dbg.value(metadata !338, i64 0, metadata !212), !dbg !598
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call9, %if.then ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !599
}

; Function Attrs: nounwind optsize uwtable
define void @bndcopyvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !215), !dbg !600
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !216), !dbg !601
  tail call void @llvm.dbg.value(metadata !{i32* %stencil}, i64 0, metadata !217), !dbg !602
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !218), !dbg !603
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !219), !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !220), !dbg !603
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !221), !dbg !603
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !222), !dbg !604
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !604
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !223), !dbg !604
  %call2 = tail call i32 @BndCopyVN(%struct.cGH* %GH, i32* %stencil, i8* %call, i8* %call1) #7, !dbg !605
  store i32 %call2, i32* %ierr, align 4, !dbg !605, !tbaa !363
  tail call void @free(i8* %call) #6, !dbg !606
  tail call void @free(i8* %call1) #6, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupStaggerDirArrayGI(i32*, i32, i32) #3

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !323, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !61, metadata !73, metadata !83, metadata !92, metadata !102, metadata !110, metadata !119, metadata !126, metadata !139, metadata !155, metadata !167, metadata !180, metadata !191, metadata !203, metadata !213, metadata !224}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_Boundary_CopyBoundary_c", metadata !"CCTKi_version_CactusBase_Boundary_CopyBoundary_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_Boundary_CopyBoundary_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_CactusBase_Boundary_CopyBoundary_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyDirVI", metadata !"BndCopyDirVI", metadata !"", i32 141, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32)* @BndCopyDirVI, null, null, metadata !53, i32 146} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 146] [BndCopyDirVI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777357, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 141]
!55 = metadata !{i32 786689, metadata !11, metadata !"stencil_size", metadata !5, i32 33554574, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 142]
!56 = metadata !{i32 786689, metadata !11, metadata !"dir", metadata !5, i32 50331791, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 143]
!57 = metadata !{i32 786689, metadata !11, metadata !"vi_to", metadata !5, i32 67109008, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_to] [line 144]
!58 = metadata !{i32 786689, metadata !11, metadata !"vi_from", metadata !5, i32 83886225, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_from] [line 145]
!59 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 147, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 147]
!60 = metadata !{i32 786688, metadata !11, metadata !"num_vars", metadata !5, i32 147, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 147]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopydirvi_", metadata !"bndcopydirvi_", metadata !"", i32 166, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*, i32*)* @bndcopydirvi_, null, null, metadata !66, i32 173} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 173] [bndcopydirvi_]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{null, metadata !24, metadata !15, metadata !64, metadata !64, metadata !64, metadata !64}
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!67 = metadata !{i32 786689, metadata !61, metadata !"ierr", metadata !5, i32 16777383, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 167]
!68 = metadata !{i32 786689, metadata !61, metadata !"GH", metadata !5, i32 33554600, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 168]
!69 = metadata !{i32 786689, metadata !61, metadata !"stencil_size", metadata !5, i32 50331817, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 169]
!70 = metadata !{i32 786689, metadata !61, metadata !"dir", metadata !5, i32 67109034, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 170]
!71 = metadata !{i32 786689, metadata !61, metadata !"vi_to", metadata !5, i32 83886251, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_to] [line 171]
!72 = metadata !{i32 786689, metadata !61, metadata !"vi_from", metadata !5, i32 100663468, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_from] [line 172]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyVI", metadata !"BndCopyVI", metadata !"", i32 214, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32, i32)* @BndCopyVI, null, null, metadata !76, i32 218} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 218] [BndCopyVI]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !14, metadata !15, metadata !64, metadata !14, metadata !14}
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82}
!77 = metadata !{i32 786689, metadata !73, metadata !"GH", metadata !5, i32 16777430, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 214]
!78 = metadata !{i32 786689, metadata !73, metadata !"stencil", metadata !5, i32 33554647, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 215]
!79 = metadata !{i32 786689, metadata !73, metadata !"vi_to", metadata !5, i32 50331864, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_to] [line 216]
!80 = metadata !{i32 786689, metadata !73, metadata !"vi_from", metadata !5, i32 67109081, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_from] [line 217]
!81 = metadata !{i32 786688, metadata !73, metadata !"retval", metadata !5, i32 219, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 219]
!82 = metadata !{i32 786688, metadata !73, metadata !"num_vars", metadata !5, i32 219, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 219]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopyvi_", metadata !"bndcopyvi_", metadata !"", i32 238, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*)* @bndcopyvi_, null, null, metadata !86, i32 244} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 244] [bndcopyvi_]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null, metadata !24, metadata !15, metadata !64, metadata !64, metadata !64}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!87 = metadata !{i32 786689, metadata !83, metadata !"ierr", metadata !5, i32 16777455, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 239]
!88 = metadata !{i32 786689, metadata !83, metadata !"GH", metadata !5, i32 33554672, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 240]
!89 = metadata !{i32 786689, metadata !83, metadata !"stencil", metadata !5, i32 50331889, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 241]
!90 = metadata !{i32 786689, metadata !83, metadata !"vi_to", metadata !5, i32 67109106, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_to] [line 242]
!91 = metadata !{i32 786689, metadata !83, metadata !"vi_from", metadata !5, i32 83886323, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vi_from] [line 243]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyDirGI", metadata !"BndCopyDirGI", metadata !"", i32 292, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i32)* @BndCopyDirGI, null, null, metadata !93, i32 297} ; [ DW_TAG_subprogram ] [line 292] [def] [scope 297] [BndCopyDirGI]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!94 = metadata !{i32 786689, metadata !92, metadata !"GH", metadata !5, i32 16777508, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 292]
!95 = metadata !{i32 786689, metadata !92, metadata !"stencil_size", metadata !5, i32 33554725, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 293]
!96 = metadata !{i32 786689, metadata !92, metadata !"dir", metadata !5, i32 50331942, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 294]
!97 = metadata !{i32 786689, metadata !92, metadata !"gi_to", metadata !5, i32 67109159, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_to] [line 295]
!98 = metadata !{i32 786689, metadata !92, metadata !"gi_from", metadata !5, i32 83886376, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_from] [line 296]
!99 = metadata !{i32 786688, metadata !92, metadata !"first_vi_to", metadata !5, i32 298, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi_to] [line 298]
!100 = metadata !{i32 786688, metadata !92, metadata !"first_vi_from", metadata !5, i32 298, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi_from] [line 298]
!101 = metadata !{i32 786688, metadata !92, metadata !"retval", metadata !5, i32 298, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 298]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopydirgi_", metadata !"bndcopydirgi_", metadata !"", i32 319, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*, i32*)* @bndcopydirgi_, null, null, metadata !103, i32 326} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 326] [bndcopydirgi_]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!104 = metadata !{i32 786689, metadata !102, metadata !"ierr", metadata !5, i32 16777536, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 320]
!105 = metadata !{i32 786689, metadata !102, metadata !"GH", metadata !5, i32 33554753, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 321]
!106 = metadata !{i32 786689, metadata !102, metadata !"stencil_size", metadata !5, i32 50331970, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 322]
!107 = metadata !{i32 786689, metadata !102, metadata !"dir", metadata !5, i32 67109187, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 323]
!108 = metadata !{i32 786689, metadata !102, metadata !"gi_to", metadata !5, i32 83886404, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_to] [line 324]
!109 = metadata !{i32 786689, metadata !102, metadata !"gi_from", metadata !5, i32 100663621, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_from] [line 325]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyGI", metadata !"BndCopyGI", metadata !"", i32 367, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32, i32)* @BndCopyGI, null, null, metadata !111, i32 371} ; [ DW_TAG_subprogram ] [line 367] [def] [scope 371] [BndCopyGI]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118}
!112 = metadata !{i32 786689, metadata !110, metadata !"GH", metadata !5, i32 16777583, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 367]
!113 = metadata !{i32 786689, metadata !110, metadata !"stencil", metadata !5, i32 33554800, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 368]
!114 = metadata !{i32 786689, metadata !110, metadata !"gi_to", metadata !5, i32 50332017, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_to] [line 369]
!115 = metadata !{i32 786689, metadata !110, metadata !"gi_from", metadata !5, i32 67109234, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_from] [line 370]
!116 = metadata !{i32 786688, metadata !110, metadata !"first_vi_to", metadata !5, i32 372, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi_to] [line 372]
!117 = metadata !{i32 786688, metadata !110, metadata !"first_vi_from", metadata !5, i32 372, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first_vi_from] [line 372]
!118 = metadata !{i32 786688, metadata !110, metadata !"retval", metadata !5, i32 372, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 372]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopygi_", metadata !"bndcopygi_", metadata !"", i32 393, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*)* @bndcopygi_, null, null, metadata !120, i32 399} ; [ DW_TAG_subprogram ] [line 393] [def] [scope 399] [bndcopygi_]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!121 = metadata !{i32 786689, metadata !119, metadata !"ierr", metadata !5, i32 16777610, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 394]
!122 = metadata !{i32 786689, metadata !119, metadata !"GH", metadata !5, i32 33554827, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 395]
!123 = metadata !{i32 786689, metadata !119, metadata !"stencil", metadata !5, i32 50332044, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 396]
!124 = metadata !{i32 786689, metadata !119, metadata !"gi_to", metadata !5, i32 67109261, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_to] [line 397]
!125 = metadata !{i32 786689, metadata !119, metadata !"gi_from", metadata !5, i32 83886478, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi_from] [line 398]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyDirGN", metadata !"BndCopyDirGN", metadata !"", i32 447, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i8*, i8*)* @BndCopyDirGN, null, null, metadata !129, i32 452} ; [ DW_TAG_subprogram ] [line 447] [def] [scope 452] [BndCopyDirGN]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !8, metadata !8}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!130 = metadata !{i32 786689, metadata !126, metadata !"GH", metadata !5, i32 16777663, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 447]
!131 = metadata !{i32 786689, metadata !126, metadata !"stencil_size", metadata !5, i32 33554880, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 448]
!132 = metadata !{i32 786689, metadata !126, metadata !"dir", metadata !5, i32 50332097, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 449]
!133 = metadata !{i32 786689, metadata !126, metadata !"gname_to", metadata !5, i32 67109314, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname_to] [line 450]
!134 = metadata !{i32 786689, metadata !126, metadata !"gname_from", metadata !5, i32 83886531, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname_from] [line 451]
!135 = metadata !{i32 786688, metadata !126, metadata !"gi_to", metadata !5, i32 453, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi_to] [line 453]
!136 = metadata !{i32 786688, metadata !126, metadata !"gi_from", metadata !5, i32 453, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi_from] [line 453]
!137 = metadata !{i32 786688, metadata !126, metadata !"num_groups", metadata !5, i32 453, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_groups] [line 453]
!138 = metadata !{i32 786688, metadata !126, metadata !"retval", metadata !5, i32 453, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 453]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopydirgn_", metadata !"bndcopydirgn_", metadata !"", i32 475, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i8*, i8*, i32, i32)* @bndcopydirgn_, null, null, metadata !144, i32 481} ; [ DW_TAG_subprogram ] [line 475] [def] [scope 481] [bndcopydirgn_]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{null, metadata !24, metadata !15, metadata !64, metadata !64, metadata !142, metadata !142, metadata !143, metadata !143}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!143 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154}
!145 = metadata !{i32 786689, metadata !139, metadata !"ierr", metadata !5, i32 16777692, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 476]
!146 = metadata !{i32 786689, metadata !139, metadata !"GH", metadata !5, i32 33554909, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 477]
!147 = metadata !{i32 786689, metadata !139, metadata !"stencil_size", metadata !5, i32 50332126, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 478]
!148 = metadata !{i32 786689, metadata !139, metadata !"dir", metadata !5, i32 67109343, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 479]
!149 = metadata !{i32 786689, metadata !139, metadata !"cctk_str1", metadata !5, i32 83886560, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 480]
!150 = metadata !{i32 786689, metadata !139, metadata !"cctk_str2", metadata !5, i32 100663776, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 480]
!151 = metadata !{i32 786689, metadata !139, metadata !"cctk_strlen1", metadata !5, i32 117440992, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 480]
!152 = metadata !{i32 786689, metadata !139, metadata !"cctk_strlen2", metadata !5, i32 134218208, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 480]
!153 = metadata !{i32 786688, metadata !139, metadata !"gname_to", metadata !5, i32 482, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname_to] [line 482]
!154 = metadata !{i32 786688, metadata !139, metadata !"gname_from", metadata !5, i32 482, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname_from] [line 482]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyGN", metadata !"BndCopyGN", metadata !"", i32 525, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i8*, i8*)* @BndCopyGN, null, null, metadata !158, i32 529} ; [ DW_TAG_subprogram ] [line 525] [def] [scope 529] [BndCopyGN]
!156 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !14, metadata !15, metadata !64, metadata !8, metadata !8}
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!159 = metadata !{i32 786689, metadata !155, metadata !"GH", metadata !5, i32 16777741, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 525]
!160 = metadata !{i32 786689, metadata !155, metadata !"stencil", metadata !5, i32 33554958, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 526]
!161 = metadata !{i32 786689, metadata !155, metadata !"gname_to", metadata !5, i32 50332175, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname_to] [line 527]
!162 = metadata !{i32 786689, metadata !155, metadata !"gname_from", metadata !5, i32 67109392, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname_from] [line 528]
!163 = metadata !{i32 786688, metadata !155, metadata !"gi_to", metadata !5, i32 530, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi_to] [line 530]
!164 = metadata !{i32 786688, metadata !155, metadata !"gi_from", metadata !5, i32 530, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gi_from] [line 530]
!165 = metadata !{i32 786688, metadata !155, metadata !"num_groups", metadata !5, i32 530, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_groups] [line 530]
!166 = metadata !{i32 786688, metadata !155, metadata !"retval", metadata !5, i32 530, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 530]
!167 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopygn_", metadata !"bndcopygn_", metadata !"", i32 552, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i8*, i8*, i32, i32)* @bndcopygn_, null, null, metadata !170, i32 557} ; [ DW_TAG_subprogram ] [line 552] [def] [scope 557] [bndcopygn_]
!168 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{null, metadata !24, metadata !15, metadata !64, metadata !142, metadata !142, metadata !143, metadata !143}
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!171 = metadata !{i32 786689, metadata !167, metadata !"ierr", metadata !5, i32 16777769, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 553]
!172 = metadata !{i32 786689, metadata !167, metadata !"GH", metadata !5, i32 33554986, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 554]
!173 = metadata !{i32 786689, metadata !167, metadata !"stencil", metadata !5, i32 50332203, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 555]
!174 = metadata !{i32 786689, metadata !167, metadata !"cctk_str1", metadata !5, i32 67109420, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 556]
!175 = metadata !{i32 786689, metadata !167, metadata !"cctk_str2", metadata !5, i32 83886636, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 556]
!176 = metadata !{i32 786689, metadata !167, metadata !"cctk_strlen1", metadata !5, i32 100663852, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 556]
!177 = metadata !{i32 786689, metadata !167, metadata !"cctk_strlen2", metadata !5, i32 117441068, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 556]
!178 = metadata !{i32 786688, metadata !167, metadata !"gname_to", metadata !5, i32 558, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname_to] [line 558]
!179 = metadata !{i32 786688, metadata !167, metadata !"gname_from", metadata !5, i32 558, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname_from] [line 558]
!180 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyDirVN", metadata !"BndCopyDirVN", metadata !"", i32 608, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i8*, i8*)* @BndCopyDirVN, null, null, metadata !181, i32 613} ; [ DW_TAG_subprogram ] [line 608] [def] [scope 613] [BndCopyDirVN]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!182 = metadata !{i32 786689, metadata !180, metadata !"GH", metadata !5, i32 16777824, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 608]
!183 = metadata !{i32 786689, metadata !180, metadata !"stencil_size", metadata !5, i32 33555041, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 609]
!184 = metadata !{i32 786689, metadata !180, metadata !"dir", metadata !5, i32 50332258, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 610]
!185 = metadata !{i32 786689, metadata !180, metadata !"vname_to", metadata !5, i32 67109475, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vname_to] [line 611]
!186 = metadata !{i32 786689, metadata !180, metadata !"vname_from", metadata !5, i32 83886692, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vname_from] [line 612]
!187 = metadata !{i32 786688, metadata !180, metadata !"vi_to", metadata !5, i32 614, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi_to] [line 614]
!188 = metadata !{i32 786688, metadata !180, metadata !"vi_from", metadata !5, i32 614, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi_from] [line 614]
!189 = metadata !{i32 786688, metadata !180, metadata !"num_vars", metadata !5, i32 614, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 614]
!190 = metadata !{i32 786688, metadata !180, metadata !"retval", metadata !5, i32 614, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 614]
!191 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopydirvn_", metadata !"bndcopydirvn_", metadata !"", i32 636, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i8*, i8*, i32, i32)* @bndcopydirvn_, null, null, metadata !192, i32 642} ; [ DW_TAG_subprogram ] [line 636] [def] [scope 642] [bndcopydirvn_]
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202}
!193 = metadata !{i32 786689, metadata !191, metadata !"ierr", metadata !5, i32 16777853, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 637]
!194 = metadata !{i32 786689, metadata !191, metadata !"GH", metadata !5, i32 33555070, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 638]
!195 = metadata !{i32 786689, metadata !191, metadata !"stencil_size", metadata !5, i32 50332287, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_size] [line 639]
!196 = metadata !{i32 786689, metadata !191, metadata !"dir", metadata !5, i32 67109504, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 640]
!197 = metadata !{i32 786689, metadata !191, metadata !"cctk_str1", metadata !5, i32 83886721, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 641]
!198 = metadata !{i32 786689, metadata !191, metadata !"cctk_str2", metadata !5, i32 100663937, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 641]
!199 = metadata !{i32 786689, metadata !191, metadata !"cctk_strlen1", metadata !5, i32 117441153, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 641]
!200 = metadata !{i32 786689, metadata !191, metadata !"cctk_strlen2", metadata !5, i32 134218369, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 641]
!201 = metadata !{i32 786688, metadata !191, metadata !"vname_to", metadata !5, i32 643, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname_to] [line 643]
!202 = metadata !{i32 786688, metadata !191, metadata !"vname_from", metadata !5, i32 643, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname_from] [line 643]
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BndCopyVN", metadata !"BndCopyVN", metadata !"", i32 686, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i8*, i8*)* @BndCopyVN, null, null, metadata !204, i32 690} ; [ DW_TAG_subprogram ] [line 686] [def] [scope 690] [BndCopyVN]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!205 = metadata !{i32 786689, metadata !203, metadata !"GH", metadata !5, i32 16777902, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 686]
!206 = metadata !{i32 786689, metadata !203, metadata !"stencil", metadata !5, i32 33555119, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 687]
!207 = metadata !{i32 786689, metadata !203, metadata !"vname_to", metadata !5, i32 50332336, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vname_to] [line 688]
!208 = metadata !{i32 786689, metadata !203, metadata !"vname_from", metadata !5, i32 67109553, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vname_from] [line 689]
!209 = metadata !{i32 786688, metadata !203, metadata !"vi_to", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi_to] [line 691]
!210 = metadata !{i32 786688, metadata !203, metadata !"vi_from", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vi_from] [line 691]
!211 = metadata !{i32 786688, metadata !203, metadata !"num_vars", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_vars] [line 691]
!212 = metadata !{i32 786688, metadata !203, metadata !"retval", metadata !5, i32 691, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 691]
!213 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"bndcopyvn_", metadata !"bndcopyvn_", metadata !"", i32 713, metadata !168, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i8*, i8*, i32, i32)* @bndcopyvn_, null, null, metadata !214, i32 718} ; [ DW_TAG_subprogram ] [line 713] [def] [scope 718] [bndcopyvn_]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223}
!215 = metadata !{i32 786689, metadata !213, metadata !"ierr", metadata !5, i32 16777930, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 714]
!216 = metadata !{i32 786689, metadata !213, metadata !"GH", metadata !5, i32 33555147, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 715]
!217 = metadata !{i32 786689, metadata !213, metadata !"stencil", metadata !5, i32 50332364, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil] [line 716]
!218 = metadata !{i32 786689, metadata !213, metadata !"cctk_str1", metadata !5, i32 67109581, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 717]
!219 = metadata !{i32 786689, metadata !213, metadata !"cctk_str2", metadata !5, i32 83886797, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 717]
!220 = metadata !{i32 786689, metadata !213, metadata !"cctk_strlen1", metadata !5, i32 100664013, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 717]
!221 = metadata !{i32 786689, metadata !213, metadata !"cctk_strlen2", metadata !5, i32 117441229, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 717]
!222 = metadata !{i32 786688, metadata !213, metadata !"vname_to", metadata !5, i32 719, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname_to] [line 719]
!223 = metadata !{i32 786688, metadata !213, metadata !"vname_from", metadata !5, i32 719, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname_from] [line 719]
!224 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ApplyBndCopy", metadata !"ApplyBndCopy", metadata !"", i32 857, metadata !225, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32*, i32, i32, i32, i32)* @ApplyBndCopy, null, null, metadata !227, i32 864} ; [ DW_TAG_subprogram ] [line 857] [local] [def] [scope 864] [ApplyBndCopy]
!225 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!226 = metadata !{metadata !14, metadata !15, metadata !14, metadata !64, metadata !14, metadata !14, metadata !14, metadata !14}
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !249, metadata !253, metadata !254, metadata !255, metadata !256, metadata !264, metadata !276, metadata !285, metadata !295, metadata !304, metadata !314}
!228 = metadata !{i32 786689, metadata !224, metadata !"GH", metadata !5, i32 16778073, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 857]
!229 = metadata !{i32 786689, metadata !224, metadata !"stencil_dir", metadata !5, i32 33555290, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_dir] [line 858]
!230 = metadata !{i32 786689, metadata !224, metadata !"stencil_alldirs", metadata !5, i32 50332507, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stencil_alldirs] [line 859]
!231 = metadata !{i32 786689, metadata !224, metadata !"dir", metadata !5, i32 67109724, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 860]
!232 = metadata !{i32 786689, metadata !224, metadata !"first_var_to", metadata !5, i32 83886941, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var_to] [line 861]
!233 = metadata !{i32 786689, metadata !224, metadata !"first_var_from", metadata !5, i32 100664158, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first_var_from] [line 862]
!234 = metadata !{i32 786689, metadata !224, metadata !"num_vars", metadata !5, i32 117441375, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_vars] [line 863]
!235 = metadata !{i32 786688, metadata !224, metadata !"i", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 865]
!236 = metadata !{i32 786688, metadata !224, metadata !"j", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 865]
!237 = metadata !{i32 786688, metadata !224, metadata !"k", metadata !5, i32 865, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 865]
!238 = metadata !{i32 786688, metadata !224, metadata !"timelvl_to", metadata !5, i32 866, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timelvl_to] [line 866]
!239 = metadata !{i32 786688, metadata !224, metadata !"timelvl_from", metadata !5, i32 866, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timelvl_from] [line 866]
!240 = metadata !{i32 786688, metadata !224, metadata !"gindex", metadata !5, i32 867, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gindex] [line 867]
!241 = metadata !{i32 786688, metadata !224, metadata !"gdim", metadata !5, i32 867, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gdim] [line 867]
!242 = metadata !{i32 786688, metadata !224, metadata !"var_to", metadata !5, i32 868, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var_to] [line 868]
!243 = metadata !{i32 786688, metadata !224, metadata !"var_from", metadata !5, i32 868, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var_from] [line 868]
!244 = metadata !{i32 786688, metadata !224, metadata !"vtypesize", metadata !5, i32 868, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtypesize] [line 868]
!245 = metadata !{i32 786688, metadata !224, metadata !"doBC", metadata !5, i32 869, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doBC] [line 869]
!246 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !14, metadata !247, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!249 = metadata !{i32 786688, metadata !224, metadata !"dstag", metadata !5, i32 869, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dstag] [line 869]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!253 = metadata !{i32 786688, metadata !224, metadata !"lsh", metadata !5, i32 869, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsh] [line 869]
!254 = metadata !{i32 786688, metadata !224, metadata !"lssh", metadata !5, i32 869, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lssh] [line 869]
!255 = metadata !{i32 786688, metadata !224, metadata !"stencil", metadata !5, i32 869, metadata !250, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stencil] [line 869]
!256 = metadata !{i32 786688, metadata !224, metadata !"sGHex", metadata !5, i32 870, metadata !257, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sGHex] [line 870]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SymmetryGHex]
!258 = metadata !{i32 786454, metadata !1, null, metadata !"SymmetryGHex", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_typedef ] [SymmetryGHex] [line 36, size 0, align 0, offset 0] [from Symmetry]
!259 = metadata !{i32 786451, metadata !260, null, metadata !"Symmetry", i32 27, i64 64, i64 64, i32 0, i32 0, null, metadata !261, i32 0, null, null} ; [ DW_TAG_structure_type ] [Symmetry] [line 27, size 64, align 64, offset 0] [from ]
!260 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/../include/Symmetry.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!261 = metadata !{metadata !262}
!262 = metadata !{i32 786445, metadata !260, metadata !259, metadata !"GFSym", i32 34, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [GFSym] [line 34, size 64, align 64, offset 0] [from ]
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!264 = metadata !{i32 786688, metadata !265, metadata !"_index", metadata !5, i32 966, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 966]
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 966, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!266 = metadata !{i32 786443, metadata !1, metadata !267, i32 966, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!267 = metadata !{i32 786443, metadata !1, metadata !268, i32 966, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!268 = metadata !{i32 786443, metadata !1, metadata !269, i32 966, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!269 = metadata !{i32 786443, metadata !1, metadata !270, i32 966, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!270 = metadata !{i32 786443, metadata !1, metadata !271, i32 966, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 966, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!272 = metadata !{i32 786443, metadata !1, metadata !273, i32 966, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!273 = metadata !{i32 786443, metadata !1, metadata !274, i32 964, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!274 = metadata !{i32 786443, metadata !1, metadata !275, i32 934, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!275 = metadata !{i32 786443, metadata !1, metadata !224, i32 931, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!276 = metadata !{i32 786688, metadata !277, metadata !"_index", metadata !5, i32 968, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 968]
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 968, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!278 = metadata !{i32 786443, metadata !1, metadata !279, i32 968, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!279 = metadata !{i32 786443, metadata !1, metadata !280, i32 968, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!280 = metadata !{i32 786443, metadata !1, metadata !281, i32 968, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!281 = metadata !{i32 786443, metadata !1, metadata !282, i32 968, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 968, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!283 = metadata !{i32 786443, metadata !1, metadata !284, i32 968, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!284 = metadata !{i32 786443, metadata !1, metadata !273, i32 968, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!285 = metadata !{i32 786688, metadata !286, metadata !"_index", metadata !5, i32 973, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 973]
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 973, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 973, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!288 = metadata !{i32 786443, metadata !1, metadata !289, i32 973, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 973, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 973, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!291 = metadata !{i32 786443, metadata !1, metadata !292, i32 973, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!292 = metadata !{i32 786443, metadata !1, metadata !293, i32 973, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 973, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!294 = metadata !{i32 786443, metadata !1, metadata !274, i32 971, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!295 = metadata !{i32 786688, metadata !296, metadata !"_index", metadata !5, i32 975, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 975]
!296 = metadata !{i32 786443, metadata !1, metadata !297, i32 975, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!297 = metadata !{i32 786443, metadata !1, metadata !298, i32 975, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!298 = metadata !{i32 786443, metadata !1, metadata !299, i32 975, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!299 = metadata !{i32 786443, metadata !1, metadata !300, i32 975, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!300 = metadata !{i32 786443, metadata !1, metadata !301, i32 975, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!301 = metadata !{i32 786443, metadata !1, metadata !302, i32 975, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 975, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!303 = metadata !{i32 786443, metadata !1, metadata !294, i32 975, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!304 = metadata !{i32 786688, metadata !305, metadata !"_index", metadata !5, i32 980, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 980]
!305 = metadata !{i32 786443, metadata !1, metadata !306, i32 980, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!306 = metadata !{i32 786443, metadata !1, metadata !307, i32 980, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 980, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!308 = metadata !{i32 786443, metadata !1, metadata !309, i32 980, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!309 = metadata !{i32 786443, metadata !1, metadata !310, i32 980, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!310 = metadata !{i32 786443, metadata !1, metadata !311, i32 980, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!311 = metadata !{i32 786443, metadata !1, metadata !312, i32 980, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!312 = metadata !{i32 786443, metadata !1, metadata !313, i32 980, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!313 = metadata !{i32 786443, metadata !1, metadata !274, i32 978, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!314 = metadata !{i32 786688, metadata !315, metadata !"_index", metadata !5, i32 982, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_index] [line 982]
!315 = metadata !{i32 786443, metadata !1, metadata !316, i32 982, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!316 = metadata !{i32 786443, metadata !1, metadata !317, i32 982, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!317 = metadata !{i32 786443, metadata !1, metadata !318, i32 982, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!318 = metadata !{i32 786443, metadata !1, metadata !319, i32 982, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!319 = metadata !{i32 786443, metadata !1, metadata !320, i32 982, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!320 = metadata !{i32 786443, metadata !1, metadata !321, i32 982, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!321 = metadata !{i32 786443, metadata !1, metadata !322, i32 982, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!322 = metadata !{i32 786443, metadata !1, metadata !313, i32 982, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 29, metadata !8, i32 1, i32 1, null, null}
!325 = metadata !{i32 30, i32 0, metadata !4, null}
!326 = metadata !{i32 141, i32 0, metadata !11, null}
!327 = metadata !{i32 142, i32 0, metadata !11, null}
!328 = metadata !{i32 143, i32 0, metadata !11, null}
!329 = metadata !{i32 144, i32 0, metadata !11, null}
!330 = metadata !{i32 145, i32 0, metadata !11, null}
!331 = metadata !{i32 150, i32 0, metadata !11, null}
!332 = metadata !{i32 151, i32 0, metadata !11, null}
!333 = metadata !{i32 153, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !11, i32 152, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!335 = metadata !{i32 154, i32 0, metadata !334, null}
!336 = metadata !{i32 157, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !11, i32 156, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!338 = metadata !{i32 -1}
!339 = metadata !{i32 160, i32 0, metadata !337, null}
!340 = metadata !{i32 163, i32 0, metadata !11, null}
!341 = metadata !{i32 857, i32 0, metadata !224, null}
!342 = metadata !{i32 858, i32 0, metadata !224, null}
!343 = metadata !{i32 859, i32 0, metadata !224, null}
!344 = metadata !{i32 860, i32 0, metadata !224, null}
!345 = metadata !{i32 861, i32 0, metadata !224, null}
!346 = metadata !{i32 862, i32 0, metadata !224, null}
!347 = metadata !{i32 863, i32 0, metadata !224, null}
!348 = metadata !{i32 869, i32 0, metadata !224, null}
!349 = metadata !{i32 874, i32 0, metadata !224, null}
!350 = metadata !{i32 877, i32 0, metadata !224, null}
!351 = metadata !{i32 878, i32 0, metadata !224, null}
!352 = metadata !{i32 881, i32 0, metadata !224, null}
!353 = metadata !{i32 883, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !224, i32 882, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!355 = metadata !{i32 885, i32 0, metadata !354, null}
!356 = metadata !{i32 889, i32 0, metadata !224, null}
!357 = metadata !{i32 891, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !224, i32 890, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!359 = metadata !{i32 894, i32 0, metadata !358, null}
!360 = metadata !{i32 898, i32 0, metadata !224, null}
!361 = metadata !{i32 900, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !224, i32 899, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!363 = metadata !{metadata !"int", metadata !364}
!364 = metadata !{metadata !"omnipotent char", metadata !365}
!365 = metadata !{metadata !"Simple C/C++ TBAA"}
!366 = metadata !{i32 901, i32 0, metadata !362, null}
!367 = metadata !{i32 914, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !224, i32 914, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!369 = metadata !{i32 917, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 915, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!371 = metadata !{i32 902, i32 0, metadata !224, null}
!372 = metadata !{i32 904, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !224, i32 903, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!374 = metadata !{i32 908, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !224, i32 907, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!376 = metadata !{i32 909, i32 0, metadata !375, null}
!377 = metadata !{i32 916, i32 0, metadata !370, null}
!378 = metadata !{i32 921, i32 0, metadata !224, null}
!379 = metadata !{i32 924, i32 0, metadata !224, null}
!380 = metadata !{i32 925, i32 0, metadata !224, null}
!381 = metadata !{i32 928, i32 0, metadata !224, null}
!382 = metadata !{i32 931, i32 0, metadata !275, null}
!383 = metadata !{i32 940, i32 0, metadata !274, null}
!384 = metadata !{i32 941, i32 0, metadata !274, null}
!385 = metadata !{i32 943, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !387, i32 943, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!387 = metadata !{i32 786443, metadata !1, metadata !274, i32 942, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!388 = metadata !{i32 945, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !386, i32 944, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!390 = metadata !{i32 970, i32 0, metadata !274, null}
!391 = metadata !{i32 973, i32 0, metadata !293, null}
!392 = metadata !{i32 977, i32 0, metadata !274, null}
!393 = metadata !{i32 980, i32 0, metadata !312, null}
!394 = metadata !{i32 982, i32 0, metadata !320, null}
!395 = metadata !{i32 982, i32 0, metadata !318, null}
!396 = metadata !{i32 982, i32 0, metadata !316, null}
!397 = metadata !{i32 982, i32 0, metadata !315, null}
!398 = metadata !{i32 975, i32 0, metadata !299, null}
!399 = metadata !{i32 968, i32 0, metadata !278, null}
!400 = metadata !{i32 951, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !402, i32 950, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!402 = metadata !{i32 786443, metadata !1, metadata !274, i32 949, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!403 = metadata !{i32 952, i32 0, metadata !401, null}
!404 = metadata !{i32 953, i32 0, metadata !401, null}
!405 = metadata !{i32 957, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !401, i32 956, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!407 = metadata !{i32 958, i32 0, metadata !406, null}
!408 = metadata !{metadata !"any pointer", metadata !364}
!409 = metadata !{i32 949, i32 0, metadata !402, null}
!410 = metadata !{i32 954, i32 0, metadata !401, null}
!411 = metadata !{i32 955, i32 0, metadata !401, null}
!412 = metadata !{i32 959, i32 0, metadata !406, null}
!413 = metadata !{i32 963, i32 0, metadata !274, null}
!414 = metadata !{i32 966, i32 0, metadata !272, null}
!415 = metadata !{i32 966, i32 0, metadata !270, null}
!416 = metadata !{i32 966, i32 0, metadata !268, null}
!417 = metadata !{i32 966, i32 0, metadata !265, null}
!418 = metadata !{i32 966, i32 0, metadata !266, null}
!419 = metadata !{i32 968, i32 0, metadata !284, null}
!420 = metadata !{i32 968, i32 0, metadata !282, null}
!421 = metadata !{i32 968, i32 0, metadata !280, null}
!422 = metadata !{i32 968, i32 0, metadata !277, null}
!423 = metadata !{i32 973, i32 0, metadata !291, null}
!424 = metadata !{i32 973, i32 0, metadata !287, null}
!425 = metadata !{i32 973, i32 0, metadata !286, null}
!426 = metadata !{i32 973, i32 0, metadata !289, null}
!427 = metadata !{i32 975, i32 0, metadata !303, null}
!428 = metadata !{i32 975, i32 0, metadata !301, null}
!429 = metadata !{i32 975, i32 0, metadata !297, null}
!430 = metadata !{i32 975, i32 0, metadata !296, null}
!431 = metadata !{i32 980, i32 0, metadata !308, null}
!432 = metadata !{i32 980, i32 0, metadata !306, null}
!433 = metadata !{i32 980, i32 0, metadata !305, null}
!434 = metadata !{i32 980, i32 0, metadata !310, null}
!435 = metadata !{i32 982, i32 0, metadata !322, null}
!436 = metadata !{i32 986, i32 0, metadata !224, null}
!437 = metadata !{i32 167, i32 0, metadata !61, null}
!438 = metadata !{i32 168, i32 0, metadata !61, null}
!439 = metadata !{i32 169, i32 0, metadata !61, null}
!440 = metadata !{i32 170, i32 0, metadata !61, null}
!441 = metadata !{i32 171, i32 0, metadata !61, null}
!442 = metadata !{i32 172, i32 0, metadata !61, null}
!443 = metadata !{i32 174, i32 0, metadata !61, null}
!444 = metadata !{i32 175, i32 0, metadata !61, null}
!445 = metadata !{i32 214, i32 0, metadata !73, null}
!446 = metadata !{i32 215, i32 0, metadata !73, null}
!447 = metadata !{i32 216, i32 0, metadata !73, null}
!448 = metadata !{i32 217, i32 0, metadata !73, null}
!449 = metadata !{i32 222, i32 0, metadata !73, null}
!450 = metadata !{i32 223, i32 0, metadata !73, null}
!451 = metadata !{i32 225, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !1, metadata !73, i32 224, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!453 = metadata !{i32 226, i32 0, metadata !452, null}
!454 = metadata !{i32 229, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !73, i32 228, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!456 = metadata !{i32 232, i32 0, metadata !455, null}
!457 = metadata !{i32 235, i32 0, metadata !73, null}
!458 = metadata !{i32 239, i32 0, metadata !83, null}
!459 = metadata !{i32 240, i32 0, metadata !83, null}
!460 = metadata !{i32 241, i32 0, metadata !83, null}
!461 = metadata !{i32 242, i32 0, metadata !83, null}
!462 = metadata !{i32 243, i32 0, metadata !83, null}
!463 = metadata !{i32 245, i32 0, metadata !83, null}
!464 = metadata !{i32 246, i32 0, metadata !83, null}
!465 = metadata !{i32 292, i32 0, metadata !92, null}
!466 = metadata !{i32 293, i32 0, metadata !92, null}
!467 = metadata !{i32 294, i32 0, metadata !92, null}
!468 = metadata !{i32 295, i32 0, metadata !92, null}
!469 = metadata !{i32 296, i32 0, metadata !92, null}
!470 = metadata !{i32 301, i32 0, metadata !92, null}
!471 = metadata !{i32 302, i32 0, metadata !92, null}
!472 = metadata !{i32 303, i32 0, metadata !92, null}
!473 = metadata !{i32 306, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !92, i32 304, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!475 = metadata !{i32 307, i32 0, metadata !474, null}
!476 = metadata !{i32 310, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !92, i32 309, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!478 = metadata !{i32 313, i32 0, metadata !477, null}
!479 = metadata !{i32 316, i32 0, metadata !92, null}
!480 = metadata !{i32 320, i32 0, metadata !102, null}
!481 = metadata !{i32 321, i32 0, metadata !102, null}
!482 = metadata !{i32 322, i32 0, metadata !102, null}
!483 = metadata !{i32 323, i32 0, metadata !102, null}
!484 = metadata !{i32 324, i32 0, metadata !102, null}
!485 = metadata !{i32 325, i32 0, metadata !102, null}
!486 = metadata !{i32 327, i32 0, metadata !102, null}
!487 = metadata !{i32 328, i32 0, metadata !102, null}
!488 = metadata !{i32 367, i32 0, metadata !110, null}
!489 = metadata !{i32 368, i32 0, metadata !110, null}
!490 = metadata !{i32 369, i32 0, metadata !110, null}
!491 = metadata !{i32 370, i32 0, metadata !110, null}
!492 = metadata !{i32 375, i32 0, metadata !110, null}
!493 = metadata !{i32 376, i32 0, metadata !110, null}
!494 = metadata !{i32 377, i32 0, metadata !110, null}
!495 = metadata !{i32 380, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !110, i32 378, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!497 = metadata !{i32 381, i32 0, metadata !496, null}
!498 = metadata !{i32 384, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !110, i32 383, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!500 = metadata !{i32 387, i32 0, metadata !499, null}
!501 = metadata !{i32 390, i32 0, metadata !110, null}
!502 = metadata !{i32 394, i32 0, metadata !119, null}
!503 = metadata !{i32 395, i32 0, metadata !119, null}
!504 = metadata !{i32 396, i32 0, metadata !119, null}
!505 = metadata !{i32 397, i32 0, metadata !119, null}
!506 = metadata !{i32 398, i32 0, metadata !119, null}
!507 = metadata !{i32 400, i32 0, metadata !119, null}
!508 = metadata !{i32 401, i32 0, metadata !119, null}
!509 = metadata !{i32 447, i32 0, metadata !126, null}
!510 = metadata !{i32 448, i32 0, metadata !126, null}
!511 = metadata !{i32 449, i32 0, metadata !126, null}
!512 = metadata !{i32 450, i32 0, metadata !126, null}
!513 = metadata !{i32 451, i32 0, metadata !126, null}
!514 = metadata !{i32 456, i32 0, metadata !126, null}
!515 = metadata !{i32 457, i32 0, metadata !126, null}
!516 = metadata !{i32 458, i32 0, metadata !126, null}
!517 = metadata !{i32 460, i32 0, metadata !126, null}
!518 = metadata !{i32 462, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !126, i32 461, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!520 = metadata !{i32 463, i32 0, metadata !519, null}
!521 = metadata !{i32 466, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !126, i32 465, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!523 = metadata !{i32 469, i32 0, metadata !522, null}
!524 = metadata !{i32 472, i32 0, metadata !126, null}
!525 = metadata !{i32 476, i32 0, metadata !139, null}
!526 = metadata !{i32 477, i32 0, metadata !139, null}
!527 = metadata !{i32 478, i32 0, metadata !139, null}
!528 = metadata !{i32 479, i32 0, metadata !139, null}
!529 = metadata !{i32 480, i32 0, metadata !139, null}
!530 = metadata !{i32 482, i32 0, metadata !139, null}
!531 = metadata !{i32 483, i32 0, metadata !139, null}
!532 = metadata !{i32 484, i32 0, metadata !139, null}
!533 = metadata !{i32 485, i32 0, metadata !139, null}
!534 = metadata !{i32 486, i32 0, metadata !139, null}
!535 = metadata !{i32 525, i32 0, metadata !155, null}
!536 = metadata !{i32 526, i32 0, metadata !155, null}
!537 = metadata !{i32 527, i32 0, metadata !155, null}
!538 = metadata !{i32 528, i32 0, metadata !155, null}
!539 = metadata !{i32 533, i32 0, metadata !155, null}
!540 = metadata !{i32 534, i32 0, metadata !155, null}
!541 = metadata !{i32 535, i32 0, metadata !155, null}
!542 = metadata !{i32 537, i32 0, metadata !155, null}
!543 = metadata !{i32 539, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !155, i32 538, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!545 = metadata !{i32 540, i32 0, metadata !544, null}
!546 = metadata !{i32 543, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !155, i32 542, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!548 = metadata !{i32 546, i32 0, metadata !547, null}
!549 = metadata !{i32 549, i32 0, metadata !155, null}
!550 = metadata !{i32 553, i32 0, metadata !167, null}
!551 = metadata !{i32 554, i32 0, metadata !167, null}
!552 = metadata !{i32 555, i32 0, metadata !167, null}
!553 = metadata !{i32 556, i32 0, metadata !167, null}
!554 = metadata !{i32 558, i32 0, metadata !167, null}
!555 = metadata !{i32 559, i32 0, metadata !167, null}
!556 = metadata !{i32 560, i32 0, metadata !167, null}
!557 = metadata !{i32 561, i32 0, metadata !167, null}
!558 = metadata !{i32 562, i32 0, metadata !167, null}
!559 = metadata !{i32 608, i32 0, metadata !180, null}
!560 = metadata !{i32 609, i32 0, metadata !180, null}
!561 = metadata !{i32 610, i32 0, metadata !180, null}
!562 = metadata !{i32 611, i32 0, metadata !180, null}
!563 = metadata !{i32 612, i32 0, metadata !180, null}
!564 = metadata !{i32 617, i32 0, metadata !180, null}
!565 = metadata !{i32 618, i32 0, metadata !180, null}
!566 = metadata !{i32 619, i32 0, metadata !180, null}
!567 = metadata !{i32 621, i32 0, metadata !180, null}
!568 = metadata !{i32 623, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !180, i32 622, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!570 = metadata !{i32 624, i32 0, metadata !569, null}
!571 = metadata !{i32 627, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !180, i32 626, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!573 = metadata !{i32 630, i32 0, metadata !572, null}
!574 = metadata !{i32 633, i32 0, metadata !180, null}
!575 = metadata !{i32 637, i32 0, metadata !191, null}
!576 = metadata !{i32 638, i32 0, metadata !191, null}
!577 = metadata !{i32 639, i32 0, metadata !191, null}
!578 = metadata !{i32 640, i32 0, metadata !191, null}
!579 = metadata !{i32 641, i32 0, metadata !191, null}
!580 = metadata !{i32 643, i32 0, metadata !191, null}
!581 = metadata !{i32 644, i32 0, metadata !191, null}
!582 = metadata !{i32 645, i32 0, metadata !191, null}
!583 = metadata !{i32 646, i32 0, metadata !191, null}
!584 = metadata !{i32 647, i32 0, metadata !191, null}
!585 = metadata !{i32 686, i32 0, metadata !203, null}
!586 = metadata !{i32 687, i32 0, metadata !203, null}
!587 = metadata !{i32 688, i32 0, metadata !203, null}
!588 = metadata !{i32 689, i32 0, metadata !203, null}
!589 = metadata !{i32 694, i32 0, metadata !203, null}
!590 = metadata !{i32 695, i32 0, metadata !203, null}
!591 = metadata !{i32 696, i32 0, metadata !203, null}
!592 = metadata !{i32 698, i32 0, metadata !203, null}
!593 = metadata !{i32 700, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !203, i32 699, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!595 = metadata !{i32 701, i32 0, metadata !594, null}
!596 = metadata !{i32 704, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !203, i32 703, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c]
!598 = metadata !{i32 707, i32 0, metadata !597, null}
!599 = metadata !{i32 710, i32 0, metadata !203, null}
!600 = metadata !{i32 714, i32 0, metadata !213, null}
!601 = metadata !{i32 715, i32 0, metadata !213, null}
!602 = metadata !{i32 716, i32 0, metadata !213, null}
!603 = metadata !{i32 717, i32 0, metadata !213, null}
!604 = metadata !{i32 719, i32 0, metadata !213, null}
!605 = metadata !{i32 720, i32 0, metadata !213, null}
!606 = metadata !{i32 721, i32 0, metadata !213, null}
!607 = metadata !{i32 722, i32 0, metadata !213, null}
!608 = metadata !{i32 723, i32 0, metadata !213, null}
