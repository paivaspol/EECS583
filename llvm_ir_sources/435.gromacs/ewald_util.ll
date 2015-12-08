; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ewald_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@ewald_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported Ewald geometry\00", align 1
@debug = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [48 x i8] c"dr=%8.4f, fscal=%8.0f, df=%10.0f,%10.0f,%10.0f\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Long Range corrections for Ewald interactions:\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"q2sum = %g, Vself=%g\0A\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"Total charge correction: Vcharge=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Total dipole correction: Vdipole=%g\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @calc_ewaldcoeff(float %rc, float %dtol) #0 {
entry:
  %conv2 = fpext float %dtol to double
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %indvars.iv = phi i32 [ %indvars.iv.next, %do.body ], [ 61, %entry ]
  %x.0 = phi float [ %mul, %do.body ], [ 5.000000e+00, %entry ]
  %i.0 = phi i32 [ %inc, %do.body ], [ 0, %entry ]
  %inc = add nsw i32 %i.0, 1
  %mul = fmul float %x.0, 2.000000e+00
  %mul1 = fmul float %mul, %rc
  %conv = fpext float %mul1 to double
  %call = tail call double @erfc(double %conv) #4
  %cmp = fcmp ogt double %call, %conv2
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %add = add nsw i32 %i.0, 61
  %cmp424 = icmp sgt i32 %add, 0
  br i1 %cmp424, label %for.body, label %for.end

for.body:                                         ; preds = %do.end, %for.body
  %i.127 = phi i32 [ %inc13, %for.body ], [ 0, %do.end ]
  %high.026 = phi float [ %high.0.div, %for.body ], [ %mul, %do.end ]
  %low.025 = phi float [ %div.low.0, %for.body ], [ 0.000000e+00, %do.end ]
  %add6 = fadd float %low.025, %high.026
  %div = fmul float %add6, 5.000000e-01
  %mul7 = fmul float %div, %rc
  %conv8 = fpext float %mul7 to double
  %call9 = tail call double @erfc(double %conv8) #4
  %cmp11 = fcmp ogt double %call9, %conv2
  %div.low.0 = select i1 %cmp11, float %div, float %low.025
  %high.0.div = select i1 %cmp11, float %high.026, float %div
  %inc13 = add nsw i32 %i.127, 1
  %exitcond = icmp eq i32 %inc13, %indvars.iv
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.end
  %x.1.lcssa = phi float [ %mul, %do.end ], [ %div, %for.body ]
  ret float %x.1.lcssa
}

; Function Attrs: nounwind optsize
declare double @erfc(double) #1

; Function Attrs: nounwind optsize uwtable
define float @ewald_LRcorrection(%struct._IO_FILE* nocapture %fp, %struct.t_nsborder* nocapture %nsb, %struct.t_commrec* nocapture %cr, %struct.t_forcerec* nocapture %fr, float* nocapture %charge, %struct.t_block* nocapture %excl, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture %mu_tot, float %qsum, i32 %ewald_geometry, float %epsilon_surface, [3 x float]* nocapture %lr_vir) #0 {
entry:
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %ewaldcoeff = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57
  %0 = load float* %ewaldcoeff, align 4, !tbaa !0
  %f_pme1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %1 = load [3 x float]** %f_pme1, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %2 = load float* %arrayidx2, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %3 = load float* %arrayidx4, align 4, !tbaa !0
  %mul = fmul float %2, %3
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %4 = load float* %arrayidx6, align 4, !tbaa !0
  %mul7 = fmul float %mul, %4
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %5 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %6 = load i32* %arrayidx8, align 4, !tbaa !4
  %arrayidx11 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %7 = load i32* %arrayidx11, align 4, !tbaa !4
  %add = add nsw i32 %7, %6
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %8 = load i32** %a, align 8, !tbaa !3
  %fabsf = call float @fabsf(float %epsilon_surface) #5
  %9 = fpext float %fabsf to double
  %cmp = fcmp olt double %9, 1.200000e-38
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  switch i32 %ewald_geometry, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.else
  %mul13 = fmul float %epsilon_surface, 2.000000e+00
  %add14 = fadd float %mul13, 1.000000e+00
  %mul15 = fmul float %add14, %mul7
  %conv16 = fpext float %mul15 to double
  %div = fdiv double 0x408B47A7CA01D8DF, %conv16
  %conv17 = fptrunc double %div to float
  br label %if.end

