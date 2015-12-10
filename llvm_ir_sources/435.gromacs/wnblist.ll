; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wnblist.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"EOF when looking for '%s' in logfile\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Neighborlist:\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"%*s%d%*s%d\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"Not enough arguments read line %d\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"%*s%d%*s%d%*s%d%*s%d\00", align 1
@.str5 = private unnamed_addr constant [21 x i8] c"iatom = %d (max %d)\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str7 = private unnamed_addr constant [36 x i8] c"mat[%d][%d] changing from %d to %d\0A\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c"nri = %d  nrj = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"il_code: %d solvent: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"nri: %d  nrj: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"i: %d shift: %d gid: %d nj: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"  j: %d\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !29, metadata !371), !dbg !372
  %1 = icmp sgt i32 %__signo, 32, !dbg !373
  br i1 %1, label %5, label %2, !dbg !374

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !375
  %4 = shl i32 1, %3, !dbg !376
  br label %5, !dbg !374

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !374
  ret i32 %6, !dbg !377
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !36, metadata !371), !dbg !378
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !379
  br i1 %1, label %2, label %5, !dbg !380

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !381
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !382
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !380
  ret i32 %7, !dbg !383
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !42, metadata !371), !dbg !384
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !385
  br i1 %1, label %2, label %5, !dbg !386

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !387
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !388
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !386
  ret i32 %7, !dbg !389
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !48, metadata !371), !dbg !390
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !391
  br i1 %1, label %2, label %5, !dbg !392

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !393
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !394
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !392
  ret i32 %7, !dbg !395
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !51, metadata !371), !dbg !396
  %1 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !397
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !398
  %3 = zext i1 %2 to i32, !dbg !398
  ret i32 %3, !dbg !399
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !54, metadata !371), !dbg !400
  %1 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !401
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !402
  %3 = zext i1 %2 to i32, !dbg !402
  ret i32 %3, !dbg !403
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !57, metadata !371), !dbg !404
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !405
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !406
  %3 = zext i1 %2 to i32, !dbg !406
  ret i32 %3, !dbg !407
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !60, metadata !371), !dbg !408
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !409
  %2 = zext i1 %1 to i32, !dbg !409
  ret i32 %2, !dbg !410
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !63, metadata !371), !dbg !411
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !412
  %2 = zext i1 %1 to i32, !dbg !412
  ret i32 %2, !dbg !413
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !66, metadata !371), !dbg !414
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !415
  %2 = zext i1 %1 to i32, !dbg !415
  ret i32 %2, !dbg !416
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !69, metadata !371), !dbg !417
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !70, metadata !371), !dbg !418
  %1 = bitcast float %__x to i32, !dbg !419
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !70, metadata !371), !dbg !418
  %2 = lshr i32 %1, 31, !dbg !420
  ret i32 %2, !dbg !421
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !78, metadata !371), !dbg !422
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !79, metadata !371), !dbg !423
  %1 = bitcast double %__x to i64, !dbg !424
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !79, metadata !371), !dbg !423
  %2 = lshr i64 %1, 63, !dbg !425
  %3 = trunc i64 %2 to i32, !dbg !426
  ret i32 %3, !dbg !427
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !87, metadata !371), !dbg !428
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !88, metadata !371), !dbg !429
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !88, metadata !371), !dbg !429
  %1 = bitcast x86_fp80 %__x to i80, !dbg !430
  %2 = lshr i80 %1, 79, !dbg !430
  %3 = trunc i80 %2 to i32, !dbg !431
  ret i32 %3, !dbg !432
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !100, metadata !371), !dbg !433
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !36, metadata !371) #5, !dbg !434
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !436
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !437
  %or.cond = and i1 %1, %3, !dbg !438
  br i1 %or.cond, label %4, label %.critedge, !dbg !438

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !439
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !440
  ret i32 %7, !dbg !441
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !103, metadata !371), !dbg !442
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !42, metadata !371) #5, !dbg !443
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !445
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !446
  %or.cond = and i1 %1, %3, !dbg !447
  br i1 %or.cond, label %4, label %.critedge, !dbg !447

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !448
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !449
  ret i32 %7, !dbg !450
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !106, metadata !371), !dbg !451
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !48, metadata !371) #5, !dbg !452
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !454
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !455
  %or.cond = and i1 %1, %3, !dbg !456
  br i1 %or.cond, label %4, label %.critedge, !dbg !456

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !457
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !458
  ret i32 %7, !dbg !459
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !112, metadata !371), !dbg !460
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !113, metadata !371), !dbg !461
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !114, metadata !371), !dbg !462
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !115, metadata !371), !dbg !463
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9, !dbg !464
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !115, metadata !371), !dbg !463
  %2 = extractelement <2 x float> %1, i32 0, !dbg !465
  store float %2, float* %__sinp, align 4, !dbg !466, !tbaa !467
  %3 = extractelement <2 x float> %1, i32 1, !dbg !471
  store float %3, float* %__cosp, align 4, !dbg !472, !tbaa !467
  ret void, !dbg !473
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !126, metadata !371), !dbg !474
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !127, metadata !371), !dbg !475
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !128, metadata !371), !dbg !476
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !129, metadata !371), !dbg !477
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9, !dbg !478
  %2 = extractvalue { double, double } %1, 0, !dbg !478
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !129, metadata !479), !dbg !477
  %3 = extractvalue { double, double } %1, 1, !dbg !478
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !129, metadata !480), !dbg !477
  store double %2, double* %__sinp, align 8, !dbg !481, !tbaa !482
  store double %3, double* %__cosp, align 8, !dbg !484, !tbaa !482
  ret void, !dbg !485
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !137, metadata !371), !dbg !486
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !138, metadata !371), !dbg !487
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !139, metadata !371), !dbg !488
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !140, metadata !371), !dbg !489
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9, !dbg !490
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !140, metadata !371), !dbg !489
  %2 = extractelement <2 x float> %1, i32 0, !dbg !491
  store float %2, float* %__sinp, align 4, !dbg !492, !tbaa !467
  %3 = extractelement <2 x float> %1, i32 1, !dbg !493
  store float %3, float* %__cosp, align 4, !dbg !494, !tbaa !467
  ret void, !dbg !495
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !143, metadata !371), !dbg !496
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !144, metadata !371), !dbg !497
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !145, metadata !371), !dbg !498
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !146, metadata !371), !dbg !499
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9, !dbg !500
  %2 = extractvalue { double, double } %1, 0, !dbg !500
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !146, metadata !479), !dbg !499
  %3 = extractvalue { double, double } %1, 1, !dbg !500
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !146, metadata !480), !dbg !499
  store double %2, double* %__sinp, align 8, !dbg !501, !tbaa !482
  store double %3, double* %__cosp, align 8, !dbg !502, !tbaa !482
  ret void, !dbg !503
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @read_nblist(%struct.__sFILE* %in, %struct.__sFILE* nocapture %log, i32** nocapture readonly %mat, i32 %natoms) #4 {
  %buf = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %nri = alloca i32, align 4
  %il_code = alloca i32, align 4
  %solv = alloca i32, align 4
  %iatom = alloca i32, align 4
  %nrj = alloca i32, align 4
  %nj = alloca i32, align 4
  %shift = alloca i32, align 4
  %gid = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %in, i64 0, metadata !214, metadata !371), !dbg !504
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !215, metadata !371), !dbg !505
  tail call void @llvm.dbg.value(metadata i32** %mat, i64 0, metadata !216, metadata !371), !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !217, metadata !371), !dbg !507
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !508
  call void @llvm.lifetime.start(i64 256, i8* %1) #5, !dbg !508
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !219, metadata !371), !dbg !509
  br label %2, !dbg !510

; <label>:2                                       ; preds = %6, %0
  %3 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %in) #9, !dbg !511
  %4 = icmp eq i8* %3, null, !dbg !514
  br i1 %4, label %5, label %6, !dbg !515

; <label>:5                                       ; preds = %2
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !516
  br label %6, !dbg !516

; <label>:6                                       ; preds = %2, %5
  %7 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !517
  %8 = icmp eq i8* %7, null, !dbg !518
  br i1 %8, label %2, label %.preheader2, !dbg !519

