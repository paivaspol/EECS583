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
  %cmp = icmp eq i32 %ePBC, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = bitcast [3 x float]* %pres to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 4, i1 false) #3
  br label %if.end25

if.else:                                          ; preds = %entry
  %conv1 = fdiv float %Elr, 6.000000e+00
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %1 = load float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %2 = load float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %3 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul.i = fmul float %2, %3
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %4 = load float* %arrayidx7.i, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %5 = load float* %arrayidx9.i, align 4, !tbaa !0
  %mul10.i = fmul float %4, %5
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %1, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %6 = load float* %arrayidx13.i, align 4, !tbaa !0
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %7 = load float* %arrayidx15.i, align 4, !tbaa !0
  %mul18.i = fmul float %3, %7
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %8 = load float* %arrayidx22.i, align 4, !tbaa !0
  %mul23.i = fmul float %4, %8
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %6, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %9 = load float* %arrayidx28.i, align 4, !tbaa !0
  %mul33.i = fmul float %5, %7
  %mul38.i = fmul float %2, %8
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %9, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %conv2 = fpext float %add.i to double
  %div3 = fdiv double 3.321080e+01, %conv2
  %conv4 = fptrunc double %div3 to float
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc21, %if.else
  %indvars.iv41 = phi i64 [ 0, %if.else ], [ %indvars.iv.next42, %for.inc21 ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body10 ]
  %arrayidx12 = getelementptr inbounds [3 x float]* %ekin, i64 %indvars.iv41, i64 %indvars.iv
  %10 = load float* %arrayidx12, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds [3 x float]* %vir, i64 %indvars.iv41, i64 %indvars.iv
  %11 = load float* %arrayidx16, align 4, !tbaa !0
  %sub = fsub float %10, %11
  %add = fadd float %conv1, %sub
  %mul = fmul float %conv4, %add
  %arrayidx20 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv41, i64 %indvars.iv
  store float %mul, float* %arrayidx20, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc21, label %for.body10

for.inc21:                                        ; preds = %for.body10
  %indvars.iv.next42 = add i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, 3
  br i1 %exitcond44, label %for.end23, label %for.cond7.preheader

for.end23:                                        ; preds = %for.inc21
  %12 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %12, null
  br i1 %tobool, label %if.end25, label %if.then24

if.then24:                                        ; preds = %for.end23
  tail call void @pr_rvecs(%struct._IO_FILE* %12, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), [3 x float]* %pres, i32 3) #5
  %13 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  tail call void @pr_rvecs(%struct._IO_FILE* %13, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), [3 x float]* %ekin, i32 3) #5
  %14 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  tail call void @pr_rvecs(%struct._IO_FILE* %14, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), [3 x float]* %vir, i32 3) #5
  %15 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  tail call void @pr_rvecs(%struct._IO_FILE* %15, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #5
  br label %if.end25

if.end25:                                         ; preds = %for.end23, %if.then24, %if.then
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind optsize readnone uwtable
define float @calc_temp(float %ekin, float %nrdf) #2 {
entry:
  %cmp = fcmp ogt float %nrdf, 0.000000e+00
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %conv = fpext float %ekin to double
  %mul = fmul double %conv, 2.000000e+00
  %conv1 = fpext float %nrdf to double
  %mul2 = fmul double %conv1, 0x3F810732CDE67DC4
  %div = fdiv double %mul, %mul2
  %conv3 = fptrunc double %div to float
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv3, %if.then ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @parrinellorahman_pcoupl(%struct.t_inputrec* nocapture %ir, i32 %step, [3 x float]* nocapture %pres, [3 x float]* %box, [3 x float]* nocapture %boxv, [3 x float]* nocapture %M) #0 {
entry:
  %pdiff = alloca [3 x [3 x float]], align 16
  %t1 = alloca [3 x [3 x float]], align 16
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %1 = load float* %arrayidx3, align 4, !tbaa !0
  %mul = fmul float %0, %1
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %2 = load float* %arrayidx5, align 4, !tbaa !0
  %mul6 = fmul float %mul, %2
  %conv = fpext float %mul6 to double
  %div = fdiv double %conv, 1.660540e+01
  %conv7 = fptrunc double %div to float
  %3 = bitcast [3 x [3 x float]]* %pdiff to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #3
  %4 = bitcast [3 x [3 x float]]* %t1 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #3
  %.b = load i1* @parrinellorahman_pcoupl.bFirst, align 1
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp = fcmp ogt float %0, %1
  %. = select i1 %cmp, float %0, float %1
  %cmp19 = fcmp ogt float %., %2
  %cond26 = select i1 %cmp19, float %., float %2
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.inc49, %if.then
  %indvars.iv864 = phi i64 [ 0, %if.then ], [ %indvars.iv.next865, %for.inc49 ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32, %for.cond29.preheader
  %indvars.iv860 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next861, %for.body32 ]
  %arrayidx35 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv864, i64 %indvars.iv860
  %5 = load float* %arrayidx35, align 4, !tbaa !0
  %conv36 = fpext float %5 to double
  %mul37 = fmul double %conv36, 0x4043BD3CC9BE45DE
  %6 = load float* %tau_p, align 4, !tbaa !0
  %mul38 = fmul float %6, 3.000000e+00
  %mul40 = fmul float %6, %mul38
  %mul41 = fmul float %cond26, %mul40
  %conv42 = fpext float %mul41 to double
  %div43 = fdiv double %mul37, %conv42
  %conv44 = fptrunc double %div43 to float
  %arrayidx48 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv864, i64 %indvars.iv860
  store float %conv44, float* %arrayidx48, align 4, !tbaa !0
  %indvars.iv.next861 = add i64 %indvars.iv860, 1
  %lftr.wideiv862 = trunc i64 %indvars.iv.next861 to i32
  %exitcond863 = icmp eq i32 %lftr.wideiv862, 3
  br i1 %exitcond863, label %for.inc49, label %for.body32

for.inc49:                                        ; preds = %for.body32
  %indvars.iv.next865 = add i64 %indvars.iv864, 1
  %lftr.wideiv866 = trunc i64 %indvars.iv.next865 to i32
  %exitcond867 = icmp eq i32 %lftr.wideiv866, 3
  br i1 %exitcond867, label %for.end51, label %for.cond29.preheader

for.end51:                                        ; preds = %for.inc49
  store i1 true, i1* @parrinellorahman_pcoupl.bFirst, align 1
  %.pre = load float* %arrayidx1, align 4, !tbaa !0
  %.pre868 = load float* %arrayidx3, align 4, !tbaa !0
  %.pre869 = load float* %arrayidx5, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %for.end51
  %7 = phi float [ %2, %entry ], [ %.pre869, %for.end51 ]
  %8 = phi float [ %1, %entry ], [ %.pre868, %for.end51 ]
  %9 = phi float [ %0, %entry ], [ %.pre, %for.end51 ]
  %mul.i.i = fmul float %8, %7
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %10 = load float* %arrayidx7.i.i, align 4, !tbaa !0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %11 = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %mul10.i.i = fmul float %10, %11
  %sub.i.i = fsub float %mul.i.i, %mul10.i.i
  %mul11.i.i = fmul float %9, %sub.i.i
  %arrayidx13.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %12 = load float* %arrayidx13.i.i, align 4, !tbaa !0
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %13 = load float* %arrayidx15.i.i, align 4, !tbaa !0
  %mul18.i.i = fmul float %7, %13
  %arrayidx22.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %14 = load float* %arrayidx22.i.i, align 4, !tbaa !0
  %mul23.i.i = fmul float %10, %14
  %sub24.i.i = fsub float %mul18.i.i, %mul23.i.i
  %mul25.i.i = fmul float %12, %sub24.i.i
  %sub26.i.i = fsub float %mul11.i.i, %mul25.i.i
  %arrayidx28.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %15 = load float* %arrayidx28.i.i, align 4, !tbaa !0
  %mul33.i.i = fmul float %11, %13
  %mul38.i.i = fmul float %8, %14
  %sub39.i.i = fsub float %mul33.i.i, %mul38.i.i
  %mul40.i.i = fmul float %15, %sub39.i.i
  %add.i.i = fadd float %mul40.i.i, %sub26.i.i
  %conv1.i = fdiv float 1.000000e+00, %add.i.i
  %fabsf.i = call float @fabsf(float %conv1.i) #6
  %cmp.i = fcmp ole float %fabsf.i, 0x3C32725DE0000000
  %cmp6.i = fcmp oge float %fabsf.i, 0x43ABC16D60000000
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %m_inv.exit

if.then.i:                                        ; preds = %if.end
  %conv2.i = fpext float %conv1.i to double
  %div9.i = fdiv double 1.000000e+00, %conv2.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), double %div9.i) #5
  %.pre.i = load float* %arrayidx3, align 4, !tbaa !0
  %.pre192.i = load float* %arrayidx5, align 4, !tbaa !0
  %.pre193.i = load float* %arrayidx7.i.i, align 4, !tbaa !0
  %.pre194.i = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %.pre870 = load float* %arrayidx15.i.i, align 4, !tbaa !0
  %.pre871 = load float* %arrayidx22.i.i, align 4, !tbaa !0
  %.pre872 = load float* %arrayidx13.i.i, align 4, !tbaa !0
  %.pre873 = load float* %arrayidx28.i.i, align 4, !tbaa !0
  %.pre874 = load float* %arrayidx1, align 4, !tbaa !0
  br label %m_inv.exit

