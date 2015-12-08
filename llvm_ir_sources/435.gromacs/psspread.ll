; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/psspread.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@spread_q_poisson.bFirst = internal unnamed_addr global i1 false
@spread_q_poisson.nnx = internal global i32* null, align 8
@spread_q_poisson.nny = internal global i32* null, align 8
@spread_q_poisson.nnz = internal global i32* null, align 8
@spread_q_poisson.NCELLS = internal unnamed_addr global i32 0, align 4
@spread_q_poisson.MAXCELLS = internal unnamed_addr global i32 0, align 4
@spread_q_poisson.cells = internal unnamed_addr global [3 x i32]* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Spreading %s using spread function on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"charges\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"ncells = %d,%d,%d\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"cells\00", align 1
@.str6 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/psspread.c\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"There are %d cells (maximum was %d)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @spread_q_poisson(%struct._IO_FILE* nocapture %log, i32 %bVerbose, i32 %bCoulomb, i32 %natoms, [3 x float]* nocapture %x, float* nocapture %prop, float* nocapture %box, float %rc, %struct.t_PSgrid* %grid, %struct.t_nrnb* nocapture %nrnb, i32 %bOld, float %r1) #0 {
entry:
  %invh = alloca [3 x float], align 4
  %ixyz = alloca [3 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %rho = alloca float***, align 8
  call void @unpack_PSgrid(%struct.t_PSgrid* %grid, i32* %nx, i32* %ny, i32* %nz, float**** %rho) #3
  %0 = load i32* %nx, align 4, !tbaa !0
  %1 = load i32* %ny, align 4, !tbaa !0
  %2 = load i32* %nz, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %conv.i = sitofp i32 %0 to float
  %3 = load float* %box, align 4, !tbaa !3
  %div.i = fdiv float %conv.i, %3
  store float %div.i, float* %arraydecay, align 4, !tbaa !3
  %conv2.i = sitofp i32 %1 to float
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %4 = load float* %arrayidx3.i, align 4, !tbaa !3
  %div4.i = fdiv float %conv2.i, %4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %div4.i, float* %arrayidx5.i, align 4, !tbaa !3
  %conv6.i = sitofp i32 %2 to float
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2
  %5 = load float* %arrayidx7.i, align 4, !tbaa !3
  %div8.i = fdiv float %conv6.i, %5
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %div8.i, float* %arrayidx9.i, align 4, !tbaa !3
  %conv13.i = fdiv float 1.000000e+00, %div.i
  %conv18.i = fdiv float 1.000000e+00, %div4.i
  %conv23.i = fdiv float 1.000000e+00, %div8.i
  %div = fdiv float %rc, %3
  %mul = fmul float %div, %conv.i
  %conv2 = fptosi float %mul to i32
  %div4 = fdiv float %rc, %4
  %mul6 = fmul float %div4, %conv2.i
  %conv7 = fptosi float %mul6 to i32
  %div9 = fdiv float %rc, %5
  %mul11 = fmul float %div9, %conv6.i
  %conv12 = fptosi float %mul11 to i32
  %.b = load i1* @spread_q_poisson.bFirst, align 1
  br i1 %.b, label %entry.if.end93_crit_edge, label %if.then

entry.if.end93_crit_edge:                         ; preds = %entry
  %conv97.pre = fpext float %rc to double
  br label %if.end93

if.then:                                          ; preds = %entry
  %tobool13 = icmp ne i32 %bCoulomb, 0
  %cond = select i1 %tobool13, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i8* %cond, i32 %0, i32 %1, i32 %2) #3
  %conv15 = fpext float %div.i to double
  %conv17 = fpext float %div4.i to double
  %conv19 = fpext float %div8.i to double
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str3, i64 0, i64 0), double %conv15, double %conv17, double %conv19) #3
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %conv2, i32 %conv7, i32 %conv12) #3
  %6 = load i32* %nx, align 4, !tbaa !0
  %7 = load i32* %ny, align 4, !tbaa !0
  %8 = load i32* %nz, align 4, !tbaa !0
  call void @calc_nxyz(i32 %6, i32 %7, i32 %8, i32** @spread_q_poisson.nnx, i32** @spread_q_poisson.nny, i32** @spread_q_poisson.nnz) #3
  %mul22 = shl i32 %conv2, 1
  %add = add nsw i32 %mul22, 2
  %mul23 = shl i32 %conv7, 1
  %add24 = add nsw i32 %mul23, 2
  %mul25 = mul nsw i32 %add24, %add
  %mul26 = shl i32 %conv12, 1
  %add27 = add nsw i32 %mul26, 2
  %mul28 = mul nsw i32 %mul25, %add27
  store i32 %mul28, i32* @spread_q_poisson.MAXCELLS, align 4, !tbaa !0
  %call29 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 83, i32 %mul28, i32 12) #3
  %9 = bitcast i8* %call29 to [3 x i32]*
  store [3 x i32]* %9, [3 x i32]** @spread_q_poisson.cells, align 8, !tbaa !4
  %conv30 = fpext float %rc to double
  %mul.i330 = fmul float %conv13.i, %conv13.i
  %mul4.i = fmul float %conv18.i, %conv18.i
  %add.i = fadd float %mul.i330, %mul4.i
  %mul7.i = fmul float %conv23.i, %conv23.i
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #2
  %conv33 = fpext float %conv9.i to double
  %mul34 = fmul double %conv33, 5.000000e-01
  %add35 = fadd double %conv30, %mul34
  %conv36 = fptrunc double %add35 to float
  %mul.i329 = fmul float %conv36, %conv36
  store i32 0, i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  %sub38 = xor i32 %conv2, -1
  %add39 = add nsw i32 %conv2, 1
  %cmp347 = icmp slt i32 %add39, %sub38
  br i1 %cmp347, label %for.end91, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %sub46 = xor i32 %conv7, -1
  %add48 = add nsw i32 %conv7, 1
  %cmp49345 = icmp slt i32 %add48, %sub46
  %sub61 = xor i32 %conv12, -1
  %add63 = add nsw i32 %conv12, 1
  %cmp64343 = icmp slt i32 %add63, %sub61
  %10 = load [3 x i32]** @spread_q_poisson.cells, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.inc89, %for.body.lr.ph
  %11 = phi i32 [ 0, %for.body.lr.ph ], [ %19, %for.inc89 ]
  %i.0348 = phi i32 [ %sub38, %for.body.lr.ph ], [ %inc90, %for.inc89 ]
  %conv41 = sitofp i32 %i.0348 to float
  %mul43 = fmul float %conv13.i, %conv41
  %mul.i328 = fmul float %mul43, %mul43
  br i1 %cmp49345, label %for.inc89, label %for.body51

