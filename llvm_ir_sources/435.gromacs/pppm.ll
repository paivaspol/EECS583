; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_nrnb = type { [129 x double] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_fft_c = type { float, float }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [34 x i8] c"iatom = %d, it = %d, x=%f, ttt=%f\00", align 1
@spread_q.bFirst = internal unnamed_addr global i1 false
@spread_q.nnx = internal global i32* null, align 8
@spread_q.nny = internal global i32* null, align 8
@spread_q.nnz = internal global i32* null, align 8
@.str1 = private unnamed_addr constant [58 x i8] c"Spreading Charges using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"nTest\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pppm.c\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"PPPM used, but GROMACS was compiled without FFTW support!\0A\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"Initializing parallel PPPM.\0A\00", align 1
@.str7 = private unnamed_addr constant [59 x i8] c"Will use the PPPM algorithm for long-range electrostatics\0A\00", align 1
@beta = internal global [3 x float] zeroinitializer, align 4
@.str8 = private unnamed_addr constant [26 x i8] c"Generating Ghat function\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"Grid size is %d x %d x %d\0A\00", align 1
@.str10 = private unnamed_addr constant [49 x i8] c"Grid must be at least 4 points in all directions\00", align 1
@ghat = internal unnamed_addr global float*** null, align 8
@.str11 = private unnamed_addr constant [14 x i8] c"generghat.xvg\00", align 1
@stderr = external global %struct._IO_FILE*
@.str12 = private unnamed_addr constant [31 x i8] c"Reading Ghat function from %s\0A\00", align 1
@.str13 = private unnamed_addr constant [71 x i8] c"rcoulomb_switch = %10.3e  rcoulomb = %10.3e  r1 = %10.3e  rc = %10.3e\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"Cut-off lengths in tpb file and Ghat file %s do not match\0ACheck your log file!\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str16 = private unnamed_addr constant [13 x i8] c"grid-spacing\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"grid size\00", align 1
@.str18 = private unnamed_addr constant [73 x i8] c"Box sizes in tpb file and Ghat file %s do not match\0ACheck your log file!\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"porder = %d, should be 2 in %s\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"optimghat.xvg\00", align 1
@grid = internal unnamed_addr global %struct.t_fftgrid* null, align 8
@gather_f.bFirst = internal unnamed_addr global i1 false
@gather_f.nnx = internal global i32* null, align 8
@gather_f.nny = internal global i32* null, align 8
@gather_f.nnz = internal global i32* null, align 8
@gather_f.JCXYZ = internal global [81 x i32] zeroinitializer, align 16
@.str21 = private unnamed_addr constant [57 x i8] c"Gathering Forces using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str22 = private unnamed_addr constant [23 x i8] c"beta = %10g,%10g,%10g\0A\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"c1   = %10g,%10g,%10g\0A\00", align 1
@.str24 = private unnamed_addr constant [23 x i8] c"c2   = %10g,%10g,%10g\0A\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"*nnx\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"*nny\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"*nnz\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @calc_invh(float* nocapture %box, i32 %nx, i32 %ny, i32 %nz, float* nocapture %invh) #0 {
entry:
  %conv = sitofp i32 %nx to float
  %0 = load float* %box, align 4, !tbaa !0
  %div = fdiv float %conv, %0
  store float %div, float* %invh, align 4, !tbaa !0
  %conv2 = sitofp i32 %ny to float
  %arrayidx3 = getelementptr inbounds float* %box, i64 1
  %1 = load float* %arrayidx3, align 4, !tbaa !0
  %div4 = fdiv float %conv2, %1
  %arrayidx5 = getelementptr inbounds float* %invh, i64 1
  store float %div4, float* %arrayidx5, align 4, !tbaa !0
  %conv6 = sitofp i32 %nz to float
  %arrayidx7 = getelementptr inbounds float* %box, i64 2
  %2 = load float* %arrayidx7, align 4, !tbaa !0
  %div8 = fdiv float %conv6, %2
  %arrayidx9 = getelementptr inbounds float* %invh, i64 2
  store float %div8, float* %arrayidx9, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_weights(i32 %iatom, i32 %nx, i32 %ny, i32 %nz, float* nocapture %x, float* nocapture %box, float* nocapture %invh, i32* nocapture %ixyz, float* nocapture %WXYZ) #0 {
entry:
  %wxyz = alloca [3 x [3 x float]], align 16
  %nxyz = alloca [3 x i32], align 4
  %0 = bitcast [3 x [3 x float]]* %wxyz to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %arrayidx = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 0
  store i32 %nx, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 1
  store i32 %ny, i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 2
  store i32 %nz, i32* %arrayidx2, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %entry
  %1 = phi i32 [ %nx, %entry ], [ %.pre, %if.end31.for.body_crit_edge ]
  %indvars.iv161 = phi i64 [ 0, %entry ], [ %indvars.iv.next162, %if.end31.for.body_crit_edge ]
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv161
  %2 = load float* %arrayidx3, align 4, !tbaa !0
  %arrayidx5 = getelementptr inbounds float* %invh, i64 %indvars.iv161
  %3 = load float* %arrayidx5, align 4, !tbaa !0
  %mul = fmul float %2, %3
  %conv = fpext float %mul to double
  %add = fadd double %conv, 5.000000e-01
  %conv6 = fptosi double %add to i32
  %cmp9 = icmp slt i32 %conv6, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %conv11 = sitofp i32 %1 to float
  %add12 = fadd float %mul, %conv11
  %add13 = add nsw i32 %conv6, %1
  br label %if.end19

if.else:                                          ; preds = %for.body
  %cmp14 = icmp slt i32 %conv6, %1
  br i1 %cmp14, label %lor.lhs.false, label %if.then16

if.then16:                                        ; preds = %if.else
  %conv17 = sitofp i32 %1 to float
  %sub = fsub float %mul, %conv17
  %sub18 = sub nsw i32 %conv6, %1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then
  %it.0 = phi i32 [ %add13, %if.then ], [ %sub18, %if.then16 ]
  %ttt.0 = phi float [ %add12, %if.then ], [ %sub, %if.then16 ]
  %cmp20 = icmp slt i32 %it.0, 0
  br i1 %cmp20, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else, %if.end19
  %ttt.0143 = phi float [ %ttt.0, %if.end19 ], [ %mul, %if.else ]
  %it.0140 = phi i32 [ %it.0, %if.end19 ], [ %conv6, %if.else ]
  %cmp24 = icmp slt i32 %it.0140, %1
  br i1 %cmp24, label %if.end31, label %if.then26

if.then26:                                        ; preds = %lor.lhs.false, %if.end19
  %ttt.0144 = phi float [ %ttt.0143, %lor.lhs.false ], [ %ttt.0, %if.end19 ]
  %it.0141 = phi i32 [ %it.0140, %lor.lhs.false ], [ %it.0, %if.end19 ]
  %conv29 = fpext float %2 to double
  %conv30 = fpext float %ttt.0144 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i32 %iatom, i32 %it.0141, double %conv29, double %conv30) #4
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false, %if.then26
  %ttt.0145 = phi float [ %ttt.0143, %lor.lhs.false ], [ %ttt.0144, %if.then26 ]
  %it.0142 = phi i32 [ %it.0140, %lor.lhs.false ], [ %it.0141, %if.then26 ]
  %arrayidx33 = getelementptr inbounds i32* %ixyz, i64 %indvars.iv161
  store i32 %it.0142, i32* %arrayidx33, align 4, !tbaa !3
  %conv36 = sitofp i32 %it.0142 to float
  %sub37 = fsub float %ttt.0145, %conv36
  %sub38 = fsub float 5.000000e-01, %sub37
  %mul.i = fmul float %sub38, %sub38
  %arrayidx41 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 0
  store float %mul.i, float* %arrayidx41, align 4, !tbaa !0
  %mul.i138 = fmul float %sub37, %sub37
  %conv43 = fpext float %mul.i138 to double
  %mul44 = fmul double %conv43, 2.000000e+00
  %sub45 = fsub double 1.500000e+00, %mul44
  %conv46 = fptrunc double %sub45 to float
  %arrayidx49 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 1
  store float %conv46, float* %arrayidx49, align 4, !tbaa !0
  %add50 = fadd float %sub37, 5.000000e-01
  %mul.i137 = fmul float %add50, %add50
  %arrayidx54 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv161, i64 2
  store float %mul.i137, float* %arrayidx54, align 4, !tbaa !0
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %lftr.wideiv163 = trunc i64 %indvars.iv.next162 to i32
  %exitcond164 = icmp eq i32 %lftr.wideiv163, 3
  br i1 %exitcond164, label %for.end, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  %arrayidx8.phi.trans.insert = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 %indvars.iv.next162
  %.pre = load i32* %arrayidx8.phi.trans.insert, align 4, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %if.end31
  %arrayidx56 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 0
  %4 = load float* %arrayidx56, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 1
  %5 = load float* %arrayidx58, align 4, !tbaa !0
  %arrayidx60 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 2
  %6 = load float* %arrayidx60, align 8, !tbaa !0
  br label %for.body64