m_inv.exit:                                       ; preds = %if.end, %if.then.i
  %16 = phi float [ %9, %if.end ], [ %.pre874, %if.then.i ]
  %17 = phi float [ %15, %if.end ], [ %.pre873, %if.then.i ]
  %18 = phi float [ %12, %if.end ], [ %.pre872, %if.then.i ]
  %19 = phi float [ %14, %if.end ], [ %.pre871, %if.then.i ]
  %20 = phi float [ %13, %if.end ], [ %.pre870, %if.then.i ]
  %21 = phi float [ %11, %if.end ], [ %.pre194.i, %if.then.i ]
  %22 = phi float [ %10, %if.end ], [ %.pre193.i, %if.then.i ]
  %23 = phi float [ %7, %if.end ], [ %.pre192.i, %if.then.i ]
  %24 = phi float [ %8, %if.end ], [ %.pre.i, %if.then.i ]
  %mul.i = fmul float %23, %24
  %mul17.i = fmul float %21, %22
  %sub.i = fsub float %mul.i, %mul17.i
  %mul18.i = fmul float %conv1.i, %sub.i
  %sub21.i = fsub float -0.000000e+00, %conv1.i
  %mul26.i = fmul float %20, %23
  %mul31.i = fmul float %22, %19
  %sub32.i = fsub float %mul26.i, %mul31.i
  %mul33.i = fmul float %sub32.i, %sub21.i
  %mul40.i = fmul float %20, %21
  %mul45.i = fmul float %19, %24
  %sub46.i = fsub float %mul40.i, %mul45.i
  %mul47.i = fmul float %conv1.i, %sub46.i
  %mul55.i = fmul float %23, %18
  %mul60.i = fmul float %21, %17
  %sub61.i = fsub float %mul55.i, %mul60.i
  %mul62.i = fmul float %sub61.i, %sub21.i
  %mul69.i = fmul float %23, %16
  %mul74.i = fmul float %19, %17
  %sub75.i = fsub float %mul69.i, %mul74.i
  %mul76.i = fmul float %conv1.i, %sub75.i
  %mul84.i = fmul float %21, %16
  %mul89.i = fmul float %19, %18
  %sub90.i = fsub float %mul84.i, %mul89.i
  %mul91.i = fmul float %sub90.i, %sub21.i
  %mul98.i = fmul float %22, %18
  %mul103.i = fmul float %24, %17
  %sub104.i = fsub float %mul98.i, %mul103.i
  %mul105.i = fmul float %conv1.i, %sub104.i
  %mul113.i = fmul float %22, %16
  %mul118.i = fmul float %20, %17
  %sub119.i = fsub float %mul113.i, %mul118.i
  %mul120.i = fmul float %sub119.i, %sub21.i
  %mul127.i = fmul float %24, %16
  %mul132.i = fmul float %20, %18
  %sub133.i = fsub float %mul127.i, %mul132.i
  %mul134.i = fmul float %conv1.i, %sub133.i
  %arrayidx1.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  %25 = load float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %26 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub.i449 = fsub float %25, %26
  %arrayidx5.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 0
  store float %sub.i449, float* %arrayidx5.i, align 16, !tbaa !0
  %arrayidx7.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 1
  %27 = load float* %arrayidx7.i, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 1
  %28 = load float* %arrayidx9.i, align 4, !tbaa !0
  %sub10.i = fsub float %27, %28
  %arrayidx12.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 1
  store float %sub10.i, float* %arrayidx12.i, align 4, !tbaa !0
  %arrayidx14.i = getelementptr inbounds [3 x float]* %pres, i64 0, i64 2
  %29 = load float* %arrayidx14.i, align 4, !tbaa !0
  %arrayidx16.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 2
  %30 = load float* %arrayidx16.i, align 4, !tbaa !0
  %sub17.i = fsub float %29, %30
  %arrayidx19.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 2
  store float %sub17.i, float* %arrayidx19.i, align 8, !tbaa !0
  %arrayidx21.i = getelementptr inbounds [3 x float]* %pres, i64 1, i64 0
  %31 = load float* %arrayidx21.i, align 4, !tbaa !0
  %arrayidx23.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 0
  %32 = load float* %arrayidx23.i, align 4, !tbaa !0
  %sub24.i = fsub float %31, %32
  %arrayidx26.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 0
  store float %sub24.i, float* %arrayidx26.i, align 4, !tbaa !0
  %arrayidx28.i = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %33 = load float* %arrayidx28.i, align 4, !tbaa !0
  %arrayidx30.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 1
  %34 = load float* %arrayidx30.i, align 4, !tbaa !0
  %sub31.i = fsub float %33, %34
  %arrayidx33.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 1
  store float %sub31.i, float* %arrayidx33.i, align 4, !tbaa !0
  %arrayidx35.i450 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 2
  %35 = load float* %arrayidx35.i450, align 4, !tbaa !0
  %arrayidx37.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 2
  %36 = load float* %arrayidx37.i, align 4, !tbaa !0
  %sub38.i = fsub float %35, %36
  %arrayidx40.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 2
  store float %sub38.i, float* %arrayidx40.i, align 4, !tbaa !0
  %arrayidx42.i = getelementptr inbounds [3 x float]* %pres, i64 2, i64 0
  %37 = load float* %arrayidx42.i, align 4, !tbaa !0
  %arrayidx44.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 0
  %38 = load float* %arrayidx44.i, align 4, !tbaa !0
  %sub45.i = fsub float %37, %38
  %arrayidx47.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 0
  store float %sub45.i, float* %arrayidx47.i, align 8, !tbaa !0
  %arrayidx49.i451 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 1
  %39 = load float* %arrayidx49.i451, align 4, !tbaa !0
  %arrayidx51.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 1
  %40 = load float* %arrayidx51.i, align 4, !tbaa !0
  %sub52.i = fsub float %39, %40
  %arrayidx54.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 1
  store float %sub52.i, float* %arrayidx54.i, align 4, !tbaa !0
  %arrayidx56.i = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %41 = load float* %arrayidx56.i, align 4, !tbaa !0
  %arrayidx58.i = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %42 = load float* %arrayidx58.i, align 4, !tbaa !0
  %sub59.i = fsub float %41, %42
  %arrayidx61.i = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 2
  store float %sub59.i, float* %arrayidx61.i, align 8, !tbaa !0
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %43 = load i32* %epct, align 4, !tbaa !4
  %cmp54 = icmp eq i32 %43, 3
  br i1 %cmp54, label %if.then56, label %if.end88

if.then56:                                        ; preds = %m_inv.exit
  %add = fadd float %25, %33
  %conv63 = fmul float %add, 5.000000e-01
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %if.then56
  %44 = phi float [ %26, %if.then56 ], [ %.pre879, %for.body67.for.body67_crit_edge ]
  %indvars.iv856 = phi i64 [ 0, %if.then56 ], [ %indvars.iv.next857, %for.body67.for.body67_crit_edge ]
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv856, i64 %indvars.iv856
  %45 = load float* %arrayidx78, align 4, !tbaa !0
  %div79 = fdiv float %44, %45
  %sub = fsub float %41, %div79
  %sub80 = fsub float %conv63, %sub
  %arrayidx84 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 %indvars.iv856, i64 %indvars.iv856
  store float %sub80, float* %arrayidx84, align 4, !tbaa !0
  %indvars.iv.next857 = add i64 %indvars.iv856, 1
  %lftr.wideiv858 = trunc i64 %indvars.iv.next857 to i32
  %exitcond859 = icmp eq i32 %lftr.wideiv858, 2
  br i1 %exitcond859, label %if.end88.loopexit, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  %arrayidx74.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv.next857, i64 %indvars.iv.next857
  %.pre879 = load float* %arrayidx74.phi.trans.insert, align 4, !tbaa !0
  br label %for.body67

if.end88.loopexit:                                ; preds = %for.body67
  %.pre875 = load float* %arrayidx5.i, align 16, !tbaa !0
  %.pre876 = load float* %arrayidx33.i, align 4, !tbaa !0
  %.pre877 = load float* %arrayidx61.i, align 8, !tbaa !0
  br label %if.end88

