; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pargs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_pargs = type { i8*, i32, i32, %union.anon.2, i8* }
%union.anon.2 = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"HIDDEN\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"[hidden]\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"bKeep\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pargs.c\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"-no%s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [35 x i8] c"Setting option %s more than once!\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"Invalid argument %s for option %s\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"%s: vector must have 1 or 3 real parameters\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Invalid type %d in pargs\00", align 1
@.str9 = private unnamed_addr constant [30 x i8] c"No integer option %s in pargs\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"No boolean option %s in pargs\00", align 1
@.str11 = private unnamed_addr constant [27 x i8] c"No real option %s in pargs\00", align 1
@.str12 = private unnamed_addr constant [29 x i8] c"No string option %s in pargs\00", align 1
@.str13 = private unnamed_addr constant [27 x i8] c"No such option %s in pargs\00", align 1
@pa_val.buf = internal global [256 x i8] zeroinitializer, align 16
@.str14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"%6g\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str19 = private unnamed_addr constant [25 x i8] c"Argument too long: \22%d\22\0A\00", align 1
@.str20 = private unnamed_addr constant [9 x i8] c"%g %g %g\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"-hidden\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"%12s %6s %6s  %s\0A\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str27 = private unnamed_addr constant [56 x i8] c"------------------------------------------------------\0A\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"-[no]%s\00", align 1
@argtp = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0)], align 16
@.str29 = private unnamed_addr constant [6 x i8] c"%12s\0A\00", align 1
@.str30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str31 = private unnamed_addr constant [18 x i8] c"%-14s%5s %6s  %s\0A\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"wdesc\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c" \22n/%s/(\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c")/\22\00", align 1
@.str37 = private unnamed_addr constant [31 x i8] c"%s) COMPREPLY=( $(compgen -W '\00", align 1
@.str38 = private unnamed_addr constant [15 x i8] c" ' -- $c ));;\0A\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"- 'c[-1,%s]' -s \22\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"\22 \00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"enum\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !23, metadata !346), !dbg !347
  %1 = icmp sgt i32 %__signo, 32, !dbg !348
  br i1 %1, label %5, label %2, !dbg !349

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !350
  %4 = shl i32 1, %3, !dbg !351
  br label %5, !dbg !349

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !349
  ret i32 %6, !dbg !352
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !30, metadata !346), !dbg !353
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !354
  br i1 %1, label %2, label %5, !dbg !355

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !356
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !357
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !355
  ret i32 %7, !dbg !358
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !36, metadata !346), !dbg !359
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !360
  br i1 %1, label %2, label %5, !dbg !361

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !362
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !363
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !361
  ret i32 %7, !dbg !364
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !42, metadata !346), !dbg !365
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !366
  br i1 %1, label %2, label %5, !dbg !367

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !368
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !369
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !367
  ret i32 %7, !dbg !370
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !45, metadata !346), !dbg !371
  %1 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !372
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !373
  %3 = zext i1 %2 to i32, !dbg !373
  ret i32 %3, !dbg !374
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !48, metadata !346), !dbg !375
  %1 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !376
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !377
  %3 = zext i1 %2 to i32, !dbg !377
  ret i32 %3, !dbg !378
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !51, metadata !346), !dbg !379
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !380
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !381
  %3 = zext i1 %2 to i32, !dbg !381
  ret i32 %3, !dbg !382
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !54, metadata !346), !dbg !383
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !384
  %2 = zext i1 %1 to i32, !dbg !384
  ret i32 %2, !dbg !385
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !57, metadata !346), !dbg !386
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !387
  %2 = zext i1 %1 to i32, !dbg !387
  ret i32 %2, !dbg !388
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !60, metadata !346), !dbg !389
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !390
  %2 = zext i1 %1 to i32, !dbg !390
  ret i32 %2, !dbg !391
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !63, metadata !346), !dbg !392
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !64, metadata !346), !dbg !393
  %1 = bitcast float %__x to i32, !dbg !394
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !64, metadata !346), !dbg !393
  %2 = lshr i32 %1, 31, !dbg !395
  ret i32 %2, !dbg !396
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !72, metadata !346), !dbg !397
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !73, metadata !346), !dbg !398
  %1 = bitcast double %__x to i64, !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !73, metadata !346), !dbg !398
  %2 = lshr i64 %1, 63, !dbg !400
  %3 = trunc i64 %2 to i32, !dbg !401
  ret i32 %3, !dbg !402
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !81, metadata !346), !dbg !403
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !82, metadata !346), !dbg !404
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !82, metadata !346), !dbg !404
  %1 = bitcast x86_fp80 %__x to i80, !dbg !405
  %2 = lshr i80 %1, 79, !dbg !405
  %3 = trunc i80 %2 to i32, !dbg !406
  ret i32 %3, !dbg !407
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !94, metadata !346), !dbg !408
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !30, metadata !346) #8, !dbg !409
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !411
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !412
  %or.cond = and i1 %1, %3, !dbg !413
  br i1 %or.cond, label %4, label %.critedge, !dbg !413

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !414
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !415
  ret i32 %7, !dbg !416
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !97, metadata !346), !dbg !417
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !36, metadata !346) #8, !dbg !418
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !420
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !421
  %or.cond = and i1 %1, %3, !dbg !422
  br i1 %or.cond, label %4, label %.critedge, !dbg !422

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !423
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !424
  ret i32 %7, !dbg !425
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !100, metadata !346), !dbg !426
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !42, metadata !346) #8, !dbg !427
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !429
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !430
  %or.cond = and i1 %1, %3, !dbg !431
  br i1 %or.cond, label %4, label %.critedge, !dbg !431

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !432
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !433
  ret i32 %7, !dbg !434
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !106, metadata !346), !dbg !435
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !107, metadata !346), !dbg !436
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !108, metadata !346), !dbg !437
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !109, metadata !346), !dbg !438
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10, !dbg !439
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !109, metadata !346), !dbg !438
  %2 = extractelement <2 x float> %1, i32 0, !dbg !440
  store float %2, float* %__sinp, align 4, !dbg !441, !tbaa !442
  %3 = extractelement <2 x float> %1, i32 1, !dbg !446
  store float %3, float* %__cosp, align 4, !dbg !447, !tbaa !442
  ret void, !dbg !448
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !120, metadata !346), !dbg !449
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !121, metadata !346), !dbg !450
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !122, metadata !346), !dbg !451
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !123, metadata !346), !dbg !452
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10, !dbg !453
  %2 = extractvalue { double, double } %1, 0, !dbg !453
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !123, metadata !454), !dbg !452
  %3 = extractvalue { double, double } %1, 1, !dbg !453
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !123, metadata !455), !dbg !452
  store double %2, double* %__sinp, align 8, !dbg !456, !tbaa !457
  store double %3, double* %__cosp, align 8, !dbg !459, !tbaa !457
  ret void, !dbg !460
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !131, metadata !346), !dbg !461
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !132, metadata !346), !dbg !462
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !133, metadata !346), !dbg !463
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !134, metadata !346), !dbg !464
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10, !dbg !465
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !134, metadata !346), !dbg !464
  %2 = extractelement <2 x float> %1, i32 0, !dbg !466
  store float %2, float* %__sinp, align 4, !dbg !467, !tbaa !442
  %3 = extractelement <2 x float> %1, i32 1, !dbg !468
  store float %3, float* %__cosp, align 4, !dbg !469, !tbaa !442
  ret void, !dbg !470
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !137, metadata !346), !dbg !471
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !138, metadata !346), !dbg !472
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !139, metadata !346), !dbg !473
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !140, metadata !346), !dbg !474
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10, !dbg !475
  %2 = extractvalue { double, double } %1, 0, !dbg !475
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !140, metadata !454), !dbg !474
  %3 = extractvalue { double, double } %1, 1, !dbg !475
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !140, metadata !455), !dbg !474
  store double %2, double* %__sinp, align 8, !dbg !476, !tbaa !457
  store double %3, double* %__cosp, align 8, !dbg !477, !tbaa !457
  ret void, !dbg !478
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @is_hidden(%struct.t_pargs* nocapture readonly %pa) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !174, metadata !346), !dbg !479
  %1 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 4, !dbg !480
  %2 = load i8** %1, align 8, !dbg !480, !tbaa !481
  %3 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0)) #10, !dbg !485
  %4 = icmp eq i8* %3, null, !dbg !486
  br i1 %4, label %5, label %8, !dbg !487

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @strstr(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #10, !dbg !488
  %7 = icmp ne i8* %6, null, !dbg !489
  br label %8, !dbg !487

; <label>:8                                       ; preds = %0, %5
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !487
  ret i32 %10, !dbg !490
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @get_pargs(i32* nocapture %argc, i8** %argv, i32 %nparg, %struct.t_pargs* nocapture %pa, i32 %bKeepArgs) #6 {
  %i = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %argc, i64 0, metadata !179, metadata !346), !dbg !491
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !180, metadata !346), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !181, metadata !346), !dbg !493
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !182, metadata !346), !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %bKeepArgs, i64 0, metadata !183, metadata !346), !dbg !495
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !189, metadata !346), !dbg !496
  %1 = load i32* %argc, align 4, !dbg !497, !tbaa !498
  %2 = add nsw i32 %1, 1, !dbg !497
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 58, i32 %2, i32 4) #10, !dbg !497
  %4 = bitcast i8* %3 to i32*, !dbg !497
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !188, metadata !346), !dbg !499
  store i32 1, i32* %4, align 4, !dbg !500, !tbaa !498
  %5 = load i32* %argc, align 4, !dbg !501, !tbaa !498
  %6 = sext i32 %5 to i64, !dbg !502
  %7 = getelementptr inbounds i32* %4, i64 %6, !dbg !502
  store i32 1, i32* %7, align 4, !dbg !503, !tbaa !498
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !184, metadata !346), !dbg !504
  store i32 1, i32* %i, align 4, !dbg !505, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %8 = load i32* %argc, align 4, !dbg !508, !tbaa !498
  %9 = icmp sgt i32 %8, 1, !dbg !509
  br i1 %9, label %.lr.ph19, label %._crit_edge20, !dbg !510

.lr.ph19:                                         ; preds = %0
  %10 = icmp sgt i32 %nparg, 0, !dbg !511
  %11 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !515
  %12 = add i32 %nparg, -1, !dbg !510
  br label %13, !dbg !510

; <label>:13                                      ; preds = %.lr.ph19, %._crit_edge16
  %storemerge17 = phi i32 [ 1, %.lr.ph19 ], [ %190, %._crit_edge16 ]
  %14 = sext i32 %storemerge17 to i64, !dbg !519
  %15 = getelementptr inbounds i32* %4, i64 %14, !dbg !519
  store i32 1, i32* %15, align 4, !dbg !520, !tbaa !498
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !346), !dbg !521
  br i1 %10, label %.lr.ph15, label %._crit_edge16, !dbg !522

.lr.ph15:                                         ; preds = %13, %188
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %188 ], [ 0, %13 ]
  %16 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 2, !dbg !523
  %17 = load i32* %16, align 4, !dbg !523, !tbaa !524
  %18 = icmp eq i32 %17, 4, !dbg !525
  %19 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 0, !dbg !515
  %20 = load i8** %19, align 8, !dbg !515, !tbaa !526
  br i1 %18, label %21, label %50, !dbg !527

; <label>:21                                      ; preds = %.lr.ph15
  %22 = getelementptr inbounds i8* %20, i64 1, !dbg !515
  %23 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %11, i32 0, i64 32, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %22) #10, !dbg !515
  %24 = load i8** %19, align 8, !dbg !528, !tbaa !526
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %25 = load i32* %i, align 4, !dbg !530, !tbaa !498
  %26 = sext i32 %25 to i64, !dbg !531
  %27 = getelementptr inbounds i8** %argv, i64 %26, !dbg !531
  %28 = load i8** %27, align 8, !dbg !531, !tbaa !532
  %29 = call i32 @strcmp(i8* %24, i8* %28) #10, !dbg !533
  %30 = icmp eq i32 %29, 0, !dbg !534
  br i1 %30, label %31, label %39, !dbg !535

; <label>:31                                      ; preds = %21
  %32 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !536
  %33 = bitcast %union.anon.2* %32 to i32**, !dbg !538
  %34 = load i32** %33, align 8, !dbg !538, !tbaa !532
  store i32 1, i32* %34, align 4, !dbg !539, !tbaa !498
  %35 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1, !dbg !540
  store i32 1, i32* %35, align 4, !dbg !541, !tbaa !542
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %36 = load i32* %i, align 4, !dbg !543, !tbaa !498
  %37 = sext i32 %36 to i64, !dbg !544
  %38 = getelementptr inbounds i32* %4, i64 %37, !dbg !544
  store i32 0, i32* %38, align 4, !dbg !545, !tbaa !498
  br label %188, !dbg !546

; <label>:39                                      ; preds = %21
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %40 = call i32 @strcmp(i8* %11, i8* %28) #10, !dbg !547
  %41 = icmp eq i32 %40, 0, !dbg !549
  br i1 %41, label %42, label %188, !dbg !550

; <label>:42                                      ; preds = %39
  %43 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !551
  %44 = bitcast %union.anon.2* %43 to i32**, !dbg !553
  %45 = load i32** %44, align 8, !dbg !553, !tbaa !532
  store i32 0, i32* %45, align 4, !dbg !554, !tbaa !498
  %46 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1, !dbg !555
  store i32 1, i32* %46, align 4, !dbg !556, !tbaa !542
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %47 = load i32* %i, align 4, !dbg !557, !tbaa !498
  %48 = sext i32 %47 to i64, !dbg !558
  %49 = getelementptr inbounds i32* %4, i64 %48, !dbg !558
  store i32 0, i32* %49, align 4, !dbg !559, !tbaa !498
  br label %188, !dbg !560

; <label>:50                                      ; preds = %.lr.ph15
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %51 = load i32* %i, align 4, !dbg !561, !tbaa !498
  %52 = sext i32 %51 to i64, !dbg !563
  %53 = getelementptr inbounds i8** %argv, i64 %52, !dbg !563
  %54 = load i8** %53, align 8, !dbg !563, !tbaa !532
  %55 = call i32 @strcmp(i8* %20, i8* %54) #10, !dbg !564
  %56 = icmp eq i32 %55, 0, !dbg !565
  br i1 %56, label %57, label %188, !dbg !566

