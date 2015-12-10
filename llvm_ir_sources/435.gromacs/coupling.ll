; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }

@debug = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [9 x i8] c"PC: pres\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PC: ekin\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"PC: vir \00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"PC: box \00", align 1
@parrinellorahman_pcoupl.winv = internal unnamed_addr global [3 x [3 x float]] zeroinitializer, align 16
@parrinellorahman_pcoupl.bFirst = internal unnamed_addr global i1 false
@.str4 = private unnamed_addr constant [63 x i8] c"Parrinello-Rahman pressure coupling type %s not supported yet\0A\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@epcoupltype_names = external global [5 x i8*]
@stdlog = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [52 x i8] c"\0AStep %d  Warning: Pressure scaling more than 1%%.\0A\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Berendsen pressure coupling type %s not supported yet\0A\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"PC: pres \00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"PC: mu   \00", align 1
@.str10 = private unnamed_addr constant [65 x i8] c"\0AStep %d  Warning: pressure scaling more than 1%%, mu: %g %g %g\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [33 x i8] c"TC: group %d: T: %g, Lambda: %g\0A\00", align 1
@nosehoover_tcoupl.Qinv = internal unnamed_addr global float* null, align 8
@.str13 = private unnamed_addr constant [5 x i8] c"Qinv\00", align 1
@.str14 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"Determinant = %f\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @calc_pres(i32 %ePBC, [3 x float]* %box, [3 x float]* %ekin, [3 x float]* %vir, [3 x float]* %pres, float %Elr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ePBC}, i64 0, metadata !164), !dbg !484
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !165), !dbg !484
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !166), !dbg !484
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %vir}, i64 0, metadata !167), !dbg !484
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %pres}, i64 0, metadata !168), !dbg !484
  tail call void @llvm.dbg.value(metadata !{float %Elr}, i64 0, metadata !169), !dbg !484
  %cmp = icmp eq i32 %ePBC, 1, !dbg !485
  br i1 %cmp, label %if.then, label %if.else, !dbg !485

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %pres}, i64 0, metadata !486) #4, !dbg !488
  tail call void @llvm.dbg.value(metadata !489, i64 0, metadata !490) #4, !dbg !491
  %0 = bitcast [3 x float]* %pres to i8*, !dbg !492
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 4, i1 false) #4, !dbg !493
  br label %if.end25, !dbg !487

if.else:                                          ; preds = %entry
  %conv1 = fdiv float %Elr, 6.000000e+00, !dbg !494
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !173), !dbg !494
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !496), !dbg !498
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !499
  %1 = load float* %arrayidx1.i, align 4, !dbg !499, !tbaa !500
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !499
  %2 = load float* %arrayidx3.i, align 4, !dbg !499, !tbaa !500
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !499
  %3 = load float* %arrayidx5.i, align 4, !dbg !499, !tbaa !500
  %mul.i = fmul float %2, %3, !dbg !499
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !499
  %4 = load float* %arrayidx7.i, align 4, !dbg !499, !tbaa !500
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !499
  %5 = load float* %arrayidx9.i, align 4, !dbg !499, !tbaa !500
  %mul10.i = fmul float %4, %5, !dbg !499
  %sub.i = fsub float %mul.i, %mul10.i, !dbg !499
  %mul11.i = fmul float %1, %sub.i, !dbg !499
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !499
  %6 = load float* %arrayidx13.i, align 4, !dbg !499, !tbaa !500
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !499
  %7 = load float* %arrayidx15.i, align 4, !dbg !499, !tbaa !500
  %mul18.i = fmul float %3, %7, !dbg !499
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !499
  %8 = load float* %arrayidx22.i, align 4, !dbg !499, !tbaa !500
  %mul23.i = fmul float %4, %8, !dbg !499
  %sub24.i = fsub float %mul18.i, %mul23.i, !dbg !499
  %mul25.i = fmul float %6, %sub24.i, !dbg !499
  %sub26.i = fsub float %mul11.i, %mul25.i, !dbg !499
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !499
  %9 = load float* %arrayidx28.i, align 4, !dbg !499, !tbaa !500
  %mul33.i = fmul float %5, %7, !dbg !499
  %mul38.i = fmul float %2, %8, !dbg !499
  %sub39.i = fsub float %mul33.i, %mul38.i, !dbg !499
  %mul40.i = fmul float %9, %sub39.i, !dbg !499
  %add.i = fadd float %mul40.i, %sub26.i, !dbg !499
  %conv2 = fpext float %add.i to double, !dbg !497
  %div3 = fdiv double 3.321080e+01, %conv2, !dbg !497
  %conv4 = fptrunc double %div3 to float, !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %conv4}, i64 0, metadata !172), !dbg !497
  tail call void @llvm.dbg.value(metadata !150, i64 0, metadata !170), !dbg !503
  br label %for.cond7.preheader, !dbg !503

for.cond7.preheader:                              ; preds = %for.inc21, %if.else
  %indvars.iv41 = phi i64 [ 0, %if.else ], [ %indvars.iv.next42, %for.inc21 ]
  br label %for.body10, !dbg !505

for.body10:                                       ; preds = %for.body10, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body10 ]
  %arrayidx12 = getelementptr inbounds [3 x float]* %ekin, i64 %indvars.iv41, i64 %indvars.iv, !dbg !507
  %10 = load float* %arrayidx12, align 4, !dbg !507, !tbaa !500
  %arrayidx16 = getelementptr inbounds [3 x float]* %vir, i64 %indvars.iv41, i64 %indvars.iv, !dbg !507
  %11 = load float* %arrayidx16, align 4, !dbg !507, !tbaa !500
  %sub = fsub float %10, %11, !dbg !507
  %add = fadd float %conv1, %sub, !dbg !507
  %mul = fmul float %conv4, %add, !dbg !507
  %arrayidx20 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv41, i64 %indvars.iv, !dbg !507
  store float %mul, float* %arrayidx20, align 4, !dbg !507, !tbaa !500
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !505
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !505
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !505
  br i1 %exitcond, label %for.inc21, label %for.body10, !dbg !505

for.inc21:                                        ; preds = %for.body10
  %indvars.iv.next42 = add i64 %indvars.iv41, 1, !dbg !503
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32, !dbg !503
  %exitcond44 = icmp eq i32 %lftr.wideiv43, 3, !dbg !503
  br i1 %exitcond44, label %for.end23, label %for.cond7.preheader, !dbg !503

for.end23:                                        ; preds = %for.inc21
  %12 = load %struct._IO_FILE** @debug, align 8, !dbg !508, !tbaa !509
  %tobool = icmp eq %struct._IO_FILE* %12, null, !dbg !508
  br i1 %tobool, label %if.end25, label %if.then24, !dbg !508

if.then24:                                        ; preds = %for.end23
  tail call void @pr_rvecs(%struct._IO_FILE* %12, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), [3 x float]* %pres, i32 3) #6, !dbg !510
  %13 = load %struct._IO_FILE** @debug, align 8, !dbg !512, !tbaa !509
  tail call void @pr_rvecs(%struct._IO_FILE* %13, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), [3 x float]* %ekin, i32 3) #6, !dbg !512
  %14 = load %struct._IO_FILE** @debug, align 8, !dbg !513, !tbaa !509
  tail call void @pr_rvecs(%struct._IO_FILE* %14, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), [3 x float]* %vir, i32 3) #6, !dbg !513
  %15 = load %struct._IO_FILE** @debug, align 8, !dbg !514, !tbaa !509
  tail call void @pr_rvecs(%struct._IO_FILE* %15, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #6, !dbg !514
  br label %if.end25, !dbg !515

if.end25:                                         ; preds = %for.end23, %if.then24, %if.then
  ret void, !dbg !516
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @calc_temp(float %ekin, float %nrdf) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %ekin}, i64 0, metadata !178), !dbg !517
  tail call void @llvm.dbg.value(metadata !{float %nrdf}, i64 0, metadata !179), !dbg !517
  %cmp = fcmp ogt float %nrdf, 0.000000e+00, !dbg !518
  br i1 %cmp, label %if.then, label %return, !dbg !518

if.then:                                          ; preds = %entry
  %conv = fpext float %ekin to double, !dbg !519
  %mul = fmul double %conv, 2.000000e+00, !dbg !519
  %conv1 = fpext float %nrdf to double, !dbg !519
  %mul2 = fmul double %conv1, 0x3F810732CDE67DC4, !dbg !519
  %div = fdiv double %mul, %mul2, !dbg !519
  %conv3 = fptrunc double %div to float, !dbg !519
  br label %return, !dbg !519

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv3, %if.then ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !520
}

; Function Attrs: nounwind optsize uwtable
define void @parrinellorahman_pcoupl(%struct.t_inputrec* nocapture %ir, i32 %step, [3 x float]* nocapture %pres, [3 x float]* nocapture %box, [3 x float]* nocapture %boxv, [3 x float]* nocapture %M) #0 {
entry:
  %invbox = alloca [3 x [3 x float]], align 16
  %pdiff = alloca [3 x [3 x float]], align 16
  %t1 = alloca [3 x [3 x float]], align 16
  %t2 = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !302), !dbg !521
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !303), !dbg !521
  call void @llvm.dbg.value(metadata !{[3 x float]* %pres}, i64 0, metadata !304), !dbg !521
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !305), !dbg !522
  call void @llvm.dbg.value(metadata !{[3 x float]* %boxv}, i64 0, metadata !306), !dbg !522
  call void @llvm.dbg.value(metadata !{[3 x float]* %M}, i64 0, metadata !307), !dbg !522
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !523
  %0 = load float* %arrayidx1, align 4, !dbg !523, !tbaa !500
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !523
  %1 = load float* %arrayidx3, align 4, !dbg !523, !tbaa !500
  %mul = fmul float %0, %1, !dbg !523
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !523
  %2 = load float* %arrayidx5, align 4, !dbg !523, !tbaa !500
  %mul6 = fmul float %mul, %2, !dbg !523
  call void @llvm.dbg.value(metadata !{float %mul6}, i64 0, metadata !310), !dbg !523
  %conv = fpext float %mul6 to double, !dbg !524
  %div = fdiv double %conv, 1.660540e+01, !dbg !524
  %conv7 = fptrunc double %div to float, !dbg !524
  call void @llvm.dbg.value(metadata !{float %conv7}, i64 0, metadata !311), !dbg !524
  %3 = bitcast [3 x [3 x float]]* %invbox to i8*, !dbg !525
  call void @llvm.lifetime.start(i64 36, i8* %3) #4, !dbg !525
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %invbox}, metadata !317), !dbg !525
  %4 = bitcast [3 x [3 x float]]* %pdiff to i8*, !dbg !525
  call void @llvm.lifetime.start(i64 36, i8* %4) #4, !dbg !525
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %pdiff}, metadata !318), !dbg !525
  %5 = bitcast [3 x [3 x float]]* %t1 to i8*, !dbg !525
  call void @llvm.lifetime.start(i64 36, i8* %5) #4, !dbg !525
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %t1}, metadata !319), !dbg !525
  %6 = bitcast [3 x [3 x float]]* %t2 to i8*, !dbg !525
  call void @llvm.lifetime.start(i64 36, i8* %6) #4, !dbg !525
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %t2}, metadata !320), !dbg !525
  %.b = load i1* @parrinellorahman_pcoupl.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !526

if.then:                                          ; preds = %entry
  %cmp = fcmp ogt float %0, %1, !dbg !527
  %. = select i1 %cmp, float %0, float %1, !dbg !527
  call void @llvm.dbg.value(metadata !{float %.}, i64 0, metadata !321), !dbg !527
  %cmp19 = fcmp ogt float %., %2, !dbg !528
  %cond26 = select i1 %cmp19, float %., float %2, !dbg !528
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !529
  br label %for.cond29.preheader, !dbg !532

for.cond29.preheader:                             ; preds = %for.inc49, %if.then
  %indvars.iv612 = phi i64 [ 0, %if.then ], [ %indvars.iv.next613, %for.inc49 ]
  br label %for.body32, !dbg !533

for.body32:                                       ; preds = %for.body32, %for.cond29.preheader
  %indvars.iv608 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next609, %for.body32 ]
  %arrayidx35 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv612, i64 %indvars.iv608, !dbg !529
  %7 = load float* %arrayidx35, align 4, !dbg !529, !tbaa !500
  %conv36 = fpext float %7 to double, !dbg !529
  %mul37 = fmul double %conv36, 0x4043BD3CC9BE45DE, !dbg !529
  %8 = load float* %tau_p, align 4, !dbg !529, !tbaa !500
  %mul38 = fmul float %8, 3.000000e+00, !dbg !529
  %mul40 = fmul float %8, %mul38, !dbg !529
  %mul41 = fmul float %cond26, %mul40, !dbg !529
  %conv42 = fpext float %mul41 to double, !dbg !529
  %div43 = fdiv double %mul37, %conv42, !dbg !529
  %conv44 = fptrunc double %div43 to float, !dbg !529
  %arrayidx48 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv612, i64 %indvars.iv608, !dbg !529
  store float %conv44, float* %arrayidx48, align 4, !dbg !529, !tbaa !500
  %indvars.iv.next609 = add i64 %indvars.iv608, 1, !dbg !533
  %lftr.wideiv610 = trunc i64 %indvars.iv.next609 to i32, !dbg !533
  %exitcond611 = icmp eq i32 %lftr.wideiv610, 3, !dbg !533
  br i1 %exitcond611, label %for.inc49, label %for.body32, !dbg !533

for.inc49:                                        ; preds = %for.body32
  %indvars.iv.next613 = add i64 %indvars.iv612, 1, !dbg !532
  %lftr.wideiv614 = trunc i64 %indvars.iv.next613 to i32, !dbg !532
  %exitcond615 = icmp eq i32 %lftr.wideiv614, 3, !dbg !532
  br i1 %exitcond615, label %for.end51, label %for.cond29.preheader, !dbg !532

for.end51:                                        ; preds = %for.inc49
  store i1 true, i1* @parrinellorahman_pcoupl.bFirst, align 1
  %.pre = load float* %arrayidx1, align 4, !dbg !534, !tbaa !500
  %.pre616 = load float* %arrayidx3, align 4, !dbg !534, !tbaa !500
  %.pre617 = load float* %arrayidx5, align 4, !dbg !534, !tbaa !500
  br label %if.end, !dbg !537

if.end:                                           ; preds = %entry, %for.end51
  %9 = phi float [ %2, %entry ], [ %.pre617, %for.end51 ]
  %10 = phi float [ %1, %entry ], [ %.pre616, %for.end51 ]
  %11 = phi float [ %0, %entry ], [ %.pre, %for.end51 ]
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, !dbg !536
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !538) #4, !dbg !539
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !540) #4, !dbg !539
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !542) #4, !dbg !543
  call void @llvm.dbg.value(metadata !544, i64 0, metadata !545) #4, !dbg !546
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !547) #4, !dbg !548
  %mul.i.i = fmul float %10, %9, !dbg !534
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !534
  %12 = load float* %arrayidx7.i.i, align 4, !dbg !534, !tbaa !500
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !534
  %13 = load float* %arrayidx9.i.i, align 4, !dbg !534, !tbaa !500
  %mul10.i.i = fmul float %12, %13, !dbg !534
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i, !dbg !534
  %mul11.i.i = fmul float %11, %sub.i.i, !dbg !534
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !534
  %14 = load float* %arrayidx13.i.i, align 4, !dbg !534, !tbaa !500
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !534
  %15 = load float* %arrayidx15.i.i, align 4, !dbg !534, !tbaa !500
  %mul18.i.i = fmul float %9, %15, !dbg !534
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !534
  %16 = load float* %arrayidx22.i.i, align 4, !dbg !534, !tbaa !500
  %mul23.i.i = fmul float %12, %16, !dbg !534
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i, !dbg !534
  %mul25.i.i = fmul float %14, %sub24.i.i, !dbg !534
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i, !dbg !534
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !534
  %17 = load float* %arrayidx28.i.i, align 4, !dbg !534, !tbaa !500
  %mul33.i.i = fmul float %13, %15, !dbg !534
  %mul38.i.i = fmul float %10, %16, !dbg !534
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i, !dbg !534
  %mul40.i.i = fmul float %17, %sub39.i.i, !dbg !534
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i, !dbg !534
  call void @llvm.dbg.value(metadata !{float %add.i.i}, i64 0, metadata !549) #4, !dbg !535
  %conv1.i = fdiv float 1.000000e+00, %add.i.i, !dbg !550
  call void @llvm.dbg.value(metadata !{float %conv1.i}, i64 0, metadata !551) #4, !dbg !550
  %fabsf.i = call float @fabsf(float %conv1.i) #7, !dbg !552
  call void @llvm.dbg.value(metadata !{float %fabsf.i}, i64 0, metadata !553) #4, !dbg !552
  %cmp.i = fcmp ole float %fabsf.i, 0x3C32725DE0000000, !dbg !554
  %cmp6.i = fcmp oge float %fabsf.i, 0x43ABC16D60000000, !dbg !554
  %or.cond.i = or i1 %cmp.i, %cmp6.i, !dbg !554
  br i1 %or.cond.i, label %if.then.i, label %m_inv.exit, !dbg !554

if.then.i:                                        ; preds = %if.end
  %conv2.i = fpext float %conv1.i to double, !dbg !552
  %div9.i = fdiv double 1.000000e+00, %conv2.i, !dbg !555
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), double %div9.i) #6, !dbg !555
  %.pre.i = load float* %arrayidx3, align 4, !dbg !556, !tbaa !500
  %.pre192.i = load float* %arrayidx5, align 4, !dbg !556, !tbaa !500
  %.pre193.i = load float* %arrayidx7.i.i, align 4, !dbg !556, !tbaa !500
  %.pre194.i = load float* %arrayidx9.i.i, align 4, !dbg !556, !tbaa !500
  %.pre618 = load float* %arrayidx15.i.i, align 4, !dbg !557, !tbaa !500
  %.pre619 = load float* %arrayidx22.i.i, align 4, !dbg !557, !tbaa !500
  %.pre620 = load float* %arrayidx13.i.i, align 4, !dbg !558, !tbaa !500
  %.pre621 = load float* %arrayidx28.i.i, align 4, !dbg !558, !tbaa !500
  %.pre622 = load float* %arrayidx1, align 4, !dbg !559, !tbaa !500
  br label %m_inv.exit, !dbg !555