if.end88:                                         ; preds = %if.end88.loopexit, %m_inv.exit
  %46 = phi float [ %.pre877, %if.end88.loopexit ], [ %sub59.i, %m_inv.exit ]
  %47 = phi float [ %.pre876, %if.end88.loopexit ], [ %sub31.i, %m_inv.exit ]
  %48 = phi float [ %.pre875, %if.end88.loopexit ], [ %sub.i449, %m_inv.exit ]
  %mul.i454 = fmul float %mul18.i, %48
  %mul8.i = fmul float %mul62.i, %sub24.i
  %add.i = fadd float %mul.i454, %mul8.i
  %mul13.i = fmul float %mul105.i, %sub45.i
  %add14.i = fadd float %add.i, %mul13.i
  %arrayidx16.i458 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 0
  store float %add14.i, float* %arrayidx16.i458, align 16, !tbaa !0
  %mul21.i = fmul float %mul18.i, %sub10.i
  %mul26.i460 = fmul float %mul62.i, %47
  %add27.i = fadd float %mul21.i, %mul26.i460
  %mul32.i = fmul float %mul105.i, %sub52.i
  %add33.i = fadd float %add27.i, %mul32.i
  %arrayidx35.i461 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 1
  store float %add33.i, float* %arrayidx35.i461, align 4, !tbaa !0
  %mul40.i462 = fmul float %mul18.i, %sub17.i
  %mul45.i464 = fmul float %mul62.i, %sub38.i
  %add46.i = fadd float %mul40.i462, %mul45.i464
  %mul51.i = fmul float %mul105.i, %46
  %add52.i = fadd float %add46.i, %mul51.i
  %arrayidx54.i465 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 2
  store float %add52.i, float* %arrayidx54.i465, align 8, !tbaa !0
  %mul59.i = fmul float %mul33.i, %48
  %mul64.i = fmul float %mul76.i, %sub24.i
  %add65.i = fadd float %mul59.i, %mul64.i
  %mul70.i = fmul float %mul120.i, %sub45.i
  %add71.i = fadd float %add65.i, %mul70.i
  %arrayidx73.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 0
  store float %add71.i, float* %arrayidx73.i, align 4, !tbaa !0
  %mul78.i = fmul float %mul33.i, %sub10.i
  %mul83.i = fmul float %mul76.i, %47
  %add84.i = fadd float %mul78.i, %mul83.i
  %mul89.i468 = fmul float %mul120.i, %sub52.i
  %add90.i = fadd float %add84.i, %mul89.i468
  %arrayidx92.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 1
  store float %add90.i, float* %arrayidx92.i, align 4, !tbaa !0
  %mul97.i = fmul float %mul33.i, %sub17.i
  %mul102.i = fmul float %mul76.i, %sub38.i
  %add103.i = fadd float %mul97.i, %mul102.i
  %mul108.i = fmul float %mul120.i, %46
  %add109.i = fadd float %add103.i, %mul108.i
  %arrayidx111.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 2
  store float %add109.i, float* %arrayidx111.i, align 4, !tbaa !0
  %mul116.i = fmul float %mul47.i, %48
  %mul121.i = fmul float %mul91.i, %sub24.i
  %add122.i = fadd float %mul116.i, %mul121.i
  %mul127.i469 = fmul float %mul134.i, %sub45.i
  %add128.i = fadd float %add122.i, %mul127.i469
  %arrayidx130.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 0
  store float %add128.i, float* %arrayidx130.i, align 8, !tbaa !0
  %mul135.i = fmul float %mul47.i, %sub10.i
  %mul140.i = fmul float %mul91.i, %47
  %add141.i = fadd float %mul135.i, %mul140.i
  %mul146.i = fmul float %mul134.i, %sub52.i
  %add147.i = fadd float %add141.i, %mul146.i
  %arrayidx149.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 1
  store float %add147.i, float* %arrayidx149.i, align 4, !tbaa !0
  %mul154.i = fmul float %mul47.i, %sub17.i
  %mul159.i = fmul float %mul91.i, %sub38.i
  %add160.i = fadd float %mul154.i, %mul159.i
  %mul165.i = fmul float %mul134.i, %46
  %add166.i = fadd float %add160.i, %mul165.i
  %arrayidx168.i = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 2
  store float %add166.i, float* %arrayidx168.i, align 8, !tbaa !0
  switch i32 %43, label %sw.default [
    i32 2, label %for.body100.lr.ph
    i32 0, label %sw.bb117
    i32 1, label %sw.bb175
    i32 3, label %sw.bb175
  ]

for.body100.lr.ph:                                ; preds = %for.inc114, %if.end88
  %indvars.iv828 = phi i64 [ %indvars.iv.next829, %for.inc114 ], [ 0, %if.end88 ]
  %indvars.iv824 = phi i32 [ %indvars.iv.next825, %for.inc114 ], [ 1, %if.end88 ]
  br label %for.body100

for.body100:                                      ; preds = %for.body100, %for.body100.lr.ph
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %for.body100 ], [ 0, %for.body100.lr.ph ]
  %arrayidx104 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv828, i64 %indvars.iv822
  %49 = load float* %arrayidx104, align 4, !tbaa !0
  %mul105 = fmul float %conv7, %49
  %arrayidx109 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv828, i64 %indvars.iv822
  %50 = load float* %arrayidx109, align 4, !tbaa !0
  %mul110 = fmul float %50, %mul105
  store float %mul110, float* %arrayidx109, align 4, !tbaa !0
  %indvars.iv.next823 = add i64 %indvars.iv822, 1
  %lftr.wideiv826 = trunc i64 %indvars.iv.next823 to i32
  %exitcond827 = icmp eq i32 %lftr.wideiv826, %indvars.iv824
  br i1 %exitcond827, label %for.inc114, label %for.body100

for.inc114:                                       ; preds = %for.body100
  %indvars.iv.next829 = add i64 %indvars.iv828, 1
  %indvars.iv.next825 = add i32 %indvars.iv824, 1
  %lftr.wideiv830 = trunc i64 %indvars.iv.next829 to i32
  %exitcond831 = icmp eq i32 %lftr.wideiv830, 3
  br i1 %exitcond831, label %for.cond252.preheader, label %for.body100.lr.ph

sw.bb117:                                         ; preds = %if.end88
  %51 = load float* %arrayidx1, align 4, !tbaa !0
  %52 = load float* %arrayidx3, align 4, !tbaa !0
  %mul122 = fmul float %51, %52
  %mul125 = fmul float %mul122, %add166.i
  %mul130 = fmul float %51, %add90.i
  %53 = load float* %arrayidx5, align 4, !tbaa !0
  %mul133 = fmul float %mul130, %53
  %add134 = fadd float %mul125, %mul133
  %mul139 = fmul float %52, %add14.i
  %mul142 = fmul float %53, %mul139
  %add143 = fadd float %add134, %mul142
  %mul144 = fmul float %mul6, 3.000000e+00
  %div145 = fdiv float %add143, %mul144
  br label %for.body153.lr.ph

for.body153.lr.ph:                                ; preds = %sw.bb117, %for.inc172
  %indvars.iv838 = phi i64 [ 0, %sw.bb117 ], [ %indvars.iv.next839, %for.inc172 ]
  %indvars.iv834 = phi i32 [ 1, %sw.bb117 ], [ %indvars.iv.next835, %for.inc172 ]
  br label %for.body153

for.body153:                                      ; preds = %for.body153, %for.body153.lr.ph
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %for.body153 ], [ 0, %for.body153.lr.ph ]
  %arrayidx157 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv838, i64 %indvars.iv832
  %54 = load float* %arrayidx157, align 4, !tbaa !0
  %mul158 = fmul float %conv7, %54
  %mul159 = fmul float %div145, %mul158
  %arrayidx163 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv838, i64 %indvars.iv832
  %55 = load float* %arrayidx163, align 4, !tbaa !0
  %mul164 = fmul float %55, %mul159
  %arrayidx168 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv838, i64 %indvars.iv832
  store float %mul164, float* %arrayidx168, align 4, !tbaa !0
  %indvars.iv.next833 = add i64 %indvars.iv832, 1
  %lftr.wideiv836 = trunc i64 %indvars.iv.next833 to i32
  %exitcond837 = icmp eq i32 %lftr.wideiv836, %indvars.iv834
  br i1 %exitcond837, label %for.inc172, label %for.body153

for.inc172:                                       ; preds = %for.body153
  %indvars.iv.next839 = add i64 %indvars.iv838, 1
  %indvars.iv.next835 = add i32 %indvars.iv834, 1
  %lftr.wideiv840 = trunc i64 %indvars.iv.next839 to i32
  %exitcond841 = icmp eq i32 %lftr.wideiv840, 3
  br i1 %exitcond841, label %for.cond252.preheader, label %for.body153.lr.ph

sw.bb175:                                         ; preds = %if.end88, %if.end88
  %56 = load float* %arrayidx1, align 4, !tbaa !0
  %mul180 = fmul float %56, %add90.i
  %57 = load float* %arrayidx3, align 4, !tbaa !0
  %mul185 = fmul float %add14.i, %57
  %add186 = fadd float %mul180, %mul185
  %mul189 = fmul float %56, 2.000000e+00
  %mul192 = fmul float %mul189, %57
  %div193 = fdiv float %add186, %mul192
  br label %for.body201.lr.ph

for.body201.lr.ph:                                ; preds = %sw.bb175, %for.inc220
  %indvars.iv852 = phi i64 [ 0, %sw.bb175 ], [ %indvars.iv.next853, %for.inc220 ]
  %indvars.iv848 = phi i32 [ 1, %sw.bb175 ], [ %indvars.iv.next849, %for.inc220 ]
  br label %for.body201

for.body201:                                      ; preds = %for.body201, %for.body201.lr.ph
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %for.body201 ], [ 0, %for.body201.lr.ph ]
  %arrayidx205 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv852, i64 %indvars.iv846
  %58 = load float* %arrayidx205, align 4, !tbaa !0
  %mul206 = fmul float %conv7, %58
  %mul207 = fmul float %div193, %mul206
  %arrayidx211 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv852, i64 %indvars.iv846
  %59 = load float* %arrayidx211, align 4, !tbaa !0
  %mul212 = fmul float %59, %mul207
  %arrayidx216 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv852, i64 %indvars.iv846
  store float %mul212, float* %arrayidx216, align 4, !tbaa !0
  %indvars.iv.next847 = add i64 %indvars.iv846, 1
  %lftr.wideiv850 = trunc i64 %indvars.iv.next847 to i32
  %exitcond851 = icmp eq i32 %lftr.wideiv850, %indvars.iv848
  br i1 %exitcond851, label %for.inc220, label %for.body201

for.inc220:                                       ; preds = %for.body201
  %indvars.iv.next853 = add i64 %indvars.iv852, 1
  %indvars.iv.next849 = add i32 %indvars.iv848, 1
  %lftr.wideiv854 = trunc i64 %indvars.iv.next853 to i32
  %exitcond855 = icmp eq i32 %lftr.wideiv854, 2
  br i1 %exitcond855, label %for.body226, label %for.body201.lr.ph