for.body64:                                       ; preds = %for.inc92, %for.end
  %indvars.iv157 = phi i64 [ 0, %for.end ], [ %indvars.iv.next158, %for.inc92 ]
  %indvars.iv155 = phi i64 [ 0, %for.end ], [ %indvars.iv.next156, %for.inc92 ]
  %arrayidx67 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 0, i64 %indvars.iv155
  %7 = load float* %arrayidx67, align 4, !tbaa !0
  %mul68 = fmul float %7, 1.250000e-01
  br label %for.body72

for.body72:                                       ; preds = %for.body72, %for.body64
  %indvars.iv151 = phi i64 [ %indvars.iv157, %for.body64 ], [ %indvars.iv.next152, %for.body72 ]
  %indvars.iv = phi i64 [ 0, %for.body64 ], [ %indvars.iv.next, %for.body72 ]
  %arrayidx75 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 1, i64 %indvars.iv
  %8 = load float* %arrayidx75, align 4, !tbaa !0
  %mul76 = fmul float %mul68, %8
  %mul77 = fmul float %4, %mul76
  %arrayidx79 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv151
  store float %mul77, float* %arrayidx79, align 4, !tbaa !0
  %mul80 = fmul float %5, %mul76
  %9 = add nsw i64 %indvars.iv151, 1
  %arrayidx83 = getelementptr inbounds float* %WXYZ, i64 %9
  store float %mul80, float* %arrayidx83, align 4, !tbaa !0
  %mul84 = fmul float %6, %mul76
  %10 = add nsw i64 %indvars.iv151, 2
  %arrayidx87 = getelementptr inbounds float* %WXYZ, i64 %10
  store float %mul84, float* %arrayidx87, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next152 = add i64 %indvars.iv151, 3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc92, label %for.body72

for.inc92:                                        ; preds = %for.body72
  %indvars.iv.next158 = add i64 %indvars.iv157, 9
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %lftr.wideiv159 = trunc i64 %indvars.iv.next156 to i32
  %exitcond160 = icmp eq i32 %lftr.wideiv159, 3
  br i1 %exitcond160, label %for.end94, label %for.body64

for.end94:                                        ; preds = %for.inc92
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @spread_q(%struct._IO_FILE* nocapture %log, i32 %bVerbose, i32 %start, i32 %nr, [3 x float]* nocapture %x, float* nocapture %charge, float* nocapture %box, %struct.t_fftgrid* %grid, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %invh = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixyz = alloca [3 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %0 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %0) #1
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  %1 = load i32* %nx, align 4, !tbaa !3
  %2 = load i32* %ny, align 4, !tbaa !3
  %3 = load i32* %nz, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %conv.i = sitofp i32 %1 to float
  %4 = load float* %box, align 4, !tbaa !0
  %div.i = fdiv float %conv.i, %4
  store float %div.i, float* %arraydecay, align 4, !tbaa !0
  %conv2.i = sitofp i32 %2 to float
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %5 = load float* %arrayidx3.i, align 4, !tbaa !0
  %div4.i = fdiv float %conv2.i, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %div4.i, float* %arrayidx5.i, align 4, !tbaa !0
  %conv6.i = sitofp i32 %3 to float
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2
  %6 = load float* %arrayidx7.i, align 4, !tbaa !0
  %div8.i = fdiv float %conv6.i, %6
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %div8.i, float* %arrayidx9.i, align 4, !tbaa !0
  %.b = load i1* @spread_q.bFirst, align 1
  br i1 %.b, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #4
  %conv = fpext float %div.i to double
  %conv2 = fpext float %div4.i to double
  %conv4 = fpext float %div8.i to double
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %conv, double %conv2, double %conv4) #4
  %7 = load i32* %nx, align 4, !tbaa !3
  %8 = load i32* %ny, align 4, !tbaa !3
  %9 = load i32* %nz, align 4, !tbaa !3
  call fastcc void @calc_nxyz(i32 %7, i32 %8, i32 %9, i32** @spread_q.nnx, i32** @spread_q.nny, i32** @spread_q.nnz) #5
  store i1 true, i1* @spread_q.bFirst, align 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %add = add nsw i32 %nr, %start
  %cmp101 = icmp sgt i32 %nr, 0
  br i1 %cmp101, label %for.body.lr.ph, label %for.end66

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arraydecay17 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %arrayidx23 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %ptr53 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %10 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc64
  %indvars.iv116 = phi i64 [ %10, %for.body.lr.ph ], [ %indvars.iv.next117, %for.inc64 ]
  %arrayidx7 = getelementptr inbounds float* %charge, i64 %indvars.iv116
  %11 = load float* %arrayidx7, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %11) #6
  %12 = fpext float %fabsf to double
  %cmp10 = fcmp ogt double %12, 1.200000e-38
  br i1 %cmp10, label %if.then12, label %for.inc64

if.then12:                                        ; preds = %for.body
  %13 = load i32* %nx, align 4, !tbaa !3
  %14 = load i32* %ny, align 4, !tbaa !3
  %15 = load i32* %nz, align 4, !tbaa !3
  %arraydecay15 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv116, i64 0
  %16 = trunc i64 %indvars.iv116 to i32
  call void @calc_weights(i32 %16, i32 %13, i32 %14, i32 %15, float* %arraydecay15, float* undef, float* %arraydecay, i32* %arraydecay17, float* %arraydecay18) #5
  %17 = load i32* %arraydecay17, align 4, !tbaa !3
  %18 = load i32* %nx, align 4, !tbaa !3
  %add20 = add nsw i32 %18, %17
  %19 = load i32* %arrayidx21, align 4, !tbaa !3
  %20 = load i32* %ny, align 4, !tbaa !3
  %add22 = add nsw i32 %20, %19
  %21 = load i32* %arrayidx23, align 4, !tbaa !3
  %22 = load i32* %nz, align 4, !tbaa !3
  %add24 = add nsw i32 %22, %21
  %23 = load i32** @spread_q.nnx, align 8, !tbaa !4
  %24 = load i32** @spread_q.nny, align 8, !tbaa !4
  %25 = load i32** @spread_q.nnz, align 8, !tbaa !4
  %26 = load i32* %la12, align 4, !tbaa !3
  %27 = load i32* %la2, align 4, !tbaa !3
  %28 = load float** %ptr53, align 8, !tbaa !4
  %29 = sext i32 %add24 to i64
  %30 = sext i32 %add22 to i64
  %31 = sext i32 %add20 to i64
  br label %for.body28