m_inv.exit:                                       ; preds = %if.end, %if.then.i
  %18 = phi float [ %11, %if.end ], [ %.pre622, %if.then.i ]
  %19 = phi float [ %17, %if.end ], [ %.pre621, %if.then.i ]
  %20 = phi float [ %14, %if.end ], [ %.pre620, %if.then.i ]
  %21 = phi float [ %16, %if.end ], [ %.pre619, %if.then.i ]
  %22 = phi float [ %15, %if.end ], [ %.pre618, %if.then.i ]
  %23 = phi float [ %13, %if.end ], [ %.pre194.i, %if.then.i ]
  %24 = phi float [ %12, %if.end ], [ %.pre193.i, %if.then.i ]
  %25 = phi float [ %9, %if.end ], [ %.pre192.i, %if.then.i ]
  %26 = phi float [ %10, %if.end ], [ %.pre.i, %if.then.i ]
  %mul.i = fmul float %25, %26, !dbg !556
  %mul17.i = fmul float %23, %24, !dbg !556
  %sub.i = fsub float %mul.i, %mul17.i, !dbg !556
  %mul18.i = fmul float %conv1.i, %sub.i, !dbg !556
  %arrayidx20.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 0, !dbg !556
  store float %mul18.i, float* %arrayidx20.i, align 16, !dbg !556, !tbaa !500
  %sub21.i = fsub float -0.000000e+00, %conv1.i, !dbg !557
  %mul26.i = fmul float %22, %25, !dbg !557
  %mul31.i = fmul float %24, %21, !dbg !557
  %sub32.i = fsub float %mul26.i, %mul31.i, !dbg !557
  %mul33.i = fmul float %sub32.i, %sub21.i, !dbg !557
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 1, !dbg !557
  store float %mul33.i, float* %arrayidx35.i, align 4, !dbg !557, !tbaa !500
  %mul40.i = fmul float %22, %23, !dbg !560
  %mul45.i = fmul float %26, %21, !dbg !560
  %sub46.i = fsub float %mul40.i, %mul45.i, !dbg !560
  %mul47.i = fmul float %conv1.i, %sub46.i, !dbg !560
  %arrayidx49.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 2, !dbg !560
  store float %mul47.i, float* %arrayidx49.i, align 8, !dbg !560, !tbaa !500
  %mul55.i = fmul float %20, %25, !dbg !558
  %mul60.i = fmul float %19, %23, !dbg !558
  %sub61.i = fsub float %mul55.i, %mul60.i, !dbg !558
  %mul62.i = fmul float %sub61.i, %sub21.i, !dbg !558
  %arrayidx64.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 1, i64 0, !dbg !558
  store float %mul62.i, float* %arrayidx64.i, align 4, !dbg !558, !tbaa !500
  %mul69.i = fmul float %18, %25, !dbg !559
  %mul74.i = fmul float %19, %21, !dbg !559
  %sub75.i = fsub float %mul69.i, %mul74.i, !dbg !559
  %mul76.i = fmul float %conv1.i, %sub75.i, !dbg !559
  %arrayidx78.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 1, i64 1, !dbg !559
  store float %mul76.i, float* %arrayidx78.i, align 4, !dbg !559, !tbaa !500
  %mul84.i = fmul float %18, %23, !dbg !561
  %mul89.i = fmul float %20, %21, !dbg !561
  %sub90.i = fsub float %mul84.i, %mul89.i, !dbg !561
  %mul91.i = fmul float %sub90.i, %sub21.i, !dbg !561
  %arrayidx93.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 1, i64 2, !dbg !561
  store float %mul91.i, float* %arrayidx93.i, align 4, !dbg !561, !tbaa !500
  %mul98.i = fmul float %20, %24, !dbg !562
  %mul103.i = fmul float %19, %26, !dbg !562
  %sub104.i = fsub float %mul98.i, %mul103.i, !dbg !562
  %mul105.i = fmul float %conv1.i, %sub104.i, !dbg !562
  %arrayidx107.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 0, !dbg !562
  store float %mul105.i, float* %arrayidx107.i, align 8, !dbg !562, !tbaa !500
  %mul113.i = fmul float %18, %24, !dbg !563
  %mul118.i = fmul float %19, %22, !dbg !563
  %sub119.i = fsub float %mul113.i, %mul118.i, !dbg !563
  %mul120.i = fmul float %sub119.i, %sub21.i, !dbg !563
  %arrayidx122.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 1, !dbg !563
  store float %mul120.i, float* %arrayidx122.i, align 4, !dbg !563, !tbaa !500
  %mul127.i = fmul float %18, %26, !dbg !564
  %mul132.i = fmul float %20, %22, !dbg !564
  %sub133.i = fsub float %mul127.i, %mul132.i, !dbg !564
  %mul134.i = fmul float %conv1.i, %sub133.i, !dbg !564
  %arrayidx136.i = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 2, !dbg !564
  store float %mul134.i, float* %arrayidx136.i, align 8, !dbg !564, !tbaa !500
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %pres}, i64 0, metadata !565), !dbg !567
  %arrayidx1.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0, !dbg !568
  %27 = load float* %arrayidx1.i, align 4, !dbg !568, !tbaa !500
  %arrayidx3.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0, !dbg !568
  %28 = load float* %arrayidx3.i, align 4, !dbg !568, !tbaa !500
  %sub.i449 = fsub float %27, %28, !dbg !568
  %arrayidx5.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 0, !dbg !568
  store float %sub.i449, float* %arrayidx5.i, align 16, !dbg !568, !tbaa !500
  %arrayidx7.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 1, !dbg !569
  %29 = load float* %arrayidx7.i, align 4, !dbg !569, !tbaa !500
  %arrayidx9.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 1, !dbg !569
  %30 = load float* %arrayidx9.i, align 4, !dbg !569, !tbaa !500
  %sub10.i = fsub float %29, %30, !dbg !569
  %arrayidx12.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 1, !dbg !569
  store float %sub10.i, float* %arrayidx12.i, align 4, !dbg !569, !tbaa !500
  %arrayidx14.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 2, !dbg !570
  %31 = load float* %arrayidx14.i, align 4, !dbg !570, !tbaa !500
  %arrayidx16.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 2, !dbg !570
  %32 = load float* %arrayidx16.i, align 4, !dbg !570, !tbaa !500
  %sub17.i = fsub float %31, %32, !dbg !570
  %arrayidx19.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 2, !dbg !570
  store float %sub17.i, float* %arrayidx19.i, align 8, !dbg !570, !tbaa !500
  %arrayidx21.i = getelementptr inbounds [3 x float]* %pres, i64 1, i64 0, !dbg !571
  %33 = load float* %arrayidx21.i, align 4, !dbg !571, !tbaa !500
  %arrayidx23.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0, !dbg !571
  %34 = load float* %arrayidx23.i, align 4, !dbg !571, !tbaa !500
  %sub24.i = fsub float %33, %34, !dbg !571
  %arrayidx26.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 0, !dbg !571
  store float %sub24.i, float* %arrayidx26.i, align 4, !dbg !571, !tbaa !500
  %arrayidx28.i = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1, !dbg !572
  %35 = load float* %arrayidx28.i, align 4, !dbg !572, !tbaa !500
  %arrayidx30.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 1, !dbg !572
  %36 = load float* %arrayidx30.i, align 4, !dbg !572, !tbaa !500
  %sub31.i = fsub float %35, %36, !dbg !572
  %arrayidx33.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 1, !dbg !572
  store float %sub31.i, float* %arrayidx33.i, align 4, !dbg !572, !tbaa !500
  %arrayidx35.i450 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 2, !dbg !573
  %37 = load float* %arrayidx35.i450, align 4, !dbg !573, !tbaa !500
  %arrayidx37.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 2, !dbg !573
  %38 = load float* %arrayidx37.i, align 4, !dbg !573, !tbaa !500
  %sub38.i = fsub float %37, %38, !dbg !573
  %arrayidx40.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 2, !dbg !573
  store float %sub38.i, float* %arrayidx40.i, align 4, !dbg !573, !tbaa !500
  %arrayidx42.i = getelementptr inbounds [3 x float]* %pres, i64 2, i64 0, !dbg !574
  %39 = load float* %arrayidx42.i, align 4, !dbg !574, !tbaa !500
  %arrayidx44.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0, !dbg !574
  %40 = load float* %arrayidx44.i, align 4, !dbg !574, !tbaa !500
  %sub45.i = fsub float %39, %40, !dbg !574
  %arrayidx47.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 0, !dbg !574
  store float %sub45.i, float* %arrayidx47.i, align 8, !dbg !574, !tbaa !500
  %arrayidx49.i451 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 1, !dbg !575
  %41 = load float* %arrayidx49.i451, align 4, !dbg !575, !tbaa !500
  %arrayidx51.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 1, !dbg !575
  %42 = load float* %arrayidx51.i, align 4, !dbg !575, !tbaa !500
  %sub52.i = fsub float %41, %42, !dbg !575
  %arrayidx54.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 1, !dbg !575
  store float %sub52.i, float* %arrayidx54.i, align 4, !dbg !575, !tbaa !500
  %arrayidx56.i = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2, !dbg !576
  %43 = load float* %arrayidx56.i, align 4, !dbg !576, !tbaa !500
  %arrayidx58.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2, !dbg !576
  %44 = load float* %arrayidx58.i, align 4, !dbg !576, !tbaa !500
  %sub59.i = fsub float %43, %44, !dbg !576
  %arrayidx61.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 2, !dbg !576
  store float %sub59.i, float* %arrayidx61.i, align 8, !dbg !576, !tbaa !500
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !577
  %45 = load i32* %epct, align 4, !dbg !577, !tbaa !578
  %cmp54 = icmp eq i32 %45, 3, !dbg !577
  br i1 %cmp54, label %if.then56, label %if.end88, !dbg !577

if.then56:                                        ; preds = %m_inv.exit
  %add = fadd float %27, %35, !dbg !579
  %conv63 = fmul float %add, 5.000000e-01, !dbg !579
  call void @llvm.dbg.value(metadata !{float %conv63}, i64 0, metadata !316), !dbg !579
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !308), !dbg !581
  br label %for.body67, !dbg !581

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %if.then56
  %46 = phi float [ %28, %if.then56 ], [ %.pre627, %for.body67.for.body67_crit_edge ]
  %indvars.iv604 = phi i64 [ 0, %if.then56 ], [ %indvars.iv.next605, %for.body67.for.body67_crit_edge ]
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv604, i64 %indvars.iv604, !dbg !583
  %47 = load float* %arrayidx78, align 4, !dbg !583, !tbaa !500
  %div79 = fdiv float %46, %47, !dbg !583
  %sub = fsub float %43, %div79, !dbg !583
  %sub80 = fsub float %conv63, %sub, !dbg !583
  %arrayidx84 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 %indvars.iv604, i64 %indvars.iv604, !dbg !583
  store float %sub80, float* %arrayidx84, align 4, !dbg !583, !tbaa !500
  %indvars.iv.next605 = add i64 %indvars.iv604, 1, !dbg !581
  %lftr.wideiv606 = trunc i64 %indvars.iv.next605 to i32, !dbg !581
  %exitcond607 = icmp eq i32 %lftr.wideiv606, 2, !dbg !581
  br i1 %exitcond607, label %if.end88.loopexit, label %for.body67.for.body67_crit_edge, !dbg !581

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  %arrayidx74.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv.next605, i64 %indvars.iv.next605
  %.pre627 = load float* %arrayidx74.phi.trans.insert, align 4, !dbg !583, !tbaa !500
  br label %for.body67, !dbg !581

if.end88.loopexit:                                ; preds = %for.body67
  %.pre623 = load float* %arrayidx5.i, align 16, !dbg !584, !tbaa !500
  %.pre624 = load float* %arrayidx33.i, align 4, !dbg !586, !tbaa !500
  %.pre625 = load float* %arrayidx61.i, align 8, !dbg !587, !tbaa !500
  br label %if.end88

if.end88:                                         ; preds = %if.end88.loopexit, %m_inv.exit
  %48 = phi float [ %.pre625, %if.end88.loopexit ], [ %sub59.i, %m_inv.exit ]
  %49 = phi float [ %.pre624, %if.end88.loopexit ], [ %sub31.i, %m_inv.exit ]
  %50 = phi float [ %.pre623, %if.end88.loopexit ], [ %sub.i449, %m_inv.exit ]
  %arraydecay91 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, !dbg !585
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !588), !dbg !589
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay91}, i64 0, metadata !590), !dbg !589
  %51 = load float* %arrayidx20.i, align 16, !dbg !584, !tbaa !500
  %mul.i454 = fmul float %51, %50, !dbg !584
  %mul8.i = fmul float %mul62.i, %sub24.i, !dbg !584
  %add.i = fadd float %mul.i454, %mul8.i, !dbg !584
  %mul13.i = fmul float %mul105.i, %sub45.i, !dbg !584
  %add14.i = fadd float %add.i, %mul13.i, !dbg !584
  %arrayidx16.i458 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 0, !dbg !584
  store float %add14.i, float* %arrayidx16.i458, align 16, !dbg !584, !tbaa !500
  %mul21.i = fmul float %51, %sub10.i, !dbg !586
  %mul26.i460 = fmul float %mul62.i, %49, !dbg !586
  %add27.i = fadd float %mul21.i, %mul26.i460, !dbg !586
  %mul32.i = fmul float %mul105.i, %sub52.i, !dbg !586
  %add33.i = fadd float %add27.i, %mul32.i, !dbg !586
  %arrayidx35.i461 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 1, !dbg !586
  store float %add33.i, float* %arrayidx35.i461, align 4, !dbg !586, !tbaa !500
  %mul40.i462 = fmul float %51, %sub17.i, !dbg !587
  %mul45.i464 = fmul float %mul62.i, %sub38.i, !dbg !587
  %add46.i = fadd float %mul40.i462, %mul45.i464, !dbg !587
  %mul51.i = fmul float %mul105.i, %48, !dbg !587
  %add52.i = fadd float %add46.i, %mul51.i, !dbg !587
  %arrayidx54.i465 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 2, !dbg !587
  store float %add52.i, float* %arrayidx54.i465, align 8, !dbg !587, !tbaa !500
  %52 = load float* %arrayidx35.i, align 4, !dbg !591, !tbaa !500
  %mul59.i = fmul float %52, %50, !dbg !591
  %mul64.i = fmul float %mul76.i, %sub24.i, !dbg !591
  %add65.i = fadd float %mul59.i, %mul64.i, !dbg !591
  %mul70.i = fmul float %mul120.i, %sub45.i, !dbg !591
  %add71.i = fadd float %add65.i, %mul70.i, !dbg !591
  %arrayidx73.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 0, !dbg !591
  store float %add71.i, float* %arrayidx73.i, align 4, !dbg !591, !tbaa !500
  %mul78.i = fmul float %52, %sub10.i, !dbg !592
  %mul83.i = fmul float %mul76.i, %49, !dbg !592
  %add84.i = fadd float %mul78.i, %mul83.i, !dbg !592
  %mul89.i468 = fmul float %mul120.i, %sub52.i, !dbg !592
  %add90.i = fadd float %add84.i, %mul89.i468, !dbg !592
  %arrayidx92.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 1, !dbg !592
  store float %add90.i, float* %arrayidx92.i, align 4, !dbg !592, !tbaa !500
  %mul97.i = fmul float %52, %sub17.i, !dbg !593
  %mul102.i = fmul float %mul76.i, %sub38.i, !dbg !593
  %add103.i = fadd float %mul97.i, %mul102.i, !dbg !593
  %mul108.i = fmul float %mul120.i, %48, !dbg !593
  %add109.i = fadd float %add103.i, %mul108.i, !dbg !593
  %arrayidx111.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 2, !dbg !593
  store float %add109.i, float* %arrayidx111.i, align 4, !dbg !593, !tbaa !500
  %53 = load float* %arrayidx49.i, align 8, !dbg !594, !tbaa !500
  %mul116.i = fmul float %53, %50, !dbg !594
  %mul121.i = fmul float %mul91.i, %sub24.i, !dbg !594
  %add122.i = fadd float %mul116.i, %mul121.i, !dbg !594
  %mul127.i469 = fmul float %mul134.i, %sub45.i, !dbg !594
  %add128.i = fadd float %add122.i, %mul127.i469, !dbg !594
  %arrayidx130.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 0, !dbg !594
  store float %add128.i, float* %arrayidx130.i, align 8, !dbg !594, !tbaa !500
  %mul135.i = fmul float %53, %sub10.i, !dbg !595
  %mul140.i = fmul float %mul91.i, %49, !dbg !595
  %add141.i = fadd float %mul135.i, %mul140.i, !dbg !595
  %mul146.i = fmul float %mul134.i, %sub52.i, !dbg !595
  %add147.i = fadd float %add141.i, %mul146.i, !dbg !595
  %arrayidx149.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 1, !dbg !595
  store float %add147.i, float* %arrayidx149.i, align 4, !dbg !595, !tbaa !500
  %mul154.i = fmul float %53, %sub17.i, !dbg !596
  %mul159.i = fmul float %mul91.i, %sub38.i, !dbg !596
  %add160.i = fadd float %mul154.i, %mul159.i, !dbg !596
  %mul165.i = fmul float %mul134.i, %48, !dbg !596
  %add166.i = fadd float %add160.i, %mul165.i, !dbg !596
  %arrayidx168.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 2, !dbg !596
  store float %add166.i, float* %arrayidx168.i, align 8, !dbg !596, !tbaa !500
  switch i32 %45, label %sw.default [
    i32 2, label %for.body100.lr.ph
    i32 0, label %sw.bb117
    i32 1, label %sw.bb175
    i32 3, label %sw.bb175
  ], !dbg !597

for.body100.lr.ph:                                ; preds = %for.inc114, %if.end88
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %for.inc114 ], [ 0, %if.end88 ]
  %indvars.iv572 = phi i32 [ %indvars.iv.next573, %for.inc114 ], [ 1, %if.end88 ], !dbg !598
  br label %for.body100, !dbg !598

for.body100:                                      ; preds = %for.body100, %for.body100.lr.ph
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %for.body100 ], [ 0, %for.body100.lr.ph ]
  %arrayidx104 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv576, i64 %indvars.iv570, !dbg !602
  %54 = load float* %arrayidx104, align 4, !dbg !602, !tbaa !500
  %mul105 = fmul float %conv7, %54, !dbg !602
  %arrayidx109 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv576, i64 %indvars.iv570, !dbg !602
  %55 = load float* %arrayidx109, align 4, !dbg !602, !tbaa !500
  %mul110 = fmul float %55, %mul105, !dbg !602
  store float %mul110, float* %arrayidx109, align 4, !dbg !602, !tbaa !500
  %indvars.iv.next571 = add i64 %indvars.iv570, 1, !dbg !598
  %lftr.wideiv574 = trunc i64 %indvars.iv.next571 to i32, !dbg !598
  %exitcond575 = icmp eq i32 %lftr.wideiv574, %indvars.iv572, !dbg !598
  br i1 %exitcond575, label %for.inc114, label %for.body100, !dbg !598

for.inc114:                                       ; preds = %for.body100
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !603
  %indvars.iv.next573 = add i32 %indvars.iv572, 1, !dbg !603
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32, !dbg !603
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 3, !dbg !603
  br i1 %exitcond579, label %for.cond252.preheader, label %for.body100.lr.ph, !dbg !603

sw.bb117:                                         ; preds = %if.end88
  %56 = load float* %arrayidx1, align 4, !dbg !604, !tbaa !500
  %57 = load float* %arrayidx3, align 4, !dbg !604, !tbaa !500
  %mul122 = fmul float %56, %57, !dbg !604
  %mul125 = fmul float %mul122, %add166.i, !dbg !604
  %mul130 = fmul float %56, %add90.i, !dbg !604
  %58 = load float* %arrayidx5, align 4, !dbg !604, !tbaa !500
  %mul133 = fmul float %mul130, %58, !dbg !604
  %add134 = fadd float %mul125, %mul133, !dbg !604
  %mul139 = fmul float %57, %add14.i, !dbg !604
  %mul142 = fmul float %58, %mul139, !dbg !604
  %add143 = fadd float %add134, %mul142, !dbg !604
  call void @llvm.dbg.value(metadata !{float %add143}, i64 0, metadata !312), !dbg !604
  %mul144 = fmul float %mul6, 3.000000e+00, !dbg !605
  %div145 = fdiv float %add143, %mul144, !dbg !605
  call void @llvm.dbg.value(metadata !{float %div145}, i64 0, metadata !313), !dbg !605
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !308), !dbg !606
  br label %for.body153.lr.ph, !dbg !606

for.body153.lr.ph:                                ; preds = %sw.bb117, %for.inc172
  %indvars.iv586 = phi i64 [ 0, %sw.bb117 ], [ %indvars.iv.next587, %for.inc172 ]
  %indvars.iv582 = phi i32 [ 1, %sw.bb117 ], [ %indvars.iv.next583, %for.inc172 ], !dbg !608
  br label %for.body153, !dbg !608

for.body153:                                      ; preds = %for.body153, %for.body153.lr.ph
  %indvars.iv580 = phi i64 [ %indvars.iv.next581, %for.body153 ], [ 0, %for.body153.lr.ph ]
  %arrayidx157 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv586, i64 %indvars.iv580, !dbg !610
  %59 = load float* %arrayidx157, align 4, !dbg !610, !tbaa !500
  %mul158 = fmul float %conv7, %59, !dbg !610
  %mul159 = fmul float %div145, %mul158, !dbg !610
  %arrayidx163 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv586, i64 %indvars.iv580, !dbg !610
  %60 = load float* %arrayidx163, align 4, !dbg !610, !tbaa !500
  %mul164 = fmul float %60, %mul159, !dbg !610
  %arrayidx168 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv586, i64 %indvars.iv580, !dbg !610
  store float %mul164, float* %arrayidx168, align 4, !dbg !610, !tbaa !500
  %indvars.iv.next581 = add i64 %indvars.iv580, 1, !dbg !608
  %lftr.wideiv584 = trunc i64 %indvars.iv.next581 to i32, !dbg !608
  %exitcond585 = icmp eq i32 %lftr.wideiv584, %indvars.iv582, !dbg !608
  br i1 %exitcond585, label %for.inc172, label %for.body153, !dbg !608

for.inc172:                                       ; preds = %for.body153
  %indvars.iv.next587 = add i64 %indvars.iv586, 1, !dbg !606
  %indvars.iv.next583 = add i32 %indvars.iv582, 1, !dbg !606
  %lftr.wideiv588 = trunc i64 %indvars.iv.next587 to i32, !dbg !606
  %exitcond589 = icmp eq i32 %lftr.wideiv588, 3, !dbg !606
  br i1 %exitcond589, label %for.cond252.preheader, label %for.body153.lr.ph, !dbg !606

sw.bb175:                                         ; preds = %if.end88, %if.end88
  %61 = load float* %arrayidx1, align 4, !dbg !611, !tbaa !500
  %mul180 = fmul float %61, %add90.i, !dbg !611
  %62 = load float* %arrayidx3, align 4, !dbg !611, !tbaa !500
  %mul185 = fmul float %add14.i, %62, !dbg !611
  %add186 = fadd float %mul180, %mul185, !dbg !611
  call void @llvm.dbg.value(metadata !{float %add186}, i64 0, metadata !312), !dbg !611
  %mul189 = fmul float %61, 2.000000e+00, !dbg !612
  %mul192 = fmul float %mul189, %62, !dbg !612
  %div193 = fdiv float %add186, %mul192, !dbg !612
  call void @llvm.dbg.value(metadata !{float %div193}, i64 0, metadata !313), !dbg !612
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !308), !dbg !613
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !309), !dbg !615
  br label %for.body201.lr.ph, !dbg !613

for.body201.lr.ph:                                ; preds = %sw.bb175, %for.inc220
  %indvars.iv600 = phi i64 [ 0, %sw.bb175 ], [ %indvars.iv.next601, %for.inc220 ]
  %indvars.iv596 = phi i32 [ 1, %sw.bb175 ], [ %indvars.iv.next597, %for.inc220 ], !dbg !615
  br label %for.body201, !dbg !615

for.body201:                                      ; preds = %for.body201, %for.body201.lr.ph
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %for.body201 ], [ 0, %for.body201.lr.ph ]
  %arrayidx205 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv600, i64 %indvars.iv594, !dbg !617
  %63 = load float* %arrayidx205, align 4, !dbg !617, !tbaa !500
  %mul206 = fmul float %conv7, %63, !dbg !617
  %mul207 = fmul float %div193, %mul206, !dbg !617
  %arrayidx211 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv600, i64 %indvars.iv594, !dbg !617
  %64 = load float* %arrayidx211, align 4, !dbg !617, !tbaa !500
  %mul212 = fmul float %64, %mul207, !dbg !617
  %arrayidx216 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv600, i64 %indvars.iv594, !dbg !617
  store float %mul212, float* %arrayidx216, align 4, !dbg !617, !tbaa !500
  %indvars.iv.next595 = add i64 %indvars.iv594, 1, !dbg !615
  %lftr.wideiv598 = trunc i64 %indvars.iv.next595 to i32, !dbg !615
  %exitcond599 = icmp eq i32 %lftr.wideiv598, %indvars.iv596, !dbg !615
  br i1 %exitcond599, label %for.inc220, label %for.body201, !dbg !615