for.body51:                                       ; preds = %for.body, %for.inc86
  %12 = phi i32 [ %18, %for.inc86 ], [ %11, %for.body ]
  %j.0346 = phi i32 [ %inc87, %for.inc86 ], [ %sub46, %for.body ]
  %conv52 = sitofp i32 %j.0346 to float
  %mul54 = fmul float %conv18.i, %conv52
  %mul.i327 = fmul float %mul54, %mul54
  %add56 = fadd float %mul.i328, %mul.i327
  %cmp57.not = fcmp uge float %add56, %mul.i329
  %brmerge = or i1 %cmp57.not, %cmp64343
  br i1 %brmerge, label %for.inc86, label %for.body66

for.body66:                                       ; preds = %for.body51, %for.inc
  %13 = phi i32 [ %17, %for.inc ], [ %12, %for.body51 ]
  %k.0344 = phi i32 [ %inc84, %for.inc ], [ %sub61, %for.body51 ]
  %conv67 = sitofp i32 %k.0344 to float
  %mul69 = fmul float %conv23.i, %conv67
  %mul.i326 = fmul float %mul69, %mul69
  %add72 = fadd float %add56, %mul.i326
  %cmp73 = fcmp olt float %add72, %mul.i329
  br i1 %cmp73, label %if.then75, label %for.inc