sw.bb18:                                          ; preds = %if.else
  %conv19 = fpext float %mul7 to double
  %div20 = fdiv double 0x408B47A7CA01D8DF, %conv19
  %conv21 = fptrunc double %div20 to float
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %sw.bb, %sw.bb18, %sw.default
  %dipole_coeff.0 = phi float [ 0.000000e+00, %sw.default ], [ %conv21, %sw.bb18 ], [ %conv17, %sw.bb ], [ 0.000000e+00, %entry ]
  %cmp22534 = icmp sgt i32 %7, 0
  br i1 %cmp22534, label %for.body.lr.ph, label %for.end257

for.body.lr.ph:                                   ; preds = %if.end
  %index32 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %conv199 = fpext float %dipole_coeff.0 to double
  %fabsf496 = call float @fabsf(float %dipole_coeff.0) #5
  %10 = fpext float %fabsf496 to double
  %cmp201 = fcmp ogt double %10, 1.200000e-38
  %mul237 = fmul double %conv199, 2.000000e+00
  %mul238 = fmul double %mul237, 2.081941e-02
  %arrayidx239 = getelementptr inbounds float* %mu_tot, i64 2
  %arraydecay67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %conv134 = fpext float %0 to double
  %11 = fmul float %0, %0
  %arraydecay146 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 1
  %arrayidx7.i = getelementptr inbounds [3 x float]* %df, i64 0, i64 2
  %12 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %indvars.iv556 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next557, %for.cond.backedge ]
  %q2sum.0536 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add44, %for.cond.backedge ]
  %Vexcl.0535 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %Vexcl.1.lcssa, %for.cond.backedge ]
  %arrayidx25 = getelementptr inbounds float* %charge, i64 %indvars.iv556
  %13 = load float* %arrayidx25, align 4, !tbaa !0
  %conv26 = fpext float %13 to double
  %mul27 = fmul double %conv26, 3.320636e+02
  %mul28 = fmul double %mul27, 4.184000e+00
  %mul29 = fmul double %mul28, 1.000000e-01
  %conv30 = fptrunc double %mul29 to float
  %14 = load i32** %index32, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %14, i64 %indvars.iv556
  %15 = load i32* %arrayidx33, align 4, !tbaa !4
  %indvars.iv.next557 = add i64 %indvars.iv556, 1
  %arrayidx37 = getelementptr inbounds i32* %14, i64 %indvars.iv.next557
  %16 = load i32* %arrayidx37, align 4, !tbaa !4
  %mul42 = fmul float %13, %13
  %conv43 = fpext float %mul42 to double
  %add44 = fadd double %q2sum.0536, %conv43
  %cmp46530 = icmp slt i32 %15, %16
  br i1 %cmp46530, label %for.body48.lr.ph, label %for.end198

for.body48.lr.ph:                                 ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv556, i64 2
  %arraydecay164 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 0
  %arrayidx2.i499 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 1
  %arrayidx5.i502 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 2
  %17 = sext i32 %15 to i64
  br label %for.body48

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc196
  %indvars.iv550 = phi i64 [ %17, %for.body48.lr.ph ], [ %indvars.iv.next551, %for.inc196 ]
  %Vexcl.1531 = phi float [ %Vexcl.0535, %for.body48.lr.ph ], [ %Vexcl.2, %for.inc196 ]
  %arrayidx50 = getelementptr inbounds i32* %8, i64 %indvars.iv550
  %18 = load i32* %arrayidx50, align 4, !tbaa !4
  %19 = trunc i64 %indvars.iv556 to i32
  %cmp51 = icmp sgt i32 %18, %19
  br i1 %cmp51, label %if.then53, label %for.inc196

if.then53:                                        ; preds = %for.body48
  %idxprom54 = sext i32 %18 to i64
  %arrayidx55 = getelementptr inbounds float* %charge, i64 %idxprom54
  %20 = load float* %arrayidx55, align 4, !tbaa !0
  %mul56 = fmul float %conv30, %20
  %conv57 = fpext float %mul56 to double
  %fabsf497 = call float @fabsf(float %mul56) #5
  %21 = fpext float %fabsf497 to double
  %cmp59 = fcmp ogt double %21, 1.200000e-38
  br i1 %cmp59, label %if.then61, label %for.inc196