for.body28:                                       ; preds = %for.inc60, %if.then12
  %indvars.iv111 = phi i64 [ -1, %if.then12 ], [ %indvars.iv.next112, %for.inc60 ]
  %nxyz.0100 = phi i32 [ 0, %if.then12 ], [ %42, %for.inc60 ]
  %32 = add nsw i64 %31, %indvars.iv111
  %arrayidx31 = getelementptr inbounds i32* %23, i64 %32
  %33 = load i32* %arrayidx31, align 4, !tbaa !3
  %mul = mul nsw i32 %26, %33
  br label %for.body35

for.body35:                                       ; preds = %for.inc57, %for.body28
  %indvars.iv106 = phi i64 [ -1, %for.body28 ], [ %indvars.iv.next107, %for.inc57 ]
  %nxyz.198 = phi i32 [ %nxyz.0100, %for.body28 ], [ %41, %for.inc57 ]
  %34 = add nsw i64 %30, %indvars.iv106
  %arrayidx38 = getelementptr inbounds i32* %24, i64 %34
  %35 = load i32* %arrayidx38, align 4, !tbaa !3
  %mul46 = mul nsw i32 %27, %35
  %36 = sext i32 %nxyz.198 to i64
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.body35
  %indvars.iv103 = phi i64 [ -1, %for.body35 ], [ %indvars.iv.next104, %for.body42 ]
  %indvars.iv = phi i64 [ %36, %for.body35 ], [ %indvars.iv.next, %for.body42 ]
  %37 = add nsw i64 %29, %indvars.iv103
  %arrayidx45 = getelementptr inbounds i32* %25, i64 %37
  %38 = load i32* %arrayidx45, align 4, !tbaa !3
  %add47 = add i32 %mul, %38
  %add48 = add i32 %add47, %mul46
  %arrayidx50 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 %indvars.iv
  %39 = load float* %arrayidx50, align 4, !tbaa !0
  %mul51 = fmul float %11, %39
  %idxprom52 = sext i32 %add48 to i64
  %arrayidx54 = getelementptr inbounds float* %28, i64 %idxprom52
  %40 = load float* %arrayidx54, align 4, !tbaa !0
  %add55 = fadd float %mul51, %40
  store float %add55, float* %arrayidx54, align 4, !tbaa !0
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next104 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.inc57, label %for.body42

for.inc57:                                        ; preds = %for.body42
  %41 = add i32 %nxyz.198, 3
  %indvars.iv.next107 = add i64 %indvars.iv106, 1
  %lftr.wideiv109 = trunc i64 %indvars.iv.next107 to i32
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 2
  br i1 %exitcond110, label %for.inc60, label %for.body35

for.inc60:                                        ; preds = %for.inc57
  %42 = add i32 %nxyz.0100, 9
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %lftr.wideiv114 = trunc i64 %indvars.iv.next112 to i32
  %exitcond115 = icmp eq i32 %lftr.wideiv114, 2
  br i1 %exitcond115, label %for.inc64, label %for.body28

for.inc64:                                        ; preds = %for.inc60, %for.body
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %43 = trunc i64 %indvars.iv.next117 to i32
  %cmp = icmp slt i32 %43, %add
  br i1 %cmp, label %for.body, label %for.end66

for.end66:                                        ; preds = %for.inc64, %for.cond.preheader
  %mul67 = mul nsw i32 %nr, 9
  %conv68 = sitofp i32 %mul67 to double
  %arrayidx69 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 80
  %44 = load double* %arrayidx69, align 8, !tbaa !5
  %add70 = fadd double %conv68, %44
  store double %add70, double* %arrayidx69, align 8, !tbaa !5
  %mul71 = mul nsw i32 %nr, 3
  %conv72 = sitofp i32 %mul71 to double
  %arrayidx74 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %45 = load double* %arrayidx74, align 8, !tbaa !5
  %add75 = fadd double %conv72, %45
  store double %add75, double* %arrayidx74, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 108, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #0 {
entry:
  %mul = mul nsw i32 %nx, 3
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 138, i32 %mul, i32 4) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %nnx, align 8, !tbaa !4
  %mul1 = mul nsw i32 %ny, 3
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 139, i32 %mul1, i32 4) #4
  %1 = bitcast i8* %call2 to i32*
  store i32* %1, i32** %nny, align 8, !tbaa !4
  %mul3 = mul nsw i32 %nz, 3
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 140, i32 %mul3, i32 4) #4
  %2 = bitcast i8* %call4 to i32*
  store i32* %2, i32** %nnz, align 8, !tbaa !4
  %cmp50 = icmp sgt i32 %nx, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %entry
  %3 = load i32** %nnx, align 8, !tbaa !4
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body, %entry
  %cmp848 = icmp sgt i32 %ny, 0
  br i1 %cmp848, label %for.body9.lr.ph, label %for.cond16.preheader

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %4 = load i32** %nny, align 8, !tbaa !4
  br label %for.body9

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next55, %for.body ]
  %5 = trunc i64 %indvars.iv54 to i32
  %rem = srem i32 %5, %nx
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv54
  store i32 %rem, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next55 = add i64 %indvars.iv54, 1
  %6 = trunc i64 %indvars.iv.next55 to i32
  %cmp = icmp slt i32 %6, %mul
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond16.preheader:                             ; preds = %for.body9, %for.cond6.preheader
  %cmp1846 = icmp sgt i32 %nz, 0
  br i1 %cmp1846, label %for.body19, label %for.end25

for.body9:                                        ; preds = %for.body9.lr.ph, %for.body9
  %indvars.iv52 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next53, %for.body9 ]
  %7 = trunc i64 %indvars.iv52 to i32
  %rem10 = srem i32 %7, %ny
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %indvars.iv52
  store i32 %rem10, i32* %arrayidx12, align 4, !tbaa !3
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %8 = trunc i64 %indvars.iv.next53 to i32
  %cmp8 = icmp slt i32 %8, %mul1
  br i1 %cmp8, label %for.body9, label %for.cond16.preheader

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body19 ], [ 0, %for.cond16.preheader ]
  %9 = trunc i64 %indvars.iv to i32
  %rem20 = srem i32 %9, %nz
  %arrayidx22 = getelementptr inbounds i32* %2, i64 %indvars.iv
  store i32 %rem20, i32* %arrayidx22, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %10, %mul3
  br i1 %cmp18, label %for.body19, label %for.end25