for.body226:                                      ; preds = %for.body226, %for.inc220
  %indvars.iv842 = phi i64 [ 0, %for.inc220 ], [ %indvars.iv.next843, %for.body226 ]
  %arrayidx230 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 2, i64 %indvars.iv842
  %60 = load float* %arrayidx230, align 4, !tbaa !0
  %mul231 = fmul float %conv7, %60
  %arrayidx234 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 %indvars.iv842
  %61 = load float* %arrayidx234, align 4, !tbaa !0
  %mul235 = fmul float %61, %mul231
  store float %mul235, float* %arrayidx234, align 4, !tbaa !0
  %indvars.iv.next843 = add i64 %indvars.iv842, 1
  %lftr.wideiv844 = trunc i64 %indvars.iv.next843 to i32
  %exitcond845 = icmp eq i32 %lftr.wideiv844, 3
  br i1 %exitcond845, label %for.cond252.preheader, label %for.body226

sw.default:                                       ; preds = %if.end88
  %62 = icmp ugt i32 %43, 3
  br i1 %62, label %cond.end250, label %cond.false246

cond.false246:                                    ; preds = %sw.default
  %idxprom248 = sext i32 %43 to i64
  %arrayidx249 = getelementptr inbounds [5 x i8*]* @epcoupltype_names, i64 0, i64 %idxprom248
  %63 = load i8** %arrayidx249, align 8, !tbaa !3
  br label %cond.end250

cond.end250:                                      ; preds = %sw.default, %cond.false246
  %cond251 = phi i8* [ %63, %cond.false246 ], [ getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), %sw.default ]
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i8* %cond251) #5
  br label %for.cond252.preheader

for.cond252.preheader:                            ; preds = %for.body226, %for.inc172, %for.inc114, %cond.end250
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  br label %for.body259.lr.ph

for.body259.lr.ph:                                ; preds = %for.cond252.preheader, %for.inc290
  %indvars.iv818 = phi i64 [ 0, %for.cond252.preheader ], [ %indvars.iv.next819, %for.inc290 ]
  %indvars.iv814 = phi i32 [ 1, %for.cond252.preheader ], [ %indvars.iv.next815, %for.inc290 ]
  %maxchange.0791 = phi float [ 0.000000e+00, %for.cond252.preheader ], [ %maxchange.2, %for.inc290 ]
  %arrayidx279 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv818, i64 %indvars.iv818
  %.pre878 = load float* %delta_t, align 4, !tbaa !0
  br label %for.body259

for.body259:                                      ; preds = %for.body259, %for.body259.lr.ph
  %64 = phi float [ %67, %for.body259 ], [ %.pre878, %for.body259.lr.ph ]
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %for.body259 ], [ 0, %for.body259.lr.ph ]
  %maxchange.1790 = phi float [ %maxchange.2, %for.body259 ], [ %maxchange.0791, %for.body259.lr.ph ]
  %arrayidx263 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv818, i64 %indvars.iv812
  %65 = load float* %arrayidx263, align 4, !tbaa !0
  %mul264 = fmul float %64, %65
  %arrayidx268 = getelementptr inbounds [3 x float]* %boxv, i64 %indvars.iv818, i64 %indvars.iv812
  %66 = load float* %arrayidx268, align 4, !tbaa !0
  %add269 = fadd float %66, %mul264
  store float %add269, float* %arrayidx268, align 4, !tbaa !0
  %67 = load float* %delta_t, align 4, !tbaa !0
  %mul275 = fmul float %67, %add269
  %68 = load float* %arrayidx279, align 4, !tbaa !0
  %div280 = fdiv float %mul275, %68
  %fabsf = call float @fabsf(float %div280) #6
  %cmp283 = fcmp ogt float %fabsf, %maxchange.1790
  %maxchange.2 = select i1 %cmp283, float %fabsf, float %maxchange.1790
  %indvars.iv.next813 = add i64 %indvars.iv812, 1
  %lftr.wideiv816 = trunc i64 %indvars.iv.next813 to i32
  %exitcond817 = icmp eq i32 %lftr.wideiv816, %indvars.iv814
  br i1 %exitcond817, label %for.inc290, label %for.body259

for.inc290:                                       ; preds = %for.body259
  %indvars.iv.next819 = add i64 %indvars.iv818, 1
  %indvars.iv.next815 = add i32 %indvars.iv814, 1
  %lftr.wideiv820 = trunc i64 %indvars.iv.next819 to i32
  %exitcond821 = icmp eq i32 %lftr.wideiv820, 3
  br i1 %exitcond821, label %for.end292, label %for.body259.lr.ph

for.end292:                                       ; preds = %for.inc290
  %conv293 = fpext float %maxchange.2 to double
  %cmp294 = fcmp ogt double %conv293, 1.010000e+00
  %69 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool296 = icmp ne %struct._IO_FILE* %69, null
  %or.cond = and i1 %cmp294, %tobool296
  br i1 %or.cond, label %if.then297, label %if.end299

if.then297:                                       ; preds = %for.end292
  %call298 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 %step) #5
  br label %if.end299

if.end299:                                        ; preds = %for.end292, %if.then297
  %arrayidx1.i606 = getelementptr inbounds [3 x float]* %boxv, i64 0, i64 0
  %70 = load float* %arrayidx1.i606, align 4, !tbaa !0
  %71 = load float* %arrayidx1, align 4, !tbaa !0
  %mul.i608 = fmul float %70, %71
  %arrayidx5.i609 = getelementptr inbounds [3 x float]* %boxv, i64 0, i64 1
  %72 = load float* %arrayidx5.i609, align 4, !tbaa !0
  %73 = load float* %arrayidx15.i.i, align 4, !tbaa !0
  %mul8.i611 = fmul float %72, %73
  %add.i612 = fadd float %mul.i608, %mul8.i611
  %arrayidx10.i613 = getelementptr inbounds [3 x float]* %boxv, i64 0, i64 2
  %74 = load float* %arrayidx10.i613, align 4, !tbaa !0
  %75 = load float* %arrayidx22.i.i, align 4, !tbaa !0
  %mul13.i615 = fmul float %74, %75
  %add14.i616 = fadd float %add.i612, %mul13.i615
  store float %add14.i616, float* %arrayidx16.i458, align 16, !tbaa !0
  %76 = load float* %arrayidx13.i.i, align 4, !tbaa !0
  %mul21.i619 = fmul float %70, %76
  %77 = load float* %arrayidx3, align 4, !tbaa !0
  %mul26.i621 = fmul float %72, %77
  %add27.i622 = fadd float %mul21.i619, %mul26.i621
  %78 = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %mul32.i624 = fmul float %74, %78
  %add33.i625 = fadd float %add27.i622, %mul32.i624
  store float %add33.i625, float* %arrayidx35.i461, align 4, !tbaa !0
  %79 = load float* %arrayidx28.i.i, align 4, !tbaa !0
  %mul40.i628 = fmul float %70, %79
  %80 = load float* %arrayidx7.i.i, align 4, !tbaa !0
  %mul45.i630 = fmul float %72, %80
  %add46.i631 = fadd float %mul40.i628, %mul45.i630
  %81 = load float* %arrayidx5, align 4, !tbaa !0
  %mul51.i633 = fmul float %74, %81
  %add52.i634 = fadd float %add46.i631, %mul51.i633
  store float %add52.i634, float* %arrayidx54.i465, align 8, !tbaa !0
  %arrayidx56.i636 = getelementptr inbounds [3 x float]* %boxv, i64 1, i64 0
  %82 = load float* %arrayidx56.i636, align 4, !tbaa !0
  %mul59.i637 = fmul float %82, %71
  %arrayidx61.i638 = getelementptr inbounds [3 x float]* %boxv, i64 1, i64 1
  %83 = load float* %arrayidx61.i638, align 4, !tbaa !0
  %mul64.i639 = fmul float %83, %73
  %add65.i640 = fadd float %mul59.i637, %mul64.i639
  %arrayidx67.i641 = getelementptr inbounds [3 x float]* %boxv, i64 1, i64 2
  %84 = load float* %arrayidx67.i641, align 4, !tbaa !0
  %mul70.i642 = fmul float %84, %75
  %add71.i643 = fadd float %add65.i640, %mul70.i642
  store float %add71.i643, float* %arrayidx73.i, align 4, !tbaa !0
  %mul78.i645 = fmul float %82, %76
  %mul83.i646 = fmul float %83, %77
  %add84.i647 = fadd float %mul78.i645, %mul83.i646
  %mul89.i648 = fmul float %84, %78
  %add90.i649 = fadd float %add84.i647, %mul89.i648
  store float %add90.i649, float* %arrayidx92.i, align 4, !tbaa !0
  %mul97.i651 = fmul float %82, %79
  %mul102.i652 = fmul float %83, %80
  %add103.i653 = fadd float %mul97.i651, %mul102.i652
  %mul108.i654 = fmul float %84, %81
  %add109.i655 = fadd float %add103.i653, %mul108.i654
  store float %add109.i655, float* %arrayidx111.i, align 4, !tbaa !0
  %arrayidx113.i657 = getelementptr inbounds [3 x float]* %boxv, i64 2, i64 0
  %85 = load float* %arrayidx113.i657, align 4, !tbaa !0
  %mul116.i658 = fmul float %85, %71
  %arrayidx118.i659 = getelementptr inbounds [3 x float]* %boxv, i64 2, i64 1
  %86 = load float* %arrayidx118.i659, align 4, !tbaa !0
  %mul121.i660 = fmul float %86, %73
  %add122.i661 = fadd float %mul116.i658, %mul121.i660
  %arrayidx124.i662 = getelementptr inbounds [3 x float]* %boxv, i64 2, i64 2
  %87 = load float* %arrayidx124.i662, align 4, !tbaa !0
  %mul127.i663 = fmul float %87, %75
  %add128.i664 = fadd float %add122.i661, %mul127.i663
  store float %add128.i664, float* %arrayidx130.i, align 8, !tbaa !0
  %mul135.i666 = fmul float %85, %76
  %mul140.i667 = fmul float %86, %77
  %add141.i668 = fadd float %mul135.i666, %mul140.i667
  %mul146.i669 = fmul float %87, %78
  %add147.i670 = fadd float %add141.i668, %mul146.i669
  store float %add147.i670, float* %arrayidx149.i, align 4, !tbaa !0
  %mul154.i672 = fmul float %85, %79
  %mul159.i673 = fmul float %86, %80
  %add160.i674 = fadd float %mul154.i672, %mul159.i673
  %mul165.i675 = fmul float %87, %81
  %add166.i676 = fadd float %add160.i674, %mul165.i675
  store float %add166.i676, float* %arrayidx168.i, align 8, !tbaa !0
  br label %for.cond305.preheader