for.inc220:                                       ; preds = %for.body201
  %indvars.iv.next601 = add i64 %indvars.iv600, 1, !dbg !613
  call void @llvm.dbg.value(metadata !618, i64 0, metadata !308), !dbg !613
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !309), !dbg !615
  %indvars.iv.next597 = add i32 %indvars.iv596, 1, !dbg !613
  %lftr.wideiv602 = trunc i64 %indvars.iv.next601 to i32, !dbg !613
  %exitcond603 = icmp eq i32 %lftr.wideiv602, 2, !dbg !613
  br i1 %exitcond603, label %for.body226, label %for.body201.lr.ph, !dbg !613

for.body226:                                      ; preds = %for.body226, %for.inc220
  %indvars.iv590 = phi i64 [ 0, %for.inc220 ], [ %indvars.iv.next591, %for.body226 ]
  %arrayidx230 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 2, i64 %indvars.iv590, !dbg !619
  %65 = load float* %arrayidx230, align 4, !dbg !619, !tbaa !500
  %mul231 = fmul float %conv7, %65, !dbg !619
  %arrayidx234 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 %indvars.iv590, !dbg !619
  %66 = load float* %arrayidx234, align 4, !dbg !619, !tbaa !500
  %mul235 = fmul float %66, %mul231, !dbg !619
  store float %mul235, float* %arrayidx234, align 4, !dbg !619, !tbaa !500
  %indvars.iv.next591 = add i64 %indvars.iv590, 1, !dbg !621
  %lftr.wideiv592 = trunc i64 %indvars.iv.next591 to i32, !dbg !621
  %exitcond593 = icmp eq i32 %lftr.wideiv592, 3, !dbg !621
  br i1 %exitcond593, label %for.cond252.preheader, label %for.body226, !dbg !621

sw.default:                                       ; preds = %if.end88
  %67 = icmp ugt i32 %45, 3, !dbg !622
  br i1 %67, label %cond.end250, label %cond.false246, !dbg !622

cond.false246:                                    ; preds = %sw.default
  %idxprom248 = sext i32 %45 to i64, !dbg !622
  %arrayidx249 = getelementptr inbounds [5 x i8*]* @epcoupltype_names, i64 0, i64 %idxprom248, !dbg !622
  %68 = load i8** %arrayidx249, align 8, !dbg !622, !tbaa !509
  br label %cond.end250, !dbg !622

cond.end250:                                      ; preds = %sw.default, %cond.false246
  %cond251 = phi i8* [ %68, %cond.false246 ], [ getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), %sw.default ], !dbg !622
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i8* %cond251) #6, !dbg !622
  br label %for.cond252.preheader, !dbg !623

for.cond252.preheader:                            ; preds = %for.body226, %for.inc172, %for.inc114, %cond.end250
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !624
  br label %for.body259.lr.ph, !dbg !628

for.body259.lr.ph:                                ; preds = %for.cond252.preheader, %for.inc290
  %indvars.iv566 = phi i64 [ 0, %for.cond252.preheader ], [ %indvars.iv.next567, %for.inc290 ]
  %indvars.iv562 = phi i32 [ 1, %for.cond252.preheader ], [ %indvars.iv.next563, %for.inc290 ], !dbg !629
  %maxchange.0539 = phi float [ 0.000000e+00, %for.cond252.preheader ], [ %maxchange.2, %for.inc290 ]
  %arrayidx279 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv566, i64 %indvars.iv566, !dbg !630
  %.pre626 = load float* %delta_t, align 4, !dbg !624, !tbaa !500
  br label %for.body259, !dbg !629

for.body259:                                      ; preds = %for.body259, %for.body259.lr.ph
  %69 = phi float [ %72, %for.body259 ], [ %.pre626, %for.body259.lr.ph ], !dbg !624
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %for.body259 ], [ 0, %for.body259.lr.ph ]
  %maxchange.1538 = phi float [ %maxchange.2, %for.body259 ], [ %maxchange.0539, %for.body259.lr.ph ]
  %arrayidx263 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv566, i64 %indvars.iv560, !dbg !624
  %70 = load float* %arrayidx263, align 4, !dbg !624, !tbaa !500
  %mul264 = fmul float %69, %70, !dbg !624
  %arrayidx268 = getelementptr inbounds [3 x float]* %boxv, i64 %indvars.iv566, i64 %indvars.iv560, !dbg !624
  %71 = load float* %arrayidx268, align 4, !dbg !624, !tbaa !500
  %add269 = fadd float %71, %mul264, !dbg !624
  store float %add269, float* %arrayidx268, align 4, !dbg !624, !tbaa !500
  %72 = load float* %delta_t, align 4, !dbg !630, !tbaa !500
  %mul275 = fmul float %72, %add269, !dbg !630
  %73 = load float* %arrayidx279, align 4, !dbg !630, !tbaa !500
  %div280 = fdiv float %mul275, %73, !dbg !630
  %fabsf = call float @fabsf(float %div280) #7, !dbg !630
  call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !314), !dbg !630
  %cmp283 = fcmp ogt float %fabsf, %maxchange.1538, !dbg !631
  call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !315), !dbg !632
  %maxchange.2 = select i1 %cmp283, float %fabsf, float %maxchange.1538, !dbg !631
  %indvars.iv.next561 = add i64 %indvars.iv560, 1, !dbg !629
  %lftr.wideiv564 = trunc i64 %indvars.iv.next561 to i32, !dbg !629
  %exitcond565 = icmp eq i32 %lftr.wideiv564, %indvars.iv562, !dbg !629
  br i1 %exitcond565, label %for.inc290, label %for.body259, !dbg !629

for.inc290:                                       ; preds = %for.body259
  %indvars.iv.next567 = add i64 %indvars.iv566, 1, !dbg !628
  %indvars.iv.next563 = add i32 %indvars.iv562, 1, !dbg !628
  %lftr.wideiv568 = trunc i64 %indvars.iv.next567 to i32, !dbg !628
  %exitcond569 = icmp eq i32 %lftr.wideiv568, 3, !dbg !628
  br i1 %exitcond569, label %for.end292, label %for.body259.lr.ph, !dbg !628

for.end292:                                       ; preds = %for.inc290
  %conv293 = fpext float %maxchange.2 to double, !dbg !633
  %cmp294 = fcmp ogt double %conv293, 1.010000e+00, !dbg !633
  %74 = load %struct._IO_FILE** @stdlog, align 8, !dbg !633, !tbaa !509
  %tobool296 = icmp ne %struct._IO_FILE* %74, null, !dbg !633
  %or.cond = and i1 %cmp294, %tobool296, !dbg !633
  br i1 %or.cond, label %if.then297, label %if.end299, !dbg !633

if.then297:                                       ; preds = %for.end292
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 %step) #6, !dbg !634
  br label %if.end299, !dbg !634

if.end299:                                        ; preds = %if.then297, %for.end292
  call fastcc void @mtmul([3 x float]* %boxv, [3 x float]* %box, [3 x float]* %arraydecay91) #8, !dbg !635
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !308), !dbg !636
  br label %for.cond305.preheader, !dbg !636

for.cond305.preheader:                            ; preds = %for.inc321, %if.end299
  %indvars.iv556 = phi i64 [ 0, %if.end299 ], [ %indvars.iv.next557, %for.inc321 ]
  br label %for.body308, !dbg !638

for.body308:                                      ; preds = %for.body308, %for.cond305.preheader
  %indvars.iv = phi i64 [ 0, %for.cond305.preheader ], [ %indvars.iv.next, %for.body308 ]
  %arrayidx312 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv, i64 %indvars.iv556, !dbg !640
  %75 = load float* %arrayidx312, align 4, !dbg !640, !tbaa !500
  %arrayidx316 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv556, i64 %indvars.iv, !dbg !640
  %76 = load float* %arrayidx316, align 4, !dbg !640, !tbaa !500
  %add317 = fadd float %75, %76, !dbg !640
  store float %add317, float* %arrayidx316, align 4, !dbg !640, !tbaa !500
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !638
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !638
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !638
  br i1 %exitcond, label %for.inc321, label %for.body308, !dbg !638

for.inc321:                                       ; preds = %for.body308
  %indvars.iv.next557 = add i64 %indvars.iv556, 1, !dbg !636
  %lftr.wideiv558 = trunc i64 %indvars.iv.next557 to i32, !dbg !636
  %exitcond559 = icmp eq i32 %lftr.wideiv558, 3, !dbg !636
  br i1 %exitcond559, label %for.end323, label %for.cond305.preheader, !dbg !636

for.end323:                                       ; preds = %for.inc321
  %arraydecay326 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 0, !dbg !641
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !642), !dbg !643
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay91}, i64 0, metadata !644), !dbg !643
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay326}, i64 0, metadata !645), !dbg !643
  %77 = load float* %arrayidx16.i458, align 16, !dbg !646, !tbaa !500
  %mul.i472 = fmul float %51, %77, !dbg !646
  %78 = load float* %arrayidx73.i, align 4, !dbg !646, !tbaa !500
  %mul8.i475 = fmul float %52, %78, !dbg !646
  %add.i476 = fadd float %mul.i472, %mul8.i475, !dbg !646
  %79 = load float* %arrayidx130.i, align 8, !dbg !646, !tbaa !500
  %mul13.i479 = fmul float %53, %79, !dbg !646
  %add14.i480 = fadd float %add.i476, %mul13.i479, !dbg !646
  %arrayidx16.i481 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 0, i64 0, !dbg !646
  store float %add14.i480, float* %arrayidx16.i481, align 16, !dbg !646, !tbaa !500
  %mul21.i482 = fmul float %mul62.i, %77, !dbg !648
  %mul26.i484 = fmul float %mul76.i, %78, !dbg !648
  %add27.i485 = fadd float %mul21.i482, %mul26.i484, !dbg !648
  %mul32.i486 = fmul float %mul91.i, %79, !dbg !648
  %add33.i487 = fadd float %add27.i485, %mul32.i486, !dbg !648
  %arrayidx35.i488 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 1, i64 0, !dbg !648
  store float %add33.i487, float* %arrayidx35.i488, align 4, !dbg !648, !tbaa !500
  %mul40.i490 = fmul float %mul105.i, %77, !dbg !649
  %mul45.i492 = fmul float %mul120.i, %78, !dbg !649
  %add46.i493 = fadd float %mul40.i490, %mul45.i492, !dbg !649
  %mul51.i494 = fmul float %mul134.i, %79, !dbg !649
  %add52.i495 = fadd float %add46.i493, %mul51.i494, !dbg !649
  %arrayidx54.i496 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 2, i64 0, !dbg !649
  store float %add52.i495, float* %arrayidx54.i496, align 8, !dbg !649, !tbaa !500
  %80 = load float* %arrayidx35.i461, align 4, !dbg !650, !tbaa !500
  %mul59.i498 = fmul float %51, %80, !dbg !650
  %81 = load float* %arrayidx92.i, align 4, !dbg !650, !tbaa !500
  %mul64.i499 = fmul float %52, %81, !dbg !650
  %add65.i500 = fadd float %mul59.i498, %mul64.i499, !dbg !650
  %82 = load float* %arrayidx149.i, align 4, !dbg !650, !tbaa !500
  %mul70.i501 = fmul float %53, %82, !dbg !650
  %add71.i502 = fadd float %add65.i500, %mul70.i501, !dbg !650
  %arrayidx73.i503 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 0, i64 1, !dbg !650
  store float %add71.i502, float* %arrayidx73.i503, align 4, !dbg !650, !tbaa !500
  %mul78.i504 = fmul float %mul62.i, %80, !dbg !651
  %mul83.i505 = fmul float %mul76.i, %81, !dbg !651
  %add84.i506 = fadd float %mul78.i504, %mul83.i505, !dbg !651
  %mul89.i507 = fmul float %mul91.i, %82, !dbg !651
  %add90.i508 = fadd float %add84.i506, %mul89.i507, !dbg !651
  %arrayidx92.i509 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 1, i64 1, !dbg !651
  store float %add90.i508, float* %arrayidx92.i509, align 4, !dbg !651, !tbaa !500
  %mul97.i510 = fmul float %mul105.i, %80, !dbg !652
  %mul102.i511 = fmul float %mul120.i, %81, !dbg !652
  %add103.i512 = fadd float %mul97.i510, %mul102.i511, !dbg !652
  %mul108.i513 = fmul float %mul134.i, %82, !dbg !652
  %add109.i514 = fadd float %add103.i512, %mul108.i513, !dbg !652
  %arrayidx111.i515 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 2, i64 1, !dbg !652
  store float %add109.i514, float* %arrayidx111.i515, align 4, !dbg !652, !tbaa !500
  %83 = load float* %arrayidx54.i465, align 8, !dbg !653, !tbaa !500
  %mul116.i516 = fmul float %51, %83, !dbg !653
  %84 = load float* %arrayidx111.i, align 4, !dbg !653, !tbaa !500
  %mul121.i517 = fmul float %52, %84, !dbg !653
  %add122.i518 = fadd float %mul116.i516, %mul121.i517, !dbg !653
  %85 = load float* %arrayidx168.i, align 8, !dbg !653, !tbaa !500
  %mul127.i519 = fmul float %53, %85, !dbg !653
  %add128.i520 = fadd float %add122.i518, %mul127.i519, !dbg !653
  %arrayidx130.i521 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 0, i64 2, !dbg !653
  store float %add128.i520, float* %arrayidx130.i521, align 8, !dbg !653, !tbaa !500
  %mul135.i522 = fmul float %mul62.i, %83, !dbg !654
  %mul140.i523 = fmul float %mul76.i, %84, !dbg !654
  %add141.i524 = fadd float %mul135.i522, %mul140.i523, !dbg !654
  %mul146.i525 = fmul float %mul91.i, %85, !dbg !654
  %add147.i526 = fadd float %add141.i524, %mul146.i525, !dbg !654
  %arrayidx149.i527 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 1, i64 2, !dbg !654
  store float %add147.i526, float* %arrayidx149.i527, align 4, !dbg !654, !tbaa !500
  %mul154.i528 = fmul float %mul105.i, %83, !dbg !655
  %mul159.i529 = fmul float %mul120.i, %84, !dbg !655
  %add160.i530 = fadd float %mul154.i528, %mul159.i529, !dbg !655
  %mul165.i531 = fmul float %mul134.i, %85, !dbg !655
  %add166.i532 = fadd float %add160.i530, %mul165.i531, !dbg !655
  %arrayidx168.i533 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 2, i64 2, !dbg !655
  store float %add166.i532, float* %arrayidx168.i533, align 8, !dbg !655, !tbaa !500
  call fastcc void @mtmul([3 x float]* %arraydecay326, [3 x float]* %arraydecay, [3 x float]* %M) #8, !dbg !656
  call void @llvm.lifetime.end(i64 36, i8* %6) #4, !dbg !657
  call void @llvm.lifetime.end(i64 36, i8* %5) #4, !dbg !657
  call void @llvm.lifetime.end(i64 36, i8* %4) #4, !dbg !657
  call void @llvm.lifetime.end(i64 36, i8* %3) #4, !dbg !657
  ret void, !dbg !657
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mtmul([3 x float]* nocapture %a, [3 x float]* nocapture %b, [3 x float]* nocapture %dest) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %a}, i64 0, metadata !441), !dbg !658
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %b}, i64 0, metadata !442), !dbg !658
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %dest}, i64 0, metadata !443), !dbg !658
  %arrayidx1 = getelementptr inbounds [3 x float]* %a, i64 0, i64 0, !dbg !659
  %0 = load float* %arrayidx1, align 4, !dbg !659, !tbaa !500
  %arrayidx3 = getelementptr inbounds [3 x float]* %b, i64 0, i64 0, !dbg !659
  %1 = load float* %arrayidx3, align 4, !dbg !659, !tbaa !500
  %mul = fmul float %0, %1, !dbg !659
  %arrayidx5 = getelementptr inbounds [3 x float]* %a, i64 0, i64 1, !dbg !659
  %2 = load float* %arrayidx5, align 4, !dbg !659, !tbaa !500
  %arrayidx7 = getelementptr inbounds [3 x float]* %b, i64 0, i64 1, !dbg !659
  %3 = load float* %arrayidx7, align 4, !dbg !659, !tbaa !500
  %mul8 = fmul float %2, %3, !dbg !659
  %add = fadd float %mul, %mul8, !dbg !659
  %arrayidx10 = getelementptr inbounds [3 x float]* %a, i64 0, i64 2, !dbg !659
  %4 = load float* %arrayidx10, align 4, !dbg !659, !tbaa !500
  %arrayidx12 = getelementptr inbounds [3 x float]* %b, i64 0, i64 2, !dbg !659
  %5 = load float* %arrayidx12, align 4, !dbg !659, !tbaa !500
  %mul13 = fmul float %4, %5, !dbg !659
  %add14 = fadd float %add, %mul13, !dbg !659
  %arrayidx16 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 0, !dbg !659
  store float %add14, float* %arrayidx16, align 4, !dbg !659, !tbaa !500
  %6 = load float* %arrayidx1, align 4, !dbg !660, !tbaa !500
  %arrayidx20 = getelementptr inbounds [3 x float]* %b, i64 1, i64 0, !dbg !660
  %7 = load float* %arrayidx20, align 4, !dbg !660, !tbaa !500
  %mul21 = fmul float %6, %7, !dbg !660
  %8 = load float* %arrayidx5, align 4, !dbg !660, !tbaa !500
  %arrayidx25 = getelementptr inbounds [3 x float]* %b, i64 1, i64 1, !dbg !660
  %9 = load float* %arrayidx25, align 4, !dbg !660, !tbaa !500
  %mul26 = fmul float %8, %9, !dbg !660
  %add27 = fadd float %mul21, %mul26, !dbg !660
  %10 = load float* %arrayidx10, align 4, !dbg !660, !tbaa !500
  %arrayidx31 = getelementptr inbounds [3 x float]* %b, i64 1, i64 2, !dbg !660
  %11 = load float* %arrayidx31, align 4, !dbg !660, !tbaa !500
  %mul32 = fmul float %10, %11, !dbg !660
  %add33 = fadd float %add27, %mul32, !dbg !660
  %arrayidx35 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 1, !dbg !660
  store float %add33, float* %arrayidx35, align 4, !dbg !660, !tbaa !500
  %12 = load float* %arrayidx1, align 4, !dbg !661, !tbaa !500
  %arrayidx39 = getelementptr inbounds [3 x float]* %b, i64 2, i64 0, !dbg !661
  %13 = load float* %arrayidx39, align 4, !dbg !661, !tbaa !500
  %mul40 = fmul float %12, %13, !dbg !661
  %14 = load float* %arrayidx5, align 4, !dbg !661, !tbaa !500
  %arrayidx44 = getelementptr inbounds [3 x float]* %b, i64 2, i64 1, !dbg !661
  %15 = load float* %arrayidx44, align 4, !dbg !661, !tbaa !500
  %mul45 = fmul float %14, %15, !dbg !661
  %add46 = fadd float %mul40, %mul45, !dbg !661
  %16 = load float* %arrayidx10, align 4, !dbg !661, !tbaa !500
  %arrayidx50 = getelementptr inbounds [3 x float]* %b, i64 2, i64 2, !dbg !661
  %17 = load float* %arrayidx50, align 4, !dbg !661, !tbaa !500
  %mul51 = fmul float %16, %17, !dbg !661
  %add52 = fadd float %add46, %mul51, !dbg !661
  %arrayidx54 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 2, !dbg !661
  store float %add52, float* %arrayidx54, align 4, !dbg !661, !tbaa !500
  %arrayidx56 = getelementptr inbounds [3 x float]* %a, i64 1, i64 0, !dbg !662
  %18 = load float* %arrayidx56, align 4, !dbg !662, !tbaa !500
  %19 = load float* %arrayidx3, align 4, !dbg !662, !tbaa !500
  %mul59 = fmul float %18, %19, !dbg !662
  %arrayidx61 = getelementptr inbounds [3 x float]* %a, i64 1, i64 1, !dbg !662
  %20 = load float* %arrayidx61, align 4, !dbg !662, !tbaa !500
  %21 = load float* %arrayidx7, align 4, !dbg !662, !tbaa !500
  %mul64 = fmul float %20, %21, !dbg !662
  %add65 = fadd float %mul59, %mul64, !dbg !662
  %arrayidx67 = getelementptr inbounds [3 x float]* %a, i64 1, i64 2, !dbg !662
  %22 = load float* %arrayidx67, align 4, !dbg !662, !tbaa !500
  %23 = load float* %arrayidx12, align 4, !dbg !662, !tbaa !500
  %mul70 = fmul float %22, %23, !dbg !662
  %add71 = fadd float %add65, %mul70, !dbg !662
  %arrayidx73 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 0, !dbg !662
  store float %add71, float* %arrayidx73, align 4, !dbg !662, !tbaa !500
  %24 = load float* %arrayidx56, align 4, !dbg !663, !tbaa !500
  %25 = load float* %arrayidx20, align 4, !dbg !663, !tbaa !500
  %mul78 = fmul float %24, %25, !dbg !663
  %26 = load float* %arrayidx61, align 4, !dbg !663, !tbaa !500
  %27 = load float* %arrayidx25, align 4, !dbg !663, !tbaa !500
  %mul83 = fmul float %26, %27, !dbg !663
  %add84 = fadd float %mul78, %mul83, !dbg !663
  %28 = load float* %arrayidx67, align 4, !dbg !663, !tbaa !500
  %29 = load float* %arrayidx31, align 4, !dbg !663, !tbaa !500
  %mul89 = fmul float %28, %29, !dbg !663
  %add90 = fadd float %add84, %mul89, !dbg !663
  %arrayidx92 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 1, !dbg !663
  store float %add90, float* %arrayidx92, align 4, !dbg !663, !tbaa !500
  %30 = load float* %arrayidx56, align 4, !dbg !664, !tbaa !500
  %31 = load float* %arrayidx39, align 4, !dbg !664, !tbaa !500
  %mul97 = fmul float %30, %31, !dbg !664
  %32 = load float* %arrayidx61, align 4, !dbg !664, !tbaa !500
  %33 = load float* %arrayidx44, align 4, !dbg !664, !tbaa !500
  %mul102 = fmul float %32, %33, !dbg !664
  %add103 = fadd float %mul97, %mul102, !dbg !664
  %34 = load float* %arrayidx67, align 4, !dbg !664, !tbaa !500
  %35 = load float* %arrayidx50, align 4, !dbg !664, !tbaa !500
  %mul108 = fmul float %34, %35, !dbg !664
  %add109 = fadd float %add103, %mul108, !dbg !664
  %arrayidx111 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 2, !dbg !664
  store float %add109, float* %arrayidx111, align 4, !dbg !664, !tbaa !500
  %arrayidx113 = getelementptr inbounds [3 x float]* %a, i64 2, i64 0, !dbg !665
  %36 = load float* %arrayidx113, align 4, !dbg !665, !tbaa !500
  %37 = load float* %arrayidx3, align 4, !dbg !665, !tbaa !500
  %mul116 = fmul float %36, %37, !dbg !665
  %arrayidx118 = getelementptr inbounds [3 x float]* %a, i64 2, i64 1, !dbg !665
  %38 = load float* %arrayidx118, align 4, !dbg !665, !tbaa !500
  %39 = load float* %arrayidx7, align 4, !dbg !665, !tbaa !500
  %mul121 = fmul float %38, %39, !dbg !665
  %add122 = fadd float %mul116, %mul121, !dbg !665
  %arrayidx124 = getelementptr inbounds [3 x float]* %a, i64 2, i64 2, !dbg !665
  %40 = load float* %arrayidx124, align 4, !dbg !665, !tbaa !500
  %41 = load float* %arrayidx12, align 4, !dbg !665, !tbaa !500
  %mul127 = fmul float %40, %41, !dbg !665
  %add128 = fadd float %add122, %mul127, !dbg !665
  %arrayidx130 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 0, !dbg !665
  store float %add128, float* %arrayidx130, align 4, !dbg !665, !tbaa !500
  %42 = load float* %arrayidx113, align 4, !dbg !666, !tbaa !500
  %43 = load float* %arrayidx20, align 4, !dbg !666, !tbaa !500
  %mul135 = fmul float %42, %43, !dbg !666
  %44 = load float* %arrayidx118, align 4, !dbg !666, !tbaa !500
  %45 = load float* %arrayidx25, align 4, !dbg !666, !tbaa !500
  %mul140 = fmul float %44, %45, !dbg !666
  %add141 = fadd float %mul135, %mul140, !dbg !666
  %46 = load float* %arrayidx124, align 4, !dbg !666, !tbaa !500
  %47 = load float* %arrayidx31, align 4, !dbg !666, !tbaa !500
  %mul146 = fmul float %46, %47, !dbg !666
  %add147 = fadd float %add141, %mul146, !dbg !666
  %arrayidx149 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 1, !dbg !666
  store float %add147, float* %arrayidx149, align 4, !dbg !666, !tbaa !500
  %48 = load float* %arrayidx113, align 4, !dbg !667, !tbaa !500
  %49 = load float* %arrayidx39, align 4, !dbg !667, !tbaa !500
  %mul154 = fmul float %48, %49, !dbg !667
  %50 = load float* %arrayidx118, align 4, !dbg !667, !tbaa !500
  %51 = load float* %arrayidx44, align 4, !dbg !667, !tbaa !500
  %mul159 = fmul float %50, %51, !dbg !667
  %add160 = fadd float %mul154, %mul159, !dbg !667
  %52 = load float* %arrayidx124, align 4, !dbg !667, !tbaa !500
  %53 = load float* %arrayidx50, align 4, !dbg !667, !tbaa !500
  %mul165 = fmul float %52, %53, !dbg !667
  %add166 = fadd float %add160, %mul165, !dbg !667
  %arrayidx168 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 2, !dbg !667
  store float %add166, float* %arrayidx168, align 4, !dbg !667, !tbaa !500
  ret void, !dbg !668
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @berendsen_pcoupl(%struct.t_inputrec* %ir, i32 %step, [3 x float]* %pres, [3 x float]* nocapture %box, i32 %start, i32 %nr_atoms, [3 x float]* nocapture %x, i16* nocapture %cFREEZE, %struct.t_nrnb* nocapture %nrnb, [3 x i32]* nocapture %nFreeze) #0 {
entry:
  %mu = alloca [3 x [3 x float]], align 16
  %buf = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_inputrec* %ir}, i64 0, metadata !338), !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !339), !dbg !669
  call void @llvm.dbg.value(metadata !{[3 x float]* %pres}, i64 0, metadata !340), !dbg !669
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !341), !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !342), !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %nr_atoms}, i64 0, metadata !343), !dbg !670
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !344), !dbg !671
  call void @llvm.dbg.value(metadata !{i16* %cFREEZE}, i64 0, metadata !345), !dbg !671
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !346), !dbg !672
  call void @llvm.dbg.value(metadata !{[3 x i32]* %nFreeze}, i64 0, metadata !347), !dbg !672
  %0 = bitcast [3 x [3 x float]]* %mu to i8*, !dbg !673
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !673
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %mu}, metadata !354), !dbg !673
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !674
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4, !dbg !674
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buf}, metadata !359), !dbg !674
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !351), !dbg !675
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !352), !dbg !676
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !349), !dbg !677
  br label %for.body, !dbg !677

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv592 = phi i64 [ 0, %entry ], [ %indvars.iv.next593, %for.inc ]
  %xy_pressure.0569 = phi float [ 0.000000e+00, %entry ], [ %xy_pressure.1, %for.inc ]
  %scalar_pressure.0568 = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv592, i64 %indvars.iv592, !dbg !679
  %2 = load float* %arrayidx2, align 4, !dbg !679, !tbaa !500
  %div = fdiv float %2, 3.000000e+00, !dbg !679
  %add = fadd float %scalar_pressure.0568, %div, !dbg !679
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !351), !dbg !679
  %3 = trunc i64 %indvars.iv592 to i32, !dbg !681
  %cmp3 = icmp eq i32 %3, 2, !dbg !681
  br i1 %cmp3, label %for.inc, label %if.then, !dbg !681