if.then75:                                        ; preds = %for.body66
  %idxprom = sext i32 %13 to i64
  %arrayidx77 = getelementptr inbounds [3 x i32]* %10, i64 %idxprom, i64 0
  store i32 %i.0348, i32* %arrayidx77, align 4, !tbaa !0
  %14 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  %idxprom78 = sext i32 %14 to i64
  %arrayidx80 = getelementptr inbounds [3 x i32]* %10, i64 %idxprom78, i64 1
  store i32 %j.0346, i32* %arrayidx80, align 4, !tbaa !0
  %15 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  %idxprom81 = sext i32 %15 to i64
  %arrayidx83 = getelementptr inbounds [3 x i32]* %10, i64 %idxprom81, i64 2
  store i32 %k.0344, i32* %arrayidx83, align 4, !tbaa !0
  %16 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body66, %if.then75
  %17 = phi i32 [ %13, %for.body66 ], [ %inc, %if.then75 ]
  %inc84 = add nsw i32 %k.0344, 1
  %cmp64 = icmp slt i32 %k.0344, %add63
  br i1 %cmp64, label %for.body66, label %for.inc86

for.inc86:                                        ; preds = %for.body51, %for.inc
  %18 = phi i32 [ %12, %for.body51 ], [ %17, %for.inc ]
  %inc87 = add nsw i32 %j.0346, 1
  %cmp49 = icmp slt i32 %j.0346, %add48
  br i1 %cmp49, label %for.body51, label %for.inc89

for.inc89:                                        ; preds = %for.inc86, %for.body
  %19 = phi i32 [ %11, %for.body ], [ %18, %for.inc86 ]
  %inc90 = add nsw i32 %i.0348, 1
  %cmp = icmp slt i32 %i.0348, %add39
  br i1 %cmp, label %for.body, label %for.end91

for.end91:                                        ; preds = %for.inc89, %if.then
  %20 = phi i32 [ 0, %if.then ], [ %19, %for.inc89 ]
  %21 = load i32* @spread_q_poisson.MAXCELLS, align 4, !tbaa !0
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), i32 %20, i32 %21) #3
  store i1 true, i1* @spread_q_poisson.bFirst, align 1
  br label %if.end93

if.end93:                                         ; preds = %entry.if.end93_crit_edge, %for.end91
  %conv97.pre-phi = phi double [ %conv97.pre, %entry.if.end93_crit_edge ], [ %conv30, %for.end91 ]
  %mul94 = fmul float %rc, %rc
  %tobool95 = icmp eq i32 %bCoulomb, 0
  br i1 %tobool95, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.end93
  %call98 = call double @pow(double %conv97.pre-phi, double -5.000000e+00) #3
  %mul99 = fmul double %call98, 0xC090480FF35D5A4F
  %call102 = call double @pow(double %conv97.pre-phi, double -3.000000e+00) #3
  %mul103 = fmul double %call102, 0x4090480FF35D5A4F
  br label %if.end113

if.else:                                          ; preds = %if.end93
  %call106 = call double @pow(double %conv97.pre-phi, double -1.000000e+01) #3
  %mul107 = fmul double %call106, 1.200000e+02
  %call110 = call double @pow(double %conv97.pre-phi, double -8.000000e+00) #3
  %mul111 = fmul double %call110, -9.000000e+01
  br label %if.end113

if.end113:                                        ; preds = %if.else, %if.then96
  %B.0.in = phi double [ %mul103, %if.then96 ], [ %mul111, %if.else ]
  %A.0.in = phi double [ %mul99, %if.then96 ], [ %mul107, %if.else ]
  %A.0 = fptrunc double %A.0.in to float
  %B.0 = fptrunc double %B.0.in to float
  %cmp118341 = icmp sgt i32 %natoms, 0
  br i1 %cmp118341, label %for.body120.lr.ph, label %for.end249

for.body120.lr.ph:                                ; preds = %if.end113
  %arrayidx178 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %arrayidx179 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %arrayidx180 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %tobool214 = icmp eq i32 %bOld, 0
  br label %for.body120

for.body120:                                      ; preds = %for.inc247, %for.body120.lr.ph
  %indvars.iv351 = phi i64 [ 0, %for.body120.lr.ph ], [ %indvars.iv.next352, %for.inc247 ]
  %arrayidx122 = getelementptr inbounds float* %prop, i64 %indvars.iv351
  %22 = load float* %arrayidx122, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %22) #4
  %23 = fpext float %fabsf to double
  %cmp125 = fcmp ogt double %23, 1.200000e-38
  br i1 %cmp125, label %for.body131, label %for.inc247

