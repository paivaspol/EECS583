; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_fft_c = type { float, float }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }

@stdlog = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"%s = %d should be in 0 .. %d [FILE %s, LINE %d]\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"Parallel grid summation requires MPI and FFTW.\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"Parallel PME attempted without MPI and FFTW\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pme.c\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"ddata\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"bsp_data\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"PME used, but GROMACS was compiled without FFTW support!\0A\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"Will do PME sum in reciprocal space.\0A\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"Essman95a\00", align 1
@.str10 = private unnamed_addr constant [65 x i8] c"Using the Ewald3DC correction for systems with a slab geometry.\0A\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"In-Chul99a\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Parallelized PME sum used.\0A\00", align 1
@.str13 = private unnamed_addr constant [69 x i8] c"Warning: For load balance, fourier_nx should be divisible by NNODES\0A\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"bsp_mod[XX]\00", align 1
@bsp_mod = internal global [3 x float*] zeroinitializer, align 16
@.str15 = private unnamed_addr constant [12 x i8] c"bsp_mod[YY]\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"bsp_mod[ZZ]\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"theta[i]\00", align 1
@theta = internal global [3 x float*] zeroinitializer, align 16
@.str18 = private unnamed_addr constant [10 x i8] c"dtheta[i]\00", align 1
@dtheta = internal global [3 x float*] zeroinitializer, align 16
@.str19 = private unnamed_addr constant [7 x i8] c"fractx\00", align 1
@fractx = internal unnamed_addr global [3 x float]* null, align 8
@.str20 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@idx = internal unnamed_addr global [3 x i32]* null, align 8
@.str21 = private unnamed_addr constant [4 x i8] c"nnx\00", align 1
@nnx = internal unnamed_addr global i32* null, align 8
@.str22 = private unnamed_addr constant [4 x i8] c"nny\00", align 1
@nny = internal unnamed_addr global i32* null, align 8
@.str23 = private unnamed_addr constant [4 x i8] c"nnz\00", align 1
@nnz = internal unnamed_addr global i32* null, align 8
@grid = internal unnamed_addr global %struct.t_fftgrid* null, align 8
@recipbox = internal global [3 x [3 x float]] zeroinitializer, align 16
@do_pme.energy = internal unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: nounwind optsize uwtable
define void @my_range_check(i8* %s, i32 %i, i32 %nr, i8* %file, i32 %line) #0 {
entry:
  %cmp = icmp sgt i32 %i, -1
  %cmp1 = icmp slt i32 %i, %nr
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %sub = add nsw i32 %nr, -1
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i8* %s, i32 %i, i32 %sub, i8* %file, i32 %line) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @calc_recipbox([3 x float]* nocapture %box, [3 x float]* nocapture %recipbox) #0 {
entry:
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %1 = load float* %arrayidx3, align 4, !tbaa !3
  %mul = fmul float %0, %1
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %2 = load float* %arrayidx5, align 4, !tbaa !3
  %mul6 = fmul float %mul, %2
  %conv7 = fdiv float 1.000000e+00, %mul6
  %mul12 = fmul float %1, %2
  %mul13 = fmul float %mul12, %conv7
  %arrayidx15 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  store float %mul13, float* %arrayidx15, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx19, align 4, !tbaa !3
  %arrayidx21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %3 = load float* %arrayidx21, align 4, !tbaa !3
  %4 = load float* %arrayidx5, align 4, !tbaa !3
  %5 = fmul float %3, %4
  %6 = fmul float %conv7, %5
  %mul25 = fsub float -0.000000e+00, %6
  %arrayidx27 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  store float %mul25, float* %arrayidx27, align 4, !tbaa !3
  %7 = load float* %arrayidx1, align 4, !tbaa !3
  %8 = load float* %arrayidx5, align 4, !tbaa !3
  %mul32 = fmul float %7, %8
  %mul33 = fmul float %conv7, %mul32
  %arrayidx35 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  store float %mul33, float* %arrayidx35, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 2
  store float 0.000000e+00, float* %arrayidx37, align 4, !tbaa !3
  %9 = load float* %arrayidx21, align 4, !tbaa !3
  %arrayidx41 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %10 = load float* %arrayidx41, align 4, !tbaa !3
  %mul42 = fmul float %9, %10
  %11 = load float* %arrayidx3, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %12 = load float* %arrayidx46, align 4, !tbaa !3
  %mul47 = fmul float %11, %12
  %sub48 = fsub float %mul42, %mul47
  %mul49 = fmul float %conv7, %sub48
  %arrayidx51 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  store float %mul49, float* %arrayidx51, align 4, !tbaa !3
  %13 = load float* %arrayidx41, align 4, !tbaa !3
  %14 = load float* %arrayidx1, align 4, !tbaa !3
  %15 = fmul float %13, %14
  %16 = fmul float %conv7, %15
  %mul58 = fsub float -0.000000e+00, %16
  %arrayidx60 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  store float %mul58, float* %arrayidx60, align 4, !tbaa !3
  %17 = load float* %arrayidx1, align 4, !tbaa !3
  %18 = load float* %arrayidx3, align 4, !tbaa !3
  %mul65 = fmul float %17, %18
  %mul66 = fmul float %conv7, %mul65
  %arrayidx68 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  store float %mul66, float* %arrayidx68, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_idx(i32 %natoms, [3 x float]* nocapture %recipbox, [3 x float]* nocapture %x, [3 x float]* nocapture %fractx, [3 x i32]* nocapture %idx, i32 %nx, i32 %ny, i32 %nz, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  %arrayidx1 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %1 = load float* %arrayidx3, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %2 = load float* %arrayidx5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %3 = load float* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %4 = load float* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %5 = load float* %arrayidx11, align 4, !tbaa !3
  %cmp95 = icmp sgt i32 %natoms, 0
  br i1 %cmp95, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = sitofp i32 %nx to float
  %conv25 = sitofp i32 %ny to float
  %conv34 = sitofp i32 %nz to float
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %arraydecay15 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 0
  %6 = load float* %arraydecay, align 4, !tbaa !3
  %mul = fmul float %0, %6
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %7 = load float* %arrayidx18, align 4, !tbaa !3
  %mul19 = fmul float %1, %7
  %add = fadd float %mul, %mul19
  %arrayidx20 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %8 = load float* %arrayidx20, align 4, !tbaa !3
  %mul21 = fmul float %3, %8
  %add22 = fadd float %add, %mul21
  %mul23 = fmul float %conv, %add22
  %add24 = fadd float %conv, %mul23
  %mul28 = fmul float %2, %7
  %mul30 = fmul float %4, %8
  %add31 = fadd float %mul28, %mul30
  %mul32 = fmul float %conv25, %add31
  %add33 = fadd float %conv25, %mul32
  %mul37 = fmul float %5, %8
  %mul38 = fmul float %conv34, %mul37
  %add39 = fadd float %conv34, %mul38
  %conv40 = fptosi float %add24 to i32
  %conv41 = fptosi float %add33 to i32
  %conv42 = fptosi float %add39 to i32
  %conv43 = sitofp i32 %conv40 to float
  %sub = fsub float %add24, %conv43
  %arrayidx46 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 0
  store float %sub, float* %arrayidx46, align 4, !tbaa !3
  %conv47 = sitofp i32 %conv41 to float
  %sub48 = fsub float %add33, %conv47
  %arrayidx51 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 1
  store float %sub48, float* %arrayidx51, align 4, !tbaa !3
  %conv52 = sitofp i32 %conv42 to float
  %sub53 = fsub float %add39, %conv52
  %arrayidx56 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 2
  store float %sub53, float* %arrayidx56, align 4, !tbaa !3
  %idxprom57 = sext i32 %conv40 to i64
  %arrayidx58 = getelementptr inbounds i32* %nnx, i64 %idxprom57
  %9 = load i32* %arrayidx58, align 4, !tbaa !4
  store i32 %9, i32* %arraydecay15, align 4, !tbaa !4
  %idxprom60 = sext i32 %conv41 to i64
  %arrayidx61 = getelementptr inbounds i32* %nny, i64 %idxprom60
  %10 = load i32* %arrayidx61, align 4, !tbaa !4
  %arrayidx62 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 1
  store i32 %10, i32* %arrayidx62, align 4, !tbaa !4
  %idxprom63 = sext i32 %conv42 to i64
  %arrayidx64 = getelementptr inbounds i32* %nnz, i64 %idxprom63
  %11 = load i32* %arrayidx64, align 4, !tbaa !4
  %arrayidx65 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 2
  store i32 %11, i32* %arrayidx65, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @sum_qgrid(%struct.t_commrec* nocapture %cr, %struct.t_nsborder* nocapture %nsb, %struct.t_fftgrid* nocapture %grid, i32 %bForward) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @spread_q_bsplines(%struct.t_fftgrid* %grid, [3 x i32]* nocapture %idx, float* nocapture %charge, float** nocapture %theta, i32 %nr, i32 %order, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  %ptr = alloca float*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  call void @clear_fftgrid(%struct.t_fftgrid* %grid) #4
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  %0 = load float** %theta, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds float** %theta, i64 1
  %1 = load float** %arrayidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds float** %theta, i64 2
  %2 = load float** %arrayidx17, align 8, !tbaa !0
  %cmp109 = icmp sgt i32 %nr, 0
  br i1 %cmp109, label %for.body.lr.ph, label %for.end71

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext2 = sext i32 %order to i64
  %3 = load i32* %nz, align 4, !tbaa !4
  %4 = load i32* %ny, align 4, !tbaa !4
  %5 = load i32* %nx, align 4, !tbaa !4
  %idx.ext10 = sext i32 %3 to i64
  %idx.ext4 = sext i32 %4 to i64
  %idx.ext = sext i32 %5 to i64
  %add.ptr.sum = sub i64 1, %idx.ext2
  %add.ptr1.sum = add i64 %add.ptr.sum, %idx.ext
  %add.ptr6.sum = add i64 %add.ptr.sum, %idx.ext4
  %add.ptr12.sum = add i64 %add.ptr.sum, %idx.ext10
  %6 = load i32* %la12, align 4, !tbaa !4
  %7 = load i32* %la2, align 4, !tbaa !4
  %8 = load float** %ptr, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc69, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.inc69 ]
  %indvars.iv119 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next120, %for.inc69 ]
  %9 = sext i32 %indvars.iv119 to i64
  %arrayidx18 = getelementptr inbounds float* %charge, i64 %indvars.iv124
  %10 = load float* %arrayidx18, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %10) #5
  %11 = fpext float %fabsf to double
  %cmp21 = fcmp ogt double %11, 1.200000e-38
  br i1 %cmp21, label %if.then, label %for.inc69

if.then:                                          ; preds = %for.body
  %12 = trunc i64 %indvars.iv124 to i32
  %mul = mul nsw i32 %12, %order
  %add = add nsw i32 %mul, %order
  %cmp29106 = icmp sgt i32 %order, 0
  br i1 %cmp29106, label %for.body31.lr.ph, label %for.inc69

for.body31.lr.ph:                                 ; preds = %if.then
  %arraydecay = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 0
  %13 = load i32* %arraydecay, align 4, !tbaa !4
  %idx.ext26 = sext i32 %13 to i64
  %add.ptr3.sum = add i64 %add.ptr1.sum, %idx.ext26
  %arrayidx25 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 2
  %arrayidx24 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv124, i64 1
  %add.ptr27 = getelementptr inbounds i32* %nnx, i64 %add.ptr3.sum
  %14 = load i32* %arrayidx25, align 4, !tbaa !4
  %15 = load i32* %arrayidx24, align 4, !tbaa !4
  %idx.ext32 = sext i32 %15 to i64
  %add.ptr9.sum = add i64 %add.ptr6.sum, %idx.ext32
  %add.ptr33 = getelementptr inbounds i32* %nny, i64 %add.ptr9.sum
  %idx.ext41 = sext i32 %14 to i64
  %add.ptr15.sum = add i64 %add.ptr12.sum, %idx.ext41
  %add.ptr42 = getelementptr inbounds i32* %nnz, i64 %add.ptr15.sum
  br label %for.body40.lr.ph