if.then:                                          ; preds = %for.body
  %div8 = fmul float %2, 5.000000e-01, !dbg !682
  %add9 = fadd float %xy_pressure.0569, %div8, !dbg !682
  call void @llvm.dbg.value(metadata !{float %add9}, i64 0, metadata !352), !dbg !682
  br label %for.inc, !dbg !682

for.inc:                                          ; preds = %for.body, %if.then
  %xy_pressure.1 = phi float [ %add9, %if.then ], [ %xy_pressure.0569, %for.body ]
  %indvars.iv.next593 = add i64 %indvars.iv592, 1, !dbg !677
  %lftr.wideiv594 = trunc i64 %indvars.iv.next593 to i32, !dbg !677
  %exitcond595 = icmp eq i32 %lftr.wideiv594, 3, !dbg !677
  br i1 %exitcond595, label %for.end, label %for.body, !dbg !677

for.end:                                          ; preds = %for.inc
  %fabsf = call float @fabsf(float %add) #7, !dbg !683
  %4 = fpext float %fabsf to double, !dbg !683
  %cmp10 = fcmp ogt double %4, 1.200000e-38, !dbg !683
  br i1 %cmp10, label %if.then12, label %if.end424, !dbg !683

if.then12:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, !dbg !684
  call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !686) #4, !dbg !687
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !688) #4, !dbg !689
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #4, !dbg !690
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29, !dbg !691
  %5 = load i32* %epct, align 4, !dbg !691, !tbaa !578
  switch i32 %5, label %cond.end [
    i32 0, label %for.cond13.preheader
    i32 1, label %for.cond39.preheader
    i32 2, label %for.cond91.preheader
    i32 3, label %sw.bb135
  ], !dbg !691

for.cond91.preheader:                             ; preds = %if.then12
  %delta_t106 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !692
  %6 = load float* %delta_t106, align 4, !dbg !692, !tbaa !500
  %tau_p108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !692
  %7 = load float* %tau_p108, align 4, !dbg !692, !tbaa !500
  br label %for.cond95.preheader, !dbg !696

for.cond39.preheader:                             ; preds = %if.then12
  %delta_t48 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !697
  %8 = load float* %delta_t48, align 4, !dbg !697, !tbaa !500
  %tau_p50 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !697
  %9 = load float* %tau_p50, align 4, !dbg !697, !tbaa !500
  br label %for.body42, !dbg !699

for.cond13.preheader:                             ; preds = %if.then12
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !700
  %10 = load float* %delta_t, align 4, !dbg !700, !tbaa !500
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !700
  %11 = load float* %tau_p, align 4, !dbg !700, !tbaa !500
  br label %for.body16, !dbg !702

for.body16:                                       ; preds = %for.body16, %for.cond13.preheader
  %indvars.iv572 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next573, %for.body16 ]
  %arrayidx20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv572, i64 %indvars.iv572, !dbg !700
  %12 = load float* %arrayidx20, align 4, !dbg !700, !tbaa !500
  %mul = fmul float %12, %10, !dbg !700
  %div21 = fdiv float %mul, %11, !dbg !700
  %arrayidx25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv572, i64 %indvars.iv572, !dbg !700
  %13 = load float* %arrayidx25, align 4, !dbg !700, !tbaa !500
  %sub = fsub float %13, %add, !dbg !700
  %mul26 = fmul float %div21, %sub, !dbg !700
  %div27 = fdiv float %mul26, 3.000000e+00, !dbg !700
  %conv30 = fsub float 1.000000e+00, %div27, !dbg !700
  %arrayidx34 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv572, i64 %indvars.iv572, !dbg !700
  store float %conv30, float* %arrayidx34, align 4, !dbg !700, !tbaa !500
  %indvars.iv.next573 = add i64 %indvars.iv572, 1, !dbg !702
  %lftr.wideiv574 = trunc i64 %indvars.iv.next573 to i32, !dbg !702
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 3, !dbg !702
  br i1 %exitcond575, label %sw.epilog, label %for.body16, !dbg !702

for.body42:                                       ; preds = %for.body42, %for.cond39.preheader
  %indvars.iv576 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next577, %for.body42 ]
  %arrayidx47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv576, i64 %indvars.iv576, !dbg !697
  %14 = load float* %arrayidx47, align 4, !dbg !697, !tbaa !500
  %mul49 = fmul float %14, %8, !dbg !697
  %div51 = fdiv float %mul49, %9, !dbg !697
  %arrayidx56 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv576, i64 %indvars.iv576, !dbg !697
  %15 = load float* %arrayidx56, align 4, !dbg !697, !tbaa !500
  %sub57 = fsub float %15, %xy_pressure.1, !dbg !697
  %mul58 = fmul float %div51, %sub57, !dbg !697
  %div59 = fdiv float %mul58, 3.000000e+00, !dbg !697
  %conv62 = fsub float 1.000000e+00, %div59, !dbg !697
  %arrayidx66 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv576, i64 %indvars.iv576, !dbg !697
  store float %conv62, float* %arrayidx66, align 4, !dbg !697, !tbaa !500
  %indvars.iv.next577 = add i64 %indvars.iv576, 1, !dbg !699
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32, !dbg !699
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 2, !dbg !699
  br i1 %exitcond579, label %for.end69, label %for.body42, !dbg !699

for.end69:                                        ; preds = %for.body42
  %arrayidx72 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2, !dbg !703
  %16 = load float* %arrayidx72, align 4, !dbg !703, !tbaa !500
  %mul74 = fmul float %16, %8, !dbg !703
  %div76 = fdiv float %mul74, %9, !dbg !703
  %arrayidx79 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2, !dbg !703
  %17 = load float* %arrayidx79, align 4, !dbg !703, !tbaa !500
  %arrayidx81 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2, !dbg !703
  %18 = load float* %arrayidx81, align 4, !dbg !703, !tbaa !500
  %sub82 = fsub float %17, %18, !dbg !703
  %mul83 = fmul float %div76, %sub82, !dbg !703
  %div84 = fdiv float %mul83, 3.000000e+00, !dbg !703
  %conv87 = fsub float 1.000000e+00, %div84, !dbg !703
  %arrayidx89 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2, !dbg !703
  store float %conv87, float* %arrayidx89, align 8, !dbg !703, !tbaa !500
  br label %sw.epilog, !dbg !704

for.cond95.preheader:                             ; preds = %for.inc132, %for.cond91.preheader
  %indvars.iv584 = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next585, %for.inc132 ]
  br label %for.body98, !dbg !705

for.body98:                                       ; preds = %for.body98, %for.cond95.preheader
  %indvars.iv580 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next581, %for.body98 ]
  %19 = trunc i64 %indvars.iv580 to i32, !dbg !692
  %20 = trunc i64 %indvars.iv584 to i32, !dbg !692
  %cmp99 = icmp eq i32 %20, %19, !dbg !692
  %cond = select i1 %cmp99, double 1.000000e+00, double 0.000000e+00, !dbg !692
  %arrayidx105 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv584, i64 %indvars.iv580, !dbg !692
  %21 = load float* %arrayidx105, align 4, !dbg !692, !tbaa !500
  %mul107 = fmul float %21, %6, !dbg !692
  %div109 = fdiv float %mul107, %7, !dbg !692
  %arrayidx114 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv584, i64 %indvars.iv580, !dbg !692
  %22 = load float* %arrayidx114, align 4, !dbg !692, !tbaa !500
  %arrayidx118 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv584, i64 %indvars.iv580, !dbg !692
  %23 = load float* %arrayidx118, align 4, !dbg !692, !tbaa !500
  %sub119 = fsub float %22, %23, !dbg !692
  %mul120 = fmul float %div109, %sub119, !dbg !692
  %div121 = fdiv float %mul120, 3.000000e+00, !dbg !692
  %conv122 = fpext float %div121 to double, !dbg !692
  %sub123 = fsub double %cond, %conv122, !dbg !692
  %conv124 = fptrunc double %sub123 to float, !dbg !692
  %arrayidx128 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv584, i64 %indvars.iv580, !dbg !692
  store float %conv124, float* %arrayidx128, align 4, !dbg !692, !tbaa !500
  %indvars.iv.next581 = add i64 %indvars.iv580, 1, !dbg !705
  %lftr.wideiv582 = trunc i64 %indvars.iv.next581 to i32, !dbg !705
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 3, !dbg !705
  br i1 %exitcond583, label %for.inc132, label %for.body98, !dbg !705

for.inc132:                                       ; preds = %for.body98
  %indvars.iv.next585 = add i64 %indvars.iv584, 1, !dbg !696
  %lftr.wideiv586 = trunc i64 %indvars.iv.next585 to i32, !dbg !696
  %exitcond587 = icmp eq i32 %lftr.wideiv586, 3, !dbg !696
  br i1 %exitcond587, label %sw.epilog, label %for.cond95.preheader, !dbg !696

sw.bb135:                                         ; preds = %if.then12
  %arrayidx138 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2, !dbg !706
  %24 = load float* %arrayidx138, align 4, !dbg !706, !tbaa !500
  %fabsf552 = call float @fabsf(float %24) #7, !dbg !706
  %25 = fpext float %fabsf552 to double, !dbg !706
  %cmp141 = fcmp ogt double %25, 1.200000e-38, !dbg !706
  %delta_t144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15, !dbg !707
  %26 = load float* %delta_t144, align 4, !dbg !707, !tbaa !500
  %tau_p145 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30, !dbg !707
  %27 = load float* %tau_p145, align 4, !dbg !707, !tbaa !500
  br i1 %cmp141, label %if.then143, label %sw.bb135.if.end154_crit_edge, !dbg !706

sw.bb135.if.end154_crit_edge:                     ; preds = %sw.bb135
  %arrayidx189.phi.trans.insert = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %.pre604 = load float* %arrayidx189.phi.trans.insert, align 4, !dbg !708, !tbaa !500
  br label %if.end154, !dbg !706

if.then143:                                       ; preds = %sw.bb135
  %div146 = fdiv float %26, %27, !dbg !707
  %arrayidx149 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2, !dbg !707
  %28 = load float* %arrayidx149, align 4, !dbg !707, !tbaa !500
  %arrayidx151 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2, !dbg !707
  %29 = load float* %arrayidx151, align 4, !dbg !707, !tbaa !500
  %sub152 = fsub float %28, %29, !dbg !707
  %mul153 = fmul float %div146, %sub152, !dbg !707
  call void @llvm.dbg.value(metadata !{float %mul153}, i64 0, metadata !353), !dbg !707
  br label %if.end154, !dbg !707

if.end154:                                        ; preds = %sw.bb135.if.end154_crit_edge, %if.then143
  %30 = phi float [ %29, %if.then143 ], [ %.pre604, %sw.bb135.if.end154_crit_edge ]
  %p_corr_z.0 = phi float [ %mul153, %if.then143 ], [ 0.000000e+00, %sw.bb135.if.end154_crit_edge ]
  %mul158 = fmul float %p_corr_z.0, %24, !dbg !710
  %conv161 = fsub float 1.000000e+00, %mul158, !dbg !710
  %arrayidx163 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2, !dbg !710
  store float %conv161, float* %arrayidx163, align 8, !dbg !710, !tbaa !500
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !349), !dbg !711
  %arrayidx185 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !708
  %31 = load float* %arrayidx185, align 4, !dbg !708, !tbaa !500
  %add190 = fadd float %p_corr_z.0, %30, !dbg !708
  %sub191 = fsub float %add190, %xy_pressure.1, !dbg !708
  br label %for.body167, !dbg !711

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %if.end154
  %32 = phi float [ %conv161, %if.end154 ], [ %.pre605, %for.body167.for.body167_crit_edge ]
  %indvars.iv588 = phi i64 [ 0, %if.end154 ], [ %indvars.iv.next589, %for.body167.for.body167_crit_edge ]
  %arrayidx172 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv588, i64 %indvars.iv588, !dbg !708
  %33 = load float* %arrayidx172, align 4, !dbg !708, !tbaa !500
  %mul174 = fmul float %33, %26, !dbg !708
  %div176 = fdiv float %mul174, %27, !dbg !708
  %arrayidx181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv588, i64 %indvars.iv588, !dbg !708
  %34 = load float* %arrayidx181, align 4, !dbg !708, !tbaa !500
  %mul186 = fmul float %32, %31, !dbg !708
  %div187 = fdiv float %34, %mul186, !dbg !708
  %sub192 = fsub float %div187, %sub191, !dbg !708
  %mul193 = fmul float %div176, %sub192, !dbg !708
  %div194 = fmul float %mul193, 5.000000e-01, !dbg !708
  %conv197 = fadd float %div194, 1.000000e+00, !dbg !708
  %arrayidx201 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv588, i64 %indvars.iv588, !dbg !708
  store float %conv197, float* %arrayidx201, align 4, !dbg !708, !tbaa !500
  %indvars.iv.next589 = add i64 %indvars.iv588, 1, !dbg !711
  %lftr.wideiv590 = trunc i64 %indvars.iv.next589 to i32, !dbg !711
  %exitcond591 = icmp eq i32 %lftr.wideiv590, 2, !dbg !711
  br i1 %exitcond591, label %sw.epilog, label %for.body167.for.body167_crit_edge, !dbg !711

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  %.pre605 = load float* %arrayidx163, align 8, !dbg !708, !tbaa !500
  br label %for.body167, !dbg !711

cond.end:                                         ; preds = %if.then12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !712
  br label %sw.epilog, !dbg !713

sw.epilog:                                        ; preds = %for.body167, %for.inc132, %for.body16, %cond.end, %for.end69
  %arrayidx216 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 0, !dbg !714
  %35 = load float* %arrayidx216, align 4, !dbg !714, !tbaa !500
  %arrayidx218 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 1, !dbg !714
  %36 = load float* %arrayidx218, align 4, !dbg !714, !tbaa !500
  %add219 = fadd float %35, %36, !dbg !714
  store float %add219, float* %arrayidx218, align 4, !dbg !714, !tbaa !500
  %arrayidx221 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 0, !dbg !715
  %37 = load float* %arrayidx221, align 8, !dbg !715, !tbaa !500
  %arrayidx223 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 2, !dbg !715
  %38 = load float* %arrayidx223, align 8, !dbg !715, !tbaa !500
  %add224 = fadd float %37, %38, !dbg !715
  store float %add224, float* %arrayidx223, align 8, !dbg !715, !tbaa !500
  %arrayidx226 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 1, !dbg !716
  %39 = load float* %arrayidx226, align 4, !dbg !716, !tbaa !500
  %arrayidx228 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 2, !dbg !716
  %40 = load float* %arrayidx228, align 4, !dbg !716, !tbaa !500
  %add229 = fadd float %39, %40, !dbg !716
  store float %add229, float* %arrayidx228, align 4, !dbg !716, !tbaa !500
  %41 = load %struct._IO_FILE** @debug, align 8, !dbg !717, !tbaa !509
  %tobool = icmp eq %struct._IO_FILE* %41, null, !dbg !717
  br i1 %tobool, label %if.end232, label %if.then230, !dbg !717

if.then230:                                       ; preds = %sw.epilog
  call void @pr_rvecs(%struct._IO_FILE* %41, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), [3 x float]* %pres, i32 3) #6, !dbg !718
  %42 = load %struct._IO_FILE** @debug, align 8, !dbg !720, !tbaa !509
  call void @pr_rvecs(%struct._IO_FILE* %42, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), [3 x float]* %arraydecay, i32 3) #6, !dbg !720
  br label %if.end232, !dbg !721

