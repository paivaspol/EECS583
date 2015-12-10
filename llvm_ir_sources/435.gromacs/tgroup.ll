; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tgroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_bin = type { i32, i32, double* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_energy = type { float, double, double, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"grps->tcstat\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tgroup.c\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"grps->grpstat\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%12.5e\0A\00", align 1
@accumulate_u.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@stdlog = external global %struct.__sFILE*
@.str4 = private unnamed_addr constant [13 x i8] c"gstat[i].aid\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"estat->ee[i]\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !132, metadata !409), !dbg !410
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !133, metadata !409), !dbg !411
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !412
  %2 = load i32* %1, align 4, !dbg !414, !tbaa !415
  %3 = add nsw i32 %2, -1, !dbg !414
  store i32 %3, i32* %1, align 4, !dbg !414, !tbaa !415
  %4 = icmp sgt i32 %2, 0, !dbg !424
  br i1 %4, label %._crit_edge, label %5, !dbg !425

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !426
  br label %10, !dbg !425

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !427
  %7 = load i32* %6, align 4, !dbg !427, !tbaa !428
  %8 = icmp sle i32 %2, %7, !dbg !429
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !430
  %or.cond = or i1 %9, %8, !dbg !431
  br i1 %or.cond, label %15, label %10, !dbg !431

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !426
  %11 = trunc i32 %_c to i8, !dbg !432
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !433
  %13 = load i8** %12, align 8, !dbg !434, !tbaa !435
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !434
  store i8* %14, i8** %12, align 8, !dbg !434, !tbaa !435
  store i8 %11, i8* %13, align 1, !dbg !436, !tbaa !437
  br label %17, !dbg !438

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !439
  br label %17, !dbg !440

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !441
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !139, metadata !409), !dbg !442
  %1 = icmp sgt i32 %__signo, 32, !dbg !443
  br i1 %1, label %5, label %2, !dbg !444

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !445
  %4 = shl i32 1, %3, !dbg !446
  br label %5, !dbg !444

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !444
  ret i32 %6, !dbg !447
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_groups(%struct.__sFILE* nocapture readnone %log, %struct.t_mdatoms* nocapture readonly %md, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture %grps) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !246, metadata !409), !dbg !448
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !247, metadata !409), !dbg !449
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !248, metadata !409), !dbg !450
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !249, metadata !409), !dbg !451
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !452
  %2 = load i32* %1, align 4, !dbg !452, !tbaa !453
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %2, i32 52) #9, !dbg !452
  %4 = bitcast i8* %3 to %struct.t_grp_tcstat*, !dbg !452
  %5 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !452
  %6 = bitcast %struct.t_grp_tcstat** %5 to i8**, !dbg !452
  store i8* %3, i8** %6, align 8, !dbg !452, !tbaa !455
  %7 = load i32* %1, align 4, !dbg !460, !tbaa !453
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !341, metadata !409) #8, !dbg !461
  tail call void @llvm.dbg.value(metadata %struct.t_grp_tcstat* %4, i64 0, metadata !342, metadata !409) #8, !dbg !463
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !409) #8, !dbg !464
  %8 = icmp sgt i32 %7, 0, !dbg !465
  br i1 %8, label %.lr.ph.i, label %init_grptcstat.exit, !dbg !468

.lr.ph.i:                                         ; preds = %0
  %9 = add i32 %7, -1, !dbg !468
  br label %10, !dbg !468

; <label>:10                                      ; preds = %10, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %10 ], !dbg !469
  %11 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 0, !dbg !470
  store float 0.000000e+00, float* %11, align 4, !dbg !472, !tbaa !473
  %12 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 1, !dbg !475
  store float 1.000000e+00, float* %12, align 4, !dbg !476, !tbaa !477
  %13 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 2, i64 0, !dbg !478
  tail call void @llvm.dbg.value(metadata [3 x float]* %13, i64 0, metadata !375, metadata !409) #8, !dbg !479
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !376, metadata !409) #8, !dbg !481
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !468
  %14 = bitcast [3 x float]* %13 to i8*, !dbg !468
  tail call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 40, i32 4, i1 false) #8, !dbg !482
  %lftr.wideiv10 = trunc i64 %indvars.iv.i to i32, !dbg !468
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %9, !dbg !468
  br i1 %exitcond11, label %init_grptcstat.exit, label %10, !dbg !468

init_grptcstat.exit:                              ; preds = %10, %0
  %15 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !483
  %16 = load i32* %15, align 4, !dbg !483, !tbaa !484
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 116, i32 %16, i32 56) #9, !dbg !483
  %18 = bitcast i8* %17 to %struct.t_grp_acc*, !dbg !483
  %19 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !483
  %20 = bitcast %struct.t_grp_acc** %19 to i8**, !dbg !483
  store i8* %17, i8** %20, align 8, !dbg !483, !tbaa !485
  %21 = load i32* %15, align 4, !dbg !486, !tbaa !484
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !349, metadata !409) #8, !dbg !487
  %22 = icmp sgt i32 %21, 0, !dbg !489
  br i1 %22, label %.preheader2.i, label %init_grpstat.exit, !dbg !491

.preheader2.i:                                    ; preds = %init_grptcstat.exit
  %23 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !492
  %24 = load i32* %23, align 4, !dbg !492, !tbaa !496
  %25 = icmp sgt i32 %24, 0, !dbg !498
  br i1 %25, label %.lr.ph7.i, label %.lr.ph5.i, !dbg !499

.lr.ph7.i:                                        ; preds = %.preheader2.i
  %26 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !500
  %27 = load i16** %26, align 8, !dbg !500, !tbaa !502
  %28 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !503
  %29 = load float** %28, align 8, !dbg !503, !tbaa !504
  %30 = sext i32 %24 to i64
  %31 = add nsw i64 %30, -1, !dbg !499
  br label %33, !dbg !499

.lr.ph5.i:                                        ; preds = %33, %.preheader2.i
  %32 = add i32 %21, -1, !dbg !505
  br label %47, !dbg !505

; <label>:33                                      ; preds = %33, %.lr.ph7.i
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %33 ], !dbg !507
  %34 = getelementptr inbounds i16* %27, i64 %indvars.iv10.i, !dbg !508
  %35 = load i16* %34, align 2, !dbg !508, !tbaa !509
  %36 = zext i16 %35 to i64, !dbg !510
  %37 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %36, i32 0, !dbg !511
  %38 = load i32* %37, align 4, !dbg !512, !tbaa !513
  %39 = add nsw i32 %38, 1, !dbg !512
  store i32 %39, i32* %37, align 4, !dbg !512, !tbaa !513
  %40 = getelementptr inbounds float* %29, i64 %indvars.iv10.i, !dbg !515
  %41 = load float* %40, align 4, !dbg !515, !tbaa !516
  %42 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %36, i32 2, !dbg !517
  %43 = load float* %42, align 4, !dbg !518, !tbaa !519
  %44 = fadd float %41, %43, !dbg !518
  store float %44, float* %42, align 4, !dbg !518, !tbaa !519
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !dbg !499
  %exitcond9 = icmp eq i64 %indvars.iv10.i, %31, !dbg !499
  br i1 %exitcond9, label %.lr.ph5.i, label %33, !dbg !499

.preheader.i:                                     ; preds = %47
  %.pre.i = load i32* %23, align 4, !dbg !520, !tbaa !496
  %45 = icmp sgt i32 %.pre.i, 0, !dbg !523
  br i1 %45, label %.lr.ph.i4, label %init_grpstat.exit, !dbg !524

.lr.ph.i4:                                        ; preds = %.preheader.i
  %46 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !525
  %.pre12.i = load i16** %46, align 8, !dbg !525, !tbaa !502
  br label %53, !dbg !524

; <label>:47                                      ; preds = %47, %.lr.ph5.i
  %indvars.iv8.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next9.i, %47 ], !dbg !507
  %48 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %indvars.iv8.i, i32 0, !dbg !527
  %49 = load i32* %48, align 4, !dbg !527, !tbaa !513
  %50 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 78, i32 %49, i32 4) #9, !dbg !527
  %51 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %indvars.iv8.i, i32 1, !dbg !527
  %52 = bitcast i32** %51 to i8**, !dbg !527
  store i8* %50, i8** %52, align 8, !dbg !527, !tbaa !530
  store i32 0, i32* %48, align 4, !dbg !531, !tbaa !513
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1, !dbg !505
  %lftr.wideiv = trunc i64 %indvars.iv8.i to i32, !dbg !505
  %exitcond = icmp eq i32 %lftr.wideiv, %32, !dbg !505
  br i1 %exitcond, label %.preheader.i, label %47, !dbg !505

; <label>:53                                      ; preds = %53, %.lr.ph.i4
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i8, %53 ], !dbg !507
  %54 = getelementptr inbounds i16* %.pre12.i, i64 %indvars.iv.i7, !dbg !532
  %55 = load i16* %54, align 2, !dbg !532, !tbaa !509
  %56 = zext i16 %55 to i64, !dbg !533
  %57 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %56, i32 0, !dbg !534
  %58 = load i32* %57, align 4, !dbg !535, !tbaa !513
  %59 = add nsw i32 %58, 1, !dbg !535
  store i32 %59, i32* %57, align 4, !dbg !535, !tbaa !513
  %60 = sext i32 %58 to i64, !dbg !536
  %61 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %56, i32 1, !dbg !537
  %62 = load i32** %61, align 8, !dbg !537, !tbaa !530
  %63 = getelementptr inbounds i32* %62, i64 %60, !dbg !536
  %64 = trunc i64 %indvars.iv.i7 to i32, !dbg !538
  store i32 %64, i32* %63, align 4, !dbg !538, !tbaa !539
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1, !dbg !524
  %65 = load i32* %23, align 4, !dbg !520, !tbaa !496
  %66 = sext i32 %65 to i64, !dbg !523
  %67 = icmp slt i64 %indvars.iv.next.i8, %66, !dbg !523
  br i1 %67, label %53, label %init_grpstat.exit, !dbg !524

init_grpstat.exit:                                ; preds = %53, %init_grptcstat.exit, %.preheader.i
  %68 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3, !dbg !540
  %69 = load i32* %68, align 4, !dbg !540, !tbaa !541
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* null, i64 0, metadata !360, metadata !409) #8, !dbg !542
  %70 = mul nsw i32 %69, %69, !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %70, i64 0, metadata !364, metadata !409) #8, !dbg !545
  %71 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !546
  store i32 %70, i32* %71, align 4, !dbg !547, !tbaa !548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !363, metadata !409) #8, !dbg !549
  br label %72, !dbg !550

; <label>:72                                      ; preds = %72, %init_grpstat.exit
  %indvars.iv.i1 = phi i64 [ 0, %init_grpstat.exit ], [ %indvars.iv.next.i2, %72 ], !dbg !552
  %73 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %70, i32 4) #9, !dbg !553
  %74 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i1, !dbg !553
  %75 = bitcast float** %74 to i8**, !dbg !553
  store i8* %73, i8** %75, align 8, !dbg !553, !tbaa !556
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1, !dbg !550
  %exitcond.i3 = icmp eq i64 %indvars.iv.next.i2, 7, !dbg !550
  br i1 %exitcond.i3, label %init_grpener.exit, label %72, !dbg !550

init_grpener.exit:                                ; preds = %72
  ret void, !dbg !557
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_estat(%struct.__sFILE* %log, %struct.t_grp_ener* nocapture readonly %estat) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !256, metadata !409), !dbg !558
  tail call void @llvm.dbg.value(metadata %struct.t_grp_ener* %estat, i64 0, metadata !257, metadata !409), !dbg !559
  %1 = icmp eq %struct.__sFILE* %log, null, !dbg !560
  br i1 %1, label %.loopexit, label %.preheader, !dbg !562

.preheader:                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 0, !dbg !563
  %3 = load i32* %2, align 4, !dbg !563, !tbaa !548
  %4 = icmp sgt i32 %3, 0, !dbg !566
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !567

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 1, i64 1, !dbg !568
  br label %6, !dbg !567

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = load float** %5, align 8, !dbg !568, !tbaa !556
  %8 = getelementptr inbounds float* %7, i64 %indvars.iv, !dbg !568
  %9 = load float* %8, align 4, !dbg !568, !tbaa !516
  %10 = fpext float %9 to double, !dbg !568
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), double %10) #9, !dbg !570
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !567
  %12 = load i32* %2, align 4, !dbg !563, !tbaa !548
  %13 = sext i32 %12 to i64, !dbg !566
  %14 = icmp slt i64 %indvars.iv.next, %13, !dbg !566
  br i1 %14, label %6, label %.loopexit, !dbg !567