if.then61:                                        ; preds = %if.then53
  %arraydecay66 = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 0
  %22 = load float* %arraydecay, align 4, !tbaa !0
  %23 = load float* %arraydecay66, align 4, !tbaa !0
  %sub.i = fsub float %22, %23
  %24 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 1
  %25 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %24, %25
  %26 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom54, i64 2
  %27 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %26, %27
  store float %sub.i, float* %arraydecay67, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  br label %for.body71

for.body71:                                       ; preds = %if.end106.for.body71_crit_edge, %if.then61
  %28 = phi float [ %sub7.i, %if.then61 ], [ %.pre, %if.end106.for.body71_crit_edge ]
  %29 = phi float [ %sub7.i, %if.then61 ], [ %39, %if.end106.for.body71_crit_edge ]
  %30 = phi float [ %sub4.i, %if.then61 ], [ %40, %if.end106.for.body71_crit_edge ]
  %31 = phi float [ %sub.i, %if.then61 ], [ %41, %if.end106.for.body71_crit_edge ]
  %indvars.iv540 = phi i64 [ 2, %if.then61 ], [ %indvars.iv.next541, %if.end106.for.body71_crit_edge ]
  %dr2.0526 = phi float [ 0.000000e+00, %if.then61 ], [ %add112, %if.end106.for.body71_crit_edge ]
  %arrayidx73 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv540
  %conv74 = fpext float %28 to double
  %arrayidx77 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540
  %arrayidx78 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 %indvars.iv540
  %32 = load float* %arrayidx78, align 4, !tbaa !0
  %conv79 = fpext float %32 to double
  %mul80 = fmul double %conv79, 5.000000e-01
  %cmp81 = fcmp ogt double %conv74, %mul80
  br i1 %cmp81, label %if.then83, label %if.else88

if.then83:                                        ; preds = %for.body71
  %arraydecay87 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0
  %33 = load float* %arraydecay87, align 4, !tbaa !0
  %sub.i518 = fsub float %31, %33
  %arrayidx3.i520 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 1
  %34 = load float* %arrayidx3.i520, align 4, !tbaa !0
  %sub4.i521 = fsub float %30, %34
  %arrayidx6.i523 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 2
  %35 = load float* %arrayidx6.i523, align 4, !tbaa !0
  %sub7.i524 = fsub float %29, %35
  store float %sub.i518, float* %arraydecay67, align 4, !tbaa !0
  store float %sub4.i521, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i524, float* %arrayidx10.i, align 4, !tbaa !0
  br label %if.end106

if.else88:                                        ; preds = %for.body71
  %mul97 = fmul double %conv79, -5.000000e-01
  %cmp98 = fcmp olt double %conv74, %mul97
  br i1 %cmp98, label %if.then100, label %if.end106

if.then100:                                       ; preds = %if.else88
  %arraydecay104 = getelementptr inbounds [3 x float]* %arrayidx77, i64 0, i64 0
  %36 = load float* %arraydecay104, align 4, !tbaa !0
  %add.i511 = fadd float %31, %36
  %arrayidx3.i513 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 1
  %37 = load float* %arrayidx3.i513, align 4, !tbaa !0
  %add4.i514 = fadd float %30, %37
  %arrayidx6.i516 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv540, i64 2
  %38 = load float* %arrayidx6.i516, align 4, !tbaa !0
  %add7.i517 = fadd float %29, %38
  store float %add.i511, float* %arraydecay67, align 4, !tbaa !0
  store float %add4.i514, float* %arrayidx9.i, align 4, !tbaa !0
  store float %add7.i517, float* %arrayidx10.i, align 4, !tbaa !0
  br label %if.end106

if.end106:                                        ; preds = %if.else88, %if.then100, %if.then83
  %39 = phi float [ %29, %if.else88 ], [ %add7.i517, %if.then100 ], [ %sub7.i524, %if.then83 ]
  %40 = phi float [ %30, %if.else88 ], [ %add4.i514, %if.then100 ], [ %sub4.i521, %if.then83 ]
  %41 = phi float [ %31, %if.else88 ], [ %add.i511, %if.then100 ], [ %sub.i518, %if.then83 ]
  %42 = load float* %arrayidx73, align 4, !tbaa !0
  %mul111 = fmul float %42, %42
  %add112 = fadd float %dr2.0526, %mul111
  %indvars.iv.next541 = add i64 %indvars.iv540, -1
  %43 = trunc i64 %indvars.iv540 to i32
  %cmp69 = icmp sgt i32 %43, 0
  br i1 %cmp69, label %if.end106.for.body71_crit_edge, label %for.end