for.cond305.preheader:                            ; preds = %for.inc321, %if.end299
  %indvars.iv808 = phi i64 [ 0, %if.end299 ], [ %indvars.iv.next809, %for.inc321 ]
  br label %for.body308

for.body308:                                      ; preds = %for.body308, %for.cond305.preheader
  %indvars.iv = phi i64 [ 0, %for.cond305.preheader ], [ %indvars.iv.next, %for.body308 ]
  %arrayidx312 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv, i64 %indvars.iv808
  %88 = load float* %arrayidx312, align 4, !tbaa !0
  %arrayidx316 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv808, i64 %indvars.iv
  %89 = load float* %arrayidx316, align 4, !tbaa !0
  %add317 = fadd float %88, %89
  store float %add317, float* %arrayidx316, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc321, label %for.body308

for.inc321:                                       ; preds = %for.body308
  %indvars.iv.next809 = add i64 %indvars.iv808, 1
  %lftr.wideiv810 = trunc i64 %indvars.iv.next809 to i32
  %exitcond811 = icmp eq i32 %lftr.wideiv810, 3
  br i1 %exitcond811, label %for.end323, label %for.cond305.preheader

for.end323:                                       ; preds = %for.inc321
  %90 = load float* %arrayidx16.i458, align 16, !tbaa !0
  %mul.i544 = fmul float %mul18.i, %90
  %91 = load float* %arrayidx73.i, align 4, !tbaa !0
  %mul8.i547 = fmul float %mul33.i, %91
  %add.i548 = fadd float %mul.i544, %mul8.i547
  %92 = load float* %arrayidx130.i, align 8, !tbaa !0
  %mul13.i551 = fmul float %mul47.i, %92
  %add14.i552 = fadd float %add.i548, %mul13.i551
  %mul21.i554 = fmul float %mul62.i, %90
  %mul26.i556 = fmul float %mul76.i, %91
  %add27.i557 = fadd float %mul21.i554, %mul26.i556
  %mul32.i558 = fmul float %mul91.i, %92
  %add33.i559 = fadd float %add27.i557, %mul32.i558
  %mul40.i562 = fmul float %mul105.i, %90
  %mul45.i564 = fmul float %mul120.i, %91
  %add46.i565 = fadd float %mul40.i562, %mul45.i564
  %mul51.i566 = fmul float %mul134.i, %92
  %add52.i567 = fadd float %add46.i565, %mul51.i566
  %93 = load float* %arrayidx35.i461, align 4, !tbaa !0
  %mul59.i570 = fmul float %mul18.i, %93
  %94 = load float* %arrayidx92.i, align 4, !tbaa !0
  %mul64.i571 = fmul float %mul33.i, %94
  %add65.i572 = fadd float %mul59.i570, %mul64.i571
  %95 = load float* %arrayidx149.i, align 4, !tbaa !0
  %mul70.i573 = fmul float %mul47.i, %95
  %add71.i574 = fadd float %add65.i572, %mul70.i573
  %mul78.i576 = fmul float %mul62.i, %93
  %mul83.i577 = fmul float %mul76.i, %94
  %add84.i578 = fadd float %mul78.i576, %mul83.i577
  %mul89.i579 = fmul float %mul91.i, %95
  %add90.i580 = fadd float %add84.i578, %mul89.i579
  %mul97.i582 = fmul float %mul105.i, %93
  %mul102.i583 = fmul float %mul120.i, %94
  %add103.i584 = fadd float %mul97.i582, %mul102.i583
  %mul108.i585 = fmul float %mul134.i, %95
  %add109.i586 = fadd float %add103.i584, %mul108.i585
  %96 = load float* %arrayidx54.i465, align 8, !tbaa !0
  %mul116.i588 = fmul float %mul18.i, %96
  %97 = load float* %arrayidx111.i, align 4, !tbaa !0
  %mul121.i589 = fmul float %mul33.i, %97
  %add122.i590 = fadd float %mul116.i588, %mul121.i589
  %98 = load float* %arrayidx168.i, align 8, !tbaa !0
  %mul127.i591 = fmul float %mul47.i, %98
  %add128.i592 = fadd float %add122.i590, %mul127.i591
  %mul135.i594 = fmul float %mul62.i, %96
  %mul140.i595 = fmul float %mul76.i, %97
  %add141.i596 = fadd float %mul135.i594, %mul140.i595
  %mul146.i597 = fmul float %mul91.i, %98
  %add147.i598 = fadd float %add141.i596, %mul146.i597
  %mul154.i600 = fmul float %mul105.i, %96
  %mul159.i601 = fmul float %mul120.i, %97
  %add160.i602 = fadd float %mul154.i600, %mul159.i601
  %mul165.i603 = fmul float %mul134.i, %98
  %add166.i604 = fadd float %add160.i602, %mul165.i603
  %mul.i472 = fmul float %mul18.i, %add14.i552
  %mul8.i475 = fmul float %mul33.i, %add71.i574
  %add.i476 = fadd float %mul.i472, %mul8.i475
  %mul13.i479 = fmul float %mul47.i, %add128.i592
  %add14.i480 = fadd float %add.i476, %mul13.i479
  %arrayidx16.i481 = getelementptr inbounds [3 x float]* %M, i64 0, i64 0
  store float %add14.i480, float* %arrayidx16.i481, align 4, !tbaa !0
  %mul21.i483 = fmul float %mul62.i, %add14.i552
  %mul26.i485 = fmul float %mul76.i, %add71.i574
  %add27.i486 = fadd float %mul21.i483, %mul26.i485
  %mul32.i488 = fmul float %mul91.i, %add128.i592
  %add33.i489 = fadd float %add27.i486, %mul32.i488
  %arrayidx35.i490 = getelementptr inbounds [3 x float]* %M, i64 0, i64 1
  store float %add33.i489, float* %arrayidx35.i490, align 4, !tbaa !0
  %mul40.i492 = fmul float %mul105.i, %add14.i552
  %mul45.i494 = fmul float %mul120.i, %add71.i574
  %add46.i495 = fadd float %mul40.i492, %mul45.i494
  %mul51.i497 = fmul float %mul134.i, %add128.i592
  %add52.i498 = fadd float %add46.i495, %mul51.i497
  %arrayidx54.i499 = getelementptr inbounds [3 x float]* %M, i64 0, i64 2
  store float %add52.i498, float* %arrayidx54.i499, align 4, !tbaa !0
  %mul59.i501 = fmul float %mul18.i, %add33.i559
  %mul64.i503 = fmul float %mul33.i, %add90.i580
  %add65.i504 = fadd float %mul59.i501, %mul64.i503
  %mul70.i506 = fmul float %mul47.i, %add147.i598
  %add71.i507 = fadd float %add65.i504, %mul70.i506
  %arrayidx73.i508 = getelementptr inbounds [3 x float]* %M, i64 1, i64 0
  store float %add71.i507, float* %arrayidx73.i508, align 4, !tbaa !0
  %mul78.i509 = fmul float %mul62.i, %add33.i559
  %mul83.i510 = fmul float %mul76.i, %add90.i580
  %add84.i511 = fadd float %mul78.i509, %mul83.i510
  %mul89.i512 = fmul float %mul91.i, %add147.i598
  %add90.i513 = fadd float %add84.i511, %mul89.i512
  %arrayidx92.i514 = getelementptr inbounds [3 x float]* %M, i64 1, i64 1
  store float %add90.i513, float* %arrayidx92.i514, align 4, !tbaa !0
  %mul97.i515 = fmul float %mul105.i, %add33.i559
  %mul102.i516 = fmul float %mul120.i, %add90.i580
  %add103.i517 = fadd float %mul97.i515, %mul102.i516
  %mul108.i518 = fmul float %mul134.i, %add147.i598
  %add109.i519 = fadd float %add103.i517, %mul108.i518
  %arrayidx111.i520 = getelementptr inbounds [3 x float]* %M, i64 1, i64 2
  store float %add109.i519, float* %arrayidx111.i520, align 4, !tbaa !0
  %mul116.i522 = fmul float %mul18.i, %add52.i567
  %mul121.i524 = fmul float %mul33.i, %add109.i586
  %add122.i525 = fadd float %mul116.i522, %mul121.i524
  %mul127.i527 = fmul float %mul47.i, %add166.i604
  %add128.i528 = fadd float %add122.i525, %mul127.i527
  %arrayidx130.i529 = getelementptr inbounds [3 x float]* %M, i64 2, i64 0
  store float %add128.i528, float* %arrayidx130.i529, align 4, !tbaa !0
  %mul135.i530 = fmul float %mul62.i, %add52.i567
  %mul140.i531 = fmul float %mul76.i, %add109.i586
  %add141.i532 = fadd float %mul135.i530, %mul140.i531
  %mul146.i533 = fmul float %mul91.i, %add166.i604
  %add147.i534 = fadd float %add141.i532, %mul146.i533
  %arrayidx149.i535 = getelementptr inbounds [3 x float]* %M, i64 2, i64 1
  store float %add147.i534, float* %arrayidx149.i535, align 4, !tbaa !0
  %mul154.i536 = fmul float %mul105.i, %add52.i567
  %mul159.i537 = fmul float %mul120.i, %add109.i586
  %add160.i538 = fadd float %mul154.i536, %mul159.i537
  %mul165.i539 = fmul float %mul134.i, %add166.i604
  %add166.i540 = fadd float %add160.i538, %mul165.i539
  %arrayidx168.i541 = getelementptr inbounds [3 x float]* %M, i64 2, i64 2
  store float %add166.i540, float* %arrayidx168.i541, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 36, i8* %4) #3
  call void @llvm.lifetime.end(i64 36, i8* %3) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @berendsen_pcoupl(%struct.t_inputrec* %ir, i32 %step, [3 x float]* %pres, [3 x float]* nocapture %box, i32 %start, i32 %nr_atoms, [3 x float]* nocapture %x, i16* nocapture %cFREEZE, %struct.t_nrnb* nocapture %nrnb, [3 x i32]* nocapture %nFreeze) #0 {