.loopexit:                                        ; preds = %6, %.preheader, %0
  ret void, !dbg !571
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rms_ener(%struct.t_energy* nocapture readonly %e, i32 %nsteps) #6 {
  tail call void @llvm.dbg.value(metadata %struct.t_energy* %e, i64 0, metadata !273, metadata !409), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %nsteps, i64 0, metadata !274, metadata !409), !dbg !573
  %1 = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 3, !dbg !574
  %2 = load float* %1, align 4, !dbg !574, !tbaa !575
  %3 = sitofp i32 %nsteps to float, !dbg !578
  %4 = fmul float %3, %2, !dbg !579
  %5 = fpext float %4 to double, !dbg !580
  %6 = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 2, !dbg !581
  %7 = load double* %6, align 8, !dbg !581, !tbaa !582
  %8 = fmul double %7, %7, !dbg !583
  %9 = fsub double %5, %8, !dbg !584
  %10 = fptrunc double %9 to float, !dbg !580
  tail call void @llvm.dbg.value(metadata float %10, i64 0, metadata !275, metadata !409), !dbg !585
  %11 = fcmp ugt float %10, 0.000000e+00, !dbg !586
  br i1 %11, label %12, label %18, !dbg !588

; <label>:12                                      ; preds = %0
  %13 = fpext float %10 to double, !dbg !589
  %14 = tail call double @sqrt(double %13) #10, !dbg !590
  %15 = sitofp i32 %nsteps to double, !dbg !591
  %16 = fdiv double %14, %15, !dbg !592
  %17 = fptrunc double %16 to float, !dbg !590
  br label %18, !dbg !593

; <label>:18                                      ; preds = %0, %12
  %.0 = phi float [ %17, %12 ], [ 0.000000e+00, %0 ]
  ret float %.0, !dbg !594
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !291, metadata !409), !dbg !595
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !292, metadata !409), !dbg !596
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !293, metadata !409), !dbg !597
  %1 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !598, !tbaa !556
  %2 = icmp eq %struct.t_bin* %1, null, !dbg !600
  br i1 %2, label %3, label %5, !dbg !601

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.t_bin* @mk_bin() #9, !dbg !602
  store %struct.t_bin* %4, %struct.t_bin** @accumulate_u.rb, align 8, !dbg !604, !tbaa !556
  br label %.preheader, !dbg !605

; <label>:5                                       ; preds = %0
  tail call void @reset_bin(%struct.t_bin* %1) #9, !dbg !606
  br label %.preheader

.preheader:                                       ; preds = %5, %3
  %6 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !607
  %7 = load i32* %6, align 4, !dbg !607, !tbaa !484
  %8 = icmp sgt i32 %7, 0, !dbg !610
  br i1 %8, label %.lr.ph3, label %._crit_edge4, !dbg !611

.lr.ph3:                                          ; preds = %.preheader
  %9 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !612
  br label %10, !dbg !611

; <label>:10                                      ; preds = %.lr.ph3, %10
  %indvars.iv5 = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next6, %10 ]
  %11 = load %struct.__sFILE** @stdlog, align 8, !dbg !613, !tbaa !556
  %12 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !614, !tbaa !556
  %13 = load %struct.t_grp_acc** %9, align 8, !dbg !612, !tbaa !485
  %14 = getelementptr inbounds %struct.t_grp_acc* %13, i64 %indvars.iv5, i32 3, i64 0, !dbg !615
  %15 = tail call i32 @add_binr(%struct.__sFILE* %11, %struct.t_bin* %12, i32 3, float* %14) #9, !dbg !616
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !611
  %16 = load i32* %6, align 4, !dbg !607, !tbaa !484
  %17 = sext i32 %16 to i64, !dbg !610
  %18 = icmp slt i64 %indvars.iv.next6, %17, !dbg !610
  br i1 %18, label %10, label %._crit_edge4, !dbg !611

._crit_edge4:                                     ; preds = %10, %.preheader
  %19 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !617, !tbaa !556
  tail call void @sum_bin(%struct.t_bin* %19, %struct.t_commrec* %cr) #9, !dbg !618
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !294, metadata !409), !dbg !619
  %20 = load i32* %6, align 4, !dbg !620, !tbaa !484
  %21 = icmp sgt i32 %20, 0, !dbg !623
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !624

.lr.ph:                                           ; preds = %._crit_edge4
  %22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !625
  br label %23, !dbg !624

; <label>:23                                      ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %24 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !626, !tbaa !556
  %25 = mul nsw i64 %indvars.iv, 3, !dbg !627
  %26 = load %struct.t_grp_acc** %22, align 8, !dbg !625, !tbaa !485
  %27 = getelementptr inbounds %struct.t_grp_acc* %26, i64 %indvars.iv, i32 3, i64 0, !dbg !628
  %28 = trunc i64 %25 to i32, !dbg !629
  tail call void @extract_binr(%struct.t_bin* %24, i32 %28, i32 3, float* %27) #9, !dbg !629
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !624
  %29 = load i32* %6, align 4, !dbg !620, !tbaa !484
  %30 = sext i32 %29 to i64, !dbg !623
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !623
  br i1 %31, label %23, label %._crit_edge, !dbg !624

._crit_edge:                                      ; preds = %23, %._crit_edge4
  ret void, !dbg !630
}

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #2

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #2

; Function Attrs: optsize
declare i32 @add_binr(%struct.__sFILE*, %struct.t_bin*, i32, float*) #2

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* nocapture readonly %grps, %struct.t_grpopts* nocapture readonly %opts, [3 x float]* nocapture readonly %v, %struct.t_mdatoms* nocapture readonly %md, i32 %bNEMD) #4 {
  tail call void @llvm.dbg.value(metadata i32 %start, i64 0, metadata !299, metadata !409), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 %homenr, i64 0, metadata !300, metadata !409), !dbg !632
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !301, metadata !409), !dbg !633
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !302, metadata !409), !dbg !634
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !303, metadata !409), !dbg !635
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !304, metadata !409), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %bNEMD, i64 0, metadata !305, metadata !409), !dbg !637
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !307, metadata !409), !dbg !638
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !639
  %2 = load i32* %1, align 4, !dbg !639, !tbaa !453
  %3 = icmp sgt i32 %2, 0, !dbg !642
  br i1 %3, label %.lr.ph11, label %._crit_edge, !dbg !643

.lr.ph11:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !644
  %5 = load %struct.t_grp_tcstat** %4, align 8, !dbg !644, !tbaa !455
  %6 = sext i32 %2 to i64, !dbg !643
  br label %7, !dbg !643

; <label>:7                                       ; preds = %.lr.ph11, %7
  %indvars.iv21 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next22, %7 ]
  %8 = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv21, i32 0, !dbg !646
  store float 0.000000e+00, float* %8, align 4, !dbg !647, !tbaa !473
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !643
  %9 = icmp slt i64 %indvars.iv.next22, %6, !dbg !642
  br i1 %9, label %7, label %._crit_edge, !dbg !643

._crit_edge:                                      ; preds = %7, %0
  %10 = icmp eq i32 %bNEMD, 0, !dbg !648
  br i1 %10, label %.loopexit, label %.preheader3, !dbg !650

.preheader3:                                      ; preds = %._crit_edge
  %11 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !651
  %12 = load i32* %11, align 4, !dbg !651, !tbaa !484
  %13 = icmp sgt i32 %12, 0, !dbg !655
  br i1 %13, label %.lr.ph9, label %.preheader2, !dbg !656

.lr.ph9:                                          ; preds = %.preheader3
  %14 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !657
  %15 = load %struct.t_grp_acc** %14, align 8, !dbg !657, !tbaa !485
  %16 = sext i32 %12 to i64, !dbg !656
  br label %27, !dbg !656

.preheader2:                                      ; preds = %27, %.preheader3
  %17 = icmp sgt i32 %homenr, 0, !dbg !658
  br i1 %17, label %.lr.ph, label %.preheader1, !dbg !661

.lr.ph:                                           ; preds = %.preheader2
  %18 = add nsw i32 %homenr, %start, !dbg !662
  %19 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !663
  %20 = load i16** %19, align 8, !dbg !663, !tbaa !502
  %21 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !665
  %22 = load float** %21, align 8, !dbg !665, !tbaa !504
  %23 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !669
  %24 = load %struct.t_grp_acc** %23, align 8, !dbg !669, !tbaa !485
  %25 = sext i32 %start to i64
  %26 = sext i32 %18 to i64, !dbg !661
  br label %35, !dbg !661

; <label>:27                                      ; preds = %.lr.ph9, %27
  %indvars.iv19 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next20, %27 ]
  %28 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 0, !dbg !670
  tail call void @llvm.dbg.value(metadata float* %28, i64 0, metadata !370, metadata !409), !dbg !671
  store float 0.000000e+00, float* %28, align 4, !dbg !673, !tbaa !516
  %29 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 1, !dbg !674
  store float 0.000000e+00, float* %29, align 4, !dbg !675, !tbaa !516
  %30 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 2, !dbg !676
  store float 0.000000e+00, float* %30, align 4, !dbg !677, !tbaa !516
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !656
  %31 = icmp slt i64 %indvars.iv.next20, %16, !dbg !655
  br i1 %31, label %27, label %.preheader2, !dbg !656

.preheader1:                                      ; preds = %48, %.preheader2
  br i1 %13, label %.preheader.lr.ph, label %.loopexit, !dbg !678

.preheader.lr.ph:                                 ; preds = %.preheader1
  %32 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !680
  %33 = load %struct.t_grp_acc** %32, align 8, !dbg !680, !tbaa !485
  %34 = sext i32 %12 to i64, !dbg !678
  br label %.preheader, !dbg !678

; <label>:35                                      ; preds = %.lr.ph, %48
  %indvars.iv17 = phi i64 [ %25, %.lr.ph ], [ %indvars.iv.next18, %48 ]
  %36 = getelementptr inbounds i16* %20, i64 %indvars.iv17, !dbg !686
  %37 = load i16* %36, align 2, !dbg !686, !tbaa !509
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !306, metadata !409), !dbg !687
  %38 = getelementptr inbounds float* %22, i64 %indvars.iv17, !dbg !688
  %39 = zext i16 %37 to i64, !dbg !689
  br label %40, !dbg !690

; <label>:40                                      ; preds = %40, %35
  %indvars.iv14 = phi i64 [ 0, %35 ], [ %indvars.iv.next15, %40 ]
  %41 = load float* %38, align 4, !dbg !688, !tbaa !516
  %42 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv17, i64 %indvars.iv14, !dbg !691
  %43 = load float* %42, align 4, !dbg !691, !tbaa !516
  %44 = fmul float %41, %43, !dbg !692
  tail call void @llvm.dbg.value(metadata float %44, i64 0, metadata !309, metadata !409), !dbg !693
  %45 = getelementptr inbounds %struct.t_grp_acc* %24, i64 %39, i32 3, i64 %indvars.iv14, !dbg !689
  %46 = load float* %45, align 4, !dbg !694, !tbaa !516
  %47 = fadd float %44, %46, !dbg !694
  store float %47, float* %45, align 4, !dbg !694, !tbaa !516
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !690
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3, !dbg !690
  br i1 %exitcond16, label %48, label %40, !dbg !690

; <label>:48                                      ; preds = %40
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, 1, !dbg !661
  %49 = icmp slt i64 %indvars.iv.next18, %26, !dbg !658
  br i1 %49, label %35, label %.preheader1, !dbg !661

.preheader:                                       ; preds = %.preheader.lr.ph, %56
  %indvars.iv12 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next13, %56 ]
  %50 = getelementptr inbounds %struct.t_grp_acc* %33, i64 %indvars.iv12, i32 2, !dbg !695
  br label %51, !dbg !696

; <label>:51                                      ; preds = %51, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %51 ]
  %52 = load float* %50, align 4, !dbg !695, !tbaa !519
  %53 = getelementptr inbounds %struct.t_grp_acc* %33, i64 %indvars.iv12, i32 3, i64 %indvars.iv, !dbg !697
  %54 = load float* %53, align 4, !dbg !698, !tbaa !516
  %55 = fdiv float %54, %52, !dbg !698
  store float %55, float* %53, align 4, !dbg !698, !tbaa !516
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !696
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !696
  br i1 %exitcond, label %56, label %51, !dbg !696

; <label>:56                                      ; preds = %51
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !678
  %57 = icmp slt i64 %indvars.iv.next13, %34, !dbg !699
  br i1 %57, label %.preheader, label %.loopexit, !dbg !678

.loopexit:                                        ; preds = %56, %.preheader1, %._crit_edge
  ret void, !dbg !700
}