if.end106.for.body71_crit_edge:                   ; preds = %if.end106
  %arrayidx73.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next541
  %.pre = load float* %arrayidx73.phi.trans.insert, align 4, !tbaa !0
  br label %for.body71

for.end:                                          ; preds = %if.end106
  %conv113 = fpext float %add112 to double
  %call114 = call double @sqrt(double %conv113) #4
  %div115 = fdiv double 1.000000e+00, %call114
  %conv116 = fptrunc double %div115 to float
  %mul117 = fmul float %conv116, %conv116
  %conv118 = fpext float %conv116 to double
  %conv120 = fdiv float 1.000000e+00, %conv116
  %mul122 = fmul float %0, %conv120
  %conv123 = fpext float %mul122 to double
  %call124 = call double @erf(double %conv123) #4
  %mul125 = fmul double %conv57, %call124
  %mul127 = fmul double %conv118, %mul125
  %conv128 = fptrunc double %mul127 to float
  %add129 = fadd float %Vexcl.1531, %conv128
  %conv130 = fpext float %mul117 to double
  %conv131 = fpext float %conv128 to double
  %mul133 = fmul double %conv57, 2.000000e+00
  %mul135 = fmul double %conv134, %mul133
  %mul136 = fmul double %mul135, 0x3FE20DD750429B6A
  %44 = fmul float %11, %add112
  %mul138 = fsub float -0.000000e+00, %44
  %conv139 = fpext float %mul138 to double
  %call140 = call double @exp(double %conv139) #4
  %mul141 = fmul double %mul136, %call140
  %sub142 = fsub double %conv131, %mul141
  %mul143 = fmul double %conv130, %sub142
  %conv144 = fptrunc double %mul143 to float
  %mul.i = fmul float %41, %conv144
  store float %mul.i, float* %arraydecay146, align 4, !tbaa !0
  %mul3.i = fmul float %40, %conv144
  store float %mul3.i, float* %arrayidx4.i, align 4, !tbaa !0
  %mul6.i = fmul float %39, %conv144
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !0
  %45 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %45, null
  br i1 %tobool, label %if.end157, label %if.then147

if.then147:                                       ; preds = %for.end
  %conv148 = fpext float %conv120 to double
  %conv149 = fpext float %conv144 to double
  %conv151 = fpext float %mul.i to double
  %conv153 = fpext float %mul3.i to double
  %conv155 = fpext float %mul6.i to double
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), double %conv148, double %conv149, double %conv151, double %conv153, double %conv155) #4
  br label %if.end157

if.end157:                                        ; preds = %for.end, %if.then147
  %arraydecay160 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 0
  %46 = load float* %arraydecay160, align 4, !tbaa !0
  %add.i = fadd float %46, %mul.i
  %arrayidx2.i505 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 1
  %47 = load float* %arrayidx2.i505, align 4, !tbaa !0
  %add4.i = fadd float %47, %mul3.i
  %arrayidx5.i507 = getelementptr inbounds [3 x float]* %1, i64 %idxprom54, i64 2
  %48 = load float* %arrayidx5.i507, align 4, !tbaa !0
  %add7.i = fadd float %48, %mul6.i
  store float %add.i, float* %arraydecay160, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i505, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i507, align 4, !tbaa !0
  %49 = load float* %arraydecay164, align 4, !tbaa !0
  %sub.i498 = fsub float %49, %mul.i
  %50 = load float* %arrayidx2.i499, align 4, !tbaa !0
  %sub4.i501 = fsub float %50, %mul3.i
  %51 = load float* %arrayidx5.i502, align 4, !tbaa !0
  %sub7.i504 = fsub float %51, %mul6.i
  store float %sub.i498, float* %arraydecay164, align 4, !tbaa !0
  store float %sub4.i501, float* %arrayidx2.i499, align 4, !tbaa !0
  store float %sub7.i504, float* %arrayidx5.i502, align 4, !tbaa !0
  br label %for.cond170.preheader