for.body40.lr.ph:                                 ; preds = %for.inc65, %for.body31.lr.ph
  %indvars.iv121 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next122, %for.inc65 ]
  %i0.0108 = phi i32* [ %add.ptr27, %for.body31.lr.ph ], [ %incdec.ptr67, %for.inc65 ]
  %ithx.0107 = phi i32 [ %mul, %for.body31.lr.ph ], [ %inc66, %for.inc65 ]
  %arrayidx35 = getelementptr inbounds float* %0, i64 %indvars.iv121
  %16 = load float* %arrayidx35, align 4, !tbaa !3
  %mul36 = fmul float %10, %16
  %17 = load i32* %i0.0108, align 4, !tbaa !4
  %mul46 = mul nsw i32 %6, %17
  br label %for.body53.lr.ph

for.body53.lr.ph:                                 ; preds = %for.inc61, %for.body40.lr.ph
  %indvars.iv116 = phi i64 [ %9, %for.body40.lr.ph ], [ %indvars.iv.next117, %for.inc61 ]
  %j0.0105 = phi i32* [ %add.ptr33, %for.body40.lr.ph ], [ %incdec.ptr63, %for.inc61 ]
  %ithy.0104 = phi i32 [ %mul, %for.body40.lr.ph ], [ %inc62, %for.inc61 ]
  %18 = load i32* %j0.0105, align 4, !tbaa !4
  %arrayidx44 = getelementptr inbounds float* %1, i64 %indvars.iv116
  %19 = load float* %arrayidx44, align 4, !tbaa !3
  %mul45 = fmul float %mul36, %19
  %mul47 = mul nsw i32 %7, %18
  %add48 = add nsw i32 %mul47, %mul46
  br label %for.body53

for.body53:                                       ; preds = %for.body53.lr.ph, %for.body53
  %indvars.iv111 = phi i64 [ %9, %for.body53.lr.ph ], [ %indvars.iv.next112, %for.body53 ]
  %k0.0102 = phi i32* [ %add.ptr42, %for.body53.lr.ph ], [ %incdec.ptr, %for.body53 ]
  %ithz.0101 = phi i32 [ %mul, %for.body53.lr.ph ], [ %inc, %for.body53 ]
  %20 = load i32* %k0.0102, align 4, !tbaa !4
  %arrayidx55 = getelementptr inbounds float* %2, i64 %indvars.iv111
  %21 = load float* %arrayidx55, align 4, !tbaa !3
  %mul56 = fmul float %mul45, %21
  %add57 = add nsw i32 %add48, %20
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds float* %8, i64 %idxprom58
  %22 = load float* %arrayidx59, align 4, !tbaa !3
  %add60 = fadd float %mul56, %22
  store float %add60, float* %arrayidx59, align 4, !tbaa !3
  %inc = add nsw i32 %ithz.0101, 1
  %incdec.ptr = getelementptr inbounds i32* %k0.0102, i64 1
  %cmp51 = icmp slt i32 %inc, %add
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  br i1 %cmp51, label %for.body53, label %for.inc61

for.inc61:                                        ; preds = %for.body53
  %inc62 = add nsw i32 %ithy.0104, 1
  %incdec.ptr63 = getelementptr inbounds i32* %j0.0105, i64 1
  %cmp38 = icmp slt i32 %inc62, %add
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  br i1 %cmp38, label %for.body53.lr.ph, label %for.inc65

for.inc65:                                        ; preds = %for.inc61
  %inc66 = add nsw i32 %ithx.0107, 1
  %incdec.ptr67 = getelementptr inbounds i32* %i0.0108, i64 1
  %cmp29 = icmp slt i32 %inc66, %add
  %indvars.iv.next122 = add i64 %indvars.iv121, 1
  br i1 %cmp29, label %for.body40.lr.ph, label %for.inc69

for.inc69:                                        ; preds = %if.then, %for.inc65, %for.body
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  %indvars.iv.next120 = add i32 %indvars.iv119, %order
  %lftr.wideiv = trunc i64 %indvars.iv.next125 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end71, label %for.body

for.end71:                                        ; preds = %for.inc69, %entry
  ret void
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #2

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #2

; Function Attrs: nounwind optsize uwtable
define float @solve_pme(%struct.t_fftgrid* %grid, float %ewaldcoeff, float %vol, float** nocapture %bsp_mod, [3 x float]* nocapture %recipbox, [3 x float]* nocapture %vir, %struct.t_commrec* nocapture %cr) #0 {
entry:
  %ptr = alloca %struct.t_fft_c*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %mul = fmul float %ewaldcoeff, %ewaldcoeff
  %conv = fpext float %mul to double
  %div = fdiv double 0x4023BD3CC9BE45DE, %conv
  %conv1 = fptrunc double %div to float
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %0 = load i32* %nnodes, align 4, !tbaa !4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %1 = load i32* %nthreads, align 4, !tbaa !4
  %cmp3 = icmp sgt i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp3, %lor.rhs ]
  %3 = bitcast %struct.t_fft_c** %ptr to float**
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %3) #4
  %arrayidx5 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %4 = load float* %arrayidx5, align 4, !tbaa !3
  %arrayidx7 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %5 = load float* %arrayidx7, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %6 = load float* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %7 = load float* %arrayidx11, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %8 = load float* %arrayidx13, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %9 = load float* %arrayidx15, align 4, !tbaa !3
  %10 = load i32* %nx, align 4, !tbaa !4
  %add = add nsw i32 %10, 1
  %div16 = sdiv i32 %add, 2
  %11 = load i32* %ny, align 4, !tbaa !4
  %add17 = add nsw i32 %11, 1
  %div18 = sdiv i32 %add17, 2
  %12 = load i32* %nz, align 4, !tbaa !4
  %div19 = sdiv i32 %12, 2
  br i1 %2, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %lor.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0)) #4
  br label %for.end160

if.end:                                           ; preds = %lor.end
  %cmp21319 = icmp sgt i32 %11, 0
  br i1 %cmp21319, label %for.body.lr.ph, label %for.end160

for.body.lr.ph:                                   ; preds = %if.end
  %conv30 = fpext float %vol to double
  %mul31 = fmul double %conv30, 0x400921FB54442D18
  %arrayidx32 = getelementptr inbounds float** %bsp_mod, i64 1
  %cmp71287 = icmp sgt i32 %12, -2
  %arrayidx97 = getelementptr inbounds float** %bsp_mod, i64 2
  br label %for.body

for.body:                                         ; preds = %for.inc158, %for.body.lr.ph
  %indvars.iv338 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next339, %for.inc158 ]
  %virzz.0326 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virzz.1.lcssa, %for.inc158 ]
  %viryz.0325 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %viryz.1.lcssa, %for.inc158 ]
  %viryy.0324 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %viryy.1.lcssa, %for.inc158 ]
  %virxz.0323 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxz.1.lcssa, %for.inc158 ]
  %virxy.0322 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxy.1.lcssa, %for.inc158 ]
  %virxx.0321 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %virxx.1.lcssa, %for.inc158 ]
  %energy.0320 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %energy.1.lcssa, %for.inc158 ]
  %13 = trunc i64 %indvars.iv338 to i32
  %cmp23 = icmp slt i32 %13, %div18
  br i1 %cmp23, label %if.end29, label %if.else27

if.else27:                                        ; preds = %for.body
  %14 = load i32* %ny, align 4, !tbaa !4
  %sub = sub nsw i32 %13, %14
  br label %if.end29

if.end29:                                         ; preds = %for.body, %if.else27
  %my.0.in = phi i32 [ %sub, %if.else27 ], [ %13, %for.body ]
  %my.0 = sitofp i32 %my.0.in to float
  %15 = load float** %arrayidx32, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds float* %15, i64 %indvars.iv338
  %16 = load float* %arrayidx33, align 4, !tbaa !3
  %conv34 = fpext float %16 to double
  %mul35 = fmul double %mul31, %conv34
  %conv36 = fptrunc double %mul35 to float
  %17 = load i32* %nx, align 4, !tbaa !4
  %cmp38303 = icmp sgt i32 %17, 0
  br i1 %cmp38303, label %for.body40.lr.ph, label %for.inc158

for.body40.lr.ph:                                 ; preds = %if.end29
  %mul51 = fmul float %6, %my.0
  %mul85 = fmul float %8, %my.0
  br label %for.body40

for.body40:                                       ; preds = %for.inc155, %for.body40.lr.ph
  %indvars.iv336 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next337, %for.inc155 ]
  %18 = phi i32 [ %17, %for.body40.lr.ph ], [ %37, %for.inc155 ]
  %virzz.1310 = phi float [ %virzz.0326, %for.body40.lr.ph ], [ %virzz.2.lcssa, %for.inc155 ]
  %viryz.1309 = phi float [ %viryz.0325, %for.body40.lr.ph ], [ %viryz.2.lcssa, %for.inc155 ]
  %viryy.1308 = phi float [ %viryy.0324, %for.body40.lr.ph ], [ %viryy.2.lcssa, %for.inc155 ]
  %virxz.1307 = phi float [ %virxz.0323, %for.body40.lr.ph ], [ %virxz.2.lcssa, %for.inc155 ]
  %virxy.1306 = phi float [ %virxy.0322, %for.body40.lr.ph ], [ %virxy.2.lcssa, %for.inc155 ]
  %virxx.1305 = phi float [ %virxx.0321, %for.body40.lr.ph ], [ %virxx.2.lcssa, %for.inc155 ]
  %energy.1304 = phi float [ %energy.0320, %for.body40.lr.ph ], [ %energy.2.lcssa, %for.inc155 ]
  %19 = trunc i64 %indvars.iv336 to i32
  %cmp41 = icmp slt i32 %19, %div16
  %sub46 = select i1 %cmp41, i32 0, i32 %18
  %mx.0.in = sub nsw i32 %19, %sub46
  %mx.0 = sitofp i32 %mx.0.in to float
  %mul49 = fmul float %4, %mx.0
  %mul50 = fmul float %5, %mx.0
  %add52 = fadd float %mul51, %mul50
  %20 = load float** %bsp_mod, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds float* %20, i64 %indvars.iv336
  %21 = load float* %arrayidx55, align 4, !tbaa !3
  %22 = load %struct.t_fft_c** %ptr, align 8, !tbaa !0
  %23 = load i32* %la12, align 4, !tbaa !4
  br i1 %2, label %if.then57, label %if.else62

if.then57:                                        ; preds = %for.body40
  %mul58 = mul nsw i32 %23, %13
  %24 = load i32* %la2, align 4, !tbaa !4
  %mul59 = mul nsw i32 %24, %19
  %add60 = add nsw i32 %mul59, %mul58
  br label %if.end69

if.else62:                                        ; preds = %for.body40
  %mul63 = mul nsw i32 %23, %19
  %25 = load i32* %la2, align 4, !tbaa !4
  %mul64 = mul nsw i32 %25, %13
  %add65 = add nsw i32 %mul64, %mul63
  br label %if.end69