for.end25:                                        ; preds = %for.body19, %for.cond16.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @gather_inner(i32* nocapture %JCXYZ, float* nocapture %WXYZ, i32* nocapture %ixw, i32* nocapture %iyw, i32* nocapture %izw, i32 %la2, i32 %la12, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float* nocapture %ptr) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv267 = phi i64 [ 0, %entry ], [ %indvars.iv.next268, %for.body ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %pi.0266 = phi float [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %fX.0265 = phi float [ 0.000000e+00, %entry ], [ %add62, %for.body ]
  %fY.0264 = phi float [ 0.000000e+00, %entry ], [ %add105, %for.body ]
  %fZ.0263 = phi float [ 0.000000e+00, %entry ], [ %add148, %for.body ]
  %arrayidx = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv267
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %1 = add nsw i64 %indvars.iv267, 1
  %arrayidx2 = getelementptr inbounds i32* %JCXYZ, i64 %1
  %2 = load i32* %arrayidx2, align 4, !tbaa !3
  %3 = add nsw i64 %indvars.iv267, 2
  %arrayidx5 = getelementptr inbounds i32* %JCXYZ, i64 %3
  %4 = load i32* %arrayidx5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv
  %5 = load float* %arrayidx7, align 4, !tbaa !0
  %idxprom8 = sext i32 %0 to i64
  %arrayidx9 = getelementptr inbounds i32* %ixw, i64 %idxprom8
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %2 to i64
  %arrayidx11 = getelementptr inbounds i32* %iyw, i64 %idxprom10
  %7 = load i32* %arrayidx11, align 4, !tbaa !3
  %idxprom12 = sext i32 %4 to i64
  %arrayidx13 = getelementptr inbounds i32* %izw, i64 %idxprom12
  %8 = load i32* %arrayidx13, align 4, !tbaa !3
  %mul = mul nsw i32 %6, %la12
  %mul14 = mul nsw i32 %7, %la2
  %add15 = add nsw i32 %mul14, %mul
  %add16 = add nsw i32 %add15, %8
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float* %ptr, i64 %idxprom17
  %9 = load float* %arrayidx18, align 4, !tbaa !0
  %mul19 = fmul float %5, %9
  %add20 = fadd float %pi.0266, %mul19
  %sub = add nsw i32 %0, -1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds i32* %ixw, i64 %idxprom21
  %10 = load i32* %arrayidx22, align 4, !tbaa !3
  %mul23 = mul nsw i32 %10, %la12
  %add25 = add i32 %8, %mul14
  %add26 = add i32 %add25, %mul23
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds float* %ptr, i64 %idxprom27
  %11 = load float* %arrayidx28, align 4, !tbaa !0
  %add29 = add nsw i32 %0, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32* %ixw, i64 %idxprom30
  %12 = load i32* %arrayidx31, align 4, !tbaa !3
  %mul32 = mul nsw i32 %12, %la12
  %add35 = add i32 %add25, %mul32
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds float* %ptr, i64 %idxprom36
  %13 = load float* %arrayidx37, align 4, !tbaa !0
  %sub38 = fsub float %11, %13
  %mul39 = fmul float %sub38, %c1x
  %sub40 = add nsw i32 %0, -2
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds i32* %ixw, i64 %idxprom41
  %14 = load i32* %arrayidx42, align 4, !tbaa !3
  %mul43 = mul nsw i32 %14, %la12
  %add46 = add i32 %add25, %mul43
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds float* %ptr, i64 %idxprom47
  %15 = load float* %arrayidx48, align 4, !tbaa !0
  %add49 = add nsw i32 %0, 2
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i32* %ixw, i64 %idxprom50
  %16 = load i32* %arrayidx51, align 4, !tbaa !3
  %mul52 = mul nsw i32 %16, %la12
  %add55 = add i32 %add25, %mul52
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds float* %ptr, i64 %idxprom56
  %17 = load float* %arrayidx57, align 4, !tbaa !0
  %sub58 = fsub float %15, %17
  %mul59 = fmul float %sub58, %c2x
  %add60 = fadd float %mul39, %mul59
  %mul61 = fmul float %5, %add60
  %add62 = fadd float %fX.0265, %mul61
  %sub64 = add nsw i32 %2, -1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds i32* %iyw, i64 %idxprom65
  %18 = load i32* %arrayidx66, align 4, !tbaa !3
  %mul67 = mul nsw i32 %18, %la2
  %add68 = add i32 %8, %mul
  %add69 = add i32 %add68, %mul67
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds float* %ptr, i64 %idxprom70
  %19 = load float* %arrayidx71, align 4, !tbaa !0
  %add73 = add nsw i32 %2, 1
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds i32* %iyw, i64 %idxprom74
  %20 = load i32* %arrayidx75, align 4, !tbaa !3
  %mul76 = mul nsw i32 %20, %la2
  %add78 = add i32 %add68, %mul76
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds float* %ptr, i64 %idxprom79
  %21 = load float* %arrayidx80, align 4, !tbaa !0
  %sub81 = fsub float %19, %21
  %mul82 = fmul float %sub81, %c1y
  %sub84 = add nsw i32 %2, -2
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i32* %iyw, i64 %idxprom85
  %22 = load i32* %arrayidx86, align 4, !tbaa !3
  %mul87 = mul nsw i32 %22, %la2
  %add89 = add i32 %add68, %mul87
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds float* %ptr, i64 %idxprom90
  %23 = load float* %arrayidx91, align 4, !tbaa !0
  %add93 = add nsw i32 %2, 2
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i32* %iyw, i64 %idxprom94
  %24 = load i32* %arrayidx95, align 4, !tbaa !3
  %mul96 = mul nsw i32 %24, %la2
  %add98 = add i32 %add68, %mul96
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds float* %ptr, i64 %idxprom99
  %25 = load float* %arrayidx100, align 4, !tbaa !0
  %sub101 = fsub float %23, %25
  %mul102 = fmul float %sub101, %c2y
  %add103 = fadd float %mul82, %mul102
  %mul104 = fmul float %5, %add103
  %add105 = fadd float %fY.0264, %mul104
  %sub109 = add nsw i32 %4, -1
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds i32* %izw, i64 %idxprom110
  %26 = load i32* %arrayidx111, align 4, !tbaa !3
  %add112 = add nsw i32 %26, %add15
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds float* %ptr, i64 %idxprom113
  %27 = load float* %arrayidx114, align 4, !tbaa !0
  %add118 = add nsw i32 %4, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds i32* %izw, i64 %idxprom119
  %28 = load i32* %arrayidx120, align 4, !tbaa !3
  %add121 = add nsw i32 %28, %add15
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds float* %ptr, i64 %idxprom122
  %29 = load float* %arrayidx123, align 4, !tbaa !0
  %sub124 = fsub float %27, %29
  %mul125 = fmul float %sub124, %c1z
  %sub129 = add nsw i32 %4, -2
  %idxprom130 = sext i32 %sub129 to i64
  %arrayidx131 = getelementptr inbounds i32* %izw, i64 %idxprom130
  %30 = load i32* %arrayidx131, align 4, !tbaa !3
  %add132 = add nsw i32 %30, %add15
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds float* %ptr, i64 %idxprom133
  %31 = load float* %arrayidx134, align 4, !tbaa !0
  %add138 = add nsw i32 %4, 2
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds i32* %izw, i64 %idxprom139
  %32 = load i32* %arrayidx140, align 4, !tbaa !3
  %add141 = add nsw i32 %32, %add15
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds float* %ptr, i64 %idxprom142
  %33 = load float* %arrayidx143, align 4, !tbaa !0
  %sub144 = fsub float %31, %33
  %mul145 = fmul float %sub144, %c2z
  %add146 = fadd float %mul125, %mul145
  %mul147 = fmul float %5, %add146
  %add148 = fadd float %fZ.0263, %mul147
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next268 = add i64 %indvars.iv267, 3
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 27
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %mul150 = fmul float %add62, %qi
  %34 = load float* %f, align 4, !tbaa !0
  %add152 = fadd float %mul150, %34
  store float %add152, float* %f, align 4, !tbaa !0
  %mul153 = fmul float %add105, %qi
  %arrayidx154 = getelementptr inbounds float* %f, i64 1
  %35 = load float* %arrayidx154, align 4, !tbaa !0
  %add155 = fadd float %mul153, %35
  store float %add155, float* %arrayidx154, align 4, !tbaa !0
  %mul156 = fmul float %add148, %qi
  %arrayidx157 = getelementptr inbounds float* %f, i64 2
  %36 = load float* %arrayidx157, align 4, !tbaa !0
  %add158 = fadd float %mul156, %36
  store float %add158, float* %arrayidx157, align 4, !tbaa !0
  ret float %add20
}

; Function Attrs: nounwind optsize uwtable
define void @convolution(%struct._IO_FILE* nocapture %fp, i32 %bVerbose, %struct.t_fftgrid* %grid, float*** nocapture %ghat, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca %struct.t_fft_c*, align 8
  %0 = bitcast %struct.t_fft_c** %ptr to float**
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %0) #4
  %nptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10
  %1 = load i32* %nptr, align 4, !tbaa !3
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 373, i32 %1, i32 4) #4
  %2 = bitcast i8* %call to i32*
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %3 = load i32* %nnodes, align 4, !tbaa !3
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %4 = load i32* %nthreads, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %4, 1
  br i1 %cmp1, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %5 = load i32* %nx, align 4, !tbaa !3
  %cmp253 = icmp sgt i32 %5, 0
  br i1 %cmp253, label %for.cond3.preheader.lr.ph, label %if.end

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %6 = load %struct.t_fft_c** %ptr, align 8, !tbaa !4
  %.pre = load i32* %ny, align 4, !tbaa !3
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.lr.ph, %for.inc28
  %7 = phi i32 [ %5, %for.cond3.preheader.lr.ph ], [ %26, %for.inc28 ]
  %8 = phi i32 [ %.pre, %for.cond3.preheader.lr.ph ], [ %27, %for.inc28 ]
  %indvars.iv58 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next59, %for.inc28 ]
  %cmp450 = icmp sgt i32 %8, 0
  br i1 %cmp450, label %for.cond6.preheader.lr.ph, label %for.inc28