for.body131:                                      ; preds = %if.end160, %for.body120
  %indvars.iv = phi i64 [ 0, %for.body120 ], [ %indvars.iv.next, %if.end160 ]
  %arrayidx135 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv351, i64 %indvars.iv
  %24 = load float* %arrayidx135, align 4, !tbaa !3
  %arrayidx137 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv
  %25 = load float* %arrayidx137, align 4, !tbaa !3
  %mul138 = fmul float %24, %25
  %conv139 = fptosi float %mul138 to i32
  %arrayidx141 = getelementptr inbounds float* %box, i64 %indvars.iv
  %26 = load float* %arrayidx141, align 4, !tbaa !3
  %mul144 = fmul float %25, %26
  %cmp145 = icmp slt i32 %conv139, 0
  %conv148 = sitofp i32 %conv139 to float
  br i1 %cmp145, label %if.then147, label %if.else151

if.then147:                                       ; preds = %for.body131
  %add149 = fadd float %mul144, %conv148
  %conv150 = fptosi float %add149 to i32
  br label %if.end160

if.else151:                                       ; preds = %for.body131
  %cmp153 = fcmp ult float %conv148, %mul144
  br i1 %cmp153, label %if.end160, label %if.then155

if.then155:                                       ; preds = %if.else151
  %sub157 = fsub float %conv148, %mul144
  %conv158 = fptosi float %sub157 to i32
  br label %if.end160

if.end160:                                        ; preds = %if.else151, %if.then155, %if.then147
  %ttt.0 = phi i32 [ %conv150, %if.then147 ], [ %conv158, %if.then155 ], [ %conv139, %if.else151 ]
  %conv161 = sitofp i32 %ttt.0 to float
  %add162 = fadd float %conv161, 5.000000e-01
  %conv163 = fptosi float %add162 to i32
  %arrayidx165 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 %indvars.iv
  store i32 %conv163, i32* %arrayidx165, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end168, label %for.body131

for.end168:                                       ; preds = %if.end160
  %arrayidx171 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv351, i64 0
  %27 = load float* %arrayidx171, align 4, !tbaa !3
  %arrayidx174 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv351, i64 1
  %28 = load float* %arrayidx174, align 4, !tbaa !3
  %arrayidx177 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv351, i64 2
  %29 = load float* %arrayidx177, align 4, !tbaa !3
  %30 = load i32* %arrayidx178, align 4, !tbaa !0
  %31 = load i32* %arrayidx179, align 4, !tbaa !0
  %32 = load i32* %arrayidx180, align 4, !tbaa !0
  %33 = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  %cmp182339 = icmp sgt i32 %33, 0
  br i1 %cmp182339, label %for.body184, label %for.inc247

for.body184:                                      ; preds = %for.inc243, %for.end168
  %34 = phi i32 [ %33, %for.end168 ], [ %52, %for.inc243 ]
  %indvars.iv349 = phi i64 [ 0, %for.end168 ], [ %indvars.iv.next350, %for.inc243 ]
  %35 = load [3 x i32]** @spread_q_poisson.cells, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds [3 x i32]* %35, i64 %indvars.iv349, i64 0
  %36 = load i32* %arrayidx187, align 4, !tbaa !0
  %add188 = add nsw i32 %36, %30
  %arrayidx191 = getelementptr inbounds [3 x i32]* %35, i64 %indvars.iv349, i64 1
  %37 = load i32* %arrayidx191, align 4, !tbaa !0
  %add192 = add nsw i32 %37, %31
  %arrayidx195 = getelementptr inbounds [3 x i32]* %35, i64 %indvars.iv349, i64 2
  %38 = load i32* %arrayidx195, align 4, !tbaa !0
  %add196 = add nsw i32 %38, %32
  %conv197 = sitofp i32 %add188 to float
  %mul198 = fmul float %conv13.i, %conv197
  %sub199 = fsub float %27, %mul198
  %mul.i325 = fmul float %sub199, %sub199
  %conv201 = sitofp i32 %add192 to float
  %mul202 = fmul float %conv18.i, %conv201
  %sub203 = fsub float %28, %mul202
  %mul.i324 = fmul float %sub203, %sub203
  %conv205 = sitofp i32 %add196 to float
  %mul206 = fmul float %conv23.i, %conv205
  %sub207 = fsub float %29, %mul206
  %mul.i = fmul float %sub207, %sub207
  %add209 = fadd float %mul.i325, %mul.i324
  %add210 = fadd float %add209, %mul.i
  %cmp211 = fcmp olt float %add210, %mul94
  br i1 %cmp211, label %if.then213, label %for.inc243