.preheader2:                                      ; preds = %6
  call void @llvm.dbg.value(metadata i32* %il_code, i64 0, metadata !235, metadata !371), !dbg !520
  call void @llvm.dbg.value(metadata i32* %solv, i64 0, metadata !236, metadata !371), !dbg !521
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #9, !dbg !522
  %10 = icmp eq i32 %9, 2, !dbg !525
  br i1 %10, label %.lr.ph7, label %._crit_edge8, !dbg !526

.lr.ph7:                                          ; preds = %.preheader2, %._crit_edge6
  call void @llvm.dbg.value(metadata i32* %nri, i64 0, metadata !234, metadata !371), !dbg !527
  call void @llvm.dbg.value(metadata i32* %nrj, i64 0, metadata !238, metadata !371), !dbg !528
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %nri, i32* %nrj) #9, !dbg !529
  %12 = icmp eq i32 %11, 2, !dbg !531
  br i1 %12, label %.preheader, label %13, !dbg !532

; <label>:13                                      ; preds = %.lr.ph7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 77) #9, !dbg !533
  br label %.preheader, !dbg !533

.preheader:                                       ; preds = %.lr.ph7, %13
  call void @llvm.dbg.value(metadata i32* %nri, i64 0, metadata !234, metadata !371), !dbg !527
  %14 = load i32* %nri, align 4, !dbg !534, !tbaa !537
  %15 = icmp sgt i32 %14, 0, !dbg !539
  br i1 %15, label %.lr.ph5, label %._crit_edge6, !dbg !540

.lr.ph5:                                          ; preds = %.preheader, %._crit_edge
  %ii.04 = phi i32 [ %61, %._crit_edge ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !237, metadata !371), !dbg !541
  call void @llvm.dbg.value(metadata i32* %nj, i64 0, metadata !239, metadata !371), !dbg !542
  call void @llvm.dbg.value(metadata i32* %shift, i64 0, metadata !240, metadata !371), !dbg !543
  call void @llvm.dbg.value(metadata i32* %gid, i64 0, metadata !241, metadata !371), !dbg !544
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([21 x i8]* @.str4, i64 0, i64 0), i32* %iatom, i32* %gid, i32* %shift, i32* %nj) #9, !dbg !545
  %17 = icmp eq i32 %16, 4, !dbg !548
  br i1 %17, label %19, label %18, !dbg !549

; <label>:18                                      ; preds = %.lr.ph5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 80) #9, !dbg !550
  br label %19, !dbg !550

; <label>:19                                      ; preds = %.lr.ph5, %18
  call void @llvm.dbg.value(metadata i32* %shift, i64 0, metadata !240, metadata !371), !dbg !543
  %20 = load i32* %shift, align 4, !dbg !551, !tbaa !537
  %21 = add nsw i32 %20, 1, !dbg !551
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !240, metadata !371), !dbg !543
  store i32 %21, i32* %shift, align 4, !dbg !551, !tbaa !537
  call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !237, metadata !371), !dbg !541
  %22 = load i32* %iatom, align 4, !dbg !552, !tbaa !537
  %23 = icmp sgt i32 %22, -1, !dbg !554
  %24 = icmp slt i32 %22, %natoms, !dbg !555
  %or.cond = and i1 %23, %24, !dbg !556
  br i1 %or.cond, label %26, label %25, !dbg !556

; <label>:25                                      ; preds = %19
  call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !237, metadata !371), !dbg !541
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %22, i32 %natoms) #9, !dbg !557
  br label %26, !dbg !557

; <label>:26                                      ; preds = %19, %25
  call void @llvm.dbg.value(metadata i32* %nj, i64 0, metadata !239, metadata !371), !dbg !542
  %27 = load i32* %nj, align 4, !dbg !558, !tbaa !537
  call void @llvm.dbg.value(metadata i32* %nrj, i64 0, metadata !238, metadata !371), !dbg !528
  %28 = load i32* %nrj, align 4, !dbg !559, !tbaa !537
  %29 = add nsw i32 %28, %27, !dbg !559
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !238, metadata !371), !dbg !528
  store i32 %29, i32* %nrj, align 4, !dbg !559, !tbaa !537
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !228, metadata !371), !dbg !560
  call void @llvm.dbg.value(metadata i32* %nj, i64 0, metadata !239, metadata !371), !dbg !542
  %30 = icmp sgt i32 %27, 0, !dbg !561
  br i1 %30, label %.lr.ph, label %._crit_edge, !dbg !564

.lr.ph:                                           ; preds = %26, %52
  %i.03 = phi i32 [ %58, %52 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !230, metadata !371), !dbg !565
  %31 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32* %j) #9, !dbg !566
  %32 = icmp eq i32 %31, 1, !dbg !569
  br i1 %32, label %34, label %33, !dbg !570

; <label>:33                                      ; preds = %.lr.ph
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i32 90) #9, !dbg !571
  br label %34, !dbg !571

; <label>:34                                      ; preds = %.lr.ph, %33
  call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !230, metadata !371), !dbg !565
  %35 = load i32* %j, align 4, !dbg !572, !tbaa !537
  %36 = icmp sgt i32 %35, -1, !dbg !574
  %37 = icmp slt i32 %35, %natoms, !dbg !575
  %or.cond1 = and i1 %36, %37, !dbg !576
  br i1 %or.cond1, label %39, label %38, !dbg !576

; <label>:38                                      ; preds = %34
  call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !230, metadata !371), !dbg !565
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str5, i64 0, i64 0), i32 %35, i32 %natoms) #9, !dbg !577
  %.pre = load i32* %j, align 4, !dbg !578, !tbaa !537
  br label %39, !dbg !577

; <label>:39                                      ; preds = %34, %38
  %40 = phi i32 [ %35, %34 ], [ %.pre, %38 ]
  call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !230, metadata !371), !dbg !565
  %41 = sext i32 %40 to i64, !dbg !580
  call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !237, metadata !371), !dbg !541
  %42 = load i32* %iatom, align 4, !dbg !581, !tbaa !537
  %43 = sext i32 %42 to i64, !dbg !580
  %44 = getelementptr inbounds i32** %mat, i64 %43, !dbg !580
  %45 = load i32** %44, align 8, !dbg !580, !tbaa !582
  %46 = getelementptr inbounds i32* %45, i64 %41, !dbg !580
  %47 = load i32* %46, align 4, !dbg !580, !tbaa !537
  %48 = icmp eq i32 %47, 0, !dbg !584
  br i1 %48, label %52, label %49, !dbg !585

; <label>:49                                      ; preds = %39
  call void @llvm.dbg.value(metadata i32* %shift, i64 0, metadata !240, metadata !371), !dbg !543
  %50 = load i32* %shift, align 4, !dbg !586, !tbaa !537
  %51 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %i.03, i32 %40, i32 %47, i32 %50) #9, !dbg !587
  %.pre10 = load i32* %j, align 4, !dbg !588, !tbaa !537
  %.pre11 = load i32* %iatom, align 4, !dbg !589, !tbaa !537
  %.phi.trans.insert = sext i32 %.pre11 to i64
  %.phi.trans.insert12 = getelementptr inbounds i32** %mat, i64 %.phi.trans.insert
  %.pre13 = load i32** %.phi.trans.insert12, align 8, !dbg !590, !tbaa !582
  br label %52, !dbg !587

; <label>:52                                      ; preds = %39, %49
  %53 = phi i32* [ %45, %39 ], [ %.pre13, %49 ]
  %54 = phi i32 [ %40, %39 ], [ %.pre10, %49 ]
  call void @llvm.dbg.value(metadata i32* %shift, i64 0, metadata !240, metadata !371), !dbg !543
  %55 = load i32* %shift, align 4, !dbg !591, !tbaa !537
  call void @llvm.dbg.value(metadata i32* %j, i64 0, metadata !230, metadata !371), !dbg !565
  %56 = sext i32 %54 to i64, !dbg !590
  call void @llvm.dbg.value(metadata i32* %iatom, i64 0, metadata !237, metadata !371), !dbg !541
  %57 = getelementptr inbounds i32* %53, i64 %56, !dbg !590
  store i32 %55, i32* %57, align 4, !dbg !592, !tbaa !537
  %58 = add nuw nsw i32 %i.03, 1, !dbg !593
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !228, metadata !371), !dbg !560
  call void @llvm.dbg.value(metadata i32* %nj, i64 0, metadata !239, metadata !371), !dbg !542
  %59 = load i32* %nj, align 4, !dbg !594, !tbaa !537
  %60 = icmp slt i32 %58, %59, !dbg !561
  br i1 %60, label %.lr.ph, label %._crit_edge, !dbg !564