; <label>:57                                      ; preds = %50
  %58 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 1, !dbg !567
  %59 = load i32* %58, align 4, !dbg !567, !tbaa !542
  %60 = icmp eq i32 %59, 0, !dbg !570
  br i1 %60, label %64, label %61, !dbg !571

; <label>:61                                      ; preds = %57
  %62 = load %struct.__sFILE** @__stderrp, align 8, !dbg !572, !tbaa !532
  %63 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([35 x i8]* @.str5, i64 0, i64 0), i8* %20) #10, !dbg !573
  %.pre = load i32* %i, align 4, !dbg !574, !tbaa !498
  br label %64, !dbg !573

; <label>:64                                      ; preds = %57, %61
  %65 = phi i32 [ %51, %57 ], [ %.pre, %61 ]
  store i32 1, i32* %58, align 4, !dbg !575, !tbaa !542
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %66 = sext i32 %65 to i64, !dbg !576
  %67 = getelementptr inbounds i32* %4, i64 %66, !dbg !576
  store i32 0, i32* %67, align 4, !dbg !577, !tbaa !498
  %68 = load i32* %16, align 4, !dbg !578, !tbaa !524
  switch i32 %68, label %183 [
    i32 0, label %69
    i32 2, label %75
    i32 1, label %75
    i32 3, label %82
    i32 6, label %88
    i32 5, label %125
  ], !dbg !579

; <label>:69                                      ; preds = %64
  %70 = load i32* %argc, align 4, !dbg !580, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %71 = call i32 @iscan(i32 %70, i8** %argv, i32* %i) #10, !dbg !582
  %72 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !583
  %73 = bitcast %union.anon.2* %72 to i32**, !dbg !584
  %74 = load i32** %73, align 8, !dbg !584, !tbaa !532
  store i32 %71, i32* %74, align 4, !dbg !585, !tbaa !498
  br label %184, !dbg !586

; <label>:75                                      ; preds = %64, %64
  %76 = load i32* %argc, align 4, !dbg !587, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %77 = call double @dscan(i32 %76, i8** %argv, i32* %i) #10, !dbg !588
  %78 = fptrunc double %77 to float, !dbg !588
  %79 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !589
  %80 = bitcast %union.anon.2* %79 to float**, !dbg !590
  %81 = load float** %80, align 8, !dbg !590, !tbaa !532
  store float %78, float* %81, align 4, !dbg !591, !tbaa !442
  br label %184, !dbg !592

; <label>:82                                      ; preds = %64
  %83 = load i32* %argc, align 4, !dbg !593, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %84 = call i8* @sscan(i32 %83, i8** %argv, i32* %i) #10, !dbg !594
  %85 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !595
  %86 = bitcast %union.anon.2* %85 to i8***, !dbg !596
  %87 = load i8*** %86, align 8, !dbg !596, !tbaa !532
  store i8* %84, i8** %87, align 8, !dbg !597, !tbaa !532
  br label %184, !dbg !598

; <label>:88                                      ; preds = %64
  call void @llvm.dbg.value(metadata i32 -12345, i64 0, metadata !187, metadata !346), !dbg !599
  %89 = load i32* %argc, align 4, !dbg !600, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %90 = call i8* @sscan(i32 %89, i8** %argv, i32* %i) #10, !dbg !601
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !193, metadata !346), !dbg !602
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !186, metadata !346), !dbg !603
  %91 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !604
  %92 = bitcast %union.anon.2* %91 to i8***, !dbg !607
  %93 = load i8*** %92, align 8, !dbg !607, !tbaa !532
  %94 = getelementptr inbounds i8** %93, i64 1, !dbg !608
  %95 = load i8** %94, align 8, !dbg !608, !tbaa !532
  %96 = icmp eq i8* %95, null, !dbg !609
  br i1 %96, label %._crit_edge10.thread, label %.lr.ph9, !dbg !610

.lr.ph9:                                          ; preds = %88
  %97 = call i64 @strlen(i8* %90) #10, !dbg !611
  br label %98, !dbg !610

; <label>:98                                      ; preds = %.lr.ph9, %113
  %indvars.iv = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next, %113 ]
  %99 = phi i8* [ %95, %.lr.ph9 ], [ %115, %113 ]
  %match.06 = phi i32 [ -12345, %.lr.ph9 ], [ %match.1, %113 ]
  %100 = call i32 @strncasecmp(i8* %90, i8* %99, i64 %97) #10, !dbg !613
  %101 = icmp eq i32 %100, 0, !dbg !614
  br i1 %101, label %102, label %113, !dbg !615

; <label>:102                                     ; preds = %98
  %103 = icmp eq i32 %match.06, -12345, !dbg !616
  br i1 %103, label %111, label %104, !dbg !618

; <label>:104                                     ; preds = %102
  %105 = call i64 @strlen(i8* %99) #10, !dbg !619
  %106 = sext i32 %match.06 to i64, !dbg !620
  %107 = getelementptr inbounds i8** %93, i64 %106, !dbg !620
  %108 = load i8** %107, align 8, !dbg !620, !tbaa !532
  %109 = call i64 @strlen(i8* %108) #10, !dbg !621
  %110 = icmp ult i64 %105, %109, !dbg !622
  br i1 %110, label %111, label %113, !dbg !623

; <label>:111                                     ; preds = %104, %102
  %112 = trunc i64 %indvars.iv to i32, !dbg !624
  br label %113, !dbg !624

; <label>:113                                     ; preds = %98, %111, %104
  %match.1 = phi i32 [ %112, %111 ], [ %match.06, %104 ], [ %match.06, %98 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !610
  %114 = getelementptr inbounds i8** %93, i64 %indvars.iv.next, !dbg !608
  %115 = load i8** %114, align 8, !dbg !608, !tbaa !532
  %116 = icmp eq i8* %115, null, !dbg !609
  br i1 %116, label %._crit_edge10, label %98, !dbg !610

._crit_edge10:                                    ; preds = %113
  %117 = icmp eq i32 %match.1, -12345, !dbg !625
  br i1 %117, label %._crit_edge10.thread, label %118, !dbg !627

; <label>:118                                     ; preds = %._crit_edge10
  %119 = sext i32 %match.1 to i64, !dbg !628
  %120 = getelementptr inbounds i8** %93, i64 %119, !dbg !628
  %121 = bitcast i8** %120 to i64*, !dbg !628
  %122 = load i64* %121, align 8, !dbg !628, !tbaa !532
  %123 = bitcast i8** %93 to i64*, !dbg !629
  store i64 %122, i64* %123, align 8, !dbg !629, !tbaa !532
  br label %184, !dbg !630

._crit_edge10.thread:                             ; preds = %88, %._crit_edge10
  %124 = load i8** %19, align 8, !dbg !631, !tbaa !526
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i8* %90, i8* %124) #10, !dbg !632
  br label %184

; <label>:125                                     ; preds = %64
  %126 = load i32* %argc, align 4, !dbg !633, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %127 = call double @dscan(i32 %126, i8** %argv, i32* %i) #10, !dbg !634
  %128 = fptrunc double %127 to float, !dbg !634
  %129 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv21, i32 3, !dbg !635
  %130 = bitcast %union.anon.2* %129 to [3 x float]**, !dbg !636
  %131 = load [3 x float]** %130, align 8, !dbg !636, !tbaa !532
  %132 = getelementptr inbounds [3 x float]* %131, i64 0, i64 0, !dbg !637
  store float %128, float* %132, align 4, !dbg !638, !tbaa !442
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %133 = load i32* %i, align 4, !dbg !639, !tbaa !498
  %134 = add nsw i32 %133, 1, !dbg !641
  %135 = load i32* %argc, align 4, !dbg !642, !tbaa !498
  %136 = icmp eq i32 %134, %135, !dbg !643
  br i1 %136, label %147, label %137, !dbg !644

; <label>:137                                     ; preds = %125
  %138 = sext i32 %134 to i64, !dbg !645
  %139 = getelementptr inbounds i8** %argv, i64 %138, !dbg !645
  %140 = load i8** %139, align 8, !dbg !645, !tbaa !532
  %141 = load i8* %140, align 1, !dbg !645, !tbaa !646
  %142 = icmp eq i8 %141, 45, !dbg !647
  br i1 %142, label %143, label %150, !dbg !648

; <label>:143                                     ; preds = %137
  %144 = getelementptr inbounds i8* %140, i64 1, !dbg !649
  %145 = load i8* %144, align 1, !dbg !649, !tbaa !646
  %146 = sext i8 %145 to i32, !dbg !649
  %isdigittmp2 = add nsw i32 %146, -48, !dbg !650
  %isdigit3 = icmp ult i32 %isdigittmp2, 10, !dbg !650
  br i1 %isdigit3, label %150, label %147, !dbg !651

; <label>:147                                     ; preds = %143, %125
  %148 = getelementptr inbounds [3 x float]* %131, i64 0, i64 2, !dbg !652
  store float %128, float* %148, align 4, !dbg !653, !tbaa !442
  %149 = getelementptr inbounds [3 x float]* %131, i64 0, i64 1, !dbg !654
  store float %128, float* %149, align 4, !dbg !655, !tbaa !442
  br label %184, !dbg !654

; <label>:150                                     ; preds = %143, %137
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %151 = sext i32 %133 to i64, !dbg !656
  %152 = getelementptr inbounds i32* %4, i64 %151, !dbg !656
  store i32 0, i32* %152, align 4, !dbg !658, !tbaa !498
  %153 = load i32* %argc, align 4, !dbg !659, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %154 = call double @dscan(i32 %153, i8** %argv, i32* %i) #10, !dbg !660
  %155 = fptrunc double %154 to float, !dbg !660
  %156 = load [3 x float]** %130, align 8, !dbg !661, !tbaa !532
  %157 = getelementptr inbounds [3 x float]* %156, i64 0, i64 1, !dbg !662
  store float %155, float* %157, align 4, !dbg !663, !tbaa !442
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %158 = load i32* %i, align 4, !dbg !664, !tbaa !498
  %159 = add nsw i32 %158, 1, !dbg !666
  %160 = load i32* %argc, align 4, !dbg !667, !tbaa !498
  %161 = icmp eq i32 %159, %160, !dbg !668
  br i1 %161, label %172, label %162, !dbg !669

; <label>:162                                     ; preds = %150
  %163 = sext i32 %159 to i64, !dbg !670
  %164 = getelementptr inbounds i8** %argv, i64 %163, !dbg !670
  %165 = load i8** %164, align 8, !dbg !670, !tbaa !532
  %166 = load i8* %165, align 1, !dbg !670, !tbaa !646
  %167 = icmp eq i8 %166, 45, !dbg !671
  br i1 %167, label %168, label %174, !dbg !672

; <label>:168                                     ; preds = %162
  %169 = getelementptr inbounds i8* %165, i64 1, !dbg !673
  %170 = load i8* %169, align 1, !dbg !673, !tbaa !646
  %171 = sext i8 %170 to i32, !dbg !673
  %isdigittmp = add nsw i32 %171, -48, !dbg !674
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !674
  br i1 %isdigit, label %174, label %172, !dbg !675

; <label>:172                                     ; preds = %168, %150
  %173 = load i8** %19, align 8, !dbg !676, !tbaa !526
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i8* %173) #10, !dbg !677
  %.pre23 = load i32* %i, align 4, !dbg !678, !tbaa !498
  br label %174, !dbg !677

; <label>:174                                     ; preds = %172, %168, %162
  %175 = phi i32 [ %.pre23, %172 ], [ %158, %168 ], [ %158, %162 ]
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %176 = sext i32 %175 to i64, !dbg !679
  %177 = getelementptr inbounds i32* %4, i64 %176, !dbg !679
  store i32 0, i32* %177, align 4, !dbg !680, !tbaa !498
  %178 = load i32* %argc, align 4, !dbg !681, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %179 = call double @dscan(i32 %178, i8** %argv, i32* %i) #10, !dbg !682
  %180 = fptrunc double %179 to float, !dbg !682
  %181 = load [3 x float]** %130, align 8, !dbg !683, !tbaa !532
  %182 = getelementptr inbounds [3 x float]* %181, i64 0, i64 2, !dbg !684
  store float %180, float* %182, align 4, !dbg !685, !tbaa !442
  br label %184

; <label>:183                                     ; preds = %64
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %68) #10, !dbg !686
  br label %184, !dbg !687

; <label>:184                                     ; preds = %147, %174, %118, %._crit_edge10.thread, %183, %82, %75, %69
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %185 = load i32* %i, align 4, !dbg !688, !tbaa !498
  %186 = sext i32 %185 to i64, !dbg !689
  %187 = getelementptr inbounds i32* %4, i64 %186, !dbg !689
  store i32 0, i32* %187, align 4, !dbg !690, !tbaa !498
  br label %188, !dbg !691

; <label>:188                                     ; preds = %39, %42, %31, %184, %50
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !522
  %lftr.wideiv = trunc i64 %indvars.iv21 to i32, !dbg !522
  %exitcond = icmp eq i32 %lftr.wideiv, %12, !dbg !522
  br i1 %exitcond, label %._crit_edge16, label %.lr.ph15, !dbg !522

._crit_edge16:                                    ; preds = %188, %13
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %189 = load i32* %i, align 4, !dbg !505, !tbaa !498
  %190 = add nsw i32 %189, 1, !dbg !505
  call void @llvm.dbg.value(metadata i32 %190, i64 0, metadata !184, metadata !346), !dbg !504
  store i32 %190, i32* %i, align 4, !dbg !505, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %191 = load i32* %argc, align 4, !dbg !508, !tbaa !498
  %192 = icmp slt i32 %190, %191, !dbg !509
  br i1 %192, label %13, label %._crit_edge20, !dbg !510

._crit_edge20:                                    ; preds = %._crit_edge16, %0
  %193 = phi i32 [ %8, %0 ], [ %191, %._crit_edge16 ]
  %194 = icmp eq i32 %bKeepArgs, 0, !dbg !692
  br i1 %194, label %.preheader, label %213, !dbg !694

.preheader:                                       ; preds = %._crit_edge20
  store i32 0, i32* %i, align 4, !dbg !695, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %195 = icmp slt i32 %193, 0, !dbg !699
  br i1 %195, label %._crit_edge, label %.lr.ph, !dbg !700