if.then213:                                       ; preds = %for.body184
  br i1 %tobool214, label %if.else221, label %if.then215

if.then215:                                       ; preds = %if.then213
  %conv218 = call float @sqrtf(float %add210) #2
  %call219 = call float @spreadfunction(float %r1, float %rc, float %conv218) #3
  %mul220 = fmul float %call219, 0x409B47AAC0000000
  %.pre.pre = load i32* @spread_q_poisson.NCELLS, align 4, !tbaa !0
  br label %if.end224

if.else221:                                       ; preds = %if.then213
  %mul222 = fmul float %A.0, %add210
  %add223 = fadd float %B.0, %mul222
  br label %if.end224

if.end224:                                        ; preds = %if.else221, %if.then215
  %.pre = phi i32 [ %.pre.pre, %if.then215 ], [ %34, %if.else221 ]
  %sf.0 = phi float [ %mul220, %if.then215 ], [ %add223, %if.else221 ]
  %39 = load i32* %nx, align 4, !tbaa !0
  %add225 = add nsw i32 %39, %add188
  %idxprom226 = sext i32 %add225 to i64
  %40 = load i32** @spread_q_poisson.nnx, align 8, !tbaa !4
  %arrayidx227 = getelementptr inbounds i32* %40, i64 %idxprom226
  %41 = load i32* %arrayidx227, align 4, !tbaa !0
  %42 = load i32* %ny, align 4, !tbaa !0
  %add228 = add nsw i32 %42, %add192
  %idxprom229 = sext i32 %add228 to i64
  %43 = load i32** @spread_q_poisson.nny, align 8, !tbaa !4
  %arrayidx230 = getelementptr inbounds i32* %43, i64 %idxprom229
  %44 = load i32* %arrayidx230, align 4, !tbaa !0
  %45 = load i32* %nz, align 4, !tbaa !0
  %add231 = add nsw i32 %45, %add196
  %idxprom232 = sext i32 %add231 to i64
  %46 = load i32** @spread_q_poisson.nnz, align 8, !tbaa !4
  %arrayidx233 = getelementptr inbounds i32* %46, i64 %idxprom232
  %47 = load i32* %arrayidx233, align 4, !tbaa !0
  %mul234 = fmul float %22, %sf.0
  %idxprom235 = sext i32 %47 to i64
  %idxprom236 = sext i32 %44 to i64
  %idxprom237 = sext i32 %41 to i64
  %48 = load float**** %rho, align 8, !tbaa !4
  %arrayidx238 = getelementptr inbounds float*** %48, i64 %idxprom237
  %49 = load float*** %arrayidx238, align 8, !tbaa !4
  %arrayidx239 = getelementptr inbounds float** %49, i64 %idxprom236
  %50 = load float** %arrayidx239, align 8, !tbaa !4
  %arrayidx240 = getelementptr inbounds float* %50, i64 %idxprom235
  %51 = load float* %arrayidx240, align 4, !tbaa !3
  %add241 = fadd float %mul234, %51
  store float %add241, float* %arrayidx240, align 4, !tbaa !3
  br label %for.inc243

for.inc243:                                       ; preds = %for.body184, %if.end224
  %52 = phi i32 [ %34, %for.body184 ], [ %.pre, %if.end224 ]
  %indvars.iv.next350 = add i64 %indvars.iv349, 1
  %53 = trunc i64 %indvars.iv.next350 to i32
  %cmp182 = icmp slt i32 %53, %52
  br i1 %cmp182, label %for.body184, label %for.inc247

for.inc247:                                       ; preds = %for.end168, %for.inc243, %for.body120
  %indvars.iv.next352 = add i64 %indvars.iv351, 1
  %lftr.wideiv353 = trunc i64 %indvars.iv.next352 to i32
  %exitcond354 = icmp eq i32 %lftr.wideiv353, %natoms
  br i1 %exitcond354, label %for.end249, label %for.body120

for.end249:                                       ; preds = %for.inc247, %if.end113
  ret void
}

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: optsize
declare float @spreadfunction(float, float, float) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