for.cond6.preheader.lr.ph:                        ; preds = %for.cond3.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv58
  %.pre61 = load i32* %nz, align 4, !tbaa !3
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond6.preheader.lr.ph, %for.inc25
  %9 = phi i32 [ %8, %for.cond6.preheader.lr.ph ], [ %23, %for.inc25 ]
  %10 = phi i32 [ %.pre61, %for.cond6.preheader.lr.ph ], [ %24, %for.inc25 ]
  %indvars.iv56 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc25 ]
  %cmp748 = icmp sgt i32 %10, -2
  br i1 %cmp748, label %for.body8.lr.ph, label %for.inc25

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %11 = load float*** %arrayidx, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds float** %11, i64 %indvars.iv56
  %12 = load float** %arrayidx11, align 8, !tbaa !4
  br label %for.body8

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next, %for.body8 ]
  %arrayidx12 = getelementptr inbounds float* %12, i64 %indvars.iv
  %13 = load float* %arrayidx12, align 4, !tbaa !0
  %14 = load i32* %la12, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv58 to i32
  %mul = mul nsw i32 %14, %15
  %16 = load i32* %la2, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv56 to i32
  %mul13 = mul nsw i32 %16, %17
  %18 = trunc i64 %indvars.iv to i32
  %add14 = add i32 %mul, %18
  %add15 = add i32 %add14, %mul13
  %idxprom16 = sext i32 %add15 to i64
  %re = getelementptr inbounds %struct.t_fft_c* %6, i64 %idxprom16, i32 0
  %19 = load float* %re, align 4, !tbaa !0
  %mul18 = fmul float %13, %19
  store float %mul18, float* %re, align 4, !tbaa !0
  %im = getelementptr inbounds %struct.t_fft_c* %6, i64 %idxprom16, i32 1
  %20 = load float* %im, align 4, !tbaa !0
  %mul21 = fmul float %13, %20
  store float %mul21, float* %im, align 4, !tbaa !0
  %arrayidx23 = getelementptr inbounds i32* %2, i64 %idxprom16
  %21 = load i32* %arrayidx23, align 4, !tbaa !3
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %22 = load i32* %nz, align 4, !tbaa !3
  %div = sdiv i32 %22, 2
  %cmp7 = icmp slt i32 %18, %div
  br i1 %cmp7, label %for.body8, label %for.cond6.for.inc25_crit_edge

for.cond6.for.inc25_crit_edge:                    ; preds = %for.body8
  %.pre62 = load i32* %ny, align 4, !tbaa !3
  br label %for.inc25

for.inc25:                                        ; preds = %for.cond6.for.inc25_crit_edge, %for.cond6.preheader
  %23 = phi i32 [ %.pre62, %for.cond6.for.inc25_crit_edge ], [ %9, %for.cond6.preheader ]
  %24 = phi i32 [ %22, %for.cond6.for.inc25_crit_edge ], [ %10, %for.cond6.preheader ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %25 = trunc i64 %indvars.iv.next57 to i32
  %cmp4 = icmp slt i32 %25, %23
  br i1 %cmp4, label %for.cond6.preheader, label %for.cond3.for.inc28_crit_edge

for.cond3.for.inc28_crit_edge:                    ; preds = %for.inc25
  %.pre60 = load i32* %nx, align 4, !tbaa !3
  br label %for.inc28

for.inc28:                                        ; preds = %for.cond3.for.inc28_crit_edge, %for.cond3.preheader
  %26 = phi i32 [ %.pre60, %for.cond3.for.inc28_crit_edge ], [ %7, %for.cond3.preheader ]
  %27 = phi i32 [ %23, %for.cond3.for.inc28_crit_edge ], [ %8, %for.cond3.preheader ]
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %28 = trunc i64 %indvars.iv.next59 to i32
  %cmp2 = icmp slt i32 %28, %26
  br i1 %cmp2, label %for.cond3.preheader, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.inc28, %entry, %lor.lhs.false
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 427, i8* %call) #4
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @solve_pppm(%struct._IO_FILE* nocapture %fp, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** nocapture %ghat, float* nocapture %box, i32 %bVerbose, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 -1, %struct.t_commrec* %cr) #4
  tail call void @convolution(%struct._IO_FILE* undef, i32 undef, %struct.t_fftgrid* %grid, float*** %ghat, %struct.t_commrec* %cr) #5
  %tobool = icmp eq i32 %bVerbose, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 1, %struct.t_commrec* %cr) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %nxyz = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 11
  %0 = load i32* %nxyz, align 4, !tbaa !3
  %conv = sitofp i32 %0 to double
  %conv1 = sitofp i32 %0 to float
  %conv2 = fpext float %conv1 to double
  %call = tail call double @log(double %conv2) #4
  %mul = fmul double %conv, %call
  %div = fdiv double %mul, 0x3FE62E42FEFA39EF
  %conv4 = fptosi double %div to i32
  %mul5 = shl nsw i32 %conv4, 1
  %conv6 = sitofp i32 %mul5 to double
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84
  %1 = load double* %arrayidx, align 8, !tbaa !5
  %add = fadd double %1, %conv6
  store double %add, double* %arrayidx, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 85
  %2 = load double* %arrayidx9, align 8, !tbaa !5
  %add10 = fadd double %conv, %2
  store double %add10, double* %arrayidx9, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind optsize uwtable