; Function Attrs: nounwind optsize ssp uwtable
define float @sum_ekin(%struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps, [3 x float]* nocapture %ekin, i32 %bTYZ) #4 {
  %tfac = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !315, metadata !409), !dbg !701
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !316, metadata !409), !dbg !702
  tail call void @llvm.dbg.value(metadata [3 x float]* %ekin, i64 0, metadata !317, metadata !409), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %bTYZ, i64 0, metadata !318, metadata !409), !dbg !704
  tail call void @llvm.dbg.declare(metadata [3 x float]* %tfac, metadata !325, metadata !409), !dbg !705
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !706
  %2 = load i32* %1, align 4, !dbg !706, !tbaa !453
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !321, metadata !409), !dbg !707
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !708
  %4 = load %struct.t_grp_tcstat** %3, align 8, !dbg !708, !tbaa !455
  tail call void @llvm.dbg.value(metadata %struct.t_grp_tcstat* %4, i64 0, metadata !326, metadata !409), !dbg !709
  %5 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4, !dbg !710
  %6 = load float** %5, align 8, !dbg !710, !tbaa !711
  tail call void @llvm.dbg.value(metadata float* %6, i64 0, metadata !329, metadata !409), !dbg !712
  tail call void @llvm.dbg.value(metadata [3 x float]* %ekin, i64 0, metadata !375, metadata !409) #8, !dbg !713
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !376, metadata !409) #8, !dbg !715
  %7 = bitcast [3 x float]* %ekin to i8*, !dbg !716
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 36, i32 4, i1 false) #8, !dbg !717
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !322, metadata !409), !dbg !718
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !327, metadata !409), !dbg !719
  %8 = icmp eq i32 %bTYZ, 0, !dbg !720
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !323, metadata !409), !dbg !722
  %. = select i1 %8, float 1.000000e+00, float 0.000000e+00, !dbg !723
  %.12 = select i1 %8, float 1.000000e+00, float 0x3FE5555560000000, !dbg !723
  %9 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2, !dbg !724
  store float 1.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1, !dbg !726
  store float 1.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0, !dbg !727
  store float %., float* %11, align 4
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !409), !dbg !728
  %12 = icmp sgt i32 %2, 0, !dbg !729
  br i1 %12, label %.lr.ph, label %._crit_edge.thread, !dbg !732

.lr.ph:                                           ; preds = %0
  %13 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0, !dbg !733
  %14 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 1, !dbg !738
  %15 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 2, !dbg !739
  %16 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 0, !dbg !740
  %17 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1, !dbg !741
  %18 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 2, !dbg !742
  %19 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 0, !dbg !743
  %20 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 1, !dbg !744
  %21 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2, !dbg !745
  %22 = add i32 %2, -1, !dbg !732
  br label %23, !dbg !732

; <label>:23                                      ; preds = %78, %.lr.ph
  %indvars.iv9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next10, %78 ]
  %nrdf.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %82, %78 ]
  %T.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %81, %78 ]
  %24 = getelementptr inbounds float* %6, i64 %indvars.iv9, !dbg !746
  %25 = load float* %24, align 4, !dbg !746, !tbaa !516
  %26 = fmul float %.12, %25, !dbg !747
  tail call void @llvm.dbg.value(metadata float %26, i64 0, metadata !328, metadata !409), !dbg !748
  %27 = fcmp ogt float %26, 0.000000e+00, !dbg !749
  %28 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, !dbg !750
  br i1 %27, label %29, label %76, !dbg !751

; <label>:29                                      ; preds = %23
  tail call void @llvm.dbg.value(metadata [3 x float]* %ekin, i64 0, metadata !383, metadata !409), !dbg !752
  tail call void @llvm.dbg.value(metadata [3 x float]* %ekin, i64 0, metadata !384, metadata !409), !dbg !753
  %30 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 0, !dbg !754
  %31 = load float* %30, align 4, !dbg !754, !tbaa !516
  %32 = load float* %13, align 4, !dbg !733, !tbaa !516
  %33 = fadd float %31, %32, !dbg !755
  store float %33, float* %13, align 4, !dbg !756, !tbaa !516
  %34 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 1, !dbg !757
  %35 = load float* %34, align 4, !dbg !757, !tbaa !516
  %36 = load float* %14, align 4, !dbg !738, !tbaa !516
  %37 = fadd float %35, %36, !dbg !758
  store float %37, float* %14, align 4, !dbg !759, !tbaa !516
  %38 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 2, !dbg !760
  %39 = load float* %38, align 4, !dbg !760, !tbaa !516
  %40 = load float* %15, align 4, !dbg !739, !tbaa !516
  %41 = fadd float %39, %40, !dbg !761
  store float %41, float* %15, align 4, !dbg !762, !tbaa !516
  %42 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 0, !dbg !763
  %43 = load float* %42, align 4, !dbg !763, !tbaa !516
  %44 = load float* %16, align 4, !dbg !740, !tbaa !516
  %45 = fadd float %43, %44, !dbg !764
  store float %45, float* %16, align 4, !dbg !765, !tbaa !516
  %46 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 1, !dbg !766
  %47 = load float* %46, align 4, !dbg !766, !tbaa !516
  %48 = load float* %17, align 4, !dbg !741, !tbaa !516
  %49 = fadd float %47, %48, !dbg !767
  store float %49, float* %17, align 4, !dbg !768, !tbaa !516
  %50 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 2, !dbg !769
  %51 = load float* %50, align 4, !dbg !769, !tbaa !516
  %52 = load float* %18, align 4, !dbg !742, !tbaa !516
  %53 = fadd float %51, %52, !dbg !770
  store float %53, float* %18, align 4, !dbg !771, !tbaa !516
  %54 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 0, !dbg !772
  %55 = load float* %54, align 4, !dbg !772, !tbaa !516
  %56 = load float* %19, align 4, !dbg !743, !tbaa !516
  %57 = fadd float %55, %56, !dbg !773
  store float %57, float* %19, align 4, !dbg !774, !tbaa !516
  %58 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 1, !dbg !775
  %59 = load float* %58, align 4, !dbg !775, !tbaa !516
  %60 = load float* %20, align 4, !dbg !744, !tbaa !516
  %61 = fadd float %59, %60, !dbg !776
  store float %61, float* %20, align 4, !dbg !777, !tbaa !516
  %62 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 2, !dbg !778
  %63 = load float* %62, align 4, !dbg !778, !tbaa !516
  %64 = load float* %21, align 4, !dbg !745, !tbaa !516
  %65 = fadd float %63, %64, !dbg !779
  store float %65, float* %21, align 4, !dbg !780, !tbaa !516
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !324, metadata !409), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !320, metadata !409), !dbg !782
  br label %66, !dbg !783

; <label>:66                                      ; preds = %66, %29
  %indvars.iv = phi i64 [ 0, %29 ], [ %indvars.iv.next, %66 ]
  %ek.01 = phi float [ 0.000000e+00, %29 ], [ %72, %66 ]
  %67 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 %indvars.iv, !dbg !785
  %68 = load float* %67, align 4, !dbg !785, !tbaa !516
  %69 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 %indvars.iv, i64 %indvars.iv, !dbg !787
  %70 = load float* %69, align 4, !dbg !787, !tbaa !516
  %71 = fmul float %68, %70, !dbg !788
  %72 = fadd float %ek.01, %71, !dbg !789
  tail call void @llvm.dbg.value(metadata float %72, i64 0, metadata !324, metadata !409), !dbg !781
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !783
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !783
  br i1 %exitcond, label %73, label %66, !dbg !783

; <label>:73                                      ; preds = %66
  %74 = tail call float @calc_temp(float %72, float %26) #9, !dbg !790
  %75 = getelementptr inbounds %struct.t_grp_tcstat* %28, i64 0, i32 0, !dbg !791
  store float %74, float* %75, align 4, !dbg !792, !tbaa !473
  br label %78, !dbg !793

; <label>:76                                      ; preds = %23
  %77 = getelementptr inbounds %struct.t_grp_tcstat* %28, i64 0, i32 0, !dbg !794
  store float 0.000000e+00, float* %77, align 4, !dbg !795, !tbaa !473
  br label %78

; <label>:78                                      ; preds = %76, %73
  %79 = phi float [ 0.000000e+00, %76 ], [ %74, %73 ]
  %80 = fmul float %26, %79, !dbg !796
  %81 = fadd float %T.03, %80, !dbg !797
  tail call void @llvm.dbg.value(metadata float %81, i64 0, metadata !322, metadata !409), !dbg !718
  %82 = fadd float %nrdf.04, %26, !dbg !798
  tail call void @llvm.dbg.value(metadata float %82, i64 0, metadata !327, metadata !409), !dbg !719
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !732
  %lftr.wideiv = trunc i64 %indvars.iv9 to i32, !dbg !732
  %exitcond11 = icmp eq i32 %lftr.wideiv, %22, !dbg !732
  br i1 %exitcond11, label %._crit_edge, label %23, !dbg !732

._crit_edge:                                      ; preds = %78
  %83 = fcmp ogt float %82, 0.000000e+00, !dbg !799
  br i1 %83, label %84, label %._crit_edge.thread, !dbg !801

; <label>:84                                      ; preds = %._crit_edge
  %85 = fdiv float %81, %82, !dbg !802
  tail call void @llvm.dbg.value(metadata float %85, i64 0, metadata !322, metadata !409), !dbg !718
  br label %._crit_edge.thread, !dbg !803

._crit_edge.thread:                               ; preds = %0, %84, %._crit_edge
  %T.1 = phi float [ %85, %84 ], [ %81, %._crit_edge ], [ 0.000000e+00, %0 ]
  ret float %T.1, !dbg !804
}

; Function Attrs: optsize
declare float @calc_temp(float, float) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_epot(%struct.t_grpopts* nocapture readnone %opts, %struct.t_groups* nocapture readonly %grps, float* nocapture %epot) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !334, metadata !409), !dbg !805
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !335, metadata !409), !dbg !806
  tail call void @llvm.dbg.value(metadata float* %epot, i64 0, metadata !336, metadata !409), !dbg !807
  %1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !808
  %2 = load i32* %1, align 4, !dbg !808, !tbaa !809
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0, !dbg !810
  %4 = load float** %3, align 8, !dbg !810, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !811
  tail call void @llvm.dbg.value(metadata float* %4, i64 0, metadata !390, metadata !409), !dbg !813
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !814
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !815
  %5 = icmp sgt i32 %2, 0, !dbg !816
  br i1 %5, label %.lr.ph.i, label %sum_v.exit.thread, !dbg !819

sum_v.exit.thread:                                ; preds = %0
  %6 = getelementptr inbounds float* %epot, i64 17, !dbg !820
  store float 0.000000e+00, float* %6, align 4, !dbg !821, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !822
  tail call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !390, metadata !409), !dbg !824
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !826
  br label %sum_v.exit56.thread, !dbg !827

.lr.ph.i:                                         ; preds = %0
  %7 = add i32 %2, -1, !dbg !819
  br label %8, !dbg !819

; <label>:8                                       ; preds = %8, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %8 ], !dbg !828
  %t.01.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %11, %8 ], !dbg !828
  %9 = getelementptr inbounds float* %4, i64 %indvars.iv.i, !dbg !829
  %10 = load float* %9, align 4, !dbg !829, !tbaa !516
  %11 = fadd float %t.01.i, %10, !dbg !830
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !391, metadata !409), !dbg !814
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !819
  %lftr.wideiv82 = trunc i64 %indvars.iv.i to i32, !dbg !819
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %7, !dbg !819
  br i1 %exitcond83, label %sum_v.exit, label %8, !dbg !819

sum_v.exit:                                       ; preds = %8
  %12 = getelementptr inbounds float* %epot, i64 17, !dbg !820
  store float %11, float* %12, align 4, !dbg !821, !tbaa !516
  %13 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1, !dbg !831
  %14 = load float** %13, align 8, !dbg !831, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !822
  tail call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !390, metadata !409), !dbg !824
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !826
  br i1 %5, label %.lr.ph.i49, label %sum_v.exit56.thread, !dbg !827

.lr.ph.i49:                                       ; preds = %sum_v.exit
  %15 = add i32 %2, -1, !dbg !827
  br label %16, !dbg !827

; <label>:16                                      ; preds = %16, %.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i52, %16 ], !dbg !832
  %t.01.i51 = phi float [ 0.000000e+00, %.lr.ph.i49 ], [ %19, %16 ], !dbg !832
  %17 = getelementptr inbounds float* %14, i64 %indvars.iv.i50, !dbg !833
  %18 = load float* %17, align 4, !dbg !833, !tbaa !516
  %19 = fadd float %t.01.i51, %18, !dbg !834
  tail call void @llvm.dbg.value(metadata float %19, i64 0, metadata !391, metadata !409), !dbg !825
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i50, 1, !dbg !827
  %lftr.wideiv80 = trunc i64 %indvars.iv.i50 to i32, !dbg !827
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %15, !dbg !827
  br i1 %exitcond81, label %sum_v.exit56, label %16, !dbg !827

sum_v.exit56.thread:                              ; preds = %sum_v.exit.thread, %sum_v.exit
  %20 = getelementptr inbounds float* %epot, i64 13, !dbg !835
  store float 0.000000e+00, float* %20, align 4, !dbg !836, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !837
  tail call void @llvm.dbg.value(metadata float* %23, i64 0, metadata !390, metadata !409), !dbg !839
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !841
  br label %sum_v.exit48.thread, !dbg !842