entry:
  %mu = alloca [3 x [3 x float]], align 16
  %buf = alloca [4096 x i8], align 16
  %0 = bitcast [3 x [3 x float]]* %mu to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv592 = phi i64 [ 0, %entry ], [ %indvars.iv.next593, %for.inc ]
  %xy_pressure.0569 = phi float [ 0.000000e+00, %entry ], [ %xy_pressure.1, %for.inc ]
  %scalar_pressure.0568 = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc ]
  %arrayidx2 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv592, i64 %indvars.iv592
  %2 = load float* %arrayidx2, align 4, !tbaa !0
  %div = fdiv float %2, 3.000000e+00
  %add = fadd float %scalar_pressure.0568, %div
  %3 = trunc i64 %indvars.iv592 to i32
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %div8 = fmul float %2, 5.000000e-01
  %add9 = fadd float %xy_pressure.0569, %div8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %xy_pressure.1 = phi float [ %add9, %if.then ], [ %xy_pressure.0569, %for.body ]
  %indvars.iv.next593 = add i64 %indvars.iv592, 1
  %lftr.wideiv594 = trunc i64 %indvars.iv.next593 to i32
  %exitcond595 = icmp eq i32 %lftr.wideiv594, 3
  br i1 %exitcond595, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %fabsf = call float @fabsf(float %add) #6
  %4 = fpext float %fabsf to double
  %cmp10 = fcmp ogt double %4, 1.200000e-38
  br i1 %cmp10, label %if.then12, label %if.end424

if.then12:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #3
  %epct = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %5 = load i32* %epct, align 4, !tbaa !4
  switch i32 %5, label %cond.end [
    i32 0, label %for.cond13.preheader
    i32 1, label %for.cond39.preheader
    i32 2, label %for.cond91.preheader
    i32 3, label %sw.bb135
  ]

for.cond91.preheader:                             ; preds = %if.then12
  %delta_t106 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %6 = load float* %delta_t106, align 4, !tbaa !0
  %tau_p108 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %7 = load float* %tau_p108, align 4, !tbaa !0
  br label %for.cond95.preheader

for.cond39.preheader:                             ; preds = %if.then12
  %delta_t48 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %8 = load float* %delta_t48, align 4, !tbaa !0
  %tau_p50 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %9 = load float* %tau_p50, align 4, !tbaa !0
  br label %for.body42

for.cond13.preheader:                             ; preds = %if.then12
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %10 = load float* %delta_t, align 4, !tbaa !0
  %tau_p = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %11 = load float* %tau_p, align 4, !tbaa !0
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %for.cond13.preheader
  %indvars.iv572 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next573, %for.body16 ]
  %arrayidx20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv572, i64 %indvars.iv572
  %12 = load float* %arrayidx20, align 4, !tbaa !0
  %mul = fmul float %12, %10
  %div21 = fdiv float %mul, %11
  %arrayidx25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv572, i64 %indvars.iv572
  %13 = load float* %arrayidx25, align 4, !tbaa !0
  %sub = fsub float %13, %add
  %mul26 = fmul float %div21, %sub
  %div27 = fdiv float %mul26, 3.000000e+00
  %conv30 = fsub float 1.000000e+00, %div27
  %arrayidx34 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv572, i64 %indvars.iv572
  store float %conv30, float* %arrayidx34, align 4, !tbaa !0
  %indvars.iv.next573 = add i64 %indvars.iv572, 1
  %lftr.wideiv574 = trunc i64 %indvars.iv.next573 to i32
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 3
  br i1 %exitcond575, label %sw.epilog, label %for.body16

for.body42:                                       ; preds = %for.body42, %for.cond39.preheader
  %indvars.iv576 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next577, %for.body42 ]
  %arrayidx47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv576, i64 %indvars.iv576
  %14 = load float* %arrayidx47, align 4, !tbaa !0
  %mul49 = fmul float %14, %8
  %div51 = fdiv float %mul49, %9
  %arrayidx56 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv576, i64 %indvars.iv576
  %15 = load float* %arrayidx56, align 4, !tbaa !0
  %sub57 = fsub float %15, %xy_pressure.1
  %mul58 = fmul float %div51, %sub57
  %div59 = fdiv float %mul58, 3.000000e+00
  %conv62 = fsub float 1.000000e+00, %div59
  %arrayidx66 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv576, i64 %indvars.iv576
  store float %conv62, float* %arrayidx66, align 4, !tbaa !0
  %indvars.iv.next577 = add i64 %indvars.iv576, 1
  %lftr.wideiv578 = trunc i64 %indvars.iv.next577 to i32
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 2
  br i1 %exitcond579, label %for.end69, label %for.body42

for.end69:                                        ; preds = %for.body42
  %arrayidx72 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2
  %16 = load float* %arrayidx72, align 4, !tbaa !0
  %mul74 = fmul float %16, %8
  %div76 = fdiv float %mul74, %9
  %arrayidx79 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %17 = load float* %arrayidx79, align 4, !tbaa !0
  %arrayidx81 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %18 = load float* %arrayidx81, align 4, !tbaa !0
  %sub82 = fsub float %17, %18
  %mul83 = fmul float %div76, %sub82
  %div84 = fdiv float %mul83, 3.000000e+00
  %conv87 = fsub float 1.000000e+00, %div84
  %arrayidx89 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  store float %conv87, float* %arrayidx89, align 8, !tbaa !0
  br label %sw.epilog

for.cond95.preheader:                             ; preds = %for.inc132, %for.cond91.preheader
  %indvars.iv584 = phi i64 [ 0, %for.cond91.preheader ], [ %indvars.iv.next585, %for.inc132 ]
  br label %for.body98

for.body98:                                       ; preds = %for.body98, %for.cond95.preheader
  %indvars.iv580 = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next581, %for.body98 ]
  %19 = trunc i64 %indvars.iv580 to i32
  %20 = trunc i64 %indvars.iv584 to i32
  %cmp99 = icmp eq i32 %20, %19
  %cond = select i1 %cmp99, double 1.000000e+00, double 0.000000e+00
  %arrayidx105 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv584, i64 %indvars.iv580
  %21 = load float* %arrayidx105, align 4, !tbaa !0
  %mul107 = fmul float %21, %6
  %div109 = fdiv float %mul107, %7
  %arrayidx114 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv584, i64 %indvars.iv580
  %22 = load float* %arrayidx114, align 4, !tbaa !0
  %arrayidx118 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv584, i64 %indvars.iv580
  %23 = load float* %arrayidx118, align 4, !tbaa !0
  %sub119 = fsub float %22, %23
  %mul120 = fmul float %div109, %sub119
  %div121 = fdiv float %mul120, 3.000000e+00
  %conv122 = fpext float %div121 to double
  %sub123 = fsub double %cond, %conv122
  %conv124 = fptrunc double %sub123 to float
  %arrayidx128 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv584, i64 %indvars.iv580
  store float %conv124, float* %arrayidx128, align 4, !tbaa !0
  %indvars.iv.next581 = add i64 %indvars.iv580, 1
  %lftr.wideiv582 = trunc i64 %indvars.iv.next581 to i32
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 3
  br i1 %exitcond583, label %for.inc132, label %for.body98

for.inc132:                                       ; preds = %for.body98
  %indvars.iv.next585 = add i64 %indvars.iv584, 1
  %lftr.wideiv586 = trunc i64 %indvars.iv.next585 to i32
  %exitcond587 = icmp eq i32 %lftr.wideiv586, 3
  br i1 %exitcond587, label %sw.epilog, label %for.cond95.preheader

sw.bb135:                                         ; preds = %if.then12
  %arrayidx138 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2
  %24 = load float* %arrayidx138, align 4, !tbaa !0
  %fabsf552 = call float @fabsf(float %24) #6
  %25 = fpext float %fabsf552 to double
  %cmp141 = fcmp ogt double %25, 1.200000e-38
  %delta_t144 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %26 = load float* %delta_t144, align 4, !tbaa !0
  %tau_p145 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %27 = load float* %tau_p145, align 4, !tbaa !0
  br i1 %cmp141, label %if.then143, label %sw.bb135.if.end154_crit_edge