._crit_edge:                                      ; preds = %52, %26
  %61 = add nuw nsw i32 %ii.04, 1, !dbg !595
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !229, metadata !371), !dbg !596
  call void @llvm.dbg.value(metadata i32* %nri, i64 0, metadata !234, metadata !371), !dbg !527
  %62 = load i32* %nri, align 4, !dbg !534, !tbaa !537
  %63 = icmp slt i32 %61, %62, !dbg !539
  br i1 %63, label %.lr.ph5, label %._crit_edge6, !dbg !540

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i32 [ %14, %.preheader ], [ %62, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32* %nrj, i64 0, metadata !238, metadata !371), !dbg !528
  %64 = load i32* %nrj, align 4, !dbg !597, !tbaa !537
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i32 %.lcssa, i32 %64) #9, !dbg !598
  call void @llvm.dbg.value(metadata i32* %il_code, i64 0, metadata !235, metadata !371), !dbg !520
  call void @llvm.dbg.value(metadata i32* %solv, i64 0, metadata !236, metadata !371), !dbg !521
  %66 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %in, i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i32* %il_code, i32* %solv) #9, !dbg !522
  %67 = icmp eq i32 %66, 2, !dbg !525
  br i1 %67, label %.lr.ph7, label %._crit_edge8, !dbg !526

._crit_edge8:                                     ; preds = %._crit_edge6, %.preheader2
  call void @llvm.lifetime.end(i64 256, i8* %1) #5, !dbg !599
  ret void, !dbg !599
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_nblist(%struct.__sFILE* nocapture %out, %struct.t_forcerec* nocapture readonly %fr, i32 %nDNL) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !348, metadata !371), !dbg !600
  tail call void @llvm.dbg.value(metadata %struct.t_forcerec* %fr, i64 0, metadata !349, metadata !371), !dbg !601
  tail call void @llvm.dbg.value(metadata i32 %nDNL, i64 0, metadata !350, metadata !371), !dbg !602
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !603
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !351, metadata !371), !dbg !604
  br label %2, !dbg !605

; <label>:2                                       ; preds = %write_nblist.exit, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %write_nblist.exit ]
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !357, metadata !371) #5, !dbg !607
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 0, !dbg !610
  %4 = load i32* %3, align 4, !dbg !610, !tbaa !611
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 6, !dbg !613
  %6 = load i32* %5, align 4, !dbg !613, !tbaa !614
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0), i32 %4, i32 %6) #9, !dbg !615
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 1, !dbg !616
  %9 = load i32* %8, align 4, !dbg !616, !tbaa !617
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 3, !dbg !618
  %11 = load i32* %10, align 4, !dbg !618, !tbaa !619
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i32 %9, i32 %11) #9, !dbg !620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !359, metadata !371) #5, !dbg !621
  %13 = load i32* %8, align 4, !dbg !622, !tbaa !617
  %14 = icmp sgt i32 %13, 0, !dbg !625
  br i1 %14, label %.lr.ph3.i, label %write_nblist.exit, !dbg !626

.lr.ph3.i:                                        ; preds = %2
  %15 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 10, !dbg !627
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 7, !dbg !629
  %17 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 9, !dbg !630
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 8, !dbg !631
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv, i32 11, !dbg !632
  %.pre.i = load i32** %15, align 8, !dbg !627, !tbaa !635
  br label %24, !dbg !626

.loopexit.i:                                      ; preds = %48, %24
  %20 = phi i32* [ %41, %24 ], [ %53, %48 ], !dbg !636
  %21 = load i32* %8, align 4, !dbg !622, !tbaa !617
  %22 = sext i32 %21 to i64, !dbg !625
  %23 = icmp slt i64 %indvars.iv.next5.i, %22, !dbg !625
  br i1 %23, label %24, label %write_nblist.exit, !dbg !626

; <label>:24                                      ; preds = %.loopexit.i, %.lr.ph3.i
  %25 = phi i32* [ %.pre.i, %.lr.ph3.i ], [ %20, %.loopexit.i ], !dbg !626
  %indvars.iv4.i = phi i64 [ 0, %.lr.ph3.i ], [ %indvars.iv.next5.i, %.loopexit.i ], !dbg !636
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !dbg !626
  %26 = getelementptr inbounds i32* %25, i64 %indvars.iv.next5.i, !dbg !637
  %27 = load i32* %26, align 4, !dbg !637, !tbaa !537
  %28 = getelementptr inbounds i32* %25, i64 %indvars.iv4.i, !dbg !638
  %29 = load i32* %28, align 4, !dbg !638, !tbaa !537
  %30 = sub nsw i32 %27, %29, !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !365, metadata !371) #5, !dbg !640
  %31 = load i32** %16, align 8, !dbg !629, !tbaa !641
  %32 = getelementptr inbounds i32* %31, i64 %indvars.iv4.i, !dbg !642
  %33 = load i32* %32, align 4, !dbg !642, !tbaa !537
  %34 = load i32** %17, align 8, !dbg !630, !tbaa !643
  %35 = getelementptr inbounds i32* %34, i64 %indvars.iv4.i, !dbg !644
  %36 = load i32* %35, align 4, !dbg !644, !tbaa !537
  %37 = load i32** %18, align 8, !dbg !631, !tbaa !645
  %38 = getelementptr inbounds i32* %37, i64 %indvars.iv4.i, !dbg !646
  %39 = load i32* %38, align 4, !dbg !646, !tbaa !537
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([32 x i8]* @.str12, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %30) #9, !dbg !647
  %41 = load i32** %15, align 8, !dbg !648, !tbaa !635
  %42 = getelementptr inbounds i32* %41, i64 %indvars.iv4.i, !dbg !649
  %43 = load i32* %42, align 4, !dbg !649, !tbaa !537
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !360, metadata !371) #5, !dbg !650
  %44 = getelementptr inbounds i32* %41, i64 %indvars.iv.next5.i, !dbg !651
  %45 = load i32* %44, align 4, !dbg !651, !tbaa !537
  %46 = icmp slt i32 %43, %45, !dbg !652
  br i1 %46, label %.lr.ph.i, label %.loopexit.i, !dbg !653

.lr.ph.i:                                         ; preds = %24
  %47 = sext i32 %43 to i64, !dbg !636
  br label %48, !dbg !653

; <label>:48                                      ; preds = %48, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %47, %.lr.ph.i ], [ %indvars.iv.next.i, %48 ], !dbg !636
  %49 = load i32** %19, align 8, !dbg !632, !tbaa !654
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv.i, !dbg !655
  %51 = load i32* %50, align 4, !dbg !655, !tbaa !537
  %52 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i32 %51) #9, !dbg !656
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1, !dbg !653
  %53 = load i32** %15, align 8, !dbg !657, !tbaa !635
  %54 = getelementptr inbounds i32* %53, i64 %indvars.iv.next5.i, !dbg !651
  %55 = load i32* %54, align 4, !dbg !651, !tbaa !537
  %56 = sext i32 %55 to i64, !dbg !652
  %57 = icmp slt i64 %indvars.iv.next.i, %56, !dbg !652
  br i1 %57, label %48, label %.loopexit.i, !dbg !653

write_nblist.exit:                                ; preds = %.loopexit.i, %2
  %58 = tail call i32 @fflush(%struct.__sFILE* %out) #9, !dbg !658
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !605
  %exitcond = icmp eq i64 %indvars.iv.next, 13, !dbg !605
  br i1 %exitcond, label %59, label %2, !dbg !605