define void @init_pppm(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_nsborder* nocapture %nsb, i32 %bVerbose, i32 %bOld, float* %box, i8* %ghatfn, %struct.t_inputrec* nocapture %ir) #0 {
entry:
  %porder = alloca i32, align 4
  %grids = alloca [3 x i32], align 4
  %r1 = alloca float, align 4
  %rc = alloca float, align 4
  %spacing = alloca [3 x float], align 4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0)) #4
  %cmp = icmp eq %struct.t_commrec* %cr, null
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !3
  %cmp1 = icmp sgt i32 %0, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %log)
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then, %if.then2
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %log)
  %call5 = call i32 @fexist(i8* %ghatfn) #4
  %tobool = icmp eq i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 2), align 4, !tbaa !0
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 1), align 4, !tbaa !0
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), align 4, !tbaa !0
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %3 = load i32* %nkx, align 4, !tbaa !3
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %4 = load i32* %nky, align 4, !tbaa !3
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %5 = load i32* %nkz, align 4, !tbaa !3
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %log)
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #4
  %cmp9 = icmp slt i32 %3, 4
  %cmp10 = icmp slt i32 %4, 4
  %or.cond = or i1 %cmp9, %cmp10
  %cmp12 = icmp slt i32 %5, 4
  %or.cond134 = or i1 %or.cond, %cmp12
  br i1 %or.cond134, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0)) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.then13
  %call15 = call float*** @mk_rgrid(i32 %3, i32 %4, i32 %5) #4
  store float*** %call15, float**** @ghat, align 8, !tbaa !4
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %7 = load float* %rcoulomb_switch, align 4, !tbaa !0
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %8 = load float* %rcoulomb, align 4, !tbaa !0
  call void @mk_ghat(%struct._IO_FILE* null, i32 %3, i32 %4, i32 %5, float*** %call15, float* %box, float %7, float %8, i32 1, i32 %bOld) #4
  %tobool16 = icmp eq i32 %bVerbose, 0
  br i1 %tobool16, label %if.end70, label %if.then17

if.then17:                                        ; preds = %if.end14
  %9 = load float**** @ghat, align 8, !tbaa !4
  call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i32 %3, i32 %4, i32 %5, float* %box, float*** %9) #4
  br label %if.end70

if.else:                                          ; preds = %if.end3
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([31 x i8]* @.str12, i64 0, i64 0), i8* %ghatfn) #4
  %arraydecay = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0
  %call21 = call float*** @rd_ghat(%struct._IO_FILE* %log, i8* %ghatfn, i32* %arraydecay, float* %arraydecay20, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), i32* %porder, float* %r1, float* %rc) #4
  store float*** %call21, float**** @ghat, align 8, !tbaa !4
  %11 = load float* %r1, align 4, !tbaa !0
  %rcoulomb_switch22 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %12 = load float* %rcoulomb_switch22, align 4, !tbaa !0
  %sub = fsub float %11, %12
  %fabsf = call float @fabsf(float %sub) #6
  %cmp24 = fcmp ogt float %fabsf, 0x3EE4F8B580000000
  br i1 %cmp24, label %if.else.if.then33_crit_edge, label %lor.lhs.false26

if.else.if.then33_crit_edge:                      ; preds = %if.else
  %rcoulomb36.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %.pre = load float* %rcoulomb36.phi.trans.insert, align 4, !tbaa !0
  %.pre136 = load float* %rc, align 4, !tbaa !0
  br label %if.then33

lor.lhs.false26:                                  ; preds = %if.else
  %13 = load float* %rc, align 4, !tbaa !0
  %rcoulomb27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %14 = load float* %rcoulomb27, align 4, !tbaa !0
  %sub28 = fsub float %13, %14
  %fabsf132 = call float @fabsf(float %sub28) #6
  %cmp31 = fcmp ogt float %fabsf132, 0x3EE4F8B580000000
  br i1 %cmp31, label %if.then33, label %for.body

if.then33:                                        ; preds = %if.else.if.then33_crit_edge, %lor.lhs.false26
  %15 = phi float [ %.pre136, %if.else.if.then33_crit_edge ], [ %13, %lor.lhs.false26 ]
  %16 = phi float [ %.pre, %if.else.if.then33_crit_edge ], [ %14, %lor.lhs.false26 ]
  %conv35 = fpext float %12 to double
  %conv37 = fpext float %16 to double
  %conv38 = fpext float %11 to double
  %conv39 = fpext float %15 to double
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([71 x i8]* @.str13, i64 0, i64 0), double %conv35, double %conv37, double %conv38, double %conv39) #4
  %call41 = call i32 @fflush(%struct._IO_FILE* %log) #4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), i8* %ghatfn) #4
  br label %for.body

for.body:                                         ; preds = %lor.lhs.false26, %if.then33, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then33 ], [ 0, %lor.lhs.false26 ]
  %arrayidx = getelementptr inbounds float* %box, i64 %indvars.iv
  %17 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx46 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 %indvars.iv
  %18 = load i32* %arrayidx46, align 4, !tbaa !3
  %conv47 = sitofp i32 %18 to float
  %arrayidx49 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv
  %19 = load float* %arrayidx49, align 4, !tbaa !0
  %mul = fmul float %conv47, %19
  %sub50 = fsub float %17, %mul
  %fabsf133 = call float @fabsf(float %sub50) #6
  %cmp53 = fcmp ogt float %fabsf133, 0x3EE4F8B580000000
  br i1 %cmp53, label %if.then55, label %for.inc

if.then55:                                        ; preds = %for.body
  call void @pr_rvec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), float* %box, i32 3) #4
  call void @pr_rvec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), float* %arraydecay20, i32 3) #4
  call void @pr_ivec(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i32* %arraydecay, i32 3) #4
  %call58 = call i32 @fflush(%struct._IO_FILE* %log) #4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i8* %ghatfn) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %20 = load i32* %porder, align 4, !tbaa !3
  %cmp60 = icmp eq i32 %20, 2
  br i1 %cmp60, label %if.end63, label %if.then62

if.then62:                                        ; preds = %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), i32 %20, i8* %ghatfn) #4
  br label %if.end63

if.end63:                                         ; preds = %for.end, %if.then62
  %21 = load i32* %arraydecay, align 4, !tbaa !3
  %arrayidx65 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 1
  %22 = load i32* %arrayidx65, align 4, !tbaa !3
  %arrayidx66 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 2
  %23 = load i32* %arrayidx66, align 4, !tbaa !3
  %tobool67 = icmp eq i32 %bVerbose, 0
  br i1 %tobool67, label %if.end70, label %if.then68

if.then68:                                        ; preds = %if.end63
  %24 = load float**** @ghat, align 8, !tbaa !4
  call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i32 %21, i32 %22, i32 %23, float* %box, float*** %24) #4
  br label %if.end70

if.end70:                                         ; preds = %if.end63, %if.end14, %if.then68, %if.then17
  %ny.0 = phi i32 [ %22, %if.then68 ], [ %22, %if.end63 ], [ %4, %if.then17 ], [ %4, %if.end14 ]
  %nz.0 = phi i32 [ %23, %if.then68 ], [ %23, %if.end63 ], [ %5, %if.then17 ], [ %5, %if.end14 ]
  %nx.0 = phi i32 [ %21, %if.then68 ], [ %21, %if.end63 ], [ %3, %if.then17 ], [ %3, %if.end14 ]
  %nnodes71 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %25 = load i32* %nnodes71, align 4, !tbaa !3
  %cmp72 = icmp sgt i32 %25, 1
  br i1 %cmp72, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end70
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %26 = load i32* %nthreads, align 4, !tbaa !3
  %cmp74 = icmp sgt i32 %26, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end70
  %27 = phi i1 [ true, %if.end70 ], [ %cmp74, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32
  %bOptFFT = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %28 = load i32* %bOptFFT, align 4, !tbaa !3
  %call76 = call %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE* %log, i32 %lor.ext, i32 %nx.0, i32 %ny.0, i32 %nz.0, i32 %28) #4
  store %struct.t_fftgrid* %call76, %struct.t_fftgrid** @grid, align 8, !tbaa !4
  ret void
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #2

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #2