if.end69:                                         ; preds = %if.else62, %if.then57
  %idx.ext.pn.in = phi i32 [ %add60, %if.then57 ], [ %add65, %if.else62 ]
  br i1 %cmp71287, label %for.body73.lr.ph, label %for.inc155

for.body73.lr.ph:                                 ; preds = %if.end69
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64
  %p0.0 = getelementptr inbounds %struct.t_fft_c* %22, i64 %idx.ext.pn
  %26 = or i64 %indvars.iv336, %indvars.iv338
  %mul84 = fmul float %7, %mx.0
  %add86 = fadd float %mul85, %mul84
  %mul89 = fmul float %mul49, %mul49
  %mul90 = fmul float %add52, %add52
  %add91 = fadd float %mul89, %mul90
  br label %for.body73

for.body73:                                       ; preds = %for.body73.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %p0.1296 = phi %struct.t_fft_c* [ %p0.0, %for.body73.lr.ph ], [ %incdec.ptr, %for.inc ]
  %virzz.2294 = phi float [ %virzz.1310, %for.body73.lr.ph ], [ %virzz.3, %for.inc ]
  %viryz.2293 = phi float [ %viryz.1309, %for.body73.lr.ph ], [ %viryz.3, %for.inc ]
  %viryy.2292 = phi float [ %viryy.1308, %for.body73.lr.ph ], [ %viryy.3, %for.inc ]
  %virxz.2291 = phi float [ %virxz.1307, %for.body73.lr.ph ], [ %virxz.3, %for.inc ]
  %virxy.2290 = phi float [ %virxy.1306, %for.body73.lr.ph ], [ %virxy.3, %for.inc ]
  %virxx.2289 = phi float [ %virxx.1305, %for.body73.lr.ph ], [ %virxx.3, %for.inc ]
  %energy.2288 = phi float [ %energy.1304, %for.body73.lr.ph ], [ %energy.3, %for.inc ]
  %27 = trunc i64 %indvars.iv to i32
  %28 = or i64 %26, %indvars.iv
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %for.inc, label %if.end82

if.end82:                                         ; preds = %for.body73
  %re = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 0, i32 0
  %31 = load float* %re, align 4, !tbaa !3
  %im = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 0, i32 1
  %32 = load float* %im, align 4, !tbaa !3
  %conv83 = sitofp i32 %27 to float
  %mul87 = fmul float %9, %conv83
  %add88 = fadd float %add86, %mul87
  %mul92 = fmul float %add88, %add88
  %add93 = fadd float %add91, %mul92
  %mul94 = fmul float %21, %add93
  %mul95 = fmul float %conv36, %mul94
  %33 = load float** %arrayidx97, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds float* %33, i64 %indvars.iv
  %34 = load float* %arrayidx98, align 4, !tbaa !3
  %mul99 = fmul float %mul95, %34
  %35 = fmul float %conv1, %add93
  %mul101 = fsub float -0.000000e+00, %35
  %conv102 = fpext float %mul101 to double
  %call = call double @exp(double %conv102) #4
  %mul103 = fmul double %call, 0x40615DEEE174A498
  %conv104 = fpext float %mul99 to double
  %div105 = fdiv double %mul103, %conv104
  %conv106 = fptrunc double %div105 to float
  %mul107 = fmul float %31, %conv106
  store float %mul107, float* %re, align 4, !tbaa !3
  %mul109 = fmul float %32, %conv106
  store float %mul109, float* %im, align 4, !tbaa !3
  %mul111 = fmul float %31, %31
  %mul112 = fmul float %32, %32
  %add113 = fadd float %mul111, %mul112
  %cmp114 = icmp sgt i32 %27, 0
  br i1 %cmp114, label %land.lhs.true116, label %if.end123

land.lhs.true116:                                 ; preds = %if.end82
  %36 = load i32* %nz, align 4, !tbaa !4
  %add117 = add nsw i32 %36, 1
  %div118 = sdiv i32 %add117, 2
  %cmp119 = icmp slt i32 %27, %div118
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %land.lhs.true116
  %mul122 = fmul float %add113, 2.000000e+00
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %land.lhs.true116, %if.end82
  %struct2.0 = phi float [ %mul122, %if.then121 ], [ %add113, %land.lhs.true116 ], [ %add113, %if.end82 ]
  %mul124 = fmul float %conv106, %struct2.0
  %add126 = fadd float %35, 1.000000e+00
  %conv127 = fpext float %add126 to double
  %mul128 = fmul double %conv127, 2.000000e+00
  %conv129 = fpext float %add93 to double
  %div130 = fdiv double %mul128, %conv129
  %conv131 = fptrunc double %div130 to float
  %add132 = fadd float %energy.2288, %mul124
  %mul133 = fmul float %mul124, %conv131
  %mul134 = fmul float %mul49, %mul133
  %mul135 = fmul float %mul49, %mul134
  %sub136 = fsub float %mul135, %mul124
  %add137 = fadd float %virxx.2289, %sub136
  %mul139 = fmul float %add52, %mul134
  %add140 = fadd float %virxy.2290, %mul139
  %mul142 = fmul float %add88, %mul134
  %add143 = fadd float %virxz.2291, %mul142
  %mul144 = fmul float %add52, %mul133
  %mul145 = fmul float %add52, %mul144
  %sub146 = fsub float %mul145, %mul124
  %add147 = fadd float %viryy.2292, %sub146
  %mul149 = fmul float %add88, %mul144
  %add150 = fadd float %viryz.2293, %mul149
  %mul151 = fmul float %add88, %mul133
  %mul152 = fmul float %add88, %mul151
  %sub153 = fsub float %mul152, %mul124
  %add154 = fadd float %virzz.2294, %sub153
  br label %for.inc

for.inc:                                          ; preds = %for.body73, %if.end123
  %energy.3 = phi float [ %add132, %if.end123 ], [ %energy.2288, %for.body73 ]
  %virxx.3 = phi float [ %add137, %if.end123 ], [ %virxx.2289, %for.body73 ]
  %virxy.3 = phi float [ %add140, %if.end123 ], [ %virxy.2290, %for.body73 ]
  %virxz.3 = phi float [ %add143, %if.end123 ], [ %virxz.2291, %for.body73 ]
  %viryy.3 = phi float [ %add147, %if.end123 ], [ %viryy.2292, %for.body73 ]
  %viryz.3 = phi float [ %add150, %if.end123 ], [ %viryz.2293, %for.body73 ]
  %virzz.3 = phi float [ %add154, %if.end123 ], [ %virzz.2294, %for.body73 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %incdec.ptr = getelementptr inbounds %struct.t_fft_c* %p0.1296, i64 1
  %cmp71 = icmp slt i32 %27, %div19
  br i1 %cmp71, label %for.body73, label %for.cond70.for.inc155_crit_edge

for.cond70.for.inc155_crit_edge:                  ; preds = %for.inc
  %.pre = load i32* %nx, align 4, !tbaa !4
  br label %for.inc155

for.inc155:                                       ; preds = %if.end69, %for.cond70.for.inc155_crit_edge
  %37 = phi i32 [ %.pre, %for.cond70.for.inc155_crit_edge ], [ %18, %if.end69 ]
  %virzz.2.lcssa = phi float [ %virzz.3, %for.cond70.for.inc155_crit_edge ], [ %virzz.1310, %if.end69 ]
  %viryz.2.lcssa = phi float [ %viryz.3, %for.cond70.for.inc155_crit_edge ], [ %viryz.1309, %if.end69 ]
  %viryy.2.lcssa = phi float [ %viryy.3, %for.cond70.for.inc155_crit_edge ], [ %viryy.1308, %if.end69 ]
  %virxz.2.lcssa = phi float [ %virxz.3, %for.cond70.for.inc155_crit_edge ], [ %virxz.1307, %if.end69 ]
  %virxy.2.lcssa = phi float [ %virxy.3, %for.cond70.for.inc155_crit_edge ], [ %virxy.1306, %if.end69 ]
  %virxx.2.lcssa = phi float [ %virxx.3, %for.cond70.for.inc155_crit_edge ], [ %virxx.1305, %if.end69 ]
  %energy.2.lcssa = phi float [ %energy.3, %for.cond70.for.inc155_crit_edge ], [ %energy.1304, %if.end69 ]
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %38 = trunc i64 %indvars.iv.next337 to i32
  %cmp38 = icmp slt i32 %38, %37
  br i1 %cmp38, label %for.body40, label %for.inc158

for.inc158:                                       ; preds = %for.inc155, %if.end29
  %virzz.1.lcssa = phi float [ %virzz.0326, %if.end29 ], [ %virzz.2.lcssa, %for.inc155 ]
  %viryz.1.lcssa = phi float [ %viryz.0325, %if.end29 ], [ %viryz.2.lcssa, %for.inc155 ]
  %viryy.1.lcssa = phi float [ %viryy.0324, %if.end29 ], [ %viryy.2.lcssa, %for.inc155 ]
  %virxz.1.lcssa = phi float [ %virxz.0323, %if.end29 ], [ %virxz.2.lcssa, %for.inc155 ]
  %virxy.1.lcssa = phi float [ %virxy.0322, %if.end29 ], [ %virxy.2.lcssa, %for.inc155 ]
  %virxx.1.lcssa = phi float [ %virxx.0321, %if.end29 ], [ %virxx.2.lcssa, %for.inc155 ]
  %energy.1.lcssa = phi float [ %energy.0320, %if.end29 ], [ %energy.2.lcssa, %for.inc155 ]
  %indvars.iv.next339 = add i64 %indvars.iv338, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next339 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %11
  br i1 %exitcond, label %for.end160, label %for.body

for.end160:                                       ; preds = %for.inc158, %if.end.thread, %if.end
  %virzz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virzz.1.lcssa, %for.inc158 ]
  %viryz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %viryz.1.lcssa, %for.inc158 ]
  %viryy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %viryy.1.lcssa, %for.inc158 ]
  %virxz.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxz.1.lcssa, %for.inc158 ]
  %virxy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxy.1.lcssa, %for.inc158 ]
  %virxx.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %virxx.1.lcssa, %for.inc158 ]
  %energy.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ 0.000000e+00, %if.end.thread ], [ %energy.1.lcssa, %for.inc158 ]
  %conv163 = fmul float %virxx.0.lcssa, 2.500000e-01
  %arrayidx165 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  store float %conv163, float* %arrayidx165, align 4, !tbaa !3
  %conv168 = fmul float %viryy.0.lcssa, 2.500000e-01
  %arrayidx170 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1
  store float %conv168, float* %arrayidx170, align 4, !tbaa !3
  %conv173 = fmul float %virzz.0.lcssa, 2.500000e-01
  %arrayidx175 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  store float %conv173, float* %arrayidx175, align 4, !tbaa !3
  %conv178 = fmul float %virxy.0.lcssa, 2.500000e-01
  %arrayidx180 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0
  store float %conv178, float* %arrayidx180, align 4, !tbaa !3
  %arrayidx182 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1
  store float %conv178, float* %arrayidx182, align 4, !tbaa !3
  %conv185 = fmul float %virxz.0.lcssa, 2.500000e-01
  %arrayidx187 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0
  store float %conv185, float* %arrayidx187, align 4, !tbaa !3
  %arrayidx189 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2
  store float %conv185, float* %arrayidx189, align 4, !tbaa !3
  %conv192 = fmul float %viryz.0.lcssa, 2.500000e-01
  %arrayidx194 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1
  store float %conv192, float* %arrayidx194, align 4, !tbaa !3
  %arrayidx196 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2
  store float %conv192, float* %arrayidx196, align 4, !tbaa !3
  %conv199 = fmul float %energy.0.lcssa, 5.000000e-01
  ret float %conv199
}

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: nounwind optsize uwtable
define void @gather_f_bsplines(%struct.t_fftgrid* %grid, [3 x float]* nocapture %recipbox, [3 x i32]* nocapture %idx, [3 x float]* nocapture %f, float* nocapture %charge, float** nocapture %theta, float** nocapture %dtheta, i32 %nr, i32 %order, i32* nocapture %nnx, i32* nocapture %nny, i32* nocapture %nnz) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  %0 = load float** %theta, align 8, !tbaa !0
  %arrayidx1 = getelementptr inbounds float** %theta, i64 1
  %1 = load float** %arrayidx1, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds float** %theta, i64 2
  %2 = load float** %arrayidx2, align 8, !tbaa !0
  %3 = load float** %dtheta, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds float** %dtheta, i64 1
  %4 = load float** %arrayidx4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds float** %dtheta, i64 2
  %5 = load float** %arrayidx5, align 8, !tbaa !0
  %idx.ext7 = sext i32 %order to i64
  %6 = load i32* %nz, align 4, !tbaa !4
  %idx.ext15 = sext i32 %6 to i64
  %add.ptr16.sum = sub i64 1, %idx.ext7
  %add.ptr17.sum = add i64 %add.ptr16.sum, %idx.ext15
  %arrayidx22 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %7 = load float* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %8 = load float* %arrayidx24, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %9 = load float* %arrayidx26, align 4, !tbaa !3
  %arrayidx28 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %10 = load float* %arrayidx28, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %11 = load float* %arrayidx30, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %12 = load float* %arrayidx32, align 4, !tbaa !3
  %cmp374 = icmp sgt i32 %nr, 0
  br i1 %cmp374, label %for.body.lr.ph, label %for.end216