sw.bb135.if.end154_crit_edge:                     ; preds = %sw.bb135
  %arrayidx189.phi.trans.insert = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %.pre604 = load float* %arrayidx189.phi.trans.insert, align 4, !tbaa !0
  br label %if.end154

if.then143:                                       ; preds = %sw.bb135
  %div146 = fdiv float %26, %27
  %arrayidx149 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %28 = load float* %arrayidx149, align 4, !tbaa !0
  %arrayidx151 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %29 = load float* %arrayidx151, align 4, !tbaa !0
  %sub152 = fsub float %28, %29
  %mul153 = fmul float %div146, %sub152
  br label %if.end154

if.end154:                                        ; preds = %sw.bb135.if.end154_crit_edge, %if.then143
  %30 = phi float [ %29, %if.then143 ], [ %.pre604, %sw.bb135.if.end154_crit_edge ]
  %p_corr_z.0 = phi float [ %mul153, %if.then143 ], [ 0.000000e+00, %sw.bb135.if.end154_crit_edge ]
  %mul158 = fmul float %p_corr_z.0, %24
  %conv161 = fsub float 1.000000e+00, %mul158
  %arrayidx163 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  store float %conv161, float* %arrayidx163, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %31 = load float* %arrayidx185, align 4, !tbaa !0
  %add190 = fadd float %p_corr_z.0, %30
  %sub191 = fsub float %add190, %xy_pressure.1
  br label %for.body167

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %if.end154
  %32 = phi float [ %conv161, %if.end154 ], [ %.pre605, %for.body167.for.body167_crit_edge ]
  %indvars.iv588 = phi i64 [ 0, %if.end154 ], [ %indvars.iv.next589, %for.body167.for.body167_crit_edge ]
  %arrayidx172 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv588, i64 %indvars.iv588
  %33 = load float* %arrayidx172, align 4, !tbaa !0
  %mul174 = fmul float %33, %26
  %div176 = fdiv float %mul174, %27
  %arrayidx181 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv588, i64 %indvars.iv588
  %34 = load float* %arrayidx181, align 4, !tbaa !0
  %mul186 = fmul float %32, %31
  %div187 = fdiv float %34, %mul186
  %sub192 = fsub float %div187, %sub191
  %mul193 = fmul float %div176, %sub192
  %div194 = fmul float %mul193, 5.000000e-01
  %conv197 = fadd float %div194, 1.000000e+00
  %arrayidx201 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv588, i64 %indvars.iv588
  store float %conv197, float* %arrayidx201, align 4, !tbaa !0
  %indvars.iv.next589 = add i64 %indvars.iv588, 1
  %lftr.wideiv590 = trunc i64 %indvars.iv.next589 to i32
  %exitcond591 = icmp eq i32 %lftr.wideiv590, 2
  br i1 %exitcond591, label %sw.epilog, label %for.body167.for.body167_crit_edge

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  %.pre605 = load float* %arrayidx163, align 8, !tbaa !0
  br label %for.body167

cond.end:                                         ; preds = %if.then12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body167, %for.inc132, %for.body16, %cond.end, %for.end69
  %arrayidx216 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 0
  %35 = load float* %arrayidx216, align 4, !tbaa !0
  %arrayidx218 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 1
  %36 = load float* %arrayidx218, align 4, !tbaa !0
  %add219 = fadd float %35, %36
  store float %add219, float* %arrayidx218, align 4, !tbaa !0
  %arrayidx221 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 0
  %37 = load float* %arrayidx221, align 8, !tbaa !0
  %arrayidx223 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 2
  %38 = load float* %arrayidx223, align 8, !tbaa !0
  %add224 = fadd float %37, %38
  store float %add224, float* %arrayidx223, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 1
  %39 = load float* %arrayidx226, align 4, !tbaa !0
  %arrayidx228 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 2
  %40 = load float* %arrayidx228, align 4, !tbaa !0
  %add229 = fadd float %39, %40
  store float %add229, float* %arrayidx228, align 4, !tbaa !0
  %41 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %41, null
  br i1 %tobool, label %if.end232, label %if.then230

if.then230:                                       ; preds = %sw.epilog
  call void @pr_rvecs(%struct._IO_FILE* %41, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), [3 x float]* %pres, i32 3) #5
  %42 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  call void @pr_rvecs(%struct._IO_FILE* %42, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), [3 x float]* %arraydecay, i32 3) #5
  br label %if.end232

if.end232:                                        ; preds = %sw.epilog, %if.then230
  %arrayidx234 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 0
  %43 = load float* %arrayidx234, align 16, !tbaa !0
  %conv235 = fpext float %43 to double
  %cmp236 = fcmp olt double %conv235, 9.900000e-01
  %cmp242 = fcmp ogt double %conv235, 1.010000e+00
  %or.cond554 = or i1 %cmp236, %cmp242
  %arrayidx274.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %.pre = load float* %arrayidx274.phi.trans.insert, align 4, !tbaa !0
  br i1 %or.cond554, label %if.then268, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %if.end232
  %conv247 = fpext float %.pre to double
  %cmp248 = fcmp olt double %conv247, 9.900000e-01
  %cmp254 = fcmp ogt double %conv247, 1.010000e+00
  %or.cond555 = or i1 %cmp248, %cmp254
  br i1 %or.cond555, label %if.then268, label %lor.lhs.false256

lor.lhs.false256:                                 ; preds = %lor.lhs.false244
  %arrayidx258 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %44 = load float* %arrayidx258, align 8, !tbaa !0
  %conv259 = fpext float %44 to double
  %cmp260 = fcmp olt double %conv259, 9.900000e-01
  %cmp266 = fcmp ogt double %conv259, 1.010000e+00
  %or.cond556 = or i1 %cmp260, %cmp266
  br i1 %or.cond556, label %if.then268, label %for.cond288.preheader

if.then268:                                       ; preds = %if.end232, %lor.lhs.false244, %lor.lhs.false256
  %conv275 = fpext float %.pre to double
  %arrayidx277 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %45 = load float* %arrayidx277, align 8, !tbaa !0
  %conv278 = fpext float %45 to double
  %call279 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i32 %step, double %conv235, double %conv275, double %conv278) #5
  %46 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool280 = icmp eq %struct._IO_FILE* %46, null
  br i1 %tobool280, label %if.end284, label %if.then281

if.then281:                                       ; preds = %if.then268
  %fputs553 = call i32 @fputs(i8* %1, %struct._IO_FILE* %46)
  br label %if.end284

if.end284:                                        ; preds = %if.then268, %if.then281
  %47 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %fputs = call i32 @fputs(i8* %1, %struct._IO_FILE* %47)
  br label %for.cond288.preheader

for.cond288.preheader:                            ; preds = %lor.lhs.false256, %if.end284
  %add289 = add nsw i32 %nr_atoms, %start
  %cmp290558 = icmp sgt i32 %nr_atoms, 0
  %48 = load float* %arrayidx234, align 16, !tbaa !0
  %49 = load float* %arrayidx218, align 4, !tbaa !0
  %50 = load float* %arrayidx223, align 8, !tbaa !0
  %arrayidx331 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %51 = load float* %arrayidx331, align 4, !tbaa !0
  %52 = load float* %arrayidx228, align 4, !tbaa !0
  %arrayidx353 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %53 = load float* %arrayidx353, align 8, !tbaa !0
  br i1 %cmp290558, label %for.body292.lr.ph, label %for.cond365.preheader

for.body292.lr.ph:                                ; preds = %for.cond288.preheader
  %54 = sext i32 %start to i64
  br label %for.body292

for.cond365.preheader:                            ; preds = %for.cond288.preheader, %for.inc362
  br label %for.body368

for.body292:                                      ; preds = %for.body292.lr.ph, %for.inc362
  %indvars.iv570 = phi i64 [ %54, %for.body292.lr.ph ], [ %indvars.iv.next571, %for.inc362 ]
  %arrayidx294 = getelementptr inbounds i16* %cFREEZE, i64 %indvars.iv570
  %55 = load i16* %arrayidx294, align 2, !tbaa !5
  %idxprom296 = zext i16 %55 to i64
  %arrayidx298 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 0
  %56 = load i32* %arrayidx298, align 4, !tbaa !4
  %tobool299 = icmp eq i32 %56, 0
  br i1 %tobool299, label %if.then300, label %if.end324

if.then300:                                       ; preds = %for.body292
  %arrayidx305 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 0
  %57 = load float* %arrayidx305, align 4, !tbaa !0
  %mul306 = fmul float %48, %57
  %arrayidx311 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 1
  %58 = load float* %arrayidx311, align 4, !tbaa !0
  %mul312 = fmul float %49, %58
  %add313 = fadd float %mul306, %mul312
  %arrayidx318 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2
  %59 = load float* %arrayidx318, align 4, !tbaa !0
  %mul319 = fmul float %50, %59
  %add320 = fadd float %add313, %mul319
  store float %add320, float* %arrayidx305, align 4, !tbaa !0
  br label %if.end324

if.end324:                                        ; preds = %for.body292, %if.then300
  %arrayidx327 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 1
  %60 = load i32* %arrayidx327, align 4, !tbaa !4
  %tobool328 = icmp eq i32 %60, 0
  br i1 %tobool328, label %if.then329, label %if.end346

if.then329:                                       ; preds = %if.end324
  %arrayidx334 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 1
  %61 = load float* %arrayidx334, align 4, !tbaa !0
  %mul335 = fmul float %51, %61
  %arrayidx340 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2
  %62 = load float* %arrayidx340, align 4, !tbaa !0
  %mul341 = fmul float %52, %62
  %add342 = fadd float %mul335, %mul341
  store float %add342, float* %arrayidx334, align 4, !tbaa !0
  br label %if.end346