sum_v.exit56:                                     ; preds = %16
  %21 = getelementptr inbounds float* %epot, i64 13, !dbg !835
  store float %19, float* %21, align 4, !dbg !836, !tbaa !516
  %22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6, !dbg !843
  %23 = load float** %22, align 8, !dbg !843, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !837
  tail call void @llvm.dbg.value(metadata float* %23, i64 0, metadata !390, metadata !409), !dbg !839
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !841
  br i1 %5, label %.lr.ph.i41, label %sum_v.exit48.thread, !dbg !842

.lr.ph.i41:                                       ; preds = %sum_v.exit56
  %24 = add i32 %2, -1, !dbg !842
  br label %25, !dbg !842

; <label>:25                                      ; preds = %25, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i44, %25 ], !dbg !844
  %t.01.i43 = phi float [ 0.000000e+00, %.lr.ph.i41 ], [ %28, %25 ], !dbg !844
  %26 = getelementptr inbounds float* %23, i64 %indvars.iv.i42, !dbg !845
  %27 = load float* %26, align 4, !dbg !845, !tbaa !516
  %28 = fadd float %t.01.i43, %27, !dbg !846
  tail call void @llvm.dbg.value(metadata float %28, i64 0, metadata !391, metadata !409), !dbg !840
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1, !dbg !842
  %lftr.wideiv78 = trunc i64 %indvars.iv.i42 to i32, !dbg !842
  %exitcond79 = icmp eq i32 %lftr.wideiv78, %24, !dbg !842
  br i1 %exitcond79, label %sum_v.exit48, label %25, !dbg !842

sum_v.exit48.thread:                              ; preds = %sum_v.exit56.thread, %sum_v.exit56
  %29 = getelementptr inbounds float* %epot, i64 11, !dbg !847
  store float 0.000000e+00, float* %29, align 4, !dbg !848, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !849
  tail call void @llvm.dbg.value(metadata float* %32, i64 0, metadata !390, metadata !409), !dbg !851
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !853
  br label %sum_v.exit40.thread, !dbg !854

sum_v.exit48:                                     ; preds = %25
  %30 = getelementptr inbounds float* %epot, i64 11, !dbg !847
  store float %28, float* %30, align 4, !dbg !848, !tbaa !516
  %31 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5, !dbg !855
  %32 = load float** %31, align 8, !dbg !855, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !849
  tail call void @llvm.dbg.value(metadata float* %32, i64 0, metadata !390, metadata !409), !dbg !851
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !852
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !853
  br i1 %5, label %.lr.ph.i33, label %sum_v.exit40.thread, !dbg !854

.lr.ph.i33:                                       ; preds = %sum_v.exit48
  %33 = add i32 %2, -1, !dbg !854
  br label %34, !dbg !854

; <label>:34                                      ; preds = %34, %.lr.ph.i33
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i36, %34 ], !dbg !856
  %t.01.i35 = phi float [ 0.000000e+00, %.lr.ph.i33 ], [ %37, %34 ], !dbg !856
  %35 = getelementptr inbounds float* %32, i64 %indvars.iv.i34, !dbg !857
  %36 = load float* %35, align 4, !dbg !857, !tbaa !516
  %37 = fadd float %t.01.i35, %36, !dbg !858
  tail call void @llvm.dbg.value(metadata float %37, i64 0, metadata !391, metadata !409), !dbg !852
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 1, !dbg !854
  %lftr.wideiv76 = trunc i64 %indvars.iv.i34 to i32, !dbg !854
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %33, !dbg !854
  br i1 %exitcond77, label %sum_v.exit40, label %34, !dbg !854

sum_v.exit40.thread:                              ; preds = %sum_v.exit48.thread, %sum_v.exit48
  %38 = getelementptr inbounds float* %epot, i64 12, !dbg !859
  store float 0.000000e+00, float* %38, align 4, !dbg !860, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !861
  tail call void @llvm.dbg.value(metadata float* %41, i64 0, metadata !390, metadata !409), !dbg !863
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !865
  br label %sum_v.exit32.thread, !dbg !866

sum_v.exit40:                                     ; preds = %34
  %39 = getelementptr inbounds float* %epot, i64 12, !dbg !859
  store float %37, float* %39, align 4, !dbg !860, !tbaa !516
  %40 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3, !dbg !867
  %41 = load float** %40, align 8, !dbg !867, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !861
  tail call void @llvm.dbg.value(metadata float* %41, i64 0, metadata !390, metadata !409), !dbg !863
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !864
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !865
  br i1 %5, label %.lr.ph.i25, label %sum_v.exit32.thread, !dbg !866

.lr.ph.i25:                                       ; preds = %sum_v.exit40
  %42 = add i32 %2, -1, !dbg !866
  br label %43, !dbg !866

; <label>:43                                      ; preds = %43, %.lr.ph.i25
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i25 ], [ %indvars.iv.next.i28, %43 ], !dbg !868
  %t.01.i27 = phi float [ 0.000000e+00, %.lr.ph.i25 ], [ %46, %43 ], !dbg !868
  %44 = getelementptr inbounds float* %41, i64 %indvars.iv.i26, !dbg !869
  %45 = load float* %44, align 4, !dbg !869, !tbaa !516
  %46 = fadd float %t.01.i27, %45, !dbg !870
  tail call void @llvm.dbg.value(metadata float %46, i64 0, metadata !391, metadata !409), !dbg !864
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i26, 1, !dbg !866
  %lftr.wideiv74 = trunc i64 %indvars.iv.i26 to i32, !dbg !866
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %42, !dbg !866
  br i1 %exitcond75, label %sum_v.exit32, label %43, !dbg !866

sum_v.exit32.thread:                              ; preds = %sum_v.exit40.thread, %sum_v.exit40
  %47 = getelementptr inbounds float* %epot, i64 18, !dbg !871
  %48 = load float* %47, align 4, !dbg !872, !tbaa !516
  %49 = fadd float %48, 0.000000e+00, !dbg !872
  store float %49, float* %47, align 4, !dbg !872, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !873
  tail call void @llvm.dbg.value(metadata float* %54, i64 0, metadata !390, metadata !409), !dbg !875
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !877
  br label %sum_v.exit24.thread, !dbg !878

sum_v.exit32:                                     ; preds = %43
  %50 = getelementptr inbounds float* %epot, i64 18, !dbg !871
  %51 = load float* %50, align 4, !dbg !872, !tbaa !516
  %52 = fadd float %46, %51, !dbg !872
  store float %52, float* %50, align 4, !dbg !872, !tbaa !516
  %53 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4, !dbg !879
  %54 = load float** %53, align 8, !dbg !879, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !873
  tail call void @llvm.dbg.value(metadata float* %54, i64 0, metadata !390, metadata !409), !dbg !875
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !877
  br i1 %5, label %.lr.ph.i17, label %sum_v.exit24.thread, !dbg !878

.lr.ph.i17:                                       ; preds = %sum_v.exit32
  %55 = add i32 %2, -1, !dbg !878
  br label %56, !dbg !878

; <label>:56                                      ; preds = %56, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i20, %56 ], !dbg !880
  %t.01.i19 = phi float [ 0.000000e+00, %.lr.ph.i17 ], [ %59, %56 ], !dbg !880
  %57 = getelementptr inbounds float* %54, i64 %indvars.iv.i18, !dbg !881
  %58 = load float* %57, align 4, !dbg !881, !tbaa !516
  %59 = fadd float %t.01.i19, %58, !dbg !882
  tail call void @llvm.dbg.value(metadata float %59, i64 0, metadata !391, metadata !409), !dbg !876
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i18, 1, !dbg !878
  %lftr.wideiv72 = trunc i64 %indvars.iv.i18 to i32, !dbg !878
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %55, !dbg !878
  br i1 %exitcond73, label %sum_v.exit24, label %56, !dbg !878

sum_v.exit24.thread:                              ; preds = %sum_v.exit32.thread, %sum_v.exit32
  %60 = getelementptr inbounds float* %epot, i64 15, !dbg !883
  %61 = load float* %60, align 4, !dbg !884, !tbaa !516
  %62 = fadd float %61, 0.000000e+00, !dbg !884
  store float %62, float* %60, align 4, !dbg !884, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !885
  tail call void @llvm.dbg.value(metadata float* %67, i64 0, metadata !390, metadata !409), !dbg !887
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !889
  br label %sum_v.exit16, !dbg !890

sum_v.exit24:                                     ; preds = %56
  %63 = getelementptr inbounds float* %epot, i64 15, !dbg !883
  %64 = load float* %63, align 4, !dbg !884, !tbaa !516
  %65 = fadd float %59, %64, !dbg !884
  store float %65, float* %63, align 4, !dbg !884, !tbaa !516
  %66 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2, !dbg !891
  %67 = load float** %66, align 8, !dbg !891, !tbaa !556
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !389, metadata !409), !dbg !885
  tail call void @llvm.dbg.value(metadata float* %67, i64 0, metadata !390, metadata !409), !dbg !887
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !888
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !889
  br i1 %5, label %.lr.ph.i9, label %sum_v.exit16, !dbg !890

.lr.ph.i9:                                        ; preds = %sum_v.exit24
  %68 = add i32 %2, -1, !dbg !890
  br label %69, !dbg !890

; <label>:69                                      ; preds = %69, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i9 ], [ %indvars.iv.next.i12, %69 ], !dbg !892
  %t.01.i11 = phi float [ 0.000000e+00, %.lr.ph.i9 ], [ %72, %69 ], !dbg !892
  %70 = getelementptr inbounds float* %67, i64 %indvars.iv.i10, !dbg !893
  %71 = load float* %70, align 4, !dbg !893, !tbaa !516
  %72 = fadd float %t.01.i11, %71, !dbg !894
  tail call void @llvm.dbg.value(metadata float %72, i64 0, metadata !391, metadata !409), !dbg !888
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1, !dbg !890
  %lftr.wideiv = trunc i64 %indvars.iv.i10 to i32, !dbg !890
  %exitcond71 = icmp eq i32 %lftr.wideiv, %68, !dbg !890
  br i1 %exitcond71, label %sum_v.exit16, label %69, !dbg !890

sum_v.exit16:                                     ; preds = %69, %sum_v.exit24.thread, %sum_v.exit24
  %t.0.lcssa.i15 = phi float [ 0.000000e+00, %sum_v.exit24 ], [ 0.000000e+00, %sum_v.exit24.thread ], [ %72, %69 ], !dbg !892
  %73 = getelementptr inbounds float* %epot, i64 14, !dbg !895
  store float %t.0.lcssa.i15, float* %73, align 4, !dbg !896, !tbaa !516
  tail call void @llvm.dbg.value(metadata i32 37, i64 0, metadata !389, metadata !409), !dbg !897
  tail call void @llvm.dbg.value(metadata float* %epot, i64 0, metadata !390, metadata !409), !dbg !899
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !391, metadata !409), !dbg !900
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !409), !dbg !901
  br label %74, !dbg !902

; <label>:74                                      ; preds = %74, %sum_v.exit16
  %indvars.iv.i2 = phi i64 [ 0, %sum_v.exit16 ], [ %indvars.iv.next.i4, %74 ], !dbg !903
  %t.01.i3 = phi float [ 0.000000e+00, %sum_v.exit16 ], [ %77, %74 ], !dbg !903
  %75 = getelementptr inbounds float* %epot, i64 %indvars.iv.i2, !dbg !904
  %76 = load float* %75, align 4, !dbg !904, !tbaa !516
  %77 = fadd float %t.01.i3, %76, !dbg !905
  tail call void @llvm.dbg.value(metadata float %77, i64 0, metadata !391, metadata !409), !dbg !900
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i2, 1, !dbg !902
  %exitcond = icmp eq i64 %indvars.iv.next.i4, 37, !dbg !902
  br i1 %exitcond, label %sum_v.exit8, label %74, !dbg !902