for.body.lr.ph:                                   ; preds = %entry
  %13 = load i32* %ny, align 4, !tbaa !4
  %14 = load i32* %nx, align 4, !tbaa !4
  %idx.ext9 = sext i32 %13 to i64
  %idx.ext = sext i32 %14 to i64
  %add.ptr6.sum = add i64 %add.ptr16.sum, %idx.ext
  %conv178 = sitofp i32 %14 to float
  %conv188 = sitofp i32 %13 to float
  %conv204 = sitofp i32 %6 to float
  %add.ptr11.sum = add i64 %add.ptr16.sum, %idx.ext9
  %cmp53 = icmp eq i32 %order, 4
  %15 = load i32* %la12, align 4, !tbaa !4
  %16 = load i32* %la2, align 4, !tbaa !4
  %17 = load float** %ptr, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.inc214, %for.body.lr.ph
  %indvars.iv394 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next395, %for.inc214 ]
  %indvars.iv389 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next390, %for.inc214 ]
  %18 = sext i32 %indvars.iv389 to i64
  %arrayidx33 = getelementptr inbounds float* %charge, i64 %indvars.iv394
  %19 = load float* %arrayidx33, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %19) #5
  %20 = fpext float %fabsf to double
  %cmp34 = fcmp ogt double %20, 1.200000e-38
  br i1 %cmp34, label %if.then, label %for.inc214

if.then:                                          ; preds = %for.body
  %21 = trunc i64 %indvars.iv394 to i32
  %mul = mul nsw i32 %21, %order
  %add = add nsw i32 %mul, %order
  %cmp44365 = icmp sgt i32 %order, 0
  br i1 %cmp44365, label %for.body46.lr.ph, label %for.end177

for.body46.lr.ph:                                 ; preds = %if.then
  %arrayidx40 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 2
  %22 = load i32* %arrayidx40, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 0
  %23 = load i32* %arraydecay, align 4, !tbaa !4
  %idx.ext41 = sext i32 %23 to i64
  %add.ptr8.sum = add i64 %add.ptr6.sum, %idx.ext41
  %arrayidx39 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv394, i64 1
  %add.ptr42 = getelementptr inbounds i32* %nnx, i64 %add.ptr8.sum
  %24 = load i32* %arrayidx39, align 4, !tbaa !4
  %idx.ext51 = sext i32 %24 to i64
  %add.ptr14.sum = add i64 %add.ptr11.sum, %idx.ext51
  %add.ptr52 = getelementptr inbounds i32* %nny, i64 %add.ptr14.sum
  %idx.ext136 = sext i32 %22 to i64
  %add.ptr20.sum = add i64 %idx.ext136, %add.ptr17.sum
  %add.ptr137 = getelementptr inbounds i32* %nnz, i64 %add.ptr20.sum
  %add.ptr65.sum = add i64 %add.ptr20.sum, 1
  %arrayidx74 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum
  %add.ptr65.sum338 = add i64 %add.ptr20.sum, 2
  %arrayidx78 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum338
  %add.ptr65.sum339 = add i64 %add.ptr20.sum, 3
  %arrayidx82 = getelementptr inbounds i32* %nnz, i64 %add.ptr65.sum339
  %idxprom86 = sext i32 %mul to i64
  %arrayidx87 = getelementptr inbounds float* %2, i64 %idxprom86
  %arrayidx90 = getelementptr inbounds float* %5, i64 %idxprom86
  %inc = add nsw i32 %mul, 1
  %idxprom92 = sext i32 %inc to i64
  %arrayidx93 = getelementptr inbounds float* %2, i64 %idxprom92
  %arrayidx97 = getelementptr inbounds float* %5, i64 %idxprom92
  %inc100 = add nsw i32 %mul, 2
  %idxprom101 = sext i32 %inc100 to i64
  %arrayidx102 = getelementptr inbounds float* %2, i64 %idxprom101
  %arrayidx106 = getelementptr inbounds float* %5, i64 %idxprom101
  %inc109 = add nsw i32 %mul, 3
  %idxprom110 = sext i32 %inc109 to i64
  %arrayidx111 = getelementptr inbounds float* %2, i64 %idxprom110
  %arrayidx115 = getelementptr inbounds float* %5, i64 %idxprom110
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.inc174
  %indvars.iv391 = phi i64 [ %18, %for.body46.lr.ph ], [ %indvars.iv.next392, %for.inc174 ]
  %i0.0370 = phi i32* [ %add.ptr42, %for.body46.lr.ph ], [ %incdec.ptr176, %for.inc174 ]
  %ithx.0369 = phi i32 [ %mul, %for.body46.lr.ph ], [ %inc175, %for.inc174 ]
  %fx.0368 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fx.3, %for.inc174 ]
  %fy.0367 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fy.3, %for.inc174 ]
  %fz.0366 = phi float [ 0.000000e+00, %for.body46.lr.ph ], [ %fz.3, %for.inc174 ]
  %25 = load i32* %i0.0370, align 4, !tbaa !4
  %arrayidx48 = getelementptr inbounds float* %0, i64 %indvars.iv391
  %26 = load float* %arrayidx48, align 4, !tbaa !3
  %arrayidx50 = getelementptr inbounds float* %3, i64 %indvars.iv391
  %27 = load float* %arrayidx50, align 4, !tbaa !3
  %mul66 = mul nsw i32 %15, %25
  br i1 %cmp53, label %for.body59.lr.ph, label %for.body145.lr.ph

for.body59.lr.ph:                                 ; preds = %for.body46
  %28 = load i32* %add.ptr137, align 4, !tbaa !4
  %29 = load i32* %arrayidx74, align 4, !tbaa !4
  %30 = load i32* %arrayidx78, align 4, !tbaa !4
  %31 = load i32* %arrayidx82, align 4, !tbaa !4
  %32 = load float* %arrayidx87, align 4, !tbaa !3
  %33 = load float* %arrayidx90, align 4, !tbaa !3
  %34 = load float* %arrayidx93, align 4, !tbaa !3
  %35 = load float* %arrayidx97, align 4, !tbaa !3
  %36 = load float* %arrayidx102, align 4, !tbaa !3
  %37 = load float* %arrayidx106, align 4, !tbaa !3
  %38 = load float* %arrayidx111, align 4, !tbaa !3
  %39 = load float* %arrayidx115, align 4, !tbaa !3
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv386 = phi i64 [ %18, %for.body59.lr.ph ], [ %indvars.iv.next387, %for.body59 ]
  %j0.0361 = phi i32* [ %add.ptr52, %for.body59.lr.ph ], [ %incdec.ptr, %for.body59 ]
  %ithy.0360 = phi i32 [ %mul, %for.body59.lr.ph ], [ %inc127, %for.body59 ]
  %fx.1359 = phi float [ %fx.0368, %for.body59.lr.ph ], [ %add120, %for.body59 ]
  %fy.1358 = phi float [ %fy.0367, %for.body59.lr.ph ], [ %add123, %for.body59 ]
  %fz.1357 = phi float [ %fz.0366, %for.body59.lr.ph ], [ %add126, %for.body59 ]
  %40 = load i32* %j0.0361, align 4, !tbaa !4
  %arrayidx61 = getelementptr inbounds float* %1, i64 %indvars.iv386
  %41 = load float* %arrayidx61, align 4, !tbaa !3
  %arrayidx63 = getelementptr inbounds float* %4, i64 %indvars.iv386
  %42 = load float* %arrayidx63, align 4, !tbaa !3
  %mul67 = mul nsw i32 %16, %40
  %add68 = add nsw i32 %mul67, %mul66
  %add71 = add nsw i32 %add68, %28
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds float* %17, i64 %idxprom72
  %43 = load float* %arrayidx73, align 4, !tbaa !3
  %add75 = add nsw i32 %29, %add68
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds float* %17, i64 %idxprom76
  %44 = load float* %arrayidx77, align 4, !tbaa !3
  %add79 = add nsw i32 %30, %add68
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds float* %17, i64 %idxprom80
  %45 = load float* %arrayidx81, align 4, !tbaa !3
  %add83 = add nsw i32 %31, %add68
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds float* %17, i64 %idxprom84
  %46 = load float* %arrayidx85, align 4, !tbaa !3
  %mul88 = fmul float %43, %32
  %mul91 = fmul float %43, %33
  %mul94 = fmul float %44, %34
  %add95 = fadd float %mul88, %mul94
  %mul98 = fmul float %44, %35
  %add99 = fadd float %mul91, %mul98
  %mul103 = fmul float %45, %36
  %add104 = fadd float %add95, %mul103
  %mul107 = fmul float %45, %37
  %add108 = fadd float %add99, %mul107
  %mul112 = fmul float %46, %38
  %add113 = fadd float %add104, %mul112
  %mul116 = fmul float %46, %39
  %add117 = fadd float %add108, %mul116
  %mul118 = fmul float %27, %41
  %mul119 = fmul float %mul118, %add113
  %add120 = fadd float %fx.1359, %mul119
  %mul121 = fmul float %26, %42
  %mul122 = fmul float %mul121, %add113
  %add123 = fadd float %fy.1358, %mul122
  %mul124 = fmul float %26, %41
  %mul125 = fmul float %mul124, %add117
  %add126 = fadd float %fz.1357, %mul125
  %inc127 = add nsw i32 %ithy.0360, 1
  %incdec.ptr = getelementptr inbounds i32* %j0.0361, i64 1
  %cmp57 = icmp slt i32 %inc127, %add
  %indvars.iv.next387 = add i64 %indvars.iv386, 1
  br i1 %cmp57, label %for.body59, label %for.inc174