for.cond170.preheader:                            ; preds = %for.inc191.for.cond170.preheader_crit_edge, %if.end157
  %52 = phi float [ %41, %if.end157 ], [ %.pre558, %for.inc191.for.cond170.preheader_crit_edge ]
  %indvars.iv546 = phi i64 [ 0, %if.end157 ], [ %indvars.iv.next547, %for.inc191.for.cond170.preheader_crit_edge ]
  %conv176 = fpext float %52 to double
  %mul177 = fmul double %conv176, 5.000000e-01
  br label %for.body173

for.body173:                                      ; preds = %for.body173, %for.cond170.preheader
  %indvars.iv542 = phi i64 [ 0, %for.cond170.preheader ], [ %indvars.iv.next543, %for.body173 ]
  %arrayidx179 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv542
  %53 = load float* %arrayidx179, align 4, !tbaa !0
  %conv180 = fpext float %53 to double
  %mul181 = fmul double %mul177, %conv180
  %arrayidx185 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv546, i64 %indvars.iv542
  %54 = load float* %arrayidx185, align 4, !tbaa !0
  %conv186 = fpext float %54 to double
  %add187 = fadd double %conv186, %mul181
  %conv188 = fptrunc double %add187 to float
  store float %conv188, float* %arrayidx185, align 4, !tbaa !0
  %indvars.iv.next543 = add i64 %indvars.iv542, 1
  %lftr.wideiv544 = trunc i64 %indvars.iv.next543 to i32
  %exitcond545 = icmp eq i32 %lftr.wideiv544, 3
  br i1 %exitcond545, label %for.inc191, label %for.body173

for.inc191:                                       ; preds = %for.body173
  %indvars.iv.next547 = add i64 %indvars.iv546, 1
  %lftr.wideiv548 = trunc i64 %indvars.iv.next547 to i32
  %exitcond549 = icmp eq i32 %lftr.wideiv548, 3
  br i1 %exitcond549, label %for.inc196, label %for.inc191.for.cond170.preheader_crit_edge

for.inc191.for.cond170.preheader_crit_edge:       ; preds = %for.inc191
  %arrayidx175.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next547
  %.pre558 = load float* %arrayidx175.phi.trans.insert, align 4, !tbaa !0
  br label %for.cond170.preheader

for.inc196:                                       ; preds = %for.inc191, %for.body48, %if.then53
  %Vexcl.2 = phi float [ %Vexcl.1531, %if.then53 ], [ %Vexcl.1531, %for.body48 ], [ %add129, %for.inc191 ]
  %indvars.iv.next551 = add i64 %indvars.iv550, 1
  %55 = trunc i64 %indvars.iv.next551 to i32
  %cmp46 = icmp slt i32 %55, %16
  br i1 %cmp46, label %for.body48, label %for.end198

for.end198:                                       ; preds = %for.inc196, %for.body
  %Vexcl.1.lcssa = phi float [ %Vexcl.0535, %for.body ], [ %Vexcl.2, %for.inc196 ]
  br i1 %cmp201, label %if.then203, label %for.cond.backedge

if.then203:                                       ; preds = %for.end198
  switch i32 %ewald_geometry, label %for.cond.backedge [
    i32 0, label %for.body210
    i32 1, label %if.then235
  ]

for.cond.backedge:                                ; preds = %for.body210, %if.then203, %for.end198, %if.then235
  %56 = trunc i64 %indvars.iv.next557 to i32
  %cmp22 = icmp slt i32 %56, %add
  br i1 %cmp22, label %for.body, label %for.end257

for.body210:                                      ; preds = %for.body210, %if.then203
  %indvars.iv552 = phi i64 [ 0, %if.then203 ], [ %indvars.iv.next553, %for.body210 ]
  %arrayidx215 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv552
  %57 = load float* %arrayidx215, align 4, !tbaa !0
  %conv216 = fpext float %57 to double
  %mul217 = fmul double %mul238, %conv216
  %58 = load float* %arrayidx25, align 4, !tbaa !0
  %conv220 = fpext float %58 to double
  %mul221 = fmul double %mul217, %conv220
  %arrayidx225 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 %indvars.iv552
  %59 = load float* %arrayidx225, align 4, !tbaa !0
  %conv226 = fpext float %59 to double
  %sub227 = fsub double %conv226, %mul221
  %conv228 = fptrunc double %sub227 to float
  store float %conv228, float* %arrayidx225, align 4, !tbaa !0
  %indvars.iv.next553 = add i64 %indvars.iv552, 1
  %lftr.wideiv554 = trunc i64 %indvars.iv.next553 to i32
  %exitcond555 = icmp eq i32 %lftr.wideiv554, 3
  br i1 %exitcond555, label %for.cond.backedge, label %for.body210