if.end232:                                        ; preds = %sw.epilog, %if.then230
  %arrayidx234 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 0, !dbg !722
  %43 = load float* %arrayidx234, align 16, !dbg !722, !tbaa !500
  %conv235 = fpext float %43 to double, !dbg !722
  %cmp236 = fcmp olt double %conv235, 9.900000e-01, !dbg !722
  %cmp242 = fcmp ogt double %conv235, 1.010000e+00, !dbg !722
  %or.cond554 = or i1 %cmp236, %cmp242, !dbg !722
  %arrayidx274.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %.pre = load float* %arrayidx274.phi.trans.insert, align 4, !dbg !723, !tbaa !500
  br i1 %or.cond554, label %if.then268, label %lor.lhs.false244, !dbg !722

lor.lhs.false244:                                 ; preds = %if.end232
  %conv247 = fpext float %.pre to double, !dbg !722
  %cmp248 = fcmp olt double %conv247, 9.900000e-01, !dbg !722
  %cmp254 = fcmp ogt double %conv247, 1.010000e+00, !dbg !722
  %or.cond555 = or i1 %cmp248, %cmp254, !dbg !722
  br i1 %or.cond555, label %if.then268, label %lor.lhs.false256, !dbg !722

lor.lhs.false256:                                 ; preds = %lor.lhs.false244
  %arrayidx258 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2, !dbg !722
  %44 = load float* %arrayidx258, align 8, !dbg !722, !tbaa !500
  %conv259 = fpext float %44 to double, !dbg !722
  %cmp260 = fcmp olt double %conv259, 9.900000e-01, !dbg !722
  %cmp266 = fcmp ogt double %conv259, 1.010000e+00, !dbg !722
  %or.cond556 = or i1 %cmp260, %cmp266, !dbg !722
  br i1 %or.cond556, label %if.then268, label %for.cond288.preheader, !dbg !722

if.then268:                                       ; preds = %if.end232, %lor.lhs.false244, %lor.lhs.false256
  %conv275 = fpext float %.pre to double, !dbg !723
  %arrayidx277 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2, !dbg !723
  %45 = load float* %arrayidx277, align 8, !dbg !723, !tbaa !500
  %conv278 = fpext float %45 to double, !dbg !723
  %call279 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i32 %step, double %conv235, double %conv275, double %conv278) #6, !dbg !723
  %46 = load %struct._IO_FILE** @stdlog, align 8, !dbg !725, !tbaa !509
  %tobool280 = icmp eq %struct._IO_FILE* %46, null, !dbg !725
  br i1 %tobool280, label %if.end284, label %if.then281, !dbg !725

if.then281:                                       ; preds = %if.then268
  %fputs553 = call i32 @fputs(i8* %1, %struct._IO_FILE* %46), !dbg !726
  br label %if.end284, !dbg !726

if.end284:                                        ; preds = %if.then268, %if.then281
  %47 = load %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !509
  %fputs = call i32 @fputs(i8* %1, %struct._IO_FILE* %47), !dbg !727
  br label %for.cond288.preheader, !dbg !728

for.cond288.preheader:                            ; preds = %lor.lhs.false256, %if.end284
  %add289 = add nsw i32 %nr_atoms, %start, !dbg !729
  %cmp290558 = icmp sgt i32 %nr_atoms, 0, !dbg !729
  %48 = load float* %arrayidx234, align 16, !dbg !731, !tbaa !500
  %49 = load float* %arrayidx218, align 4, !dbg !731, !tbaa !500
  %50 = load float* %arrayidx223, align 8, !dbg !731, !tbaa !500
  %arrayidx331 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1, !dbg !733
  %51 = load float* %arrayidx331, align 4, !dbg !733, !tbaa !500
  %52 = load float* %arrayidx228, align 4, !dbg !733, !tbaa !500
  %arrayidx353 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2, !dbg !734
  %53 = load float* %arrayidx353, align 8, !dbg !734, !tbaa !500
  br i1 %cmp290558, label %for.body292.lr.ph, label %for.cond365.preheader, !dbg !729

for.body292.lr.ph:                                ; preds = %for.cond288.preheader
  %54 = sext i32 %start to i64
  br label %for.body292, !dbg !729

for.cond365.preheader:                            ; preds = %for.cond288.preheader, %for.inc362
  br label %for.body368, !dbg !735

for.body292:                                      ; preds = %for.body292.lr.ph, %for.inc362
  %indvars.iv570 = phi i64 [ %54, %for.body292.lr.ph ], [ %indvars.iv.next571, %for.inc362 ]
  %arrayidx294 = getelementptr inbounds i16* %cFREEZE, i64 %indvars.iv570, !dbg !737
  %55 = load i16* %arrayidx294, align 2, !dbg !737, !tbaa !738
  %idxprom296 = zext i16 %55 to i64, !dbg !739
  %arrayidx298 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 0, !dbg !739
  %56 = load i32* %arrayidx298, align 4, !dbg !739, !tbaa !578
  %tobool299 = icmp eq i32 %56, 0, !dbg !739
  br i1 %tobool299, label %if.then300, label %if.end324, !dbg !739

if.then300:                                       ; preds = %for.body292
  %arrayidx305 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 0, !dbg !731
  %57 = load float* %arrayidx305, align 4, !dbg !731, !tbaa !500
  %mul306 = fmul float %48, %57, !dbg !731
  %arrayidx311 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 1, !dbg !731
  %58 = load float* %arrayidx311, align 4, !dbg !731, !tbaa !500
  %mul312 = fmul float %49, %58, !dbg !731
  %add313 = fadd float %mul306, %mul312, !dbg !731
  %arrayidx318 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2, !dbg !731
  %59 = load float* %arrayidx318, align 4, !dbg !731, !tbaa !500
  %mul319 = fmul float %50, %59, !dbg !731
  %add320 = fadd float %add313, %mul319, !dbg !731
  store float %add320, float* %arrayidx305, align 4, !dbg !731, !tbaa !500
  br label %if.end324, !dbg !731

if.end324:                                        ; preds = %for.body292, %if.then300
  %arrayidx327 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 1, !dbg !740
  %60 = load i32* %arrayidx327, align 4, !dbg !740, !tbaa !578
  %tobool328 = icmp eq i32 %60, 0, !dbg !740
  br i1 %tobool328, label %if.then329, label %if.end346, !dbg !740

if.then329:                                       ; preds = %if.end324
  %arrayidx334 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 1, !dbg !733
  %61 = load float* %arrayidx334, align 4, !dbg !733, !tbaa !500
  %mul335 = fmul float %51, %61, !dbg !733
  %arrayidx340 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2, !dbg !733
  %62 = load float* %arrayidx340, align 4, !dbg !733, !tbaa !500
  %mul341 = fmul float %52, %62, !dbg !733
  %add342 = fadd float %mul335, %mul341, !dbg !733
  store float %add342, float* %arrayidx334, align 4, !dbg !733, !tbaa !500
  br label %if.end346, !dbg !733

if.end346:                                        ; preds = %if.end324, %if.then329
  %arrayidx349 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 2, !dbg !741
  %63 = load i32* %arrayidx349, align 4, !dbg !741, !tbaa !578
  %tobool350 = icmp eq i32 %63, 0, !dbg !741
  br i1 %tobool350, label %if.then351, label %for.inc362, !dbg !741

if.then351:                                       ; preds = %if.end346
  %arrayidx356 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2, !dbg !734
  %64 = load float* %arrayidx356, align 4, !dbg !734, !tbaa !500
  %mul357 = fmul float %53, %64, !dbg !734
  store float %mul357, float* %arrayidx356, align 4, !dbg !734, !tbaa !500
  br label %for.inc362, !dbg !734

for.inc362:                                       ; preds = %if.end346, %if.then351
  %indvars.iv.next571 = add i64 %indvars.iv570, 1, !dbg !729
  %65 = trunc i64 %indvars.iv.next571 to i32, !dbg !729
  %cmp290 = icmp slt i32 %65, %add289, !dbg !729
  br i1 %cmp290, label %for.body292, label %for.cond365.preheader, !dbg !729

for.body368:                                      ; preds = %for.body368, %for.cond365.preheader
  %indvars.iv = phi i64 [ 0, %for.cond365.preheader ], [ %indvars.iv.next, %for.body368 ]
  %arrayidx373 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0, !dbg !742
  %66 = load float* %arrayidx373, align 4, !dbg !742, !tbaa !500
  %mul374 = fmul float %48, %66, !dbg !742
  %arrayidx379 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1, !dbg !742
  %67 = load float* %arrayidx379, align 4, !dbg !742, !tbaa !500
  %mul380 = fmul float %49, %67, !dbg !742
  %add381 = fadd float %mul374, %mul380, !dbg !742
  %arrayidx386 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2, !dbg !742
  %68 = load float* %arrayidx386, align 4, !dbg !742, !tbaa !500
  %mul387 = fmul float %50, %68, !dbg !742
  %add388 = fadd float %add381, %mul387, !dbg !742
  store float %add388, float* %arrayidx373, align 4, !dbg !742, !tbaa !500
  %mul397 = fmul float %51, %67, !dbg !744
  %mul403 = fmul float %52, %68, !dbg !744
  %add404 = fadd float %mul397, %mul403, !dbg !744
  store float %add404, float* %arrayidx379, align 4, !dbg !744, !tbaa !500
  %mul413 = fmul float %53, %68, !dbg !745
  store float %mul413, float* %arrayidx386, align 4, !dbg !745, !tbaa !500
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !735
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !735
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !735
  br i1 %exitcond, label %for.end419, label %for.body368, !dbg !735

for.end419:                                       ; preds = %for.body368
  %conv420 = sitofp i32 %nr_atoms to double, !dbg !746
  %arrayidx422 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 111, !dbg !746
  %69 = load double* %arrayidx422, align 8, !dbg !746, !tbaa !747
  %add423 = fadd double %conv420, %69, !dbg !746
  store double %add423, double* %arrayidx422, align 8, !dbg !746, !tbaa !747
  br label %if.end424, !dbg !748

if.end424:                                        ; preds = %for.end419, %for.end
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4, !dbg !749
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !749
  ret void, !dbg !749
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define void @berendsen_tcoupl(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float %dt, float %SAfactor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !412), !dbg !750
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !413), !dbg !750
  tail call void @llvm.dbg.value(metadata !{float %dt}, i64 0, metadata !414), !dbg !751
  tail call void @llvm.dbg.value(metadata !{float %SAfactor}, i64 0, metadata !415), !dbg !751
  tail call void @llvm.dbg.value(metadata !489, i64 0, metadata !418), !dbg !752
  tail call void @llvm.dbg.value(metadata !150, i64 0, metadata !416), !dbg !753
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !753
  %0 = load i32* %ngtc, align 4, !dbg !753, !tbaa !578
  %cmp89 = icmp sgt i32 %0, 0, !dbg !753
  br i1 %cmp89, label %for.body.lr.ph, label %for.end, !dbg !753

for.body.lr.ph:                                   ; preds = %entry
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !755
  %tau_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6, !dbg !757
  %ref_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5, !dbg !758
  br label %for.body, !dbg !753

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load %struct.t_grp_tcstat** %tcstat, align 8, !dbg !755, !tbaa !509
  %T1 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv, i32 0, !dbg !755
  %2 = load float* %T1, align 4, !dbg !755, !tbaa !500
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !417), !dbg !755
  %3 = load float** %tau_t, align 8, !dbg !757, !tbaa !509
  %arrayidx3 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !757
  %4 = load float* %arrayidx3, align 4, !dbg !757, !tbaa !500
  %cmp4 = fcmp ogt float %4, 0.000000e+00, !dbg !757
  %cmp5 = fcmp ogt float %2, 0.000000e+00, !dbg !757
  %or.cond = and i1 %cmp4, %cmp5, !dbg !757
  br i1 %or.cond, label %if.then, label %if.else, !dbg !757

if.then:                                          ; preds = %for.body
  %5 = load float** %ref_t, align 8, !dbg !758, !tbaa !509
  %arrayidx8 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !758
  %6 = load float* %arrayidx8, align 4, !dbg !758, !tbaa !500
  %mul = fmul float %6, %SAfactor, !dbg !758
  %cmp10 = fcmp olt float %mul, 0.000000e+00, !dbg !758
  %cond = select i1 %cmp10, float 0.000000e+00, float %mul, !dbg !758
  tail call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !418), !dbg !758
  %div = fdiv float %dt, %4, !dbg !760
  %conv21 = fpext float %div to double, !dbg !760
  %div22 = fdiv float %cond, %2, !dbg !760
  %conv23 = fpext float %div22 to double, !dbg !760
  %sub = fadd double %conv23, -1.000000e+00, !dbg !760
  %mul24 = fmul double %conv21, %sub, !dbg !760
  %add = fadd double %mul24, 1.000000e+00, !dbg !760
  %call = tail call double @sqrt(double %add) #6, !dbg !760
  %conv25 = fptrunc double %call to float, !dbg !760
  tail call void @llvm.dbg.value(metadata !{float %conv25}, i64 0, metadata !419), !dbg !760
  %cmp27 = fcmp olt float %conv25, 1.250000e+00, !dbg !761
  br i1 %cmp27, label %cond.true29, label %cond.end46, !dbg !761

cond.true29:                                      ; preds = %if.then
  %conv26 = fpext float %conv25 to double, !dbg !761
  %phitmp.not = fcmp ule double %conv26, 8.000000e-01, !dbg !761
  %.mux.conv25 = select i1 %phitmp.not, float 0x3FE99999A0000000, float %conv25, !dbg !761
  br label %cond.end46, !dbg !761

cond.end46:                                       ; preds = %cond.true29, %if.then
  %cond47 = phi float [ 1.250000e+00, %if.then ], [ %.mux.conv25, %cond.true29 ]
  %7 = load %struct.t_grp_tcstat** %tcstat, align 8, !dbg !761, !tbaa !509
  %lambda = getelementptr inbounds %struct.t_grp_tcstat* %7, i64 %indvars.iv, i32 1, !dbg !761
  store float %cond47, float* %lambda, align 4, !dbg !761, !tbaa !500
  br label %if.end, !dbg !762

if.else:                                          ; preds = %for.body
  %lambda55 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv, i32 1, !dbg !763
  store float 1.000000e+00, float* %lambda55, align 4, !dbg !763, !tbaa !500
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end46
  %8 = phi float [ 1.000000e+00, %if.else ], [ %cond47, %cond.end46 ]
  %9 = load %struct._IO_FILE** @debug, align 8, !dbg !764, !tbaa !509
  %tobool = icmp eq %struct._IO_FILE* %9, null, !dbg !764
  br i1 %tobool, label %for.inc, label %if.then56, !dbg !764

if.then56:                                        ; preds = %if.end
  %conv57 = fpext float %2 to double, !dbg !765
  %conv62 = fpext float %8 to double, !dbg !765
  %10 = trunc i64 %indvars.iv to i32, !dbg !765
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([33 x i8]* @.str12, i64 0, i64 0), i32 %10, double %conv57, double %conv62) #6, !dbg !765
  br label %for.inc, !dbg !765

for.inc:                                          ; preds = %if.end, %if.then56
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !753
  %11 = load i32* %ngtc, align 4, !dbg !753, !tbaa !578
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !753
  %cmp = icmp slt i32 %12, %11, !dbg !753
  br i1 %cmp, label %for.body, label %for.end, !dbg !753

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !766
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize uwtable
define void @nosehoover_tcoupl(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float %dt, float %SAfactor) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !422), !dbg !767
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !423), !dbg !767
  tail call void @llvm.dbg.value(metadata !{float %dt}, i64 0, metadata !424), !dbg !768
  tail call void @llvm.dbg.value(metadata !{float %SAfactor}, i64 0, metadata !425), !dbg !768
  tail call void @llvm.dbg.value(metadata !489, i64 0, metadata !427), !dbg !769
  %0 = load float** @nosehoover_tcoupl.Qinv, align 8, !dbg !770, !tbaa !509
  %cmp = icmp eq float* %0, null, !dbg !770
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !771
  %1 = load i32* %ngtc, align 4, !dbg !771, !tbaa !578
  br i1 %cmp, label %if.then, label %for.cond25.preheader, !dbg !770

for.cond25.preheader:                             ; preds = %entry, %for.inc
  %2 = phi i32 [ %7, %for.inc ], [ %1, %entry ]
  %3 = phi float* [ %6, %for.inc ], [ %0, %entry ]
  %cmp2781 = icmp sgt i32 %2, 0, !dbg !773
  br i1 %cmp2781, label %for.body29.lr.ph, label %for.end54, !dbg !773

for.body29.lr.ph:                                 ; preds = %for.cond25.preheader
  %ref_t31 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5, !dbg !775
  %4 = load float** %ref_t31, align 8, !dbg !775, !tbaa !509
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !777
  %5 = load %struct.t_grp_tcstat** %tcstat, align 8, !dbg !777, !tbaa !509
  br label %for.body29, !dbg !773

if.then:                                          ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), i32 372, i32 %1, i32 4) #6, !dbg !771
  %6 = bitcast i8* %call to float*, !dbg !771
  store float* %6, float** @nosehoover_tcoupl.Qinv, align 8, !dbg !771, !tbaa !509
  tail call void @llvm.dbg.value(metadata !150, i64 0, metadata !426), !dbg !778
  %7 = load i32* %ngtc, align 4, !dbg !778, !tbaa !578
  %cmp283 = icmp sgt i32 %7, 0, !dbg !778
  br i1 %cmp283, label %for.body.lr.ph, label %for.end54, !dbg !778

for.body.lr.ph:                                   ; preds = %if.then
  %tau_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6, !dbg !780
  %8 = load float** %tau_t, align 8, !dbg !780, !tbaa !509
  %ref_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5, !dbg !780
  br label %for.body, !dbg !778

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv85 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next86, %for.inc ]
  %arrayidx = getelementptr inbounds float* %8, i64 %indvars.iv85, !dbg !780
  %9 = load float* %arrayidx, align 4, !dbg !780, !tbaa !500
  %cmp3 = fcmp ogt float %9, 0.000000e+00, !dbg !780
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !780

land.lhs.true:                                    ; preds = %for.body
  %10 = load float** %ref_t, align 8, !dbg !780, !tbaa !509
  %arrayidx5 = getelementptr inbounds float* %10, i64 %indvars.iv85, !dbg !780
  %11 = load float* %arrayidx5, align 4, !dbg !780, !tbaa !500
  %cmp6 = fcmp ogt float %11, 0.000000e+00, !dbg !780
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !780

if.then7:                                         ; preds = %land.lhs.true
  %mul = fmul float %9, %9, !dbg !782
  %mul17 = fmul float %mul, %11, !dbg !782
  %conv = fpext float %mul17 to double, !dbg !782
  %div = fdiv double 1.000000e+00, %conv, !dbg !782
  %div18 = fdiv double %div, 0x4043BD3CC9BE45DE, !dbg !782
  %conv19 = fptrunc double %div18 to float, !dbg !782
  %arrayidx21 = getelementptr inbounds float* %6, i64 %indvars.iv85, !dbg !782
  store float %conv19, float* %arrayidx21, align 4, !dbg !782, !tbaa !500
  br label %for.inc, !dbg !782

if.else:                                          ; preds = %land.lhs.true, %for.body
  %arrayidx23 = getelementptr inbounds float* %6, i64 %indvars.iv85, !dbg !783
  store float 0.000000e+00, float* %arrayidx23, align 4, !dbg !783, !tbaa !500
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.else
  %indvars.iv.next86 = add i64 %indvars.iv85, 1, !dbg !778
  %12 = trunc i64 %indvars.iv.next86 to i32, !dbg !778
  %cmp2 = icmp slt i32 %12, %7, !dbg !778
  br i1 %cmp2, label %for.body, label %for.cond25.preheader, !dbg !778

for.body29:                                       ; preds = %for.body29.lr.ph, %for.body29
  %indvars.iv = phi i64 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next, %for.body29 ]
  %arrayidx32 = getelementptr inbounds float* %4, i64 %indvars.iv, !dbg !775
  %13 = load float* %arrayidx32, align 4, !dbg !775, !tbaa !500
  %mul33 = fmul float %13, %SAfactor, !dbg !775
  %cmp35 = fcmp olt float %mul33, 0.000000e+00, !dbg !775
  %cond = select i1 %cmp35, float 0.000000e+00, float %mul33, !dbg !775
  tail call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !427), !dbg !775
  %arrayidx44 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !777
  %14 = load float* %arrayidx44, align 4, !dbg !777, !tbaa !500
  %mul45 = fmul float %14, %dt, !dbg !777
  %T = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv, i32 0, !dbg !777
  %15 = load float* %T, align 4, !dbg !777, !tbaa !500
  %sub = fsub float %15, %cond, !dbg !777
  %mul48 = fmul float %mul45, %sub, !dbg !777
  %xi = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv, i32 3, !dbg !777
  %16 = load float* %xi, align 4, !dbg !777, !tbaa !500
  %add = fadd float %16, %mul48, !dbg !777
  store float %add, float* %xi, align 4, !dbg !777, !tbaa !500
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !773
  %17 = trunc i64 %indvars.iv.next to i32, !dbg !773
  %cmp27 = icmp slt i32 %17, %2, !dbg !773
  br i1 %cmp27, label %for.body29, label %for.end54, !dbg !773