for.body145.lr.ph:                                ; preds = %for.body46, %for.end160
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %for.end160 ], [ %18, %for.body46 ]
  %j0.1351 = phi i32* [ %incdec.ptr172, %for.end160 ], [ %add.ptr52, %for.body46 ]
  %ithy.1350 = phi i32 [ %inc171, %for.end160 ], [ %mul, %for.body46 ]
  %fx.2349 = phi float [ %add163, %for.end160 ], [ %fx.0368, %for.body46 ]
  %fy.2348 = phi float [ %add166, %for.end160 ], [ %fy.0367, %for.body46 ]
  %fz.2347 = phi float [ %add169, %for.end160 ], [ %fz.0366, %for.body46 ]
  %47 = load i32* %j0.1351, align 4, !tbaa !4
  %arrayidx133 = getelementptr inbounds float* %1, i64 %indvars.iv381
  %48 = load float* %arrayidx133, align 4, !tbaa !3
  %arrayidx135 = getelementptr inbounds float* %4, i64 %indvars.iv381
  %49 = load float* %arrayidx135, align 4, !tbaa !3
  %mul139 = mul nsw i32 %16, %47
  %add140 = add nsw i32 %mul139, %mul66
  br label %for.body145

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.body145.lr.ph
  %indvars.iv376 = phi i64 [ %18, %for.body145.lr.ph ], [ %indvars.iv.next377, %for.body145.for.body145_crit_edge ]
  %k0.0344 = phi i32* [ %add.ptr137, %for.body145.lr.ph ], [ %incdec.ptr159, %for.body145.for.body145_crit_edge ]
  %ithz.0343 = phi i32 [ %mul, %for.body145.lr.ph ], [ %inc158, %for.body145.for.body145_crit_edge ]
  %fxy1.0342 = phi float [ 0.000000e+00, %for.body145.lr.ph ], [ %add152, %for.body145.for.body145_crit_edge ]
  %fz1.0341 = phi float [ 0.000000e+00, %for.body145.lr.ph ], [ %add156, %for.body145.for.body145_crit_edge ]
  %50 = load i32* %k0.0344, align 4, !tbaa !4
  %add146 = add nsw i32 %add140, %50
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds float* %17, i64 %idxprom147
  %51 = load float* %arrayidx148, align 4, !tbaa !3
  %arrayidx150 = getelementptr inbounds float* %2, i64 %indvars.iv376
  %52 = load float* %arrayidx150, align 4, !tbaa !3
  %mul151 = fmul float %51, %52
  %add152 = fadd float %fxy1.0342, %mul151
  %arrayidx154 = getelementptr inbounds float* %5, i64 %indvars.iv376
  %53 = load float* %arrayidx154, align 4, !tbaa !3
  %mul155 = fmul float %51, %53
  %add156 = fadd float %fz1.0341, %mul155
  %inc158 = add nsw i32 %ithz.0343, 1
  %cmp143 = icmp slt i32 %inc158, %add
  br i1 %cmp143, label %for.body145.for.body145_crit_edge, label %for.end160

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  %indvars.iv.next377 = add i64 %indvars.iv376, 1
  %incdec.ptr159 = getelementptr inbounds i32* %k0.0344, i64 1
  br label %for.body145

for.end160:                                       ; preds = %for.body145
  %mul161 = fmul float %27, %48
  %mul162 = fmul float %mul161, %add152
  %add163 = fadd float %fx.2349, %mul162
  %mul164 = fmul float %26, %49
  %mul165 = fmul float %mul164, %add152
  %add166 = fadd float %fy.2348, %mul165
  %mul167 = fmul float %26, %48
  %mul168 = fmul float %mul167, %add156
  %add169 = fadd float %fz.2347, %mul168
  %inc171 = add nsw i32 %ithy.1350, 1
  %incdec.ptr172 = getelementptr inbounds i32* %j0.1351, i64 1
  %cmp129 = icmp slt i32 %inc171, %add
  %indvars.iv.next382 = add i64 %indvars.iv381, 1
  br i1 %cmp129, label %for.body145.lr.ph, label %for.inc174

for.inc174:                                       ; preds = %for.body59, %for.end160
  %fz.3 = phi float [ %add169, %for.end160 ], [ %add126, %for.body59 ]
  %fy.3 = phi float [ %add166, %for.end160 ], [ %add123, %for.body59 ]
  %fx.3 = phi float [ %add163, %for.end160 ], [ %add120, %for.body59 ]
  %inc175 = add nsw i32 %ithx.0369, 1
  %incdec.ptr176 = getelementptr inbounds i32* %i0.0370, i64 1
  %cmp44 = icmp slt i32 %inc175, %add
  %indvars.iv.next392 = add i64 %indvars.iv391, 1
  br i1 %cmp44, label %for.body46, label %for.end177

for.end177:                                       ; preds = %for.inc174, %if.then
  %fx.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fx.3, %for.inc174 ]
  %fy.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fy.3, %for.inc174 ]
  %fz.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %fz.3, %for.inc174 ]
  %mul179 = fmul float %fx.0.lcssa, %conv178
  %mul180 = fmul float %7, %mul179
  %mul181 = fmul float %19, %mul180
  %arrayidx184 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 0
  %54 = load float* %arrayidx184, align 4, !tbaa !3
  %sub = fsub float %54, %mul181
  store float %sub, float* %arrayidx184, align 4, !tbaa !3
  %mul187 = fmul float %8, %mul179
  %mul189 = fmul float %fy.0.lcssa, %conv188
  %mul190 = fmul float %9, %mul189
  %add191 = fadd float %mul187, %mul190
  %mul192 = fmul float %19, %add191
  %arrayidx195 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 1
  %55 = load float* %arrayidx195, align 4, !tbaa !3
  %sub196 = fsub float %55, %mul192
  store float %sub196, float* %arrayidx195, align 4, !tbaa !3
  %mul199 = fmul float %10, %mul179
  %mul202 = fmul float %11, %mul189
  %add203 = fadd float %mul199, %mul202
  %mul205 = fmul float %fz.0.lcssa, %conv204
  %mul206 = fmul float %12, %mul205
  %add207 = fadd float %add203, %mul206
  %mul208 = fmul float %19, %add207
  %arrayidx211 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv394, i64 2
  %56 = load float* %arrayidx211, align 4, !tbaa !3
  %sub212 = fsub float %56, %mul208
  store float %sub212, float* %arrayidx211, align 4, !tbaa !3
  br label %for.inc214

for.inc214:                                       ; preds = %for.body, %for.end177
  %indvars.iv.next395 = add i64 %indvars.iv394, 1
  %indvars.iv.next390 = add i32 %indvars.iv389, %order
  %lftr.wideiv = trunc i64 %indvars.iv.next395 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nr
  br i1 %exitcond, label %for.end216, label %for.body

for.end216:                                       ; preds = %for.inc214, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @make_bsplines(float** nocapture %theta, float** nocapture %dtheta, i32 %order, i32 %nx, i32 %ny, i32 %nz, [3 x float]* nocapture %fractx, [3 x i32]* nocapture %idx, float* nocapture %charge, i32 %nr) #0 {
entry:
  %cmp241 = icmp sgt i32 %nr, 0
  br i1 %cmp241, label %for.body.lr.ph, label %for.end143

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i32 %order, -1
  %idxprom15 = sext i32 %sub to i64
  %cmp21234 = icmp sgt i32 %order, 3
  %cmp78236 = icmp sgt i32 %order, 1
  %conv93 = sitofp i32 %sub to double
  %div94 = fdiv double 1.000000e+00, %conv93
  %conv95 = fptrunc double %div94 to float
  %sub97 = add nsw i32 %order, -2
  %idxprom98 = sext i32 %sub97 to i64
  %cmp106238 = icmp sgt i32 %sub, 1
  br label %for.body

for.body:                                         ; preds = %for.inc141, %for.body.lr.ph
  %indvars.iv267 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next268, %for.inc141 ]
  %arrayidx = getelementptr inbounds float* %charge, i64 %indvars.iv267
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %fabsf = tail call float @fabsf(float %0) #5
  %1 = fpext float %fabsf to double
  %cmp1 = fcmp ogt double %1, 1.200000e-38
  br i1 %cmp1, label %for.cond5.preheader, label %for.inc141

for.cond5.preheader:                              ; preds = %for.body
  %2 = trunc i64 %indvars.iv267 to i32
  %mul = mul nsw i32 %2, %order
  %idxprom11 = sext i32 %mul to i64
  %arrayidx14.sum = add i64 %idxprom11, %idxprom15
  %arrayidx14.sum222 = add i64 %idxprom11, 1
  %arrayidx14.sum223 = add i64 %idxprom11, %idxprom98
  br label %for.body8

for.body8:                                        ; preds = %for.end132, %for.cond5.preheader
  %indvars.iv263 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next264, %for.end132 ]
  %arrayidx10 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv267, i64 %indvars.iv263
  %3 = load float* %arrayidx10, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds float** %theta, i64 %indvars.iv263
  %4 = load float** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds float* %4, i64 %idxprom11
  %arrayidx16 = getelementptr inbounds float* %4, i64 %arrayidx14.sum
  store float 0.000000e+00, float* %arrayidx16, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds float* %4, i64 %arrayidx14.sum222
  store float %3, float* %arrayidx17, align 4, !tbaa !3
  %sub18 = fsub float 1.000000e+00, %3
  store float %sub18, float* %arrayidx14, align 4, !tbaa !3
  br i1 %cmp21234, label %for.body40.lr.ph, label %for.end68

for.body40.lr.ph:                                 ; preds = %for.end, %for.body8
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %for.end ], [ 3, %for.body8 ]
  %indvars.iv246 = phi i32 [ %indvars.iv.next247, %for.end ], [ 2, %for.body8 ]
  %5 = trunc i64 %indvars.iv248 to i32
  %conv24 = sitofp i32 %5 to double
  %sub25 = fadd double %conv24, -1.000000e+00
  %div26 = fdiv double 1.000000e+00, %sub25
  %conv27 = fptrunc double %div26 to float
  %mul28 = fmul float %3, %conv27
  %6 = add nsw i64 %indvars.iv248, -2
  %arrayidx14.sum228 = add i64 %6, %idxprom11
  %arrayidx31 = getelementptr inbounds float* %4, i64 %arrayidx14.sum228
  %7 = load float* %arrayidx31, align 4, !tbaa !3
  %mul32 = fmul float %7, %mul28
  %8 = add nsw i64 %indvars.iv248, -1
  %arrayidx14.sum229 = add i64 %8, %idxprom11
  %arrayidx35 = getelementptr inbounds float* %4, i64 %arrayidx14.sum229
  store float %mul32, float* %arrayidx35, align 4, !tbaa !3
  br label %for.body40

for.body40:                                       ; preds = %for.body40, %for.body40.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body40.lr.ph ], [ %indvars.iv.next, %for.body40 ]
  %9 = trunc i64 %indvars.iv to i32
  %conv41 = sitofp i32 %9 to float
  %add = fadd float %3, %conv41
  %10 = sub nsw i64 %indvars.iv248, %indvars.iv
  %11 = add nsw i64 %10, -2
  %arrayidx14.sum230 = add i64 %11, %idxprom11
  %arrayidx45 = getelementptr inbounds float* %4, i64 %arrayidx14.sum230
  %12 = load float* %arrayidx45, align 4, !tbaa !3
  %mul46 = fmul float %add, %12
  %13 = trunc i64 %10 to i32
  %conv48 = sitofp i32 %13 to float
  %sub49 = fsub float %conv48, %3
  %14 = add nsw i64 %10, -1
  %arrayidx14.sum231 = add i64 %14, %idxprom11
  %arrayidx53 = getelementptr inbounds float* %4, i64 %arrayidx14.sum231
  %15 = load float* %arrayidx53, align 4, !tbaa !3
  %mul54 = fmul float %sub49, %15
  %add55 = fadd float %mul46, %mul54
  %mul56 = fmul float %conv27, %add55
  store float %mul56, float* %arrayidx53, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv246
  br i1 %exitcond, label %for.end, label %for.body40