if.end346:                                        ; preds = %if.end324, %if.then329
  %arrayidx349 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom296, i64 2
  %63 = load i32* %arrayidx349, align 4, !tbaa !4
  %tobool350 = icmp eq i32 %63, 0
  br i1 %tobool350, label %if.then351, label %for.inc362

if.then351:                                       ; preds = %if.end346
  %arrayidx356 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv570, i64 2
  %64 = load float* %arrayidx356, align 4, !tbaa !0
  %mul357 = fmul float %53, %64
  store float %mul357, float* %arrayidx356, align 4, !tbaa !0
  br label %for.inc362

for.inc362:                                       ; preds = %if.end346, %if.then351
  %indvars.iv.next571 = add i64 %indvars.iv570, 1
  %65 = trunc i64 %indvars.iv.next571 to i32
  %cmp290 = icmp slt i32 %65, %add289
  br i1 %cmp290, label %for.body292, label %for.cond365.preheader

for.body368:                                      ; preds = %for.body368, %for.cond365.preheader
  %indvars.iv = phi i64 [ 0, %for.cond365.preheader ], [ %indvars.iv.next, %for.body368 ]
  %arrayidx373 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %66 = load float* %arrayidx373, align 4, !tbaa !0
  %mul374 = fmul float %48, %66
  %arrayidx379 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %67 = load float* %arrayidx379, align 4, !tbaa !0
  %mul380 = fmul float %49, %67
  %add381 = fadd float %mul374, %mul380
  %arrayidx386 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %68 = load float* %arrayidx386, align 4, !tbaa !0
  %mul387 = fmul float %50, %68
  %add388 = fadd float %add381, %mul387
  store float %add388, float* %arrayidx373, align 4, !tbaa !0
  %mul397 = fmul float %51, %67
  %mul403 = fmul float %52, %68
  %add404 = fadd float %mul397, %mul403
  store float %add404, float* %arrayidx379, align 4, !tbaa !0
  %mul413 = fmul float %53, %68
  store float %mul413, float* %arrayidx386, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end419, label %for.body368

for.end419:                                       ; preds = %for.body368
  %conv420 = sitofp i32 %nr_atoms to double
  %arrayidx422 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 111
  %69 = load double* %arrayidx422, align 8, !tbaa !6
  %add423 = fadd double %conv420, %69
  store double %add423, double* %arrayidx422, align 8, !tbaa !6
  br label %if.end424

if.end424:                                        ; preds = %for.end419, %for.end
  call void @llvm.lifetime.end(i64 4096, i8* %1) #3
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @berendsen_tcoupl(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float %dt, float %SAfactor) #0 {
entry:
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %0 = load i32* %ngtc, align 4, !tbaa !4
  %cmp89 = icmp sgt i32 %0, 0
  br i1 %cmp89, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %tau_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  %ref_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  %T1 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv, i32 0
  %2 = load float* %T1, align 4, !tbaa !0
  %3 = load float** %tau_t, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds float* %3, i64 %indvars.iv
  %4 = load float* %arrayidx3, align 4, !tbaa !0
  %cmp4 = fcmp ogt float %4, 0.000000e+00
  %cmp5 = fcmp ogt float %2, 0.000000e+00
  %or.cond = and i1 %cmp4, %cmp5
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load float** %ref_t, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds float* %5, i64 %indvars.iv
  %6 = load float* %arrayidx8, align 4, !tbaa !0
  %mul = fmul float %6, %SAfactor
  %cmp10 = fcmp olt float %mul, 0.000000e+00
  %cond = select i1 %cmp10, float 0.000000e+00, float %mul
  %div = fdiv float %dt, %4
  %conv21 = fpext float %div to double
  %div22 = fdiv float %cond, %2
  %conv23 = fpext float %div22 to double
  %sub = fadd double %conv23, -1.000000e+00
  %mul24 = fmul double %conv21, %sub
  %add = fadd double %mul24, 1.000000e+00
  %call = tail call double @sqrt(double %add) #5
  %conv25 = fptrunc double %call to float
  %cmp27 = fcmp olt float %conv25, 1.250000e+00
  br i1 %cmp27, label %cond.true29, label %cond.end46

cond.true29:                                      ; preds = %if.then
  %conv26 = fpext float %conv25 to double
  %phitmp.not = fcmp ule double %conv26, 8.000000e-01
  %.mux.conv25 = select i1 %phitmp.not, float 0x3FE99999A0000000, float %conv25
  br label %cond.end46

cond.end46:                                       ; preds = %cond.true29, %if.then
  %cond47 = phi float [ 1.250000e+00, %if.then ], [ %.mux.conv25, %cond.true29 ]
  %7 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  %lambda = getelementptr inbounds %struct.t_grp_tcstat* %7, i64 %indvars.iv, i32 1
  store float %cond47, float* %lambda, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %for.body
  %lambda55 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv, i32 1
  store float 1.000000e+00, float* %lambda55, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end46
  %8 = phi float [ 1.000000e+00, %if.else ], [ %cond47, %cond.end46 ]
  %9 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %9, null
  br i1 %tobool, label %for.inc, label %if.then56

if.then56:                                        ; preds = %if.end
  %conv57 = fpext float %2 to double
  %conv62 = fpext float %8 to double
  %10 = trunc i64 %indvars.iv to i32
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([33 x i8]* @.str12, i64 0, i64 0), i32 %10, double %conv57, double %conv62) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then56
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = load i32* %ngtc, align 4, !tbaa !4
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind optsize uwtable
define void @nosehoover_tcoupl(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float %dt, float %SAfactor) #0 {
entry:
  %0 = load float** @nosehoover_tcoupl.Qinv, align 8, !tbaa !3
  %cmp = icmp eq float* %0, null
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %1 = load i32* %ngtc, align 4, !tbaa !4
  br i1 %cmp, label %if.then, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %entry, %for.inc
  %2 = phi i32 [ %7, %for.inc ], [ %1, %entry ]
  %3 = phi float* [ %6, %for.inc ], [ %0, %entry ]
  %cmp2781 = icmp sgt i32 %2, 0
  br i1 %cmp2781, label %for.body29.lr.ph, label %for.end54

for.body29.lr.ph:                                 ; preds = %for.cond25.preheader
  %ref_t31 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  %4 = load float** %ref_t31, align 8, !tbaa !3
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %5 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  br label %for.body29

if.then:                                          ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), i32 372, i32 %1, i32 4) #5
  %6 = bitcast i8* %call to float*
  store float* %6, float** @nosehoover_tcoupl.Qinv, align 8, !tbaa !3
  %7 = load i32* %ngtc, align 4, !tbaa !4
  %cmp283 = icmp sgt i32 %7, 0
  br i1 %cmp283, label %for.body.lr.ph, label %for.end54

for.body.lr.ph:                                   ; preds = %if.then
  %tau_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  %8 = load float** %tau_t, align 8, !tbaa !3
  %ref_t = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv85 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next86, %for.inc ]
  %arrayidx = getelementptr inbounds float* %8, i64 %indvars.iv85
  %9 = load float* %arrayidx, align 4, !tbaa !0
  %cmp3 = fcmp ogt float %9, 0.000000e+00
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %10 = load float** %ref_t, align 8, !tbaa !3
  %arrayidx5 = getelementptr inbounds float* %10, i64 %indvars.iv85
  %11 = load float* %arrayidx5, align 4, !tbaa !0
  %cmp6 = fcmp ogt float %11, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %mul = fmul float %9, %9
  %mul17 = fmul float %mul, %11
  %conv = fpext float %mul17 to double
  %div = fdiv double 1.000000e+00, %conv
  %div18 = fdiv double %div, 0x4043BD3CC9BE45DE
  %conv19 = fptrunc double %div18 to float
  %arrayidx21 = getelementptr inbounds float* %6, i64 %indvars.iv85
  store float %conv19, float* %arrayidx21, align 4, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true, %for.body
  %arrayidx23 = getelementptr inbounds float* %6, i64 %indvars.iv85
  store float 0.000000e+00, float* %arrayidx23, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.else
  %indvars.iv.next86 = add i64 %indvars.iv85, 1
  %12 = trunc i64 %indvars.iv.next86 to i32
  %cmp2 = icmp slt i32 %12, %7
  br i1 %cmp2, label %for.body, label %for.cond25.preheader

for.body29:                                       ; preds = %for.body29.lr.ph, %for.body29
  %indvars.iv = phi i64 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next, %for.body29 ]
  %arrayidx32 = getelementptr inbounds float* %4, i64 %indvars.iv
  %13 = load float* %arrayidx32, align 4, !tbaa !0
  %mul33 = fmul float %13, %SAfactor
  %cmp35 = fcmp olt float %mul33, 0.000000e+00
  %cond = select i1 %cmp35, float 0.000000e+00, float %mul33
  %arrayidx44 = getelementptr inbounds float* %3, i64 %indvars.iv
  %14 = load float* %arrayidx44, align 4, !tbaa !0
  %mul45 = fmul float %14, %dt
  %T = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv, i32 0
  %15 = load float* %T, align 4, !tbaa !0
  %sub = fsub float %15, %cond
  %mul48 = fmul float %mul45, %sub
  %xi = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv, i32 3
  %16 = load float* %xi, align 4, !tbaa !0
  %add = fadd float %16, %mul48
  store float %add, float* %xi, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp27 = icmp slt i32 %17, %2
  br i1 %cmp27, label %for.body29, label %for.end54

for.end54:                                        ; preds = %for.body29, %if.then, %for.cond25.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