for.end54:                                        ; preds = %for.body29, %if.then, %for.cond25.preheader
  ret void, !dbg !784
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !150, metadata !151, metadata !477, metadata !150, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9, metadata !16}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"epbcXYZ", i64 0} ; [ DW_TAG_enumerator ] [epbcXYZ :: 0]
!7 = metadata !{i32 786472, metadata !"epbcNONE", i64 1} ; [ DW_TAG_enumerator ] [epbcNONE :: 1]
!8 = metadata !{i32 786472, metadata !"epbcNR", i64 2} ; [ DW_TAG_enumerator ] [epbcNR :: 2]
!9 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 54, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 54, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!11 = metadata !{i32 786472, metadata !"epctISOTROPIC", i64 0} ; [ DW_TAG_enumerator ] [epctISOTROPIC :: 0]
!12 = metadata !{i32 786472, metadata !"epctSEMIISOTROPIC", i64 1} ; [ DW_TAG_enumerator ] [epctSEMIISOTROPIC :: 1]
!13 = metadata !{i32 786472, metadata !"epctANISOTROPIC", i64 2} ; [ DW_TAG_enumerator ] [epctANISOTROPIC :: 2]
!14 = metadata !{i32 786472, metadata !"epctSURFACETENSION", i64 3} ; [ DW_TAG_enumerator ] [epctSURFACETENSION :: 3]
!15 = metadata !{i32 786472, metadata !"epctNR", i64 4} ; [ DW_TAG_enumerator ] [epctNR :: 4]
!16 = metadata !{i32 786436, metadata !17, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149}
!19 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!20 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!21 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!22 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!23 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!24 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!25 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!26 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!27 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!28 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!29 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!30 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!31 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!32 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!33 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!34 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!35 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!36 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!37 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!38 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!39 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!40 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!41 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!42 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!43 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!44 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!45 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!46 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!47 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!48 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!49 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!50 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!51 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!52 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!53 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!54 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!55 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!56 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!57 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!58 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!59 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!60 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!61 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!62 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!63 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!64 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!65 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!66 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!67 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!68 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!69 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!70 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!71 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!72 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!73 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!74 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!75 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!76 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!77 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!78 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!79 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!80 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!81 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!82 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!83 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!84 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!85 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!86 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!87 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!88 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!89 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!90 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!91 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!92 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!93 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!94 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!95 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!96 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!97 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!98 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!99 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!100 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!101 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!102 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!103 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!104 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!105 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!106 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!107 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!108 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!109 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!110 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!111 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!112 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!113 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!114 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!115 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!116 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!117 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!118 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!119 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!120 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!121 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!122 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!123 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!124 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!125 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!126 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!127 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!128 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!129 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!130 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!131 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!132 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!133 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!134 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!135 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!136 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!137 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!138 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!139 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!140 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!141 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!142 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!143 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!144 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!145 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!146 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!147 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!148 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!149 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!150 = metadata !{i32 0}
!151 = metadata !{metadata !152, metadata !174, metadata !180, metadata !323, metadata !363, metadata !420, metadata !430, metadata !439, metadata !444, metadata !449, metadata !454, metadata !466, metadata !471}
!152 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"calc_pres", metadata !"calc_pres", metadata !"", i32 52, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float)* @calc_pres, null, null, metadata !163, i32 53} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 53] [calc_pres]
!153 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !156, metadata !157, metadata !157, metadata !157, metadata !157, metadata !159}
!156 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !159, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!159 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!160 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!164 = metadata !{i32 786689, metadata !152, metadata !"ePBC", metadata !153, i32 16777268, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ePBC] [line 52]
!165 = metadata !{i32 786689, metadata !152, metadata !"box", metadata !153, i32 33554484, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 52]
!166 = metadata !{i32 786689, metadata !152, metadata !"ekin", metadata !153, i32 50331700, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ekin] [line 52]
!167 = metadata !{i32 786689, metadata !152, metadata !"vir", metadata !153, i32 67108916, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vir] [line 52]
!168 = metadata !{i32 786689, metadata !152, metadata !"pres", metadata !153, i32 83886132, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pres] [line 52]
!169 = metadata !{i32 786689, metadata !152, metadata !"Elr", metadata !153, i32 100663348, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Elr] [line 52]
!170 = metadata !{i32 786688, metadata !152, metadata !"n", metadata !153, i32 54, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 54]
!171 = metadata !{i32 786688, metadata !152, metadata !"m", metadata !153, i32 54, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 54]
!172 = metadata !{i32 786688, metadata !152, metadata !"fac", metadata !153, i32 55, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 55]
!173 = metadata !{i32 786688, metadata !152, metadata !"Plr", metadata !153, i32 55, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Plr] [line 55]
!174 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"calc_temp", metadata !"calc_temp", metadata !"", i32 90, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @calc_temp, null, null, metadata !177, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [calc_temp]
!175 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!176 = metadata !{metadata !159, metadata !159, metadata !159}
!177 = metadata !{metadata !178, metadata !179}
!178 = metadata !{i32 786689, metadata !174, metadata !"ekin", metadata !153, i32 16777306, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ekin] [line 90]
!179 = metadata !{i32 786689, metadata !174, metadata !"nrdf", metadata !153, i32 33554522, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrdf] [line 90]
!180 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"parrinellorahman_pcoupl", metadata !"parrinellorahman_pcoupl", metadata !"", i32 98, metadata !181, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @parrinellorahman_pcoupl, null, null, metadata !301, i32 100} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 100] [parrinellorahman_pcoupl]
!181 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!182 = metadata !{null, metadata !183, metadata !156, metadata !157, metadata !157, metadata !157, metadata !157}
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inputrec]
!184 = metadata !{i32 786454, metadata !1, null, metadata !"t_inputrec", i32 143, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [t_inputrec] [line 143, size 0, align 0, offset 0] [from ]
!185 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 55, i64 4736, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 55, size 4736, align 64, offset 0] [from ]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !292, metadata !300}
!188 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"eI", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [eI] [line 56, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nsteps", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [nsteps] [line 57, size 32, align 32, offset 32] [from int]
!190 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ns_type", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [ns_type] [line 58, size 32, align 32, offset 64] [from int]
!191 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstlist", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [nstlist] [line 59, size 32, align 32, offset 96] [from int]
!192 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ndelta", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [ndelta] [line 60, size 32, align 32, offset 128] [from int]
!193 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bDomDecomp", i32 61, i64 32, i64 32, i64 160, i32 0, metadata !156} ; [ DW_TAG_member ] [bDomDecomp] [line 61, size 32, align 32, offset 160] [from int]
!194 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"decomp_dir", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !156} ; [ DW_TAG_member ] [decomp_dir] [line 62, size 32, align 32, offset 192] [from int]
!195 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstcomm", i32 63, i64 32, i64 32, i64 224, i32 0, metadata !156} ; [ DW_TAG_member ] [nstcomm] [line 63, size 32, align 32, offset 224] [from int]
!196 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstlog", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !156} ; [ DW_TAG_member ] [nstlog] [line 65, size 32, align 32, offset 256] [from int]
!197 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstxout", i32 66, i64 32, i64 32, i64 288, i32 0, metadata !156} ; [ DW_TAG_member ] [nstxout] [line 66, size 32, align 32, offset 288] [from int]
!198 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstvout", i32 67, i64 32, i64 32, i64 320, i32 0, metadata !156} ; [ DW_TAG_member ] [nstvout] [line 67, size 32, align 32, offset 320] [from int]
!199 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstfout", i32 68, i64 32, i64 32, i64 352, i32 0, metadata !156} ; [ DW_TAG_member ] [nstfout] [line 68, size 32, align 32, offset 352] [from int]
!200 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstenergy", i32 69, i64 32, i64 32, i64 384, i32 0, metadata !156} ; [ DW_TAG_member ] [nstenergy] [line 69, size 32, align 32, offset 384] [from int]
!201 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstxtcout", i32 70, i64 32, i64 32, i64 416, i32 0, metadata !156} ; [ DW_TAG_member ] [nstxtcout] [line 70, size 32, align 32, offset 416] [from int]
!202 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"init_t", i32 71, i64 32, i64 32, i64 448, i32 0, metadata !159} ; [ DW_TAG_member ] [init_t] [line 71, size 32, align 32, offset 448] [from real]
!203 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"delta_t", i32 72, i64 32, i64 32, i64 480, i32 0, metadata !159} ; [ DW_TAG_member ] [delta_t] [line 72, size 32, align 32, offset 480] [from real]
!204 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"xtcprec", i32 73, i64 32, i64 32, i64 512, i32 0, metadata !159} ; [ DW_TAG_member ] [xtcprec] [line 73, size 32, align 32, offset 512] [from real]
!205 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nkx", i32 74, i64 32, i64 32, i64 544, i32 0, metadata !156} ; [ DW_TAG_member ] [nkx] [line 74, size 32, align 32, offset 544] [from int]
!206 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nky", i32 74, i64 32, i64 32, i64 576, i32 0, metadata !156} ; [ DW_TAG_member ] [nky] [line 74, size 32, align 32, offset 576] [from int]
!207 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nkz", i32 74, i64 32, i64 32, i64 608, i32 0, metadata !156} ; [ DW_TAG_member ] [nkz] [line 74, size 32, align 32, offset 608] [from int]
!208 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"pme_order", i32 76, i64 32, i64 32, i64 640, i32 0, metadata !156} ; [ DW_TAG_member ] [pme_order] [line 76, size 32, align 32, offset 640] [from int]
!209 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ewald_rtol", i32 77, i64 32, i64 32, i64 672, i32 0, metadata !159} ; [ DW_TAG_member ] [ewald_rtol] [line 77, size 32, align 32, offset 672] [from real]
!210 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ewald_geometry", i32 79, i64 32, i64 32, i64 704, i32 0, metadata !156} ; [ DW_TAG_member ] [ewald_geometry] [line 79, size 32, align 32, offset 704] [from int]
!211 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"epsilon_surface", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !156} ; [ DW_TAG_member ] [epsilon_surface] [line 80, size 32, align 32, offset 736] [from int]
!212 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bOptFFT", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !156} ; [ DW_TAG_member ] [bOptFFT] [line 81, size 32, align 32, offset 768] [from int]
!213 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ePBC", i32 82, i64 32, i64 32, i64 800, i32 0, metadata !156} ; [ DW_TAG_member ] [ePBC] [line 82, size 32, align 32, offset 800] [from int]
!214 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bUncStart", i32 83, i64 32, i64 32, i64 832, i32 0, metadata !156} ; [ DW_TAG_member ] [bUncStart] [line 83, size 32, align 32, offset 832] [from int]
!215 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"etc", i32 84, i64 32, i64 32, i64 864, i32 0, metadata !156} ; [ DW_TAG_member ] [etc] [line 84, size 32, align 32, offset 864] [from int]
!216 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"epc", i32 85, i64 32, i64 32, i64 896, i32 0, metadata !156} ; [ DW_TAG_member ] [epc] [line 85, size 32, align 32, offset 896] [from int]
!217 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"epct", i32 86, i64 32, i64 32, i64 928, i32 0, metadata !156} ; [ DW_TAG_member ] [epct] [line 86, size 32, align 32, offset 928] [from int]
!218 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"tau_p", i32 87, i64 32, i64 32, i64 960, i32 0, metadata !159} ; [ DW_TAG_member ] [tau_p] [line 87, size 32, align 32, offset 960] [from real]
!219 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ref_p", i32 88, i64 288, i64 32, i64 992, i32 0, metadata !220} ; [ DW_TAG_member ] [ref_p] [line 88, size 288, align 32, offset 992] [from tensor]
!220 = metadata !{i32 786454, metadata !186, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!221 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !159, metadata !222, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!222 = metadata !{metadata !162, metadata !162}
!223 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"compress", i32 89, i64 288, i64 32, i64 1280, i32 0, metadata !220} ; [ DW_TAG_member ] [compress] [line 89, size 288, align 32, offset 1280] [from tensor]
!224 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bSimAnn", i32 90, i64 32, i64 32, i64 1568, i32 0, metadata !156} ; [ DW_TAG_member ] [bSimAnn] [line 90, size 32, align 32, offset 1568] [from int]
!225 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"zero_temp_time", i32 91, i64 32, i64 32, i64 1600, i32 0, metadata !159} ; [ DW_TAG_member ] [zero_temp_time] [line 91, size 32, align 32, offset 1600] [from real]
!226 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rlist", i32 92, i64 32, i64 32, i64 1632, i32 0, metadata !159} ; [ DW_TAG_member ] [rlist] [line 92, size 32, align 32, offset 1632] [from real]
!227 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"coulombtype", i32 93, i64 32, i64 32, i64 1664, i32 0, metadata !156} ; [ DW_TAG_member ] [coulombtype] [line 93, size 32, align 32, offset 1664] [from int]
!228 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rcoulomb_switch", i32 94, i64 32, i64 32, i64 1696, i32 0, metadata !159} ; [ DW_TAG_member ] [rcoulomb_switch] [line 94, size 32, align 32, offset 1696] [from real]
!229 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rcoulomb", i32 95, i64 32, i64 32, i64 1728, i32 0, metadata !159} ; [ DW_TAG_member ] [rcoulomb] [line 95, size 32, align 32, offset 1728] [from real]
!230 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"vdwtype", i32 96, i64 32, i64 32, i64 1760, i32 0, metadata !156} ; [ DW_TAG_member ] [vdwtype] [line 96, size 32, align 32, offset 1760] [from int]
!231 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rvdw_switch", i32 97, i64 32, i64 32, i64 1792, i32 0, metadata !159} ; [ DW_TAG_member ] [rvdw_switch] [line 97, size 32, align 32, offset 1792] [from real]
!232 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"rvdw", i32 98, i64 32, i64 32, i64 1824, i32 0, metadata !159} ; [ DW_TAG_member ] [rvdw] [line 98, size 32, align 32, offset 1824] [from real]
!233 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"epsilon_r", i32 99, i64 32, i64 32, i64 1856, i32 0, metadata !159} ; [ DW_TAG_member ] [epsilon_r] [line 99, size 32, align 32, offset 1856] [from real]
!234 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"eDispCorr", i32 100, i64 32, i64 32, i64 1888, i32 0, metadata !156} ; [ DW_TAG_member ] [eDispCorr] [line 100, size 32, align 32, offset 1888] [from int]
!235 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"shake_tol", i32 101, i64 32, i64 32, i64 1920, i32 0, metadata !159} ; [ DW_TAG_member ] [shake_tol] [line 101, size 32, align 32, offset 1920] [from real]
!236 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"fudgeQQ", i32 102, i64 32, i64 32, i64 1952, i32 0, metadata !159} ; [ DW_TAG_member ] [fudgeQQ] [line 102, size 32, align 32, offset 1952] [from real]
!237 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"efep", i32 103, i64 32, i64 32, i64 1984, i32 0, metadata !156} ; [ DW_TAG_member ] [efep] [line 103, size 32, align 32, offset 1984] [from int]
!238 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"init_lambda", i32 104, i64 32, i64 32, i64 2016, i32 0, metadata !159} ; [ DW_TAG_member ] [init_lambda] [line 104, size 32, align 32, offset 2016] [from real]
!239 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"delta_lambda", i32 105, i64 32, i64 32, i64 2048, i32 0, metadata !159} ; [ DW_TAG_member ] [delta_lambda] [line 105, size 32, align 32, offset 2048] [from real]
!240 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"sc_alpha", i32 106, i64 32, i64 32, i64 2080, i32 0, metadata !159} ; [ DW_TAG_member ] [sc_alpha] [line 106, size 32, align 32, offset 2080] [from real]
!241 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"sc_sigma", i32 107, i64 32, i64 32, i64 2112, i32 0, metadata !159} ; [ DW_TAG_member ] [sc_sigma] [line 107, size 32, align 32, offset 2112] [from real]
!242 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"dr_fc", i32 108, i64 32, i64 32, i64 2144, i32 0, metadata !159} ; [ DW_TAG_member ] [dr_fc] [line 108, size 32, align 32, offset 2144] [from real]
!243 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"eDisreWeighting", i32 109, i64 32, i64 32, i64 2176, i32 0, metadata !156} ; [ DW_TAG_member ] [eDisreWeighting] [line 109, size 32, align 32, offset 2176] [from int]
!244 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bDisreMixed", i32 110, i64 32, i64 32, i64 2208, i32 0, metadata !156} ; [ DW_TAG_member ] [bDisreMixed] [line 110, size 32, align 32, offset 2208] [from int]
!245 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstdisreout", i32 111, i64 32, i64 32, i64 2240, i32 0, metadata !156} ; [ DW_TAG_member ] [nstdisreout] [line 111, size 32, align 32, offset 2240] [from int]
!246 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"dr_tau", i32 112, i64 32, i64 32, i64 2272, i32 0, metadata !159} ; [ DW_TAG_member ] [dr_tau] [line 112, size 32, align 32, offset 2272] [from real]
!247 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"orires_fc", i32 113, i64 32, i64 32, i64 2304, i32 0, metadata !159} ; [ DW_TAG_member ] [orires_fc] [line 113, size 32, align 32, offset 2304] [from real]
!248 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"orires_tau", i32 114, i64 32, i64 32, i64 2336, i32 0, metadata !159} ; [ DW_TAG_member ] [orires_tau] [line 114, size 32, align 32, offset 2336] [from real]
!249 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstorireout", i32 115, i64 32, i64 32, i64 2368, i32 0, metadata !156} ; [ DW_TAG_member ] [nstorireout] [line 115, size 32, align 32, offset 2368] [from int]
!250 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"em_stepsize", i32 116, i64 32, i64 32, i64 2400, i32 0, metadata !159} ; [ DW_TAG_member ] [em_stepsize] [line 116, size 32, align 32, offset 2400] [from real]
!251 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"em_tol", i32 117, i64 32, i64 32, i64 2432, i32 0, metadata !159} ; [ DW_TAG_member ] [em_tol] [line 117, size 32, align 32, offset 2432] [from real]
!252 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"niter", i32 118, i64 32, i64 32, i64 2464, i32 0, metadata !156} ; [ DW_TAG_member ] [niter] [line 118, size 32, align 32, offset 2464] [from int]
!253 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"fc_stepsize", i32 120, i64 32, i64 32, i64 2496, i32 0, metadata !156} ; [ DW_TAG_member ] [fc_stepsize] [line 120, size 32, align 32, offset 2496] [from int]
!254 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nstcgsteep", i32 122, i64 32, i64 32, i64 2528, i32 0, metadata !156} ; [ DW_TAG_member ] [nstcgsteep] [line 122, size 32, align 32, offset 2528] [from int]
!255 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"eConstrAlg", i32 124, i64 32, i64 32, i64 2560, i32 0, metadata !156} ; [ DW_TAG_member ] [eConstrAlg] [line 124, size 32, align 32, offset 2560] [from int]
!256 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"nProjOrder", i32 125, i64 32, i64 32, i64 2592, i32 0, metadata !156} ; [ DW_TAG_member ] [nProjOrder] [line 125, size 32, align 32, offset 2592] [from int]
!257 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"LincsWarnAngle", i32 126, i64 32, i64 32, i64 2624, i32 0, metadata !159} ; [ DW_TAG_member ] [LincsWarnAngle] [line 126, size 32, align 32, offset 2624] [from real]
!258 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bShakeSOR", i32 127, i64 32, i64 32, i64 2656, i32 0, metadata !156} ; [ DW_TAG_member ] [bShakeSOR] [line 127, size 32, align 32, offset 2656] [from int]
!259 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bd_temp", i32 128, i64 32, i64 32, i64 2688, i32 0, metadata !159} ; [ DW_TAG_member ] [bd_temp] [line 128, size 32, align 32, offset 2688] [from real]
!260 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"bd_fric", i32 129, i64 32, i64 32, i64 2720, i32 0, metadata !159} ; [ DW_TAG_member ] [bd_fric] [line 129, size 32, align 32, offset 2720] [from real]
!261 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ld_seed", i32 130, i64 32, i64 32, i64 2752, i32 0, metadata !156} ; [ DW_TAG_member ] [ld_seed] [line 130, size 32, align 32, offset 2752] [from int]
!262 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"cos_accel", i32 131, i64 32, i64 32, i64 2784, i32 0, metadata !159} ; [ DW_TAG_member ] [cos_accel] [line 131, size 32, align 32, offset 2784] [from real]
!263 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userint1", i32 132, i64 32, i64 32, i64 2816, i32 0, metadata !156} ; [ DW_TAG_member ] [userint1] [line 132, size 32, align 32, offset 2816] [from int]
!264 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userint2", i32 133, i64 32, i64 32, i64 2848, i32 0, metadata !156} ; [ DW_TAG_member ] [userint2] [line 133, size 32, align 32, offset 2848] [from int]
!265 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userint3", i32 134, i64 32, i64 32, i64 2880, i32 0, metadata !156} ; [ DW_TAG_member ] [userint3] [line 134, size 32, align 32, offset 2880] [from int]
!266 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userint4", i32 135, i64 32, i64 32, i64 2912, i32 0, metadata !156} ; [ DW_TAG_member ] [userint4] [line 135, size 32, align 32, offset 2912] [from int]
!267 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userreal1", i32 136, i64 32, i64 32, i64 2944, i32 0, metadata !159} ; [ DW_TAG_member ] [userreal1] [line 136, size 32, align 32, offset 2944] [from real]
!268 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userreal2", i32 137, i64 32, i64 32, i64 2976, i32 0, metadata !159} ; [ DW_TAG_member ] [userreal2] [line 137, size 32, align 32, offset 2976] [from real]
!269 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userreal3", i32 138, i64 32, i64 32, i64 3008, i32 0, metadata !159} ; [ DW_TAG_member ] [userreal3] [line 138, size 32, align 32, offset 3008] [from real]
!270 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"userreal4", i32 139, i64 32, i64 32, i64 3040, i32 0, metadata !159} ; [ DW_TAG_member ] [userreal4] [line 139, size 32, align 32, offset 3040] [from real]
!271 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"opts", i32 140, i64 512, i64 64, i64 3072, i32 0, metadata !272} ; [ DW_TAG_member ] [opts] [line 140, size 512, align 64, offset 3072] [from t_grpopts]
!272 = metadata !{i32 786454, metadata !186, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !273} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!273 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !274, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !281, metadata !282, metadata !283, metadata !286, metadata !290}
!275 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!276 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!277 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!278 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!279 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !280} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!281 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !280} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!282 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !280} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!283 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !284} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !285} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!285 = metadata !{i32 786454, metadata !186, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!286 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !287} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !288} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!288 = metadata !{i32 786454, metadata !186, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !289} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!289 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !156, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!290 = metadata !{i32 786445, metadata !186, metadata !273, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !291} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!292 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"ex", i32 141, i64 576, i64 64, i64 3584, i32 0, metadata !293} ; [ DW_TAG_member ] [ex] [line 141, size 576, align 64, offset 3584] [from ]
!293 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !294, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from t_cosines]
!294 = metadata !{i32 786454, metadata !186, null, metadata !"t_cosines", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_typedef ] [t_cosines] [line 40, size 0, align 0, offset 0] [from ]
!295 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !296, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!296 = metadata !{metadata !297, metadata !298, metadata !299}
!297 = metadata !{i32 786445, metadata !186, metadata !295, metadata !"n", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [n] [line 37, size 32, align 32, offset 0] [from int]
!298 = metadata !{i32 786445, metadata !186, metadata !295, metadata !"a", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !280} ; [ DW_TAG_member ] [a] [line 38, size 64, align 64, offset 64] [from ]
!299 = metadata !{i32 786445, metadata !186, metadata !295, metadata !"phi", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !280} ; [ DW_TAG_member ] [phi] [line 39, size 64, align 64, offset 128] [from ]
!300 = metadata !{i32 786445, metadata !186, metadata !185, metadata !"et", i32 142, i64 576, i64 64, i64 4160, i32 0, metadata !293} ; [ DW_TAG_member ] [et] [line 142, size 576, align 64, offset 4160] [from ]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!302 = metadata !{i32 786689, metadata !180, metadata !"ir", metadata !153, i32 16777314, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 98]
!303 = metadata !{i32 786689, metadata !180, metadata !"step", metadata !153, i32 33554530, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 98]
!304 = metadata !{i32 786689, metadata !180, metadata !"pres", metadata !153, i32 50331746, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pres] [line 98]
!305 = metadata !{i32 786689, metadata !180, metadata !"box", metadata !153, i32 67108963, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 99]
!306 = metadata !{i32 786689, metadata !180, metadata !"boxv", metadata !153, i32 83886179, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [boxv] [line 99]
!307 = metadata !{i32 786689, metadata !180, metadata !"M", metadata !153, i32 100663395, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 99]
!308 = metadata !{i32 786688, metadata !180, metadata !"d", metadata !153, i32 126, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 126]
!309 = metadata !{i32 786688, metadata !180, metadata !"n", metadata !153, i32 126, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 126]
!310 = metadata !{i32 786688, metadata !180, metadata !"vol", metadata !153, i32 129, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vol] [line 129]
!311 = metadata !{i32 786688, metadata !180, metadata !"fac", metadata !153, i32 130, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 130]
!312 = metadata !{i32 786688, metadata !180, metadata !"atot", metadata !153, i32 131, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atot] [line 131]
!313 = metadata !{i32 786688, metadata !180, metadata !"arel", metadata !153, i32 131, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arel] [line 131]
!314 = metadata !{i32 786688, metadata !180, metadata !"change", metadata !153, i32 131, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [change] [line 131]
!315 = metadata !{i32 786688, metadata !180, metadata !"maxchange", metadata !153, i32 131, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxchange] [line 131]
!316 = metadata !{i32 786688, metadata !180, metadata !"xy_pressure", metadata !153, i32 131, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xy_pressure] [line 131]
!317 = metadata !{i32 786688, metadata !180, metadata !"invbox", metadata !153, i32 132, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invbox] [line 132]
!318 = metadata !{i32 786688, metadata !180, metadata !"pdiff", metadata !153, i32 132, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdiff] [line 132]
!319 = metadata !{i32 786688, metadata !180, metadata !"t1", metadata !153, i32 132, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 132]
!320 = metadata !{i32 786688, metadata !180, metadata !"t2", metadata !153, i32 132, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 132]
!321 = metadata !{i32 786688, metadata !322, metadata !"maxl", metadata !153, i32 135, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxl] [line 135]
!322 = metadata !{i32 786443, metadata !1, metadata !180, i32 134, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!323 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"berendsen_pcoupl", metadata !"berendsen_pcoupl", metadata !"", i32 228, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, i16*, %struct.t_nrnb*, [3 x i32]*)* @berendsen_pcoupl, null, null, metadata !337, i32 232} ; [ DW_TAG_subprogram ] [line 228] [def] [scope 232] [berendsen_pcoupl]
!324 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!325 = metadata !{null, metadata !183, metadata !156, metadata !157, metadata !157, metadata !156, metadata !156, metadata !284, metadata !326, metadata !328, metadata !287}
!326 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!327 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!328 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!329 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !330} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!330 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !331, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786445, metadata !17, metadata !330, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !333} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!333 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !334, metadata !335, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!334 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!335 = metadata !{metadata !336}
!336 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !356, metadata !359}
!338 = metadata !{i32 786689, metadata !323, metadata !"ir", metadata !153, i32 16777444, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ir] [line 228]
!339 = metadata !{i32 786689, metadata !323, metadata !"step", metadata !153, i32 33554660, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 228]
!340 = metadata !{i32 786689, metadata !323, metadata !"pres", metadata !153, i32 50331876, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pres] [line 228]
!341 = metadata !{i32 786689, metadata !323, metadata !"box", metadata !153, i32 67109093, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 229]
!342 = metadata !{i32 786689, metadata !323, metadata !"start", metadata !153, i32 83886309, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 229]
!343 = metadata !{i32 786689, metadata !323, metadata !"nr_atoms", metadata !153, i32 100663525, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr_atoms] [line 229]
!344 = metadata !{i32 786689, metadata !323, metadata !"x", metadata !153, i32 117440742, metadata !284, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 230]
!345 = metadata !{i32 786689, metadata !323, metadata !"cFREEZE", metadata !153, i32 134217958, metadata !326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cFREEZE] [line 230]
!346 = metadata !{i32 786689, metadata !323, metadata !"nrnb", metadata !153, i32 150995175, metadata !328, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 231]
!347 = metadata !{i32 786689, metadata !323, metadata !"nFreeze", metadata !153, i32 167772391, metadata !287, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nFreeze] [line 231]
!348 = metadata !{i32 786688, metadata !323, metadata !"n", metadata !153, i32 233, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 233]
!349 = metadata !{i32 786688, metadata !323, metadata !"d", metadata !153, i32 233, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 233]
!350 = metadata !{i32 786688, metadata !323, metadata !"g", metadata !153, i32 233, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 233]
!351 = metadata !{i32 786688, metadata !323, metadata !"scalar_pressure", metadata !153, i32 234, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scalar_pressure] [line 234]
!352 = metadata !{i32 786688, metadata !323, metadata !"xy_pressure", metadata !153, i32 234, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xy_pressure] [line 234]
!353 = metadata !{i32 786688, metadata !323, metadata !"p_corr_z", metadata !153, i32 234, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_corr_z] [line 234]
!354 = metadata !{i32 786688, metadata !323, metadata !"mu", metadata !153, i32 235, metadata !355, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 235]
!355 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!356 = metadata !{i32 786688, metadata !323, metadata !"ptr", metadata !153, i32 236, metadata !357, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 236]
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!358 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!359 = metadata !{i32 786688, metadata !323, metadata !"buf", metadata !153, i32 236, metadata !360, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 236]
!360 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !358, metadata !361, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!361 = metadata !{metadata !362}
!362 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!363 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"berendsen_tcoupl", metadata !"berendsen_tcoupl", metadata !"", i32 341, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grpopts*, %struct.t_groups*, float, float)* @berendsen_tcoupl, null, null, metadata !411, i32 343} ; [ DW_TAG_subprogram ] [line 341] [def] [scope 343] [berendsen_tcoupl]
!364 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{null, metadata !366, metadata !367, metadata !159, metadata !159}
!366 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !272} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grpopts]
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_groups]
!368 = metadata !{i32 786454, metadata !1, null, metadata !"t_groups", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [t_groups] [line 72, size 0, align 0, offset 0] [from ]
!369 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 67, i64 768, i64 64, i32 0, i32 0, null, metadata !371, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 67, size 768, align 64, offset 0] [from ]
!370 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/group.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!371 = metadata !{metadata !372, metadata !381, metadata !391, metadata !404}
!372 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"estat", i32 68, i64 512, i64 64, i64 0, i32 0, metadata !373} ; [ DW_TAG_member ] [estat] [line 68, size 512, align 64, offset 0] [from t_grp_ener]
!373 = metadata !{i32 786454, metadata !370, null, metadata !"t_grp_ener", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [t_grp_ener] [line 50, size 0, align 0, offset 0] [from ]
!374 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 46, i64 512, i64 64, i32 0, i32 0, null, metadata !375, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 512, align 64, offset 0] [from ]
!375 = metadata !{metadata !376, metadata !377}
!376 = metadata !{i32 786445, metadata !370, metadata !374, metadata !"nn", i32 47, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [nn] [line 47, size 32, align 32, offset 0] [from int]
!377 = metadata !{i32 786445, metadata !370, metadata !374, metadata !"ee", i32 48, i64 448, i64 64, i64 64, i32 0, metadata !378} ; [ DW_TAG_member ] [ee] [line 48, size 448, align 64, offset 64] [from ]
!378 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !280, metadata !379, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!379 = metadata !{metadata !380}
!380 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!381 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"tcstat", i32 69, i64 64, i64 64, i64 512, i32 0, metadata !382} ; [ DW_TAG_member ] [tcstat] [line 69, size 64, align 64, offset 512] [from ]
!382 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !383} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_tcstat]
!383 = metadata !{i32 786454, metadata !370, null, metadata !"t_grp_tcstat", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [t_grp_tcstat] [line 44, size 0, align 0, offset 0] [from ]
!384 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !385, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 416, align 32, offset 0] [from ]
!385 = metadata !{metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!386 = metadata !{i32 786445, metadata !370, metadata !384, metadata !"T", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [T] [line 39, size 32, align 32, offset 0] [from real]
!387 = metadata !{i32 786445, metadata !370, metadata !384, metadata !"lambda", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !159} ; [ DW_TAG_member ] [lambda] [line 40, size 32, align 32, offset 32] [from real]
!388 = metadata !{i32 786445, metadata !370, metadata !384, metadata !"ekin", i32 41, i64 288, i64 32, i64 64, i32 0, metadata !220} ; [ DW_TAG_member ] [ekin] [line 41, size 288, align 32, offset 64] [from tensor]
!389 = metadata !{i32 786445, metadata !370, metadata !384, metadata !"xi", i32 42, i64 32, i64 32, i64 352, i32 0, metadata !159} ; [ DW_TAG_member ] [xi] [line 42, size 32, align 32, offset 352] [from real]
!390 = metadata !{i32 786445, metadata !370, metadata !384, metadata !"s", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !159} ; [ DW_TAG_member ] [s] [line 43, size 32, align 32, offset 384] [from real]
!391 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"grpstat", i32 70, i64 64, i64 64, i64 576, i32 0, metadata !392} ; [ DW_TAG_member ] [grpstat] [line 70, size 64, align 64, offset 576] [from ]
!392 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !393} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_acc]
!393 = metadata !{i32 786454, metadata !370, null, metadata !"t_grp_acc", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_typedef ] [t_grp_acc] [line 59, size 0, align 0, offset 0] [from ]
!394 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 52, i64 448, i64 64, i32 0, i32 0, null, metadata !395, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 448, align 64, offset 0] [from ]
!395 = metadata !{metadata !396, metadata !397, metadata !400, metadata !401, metadata !402, metadata !403}
!396 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"nat", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [nat] [line 53, size 32, align 32, offset 0] [from int]
!397 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"aid", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !398} ; [ DW_TAG_member ] [aid] [line 54, size 64, align 64, offset 64] [from ]
!398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !399} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!399 = metadata !{i32 786454, metadata !370, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!400 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"M", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [M] [line 55, size 32, align 32, offset 128] [from real]
!401 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"u", i32 56, i64 96, i64 32, i64 160, i32 0, metadata !285} ; [ DW_TAG_member ] [u] [line 56, size 96, align 32, offset 160] [from rvec]
!402 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"uold", i32 57, i64 96, i64 32, i64 256, i32 0, metadata !285} ; [ DW_TAG_member ] [uold] [line 57, size 96, align 32, offset 256] [from rvec]
!403 = metadata !{i32 786445, metadata !370, metadata !394, metadata !"ut", i32 58, i64 96, i64 32, i64 352, i32 0, metadata !285} ; [ DW_TAG_member ] [ut] [line 58, size 96, align 32, offset 352] [from rvec]
!404 = metadata !{i32 786445, metadata !370, metadata !369, metadata !"cosacc", i32 71, i64 96, i64 32, i64 640, i32 0, metadata !405} ; [ DW_TAG_member ] [cosacc] [line 71, size 96, align 32, offset 640] [from t_cos_acc]
!405 = metadata !{i32 786454, metadata !370, null, metadata !"t_cos_acc", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !406} ; [ DW_TAG_typedef ] [t_cos_acc] [line 65, size 0, align 0, offset 0] [from ]
!406 = metadata !{i32 786451, metadata !370, null, metadata !"", i32 61, i64 96, i64 32, i32 0, i32 0, null, metadata !407, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 96, align 32, offset 0] [from ]
!407 = metadata !{metadata !408, metadata !409, metadata !410}
!408 = metadata !{i32 786445, metadata !370, metadata !406, metadata !"cos_accel", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [cos_accel] [line 62, size 32, align 32, offset 0] [from real]
!409 = metadata !{i32 786445, metadata !370, metadata !406, metadata !"mvcos", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !159} ; [ DW_TAG_member ] [mvcos] [line 63, size 32, align 32, offset 32] [from real]
!410 = metadata !{i32 786445, metadata !370, metadata !406, metadata !"vcos", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !159} ; [ DW_TAG_member ] [vcos] [line 64, size 32, align 32, offset 64] [from real]
!411 = metadata !{metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419}
!412 = metadata !{i32 786689, metadata !363, metadata !"opts", metadata !153, i32 16777557, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 341]
!413 = metadata !{i32 786689, metadata !363, metadata !"grps", metadata !153, i32 33554773, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 341]
!414 = metadata !{i32 786689, metadata !363, metadata !"dt", metadata !153, i32 50331990, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dt] [line 342]
!415 = metadata !{i32 786689, metadata !363, metadata !"SAfactor", metadata !153, i32 67109206, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SAfactor] [line 342]
!416 = metadata !{i32 786688, metadata !363, metadata !"i", metadata !153, i32 344, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 344]
!417 = metadata !{i32 786688, metadata !363, metadata !"T", metadata !153, i32 345, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T] [line 345]
!418 = metadata !{i32 786688, metadata !363, metadata !"reft", metadata !153, i32 345, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reft] [line 345]
!419 = metadata !{i32 786688, metadata !363, metadata !"lll", metadata !153, i32 345, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lll] [line 345]
!420 = metadata !{i32 786478, metadata !1, metadata !153, metadata !"nosehoover_tcoupl", metadata !"nosehoover_tcoupl", metadata !"", i32 364, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grpopts*, %struct.t_groups*, float, float)* @nosehoover_tcoupl, null, null, metadata !421, i32 366} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 366] [nosehoover_tcoupl]
!421 = metadata !{metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429}
!422 = metadata !{i32 786689, metadata !420, metadata !"opts", metadata !153, i32 16777580, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 364]
!423 = metadata !{i32 786689, metadata !420, metadata !"grps", metadata !153, i32 33554796, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 364]
!424 = metadata !{i32 786689, metadata !420, metadata !"dt", metadata !153, i32 50332013, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dt] [line 365]
!425 = metadata !{i32 786689, metadata !420, metadata !"SAfactor", metadata !153, i32 67109229, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SAfactor] [line 365]
!426 = metadata !{i32 786688, metadata !420, metadata !"i", metadata !153, i32 368, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 368]
!427 = metadata !{i32 786688, metadata !420, metadata !"reft", metadata !153, i32 369, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reft] [line 369]
!428 = metadata !{i32 786688, metadata !420, metadata !"xit", metadata !153, i32 369, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xit] [line 369]
!429 = metadata !{i32 786688, metadata !420, metadata !"oldxi", metadata !153, i32 369, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldxi] [line 369]
!430 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"mmul", metadata !"mmul", metadata !"", i32 424, metadata !433, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !435, i32 425} ; [ DW_TAG_subprogram ] [line 424] [local] [def] [scope 425] [mmul]
!431 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!432 = metadata !{i32 786473, metadata !431}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!433 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!434 = metadata !{null, metadata !157, metadata !157, metadata !157}
!435 = metadata !{metadata !436, metadata !437, metadata !438}
!436 = metadata !{i32 786689, metadata !430, metadata !"a", metadata !432, i32 16777640, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 424]
!437 = metadata !{i32 786689, metadata !430, metadata !"b", metadata !432, i32 33554856, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 424]
!438 = metadata !{i32 786689, metadata !430, metadata !"dest", metadata !432, i32 50332072, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 424]
!439 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"mtmul", metadata !"mtmul", metadata !"", i32 464, metadata !433, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, [3 x float]*, [3 x float]*)* @mtmul, null, null, metadata !440, i32 465} ; [ DW_TAG_subprogram ] [line 464] [local] [def] [scope 465] [mtmul]
!440 = metadata !{metadata !441, metadata !442, metadata !443}
!441 = metadata !{i32 786689, metadata !439, metadata !"a", metadata !432, i32 16777680, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 464]
!442 = metadata !{i32 786689, metadata !439, metadata !"b", metadata !432, i32 33554896, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 464]
!443 = metadata !{i32 786689, metadata !439, metadata !"dest", metadata !432, i32 50332112, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 464]
!444 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"tmmul", metadata !"tmmul", metadata !"", i32 450, metadata !433, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !445, i32 451} ; [ DW_TAG_subprogram ] [line 450] [local] [def] [scope 451] [tmmul]
!445 = metadata !{metadata !446, metadata !447, metadata !448}
!446 = metadata !{i32 786689, metadata !444, metadata !"a", metadata !432, i32 16777666, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 450]
!447 = metadata !{i32 786689, metadata !444, metadata !"b", metadata !432, i32 33554882, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 450]
!448 = metadata !{i32 786689, metadata !444, metadata !"dest", metadata !432, i32 50332098, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 450]
!449 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"m_sub", metadata !"m_sub", metadata !"", i32 498, metadata !433, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !450, i32 499} ; [ DW_TAG_subprogram ] [line 498] [local] [def] [scope 499] [m_sub]
!450 = metadata !{metadata !451, metadata !452, metadata !453}
!451 = metadata !{i32 786689, metadata !449, metadata !"a", metadata !432, i32 16777714, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 498]
!452 = metadata !{i32 786689, metadata !449, metadata !"b", metadata !432, i32 33554930, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 498]
!453 = metadata !{i32 786689, metadata !449, metadata !"dest", metadata !432, i32 50332146, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 498]
!454 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"m_inv", metadata !"m_inv", metadata !"", i32 524, metadata !455, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !457, i32 525} ; [ DW_TAG_subprogram ] [line 524] [local] [def] [scope 525] [m_inv]
!455 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!456 = metadata !{null, metadata !157, metadata !157}
!457 = metadata !{metadata !458, metadata !459, metadata !460, metadata !462, metadata !463, metadata !464, metadata !465}
!458 = metadata !{i32 786689, metadata !454, metadata !"src", metadata !432, i32 16777740, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 524]
!459 = metadata !{i32 786689, metadata !454, metadata !"dest", metadata !432, i32 33554956, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 524]
!460 = metadata !{i32 786688, metadata !454, metadata !"smallreal", metadata !432, i32 526, metadata !461, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!461 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!462 = metadata !{i32 786688, metadata !454, metadata !"largereal", metadata !432, i32 527, metadata !461, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!463 = metadata !{i32 786688, metadata !454, metadata !"deter", metadata !432, i32 528, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!464 = metadata !{i32 786688, metadata !454, metadata !"c", metadata !432, i32 528, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 528]
!465 = metadata !{i32 786688, metadata !454, metadata !"fc", metadata !432, i32 528, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!466 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !467, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !469, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!467 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{metadata !159, metadata !157}
!469 = metadata !{metadata !470}
!470 = metadata !{i32 786689, metadata !466, metadata !"a", metadata !432, i32 16777694, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!471 = metadata !{i32 786478, metadata !431, metadata !432, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !472, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !474, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!472 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!473 = metadata !{null, metadata !157}
!474 = metadata !{metadata !475, metadata !476}
!475 = metadata !{i32 786689, metadata !471, metadata !"a", metadata !432, i32 16777550, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!476 = metadata !{i32 786688, metadata !471, metadata !"nul", metadata !432, i32 336, metadata !461, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!477 = metadata !{metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !483, metadata !483}
!478 = metadata !{i32 786484, i32 0, metadata !180, metadata !"winv", metadata !"winv", metadata !"", metadata !153, i32 127, metadata !220, i32 1, i32 1, [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, null} ; [ DW_TAG_variable ] [winv] [line 127] [local] [def]
!479 = metadata !{i32 786484, i32 0, metadata !180, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !153, i32 128, metadata !156, i32 1, i32 1, null, null}
!480 = metadata !{i32 786484, i32 0, metadata !420, metadata !"Qinv", metadata !"Qinv", metadata !"", metadata !153, i32 367, metadata !280, i32 1, i32 1, float** @nosehoover_tcoupl.Qinv, null} ; [ DW_TAG_variable ] [Qinv] [line 367] [local] [def]
!481 = metadata !{i32 786484, i32 0, metadata !432, metadata !"smallreal", metadata !"smallreal", metadata !"smallreal", metadata !432, i32 526, metadata !461, i32 1, i32 1, float 0x3C32725DE0000000, null} ; [ DW_TAG_variable ] [smallreal] [line 526] [local] [def]
!482 = metadata !{i32 786484, i32 0, metadata !432, metadata !"largereal", metadata !"largereal", metadata !"largereal", metadata !432, i32 527, metadata !461, i32 1, i32 1, float 0x43ABC16D60000000, null} ; [ DW_TAG_variable ] [largereal] [line 527] [local] [def]
!483 = metadata !{i32 786484, i32 0, metadata !432, metadata !"nul", metadata !"nul", metadata !"nul", metadata !432, i32 336, metadata !461, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!484 = metadata !{i32 52, i32 0, metadata !152, null}
!485 = metadata !{i32 57, i32 0, metadata !152, null}
!486 = metadata !{i32 786689, metadata !471, metadata !"a", metadata !432, i32 16777550, metadata !157, i32 0, metadata !487} ; [ DW_TAG_arg_variable ] [a] [line 334]
!487 = metadata !{i32 58, i32 0, metadata !152, null} ; [ DW_TAG_imported_module ]
!488 = metadata !{i32 334, i32 0, metadata !471, metadata !487}
!489 = metadata !{float 0.000000e+00}
!490 = metadata !{i32 786688, metadata !471, metadata !"nul", metadata !432, i32 336, metadata !461, i32 0, metadata !487} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!491 = metadata !{i32 336, i32 0, metadata !471, metadata !487}
!492 = metadata !{i32 341, i32 0, metadata !471, metadata !487}
!493 = metadata !{i32 338, i32 0, metadata !471, metadata !487}
!494 = metadata !{i32 74, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !152, i32 59, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!496 = metadata !{i32 786689, metadata !466, metadata !"a", metadata !432, i32 16777694, metadata !157, i32 0, metadata !497} ; [ DW_TAG_arg_variable ] [a] [line 478]
!497 = metadata !{i32 76, i32 0, metadata !495, null}
!498 = metadata !{i32 478, i32 0, metadata !466, metadata !497}
!499 = metadata !{i32 480, i32 0, metadata !466, metadata !497}
!500 = metadata !{metadata !"float", metadata !501}
!501 = metadata !{metadata !"omnipotent char", metadata !502}
!502 = metadata !{metadata !"Simple C/C++ TBAA"}
!503 = metadata !{i32 77, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !495, i32 77, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!505 = metadata !{i32 78, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !504, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!507 = metadata !{i32 79, i32 0, metadata !506, null}
!508 = metadata !{i32 81, i32 0, metadata !495, null}
!509 = metadata !{metadata !"any pointer", metadata !501}
!510 = metadata !{i32 82, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !495, i32 81, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!512 = metadata !{i32 83, i32 0, metadata !511, null}
!513 = metadata !{i32 84, i32 0, metadata !511, null}
!514 = metadata !{i32 85, i32 0, metadata !511, null}
!515 = metadata !{i32 86, i32 0, metadata !511, null}
!516 = metadata !{i32 88, i32 0, metadata !152, null}
!517 = metadata !{i32 90, i32 0, metadata !174, null}
!518 = metadata !{i32 92, i32 0, metadata !174, null}
!519 = metadata !{i32 93, i32 0, metadata !174, null}
!520 = metadata !{i32 96, i32 0, metadata !174, null}
!521 = metadata !{i32 98, i32 0, metadata !180, null}
!522 = metadata !{i32 99, i32 0, metadata !180, null}
!523 = metadata !{i32 129, i32 0, metadata !180, null}
!524 = metadata !{i32 130, i32 0, metadata !180, null}
!525 = metadata !{i32 132, i32 0, metadata !180, null}
!526 = metadata !{i32 134, i32 0, metadata !180, null}
!527 = metadata !{i32 136, i32 0, metadata !322, null}
!528 = metadata !{i32 137, i32 0, metadata !322, null}
!529 = metadata !{i32 140, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !531, i32 139, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!531 = metadata !{i32 786443, metadata !1, metadata !322, i32 138, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!532 = metadata !{i32 138, i32 0, metadata !531, null}
!533 = metadata !{i32 139, i32 0, metadata !530, null}
!534 = metadata !{i32 480, i32 0, metadata !466, metadata !535}
!535 = metadata !{i32 530, i32 0, metadata !454, metadata !536}
!536 = metadata !{i32 144, i32 0, metadata !180, null}
!537 = metadata !{i32 142, i32 0, metadata !322, null}
!538 = metadata !{i32 786689, metadata !454, metadata !"src", metadata !432, i32 16777740, metadata !157, i32 0, metadata !536} ; [ DW_TAG_arg_variable ] [src] [line 524]
!539 = metadata !{i32 524, i32 0, metadata !454, metadata !536}
!540 = metadata !{i32 786689, metadata !454, metadata !"dest", metadata !432, i32 33554956, metadata !157, i32 0, metadata !536} ; [ DW_TAG_arg_variable ] [dest] [line 524]
!541 = metadata !{float 0x3C32725DE0000000}
!542 = metadata !{i32 786688, metadata !454, metadata !"smallreal", metadata !432, i32 526, metadata !461, i32 0, metadata !536} ; [ DW_TAG_auto_variable ] [smallreal] [line 526]
!543 = metadata !{i32 526, i32 0, metadata !454, metadata !536}
!544 = metadata !{float 0x43ABC16D60000000}
!545 = metadata !{i32 786688, metadata !454, metadata !"largereal", metadata !432, i32 527, metadata !461, i32 0, metadata !536} ; [ DW_TAG_auto_variable ] [largereal] [line 527]
!546 = metadata !{i32 527, i32 0, metadata !454, metadata !536}
!547 = metadata !{i32 786689, metadata !466, metadata !"a", metadata !432, i32 16777694, metadata !157, i32 0, metadata !535} ; [ DW_TAG_arg_variable ] [a] [line 478]
!548 = metadata !{i32 478, i32 0, metadata !466, metadata !535}
!549 = metadata !{i32 786688, metadata !454, metadata !"deter", metadata !432, i32 528, metadata !159, i32 0, metadata !536} ; [ DW_TAG_auto_variable ] [deter] [line 528]
!550 = metadata !{i32 531, i32 0, metadata !454, metadata !536}
!551 = metadata !{i32 786688, metadata !454, metadata !"c", metadata !432, i32 528, metadata !159, i32 0, metadata !536} ; [ DW_TAG_auto_variable ] [c] [line 528]
!552 = metadata !{i32 532, i32 0, metadata !454, metadata !536}
!553 = metadata !{i32 786688, metadata !454, metadata !"fc", metadata !432, i32 528, metadata !159, i32 0, metadata !536} ; [ DW_TAG_auto_variable ] [fc] [line 528]
!554 = metadata !{i32 534, i32 0, metadata !454, metadata !536}
!555 = metadata !{i32 535, i32 0, metadata !454, metadata !536}
!556 = metadata !{i32 537, i32 0, metadata !454, metadata !536}
!557 = metadata !{i32 538, i32 0, metadata !454, metadata !536}
!558 = metadata !{i32 540, i32 0, metadata !454, metadata !536}
!559 = metadata !{i32 541, i32 0, metadata !454, metadata !536}
!560 = metadata !{i32 539, i32 0, metadata !454, metadata !536}
!561 = metadata !{i32 542, i32 0, metadata !454, metadata !536}
!562 = metadata !{i32 543, i32 0, metadata !454, metadata !536}
!563 = metadata !{i32 544, i32 0, metadata !454, metadata !536}
!564 = metadata !{i32 545, i32 0, metadata !454, metadata !536}
!565 = metadata !{i32 786689, metadata !449, metadata !"a", metadata !432, i32 16777714, metadata !157, i32 0, metadata !566} ; [ DW_TAG_arg_variable ] [a] [line 498]
!566 = metadata !{i32 145, i32 0, metadata !180, null}
!567 = metadata !{i32 498, i32 0, metadata !449, metadata !566}
!568 = metadata !{i32 500, i32 0, metadata !449, metadata !566}
!569 = metadata !{i32 501, i32 0, metadata !449, metadata !566}
!570 = metadata !{i32 502, i32 0, metadata !449, metadata !566}
!571 = metadata !{i32 503, i32 0, metadata !449, metadata !566}
!572 = metadata !{i32 504, i32 0, metadata !449, metadata !566}
!573 = metadata !{i32 505, i32 0, metadata !449, metadata !566}
!574 = metadata !{i32 506, i32 0, metadata !449, metadata !566}
!575 = metadata !{i32 507, i32 0, metadata !449, metadata !566}
!576 = metadata !{i32 508, i32 0, metadata !449, metadata !566}
!577 = metadata !{i32 147, i32 0, metadata !180, null}
!578 = metadata !{metadata !"int", metadata !501}
!579 = metadata !{i32 152, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !180, i32 147, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!581 = metadata !{i32 153, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !580, i32 153, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!583 = metadata !{i32 154, i32 0, metadata !582, null}
!584 = metadata !{i32 453, i32 0, metadata !444, metadata !585}
!585 = metadata !{i32 157, i32 0, metadata !180, null}
!586 = metadata !{i32 454, i32 0, metadata !444, metadata !585}
!587 = metadata !{i32 455, i32 0, metadata !444, metadata !585}
!588 = metadata !{i32 786689, metadata !444, metadata !"a", metadata !432, i32 16777666, metadata !157, i32 0, metadata !585} ; [ DW_TAG_arg_variable ] [a] [line 450]
!589 = metadata !{i32 450, i32 0, metadata !444, metadata !585}
!590 = metadata !{i32 786689, metadata !444, metadata !"dest", metadata !432, i32 50332098, metadata !157, i32 0, metadata !585} ; [ DW_TAG_arg_variable ] [dest] [line 450]
!591 = metadata !{i32 456, i32 0, metadata !444, metadata !585}
!592 = metadata !{i32 457, i32 0, metadata !444, metadata !585}
!593 = metadata !{i32 458, i32 0, metadata !444, metadata !585}
!594 = metadata !{i32 459, i32 0, metadata !444, metadata !585}
!595 = metadata !{i32 460, i32 0, metadata !444, metadata !585}
!596 = metadata !{i32 461, i32 0, metadata !444, metadata !585}
!597 = metadata !{i32 159, i32 0, metadata !180, null}
!598 = metadata !{i32 162, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !600, i32 162, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!600 = metadata !{i32 786443, metadata !1, metadata !601, i32 161, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!601 = metadata !{i32 786443, metadata !1, metadata !180, i32 159, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!602 = metadata !{i32 163, i32 0, metadata !599, null}
!603 = metadata !{i32 161, i32 0, metadata !600, null}
!604 = metadata !{i32 167, i32 0, metadata !601, null}
!605 = metadata !{i32 170, i32 0, metadata !601, null}
!606 = metadata !{i32 173, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !601, i32 173, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!608 = metadata !{i32 174, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !607, i32 174, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!610 = metadata !{i32 175, i32 0, metadata !609, null}
!611 = metadata !{i32 182, i32 0, metadata !601, null}
!612 = metadata !{i32 183, i32 0, metadata !601, null}
!613 = metadata !{i32 186, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !601, i32 186, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!615 = metadata !{i32 187, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !614, i32 187, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!617 = metadata !{i32 188, i32 0, metadata !616, null}
!618 = metadata !{i32 2}
!619 = metadata !{i32 190, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !601, i32 189, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!621 = metadata !{i32 189, i32 0, metadata !620, null}
!622 = metadata !{i32 193, i32 0, metadata !601, null}
!623 = metadata !{i32 195, i32 0, metadata !601, null}
!624 = metadata !{i32 201, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !626, i32 200, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!626 = metadata !{i32 786443, metadata !1, metadata !627, i32 200, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!627 = metadata !{i32 786443, metadata !1, metadata !180, i32 199, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!628 = metadata !{i32 199, i32 0, metadata !627, null}
!629 = metadata !{i32 200, i32 0, metadata !626, null}
!630 = metadata !{i32 212, i32 0, metadata !625, null}
!631 = metadata !{i32 213, i32 0, metadata !625, null}
!632 = metadata !{i32 214, i32 0, metadata !625, null}
!633 = metadata !{i32 217, i32 0, metadata !180, null}
!634 = metadata !{i32 218, i32 0, metadata !180, null}
!635 = metadata !{i32 220, i32 0, metadata !180, null}
!636 = metadata !{i32 221, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !180, i32 221, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!638 = metadata !{i32 222, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !637, i32 222, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!640 = metadata !{i32 223, i32 0, metadata !639, null}
!641 = metadata !{i32 224, i32 0, metadata !180, null}
!642 = metadata !{i32 786689, metadata !430, metadata !"a", metadata !432, i32 16777640, metadata !157, i32 0, metadata !641} ; [ DW_TAG_arg_variable ] [a] [line 424]
!643 = metadata !{i32 424, i32 0, metadata !430, metadata !641}
!644 = metadata !{i32 786689, metadata !430, metadata !"b", metadata !432, i32 33554856, metadata !157, i32 0, metadata !641} ; [ DW_TAG_arg_variable ] [b] [line 424]
!645 = metadata !{i32 786689, metadata !430, metadata !"dest", metadata !432, i32 50332072, metadata !157, i32 0, metadata !641} ; [ DW_TAG_arg_variable ] [dest] [line 424]
!646 = metadata !{i32 426, i32 0, metadata !647, metadata !641}
!647 = metadata !{i32 786443, metadata !431, metadata !430} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!648 = metadata !{i32 427, i32 0, metadata !647, metadata !641}
!649 = metadata !{i32 428, i32 0, metadata !647, metadata !641}
!650 = metadata !{i32 429, i32 0, metadata !647, metadata !641}
!651 = metadata !{i32 430, i32 0, metadata !647, metadata !641}
!652 = metadata !{i32 431, i32 0, metadata !647, metadata !641}
!653 = metadata !{i32 432, i32 0, metadata !647, metadata !641}
!654 = metadata !{i32 433, i32 0, metadata !647, metadata !641}
!655 = metadata !{i32 434, i32 0, metadata !647, metadata !641}
!656 = metadata !{i32 225, i32 0, metadata !180, null}
!657 = metadata !{i32 226, i32 0, metadata !180, null}
!658 = metadata !{i32 464, i32 0, metadata !439, null}
!659 = metadata !{i32 467, i32 0, metadata !439, null}
!660 = metadata !{i32 468, i32 0, metadata !439, null}
!661 = metadata !{i32 469, i32 0, metadata !439, null}
!662 = metadata !{i32 470, i32 0, metadata !439, null}
!663 = metadata !{i32 471, i32 0, metadata !439, null}
!664 = metadata !{i32 472, i32 0, metadata !439, null}
!665 = metadata !{i32 473, i32 0, metadata !439, null}
!666 = metadata !{i32 474, i32 0, metadata !439, null}
!667 = metadata !{i32 475, i32 0, metadata !439, null}
!668 = metadata !{i32 476, i32 0, metadata !439, null}
!669 = metadata !{i32 228, i32 0, metadata !323, null}
!670 = metadata !{i32 229, i32 0, metadata !323, null}
!671 = metadata !{i32 230, i32 0, metadata !323, null}
!672 = metadata !{i32 231, i32 0, metadata !323, null}
!673 = metadata !{i32 235, i32 0, metadata !323, null}
!674 = metadata !{i32 236, i32 0, metadata !323, null}
!675 = metadata !{i32 242, i32 0, metadata !323, null}
!676 = metadata !{i32 243, i32 0, metadata !323, null}
!677 = metadata !{i32 244, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !323, i32 244, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!679 = metadata !{i32 245, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !678, i32 244, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!681 = metadata !{i32 246, i32 0, metadata !680, null}
!682 = metadata !{i32 247, i32 0, metadata !680, null}
!683 = metadata !{i32 255, i32 0, metadata !323, null}
!684 = metadata !{i32 256, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !323, i32 255, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!686 = metadata !{i32 786689, metadata !471, metadata !"a", metadata !432, i32 16777550, metadata !157, i32 0, metadata !684} ; [ DW_TAG_arg_variable ] [a] [line 334]
!687 = metadata !{i32 334, i32 0, metadata !471, metadata !684}
!688 = metadata !{i32 786688, metadata !471, metadata !"nul", metadata !432, i32 336, metadata !461, i32 0, metadata !684} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!689 = metadata !{i32 336, i32 0, metadata !471, metadata !684}
!690 = metadata !{i32 338, i32 0, metadata !471, metadata !684}
!691 = metadata !{i32 257, i32 0, metadata !685, null}
!692 = metadata !{i32 271, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !694, i32 270, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!694 = metadata !{i32 786443, metadata !1, metadata !695, i32 269, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!695 = metadata !{i32 786443, metadata !1, metadata !685, i32 257, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!696 = metadata !{i32 269, i32 0, metadata !694, null}
!697 = metadata !{i32 264, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !695, i32 263, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!699 = metadata !{i32 263, i32 0, metadata !698, null}
!700 = metadata !{i32 260, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !695, i32 259, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!702 = metadata !{i32 259, i32 0, metadata !701, null}
!703 = metadata !{i32 265, i32 0, metadata !695, null}
!704 = metadata !{i32 267, i32 0, metadata !695, null}
!705 = metadata !{i32 270, i32 0, metadata !693, null}
!706 = metadata !{i32 277, i32 0, metadata !695, null}
!707 = metadata !{i32 278, i32 0, metadata !695, null}
!708 = metadata !{i32 285, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !695, i32 284, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!710 = metadata !{i32 283, i32 0, metadata !695, null}
!711 = metadata !{i32 284, i32 0, metadata !709, null}
!712 = metadata !{i32 289, i32 0, metadata !695, null}
!713 = metadata !{i32 291, i32 0, metadata !695, null}
!714 = metadata !{i32 297, i32 0, metadata !685, null}
!715 = metadata !{i32 298, i32 0, metadata !685, null}
!716 = metadata !{i32 299, i32 0, metadata !685, null}
!717 = metadata !{i32 301, i32 0, metadata !685, null}
!718 = metadata !{i32 302, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !685, i32 301, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!720 = metadata !{i32 303, i32 0, metadata !719, null}
!721 = metadata !{i32 304, i32 0, metadata !719, null}
!722 = metadata !{i32 306, i32 0, metadata !685, null}
!723 = metadata !{i32 309, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !685, i32 308, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!725 = metadata !{i32 311, i32 0, metadata !724, null}
!726 = metadata !{i32 312, i32 0, metadata !724, null}
!727 = metadata !{i32 313, i32 0, metadata !724, null}
!728 = metadata !{i32 314, i32 0, metadata !724, null}
!729 = metadata !{i32 317, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !685, i32 317, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!731 = metadata !{i32 321, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !730, i32 317, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!733 = metadata !{i32 323, i32 0, metadata !732, null}
!734 = metadata !{i32 325, i32 0, metadata !732, null}
!735 = metadata !{i32 328, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !685, i32 328, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!737 = metadata !{i32 318, i32 0, metadata !732, null}
!738 = metadata !{metadata !"short", metadata !501}
!739 = metadata !{i32 320, i32 0, metadata !732, null}
!740 = metadata !{i32 322, i32 0, metadata !732, null}
!741 = metadata !{i32 324, i32 0, metadata !732, null}
!742 = metadata !{i32 329, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !736, i32 328, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!744 = metadata !{i32 330, i32 0, metadata !743, null}
!745 = metadata !{i32 331, i32 0, metadata !743, null}
!746 = metadata !{i32 337, i32 0, metadata !685, null}
!747 = metadata !{metadata !"double", metadata !501}
!748 = metadata !{i32 338, i32 0, metadata !685, null}
!749 = metadata !{i32 339, i32 0, metadata !323, null}
!750 = metadata !{i32 341, i32 0, metadata !363, null}
!751 = metadata !{i32 342, i32 0, metadata !363, null}
!752 = metadata !{i32 345, i32 0, metadata !363, null}
!753 = metadata !{i32 347, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !363, i32 347, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!755 = metadata !{i32 348, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !754, i32 347, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!757 = metadata !{i32 350, i32 0, metadata !756, null}
!758 = metadata !{i32 351, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !756, i32 350, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!760 = metadata !{i32 352, i32 0, metadata !759, null}
!761 = metadata !{i32 353, i32 0, metadata !759, null}
!762 = metadata !{i32 354, i32 0, metadata !759, null}
!763 = metadata !{i32 356, i32 0, metadata !756, null}
!764 = metadata !{i32 358, i32 0, metadata !756, null}
!765 = metadata !{i32 359, i32 0, metadata !756, null}
!766 = metadata !{i32 362, i32 0, metadata !363, null}
!767 = metadata !{i32 364, i32 0, metadata !420, null}
!768 = metadata !{i32 365, i32 0, metadata !420, null}
!769 = metadata !{i32 369, i32 0, metadata !420, null}
!770 = metadata !{i32 371, i32 0, metadata !420, null}
!771 = metadata !{i32 372, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !420, i32 371, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!773 = metadata !{i32 383, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !420, i32 383, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!775 = metadata !{i32 384, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !774, i32 383, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!777 = metadata !{i32 385, i32 0, metadata !776, null}
!778 = metadata !{i32 375, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !772, i32 375, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!780 = metadata !{i32 376, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !779, i32 375, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/coupling.c]
!782 = metadata !{i32 377, i32 0, metadata !781, null}
!783 = metadata !{i32 379, i32 0, metadata !781, null}
!784 = metadata !{i32 387, i32 0, metadata !420, null}