for.end:                                          ; preds = %for.body40
  %mul62 = fmul float %sub18, %conv27
  %16 = load float* %arrayidx14, align 4, !tbaa !3
  %mul64 = fmul float %mul62, %16
  store float %mul64, float* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next249 = add i64 %indvars.iv248, 1
  %indvars.iv.next247 = add i32 %indvars.iv246, 1
  %lftr.wideiv252 = trunc i64 %indvars.iv.next249 to i32
  %exitcond253 = icmp eq i32 %lftr.wideiv252, %order
  br i1 %exitcond253, label %for.end68, label %for.body40.lr.ph

for.end68:                                        ; preds = %for.end, %for.body8
  %17 = phi float [ %sub18, %for.body8 ], [ %mul64, %for.end ]
  %arrayidx72 = getelementptr inbounds float** %dtheta, i64 %indvars.iv263
  %18 = load float** %arrayidx72, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds float* %18, i64 %idxprom11
  %sub75 = fsub float -0.000000e+00, %17
  store float %sub75, float* %arrayidx73, align 4, !tbaa !3
  br i1 %cmp78236, label %for.body80, label %for.end91

for.body80:                                       ; preds = %for.end68, %for.body80
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body80 ], [ 1, %for.end68 ]
  %19 = add nsw i64 %indvars.iv254, -1
  %arrayidx14.sum226 = add i64 %19, %idxprom11
  %arrayidx83 = getelementptr inbounds float* %4, i64 %arrayidx14.sum226
  %20 = load float* %arrayidx83, align 4, !tbaa !3
  %arrayidx14.sum227 = add i64 %indvars.iv254, %idxprom11
  %arrayidx85 = getelementptr inbounds float* %4, i64 %arrayidx14.sum227
  %21 = load float* %arrayidx85, align 4, !tbaa !3
  %sub86 = fsub float %20, %21
  %arrayidx88 = getelementptr inbounds float* %18, i64 %arrayidx14.sum227
  store float %sub86, float* %arrayidx88, align 4, !tbaa !3
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %lftr.wideiv257 = trunc i64 %indvars.iv.next255 to i32
  %exitcond258 = icmp eq i32 %lftr.wideiv257, %order
  br i1 %exitcond258, label %for.end91, label %for.body80

for.end91:                                        ; preds = %for.body80, %for.end68
  %mul96 = fmul float %3, %conv95
  %arrayidx99 = getelementptr inbounds float* %4, i64 %arrayidx14.sum223
  %22 = load float* %arrayidx99, align 4, !tbaa !3
  %mul100 = fmul float %22, %mul96
  store float %mul100, float* %arrayidx16, align 4, !tbaa !3
  br i1 %cmp106238, label %for.body108, label %for.end132

for.body108:                                      ; preds = %for.end91, %for.body108
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body108 ], [ 1, %for.end91 ]
  %23 = trunc i64 %indvars.iv259 to i32
  %conv109 = sitofp i32 %23 to float
  %add110 = fadd float %3, %conv109
  %sub111 = sub nsw i32 %order, %23
  %sub112 = add nsw i32 %sub111, -2
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx14.sum224 = add i64 %idxprom113, %idxprom11
  %arrayidx114 = getelementptr inbounds float* %4, i64 %arrayidx14.sum224
  %24 = load float* %arrayidx114, align 4, !tbaa !3
  %mul115 = fmul float %add110, %24
  %conv117 = sitofp i32 %sub111 to float
  %sub118 = fsub float %conv117, %3
  %sub120 = add nsw i32 %sub111, -1
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx14.sum225 = add i64 %idxprom121, %idxprom11
  %arrayidx122 = getelementptr inbounds float* %4, i64 %arrayidx14.sum225
  %25 = load float* %arrayidx122, align 4, !tbaa !3
  %mul123 = fmul float %sub118, %25
  %add124 = fadd float %mul115, %mul123
  %mul125 = fmul float %conv95, %add124
  store float %mul125, float* %arrayidx122, align 4, !tbaa !3
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, %sub
  br i1 %exitcond262, label %for.end132, label %for.body108

for.end132:                                       ; preds = %for.body108, %for.end91
  %mul134 = fmul float %sub18, %conv95
  %26 = load float* %arrayidx14, align 4, !tbaa !3
  %mul136 = fmul float %mul134, %26
  store float %mul136, float* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next264 = add i64 %indvars.iv263, 1
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32
  %exitcond266 = icmp eq i32 %lftr.wideiv265, 3
  br i1 %exitcond266, label %for.inc141, label %for.body8

for.inc141:                                       ; preds = %for.end132, %for.body
  %indvars.iv.next268 = add i64 %indvars.iv267, 1
  %lftr.wideiv269 = trunc i64 %indvars.iv.next268 to i32
  %exitcond270 = icmp eq i32 %lftr.wideiv269, %nr
  br i1 %exitcond270, label %for.end143, label %for.body

for.end143:                                       ; preds = %for.inc141, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @make_dft_mod(float* nocapture %mod, float* nocapture %data, i32 %ndata) #0 {
entry:
  %cmp86 = icmp sgt i32 %ndata, 0
  br i1 %cmp86, label %for.cond1.preheader.lr.ph, label %for.end52

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %conv6 = sitofp i32 %ndata to double
  br label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader.lr.ph, %for.end
  %indvars.iv94 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next95, %for.end ]
  %0 = trunc i64 %indvars.iv94 to i32
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 0x401921FB54442D18
  br label %for.body3

for.cond30.preheader:                             ; preds = %for.end
  br i1 %cmp86, label %for.body33, label %for.end52

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv90 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next91, %for.body3 ]
  %ss.084 = phi float [ 0.000000e+00, %for.body3.lr.ph ], [ %conv21, %for.body3 ]
  %sc.083 = phi float [ 0.000000e+00, %for.body3.lr.ph ], [ %conv12, %for.body3 ]
  %1 = trunc i64 %indvars.iv90 to i32
  %conv4 = sitofp i32 %1 to double
  %mul5 = fmul double %mul, %conv4
  %div = fdiv double %mul5, %conv6
  %conv7 = fptrunc double %div to float
  %arrayidx = getelementptr inbounds float* %data, i64 %indvars.iv90
  %2 = load float* %arrayidx, align 4, !tbaa !3
  %conv8 = fpext float %2 to double
  %conv9 = fpext float %conv7 to double
  %call = tail call double @cos(double %conv9) #4
  %mul10 = fmul double %conv8, %call
  %conv11 = fpext float %sc.083 to double
  %add = fadd double %conv11, %mul10
  %conv12 = fptrunc double %add to float
  %3 = load float* %arrayidx, align 4, !tbaa !3
  %conv15 = fpext float %3 to double
  %call17 = tail call double @sin(double %conv9) #4
  %mul18 = fmul double %conv15, %call17
  %conv19 = fpext float %ss.084 to double
  %add20 = fadd double %conv19, %mul18
  %conv21 = fptrunc double %add20 to float
  %indvars.iv.next91 = add i64 %indvars.iv90, 1
  %lftr.wideiv92 = trunc i64 %indvars.iv.next91 to i32
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %ndata
  br i1 %exitcond93, label %for.end, label %for.body3

for.end:                                          ; preds = %for.body3
  %mul22 = fmul float %conv12, %conv12
  %mul23 = fmul float %conv21, %conv21
  %add24 = fadd float %mul22, %mul23
  %arrayidx26 = getelementptr inbounds float* %mod, i64 %indvars.iv94
  store float %add24, float* %arrayidx26, align 4, !tbaa !3
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %ndata
  br i1 %exitcond97, label %for.cond30.preheader, label %for.body3.lr.ph

for.body33:                                       ; preds = %for.cond30.preheader, %for.inc50
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %for.inc50 ], [ 0, %for.cond30.preheader ]
  %arrayidx35 = getelementptr inbounds float* %mod, i64 %indvars.iv
  %4 = load float* %arrayidx35, align 4, !tbaa !3
  %conv36 = fpext float %4 to double
  %cmp37 = fcmp olt double %conv36, 1.000000e-07
  br i1 %cmp37, label %if.then, label %for.body33.for.inc50_crit_edge

for.body33.for.inc50_crit_edge:                   ; preds = %for.body33
  %indvars.iv.next.pre = add i64 %indvars.iv, 1
  br label %for.inc50

if.then:                                          ; preds = %for.body33
  %5 = add nsw i64 %indvars.iv, -1
  %arrayidx40 = getelementptr inbounds float* %mod, i64 %5
  %6 = load float* %arrayidx40, align 4, !tbaa !3
  %7 = add nsw i64 %indvars.iv, 1
  %arrayidx43 = getelementptr inbounds float* %mod, i64 %7
  %8 = load float* %arrayidx43, align 4, !tbaa !3
  %add44 = fadd float %6, %8
  %conv47 = fmul float %add44, 5.000000e-01
  store float %conv47, float* %arrayidx35, align 4, !tbaa !3
  br label %for.inc50

for.inc50:                                        ; preds = %for.body33.for.inc50_crit_edge, %if.then
  %indvars.iv.next.pre-phi = phi i64 [ %indvars.iv.next.pre, %for.body33.for.inc50_crit_edge ], [ %7, %if.then ]
  %lftr.wideiv = trunc i64 %indvars.iv.next.pre-phi to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ndata
  br i1 %exitcond, label %for.end52, label %for.body33

for.end52:                                        ; preds = %entry, %for.inc50, %for.cond30.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare double @cos(double) #1

; Function Attrs: nounwind optsize
declare double @sin(double) #1

; Function Attrs: nounwind optsize uwtable
define void @make_bspline_moduli(float** nocapture %bsp_mod, i32 %nx, i32 %ny, i32 %nz, i32 %order) #0 {
entry:
  %cmp = icmp sgt i32 %ny, %nz
  %cond = select i1 %cmp, i32 %ny, i32 %nz
  %cmp1 = icmp slt i32 %cond, %nx
  %nx.cond = select i1 %cmp1, i32 %nx, i32 %cond
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 614, i32 %order, i32 4) #4
  %0 = bitcast i8* %call to float*
  %call11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 615, i32 %order, i32 4) #4
  %1 = bitcast i8* %call11 to float*
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 616, i32 %nx.cond, i32 4) #4
  %2 = bitcast i8* %call12 to float*
  %sub = add i32 %order, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds float* %0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds i8* %call, i64 4
  %3 = bitcast i8* %arrayidx13 to float*
  store float 0.000000e+00, float* %3, align 4, !tbaa !3
  store float 1.000000e+00, float* %0, align 4, !tbaa !3
  %cmp15223 = icmp sgt i32 %order, 3
  br i1 %cmp15223, label %for.body26.lr.ph, label %for.end49