; <label>:59                                      ; preds = %write_nblist.exit
  ret void, !dbg !659
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!367, !368, !369}
!llvm.ident = !{!370}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !20, subprograms: !23, globals: !366, imports: !366)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wnblist.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!6 = !DIEnumerator(name: "eNL_VDWQQ", value: 0)
!7 = !DIEnumerator(name: "eNL_VDW", value: 1)
!8 = !DIEnumerator(name: "eNL_QQ", value: 2)
!9 = !DIEnumerator(name: "eNL_VDWQQ_FREE", value: 3)
!10 = !DIEnumerator(name: "eNL_VDW_FREE", value: 4)
!11 = !DIEnumerator(name: "eNL_QQ_FREE", value: 5)
!12 = !DIEnumerator(name: "eNL_VDWQQ_SOLMNO", value: 6)
!13 = !DIEnumerator(name: "eNL_VDW_SOLMNO", value: 7)
!14 = !DIEnumerator(name: "eNL_QQ_SOLMNO", value: 8)
!15 = !DIEnumerator(name: "eNL_VDWQQ_WATER", value: 9)
!16 = !DIEnumerator(name: "eNL_QQ_WATER", value: 10)
!17 = !DIEnumerator(name: "eNL_VDWQQ_WATERWATER", value: 11)
!18 = !DIEnumerator(name: "eNL_QQ_WATERWATER", value: 12)
!19 = !DIEnumerator(name: "eNL_NR", value: 13)
!20 = !{!21, !22}
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!23 = !{!24, !30, !37, !43, !49, !52, !55, !58, !61, !64, !67, !76, !85, !98, !101, !104, !107, !121, !135, !141, !147, !242, !352}
!24 = !DISubprogram(name: "__sigbits", scope: !25, file: !25, line: 114, type: !26, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !28)
!25 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DISubroutineType(types: !27)
!27 = !{!21, !21}
!28 = !{!29}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !24, file: !25, line: 114, type: !21)
!30 = !DISubprogram(name: "__inline_isfinitef", scope: !31, file: !31, line: 204, type: !32, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !35)
!31 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!32 = !DISubroutineType(types: !33)
!33 = !{!21, !34}
!34 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !30, file: !31, line: 204, type: !34)
!37 = !DISubprogram(name: "__inline_isfinited", scope: !31, file: !31, line: 207, type: !38, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!21, !40}
!40 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !37, file: !31, line: 207, type: !40)
!43 = !DISubprogram(name: "__inline_isfinitel", scope: !31, file: !31, line: 210, type: !44, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !47)
!44 = !DISubroutineType(types: !45)
!45 = !{!21, !46}
!46 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !43, file: !31, line: 210, type: !46)
!49 = !DISubprogram(name: "__inline_isinff", scope: !31, file: !31, line: 213, type: !32, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !50)
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !49, file: !31, line: 213, type: !34)
!52 = !DISubprogram(name: "__inline_isinfd", scope: !31, file: !31, line: 216, type: !38, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !53)
!53 = !{!54}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !52, file: !31, line: 216, type: !40)
!55 = !DISubprogram(name: "__inline_isinfl", scope: !31, file: !31, line: 219, type: !44, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !56)
!56 = !{!57}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !55, file: !31, line: 219, type: !46)
!58 = !DISubprogram(name: "__inline_isnanf", scope: !31, file: !31, line: 222, type: !32, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !59)
!59 = !{!60}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !58, file: !31, line: 222, type: !34)
!61 = !DISubprogram(name: "__inline_isnand", scope: !31, file: !31, line: 225, type: !38, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !62)
!62 = !{!63}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !61, file: !31, line: 225, type: !40)
!64 = !DISubprogram(name: "__inline_isnanl", scope: !31, file: !31, line: 228, type: !44, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !65)
!65 = !{!66}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !64, file: !31, line: 228, type: !46)
!67 = !DISubprogram(name: "__inline_signbitf", scope: !31, file: !31, line: 231, type: !32, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !68)
!68 = !{!69, !70}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !67, file: !31, line: 231, type: !34)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !67, file: !31, line: 232, type: !71)
!71 = !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !31, line: 232, size: 32, align: 32, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !71, file: !31, line: 232, baseType: !34, size: 32, align: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !71, file: !31, line: 232, baseType: !75, size: 32, align: 32)
!75 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!76 = !DISubprogram(name: "__inline_signbitd", scope: !31, file: !31, line: 236, type: !38, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !77)
!77 = !{!78, !79}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !76, file: !31, line: 236, type: !40)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !76, file: !31, line: 237, type: !80)
!80 = !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !31, line: 237, size: 64, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !80, file: !31, line: 237, baseType: !40, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !80, file: !31, line: 237, baseType: !84, size: 64, align: 64)
!84 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !DISubprogram(name: "__inline_signbitl", scope: !31, file: !31, line: 242, type: !44, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !86)
!86 = !{!87, !88}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !31, line: 242, type: !46)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !85, file: !31, line: 246, type: !89)
!89 = !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !31, line: 243, size: 128, align: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !89, file: !31, line: 244, baseType: !46, size: 128, align: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !89, file: !31, line: 245, baseType: !93, size: 128, align: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !31, line: 245, size: 128, align: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !93, file: !31, line: 245, baseType: !84, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !93, file: !31, line: 245, baseType: !97, size: 16, align: 16, offset: 64)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DISubprogram(name: "__inline_isnormalf", scope: !31, file: !31, line: 257, type: !32, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !99)
!99 = !{!100}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !98, file: !31, line: 257, type: !34)
!101 = !DISubprogram(name: "__inline_isnormald", scope: !31, file: !31, line: 260, type: !38, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !102)
!102 = !{!103}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !101, file: !31, line: 260, type: !40)
!104 = !DISubprogram(name: "__inline_isnormall", scope: !31, file: !31, line: 263, type: !44, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !105)
!105 = !{!106}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !104, file: !31, line: 263, type: !46)
!107 = !DISubprogram(name: "__sincosf", scope: !31, file: !31, line: 642, type: !108, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !111)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !34, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!111 = !{!112, !113, !114, !115}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !107, file: !31, line: 642, type: !34)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !107, file: !31, line: 642, type: !110)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !107, file: !31, line: 642, type: !110)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !107, file: !31, line: 643, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !31, line: 634, size: 64, align: 32, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !117, file: !31, line: 634, baseType: !34, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !117, file: !31, line: 634, baseType: !34, size: 32, align: 32, offset: 32)
!121 = !DISubprogram(name: "__sincos", scope: !31, file: !31, line: 647, type: !122, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !125)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !40, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!125 = !{!126, !127, !128, !129}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !121, file: !31, line: 647, type: !40)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !121, file: !31, line: 647, type: !124)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !121, file: !31, line: 647, type: !124)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !121, file: !31, line: 648, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !31, line: 635, size: 128, align: 64, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !131, file: !31, line: 635, baseType: !40, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !131, file: !31, line: 635, baseType: !40, size: 64, align: 64, offset: 64)
!135 = !DISubprogram(name: "__sincospif", scope: !31, file: !31, line: 652, type: !108, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !135, file: !31, line: 652, type: !34)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !135, file: !31, line: 652, type: !110)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !135, file: !31, line: 652, type: !110)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !135, file: !31, line: 653, type: !116)
!141 = !DISubprogram(name: "__sincospi", scope: !31, file: !31, line: 657, type: !122, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !141, file: !31, line: 657, type: !40)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !141, file: !31, line: 657, type: !124)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !141, file: !31, line: 657, type: !124)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !141, file: !31, line: 658, type: !130)
!147 = !DISubprogram(name: "read_nblist", scope: !1, file: !1, line: 61, type: !148, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.__sFILE*, i32**, i32)* @read_nblist, variables: !213)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150, !150, !211, !21}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !152, line: 153, baseType: !153)
!152 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !152, line: 122, size: 1216, align: 64, elements: !154)
!154 = !{!155, !158, !159, !160, !162, !163, !168, !169, !170, !173, !179, !189, !195, !196, !199, !200, !204, !208, !209, !210}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !153, file: !152, line: 123, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !153, file: !152, line: 124, baseType: !21, size: 32, align: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !153, file: !152, line: 125, baseType: !21, size: 32, align: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !153, file: !152, line: 126, baseType: !161, size: 16, align: 16, offset: 128)
!161 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !153, file: !152, line: 127, baseType: !161, size: 16, align: 16, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !153, file: !152, line: 128, baseType: !164, size: 128, align: 64, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !152, line: 88, size: 128, align: 64, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !164, file: !152, line: 89, baseType: !156, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !164, file: !152, line: 90, baseType: !21, size: 32, align: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !153, file: !152, line: 129, baseType: !21, size: 32, align: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !153, file: !152, line: 132, baseType: !22, size: 64, align: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !153, file: !152, line: 133, baseType: !171, size: 64, align: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !20)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !153, file: !152, line: 134, baseType: !174, size: 64, align: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!21, !22, !177, !21}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !153, file: !152, line: 135, baseType: !180, size: 64, align: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !22, !183, !21}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !152, line: 77, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !185, line: 71, baseType: !186)
!185 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!188 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !153, file: !152, line: 136, baseType: !190, size: 64, align: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!21, !22, !193, !21}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !153, file: !152, line: 139, baseType: !164, size: 128, align: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !153, file: !152, line: 140, baseType: !197, size: 64, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !152, line: 94, flags: DIFlagFwdDecl)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !153, file: !152, line: 141, baseType: !21, size: 32, align: 32, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !153, file: !152, line: 144, baseType: !201, size: 24, align: 8, offset: 928)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 24, align: 8, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 3)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !153, file: !152, line: 145, baseType: !205, size: 8, align: 8, offset: 952)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 8, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 1)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !153, file: !152, line: 148, baseType: !164, size: 128, align: 64, offset: 960)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !153, file: !152, line: 151, baseType: !21, size: 32, align: 32, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !153, file: !152, line: 152, baseType: !183, size: 64, align: 64, offset: 1152)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!213 = !{!214, !215, !216, !217, !218, !219, !223, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !147, file: !1, line: 61, type: !150)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 2, scope: !147, file: !1, line: 61, type: !150)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mat", arg: 3, scope: !147, file: !1, line: 61, type: !211)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 4, scope: !147, file: !1, line: 61, type: !21)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bNL", scope: !147, file: !1, line: 63, type: !21)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !147, file: !1, line: 64, type: !220)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 2048, align: 8, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 256)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b1", scope: !147, file: !1, line: 64, type: !224)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, align: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b2", scope: !147, file: !1, line: 64, type: !224)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !147, file: !1, line: 65, type: !21)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !147, file: !1, line: 65, type: !21)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !147, file: !1, line: 65, type: !21)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnbl", scope: !147, file: !1, line: 65, type: !21)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "full", scope: !147, file: !1, line: 65, type: !21)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icmp", scope: !147, file: !1, line: 65, type: !21)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nri", scope: !147, file: !1, line: 65, type: !21)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "il_code", scope: !147, file: !1, line: 65, type: !21)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "solv", scope: !147, file: !1, line: 65, type: !21)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iatom", scope: !147, file: !1, line: 66, type: !21)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrj", scope: !147, file: !1, line: 66, type: !21)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nj", scope: !147, file: !1, line: 66, type: !21)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !147, file: !1, line: 66, type: !21)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gid", scope: !147, file: !1, line: 66, type: !21)
!242 = !DISubprogram(name: "dump_nblist", scope: !1, file: !1, line: 103, type: !243, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_forcerec*, i32)* @dump_nblist, variables: !347)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !150, !245, !21}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_forcerec", file: !4, line: 149, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 43, size: 22784, align: 64, elements: !248)
!248 = !{!249, !250, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !294, !295, !296, !297, !298, !299, !300, !303, !304, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !247, file: !4, line: 45, baseType: !21, size: 32, align: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !247, file: !4, line: 46, baseType: !251, size: 32, align: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !252, line: 87, baseType: !34)
!252 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rlistlong", scope: !247, file: !4, line: 46, baseType: !251, size: 32, align: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "zsquare", scope: !247, file: !4, line: 49, baseType: !251, size: 32, align: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !247, file: !4, line: 49, baseType: !251, size: 32, align: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !247, file: !4, line: 50, baseType: !251, size: 32, align: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "epsfac", scope: !247, file: !4, line: 50, baseType: !251, size: 32, align: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bRF", scope: !247, file: !4, line: 53, baseType: !21, size: 32, align: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kappa", scope: !247, file: !4, line: 54, baseType: !251, size: 32, align: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "k_rf", scope: !247, file: !4, line: 54, baseType: !251, size: 32, align: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "c_rf", scope: !247, file: !4, line: 54, baseType: !251, size: 32, align: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "avcsix", scope: !247, file: !4, line: 57, baseType: !251, size: 32, align: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !247, file: !4, line: 60, baseType: !251, size: 32, align: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "bcoultab", scope: !247, file: !4, line: 63, baseType: !21, size: 32, align: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bvdwtab", scope: !247, file: !4, line: 64, baseType: !21, size: 32, align: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rtab", scope: !247, file: !4, line: 65, baseType: !251, size: 32, align: 32, offset: 480)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ntab", scope: !247, file: !4, line: 66, baseType: !21, size: 32, align: 32, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale", scope: !247, file: !4, line: 67, baseType: !251, size: 32, align: 32, offset: 544)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "coultab", scope: !247, file: !4, line: 69, baseType: !270, size: 64, align: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtab", scope: !247, file: !4, line: 70, baseType: !270, size: 64, align: 64, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdwtab", scope: !247, file: !4, line: 71, baseType: !270, size: 64, align: 64, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdw14tab", scope: !247, file: !4, line: 72, baseType: !270, size: 64, align: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !247, file: !4, line: 75, baseType: !251, size: 32, align: 32, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !247, file: !4, line: 75, baseType: !251, size: 32, align: 32, offset: 864)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !247, file: !4, line: 76, baseType: !270, size: 64, align: 64, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !247, file: !4, line: 79, baseType: !251, size: 32, align: 32, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !247, file: !4, line: 79, baseType: !251, size: 32, align: 32, offset: 992)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bham_b_max", scope: !247, file: !4, line: 80, baseType: !251, size: 32, align: 32, offset: 1024)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale_exp", scope: !247, file: !4, line: 81, baseType: !251, size: 32, align: 32, offset: 1056)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !247, file: !4, line: 84, baseType: !21, size: 32, align: 32, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !247, file: !4, line: 85, baseType: !251, size: 32, align: 32, offset: 1120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma6", scope: !247, file: !4, line: 86, baseType: !251, size: 32, align: 32, offset: 1152)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bSepDVDL", scope: !247, file: !4, line: 87, baseType: !21, size: 32, align: 32, offset: 1184)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "eeltype", scope: !247, file: !4, line: 90, baseType: !21, size: 32, align: 32, offset: 1216)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !247, file: !4, line: 91, baseType: !21, size: 32, align: 32, offset: 1248)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cg0", scope: !247, file: !4, line: 92, baseType: !21, size: 32, align: 32, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "hcg", scope: !247, file: !4, line: 92, baseType: !21, size: 32, align: 32, offset: 1312)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !247, file: !4, line: 93, baseType: !21, size: 32, align: 32, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "bSolvOpt", scope: !247, file: !4, line: 94, baseType: !21, size: 32, align: 32, offset: 1376)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOMol", scope: !247, file: !4, line: 95, baseType: !21, size: 32, align: 32, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOav", scope: !247, file: !4, line: 96, baseType: !293, size: 96, align: 32, offset: 1440)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 96, align: 32, elements: !202)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "nWatMol", scope: !247, file: !4, line: 97, baseType: !21, size: 32, align: 32, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "Dimension", scope: !247, file: !4, line: 98, baseType: !21, size: 32, align: 32, offset: 1568)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "bGrid", scope: !247, file: !4, line: 99, baseType: !21, size: 32, align: 32, offset: 1600)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !247, file: !4, line: 99, baseType: !21, size: 32, align: 32, offset: 1632)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "solvent_type", scope: !247, file: !4, line: 100, baseType: !212, size: 64, align: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mno_index", scope: !247, file: !4, line: 101, baseType: !212, size: 64, align: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cg_cm", scope: !247, file: !4, line: 102, baseType: !301, size: 64, align: 64, offset: 1792)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !252, line: 101, baseType: !293)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "shift_vec", scope: !247, file: !4, line: 103, baseType: !301, size: 64, align: 64, offset: 1856)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_sr", scope: !247, file: !4, line: 108, baseType: !305, size: 9984, align: 64, offset: 1920)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 9984, align: 64, elements: !327)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nblist", file: !307, line: 60, baseType: !308)
!307 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nblist.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!308 = !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 36, size: 768, align: 64, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !320, !321, !322, !323, !324, !325, !326}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "il_code", scope: !308, file: !307, line: 37, baseType: !21, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "nri", scope: !308, file: !307, line: 39, baseType: !21, size: 32, align: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "maxnri", scope: !308, file: !307, line: 39, baseType: !21, size: 32, align: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nrj", scope: !308, file: !307, line: 40, baseType: !21, size: 32, align: 32, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "maxnrj", scope: !308, file: !307, line: 40, baseType: !21, size: 32, align: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !308, file: !307, line: 41, baseType: !21, size: 32, align: 32, offset: 160)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "solvent", scope: !308, file: !307, line: 42, baseType: !21, size: 32, align: 32, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "iinr", scope: !308, file: !307, line: 43, baseType: !318, size: 64, align: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !252, line: 73, baseType: !21)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !308, file: !307, line: 44, baseType: !212, size: 64, align: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !308, file: !307, line: 45, baseType: !212, size: 64, align: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "jindex", scope: !308, file: !307, line: 46, baseType: !212, size: 64, align: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "jjnr", scope: !308, file: !307, line: 47, baseType: !318, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nsatoms", scope: !308, file: !307, line: 48, baseType: !212, size: 64, align: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !308, file: !307, line: 58, baseType: !21, size: 32, align: 32, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !308, file: !307, line: 58, baseType: !212, size: 64, align: 64, offset: 704)
!327 = !{!328}
!328 = !DISubrange(count: 13)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_lr", scope: !247, file: !4, line: 109, baseType: !305, size: 9984, align: 64, offset: 11904)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bTwinRange", scope: !247, file: !4, line: 120, baseType: !21, size: 32, align: 32, offset: 21888)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nlr", scope: !247, file: !4, line: 121, baseType: !21, size: 32, align: 32, offset: 21920)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_twin", scope: !247, file: !4, line: 122, baseType: !301, size: 64, align: 64, offset: 21952)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "fshift_twin", scope: !247, file: !4, line: 123, baseType: !301, size: 64, align: 64, offset: 22016)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "f_pme", scope: !247, file: !4, line: 126, baseType: !301, size: 64, align: 64, offset: 22080)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "bEwald", scope: !247, file: !4, line: 127, baseType: !21, size: 32, align: 32, offset: 22144)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ewaldcoeff", scope: !247, file: !4, line: 128, baseType: !251, size: 32, align: 32, offset: 22176)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "fshift", scope: !247, file: !4, line: 131, baseType: !301, size: 64, align: 64, offset: 22208)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nmol", scope: !247, file: !4, line: 134, baseType: !21, size: 32, align: 32, offset: 22272)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mol_nr", scope: !247, file: !4, line: 135, baseType: !318, size: 64, align: 64, offset: 22336)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mol_epot", scope: !247, file: !4, line: 136, baseType: !270, size: 64, align: 64, offset: 22400)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nstcalc", scope: !247, file: !4, line: 137, baseType: !21, size: 32, align: 32, offset: 22464)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ntype", scope: !247, file: !4, line: 140, baseType: !21, size: 32, align: 32, offset: 22496)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bBHAM", scope: !247, file: !4, line: 141, baseType: !21, size: 32, align: 32, offset: 22528)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nbfp", scope: !247, file: !4, line: 142, baseType: !270, size: 64, align: 64, offset: 22592)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !247, file: !4, line: 145, baseType: !212, size: 64, align: 64, offset: 22656)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !247, file: !4, line: 148, baseType: !251, size: 32, align: 32, offset: 22720)
!347 = !{!348, !349, !350, !351}
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !242, file: !1, line: 103, type: !150)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !242, file: !1, line: 103, type: !245)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nDNL", arg: 3, scope: !242, file: !1, line: 103, type: !21)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !242, file: !1, line: 105, type: !21)
!352 = !DISubprogram(name: "write_nblist", scope: !1, file: !1, line: 45, type: !353, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, variables: !356)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !150, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365}
!357 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !352, file: !1, line: 45, type: !150)
!358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nblist", arg: 2, scope: !352, file: !1, line: 45, type: !355)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !352, file: !1, line: 47, type: !21)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !352, file: !1, line: 47, type: !21)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j0", scope: !352, file: !1, line: 47, type: !21)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !352, file: !1, line: 47, type: !21)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i_atom", scope: !352, file: !1, line: 47, type: !21)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jid", scope: !352, file: !1, line: 47, type: !21)
!365 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nj", scope: !352, file: !1, line: 47, type: !21)
!366 = !{}
!367 = !{i32 2, !"Dwarf Version", i32 2}
!368 = !{i32 2, !"Debug Info Version", i32 700000003}
!369 = !{i32 1, !"PIC Level", i32 2}
!370 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!371 = !DIExpression()
!372 = !DILocation(line: 114, column: 15, scope: !24)
!373 = !DILocation(line: 116, column: 20, scope: !24)
!374 = !DILocation(line: 116, column: 12, scope: !24)
!375 = !DILocation(line: 116, column: 57, scope: !24)
!376 = !DILocation(line: 116, column: 45, scope: !24)
!377 = !DILocation(line: 116, column: 5, scope: !24)
!378 = !DILocation(line: 204, column: 53, scope: !30)
!379 = !DILocation(line: 205, column: 16, scope: !30)
!380 = !DILocation(line: 205, column: 23, scope: !30)
!381 = !DILocation(line: 205, column: 26, scope: !30)
!382 = !DILocation(line: 205, column: 47, scope: !30)
!383 = !DILocation(line: 205, column: 5, scope: !30)
!384 = !DILocation(line: 207, column: 54, scope: !37)
!385 = !DILocation(line: 208, column: 16, scope: !37)
!386 = !DILocation(line: 208, column: 23, scope: !37)
!387 = !DILocation(line: 208, column: 26, scope: !37)
!388 = !DILocation(line: 208, column: 46, scope: !37)
!389 = !DILocation(line: 208, column: 5, scope: !37)
!390 = !DILocation(line: 210, column: 59, scope: !43)
!391 = !DILocation(line: 211, column: 16, scope: !43)
!392 = !DILocation(line: 211, column: 23, scope: !43)
!393 = !DILocation(line: 211, column: 26, scope: !43)
!394 = !DILocation(line: 211, column: 47, scope: !43)
!395 = !DILocation(line: 211, column: 5, scope: !43)
!396 = !DILocation(line: 213, column: 50, scope: !49)
!397 = !DILocation(line: 214, column: 12, scope: !49)
!398 = !DILocation(line: 214, column: 33, scope: !49)
!399 = !DILocation(line: 214, column: 5, scope: !49)
!400 = !DILocation(line: 216, column: 51, scope: !52)
!401 = !DILocation(line: 217, column: 12, scope: !52)
!402 = !DILocation(line: 217, column: 32, scope: !52)
!403 = !DILocation(line: 217, column: 5, scope: !52)
!404 = !DILocation(line: 219, column: 56, scope: !55)
!405 = !DILocation(line: 220, column: 12, scope: !55)
!406 = !DILocation(line: 220, column: 33, scope: !55)
!407 = !DILocation(line: 220, column: 5, scope: !55)
!408 = !DILocation(line: 222, column: 50, scope: !58)
!409 = !DILocation(line: 223, column: 16, scope: !58)
!410 = !DILocation(line: 223, column: 5, scope: !58)
!411 = !DILocation(line: 225, column: 51, scope: !61)
!412 = !DILocation(line: 226, column: 16, scope: !61)
!413 = !DILocation(line: 226, column: 5, scope: !61)
!414 = !DILocation(line: 228, column: 56, scope: !64)
!415 = !DILocation(line: 229, column: 16, scope: !64)
!416 = !DILocation(line: 229, column: 5, scope: !64)
!417 = !DILocation(line: 231, column: 52, scope: !67)
!418 = !DILocation(line: 232, column: 44, scope: !67)
!419 = !DILocation(line: 233, column: 13, scope: !67)
!420 = !DILocation(line: 234, column: 26, scope: !67)
!421 = !DILocation(line: 234, column: 5, scope: !67)
!422 = !DILocation(line: 236, column: 53, scope: !76)
!423 = !DILocation(line: 237, column: 51, scope: !76)
!424 = !DILocation(line: 238, column: 13, scope: !76)
!425 = !DILocation(line: 239, column: 26, scope: !76)
!426 = !DILocation(line: 239, column: 12, scope: !76)
!427 = !DILocation(line: 239, column: 5, scope: !76)
!428 = !DILocation(line: 242, column: 58, scope: !85)
!429 = !DILocation(line: 246, column: 7, scope: !85)
!430 = !DILocation(line: 248, column: 26, scope: !85)
!431 = !DILocation(line: 248, column: 33, scope: !85)
!432 = !DILocation(line: 248, column: 5, scope: !85)
!433 = !DILocation(line: 257, column: 53, scope: !98)
!434 = !DILocation(line: 204, column: 53, scope: !30, inlinedAt: !435)
!435 = distinct !DILocation(line: 258, column: 12, scope: !98)
!436 = !DILocation(line: 205, column: 16, scope: !30, inlinedAt: !435)
!437 = !DILocation(line: 205, column: 47, scope: !30, inlinedAt: !435)
!438 = !DILocation(line: 205, column: 23, scope: !30, inlinedAt: !435)
!439 = !DILocation(line: 258, column: 60, scope: !98)
!440 = !DILocation(line: 258, column: 36, scope: !98)
!441 = !DILocation(line: 258, column: 5, scope: !98)
!442 = !DILocation(line: 260, column: 54, scope: !101)
!443 = !DILocation(line: 207, column: 54, scope: !37, inlinedAt: !444)
!444 = distinct !DILocation(line: 261, column: 12, scope: !101)
!445 = !DILocation(line: 208, column: 16, scope: !37, inlinedAt: !444)
!446 = !DILocation(line: 208, column: 46, scope: !37, inlinedAt: !444)
!447 = !DILocation(line: 208, column: 23, scope: !37, inlinedAt: !444)
!448 = !DILocation(line: 261, column: 59, scope: !101)
!449 = !DILocation(line: 261, column: 36, scope: !101)
!450 = !DILocation(line: 261, column: 5, scope: !101)
!451 = !DILocation(line: 263, column: 59, scope: !104)
!452 = !DILocation(line: 210, column: 59, scope: !43, inlinedAt: !453)
!453 = distinct !DILocation(line: 264, column: 12, scope: !104)
!454 = !DILocation(line: 211, column: 16, scope: !43, inlinedAt: !453)
!455 = !DILocation(line: 211, column: 47, scope: !43, inlinedAt: !453)
!456 = !DILocation(line: 211, column: 23, scope: !43, inlinedAt: !453)
!457 = !DILocation(line: 264, column: 60, scope: !104)
!458 = !DILocation(line: 264, column: 36, scope: !104)
!459 = !DILocation(line: 264, column: 5, scope: !104)
!460 = !DILocation(line: 642, column: 45, scope: !107)
!461 = !DILocation(line: 642, column: 57, scope: !107)
!462 = !DILocation(line: 642, column: 72, scope: !107)
!463 = !DILocation(line: 643, column: 27, scope: !107)
!464 = !DILocation(line: 643, column: 37, scope: !107)
!465 = !DILocation(line: 644, column: 23, scope: !107)
!466 = !DILocation(line: 644, column: 13, scope: !107)
!467 = !{!468, !468, i64 0}
!468 = !{!"float", !469, i64 0}
!469 = !{!"omnipotent char", !470, i64 0}
!470 = !{!"Simple C/C++ TBAA"}
!471 = !DILocation(line: 644, column: 51, scope: !107)
!472 = !DILocation(line: 644, column: 41, scope: !107)
!473 = !DILocation(line: 645, column: 1, scope: !107)
!474 = !DILocation(line: 647, column: 45, scope: !121)
!475 = !DILocation(line: 647, column: 58, scope: !121)
!476 = !DILocation(line: 647, column: 74, scope: !121)
!477 = !DILocation(line: 648, column: 28, scope: !121)
!478 = !DILocation(line: 648, column: 38, scope: !121)
!479 = !DIExpression(DW_OP_bit_piece, 0, 64)
!480 = !DIExpression(DW_OP_bit_piece, 64, 64)
!481 = !DILocation(line: 649, column: 13, scope: !121)
!482 = !{!483, !483, i64 0}
!483 = !{!"double", !469, i64 0}
!484 = !DILocation(line: 649, column: 41, scope: !121)
!485 = !DILocation(line: 650, column: 1, scope: !121)
!486 = !DILocation(line: 652, column: 47, scope: !135)
!487 = !DILocation(line: 652, column: 59, scope: !135)
!488 = !DILocation(line: 652, column: 74, scope: !135)
!489 = !DILocation(line: 653, column: 27, scope: !135)
!490 = !DILocation(line: 653, column: 37, scope: !135)
!491 = !DILocation(line: 654, column: 23, scope: !135)
!492 = !DILocation(line: 654, column: 13, scope: !135)
!493 = !DILocation(line: 654, column: 51, scope: !135)
!494 = !DILocation(line: 654, column: 41, scope: !135)
!495 = !DILocation(line: 655, column: 1, scope: !135)
!496 = !DILocation(line: 657, column: 47, scope: !141)
!497 = !DILocation(line: 657, column: 60, scope: !141)
!498 = !DILocation(line: 657, column: 76, scope: !141)
!499 = !DILocation(line: 658, column: 28, scope: !141)
!500 = !DILocation(line: 658, column: 38, scope: !141)
!501 = !DILocation(line: 659, column: 13, scope: !141)
!502 = !DILocation(line: 659, column: 41, scope: !141)
!503 = !DILocation(line: 660, column: 1, scope: !141)
!504 = !DILocation(line: 61, column: 24, scope: !147)
!505 = !DILocation(line: 61, column: 33, scope: !147)
!506 = !DILocation(line: 61, column: 43, scope: !147)
!507 = !DILocation(line: 61, column: 51, scope: !147)
!508 = !DILocation(line: 64, column: 3, scope: !147)
!509 = !DILocation(line: 64, column: 8, scope: !147)
!510 = !DILocation(line: 68, column: 3, scope: !147)
!511 = !DILocation(line: 69, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 69, column: 9)
!513 = distinct !DILexicalBlock(scope: !147, file: !1, line: 68, column: 6)
!514 = !DILocation(line: 69, column: 28, scope: !512)
!515 = !DILocation(line: 69, column: 9, scope: !513)
!516 = !DILocation(line: 70, column: 7, scope: !512)
!517 = !DILocation(line: 71, column: 12, scope: !147)
!518 = !DILocation(line: 71, column: 31, scope: !147)
!519 = !DILocation(line: 71, column: 3, scope: !513)
!520 = !DILocation(line: 65, column: 34, scope: !147)
!521 = !DILocation(line: 65, column: 42, scope: !147)
!522 = !DILocation(line: 74, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 74, column: 9)
!524 = distinct !DILexicalBlock(scope: !147, file: !1, line: 73, column: 6)
!525 = !DILocation(line: 74, column: 48, scope: !523)
!526 = !DILocation(line: 74, column: 9, scope: !524)
!527 = !DILocation(line: 65, column: 30, scope: !147)
!528 = !DILocation(line: 66, column: 14, scope: !147)
!529 = !DILocation(line: 76, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !524, file: !1, line: 76, column: 9)
!531 = !DILocation(line: 76, column: 43, scope: !530)
!532 = !DILocation(line: 76, column: 9, scope: !524)
!533 = !DILocation(line: 77, column: 7, scope: !530)
!534 = !DILocation(line: 78, column: 19, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !1, line: 78, column: 5)
!536 = distinct !DILexicalBlock(scope: !524, file: !1, line: 78, column: 5)
!537 = !{!538, !538, i64 0}
!538 = !{!"int", !469, i64 0}
!539 = !DILocation(line: 78, column: 18, scope: !535)
!540 = !DILocation(line: 78, column: 5, scope: !536)
!541 = !DILocation(line: 66, column: 8, scope: !147)
!542 = !DILocation(line: 66, column: 18, scope: !147)
!543 = !DILocation(line: 66, column: 21, scope: !147)
!544 = !DILocation(line: 66, column: 27, scope: !147)
!545 = !DILocation(line: 79, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 79, column: 11)
!547 = distinct !DILexicalBlock(scope: !535, file: !1, line: 78, column: 31)
!548 = !DILocation(line: 79, column: 68, scope: !546)
!549 = !DILocation(line: 79, column: 11, scope: !547)
!550 = !DILocation(line: 80, column: 2, scope: !546)
!551 = !DILocation(line: 84, column: 12, scope: !547)
!552 = !DILocation(line: 85, column: 12, scope: !553)
!553 = distinct !DILexicalBlock(scope: !547, file: !1, line: 85, column: 11)
!554 = !DILocation(line: 85, column: 18, scope: !553)
!555 = !DILocation(line: 85, column: 33, scope: !553)
!556 = !DILocation(line: 85, column: 23, scope: !553)
!557 = !DILocation(line: 86, column: 2, scope: !553)
!558 = !DILocation(line: 87, column: 12, scope: !547)
!559 = !DILocation(line: 87, column: 10, scope: !547)
!560 = !DILocation(line: 65, column: 8, scope: !147)
!561 = !DILocation(line: 88, column: 18, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 88, column: 7)
!563 = distinct !DILexicalBlock(scope: !547, file: !1, line: 88, column: 7)
!564 = !DILocation(line: 88, column: 7, scope: !563)
!565 = !DILocation(line: 65, column: 13, scope: !147)
!566 = !DILocation(line: 89, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 89, column: 6)
!568 = distinct !DILexicalBlock(scope: !562, file: !1, line: 88, column: 29)
!569 = !DILocation(line: 89, column: 28, scope: !567)
!570 = !DILocation(line: 89, column: 6, scope: !568)
!571 = !DILocation(line: 90, column: 4, scope: !567)
!572 = !DILocation(line: 91, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !1, line: 91, column: 6)
!574 = !DILocation(line: 91, column: 9, scope: !573)
!575 = !DILocation(line: 91, column: 20, scope: !573)
!576 = !DILocation(line: 91, column: 14, scope: !573)
!577 = !DILocation(line: 92, column: 4, scope: !573)
!578 = !DILocation(line: 93, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !568, file: !1, line: 93, column: 6)
!580 = !DILocation(line: 93, column: 6, scope: !579)
!581 = !DILocation(line: 93, column: 10, scope: !579)
!582 = !{!583, !583, i64 0}
!583 = !{!"any pointer", !469, i64 0}
!584 = !DILocation(line: 93, column: 20, scope: !579)
!585 = !DILocation(line: 93, column: 6, scope: !568)
!586 = !DILocation(line: 95, column: 23, scope: !579)
!587 = !DILocation(line: 94, column: 4, scope: !579)
!588 = !DILocation(line: 96, column: 13, scope: !568)
!589 = !DILocation(line: 96, column: 6, scope: !568)
!590 = !DILocation(line: 96, column: 2, scope: !568)
!591 = !DILocation(line: 96, column: 18, scope: !568)
!592 = !DILocation(line: 96, column: 16, scope: !568)
!593 = !DILocation(line: 88, column: 25, scope: !562)
!594 = !DILocation(line: 88, column: 19, scope: !562)
!595 = !DILocation(line: 78, column: 27, scope: !535)
!596 = !DILocation(line: 65, column: 10, scope: !147)
!597 = !DILocation(line: 99, column: 44, scope: !524)
!598 = !DILocation(line: 99, column: 5, scope: !524)
!599 = !DILocation(line: 101, column: 1, scope: !147)
!600 = !DILocation(line: 103, column: 24, scope: !242)
!601 = !DILocation(line: 103, column: 40, scope: !242)
!602 = !DILocation(line: 103, column: 47, scope: !242)
!603 = !DILocation(line: 107, column: 3, scope: !242)
!604 = !DILocation(line: 105, column: 8, scope: !242)
!605 = !DILocation(line: 109, column: 3, scope: !606)
!606 = distinct !DILexicalBlock(scope: !242, file: !1, line: 109, column: 3)
!607 = !DILocation(line: 45, column: 32, scope: !352, inlinedAt: !608)
!608 = distinct !DILocation(line: 110, column: 5, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !1, line: 109, column: 3)
!610 = !DILocation(line: 48, column: 51, scope: !352, inlinedAt: !608)
!611 = !{!612, !538, i64 0}
!612 = !{!"", !538, i64 0, !538, i64 4, !538, i64 8, !538, i64 12, !538, i64 16, !538, i64 20, !538, i64 24, !583, i64 32, !583, i64 40, !583, i64 48, !583, i64 56, !583, i64 64, !583, i64 72, !538, i64 80, !583, i64 88}
!613 = !DILocation(line: 48, column: 67, scope: !352, inlinedAt: !608)
!614 = !{!612, !538, i64 24}
!615 = !DILocation(line: 48, column: 3, scope: !352, inlinedAt: !608)
!616 = !DILocation(line: 50, column: 44, scope: !352, inlinedAt: !608)
!617 = !{!612, !538, i64 4}
!618 = !DILocation(line: 50, column: 56, scope: !352, inlinedAt: !608)
!619 = !{!612, !538, i64 12}
!620 = !DILocation(line: 50, column: 3, scope: !352, inlinedAt: !608)
!621 = !DILocation(line: 47, column: 7, scope: !352, inlinedAt: !608)
!622 = !DILocation(line: 51, column: 22, scope: !623, inlinedAt: !608)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 51, column: 3)
!624 = distinct !DILexicalBlock(scope: !352, file: !1, line: 51, column: 3)
!625 = !DILocation(line: 51, column: 13, scope: !623, inlinedAt: !608)
!626 = !DILocation(line: 51, column: 3, scope: !624, inlinedAt: !608)
!627 = !DILocation(line: 52, column: 18, scope: !628, inlinedAt: !608)
!628 = distinct !DILexicalBlock(scope: !623, file: !1, line: 51, column: 32)
!629 = !DILocation(line: 54, column: 14, scope: !628, inlinedAt: !608)
!630 = !DILocation(line: 54, column: 30, scope: !628, inlinedAt: !608)
!631 = !DILocation(line: 54, column: 47, scope: !628, inlinedAt: !608)
!632 = !DILocation(line: 56, column: 39, scope: !633, inlinedAt: !608)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 55, column: 5)
!634 = distinct !DILexicalBlock(scope: !628, file: !1, line: 55, column: 5)
!635 = !{!612, !583, i64 56}
!636 = !DILocation(line: 110, column: 5, scope: !609)
!637 = !DILocation(line: 52, column: 10, scope: !628, inlinedAt: !608)
!638 = !DILocation(line: 52, column: 32, scope: !628, inlinedAt: !608)
!639 = !DILocation(line: 52, column: 30, scope: !628, inlinedAt: !608)
!640 = !DILocation(line: 47, column: 27, scope: !352, inlinedAt: !608)
!641 = !{!612, !583, i64 32}
!642 = !DILocation(line: 54, column: 6, scope: !628, inlinedAt: !608)
!643 = !{!612, !583, i64 48}
!644 = !DILocation(line: 54, column: 22, scope: !628, inlinedAt: !608)
!645 = !{!612, !583, i64 40}
!646 = !DILocation(line: 54, column: 39, scope: !628, inlinedAt: !608)
!647 = !DILocation(line: 53, column: 5, scope: !628, inlinedAt: !608)
!648 = !DILocation(line: 55, column: 19, scope: !634, inlinedAt: !608)
!649 = !DILocation(line: 55, column: 11, scope: !634, inlinedAt: !608)
!650 = !DILocation(line: 47, column: 9, scope: !352, inlinedAt: !608)
!651 = !DILocation(line: 55, column: 33, scope: !633, inlinedAt: !608)
!652 = !DILocation(line: 55, column: 32, scope: !633, inlinedAt: !608)
!653 = !DILocation(line: 55, column: 5, scope: !634, inlinedAt: !608)
!654 = !{!612, !583, i64 64}
!655 = !DILocation(line: 56, column: 31, scope: !633, inlinedAt: !608)
!656 = !DILocation(line: 56, column: 7, scope: !633, inlinedAt: !608)
!657 = !DILocation(line: 55, column: 41, scope: !633, inlinedAt: !608)
!658 = !DILocation(line: 58, column: 3, scope: !352, inlinedAt: !608)
!659 = !DILocation(line: 111, column: 1, scope: !242)