if.then235:                                       ; preds = %if.then203
  %60 = load float* %arrayidx239, align 4, !tbaa !0
  %conv240 = fpext float %60 to double
  %mul241 = fmul double %mul238, %conv240
  %61 = load float* %arrayidx25, align 4, !tbaa !0
  %conv244 = fpext float %61 to double
  %mul245 = fmul double %mul241, %conv244
  %arrayidx248 = getelementptr inbounds [3 x float]* %1, i64 %indvars.iv556, i64 2
  %62 = load float* %arrayidx248, align 4, !tbaa !0
  %conv249 = fpext float %62 to double
  %sub250 = fsub double %conv249, %mul245
  %conv251 = fptrunc double %sub250 to float
  store float %conv251, float* %arrayidx248, align 4, !tbaa !0
  br label %for.cond.backedge

for.end257:                                       ; preds = %for.cond.backedge, %if.end
  %q2sum.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %add44, %for.cond.backedge ]
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ %Vexcl.1.lcssa, %for.cond.backedge ]
  %nodeid258 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %63 = load i32* %nodeid258, align 4, !tbaa !4
  %cmp259 = icmp eq i32 %63, 0
  br i1 %cmp259, label %land.lhs.true, label %if.end336

land.lhs.true:                                    ; preds = %for.end257
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %64 = load i32* %threadid, align 4, !tbaa !4
  %cmp261 = icmp eq i32 %64, 0
  br i1 %cmp261, label %if.then263, label %if.end336

if.then263:                                       ; preds = %land.lhs.true
  %mul264 = fmul float %qsum, %qsum
  %conv265 = fpext float %mul264 to double
  %mul266 = fmul double %conv265, 0x400921FB54442D18
  %mul267 = fmul double %mul266, 3.320636e+02
  %mul268 = fmul double %mul267, 4.184000e+00
  %mul269 = fmul double %mul268, 1.000000e-01
  %conv270 = fpext float %mul7 to double
  %mul271 = fmul double %conv270, 2.000000e+00
  %mul273 = fmul double %conv270, %mul271
  %conv274 = fpext float %0 to double
  %mul275 = fmul double %conv274, %mul273
  %mul277 = fmul double %conv274, %mul275
  %div278 = fdiv double %mul269, %mul277
  %conv279 = fptrunc double %div278 to float
  br label %for.body283

for.body283:                                      ; preds = %for.body283, %if.then263
  %indvars.iv = phi i64 [ 0, %if.then263 ], [ %indvars.iv.next, %for.body283 ]
  %arrayidx287 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv, i64 %indvars.iv
  %65 = load float* %arrayidx287, align 4, !tbaa !0
  %add288 = fadd float %conv279, %65
  store float %add288, float* %arrayidx287, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end291, label %for.body283

for.end291:                                       ; preds = %for.body283
  %66 = fmul float %mul7, %conv279
  %mul293 = fsub float -0.000000e+00, %66
  %conv294 = fpext float %dipole_coeff.0 to double
  %fabsf495 = call float @fabsf(float %dipole_coeff.0) #5
  %67 = fpext float %fabsf495 to double
  %cmp296 = fcmp ogt double %67, 1.200000e-38
  br i1 %cmp296, label %if.then298, label %if.end336

if.then298:                                       ; preds = %for.end291
  switch i32 %ewald_geometry, label %if.end336 [
    i32 0, label %if.then301
    i32 1, label %if.then322
  ]