.lr.ph:                                           ; preds = %.preheader, %209
  %j.15 = phi i32 [ %j.2, %209 ], [ 0, %.preheader ]
  %196 = phi i32 [ %210, %209 ], [ 0, %.preheader ]
  %197 = sext i32 %196 to i64, !dbg !701
  %198 = getelementptr inbounds i32* %4, i64 %197, !dbg !701
  %199 = load i32* %198, align 4, !dbg !701, !tbaa !498
  %200 = icmp eq i32 %199, 0, !dbg !701
  br i1 %200, label %209, label %201, !dbg !704

; <label>:201                                     ; preds = %.lr.ph
  %202 = getelementptr inbounds i8** %argv, i64 %197, !dbg !705
  %203 = bitcast i8** %202 to i64*, !dbg !705
  %204 = load i64* %203, align 8, !dbg !705, !tbaa !532
  %205 = add nsw i32 %j.15, 1, !dbg !706
  call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !185, metadata !346), !dbg !521
  %206 = sext i32 %j.15 to i64, !dbg !707
  %207 = getelementptr inbounds i8** %argv, i64 %206, !dbg !707
  %208 = bitcast i8** %207 to i64*, !dbg !708
  store i64 %204, i64* %208, align 8, !dbg !708, !tbaa !532
  br label %209, !dbg !707

; <label>:209                                     ; preds = %.lr.ph, %201
  %j.2 = phi i32 [ %205, %201 ], [ %j.15, %.lr.ph ]
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %210 = add nsw i32 %196, 1, !dbg !695
  call void @llvm.dbg.value(metadata i32 %210, i64 0, metadata !184, metadata !346), !dbg !504
  store i32 %210, i32* %i, align 4, !dbg !695, !tbaa !498
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !184, metadata !346), !dbg !504
  %211 = icmp slt i32 %196, %193, !dbg !699
  br i1 %211, label %.lr.ph, label %._crit_edge, !dbg !700

._crit_edge:                                      ; preds = %209, %.preheader
  %j.1.lcssa = phi i32 [ 0, %.preheader ], [ %j.2, %209 ]
  %212 = add nsw i32 %j.1.lcssa, -1, !dbg !709
  store i32 %212, i32* %argc, align 4, !dbg !710, !tbaa !498
  br label %213, !dbg !711

; <label>:213                                     ; preds = %._crit_edge20, %._crit_edge
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 140, i8* %3) #10, !dbg !712
  ret void, !dbg !713
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i32 @iscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare double @dscan(i32, i8**, i32*) #3

; Function Attrs: optsize
declare i8* @sscan(i32, i8**, i32*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_int(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !198, metadata !346), !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !199, metadata !346), !dbg !715
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !200, metadata !346), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !201, metadata !346), !dbg !717
  %1 = icmp sgt i32 %nparg, 0, !dbg !718
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !721

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !721
  br label %5, !dbg !721

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !718
  br i1 %4, label %5, label %._crit_edge, !dbg !721

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !722
  %7 = load i8** %6, align 8, !dbg !722, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !724
  %9 = icmp eq i32 %8, 0, !dbg !725
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !721
  br i1 %9, label %10, label %3, !dbg !726

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !727
  %12 = bitcast %union.anon.2* %11 to i32**, !dbg !728
  %13 = load i32** %12, align 8, !dbg !728, !tbaa !532
  %14 = load i32* %13, align 4, !dbg !729, !tbaa !498
  br label %15, !dbg !730

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str9, i64 0, i64 0), i8* %option) #10, !dbg !731
  br label %15, !dbg !732

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %14, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0, !dbg !733
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_bool(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !204, metadata !346), !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !205, metadata !346), !dbg !735
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !206, metadata !346), !dbg !736
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !207, metadata !346), !dbg !737
  %1 = icmp sgt i32 %nparg, 0, !dbg !738
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !741

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !741
  br label %5, !dbg !741

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !738
  br i1 %4, label %5, label %._crit_edge, !dbg !741

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !742
  %7 = load i8** %6, align 8, !dbg !742, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !744
  %9 = icmp eq i32 %8, 0, !dbg !745
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !741
  br i1 %9, label %10, label %3, !dbg !746

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !747
  %12 = bitcast %union.anon.2* %11 to i32**, !dbg !748
  %13 = load i32** %12, align 8, !dbg !748, !tbaa !532
  %14 = load i32* %13, align 4, !dbg !749, !tbaa !498
  br label %15, !dbg !750

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), i8* %option) #10, !dbg !751
  br label %15, !dbg !752

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %14, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0, !dbg !753
}

; Function Attrs: nounwind optsize ssp uwtable
define float @opt2parg_real(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !212, metadata !346), !dbg !754
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !213, metadata !346), !dbg !755
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !214, metadata !346), !dbg !756
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !215, metadata !346), !dbg !757
  %1 = icmp sgt i32 %nparg, 0, !dbg !758
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !761

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !761
  br label %5, !dbg !761

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !758
  br i1 %4, label %5, label %._crit_edge, !dbg !761

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !762
  %7 = load i8** %6, align 8, !dbg !762, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !764
  %9 = icmp eq i32 %8, 0, !dbg !765
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !761
  br i1 %9, label %10, label %3, !dbg !766

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !767
  %12 = bitcast %union.anon.2* %11 to float**, !dbg !768
  %13 = load float** %12, align 8, !dbg !768, !tbaa !532
  %14 = load float* %13, align 4, !dbg !769, !tbaa !442
  br label %15, !dbg !770

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str11, i64 0, i64 0), i8* %option) #10, !dbg !771
  br label %15, !dbg !772

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi float [ %14, %10 ], [ 0.000000e+00, %._crit_edge ]
  ret float %.0, !dbg !773
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2parg_str(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !220, metadata !346), !dbg !774
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !221, metadata !346), !dbg !775
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !222, metadata !346), !dbg !776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !223, metadata !346), !dbg !777
  %1 = icmp sgt i32 %nparg, 0, !dbg !778
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !781

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !781
  br label %5, !dbg !781

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !778
  br i1 %4, label %5, label %._crit_edge, !dbg !781

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !782
  %7 = load i8** %6, align 8, !dbg !782, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !784
  %9 = icmp eq i32 %8, 0, !dbg !785
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !781
  br i1 %9, label %10, label %3, !dbg !786

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !787
  %12 = bitcast %union.anon.2* %11 to i8***, !dbg !788
  %13 = load i8*** %12, align 8, !dbg !788, !tbaa !532
  %14 = load i8** %13, align 8, !dbg !789, !tbaa !532
  br label %15, !dbg !790

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str12, i64 0, i64 0), i8* %option) #10, !dbg !791
  br label %15, !dbg !792

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i8* [ %14, %10 ], [ null, %._crit_edge ]
  ret i8* %.0, !dbg !793
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @opt2parg_bSet(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !226, metadata !346), !dbg !794
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !227, metadata !346), !dbg !795
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !228, metadata !346), !dbg !796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !346), !dbg !797
  %1 = icmp sgt i32 %nparg, 0, !dbg !798
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !801

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !801
  br label %5, !dbg !801

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !798
  br i1 %4, label %5, label %._crit_edge, !dbg !801

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !802
  %7 = load i8** %6, align 8, !dbg !802, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !804
  %9 = icmp eq i32 %8, 0, !dbg !805
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !801
  br i1 %9, label %10, label %3, !dbg !806

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 1, !dbg !807
  %12 = load i32* %11, align 4, !dbg !807, !tbaa !542
  br label %13, !dbg !808

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #10, !dbg !809
  br label %13, !dbg !810

; <label>:13                                      ; preds = %._crit_edge, %10
  %.0 = phi i32 [ %12, %10 ], [ 0, %._crit_edge ]
  ret i32 %.0, !dbg !811
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @opt2parg_enum(i8* %option, i32 %nparg, %struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata i8* %option, i64 0, metadata !232, metadata !346), !dbg !812
  tail call void @llvm.dbg.value(metadata i32 %nparg, i64 0, metadata !233, metadata !346), !dbg !813
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !234, metadata !346), !dbg !814
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !235, metadata !346), !dbg !815
  %1 = icmp sgt i32 %nparg, 0, !dbg !816
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !819

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nparg to i64, !dbg !819
  br label %5, !dbg !819

; <label>:3                                       ; preds = %5
  %4 = icmp slt i64 %indvars.iv.next, %2, !dbg !816
  br i1 %4, label %5, label %._crit_edge, !dbg !819

; <label>:5                                       ; preds = %.lr.ph, %3
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %6 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !820
  %7 = load i8** %6, align 8, !dbg !820, !tbaa !526
  %8 = tail call i32 @strcmp(i8* %7, i8* %option) #10, !dbg !822
  %9 = icmp eq i32 %8, 0, !dbg !823
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !819
  br i1 %9, label %10, label %3, !dbg !824

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 3, !dbg !825
  %12 = bitcast %union.anon.2* %11 to i8***, !dbg !826
  %13 = load i8*** %12, align 8, !dbg !826, !tbaa !532
  %14 = load i8** %13, align 8, !dbg !827, !tbaa !532
  br label %15, !dbg !828

._crit_edge:                                      ; preds = %3, %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str13, i64 0, i64 0), i8* %option) #10, !dbg !829
  br label %15, !dbg !830

; <label>:15                                      ; preds = %._crit_edge, %10
  %.0 = phi i8* [ %14, %10 ], [ null, %._crit_edge ]
  ret i8* %.0, !dbg !831
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @pa_val(%struct.t_pargs* nocapture readonly %pa) #6 {
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !240, metadata !346), !dbg !832
  store i8 0, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), align 16, !dbg !833, !tbaa !646
  %1 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 2, !dbg !834
  %2 = load i32* %1, align 4, !dbg !834, !tbaa !524
  switch i32 %2, label %56 [
    i32 0, label %3
    i32 2, label %9
    i32 1, label %9
    i32 4, label %16
    i32 3, label %24
    i32 6, label %36
    i32 5, label %42
  ], !dbg !835

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !836
  %5 = bitcast %union.anon.2* %4 to i32**, !dbg !836
  %6 = load i32** %5, align 8, !dbg !836, !tbaa !532
  %7 = load i32* %6, align 4, !dbg !836, !tbaa !498
  %8 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i32 %7) #10, !dbg !836
  br label %56, !dbg !838

; <label>:9                                       ; preds = %0, %0
  %10 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !839
  %11 = bitcast %union.anon.2* %10 to float**, !dbg !839
  %12 = load float** %11, align 8, !dbg !839, !tbaa !532
  %13 = load float* %12, align 4, !dbg !839, !tbaa !442
  %14 = fpext float %13 to double, !dbg !839
  %15 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), double %14) #10, !dbg !839
  br label %56, !dbg !840

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !841
  %18 = bitcast %union.anon.2* %17 to i32**, !dbg !841
  %19 = load i32** %18, align 8, !dbg !841, !tbaa !532
  %20 = load i32* %19, align 4, !dbg !841, !tbaa !498
  %21 = icmp ne i32 %20, 0, !dbg !841
  %22 = select i1 %21, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0), !dbg !841
  %23 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %22) #10, !dbg !841
  br label %56, !dbg !842

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !843
  %26 = bitcast %union.anon.2* %25 to i8***, !dbg !845
  %27 = load i8*** %26, align 8, !dbg !845, !tbaa !532
  %28 = load i8** %27, align 8, !dbg !846, !tbaa !532
  %29 = icmp eq i8* %28, null, !dbg !846
  br i1 %29, label %56, label %30, !dbg !847

; <label>:30                                      ; preds = %24
  %31 = tail call i64 @strlen(i8* %28) #10, !dbg !848
  %32 = icmp ugt i64 %31, 255, !dbg !851
  br i1 %32, label %33, label %34, !dbg !852

; <label>:33                                      ; preds = %30
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str19, i64 0, i64 0), i8* %28) #10, !dbg !853
  br label %56, !dbg !853

; <label>:34                                      ; preds = %30
  %35 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %28, i64 256) #10, !dbg !854
  br label %56

; <label>:36                                      ; preds = %0
  %37 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !855
  %38 = bitcast %union.anon.2* %37 to i8***, !dbg !855
  %39 = load i8*** %38, align 8, !dbg !855, !tbaa !532
  %40 = load i8** %39, align 8, !dbg !855, !tbaa !532
  %41 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %40, i64 256) #10, !dbg !855
  br label %56, !dbg !856

; <label>:42                                      ; preds = %0
  %43 = getelementptr inbounds %struct.t_pargs* %pa, i64 0, i32 3, !dbg !857
  %44 = bitcast %union.anon.2* %43 to [3 x float]**, !dbg !857
  %45 = load [3 x float]** %44, align 8, !dbg !857, !tbaa !532
  %46 = getelementptr inbounds [3 x float]* %45, i64 0, i64 0, !dbg !857
  %47 = load float* %46, align 4, !dbg !857, !tbaa !442
  %48 = fpext float %47 to double, !dbg !857
  %49 = getelementptr inbounds [3 x float]* %45, i64 0, i64 1, !dbg !857
  %50 = load float* %49, align 4, !dbg !857, !tbaa !442
  %51 = fpext float %50 to double, !dbg !857
  %52 = getelementptr inbounds [3 x float]* %45, i64 0, i64 2, !dbg !857
  %53 = load float* %52, align 4, !dbg !857, !tbaa !442
  %54 = fpext float %53 to double, !dbg !857
  %55 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([9 x i8]* @.str20, i64 0, i64 0), double %48, double %51, double %54) #10, !dbg !857
  br label %56, !dbg !858

; <label>:56                                      ; preds = %24, %34, %33, %0, %42, %36, %16, %9, %3
  ret i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), !dbg !859
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @print_pargs(%struct.__sFILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture readonly %pa) #6 {
  %buf = alloca [32 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !302, metadata !346), !dbg !860
  tail call void @llvm.dbg.value(metadata i32 %npargs, i64 0, metadata !303, metadata !346), !dbg !861
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !304, metadata !346), !dbg !862
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !306, metadata !346), !dbg !863
  %1 = getelementptr inbounds [256 x i8]* %buf2, i64 0, i64 0, !dbg !864
  call void @llvm.lifetime.start(i64 256, i8* %1) #8, !dbg !864
  tail call void @llvm.dbg.declare(metadata [256 x i8]* %buf2, metadata !307, metadata !346), !dbg !865
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !346), !dbg !866
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !346), !dbg !867
  %2 = icmp sgt i32 %npargs, 0, !dbg !868
  br i1 %2, label %.lr.ph5, label %._crit_edge6.thread, !dbg !871