; Function Attrs: optsize
declare void @mk_ghat(%struct._IO_FILE*, i32, i32, i32, float***, float*, float, float, i32, i32) #2

; Function Attrs: optsize
declare void @pr_scalar_gk(i8*, i32, i32, i32, float*, float***) #2

; Function Attrs: optsize
declare float*** @rd_ghat(%struct._IO_FILE*, i8*, i32*, float*, float*, i32*, float*, float*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @pr_rvec(%struct._IO_FILE*, i32, i8*, float*, i32) #2

; Function Attrs: optsize
declare void @pr_ivec(%struct._IO_FILE*, i32, i8*, i32*, i32) #2

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define float @do_pppm(%struct._IO_FILE* nocapture %log, i32 %bVerbose, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* nocapture %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %2 = load i32* %arrayidx3, align 4, !tbaa !3
  %3 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  tail call void @clear_fftgrid(%struct.t_fftgrid* %3) #4
  %4 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  tail call void @spread_q(%struct._IO_FILE* %log, i32 undef, i32 %1, i32 %2, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %4, %struct.t_nrnb* %nrnb) #5
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %5 = load i32* %nnodes, align 4, !tbaa !3
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %6 = load i32* %nthreads, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %6, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %7, i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  %9 = load float**** @ghat, align 8, !tbaa !4
  tail call void @solve_pppm(%struct._IO_FILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %8, float*** %9, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #5
  %10 = load i32* %nnodes, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %10, 1
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %nthreads8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %11 = load i32* %nthreads8, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %11, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false7, %if.end
  %12 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %12, i32 0) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false7
  %13 = load %struct.t_fftgrid** @grid, align 8, !tbaa !4
  %call = tail call fastcc float @gather_f(%struct._IO_FILE* %log, i32 %1, i32 %2, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %13, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #5
  ret float %call
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #2

; Function Attrs: optsize
declare void @sum_qgrid(%struct.t_commrec*, %struct.t_nsborder*, %struct.t_fftgrid*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @gather_f(%struct._IO_FILE* nocapture %log, i32 %start, i32 %nr, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* nocapture %box, float* nocapture %pot, %struct.t_fftgrid* %grid, float* nocapture %beta, %struct.t_nrnb* nocapture %nrnb) #0 {
entry:
  %ixyz = alloca [3 x i32], align 4
  %invh = alloca [3 x float], align 4
  %c1 = alloca [3 x float], align 4
  %c2 = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixw = alloca [7 x i32], align 16
  %iyw = alloca [7 x i32], align 16
  %izw = alloca [7 x i32], align 16
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %0 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %0) #1
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  %1 = load i32* %nx, align 4, !tbaa !3
  %2 = load i32* %ny, align 4, !tbaa !3
  %3 = load i32* %nz, align 4, !tbaa !3
  %arraydecay = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %conv.i = sitofp i32 %1 to float
  %4 = load float* %box, align 4, !tbaa !0
  %div.i = fdiv float %conv.i, %4
  store float %div.i, float* %arraydecay, align 4, !tbaa !0
  %conv2.i = sitofp i32 %2 to float
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1
  %5 = load float* %arrayidx3.i, align 4, !tbaa !0
  %div4.i = fdiv float %conv2.i, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %div4.i, float* %arrayidx5.i, align 4, !tbaa !0
  %conv6.i = sitofp i32 %3 to float
  %arrayidx7.i = getelementptr inbounds float* %box, i64 2
  %6 = load float* %arrayidx7.i, align 4, !tbaa !0
  %div8.i = fdiv float %conv6.i, %6
  %arrayidx9.i = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %div8.i, float* %arrayidx9.i, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %7 = phi float [ %div.i, %entry ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv30 = phi i64 [ 0, %entry ], [ %indvars.iv.next31, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds float* %beta, i64 %indvars.iv30
  %8 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %8 to double
  %div = fmul double %conv, 5.000000e-01
  %conv3 = fpext float %7 to double
  %mul = fmul double %div, %conv3
  %conv4 = fptrunc double %mul to float
  %arrayidx6 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv30
  store float %conv4, float* %arrayidx6, align 4, !tbaa !0
  %sub = fsub double 1.000000e+00, %conv
  %div10 = fmul double %sub, 2.500000e-01
  %mul14 = fmul double %conv3, %div10
  %conv15 = fptrunc double %mul14 to float
  %arrayidx17 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv30
  store float %conv15, float* %arrayidx17, align 4, !tbaa !0
  %indvars.iv.next31 = add i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.next31 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, 3
  br i1 %exitcond33, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next31
  %.pre = load float* %arrayidx2.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body
  %ixw14 = bitcast [7 x i32]* %ixw to i8*
  %iyw17 = bitcast [7 x i32]* %iyw to i8*
  %izw21 = bitcast [7 x i32]* %izw to i8*
  %arrayidx18 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0
  %9 = load float* %arrayidx18, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1
  %10 = load float* %arrayidx19, align 4, !tbaa !0
  %arrayidx20 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2
  %11 = load float* %arrayidx20, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0
  %12 = load float* %arrayidx21, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1
  %13 = load float* %arrayidx22, align 4, !tbaa !0
  %arrayidx23 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2
  %14 = load float* %arrayidx23, align 4, !tbaa !0
  %.b = load i1* @gather_f.bFirst, align 1
  br i1 %.b, label %for.cond75.preheader, label %if.then

if.then:                                          ; preds = %for.end
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #4
  %15 = load float* %beta, align 4, !tbaa !0
  %conv25 = fpext float %15 to double
  %arrayidx26 = getelementptr inbounds float* %beta, i64 1
  %16 = load float* %arrayidx26, align 4, !tbaa !0
  %conv27 = fpext float %16 to double
  %arrayidx28 = getelementptr inbounds float* %beta, i64 2
  %17 = load float* %arrayidx28, align 4, !tbaa !0
  %conv29 = fpext float %17 to double
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), double %conv25, double %conv27, double %conv29) #4
  %conv32 = fpext float %9 to double
  %conv34 = fpext float %10 to double
  %conv36 = fpext float %11 to double
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), double %conv32, double %conv34, double %conv36) #4
  %conv39 = fpext float %12 to double
  %conv41 = fpext float %13 to double
  %conv43 = fpext float %14 to double
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str24, i64 0, i64 0), double %conv39, double %conv41, double %conv43) #4
  %conv46 = fpext float %div.i to double
  %conv48 = fpext float %div4.i to double
  %conv50 = fpext float %div8.i to double
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %conv46, double %conv48, double %conv50) #4
  %18 = load i32* %nx, align 4, !tbaa !3
  %19 = load i32* %ny, align 4, !tbaa !3
  %20 = load i32* %nz, align 4, !tbaa !3
  call fastcc void @calc_nxyz(i32 %18, i32 %19, i32 %20, i32** @gather_f.nnx, i32** @gather_f.nny, i32** @gather_f.nnz) #5
  br label %for.body55

for.body55:                                       ; preds = %for.body55, %if.then
  %indvars.iv25 = phi i64 [ 0, %if.then ], [ %indvars.iv.next26, %for.body55 ]
  %21 = trunc i64 %indvars.iv25 to i32
  %div56 = sdiv i32 %21, 9
  %add = add nsw i32 %div56, 2
  %22 = mul nsw i64 %indvars.iv25, 3
  %arrayidx59 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %22
  store i32 %add, i32* %arrayidx59, align 4, !tbaa !3
  %div60 = sdiv i32 %21, 3
  %rem = srem i32 %div60, 3
  %add61 = add nsw i32 %rem, 2
  %23 = add nsw i64 %22, 1
  %arrayidx65 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %23
  store i32 %add61, i32* %arrayidx65, align 4, !tbaa !3
  %rem66 = srem i32 %21, 3
  %add67 = add nsw i32 %rem66, 2
  %24 = add nsw i64 %22, 2
  %arrayidx71 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %24
  store i32 %add67, i32* %arrayidx71, align 4, !tbaa !3
  %indvars.iv.next26 = add i64 %indvars.iv25, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next26 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 27
  br i1 %exitcond, label %for.end74, label %for.body55