for.body26.lr.ph:                                 ; preds = %for.end, %entry
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.end ], [ 3, %entry ]
  %indvars.iv243 = phi i32 [ %indvars.iv.next244, %for.end ], [ 2, %entry ]
  %4 = trunc i64 %indvars.iv247 to i32
  %conv = sitofp i32 %4 to double
  %sub16 = fadd double %conv, -1.000000e+00
  %div17 = fdiv double 1.000000e+00, %sub16
  %conv18 = fptrunc double %div17 to float
  %5 = add nsw i64 %indvars.iv247, -1
  %arrayidx21 = getelementptr inbounds float* %0, i64 %5
  store float 0.000000e+00, float* %arrayidx21, align 4, !tbaa !3
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv238 = phi i64 [ 1, %for.body26.lr.ph ], [ %indvars.iv.next239, %for.body26 ]
  %6 = trunc i64 %indvars.iv238 to i32
  %conv27 = sitofp i32 %6 to float
  %7 = sub nsw i64 %indvars.iv247, %indvars.iv238
  %8 = add nsw i64 %7, -2
  %arrayidx31 = getelementptr inbounds float* %0, i64 %8
  %9 = load float* %arrayidx31, align 4, !tbaa !3
  %mul = fmul float %conv27, %9
  %10 = trunc i64 %7 to i32
  %conv33 = sitofp i32 %10 to float
  %11 = add nsw i64 %7, -1
  %arrayidx37 = getelementptr inbounds float* %0, i64 %11
  %12 = load float* %arrayidx37, align 4, !tbaa !3
  %mul38 = fmul float %conv33, %12
  %add = fadd float %mul, %mul38
  %mul39 = fmul float %conv18, %add
  store float %mul39, float* %arrayidx37, align 4, !tbaa !3
  %indvars.iv.next239 = add i64 %indvars.iv238, 1
  %lftr.wideiv245 = trunc i64 %indvars.iv.next239 to i32
  %exitcond246 = icmp eq i32 %lftr.wideiv245, %indvars.iv243
  br i1 %exitcond246, label %for.end, label %for.body26

for.end:                                          ; preds = %for.body26
  %13 = load float* %0, align 4, !tbaa !3
  %mul45 = fmul float %conv18, %13
  store float %mul45, float* %0, align 4, !tbaa !3
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %indvars.iv.next244 = add i32 %indvars.iv243, 1
  %lftr.wideiv250 = trunc i64 %indvars.iv.next248 to i32
  %exitcond251 = icmp eq i32 %lftr.wideiv250, %order
  br i1 %exitcond251, label %for.end49, label %for.body26.lr.ph

for.end49:                                        ; preds = %for.end, %entry
  %14 = phi float [ 1.000000e+00, %entry ], [ %mul45, %for.end ]
  %sub51 = fsub float -0.000000e+00, %14
  store float %sub51, float* %1, align 4, !tbaa !3
  %cmp54219 = icmp sgt i32 %order, 1
  br i1 %cmp54219, label %for.body56, label %for.end67

for.body56:                                       ; preds = %for.end49, %for.body56
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %for.body56 ], [ 1, %for.end49 ]
  %15 = add nsw i64 %indvars.iv233, -1
  %arrayidx59 = getelementptr inbounds float* %0, i64 %15
  %16 = load float* %arrayidx59, align 4, !tbaa !3
  %arrayidx61 = getelementptr inbounds float* %0, i64 %indvars.iv233
  %17 = load float* %arrayidx61, align 4, !tbaa !3
  %sub62 = fsub float %16, %17
  %arrayidx64 = getelementptr inbounds float* %1, i64 %indvars.iv233
  store float %sub62, float* %arrayidx64, align 4, !tbaa !3
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %lftr.wideiv236 = trunc i64 %indvars.iv.next234 to i32
  %exitcond237 = icmp eq i32 %lftr.wideiv236, %order
  br i1 %exitcond237, label %for.end67, label %for.body56

for.end67:                                        ; preds = %for.body56, %for.end49
  %conv69 = sitofp i32 %sub to double
  %div70 = fdiv double 1.000000e+00, %conv69
  %conv71 = fptrunc double %div70 to float
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !3
  %cmp77217 = icmp sgt i32 %sub, 1
  br i1 %cmp77217, label %for.body79, label %for.end101

for.body79:                                       ; preds = %for.end67, %for.body79
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %for.body79 ], [ 1, %for.end67 ]
  %18 = trunc i64 %indvars.iv229 to i32
  %conv80 = sitofp i32 %18 to float
  %sub81 = sub nsw i32 %order, %18
  %sub82 = add nsw i32 %sub81, -2
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds float* %0, i64 %idxprom83
  %19 = load float* %arrayidx84, align 4, !tbaa !3
  %mul85 = fmul float %conv80, %19
  %conv87 = sitofp i32 %sub81 to float
  %sub89 = add nsw i32 %sub81, -1
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds float* %0, i64 %idxprom90
  %20 = load float* %arrayidx91, align 4, !tbaa !3
  %mul92 = fmul float %conv87, %20
  %add93 = fadd float %mul85, %mul92
  %mul94 = fmul float %conv71, %add93
  store float %mul94, float* %arrayidx91, align 4, !tbaa !3
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %sub
  br i1 %exitcond232, label %for.end101, label %for.body79

for.end101:                                       ; preds = %for.body79, %for.end67
  %21 = load float* %0, align 4, !tbaa !3
  %mul103 = fmul float %conv71, %21
  store float %mul103, float* %0, align 4, !tbaa !3
  %cmp106215 = icmp sgt i32 %nx.cond, 0
  br i1 %cmp106215, label %for.body108.lr.ph, label %for.cond114.preheader

for.body108.lr.ph:                                ; preds = %for.end101
  %22 = icmp sgt i32 %nz, %ny
  %smax = select i1 %22, i32 %nz, i32 %ny
  %23 = icmp sgt i32 %smax, %nx
  %smax228 = select i1 %23, i32 %smax, i32 %nx
  %24 = add i32 %smax228, -1
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 2
  %27 = add i64 %26, 4
  call void @llvm.memset.p0i8.i64(i8* %call12, i8 0, i64 %27, i32 4, i1 false)
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %for.body108.lr.ph, %for.end101
  %cmp115213 = icmp slt i32 %order, 1
  br i1 %cmp115213, label %for.end125, label %for.body117.lr.ph

for.body117.lr.ph:                                ; preds = %for.cond114.preheader
  %28 = add i32 %order, 1
  br label %for.body117

for.body117:                                      ; preds = %for.body117, %for.body117.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body117.lr.ph ], [ %indvars.iv.next, %for.body117 ]
  %29 = add nsw i64 %indvars.iv, -1
  %arrayidx120 = getelementptr inbounds float* %0, i64 %29
  %30 = load float* %arrayidx120, align 4, !tbaa !3
  %arrayidx122 = getelementptr inbounds float* %2, i64 %indvars.iv
  store float %30, float* %arrayidx122, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond, label %for.end125, label %for.body117

for.end125:                                       ; preds = %for.body117, %for.cond114.preheader
  %31 = load float** %bsp_mod, align 8, !tbaa !0
  tail call void @make_dft_mod(float* %31, float* %2, i32 %nx) #6
  %arrayidx127 = getelementptr inbounds float** %bsp_mod, i64 1
  %32 = load float** %arrayidx127, align 8, !tbaa !0
  tail call void @make_dft_mod(float* %32, float* %2, i32 %ny) #6
  %arrayidx128 = getelementptr inbounds float** %bsp_mod, i64 2
  %33 = load float** %arrayidx128, align 8, !tbaa !0
  tail call void @make_dft_mod(float* %33, float* %2, i32 %nz) #6
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 648, i8* %call) #4
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 649, i8* %call11) #4
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 650, i8* %call12) #4
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @init_pme(%struct._IO_FILE* %log, %struct.t_commrec* %cr, i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order, i32 %homenr, i32 %bOptFFT, i32 %ewald_geometry) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0)) #4
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %log)
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) #4
  %cmp = icmp eq i32 %ewald_geometry, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %log)
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp eq %struct.t_commrec* %cr, null
  br i1 %tobool, label %if.end11, label %land.end

land.end:                                         ; preds = %if.end
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %nnodes, align 4, !tbaa !4
  %cmp2 = icmp sgt i32 %2, 1
  %land.ext = zext i1 %cmp2 to i32
  br i1 %cmp2, label %if.then4, label %if.end11

if.then4:                                         ; preds = %land.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %log)
  %4 = load i32* %nnodes, align 4, !tbaa !4
  %rem = srem i32 %nkx, %4
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then4
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str13, i64 0, i64 0), i64 68, i64 1, %struct._IO_FILE* %log)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4, %if.then8, %land.end
  %land.ext106 = phi i32 [ %land.ext, %if.then4 ], [ %land.ext, %if.then8 ], [ %land.ext, %land.end ], [ 0, %if.end ]
  %call12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 694, i32 %nkx, i32 4) #4
  %6 = bitcast i8* %call12 to float*
  store float* %6, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), align 16, !tbaa !0
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 695, i32 %nky, i32 4) #4
  %7 = bitcast i8* %call13 to float*
  store float* %7, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 1), align 8, !tbaa !0
  %call14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 696, i32 %nkz, i32 4) #4
  %8 = bitcast i8* %call14 to float*
  store float* %8, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 2), align 16, !tbaa !0
  %mul = mul nsw i32 %homenr, %pme_order
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv118 = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next119, %for.body ]
  %call16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 698, i32 %mul, i32 4) #4
  %9 = bitcast i8* %call16 to float*
  %arrayidx = getelementptr inbounds [3 x float*]* @theta, i64 0, i64 %indvars.iv118
  store float* %9, float** %arrayidx, align 8, !tbaa !0
  %call18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 699, i32 %mul, i32 4) #4
  %10 = bitcast i8* %call18 to float*
  %arrayidx20 = getelementptr inbounds [3 x float*]* @dtheta, i64 0, i64 %indvars.iv118
  store float* %10, float** %arrayidx20, align 8, !tbaa !0
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next119 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 701, i32 %homenr, i32 12) #4
  %11 = bitcast i8* %call21 to [3 x float]*
  store [3 x float]* %11, [3 x float]** @fractx, align 8, !tbaa !0
  %call22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 703, i32 %homenr, i32 12) #4
  %12 = bitcast i8* %call22 to [3 x i32]*
  store [3 x i32]* %12, [3 x i32]** @idx, align 8, !tbaa !0
  %mul23 = mul nsw i32 %nkx, 3
  %call24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 704, i32 %mul23, i32 4) #4
  %13 = bitcast i8* %call24 to i32*
  store i32* %13, i32** @nnx, align 8, !tbaa !0
  %mul25 = mul nsw i32 %nky, 3
  %call26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 705, i32 %mul25, i32 4) #4
  %14 = bitcast i8* %call26 to i32*
  store i32* %14, i32** @nny, align 8, !tbaa !0
  %mul27 = mul nsw i32 %nkz, 3
  %call28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 706, i32 %mul27, i32 4) #4
  %15 = bitcast i8* %call28 to i32*
  store i32* %15, i32** @nnz, align 8, !tbaa !0
  %cmp31111 = icmp sgt i32 %nkx, 0
  br i1 %cmp31111, label %for.body32.lr.ph, label %for.cond39.preheader

for.body32.lr.ph:                                 ; preds = %for.end
  %16 = load i32** @nnx, align 8, !tbaa !0
  br label %for.body32

for.cond39.preheader:                             ; preds = %for.body32, %for.end
  %cmp41109 = icmp sgt i32 %nky, 0
  br i1 %cmp41109, label %for.body42.lr.ph, label %for.cond49.preheader

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %17 = load i32** @nny, align 8, !tbaa !0
  br label %for.body42