.lr.ph5:                                          ; preds = %0
  %3 = add i32 %npargs, -1, !dbg !871
  br label %4, !dbg !871

; <label>:4                                       ; preds = %13, %.lr.ph5
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %13 ]
  %bShowHidden.02 = phi i32 [ 0, %.lr.ph5 ], [ %bShowHidden.1, %13 ]
  %5 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv7, i32 0, !dbg !872
  %6 = load i8** %5, align 8, !dbg !872, !tbaa !526
  %7 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !874
  %8 = icmp eq i32 %7, 0, !dbg !875
  br i1 %8, label %9, label %13, !dbg !876

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv7, i32 1, !dbg !877
  %11 = load i32* %10, align 4, !dbg !877, !tbaa !542
  %12 = icmp eq i32 %11, 0, !dbg !878
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !305, metadata !346), !dbg !866
  %bShowHidden.0. = select i1 %12, i32 %bShowHidden.02, i32 1, !dbg !879
  br label %13, !dbg !879

; <label>:13                                      ; preds = %9, %4
  %bShowHidden.1 = phi i32 [ %bShowHidden.02, %4 ], [ %bShowHidden.0., %9 ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !871
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32, !dbg !871
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %3, !dbg !871
  br i1 %exitcond10, label %._crit_edge6, label %4, !dbg !871

._crit_edge6:                                     ; preds = %13
  br i1 %2, label %.lr.ph, label %._crit_edge6.thread, !dbg !880

.lr.ph:                                           ; preds = %._crit_edge6
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #10, !dbg !881
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %fp), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !346), !dbg !867
  %16 = icmp eq i32 %bShowHidden.1, 0, !dbg !885
  %17 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !890
  %18 = add i32 %npargs, -1, !dbg !893
  br label %19, !dbg !893

; <label>:19                                      ; preds = %69, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %69 ]
  %20 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, !dbg !894
  br i1 %16, label %21, label %._crit_edge12, !dbg !895

; <label>:21                                      ; preds = %19
  %22 = call i32 @is_hidden(%struct.t_pargs* %20) #11, !dbg !896
  %23 = icmp eq i32 %22, 0, !dbg !896
  br i1 %23, label %._crit_edge12, label %69, !dbg !897

._crit_edge12:                                    ; preds = %19, %21
  %24 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 2, !dbg !898
  %25 = load i32* %24, align 4, !dbg !898, !tbaa !524
  %26 = icmp eq i32 %25, 4, !dbg !899
  %27 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 0, !dbg !890
  %28 = load i8** %27, align 8, !dbg !890, !tbaa !526
  br i1 %26, label %29, label %32, !dbg !900

; <label>:29                                      ; preds = %._crit_edge12
  %30 = getelementptr inbounds i8* %28, i64 1, !dbg !890
  %31 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %17, i32 0, i64 32, i8* getelementptr inbounds ([8 x i8]* @.str28, i64 0, i64 0), i8* %30) #10, !dbg !890
  br label %34, !dbg !890

; <label>:32                                      ; preds = %._crit_edge12
  %33 = call i8* @__strcpy_chk(i8* %17, i8* %28, i64 32) #10, !dbg !901
  br label %34

; <label>:34                                      ; preds = %32, %29
  %35 = call i64 @strlen(i8* %17) #10, !dbg !902
  %36 = load i32* %24, align 4, !dbg !904, !tbaa !524
  %37 = sext i32 %36 to i64, !dbg !904
  %38 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %37, !dbg !904
  %39 = load i8** %38, align 8, !dbg !904, !tbaa !532
  %40 = call i64 @strlen(i8* %39) #10, !dbg !904
  %41 = icmp ugt i64 %40, 4, !dbg !904
  %.op = sub i64 18, %40, !dbg !905
  %42 = select i1 %41, i64 %.op, i64 14, !dbg !905
  %43 = icmp ugt i64 %35, %42, !dbg !906
  br i1 %43, label %44, label %55, !dbg !907

; <label>:44                                      ; preds = %34
  %45 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i8* %17) #10, !dbg !908
  %46 = load i32* %24, align 4, !dbg !910, !tbaa !524
  %47 = sext i32 %46 to i64, !dbg !910
  %48 = getelementptr inbounds [7 x i8*]* @argtp, i64 0, i64 %47, !dbg !910
  %49 = load i8** %48, align 8, !dbg !910, !tbaa !532
  %50 = call i8* @pa_val(%struct.t_pargs* %20) #11, !dbg !910
  %51 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4, !dbg !910
  %52 = load i8** %51, align 8, !dbg !910, !tbaa !481
  %53 = call i8* @check_tty(i8* %52) #10, !dbg !910
  %54 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str30, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %53) #10, !dbg !910
  br label %66, !dbg !911

; <label>:55                                      ; preds = %34
  %56 = call i64 @strlen(i8* %17) #10, !dbg !912
  %57 = icmp ugt i64 %56, 12, !dbg !914
  %58 = call i8* @pa_val(%struct.t_pargs* %20) #11, !dbg !915
  %59 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv, i32 4, !dbg !915
  %60 = load i8** %59, align 8, !dbg !915, !tbaa !481
  %61 = call i8* @check_tty(i8* %60) #10, !dbg !915
  br i1 %57, label %62, label %64, !dbg !917

; <label>:62                                      ; preds = %55
  %63 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str31, i64 0, i64 0), i8* %17, i8* %39, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %61) #10, !dbg !915
  br label %66, !dbg !918

; <label>:64                                      ; preds = %55
  %65 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 256, i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* %17, i8* %39, i8* getelementptr inbounds ([256 x i8]* @pa_val.buf, i64 0, i64 0), i8* %61) #10, !dbg !919
  br label %66

; <label>:66                                      ; preds = %62, %64, %44
  %67 = call i8* @wrap_lines(i8* %1, i32 80, i32 28) #10, !dbg !920
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !311, metadata !346), !dbg !921
  %68 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* %67) #10, !dbg !922
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 294, i8* %67) #10, !dbg !923
  br label %69, !dbg !924

; <label>:69                                      ; preds = %21, %66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !893
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !893
  %exitcond = icmp eq i32 %lftr.wideiv, %18, !dbg !893
  br i1 %exitcond, label %._crit_edge, label %19, !dbg !893

._crit_edge:                                      ; preds = %69
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !925
  br label %._crit_edge6.thread, !dbg !926

._crit_edge6.thread:                              ; preds = %0, %._crit_edge, %._crit_edge6
  call void @llvm.lifetime.end(i64 256, i8* %1) #8, !dbg !927
  ret void, !dbg !927
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: optsize
declare i8* @check_tty(i8*) #3

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_enums(%struct.__sFILE* nocapture %fp, i32 %npargs, %struct.t_pargs* nocapture readonly %pa, i32 %shell) #6 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !317, metadata !346), !dbg !928
  tail call void @llvm.dbg.value(metadata i32 %npargs, i64 0, metadata !318, metadata !346), !dbg !929
  tail call void @llvm.dbg.value(metadata %struct.t_pargs* %pa, i64 0, metadata !319, metadata !346), !dbg !930
  tail call void @llvm.dbg.value(metadata i32 %shell, i64 0, metadata !320, metadata !346), !dbg !931
  switch i32 %shell, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader1
    i32 2, label %.preheader3
  ], !dbg !932

.preheader3:                                      ; preds = %0
  %1 = icmp sgt i32 %npargs, 0, !dbg !933
  br i1 %1, label %.lr.ph19, label %.loopexit, !dbg !937

.lr.ph19:                                         ; preds = %.preheader3
  %2 = add i32 %npargs, -1, !dbg !937
  br label %51, !dbg !937

.preheader1:                                      ; preds = %0
  %3 = icmp sgt i32 %npargs, 0, !dbg !938
  br i1 %3, label %.lr.ph13, label %.loopexit, !dbg !941

.lr.ph13:                                         ; preds = %.preheader1
  %4 = add i32 %npargs, -1, !dbg !941
  br label %29, !dbg !941

.preheader:                                       ; preds = %0
  %5 = icmp sgt i32 %npargs, 0, !dbg !942
  br i1 %5, label %.lr.ph7, label %.loopexit, !dbg !945

.lr.ph7:                                          ; preds = %.preheader
  %6 = add i32 %npargs, -1, !dbg !945
  br label %7, !dbg !945

; <label>:7                                       ; preds = %28, %.lr.ph7
  %indvars.iv20 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next21, %28 ]
  %8 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 2, !dbg !946
  %9 = load i32* %8, align 4, !dbg !946, !tbaa !524
  %10 = icmp eq i32 %9, 6, !dbg !948
  br i1 %10, label %11, label %28, !dbg !949

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 0, !dbg !950
  %13 = load i8** %12, align 8, !dbg !950, !tbaa !526
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* %13) #10, !dbg !952
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !322, metadata !346), !dbg !953
  %15 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv20, i32 3, !dbg !954
  %16 = bitcast %union.anon.2* %15 to i8***, !dbg !957
  %17 = load i8*** %16, align 8, !dbg !957, !tbaa !532
  %18 = getelementptr inbounds i8** %17, i64 1, !dbg !958
  %19 = load i8** %18, align 8, !dbg !958, !tbaa !532
  %20 = icmp eq i8* %19, null, !dbg !959
  br i1 %20, label %._crit_edge, label %.lr.ph, !dbg !959

.lr.ph:                                           ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %11 ]
  %21 = phi i8* [ %25, %.lr.ph ], [ %19, %11 ]
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %21) #10, !dbg !960
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !959
  %23 = load i8*** %16, align 8, !dbg !957, !tbaa !532
  %24 = getelementptr inbounds i8** %23, i64 %indvars.iv.next, !dbg !958
  %25 = load i8** %24, align 8, !dbg !958, !tbaa !532
  %26 = icmp eq i8* %25, null, !dbg !959
  br i1 %26, label %._crit_edge, label %.lr.ph, !dbg !959

._crit_edge:                                      ; preds = %.lr.ph, %11
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !961
  br label %28, !dbg !962

; <label>:28                                      ; preds = %7, %._crit_edge
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !945
  %lftr.wideiv = trunc i64 %indvars.iv20 to i32, !dbg !945
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !945
  br i1 %exitcond, label %.loopexit, label %7, !dbg !945

; <label>:29                                      ; preds = %50, %.lr.ph13
  %indvars.iv24 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next25, %50 ]
  %30 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 2, !dbg !963
  %31 = load i32* %30, align 4, !dbg !963, !tbaa !524
  %32 = icmp eq i32 %31, 6, !dbg !965
  br i1 %32, label %33, label %50, !dbg !966

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 0, !dbg !967
  %35 = load i8** %34, align 8, !dbg !967, !tbaa !526
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str37, i64 0, i64 0), i8* %35) #10, !dbg !969
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !322, metadata !346), !dbg !953
  %37 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv24, i32 3, !dbg !970
  %38 = bitcast %union.anon.2* %37 to i8***, !dbg !973
  %39 = load i8*** %38, align 8, !dbg !973, !tbaa !532
  %40 = getelementptr inbounds i8** %39, i64 1, !dbg !974
  %41 = load i8** %40, align 8, !dbg !974, !tbaa !532
  %42 = icmp eq i8* %41, null, !dbg !975
  br i1 %42, label %._crit_edge11, label %.lr.ph10, !dbg !975

.lr.ph10:                                         ; preds = %33, %.lr.ph10
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph10 ], [ 1, %33 ]
  %43 = phi i8* [ %47, %.lr.ph10 ], [ %41, %33 ]
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %43) #10, !dbg !976
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !975
  %45 = load i8*** %38, align 8, !dbg !973, !tbaa !532
  %46 = getelementptr inbounds i8** %45, i64 %indvars.iv.next23, !dbg !974
  %47 = load i8** %46, align 8, !dbg !974, !tbaa !532
  %48 = icmp eq i8* %47, null, !dbg !975
  br i1 %48, label %._crit_edge11, label %.lr.ph10, !dbg !975

._crit_edge11:                                    ; preds = %.lr.ph10, %33
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str38, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %fp), !dbg !977
  br label %50, !dbg !978

; <label>:50                                      ; preds = %29, %._crit_edge11
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !941
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !941
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %4, !dbg !941
  br i1 %exitcond27, label %.loopexit, label %29, !dbg !941

; <label>:51                                      ; preds = %72, %.lr.ph19
  %indvars.iv30 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next31, %72 ]
  %52 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 2, !dbg !979
  %53 = load i32* %52, align 4, !dbg !979, !tbaa !524
  %54 = icmp eq i32 %53, 6, !dbg !981
  br i1 %54, label %55, label %72, !dbg !982

; <label>:55                                      ; preds = %51
  %56 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 0, !dbg !983
  %57 = load i8** %56, align 8, !dbg !983, !tbaa !526
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str39, i64 0, i64 0), i8* %57) #10, !dbg !985
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !322, metadata !346), !dbg !953
  %59 = getelementptr inbounds %struct.t_pargs* %pa, i64 %indvars.iv30, i32 3, !dbg !986
  %60 = bitcast %union.anon.2* %59 to i8***, !dbg !989
  %61 = load i8*** %60, align 8, !dbg !989, !tbaa !532
  %62 = getelementptr inbounds i8** %61, i64 1, !dbg !990
  %63 = load i8** %62, align 8, !dbg !990, !tbaa !532
  %64 = icmp eq i8* %63, null, !dbg !991
  br i1 %64, label %._crit_edge17, label %.lr.ph16, !dbg !991

.lr.ph16:                                         ; preds = %55, %.lr.ph16
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph16 ], [ 1, %55 ]
  %65 = phi i8* [ %69, %.lr.ph16 ], [ %63, %55 ]
  %66 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* %65) #10, !dbg !992
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !991
  %67 = load i8*** %60, align 8, !dbg !989, !tbaa !532
  %68 = getelementptr inbounds i8** %67, i64 %indvars.iv.next29, !dbg !990
  %69 = load i8** %68, align 8, !dbg !990, !tbaa !532
  %70 = icmp eq i8* %69, null, !dbg !991
  br i1 %70, label %._crit_edge17, label %.lr.ph16, !dbg !991

._crit_edge17:                                    ; preds = %.lr.ph16, %55
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %fp), !dbg !993
  br label %72, !dbg !994

; <label>:72                                      ; preds = %51, %._crit_edge17
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !937
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32, !dbg !937
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %2, !dbg !937
  br i1 %exitcond33, label %.loopexit, label %51, !dbg !937