sum_v.exit8:                                      ; preds = %74
  %78 = getelementptr inbounds float* %epot, i64 37, !dbg !906
  store float %77, float* %78, align 4, !dbg !907, !tbaa !516
  ret void, !dbg !908
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!405, !406, !407}
!llvm.ident = !{!408}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !62, subprograms: !65, globals: !393, imports: !404)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tgroup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/group.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13}
!6 = !DIEnumerator(name: "egCOUL", value: 0)
!7 = !DIEnumerator(name: "egLJ", value: 1)
!8 = !DIEnumerator(name: "egBHAM", value: 2)
!9 = !DIEnumerator(name: "egLR", value: 3)
!10 = !DIEnumerator(name: "egLJLR", value: 4)
!11 = !DIEnumerator(name: "egCOUL14", value: 5)
!12 = !DIEnumerator(name: "egLJ14", value: 6)
!13 = !DIEnumerator(name: "egNR", value: 7)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 49, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!17 = !DIEnumerator(name: "F_BONDS", value: 0)
!18 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!19 = !DIEnumerator(name: "F_MORSE", value: 2)
!20 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!21 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!22 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!23 = !DIEnumerator(name: "F_ANGLES", value: 6)
!24 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!25 = !DIEnumerator(name: "F_PDIHS", value: 8)
!26 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!27 = !DIEnumerator(name: "F_IDIHS", value: 10)
!28 = !DIEnumerator(name: "F_LJ14", value: 11)
!29 = !DIEnumerator(name: "F_COUL14", value: 12)
!30 = !DIEnumerator(name: "F_LJ", value: 13)
!31 = !DIEnumerator(name: "F_BHAM", value: 14)
!32 = !DIEnumerator(name: "F_LJLR", value: 15)
!33 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!34 = !DIEnumerator(name: "F_SR", value: 17)
!35 = !DIEnumerator(name: "F_LR", value: 18)
!36 = !DIEnumerator(name: "F_WPOL", value: 19)
!37 = !DIEnumerator(name: "F_POSRES", value: 20)
!38 = !DIEnumerator(name: "F_DISRES", value: 21)
!39 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!40 = !DIEnumerator(name: "F_ORIRES", value: 23)
!41 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!42 = !DIEnumerator(name: "F_ANGRES", value: 25)
!43 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!44 = !DIEnumerator(name: "F_SHAKE", value: 27)
!45 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!46 = !DIEnumerator(name: "F_SETTLE", value: 29)
!47 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!48 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!49 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!50 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!51 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!52 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!53 = !DIEnumerator(name: "F_EQM", value: 36)
!54 = !DIEnumerator(name: "F_EPOT", value: 37)
!55 = !DIEnumerator(name: "F_EKIN", value: 38)
!56 = !DIEnumerator(name: "F_ETOT", value: 39)
!57 = !DIEnumerator(name: "F_TEMP", value: 40)
!58 = !DIEnumerator(name: "F_PRES", value: 41)
!59 = !DIEnumerator(name: "F_DVDL", value: 42)
!60 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!61 = !DIEnumerator(name: "F_NRE", value: 44)
!62 = !{!63, !64}
!63 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!65 = !{!66, !134, !140, !251, !259, !276, !295, !310, !330, !337, !345, !356, !365, !371, !378, !385}
!66 = !DISubprogram(name: "__sputc", scope: !67, file: !67, line: 348, type: !68, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !131)
!67 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !71}
!70 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !67, line: 153, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !67, line: 122, size: 1216, align: 64, elements: !74)
!74 = !{!75, !78, !79, !80, !82, !83, !88, !89, !90, !94, !99, !109, !115, !116, !119, !120, !124, !128, !129, !130}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !73, file: !67, line: 123, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !73, file: !67, line: 124, baseType: !70, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !73, file: !67, line: 125, baseType: !70, size: 32, align: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !73, file: !67, line: 126, baseType: !81, size: 16, align: 16, offset: 128)
!81 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !73, file: !67, line: 127, baseType: !81, size: 16, align: 16, offset: 144)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !73, file: !67, line: 128, baseType: !84, size: 128, align: 64, offset: 192)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !67, line: 88, size: 128, align: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !84, file: !67, line: 89, baseType: !76, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !84, file: !67, line: 90, baseType: !70, size: 32, align: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !73, file: !67, line: 129, baseType: !70, size: 32, align: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !73, file: !67, line: 132, baseType: !64, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !73, file: !67, line: 133, baseType: !91, size: 64, align: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!70, !64}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !73, file: !67, line: 134, baseType: !95, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!70, !64, !98, !70}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !73, file: !67, line: 135, baseType: !100, size: 64, align: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !64, !103, !70}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !67, line: 77, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !105, line: 71, baseType: !106)
!105 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 46, baseType: !108)
!107 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !73, file: !67, line: 136, baseType: !110, size: 64, align: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!70, !64, !113, !70}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !73, file: !67, line: 139, baseType: !84, size: 128, align: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !73, file: !67, line: 140, baseType: !117, size: 64, align: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !67, line: 94, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !73, file: !67, line: 141, baseType: !70, size: 32, align: 32, offset: 896)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !73, file: !67, line: 144, baseType: !121, size: 24, align: 8, offset: 928)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !73, file: !67, line: 145, baseType: !125, size: 8, align: 8, offset: 952)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !73, file: !67, line: 148, baseType: !84, size: 128, align: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !73, file: !67, line: 151, baseType: !70, size: 32, align: 32, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !73, file: !67, line: 152, baseType: !103, size: 64, align: 64, offset: 1152)
!131 = !{!132, !133}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !66, file: !67, line: 348, type: !70)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !66, file: !67, line: 348, type: !71)
!134 = !DISubprogram(name: "__sigbits", scope: !135, file: !135, line: 114, type: !136, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !138)
!135 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!136 = !DISubroutineType(types: !137)
!137 = !{!70, !70}
!138 = !{!139}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !134, file: !135, line: 114, type: !70)
!140 = !DISubprogram(name: "init_groups", scope: !1, file: !1, line: 106, type: !141, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_mdatoms*, %struct.t_grpopts*, %struct.t_groups*)* @init_groups, variables: !245)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !71, !143, !178, !199}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !145, line: 51, baseType: !146)
!145 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 40, size: 1408, align: 64, elements: !147)
!147 = !{!148, !152, !153, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !146, file: !145, line: 41, baseType: !149, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !150, line: 87, baseType: !151)
!150 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!151 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !146, file: !145, line: 42, baseType: !70, size: 32, align: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !146, file: !145, line: 43, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !146, file: !145, line: 43, baseType: !154, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !146, file: !145, line: 43, baseType: !154, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !146, file: !145, line: 43, baseType: !154, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !146, file: !145, line: 44, baseType: !154, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !146, file: !145, line: 44, baseType: !154, size: 64, align: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !146, file: !145, line: 44, baseType: !154, size: 64, align: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !146, file: !145, line: 45, baseType: !162, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !146, file: !145, line: 46, baseType: !162, size: 64, align: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !146, file: !145, line: 47, baseType: !162, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !146, file: !145, line: 47, baseType: !162, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !146, file: !145, line: 48, baseType: !167, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !146, file: !145, line: 49, baseType: !167, size: 64, align: 64, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !146, file: !145, line: 50, baseType: !167, size: 64, align: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !146, file: !145, line: 50, baseType: !167, size: 64, align: 64, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !146, file: !145, line: 50, baseType: !167, size: 64, align: 64, offset: 1344)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !180, line: 53, baseType: !181)
!180 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!181 = !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 42, size: 512, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !194, !198}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !181, file: !180, line: 43, baseType: !70, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !181, file: !180, line: 44, baseType: !70, size: 32, align: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !181, file: !180, line: 45, baseType: !70, size: 32, align: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !181, file: !180, line: 46, baseType: !70, size: 32, align: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !181, file: !180, line: 47, baseType: !154, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !181, file: !180, line: 48, baseType: !154, size: 64, align: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !181, file: !180, line: 49, baseType: !154, size: 64, align: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !181, file: !180, line: 50, baseType: !191, size: 64, align: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !150, line: 101, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 96, align: 32, elements: !122)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !181, file: !180, line: 51, baseType: !195, size: 64, align: 64, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !150, line: 107, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 96, align: 32, elements: !122)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !181, file: !180, line: 52, baseType: !162, size: 64, align: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_groups", file: !4, line: 72, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 67, size: 768, align: 64, elements: !202)
!202 = !{!203, !212, !225, !238}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "estat", scope: !201, file: !4, line: 68, baseType: !204, size: 512, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_ener", file: !4, line: 50, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 46, size: 512, align: 64, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nn", scope: !205, file: !4, line: 47, baseType: !70, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !205, file: !4, line: 48, baseType: !209, size: 448, align: 64, offset: 64)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 448, align: 64, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 7)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tcstat", scope: !201, file: !4, line: 69, baseType: !213, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_tcstat", file: !4, line: 44, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 38, size: 416, align: 32, elements: !216)
!216 = !{!217, !218, !219, !223, !224}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "T", scope: !215, file: !4, line: 39, baseType: !149, size: 32, align: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !215, file: !4, line: 40, baseType: !149, size: 32, align: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ekin", scope: !215, file: !4, line: 41, baseType: !220, size: 288, align: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !150, line: 105, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 288, align: 32, elements: !222)
!222 = !{!123, !123}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !215, file: !4, line: 42, baseType: !149, size: 32, align: 32, offset: 352)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !215, file: !4, line: 43, baseType: !149, size: 32, align: 32, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "grpstat", scope: !201, file: !4, line: 70, baseType: !226, size: 64, align: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_acc", file: !4, line: 59, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 52, size: 448, align: 64, elements: !229)
!229 = !{!230, !231, !234, !235, !236, !237}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nat", scope: !228, file: !4, line: 53, baseType: !70, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aid", scope: !228, file: !4, line: 54, baseType: !232, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !150, line: 73, baseType: !70)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !228, file: !4, line: 55, baseType: !149, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !228, file: !4, line: 56, baseType: !192, size: 96, align: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "uold", scope: !228, file: !4, line: 57, baseType: !192, size: 96, align: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ut", scope: !228, file: !4, line: 58, baseType: !192, size: 96, align: 32, offset: 352)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "cosacc", scope: !201, file: !4, line: 71, baseType: !239, size: 96, align: 32, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cos_acc", file: !4, line: 65, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 61, size: 96, align: 32, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !240, file: !4, line: 62, baseType: !149, size: 32, align: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mvcos", scope: !240, file: !4, line: 63, baseType: !149, size: 32, align: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "vcos", scope: !240, file: !4, line: 64, baseType: !149, size: 32, align: 32, offset: 64)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !140, file: !1, line: 106, type: !71)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 2, scope: !140, file: !1, line: 106, type: !143)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 3, scope: !140, file: !1, line: 106, type: !178)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 4, scope: !140, file: !1, line: 106, type: !199)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !140, file: !1, line: 108, type: !70)
!251 = !DISubprogram(name: "dump_estat", scope: !1, file: !1, line: 122, type: !252, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_grp_ener*)* @dump_estat, variables: !255)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !71, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !251, file: !1, line: 122, type: !71)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "estat", arg: 2, scope: !251, file: !1, line: 122, type: !254)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !251, file: !1, line: 124, type: !70)
!259 = !DISubprogram(name: "rms_ener", scope: !1, file: !1, line: 132, type: !260, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.t_energy*, i32)* @rms_ener, variables: !272)
!260 = !DISubroutineType(types: !261)
!261 = !{!149, !262, !70}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_energy", file: !264, line: 41, baseType: !265)
!264 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/energy.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!265 = !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 36, size: 256, align: 64, elements: !266)
!266 = !{!267, !268, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !265, file: !264, line: 37, baseType: !149, size: 32, align: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "eav", scope: !265, file: !264, line: 38, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "esum", scope: !265, file: !264, line: 39, baseType: !269, size: 64, align: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "e2sum", scope: !265, file: !264, line: 40, baseType: !149, size: 32, align: 32, offset: 192)
!272 = !{!273, !274, !275}
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "e", arg: 1, scope: !259, file: !1, line: 132, type: !262)
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsteps", arg: 2, scope: !259, file: !1, line: 132, type: !70)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "erms2", scope: !259, file: !1, line: 134, type: !149)
!276 = !DISubprogram(name: "accumulate_u", scope: !1, file: !1, line: 143, type: !277, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_commrec*, %struct.t_grpopts*, %struct.t_groups*)* @accumulate_u, variables: !290)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279, !178, !199}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !281, line: 40, baseType: !282)
!281 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!282 = !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 36, size: 192, align: 32, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !282, file: !281, line: 37, baseType: !70, size: 32, align: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !282, file: !281, line: 37, baseType: !70, size: 32, align: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !282, file: !281, line: 38, baseType: !70, size: 32, align: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !282, file: !281, line: 38, baseType: !70, size: 32, align: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !282, file: !281, line: 39, baseType: !70, size: 32, align: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !282, file: !281, line: 39, baseType: !70, size: 32, align: 32, offset: 160)
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 1, scope: !276, file: !1, line: 143, type: !279)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 2, scope: !276, file: !1, line: 143, type: !178)
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 3, scope: !276, file: !1, line: 143, type: !199)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !276, file: !1, line: 147, type: !70)
!295 = !DISubprogram(name: "update_grps", scope: !1, file: !1, line: 173, type: !296, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, %struct.t_groups*, %struct.t_grpopts*, [3 x float]*, %struct.t_mdatoms*, i32)* @update_grps, variables: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !70, !70, !199, !178, !191, !143, !70}
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !295, file: !1, line: 173, type: !70)
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "homenr", arg: 2, scope: !295, file: !1, line: 173, type: !70)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 3, scope: !295, file: !1, line: 173, type: !199)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 4, scope: !295, file: !1, line: 174, type: !178)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !295, file: !1, line: 174, type: !191)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 6, scope: !295, file: !1, line: 174, type: !143)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bNEMD", arg: 7, scope: !295, file: !1, line: 174, type: !70)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !295, file: !1, line: 176, type: !70)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !295, file: !1, line: 176, type: !70)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !295, file: !1, line: 176, type: !70)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mv", scope: !295, file: !1, line: 177, type: !149)
!310 = !DISubprogram(name: "sum_ekin", scope: !1, file: !1, line: 204, type: !311, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32)* @sum_ekin, variables: !314)
!311 = !DISubroutineType(types: !312)
!312 = !{!149, !178, !199, !313, !70}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 1, scope: !310, file: !1, line: 204, type: !178)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 2, scope: !310, file: !1, line: 204, type: !199)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ekin", arg: 3, scope: !310, file: !1, line: 204, type: !313)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bTYZ", arg: 4, scope: !310, file: !1, line: 204, type: !70)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !310, file: !1, line: 206, type: !70)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !310, file: !1, line: 206, type: !70)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngtc", scope: !310, file: !1, line: 206, type: !70)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "T", scope: !310, file: !1, line: 207, type: !149)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndfac", scope: !310, file: !1, line: 207, type: !149)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ek", scope: !310, file: !1, line: 207, type: !149)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tfac", scope: !310, file: !1, line: 208, type: !192)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tcstat", scope: !310, file: !1, line: 209, type: !213)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrdf", scope: !310, file: !1, line: 210, type: !149)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nd", scope: !310, file: !1, line: 210, type: !149)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndf", scope: !310, file: !1, line: 210, type: !154)
!330 = !DISubprogram(name: "sum_epot", scope: !1, file: !1, line: 269, type: !331, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_grpopts*, %struct.t_groups*, float*)* @sum_epot, variables: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !178, !199, !154}
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 1, scope: !330, file: !1, line: 269, type: !178)
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 2, scope: !330, file: !1, line: 269, type: !199)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "epot", arg: 3, scope: !330, file: !1, line: 269, type: !154)
!337 = !DISubprogram(name: "init_grptcstat", scope: !1, file: !1, line: 47, type: !338, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, variables: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !70, !213}
!340 = !{!341, !342, !343, !344}
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngtc", arg: 1, scope: !337, file: !1, line: 47, type: !70)
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tcstat", arg: 2, scope: !337, file: !1, line: 47, type: !213)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !337, file: !1, line: 49, type: !70)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !337, file: !1, line: 49, type: !70)
!345 = !DISubprogram(name: "init_grpstat", scope: !1, file: !1, line: 59, type: !346, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, variables: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !71, !143, !70, !226}
!348 = !{!349, !350, !351, !352, !353, !354, !355}
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !345, file: !1, line: 59, type: !71)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 2, scope: !345, file: !1, line: 60, type: !143)
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngacc", arg: 3, scope: !345, file: !1, line: 60, type: !70)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gstat", arg: 4, scope: !345, file: !1, line: 60, type: !226)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !345, file: !1, line: 62, type: !70)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !345, file: !1, line: 62, type: !70)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grp", scope: !345, file: !1, line: 62, type: !70)
!356 = !DISubprogram(name: "init_grpener", scope: !1, file: !1, line: 92, type: !357, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, variables: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !71, !70, !254}
!359 = !{!360, !361, !362, !363, !364}
!360 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !356, file: !1, line: 92, type: !71)
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngener", arg: 2, scope: !356, file: !1, line: 92, type: !70)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "estat", arg: 3, scope: !356, file: !1, line: 92, type: !254)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !356, file: !1, line: 94, type: !70)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n2", scope: !356, file: !1, line: 94, type: !70)
!365 = !DISubprogram(name: "clear_rvec", scope: !366, file: !366, line: 316, type: !367, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !369)
!366 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!367 = !DISubroutineType(types: !368)
!368 = !{null, !154}
!369 = !{!370}
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !365, file: !366, line: 316, type: !154)
!371 = !DISubprogram(name: "clear_mat", scope: !366, file: !366, line: 334, type: !372, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !313}
!374 = !{!375, !376}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !371, file: !366, line: 334, type: !313)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !371, file: !366, line: 336, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!378 = !DISubprogram(name: "m_add", scope: !366, file: !366, line: 485, type: !379, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !313, !313, !313}
!381 = !{!382, !383, !384}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !378, file: !366, line: 485, type: !313)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !378, file: !366, line: 485, type: !313)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 3, scope: !378, file: !366, line: 485, type: !313)
!385 = !DISubprogram(name: "sum_v", scope: !1, file: !1, line: 256, type: !386, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!149, !70, !154}
!388 = !{!389, !390, !391, !392}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !385, file: !1, line: 256, type: !70)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 2, scope: !385, file: !1, line: 256, type: !154)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !385, file: !1, line: 258, type: !149)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !385, file: !1, line: 259, type: !70)
!393 = !{!394}
!394 = !DIGlobalVariable(name: "rb", scope: !276, file: !1, line: 146, type: !395, isLocal: true, isDefinition: true, variable: %struct.t_bin** @accumulate_u.rb)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_bin", file: !397, line: 49, baseType: !398)
!397 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!398 = !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 45, size: 128, align: 64, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nreal", scope: !398, file: !397, line: 46, baseType: !70, size: 32, align: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "maxreal", scope: !398, file: !397, line: 47, baseType: !70, size: 32, align: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !398, file: !397, line: 48, baseType: !403, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!404 = !{}
!405 = !{i32 2, !"Dwarf Version", i32 2}
!406 = !{i32 2, !"Debug Info Version", i32 700000003}
!407 = !{i32 1, !"PIC Level", i32 2}
!408 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!409 = !DIExpression()
!410 = !DILocation(line: 348, column: 40, scope: !66)
!411 = !DILocation(line: 348, column: 50, scope: !66)
!412 = !DILocation(line: 349, column: 12, scope: !413)
!413 = distinct !DILexicalBlock(scope: !66, file: !67, line: 349, column: 6)
!414 = !DILocation(line: 349, column: 6, scope: !413)
!415 = !{!416, !420, i64 12}
!416 = !{!"__sFILE", !417, i64 0, !420, i64 8, !420, i64 12, !421, i64 16, !421, i64 18, !422, i64 24, !420, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !422, i64 88, !417, i64 104, !420, i64 112, !418, i64 116, !418, i64 119, !422, i64 120, !420, i64 136, !423, i64 144}
!417 = !{!"any pointer", !418, i64 0}
!418 = !{!"omnipotent char", !419, i64 0}
!419 = !{!"Simple C/C++ TBAA"}
!420 = !{!"int", !418, i64 0}
!421 = !{!"short", !418, i64 0}
!422 = !{!"__sbuf", !417, i64 0, !420, i64 8}
!423 = !{!"long long", !418, i64 0}
!424 = !DILocation(line: 349, column: 15, scope: !413)
!425 = !DILocation(line: 349, column: 20, scope: !413)
!426 = !DILocation(line: 350, column: 10, scope: !413)
!427 = !DILocation(line: 349, column: 38, scope: !413)
!428 = !{!416, !420, i64 40}
!429 = !DILocation(line: 349, column: 31, scope: !413)
!430 = !DILocation(line: 349, column: 59, scope: !413)
!431 = !DILocation(line: 349, column: 47, scope: !413)
!432 = !DILocation(line: 350, column: 23, scope: !413)
!433 = !DILocation(line: 350, column: 16, scope: !413)
!434 = !DILocation(line: 350, column: 18, scope: !413)
!435 = !{!416, !417, i64 0}
!436 = !DILocation(line: 350, column: 21, scope: !413)
!437 = !{!418, !418, i64 0}
!438 = !DILocation(line: 350, column: 3, scope: !413)
!439 = !DILocation(line: 352, column: 11, scope: !413)
!440 = !DILocation(line: 352, column: 3, scope: !413)
!441 = !DILocation(line: 353, column: 1, scope: !66)
!442 = !DILocation(line: 114, column: 15, scope: !134)
!443 = !DILocation(line: 116, column: 20, scope: !134)
!444 = !DILocation(line: 116, column: 12, scope: !134)
!445 = !DILocation(line: 116, column: 57, scope: !134)
!446 = !DILocation(line: 116, column: 45, scope: !134)
!447 = !DILocation(line: 116, column: 5, scope: !134)
!448 = !DILocation(line: 106, column: 24, scope: !140)
!449 = !DILocation(line: 106, column: 39, scope: !140)
!450 = !DILocation(line: 106, column: 53, scope: !140)
!451 = !DILocation(line: 106, column: 68, scope: !140)
!452 = !DILocation(line: 113, column: 3, scope: !140)
!453 = !{!454, !420, i64 0}
!454 = !{!"", !420, i64 0, !420, i64 4, !420, i64 8, !420, i64 12, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56}
!455 = !{!456, !417, i64 64}
!456 = !{!"", !457, i64 0, !417, i64 64, !417, i64 72, !458, i64 80}
!457 = !{!"", !420, i64 0, !418, i64 8}
!458 = !{!"", !459, i64 0, !459, i64 4, !459, i64 8}
!459 = !{!"float", !418, i64 0}
!460 = !DILocation(line: 114, column: 24, scope: !140)
!461 = !DILocation(line: 47, column: 32, scope: !337, inlinedAt: !462)
!462 = distinct !DILocation(line: 114, column: 3, scope: !140)
!463 = !DILocation(line: 47, column: 50, scope: !337, inlinedAt: !462)
!464 = !DILocation(line: 49, column: 7, scope: !337, inlinedAt: !462)
!465 = !DILocation(line: 51, column: 14, scope: !466, inlinedAt: !462)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 51, column: 3)
!467 = distinct !DILexicalBlock(scope: !337, file: !1, line: 51, column: 3)
!468 = !DILocation(line: 51, column: 3, scope: !467, inlinedAt: !462)
!469 = !DILocation(line: 114, column: 3, scope: !140)
!470 = !DILocation(line: 52, column: 15, scope: !471, inlinedAt: !462)
!471 = distinct !DILexicalBlock(scope: !466, file: !1, line: 51, column: 27)
!472 = !DILocation(line: 52, column: 16, scope: !471, inlinedAt: !462)
!473 = !{!474, !459, i64 0}
!474 = !{!"", !459, i64 0, !459, i64 4, !418, i64 8, !459, i64 44, !459, i64 48}
!475 = !DILocation(line: 53, column: 15, scope: !471, inlinedAt: !462)
!476 = !DILocation(line: 53, column: 21, scope: !471, inlinedAt: !462)
!477 = !{!474, !459, i64 4}
!478 = !DILocation(line: 54, column: 15, scope: !471, inlinedAt: !462)
!479 = !DILocation(line: 334, column: 37, scope: !371, inlinedAt: !480)
!480 = distinct !DILocation(line: 54, column: 5, scope: !471, inlinedAt: !462)
!481 = !DILocation(line: 336, column: 14, scope: !371, inlinedAt: !480)
!482 = !DILocation(line: 55, column: 17, scope: !471, inlinedAt: !462)
!483 = !DILocation(line: 116, column: 3, scope: !140)
!484 = !{!454, !420, i64 4}
!485 = !{!456, !417, i64 72}
!486 = !DILocation(line: 117, column: 29, scope: !140)
!487 = !DILocation(line: 59, column: 32, scope: !345, inlinedAt: !488)
!488 = distinct !DILocation(line: 117, column: 3, scope: !140)
!489 = !DILocation(line: 65, column: 13, scope: !490, inlinedAt: !488)
!490 = distinct !DILexicalBlock(scope: !345, file: !1, line: 65, column: 7)
!491 = !DILocation(line: 65, column: 7, scope: !345, inlinedAt: !488)
!492 = !DILocation(line: 66, column: 21, scope: !493, inlinedAt: !488)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 66, column: 5)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 66, column: 5)
!495 = distinct !DILexicalBlock(scope: !490, file: !1, line: 65, column: 18)
!496 = !{!497, !420, i64 4}
!497 = !{!"", !459, i64 0, !420, i64 4, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !417, i64 88, !417, i64 96, !417, i64 104, !417, i64 112, !417, i64 120, !417, i64 128, !417, i64 136, !417, i64 144, !417, i64 152, !417, i64 160, !417, i64 168}
!498 = !DILocation(line: 66, column: 16, scope: !493, inlinedAt: !488)
!499 = !DILocation(line: 66, column: 5, scope: !494, inlinedAt: !488)
!500 = !DILocation(line: 67, column: 15, scope: !501, inlinedAt: !488)
!501 = distinct !DILexicalBlock(scope: !493, file: !1, line: 66, column: 31)
!502 = !{!497, !417, i64 120}
!503 = !DILocation(line: 70, column: 25, scope: !501, inlinedAt: !488)
!504 = !{!497, !417, i64 24}
!505 = !DILocation(line: 73, column: 5, scope: !506, inlinedAt: !488)
!506 = distinct !DILexicalBlock(scope: !495, file: !1, line: 73, column: 5)
!507 = !DILocation(line: 117, column: 3, scope: !140)
!508 = !DILocation(line: 67, column: 11, scope: !501, inlinedAt: !488)
!509 = !{!421, !421, i64 0}
!510 = !DILocation(line: 69, column: 7, scope: !501, inlinedAt: !488)
!511 = !DILocation(line: 69, column: 18, scope: !501, inlinedAt: !488)
!512 = !DILocation(line: 69, column: 21, scope: !501, inlinedAt: !488)
!513 = !{!514, !420, i64 0}
!514 = !{!"", !420, i64 0, !417, i64 8, !459, i64 16, !418, i64 20, !418, i64 32, !418, i64 44}
!515 = !DILocation(line: 70, column: 21, scope: !501, inlinedAt: !488)
!516 = !{!459, !459, i64 0}
!517 = !DILocation(line: 70, column: 18, scope: !501, inlinedAt: !488)
!518 = !DILocation(line: 70, column: 19, scope: !501, inlinedAt: !488)
!519 = !{!514, !459, i64 16}
!520 = !DILocation(line: 81, column: 21, scope: !521, inlinedAt: !488)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 81, column: 5)
!522 = distinct !DILexicalBlock(scope: !495, file: !1, line: 81, column: 5)
!523 = !DILocation(line: 81, column: 16, scope: !521, inlinedAt: !488)
!524 = !DILocation(line: 81, column: 5, scope: !522, inlinedAt: !488)
!525 = !DILocation(line: 82, column: 15, scope: !526, inlinedAt: !488)
!526 = distinct !DILexicalBlock(scope: !521, file: !1, line: 81, column: 31)
!527 = !DILocation(line: 78, column: 7, scope: !528, inlinedAt: !488)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 73, column: 30)
!529 = distinct !DILexicalBlock(scope: !506, file: !1, line: 73, column: 5)
!530 = !{!514, !417, i64 8}
!531 = !DILocation(line: 79, column: 19, scope: !528, inlinedAt: !488)
!532 = !DILocation(line: 82, column: 11, scope: !526, inlinedAt: !488)
!533 = !DILocation(line: 83, column: 22, scope: !526, inlinedAt: !488)
!534 = !DILocation(line: 83, column: 33, scope: !526, inlinedAt: !488)
!535 = !DILocation(line: 83, column: 36, scope: !526, inlinedAt: !488)
!536 = !DILocation(line: 83, column: 7, scope: !526, inlinedAt: !488)
!537 = !DILocation(line: 83, column: 18, scope: !526, inlinedAt: !488)
!538 = !DILocation(line: 83, column: 39, scope: !526, inlinedAt: !488)
!539 = !{!420, !420, i64 0}
!540 = !DILocation(line: 119, column: 26, scope: !140)
!541 = !{!454, !420, i64 12}
!542 = !DILocation(line: 92, column: 32, scope: !356, inlinedAt: !543)
!543 = distinct !DILocation(line: 119, column: 3, scope: !140)
!544 = !DILocation(line: 96, column: 12, scope: !356, inlinedAt: !543)
!545 = !DILocation(line: 94, column: 9, scope: !356, inlinedAt: !543)
!546 = !DILocation(line: 100, column: 10, scope: !356, inlinedAt: !543)
!547 = !DILocation(line: 100, column: 12, scope: !356, inlinedAt: !543)
!548 = !{!457, !420, i64 0}
!549 = !DILocation(line: 94, column: 7, scope: !356, inlinedAt: !543)
!550 = !DILocation(line: 101, column: 3, scope: !551, inlinedAt: !543)
!551 = distinct !DILexicalBlock(scope: !356, file: !1, line: 101, column: 3)
!552 = !DILocation(line: 119, column: 3, scope: !140)
!553 = !DILocation(line: 102, column: 5, scope: !554, inlinedAt: !543)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 101, column: 27)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 101, column: 3)
!556 = !{!417, !417, i64 0}
!557 = !DILocation(line: 120, column: 1, scope: !140)
!558 = !DILocation(line: 122, column: 23, scope: !251)
!559 = !DILocation(line: 122, column: 39, scope: !251)
!560 = !DILocation(line: 126, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !251, file: !1, line: 126, column: 8)
!562 = !DILocation(line: 126, column: 8, scope: !251)
!563 = !DILocation(line: 127, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !1, line: 127, column: 9)
!565 = distinct !DILexicalBlock(scope: !561, file: !1, line: 127, column: 9)
!566 = !DILocation(line: 127, column: 20, scope: !564)
!567 = !DILocation(line: 127, column: 9, scope: !565)
!568 = !DILocation(line: 128, column: 36, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !1, line: 127, column: 38)
!570 = !DILocation(line: 128, column: 13, scope: !569)
!571 = !DILocation(line: 130, column: 1, scope: !251)
!572 = !DILocation(line: 132, column: 25, scope: !259)
!573 = !DILocation(line: 132, column: 31, scope: !259)
!574 = !DILocation(line: 136, column: 12, scope: !259)
!575 = !{!576, !459, i64 24}
!576 = !{!"", !459, i64 0, !577, i64 8, !577, i64 16, !459, i64 24}
!577 = !{!"double", !418, i64 0}
!578 = !DILocation(line: 136, column: 18, scope: !259)
!579 = !DILocation(line: 136, column: 17, scope: !259)
!580 = !DILocation(line: 136, column: 9, scope: !259)
!581 = !DILocation(line: 136, column: 28, scope: !259)
!582 = !{!576, !577, i64 16}
!583 = !DILocation(line: 136, column: 32, scope: !259)
!584 = !DILocation(line: 136, column: 24, scope: !259)
!585 = !DILocation(line: 134, column: 8, scope: !259)
!586 = !DILocation(line: 137, column: 13, scope: !587)
!587 = distinct !DILexicalBlock(scope: !259, file: !1, line: 137, column: 7)
!588 = !DILocation(line: 137, column: 7, scope: !259)
!589 = !DILocation(line: 140, column: 17, scope: !587)
!590 = !DILocation(line: 140, column: 12, scope: !587)
!591 = !DILocation(line: 140, column: 24, scope: !587)
!592 = !DILocation(line: 140, column: 23, scope: !587)
!593 = !DILocation(line: 140, column: 5, scope: !587)
!594 = !DILocation(line: 141, column: 1, scope: !259)
!595 = !DILocation(line: 143, column: 30, scope: !276)
!596 = !DILocation(line: 143, column: 44, scope: !276)
!597 = !DILocation(line: 143, column: 59, scope: !276)
!598 = !DILocation(line: 149, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !276, file: !1, line: 149, column: 7)
!600 = !DILocation(line: 149, column: 10, scope: !599)
!601 = !DILocation(line: 149, column: 7, scope: !276)
!602 = !DILocation(line: 150, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !1, line: 149, column: 19)
!604 = !DILocation(line: 150, column: 7, scope: !603)
!605 = !DILocation(line: 151, column: 3, scope: !603)
!606 = !DILocation(line: 153, column: 5, scope: !599)
!607 = !DILocation(line: 155, column: 21, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 155, column: 3)
!609 = distinct !DILexicalBlock(scope: !276, file: !1, line: 155, column: 3)
!610 = !DILocation(line: 155, column: 14, scope: !608)
!611 = !DILocation(line: 155, column: 3, scope: !609)
!612 = !DILocation(line: 156, column: 34, scope: !608)
!613 = !DILocation(line: 156, column: 14, scope: !608)
!614 = !DILocation(line: 156, column: 21, scope: !608)
!615 = !DILocation(line: 156, column: 28, scope: !608)
!616 = !DILocation(line: 156, column: 5, scope: !608)
!617 = !DILocation(line: 158, column: 11, scope: !276)
!618 = !DILocation(line: 158, column: 3, scope: !276)
!619 = !DILocation(line: 147, column: 16, scope: !276)
!620 = !DILocation(line: 160, column: 21, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 160, column: 3)
!622 = distinct !DILexicalBlock(scope: !276, file: !1, line: 160, column: 3)
!623 = !DILocation(line: 160, column: 14, scope: !621)
!624 = !DILocation(line: 160, column: 3, scope: !622)
!625 = !DILocation(line: 161, column: 37, scope: !621)
!626 = !DILocation(line: 161, column: 18, scope: !621)
!627 = !DILocation(line: 161, column: 24, scope: !621)
!628 = !DILocation(line: 161, column: 31, scope: !621)
!629 = !DILocation(line: 161, column: 5, scope: !621)
!630 = !DILocation(line: 162, column: 1, scope: !276)
!631 = !DILocation(line: 173, column: 22, scope: !295)
!632 = !DILocation(line: 173, column: 32, scope: !295)
!633 = !DILocation(line: 173, column: 49, scope: !295)
!634 = !DILocation(line: 174, column: 15, scope: !295)
!635 = !DILocation(line: 174, column: 25, scope: !295)
!636 = !DILocation(line: 174, column: 40, scope: !295)
!637 = !DILocation(line: 174, column: 48, scope: !295)
!638 = !DILocation(line: 176, column: 10, scope: !295)
!639 = !DILocation(line: 180, column: 21, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 180, column: 3)
!641 = distinct !DILexicalBlock(scope: !295, file: !1, line: 180, column: 3)
!642 = !DILocation(line: 180, column: 14, scope: !640)
!643 = !DILocation(line: 180, column: 3, scope: !641)
!644 = !DILocation(line: 181, column: 11, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !1, line: 180, column: 33)
!646 = !DILocation(line: 181, column: 21, scope: !645)
!647 = !DILocation(line: 181, column: 22, scope: !645)
!648 = !DILocation(line: 184, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !295, file: !1, line: 184, column: 7)
!650 = !DILocation(line: 184, column: 7, scope: !295)
!651 = !DILocation(line: 185, column: 24, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 185, column: 5)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 185, column: 5)
!654 = distinct !DILexicalBlock(scope: !649, file: !1, line: 184, column: 14)
!655 = !DILocation(line: 185, column: 17, scope: !652)
!656 = !DILocation(line: 185, column: 5, scope: !653)
!657 = !DILocation(line: 186, column: 24, scope: !652)
!658 = !DILocation(line: 188, column: 20, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 188, column: 5)
!660 = distinct !DILexicalBlock(scope: !654, file: !1, line: 188, column: 5)
!661 = !DILocation(line: 188, column: 5, scope: !660)
!662 = !DILocation(line: 188, column: 26, scope: !659)
!663 = !DILocation(line: 189, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !1, line: 188, column: 41)
!665 = !DILocation(line: 191, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 190, column: 29)
!667 = distinct !DILexicalBlock(scope: !668, file: !1, line: 190, column: 7)
!668 = distinct !DILexicalBlock(scope: !664, file: !1, line: 190, column: 7)
!669 = !DILocation(line: 192, column: 8, scope: !666)
!670 = !DILocation(line: 186, column: 18, scope: !652)
!671 = !DILocation(line: 316, column: 36, scope: !365, inlinedAt: !672)
!672 = distinct !DILocation(line: 186, column: 7, scope: !652)
!673 = !DILocation(line: 321, column: 8, scope: !365, inlinedAt: !672)
!674 = !DILocation(line: 322, column: 3, scope: !365, inlinedAt: !672)
!675 = !DILocation(line: 322, column: 8, scope: !365, inlinedAt: !672)
!676 = !DILocation(line: 323, column: 3, scope: !365, inlinedAt: !672)
!677 = !DILocation(line: 323, column: 8, scope: !365, inlinedAt: !672)
!678 = !DILocation(line: 196, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !654, file: !1, line: 196, column: 5)
!680 = !DILocation(line: 198, column: 33, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 197, column: 29)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 197, column: 7)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 197, column: 7)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 196, column: 39)
!685 = distinct !DILexicalBlock(scope: !679, file: !1, line: 196, column: 5)
!686 = !DILocation(line: 189, column: 9, scope: !664)
!687 = !DILocation(line: 176, column: 8, scope: !295)
!688 = !DILocation(line: 191, column: 5, scope: !666)
!689 = !DILocation(line: 192, column: 2, scope: !666)
!690 = !DILocation(line: 190, column: 7, scope: !668)
!691 = !DILocation(line: 191, column: 18, scope: !666)
!692 = !DILocation(line: 191, column: 17, scope: !666)
!693 = !DILocation(line: 177, column: 8, scope: !295)
!694 = !DILocation(line: 192, column: 24, scope: !666)
!695 = !DILocation(line: 198, column: 44, scope: !681)
!696 = !DILocation(line: 197, column: 7, scope: !683)
!697 = !DILocation(line: 198, column: 2, scope: !681)
!698 = !DILocation(line: 198, column: 24, scope: !681)
!699 = !DILocation(line: 196, column: 18, scope: !685)
!700 = !DILocation(line: 202, column: 1, scope: !295)
!701 = !DILocation(line: 204, column: 26, scope: !310)
!702 = !DILocation(line: 204, column: 41, scope: !310)
!703 = !DILocation(line: 204, column: 53, scope: !310)
!704 = !DILocation(line: 204, column: 63, scope: !310)
!705 = !DILocation(line: 208, column: 16, scope: !310)
!706 = !DILocation(line: 212, column: 14, scope: !310)
!707 = !DILocation(line: 206, column: 20, scope: !310)
!708 = !DILocation(line: 213, column: 16, scope: !310)
!709 = !DILocation(line: 209, column: 17, scope: !310)
!710 = !DILocation(line: 214, column: 13, scope: !310)
!711 = !{!454, !417, i64 16}
!712 = !DILocation(line: 210, column: 25, scope: !310)
!713 = !DILocation(line: 334, column: 37, scope: !371, inlinedAt: !714)
!714 = distinct !DILocation(line: 216, column: 3, scope: !310)
!715 = !DILocation(line: 336, column: 14, scope: !371, inlinedAt: !714)
!716 = !DILocation(line: 341, column: 1, scope: !371, inlinedAt: !714)
!717 = !DILocation(line: 338, column: 22, scope: !371, inlinedAt: !714)
!718 = !DILocation(line: 207, column: 16, scope: !310)
!719 = !DILocation(line: 210, column: 16, scope: !310)
!720 = !DILocation(line: 220, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !310, file: !1, line: 220, column: 7)
!722 = !DILocation(line: 207, column: 18, scope: !310)
!723 = !DILocation(line: 220, column: 7, scope: !310)
!724 = !DILocation(line: 226, column: 23, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !1, line: 225, column: 8)
!726 = !DILocation(line: 226, column: 14, scope: !725)
!727 = !DILocation(line: 226, column: 5, scope: !725)
!728 = !DILocation(line: 206, column: 16, scope: !310)
!729 = !DILocation(line: 230, column: 14, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 230, column: 3)
!731 = distinct !DILexicalBlock(scope: !310, file: !1, line: 230, column: 3)
!732 = !DILocation(line: 230, column: 3, scope: !731)
!733 = !DILocation(line: 487, column: 26, scope: !378, inlinedAt: !734)
!734 = distinct !DILocation(line: 238, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !1, line: 237, column: 17)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 237, column: 9)
!737 = distinct !DILexicalBlock(scope: !730, file: !1, line: 230, column: 27)
!738 = !DILocation(line: 488, column: 26, scope: !378, inlinedAt: !734)
!739 = !DILocation(line: 489, column: 26, scope: !378, inlinedAt: !734)
!740 = !DILocation(line: 490, column: 26, scope: !378, inlinedAt: !734)
!741 = !DILocation(line: 491, column: 26, scope: !378, inlinedAt: !734)
!742 = !DILocation(line: 492, column: 26, scope: !378, inlinedAt: !734)
!743 = !DILocation(line: 493, column: 26, scope: !378, inlinedAt: !734)
!744 = !DILocation(line: 494, column: 26, scope: !378, inlinedAt: !734)
!745 = !DILocation(line: 495, column: 26, scope: !378, inlinedAt: !734)
!746 = !DILocation(line: 231, column: 8, scope: !737)
!747 = !DILocation(line: 231, column: 14, scope: !737)
!748 = !DILocation(line: 210, column: 21, scope: !310)
!749 = !DILocation(line: 237, column: 12, scope: !736)
!750 = !DILocation(line: 238, column: 13, scope: !735)
!751 = !DILocation(line: 237, column: 9, scope: !737)
!752 = !DILocation(line: 485, column: 42, scope: !378, inlinedAt: !734)
!753 = !DILocation(line: 485, column: 51, scope: !378, inlinedAt: !734)
!754 = !DILocation(line: 487, column: 16, scope: !378, inlinedAt: !734)
!755 = !DILocation(line: 487, column: 25, scope: !378, inlinedAt: !734)
!756 = !DILocation(line: 487, column: 15, scope: !378, inlinedAt: !734)
!757 = !DILocation(line: 488, column: 16, scope: !378, inlinedAt: !734)
!758 = !DILocation(line: 488, column: 25, scope: !378, inlinedAt: !734)
!759 = !DILocation(line: 488, column: 15, scope: !378, inlinedAt: !734)
!760 = !DILocation(line: 489, column: 16, scope: !378, inlinedAt: !734)
!761 = !DILocation(line: 489, column: 25, scope: !378, inlinedAt: !734)
!762 = !DILocation(line: 489, column: 15, scope: !378, inlinedAt: !734)
!763 = !DILocation(line: 490, column: 16, scope: !378, inlinedAt: !734)
!764 = !DILocation(line: 490, column: 25, scope: !378, inlinedAt: !734)
!765 = !DILocation(line: 490, column: 15, scope: !378, inlinedAt: !734)
!766 = !DILocation(line: 491, column: 16, scope: !378, inlinedAt: !734)
!767 = !DILocation(line: 491, column: 25, scope: !378, inlinedAt: !734)
!768 = !DILocation(line: 491, column: 15, scope: !378, inlinedAt: !734)
!769 = !DILocation(line: 492, column: 16, scope: !378, inlinedAt: !734)
!770 = !DILocation(line: 492, column: 25, scope: !378, inlinedAt: !734)
!771 = !DILocation(line: 492, column: 15, scope: !378, inlinedAt: !734)
!772 = !DILocation(line: 493, column: 16, scope: !378, inlinedAt: !734)
!773 = !DILocation(line: 493, column: 25, scope: !378, inlinedAt: !734)
!774 = !DILocation(line: 493, column: 15, scope: !378, inlinedAt: !734)
!775 = !DILocation(line: 494, column: 16, scope: !378, inlinedAt: !734)
!776 = !DILocation(line: 494, column: 25, scope: !378, inlinedAt: !734)
!777 = !DILocation(line: 494, column: 15, scope: !378, inlinedAt: !734)
!778 = !DILocation(line: 495, column: 16, scope: !378, inlinedAt: !734)
!779 = !DILocation(line: 495, column: 25, scope: !378, inlinedAt: !734)
!780 = !DILocation(line: 495, column: 15, scope: !378, inlinedAt: !734)
!781 = !DILocation(line: 207, column: 24, scope: !310)
!782 = !DILocation(line: 206, column: 18, scope: !310)
!783 = !DILocation(line: 240, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !735, file: !1, line: 240, column: 7)
!785 = !DILocation(line: 241, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !784, file: !1, line: 240, column: 7)
!787 = !DILocation(line: 241, column: 14, scope: !786)
!788 = !DILocation(line: 241, column: 13, scope: !786)
!789 = !DILocation(line: 241, column: 4, scope: !786)
!790 = !DILocation(line: 242, column: 19, scope: !735)
!791 = !DILocation(line: 242, column: 17, scope: !735)
!792 = !DILocation(line: 242, column: 18, scope: !735)
!793 = !DILocation(line: 243, column: 5, scope: !735)
!794 = !DILocation(line: 245, column: 17, scope: !736)
!795 = !DILocation(line: 245, column: 18, scope: !736)
!796 = !DILocation(line: 247, column: 15, scope: !737)
!797 = !DILocation(line: 247, column: 10, scope: !737)
!798 = !DILocation(line: 248, column: 10, scope: !737)
!799 = !DILocation(line: 250, column: 12, scope: !800)
!800 = distinct !DILexicalBlock(scope: !310, file: !1, line: 250, column: 7)
!801 = !DILocation(line: 250, column: 7, scope: !310)
!802 = !DILocation(line: 251, column: 6, scope: !800)
!803 = !DILocation(line: 251, column: 5, scope: !800)
!804 = !DILocation(line: 253, column: 3, scope: !310)
!805 = !DILocation(line: 269, column: 26, scope: !330)
!806 = !DILocation(line: 269, column: 41, scope: !330)
!807 = !DILocation(line: 269, column: 51, scope: !330)
!808 = !DILocation(line: 272, column: 36, scope: !330)
!809 = !{!456, !420, i64 0}
!810 = !DILocation(line: 272, column: 39, scope: !330)
!811 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !812)
!812 = distinct !DILocation(line: 272, column: 18, scope: !330)
!813 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !812)
!814 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !812)
!815 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !812)
!816 = !DILocation(line: 263, column: 14, scope: !817, inlinedAt: !812)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 263, column: 3)
!818 = distinct !DILexicalBlock(scope: !385, file: !1, line: 263, column: 3)
!819 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !812)
!820 = !DILocation(line: 272, column: 3, scope: !330)
!821 = !DILocation(line: 272, column: 16, scope: !330)
!822 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !823)
!823 = distinct !DILocation(line: 273, column: 18, scope: !330)
!824 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !823)
!825 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !823)
!826 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !823)
!827 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !823)
!828 = !DILocation(line: 272, column: 18, scope: !330)
!829 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !812)
!830 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !812)
!831 = !DILocation(line: 273, column: 39, scope: !330)
!832 = !DILocation(line: 273, column: 18, scope: !330)
!833 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !823)
!834 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !823)
!835 = !DILocation(line: 273, column: 3, scope: !330)
!836 = !DILocation(line: 273, column: 16, scope: !330)
!837 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !838)
!838 = distinct !DILocation(line: 274, column: 18, scope: !330)
!839 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !838)
!840 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !838)
!841 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !838)
!842 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !838)
!843 = !DILocation(line: 274, column: 39, scope: !330)
!844 = !DILocation(line: 274, column: 18, scope: !330)
!845 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !838)
!846 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !838)
!847 = !DILocation(line: 274, column: 3, scope: !330)
!848 = !DILocation(line: 274, column: 16, scope: !330)
!849 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !850)
!850 = distinct !DILocation(line: 275, column: 20, scope: !330)
!851 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !850)
!852 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !850)
!853 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !850)
!854 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !850)
!855 = !DILocation(line: 275, column: 41, scope: !330)
!856 = !DILocation(line: 275, column: 20, scope: !330)
!857 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !850)
!858 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !850)
!859 = !DILocation(line: 275, column: 3, scope: !330)
!860 = !DILocation(line: 275, column: 18, scope: !330)
!861 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !862)
!862 = distinct !DILocation(line: 276, column: 19, scope: !330)
!863 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !862)
!864 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !862)
!865 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !862)
!866 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !862)
!867 = !DILocation(line: 276, column: 40, scope: !330)
!868 = !DILocation(line: 276, column: 19, scope: !330)
!869 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !862)
!870 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !862)
!871 = !DILocation(line: 276, column: 3, scope: !330)
!872 = !DILocation(line: 276, column: 16, scope: !330)
!873 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !874)
!874 = distinct !DILocation(line: 277, column: 19, scope: !330)
!875 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !874)
!876 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !874)
!877 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !874)
!878 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !874)
!879 = !DILocation(line: 277, column: 40, scope: !330)
!880 = !DILocation(line: 277, column: 19, scope: !330)
!881 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !874)
!882 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !874)
!883 = !DILocation(line: 277, column: 3, scope: !330)
!884 = !DILocation(line: 277, column: 16, scope: !330)
!885 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !886)
!886 = distinct !DILocation(line: 281, column: 18, scope: !330)
!887 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !886)
!888 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !886)
!889 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !886)
!890 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !886)
!891 = !DILocation(line: 281, column: 39, scope: !330)
!892 = !DILocation(line: 281, column: 18, scope: !330)
!893 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !886)
!894 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !886)
!895 = !DILocation(line: 281, column: 3, scope: !330)
!896 = !DILocation(line: 281, column: 16, scope: !330)
!897 = !DILocation(line: 256, column: 23, scope: !385, inlinedAt: !898)
!898 = distinct !DILocation(line: 282, column: 18, scope: !330)
!899 = !DILocation(line: 256, column: 30, scope: !385, inlinedAt: !898)
!900 = !DILocation(line: 258, column: 8, scope: !385, inlinedAt: !898)
!901 = !DILocation(line: 259, column: 8, scope: !385, inlinedAt: !898)
!902 = !DILocation(line: 263, column: 3, scope: !818, inlinedAt: !898)
!903 = !DILocation(line: 282, column: 18, scope: !330)
!904 = !DILocation(line: 264, column: 9, scope: !817, inlinedAt: !898)
!905 = !DILocation(line: 264, column: 8, scope: !817, inlinedAt: !898)
!906 = !DILocation(line: 282, column: 3, scope: !330)
!907 = !DILocation(line: 282, column: 16, scope: !330)
!908 = !DILocation(line: 283, column: 1, scope: !330)