if.then301:                                       ; preds = %if.then298
  %mul303 = fmul double %conv294, 2.081941e-02
  %mul304 = fmul double %mul303, 2.081941e-02
  %68 = load float* %mu_tot, align 4, !tbaa !0
  %mul307 = fmul float %68, %68
  %arrayidx308 = getelementptr inbounds float* %mu_tot, i64 1
  %69 = load float* %arrayidx308, align 4, !tbaa !0
  %mul310 = fmul float %69, %69
  %add311 = fadd float %mul307, %mul310
  %arrayidx312 = getelementptr inbounds float* %mu_tot, i64 2
  %70 = load float* %arrayidx312, align 4, !tbaa !0
  %mul314 = fmul float %70, %70
  %add315 = fadd float %add311, %mul314
  %conv316 = fpext float %add315 to double
  %mul317 = fmul double %mul304, %conv316
  %conv318 = fptrunc double %mul317 to float
  br label %if.end336

if.then322:                                       ; preds = %if.then298
  %mul324 = fmul double %conv294, 2.081941e-02
  %mul325 = fmul double %mul324, 2.081941e-02
  %arrayidx326 = getelementptr inbounds float* %mu_tot, i64 2
  %71 = load float* %arrayidx326, align 4, !tbaa !0
  %conv327 = fpext float %71 to double
  %mul328 = fmul double %mul325, %conv327
  %mul331 = fmul double %conv327, %mul328
  %conv332 = fptrunc double %mul331 to float
  br label %if.end336

if.end336:                                        ; preds = %if.then298, %for.end291, %land.lhs.true, %for.end257, %if.then322, %if.then301
  %Vcharge.0 = phi float [ %mul293, %if.then301 ], [ %mul293, %if.then322 ], [ 0.000000e+00, %for.end257 ], [ 0.000000e+00, %land.lhs.true ], [ %mul293, %for.end291 ], [ %mul293, %if.then298 ]
  %Vdipole.0 = phi float [ %conv318, %if.then301 ], [ %conv332, %if.then322 ], [ 0.000000e+00, %for.end257 ], [ 0.000000e+00, %land.lhs.true ], [ 0.000000e+00, %for.end291 ], [ 0.000000e+00, %if.then298 ]
  %conv337 = fpext float %0 to double
  %mul338 = fmul double %conv337, 3.320636e+02
  %mul339 = fmul double %mul338, 4.184000e+00
  %mul340 = fmul double %mul339, 1.000000e-01
  %mul341 = fmul double %mul340, %q2sum.0.lcssa
  %div343 = fdiv double %mul341, 0x3FFC5BF891B4EF6A
  %conv344 = fptrunc double %div343 to float
  store float %conv344, float* @ewald_LRcorrection.Vself, align 4, !tbaa !0
  %72 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool345 = icmp eq %struct._IO_FILE* %72, null
  br i1 %tobool345, label %if.end371, label %if.then346

if.then346:                                       ; preds = %if.end336
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %72)
  %74 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %6, i32 %7) #4
  %75 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %76 = load float* @ewald_LRcorrection.Vself, align 4, !tbaa !0
  %conv350 = fpext float %76 to double
  %call351 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), double %q2sum.0.lcssa, double %conv350) #4
  %77 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %conv352 = fpext float %Vexcl.0.lcssa to double
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), double %conv352) #4
  %78 = load i32* %nodeid258, align 4, !tbaa !4
  %cmp355 = icmp eq i32 %78, 0
  br i1 %cmp355, label %land.lhs.true357, label %if.end371

land.lhs.true357:                                 ; preds = %if.then346
  %threadid358 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %79 = load i32* %threadid358, align 4, !tbaa !4
  %cmp359 = icmp eq i32 %79, 0
  br i1 %cmp359, label %if.then361, label %if.end371

if.then361:                                       ; preds = %land.lhs.true357
  %80 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %conv362 = fpext float %Vcharge.0 to double
  %call363 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), double %conv362) #4
  %cmp364 = fcmp ogt float %epsilon_surface, 0.000000e+00
  br i1 %cmp364, label %if.then366, label %if.end371

if.then366:                                       ; preds = %if.then361
  %81 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %conv367 = fpext float %Vdipole.0 to double
  %call368 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), double %conv367) #4
  br label %if.end371

if.end371:                                        ; preds = %if.then361, %land.lhs.true357, %if.then346, %if.end336, %if.then366
  %add372 = fadd float %Vcharge.0, %Vdipole.0
  %82 = load float* @ewald_LRcorrection.Vself, align 4, !tbaa !0
  %sub373 = fsub float %add372, %82
  %sub374 = fsub float %sub373, %Vexcl.0.lcssa
  ret float %sub374
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize
declare double @erf(double) #1

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