for.end74:                                        ; preds = %for.body55
  store i1 true, i1* @gather_f.bFirst, align 1
  br label %for.cond75.preheader

for.cond75.preheader:                             ; preds = %for.end, %for.end74
  %add76 = add nsw i32 %nr, %start
  %cmp772 = icmp sgt i32 %nr, 0
  br i1 %cmp772, label %for.body79.lr.ph, label %for.end133

for.body79.lr.ph:                                 ; preds = %for.cond75.preheader
  %arraydecay84 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %arraydecay85 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %arrayidx106 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %arraydecay120 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0
  %arraydecay121 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0
  %arraydecay122 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0
  %25 = sext i32 %start to i64
  br label %for.body79

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv = phi i64 [ %25, %for.body79.lr.ph ], [ %indvars.iv.next, %for.body79 ]
  %energy.03 = phi float [ 0.000000e+00, %for.body79.lr.ph ], [ %add128, %for.body79 ]
  %26 = load i32* %nx, align 4, !tbaa !3
  %27 = load i32* %ny, align 4, !tbaa !3
  %28 = load i32* %nz, align 4, !tbaa !3
  %arraydecay82 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %29 = trunc i64 %indvars.iv to i32
  call void @calc_weights(i32 %29, i32 %26, i32 %27, i32 %28, float* %arraydecay82, float* undef, float* %arraydecay, i32* %arraydecay84, float* %arraydecay85) #5
  %30 = load i32* %arraydecay84, align 4, !tbaa !3
  %31 = load i32* %nx, align 4, !tbaa !3
  %32 = load i32** @gather_f.nnx, align 8, !tbaa !4
  %33 = load i32* %arrayidx98, align 4, !tbaa !3
  %34 = load i32* %ny, align 4, !tbaa !3
  %35 = load i32** @gather_f.nny, align 8, !tbaa !4
  %36 = load i32* %arrayidx106, align 4, !tbaa !3
  %37 = load i32* %nz, align 4, !tbaa !3
  %38 = load i32** @gather_f.nnz, align 8, !tbaa !4
  %39 = sext i32 %30 to i64
  %40 = sext i32 %31 to i64
  %41 = add i64 %39, %40
  %scevgep.sum = add i64 %41, -3
  %scevgep15 = getelementptr i32* %32, i64 %scevgep.sum
  %scevgep1516 = bitcast i32* %scevgep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw14, i8* %scevgep1516, i64 28, i32 4, i1 false)
  %42 = sext i32 %33 to i64
  %43 = sext i32 %34 to i64
  %44 = add i64 %42, %43
  %scevgep18.sum = add i64 %44, -3
  %scevgep19 = getelementptr i32* %35, i64 %scevgep18.sum
  %scevgep1920 = bitcast i32* %scevgep19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw17, i8* %scevgep1920, i64 28, i32 4, i1 false)
  %45 = sext i32 %36 to i64
  %46 = sext i32 %37 to i64
  %47 = add i64 %45, %46
  %scevgep22.sum = add i64 %47, -3
  %scevgep23 = getelementptr i32* %38, i64 %scevgep22.sum
  %scevgep2324 = bitcast i32* %scevgep23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw21, i8* %scevgep2324, i64 28, i32 4, i1 false)
  %arrayidx118 = getelementptr inbounds float* %charge, i64 %indvars.iv
  %48 = load float* %arrayidx118, align 4, !tbaa !0
  %49 = load i32* %la2, align 4, !tbaa !3
  %50 = load i32* %la12, align 4, !tbaa !3
  %arraydecay125 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %51 = load float** %ptr, align 8, !tbaa !4
  %call126 = call float @gather_inner(i32* getelementptr inbounds ([81 x i32]* @gather_f.JCXYZ, i64 0, i64 0), float* %arraydecay85, i32* %arraydecay120, i32* %arraydecay121, i32* %arraydecay122, i32 %49, i32 %50, float %9, float %10, float %11, float %12, float %13, float %14, float %48, float* %arraydecay125, float* %51) #5
  %mul127 = fmul float %48, %call126
  %add128 = fadd float %energy.03, %mul127
  %arrayidx130 = getelementptr inbounds float* %pot, i64 %indvars.iv
  store float %call126, float* %arrayidx130, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %52 = trunc i64 %indvars.iv.next to i32
  %cmp77 = icmp slt i32 %52, %add76
  br i1 %cmp77, label %for.body79, label %for.cond75.for.end133_crit_edge

for.cond75.for.end133_crit_edge:                  ; preds = %for.body79
  %phitmp = fmul float %add128, 5.000000e-01
  br label %for.end133

for.end133:                                       ; preds = %for.cond75.for.end133_crit_edge, %for.cond75.preheader
  %energy.0.lcssa = phi float [ %phitmp, %for.cond75.for.end133_crit_edge ], [ 0.000000e+00, %for.cond75.preheader ]
  %mul134 = mul nsw i32 %nr, 27
  %conv135 = sitofp i32 %mul134 to double
  %arrayidx136 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82
  %53 = load double* %arrayidx136, align 8, !tbaa !5
  %add137 = fadd double %conv135, %53
  store double %add137, double* %arrayidx136, align 8, !tbaa !5
  %mul138 = mul nsw i32 %nr, 3
  %conv139 = sitofp i32 %mul138 to double
  %arrayidx141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %54 = load double* %arrayidx141, align 8, !tbaa !5
  %add142 = fadd double %conv139, %54
  store double %add142, double* %arrayidx141, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 108, i8* %0) #1
  ret float %energy.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @do_opt_pppm(%struct._IO_FILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, float* %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nrnb* nocapture %nrnb, float* nocapture %beta, %struct.t_fftgrid* %grid, i32 %bOld) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %log)
  %nkx = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %1 = load i32* %nkx, align 4, !tbaa !3
  %nky = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %2 = load i32* %nky, align 4, !tbaa !3
  %nkz = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %3 = load i32* %nkz, align 4, !tbaa !3
  %call1 = tail call float*** @mk_rgrid(i32 %1, i32 %2, i32 %3) #4
  %rcoulomb_switch = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %4 = load float* %rcoulomb_switch, align 4, !tbaa !0
  %rcoulomb = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %5 = load float* %rcoulomb, align 4, !tbaa !0
  tail call void @mk_ghat(%struct._IO_FILE* null, i32 %1, i32 %2, i32 %3, float*** %call1, float* %box, float %4, float %5, i32 1, i32 %bOld) #4
  tail call void @clear_fftgrid(%struct.t_fftgrid* %grid) #4
  tail call void @spread_q(%struct._IO_FILE* %log, i32 undef, i32 0, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %grid, %struct.t_nrnb* %nrnb) #5
  tail call void @solve_pppm(%struct._IO_FILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** %call1, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #5
  %call2 = tail call fastcc float @gather_f(%struct._IO_FILE* %log, i32 0, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %grid, float* %beta, %struct.t_nrnb* %nrnb) #5
  tail call void @free_rgrid(float*** %call1, i32 %1, i32 %2) #4
  ret float %call2
}

; Function Attrs: optsize
declare void @free_rgrid(float***, i32, i32) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