.loopexit:                                        ; preds = %72, %50, %28, %.preheader3, %.preheader1, %.preheader, %0
  ret void, !dbg !995
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!342, !343, !344}
!llvm.ident = !{!345}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !14, subprograms: !17, globals: !335, imports: !341)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pargs.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 83, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "etINT", value: 0)
!7 = !DIEnumerator(name: "etREAL", value: 1)
!8 = !DIEnumerator(name: "etTIME", value: 2)
!9 = !DIEnumerator(name: "etSTR", value: 3)
!10 = !DIEnumerator(name: "etBOOL", value: 4)
!11 = !DIEnumerator(name: "etRVEC", value: 5)
!12 = !DIEnumerator(name: "etENUM", value: 6)
!13 = !DIEnumerator(name: "etNR", value: 7)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !{!18, !24, !31, !37, !43, !46, !49, !52, !55, !58, !61, !70, !79, !92, !95, !98, !101, !115, !129, !135, !141, !175, !194, !202, !208, !216, !224, !230, !236, !241, !313, !323, !327}
!18 = !DISubprogram(name: "__sigbits", scope: !19, file: !19, line: 114, type: !20, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !22)
!19 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !DISubroutineType(types: !21)
!21 = !{!15, !15}
!22 = !{!23}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !18, file: !19, line: 114, type: !15)
!24 = !DISubprogram(name: "__inline_isfinitef", scope: !25, file: !25, line: 204, type: !26, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !29)
!25 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DISubroutineType(types: !27)
!27 = !{!15, !28}
!28 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!29 = !{!30}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !24, file: !25, line: 204, type: !28)
!31 = !DISubprogram(name: "__inline_isfinited", scope: !25, file: !25, line: 207, type: !32, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!15, !34}
!34 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!35 = !{!36}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !31, file: !25, line: 207, type: !34)
!37 = !DISubprogram(name: "__inline_isfinitel", scope: !25, file: !25, line: 210, type: !38, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{!15, !40}
!40 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !37, file: !25, line: 210, type: !40)
!43 = !DISubprogram(name: "__inline_isinff", scope: !25, file: !25, line: 213, type: !26, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !44)
!44 = !{!45}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !43, file: !25, line: 213, type: !28)
!46 = !DISubprogram(name: "__inline_isinfd", scope: !25, file: !25, line: 216, type: !32, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !47)
!47 = !{!48}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !46, file: !25, line: 216, type: !34)
!49 = !DISubprogram(name: "__inline_isinfl", scope: !25, file: !25, line: 219, type: !38, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !50)
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !49, file: !25, line: 219, type: !40)
!52 = !DISubprogram(name: "__inline_isnanf", scope: !25, file: !25, line: 222, type: !26, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !53)
!53 = !{!54}
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !52, file: !25, line: 222, type: !28)
!55 = !DISubprogram(name: "__inline_isnand", scope: !25, file: !25, line: 225, type: !32, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !56)
!56 = !{!57}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !55, file: !25, line: 225, type: !34)
!58 = !DISubprogram(name: "__inline_isnanl", scope: !25, file: !25, line: 228, type: !38, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !59)
!59 = !{!60}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !58, file: !25, line: 228, type: !40)
!61 = !DISubprogram(name: "__inline_signbitf", scope: !25, file: !25, line: 231, type: !26, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !62)
!62 = !{!63, !64}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !61, file: !25, line: 231, type: !28)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !61, file: !25, line: 232, type: !65)
!65 = !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !25, line: 232, size: 32, align: 32, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !65, file: !25, line: 232, baseType: !28, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !65, file: !25, line: 232, baseType: !69, size: 32, align: 32)
!69 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!70 = !DISubprogram(name: "__inline_signbitd", scope: !25, file: !25, line: 236, type: !32, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !71)
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !70, file: !25, line: 236, type: !34)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !70, file: !25, line: 237, type: !74)
!74 = !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !25, line: 237, size: 64, align: 64, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !74, file: !25, line: 237, baseType: !34, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !74, file: !25, line: 237, baseType: !78, size: 64, align: 64)
!78 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!79 = !DISubprogram(name: "__inline_signbitl", scope: !25, file: !25, line: 242, type: !38, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !80)
!80 = !{!81, !82}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !79, file: !25, line: 242, type: !40)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !79, file: !25, line: 246, type: !83)
!83 = !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !25, line: 243, size: 128, align: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !83, file: !25, line: 244, baseType: !40, size: 128, align: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !83, file: !25, line: 245, baseType: !87, size: 128, align: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !25, line: 245, size: 128, align: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !87, file: !25, line: 245, baseType: !78, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !87, file: !25, line: 245, baseType: !91, size: 16, align: 16, offset: 64)
!91 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!92 = !DISubprogram(name: "__inline_isnormalf", scope: !25, file: !25, line: 257, type: !26, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !93)
!93 = !{!94}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !92, file: !25, line: 257, type: !28)
!95 = !DISubprogram(name: "__inline_isnormald", scope: !25, file: !25, line: 260, type: !32, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !96)
!96 = !{!97}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !95, file: !25, line: 260, type: !34)
!98 = !DISubprogram(name: "__inline_isnormall", scope: !25, file: !25, line: 263, type: !38, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !99)
!99 = !{!100}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !98, file: !25, line: 263, type: !40)
!101 = !DISubprogram(name: "__sincosf", scope: !25, file: !25, line: 642, type: !102, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !105)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !28, !104, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !101, file: !25, line: 642, type: !28)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !101, file: !25, line: 642, type: !104)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !101, file: !25, line: 642, type: !104)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !101, file: !25, line: 643, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !25, line: 634, size: 64, align: 32, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !111, file: !25, line: 634, baseType: !28, size: 32, align: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !111, file: !25, line: 634, baseType: !28, size: 32, align: 32, offset: 32)
!115 = !DISubprogram(name: "__sincos", scope: !25, file: !25, line: 647, type: !116, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !119)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !34, !118, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !25, line: 647, type: !34)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !115, file: !25, line: 647, type: !118)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !115, file: !25, line: 647, type: !118)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !115, file: !25, line: 648, type: !124)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !25, line: 635, size: 128, align: 64, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !125, file: !25, line: 635, baseType: !34, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !125, file: !25, line: 635, baseType: !34, size: 64, align: 64, offset: 64)
!129 = !DISubprogram(name: "__sincospif", scope: !25, file: !25, line: 652, type: !102, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !129, file: !25, line: 652, type: !28)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !129, file: !25, line: 652, type: !104)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !129, file: !25, line: 652, type: !104)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !129, file: !25, line: 653, type: !110)
!135 = !DISubprogram(name: "__sincospi", scope: !25, file: !25, line: 657, type: !116, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !135, file: !25, line: 657, type: !34)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !135, file: !25, line: 657, type: !118)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !135, file: !25, line: 657, type: !118)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !135, file: !25, line: 658, type: !124)
!141 = !DISubprogram(name: "is_hidden", scope: !1, file: !1, line: 45, type: !142, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_pargs*)* @is_hidden, variables: !173)
!142 = !DISubroutineType(types: !143)
!143 = !{!15, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pargs", file: !4, line: 105, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 91, size: 256, align: 64, elements: !147)
!147 = !{!148, !151, !152, !153, !172}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !146, file: !4, line: 92, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bSet", scope: !146, file: !4, line: 93, baseType: !15, size: 32, align: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !4, line: 94, baseType: !15, size: 32, align: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !146, file: !4, line: 103, baseType: !154, size: 64, align: 64, offset: 128)
!154 = !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !4, line: 95, size: 64, align: 64, elements: !155)
!155 = !{!156, !157, !159, !163, !165, !166}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !154, file: !4, line: 96, baseType: !16, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !154, file: !4, line: 97, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !154, file: !4, line: 98, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !162, line: 87, baseType: !28)
!162 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !154, file: !4, line: 99, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !154, file: !4, line: 101, baseType: !158, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !154, file: !4, line: 102, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !162, line: 101, baseType: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 96, align: 32, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !146, file: !4, line: 104, baseType: !149, size: 64, align: 64, offset: 192)
!173 = !{!174}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 1, scope: !141, file: !1, line: 45, type: !144)
!175 = !DISubprogram(name: "get_pargs", scope: !1, file: !1, line: 51, type: !176, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8**, i32, %struct.t_pargs*, i32)* @get_pargs, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !158, !164, !15, !144, !15}
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !193}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !175, file: !1, line: 51, type: !158)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !175, file: !1, line: 51, type: !164)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 3, scope: !175, file: !1, line: 51, type: !15)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 4, scope: !175, file: !1, line: 51, type: !144)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bKeepArgs", arg: 5, scope: !175, file: !1, line: 51, type: !15)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !175, file: !1, line: 53, type: !15)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !175, file: !1, line: 53, type: !15)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !175, file: !1, line: 53, type: !15)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "match", scope: !175, file: !1, line: 53, type: !15)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bKeep", scope: !175, file: !1, line: 54, type: !158)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !175, file: !1, line: 55, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, align: 8, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 32)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !175, file: !1, line: 56, type: !149)
!194 = !DISubprogram(name: "opt2parg_int", scope: !1, file: !1, line: 143, type: !195, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_int, variables: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!15, !149, !15, !144}
!197 = !{!198, !199, !200, !201}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !194, file: !1, line: 143, type: !149)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !194, file: !1, line: 143, type: !15)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !194, file: !1, line: 143, type: !144)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !194, file: !1, line: 145, type: !15)
!202 = !DISubprogram(name: "opt2parg_bool", scope: !1, file: !1, line: 156, type: !195, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_bool, variables: !203)
!203 = !{!204, !205, !206, !207}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !202, file: !1, line: 156, type: !149)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !202, file: !1, line: 156, type: !15)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !202, file: !1, line: 156, type: !144)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !202, file: !1, line: 158, type: !15)
!208 = !DISubprogram(name: "opt2parg_real", scope: !1, file: !1, line: 169, type: !209, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i32, %struct.t_pargs*)* @opt2parg_real, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{!161, !149, !15, !144}
!211 = !{!212, !213, !214, !215}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !208, file: !1, line: 169, type: !149)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !208, file: !1, line: 169, type: !15)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !208, file: !1, line: 169, type: !144)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !208, file: !1, line: 171, type: !15)
!216 = !DISubprogram(name: "opt2parg_str", scope: !1, file: !1, line: 182, type: !217, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.t_pargs*)* @opt2parg_str, variables: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!149, !149, !15, !144}
!219 = !{!220, !221, !222, !223}
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !216, file: !1, line: 182, type: !149)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !216, file: !1, line: 182, type: !15)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !216, file: !1, line: 182, type: !144)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !216, file: !1, line: 184, type: !15)
!224 = !DISubprogram(name: "opt2parg_bSet", scope: !1, file: !1, line: 195, type: !195, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.t_pargs*)* @opt2parg_bSet, variables: !225)
!225 = !{!226, !227, !228, !229}
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !224, file: !1, line: 195, type: !149)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !224, file: !1, line: 195, type: !15)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !224, file: !1, line: 195, type: !144)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !224, file: !1, line: 197, type: !15)
!230 = !DISubprogram(name: "opt2parg_enum", scope: !1, file: !1, line: 208, type: !217, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.t_pargs*)* @opt2parg_enum, variables: !231)
!231 = !{!232, !233, !234, !235}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 1, scope: !230, file: !1, line: 208, type: !149)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nparg", arg: 2, scope: !230, file: !1, line: 208, type: !15)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !230, file: !1, line: 208, type: !144)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !230, file: !1, line: 210, type: !15)
!236 = !DISubprogram(name: "pa_val", scope: !1, file: !1, line: 221, type: !237, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.t_pargs*)* @pa_val, variables: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!149, !144}
!239 = !{!240}
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 1, scope: !236, file: !1, line: 221, type: !144)
!241 = !DISubprogram(name: "print_pargs", scope: !1, file: !1, line: 255, type: !242, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, %struct.t_pargs*)* @print_pargs, variables: !301)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244, !15, !144}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !246, line: 153, baseType: !247)
!246 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !246, line: 122, size: 1216, align: 64, elements: !248)
!248 = !{!249, !252, !253, !254, !256, !257, !262, !263, !264, !267, !271, !281, !287, !288, !291, !292, !294, !298, !299, !300}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !247, file: !246, line: 123, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !247, file: !246, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !247, file: !246, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !247, file: !246, line: 126, baseType: !255, size: 16, align: 16, offset: 128)
!255 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !247, file: !246, line: 127, baseType: !255, size: 16, align: 16, offset: 144)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !247, file: !246, line: 128, baseType: !258, size: 128, align: 64, offset: 192)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !246, line: 88, size: 128, align: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !258, file: !246, line: 89, baseType: !250, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !258, file: !246, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !247, file: !246, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !247, file: !246, line: 132, baseType: !16, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !247, file: !246, line: 133, baseType: !265, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !14)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !247, file: !246, line: 134, baseType: !268, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!15, !16, !149, !15}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !247, file: !246, line: 135, baseType: !272, size: 64, align: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !16, !275, !15}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !246, line: 77, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !277, line: 71, baseType: !278)
!277 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !279, line: 46, baseType: !280)
!279 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!280 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !247, file: !246, line: 136, baseType: !282, size: 64, align: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!15, !16, !285, !15}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !247, file: !246, line: 139, baseType: !258, size: 128, align: 64, offset: 704)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !247, file: !246, line: 140, baseType: !289, size: 64, align: 64, offset: 832)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !246, line: 94, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !247, file: !246, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !247, file: !246, line: 144, baseType: !293, size: 24, align: 8, offset: 928)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 24, align: 8, elements: !170)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !247, file: !246, line: 145, baseType: !295, size: 8, align: 8, offset: 952)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 8, align: 8, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 1)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !247, file: !246, line: 148, baseType: !258, size: 128, align: 64, offset: 960)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !247, file: !246, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !247, file: !246, line: 152, baseType: !275, size: 64, align: 64, offset: 1152)
!301 = !{!302, !303, !304, !305, !306, !307, !311, !312}
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !241, file: !1, line: 255, type: !244)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 2, scope: !241, file: !1, line: 255, type: !15)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !241, file: !1, line: 255, type: !144)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bShowHidden", scope: !241, file: !1, line: 257, type: !15)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !241, file: !1, line: 258, type: !190)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !241, file: !1, line: 258, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 2048, align: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 256)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wdesc", scope: !241, file: !1, line: 259, type: !149)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !241, file: !1, line: 260, type: !15)
!313 = !DISubprogram(name: "pr_enums", scope: !1, file: !1, line: 301, type: !314, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, %struct.t_pargs*, i32)* @pr_enums, variables: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !244, !15, !144, !15}
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !313, file: !1, line: 301, type: !244)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "npargs", arg: 2, scope: !313, file: !1, line: 301, type: !15)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pa", arg: 3, scope: !313, file: !1, line: 301, type: !144)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "shell", arg: 4, scope: !313, file: !1, line: 301, type: !15)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !313, file: !1, line: 303, type: !15)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !313, file: !1, line: 303, type: !15)
!323 = !DISubprogram(name: "isdigit", scope: !324, file: !324, line: 237, type: !20, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !325)
!324 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!325 = !{!326}
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !323, file: !324, line: 237, type: !15)
!327 = !DISubprogram(name: "__isctype", scope: !324, file: !324, line: 164, type: !328, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !332)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !330, !331}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !279, line: 70, baseType: !15)
!331 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!332 = !{!333, !334}
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !327, file: !324, line: 164, type: !330)
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !327, file: !324, line: 164, type: !331)
!335 = !{!336, !337}
!336 = !DIGlobalVariable(name: "buf", scope: !236, file: !1, line: 223, type: !308, isLocal: true, isDefinition: true, variable: [256 x i8]* @pa_val.buf)
!337 = !DIGlobalVariable(name: "argtp", scope: !0, file: !4, line: 87, type: !338, isLocal: true, isDefinition: true, variable: [7 x i8*]* @argtp)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 448, align: 64, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 7)
!341 = !{}
!342 = !{i32 2, !"Dwarf Version", i32 2}
!343 = !{i32 2, !"Debug Info Version", i32 700000003}
!344 = !{i32 1, !"PIC Level", i32 2}
!345 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!346 = !DIExpression()
!347 = !DILocation(line: 114, column: 15, scope: !18)
!348 = !DILocation(line: 116, column: 20, scope: !18)
!349 = !DILocation(line: 116, column: 12, scope: !18)
!350 = !DILocation(line: 116, column: 57, scope: !18)
!351 = !DILocation(line: 116, column: 45, scope: !18)
!352 = !DILocation(line: 116, column: 5, scope: !18)
!353 = !DILocation(line: 204, column: 53, scope: !24)
!354 = !DILocation(line: 205, column: 16, scope: !24)
!355 = !DILocation(line: 205, column: 23, scope: !24)
!356 = !DILocation(line: 205, column: 26, scope: !24)
!357 = !DILocation(line: 205, column: 47, scope: !24)
!358 = !DILocation(line: 205, column: 5, scope: !24)
!359 = !DILocation(line: 207, column: 54, scope: !31)
!360 = !DILocation(line: 208, column: 16, scope: !31)
!361 = !DILocation(line: 208, column: 23, scope: !31)
!362 = !DILocation(line: 208, column: 26, scope: !31)
!363 = !DILocation(line: 208, column: 46, scope: !31)
!364 = !DILocation(line: 208, column: 5, scope: !31)
!365 = !DILocation(line: 210, column: 59, scope: !37)
!366 = !DILocation(line: 211, column: 16, scope: !37)
!367 = !DILocation(line: 211, column: 23, scope: !37)
!368 = !DILocation(line: 211, column: 26, scope: !37)
!369 = !DILocation(line: 211, column: 47, scope: !37)
!370 = !DILocation(line: 211, column: 5, scope: !37)
!371 = !DILocation(line: 213, column: 50, scope: !43)
!372 = !DILocation(line: 214, column: 12, scope: !43)
!373 = !DILocation(line: 214, column: 33, scope: !43)
!374 = !DILocation(line: 214, column: 5, scope: !43)
!375 = !DILocation(line: 216, column: 51, scope: !46)
!376 = !DILocation(line: 217, column: 12, scope: !46)
!377 = !DILocation(line: 217, column: 32, scope: !46)
!378 = !DILocation(line: 217, column: 5, scope: !46)
!379 = !DILocation(line: 219, column: 56, scope: !49)
!380 = !DILocation(line: 220, column: 12, scope: !49)
!381 = !DILocation(line: 220, column: 33, scope: !49)
!382 = !DILocation(line: 220, column: 5, scope: !49)
!383 = !DILocation(line: 222, column: 50, scope: !52)
!384 = !DILocation(line: 223, column: 16, scope: !52)
!385 = !DILocation(line: 223, column: 5, scope: !52)
!386 = !DILocation(line: 225, column: 51, scope: !55)
!387 = !DILocation(line: 226, column: 16, scope: !55)
!388 = !DILocation(line: 226, column: 5, scope: !55)
!389 = !DILocation(line: 228, column: 56, scope: !58)
!390 = !DILocation(line: 229, column: 16, scope: !58)
!391 = !DILocation(line: 229, column: 5, scope: !58)
!392 = !DILocation(line: 231, column: 52, scope: !61)
!393 = !DILocation(line: 232, column: 44, scope: !61)
!394 = !DILocation(line: 233, column: 13, scope: !61)
!395 = !DILocation(line: 234, column: 26, scope: !61)
!396 = !DILocation(line: 234, column: 5, scope: !61)
!397 = !DILocation(line: 236, column: 53, scope: !70)
!398 = !DILocation(line: 237, column: 51, scope: !70)
!399 = !DILocation(line: 238, column: 13, scope: !70)
!400 = !DILocation(line: 239, column: 26, scope: !70)
!401 = !DILocation(line: 239, column: 12, scope: !70)
!402 = !DILocation(line: 239, column: 5, scope: !70)
!403 = !DILocation(line: 242, column: 58, scope: !79)
!404 = !DILocation(line: 246, column: 7, scope: !79)
!405 = !DILocation(line: 248, column: 26, scope: !79)
!406 = !DILocation(line: 248, column: 33, scope: !79)
!407 = !DILocation(line: 248, column: 5, scope: !79)
!408 = !DILocation(line: 257, column: 53, scope: !92)
!409 = !DILocation(line: 204, column: 53, scope: !24, inlinedAt: !410)
!410 = distinct !DILocation(line: 258, column: 12, scope: !92)
!411 = !DILocation(line: 205, column: 16, scope: !24, inlinedAt: !410)
!412 = !DILocation(line: 205, column: 47, scope: !24, inlinedAt: !410)
!413 = !DILocation(line: 205, column: 23, scope: !24, inlinedAt: !410)
!414 = !DILocation(line: 258, column: 60, scope: !92)
!415 = !DILocation(line: 258, column: 36, scope: !92)
!416 = !DILocation(line: 258, column: 5, scope: !92)
!417 = !DILocation(line: 260, column: 54, scope: !95)
!418 = !DILocation(line: 207, column: 54, scope: !31, inlinedAt: !419)
!419 = distinct !DILocation(line: 261, column: 12, scope: !95)
!420 = !DILocation(line: 208, column: 16, scope: !31, inlinedAt: !419)
!421 = !DILocation(line: 208, column: 46, scope: !31, inlinedAt: !419)
!422 = !DILocation(line: 208, column: 23, scope: !31, inlinedAt: !419)
!423 = !DILocation(line: 261, column: 59, scope: !95)
!424 = !DILocation(line: 261, column: 36, scope: !95)
!425 = !DILocation(line: 261, column: 5, scope: !95)
!426 = !DILocation(line: 263, column: 59, scope: !98)
!427 = !DILocation(line: 210, column: 59, scope: !37, inlinedAt: !428)
!428 = distinct !DILocation(line: 264, column: 12, scope: !98)
!429 = !DILocation(line: 211, column: 16, scope: !37, inlinedAt: !428)
!430 = !DILocation(line: 211, column: 47, scope: !37, inlinedAt: !428)
!431 = !DILocation(line: 211, column: 23, scope: !37, inlinedAt: !428)
!432 = !DILocation(line: 264, column: 60, scope: !98)
!433 = !DILocation(line: 264, column: 36, scope: !98)
!434 = !DILocation(line: 264, column: 5, scope: !98)
!435 = !DILocation(line: 642, column: 45, scope: !101)
!436 = !DILocation(line: 642, column: 57, scope: !101)
!437 = !DILocation(line: 642, column: 72, scope: !101)
!438 = !DILocation(line: 643, column: 27, scope: !101)
!439 = !DILocation(line: 643, column: 37, scope: !101)
!440 = !DILocation(line: 644, column: 23, scope: !101)
!441 = !DILocation(line: 644, column: 13, scope: !101)
!442 = !{!443, !443, i64 0}
!443 = !{!"float", !444, i64 0}
!444 = !{!"omnipotent char", !445, i64 0}
!445 = !{!"Simple C/C++ TBAA"}
!446 = !DILocation(line: 644, column: 51, scope: !101)
!447 = !DILocation(line: 644, column: 41, scope: !101)
!448 = !DILocation(line: 645, column: 1, scope: !101)
!449 = !DILocation(line: 647, column: 45, scope: !115)
!450 = !DILocation(line: 647, column: 58, scope: !115)
!451 = !DILocation(line: 647, column: 74, scope: !115)
!452 = !DILocation(line: 648, column: 28, scope: !115)
!453 = !DILocation(line: 648, column: 38, scope: !115)
!454 = !DIExpression(DW_OP_bit_piece, 0, 64)
!455 = !DIExpression(DW_OP_bit_piece, 64, 64)
!456 = !DILocation(line: 649, column: 13, scope: !115)
!457 = !{!458, !458, i64 0}
!458 = !{!"double", !444, i64 0}
!459 = !DILocation(line: 649, column: 41, scope: !115)
!460 = !DILocation(line: 650, column: 1, scope: !115)
!461 = !DILocation(line: 652, column: 47, scope: !129)
!462 = !DILocation(line: 652, column: 59, scope: !129)
!463 = !DILocation(line: 652, column: 74, scope: !129)
!464 = !DILocation(line: 653, column: 27, scope: !129)
!465 = !DILocation(line: 653, column: 37, scope: !129)
!466 = !DILocation(line: 654, column: 23, scope: !129)
!467 = !DILocation(line: 654, column: 13, scope: !129)
!468 = !DILocation(line: 654, column: 51, scope: !129)
!469 = !DILocation(line: 654, column: 41, scope: !129)
!470 = !DILocation(line: 655, column: 1, scope: !129)
!471 = !DILocation(line: 657, column: 47, scope: !135)
!472 = !DILocation(line: 657, column: 60, scope: !135)
!473 = !DILocation(line: 657, column: 76, scope: !135)
!474 = !DILocation(line: 658, column: 28, scope: !135)
!475 = !DILocation(line: 658, column: 38, scope: !135)
!476 = !DILocation(line: 659, column: 13, scope: !135)
!477 = !DILocation(line: 659, column: 41, scope: !135)
!478 = !DILocation(line: 660, column: 1, scope: !135)
!479 = !DILocation(line: 45, column: 25, scope: !141)
!480 = !DILocation(line: 47, column: 23, scope: !141)
!481 = !{!482, !483, i64 24}
!482 = !{!"", !483, i64 0, !484, i64 8, !484, i64 12, !444, i64 16, !483, i64 24}
!483 = !{!"any pointer", !444, i64 0}
!484 = !{!"int", !444, i64 0}
!485 = !DILocation(line: 47, column: 12, scope: !141)
!486 = !DILocation(line: 47, column: 38, scope: !141)
!487 = !DILocation(line: 47, column: 47, scope: !141)
!488 = !DILocation(line: 48, column: 5, scope: !141)
!489 = !DILocation(line: 48, column: 33, scope: !141)
!490 = !DILocation(line: 47, column: 3, scope: !141)
!491 = !DILocation(line: 51, column: 21, scope: !175)
!492 = !DILocation(line: 51, column: 32, scope: !175)
!493 = !DILocation(line: 51, column: 43, scope: !175)
!494 = !DILocation(line: 51, column: 57, scope: !175)
!495 = !DILocation(line: 51, column: 67, scope: !175)
!496 = !DILocation(line: 55, column: 8, scope: !175)
!497 = !DILocation(line: 58, column: 3, scope: !175)
!498 = !{!484, !484, i64 0}
!499 = !DILocation(line: 54, column: 9, scope: !175)
!500 = !DILocation(line: 59, column: 16, scope: !175)
!501 = !DILocation(line: 60, column: 9, scope: !175)
!502 = !DILocation(line: 60, column: 3, scope: !175)
!503 = !DILocation(line: 60, column: 16, scope: !175)
!504 = !DILocation(line: 53, column: 8, scope: !175)
!505 = !DILocation(line: 62, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 62, column: 3)
!507 = distinct !DILexicalBlock(scope: !175, file: !1, line: 62, column: 3)
!508 = !DILocation(line: 62, column: 15, scope: !506)
!509 = !DILocation(line: 62, column: 14, scope: !506)
!510 = !DILocation(line: 62, column: 3, scope: !507)
!511 = !DILocation(line: 64, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 64, column: 5)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 64, column: 5)
!514 = distinct !DILexicalBlock(scope: !506, file: !1, line: 62, column: 28)
!515 = !DILocation(line: 66, column: 2, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 65, column: 33)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 65, column: 11)
!518 = distinct !DILexicalBlock(scope: !512, file: !1, line: 64, column: 30)
!519 = !DILocation(line: 63, column: 5, scope: !514)
!520 = !DILocation(line: 63, column: 14, scope: !514)
!521 = !DILocation(line: 53, column: 10, scope: !175)
!522 = !DILocation(line: 64, column: 5, scope: !513)
!523 = !DILocation(line: 65, column: 17, scope: !517)
!524 = !{!482, !484, i64 12}
!525 = !DILocation(line: 65, column: 22, scope: !517)
!526 = !{!482, !483, i64 0}
!527 = !DILocation(line: 65, column: 11, scope: !518)
!528 = !DILocation(line: 67, column: 19, scope: !529)
!529 = distinct !DILexicalBlock(scope: !516, file: !1, line: 67, column: 6)
!530 = !DILocation(line: 67, column: 31, scope: !529)
!531 = !DILocation(line: 67, column: 26, scope: !529)
!532 = !{!483, !483, i64 0}
!533 = !DILocation(line: 67, column: 6, scope: !529)
!534 = !DILocation(line: 67, column: 34, scope: !529)
!535 = !DILocation(line: 67, column: 6, scope: !516)
!536 = !DILocation(line: 68, column: 11, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !1, line: 67, column: 40)
!538 = !DILocation(line: 68, column: 13, scope: !537)
!539 = !DILocation(line: 68, column: 15, scope: !537)
!540 = !DILocation(line: 69, column: 10, scope: !537)
!541 = !DILocation(line: 69, column: 15, scope: !537)
!542 = !{!482, !484, i64 8}
!543 = !DILocation(line: 70, column: 10, scope: !537)
!544 = !DILocation(line: 70, column: 4, scope: !537)
!545 = !DILocation(line: 70, column: 13, scope: !537)
!546 = !DILocation(line: 71, column: 2, scope: !537)
!547 = !DILocation(line: 72, column: 11, scope: !548)
!548 = distinct !DILexicalBlock(scope: !529, file: !1, line: 72, column: 11)
!549 = !DILocation(line: 72, column: 30, scope: !548)
!550 = !DILocation(line: 72, column: 11, scope: !529)
!551 = !DILocation(line: 73, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !1, line: 72, column: 36)
!553 = !DILocation(line: 73, column: 13, scope: !552)
!554 = !DILocation(line: 73, column: 15, scope: !552)
!555 = !DILocation(line: 74, column: 10, scope: !552)
!556 = !DILocation(line: 74, column: 15, scope: !552)
!557 = !DILocation(line: 75, column: 10, scope: !552)
!558 = !DILocation(line: 75, column: 4, scope: !552)
!559 = !DILocation(line: 75, column: 13, scope: !552)
!560 = !DILocation(line: 76, column: 2, scope: !552)
!561 = !DILocation(line: 77, column: 43, scope: !562)
!562 = distinct !DILexicalBlock(scope: !517, file: !1, line: 77, column: 18)
!563 = !DILocation(line: 77, column: 38, scope: !562)
!564 = !DILocation(line: 77, column: 18, scope: !562)
!565 = !DILocation(line: 77, column: 46, scope: !562)
!566 = !DILocation(line: 77, column: 18, scope: !517)
!567 = !DILocation(line: 78, column: 12, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 78, column: 6)
!569 = distinct !DILexicalBlock(scope: !562, file: !1, line: 77, column: 52)
!570 = !DILocation(line: 78, column: 6, scope: !568)
!571 = !DILocation(line: 78, column: 6, scope: !569)
!572 = !DILocation(line: 79, column: 12, scope: !568)
!573 = !DILocation(line: 79, column: 4, scope: !568)
!574 = !DILocation(line: 81, column: 8, scope: !569)
!575 = !DILocation(line: 80, column: 13, scope: !569)
!576 = !DILocation(line: 81, column: 2, scope: !569)
!577 = !DILocation(line: 81, column: 11, scope: !569)
!578 = !DILocation(line: 82, column: 15, scope: !569)
!579 = !DILocation(line: 82, column: 2, scope: !569)
!580 = !DILocation(line: 84, column: 23, scope: !581)
!581 = distinct !DILexicalBlock(scope: !569, file: !1, line: 82, column: 21)
!582 = !DILocation(line: 84, column: 17, scope: !581)
!583 = !DILocation(line: 84, column: 11, scope: !581)
!584 = !DILocation(line: 84, column: 13, scope: !581)
!585 = !DILocation(line: 84, column: 15, scope: !581)
!586 = !DILocation(line: 85, column: 4, scope: !581)
!587 = !DILocation(line: 88, column: 23, scope: !581)
!588 = !DILocation(line: 88, column: 17, scope: !581)
!589 = !DILocation(line: 88, column: 11, scope: !581)
!590 = !DILocation(line: 88, column: 13, scope: !581)
!591 = !DILocation(line: 88, column: 15, scope: !581)
!592 = !DILocation(line: 89, column: 4, scope: !581)
!593 = !DILocation(line: 91, column: 25, scope: !581)
!594 = !DILocation(line: 91, column: 19, scope: !581)
!595 = !DILocation(line: 91, column: 12, scope: !581)
!596 = !DILocation(line: 91, column: 14, scope: !581)
!597 = !DILocation(line: 91, column: 17, scope: !581)
!598 = !DILocation(line: 92, column: 4, scope: !581)
!599 = !DILocation(line: 53, column: 14, scope: !175)
!600 = !DILocation(line: 95, column: 16, scope: !581)
!601 = !DILocation(line: 95, column: 10, scope: !581)
!602 = !DILocation(line: 56, column: 9, scope: !175)
!603 = !DILocation(line: 53, column: 12, scope: !175)
!604 = !DILocation(line: 96, column: 20, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 96, column: 4)
!606 = distinct !DILexicalBlock(scope: !581, file: !1, line: 96, column: 4)
!607 = !DILocation(line: 96, column: 22, scope: !605)
!608 = !DILocation(line: 96, column: 14, scope: !605)
!609 = !DILocation(line: 96, column: 27, scope: !605)
!610 = !DILocation(line: 96, column: 4, scope: !606)
!611 = !DILocation(line: 98, column: 39, scope: !612)
!612 = distinct !DILexicalBlock(scope: !605, file: !1, line: 98, column: 10)
!613 = !DILocation(line: 98, column: 10, scope: !612)
!614 = !DILocation(line: 98, column: 52, scope: !612)
!615 = !DILocation(line: 98, column: 10, scope: !605)
!616 = !DILocation(line: 99, column: 21, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !1, line: 99, column: 13)
!618 = !DILocation(line: 99, column: 33, scope: !617)
!619 = !DILocation(line: 100, column: 8, scope: !617)
!620 = !DILocation(line: 100, column: 38, scope: !617)
!621 = !DILocation(line: 100, column: 31, scope: !617)
!622 = !DILocation(line: 100, column: 29, scope: !617)
!623 = !DILocation(line: 99, column: 13, scope: !612)
!624 = !DILocation(line: 101, column: 8, scope: !617)
!625 = !DILocation(line: 102, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !581, file: !1, line: 102, column: 8)
!627 = !DILocation(line: 102, column: 8, scope: !581)
!628 = !DILocation(line: 103, column: 21, scope: !626)
!629 = !DILocation(line: 103, column: 19, scope: !626)
!630 = !DILocation(line: 103, column: 6, scope: !626)
!631 = !DILocation(line: 106, column: 14, scope: !626)
!632 = !DILocation(line: 105, column: 6, scope: !626)
!633 = !DILocation(line: 109, column: 29, scope: !581)
!634 = !DILocation(line: 109, column: 23, scope: !581)
!635 = !DILocation(line: 109, column: 12, scope: !581)
!636 = !DILocation(line: 109, column: 14, scope: !581)
!637 = !DILocation(line: 109, column: 4, scope: !581)
!638 = !DILocation(line: 109, column: 21, scope: !581)
!639 = !DILocation(line: 110, column: 10, scope: !640)
!640 = distinct !DILexicalBlock(scope: !581, file: !1, line: 110, column: 9)
!641 = !DILocation(line: 110, column: 11, scope: !640)
!642 = !DILocation(line: 110, column: 17, scope: !640)
!643 = !DILocation(line: 110, column: 14, scope: !640)
!644 = !DILocation(line: 110, column: 24, scope: !640)
!645 = !DILocation(line: 111, column: 12, scope: !640)
!646 = !{!444, !444, i64 0}
!647 = !DILocation(line: 111, column: 24, scope: !640)
!648 = !DILocation(line: 111, column: 31, scope: !640)
!649 = !DILocation(line: 111, column: 43, scope: !640)
!650 = !DILocation(line: 111, column: 35, scope: !640)
!651 = !DILocation(line: 110, column: 9, scope: !581)
!652 = !DILocation(line: 112, column: 25, scope: !640)
!653 = !DILocation(line: 112, column: 42, scope: !640)
!654 = !DILocation(line: 112, column: 6, scope: !640)
!655 = !DILocation(line: 112, column: 23, scope: !640)
!656 = !DILocation(line: 114, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !640, file: !1, line: 113, column: 9)
!658 = !DILocation(line: 114, column: 15, scope: !657)
!659 = !DILocation(line: 115, column: 31, scope: !657)
!660 = !DILocation(line: 115, column: 25, scope: !657)
!661 = !DILocation(line: 115, column: 16, scope: !657)
!662 = !DILocation(line: 115, column: 6, scope: !657)
!663 = !DILocation(line: 115, column: 23, scope: !657)
!664 = !DILocation(line: 116, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !657, file: !1, line: 116, column: 11)
!666 = !DILocation(line: 116, column: 13, scope: !665)
!667 = !DILocation(line: 116, column: 19, scope: !665)
!668 = !DILocation(line: 116, column: 16, scope: !665)
!669 = !DILocation(line: 116, column: 26, scope: !665)
!670 = !DILocation(line: 117, column: 7, scope: !665)
!671 = !DILocation(line: 117, column: 19, scope: !665)
!672 = !DILocation(line: 117, column: 26, scope: !665)
!673 = !DILocation(line: 117, column: 38, scope: !665)
!674 = !DILocation(line: 117, column: 30, scope: !665)
!675 = !DILocation(line: 116, column: 11, scope: !657)
!676 = !DILocation(line: 119, column: 12, scope: !665)
!677 = !DILocation(line: 118, column: 8, scope: !665)
!678 = !DILocation(line: 120, column: 12, scope: !657)
!679 = !DILocation(line: 120, column: 6, scope: !657)
!680 = !DILocation(line: 120, column: 15, scope: !657)
!681 = !DILocation(line: 121, column: 31, scope: !657)
!682 = !DILocation(line: 121, column: 25, scope: !657)
!683 = !DILocation(line: 121, column: 16, scope: !657)
!684 = !DILocation(line: 121, column: 6, scope: !657)
!685 = !DILocation(line: 121, column: 23, scope: !657)
!686 = !DILocation(line: 125, column: 4, scope: !581)
!687 = !DILocation(line: 126, column: 2, scope: !581)
!688 = !DILocation(line: 128, column: 8, scope: !569)
!689 = !DILocation(line: 128, column: 2, scope: !569)
!690 = !DILocation(line: 128, column: 11, scope: !569)
!691 = !DILocation(line: 129, column: 7, scope: !569)
!692 = !DILocation(line: 132, column: 8, scope: !693)
!693 = distinct !DILexicalBlock(scope: !175, file: !1, line: 132, column: 7)
!694 = !DILocation(line: 132, column: 7, scope: !175)
!695 = !DILocation(line: 134, column: 29, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 134, column: 5)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 134, column: 5)
!698 = distinct !DILexicalBlock(scope: !693, file: !1, line: 132, column: 19)
!699 = !DILocation(line: 134, column: 18, scope: !696)
!700 = !DILocation(line: 134, column: 5, scope: !697)
!701 = !DILocation(line: 135, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !1, line: 135, column: 11)
!703 = distinct !DILexicalBlock(scope: !696, file: !1, line: 134, column: 33)
!704 = !DILocation(line: 135, column: 11, scope: !703)
!705 = !DILocation(line: 136, column: 12, scope: !702)
!706 = !DILocation(line: 136, column: 8, scope: !702)
!707 = !DILocation(line: 136, column: 2, scope: !702)
!708 = !DILocation(line: 136, column: 11, scope: !702)
!709 = !DILocation(line: 138, column: 14, scope: !698)
!710 = !DILocation(line: 138, column: 12, scope: !698)
!711 = !DILocation(line: 139, column: 3, scope: !698)
!712 = !DILocation(line: 140, column: 3, scope: !175)
!713 = !DILocation(line: 141, column: 1, scope: !175)
!714 = !DILocation(line: 143, column: 24, scope: !194)
!715 = !DILocation(line: 143, column: 35, scope: !194)
!716 = !DILocation(line: 143, column: 49, scope: !194)
!717 = !DILocation(line: 145, column: 7, scope: !194)
!718 = !DILocation(line: 147, column: 14, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 147, column: 3)
!720 = distinct !DILexicalBlock(scope: !194, file: !1, line: 147, column: 3)
!721 = !DILocation(line: 147, column: 3, scope: !720)
!722 = !DILocation(line: 148, column: 22, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !1, line: 148, column: 9)
!724 = !DILocation(line: 148, column: 9, scope: !723)
!725 = !DILocation(line: 148, column: 37, scope: !723)
!726 = !DILocation(line: 148, column: 9, scope: !719)
!727 = !DILocation(line: 149, column: 21, scope: !723)
!728 = !DILocation(line: 149, column: 23, scope: !723)
!729 = !DILocation(line: 149, column: 14, scope: !723)
!730 = !DILocation(line: 149, column: 7, scope: !723)
!731 = !DILocation(line: 151, column: 3, scope: !194)
!732 = !DILocation(line: 153, column: 3, scope: !194)
!733 = !DILocation(line: 154, column: 1, scope: !194)
!734 = !DILocation(line: 156, column: 26, scope: !202)
!735 = !DILocation(line: 156, column: 37, scope: !202)
!736 = !DILocation(line: 156, column: 51, scope: !202)
!737 = !DILocation(line: 158, column: 7, scope: !202)
!738 = !DILocation(line: 160, column: 14, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 160, column: 3)
!740 = distinct !DILexicalBlock(scope: !202, file: !1, line: 160, column: 3)
!741 = !DILocation(line: 160, column: 3, scope: !740)
!742 = !DILocation(line: 161, column: 22, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !1, line: 161, column: 9)
!744 = !DILocation(line: 161, column: 9, scope: !743)
!745 = !DILocation(line: 161, column: 37, scope: !743)
!746 = !DILocation(line: 161, column: 9, scope: !739)
!747 = !DILocation(line: 162, column: 21, scope: !743)
!748 = !DILocation(line: 162, column: 23, scope: !743)
!749 = !DILocation(line: 162, column: 14, scope: !743)
!750 = !DILocation(line: 162, column: 7, scope: !743)
!751 = !DILocation(line: 164, column: 3, scope: !202)
!752 = !DILocation(line: 166, column: 3, scope: !202)
!753 = !DILocation(line: 167, column: 1, scope: !202)
!754 = !DILocation(line: 169, column: 26, scope: !208)
!755 = !DILocation(line: 169, column: 37, scope: !208)
!756 = !DILocation(line: 169, column: 51, scope: !208)
!757 = !DILocation(line: 171, column: 7, scope: !208)
!758 = !DILocation(line: 173, column: 14, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 173, column: 3)
!760 = distinct !DILexicalBlock(scope: !208, file: !1, line: 173, column: 3)
!761 = !DILocation(line: 173, column: 3, scope: !760)
!762 = !DILocation(line: 174, column: 22, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !1, line: 174, column: 9)
!764 = !DILocation(line: 174, column: 9, scope: !763)
!765 = !DILocation(line: 174, column: 37, scope: !763)
!766 = !DILocation(line: 174, column: 9, scope: !759)
!767 = !DILocation(line: 175, column: 21, scope: !763)
!768 = !DILocation(line: 175, column: 23, scope: !763)
!769 = !DILocation(line: 175, column: 14, scope: !763)
!770 = !DILocation(line: 175, column: 7, scope: !763)
!771 = !DILocation(line: 177, column: 3, scope: !208)
!772 = !DILocation(line: 179, column: 3, scope: !208)
!773 = !DILocation(line: 180, column: 1, scope: !208)
!774 = !DILocation(line: 182, column: 26, scope: !216)
!775 = !DILocation(line: 182, column: 37, scope: !216)
!776 = !DILocation(line: 182, column: 51, scope: !216)
!777 = !DILocation(line: 184, column: 7, scope: !216)
!778 = !DILocation(line: 186, column: 14, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 186, column: 3)
!780 = distinct !DILexicalBlock(scope: !216, file: !1, line: 186, column: 3)
!781 = !DILocation(line: 186, column: 3, scope: !780)
!782 = !DILocation(line: 187, column: 22, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !1, line: 187, column: 9)
!784 = !DILocation(line: 187, column: 9, scope: !783)
!785 = !DILocation(line: 187, column: 37, scope: !783)
!786 = !DILocation(line: 187, column: 9, scope: !779)
!787 = !DILocation(line: 188, column: 22, scope: !783)
!788 = !DILocation(line: 188, column: 24, scope: !783)
!789 = !DILocation(line: 188, column: 14, scope: !783)
!790 = !DILocation(line: 188, column: 7, scope: !783)
!791 = !DILocation(line: 190, column: 3, scope: !216)
!792 = !DILocation(line: 192, column: 3, scope: !216)
!793 = !DILocation(line: 193, column: 1, scope: !216)
!794 = !DILocation(line: 195, column: 26, scope: !224)
!795 = !DILocation(line: 195, column: 37, scope: !224)
!796 = !DILocation(line: 195, column: 51, scope: !224)
!797 = !DILocation(line: 197, column: 7, scope: !224)
!798 = !DILocation(line: 199, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !1, line: 199, column: 3)
!800 = distinct !DILexicalBlock(scope: !224, file: !1, line: 199, column: 3)
!801 = !DILocation(line: 199, column: 3, scope: !800)
!802 = !DILocation(line: 200, column: 22, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !1, line: 200, column: 9)
!804 = !DILocation(line: 200, column: 9, scope: !803)
!805 = !DILocation(line: 200, column: 37, scope: !803)
!806 = !DILocation(line: 200, column: 9, scope: !799)
!807 = !DILocation(line: 201, column: 20, scope: !803)
!808 = !DILocation(line: 201, column: 7, scope: !803)
!809 = !DILocation(line: 203, column: 3, scope: !224)
!810 = !DILocation(line: 205, column: 3, scope: !224)
!811 = !DILocation(line: 206, column: 1, scope: !224)
!812 = !DILocation(line: 208, column: 27, scope: !230)
!813 = !DILocation(line: 208, column: 38, scope: !230)
!814 = !DILocation(line: 208, column: 52, scope: !230)
!815 = !DILocation(line: 210, column: 7, scope: !230)
!816 = !DILocation(line: 212, column: 14, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 212, column: 3)
!818 = distinct !DILexicalBlock(scope: !230, file: !1, line: 212, column: 3)
!819 = !DILocation(line: 212, column: 3, scope: !818)
!820 = !DILocation(line: 213, column: 22, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !1, line: 213, column: 9)
!822 = !DILocation(line: 213, column: 9, scope: !821)
!823 = !DILocation(line: 213, column: 37, scope: !821)
!824 = !DILocation(line: 213, column: 9, scope: !817)
!825 = !DILocation(line: 214, column: 20, scope: !821)
!826 = !DILocation(line: 214, column: 22, scope: !821)
!827 = !DILocation(line: 214, column: 14, scope: !821)
!828 = !DILocation(line: 214, column: 7, scope: !821)
!829 = !DILocation(line: 216, column: 3, scope: !230)
!830 = !DILocation(line: 218, column: 3, scope: !230)
!831 = !DILocation(line: 219, column: 1, scope: !230)
!832 = !DILocation(line: 221, column: 23, scope: !236)
!833 = !DILocation(line: 225, column: 9, scope: !236)
!834 = !DILocation(line: 226, column: 14, scope: !236)
!835 = !DILocation(line: 226, column: 3, scope: !236)
!836 = !DILocation(line: 228, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !236, file: !1, line: 226, column: 20)
!838 = !DILocation(line: 229, column: 5, scope: !837)
!839 = !DILocation(line: 232, column: 5, scope: !837)
!840 = !DILocation(line: 233, column: 5, scope: !837)
!841 = !DILocation(line: 235, column: 5, scope: !837)
!842 = !DILocation(line: 236, column: 5, scope: !837)
!843 = !DILocation(line: 238, column: 15, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !1, line: 238, column: 9)
!845 = !DILocation(line: 238, column: 17, scope: !844)
!846 = !DILocation(line: 238, column: 9, scope: !844)
!847 = !DILocation(line: 238, column: 9, scope: !837)
!848 = !DILocation(line: 239, column: 11, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 239, column: 11)
!850 = distinct !DILexicalBlock(scope: !844, file: !1, line: 238, column: 21)
!851 = !DILocation(line: 239, column: 30, scope: !849)
!852 = !DILocation(line: 239, column: 11, scope: !850)
!853 = !DILocation(line: 240, column: 2, scope: !849)
!854 = !DILocation(line: 242, column: 2, scope: !849)
!855 = !DILocation(line: 246, column: 5, scope: !837)
!856 = !DILocation(line: 247, column: 5, scope: !837)
!857 = !DILocation(line: 249, column: 5, scope: !837)
!858 = !DILocation(line: 250, column: 5, scope: !837)
!859 = !DILocation(line: 252, column: 3, scope: !236)
!860 = !DILocation(line: 255, column: 24, scope: !241)
!861 = !DILocation(line: 255, column: 32, scope: !241)
!862 = !DILocation(line: 255, column: 47, scope: !241)
!863 = !DILocation(line: 258, column: 8, scope: !241)
!864 = !DILocation(line: 258, column: 3, scope: !241)
!865 = !DILocation(line: 258, column: 16, scope: !241)
!866 = !DILocation(line: 257, column: 8, scope: !241)
!867 = !DILocation(line: 260, column: 8, scope: !241)
!868 = !DILocation(line: 266, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 266, column: 3)
!870 = distinct !DILexicalBlock(scope: !241, file: !1, line: 266, column: 3)
!871 = !DILocation(line: 266, column: 3, scope: !870)
!872 = !DILocation(line: 267, column: 23, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !1, line: 267, column: 9)
!874 = !DILocation(line: 267, column: 10, scope: !873)
!875 = !DILocation(line: 267, column: 40, scope: !873)
!876 = !DILocation(line: 267, column: 45, scope: !873)
!877 = !DILocation(line: 267, column: 55, scope: !873)
!878 = !DILocation(line: 267, column: 48, scope: !873)
!879 = !DILocation(line: 267, column: 9, scope: !869)
!880 = !DILocation(line: 270, column: 7, scope: !241)
!881 = !DILocation(line: 273, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 270, column: 19)
!883 = distinct !DILexicalBlock(scope: !241, file: !1, line: 270, column: 7)
!884 = !DILocation(line: 274, column: 5, scope: !882)
!885 = !DILocation(line: 276, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 276, column: 11)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 275, column: 31)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 275, column: 5)
!889 = distinct !DILexicalBlock(scope: !882, file: !1, line: 275, column: 5)
!890 = !DILocation(line: 278, column: 4, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 277, column: 6)
!892 = distinct !DILexicalBlock(scope: !886, file: !1, line: 276, column: 46)
!893 = !DILocation(line: 275, column: 5, scope: !889)
!894 = !DILocation(line: 276, column: 38, scope: !886)
!895 = !DILocation(line: 276, column: 23, scope: !886)
!896 = !DILocation(line: 276, column: 27, scope: !886)
!897 = !DILocation(line: 276, column: 11, scope: !887)
!898 = !DILocation(line: 277, column: 12, scope: !891)
!899 = !DILocation(line: 277, column: 17, scope: !891)
!900 = !DILocation(line: 277, column: 6, scope: !892)
!901 = !DILocation(line: 280, column: 4, scope: !891)
!902 = !DILocation(line: 281, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !892, file: !1, line: 281, column: 6)
!904 = !DILocation(line: 281, column: 36, scope: !903)
!905 = !DILocation(line: 281, column: 35, scope: !903)
!906 = !DILocation(line: 281, column: 17, scope: !903)
!907 = !DILocation(line: 281, column: 6, scope: !892)
!908 = !DILocation(line: 282, column: 4, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !1, line: 281, column: 71)
!910 = !DILocation(line: 283, column: 4, scope: !909)
!911 = !DILocation(line: 285, column: 2, scope: !909)
!912 = !DILocation(line: 285, column: 13, scope: !913)
!913 = distinct !DILexicalBlock(scope: !903, file: !1, line: 285, column: 13)
!914 = !DILocation(line: 285, column: 24, scope: !913)
!915 = !DILocation(line: 287, column: 4, scope: !916)
!916 = distinct !DILexicalBlock(scope: !913, file: !1, line: 285, column: 33)
!917 = !DILocation(line: 285, column: 13, scope: !903)
!918 = !DILocation(line: 289, column: 2, scope: !916)
!919 = !DILocation(line: 290, column: 4, scope: !913)
!920 = !DILocation(line: 292, column: 8, scope: !892)
!921 = !DILocation(line: 259, column: 9, scope: !241)
!922 = !DILocation(line: 293, column: 2, scope: !892)
!923 = !DILocation(line: 294, column: 2, scope: !892)
!924 = !DILocation(line: 295, column: 7, scope: !892)
!925 = !DILocation(line: 297, column: 5, scope: !882)
!926 = !DILocation(line: 298, column: 3, scope: !882)
!927 = !DILocation(line: 299, column: 1, scope: !241)
!928 = !DILocation(line: 301, column: 21, scope: !313)
!929 = !DILocation(line: 301, column: 29, scope: !313)
!930 = !DILocation(line: 301, column: 44, scope: !313)
!931 = !DILocation(line: 301, column: 54, scope: !313)
!932 = !DILocation(line: 305, column: 3, scope: !313)
!933 = !DILocation(line: 325, column: 16, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 325, column: 5)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 325, column: 5)
!936 = distinct !DILexicalBlock(scope: !313, file: !1, line: 305, column: 18)
!937 = !DILocation(line: 325, column: 5, scope: !935)
!938 = !DILocation(line: 316, column: 16, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 316, column: 5)
!940 = distinct !DILexicalBlock(scope: !936, file: !1, line: 316, column: 5)
!941 = !DILocation(line: 316, column: 5, scope: !940)
!942 = !DILocation(line: 307, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !1, line: 307, column: 5)
!944 = distinct !DILexicalBlock(scope: !936, file: !1, line: 307, column: 5)
!945 = !DILocation(line: 307, column: 5, scope: !944)
!946 = !DILocation(line: 308, column: 17, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !1, line: 308, column: 11)
!948 = !DILocation(line: 308, column: 21, scope: !947)
!949 = !DILocation(line: 308, column: 11, scope: !943)
!950 = !DILocation(line: 309, column: 31, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !1, line: 308, column: 31)
!952 = !DILocation(line: 309, column: 2, scope: !951)
!953 = !DILocation(line: 303, column: 9, scope: !313)
!954 = !DILocation(line: 310, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 310, column: 2)
!956 = distinct !DILexicalBlock(scope: !951, file: !1, line: 310, column: 2)
!957 = !DILocation(line: 310, column: 19, scope: !955)
!958 = !DILocation(line: 310, column: 11, scope: !955)
!959 = !DILocation(line: 310, column: 2, scope: !956)
!960 = !DILocation(line: 311, column: 4, scope: !955)
!961 = !DILocation(line: 312, column: 2, scope: !951)
!962 = !DILocation(line: 313, column: 7, scope: !951)
!963 = !DILocation(line: 317, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !939, file: !1, line: 317, column: 11)
!965 = !DILocation(line: 317, column: 21, scope: !964)
!966 = !DILocation(line: 317, column: 11, scope: !939)
!967 = !DILocation(line: 318, column: 52, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !1, line: 317, column: 31)
!969 = !DILocation(line: 318, column: 2, scope: !968)
!970 = !DILocation(line: 319, column: 17, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 319, column: 2)
!972 = distinct !DILexicalBlock(scope: !968, file: !1, line: 319, column: 2)
!973 = !DILocation(line: 319, column: 19, scope: !971)
!974 = !DILocation(line: 319, column: 11, scope: !971)
!975 = !DILocation(line: 319, column: 2, scope: !972)
!976 = !DILocation(line: 320, column: 4, scope: !971)
!977 = !DILocation(line: 321, column: 2, scope: !968)
!978 = !DILocation(line: 322, column: 7, scope: !968)
!979 = !DILocation(line: 326, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !934, file: !1, line: 326, column: 11)
!981 = !DILocation(line: 326, column: 21, scope: !980)
!982 = !DILocation(line: 326, column: 11, scope: !934)
!983 = !DILocation(line: 327, column: 41, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !1, line: 326, column: 31)
!985 = !DILocation(line: 327, column: 2, scope: !984)
!986 = !DILocation(line: 328, column: 17, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !1, line: 328, column: 2)
!988 = distinct !DILexicalBlock(scope: !984, file: !1, line: 328, column: 2)
!989 = !DILocation(line: 328, column: 19, scope: !987)
!990 = !DILocation(line: 328, column: 11, scope: !987)
!991 = !DILocation(line: 328, column: 2, scope: !988)
!992 = !DILocation(line: 329, column: 4, scope: !987)
!993 = !DILocation(line: 330, column: 2, scope: !984)
!994 = !DILocation(line: 331, column: 7, scope: !984)
!995 = !DILocation(line: 334, column: 1, scope: !313)