for.body32:                                       ; preds = %for.body32.lr.ph, %for.body32
  %indvars.iv116 = phi i64 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next117, %for.body32 ]
  %18 = trunc i64 %indvars.iv116 to i32
  %rem33 = srem i32 %18, %nkx
  %arrayidx35 = getelementptr inbounds i32* %16, i64 %indvars.iv116
  store i32 %rem33, i32* %arrayidx35, align 4, !tbaa !4
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %19 = trunc i64 %indvars.iv.next117 to i32
  %cmp31 = icmp slt i32 %19, %mul23
  br i1 %cmp31, label %for.body32, label %for.cond39.preheader

for.cond49.preheader:                             ; preds = %for.body42, %for.cond39.preheader
  %cmp51107 = icmp sgt i32 %nkz, 0
  br i1 %cmp51107, label %for.body52, label %for.end58

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv114 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next115, %for.body42 ]
  %20 = trunc i64 %indvars.iv114 to i32
  %rem43 = srem i32 %20, %nky
  %arrayidx45 = getelementptr inbounds i32* %17, i64 %indvars.iv114
  store i32 %rem43, i32* %arrayidx45, align 4, !tbaa !4
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %21 = trunc i64 %indvars.iv.next115 to i32
  %cmp41 = icmp slt i32 %21, %mul25
  br i1 %cmp41, label %for.body42, label %for.cond49.preheader

for.body52:                                       ; preds = %for.cond49.preheader, %for.body52
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body52 ], [ 0, %for.cond49.preheader ]
  %22 = trunc i64 %indvars.iv to i32
  %rem53 = srem i32 %22, %nkz
  %arrayidx55 = getelementptr inbounds i32* %15, i64 %indvars.iv
  store i32 %rem53, i32* %arrayidx55, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp51 = icmp slt i32 %23, %mul27
  br i1 %cmp51, label %for.body52, label %for.end58

for.end58:                                        ; preds = %for.body52, %for.cond49.preheader
  %call59 = tail call %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE* %log, i32 %land.ext106, i32 %nkx, i32 %nky, i32 %nkz, i32 %bOptFFT) #4
  store %struct.t_fftgrid* %call59, %struct.t_fftgrid** @grid, align 8, !tbaa !0
  tail call void @make_bspline_moduli(float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order) #6
  ret void
}

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define %struct.t_fftgrid* @spread_on_grid(%struct._IO_FILE* nocapture %logfile, i32 %homenr, i32 %pme_order, [3 x float]* nocapture %x, float* nocapture %charge, [3 x float]* nocapture %box, i32 %bGatherOnly) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %0 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  call void @unpack_fftgrid(%struct.t_fftgrid* %0, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  call void @calc_recipbox([3 x float]* %box, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0)) #6
  %tobool = icmp eq i32 %bGatherOnly, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load [3 x float]** @fractx, align 8, !tbaa !0
  %2 = load [3 x i32]** @idx, align 8, !tbaa !0
  %3 = load i32* %nx, align 4, !tbaa !4
  %4 = load i32* %ny, align 4, !tbaa !4
  %5 = load i32* %nz, align 4, !tbaa !4
  %6 = load i32** @nnx, align 8, !tbaa !0
  %7 = load i32** @nny, align 8, !tbaa !0
  %8 = load i32** @nnz, align 8, !tbaa !0
  call void @calc_idx(i32 %homenr, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %x, [3 x float]* %1, [3 x i32]* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #6
  %9 = load [3 x float]** @fractx, align 8, !tbaa !0
  call void @make_bsplines(float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %pme_order, i32 undef, i32 undef, i32 undef, [3 x float]* %9, [3 x i32]* undef, float* %charge, i32 %homenr) #6
  %10 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  %11 = load [3 x i32]** @idx, align 8, !tbaa !0
  %12 = load i32** @nnx, align 8, !tbaa !0
  %13 = load i32** @nny, align 8, !tbaa !0
  %14 = load i32** @nnz, align 8, !tbaa !0
  call void @spread_q_bsplines(%struct.t_fftgrid* %10, [3 x i32]* %11, float* %charge, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), i32 %homenr, i32 %pme_order, i32* %12, i32* %13, i32* %14) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %15 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  ret %struct.t_fftgrid* %15
}

; Function Attrs: nounwind optsize uwtable
define float @do_pme(%struct._IO_FILE* nocapture %logfile, i32 %bVerbose, %struct.t_inputrec* nocapture %ir, [3 x float]* nocapture %x, [3 x float]* nocapture %f, float* nocapture %charge, [3 x float]* nocapture %box, %struct.t_commrec* %cr, %struct.t_nsborder* nocapture %nsb, %struct.t_nrnb* nocapture %nrnb, [3 x float]* nocapture %vir, float %ewaldcoeff, i32 %bGatherOnly) #0 {
entry:
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la12 = alloca i32, align 4
  %la2 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %0 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  call void @unpack_fftgrid(%struct.t_fftgrid* %0, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #4
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !4
  %pme_order = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %3 = load i32* %pme_order, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %4 = load i32* %arrayidx3, align 4, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds [3 x float]* %x, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds float* %charge, i64 %idx.ext
  %call = call %struct.t_fftgrid* @spread_on_grid(%struct._IO_FILE* undef, i32 %2, i32 %3, [3 x float]* %add.ptr, float* %add.ptr9, [3 x float]* %box, i32 %bGatherOnly) #6
  %tobool = icmp eq i32 %bGatherOnly, 0
  br i1 %tobool, label %if.then, label %if.end57

if.then:                                          ; preds = %entry
  %5 = load i32* %pme_order, align 4, !tbaa !4
  %mul = mul nsw i32 %5, %5
  %mul13 = mul nsw i32 %mul, %5
  %6 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom15 = sext i32 %6 to i64
  %arrayidx17 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom15
  %7 = load i32* %arrayidx17, align 4, !tbaa !4
  %mul18 = mul nsw i32 %mul13, %7
  %conv = sitofp i32 %mul18 to double
  %arrayidx19 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 81
  %8 = load double* %arrayidx19, align 8, !tbaa !5
  %add = fadd double %8, %conv
  store double %add, double* %arrayidx19, align 8, !tbaa !5
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %9 = load i32* %nnodes, align 4, !tbaa !4
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %10 = load i32* %nthreads, align 4, !tbaa !4
  %cmp21 = icmp sgt i32 %10, 1
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %lor.lhs.false, %if.then
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then23, %lor.lhs.false
  %11 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  call void @gmxfft3D(%struct.t_fftgrid* %11, i32 -1, %struct.t_commrec* %cr) #4
  %arrayidx1.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %12 = load float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %13 = load float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %14 = load float* %arrayidx5.i, align 4, !tbaa !3
  %mul.i = fmul float %13, %14
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %15 = load float* %arrayidx7.i, align 4, !tbaa !3
  %arrayidx9.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %16 = load float* %arrayidx9.i, align 4, !tbaa !3
  %mul10.i = fmul float %15, %16
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %12, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %17 = load float* %arrayidx13.i, align 4, !tbaa !3
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %18 = load float* %arrayidx15.i, align 4, !tbaa !3
  %mul18.i = fmul float %14, %18
  %arrayidx22.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %19 = load float* %arrayidx22.i, align 4, !tbaa !3
  %mul23.i = fmul float %15, %19
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %17, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %20 = load float* %arrayidx28.i, align 4, !tbaa !3
  %mul33.i = fmul float %16, %18
  %mul38.i = fmul float %13, %19
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %20, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %21 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  %call25 = call float @solve_pme(%struct.t_fftgrid* %21, float %ewaldcoeff, float %add.i, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %vir, %struct.t_commrec* %cr) #6
  store float %call25, float* @do_pme.energy, align 4, !tbaa !3
  %22 = load i32* %nx, align 4, !tbaa !4
  %23 = load i32* %ny, align 4, !tbaa !4
  %mul26 = mul nsw i32 %23, %22
  %24 = load i32* %nz, align 4, !tbaa !4
  %mul27 = mul nsw i32 %mul26, %24
  %conv28 = sitofp i32 %mul27 to double
  %mul29 = fmul double %conv28, 5.000000e-01
  %arrayidx31 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 86
  %25 = load double* %arrayidx31, align 8, !tbaa !5
  %add32 = fadd double %25, %mul29
  store double %add32, double* %arrayidx31, align 8, !tbaa !5
  %26 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  call void @gmxfft3D(%struct.t_fftgrid* %26, i32 1, %struct.t_commrec* %cr) #4
  %27 = load i32* %nnodes, align 4, !tbaa !4
  %cmp34 = icmp sgt i32 %27, 1
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end
  %nthreads37 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %28 = load i32* %nthreads37, align 4, !tbaa !4
  %cmp38 = icmp sgt i32 %28, 1
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false36, %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %lor.lhs.false36
  %29 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  %nxyz = getelementptr inbounds %struct.t_fftgrid* %29, i64 0, i32 11
  %30 = load i32* %nxyz, align 4, !tbaa !4
  %conv42 = sitofp i32 %30 to double
  %conv43 = sitofp i32 %30 to float
  %conv44 = fpext float %conv43 to double
  %call45 = call double @log(double %conv44) #4
  %mul46 = fmul double %conv42, %call45
  %31 = load i32* %nnodes, align 4, !tbaa !4
  %conv48 = sitofp i32 %31 to double
  %mul50 = fmul double %conv48, 0x3FE62E42FEFA39EF
  %div = fdiv double %mul46, %mul50
  %conv51 = fptosi double %div to i32
  %mul52 = shl nsw i32 %conv51, 1
  %conv53 = sitofp i32 %mul52 to double
  %arrayidx55 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84
  %32 = load double* %arrayidx55, align 8, !tbaa !5
  %add56 = fadd double %32, %conv53
  store double %add56, double* %arrayidx55, align 8, !tbaa !5
  br label %if.end57

if.end57:                                         ; preds = %entry, %if.end41
  %33 = load %struct.t_fftgrid** @grid, align 8, !tbaa !0
  %34 = load [3 x i32]** @idx, align 8, !tbaa !0
  %35 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom59 = sext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom59
  %36 = load i32* %arrayidx61, align 4, !tbaa !4
  %idx.ext62 = sext i32 %36 to i64
  %add.ptr63 = getelementptr inbounds [3 x float]* %f, i64 %idx.ext62
  %add.ptr69 = getelementptr inbounds float* %charge, i64 %idx.ext62
  %arrayidx73 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom59
  %37 = load i32* %arrayidx73, align 4, !tbaa !4
  %38 = load i32* %pme_order, align 4, !tbaa !4
  %39 = load i32** @nnx, align 8, !tbaa !0
  %40 = load i32** @nny, align 8, !tbaa !0
  %41 = load i32** @nnz, align 8, !tbaa !0
  call void @gather_f_bsplines(%struct.t_fftgrid* %33, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x i32]* %34, [3 x float]* %add.ptr63, float* %add.ptr69, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %37, i32 %38, i32* %39, i32* %40, i32* %41) #6
  %42 = load i32* %pme_order, align 4, !tbaa !4
  %mul77 = mul nsw i32 %42, %42
  %mul79 = mul nsw i32 %mul77, %42
  %43 = load i32* %nodeid, align 4, !tbaa !4
  %idxprom81 = sext i32 %43 to i64
  %arrayidx83 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom81
  %44 = load i32* %arrayidx83, align 4, !tbaa !4
  %mul84 = mul nsw i32 %mul79, %44
  %conv85 = sitofp i32 %mul84 to double
  %arrayidx87 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 83
  %45 = load double* %arrayidx87, align 8, !tbaa !5
  %add88 = fadd double %45, %conv85
  store double %add88, double* %arrayidx87, align 8, !tbaa !5
  %46 = load float* @do_pme.energy, align 4, !tbaa !3
  ret float %46
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize
declare double @log(double) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
